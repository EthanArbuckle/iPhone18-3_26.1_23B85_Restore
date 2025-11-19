uint64_t sub_1E5B88374(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a6;
  v6[16] = sub_1E5BF7084();
  v6[17] = sub_1E5BF7074();
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v6[18] = v9;
  *v9 = v6;
  v9[1] = sub_1E5B88490;

  return v11(v6 + 7);
}

uint64_t sub_1E5B88490()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v8 = *v0;

  v6 = sub_1E5BF7054();
  *(v1 + 152) = v6;
  *(v1 + 160) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5B885D4, v6, v5);
}

uint64_t sub_1E5B885D4()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5BF70F4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  swift_beginAccess();
  v7 = v0[16];
  v8 = sub_1E5BF7074();
  v0[21] = v8;
  v9 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v10 = *(MEMORY[0x1E69E85B0] + 4);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_1E5B887C4;
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 25, v8, v12);
}

uint64_t sub_1E5B887C4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x1EEE6DFA0](sub_1E5B888D8, v6, v7);
  }

  return result;
}

uint64_t sub_1E5B888D8()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 136);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 120);
    Strong = swift_weakLoadStrong();
    *(v0 + 184) = Strong;
    if (Strong)
    {
      v6 = swift_task_alloc();
      *(v0 + 192) = v6;
      *v6 = v0;
      v6[1] = sub_1E5B88A80;

      return sub_1E5B87B4C();
    }

    else
    {
      v7 = *(v0 + 128);
      v8 = sub_1E5BF7074();
      *(v0 + 168) = v8;
      v9 = *(v0 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
      v10 = *(MEMORY[0x1E69E85B0] + 4);
      v11 = swift_task_alloc();
      *(v0 + 176) = v11;
      *v11 = v0;
      v11[1] = sub_1E5B887C4;
      v12 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D8D0](v0 + 200, v8, v12);
    }
  }
}

uint64_t sub_1E5B88A80()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v7 = *v0;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E5B88BC4, v5, v4);
}

uint64_t sub_1E5B88BC4()
{
  v1 = v0[16];
  v2 = sub_1E5BF7074();
  v0[21] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1E5B887C4;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 25, v2, v6);
}

uint64_t sub_1E5B88CA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B6D9A0;

  return sub_1E5B88374(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for AccountButtonContactDataProvider()
{
  result = qword_1EE2C6530;
  if (!qword_1EE2C6530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B88DB4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a6;
  v6[16] = sub_1E5BF7084();
  v6[17] = sub_1E5BF7074();
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v6[18] = v9;
  *v9 = v6;
  v9[1] = sub_1E5B88ED0;

  return v11(v6 + 7);
}

uint64_t sub_1E5B88ED0()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v8 = *v0;

  v6 = sub_1E5BF7054();
  *(v1 + 152) = v6;
  *(v1 + 160) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5B89014, v6, v5);
}

uint64_t sub_1E5B89014()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5BF70F4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  swift_beginAccess();
  v7 = v0[16];
  v8 = sub_1E5BF7074();
  v0[21] = v8;
  v9 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v10 = *(MEMORY[0x1E69E85B0] + 4);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_1E5B89204;
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 25, v8, v12);
}

uint64_t sub_1E5B89204()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x1EEE6DFA0](sub_1E5B89318, v6, v7);
  }

  return result;
}

uint64_t sub_1E5B89318()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 136);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 120);
    Strong = swift_weakLoadStrong();
    *(v0 + 184) = Strong;
    if (Strong)
    {
      v6 = swift_task_alloc();
      *(v0 + 192) = v6;
      *v6 = v0;
      v6[1] = sub_1E5B894C0;

      return sub_1E5B87B4C();
    }

    else
    {
      v7 = *(v0 + 128);
      v8 = sub_1E5BF7074();
      *(v0 + 168) = v8;
      v9 = *(v0 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
      v10 = *(MEMORY[0x1E69E85B0] + 4);
      v11 = swift_task_alloc();
      *(v0 + 176) = v11;
      *v11 = v0;
      v11[1] = sub_1E5B89204;
      v12 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D8D0](v0 + 200, v8, v12);
    }
  }
}

uint64_t sub_1E5B894C0()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v7 = *v0;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E5B89604, v5, v4);
}

uint64_t sub_1E5B89604()
{
  v1 = v0[16];
  v2 = sub_1E5BF7074();
  v0[21] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1E5B89204;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 25, v2, v6);
}

uint64_t AccountButtonContactDataProvider.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC14FitnessActions32AccountButtonContactDataProvider___observationRegistrar;
  v4 = sub_1E5BF6514();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t AccountButtonContactDataProvider.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC14FitnessActions32AccountButtonContactDataProvider___observationRegistrar;
  v4 = sub_1E5BF6514();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1E5B8980C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5B89904;

  return v7(a1);
}

uint64_t sub_1E5B89904()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_6Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1E5B89A44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B6E314;

  return sub_1E5B88DB4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E5B89B14()
{
  result = sub_1E5BF6514();
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
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

void sub_1E5B89CAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_1E5B89CE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5B89DB0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1E5B8A28C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E5B89DB0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E5B89EBC(a5, a6);
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
    result = sub_1E5BF7294();
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

uint64_t sub_1E5B89EBC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E5B89F08(a1, a2);
  sub_1E5B8A038(&unk_1F5F732E0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1E5B89F08(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E5B8A124(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E5BF7294();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E5BF6FF4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5B8A124(v10, 0);
        result = sub_1E5BF7264();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E5B8A038(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1E5B8A198(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E5B8A124(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F190, &qword_1E5BFB9A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E5B8A198(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F190, &qword_1E5BFB9A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1E5B8A28C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E5B8A304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F188, &qword_1E5BFB840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B8A374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F188, &qword_1E5BFB840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B8A3DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5B8980C(a1, v5);
}

uint64_t sub_1E5B8A494(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6D9A0;

  return sub_1E5B8980C(a1, v5);
}

uint64_t ViewStackButtonState.init(locale:upNextCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E5BF64B4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for ViewStackButtonState() + 20);

  return sub_1E5B8A640(a2, v7);
}

uint64_t type metadata accessor for ViewStackButtonState()
{
  result = qword_1ED03F1D0;
  if (!qword_1ED03F1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B8A640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B8A6B0()
{
  if (*v0)
  {
    result = 0x6F437478654E7075;
  }

  else
  {
    result = 0x656C61636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E5B8A6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F437478654E7075 && a2 == 0xEB00000000746E75)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5B8A7CC(uint64_t a1)
{
  v2 = sub_1E5B8AA3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8A808(uint64_t a1)
{
  v2 = sub_1E5B8AA3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewStackButtonState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F198, &qword_1E5BFB9C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B8AA3C();
  sub_1E5BF7524();
  v11[15] = 0;
  sub_1E5BF64B4();
  sub_1E5B8B304(&qword_1ED03E5C8, MEMORY[0x1E6969770]);
  sub_1E5BF7424();
  if (!v1)
  {
    v9 = *(type metadata accessor for ViewStackButtonState() + 20);
    v11[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
    sub_1E5B8AE5C(&qword_1ED03F1A8);
    sub_1E5BF7424();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E5B8AA3C()
{
  result = qword_1ED03F1A0;
  if (!qword_1ED03F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F1A0);
  }

  return result;
}

uint64_t ViewStackButtonState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  v4 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v22 - v5;
  v30 = sub_1E5BF64B4();
  v26 = *(v30 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v28 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F1B0, &qword_1E5BFB9D0);
  v29 = *(v31 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ViewStackButtonState();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B8AA3C();
  sub_1E5BF7514();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v24 = v15;
  v17 = v26;
  v33 = 0;
  sub_1E5B8B304(&qword_1ED03E600, MEMORY[0x1E6969770]);
  v18 = v28;
  v19 = v30;
  sub_1E5BF7364();
  (*(v17 + 32))(v24, v18, v19);
  v32 = 1;
  sub_1E5B8AE5C(&qword_1ED03F1B8);
  sub_1E5BF7364();
  (*(v29 + 8))(v11, v31);
  v20 = v24;
  sub_1E5B8A640(v6, &v24[*(v23 + 20)]);
  sub_1E5B8AECC(v20, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5B8AF30(v20);
}

uint64_t sub_1E5B8AE5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B8AECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewStackButtonState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B8AF30(uint64_t a1)
{
  v2 = type metadata accessor for ViewStackButtonState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ViewStackButtonState.== infix(_:_:)()
{
  if ((MEMORY[0x1E6936BF0]() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for ViewStackButtonState() + 20);

  return sub_1E5BF6DE4();
}

uint64_t ViewStackButtonState.hash(into:)()
{
  sub_1E5BF64B4();
  sub_1E5B8B304(&qword_1ED03E5F0, MEMORY[0x1E6969770]);
  sub_1E5BF6EF4();
  v0 = *(type metadata accessor for ViewStackButtonState() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  return sub_1E5BF6DF4();
}

uint64_t ViewStackButtonState.hashValue.getter()
{
  sub_1E5BF74B4();
  type metadata accessor for ViewStackButtonState();
  sub_1E5B8B304(&qword_1ED03F1C0, type metadata accessor for ViewStackButtonState);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5B8B164()
{
  sub_1E5BF74B4();
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5B8B1BC(uint64_t a1, uint64_t a2)
{
  sub_1E5BF64B4();
  sub_1E5B8B304(&qword_1ED03E5F0, MEMORY[0x1E6969770]);
  sub_1E5BF6EF4();
  v3 = *(a2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  return sub_1E5BF6DF4();
}

uint64_t sub_1E5B8B268()
{
  sub_1E5BF74B4();
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5B8B304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5B8B34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x1E6936BF0]() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return sub_1E5BF6DE4();
}

void sub_1E5B8B3EC()
{
  sub_1E5BF64B4();
  if (v0 <= 0x3F)
  {
    sub_1E5B8B470();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5B8B470()
{
  if (!qword_1ED03F1E0)
  {
    v0 = sub_1E5BF6E04();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED03F1E0);
    }
  }
}

unint64_t sub_1E5B8B4DC()
{
  result = qword_1ED03F1E8;
  if (!qword_1ED03F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F1E8);
  }

  return result;
}

unint64_t sub_1E5B8B534()
{
  result = qword_1ED03F1F0;
  if (!qword_1ED03F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F1F0);
  }

  return result;
}

unint64_t sub_1E5B8B58C()
{
  result = qword_1ED03F1F8;
  if (!qword_1ED03F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F1F8);
  }

  return result;
}

uint64_t SampleContentButtonState.workoutIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t type metadata accessor for SampleContentButtonState()
{
  result = qword_1ED03F270;
  if (!qword_1ED03F270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SampleContentButtonState.init(workoutIdentifier:allowedMediaTypes:locale:presentationContextKey:detailLoadState:marketingItemLoadState:ongoingWorkoutAlert:missingAccountAlert:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v16 = type metadata accessor for SampleContentButtonState();
  v17 = v16[6];
  v18 = sub_1E5BF64B4();
  (*(*(v18 - 8) + 32))(&a9[v17], a4, v18);
  v19 = v16[7];
  v20 = sub_1E5BF6494();
  (*(*(v20 - 8) + 32))(&a9[v19], a5, v20);
  sub_1E5B5F8D4(a6, &a9[v16[8]], &qword_1ED03E950, &unk_1E5BF95F0);
  sub_1E5B5F8D4(a7, &a9[v16[9]], &qword_1ED03E948, &qword_1E5BFD480);
  sub_1E5B5F8D4(a8, &a9[v16[10]], &qword_1ED03E5C0, &unk_1E5BF8A20);
  return sub_1E5B5F8D4(a10, &a9[v16[11]], &qword_1ED03E5C0, &unk_1E5BF8A20);
}

unint64_t sub_1E5B8BB2C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v2 = 0xD000000000000013;
    v3 = 0xD000000000000016;
    if (v1 == 4)
    {
      v3 = 0x6F4C6C6961746564;
    }

    v4 = *v0 <= 5u;
  }

  else
  {
    v2 = 0x656C61636F6CLL;
    if (v1 != 2)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0xD000000000000011;
    if (*v0)
    {
      v3 = 0xD000000000000011;
    }

    v4 = *v0 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5B8BC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B8DE3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B8BC70(uint64_t a1)
{
  v2 = sub_1E5B8D4D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8BCAC(uint64_t a1)
{
  v2 = sub_1E5B8D4D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentButtonState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F200, &qword_1E5BFBBC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B8D4D4();
  sub_1E5BF7524();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  sub_1E5BF73E4();
  if (!v2)
  {
    v22 = v3[2];
    v21[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F210, &qword_1E5BFBBD0);
    sub_1E5B8D750(&qword_1ED03F218, sub_1E5B8D528);
    sub_1E5BF7424();
    v13 = type metadata accessor for SampleContentButtonState();
    v14 = v13[6];
    LOBYTE(v22) = 2;
    sub_1E5BF64B4();
    sub_1E5B8D99C(&qword_1ED03E5C8, MEMORY[0x1E6969770]);
    sub_1E5BF7424();
    v15 = v13[7];
    LOBYTE(v22) = 3;
    sub_1E5BF6494();
    sub_1E5B8D99C(&qword_1EE2C7AF0, MEMORY[0x1E69695A8]);
    sub_1E5BF7424();
    v16 = v13[8];
    LOBYTE(v22) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
    sub_1E5B8D81C(&qword_1ED03F220);
    sub_1E5BF7424();
    v17 = v13[9];
    LOBYTE(v22) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
    sub_1E5B8D624(&qword_1ED03F228);
    sub_1E5BF7424();
    v18 = v13[10];
    LOBYTE(v22) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
    sub_1E5B5FC8C(&qword_1ED03E5E0, &qword_1ED03E5C0, &unk_1E5BF8A20);
    sub_1E5BF7424();
    v19 = v13[11];
    LOBYTE(v22) = 7;
    sub_1E5BF7424();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SampleContentButtonState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1E5BF6494();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v45 = &v41 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v41 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v41 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v48 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v41 - v21;
  v23 = *v1;
  v24 = v1[1];
  sub_1E5BF6FE4();
  sub_1E5B8D230(a1, v1[2]);
  v25 = type metadata accessor for SampleContentButtonState();
  v26 = v25[6];
  sub_1E5BF64B4();
  sub_1E5B8D99C(&qword_1ED03E5F0, MEMORY[0x1E6969770]);
  sub_1E5BF6EF4();
  v27 = v25[7];
  v43 = sub_1E5B8D99C(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  v28 = v25[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  sub_1E5B8D6FC();
  sub_1E5BF6DF4();
  v29 = v25[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  sub_1E5B5FC8C(&qword_1ED03F240, &qword_1ED03E960, &qword_1E5BFD4B0);
  sub_1E5BF6DF4();
  sub_1E5B5F864(v2 + v25[10], v22, &qword_1ED03E5C0, &unk_1E5BF8A20);
  v30 = *(v8 + 48);
  v49 = v8 + 48;
  v50 = v7;
  if (v30(v22, 1, v7) == 1)
  {
    MEMORY[0x1E6937C10](0);
    v31 = v47;
  }

  else
  {
    v32 = v22;
    v33 = v42;
    sub_1E5B5F8D4(v32, v42, &qword_1ED03E5E8, &unk_1E5BF9600);
    MEMORY[0x1E6937C10](1);
    v34 = v41;
    v31 = v47;
    sub_1E5B5F864(v33, v41, &qword_1ED03E5E8, &unk_1E5BF9600);
    if ((*(v31 + 48))(v34, 1, v4) == 1)
    {
      sub_1E5BF74D4();
    }

    else
    {
      v35 = v46;
      (*(v31 + 32))(v46, v34, v4);
      sub_1E5BF74D4();
      sub_1E5BF6EF4();
      (*(v31 + 8))(v35, v4);
    }

    sub_1E5B5F804(v33, &qword_1ED03E5E8, &unk_1E5BF9600);
  }

  v36 = v48;
  sub_1E5B5F864(v2 + v25[11], v48, &qword_1ED03E5C0, &unk_1E5BF8A20);
  if (v30(v36, 1, v50) == 1)
  {
    return MEMORY[0x1E6937C10](0);
  }

  v38 = v45;
  sub_1E5B5F8D4(v36, v45, &qword_1ED03E5E8, &unk_1E5BF9600);
  MEMORY[0x1E6937C10](1);
  v39 = v44;
  sub_1E5B5F864(v38, v44, &qword_1ED03E5E8, &unk_1E5BF9600);
  if ((*(v31 + 48))(v39, 1, v4) == 1)
  {
    sub_1E5BF74D4();
  }

  else
  {
    v40 = v46;
    (*(v31 + 32))(v46, v39, v4);
    sub_1E5BF74D4();
    sub_1E5BF6EF4();
    (*(v31 + 8))(v40, v4);
  }

  return sub_1E5B5F804(v38, &qword_1ED03E5E8, &unk_1E5BF9600);
}

uint64_t SampleContentButtonState.hashValue.getter()
{
  sub_1E5BF74B4();
  SampleContentButtonState.hash(into:)(v1);
  return sub_1E5BF7504();
}

uint64_t SampleContentButtonState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v3 = *(*(v47 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v42 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  v7 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v42 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v9 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v42 - v10;
  v11 = sub_1E5BF6494();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5BF64B4();
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F248, &qword_1E5BFBBD8);
  v56 = *(v19 - 8);
  v57 = v19;
  v20 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - v21;
  v23 = type metadata accessor for SampleContentButtonState();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = a1[3];
  v28 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1E5B8D4D4();
  v58 = v22;
  v29 = v59;
  sub_1E5BF7514();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v30 = v18;
  v31 = v14;
  v59 = v15;
  v33 = v54;
  v32 = v55;
  LOBYTE(v62) = 0;
  *v26 = sub_1E5BF7324();
  v26[1] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F210, &qword_1E5BFBBD0);
  v61 = 1;
  sub_1E5B8D750(&qword_1ED03F250, sub_1E5B8D7C8);
  sub_1E5BF7364();
  v26[2] = v62;
  LOBYTE(v62) = 2;
  sub_1E5B8D99C(&qword_1ED03E600, MEMORY[0x1E6969770]);
  v44 = v26;
  v35 = v59;
  sub_1E5BF7364();
  v43 = v23;
  (*(v53 + 32))(v44 + *(v23 + 24), v30, v35);
  LOBYTE(v62) = 3;
  sub_1E5B8D99C(&qword_1EE2C7AE0, MEMORY[0x1E69695A8]);
  sub_1E5BF7364();
  (*(v33 + 32))(v44 + v43[7], v31, v32);
  LOBYTE(v62) = 4;
  sub_1E5B8D81C(&qword_1ED03F260);
  v36 = v51;
  sub_1E5BF7364();
  v37 = v44;
  sub_1E5B5F8D4(v36, v44 + v43[8], &qword_1ED03E950, &unk_1E5BF95F0);
  LOBYTE(v62) = 5;
  sub_1E5B8D624(&qword_1ED03F268);
  v38 = v50;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v38, v37 + v43[9], &qword_1ED03E948, &qword_1E5BFD480);
  LOBYTE(v62) = 6;
  sub_1E5B5FC8C(qword_1ED03E618, &qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5BF7364();
  v39 = v37;
  sub_1E5B5F8D4(v48, v37 + v43[10], &qword_1ED03E5C0, &unk_1E5BF8A20);
  LOBYTE(v62) = 7;
  v40 = v46;
  sub_1E5BF7364();
  (*(v56 + 8))(v58, v57);
  sub_1E5B5F8D4(v40, v39 + *(v23 + 44), &qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5B8D894(v39, v45);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return sub_1E5B8D8F8(v39);
}

uint64_t sub_1E5B8D1AC()
{
  sub_1E5BF74B4();
  SampleContentButtonState.hash(into:)(v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B8D1F0()
{
  sub_1E5BF74B4();
  SampleContentButtonState.hash(into:)(v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B8D230(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_1E5BF7504();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_1E5BF74B4();
    MEMORY[0x1E6937C10](v12);
    result = sub_1E5BF7504();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1E6937C10](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s14FitnessActions24SampleContentButtonStateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E5BF7444() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E5BC38D8(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for SampleContentButtonState();
  if ((MEMORY[0x1E6936BF0](a1 + v5[6], a2 + v5[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = v5[7];
  if ((sub_1E5BF6474() & 1) == 0)
  {
    return 0;
  }

  v7 = v5[8];
  sub_1E5B8DC2C();
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v8 = v5[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E960, &qword_1E5BFD4B0);
  sub_1E5B5FC8C(&qword_1ED03F288, &qword_1ED03E960, &qword_1E5BFD4B0);
  if ((sub_1E5BF6DE4() & 1) == 0 || (sub_1E5B65C60(a1 + v5[10], a2 + v5[10]) & 1) == 0)
  {
    return 0;
  }

  v9 = v5[11];

  return sub_1E5B65C60(a1 + v9, a2 + v9);
}

unint64_t sub_1E5B8D4D4()
{
  result = qword_1ED03F208;
  if (!qword_1ED03F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F208);
  }

  return result;
}

unint64_t sub_1E5B8D528()
{
  result = qword_1EE2C74E0;
  if (!qword_1EE2C74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C74E0);
  }

  return result;
}

unint64_t sub_1E5B8D57C()
{
  result = qword_1EE2C72E0;
  if (!qword_1EE2C72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C72E0);
  }

  return result;
}

unint64_t sub_1E5B8D5D0()
{
  result = qword_1EE2C72F8;
  if (!qword_1EE2C72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C72F8);
  }

  return result;
}

uint64_t sub_1E5B8D624(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E948, &qword_1E5BFD480);
    sub_1E5B5FC8C(&qword_1ED03F230, &qword_1ED03E960, &qword_1E5BFD4B0);
    sub_1E5B5FC8C(&qword_1ED03F238, &qword_1ED03E960, &qword_1E5BFD4B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B8D6FC()
{
  result = qword_1EE2C72F0;
  if (!qword_1EE2C72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C72F0);
  }

  return result;
}

uint64_t sub_1E5B8D750(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F210, &qword_1E5BFBBD0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B8D7C8()
{
  result = qword_1ED03F258;
  if (!qword_1ED03F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F258);
  }

  return result;
}

uint64_t sub_1E5B8D81C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E950, &unk_1E5BF95F0);
    sub_1E5B8D57C();
    sub_1E5B8D5D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B8D894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentButtonState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B8D8F8(uint64_t a1)
{
  v2 = type metadata accessor for SampleContentButtonState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B8D99C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E5B8DA0C()
{
  sub_1E5B8DBC4(319, &qword_1EE2C6210, sub_1E5B8DB70, &type metadata for WorkoutMediaType, MEMORY[0x1E69E64E8]);
  if (v0 <= 0x3F)
  {
    sub_1E5BF64B4();
    if (v1 <= 0x3F)
    {
      sub_1E5BF6494();
      if (v2 <= 0x3F)
      {
        sub_1E5B8DBC4(319, &qword_1EE2C6278, sub_1E5B8DC2C, &type metadata for StartWorkoutDetail, MEMORY[0x1E6999B18]);
        if (v3 <= 0x3F)
        {
          sub_1E5B8DC80();
          if (v4 <= 0x3F)
          {
            sub_1E5B6A50C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1E5B8DB70()
{
  result = qword_1EE2C74D8;
  if (!qword_1EE2C74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C74D8);
  }

  return result;
}

void sub_1E5B8DBC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1E5B8DC2C()
{
  result = qword_1EE2C72E8;
  if (!qword_1EE2C72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C72E8);
  }

  return result;
}

void sub_1E5B8DC80()
{
  if (!qword_1ED03F280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E960, &qword_1E5BFD4B0);
    sub_1E5B5FC8C(&qword_1ED03F288, &qword_1ED03E960, &qword_1E5BFD4B0);
    v0 = sub_1E5BF6E04();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED03F280);
    }
  }
}

unint64_t sub_1E5B8DD38()
{
  result = qword_1ED03F290;
  if (!qword_1ED03F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F290);
  }

  return result;
}

unint64_t sub_1E5B8DD90()
{
  result = qword_1ED03F298;
  if (!qword_1ED03F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F298);
  }

  return result;
}

unint64_t sub_1E5B8DDE8()
{
  result = qword_1ED03F2A0;
  if (!qword_1ED03F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2A0);
  }

  return result;
}

uint64_t sub_1E5B8DE3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5C07A80 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C07AA0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5C077D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4C6C6961746564 && a2 == 0xEF65746174536461 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5C07AC0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5C07AE0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5C07B00 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_1E5BF7444();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t DynamicStartWorkoutState.sampleContentSessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DynamicStartWorkoutState() + 36);

  return sub_1E5B8E170(v3, a1);
}

uint64_t type metadata accessor for DynamicStartWorkoutState()
{
  result = qword_1EE2C6DD0;
  if (!qword_1EE2C6DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B8E170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DynamicStartWorkoutState.sampleContentSessionState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DynamicStartWorkoutState() + 36);

  return sub_1E5B8E224(a1, v3);
}

uint64_t sub_1E5B8E224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DynamicStartWorkoutState.init(workoutIdentifier:locale:subscriptionState:sampleContentIdentifier:downloadState:sampleContentSessionState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  started = type metadata accessor for DynamicStartWorkoutState();
  v17 = started[5];
  v18 = sub_1E5BF64B4();
  (*(*(v18 - 8) + 32))(&a9[v17], a3, v18);
  a9[started[6]] = a4;
  v19 = &a9[started[7]];
  *v19 = a5;
  *(v19 + 1) = a6;
  sub_1E5B5F8D4(a8, &a9[started[9]], &qword_1ED03F2A8, &unk_1E5BFBDF0);
  return sub_1E5B5F8D4(a7, &a9[started[8]], &qword_1ED03E260, &qword_1E5BF9190);
}

unint64_t sub_1E5B8E3DC()
{
  v1 = *v0;
  v2 = 0x656C61636F6CLL;
  v3 = 0xD000000000000019;
  if (v1 == 4)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E5B8E4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B8FB54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B8E4E4(uint64_t a1)
{
  v2 = sub_1E5B8F2E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8E520(uint64_t a1)
{
  v2 = sub_1E5B8F2E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicStartWorkoutState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2B0, &qword_1E5BFBE00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B8F2E4();
  sub_1E5BF7524();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  sub_1E5BF73E4();
  if (!v2)
  {
    started = type metadata accessor for DynamicStartWorkoutState();
    v14 = started[5];
    v21[14] = 1;
    sub_1E5BF64B4();
    sub_1E5B8F6C4(&qword_1ED03E5C8, MEMORY[0x1E6969770]);
    sub_1E5BF7424();
    v21[13] = *(v3 + started[6]);
    v21[12] = 2;
    sub_1E5B8F338();
    sub_1E5BF7424();
    v15 = (v3 + started[7]);
    v16 = *v15;
    v17 = v15[1];
    v21[11] = 3;
    sub_1E5BF73A4();
    v18 = started[8];
    v21[10] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
    sub_1E5B696FC(&qword_1ED03E5D8);
    sub_1E5BF7424();
    v19 = started[9];
    v21[9] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
    sub_1E5B8F38C(&qword_1ED03F2C8);
    sub_1E5BF7424();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t DynamicStartWorkoutState.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_1E5BF6FE4();
  started = type metadata accessor for DynamicStartWorkoutState();
  v5 = started[5];
  sub_1E5BF64B4();
  sub_1E5B8F6C4(&qword_1ED03E5F0, MEMORY[0x1E6969770]);
  sub_1E5BF6EF4();
  MEMORY[0x1E6937C10](*(v1 + started[6]));
  v6 = (v1 + started[7]);
  if (v6[1])
  {
    v7 = *v6;
    sub_1E5BF74D4();
    sub_1E5BF6FE4();
  }

  else
  {
    sub_1E5BF74D4();
  }

  v8 = started[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  sub_1E5B69638();
  sub_1E5BF6DF4();
  v9 = started[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  sub_1E5B8F4AC();
  return sub_1E5BF6DF4();
}

uint64_t DynamicStartWorkoutState.hashValue.getter()
{
  sub_1E5BF74B4();
  type metadata accessor for DynamicStartWorkoutState();
  sub_1E5B8F6C4(&qword_1ED03F2E8, type metadata accessor for DynamicStartWorkoutState);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t DynamicStartWorkoutState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  v3 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v32 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  v5 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v32 - v6;
  v8 = sub_1E5BF64B4();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2F0, &qword_1E5BFBE08);
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  started = type metadata accessor for DynamicStartWorkoutState();
  v17 = *(*(started - 1) + 64);
  MEMORY[0x1EEE9AC00](started);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[3];
  v21 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E5B8F2E4();
  v39 = v15;
  v22 = v40;
  sub_1E5BF7514();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v40 = v7;
  v23 = v37;
  v48 = 0;
  v24 = v19;
  *v19 = sub_1E5BF7324();
  v19[1] = v25;
  v47 = 1;
  sub_1E5B8F6C4(&qword_1ED03E600, MEMORY[0x1E6969770]);
  sub_1E5BF7364();
  (*(v36 + 32))(v19 + started[5], v11, v8);
  v45 = 2;
  sub_1E5B8F568();
  sub_1E5BF7364();
  *(v19 + started[6]) = v46;
  v44 = 3;
  v26 = sub_1E5BF72E4();
  v27 = (v19 + started[7]);
  *v27 = v26;
  v27[1] = v28;
  v43 = 4;
  sub_1E5B696FC(&qword_1ED03E610);
  v29 = v40;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v29, v24 + started[8], &qword_1ED03E260, &qword_1E5BF9190);
  v42 = 5;
  sub_1E5B8F38C(&qword_1ED03F300);
  v30 = v34;
  sub_1E5BF7364();
  (*(v23 + 8))(v39, v38);
  sub_1E5B5F8D4(v30, v24 + started[9], &qword_1ED03F2A8, &unk_1E5BFBDF0);
  sub_1E5B8F5BC(v24, v32);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1E5B8F620(v24);
}

uint64_t sub_1E5B8F064(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  sub_1E5BF6FE4();
  v7 = a2[5];
  sub_1E5BF64B4();
  sub_1E5B8F6C4(&qword_1ED03E5F0, MEMORY[0x1E6969770]);
  sub_1E5BF6EF4();
  MEMORY[0x1E6937C10](*(v4 + a2[6]));
  v8 = (v4 + a2[7]);
  if (v8[1])
  {
    v9 = *v8;
    sub_1E5BF74D4();
    sub_1E5BF6FE4();
  }

  else
  {
    sub_1E5BF74D4();
  }

  v10 = a2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  sub_1E5B69638();
  sub_1E5BF6DF4();
  v11 = a2[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  sub_1E5B8F4AC();
  return sub_1E5BF6DF4();
}

uint64_t _s14FitnessActions24DynamicStartWorkoutStateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E5BF7444() & 1) == 0)
  {
    return 0;
  }

  started = type metadata accessor for DynamicStartWorkoutState();
  if ((MEMORY[0x1E6936BF0](a1 + started[5], a2 + started[5]) & 1) == 0 || *(a1 + started[6]) != *(a2 + started[6]))
  {
    return 0;
  }

  v6 = started[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1E5BF7444() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = started[8];
  sub_1E5B695CC();
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v13 = started[9];
  sub_1E5B8F8A8();

  return sub_1E5BF6DE4();
}

unint64_t sub_1E5B8F2E4()
{
  result = qword_1ED03F2B8;
  if (!qword_1ED03F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2B8);
  }

  return result;
}

unint64_t sub_1E5B8F338()
{
  result = qword_1ED03F2C0;
  if (!qword_1ED03F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2C0);
  }

  return result;
}

uint64_t sub_1E5B8F38C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
    sub_1E5B8F404();
    sub_1E5B8F458();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B8F404()
{
  result = qword_1ED03F2D0;
  if (!qword_1ED03F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2D0);
  }

  return result;
}

unint64_t sub_1E5B8F458()
{
  result = qword_1ED03F2D8;
  if (!qword_1ED03F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2D8);
  }

  return result;
}

unint64_t sub_1E5B8F4AC()
{
  result = qword_1ED03F2E0;
  if (!qword_1ED03F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2E0);
  }

  return result;
}

uint64_t sub_1E5B8F500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5B8F568()
{
  result = qword_1ED03F2F8;
  if (!qword_1ED03F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2F8);
  }

  return result;
}

uint64_t sub_1E5B8F5BC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for DynamicStartWorkoutState();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_1E5B8F620(uint64_t a1)
{
  started = type metadata accessor for DynamicStartWorkoutState();
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_1E5B8F6C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E5B8F734()
{
  sub_1E5BF64B4();
  if (v0 <= 0x3F)
  {
    sub_1E5B7D23C();
    if (v1 <= 0x3F)
    {
      sub_1E5B8F848(319, &qword_1EE2C6280, sub_1E5B695CC);
      if (v2 <= 0x3F)
      {
        sub_1E5B8F848(319, &qword_1ED03F308, sub_1E5B8F8A8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E5B8F848(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1E5BF6E04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E5B8F8A8()
{
  result = qword_1ED03F310;
  if (!qword_1ED03F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F310);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicStartWorkoutState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicStartWorkoutState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5B8FA50()
{
  result = qword_1ED03F318;
  if (!qword_1ED03F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F318);
  }

  return result;
}

unint64_t sub_1E5B8FAA8()
{
  result = qword_1ED03F320;
  if (!qword_1ED03F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F320);
  }

  return result;
}

unint64_t sub_1E5B8FB00()
{
  result = qword_1ED03F328;
  if (!qword_1ED03F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F328);
  }

  return result;
}

uint64_t sub_1E5B8FB54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5C07A80 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C07B20 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C07900 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E5C07B40 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5BF7444();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E5B8FD70()
{
  v1 = 0x6269726373627573;
  if (*v0 != 1)
  {
    v1 = 0x7263736275736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1E5B8FDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B90580(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B8FE00(uint64_t a1)
{
  v2 = sub_1E5B90360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8FE3C(uint64_t a1)
{
  v2 = sub_1E5B90360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B8FE78(uint64_t a1)
{
  v2 = sub_1E5B90408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8FEB4(uint64_t a1)
{
  v2 = sub_1E5B90408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B8FEF0(uint64_t a1)
{
  v2 = sub_1E5B9045C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8FF2C(uint64_t a1)
{
  v2 = sub_1E5B9045C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B8FF68(uint64_t a1)
{
  v2 = sub_1E5B903B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8FFA4(uint64_t a1)
{
  v2 = sub_1E5B903B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SubscriptionState.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F330, &qword_1E5BFC010);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F338, &qword_1E5BFC018);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F340, &qword_1E5BFC020);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F348, &qword_1E5BFC028);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B90360();
  sub_1E5BF7524();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1E5B90408();
      sub_1E5BF7394();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1E5B903B4();
      v21 = v27;
      sub_1E5BF7394();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1E5B9045C();
    sub_1E5BF7394();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

unint64_t sub_1E5B90360()
{
  result = qword_1ED03F350;
  if (!qword_1ED03F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F350);
  }

  return result;
}

unint64_t sub_1E5B903B4()
{
  result = qword_1ED03F358;
  if (!qword_1ED03F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F358);
  }

  return result;
}

unint64_t sub_1E5B90408()
{
  result = qword_1ED03F360;
  if (!qword_1ED03F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F360);
  }

  return result;
}

unint64_t sub_1E5B9045C()
{
  result = qword_1ED03F368;
  if (!qword_1ED03F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F368);
  }

  return result;
}

uint64_t sub_1E5B904C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5B906A4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SubscriptionState.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B90580(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000006465 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEC00000064656269)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5B906A4(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3C0, &qword_1E5BFC450);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3C8, &qword_1E5BFC458);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3D0, &qword_1E5BFC460);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3D8, &qword_1E5BFC468);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E5B90360();
  v18 = v39;
  sub_1E5BF7514();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1E5BF7374();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1E5B7FB04();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1E5B90408();
          sub_1E5BF72C4();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_1E5B903B4();
        v29 = v15;
        sub_1E5BF72C4();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1E5B9045C();
        v29 = v15;
        sub_1E5BF72C4();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1E5BF7284();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v27 = &type metadata for SubscriptionState;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

unint64_t sub_1E5B90C18()
{
  result = qword_1ED03F370;
  if (!qword_1ED03F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F370);
  }

  return result;
}

unint64_t sub_1E5B90CC0()
{
  result = qword_1ED03F378;
  if (!qword_1ED03F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F378);
  }

  return result;
}

unint64_t sub_1E5B90D18()
{
  result = qword_1ED03F380;
  if (!qword_1ED03F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F380);
  }

  return result;
}

unint64_t sub_1E5B90D70()
{
  result = qword_1ED03F388;
  if (!qword_1ED03F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F388);
  }

  return result;
}

unint64_t sub_1E5B90DC8()
{
  result = qword_1ED03F390;
  if (!qword_1ED03F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F390);
  }

  return result;
}

unint64_t sub_1E5B90E20()
{
  result = qword_1ED03F398;
  if (!qword_1ED03F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F398);
  }

  return result;
}

unint64_t sub_1E5B90E78()
{
  result = qword_1ED03F3A0;
  if (!qword_1ED03F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F3A0);
  }

  return result;
}

unint64_t sub_1E5B90ED0()
{
  result = qword_1ED03F3A8;
  if (!qword_1ED03F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F3A8);
  }

  return result;
}

unint64_t sub_1E5B90F28()
{
  result = qword_1ED03F3B0;
  if (!qword_1ED03F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F3B0);
  }

  return result;
}

unint64_t sub_1E5B90F80()
{
  result = qword_1ED03F3B8;
  if (!qword_1ED03F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F3B8);
  }

  return result;
}

uint64_t sub_1E5B91008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5BF7444();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B91094(uint64_t a1)
{
  v2 = sub_1E5B9135C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B910D0(uint64_t a1)
{
  v2 = sub_1E5B9135C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9110C(uint64_t a1)
{
  v2 = sub_1E5B913B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B91148(uint64_t a1)
{
  v2 = sub_1E5B913B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicStartWorkoutAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3E0, &qword_1E5BFC470);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3E8, &qword_1E5BFC478);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B9135C();
  sub_1E5BF7524();
  sub_1E5B913B0();
  sub_1E5BF7394();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1E5B9135C()
{
  result = qword_1EE2C69E0;
  if (!qword_1EE2C69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69E0);
  }

  return result;
}

unint64_t sub_1E5B913B0()
{
  result = qword_1EE2C69C8;
  if (!qword_1EE2C69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69C8);
  }

  return result;
}

uint64_t DynamicStartWorkoutAction.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3F0, &qword_1E5BFC480);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3F8, &unk_1E5BFC488);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B9135C();
  sub_1E5BF7514();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_1E5BF7374();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_1E5B7FB14() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_1E5BF7284();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v19 = &type metadata for DynamicStartWorkoutAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1E5B913B0();
  sub_1E5BF72C4();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1E5B91768(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3E0, &qword_1E5BFC470);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3E8, &qword_1E5BFC478);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B9135C();
  sub_1E5BF7524();
  sub_1E5B913B0();
  sub_1E5BF7394();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t DynamicStartWorkoutAction.hashValue.getter()
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](0);
  return sub_1E5BF7504();
}

unint64_t sub_1E5B919B0()
{
  result = qword_1ED03F400;
  if (!qword_1ED03F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F400);
  }

  return result;
}

unint64_t sub_1E5B91A38()
{
  result = qword_1ED03F408;
  if (!qword_1ED03F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F408);
  }

  return result;
}

unint64_t sub_1E5B91A90()
{
  result = qword_1EE2C69B8;
  if (!qword_1EE2C69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69B8);
  }

  return result;
}

unint64_t sub_1E5B91AE8()
{
  result = qword_1EE2C69C0;
  if (!qword_1EE2C69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69C0);
  }

  return result;
}

unint64_t sub_1E5B91B40()
{
  result = qword_1EE2C69D0;
  if (!qword_1EE2C69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69D0);
  }

  return result;
}

unint64_t sub_1E5B91B98()
{
  result = qword_1EE2C69D8;
  if (!qword_1EE2C69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69D8);
  }

  return result;
}

uint64_t sub_1E5B91C00(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for BookmarkButtonFeature();
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();

  return sub_1E5BF6614();
}

uint64_t BookmarkButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  type metadata accessor for BookmarkButtonFeature();
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6604();
  *a5 = result;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13 & 1;
  return result;
}

uint64_t sub_1E5B91D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v4 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v17 = *(a3 + 16);
  sub_1E5B5F77C(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E310, &unk_1E5BFD4F0);
  sub_1E5B5FC8C(&qword_1ED03E318, &qword_1ED03E310, &unk_1E5BFD4F0);
  sub_1E5BF6C84();
  LOBYTE(a3) = a1 == 0;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E288, &qword_1E5BF7CD8);
  v16 = (a4 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = sub_1E5B939AC;
  v16[2] = v14;
  return result;
}

uint64_t sub_1E5B91F18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E320, &qword_1E5BF7E80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E328, &unk_1E5BFD530);
  sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530);
  swift_getOpaqueTypeConformance2();
  return sub_1E5BF6C24();
}

uint64_t sub_1E5B92048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5BF64B4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1E5BF6F94();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE2CD210;
  v24[1] = a1;
  v24[2] = a2;
  v25 = a3 & 1;
  v17 = type metadata accessor for BookmarkButton();
  v18 = v16;
  v19 = sub_1E5B91C00(v17);
  MEMORY[0x1EEE9AC00](v19);
  v24[-2] = a4;
  v24[-1] = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a6 = result;
  *(a6 + 8) = v21;
  *(a6 + 16) = v22 & 1;
  *(a6 + 24) = v23;
  return result;
}

uint64_t sub_1E5B92244()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E328, &unk_1E5BFD530);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - v2;
  v7[1] = sub_1E5BF6BE4();
  v4 = *MEMORY[0x1E697E6E8];
  v5 = sub_1E5BF66D4();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  sub_1E5B5F7AC();
  result = sub_1E5BF6F14();
  if (result)
  {
    sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530);
    sub_1E5BF6A84();
    sub_1E5B5F804(v3, &qword_1ED03E328, &unk_1E5BFD530);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B923D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15[-v5];
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  sub_1E5BF65C4();
  v10 = sub_1E5BF65E4();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *(v11 + 48) = v9;
  v16 = v12;
  v17 = v13;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  sub_1E5B5F5EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B92588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5BF64B4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1E5BF6F94();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE2CD210;
  v24[1] = a1;
  v24[2] = a2;
  v25 = a3 & 1;
  v17 = type metadata accessor for BookmarkButton();
  v18 = v16;
  v19 = sub_1E5B91C00(v17);
  MEMORY[0x1EEE9AC00](v19);
  v24[-2] = a4;
  v24[-1] = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a6 = result;
  *(a6 + 8) = v21;
  *(a6 + 16) = v22 & 1;
  *(a6 + 24) = v23;
  return result;
}

uint64_t BookmarkButton.body.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_1E5B9284C(v4, v5, v6, v7, v8, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F410, &qword_1E5BFC750) + 36));
  *v10 = sub_1E5B93424;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;

  return sub_1E5B5F5EC();
}

uint64_t sub_1E5B9284C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v102 = a6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F480, &qword_1E5BFC888);
  v11 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v77 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v79 = *(v82 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v77 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F478, &qword_1E5BFC880);
  v15 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v77 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F488, &qword_1E5BFC890);
  v17 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v77 - v18;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E288, &qword_1E5BF7CD8);
  v19 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v84 = &v77 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F468, &qword_1E5BFC878);
  v22 = *(v21 - 8);
  v94 = v21;
  v95 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v77 - v24;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F458, &qword_1E5BFC870);
  v25 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v93 = &v77 - v26;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F490, &qword_1E5BFC898);
  v27 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v77 - v28;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F448, &qword_1E5BFC868);
  v29 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v31 = &v77 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v77 - v37;
  v96 = a1;
  v97 = a2;
  v105 = a1;
  v106 = a2;
  v90 = a3;
  v39 = a3 & 1;
  v107 = v39;
  v40 = type metadata accessor for BookmarkButton();
  sub_1E5B91C00(v40);
  v88 = a4;
  v89 = a5;
  v103 = a4;
  v104 = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      if ((*v38 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v42 = *v38;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
      v44 = sub_1E5BF6464();
      (*(*(v44 - 8) + 8))(&v38[v43], v44);
      if (v42 != 1)
      {
LABEL_5:
        v45 = 1;
        v47 = v93;
        v46 = v94;
        v48 = v95;
        v49 = v98;
LABEL_20:
        (*(v48 + 56))(v47, v45, 1, v46);
        v68 = &qword_1ED03F458;
        v69 = &qword_1E5BFC870;
        sub_1E5B5F864(v47, v49, &qword_1ED03F458, &qword_1E5BFC870);
        swift_storeEnumTagMultiPayload();
        sub_1E5B9361C();
        sub_1E5B936D4();
        sub_1E5BF6864();
        v70 = v47;
        return sub_1E5B5F804(v70, v68, v69);
      }

LABEL_7:
      v105 = v96;
      v106 = v97;
      v50 = v90 & 1;
      v107 = v90 & 1;
      v51 = sub_1E5B91C00(v40);
      MEMORY[0x1EEE9AC00](v51);
      v52 = v89;
      *(&v77 - 2) = v88;
      *(&v77 - 1) = v52;
      swift_getKeyPath();
      sub_1E5BF6E34();

      v53 = swift_getEnumCaseMultiPayload();
      v54 = v91;
      if (v53 <= 2)
      {
        if (!v53)
        {
          if ((*v36 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_15;
        }

        if (v53 == 1)
        {
          v55 = *v36;
          v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
          v57 = sub_1E5BF6464();
          (*(*(v57 - 8) + 8))(&v36[v56], v57);
          if (v55 != 1)
          {
LABEL_11:
            v59 = v96;
            v58 = v97;
            v105 = v96;
            v106 = v97;
            v60 = v90 & 1;
            v107 = v90 & 1;
            v61 = swift_allocObject();
            v62 = v89;
            *(v61 + 16) = v88;
            *(v61 + 24) = v62;
            *(v61 + 32) = v59;
            *(v61 + 40) = v58;
            *(v61 + 48) = v60;
            sub_1E5B5F5EC();
            v63 = v84;
            sub_1E5B91D9C(sub_1E5B9389C, v61, v40, v84);

            sub_1E5B5F864(v63, v81, &qword_1ED03E288, &qword_1E5BF7CD8);
            swift_storeEnumTagMultiPayload();
            sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
            sub_1E5B5F144();
            v64 = v83;
            sub_1E5BF6864();
            sub_1E5B5F804(v63, &qword_1ED03E288, &qword_1E5BF7CD8);
LABEL_16:
            v47 = v93;
            v46 = v94;
            sub_1E5B5F864(v64, v86, &qword_1ED03F478, &qword_1E5BFC880);
            swift_storeEnumTagMultiPayload();
            v102 = sub_1E5B5F144();
            sub_1E5B937E4();
            v74 = v64;
            v54 = v91;
            sub_1E5BF6864();
            sub_1E5B5F804(v74, &qword_1ED03F478, &qword_1E5BFC880);
LABEL_19:
            v49 = v98;
            sub_1E5B58798(v54, v47);
            v45 = 0;
            v48 = v95;
            goto LABEL_20;
          }

LABEL_15:
          v105 = v96;
          v106 = v97;
          v107 = v90 & 1;
          v71 = v78;
          sub_1E5B923D8(v40);
          v72 = v79;
          v73 = v82;
          (*(v79 + 16))(v81, v71, v82);
          swift_storeEnumTagMultiPayload();
          sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
          sub_1E5B5F144();
          v64 = v83;
          sub_1E5BF6864();
          (*(v72 + 8))(v71, v73);
          goto LABEL_16;
        }

        sub_1E5B5F804(v36, &qword_1ED03E238, &unk_1E5BF8A10);
      }

      v105 = v96;
      v106 = v97;
      v107 = v50;
      v75 = v84;
      sub_1E5B91D9C(0, 0, v40, v84);
      sub_1E5B5F864(v75, v86, &qword_1ED03E288, &qword_1E5BF7CD8);
      swift_storeEnumTagMultiPayload();
      sub_1E5B5F144();
      sub_1E5B937E4();
      sub_1E5BF6864();
      sub_1E5B5F804(v75, &qword_1ED03E288, &qword_1E5BF7CD8);
      v47 = v93;
      v46 = v94;
      goto LABEL_19;
    }

    sub_1E5B5F804(v38, &qword_1ED03E238, &unk_1E5BF8A10);
  }

  v105 = v96;
  v106 = v97;
  v107 = v39;
  sub_1E5B91D9C(0, 0, v40, v31);
  KeyPath = swift_getKeyPath();
  v66 = swift_allocObject();
  *(v66 + 16) = 1;
  v67 = &v31[*(v100 + 36)];
  *v67 = KeyPath;
  v67[1] = sub_1E5B5F78C;
  v67[2] = v66;
  v68 = &qword_1ED03F448;
  v69 = &qword_1E5BFC868;
  sub_1E5B5F864(v31, v98, &qword_1ED03F448, &qword_1E5BFC868);
  swift_storeEnumTagMultiPayload();
  sub_1E5B9361C();
  sub_1E5B936D4();
  sub_1E5BF6864();
  v70 = v31;
  return sub_1E5B5F804(v70, v68, v69);
}

uint64_t sub_1E5B933C0()
{
  v0 = type metadata accessor for BookmarkButton();
  sub_1E5B91C00(v0);
  sub_1E5BF6E44();
}

unint64_t sub_1E5B93480()
{
  result = qword_1ED03F418;
  if (!qword_1ED03F418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F410, &qword_1E5BFC750);
    sub_1E5B9350C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F418);
  }

  return result;
}

unint64_t sub_1E5B9350C()
{
  result = qword_1ED03F420;
  if (!qword_1ED03F420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F428, &qword_1E5BFC858);
    sub_1E5B93590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F420);
  }

  return result;
}

unint64_t sub_1E5B93590()
{
  result = qword_1ED03F430;
  if (!qword_1ED03F430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F438, &qword_1E5BFC860);
    sub_1E5B9361C();
    sub_1E5B936D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F430);
  }

  return result;
}

unint64_t sub_1E5B9361C()
{
  result = qword_1ED03F440;
  if (!qword_1ED03F440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F448, &qword_1E5BFC868);
    sub_1E5B5F144();
    sub_1E5B5FC8C(&qword_1ED03E2A0, &qword_1ED03E2A8, &qword_1E5BF7CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F440);
  }

  return result;
}

unint64_t sub_1E5B936D4()
{
  result = qword_1ED03F450;
  if (!qword_1ED03F450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F458, &qword_1E5BFC870);
    sub_1E5B93758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F450);
  }

  return result;
}

unint64_t sub_1E5B93758()
{
  result = qword_1ED03F460;
  if (!qword_1ED03F460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F468, &qword_1E5BFC878);
    sub_1E5B5F144();
    sub_1E5B937E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F460);
  }

  return result;
}

unint64_t sub_1E5B937E4()
{
  result = qword_1ED03F470;
  if (!qword_1ED03F470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F478, &qword_1E5BFC880);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    sub_1E5B5F144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F470);
  }

  return result;
}

uint64_t sub_1E5B938A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return sub_1E5B933C0();
}

uint64_t sub_1E5B938D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  return sub_1E5BF6C24();
}

uint64_t sub_1E5B9396C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return sub_1E5B91F18();
}

uint64_t sub_1E5B939B4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0xD000000000000017;
    if (v1 == 1)
    {
      v4 = 0xD000000000000023;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x6570704177656976;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000012;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E5B93AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B94C48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B93AE0(uint64_t a1)
{
  v2 = sub_1E5B949A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93B1C(uint64_t a1)
{
  v2 = sub_1E5B949A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93B58(uint64_t a1)
{
  v2 = sub_1E5B949FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93B94(uint64_t a1)
{
  v2 = sub_1E5B949FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93BD0(uint64_t a1)
{
  v2 = sub_1E5B94BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93C0C(uint64_t a1)
{
  v2 = sub_1E5B94BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93C48(uint64_t a1)
{
  v2 = sub_1E5B94A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93C84(uint64_t a1)
{
  v2 = sub_1E5B94A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93CC0(uint64_t a1)
{
  v2 = sub_1E5B94B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93CFC(uint64_t a1)
{
  v2 = sub_1E5B94B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93D5C(uint64_t a1)
{
  v2 = sub_1E5B94AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93D98(uint64_t a1)
{
  v2 = sub_1E5B94AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7669746341776172 && a2 == 0xEF65707954797469)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5BF7444();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B93E64(uint64_t a1)
{
  v2 = sub_1E5B94AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93EA0(uint64_t a1)
{
  v2 = sub_1E5B94AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93EDC(uint64_t a1)
{
  v2 = sub_1E5B94BF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93F18(uint64_t a1)
{
  v2 = sub_1E5B94BF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentButtonAction.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v60 = a3;
  v61 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F498, &qword_1E5BFC930);
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4A0, &qword_1E5BFC938);
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4A8, &qword_1E5BFC940);
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4B0, &qword_1E5BFC948);
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4B8, &qword_1E5BFC950);
  v48 = *(v18 - 8);
  v49 = v18;
  v19 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v47 = &v44 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4C0, &qword_1E5BFC958);
  v45 = *(v21 - 8);
  v46 = v21;
  v22 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4C8, &qword_1E5BFC960);
  v44 = *(v25 - 8);
  v26 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v44 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4D0, &qword_1E5BFC968);
  v62 = *(v29 - 8);
  v63 = v29;
  v30 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v44 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B949A8();
  sub_1E5BF7524();
  if (!v60)
  {
    v67 = 3;
    sub_1E5B94AF8();
    v34 = v63;
    sub_1E5BF7394();
    v36 = v57;
    sub_1E5BF7414();
    (*(v56 + 8))(v17, v36);
    return (*(v62 + 8))(v32, v34);
  }

  if (v60 == 1)
  {
    v68 = 4;
    sub_1E5B94AA4();
    v34 = v63;
    sub_1E5BF7394();
    v35 = v59;
    sub_1E5BF7414();
    (*(v58 + 8))(v13, v35);
    return (*(v62 + 8))(v32, v34);
  }

  if (v61 > 1)
  {
    if (v61 != 2)
    {
      if (v61 == 3)
      {
        v69 = 5;
        sub_1E5B94A50();
        v37 = v50;
        v34 = v63;
        sub_1E5BF7394();
        v39 = v51;
        v38 = v52;
      }

      else
      {
        v70 = 6;
        sub_1E5B949FC();
        v37 = v53;
        v34 = v63;
        sub_1E5BF7394();
        v39 = v54;
        v38 = v55;
      }

      (*(v39 + 8))(v37, v38);
      return (*(v62 + 8))(v32, v34);
    }

    v66 = 2;
    sub_1E5B94B4C();
    v41 = v47;
    v40 = v63;
    sub_1E5BF7394();
    (*(v48 + 8))(v41, v49);
    return (*(v62 + 8))(v32, v40);
  }

  if (!v61)
  {
    v64 = 0;
    sub_1E5B94BF4();
    v40 = v63;
    sub_1E5BF7394();
    (*(v44 + 8))(v28, v25);
    return (*(v62 + 8))(v32, v40);
  }

  v65 = 1;
  sub_1E5B94BA0();
  v43 = v63;
  sub_1E5BF7394();
  (*(v45 + 8))(v24, v46);
  return (*(v62 + 8))(v32, v43);
}

uint64_t SampleContentButtonAction.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a2;
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1E6937C10](4);
    }

    else
    {
      v3 = qword_1E5BFD1F0[a2];
    }
  }

  else
  {
    MEMORY[0x1E6937C10](3);
  }

  return MEMORY[0x1E6937C10](v3);
}

uint64_t SampleContentButtonAction.hashValue.getter(uint64_t a1, char a2)
{
  sub_1E5BF74B4();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x1E6937C10](4);
    }

    else
    {
      a1 = qword_1E5BFD1F0[a1];
    }
  }

  else
  {
    MEMORY[0x1E6937C10](3);
  }

  MEMORY[0x1E6937C10](a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B94794@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E5B94E98(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1E5B947F0()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1E6937C10](4);
    }

    else
    {
      v1 = qword_1E5BFD1F0[v1];
    }
  }

  else
  {
    MEMORY[0x1E6937C10](3);
  }

  return MEMORY[0x1E6937C10](v1);
}

uint64_t sub_1E5B94854()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1E5BF74B4();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1E6937C10](4);
    }

    else
    {
      v1 = qword_1E5BFD1F0[v1];
    }
  }

  else
  {
    MEMORY[0x1E6937C10](3);
  }

  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

uint64_t _s14FitnessActions25SampleContentButtonActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a4 != 2 || a3 != 1)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3)
    {
      return 0;
    }
  }

  else if (a1 == 2)
  {
    if (a4 != 2 || a3 != 2)
    {
      return 0;
    }
  }

  else if (a1 == 3)
  {
    if (a4 != 2 || a3 != 3)
    {
      return 0;
    }
  }

  else if (a4 != 2 || a3 != 4)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1E5B949A8()
{
  result = qword_1ED03F4D8;
  if (!qword_1ED03F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F4D8);
  }

  return result;
}

unint64_t sub_1E5B949FC()
{
  result = qword_1ED03F4E0;
  if (!qword_1ED03F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F4E0);
  }

  return result;
}

unint64_t sub_1E5B94A50()
{
  result = qword_1ED03F4E8;
  if (!qword_1ED03F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F4E8);
  }

  return result;
}

unint64_t sub_1E5B94AA4()
{
  result = qword_1ED03F4F0;
  if (!qword_1ED03F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F4F0);
  }

  return result;
}

unint64_t sub_1E5B94AF8()
{
  result = qword_1ED03F4F8;
  if (!qword_1ED03F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F4F8);
  }

  return result;
}

unint64_t sub_1E5B94B4C()
{
  result = qword_1ED03F500;
  if (!qword_1ED03F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F500);
  }

  return result;
}

unint64_t sub_1E5B94BA0()
{
  result = qword_1ED03F508;
  if (!qword_1ED03F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F508);
  }

  return result;
}

unint64_t sub_1E5B94BF4()
{
  result = qword_1ED03F510;
  if (!qword_1ED03F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F510);
  }

  return result;
}

uint64_t sub_1E5B94C48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001E5C07B80 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C07BB0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C07BD0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C07BF0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C07C10 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E5C07C30 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5BF7444();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E5B94E98(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5B8, &qword_1E5BFD1B0);
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v73 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5C0, &qword_1E5BFD1B8);
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5C8, &qword_1E5BFD1C0);
  v9 = *(v8 - 8);
  v63 = v8;
  v64 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5D0, &qword_1E5BFD1C8);
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5D8, &qword_1E5BFD1D0);
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v53 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5E0, &qword_1E5BFD1D8);
  v57 = *(v58 - 8);
  v18 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5E8, &qword_1E5BFD1E0);
  v56 = *(v21 - 8);
  v22 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v53 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5F0, &qword_1E5BFD1E8);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v53 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1E5B949A8();
  v32 = v75;
  sub_1E5BF7514();
  if (v32)
  {
    goto LABEL_10;
  }

  v33 = v24;
  v54 = v21;
  v55 = v20;
  v35 = v71;
  v34 = v72;
  v36 = v73;
  v75 = v26;
  v37 = sub_1E5BF7374();
  v38 = (2 * *(v37 + 16)) | 1;
  v76 = v37;
  v77 = v37 + 32;
  v78 = 0;
  v79 = v38;
  v39 = sub_1E5B7FB08();
  if (v39 == 7 || v78 != v79 >> 1)
  {
    v26 = sub_1E5BF7284();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v43 = &type metadata for SampleContentButtonAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v26 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v75 + 8))(v29, v25);
    swift_unknownObjectRelease();
LABEL_10:
    v52 = v74;
    goto LABEL_11;
  }

  if (v39 <= 2u)
  {
    if (v39)
    {
      if (v39 == 1)
      {
        v80 = 1;
        sub_1E5B94BA0();
        v46 = v55;
        sub_1E5BF72C4();
        (*(v57 + 8))(v46, v58);
        (*(v75 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v26 = 1;
        v52 = v74;
        goto LABEL_11;
      }

      v80 = 2;
      sub_1E5B94B4C();
      v49 = v70;
      sub_1E5BF72C4();
      (*(v59 + 8))(v49, v60);
      (*(v75 + 8))(v29, v25);
      swift_unknownObjectRelease();
      v26 = 2;
    }

    else
    {
      v80 = 0;
      sub_1E5B94BF4();
      sub_1E5BF72C4();
      (*(v56 + 8))(v33, v54);
      (*(v75 + 8))(v29, v25);
      swift_unknownObjectRelease();
      v26 = 0;
    }

    v52 = v74;
    goto LABEL_11;
  }

  if (v39 > 4u)
  {
    v48 = v74;
    v47 = v75;
    if (v39 == 5)
    {
      v80 = 5;
      sub_1E5B94A50();
      sub_1E5BF72C4();
      (*(v65 + 8))(v34, v66);
      (*(v47 + 8))(v29, v25);
      swift_unknownObjectRelease();
      v26 = 3;
    }

    else
    {
      v80 = 6;
      sub_1E5B949FC();
      sub_1E5BF72C4();
      (*(v67 + 8))(v36, v68);
      (*(v47 + 8))(v29, v25);
      swift_unknownObjectRelease();
      v26 = 4;
    }

    v52 = v48;
  }

  else
  {
    v40 = v75;
    if (v39 == 3)
    {
      v80 = 3;
      sub_1E5B94AF8();
      sub_1E5BF72C4();
      v41 = v62;
      v26 = sub_1E5BF7354();
      (*(v61 + 8))(v35, v41);
    }

    else
    {
      v80 = 4;
      sub_1E5B94AA4();
      v50 = v69;
      sub_1E5BF72C4();
      v51 = v63;
      v26 = sub_1E5BF7354();
      (*(v64 + 8))(v50, v51);
    }

    (*(v40 + 8))(v29, v25);
    swift_unknownObjectRelease();
    v52 = v74;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v26;
}

unint64_t sub_1E5B95930()
{
  result = qword_1ED03F518;
  if (!qword_1ED03F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F518);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SampleContentButtonAction(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleContentButtonAction(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5B95A24(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1E5B95A3C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1E5B95AE8()
{
  result = qword_1ED03F520;
  if (!qword_1ED03F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F520);
  }

  return result;
}

unint64_t sub_1E5B95B40()
{
  result = qword_1ED03F528;
  if (!qword_1ED03F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F528);
  }

  return result;
}

unint64_t sub_1E5B95B98()
{
  result = qword_1ED03F530;
  if (!qword_1ED03F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F530);
  }

  return result;
}

unint64_t sub_1E5B95BF0()
{
  result = qword_1ED03F538;
  if (!qword_1ED03F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F538);
  }

  return result;
}

unint64_t sub_1E5B95C48()
{
  result = qword_1ED03F540;
  if (!qword_1ED03F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F540);
  }

  return result;
}

unint64_t sub_1E5B95CA0()
{
  result = qword_1ED03F548;
  if (!qword_1ED03F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F548);
  }

  return result;
}

unint64_t sub_1E5B95CF8()
{
  result = qword_1ED03F550;
  if (!qword_1ED03F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F550);
  }

  return result;
}

unint64_t sub_1E5B95D50()
{
  result = qword_1ED03F558;
  if (!qword_1ED03F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F558);
  }

  return result;
}

unint64_t sub_1E5B95DA8()
{
  result = qword_1ED03F560;
  if (!qword_1ED03F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F560);
  }

  return result;
}

unint64_t sub_1E5B95E00()
{
  result = qword_1ED03F568;
  if (!qword_1ED03F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F568);
  }

  return result;
}

unint64_t sub_1E5B95E58()
{
  result = qword_1ED03F570;
  if (!qword_1ED03F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F570);
  }

  return result;
}

unint64_t sub_1E5B95EB0()
{
  result = qword_1ED03F578;
  if (!qword_1ED03F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F578);
  }

  return result;
}

unint64_t sub_1E5B95F08()
{
  result = qword_1ED03F580;
  if (!qword_1ED03F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F580);
  }

  return result;
}

unint64_t sub_1E5B95F60()
{
  result = qword_1ED03F588;
  if (!qword_1ED03F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F588);
  }

  return result;
}

unint64_t sub_1E5B95FB8()
{
  result = qword_1ED03F590;
  if (!qword_1ED03F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F590);
  }

  return result;
}

unint64_t sub_1E5B96010()
{
  result = qword_1ED03F598;
  if (!qword_1ED03F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F598);
  }

  return result;
}

unint64_t sub_1E5B96068()
{
  result = qword_1ED03F5A0;
  if (!qword_1ED03F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F5A0);
  }

  return result;
}

unint64_t sub_1E5B960C0()
{
  result = qword_1ED03F5A8;
  if (!qword_1ED03F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F5A8);
  }

  return result;
}

unint64_t sub_1E5B96118()
{
  result = qword_1ED03F5B0;
  if (!qword_1ED03F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F5B0);
  }

  return result;
}

__n128 SampleContentStartButton.init(store:labelContent:layout:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = *a4;
  v12 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *a5 = sub_1E5B62F34;
  *(a5 + 8) = v10;
  *(a5 + 16) = 0;
  *(a5 + 17) = v9;
  *(a5 + 40) = v12;
  *(a5 + 56) = *(a4 + 32);
  return result;
}

uint64_t sub_1E5B961F8@<X0>(uint64_t a1@<X8>)
{
  sub_1E5B81070();

  result = sub_1E5BF69E4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1E5B96264@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a3;
  v56 = a2;
  v58 = a1;
  v65 = a4;
  v66 = sub_1E5BF6EE4();
  v64 = *(v66 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5BF6E84();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5BF6EA4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6D8, &qword_1E5BFD4B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v59 = &v49 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  v54 = *(v68 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v53 = &v49 - v17;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F680, &unk_1E5BFD288);
  v62 = *(v60 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v67 = &v49 - v19;
  v20 = sub_1E5BF64B4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v4;
  LOBYTE(v71[0]) = *(v4 + 17);
  v25 = *v4;
  v51 = *(v4 + 8);
  v52 = v25;
  v50 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v26 = v55;
  v27 = WorkoutMediaType.localizedTitle(labelContent:rawActivityType:locale:)(v71, v55, v24, v56);
  v29 = v28;
  (*(v21 + 8))(v24, v20);
  sub_1E5B989E0(v49, v71);
  v30 = swift_allocObject();
  v31 = v71[1];
  *(v30 + 16) = v71[0];
  *(v30 + 32) = v31;
  v32 = v71[3];
  *(v30 + 48) = v71[2];
  *(v30 + 64) = v32;
  *(v30 + 80) = v26;
  v69 = v27;
  v70 = v29;
  v33 = v29;
  v34 = v53;
  sub_1E5BF6C84();
  v35 = sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
  v36 = v68;
  sub_1E5BF69F4();
  (*(v54 + 8))(v34, v36);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v37 = v58;
  sub_1E5BF6E94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6E0, &qword_1E5BFD4E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5BFD220;
  *(inited + 32) = 1701667182;
  v39 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v27;
  *(inited + 56) = v33;
  *(inited + 72) = v39;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x6E6F74747562;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v39;
  *(inited + 128) = 0x6973736572706D69;
  v40 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v37;
  *(inited + 168) = v40;
  *(inited + 176) = 0x657079546469;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  *(inited + 216) = v39;
  *(inited + 224) = 0x54746E65746E6F63;
  *(inited + 232) = 0xEB00000000657079;
  *(inited + 240) = 0x74756F6B726F77;
  *(inited + 248) = 0xE700000000000000;
  *(inited + 264) = v39;
  *(inited + 272) = 0xD000000000000013;
  *(inited + 312) = v39;
  *(inited + 280) = 0x80000001E5C07C50;
  *(inited + 288) = 1701147238;
  *(inited + 296) = 0xE400000000000000;
  sub_1E5BA717C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6E8, &qword_1E5BFD4E8);
  swift_arrayDestroy();
  sub_1E5BF6E74();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1E5BA717C(MEMORY[0x1E69E7CC0]);
  sub_1E5BA717C(v41);
  v42 = v59;
  sub_1E5BF6EB4();
  v43 = sub_1E5BF6EC4();
  v44 = v42;
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v45 = v63;
  sub_1E5BF6ED4();
  *&v71[0] = v68;
  *(&v71[0] + 1) = v35;
  swift_getOpaqueTypeConformance2();
  v46 = v60;
  v47 = v67;
  sub_1E5BF6A04();
  (*(v64 + 8))(v45, v66);
  sub_1E5B5F804(v44, &qword_1ED03F6D8, &qword_1E5BFD4B8);
  return (*(v62 + 8))(v47, v46);
}

uint64_t sub_1E5B96A84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

uint64_t SampleContentStartButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5F8, &qword_1E5BFD240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  sub_1E5B96CD8(v2, v13 - v6);
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  *&v13[0] = sub_1E5BF6B94();
  sub_1E5B984A4();
  sub_1E5B9898C();
  sub_1E5BF6A44();

  sub_1E5B5F804(v7, &qword_1ED03F5F8, &qword_1E5BFD240);
  sub_1E5B989E0(v2, v13);
  v8 = swift_allocObject();
  v9 = v13[1];
  *(v8 + 1) = v13[0];
  *(v8 + 2) = v9;
  v10 = v13[3];
  *(v8 + 3) = v13[2];
  *(v8 + 4) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F688, &qword_1E5BFD298);
  v12 = (a1 + *(result + 36));
  *v12 = sub_1E5B98A18;
  v12[1] = v8;
  v12[2] = 0;
  v12[3] = 0;
  return result;
}

uint64_t sub_1E5B96CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F668, &qword_1E5BFD278);
  v67 = *(v74 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v66 = &v65 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F698, &qword_1E5BFD3B8);
  v5 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v65 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F650, &qword_1E5BFD268);
  v7 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v68 = (&v65 - v8);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F640, &qword_1E5BFD260);
  v75 = *(v76 - 8);
  v9 = *(v75 + 64);
  v10 = MEMORY[0x1EEE9AC00](v76);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v65 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F630, &qword_1E5BFD258);
  v13 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v77 = &v65 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6A0, &unk_1E5BFD3C0);
  v15 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v65 - v16;
  v79 = sub_1E5BF64B4();
  v78 = *(v79 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F620, &qword_1E5BFD250);
  v81 = *(v84 - 8);
  v20 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v80 = &v65 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v65 - v24;
  v26 = *a1;
  v27 = *(a1 + 8);
  v82 = a1;
  v28 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v30 = *(v25 + 1);
    v31 = *(v25 + 4);
    v81 = *(v25 + 3);
    v32 = v25[40];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5B5F804(v25, &qword_1ED03E950, &unk_1E5BF95F0);
LABEL_11:
    LOBYTE(v96) = *(v82 + 17);
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    WorkoutMediaType.localizedTitle(labelContent:rawActivityType:locale:)(&v96, 3000, v19, 0);
    v52 = (*(v78 + 8))(v19, v79);
    MEMORY[0x1EEE9AC00](v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6B8, &qword_1E5BFD468);
    sub_1E5B5FC8C(&qword_1ED03F6C0, &qword_1ED03F6B8, &qword_1E5BFD468);
    v53 = v80;
    sub_1E5BF6C84();

    v54 = v81;
    v55 = v84;
    (*(v81 + 16))(v85, v53, v84);
    swift_storeEnumTagMultiPayload();
    sub_1E5B5FC8C(&qword_1ED03F618, &qword_1ED03F620, &qword_1E5BFD250);
    sub_1E5B985E0();
    sub_1E5BF6864();
    return (*(v54 + 8))(v53, v55);
  }

  v30 = *(v25 + 1);
  v31 = *(v25 + 4);
  v81 = *(v25 + 3);
  v32 = v25[40];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
  v34 = sub_1E5BF6464();
  (*(*(v34 - 8) + 8))(&v25[v33], v34);
LABEL_6:
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v35 = sub_1E5BEF624(v32, v96);

  if (v35)
  {
    v36 = v82;
    sub_1E5B989E0(v82, &v96);
    sub_1E5B989E0(v36, v95);
    sub_1E5B98C08(v36 + 24, &v89);
    if (*(&v90 + 1))
    {
      sub_1E5B98CE4(&v89, &v93);
      v37 = v94;
      v38 = __swift_project_boxed_opaque_existential_1(&v93, v94);
      v39 = *(*(v37 - 8) + 64);
      MEMORY[0x1EEE9AC00](v38);
      (*(v41 + 16))(&v65 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
      v42 = sub_1E5BF6D94();
      v82 = v30;
      v43 = v68;
      *v68 = v42;
      v79 = *(v70 + 44);

      v80 = v31;
      v88 = sub_1E5BA6E58(v31);
      swift_getKeyPath();
      sub_1E5B989E0(v95, &v89);
      v44 = swift_allocObject();
      v45 = v90;
      *(v44 + 16) = v89;
      *(v44 + 32) = v45;
      v46 = v92;
      *(v44 + 48) = v91;
      *(v44 + 64) = v46;
      *(v44 + 80) = v32;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_1E5B98E00;
      *(v47 + 24) = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6B0, &qword_1E5BFD438);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F678, &qword_1E5BFD280);
      sub_1E5B5FC8C(&qword_1EE2C6228, &qword_1ED03F6B0, &qword_1E5BFD438);
      sub_1E5B9882C();
      sub_1E5BF6D44();

      sub_1E5B5F864(v43, v71, &qword_1ED03F650, &qword_1E5BFD268);
      swift_storeEnumTagMultiPayload();
      sub_1E5B986F0();
      sub_1E5B987A8();
      v48 = v72;
      sub_1E5BF6864();

      sub_1E5B98CB4(v95);
      sub_1E5B5F804(v43, &qword_1ED03F650, &qword_1E5BFD268);
      __swift_destroy_boxed_opaque_existential_1(&v93);
    }

    else
    {

      sub_1E5B5F804(&v89, &qword_1ED03F6A8, &qword_1E5BFD410);
      v93 = sub_1E5BA6E58(v31);
      swift_getKeyPath();
      sub_1E5B989E0(&v96, &v89);
      v57 = swift_allocObject();
      v58 = v90;
      *(v57 + 16) = v89;
      *(v57 + 32) = v58;
      v59 = v92;
      *(v57 + 48) = v91;
      *(v57 + 64) = v59;
      *(v57 + 80) = v32;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_1E5B98C78;
      *(v60 + 24) = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6B0, &qword_1E5BFD438);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F678, &qword_1E5BFD280);
      sub_1E5B5FC8C(&qword_1EE2C6228, &qword_1ED03F6B0, &qword_1E5BFD438);
      sub_1E5B9882C();
      v61 = v66;
      sub_1E5BF6D44();

      v62 = v67;
      v63 = v74;
      (*(v67 + 16))(v71, v61, v74);
      swift_storeEnumTagMultiPayload();
      sub_1E5B986F0();
      sub_1E5B987A8();
      v48 = v72;
      sub_1E5BF6864();

      sub_1E5B98CB4(v95);
      (*(v62 + 8))(v61, v63);
    }

    v64 = v73;
    sub_1E5B588C0(v48, v73);
    sub_1E5B98CB4(&v96);
    v51 = v77;
    sub_1E5B588C0(v64, v77);
    v49 = 0;
    v50 = v85;
  }

  else
  {

    v49 = 1;
    v50 = v85;
    v51 = v77;
  }

  (*(v75 + 56))(v51, v49, 1, v76);
  sub_1E5B5F864(v51, v50, &qword_1ED03F630, &qword_1E5BFD258);
  swift_storeEnumTagMultiPayload();
  sub_1E5B5FC8C(&qword_1ED03F618, &qword_1ED03F620, &qword_1E5BFD250);
  sub_1E5B985E0();
  sub_1E5BF6864();
  return sub_1E5B5F804(v51, &qword_1ED03F630, &qword_1E5BFD258);
}

uint64_t sub_1E5B97C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v55 = a4;
  v54 = a2;
  v49 = a1;
  v59 = a5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6C8, &qword_1E5BFD470);
  v53 = *(v60 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v51 = &v45 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6D0, &qword_1E5BFD478);
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v45 - v9;
  v10 = sub_1E5BF64B4();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F620, &qword_1E5BFD250);
  v52 = *(v57 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v50 = &v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - v17;
  v20 = *a3;
  v19 = a3[1];
  v21 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E968, &unk_1E5BF9620) + 48);
    v23 = sub_1E5BF6464();
    (*(*(v23 - 8) + 8))(&v18[v22], v23);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E960, &qword_1E5BFD4B0);
    (*(*(v24 - 8) + 8))(v18, v24);
    v25 = v51;
    sub_1E5B96264(v49, v55, v54, v51);
    v26 = v53;
    v27 = v60;
    (*(v53 + 16))(v58, v25, v60);
    swift_storeEnumTagMultiPayload();
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F680, &unk_1E5BFD288);
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
    v30 = sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
    v61 = v29;
    v62 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v61 = v28;
    v62 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1ED03F618, &qword_1ED03F620, &qword_1E5BFD250);
    sub_1E5BF6864();
    return (*(v26 + 8))(v25, v27);
  }

  else
  {
    sub_1E5B5F804(v18, &qword_1ED03E948, &qword_1E5BFD480);
    LOBYTE(v61) = *(a3 + 17);
    sub_1E5BF6614();
    swift_getKeyPath();
    v33 = v46;
    sub_1E5BF6E34();

    v34 = WorkoutMediaType.localizedTitle(labelContent:rawActivityType:locale:)(&v61, v54, v33, v55);
    v36 = v35;
    v37 = (*(v47 + 8))(v33, v48);
    MEMORY[0x1EEE9AC00](v37);
    *(&v45 - 2) = v34;
    *(&v45 - 1) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6B8, &qword_1E5BFD468);
    sub_1E5B5FC8C(&qword_1ED03F6C0, &qword_1ED03F6B8, &qword_1E5BFD468);
    v38 = v50;
    sub_1E5BF6C84();

    v39 = v52;
    v40 = v57;
    (*(v52 + 16))(v58, v38, v57);
    swift_storeEnumTagMultiPayload();
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F680, &unk_1E5BFD288);
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
    v43 = sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
    v61 = v42;
    v62 = v43;
    v44 = swift_getOpaqueTypeConformance2();
    v61 = v41;
    v62 = v44;
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1ED03F618, &qword_1ED03F620, &qword_1E5BFD250);
    sub_1E5BF6864();
    return (*(v39 + 8))(v38, v40);
  }
}

uint64_t sub_1E5B983E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

unint64_t sub_1E5B984A4()
{
  result = qword_1ED03F600;
  if (!qword_1ED03F600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F5F8, &qword_1E5BFD240);
    sub_1E5B98528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F600);
  }

  return result;
}

unint64_t sub_1E5B98528()
{
  result = qword_1ED03F608;
  if (!qword_1ED03F608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F610, &qword_1E5BFD248);
    sub_1E5B5FC8C(&qword_1ED03F618, &qword_1ED03F620, &qword_1E5BFD250);
    sub_1E5B985E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F608);
  }

  return result;
}

unint64_t sub_1E5B985E0()
{
  result = qword_1ED03F628;
  if (!qword_1ED03F628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F630, &qword_1E5BFD258);
    sub_1E5B98664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F628);
  }

  return result;
}

unint64_t sub_1E5B98664()
{
  result = qword_1ED03F638;
  if (!qword_1ED03F638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F640, &qword_1E5BFD260);
    sub_1E5B986F0();
    sub_1E5B987A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F638);
  }

  return result;
}

unint64_t sub_1E5B986F0()
{
  result = qword_1ED03F648;
  if (!qword_1ED03F648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F650, &qword_1E5BFD268);
    sub_1E5B5FC8C(&qword_1EE2C63C8, &qword_1ED03F658, &qword_1E5BFD270);
    sub_1E5B987A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F648);
  }

  return result;
}

unint64_t sub_1E5B987A8()
{
  result = qword_1ED03F660;
  if (!qword_1ED03F660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F668, &qword_1E5BFD278);
    sub_1E5B9882C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F660);
  }

  return result;
}

unint64_t sub_1E5B9882C()
{
  result = qword_1ED03F670;
  if (!qword_1ED03F670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F678, &qword_1E5BFD280);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F680, &unk_1E5BFD288);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
    sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1ED03F618, &qword_1ED03F620, &qword_1E5BFD250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F670);
  }

  return result;
}

unint64_t sub_1E5B9898C()
{
  result = qword_1EE2C6EA0;
  if (!qword_1EE2C6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6EA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI6Layout_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E5B98A54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1E5B98AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

unint64_t sub_1E5B98B24()
{
  result = qword_1ED03F690;
  if (!qword_1ED03F690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F688, &qword_1E5BFD298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F5F8, &qword_1E5BFD240);
    sub_1E5B984A4();
    sub_1E5B9898C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F690);
  }

  return result;
}

uint64_t sub_1E5B98C08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6A8, &qword_1E5BFD410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B98C84(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1E5B98CE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E5B98D00@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1E5B961F8(a1);
}

uint64_t sub_1E5B98D08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return sub_1E5BF6C24();
}

uint64_t objectdestroy_4Tm_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1E5B5C0A8();
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  }

  return swift_deallocObject();
}

uint64_t sub_1E5B98DE4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t static ActionButtonBuilder.downloadedStatusViewBuilder(locale:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1E5B5F77C(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E310, &unk_1E5BFD4F0);
  sub_1E5B5FC8C(&qword_1ED03E318, &qword_1ED03E310, &unk_1E5BFD4F0);
  return sub_1E5BF6C84();
}

uint64_t sub_1E5B98F04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E320, &qword_1E5BF7E80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E328, &unk_1E5BFD530);
  sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530);
  swift_getOpaqueTypeConformance2();
  return sub_1E5BF6C24();
}

uint64_t sub_1E5B99030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5BF64B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5BF6F94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE2CD210;
  (*(v5 + 16))(v8, a1, v4);
  v12 = v11;
  result = sub_1E5BF6FD4();
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1E5B991E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E328, &unk_1E5BFD530);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - v2;
  v7[1] = sub_1E5BF6BE4();
  v4 = *MEMORY[0x1E697E6E8];
  v5 = sub_1E5BF66D4();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  sub_1E5B5F7AC();
  result = sub_1E5BF6F14();
  if (result)
  {
    sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530);
    sub_1E5BF6A84();
    sub_1E5B99720(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ActionButtonBuilder.bookmarkedStatusViewBuilder(locale:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1E5B5F77C(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
  return sub_1E5BF6C84();
}

uint64_t objectdestroyTm_3()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5B99530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5BF64B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5BF6F94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE2CD210;
  (*(v5 + 16))(v8, a1, v4);
  v12 = v11;
  result = sub_1E5BF69D4();
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_1E5B996D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6BE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B99720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E328, &unk_1E5BFD530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutMediaType.localizedTitle(labelContent:rawActivityType:locale:)(char *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = sub_1E5BF64B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5BF6F94();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = *a1;
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      if (*a1)
      {
        sub_1E5BF6F24();
        if (qword_1EE2C6208 == -1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1E5BF6F24();
        if (qword_1EE2C6208 == -1)
        {
          goto LABEL_23;
        }
      }
    }

    else if (*a1)
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
LABEL_23:
        v16 = qword_1EE2CD210;
        (*(v9 + 16))(v12, a3, v8);
        v17 = v16;
        return sub_1E5BF6FD4();
      }
    }

LABEL_32:
    swift_once();
    goto LABEL_23;
  }

  if (a4)
  {
    if (*a1)
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_32;
  }

  if (a2 == 52)
  {
    if (*a1)
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_32;
  }

  if (a2 == 37)
  {
    if (*a1)
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_32;
  }

  v20 = *a1;
  return sub_1E5B99EA8(&v20, a3);
}

uint64_t sub_1E5B99EA8(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1E5BF64B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5BF6F94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*a1)
  {
    sub_1E5BF6F24();
    if (qword_1EE2C6208 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v11 = qword_1EE2CD210;
  (*(v5 + 16))(v8, a2, v4);
  v12 = v11;
  return sub_1E5BF6FD4();
}

uint64_t SampleContentButtonEnvironment.init(resolveMarketingOffer:requestStartWorkout:requireAccount:requireNewSessionsAllowed:resolveWorkoutDetail:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

unint64_t sub_1E5B9A128()
{
  v1 = 0x6570704177656976;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x5474736575716572;
  }

  if (*v0)
  {
    v1 = 0x417373696D736964;
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

uint64_t sub_1E5B9A1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B9AAF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B9A1EC(uint64_t a1)
{
  v2 = sub_1E5B9A880();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9A228(uint64_t a1)
{
  v2 = sub_1E5B9A880();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9A264(uint64_t a1)
{
  v2 = sub_1E5B9A97C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9A2A0(uint64_t a1)
{
  v2 = sub_1E5B9A97C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9A2DC(uint64_t a1)
{
  v2 = sub_1E5B9A8D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9A318(uint64_t a1)
{
  v2 = sub_1E5B9A8D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9A354(uint64_t a1)
{
  v2 = sub_1E5B9A9D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9A390(uint64_t a1)
{
  v2 = sub_1E5B9A9D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9A3CC(uint64_t a1)
{
  v2 = sub_1E5B9A928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9A408(uint64_t a1)
{
  v2 = sub_1E5B9A928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreatePlanAlertAction.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6F0, &qword_1E5BFD5A0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6F8, &qword_1E5BFD5A8);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F700, &qword_1E5BFD5B0);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F708, &qword_1E5BFD5B8);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F710, &qword_1E5BFD5C0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B9A880();
  sub_1E5BF7524();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_1E5B9A928();
      v12 = v29;
      sub_1E5BF7394();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_1E5B9A8D4();
      v12 = v32;
      sub_1E5BF7394();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_1E5B9A97C();
    sub_1E5BF7394();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_1E5B9A9D0();
  sub_1E5BF7394();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_1E5B9A880()
{
  result = qword_1ED03F718;
  if (!qword_1ED03F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F718);
  }

  return result;
}

unint64_t sub_1E5B9A8D4()
{
  result = qword_1ED03F720;
  if (!qword_1ED03F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F720);
  }

  return result;
}

unint64_t sub_1E5B9A928()
{
  result = qword_1ED03F728;
  if (!qword_1ED03F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F728);
  }

  return result;
}

unint64_t sub_1E5B9A97C()
{
  result = qword_1ED03F730;
  if (!qword_1ED03F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F730);
  }

  return result;
}

unint64_t sub_1E5B9A9D0()
{
  result = qword_1ED03F738;
  if (!qword_1ED03F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F738);
  }

  return result;
}

uint64_t CreatePlanAlertAction.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1);
  return sub_1E5BF7504();
}

void *sub_1E5B9AAAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5B9AC70(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E5B9AAF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x417373696D736964 && a2 == 0xEC0000007472656CLL || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5C07EA0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEF74754F64656D69)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5BF7444();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1E5B9AC70(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7A0, &qword_1E5BFDAC8);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7A8, &qword_1E5BFDAD0);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7B0, &qword_1E5BFDAD8);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7B8, &qword_1E5BFDAE0);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7C0, &qword_1E5BFDAE8);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E5B9A880();
  v21 = v50;
  sub_1E5BF7514();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_1E5BF7374();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_1E5B7FB10();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_1E5B9A97C();
        v36 = v40;
        sub_1E5BF72C4();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_1E5B9A9D0();
        v29 = v40;
        sub_1E5BF72C4();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_1E5B9A928();
      v35 = v40;
      sub_1E5BF72C4();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_1E5B9A8D4();
      v37 = v40;
      sub_1E5BF72C4();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_1E5BF7284();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
  *v15 = &type metadata for CreatePlanAlertAction;
  sub_1E5BF72D4();
  sub_1E5BF7274();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_1E5B9B2B4()
{
  result = qword_1ED03F740;
  if (!qword_1ED03F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F740);
  }

  return result;
}

unint64_t sub_1E5B9B36C()
{
  result = qword_1ED03F748;
  if (!qword_1ED03F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F748);
  }

  return result;
}

unint64_t sub_1E5B9B3C4()
{
  result = qword_1ED03F750;
  if (!qword_1ED03F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F750);
  }

  return result;
}

unint64_t sub_1E5B9B41C()
{
  result = qword_1ED03F758;
  if (!qword_1ED03F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F758);
  }

  return result;
}

unint64_t sub_1E5B9B474()
{
  result = qword_1ED03F760;
  if (!qword_1ED03F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F760);
  }

  return result;
}

unint64_t sub_1E5B9B4CC()
{
  result = qword_1ED03F768;
  if (!qword_1ED03F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F768);
  }

  return result;
}

unint64_t sub_1E5B9B524()
{
  result = qword_1ED03F770;
  if (!qword_1ED03F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F770);
  }

  return result;
}

unint64_t sub_1E5B9B57C()
{
  result = qword_1ED03F778;
  if (!qword_1ED03F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F778);
  }

  return result;
}

unint64_t sub_1E5B9B5D4()
{
  result = qword_1ED03F780;
  if (!qword_1ED03F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F780);
  }

  return result;
}

unint64_t sub_1E5B9B62C()
{
  result = qword_1ED03F788;
  if (!qword_1ED03F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F788);
  }

  return result;
}

unint64_t sub_1E5B9B684()
{
  result = qword_1ED03F790;
  if (!qword_1ED03F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F790);
  }

  return result;
}

unint64_t sub_1E5B9B6DC()
{
  result = qword_1ED03F798;
  if (!qword_1ED03F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F798);
  }

  return result;
}

uint64_t sub_1E5B9B748(uint64_t a1)
{
  v2 = sub_1E5B9BD38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9B784(uint64_t a1)
{
  v2 = sub_1E5B9BD38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9B7C0()
{
  if (*v0)
  {
    result = 0x7463697274736572;
  }

  else
  {
    result = 0x6465776F6C6C61;
  }

  *v0;
  return result;
}

uint64_t sub_1E5B9B800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465776F6C6C61 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7463697274736572 && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5B9B8E4(uint64_t a1)
{
  v2 = sub_1E5B9BC90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9B920(uint64_t a1)
{
  v2 = sub_1E5B9BC90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9B95C(uint64_t a1)
{
  v2 = sub_1E5B9BCE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9B998(uint64_t a1)
{
  v2 = sub_1E5B9BCE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentSessionStatus.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7C8, &qword_1E5BFDAF0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7D0, &qword_1E5BFDAF8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7D8, &qword_1E5BFDB00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B9BC90();
  sub_1E5BF7524();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1E5B9BCE4();
    sub_1E5BF7394();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1E5B9BD38();
    sub_1E5BF7394();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_1E5B9BC90()
{
  result = qword_1ED03F7E0;
  if (!qword_1ED03F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F7E0);
  }

  return result;
}

unint64_t sub_1E5B9BCE4()
{
  result = qword_1ED03F7E8;
  if (!qword_1ED03F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F7E8);
  }

  return result;
}

unint64_t sub_1E5B9BD38()
{
  result = qword_1ED03F7F0;
  if (!qword_1ED03F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F7F0);
  }

  return result;
}

uint64_t SampleContentSessionStatus.hashValue.getter(char a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1 & 1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B9BE18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5B9BE64(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1E5B9BE64(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F830, &qword_1E5BFDE80);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F838, &qword_1E5BFDE88);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F840, &unk_1E5BFDE90);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B9BC90();
  v15 = v32;
  sub_1E5BF7514();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_1E5BF7374();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_1E5B7FB0C();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_1E5BF7284();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v24 = &type metadata for SampleContentSessionStatus;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_1E5B9BCE4();
    sub_1E5BF72C4();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1E5B9BD38();
    sub_1E5BF72C4();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_1E5B9C368()
{
  result = qword_1ED03F7F8;
  if (!qword_1ED03F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F7F8);
  }

  return result;
}

unint64_t sub_1E5B9C3C0()
{
  result = qword_1ED03F800;
  if (!qword_1ED03F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F800);
  }

  return result;
}

unint64_t sub_1E5B9C418()
{
  result = qword_1ED03F808;
  if (!qword_1ED03F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F808);
  }

  return result;
}

unint64_t sub_1E5B9C470()
{
  result = qword_1ED03F810;
  if (!qword_1ED03F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F810);
  }

  return result;
}

unint64_t sub_1E5B9C4C8()
{
  result = qword_1ED03F818;
  if (!qword_1ED03F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F818);
  }

  return result;
}

unint64_t sub_1E5B9C520()
{
  result = qword_1ED03F820;
  if (!qword_1ED03F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F820);
  }

  return result;
}

unint64_t sub_1E5B9C578()
{
  result = qword_1ED03F828;
  if (!qword_1ED03F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F828);
  }

  return result;
}

uint64_t sub_1E5B9C5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v31 = a1;
  v8 = sub_1E5BF64B4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1E5BF6F94();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v13 = sub_1E5BF69D4();
  v28 = v14;
  v29 = v13;
  v26 = v15;
  v27 = v16;
  sub_1E5BF6614();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4 & 1;
  sub_1E5B5F5EC();
  v18 = sub_1E5BF6D34();
  v25 = v24;
  v24[1] = v32;
  v19 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F848, &unk_1E5BFDFA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5B5FC8C(&qword_1EE2C6328, &qword_1ED03F848, &unk_1E5BFDFA0);
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
  v20 = v26;
  v21 = v29;
  v22 = v28;
  sub_1E5BF6B04();
  sub_1E5B7AD08(v21, v22, v20 & 1);
}

uint64_t sub_1E5B9CA28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, _BYTE *a4@<X8>)
{
  v40 = a3;
  v41 = a2;
  v39 = a1;
  v43 = a4;
  v4 = sub_1E5BF6494();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v36 - v23;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v12 + 48))(v24, 1, v11);
  if (result != 1)
  {
    sub_1E5B7AD6C(v24, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
    sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v27 = v42;
    (*(v42 + 56))(v18, 0, 1, v4);
    v28 = *(v7 + 48);
    sub_1E5B7ADDC(v20, v10);
    sub_1E5B7ADDC(v18, &v10[v28]);
    v29 = *(v27 + 48);
    if (v29(v10, 1, v4) == 1)
    {
      sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v20, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v29(&v10[v28], 1, v4) == 1)
      {
        result = sub_1E5B5F804(v10, &qword_1ED03E5E8, &unk_1E5BF9600);
        v30 = 1;
LABEL_10:
        v26 = v30 & 1;
        goto LABEL_11;
      }
    }

    else
    {
      v31 = v38;
      sub_1E5B7ADDC(v10, v38);
      if (v29(&v10[v28], 1, v4) != 1)
      {
        v32 = &v10[v28];
        v33 = v37;
        (*(v27 + 32))(v37, v32, v4);
        sub_1E5B7AE4C();
        v34 = v27;
        v30 = sub_1E5BF6F14();
        v35 = *(v34 + 8);
        v35(v33, v4);
        sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v20, &qword_1ED03E5E8, &unk_1E5BF9600);
        v35(v31, v4);
        result = sub_1E5B5F804(v10, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_10;
      }

      sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v20, &qword_1ED03E5E8, &unk_1E5BF9600);
      (*(v27 + 8))(v31, v4);
    }

    result = sub_1E5B5F804(v10, &qword_1ED03E790, &qword_1E5BF9150);
    v30 = 0;
    goto LABEL_10;
  }

  v26 = 0;
LABEL_11:
  *v43 = v26;
  return result;
}

uint64_t sub_1E5B9CF84()
{
  type metadata accessor for StartWorkoutButtonAction();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E5B9CFC8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13[-v8];
  sub_1E5BF65D4();
  v10 = sub_1E5BF65E4();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  v14 = a1;
  v15 = a2;
  v16 = a3 & 1;
  sub_1E5B5F5EC();
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B9D124()
{
  started = type metadata accessor for StartWorkoutButtonAction();
  v1 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5B9D664(v3);
}

uint64_t sub_1E5B9D240@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1E5B9D428@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1E5B9D640@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5B9D428(a1);
}

uint64_t sub_1E5B9D64C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1E5B9D124();
}

uint64_t sub_1E5B9D658@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5B9D240(a1);
}

uint64_t sub_1E5B9D664(uint64_t a1)
{
  started = type metadata accessor for StartWorkoutButtonAction();
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

id static NSBundle.actionsLocalization.getter()
{
  if (qword_1ED03E1D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1ED03F850;

  return v0;
}

void static NSBundle.actionsLocalization.setter(uint64_t a1)
{
  if (qword_1ED03E1D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ED03F850;
  qword_1ED03F850 = a1;
}

uint64_t (*static NSBundle.actionsLocalization.modify())()
{
  if (qword_1ED03E1D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1E5B9D89C(uint64_t a1, void *a2)
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a2 = result;
  return result;
}

uint64_t sub_1E5B9D8F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F858, qword_1E5BFE088);
  sub_1E5B9F514();

  return sub_1E5BF6614();
}

uint64_t sub_1E5B9D95C(uint64_t a1)
{
  v1 = *(a1 + 84);
  v2 = *(a1 + 24);
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6544();
  sub_1E5BF6534();
  return v4;
}

uint64_t sub_1E5B9D9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a8;
  v18[8] = a9;
  v18[9] = a10;
  v18[10] = a1;
  v18[11] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E5BF6524();
}

uint64_t (*sub_1E5B9DA7C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 32);
  swift_getFunctionTypeMetadata1();
  sub_1E5BF6544();
  sub_1E5BF6534();
  v4 = swift_allocObject();
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 32) = v3;
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 56) = *(a1 + 56);
  *(v4 + 72) = *(a1 + 72);
  *(v4 + 80) = v6;
  return sub_1E5B9F5E8;
}

uint64_t sub_1E5B9DB3C(uint64_t a1)
{
  v1 = *(a1 + 92);
  v2 = *(a1 + 16);
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6544();
  sub_1E5BF6534();
  return v4;
}

uint64_t sub_1E5B9DB8C(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 40);
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6544();
  sub_1E5BF6534();
  return v4;
}

uint64_t DynamicStartWorkoutView.init(store:startWorkoutActionViewBuilder:startSampleContentActionViewBuilder:marketingActionViewBuilder:sampleContentMarketingActionViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *a5 = sub_1E5B62F34;
  *(a5 + 8) = v18;
  *(a5 + 16) = 0;
  started = type metadata accessor for DynamicStartWorkoutView();
  v20 = started[21];

  swift_getFunctionTypeMetadata0();
  sub_1E5BF6524();
  v21 = started[22];

  sub_1E5B9D9AC(a3, a4, a8, a9, a10, a11, a12, a13, a14, a15);
  v22 = started[23];

  swift_getFunctionTypeMetadata0();
  sub_1E5BF6524();
  v23 = started[24];
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6524();
}

uint64_t DynamicStartWorkoutView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v38 = *(a1 - 8);
  v40 = *(v38 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v35 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v5 + 32);
  sub_1E5BF6874();
  v45 = *(a1 + 16);
  v34[1] = sub_1E5BF6874();
  sub_1E5BF6874();
  v37 = sub_1E5BF6BD4();
  v42 = *(v37 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v34[0] = v34 - v8;
  v41 = sub_1E5BF66E4();
  v43 = *(v41 - 8);
  v9 = *(v43 + 64);
  v10 = MEMORY[0x1EEE9AC00](v41);
  v36 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = v34 - v12;
  v47 = v45;
  v48 = v46;
  v14 = *(a1 + 56);
  v49 = *(a1 + 48);
  v13 = v49;
  v50 = v14;
  v16 = *(a1 + 64);
  v15 = *(a1 + 72);
  v51 = v16;
  v52 = v15;
  v53 = v3;
  v61 = v16;
  v62 = v15;
  WitnessTable = swift_getWitnessTable();
  v59 = v14;
  v60 = v13;
  v18 = swift_getWitnessTable();
  v57 = WitnessTable;
  v58 = v18;
  v19 = swift_getWitnessTable();
  sub_1E5BF6BC4();
  v20 = v38;
  v21 = v35;
  (*(v38 + 16))(v35, v3, a1);
  v22 = (*(v20 + 80) + 80) & ~*(v20 + 80);
  v23 = swift_allocObject();
  v24 = v46;
  *(v23 + 16) = v45;
  *(v23 + 32) = v24;
  *(v23 + 48) = v13;
  *(v23 + 56) = v14;
  *(v23 + 64) = v16;
  *(v23 + 72) = v15;
  (*(v20 + 32))(v23 + v22, v21, a1);
  v56 = v19;
  v25 = v37;
  v26 = swift_getWitnessTable();
  v27 = v36;
  v28 = v34[0];
  sub_1E5BF6B44();

  (*(v42 + 8))(v28, v25);
  v54 = v26;
  v55 = MEMORY[0x1E69805D0];
  v29 = v41;
  v30 = swift_getWitnessTable();
  v31 = v39;
  sub_1E5B64D48(v27, v29, v30);
  v32 = *(v43 + 8);
  v32(v27, v29);
  sub_1E5B64D48(v31, v29, v30);
  return (v32)(v31, v29);
}

uint64_t sub_1E5B9E29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v153 = a8;
  v154 = a7;
  v152 = a1;
  v151 = a9;
  v133 = *(a2 - 8);
  v15 = *(v133 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v132 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v124 = &v123 - v19;
  v130 = *(v20 - 8);
  v21 = *(v130 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v129 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v123 - v24;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  v25 = *(*(v135 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v135);
  v134 = (&v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v131 = &v123 - v28;
  v29 = sub_1E5BF6874();
  v138 = *(v29 - 8);
  v30 = *(v138 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v137 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v136 = &v123 - v34;
  v140 = *(a5 - 8);
  v35 = *(v140 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v139 = &v123 - v40;
  v127 = *(a4 - 8);
  v41 = *(v127 + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v126 = &v123 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v125 = &v123 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v123 - v47;
  v49 = sub_1E5BF6874();
  v143 = *(v49 - 8);
  v50 = *(v143 + 64);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v142 = &v123 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v141 = &v123 - v53;
  v147 = v54;
  v149 = v29;
  v148 = sub_1E5BF6874();
  v146 = *(v148 - 8);
  v55 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v145 = &v123 - v56;
  v172 = a2;
  v173 = a3;
  v144 = a4;
  v174 = a4;
  v175 = a5;
  v155 = a6;
  v176 = a6;
  v177 = v154;
  v178 = v153;
  v179 = a10;
  v150 = a10;
  started = type metadata accessor for DynamicStartWorkoutView();
  sub_1E5B9D8F0();
  swift_getKeyPath();
  sub_1E5BF6E34();

  if (v173)
  {

    sub_1E5B9D8F0();
    swift_getKeyPath();
    sub_1E5BF6E34();

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v58 = *v48;
      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F860, &qword_1E5BFE128) + 48);
      v60 = sub_1E5BF6464();
      (*(*(v60 - 8) + 8))(&v48[v59], v60);
      v61 = v147;
      v62 = v145;
      v63 = v141;
      if ((v58 & 1) == 0)
      {
        sub_1E5B9DA7C(started);
        v65 = v64;
        sub_1E5B9D8F0();
        swift_getKeyPath();
        sub_1E5BF6E34();

        v66 = *(v65 + 80);
        v67 = *(v65 + 88);
        v172 = v156;
        v173 = v157;
        v68 = v126;
        v66(&v172);

        v69 = v125;
        v70 = v144;
        v71 = v153;
        sub_1E5B64D48(v68, v144, v153);
        v72 = *(v127 + 8);
        v72(v68, v70);
        sub_1E5B64D48(v69, v70, v71);
        v73 = v150;
        sub_1E5BE14D8(v68, v70);
        v72(v68, v70);
        v72(v69, v70);
LABEL_11:
        v160 = v71;
        v161 = v73;
        WitnessTable = swift_getWitnessTable();
        v95 = v142;
        sub_1E5B64D48(v63, v61, WitnessTable);
        v96 = v154;
        v158 = v154;
        v159 = v155;
        swift_getWitnessTable();
        sub_1E5BE14D8(v95, v61);
        v97 = *(v143 + 8);
        v97(v95, v61);
        v98 = v63;
        v99 = v61;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1E5B5F804(v48, &qword_1ED03F2A8, &unk_1E5BFBDF0);
      v61 = v147;
      v62 = v145;
      v63 = v141;
    }

    v89 = sub_1E5B9DB8C(started);
    v89();

    v90 = v139;
    v73 = v150;
    sub_1E5B64D48(v38, a5, v150);
    v91 = *(v140 + 8);
    v91(v38, a5);
    sub_1E5B64D48(v90, a5, v73);
    v92 = a5;
    v93 = a5;
    v71 = v153;
    sub_1E5BE15D0(v38, v144, v92);
    v91(v38, v93);
    v91(v90, v93);
    goto LABEL_11;
  }

  v74 = v132;
  v75 = v133;
  v144 = a3;
  v76 = a2;
  sub_1E5B9D8F0();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v77 = v172;
  sub_1E5B9D8F0();
  swift_getKeyPath();
  v78 = v131;
  sub_1E5BF6E34();

  v79 = v134;
  sub_1E5B9F578(v78, v134);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v83 = 0;
    v85 = 0;
    v88 = 1;
    v81 = v149;
    v62 = v145;
    v82 = v76;
  }

  else
  {
    v81 = v149;
    v62 = v145;
    v82 = a2;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v143 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
        v83 = *v79 | (*(v79 + 4) << 32);
        v84 = v79;
        v85 = *(v79 + 5);
        v86 = sub_1E5BF6464();
        v87 = v84 + v143;
        v82 = v76;
        (*(*(v86 - 8) + 8))(v87, v86);
        v88 = 0;
      }

      else
      {
        sub_1E5B5F804(v79, &qword_1ED03E260, &qword_1E5BF9190);
        v83 = 0;
        v85 = 0;
        v88 = 1;
      }
    }

    else
    {
      v88 = 0;
      v83 = *v79 | (*(v79 + 4) << 32);
      v85 = *(v79 + 5);
    }
  }

  v100 = v144;
  if (v77 == 1 || !(v88 & 1 | v85 & (v83 == 0)))
  {
    v109 = sub_1E5B9D95C(started);
    v110 = v129;
    v109();

    v111 = v128;
    v112 = v154;
    sub_1E5B64D48(v110, v100, v154);
    v113 = *(v130 + 8);
    v113(v110, v100);
    sub_1E5B64D48(v111, v100, v112);
    v105 = v136;
    v96 = v112;
    v103 = v155;
    sub_1E5BE14D8(v110, v100);
    v113(v110, v100);
    v113(v111, v100);
  }

  else
  {
    v101 = sub_1E5B9DB3C(started);
    v101();

    v102 = v124;
    v103 = v155;
    sub_1E5B64D48(v74, v82, v155);
    v104 = *(v75 + 8);
    v104(v74, v82);
    sub_1E5B64D48(v102, v82, v103);
    v105 = v136;
    v106 = v100;
    v107 = v154;
    sub_1E5BE15D0(v74, v106, v82);
    v104(v74, v82);
    v108 = v82;
    v96 = v107;
    v104(v102, v108);
  }

  v170 = v96;
  v171 = v103;
  v114 = swift_getWitnessTable();
  v115 = v137;
  sub_1E5B64D48(v105, v81, v114);
  v71 = v153;
  v116 = v105;
  v73 = v150;
  v168 = v153;
  v169 = v150;
  v117 = v147;
  swift_getWitnessTable();
  sub_1E5BE15D0(v115, v117, v81);
  v97 = *(v138 + 8);
  v97(v115, v81);
  v98 = v116;
  v99 = v81;
LABEL_20:
  v97(v98, v99);
  v166 = v71;
  v167 = v73;
  v118 = swift_getWitnessTable();
  v164 = v96;
  v165 = v155;
  v119 = swift_getWitnessTable();
  v162 = v118;
  v163 = v119;
  v120 = v148;
  v121 = swift_getWitnessTable();
  sub_1E5B64D48(v62, v120, v121);
  return (*(v146 + 8))(v62, v120);
}

uint64_t sub_1E5B9F1F0()
{
  type metadata accessor for DynamicStartWorkoutView();
  sub_1E5B9D8F0();
  sub_1E5BF6E44();
}

uint64_t sub_1E5B9F24C()
{
  v1 = v0[9];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v2 = *(*(type metadata accessor for DynamicStartWorkoutView() - 8) + 80);
  return sub_1E5B9F1F0();
}

uint64_t sub_1E5B9F314(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return swift_getOpaqueTypeConformance2();
}

void sub_1E5B9F364(void *a1)
{
  sub_1E5B9F4A4();
  if (v2 <= 0x3F)
  {
    v3 = a1[3];
    swift_getFunctionTypeMetadata0();
    sub_1E5BF6544();
    if (v4 <= 0x3F)
    {
      v5 = a1[4];
      swift_getFunctionTypeMetadata1();
      sub_1E5BF6544();
      if (v6 <= 0x3F)
      {
        v7 = a1[2];
        swift_getFunctionTypeMetadata0();
        sub_1E5BF6544();
        if (v8 <= 0x3F)
        {
          v9 = a1[5];
          swift_getFunctionTypeMetadata0();
          sub_1E5BF6544();
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E5B9F4A4()
{
  if (!qword_1EE2C63D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F858, qword_1E5BFE088);
    sub_1E5B9F514();
    v0 = sub_1E5BF6624();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C63D8);
    }
  }
}

unint64_t sub_1E5B9F514()
{
  result = qword_1EE2C6250;
  if (!qword_1EE2C6250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F858, qword_1E5BFE088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6250);
  }

  return result;
}

uint64_t sub_1E5B9F578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B9F5E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_1E5B9F620(void *a1)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  return v2(*a1, a1[1]);
}

uint64_t StackButtonEnvironment.init(resolveStackItem:resolveWorkoutDetail:requestAddStackItem:requestRemoveStackItem:presentToastConfirmation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t sub_1E5B9F67C()
{
  sub_1E5BA0F18(v0, &v8);
  if (!v12)
  {
    v5 = v8;
    v6 = v9;
    v7 = v10;
    v1 = 0;
    goto LABEL_5;
  }

  if (v12 == 1)
  {
    v5 = v8;
    v6 = v9;
    v7 = v10;
    v1 = 1;
LABEL_5:
    MEMORY[0x1E6937C10](v1);
    sub_1E5BF7244();
    return sub_1E5B6E230(&v5);
  }

  v2 = v11;
  v5 = v8;
  v6 = v9;
  v7 = v10;
  MEMORY[0x1E6937C10](2);
  sub_1E5BF7244();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1E6937C40](*&v3);
  return sub_1E5B6E230(&v5);
}

uint64_t sub_1E5B9F764()
{
  sub_1E5BF74B4();
  sub_1E5B9F67C();
  return sub_1E5BF7504();
}

uint64_t sub_1E5B9F7A8()
{
  sub_1E5BF74B4();
  sub_1E5B9F67C();
  return sub_1E5BF7504();
}

__n128 StartWorkoutButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t StartWorkoutButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, void *a2, void **a3, uint64_t a4)
{
  v212 = a3;
  v208 = a1;
  v7 = sub_1E5BF6464();
  v200 = *(v7 - 8);
  v201 = v7;
  v8 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v199 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E8F0, &qword_1E5BF9590);
  v209 = *(v10 - 8);
  v210 = v10;
  v11 = *(v209 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v205 = &v198 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v206 = &v198 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v204 = &v198 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v203 = &v198 - v18;
  started = type metadata accessor for StartWorkoutButtonAction();
  v20 = *(*(started - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](started);
  v207 = &v198 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v198 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v202 = *(v25 - 8);
  v26 = *(v202 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v198 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v198 = &v198 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v4[5];
  v228 = v4[4];
  v229 = v31;
  v230 = v4[6];
  v32 = v4[1];
  v224 = *v4;
  v225 = v32;
  v34 = v4[2];
  v33 = v4[3];
  v36 = &v198 - v35;
  v226 = v34;
  v227 = v33;
  v37 = a2[1];
  v211 = *a2;
  v38 = type metadata accessor for StartWorkoutButtonState(0);
  v39 = v38[13];
  v213 = a2;
  sub_1E5BA0E44(a2 + v39, v36);
  sub_1E5BA0EB4(a4, v24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1E5B5F804(v36, &qword_1ED03E950, &unk_1E5BF95F0);
      v151 = *v24;
      v152 = v24[1];
      v153 = v24[2];
      v154 = v24[3];
      v155 = v24[4];
      v156 = v24[5];
      v157 = v213;
      v122 = v213 + v38[11];
      sub_1E5B5F804(v122, &qword_1ED03E760, &qword_1E5BF9120);
      v158 = v38[7];
      v159 = sub_1E5BF6494();
      (*(*(v159 - 8) + 16))(v122, v157 + v158, v159);
      v160 = type metadata accessor for PlannedWorkoutConfirmation(0);
      *(v122 + v160[5]) = v156;
      *(v122 + v160[6]) = v155;
      v161 = (v122 + v160[7]);
      *v161 = v151;
      v161[1] = v152;
      v162 = (v122 + v160[8]);
      *v162 = v153;
      v162[1] = v154;
      (*(*(v160 - 1) + 56))(v122, 0, 1, v160);
      v126 = &qword_1ED03E758;
      v127 = &unk_1E5BFB490;
      goto LABEL_26;
    case 2u:
      v81 = v36;
      v82 = v24[1];
      v83 = v24[2];
      v208 = v24[3];
      v84 = v37;

      v85 = v38[11];
      v86 = v213;
      sub_1E5B5F804(v213 + v85, &qword_1ED03E760, &qword_1E5BF9120);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E758, &unk_1E5BFB490);
      (*(*(v87 - 8) + 56))(v86 + v85, 1, 1, v87);
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v207 = v88[12];
      v89 = v88[16];
      v90 = v88[20];
      v91 = v206;
      v205 = &v206[v88[24]];
      *&v214 = v211;
      *(&v214 + 1) = v84;

      sub_1E5BF7254();
      v222 = v83;
      v223 = 2;
      sub_1E5BA0F18(v221, &v214);
      sub_1E5BA0F50();
      sub_1E5BF7254();
      sub_1E5BA0FA4(v221);
      v92 = *MEMORY[0x1E6999B50];
      v93 = sub_1E5BF6E24();
      (*(*(v93 - 8) + 104))(&v91[v89], v92, v93);
      v94 = *MEMORY[0x1E6999B40];
      v95 = sub_1E5BF6E14();
      (*(*(v95 - 8) + 104))(&v91[v90], v94, v95);
      v213 = v81;
      v96 = v198;
      sub_1E5BA0E44(v81, v198);
      v97 = (*(v202 + 80) + 16) & ~*(v202 + 80);
      v98 = (v26 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
      v99 = (v98 + 119) & 0xFFFFFFFFFFFFFFF8;
      v100 = (v99 + 23) & 0xFFFFFFFFFFFFFFF8;
      v101 = swift_allocObject();
      sub_1E5BA30DC(v96, v101 + v97);
      v102 = (v101 + v98);
      v103 = v229;
      v102[4] = v228;
      v102[5] = v103;
      v102[6] = v230;
      v104 = v225;
      *v102 = v224;
      v102[1] = v104;
      v105 = v227;
      v102[2] = v226;
      v102[3] = v105;
      v106 = (v101 + v99);
      *v106 = v211;
      v106[1] = v84;
      *(v101 + v100) = v208;
      *(v101 + ((v100 + 15) & 0xFFFFFFFFFFFFFFF8)) = v83;
      v107 = v205;
      *v205 = &unk_1E5BFE1F0;
      *(v107 + 1) = v101;
      sub_1E5BA32A4(&v224, &v214);
      sub_1E5BF7094();
      v108 = v209;
      v109 = v91;
      v110 = v210;
      (*(v209 + 104))(v109, *MEMORY[0x1E6999AD8], v210);
      v111 = v212;
      v112 = *v212;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_1E5B7170C(0, v112[2] + 1, 1, v112);
      }

      v114 = v112[2];
      v113 = v112[3];
      if (v114 >= v113 >> 1)
      {
        v112 = sub_1E5B7170C(v113 > 1, v114 + 1, 1, v112);
      }

      sub_1E5B5F804(v213, &qword_1ED03E950, &unk_1E5BF95F0);
      v112[2] = v114 + 1;
      result = (*(v108 + 32))(v112 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v114, v206, v110);
      goto LABEL_36;
    case 3u:
      sub_1E5B5F804(v36, &qword_1ED03E950, &unk_1E5BF95F0);
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F868, &unk_1E5BFE1B0);
      v116 = *(v24 + *(v115 + 48));
      v117 = *(v24 + *(v115 + 64));
      v118 = v199;
      v119 = *(v200 + 32);
      v120 = v201;
      v119(v199, v24, v201);
      v121 = v213;
      v122 = v213 + v38[12];
      sub_1E5B5F804(v122, &qword_1ED03E740, &qword_1E5BF9100);
      v123 = v38[7];
      v124 = sub_1E5BF6494();
      (*(*(v124 - 8) + 16))(v122, v121 + v123, v124);
      v125 = type metadata accessor for FutureWorkoutConfirmation(0);
      *(v122 + v125[5]) = v117;
      *(v122 + v125[6]) = v116;
      v119((v122 + v125[7]), v118, v120);
      (*(*(v125 - 1) + 56))(v122, 0, 1, v125);
      v126 = &unk_1ED03E738;
      v127 = &unk_1E5BFE1C0;
      goto LABEL_26;
    case 4u:
      v66 = *v24;
      v67 = v36;
      v68 = v24[1];
      v69 = v38[12];
      v70 = v213;
      sub_1E5B5F804(v213 + v69, &qword_1ED03E740, &qword_1E5BF9100);
      v71 = &unk_1ED03E738;
      v72 = &unk_1E5BFE1C0;
      goto LABEL_29;
    case 5u:
      sub_1E5B5F804(v36, &qword_1ED03E950, &unk_1E5BF95F0);
      v163 = *v24;
      v164 = v24[1];
      v165 = v213;
      v122 = v213 + v38[10];
      sub_1E5B5F804(v122, &qword_1ED03E780, &qword_1E5BF9140);
      v166 = v38[7];
      v167 = sub_1E5BF6494();
      (*(*(v167 - 8) + 16))(v122, v165 + v166, v167);
      v168 = type metadata accessor for ResumeWorkoutConfirmation(0);
      *(v122 + *(v168 + 20)) = v164;
      *(v122 + *(v168 + 24)) = v163;
      (*(*(v168 - 8) + 56))(v122, 0, 1, v168);
      v126 = &qword_1ED03E778;
      v127 = &qword_1E5C00D60;
LABEL_26:
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(v126, v127);
      v79 = *(*(v78 - 8) + 56);
      v80 = v122;
      goto LABEL_27;
    case 6u:
      v66 = *v24;
      v67 = v36;
      v68 = v24[1];
      v69 = v38[10];
      v70 = v213;
      sub_1E5B5F804(v213 + v69, &qword_1ED03E780, &qword_1E5BF9140);
      v71 = &qword_1ED03E778;
      v72 = &qword_1E5C00D60;
LABEL_29:
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(v71, v72);
      (*(*(v170 - 8) + 56))(v70 + v69, 1, 1, v170);
      v218 = v228;
      v219 = v229;
      v220 = v230;
      v214 = v224;
      v215 = v225;
      v216 = v226;
      v217 = v227;
      v130 = v207;
      *v207 = v66;
      goto LABEL_30;
    case 7u:
      v67 = v36;
      v68 = *v24;
      v128 = v38[10];
      v70 = v213;
      sub_1E5B5F804(v213 + v128, &qword_1ED03E780, &qword_1E5BF9140);
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E778, &qword_1E5C00D60);
      (*(*(v129 - 8) + 56))(v70 + v128, 1, 1, v129);
      v218 = v228;
      v219 = v229;
      v220 = v230;
      v214 = v224;
      v215 = v225;
      v216 = v226;
      v217 = v227;
      v130 = v207;
      *v207 = 0;
LABEL_30:
      *(v130 + 8) = v68;
      swift_storeEnumTagMultiPayload();
      StartWorkoutButtonFeature.reduce(localState:sharedState:sideEffects:action:)(v208, v70, v212, v130);
      sub_1E5B9D664(v130);
      return sub_1E5B5F804(v67, &qword_1ED03E950, &unk_1E5BF95F0);
    case 8u:
      v171 = *v24;
      v207 = v24[1];
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v208 = v172[12];
      v173 = v172[16];
      v174 = v172[20];
      v175 = v205;
      v206 = &v205[v172[24]];
      *&v214 = v211;
      *(&v214 + 1) = v37;
      v176 = v37;
      v177 = v36;
      swift_bridgeObjectRetain_n();
      sub_1E5BF7254();
      v222 = v171;
      v223 = 2;
      sub_1E5BA0F18(v221, &v214);
      sub_1E5BA0F50();
      sub_1E5BF7254();
      sub_1E5BA0FA4(v221);
      v178 = *MEMORY[0x1E6999B50];
      v179 = sub_1E5BF6E24();
      (*(*(v179 - 8) + 104))(&v175[v173], v178, v179);
      v180 = *MEMORY[0x1E6999B40];
      v181 = sub_1E5BF6E14();
      (*(*(v181 - 8) + 104))(&v175[v174], v180, v181);
      v213 = v177;
      sub_1E5BA0E44(v177, v28);
      v182 = (*(v202 + 80) + 16) & ~*(v202 + 80);
      v183 = (v26 + v182 + 7) & 0xFFFFFFFFFFFFFFF8;
      v184 = (v183 + 119) & 0xFFFFFFFFFFFFFFF8;
      v185 = (v184 + 23) & 0xFFFFFFFFFFFFFFF8;
      v186 = swift_allocObject();
      sub_1E5BA30DC(v28, v186 + v182);
      v187 = (v186 + v183);
      v188 = v229;
      v187[4] = v228;
      v187[5] = v188;
      v187[6] = v230;
      v189 = v225;
      *v187 = v224;
      v187[1] = v189;
      v190 = v227;
      v187[2] = v226;
      v187[3] = v190;
      v191 = (v186 + v184);
      *v191 = v211;
      v191[1] = v176;
      v192 = v206;
      *(v186 + v185) = v207;
      *(v186 + ((v185 + 15) & 0xFFFFFFFFFFFFFFF8)) = v171;
      *v192 = &unk_1E5BFE1E0;
      *(v192 + 1) = v186;
      sub_1E5BA32A4(&v224, &v214);
      sub_1E5BF7094();
      v193 = v209;
      v194 = v175;
      v195 = v210;
      (*(v209 + 104))(v194, *MEMORY[0x1E6999AD8], v210);
      v111 = v212;
      v112 = *v212;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_1E5B7170C(0, v112[2] + 1, 1, v112);
      }

      v197 = v112[2];
      v196 = v112[3];
      if (v197 >= v196 >> 1)
      {
        v112 = sub_1E5B7170C(v196 > 1, v197 + 1, 1, v112);
      }

      sub_1E5B5F804(v213, &qword_1ED03E950, &unk_1E5BF95F0);
      v112[2] = v197 + 1;
      result = (*(v193 + 32))(v112 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v197, v205, v195);
      goto LABEL_36;
    case 9u:
    case 0xDu:
      sub_1E5B5F804(v36, &qword_1ED03E950, &unk_1E5BF95F0);
      v40 = v38[11];
      v41 = v213;
      sub_1E5B5F804(v213 + v40, &qword_1ED03E760, &qword_1E5BF9120);
      v42 = &qword_1ED03E758;
      v43 = &unk_1E5BFB490;
      goto LABEL_38;
    case 0xAu:
      v213 = v36;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v45 = v44[12];
      v46 = v44[16];
      v47 = v44[20];
      v48 = v203;
      v49 = &v203[v44[24]];
      v50 = v211;
      *&v214 = v211;
      *(&v214 + 1) = v37;
      swift_bridgeObjectRetain_n();
      sub_1E5BF7254();
      v223 = 0;
      sub_1E5BA0F18(v221, &v214);
      sub_1E5BA0F50();
      sub_1E5BF7254();
      sub_1E5BA0FA4(v221);
      v51 = *MEMORY[0x1E6999B50];
      v52 = sub_1E5BF6E24();
      (*(*(v52 - 8) + 104))(&v48[v46], v51, v52);
      v53 = *MEMORY[0x1E6999B40];
      v54 = sub_1E5BF6E14();
      (*(*(v54 - 8) + 104))(&v48[v47], v53, v54);
      v55 = swift_allocObject();
      v56 = v229;
      *(v55 + 80) = v228;
      *(v55 + 96) = v56;
      *(v55 + 112) = v230;
      v57 = v225;
      *(v55 + 16) = v224;
      *(v55 + 32) = v57;
      v58 = v227;
      *(v55 + 48) = v226;
      *(v55 + 64) = v58;
      *(v55 + 128) = v50;
      *(v55 + 136) = v37;
      *v49 = &unk_1E5BFE210;
      *(v49 + 1) = v55;
      sub_1E5BA32A4(&v224, &v214);
      sub_1E5BF7094();
      v60 = v209;
      v59 = v210;
      (*(v209 + 104))(v48, *MEMORY[0x1E6999AD8], v210);
      v61 = v212;
      v62 = *v212;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1E5B7170C(0, v62[2] + 1, 1, v62);
      }

      v64 = v62[2];
      v63 = v62[3];
      if (v64 >= v63 >> 1)
      {
        v62 = sub_1E5B7170C(v63 > 1, v64 + 1, 1, v62);
      }

      sub_1E5B5F804(v213, &qword_1ED03E950, &unk_1E5BF95F0);
      v62[2] = v64 + 1;
      result = (*(v60 + 32))(v62 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v64, v203, v59);
      *v61 = v62;
      return result;
    case 0xBu:
      sub_1E5B5F804(v36, &qword_1ED03E950, &unk_1E5BF95F0);
      v73 = v38[9];
      v74 = v213;
      sub_1E5B5F804(v213 + v73, &qword_1ED03E5C0, &unk_1E5BF8A20);
      v75 = v38[7];
      v76 = sub_1E5BF6494();
      v77 = *(v76 - 8);
      (*(v77 + 16))(v74 + v73, v74 + v75, v76);
      (*(v77 + 56))(v74 + v73, 0, 1, v76);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
      v79 = *(*(v78 - 8) + 56);
      v80 = v74 + v73;
LABEL_27:
      v169 = 0;
      goto LABEL_39;
    case 0xCu:
      sub_1E5B5F804(v36, &qword_1ED03E950, &unk_1E5BF95F0);
      v40 = v38[9];
      v41 = v213;
      sub_1E5B5F804(v213 + v40, &qword_1ED03E5C0, &unk_1E5BF8A20);
      v42 = &qword_1ED03E5E8;
      v43 = &unk_1E5BF9600;
      goto LABEL_38;
    case 0xEu:
      sub_1E5B5F804(v36, &qword_1ED03E950, &unk_1E5BF95F0);
      v40 = v38[12];
      v41 = v213;
      sub_1E5B5F804(v213 + v40, &qword_1ED03E740, &qword_1E5BF9100);
      v42 = &unk_1ED03E738;
      v43 = &unk_1E5BFE1C0;
      goto LABEL_38;
    case 0xFu:
      sub_1E5B5F804(v36, &qword_1ED03E950, &unk_1E5BF95F0);
      v40 = v38[10];
      v41 = v213;
      sub_1E5B5F804(v213 + v40, &qword_1ED03E780, &qword_1E5BF9140);
      v42 = &qword_1ED03E778;
      v43 = &qword_1E5C00D60;
LABEL_38:
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
      v79 = *(*(v78 - 8) + 56);
      v80 = v41 + v40;
      v169 = 1;
LABEL_39:
      result = v79(v80, v169, 1, v78);
      break;
    default:
      v213 = v36;
      v131 = *v24;
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v133 = v132[12];
      v134 = v132[16];
      v135 = v132[20];
      v136 = v204;
      v137 = &v204[v132[24]];
      v138 = v211;
      *&v214 = v211;
      *(&v214 + 1) = v37;
      swift_bridgeObjectRetain_n();
      sub_1E5BF7254();
      v223 = 1;
      sub_1E5BA0F18(v221, &v214);
      sub_1E5BA0F50();
      sub_1E5BF7254();
      sub_1E5BA0FA4(v221);
      v139 = *MEMORY[0x1E6999B50];
      v140 = sub_1E5BF6E24();
      (*(*(v140 - 8) + 104))(&v136[v134], v139, v140);
      v141 = *MEMORY[0x1E6999B40];
      v142 = sub_1E5BF6E14();
      (*(*(v142 - 8) + 104))(&v136[v135], v141, v142);
      v143 = swift_allocObject();
      v144 = v229;
      *(v143 + 80) = v228;
      *(v143 + 96) = v144;
      *(v143 + 112) = v230;
      v145 = v225;
      *(v143 + 16) = v224;
      *(v143 + 32) = v145;
      v146 = v227;
      *(v143 + 48) = v226;
      *(v143 + 64) = v146;
      *(v143 + 128) = v138;
      *(v143 + 136) = v37;
      *(v143 + 144) = v131;
      *v137 = &unk_1E5BFE200;
      *(v137 + 1) = v143;
      sub_1E5BA32A4(&v224, &v214);
      sub_1E5BF7094();
      v148 = v209;
      v147 = v210;
      (*(v209 + 104))(v136, *MEMORY[0x1E6999AD8], v210);
      v111 = v212;
      v112 = *v212;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_1E5B7170C(0, v112[2] + 1, 1, v112);
      }

      v150 = v112[2];
      v149 = v112[3];
      if (v150 >= v149 >> 1)
      {
        v112 = sub_1E5B7170C(v149 > 1, v150 + 1, 1, v112);
      }

      sub_1E5B5F804(v213, &qword_1ED03E950, &unk_1E5BF95F0);
      v112[2] = v150 + 1;
      result = (*(v148 + 32))(v112 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v150, v204, v147);
LABEL_36:
      *v111 = v112;
      break;
  }

  return result;
}

uint64_t sub_1E5BA0E44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BA0EB4(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWorkoutButtonAction();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

unint64_t sub_1E5BA0F50()
{
  result = qword_1ED03F870;
  if (!qword_1ED03F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F870);
  }

  return result;
}

uint64_t sub_1E5BA0FD4(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F888, &qword_1E5BFE3F8) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v8 = sub_1E5BF6464();
  *(v5 + 88) = v8;
  v9 = *(v8 - 8);
  *(v5 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  started = type metadata accessor for StartWorkoutButtonAction();
  *(v5 + 112) = started;
  v12 = *(*(started - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = sub_1E5BF7084();
  *(v5 + 152) = sub_1E5BF7074();
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a2 + 3);
  *(v5 + 160) = *(a2 + 2);
  *(v5 + 176) = v15;
  *(v5 + 192) = *(a2 + 4);
  v19 = (v13 + *v13);
  v16 = v13[1];
  v17 = swift_task_alloc();
  *(v5 + 208) = v17;
  *v17 = v5;
  v17[1] = sub_1E5BA11D0;

  return v19();
}

uint64_t sub_1E5BA11D0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v5 = v2[18];
    v6 = v2[19];
    v8 = sub_1E5BF7054();
    v2[39] = v8;
    v2[40] = v7;

    return MEMORY[0x1EEE6DFA0](sub_1E5BA1F00, v8, v7);
  }

  else
  {
    v15 = (v2[20] + *v2[20]);
    v9 = *(v2[20] + 4);
    v10 = swift_task_alloc();
    v2[28] = v10;
    *v10 = v4;
    v10[1] = sub_1E5BA13C8;
    v11 = v2[21];
    v12 = v2[8];
    v13 = v2[7];

    return v15(v13, v12);
  }
}

uint64_t sub_1E5BA13C8(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {

    a1 = 0.0;
  }

  *(v4 + 240) = a1;
  v13 = (*(v4 + 176) + **(v4 + 176));
  v7 = *(*(v4 + 176) + 4);
  v8 = swift_task_alloc();
  *(v4 + 248) = v8;
  *v8 = v6;
  v8[1] = sub_1E5BA1584;
  v9 = *(v4 + 184);
  v10 = *(v4 + 56);
  v11 = *(v4 + 64);

  return v13(v4 + 16, v10, v11);
}

uint64_t sub_1E5BA1584()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 248);
  v5 = *v1;

  v6 = v2[19];
  v7 = v2[18];
  if (v0)
  {

    v8 = sub_1E5BF7054();
    v10 = v9;
    v3[42] = v8;
    v3[43] = v9;
    v11 = sub_1E5BA21B0;
  }

  else
  {
    v8 = sub_1E5BF7054();
    v10 = v12;
    v3[32] = v8;
    v3[33] = v12;
    v11 = sub_1E5BA1710;
  }

  return MEMORY[0x1EEE6DFA0](v11, v8, v10);
}

uint64_t sub_1E5BA1710()
{
  v1 = v0[30];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[9];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v0[34] = v6;
  v0[35] = v8;
  *v2 = v5;
  v2[1] = v6;
  v2[2] = v7;
  v2[3] = v8;
  v2[4] = v1;
  v2[5] = v4;
  swift_storeEnumTagMultiPayload();
  v9 = *(MEMORY[0x1E6999AF0] + 4);

  v10 = swift_task_alloc();
  v0[36] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F890, &unk_1E5BFE400);
  *v10 = v0;
  v10[1] = sub_1E5BA1814;
  v12 = v0[17];
  v13 = v0[6];

  return MEMORY[0x1EEE01A40](v12, v11);
}

uint64_t sub_1E5BA1814()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 272);
  v5 = *(*v0 + 136);
  v9 = *v0;

  sub_1E5B9D664(v5);
  v6 = *(v1 + 264);
  v7 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1E5BA3C88, v7, v6);
}

uint64_t sub_1E5BA1998()
{
  v1 = v0[30];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  (*(v6 + 56))(v7, 0, 1, v5);
  (*(v6 + 32))(v4, v7, v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F868, &unk_1E5BFE1B0);
  v10 = *(v9 + 48);
  (*(v6 + 16))(v2, v4, v5);
  *(v2 + v10) = v1;
  *(v2 + *(v9 + 64)) = v8;
  swift_storeEnumTagMultiPayload();
  v11 = *(MEMORY[0x1E6999AF0] + 4);
  v12 = swift_task_alloc();
  v0[37] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F890, &unk_1E5BFE400);
  *v12 = v0;
  v12[1] = sub_1E5BA1B18;
  v14 = v0[16];
  v15 = v0[6];

  return MEMORY[0x1EEE01A40](v14, v13);
}

uint64_t sub_1E5BA1B18()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 128);
  v7 = *v0;

  sub_1E5B9D664(v3);
  v4 = *(v1 + 344);
  v5 = *(v1 + 336);

  return MEMORY[0x1EEE6DFA0](sub_1E5BA1C5C, v5, v4);
}

uint64_t sub_1E5BA1C5C()
{
  v1 = v0[19];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  (*(v3 + 8))(v2, v4);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v8 = v0[13];
  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E5BA1D1C()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 120);
  v7 = *v0;

  sub_1E5B9D664(v3);
  v4 = *(v1 + 344);
  v5 = *(v1 + 336);

  return MEMORY[0x1EEE6DFA0](sub_1E5BA1E60, v5, v4);
}

uint64_t sub_1E5BA1E60()
{
  v1 = v0[19];

  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E5BA1F00()
{
  v2 = v0[14];
  v1 = v0[15];
  swift_storeEnumTagMultiPayload();
  v3 = *(MEMORY[0x1E6999AF0] + 4);
  v4 = swift_task_alloc();
  v0[41] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F890, &unk_1E5BFE400);
  *v4 = v0;
  v4[1] = sub_1E5BA1FC0;
  v6 = v0[15];
  v7 = v0[6];

  return MEMORY[0x1EEE01A40](v6, v5);
}

uint64_t sub_1E5BA1FC0()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 120);
  v7 = *v0;

  sub_1E5B9D664(v3);
  v4 = *(v1 + 320);
  v5 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1E5BA2104, v5, v4);
}

uint64_t sub_1E5BA2104()
{
  v1 = v0[27];
  v2 = v0[19];

  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[13];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E5BA21B0()
{
  v8 = (v0[24] + *v0[24]);
  v1 = *(v0[24] + 4);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_1E5BA22A8;
  v3 = v0[25];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];

  return v8(v4, v5, v6);
}

uint64_t sub_1E5BA22A8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 336);
    v6 = *(v2 + 344);
    v7 = sub_1E5BA23CC;
  }

  else
  {
    v5 = *(v2 + 336);
    v6 = *(v2 + 344);
    v7 = sub_1E5BA1998;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5BA23CC()
{
  v1 = v0[29];
  v2 = v0[15];
  v3 = v0[10];
  (*(v0[12] + 56))(v3, 1, 1, v0[11]);
  sub_1E5B5F804(v3, &qword_1ED03F888, &qword_1E5BFE3F8);
  v4 = v0[14];
  v5 = v0[9];
  if (v1)
  {
    *v0[15] = 0;
    *(v2 + 8) = v5;
    swift_storeEnumTagMultiPayload();
    v6 = *(MEMORY[0x1E6999AF0] + 4);
    v7 = swift_task_alloc();
    v0[38] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F890, &unk_1E5BFE400);
    *v7 = v0;
    v9 = sub_1E5BA1D1C;
  }

  else
  {
    *v0[15] = v0[30];
    *(v2 + 8) = v5;
    swift_storeEnumTagMultiPayload();
    v10 = *(MEMORY[0x1E6999AF0] + 4);
    v7 = swift_task_alloc();
    v0[45] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F890, &unk_1E5BFE400);
    *v7 = v0;
    v9 = sub_1E5BA2564;
  }

  v7[1] = v9;
  v11 = v0[15];
  v12 = v0[6];

  return MEMORY[0x1EEE01A40](v11, v8);
}

uint64_t sub_1E5BA2564()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 120);
  v7 = *v0;

  sub_1E5B9D664(v3);
  v4 = *(v1 + 344);
  v5 = *(v1 + 336);

  return MEMORY[0x1EEE6DFA0](sub_1E5BA3C88, v5, v4);
}

uint64_t sub_1E5BA26A8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a1;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 16) = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  *(v7 + 64) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  sub_1E5BF7084();
  *(v7 + 80) = sub_1E5BF7074();
  v11 = sub_1E5BF7054();
  *(v7 + 88) = v11;
  *(v7 + 96) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E5BA2788, v11, v10);
}

uint64_t sub_1E5BA2788()
{
  v1 = v0[8];
  sub_1E5BA0E44(v0[2], v0[9]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v13 = v0[9];
      v5 = *(v13 + 8);
      v6 = *(v13 + 24);
      v7 = *(v13 + 32);
      v8 = *(v13 + 40);
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
      v15 = sub_1E5BF6464();
      (*(*(v15 - 8) + 8))(v13 + v14, v15);
    }

    else
    {
      v4 = v0[9];
      v5 = *(v4 + 8);
      v6 = *(v4 + 24);
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);
    }

    v0[14] = v6;
    v0[15] = v7;
    v0[13] = v5;
    sub_1E5BF70E4();
    v17 = v0[3];
    v18 = *(v17 + 104);
    v25 = (*(v17 + 96) + **(v17 + 96));
    v19 = *(*(v17 + 96) + 4);
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_1E5BA2A0C;
    v21.n128_u64[0] = v0[7];
    v22 = v0[5];
    v23 = v0[6];
    v24 = v0[4];

    return v25(v24, v22, v23, v8, v21);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = v0[9];
      v9 = v0[10];

      sub_1E5B5F804(v10, &qword_1ED03E950, &unk_1E5BF95F0);
    }

    else
    {
      v3 = v0[10];
    }

    v11 = v0[9];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1E5BA2A0C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v11 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1E5BA2BB0;
  }

  else
  {
    v8 = v2[14];
    v7 = v2[15];
    v9 = v2[13];

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1E5BA2B44;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E5BA2B44()
{
  v1 = v0[10];

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5BA2BB0()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E5BA2C40(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a1;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 16) = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  *(v7 + 64) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  sub_1E5BF7084();
  *(v7 + 80) = sub_1E5BF7074();
  v11 = sub_1E5BF7054();
  *(v7 + 88) = v11;
  *(v7 + 96) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E5BA2D20, v11, v10);
}

uint64_t sub_1E5BA2D20()
{
  v1 = v0[8];
  sub_1E5BA0E44(v0[2], v0[9]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v13 = v0[9];
      v5 = *(v13 + 8);
      v6 = *(v13 + 24);
      v7 = *(v13 + 32);
      v8 = *(v13 + 40);
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
      v15 = sub_1E5BF6464();
      (*(*(v15 - 8) + 8))(v13 + v14, v15);
    }

    else
    {
      v4 = v0[9];
      v5 = *(v4 + 8);
      v6 = *(v4 + 24);
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);
    }

    v0[14] = v6;
    v0[15] = v7;
    v0[13] = v5;
    sub_1E5BF70E4();
    v17 = v0[3];
    v18 = *(v17 + 88);
    v25 = (*(v17 + 80) + **(v17 + 80));
    v19 = *(*(v17 + 80) + 4);
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_1E5BA2FA4;
    v21.n128_u64[0] = v0[7];
    v22 = v0[5];
    v23 = v0[6];
    v24 = v0[4];

    return v25(v24, v22, v23, v8, v21);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = v0[9];
      v9 = v0[10];

      sub_1E5B5F804(v10, &qword_1ED03E950, &unk_1E5BF95F0);
    }

    else
    {
      v3 = v0[10];
    }

    v11 = v0[9];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1E5BA2FA4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v11 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1E5BA3C84;
  }

  else
  {
    v8 = v2[14];
    v7 = v2[15];
    v9 = v2[13];

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1E5BA3C8C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E5BA30DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BA314C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 119) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1E5B6E314;

  return sub_1E5BA2C40(v13, a1, v1 + v5, v1 + v6, v10, v11, v12);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v13 = *(v4 + 1);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v4 + 1);

      v9 = *(v4 + 3);

      v10 = *(v4 + 4);

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
      v12 = sub_1E5BF6464();
      (*(*(v12 - 8) + 8))(&v4[v11], v12);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    v6 = *(v4 + 1);

    v7 = *(v4 + 3);
  }

  v14 = *(v4 + 4);

LABEL_8:
  v15 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 119) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v0 + v15);
  v18 = *(v0 + v15 + 8);

  v19 = v17[3];

  v20 = v17[5];

  v21 = v17[7];

  v22 = v17[9];

  v23 = v17[11];

  v24 = v17[13];

  v25 = *(v0 + v16 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5BA34AC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 119) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1E5B6D9A0;

  return sub_1E5BA26A8(v13, a1, v1 + v5, v1 + v6, v10, v11, v12);
}

uint64_t sub_1E5BA3604(uint64_t a1)
{
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5B6E314;

  return sub_1E5BA0FD4(a1, (v1 + 16), v4, v5, v6);
}

uint64_t objectdestroy_7Tm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  return swift_deallocObject();
}

uint64_t sub_1E5BA373C(uint64_t a1)
{
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5B6F7C4(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E5BA38C0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1E5BA392C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1E5BA3974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}