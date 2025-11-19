uint64_t sub_19086C040(int a1, id a2)
{
  if ([a2 hasDisplayName])
  {
    v3 = [a2 displayName];
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = [a2 name];
  if (v3)
  {
LABEL_5:
    v4 = v3;
    sub_190D56F10();
  }

LABEL_6:
  sub_19081E484();
  v6 = sub_190D555F0();
  MEMORY[0x1EEE9AC00](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B90);
  sub_19086C584();
  return sub_190D562C0();
}

uint64_t sub_19086C1AC(uint64_t a1, void *a2)
{
  sub_19086E4D0(a2);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54BA0);
  sub_190233640(&qword_1EAD54BC8, &qword_1EAD54BC0);
  sub_19086C608();
  return sub_190D56280();
}

uint64_t sub_19086C2AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[2];
    v5 = *a1;
    v6 = sub_190D52690();
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v3;

  return sub_190D52690();
}

uint64_t sub_19086C318@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B60);
  v6 = a1 + *(v5 + 36);
  strcpy(v6, "Conversation");
  v6[13] = 0;
  *(v6 + 7) = -5120;
  v7 = (a1 + *(v5 + 44));
  *v7 = sub_19086C458;
  v7[1] = v4;
  sub_190D52690();
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B68);
  sub_19086C468();
  sub_190D554D0();
}

unint64_t sub_19086C468()
{
  result = qword_1EAD54B70;
  if (!qword_1EAD54B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54B68);
    sub_19086C4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54B70);
  }

  return result;
}

unint64_t sub_19086C4EC()
{
  result = qword_1EAD54B78;
  if (!qword_1EAD54B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54B80);
    sub_19086C584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54B78);
  }

  return result;
}

unint64_t sub_19086C584()
{
  result = qword_1EAD54B88;
  if (!qword_1EAD54B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54B90);
    sub_19086C608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54B88);
  }

  return result;
}

unint64_t sub_19086C608()
{
  result = qword_1EAD54B98;
  if (!qword_1EAD54B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54BA0);
    sub_19086C68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54B98);
  }

  return result;
}

unint64_t sub_19086C68C()
{
  result = qword_1EAD54BA8;
  if (!qword_1EAD54BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54BA8);
  }

  return result;
}

uint64_t sub_19086C6E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  sub_190D52690();
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_19082DBB4(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_19082DBB4((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x193AEDDC0](*(v13 + 16) & 0x3FLL) > v11)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v3;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = sub_190D52540();

        *v3 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return sub_190D524F0();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_19086C9EC(sub_19086CB7C);
}

uint64_t sub_19086C86C(uint64_t a1)
{
  v2 = v1;
  v6 = v1[1];
  v4 = v1 + 1;
  v5 = v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if ((result & 1) == 0)
  {
    result = sub_19082DCE0(0, *(v5 + 16) + 1, 1);
    v5 = *v4;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_19082DCE0((v8 > 1), v9 + 1, 1);
    v5 = *v4;
  }

  *(v5 + 16) = v9 + 1;
  *(v5 + 8 * v9 + 32) = a1;
  v2[1] = v5;
  v10 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (MEMORY[0x193AEDDC0](*(v10 + 16) & 0x3FLL) > v9)
    {
      result = swift_isUniquelyReferenced_native();
      v11 = *v2;
      if ((result & 1) == 0)
      {
        if (!v11)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v12 = sub_190D52540();

        *v2 = v12;
        v11 = v12;
      }

      if (v11)
      {
        return sub_190D524F0();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v9 < 0xF)
  {
    return result;
  }

  return sub_19086C9EC(sub_19086CCAC);
}

uint64_t sub_19086C9EC(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  v6 = *(v5 + 16);
  if (v4 || v6 >= 0x10)
  {
    v8 = MEMORY[0x193AEDDE0](v6);
    if (v4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    v7 = sub_19086CA9C(v5, v9, 0, v4, a1);
  }

  else
  {
    v7 = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_19086CA9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x193AEDDE0](v8);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x193AEDDF0](v10, a4);
    sub_19086CB24(a1, v12 + 16, v12 + 32, a5);
    return v12;
  }

  return result;
}

uint64_t sub_19086CB7C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        sub_190D58870();
        sub_190D52690();
        sub_190D56FC0();
        result = sub_190D588C0();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v7 = sub_190D524E0();

        if (v7)
        {
          while (1)
          {
            sub_190D52520();
          }
        }

        result = sub_190D52510();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19086CCAC(uint64_t result, uint64_t a2, void *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 8 * v6);
        sub_190D58870();
        MEMORY[0x193AF4110](v7);
        result = sub_190D588C0();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_190D524E0())
        {
          while (1)
          {
            sub_190D52520();
          }
        }

        result = sub_190D52510();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19086CDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_190D58870();
  sub_190D56FC0();
  result = sub_190D588C0();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_190D524E0();
    result = sub_190D52500();
    if ((v10 & 1) == 0)
    {
      v11 = (a3 + 16 * result);
      if (*v11 != a1 || v11[1] != a2)
      {
        while (1)
        {
          v13 = result;
          if (sub_190D58760())
          {
            break;
          }

          sub_190D52520();
          result = sub_190D52500();
          if ((v14 & 1) == 0)
          {
            v15 = (a3 + 16 * result);
            if (*v15 != a1 || v15[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v13;
      }
    }
  }

  return result;
}

uint64_t sub_19086CF00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_190D58870();
  MEMORY[0x193AF4110](a1);
  result = sub_190D588C0();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_190D524E0();
    result = sub_190D52500();
    if ((v8 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      do
      {
        sub_190D52520();
        result = sub_190D52500();
      }

      while ((v9 & 1) == 0 && *(a2 + 8 * result) != a1);
    }
  }

  return result;
}

uint64_t sub_19086D014(uint64_t result, char a2, void (*a3)(void), void *(*a4)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  if (result < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = v4;
  v9 = result;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if (isUniquelyReferenced_nonNull_native && v9 <= *(v11 + 24) >> 1)
  {
    v14 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    a3();
    v11 = *v10;
    v14 = *v7;
    if (*v7)
    {
LABEL_5:
      swift_beginAccess();
      v15 = *(v14 + 16) & 0x3FLL;
      v16 = MEMORY[0x193AEDDE0](v9);
      if (a2)
      {
        v17 = v16;
        if (v15 >= v16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v19 = v16;
        swift_beginAccess();
        v16 = v19;
        v17 = *(v14 + 24) & 0x3FLL;
        if (v15 >= v16)
        {
          goto LABEL_17;
        }
      }

LABEL_13:
      if (v17 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      goto LABEL_27;
    }
  }

  v16 = MEMORY[0x193AEDDE0](v9);
  v15 = 0;
  if (a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v16 > 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (v17 <= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v17;
  }

  result = MEMORY[0x193AEDDE0](*(v11 + 16));
  if (result <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = result;
  }

  if (v21 < v15)
  {
    if (v17 <= v21)
    {
      v18 = v21;
    }

    else
    {
      v18 = v17;
    }

LABEL_27:
    v22 = sub_19086CA9C(v11, v18, 0, v17, a4);

    *v7 = v22;
    return result;
  }

  if (!v14 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v23 = *v7;
    if (*v7)
    {
      goto LABEL_32;
    }

LABEL_36:
    if (!v17)
    {
      return result;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (!*v7)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  v23 = sub_190D52540();

  *v7 = v23;
  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_32:
  result = swift_beginAccess();
  if ((*(v23 + 24) & 0x3FLL) != v17)
  {
    *(v23 + 24) = *(v23 + 24) & 0xFFFFFFFFFFFFFFC0 | v17 & 0x3F;
  }

  return result;
}

char *sub_19086D20C(char *result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v25 = (MEMORY[0x1E69E7CC0] + 32);
LABEL_4:
  v6 = *(v1 + 2);
  if (v3 == v6)
  {
    goto LABEL_38;
  }

  if (v3 >= v6)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  while (1)
  {
    v7 = *&v4[8 * v3];
    sub_190D52690();

    if (!v7)
    {
      goto LABEL_9;
    }

    if (v7 >> 62)
    {
      break;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_9:
    ++v3;
    v8 = *(v1 + 2);
    if (v3 == v8)
    {
      goto LABEL_38;
    }

    if (v3 >= v8)
    {
      goto LABEL_42;
    }
  }

  result = sub_190D581C0();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_13:
  v9 = 0;
  ++v3;
  if ((v7 & 0xC000000000000001) == 0)
  {
    while (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      result = *(v7 + 8 * v9 + 32);
      v10 = __OFADD__(v9++, 1);
      if (v10)
      {
        goto LABEL_37;
      }

LABEL_20:
      if (!v2)
      {
        v11 = v5[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_46;
        }

        v24 = result;
        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
        v14 = swift_allocObject();
        v15 = _swift_stdlib_malloc_size(v14);
        v16 = v15 - 32;
        if (v15 < 32)
        {
          v16 = v15 - 25;
        }

        v17 = v16 >> 3;
        v14[2] = v13;
        v14[3] = (2 * (v16 >> 3)) | 1;
        v18 = (v14 + 4);
        v19 = v5[3] >> 1;
        if (v5[2])
        {
          v20 = v5 + 4;
          if (v14 != v5 || v18 >= v20 + 8 * v19)
          {
            memmove(v14 + 4, v20, 8 * v19);
          }

          v5[2] = 0;
        }

        v25 = (v18 + 8 * v19);
        v2 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;

        v5 = v14;
        result = v24;
      }

      v10 = __OFSUB__(v2--, 1);
      if (v10)
      {
        goto LABEL_45;
      }

      *v25++ = result;
      if (v7 >> 62)
      {
        result = sub_190D581C0();
        if (v9 == result)
        {
          goto LABEL_4;
        }
      }

      else
      {
        result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 == result)
        {
          goto LABEL_4;
        }
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        goto LABEL_35;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_44;
  }

LABEL_35:
  result = MEMORY[0x193AF3B90](v9, v7);
  v10 = __OFADD__(v9++, 1);
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_37:
  __break(1u);
LABEL_38:

  v21 = v5[3];
  if (v21 < 2)
  {
    return v5;
  }

  v22 = v21 >> 1;
  v10 = __OFSUB__(v22, v2);
  v23 = v22 - v2;
  if (!v10)
  {
    v5[2] = v23;
    return v5;
  }

LABEL_47:
  __break(1u);
  return result;
}

unint64_t sub_19086D4A8(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x193AF3B90](v4, v1);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_190D581C0();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54BE8);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_19086D700(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if (v2)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0] + 32;
    v7 = result + 32;
    while (1)
    {
      v8 = *(v7 + v5);
      if (!v4)
      {
        v9 = v3[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        v12[2] = v11;
        v12[3] = 2 * (v14 >> 4);
        v16 = (v12 + 4);
        v17 = v3[3] >> 1;
        v18 = 16 * v17;
        if (v3[2])
        {
          if (v12 != v3 || v16 >= &v3[v18 / 8 + 4])
          {
            memmove(v12 + 4, v3 + 4, v18);
          }

          v3[2] = 0;
        }

        v6 = v16 + v18;
        v4 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;

        v3 = v12;
      }

      v20 = __OFSUB__(v4--, 1);
      if (v20)
      {
        break;
      }

      *v6 = v5;
      *(v6 + 8) = v8;
      v6 += 16;
      if (v2 == ++v5)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v21 = v3[3];
  if (v21 < 2)
  {
    return v3;
  }

  v22 = v21 >> 1;
  v20 = __OFSUB__(v22, v4);
  v23 = v22 - v4;
  if (!v20)
  {
    v3[2] = v23;
    return v3;
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_19086D864(char *result)
{
  v1 = MEMORY[0x1E69E7CC0];
  v31 = *(result + 2);
  if (v31)
  {
    v2 = 0;
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0] + 32;
    v5 = result + 40;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v9 = *(v5 + 1);
      v10 = *(v5 + 1);
      v11 = *(v5 + 4);
      v32 = v10;
      if (v3)
      {
        v12 = v10;
        sub_190D52690();
        sub_190D52690();
        result = v9;
        v1 = v6;
        v13 = __OFSUB__(v3--, 1);
        if (v13)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v14 = v6[3];
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_30;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C08);
        v1 = swift_allocObject();
        v17 = (_swift_stdlib_malloc_size(v1) - 32) / 56;
        v1[2] = v16;
        v1[3] = 2 * v17;
        v18 = v1 + 4;
        v19 = v6[3] >> 1;
        v4 = &v1[7 * v19 + 4];
        v20 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
        if (v6[2])
        {
          v21 = v1 < v6 || v18 >= &v6[7 * v19 + 4];
          if (!v21 && v1 == v6)
          {
            v26 = v32;
            sub_190D52690();
            sub_190D52690();
            v27 = v9;
          }

          else
          {
            memmove(v18, v6 + 4, 56 * v19);
            sub_190D52690();
            v22 = v9;
            v23 = v32;
            sub_190D52690();
          }

          v6[2] = 0;
        }

        else
        {
          v24 = v32;
          sub_190D52690();
          sub_190D52690();
          v25 = v9;
        }

        v13 = __OFSUB__(v20, 1);
        v3 = v20 - 1;
        if (v13)
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }
      }

      *v4 = v2;
      *(v4 + 8) = v8;
      *(v4 + 16) = v7;
      *(v4 + 24) = v9;
      *(v4 + 32) = v32;
      *(v4 + 48) = v11;
      v4 += 56;
      v5 += 48;
      ++v2;
      v6 = v1;
      if (v31 == v2)
      {
        goto LABEL_25;
      }
    }
  }

  v3 = 0;
LABEL_25:
  v28 = v1[3];
  if (v28 >= 2)
  {
    v29 = v28 >> 1;
    v13 = __OFSUB__(v29, v3);
    v30 = v29 - v3;
    if (v13)
    {
      goto LABEL_31;
    }

    v1[2] = v30;
  }

  return v1;
}

id sub_19086DABC(void *a1)
{
  result = [a1 chat];
  if (result)
  {
    v2 = result;
    v3 = [result internalLastAddressedHandleAndSimIDForDebugMenu];

    if (v3)
    {
      v4 = sub_190D56D90();

      v5 = 1 << *(v4 + 32);
      v6 = -1;
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      v7 = v6 & *(v4 + 64);
      v8 = (v5 + 63) >> 6;
      result = sub_190D52690();
      for (i = 0; v7; result = )
      {
        v10 = i;
LABEL_11:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = (v10 << 10) | (16 * v11);
        v13 = (*(v4 + 48) + v12);
        v14 = (*(v4 + 56) + v12);
        v15 = *v14;
        v16 = v14[1];
        v17 = *v13;
        v18 = v13[1];
        swift_bridgeObjectRetain_n();
        sub_190D52690();
        MEMORY[0x193AF28B0](8250, 0xE200000000000000);
        MEMORY[0x193AF28B0](v15, v16);
        MEMORY[0x193AF28B0](10, 0xE100000000000000);
        MEMORY[0x193AF28B0](v17, v18);
      }

      while (1)
      {
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v10 >= v8)
        {

          return 0;
        }

        v7 = *(v4 + 64 + 8 * v10);
        ++i;
        if (v7)
        {
          i = v10;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_19086DC98(void *a1)
{
  v1 = [a1 chat];
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    goto LABEL_15;
  }

  v3 = v1;
  v4 = [v1 participants];

  sub_19086E9EC();
  v5 = sub_190D57180();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:

LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
    sub_190233640(&qword_1EAD46720, &unk_1EAD57920);
    v18 = sub_190D56DF0();

    return v18;
  }

  v6 = sub_190D581C0();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  result = sub_19082DBB4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AF3B90](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 description];
      v12 = sub_190D56F10();
      v14 = v13;

      v16 = *(v2 + 16);
      v15 = *(v2 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_19082DBB4((v15 > 1), v16 + 1, 1);
      }

      ++v8;
      *(v2 + 16) = v16 + 1;
      v17 = v2 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v6 != v8);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_19086DEB4(void *a1)
{
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isTranscriptBackgroundsEnabled];

  v4 = 0;
  if (!v3)
  {
    return v4;
  }

  v5 = [a1 chat];
  if (!v5)
  {
    v32 = 0u;
    v33 = 0u;
LABEL_11:
    sub_19021E7D8(&v32);
    v8 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [v5 valueForChatProperty_];

  if (v7)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v32 = v29;
  v33 = v30;
  if (!*(&v30 + 1))
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54BE0);
  if (swift_dynamicCast())
  {
    v8 = v29;
  }

  else
  {
    v8 = 0;
  }

LABEL_12:
  v9 = [a1 chat];
  if (v9 && (v10 = v9, v11 = [v9 transcriptBackgroundPath], v10, v11))
  {
    v12 = sub_190D56F10();
    v14 = v13;

    if (!v8)
    {
LABEL_15:
      v4 = 0x616C696176616E55;
LABEL_31:

      return v4;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  if (!v14)
  {
    v4 = 0x616C696176616E55;
    goto LABEL_31;
  }

  v15 = sub_19086B9C0(v8);

  v16 = v15[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v16 >= v15[3] >> 1)
  {
    v15 = sub_190835D54(isUniquelyReferenced_nonNull_native, v16 + 1, 1, v15);
  }

  sub_190CAAA40(0, 0, 1, 0x68746150656C6966, 0xE800000000000000, v12, v14);
  v18 = v15[2];
  if (!v18)
  {

    v21 = MEMORY[0x1E69E7CC0];
LABEL_30:
    *&v32 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
    sub_190233640(&qword_1EAD46720, &unk_1EAD57920);
    v4 = sub_190D56DF0();
    goto LABEL_31;
  }

  v31 = MEMORY[0x1E69E7CC0];
  result = sub_19082DBB4(0, v18, 0);
  v20 = 0;
  v21 = v31;
  v22 = v15 + 7;
  while (v20 < v15[2])
  {
    v23 = *(v22 - 2);
    v24 = *(v22 - 1);
    v25 = *v22;
    *&v32 = *(v22 - 3);
    *(&v32 + 1) = v23;
    swift_bridgeObjectRetain_n();
    sub_190D52690();
    MEMORY[0x193AF28B0](2618, 0xE200000000000000);
    MEMORY[0x193AF28B0](v24, v25);

    v26 = v32;
    v28 = *(v31 + 16);
    v27 = *(v31 + 24);
    if (v28 >= v27 >> 1)
    {
      result = sub_19082DBB4((v27 > 1), v28 + 1, 1);
    }

    ++v20;
    *(v31 + 16) = v28 + 1;
    *(v31 + 16 * v28 + 32) = v26;
    v22 += 4;
    if (v18 == v20)
    {

      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19086E2C8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_19086D014(v3, 0, sub_19082DBB4, sub_19086CB7C);
  sub_19082DD74(0, v3, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    v6 = v5 + 32 * v4;
    v8 = *v6;
    v7 = *(v6 + 8);
    v9 = *(v16 + 16);
    v15 = *(v6 + 16);
    if (v9)
    {
      break;
    }

LABEL_11:
    sub_190D52690();
    sub_190D52690();
    sub_19086C6E0(v8, v7);
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_19082DD74((v12 > 1), v13 + 1, 1);
    }

    ++v4;
    *(v2 + 16) = v13 + 1;
    *(v2 + 16 * v13 + 32) = v15;
    if (v4 == v3)
    {
      return 0;
    }
  }

  v10 = (v16 + 40);
  while (1)
  {
    v11 = *(v10 - 1) == v8 && *v10 == v7;
    if (v11 || (sub_190D58760() & 1) != 0)
    {
      break;
    }

    v10 += 2;
    if (!--v9)
    {
      goto LABEL_11;
    }
  }

  sub_190D52690();
  result = sub_190D52690();
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_19086E4D0(void *a1)
{
  v2 = 0x296C6C756E28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54BD0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000015;
  *(inited + 16) = xmmword_190DD86E0;
  *(inited + 40) = 0x8000000190E5F610;
  v4 = [a1 chat];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 debugDescription];

    v7 = sub_190D56F10();
    v9 = v8;
  }

  else
  {
    v9 = 0xE600000000000000;
    v7 = 0x296C6C756E28;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 64) = 1145656647;
  *(inited + 72) = 0xE400000000000000;
  v10 = [a1 chat];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 guid];

    v13 = sub_190D56F10();
    v15 = v14;
  }

  else
  {
    v13 = 0x296C6C756E28;
    v15 = 0xE600000000000000;
  }

  *(inited + 80) = v13;
  *(inited + 88) = v15;
  *(inited + 96) = 0x73444955475FLL;
  *(inited + 104) = 0xE600000000000000;
  v16 = [a1 chat];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 internalGUIDsForDebugMenu];

    if (v18)
    {
      v19 = sub_190D57410();

      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = sub_190A92948(*(v19 + 16), 0);
        v22 = sub_190C833B0(&v50, v21 + 4, v20, v19);
        sub_190219C78();
        if (v22 == v20)
        {
          goto LABEL_14;
        }

        __break(1u);
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v50 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  sub_190233640(&qword_1EAD46720, &unk_1EAD57920);
  v23 = sub_190D56DF0();
  v25 = v24;

  *(inited + 112) = v23;
  *(inited + 120) = v25;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x8000000190E5F630;
  v26 = [a1 chat];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 domainIdentifiers];

    v29 = [v28 description];
    v30 = sub_190D56F10();
    v32 = v31;
  }

  else
  {
    v32 = 0xE600000000000000;
    v30 = 0x296C6C756E28;
  }

  *(inited + 144) = v30;
  *(inited + 152) = v32;
  *(inited + 160) = 0x746E756F636341;
  *(inited + 168) = 0xE700000000000000;
  v33 = [a1 chat];
  if (v33 && (v34 = v33, v35 = [v33 account], v34, v35))
  {
    v36 = [v35 description];

    v37 = sub_190D56F10();
    v39 = v38;

    *(inited + 176) = v37;
    *(inited + 184) = v39;
  }

  else
  {
    *(inited + 176) = 0;
    *(inited + 184) = 0;
  }

  *(inited + 192) = 0xD000000000000016;
  *(inited + 200) = 0x8000000190E5F650;
  *(inited + 208) = sub_19086DABC(a1);
  *(inited + 216) = v40;
  strcpy((inited + 224), "Participants");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = sub_19086DC98(a1);
  *(inited + 248) = v41;
  strcpy((inited + 256), "WasDowngraded");
  *(inited + 270) = -4864;
  v42 = [a1 chat];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 downgradeStateForDebugMenu];

    v2 = sub_190D56F10();
    v46 = v45;
  }

  else
  {
    v46 = 0xE600000000000000;
  }

  *(inited + 272) = v2;
  *(inited + 280) = v46;
  *(inited + 288) = 0xD000000000000015;
  *(inited + 296) = 0x8000000190E5F670;
  *(inited + 304) = sub_19086DEB4(a1);
  *(inited + 312) = v47;
  v48 = sub_19086E2C8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54BD8);
  swift_arrayDestroy();
  return v48;
}

uint64_t sub_19086E9E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_19086E9EC()
{
  result = qword_1EAD44E70;
  if (!qword_1EAD44E70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD44E70);
  }

  return result;
}

uint64_t sub_19086EA38(void *a1)
{
  sub_190D582B0();

  strcpy(v33, "Display Name: ");
  HIBYTE(v33[1]) = -18;
  v2 = 0x8000000190E5F5F0;
  if (![a1 hasDisplayName])
  {
    v3 = [a1 name];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0xD000000000000014;
    goto LABEL_6;
  }

  v3 = [a1 displayName];
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = v3;
  v5 = sub_190D56F10();
  v2 = v6;

LABEL_6:
  MEMORY[0x193AF28B0](v5, v2);

  MEMORY[0x193AF28B0](2570, 0xE200000000000000);
  v8 = v33[0];
  v7 = v33[1];
  sub_19086E4D0(a1);
  v10 = v9;
  v12 = v11;
  v13 = v11 + 40;
  v14 = *(v11 + 16);
  result = sub_190D50920();
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
LABEL_7:
  if (v16 <= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v16;
  }

  v19 = 16 * v16;
  while (1)
  {
    if (v18 == v16)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
      sub_190233640(&qword_1EAD46720, &unk_1EAD57920);
      v28 = sub_190D56DF0();
      v30 = v29;

      v33[1] = v7;
      sub_190D52690();
      MEMORY[0x193AF28B0](v28, v30);

      return v8;
    }

    if (v16 >= *(v10 + 16))
    {
      break;
    }

    if (v16 >= *(v12 + 16))
    {
      goto LABEL_22;
    }

    v20 = v19 + 16;
    ++v16;
    v21 = *(v13 + v19);
    v19 += 16;
    if (v21)
    {
      v31 = v8;
      v32 = v7;
      v22 = *(v10 + v20 + 24);
      v23 = *(v13 + v20 - 24);
      v33[0] = *(v10 + v20 + 16);
      v33[1] = v22;
      swift_bridgeObjectRetain_n();
      sub_190D52690();
      MEMORY[0x193AF28B0](2618, 0xE200000000000000);
      MEMORY[0x193AF28B0](v23, v21);

      v24 = v33[0];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1908354D4(0, *(v17 + 16) + 1, 1, v17);
        v17 = result;
      }

      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1908354D4((v25 > 1), v26 + 1, 1, v17);
        v17 = result;
      }

      *(v17 + 16) = v26 + 1;
      v27 = v17 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v22;
      v8 = v31;
      v7 = v32;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_19086ED78(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_19086D014(v3, 0, sub_19082DCE0, sub_19086CCAC);
  result = sub_19082DF64(0, v3, 0);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 16 * v5);
    v8 = *v7;
    v9 = v7[1];
    v10 = (v15 + 32);
    v11 = *(v15 + 16);
    if (v11)
    {
      break;
    }

LABEL_6:
    result = sub_19086C86C(v8);
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_19082DF64((v13 > 1), v14 + 1, 1);
    }

    ++v5;
    *(v2 + 16) = v14 + 1;
    *(v2 + 8 * v14 + 32) = v9;
    if (v5 == v3)
    {
      return 0;
    }
  }

  while (1)
  {
    v12 = *v10++;
    if (v12 == v8)
    {
      break;
    }

    if (!--v11)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19086EEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[48] = a5;
  v6[49] = a6;
  v6[47] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v7 = sub_190D519C0();
  v6[55] = v7;
  v8 = *(v7 - 8);
  v6[56] = v8;
  v6[57] = *(v8 + 64);
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  sub_190D572A0();
  v6[62] = sub_190D57290();
  v10 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_19086F068, v10, v9);
}

void sub_19086F068()
{
  v67 = v0;
  v1 = *(v0 + 376);

  sub_190D52030();
  sub_190D51FE0();
  v2 = [v1 conversation];
  v3 = [v2 suggestedTranslationLanguageCodes];

  v4 = sub_190D57180();
  v62 = *(v4 + 16);
  if (v62)
  {
    v5 = 0;
    v6 = *(v0 + 448);
    v60 = (v6 + 56);
    v7 = (v6 + 48);
    v57 = v6;
    v8 = (v6 + 32);
    v9 = v4 + 40;
    v64 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v4 + 16))
    {
      v11 = *(v0 + 432);
      v10 = *(v0 + 440);
      swift_bridgeObjectRetain_n();
      sub_190D518B0();
      (*v60)(v11, 0, 1, v10);

      if ((*v7)(v11, 1, v10) == 1)
      {
        sub_1908701CC(*(v0 + 432));
      }

      else
      {
        v13 = *(v0 + 472);
        v12 = *(v0 + 480);
        v14 = *(v0 + 440);
        v15 = *v8;
        (*v8)(v12, *(v0 + 432), v14);
        v15(v13, v12, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_190835E88(0, v64[2] + 1, 1, v64);
        }

        v17 = v64[2];
        v16 = v64[3];
        if (v17 >= v16 >> 1)
        {
          v64 = sub_190835E88(v16 > 1, v17 + 1, 1, v64);
        }

        v18 = *(v0 + 472);
        v19 = *(v0 + 440);
        v64[2] = v17 + 1;
        v15(v64 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + v57[9] * v17, v18, v19);
      }

      ++v5;
      v9 += 16;
      if (v62 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v64 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v20 = *(v0 + 488);
  v22 = *(v0 + 440);
  v21 = *(v0 + 448);
  v24 = *(v0 + 416);
  v23 = *(v0 + 424);
  v26 = *(v0 + 400);
  v25 = *(v0 + 408);

  v58 = *(v21 + 16);
  v58(v23, v20, v22);
  v27 = *(v21 + 56);
  v27(v23, 0, 1, v22);
  v27(v24, 1, 1, v22);
  sub_190870234(v23, v25);
  sub_190870234(v24, v26);
  v28 = sub_190D51930();
  v66 = 0;
  type metadata accessor for CKLanguageSelectionViewModel();
  swift_allocObject();
  v61 = CKLanguageSelectionViewModel.init(excludedLocale:currentSelectedLocale:suggestedLanguages:preferredLanguages:mode:)(v25, v26, v64, v28, &v66);
  sub_1908701CC(v24);
  sub_1908701CC(v23);
  v29 = CKFrameworkBundle();
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = v29;
  v31 = *(v0 + 488);
  v63 = *(v0 + 464);
  v54 = *(v0 + 456);
  v65 = *(v0 + 448);
  v53 = *(v0 + 440);
  v32 = *(v0 + 392);
  v34 = *(v0 + 376);
  v33 = *(v0 + 384);
  v35 = sub_190D56ED0();
  v36 = sub_190D56ED0();
  v37 = [v30 localizedStringForKey:v35 value:0 table:v36];

  v38 = sub_190D56F10();
  v55 = v39;
  v56 = v38;

  v58(v63, v31, v53);
  v40 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v34;
  (*(v65 + 32))(v41 + v40, v63, v53);
  v42 = (v41 + ((v54 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = v33;
  v42[1] = v32;
  v59 = v34;
  sub_19029063C(v33);
  sub_190D50920();
  v43 = CKFrameworkBundle();
  *(v0 + 360) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C18);
  sub_190D55FC0();
  v44 = *(v0 + 328);
  v45 = *(v0 + 336);
  *(v0 + 368) = 0;
  sub_190D55FC0();
  *(v0 + 16) = v43;
  v46 = *(v0 + 344);
  *(v0 + 24) = v61;
  *(v0 + 32) = v56;
  *(v0 + 40) = v55;
  *(v0 + 48) = 1;
  *(v0 + 56) = sub_1908702A4;
  *(v0 + 64) = v41;
  *(v0 + 72) = v44;
  *(v0 + 80) = v45;
  *(v0 + 88) = v46;
  v47 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 48);
  v48 = *(v0 + 80);
  *(v0 + 152) = *(v0 + 64);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 120) = v47;
  *(v0 + 168) = v48;
  *(v0 + 184) = *(v0 + 96);
  v49 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C20));
  sub_190870348(v0 + 16, v0 + 192);
  v50 = sub_190D54B60();
  *(v0 + 312) = nullsub_10;
  *(v0 + 320) = 0;
  *(v0 + 280) = MEMORY[0x1E69E9820];
  *(v0 + 288) = 1107296256;
  *(v0 + 296) = sub_190840E6C;
  *(v0 + 304) = &block_descriptor_10;
  v51 = _Block_copy((v0 + 280));
  [v59 presentViewController:v50 animated:1 completion:v51];
  _Block_release(v51);

  sub_1908703A4(v0 + 16);
  (*(v65 + 8))(v31, v53);

  v52 = *(v0 + 8);

  v52();
}

id sub_19086F76C(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v35 = a3;
  v9 = sub_190D519C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = *a1;
  if (*a1 == 1)
  {
  }

  else
  {
    v34 = a5;
    v17 = sub_190D572E0();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    (*(v10 + 16))(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v9);
    sub_190D572A0();
    sub_190D50920();
    v18 = sub_190D57290();
    v19 = a2;
    v20 = a4;
    v21 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v18;
    v22[3] = v23;
    v22[4] = v16;
    v24 = v22 + v21;
    v25 = v20;
    a2 = v19;
    (*(v10 + 32))(v24, v12, v9);
    sub_1908590EC(0, 0, v15, &unk_190DD88A0, v22);

    if (v25)
    {
      v26 = sub_190D518C0();
      v28 = v27;
      if (v16)
      {
        v29 = v26;
        v30 = sub_190D518C0();
        v26 = v29;
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v25(v26, v28, v30, v32);
    }
  }

  return [a2 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_19086FA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_190D572A0();
  v5[4] = sub_190D57290();
  v7 = sub_190D57240();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19086FAFC, v7, v6);
}

uint64_t sub_19086FAFC()
{
  if (v0[2])
  {
    v1 = sub_190D518C0();
    v3 = v2;
    v4 = sub_1908354D4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1908354D4((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = v1;
    *(v7 + 5) = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v8 = sub_190D518C0();
  v10 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1908354D4(0, *(v4 + 2) + 1, 1, v4);
  }

  v12 = *(v4 + 2);
  v11 = *(v4 + 3);
  if (v12 >= v11 >> 1)
  {
    v4 = sub_1908354D4((v11 > 1), v12 + 1, 1, v4);
  }

  v0[7] = v4;
  *(v4 + 2) = v12 + 1;
  v13 = &v4[16 * v12];
  *(v13 + 4) = v8;
  *(v13 + 5) = v10;
  sub_190D52100();
  v0[8] = sub_190D520F0();
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_19086FCBC;

  return MEMORY[0x1EEE10B80](v4);
}

uint64_t sub_19086FCBC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_19086FE44;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_19086FDE0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_19086FDE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19086FE44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190870064(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_190221DA4;

  return sub_19086EEDC(a1, v4, v5, v6, v7, v8);
}

void sub_19087012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = sub_190D56ED0();
    if (a4)
    {
LABEL_3:
      v8 = sub_190D56ED0();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a5 + 16))(a5, v7);
}

uint64_t sub_1908701CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190870234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1908702A4(uint64_t *a1)
{
  v3 = *(sub_190D519C0() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_19086F76C(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1908703F8(uint64_t a1)
{
  v4 = *(sub_190D519C0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_190221DA4;

  return sub_19086FA64(a1, v6, v7, v8, v1 + v5);
}

id sub_1908704F0()
{
  result = [objc_allocWithZone(type metadata accessor for CKAppAudioController()) init];
  qword_1EAD45B88 = result;
  return result;
}

id CKAppAudioController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static CKAppAudioController.sharedInstance.getter()
{
  if (qword_1EAD45B80 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAD45B88;

  return v1;
}

void *sub_190870658()
{
  v1 = OBJC_IVAR____TtC7ChatKit20CKAppAudioController_audioController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190870704(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit20CKAppAudioController_audioController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_19087075C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit20CKAppAudioController_audioController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id CKAppAudioController.init()()
{
  *&v0[OBJC_IVAR____TtC7ChatKit20CKAppAudioController_audioController] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKAppAudioController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKAppAudioController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKAppAudioController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1908709C4()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = type metadata accessor for CKTranscriptNavigationBarContext();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_conversationProvider];
  *v11 = sub_190872720;
  v11[1] = v0;
  v12 = &v10[OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_conversationTitleProvider];
  *v12 = sub_190872728;
  v12[1] = v1;
  v13 = &v10[OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_navigationBarModeProvider];
  *v13 = sub_190872730;
  v13[1] = v2;
  v14 = &v10[OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_displayModeProvider];
  *v14 = sub_190872754;
  v14[1] = v3;
  v15 = &v10[OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_unifiedCallButtonViewProvider];
  *v15 = sub_190872778;
  v15[1] = v4;
  v16 = &v10[OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_chatBotPersistentMenuProvider];
  *v16 = sub_190872780;
  v16[1] = v5;
  v17 = &v10[OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_unreadCountProvider];
  *v17 = sub_190872788;
  v17[1] = v6;
  v18 = &v10[OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_navigationBarFlagsProvider];
  *v18 = sub_190872790;
  *(v18 + 1) = v7;
  v19 = &v10[OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_nicknameOracleProvider];
  *v19 = sub_190872798;
  v19[1] = v8;
  v21.receiver = v10;
  v21.super_class = v9;
  return objc_msgSendSuper2(&v21, sel_init);
}

id sub_190870C9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong conversation];

  return v2;
}

id sub_190870D10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_190870E0C();

    return v2;
  }

  else
  {
    v4 = [objc_opt_self() labelColor];
    v5 = type metadata accessor for ConversationTitle();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtC7ChatKit17ConversationTitle_title];
    *v7 = 0;
    v7[1] = 0xE000000000000000;
    v6[OBJC_IVAR____TtC7ChatKit17ConversationTitle_wantsChevron] = 1;
    *&v6[OBJC_IVAR____TtC7ChatKit17ConversationTitle_leadingIndicatorIcons] = MEMORY[0x1E69E7CC0];
    *&v6[OBJC_IVAR____TtC7ChatKit17ConversationTitle_color] = v4;
    v8.receiver = v6;
    v8.super_class = v5;
    return objc_msgSendSuper2(&v8, sel_init);
  }
}

id sub_190870E0C()
{
  v1 = v0;
  v2 = [v0 conversation];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if ([v2 isStewieConversation])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 isEmergencyTranscriptSharingConversation];
  }

  v5 = [v1 preferredNavigationBarTitleText];
  if (v5)
  {
    v6 = v5;
    v7 = sub_190D56F10();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [v1 allowsNavigationBarTitleInteraction];
  if (v4)
  {
    if (qword_1EAD51B20 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EAD9DD18;
  }

  else
  {
    if (qword_1EAD46878 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EAD9D830;
  }

  v12 = *v11;
  if (v9)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v15 = v12;
  v16 = sub_190872380(v3 == 0, v2);
  v17 = type metadata accessor for ConversationTitle();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC7ChatKit17ConversationTitle_title];
  *v19 = v13;
  v19[1] = v14;
  v18[OBJC_IVAR____TtC7ChatKit17ConversationTitle_wantsChevron] = v10;
  *&v18[OBJC_IVAR____TtC7ChatKit17ConversationTitle_leadingIndicatorIcons] = v16;
  *&v18[OBJC_IVAR____TtC7ChatKit17ConversationTitle_color] = v15;
  v23.receiver = v18;
  v23.super_class = v17;
  v20 = v15;
  v21 = objc_msgSendSuper2(&v23, sel_init);

  return v21;
}

id sub_190871034(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = [Strong *a2];

  return v5;
}

void *sub_1908710A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_190871104();

  return v2;
}

void *sub_190871104()
{
  v1 = [v0 conversation];
  v2 = [v1 isBusinessConversation];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [v0 conversation];
    v3 = [v4 isChatBot];
  }

  v5 = [v0 conversation];
  v6 = [v5 chat];

  if (v6)
  {
    v7 = [v6 isFiltered];

    if (v7 == 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = v3;
    }

    if (v8)
    {
      goto LABEL_9;
    }
  }

  else if (v3)
  {
LABEL_9:
    if (qword_1EAD46BA8 != -1)
    {
      swift_once();
    }

    v9 = sub_190D53040();
    __swift_project_value_buffer(v9, qword_1EAD9D8F8);
    v10 = sub_190D53020();
    v11 = sub_190D57680();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_25;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "[Call Button] Conversation is biz or junk chat, so no button wanted.";
LABEL_24:
    _os_log_impl(&dword_19020E000, v10, v11, v13, v12, 2u);
    MEMORY[0x193AF7A40](v12, -1, -1);
LABEL_25:

    return 0;
  }

  v14 = [v0 conversation];
  v15 = [v14 chat];

  if (!v15)
  {
LABEL_20:
    if (qword_1EAD46BA8 != -1)
    {
      swift_once();
    }

    v21 = sub_190D53040();
    __swift_project_value_buffer(v21, qword_1EAD9D8F8);
    v10 = sub_190D53020();
    v11 = sub_190D57680();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_25;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "[Call Button] Chat is comm-limited, so no button wanted.";
    goto LABEL_24;
  }

  if (![v15 allowedByScreenTime])
  {

    goto LABEL_20;
  }

  v16 = [v0 navBarFaceTimeCallButton];
  v17 = [v0 callStateResolver];
  v18 = v16;
  v19 = [v17 updateCallStateForCallButton_];

  if (v19)
  {
    if ([v19 shouldShowUnifiedCallButton])
    {

      return v18;
    }

    if (qword_1EAD46BA8 != -1)
    {
      swift_once();
    }

    v26 = sub_190D53040();
    __swift_project_value_buffer(v26, qword_1EAD9D8F8);
    v27 = sub_190D53020();
    v28 = sub_190D57680();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_19020E000, v27, v28, "[Call Button] Call state indicates that we should not show the call button.", v29, 2u);
      MEMORY[0x193AF7A40](v29, -1, -1);
    }
  }

  else
  {
    if (qword_1EAD46BA8 != -1)
    {
      swift_once();
    }

    v22 = sub_190D53040();
    __swift_project_value_buffer(v22, qword_1EAD9D8F8);
    v23 = sub_190D53020();
    v24 = sub_190D57680();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_19020E000, v23, v24, "[Call Button] Call resolver did not return an updated call state.", v25, 2u);
      MEMORY[0x193AF7A40](v25, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_190871594()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_1908715F8();

  return v2;
}

uint64_t sub_1908715F8()
{
  v1 = [v0 conversation];
  v2 = [v1 chat];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 persistentMenu];

    if (v4)
    {
      v5 = [v0 chatBotPersistentMenuManager];
      if (v5)
      {
        v6 = v5;
        v7 = sub_1908DA6E4(v4);

        return v7;
      }
    }
  }

  return 0;
}

id sub_1908716C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_19087173C();

  return v2;
}

id sub_19087173C()
{
  result = [v0 delegate];
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector_])
    {
      if ([v2 respondsToSelector_])
      {
        v3 = [v2 unreadCountForCurrentFilterModeForChatController_];
      }

      else
      {
        v3 = 0;
      }

      v4 = [v0 conversation];
      v5 = [v4 unreadCount];

      result = swift_unknownObjectRelease();
      if (__OFSUB__(v3, v5))
      {
        __break(1u);
      }

      else
      {
        return ((v3 - v5) & ~((v3 - v5) >> 63));
      }
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_190871828()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(type metadata accessor for CKTranscriptNavigationBarContextFlags()) init];
  }

  v1 = Strong;
  v2 = sub_19087189C();

  return v2;
}

_BYTE *sub_19087189C()
{
  v1 = [objc_allocWithZone(type metadata accessor for CKTranscriptNavigationBarContextFlags()) init];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass() != 0;
  v1[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_isNewCompose] = v2;
  v3 = [v0 allowsNavigationBarTitleInteraction];
  v1[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_isTitleViewInteractable] = v3;
  v4 = [v0 showingInStandAloneWindow];
  v1[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_isShownInStandaloneWindow] = v4;
  v5 = [v0 splitViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isCollapsed];
  }

  else
  {
    v7 = 1;
  }

  v1[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_isSplitViewCollapsed] = v7;
  return v1;
}

id sub_19087199C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_190871A24();

  return v2;
}

id sub_190871A24()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isNameAndPhotoC3Enabled];

  if (!v2)
  {
    if (qword_1EAD46BA8 != -1)
    {
      swift_once();
    }

    v17 = sub_190D53040();
    __swift_project_value_buffer(v17, qword_1EAD9D8F8);
    v13 = sub_190D53020();
    v14 = sub_190D57680();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_20;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Name and Photo feature flag is not enabled";
    goto LABEL_19;
  }

  v3 = [v0 conversation];
  v4 = [v3 recipientStrings];

  v5 = sub_190D57180();
  v6 = *(v5 + 16);

  if (!v6)
  {
    if (qword_1EAD46BA8 != -1)
    {
      swift_once();
    }

    v18 = sub_190D53040();
    __swift_project_value_buffer(v18, qword_1EAD9D8F8);
    v13 = sub_190D53020();
    v14 = sub_190D57680();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_20;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "No recipients provided for the avatar transition.";
    goto LABEL_19;
  }

  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 isSuspended];

  if (![v0 isViewLoaded])
  {
LABEL_7:
    if (qword_1EAD46BA8 != -1)
    {
      swift_once();
    }

    v12 = sub_190D53040();
    __swift_project_value_buffer(v12, qword_1EAD9D8F8);
    v13 = sub_190D53020();
    v14 = sub_190D576A0();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_20;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Trying to perform animation when view isn't in view hierarchy.";
LABEL_19:
    _os_log_impl(&dword_19020E000, v13, v14, v16, v15, 2u);
    MEMORY[0x193AF7A40](v15, -1, -1);
LABEL_20:

    return 0;
  }

  result = [v0 view];
  if (result)
  {
    v10 = result;
    v11 = [result window];

    if (!v11)
    {
      goto LABEL_7;
    }

    if (v8)
    {
      goto LABEL_7;
    }

    v19 = [v0 conversation];
    v20 = [v19 isGroupConversation];

    if (v20)
    {
      return 0;
    }

    v21 = [v0 conversation];
    v22 = [v21 recipientStrings];

    v23 = sub_190D57180();
    v24 = sub_190CAAE18(v23);

    v25 = objc_opt_self();
    v26 = [v25 sharedInstance];
    v27 = sub_190D57400();
    v13 = [v26 pendingNicknameForHandleIDs_];

    if (!v13)
    {

      if (qword_1EAD46BA8 != -1)
      {
        swift_once();
      }

      v38 = sub_190D53040();
      __swift_project_value_buffer(v38, qword_1EAD9D8F8);
      v13 = sub_190D53020();
      v14 = sub_190D57680();
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_20;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Not changing the state oracle, no pending nickname available.";
      goto LABEL_19;
    }

    v28 = [v25 sharedInstance];
    v29 = sub_190D57400();
    v30 = [v28 currentNicknameForHandleIDs_];

    if (v30 && ([v30 isUpdateFromNickname:v13 withOptions:38] & 1) == 0)
    {

      if (qword_1EAD46BA8 != -1)
      {
        swift_once();
      }

      v39 = sub_190D53040();
      __swift_project_value_buffer(v39, qword_1EAD9D8F8);
      v40 = sub_190D53020();
      v41 = sub_190D57680();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_19020E000, v40, v41, "Not creating the state oracle, pending nicknames have the same photo and wallpaper.", v42, 2u);
        MEMORY[0x193AF7A40](v42, -1, -1);
      }

      goto LABEL_20;
    }

    v31 = [v25 sharedInstance];
    v32 = [v0 conversation];
    v33 = [v32 recipientStrings];

    if (!v33)
    {
      sub_190D57180();
      v33 = sub_190D57160();
    }

    v34 = [v31 createSharedProfileStateOracleForHandles_];

    if (!v34)
    {

      if (qword_1EAD46BA8 != -1)
      {
        swift_once();
      }

      v43 = sub_190D53040();
      __swift_project_value_buffer(v43, qword_1EAD9D8F8);
      v44 = sub_190D53020();
      v45 = sub_190D57680();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_19020E000, v44, v45, "No nickname oracle created, returning nil.", v46, 2u);
        MEMORY[0x193AF7A40](v46, -1, -1);
      }

      return 0;
    }

    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v36[2] = v24;
    v36[3] = v34;
    v36[4] = v35;
    v37 = v34;
    return v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190872380(char a1, id a2)
{
  v14 = MEMORY[0x1E69E7CC0];
  if ((a1 & 1) != 0 && ([a2 isGroupConversation] & 1) == 0 && (v4 = objc_msgSend(a2, sel_chat)) != 0)
  {
    v5 = v4;
    v6 = [v4 allParticipantsBlocked];
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_opt_self() sharedFeatureFlags];
  v8 = [v7 isIntroductionsEnabled];

  if (v8)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    [objc_allocWithZone(CKTitleIcon) initWithTitleIconImageType_];
    MEMORY[0x193AF29E0]();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_190D571A0();
    }

    sub_190D571E0();
    v10 = v14;
  }

  if ([a2 shouldShowVerifiedCheckmark])
  {
    v11 = 1;
    if (a1)
    {
      goto LABEL_24;
    }

LABEL_22:
    if (([a2 isBusinessConversation] & 1) == 0 && !objc_msgSend(a2, sel_isChatBot))
    {
      return v10;
    }

    goto LABEL_24;
  }

  if ((IMIsEnrolledInContactKeyVerification() & 1) == 0)
  {
    v11 = 0;
    if (a1)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v11 = sub_190C68D4C();
  if ((a1 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  if (v11)
  {
    [objc_allocWithZone(CKTitleIcon) initWithTitleIconImageType_];
    MEMORY[0x193AF29E0]();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    return v14;
  }

  return v10;
}

uint64_t sub_1908725C0()
{
  if ([v0 isEditing])
  {
    return 4;
  }

  if ([v0 isEditingMessage])
  {
    return 7;
  }

  if ([v0 isShowingReactWithAStickerOverlay])
  {
    return 8;
  }

  if (CKIsRunningInMessagesTranscriptExtension())
  {
    return 5;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && ([v2 isModal] & 1) != 0)
  {
    return 2;
  }

  result = [v0 inlineReplyController];
  if (result)
  {
    v3 = 1;
  }

  else
  {
    result = [v0 chatBotPersistentMenuManager];
    if (!result)
    {
      return result;
    }

    v3 = 6;
  }

  return v3;
}

void sub_1908727A0(uint64_t a1, uint64_t a2, void *a3)
{
  v40[3] = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    v15 = [objc_opt_self() sharedInstance];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = [Strong conversation];

      v19 = [v18 recipientStrings];
      v20 = sub_190D57180();

      if (*(v20 + 16))
      {
        sub_190D52690();
      }
    }

    v30 = sub_190D56ED0();

    [v15 markTransitionAsObservedForHandleID:v30 isAutoUpdate:0];

    if (qword_1EAD46BA8 != -1)
    {
      swift_once();
    }

    v31 = sub_190D53040();
    __swift_project_value_buffer(v31, qword_1EAD9D8F8);
    sub_190D52690();
    v13 = sub_190D53020();
    v32 = sub_190D57680();

    if (os_log_type_enabled(v13, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v33 = 136315138;
      v35 = sub_190D57420();
      v37 = sub_19021D9F8(v35, v36, &v39);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_19020E000, v13, v32, "Peek-a-boo animation played for handle IDs: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x193AF7A40](v34, -1, -1);
      MEMORY[0x193AF7A40](v33, -1, -1);
    }

LABEL_26:

    return;
  }

  if (!a1)
  {
    if (qword_1EAD46BA8 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9D8F8);
    sub_190D52690();
    v5 = sub_190D53020();
    v6 = sub_190D57680();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v40[0] = v8;
      *v7 = 136315138;
      v9 = sub_190D57420();
      v11 = sub_19021D9F8(v9, v10, v40);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_19020E000, v5, v6, "Coin flip animation played for handle IDs: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x193AF7A40](v8, -1, -1);
      MEMORY[0x193AF7A40](v7, -1, -1);
    }

    v40[0] = 0;
    v12 = [a3 updateContactAndNicknamesForAutoUpdateWithError_];
    if (!v12)
    {
      v28 = v40[0];
      v29 = sub_190D51420();

      swift_willThrow();
      return;
    }

    v13 = v12;
    v14 = v40[0];
    goto LABEL_26;
  }

  if (qword_1EAD46BA8 != -1)
  {
    swift_once();
  }

  v21 = sub_190D53040();
  __swift_project_value_buffer(v21, qword_1EAD9D8F8);
  sub_190D52690();
  oslog = sub_190D53020();
  v22 = sub_190D57680();

  if (os_log_type_enabled(oslog, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40[0] = v24;
    *v23 = 136315138;
    v25 = sub_190D57420();
    v27 = sub_19021D9F8(v25, v26, v40);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_19020E000, oslog, v22, "No animation played for handle IDs: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x193AF7A40](v24, -1, -1);
    MEMORY[0x193AF7A40](v23, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_190872D80()
{
  v1 = [v0 visibleAssociatedMessageChatItems];
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    sub_1902188FC(0, &qword_1EAD44F88);
    v4 = sub_190D57180();

    v11 = v2;
    if (v4 >> 62)
    {
LABEL_20:
      v5 = sub_190D581C0();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x193AF3B90](v7, v4);
            }

            else
            {
              if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_19;
              }

              v8 = *(v4 + 8 * v7 + 32);
            }

            v9 = v8;
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_21;
            }
          }

          MEMORY[0x193AF29E0]();
          if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          sub_190D571E0();
          v2 = v11;
        }

        while (v6 != v5);
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

LABEL_21:
  }

  return v2;
}

id sub_190872F48(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_1902188FC(0, &unk_1EAD55410);
  v5 = sub_190D57160();

  return v5;
}

uint64_t sub_190872FC4()
{
  v1 = [v0 visibleAssociatedStickerChatItems];
  sub_1902188FC(0, &unk_1EAD55410);
  v2 = sub_190D57180();

  v10 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x193AF3B90](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isFromMe])
      {
        sub_190D58360();
        sub_190D583B0();
        sub_190D583C0();
        sub_190D58370();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v8 = v10;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v8;
}

void *sub_19087319C()
{
  v1 = OBJC_IVAR____TtC7ChatKit33QuickReplyButtonListConfiguration_rowIndex;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190873248(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit33QuickReplyButtonListConfiguration_rowIndex;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1908732A0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit33QuickReplyButtonListConfiguration_rowIndex;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id QuickReplyButtonListConfiguration.init()()
{
  *&v0[OBJC_IVAR____TtC7ChatKit33QuickReplyButtonListConfiguration_rowIndex] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickReplyButtonListConfiguration();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_190873438@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for QuickReplyButtonListConfiguration();
  result = sub_190D538C0();
  *a1 = result;
  return result;
}

uint64_t QuickReplyButtonList.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_190D548D0();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C38);
  return sub_1908734C8(v1, a1 + *(v3 + 44));
}

uint64_t sub_1908734C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54DB8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  v11 = *(*a1 + 16);
  v18 = 0;
  v19 = v11;
  swift_getKeyPath();
  sub_1908786D0(a1, v17);
  v12 = swift_allocObject();
  sub_190878708(v17, v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54DC0);
  sub_190878748();
  sub_190878828();
  sub_190D56280();
  v13 = *(v5 + 16);
  v13(v8, v10, v4);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54DD8);
  v13((a2 + *(v14 + 48)), v8, v4);
  v15 = *(v5 + 8);
  v15(v10, v4);
  return (v15)(v8, v4);
}

unint64_t *sub_1908736F4@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(*a2 + 16))
  {
    v5 = *a2 + 16 * v4;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    sub_1908786D0(a2, v12);
    v8 = swift_allocObject();
    sub_190878708(v12, v8 + 16);
    *(v8 + 64) = v7;
    *(v8 + 72) = v6;
    v9 = objc_allocWithZone(MEMORY[0x1E69DD250]);
    swift_bridgeObjectRetain_n();
    [v9 init];
    result = sub_190D55FC0();
    *a3 = v7;
    a3[1] = v6;
    a3[2] = sub_19087887C;
    a3[3] = v8;
    a3[4] = v10;
    a3[5] = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1908737F0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    [v3 replyListButtonDidSelectReply:v4 sourceView:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_190873880@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_190D548D0();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C38);
  return sub_1908734C8(v1, a1 + *(v3 + 44));
}

uint64_t sub_1908738D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1908785D8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190873938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1908785D8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_19087399C()
{
  sub_1908785D8();
  sub_190D54C10();
  __break(1u);
}

uint64_t sub_1908739C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54D48);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = sub_190D552E0();
  v8 = sub_190D552F0();
  sub_190D552F0();
  if (sub_190D552F0() != v7)
  {
    v8 = sub_190D552F0();
  }

  sub_190D539C0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54D50);
  (*(*(v17 - 8) + 16))(v6, a1, v17);
  v18 = &v6[*(v4 + 36)];
  *v18 = v8;
  *(v18 + 1) = v10;
  *(v18 + 2) = v12;
  *(v18 + 3) = v14;
  *(v18 + 4) = v16;
  v18[40] = 0;
  v19 = sub_190D55300();
  v20 = sub_190D552F0();
  sub_190D552F0();
  if (sub_190D552F0() != v19)
  {
    v20 = sub_190D552F0();
  }

  sub_190D539C0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_190878568(v6, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54D58);
  v30 = a2 + *(result + 36);
  *v30 = v20;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_190873B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54D60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t QuickReplyButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v17[0] = *v1;
  v17[1] = v3;
  v18 = v1[2];
  v4 = swift_allocObject();
  v5 = v1[1];
  v4[1] = *v1;
  v4[2] = v5;
  v4[3] = v1[2];
  sub_190873FA4(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C40);
  sub_190873FDC();
  sub_190D56030();
  v6 = sub_190D54EB0();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C80) + 36)) = v6;
  KeyPath = swift_getKeyPath();
  *&v16[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C88);
  sub_190233640(&qword_1EAD54C90, &qword_1EAD54C88);
  v8 = sub_190D53C70();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C98) + 36));
  *v9 = KeyPath;
  v9[1] = v8;
  v10 = sub_190D56500();
  v12 = v11;
  v16[0] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54CA0);
  sub_190D55FD0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54CA8);
  v14 = (a1 + *(result + 36));
  *v14 = v15;
  v14[1] = v10;
  v14[2] = v12;
  return result;
}

void sub_190873E08(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54CA0);
  sub_190D55FD0();
  v1();
}

void sub_190873E80(uint64_t a1@<X8>)
{
  sub_19081E484();
  sub_190D52690();
  v2 = sub_190D555F0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = [objc_opt_self() sharedBehaviors];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 balloonTextFont];

    if (v12)
    {
      v13 = sub_190D554B0();
      v14 = swift_getKeyPath();
      *a1 = v2;
      *(a1 + 8) = v4;
      *(a1 + 16) = v6 & 1;
      *(a1 + 24) = v8;
      *(a1 + 32) = KeyPath;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      *(a1 + 56) = v14;
      *(a1 + 64) = v13;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_190873FDC()
{
  result = qword_1EAD54C48;
  if (!qword_1EAD54C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54C40);
    sub_190874068();
    sub_1908741D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54C48);
  }

  return result;
}

unint64_t sub_190874068()
{
  result = qword_1EAD54C50;
  if (!qword_1EAD54C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54C58);
    sub_190874120();
    sub_190233640(&unk_1EAD46798, &qword_1EAD52F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54C50);
  }

  return result;
}

unint64_t sub_190874120()
{
  result = qword_1EAD54C60;
  if (!qword_1EAD54C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54C68);
    sub_190233640(&unk_1EAD46778, &qword_1EAD54C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54C60);
  }

  return result;
}

unint64_t sub_1908741D8()
{
  result = qword_1EAD54C78;
  if (!qword_1EAD54C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54C78);
  }

  return result;
}

double static QuickReplyButton.buttonSize(_:)()
{
  v0 = sub_190D56ED0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5AC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  v2 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = v2;
  v6 = [v3 preferredFontForTextStyle_];
  *(inited + 64) = sub_1902188FC(0, &qword_1EAD46540);
  *(inited + 40) = v6;
  sub_190821998(inited);
  swift_setDeallocating();
  sub_19022EEA4(inited + 32, &qword_1EAD53A50);
  type metadata accessor for Key(0);
  sub_190878688(&qword_1EAD46570, 255, type metadata accessor for Key);
  v7 = sub_190D56D60();

  [v0 sizeWithAttributes_];
  v9 = v8;

  return ceil(v9 + 40.0);
}

uint64_t sub_190874624()
{
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000019, 0x8000000190E5F8B0);
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit17QuickReplyContent_rows);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  v3 = MEMORY[0x193AF2A20](v1, v2);
  MEMORY[0x193AF28B0](v3);

  MEMORY[0x193AF28B0](0x7065526D756E202CLL, 0xEE00203A7365696CLL);
  v4 = sub_190D58720();
  MEMORY[0x193AF28B0](v4);

  MEMORY[0x193AF28B0](0xD000000000000014, 0x8000000190E5F8D0);
  v5 = sub_190D573C0();
  MEMORY[0x193AF28B0](v5);

  MEMORY[0x193AF28B0](62, 0xE100000000000000);
  return 0;
}

id QuickReplyContent.init(replies:maxWidth:transcriptHeight:)(unint64_t a1, double a2, double a3)
{
  v5 = a1;
  *&v3[OBJC_IVAR____TtC7ChatKit17QuickReplyContent_transcriptHeight] = a3;
  v72 = *(a1 + 16);
  if (!v72 || a2 <= 0.0)
  {

    type metadata accessor for QuickReplyContent();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v65 = v3;
  v7 = MEMORY[0x1E69E7CC0];
  v79 = MEMORY[0x1E69E7CC0];
  v80 = MEMORY[0x1E69E7CC0];
  v78 = MEMORY[0x1E69E7CC0];
  v71 = *MEMORY[0x1E69DB648];
  v70 = objc_opt_self();
  v69 = *MEMORY[0x1E69DDCF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A48);
  swift_beginAccess();
  swift_beginAccess();
  v8 = 0;
  v68 = *MEMORY[0x1E69A5D30];
  v9 = (v5 + 40);
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = v7;
  v16 = v7;
  v67 = v7;
  do
  {
    if (v8 >= *(v5 + 16))
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      v16 = sub_190835EB0(0, v7 + 1, 1, v16);
      goto LABEL_54;
    }

    v4 = v15;
    v17 = v16;
    v18 = *(v9 - 1);
    v7 = *v9;
    sub_190D52690();
    v19 = sub_190D56ED0();
    v77[0] = v71;
    v20 = v71;
    v21 = [v70 preferredFontForTextStyle_];
    v77[4] = sub_1902188FC(0, &qword_1EAD46540);
    v77[1] = v21;
    v22 = sub_190D585A0();
    sub_19022FD14(v77, &v75, &qword_1EAD53A50);
    v16 = v75;
    v23 = sub_190875D04(v75);
    if (v24)
    {
      goto LABEL_76;
    }

    v22[(v23 >> 6) + 8] |= 1 << v23;
    *(v22[6] + 8 * v23) = v16;
    sub_190824530(&v76, (v22[7] + 32 * v23));
    v25 = v22[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_77;
    }

    v22[2] = v27;
    sub_19022EEA4(v77, &qword_1EAD53A50);
    type metadata accessor for Key(0);
    sub_190878688(&qword_1EAD46570, 255, type metadata accessor for Key);
    v28 = sub_190D56D60();

    [v19 sizeWithAttributes_];
    v30 = v29;

    v31 = ceil(v30 + 40.0);
    if (v11 == 0.0)
    {
      if (v10 <= 44.0)
      {
        v10 = 44.0;
      }

      swift_beginAccess();
      v32 = v4;
      v16 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1908354D4(0, *(v4 + 16) + 1, 1, v4);
      }

      v4 = *(v32 + 2);
      v33 = *(v32 + 3);
      v34 = v32;
      v35 = v4 + 1;
      if (v4 >= v33 >> 1)
      {
        v34 = sub_1908354D4((v33 > 1), v4 + 1, 1, v34);
      }

      v31 = v11 + v31;
LABEL_28:
      *(v34 + 2) = v35;
      v15 = v34;
      v45 = &v34[16 * v4];
      *(v45 + 4) = v18;
      *(v45 + 5) = v7;
      v79 = v34;
      swift_endAccess();
      goto LABEL_29;
    }

    v16 = v17;
    v36 = v4;
    if (v11 + v31 + 16.0 <= a2)
    {
      if (v10 <= 44.0)
      {
        v10 = 44.0;
      }

      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1908354D4(0, *(v4 + 16) + 1, 1, v4);
      }

      v4 = *(v36 + 2);
      v44 = *(v36 + 3);
      v34 = v36;
      v35 = v4 + 1;
      if (v4 >= v44 >> 1)
      {
        v34 = sub_1908354D4((v44 > 1), v4 + 1, 1, v34);
      }

      v31 = v11 + 16.0 + v31;
      goto LABEL_28;
    }

    if (v31 > a2)
    {
      if (qword_1EAD51CA0 != -1)
      {
        swift_once();
      }

      v37 = sub_190D53040();
      __swift_project_value_buffer(v37, qword_1EAD9E028);
      sub_190D52690();
      v38 = sub_190D53020();
      v39 = sub_190D576A0();

      log = v38;
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v75 = v41;
        *v40 = 134218242;
        *(v40 + 4) = a2;
        *(v40 + 12) = 2080;
        v42 = sub_19021D9F8(v18, v7, &v75);

        *(v40 + 14) = v42;
        v7 = log;
        _os_log_impl(&dword_19020E000, log, v39, "skipping a reply that is wider than the max width (%f): %s", v40, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x193AF7A40](v41, -1, -1);
        v43 = v40;
        v16 = v17;
        MEMORY[0x193AF7A40](v43, -1, -1);
      }

      else
      {
      }

      v15 = v4;
      goto LABEL_31;
    }

    if (*(v4 + 16))
    {
      if (v13 <= v14)
      {
        v13 = v14;
      }

      swift_beginAccess();
      sub_190D52690();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_190835EB0(0, *(v17 + 2) + 1, 1, v17);
      }

      v47 = *(v16 + 2);
      v46 = *(v16 + 3);
      if (v47 >= v46 >> 1)
      {
        v16 = sub_190835EB0((v46 > 1), v47 + 1, 1, v16);
      }

      *(v16 + 2) = v47 + 1;
      *&v16[8 * v47 + 32] = v4;
      v80 = v16;
      swift_endAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_190835BEC(0, *(v67 + 2) + 1, 1, v67);
      }

      v49 = *(v67 + 2);
      v48 = *(v67 + 3);
      if (v49 >= v48 >> 1)
      {
        v67 = sub_190835BEC((v48 > 1), v49 + 1, 1, v67);
      }

      v12 = v10 + v12;
      *(v67 + 2) = v49 + 1;
      *&v67[8 * v49 + 32] = v10;
      v78 = v67;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_190DD1D90;
    *(v15 + 32) = v18;
    *(v15 + 40) = v7;
    v79 = v15;
    v10 = 44.0;
LABEL_29:
    v7 = *(v16 + 2);
    if (v7 >= v68)
    {
      goto LABEL_49;
    }

    v11 = v31;
    v14 = v31;
LABEL_31:
    v8 = (v8 + 1);
    v9 += 16;
  }

  while (v72 != v8);
  v7 = *(v16 + 2);
  v31 = v14;
LABEL_49:
  v9 = v67;
  v4 = v65;
  if (v7 >= v68 || !*(v15 + 16))
  {
    goto LABEL_61;
  }

  if (v13 <= v31)
  {
    v13 = v31;
  }

  sub_190D52690();
  v8 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_78;
  }

LABEL_54:
  v52 = *(v16 + 2);
  v51 = *(v16 + 3);
  if (v52 >= v51 >> 1)
  {
    v16 = sub_190835EB0((v51 > 1), v52 + 1, 1, v16);
  }

  *(v16 + 2) = v52 + 1;
  *&v16[8 * v52 + 32] = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_190835BEC(0, *(v9 + 2) + 1, 1, v9);
  }

  v54 = *(v9 + 2);
  v53 = *(v9 + 3);
  if (v54 >= v53 >> 1)
  {
    v9 = sub_190835BEC((v53 > 1), v54 + 1, 1, v9);
  }

  v12 = v12 + v10;
  *(v9 + 2) = v54 + 1;
  *&v9[8 * v54 + 32] = v10;
LABEL_61:
  *(v4 + OBJC_IVAR____TtC7ChatKit17QuickReplyContent_rowHeights) = v9;
  v55 = (v4 + OBJC_IVAR____TtC7ChatKit17QuickReplyContent_size);
  *v55 = v13;
  v55[1] = v12;
  *(v4 + OBJC_IVAR____TtC7ChatKit17QuickReplyContent_rows) = v16;
  v56 = *(v5 + 16);
  if (v56)
  {
    v75 = MEMORY[0x1E69E7CC0];
    sub_190D52690();
    sub_190D52690();
    sub_190D52690();
    sub_19082DDD8(0, v56, 0);
    v16 = 0;
    v7 = v75;
    v73 = *(v5 + 16);
    v8 = (v5 + 40);
    do
    {
      if (v73 == v16)
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (v16 >= *(v5 + 16))
      {
        goto LABEL_74;
      }

      v9 = v56;
      v4 = v5;
      v57 = *(v8 - 1);
      v58 = *v8;
      v75 = v7;
      v60 = *(v7 + 16);
      v59 = *(v7 + 24);
      sub_190D52690();
      if (v60 >= v59 >> 1)
      {
        sub_19082DDD8((v59 > 1), v60 + 1, 1);
        v7 = v75;
      }

      *(v7 + 16) = v60 + 1;
      v61 = (v7 + 24 * v60);
      v61[5] = v58;
      v61[6] = v16;
      v61[4] = v57;
      v8 += 2;
      ++v16;
      v56 = v9;
      v5 = v4;
    }

    while (v9 != v16);

    if (!*(v7 + 16))
    {
      goto LABEL_71;
    }

LABEL_69:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A58);
    v62 = sub_190D585A0();
  }

  else
  {
    sub_190D52690();

    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_69;
    }

LABEL_71:
    v62 = MEMORY[0x1E69E7CC8];
  }

  v75 = v62;
  v63 = sub_190D52690();
  sub_1908778D8(v63, 1, &v75);

  *&v65[OBJC_IVAR____TtC7ChatKit17QuickReplyContent_indicesForReply] = v75;
  v64 = *(v5 + 16);

  *&v65[OBJC_IVAR____TtC7ChatKit17QuickReplyContent_numReplies] = v64;

  v74.receiver = v65;
  v74.super_class = type metadata accessor for QuickReplyContent();
  return objc_msgSendSuper2(&v74, sel_init);
}

uint64_t sub_1908752E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC7ChatKit17QuickReplyContent_indicesForReply);
    if (*(v3 + 16))
    {
      v4 = sub_19022DCEC(a1, a2);
      if (v5)
      {
        return *(*(v3 + 56) + 8 * v4);
      }
    }
  }

  return sub_190D50E40();
}

void sub_190875414()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit17QuickReplyContent_rows);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v5 = *(v1 + 32 + 8 * v3);
    v6 = *(v5 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      goto LABEL_21;
    }

    sub_190D52690();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v4 = sub_1908354D4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      if (*(v5 + 16))
      {
LABEL_15:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v6)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v11 = *(v4 + 2);
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (v12)
          {
            goto LABEL_24;
          }

          *(v4 + 2) = v13;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_22;
    }

LABEL_4:
    if (v2 == ++v3)
    {
      return;
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
}

uint64_t sub_190875570(uint64_t a1)
{
  sub_19022FD14(a1, v7, &unk_1EAD551C0);
  if (!v8)
  {
    sub_19022EEA4(v7, &unk_1EAD551C0);
    goto LABEL_11;
  }

  type metadata accessor for QuickReplyContent();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v4 = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC7ChatKit17QuickReplyContent_transcriptHeight) != *&v6[OBJC_IVAR____TtC7ChatKit17QuickReplyContent_transcriptHeight] || !CGSizeEqualToSize(*(v1 + OBJC_IVAR____TtC7ChatKit17QuickReplyContent_size), *&v6[OBJC_IVAR____TtC7ChatKit17QuickReplyContent_size]) || (v2 = *(v1 + OBJC_IVAR____TtC7ChatKit17QuickReplyContent_rows), *(v2 + 16) != *(*&v6[OBJC_IVAR____TtC7ChatKit17QuickReplyContent_rows] + 16)) || *(v1 + OBJC_IVAR____TtC7ChatKit17QuickReplyContent_numReplies) != *&v6[OBJC_IVAR____TtC7ChatKit17QuickReplyContent_numReplies] || (sub_1908756BC(*&v6[OBJC_IVAR____TtC7ChatKit17QuickReplyContent_rowHeights], *(v1 + OBJC_IVAR____TtC7ChatKit17QuickReplyContent_rowHeights)) & 1) == 0)
  {

    goto LABEL_11;
  }

  v3 = sub_190D52690();
  v4 = sub_190875750(v3, v2);

  return v4 & 1;
}

uint64_t sub_1908756BC(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = *(result + 16);
  v6 = result + 32;
  while (1)
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = *(a2 + 16);
    if (v3 == v4)
    {
      goto LABEL_6;
    }

    if (v3 >= v4)
    {
      break;
    }

    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_16;
    }

    v8 = *(a2 + 32 + 8 * v3);
LABEL_6:
    v10 = v5;
    result = v2 == v5;
    if (v2 != v5)
    {
      if (v2 >= v5)
      {
        goto LABEL_15;
      }

      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_17;
      }

      v7 = *(v6 + 8 * v2);
    }

    if (v3 != v4)
    {
      result = 0;
      if (v2 != v5)
      {
        v2 = v10;
        v3 = v9;
        if (v8 == v7)
        {
          continue;
        }
      }
    }

    return result;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_190875750(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = *(result + 16);
  v13 = a2 + 32;
  v6 = result + 32;
  while (1)
  {
    if (v3 == v4)
    {
      if (v2 == v5)
      {
        return 1;
      }

      v7 = 0;
      v3 = v4;
    }

    else
    {
      if (v3 >= v4)
      {
        goto LABEL_31;
      }

      if (__OFADD__(v3, 1))
      {
        goto LABEL_32;
      }

      v7 = *(v13 + 8 * v3);
      result = sub_190D52690();
      if (v2 == v5)
      {
        if (v7)
        {
          goto LABEL_24;
        }

        return 1;
      }

      ++v3;
    }

    if (v2 == v5)
    {
      break;
    }

    v8 = *(v6 + 8 * v2);
    sub_190D52690();
    if (!v7)
    {
      if (v8)
      {
        goto LABEL_24;
      }

      return 1;
    }

    if (!v8)
    {
      goto LABEL_24;
    }

    v9 = *(v7 + 16);
    if (v9 != *(v8 + 16))
    {
      goto LABEL_23;
    }

    if (v9 && v7 != v8)
    {
      v10 = (v7 + 40);
      v11 = (v8 + 40);
      while (1)
      {
        v12 = *(v10 - 1) == *(v11 - 1) && *v10 == *v11;
        if (!v12 && (sub_190D58760() & 1) == 0)
        {
          break;
        }

        v10 += 2;
        v11 += 2;
        if (!--v9)
        {
          goto LABEL_2;
        }
      }

LABEL_23:

LABEL_24:

      return 0;
    }

LABEL_2:
    ++v2;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id QuickReplyContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QuickReplyButtonListHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickReplyButtonListHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_190875B74(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_190875BAC(uint64_t a1)
{
  sub_190D52E90();
  v2 = MEMORY[0x1E69E8450];
  sub_190878688(&qword_1EAD54D68, 255, MEMORY[0x1E69E8450]);
  v3 = sub_190D56DC0();
  return sub_190876A10(a1, v3, MEMORY[0x1E69E8450], &qword_1EAD54D70, v2, MEMORY[0x1E69E8468]);
}

unint64_t sub_190875C84(uint64_t a1)
{
  v2 = sub_190D58210();

  return sub_1908766F4(a1, v2);
}

unint64_t sub_190875D04(uint64_t a1)
{
  sub_190D56F10();
  sub_190D58870();
  sub_190D56FC0();
  v2 = sub_190D588C0();

  return sub_190877498(a1, v2);
}

unint64_t sub_190875D94(uint64_t a1)
{
  sub_190D58870();
  if (*(a1 + 32))
  {
    MEMORY[0x193AF4110](1);
LABEL_5:
    sub_190D56FC0();
    goto LABEL_6;
  }

  v2 = *(a1 + 24);
  MEMORY[0x193AF4110](0);
  sub_190D56FC0();
  if (v2)
  {
    sub_190D58890();
    goto LABEL_5;
  }

  sub_190D58890();
LABEL_6:
  v3 = sub_190D588C0();

  return sub_190876828(a1, v3);
}

unint64_t sub_190875E78(char a1)
{
  sub_190D58870();
  MEMORY[0x193AF4110](a1 & 1);
  v2 = sub_190D588C0();
  return sub_1908769A0(a1 & 1, v2);
}

unint64_t sub_190875EE0(uint64_t a1)
{
  sub_190D519C0();
  v2 = MEMORY[0x1E6969770];
  sub_190878688(&qword_1EAD46BD0, 255, MEMORY[0x1E6969770]);
  v3 = sub_190D56DC0();
  return sub_190876A10(a1, v3, MEMORY[0x1E6969770], &qword_1EAD54DA0, v2, MEMORY[0x1E6969788]);
}

unint64_t sub_190876008(uint64_t a1)
{
  sub_190D515F0();
  v2 = MEMORY[0x1E6968FB0];
  sub_190878688(&unk_1EAD5E1A0, 255, MEMORY[0x1E6968FB0]);
  v3 = sub_190D56DC0();
  return sub_190876A10(a1, v3, MEMORY[0x1E6968FB0], &qword_1EAD54D78, v2, MEMORY[0x1E6968FC8]);
}

unint64_t sub_1908760E0(unsigned __int8 a1)
{
  sub_190D58870();
  MEMORY[0x193AF4110](a1 + 1);
  v2 = sub_190D588C0();
  return sub_190877868(a1, v2);
}

unint64_t sub_19087614C(unsigned __int8 a1)
{
  v2 = sub_190B1FD40();

  return sub_190876BB4(a1, v2);
}

unint64_t sub_190876190(unsigned __int8 a1)
{
  sub_190D58870();
  sub_190D56FC0();

  v2 = sub_190D588C0();

  return sub_190876E4C(a1, v2);
}

unint64_t sub_190876288(uint64_t a1)
{
  sub_190D58870();
  type metadata accessor for CFString(0);
  sub_190878688(&qword_1EAD54D98, 255, type metadata accessor for CFString);
  sub_190D51CC0();
  v2 = sub_190D588C0();

  return sub_190877008(a1, v2);
}

unint64_t sub_190876340(void *a1, uint64_t a2, uint64_t a3)
{
  sub_190D58870();
  if (a3)
  {
    if (a3 == 1)
    {
      sub_190D56FC0();
    }

    else
    {
      v6 = [a1 stickerIdentifier];
      sub_190D56F10();

      sub_190D56FC0();
    }
  }

  else
  {
    MEMORY[0x193AF4130]([a1 associatedMessageType]);
  }

  v7 = sub_190D588C0();

  return sub_190877118(a1, a2, a3, v7);
}

unint64_t sub_190876444(char a1)
{
  sub_190D58870();
  sub_190D56FC0();

  v2 = sub_190D588C0();

  return sub_190877364(a1 & 1, v2);
}

unint64_t sub_190876530(uint64_t a1)
{
  sub_190D58870();
  MEMORY[0x193AF4110](a1);
  v2 = sub_190D588C0();
  return sub_1908767BC(a1, v2);
}

unint64_t sub_190876598(uint64_t a1)
{
  sub_190D58870();
  sub_190D51840();
  sub_190878688(&qword_1EAD54D88, 255, MEMORY[0x1E6969530]);
  sub_190D56DD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53890);
  sub_190D56DD0();
  v2 = sub_190D588C0();

  return sub_190877668(a1, v2);
}

unint64_t sub_190876688(unsigned __int8 a1)
{
  sub_190D58870();
  MEMORY[0x193AF4130](a1 + 2000);
  v2 = sub_190D588C0();
  return sub_190877868(a1, v2);
}

unint64_t sub_1908766F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_19087862C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x193AF3AB0](v9, a1);
      sub_19084CFD0(v9);
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

unint64_t sub_1908767BC(uint64_t a1, uint64_t a2)
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

unint64_t sub_190876828(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(v2 + 48);
    v9 = *a1;
    v10 = a1[1];
    v28 = v8;
    while (1)
    {
      v11 = (v8 + 40 * v5);
      v12 = *v11;
      v13 = v11[1];
      if (v11[4])
      {
        break;
      }

      if ((a1[4] & 1) == 0)
      {
        v15 = v11[2];
        v16 = v11[3];
        v17 = a1[2];
        v18 = a1[3];
        v19 = v12 == v9 && v13 == v10;
        if (v19 || (v20 = v7, v21 = v3, v22 = a1[2], v23 = v9, v24 = v11[2], v25 = sub_190D58760(), v17 = v22, v3 = v21, v7 = v20, v8 = v28, v15 = v24, v9 = v23, (v25 & 1) != 0))
        {
          if (!v16)
          {
            if (!v18)
            {
              return v5;
            }

            goto LABEL_4;
          }

          if (v18)
          {
            if (v15 == v17 && v16 == v18)
            {
              return v5;
            }

LABEL_24:
            if (sub_190D58760())
            {
              return v5;
            }
          }
        }
      }

LABEL_4:
      v5 = (v5 + 1) & v7;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if ((a1[4] & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v12 == v9 && v13 == v10)
    {
      return v5;
    }

    goto LABEL_24;
  }

  return v5;
}

unint64_t sub_1908769A0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_190876A10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_190878688(v24, 255, v25);
      v20 = sub_190D56E30();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_190876BB4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v12 = 0xE400000000000000;
            v11 = 1702260588;
          }

          else
          {
            v12 = 0xE900000000000074;
            v11 = 0x6867696C746F7073;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v11 = 0x6B726F7765726966;
          }

          else
          {
            v11 = 0x73726573616CLL;
          }

          if (v6 == 4)
          {
            v12 = 0xE900000000000073;
          }

          else
          {
            v12 = 0xE600000000000000;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 0x69747465666E6F63;
        }

        else
        {
          v7 = 1869112165;
        }

        if (v6 == 2)
        {
          v8 = 0xE800000000000000;
        }

        else
        {
          v8 = 0xE400000000000000;
        }

        if (*(*(v27 + 48) + v4))
        {
          v9 = 0x74617262656C6563;
        }

        else
        {
          v9 = 0x6E6F6F6C6C6162;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0xEB000000006E6F69;
        }

        else
        {
          v10 = 0xE700000000000000;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }
      }

      v13 = 0x6867696C746F7073;
      if (v5 == 6)
      {
        v13 = 1702260588;
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xE900000000000074;
      }

      v15 = 0x6B726F7765726966;
      if (v5 != 4)
      {
        v15 = 0x73726573616CLL;
      }

      v16 = 0xE600000000000000;
      if (v5 == 4)
      {
        v16 = 0xE900000000000073;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0x69747465666E6F63;
      }

      else
      {
        v17 = 1869112165;
      }

      if (v5 == 2)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v18 = 0xE400000000000000;
      }

      if (v5)
      {
        v19 = 0x74617262656C6563;
      }

      else
      {
        v19 = 0x6E6F6F6C6C6162;
      }

      if (v5)
      {
        v20 = 0xEB000000006E6F69;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_190D58760();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_190876E4C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x72656B63697473 : 0x656C756465686373;
      v8 = v6 == 2 ? 0xE700000000000000 : 0xE900000000000064;
      v9 = *(*(v23 + 48) + v4) ? 0x6E6F697463616572 : 0x6669636570736E75;
      v10 = *(*(v23 + 48) + v4) ? 0xE800000000000000 : 0xEB00000000646569;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x72656B63697473 : 0x656C756465686373;
      v14 = v5 == 2 ? 0xE700000000000000 : 0xE900000000000064;
      v15 = v5 ? 0x6E6F697463616572 : 0x6669636570736E75;
      v16 = v5 ? 0xE800000000000000 : 0xEB00000000646569;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_190D58760();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_190877008(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_190878688(&qword_1EAD54D98, 255, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_190D51CB0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_190877118(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = a2;
    v11 = ~v6;
    v34 = ~v6;
    v35 = v4 + 64;
    do
    {
      v12 = *(v4 + 48) + 24 * v7;
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (v15)
      {
        if (v15 == 1)
        {
          if (a3 == 1)
          {
            v16 = v14 == a1 && v13 == v9;
            if (v16 || (sub_190D58760() & 1) != 0)
            {
              return v7;
            }
          }
        }

        else if (a3 == 2)
        {
          v17 = a3;
          v18 = [v14 stickerIdentifier];
          v19 = sub_190D56F10();
          v21 = v20;

          v22 = a1;
          v23 = [a1 stickerIdentifier];
          v24 = sub_190D56F10();
          v26 = v25;

          if (v19 == v24 && v21 == v26)
          {
            sub_19083F1AC(v14, v13, 2);

            return v7;
          }

          v28 = sub_190D58760();
          sub_19083F1AC(v14, v13, 2);

          a3 = v17;
          v9 = a2;
          v4 = v33;
          a1 = v22;
          v11 = v34;
          v5 = v35;
          if (v28)
          {
            return v7;
          }
        }
      }

      else if (!a3)
      {
        v29 = [v14 associatedMessageType];
        v30 = [a1 associatedMessageType];
        sub_19083F1AC(v14, v13, 0);
        v16 = v29 == v30;
        v11 = v34;
        v5 = v35;
        if (v16)
        {
          return v7;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_190877364(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x656C67676F74;
    }

    else
    {
      v6 = 1802658157;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x656C67676F74 : 1802658157;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_190D58760();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_190877498(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_190D56F10();
      v8 = v7;
      if (v6 == sub_190D56F10() && v8 == v9)
      {
        break;
      }

      v11 = sub_190D58760();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_19087759C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1902188FC(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_190D57D90();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_190877668(uint64_t a1, uint64_t a2)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53890);
  v4 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v13 - v5;
  v14 = v2;
  v7 = -1 << *(v2 + 32);
  v8 = a2 & ~v7;
  if ((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_190D51840();
    v10 = *(v4 + 72);
    do
    {
      sub_19022FD14(*(v14 + 48) + v10 * v8, v6, &qword_1EAD53890);
      sub_190878688(&qword_1EAD54D90, 255, MEMORY[0x1E6969530]);
      if (sub_190D56E30())
      {
        v11 = sub_190D56E30();
        sub_19022EEA4(v6, &qword_1EAD53890);
        if (v11)
        {
          return v8;
        }
      }

      else
      {
        sub_19022EEA4(v6, &qword_1EAD53890);
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_190877868(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_1908778D8(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;
  sub_190D52690();
  v10 = sub_19022DCEC(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_190B62ABC(v15, v5 & 1);
    v10 = sub_19022DCEC(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_190D587C0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_190B67DD4();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_190D582B0();
    MEMORY[0x193AF28B0](0xD00000000000001BLL, 0x8000000190E5DA40);
    sub_190D58450();
    MEMORY[0x193AF28B0](39, 0xE100000000000000);
    sub_190D58510();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;
      sub_190D52690();
      v27 = sub_19022DCEC(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_190B62ABC(v31, 1);
        v27 = sub_19022DCEC(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_190877C54@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x193AEFFB0]();
  *a1 = result;
  return result;
}

uint64_t sub_190877D24()
{
  sub_190D58870();
  sub_190D56FC0();
  v0 = sub_190D588C0();
  return sub_190877CE4(v0);
}

uint64_t _s7ChatKit26QuickReplyButtonListHelperC04makeF4View_8delegate19configurationObjectSo6UIViewCSaySSG_AA0cdeF8Delegate_pAA0cdeF13ConfigurationCtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  type metadata accessor for QuickReplyButtonListConfiguration();
  sub_190878688(&qword_1EAD54DA8, v4, type metadata accessor for QuickReplyButtonListConfiguration);
  sub_190D52690();
  v5 = a3;
  sub_190D53FC0();
  sub_190D55FC0();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54DB0));
  return sub_190D54090();
}

uint64_t sub_190877F98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_190877FE0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_19087803C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_190878084(uint64_t result, int a2, int a3)
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

unint64_t sub_190878174()
{
  result = qword_1EAD54CF0;
  if (!qword_1EAD54CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54CF8);
    sub_190878200();
    sub_190878454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54CF0);
  }

  return result;
}

unint64_t sub_190878200()
{
  result = qword_1EAD54D00;
  if (!qword_1EAD54D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54CA8);
    sub_1908782B8();
    sub_190233640(&qword_1EAD54D28, &qword_1EAD54D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54D00);
  }

  return result;
}

unint64_t sub_1908782B8()
{
  result = qword_1EAD54D08;
  if (!qword_1EAD54D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54C98);
    sub_190878370();
    sub_190233640(&qword_1EAD54240, &qword_1EAD54248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54D08);
  }

  return result;
}

unint64_t sub_190878370()
{
  result = qword_1EAD54D10;
  if (!qword_1EAD54D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54C80);
    sub_190233640(&qword_1EAD54D18, &qword_1EAD54D20);
    sub_190233640(&qword_1EAD45208, &qword_1EAD53160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54D10);
  }

  return result;
}

unint64_t sub_190878454()
{
  result = qword_1EAD54D38;
  if (!qword_1EAD54D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54D38);
  }

  return result;
}

unint64_t sub_1908784DC()
{
  result = qword_1EAD54D40;
  if (!qword_1EAD54D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54D40);
  }

  return result;
}

uint64_t sub_190878568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54D48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1908785D8()
{
  result = qword_1EAD54D80;
  if (!qword_1EAD54D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54D80);
  }

  return result;
}

uint64_t sub_190878688(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190878748()
{
  result = qword_1EAD54DC8;
  if (!qword_1EAD54DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54DC0);
    sub_1908787D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54DC8);
  }

  return result;
}

unint64_t sub_1908787D4()
{
  result = qword_1EAD595B0;
  if (!qword_1EAD595B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD595B0);
  }

  return result;
}

unint64_t sub_190878828()
{
  result = qword_1EAD54DD0;
  if (!qword_1EAD54DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54DD0);
  }

  return result;
}

unint64_t sub_190878888()
{
  result = qword_1EAD54DE0;
  if (!qword_1EAD54DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54D58);
    sub_190878914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54DE0);
  }

  return result;
}

unint64_t sub_190878914()
{
  result = qword_1EAD54DE8;
  if (!qword_1EAD54DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54D48);
    sub_190233640(&qword_1EAD54DF0, &qword_1EAD54D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54DE8);
  }

  return result;
}

unint64_t sub_1908789F4()
{
  result = qword_1EAD54E00;
  if (!qword_1EAD54E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54E00);
  }

  return result;
}

uint64_t sub_190878A48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD9D990);
  __swift_project_value_buffer(v10, qword_1EAD9D990);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t sub_190878D2C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v26 = &v21 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v21 - v4;
  v5 = sub_190D51460();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D511B0();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_190D511C0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_190D56EA0();
  MEMORY[0x1EEE9AC00](v17 - 8);
  sub_190D56E90();
  sub_190D56E80();
  sub_190D506F0();
  v18 = *(v14 + 48);
  if (v18(v12, 1, v13) == 1)
  {
    sub_190D511A0();
    if (v18(v12, 1, v13) != 1)
    {
      sub_19087993C(v12);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1908799A4(&qword_1EAD54E70, MEMORY[0x1E69686F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E78);
  sub_190233640(&qword_1EAD54E80, &qword_1EAD54E78);
  sub_190D58170();
  sub_190D56E60();
  (*(v21 + 8))(v9, v7);
  (*(v14 + 8))(v16, v13);
  sub_190D56E80();
  sub_190D51450();
  (*(v22 + 56))(v25, 1, 1, v23);
  v19 = sub_190D50B50();
  (*(*(v19 - 8) + 56))(v26, 1, 1, v19);
  return sub_190D50B70();
}

uint64_t sub_190879248@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190879A40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_190879274()
{
  result = qword_1EAD54E08;
  if (!qword_1EAD54E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54E08);
  }

  return result;
}

unint64_t sub_1908792CC()
{
  result = qword_1EAD54E10;
  if (!qword_1EAD54E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54E10);
  }

  return result;
}

unint64_t sub_190879324()
{
  result = qword_1EAD54E18;
  if (!qword_1EAD54E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54E18);
  }

  return result;
}

uint64_t sub_1908793C8(uint64_t a1)
{
  v2 = sub_1908799EC();

  return MEMORY[0x1EEDB29C8](a1, v2);
}

unint64_t sub_190879418()
{
  result = qword_1EAD54E30;
  if (!qword_1EAD54E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54E30);
  }

  return result;
}

unint64_t sub_19087946C()
{
  result = qword_1EAD54E38;
  if (!qword_1EAD54E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54E38);
  }

  return result;
}

unint64_t sub_1908794C0()
{
  result = qword_1EAD54E40;
  if (!qword_1EAD54E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54E40);
  }

  return result;
}

unint64_t sub_190879518()
{
  result = qword_1EAD54E48;
  if (!qword_1EAD54E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54E48);
  }

  return result;
}

uint64_t sub_1908795B4()
{
  sub_1908799EC();

  return sub_190D50450();
}

uint64_t sub_190879600@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51938 != -1)
  {
    swift_once();
  }

  v2 = sub_190D50CF0();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9D990);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1908796EC(uint64_t a1)
{
  v2 = sub_1908789F4();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

unint64_t sub_19087973C()
{
  result = qword_1EAD54E60;
  if (!qword_1EAD54E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54E60);
  }

  return result;
}

uint64_t sub_190879798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_190221DA4;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_19087985C(uint64_t a1)
{
  v2 = sub_190879518();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1908798A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1908798F0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_19087993C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1908799A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1908799EC()
{
  result = qword_1EAD54E88;
  if (!qword_1EAD54E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54E88);
  }

  return result;
}

uint64_t sub_190879A40()
{
  v0 = sub_190D51440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D51460();
  MEMORY[0x1EEE9AC00](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FE0);
  sub_190D56E50();
  sub_190D51980();
  v7 = *MEMORY[0x1E6968DF0];
  v8 = *(v1 + 104);
  v8(v3, v7, v0);
  sub_190D51470();
  v9 = sub_190D50780();
  sub_190D56E50();
  sub_190D51980();
  v8(v3, v7, v0);
  sub_190D51470();
  sub_190D50780();
  return v9;
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

uint64_t sub_190879D10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_190879D58(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_190879DB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E98);
  sub_190D55FD0();
  return v1;
}

uint64_t sub_190879E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19087A044();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190879E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19087A044();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190879EDC()
{
  sub_19087A044();
  sub_190D54C10();
  __break(1u);
}

unint64_t sub_190879F08()
{
  result = qword_1EAD54E90;
  if (!qword_1EAD54E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54E90);
  }

  return result;
}

void sub_190879F5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54EA0);
  sub_190D55FD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
  v0 = sub_190D57160();
  v1 = [v3 cnContactWithKeys_];

  if (v1)
  {
    v2 = [objc_allocWithZone(CKAvatarView) initWithContact_];

    [v2 setShowsContactOnTap_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_19087A044()
{
  result = qword_1EAD54EB0;
  if (!qword_1EAD54EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54EB0);
  }

  return result;
}

void *sub_19087A098(void *a1)
{
  v3 = MEMORY[0x1E69E7CD0];
  v1[2] = 0;
  v1[3] = v3;
  v4 = MEMORY[0x1E69E7CC0];
  v1[4] = sub_190821AC0(MEMORY[0x1E69E7CC0]);
  v1[5] = sub_190821AD4(v4);
  v5 = [objc_opt_self() sharedInstance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_190DD5CE0;
  v7 = *MEMORY[0x1E695C278];
  v8 = *MEMORY[0x1E695C400];
  *(v6 + 32) = *MEMORY[0x1E695C278];
  *(v6 + 40) = v8;
  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
  v11 = sub_190D57160();

  v12 = [v5 fetchMeContactWithKeys_];

  v13 = v1[2];
  v1[2] = v12;

  return v1;
}

id sub_19087A1D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = v2[3];
  sub_190D52690();
  v7 = sub_190CA994C(a1, a2, v6);

  if (v7)
  {
    v8 = v3[2];
    v9 = v8;
  }

  else
  {
    swift_beginAccess();
    v10 = v3[5];
    if (*(v10 + 16))
    {
      sub_190D52690();
      v11 = sub_19022DCEC(a1, a2);
      if (v12)
      {
        v13 = (*(v10 + 56) + 16 * v11);
        v15 = *v13;
        v14 = v13[1];
        sub_190D52690();

        swift_beginAccess();
        v16 = v3[4];
        if (*(v16 + 16))
        {
          sub_190D52690();
          v17 = sub_19022DCEC(v15, v14);
          v19 = v18;

          if (v19)
          {
            v8 = *(*(v16 + 56) + 8 * v17);

            return v8;
          }
        }
      }
    }

    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v21 = [objc_opt_self() synchronousDatabaseQueryProvider];
    if (v21)
    {
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_190DD1D90;
      *(v23 + 32) = a1;
      *(v23 + 40) = a2;
      sub_190D52690();
      v24 = sub_190D57160();

      v25 = swift_allocObject();
      swift_weakInit();
      v26 = swift_allocObject();
      v26[2] = v25;
      v26[3] = a1;
      v26[4] = a2;
      v26[5] = v20;
      aBlock[4] = sub_19087AB74;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19087AA38;
      aBlock[3] = &block_descriptor_11;
      v27 = _Block_copy(aBlock);
      sub_190D52690();
      sub_190D50920();

      [v22 fetchMetadataForSyndicationIdentifiers:v24 completionHandler:v27];
      swift_unknownObjectRelease();
      _Block_release(v27);
    }

    swift_beginAccess();
    v8 = *(v20 + 16);
    v28 = v8;
  }

  return v8;
}

void sub_19087A4E4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v21 = Strong;
    if (!a1 || (sub_1908A729C(a1), !v23))
    {
      swift_beginAccess();
      sub_190D52690();
      sub_1908AA174(&v52, a4, a5);
      swift_endAccess();
      goto LABEL_17;
    }

    v24 = v22;
    if ([v22 fromMe])
    {
      swift_beginAccess();
      sub_190D52690();
      sub_1908AA174(&v52, a4, a5);
      swift_endAccess();

LABEL_17:

      v25 = v21[2];
      v26 = v25;

      swift_beginAccess();
      v27 = *(a6 + 16);
      *(a6 + 16) = v25;

      return;
    }

    v28 = [v24 handleID];
    if (v28)
    {
      v29 = v28;
      v30 = sub_190D56F10();
      v32 = v31;
      swift_beginAccess();
      v33 = v21[4];
      if (*(v33 + 16))
      {
        sub_190D52690();
        v34 = sub_19022DCEC(v30, v32);
        v47 = v32;
        if (v35)
        {
          v36 = v34;

          v37 = *(*(v33 + 56) + 8 * v36);

          swift_beginAccess();
          v38 = *(a6 + 16);
          *(a6 + 16) = v37;
          v39 = v37;

          swift_beginAccess();
          sub_190D52690();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v21[5];
          v21[5] = 0x8000000000000000;
          sub_190C1C11C(v30, v47, a4, a5, isUniquelyReferenced_nonNull_native);

          v21[5] = v50;
          swift_endAccess();

LABEL_26:

          return;
        }
      }

      osloga = v30;
      v41 = [objc_opt_self() sharedInstance];
      v42 = v32;
      v43 = [v41 fetchCNContactForHandleWithID_];

      swift_beginAccess();
      v44 = *(a6 + 16);
      *(a6 + 16) = v43;

      swift_beginAccess();
      v45 = v43;
      sub_190D52690();
      sub_190C3B8B8(v43, osloga, v42);
      swift_endAccess();
      swift_beginAccess();
      sub_190D52690();
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v21[5];
      v21[5] = 0x8000000000000000;
      sub_190C1C11C(osloga, v42, a4, a5, v46);

      v21[5] = v51;
      swift_endAccess();
    }

    goto LABEL_26;
  }

  v7 = a2;
  if (qword_1EAD51C78 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9DFE8);
  v9 = a2;
  oslog = sub_190D53020();
  v10 = sub_190D576A0();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_19020E000, oslog, v10, "Encountered error retrieving metadata for syndication identifiers. %@", v11, 0xCu);
    sub_190830D58(v12);
    MEMORY[0x193AF7A40](v12, -1, -1);
    MEMORY[0x193AF7A40](v11, -1, -1);

    v15 = oslog;
  }

  else
  {

    v15 = a2;
  }
}

uint64_t sub_19087AA38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_190D579D0();
    v4 = sub_190D56D90();
  }

  sub_190D50920();
  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_19087AADC()
{

  return swift_deallocClassInstance();
}

void sub_19087AD18(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v78 - v5;
  if (*(v1 + OBJC_IVAR___CKStickerReactionSession__didSendSticker))
  {
    return;
  }

  *(v1 + OBJC_IVAR___CKStickerReactionSession__didSendSticker) = 1;
  [a1 prepareToSend];
  v85 = [v1 chatItem];
  v7 = [objc_opt_self() stringGUID];
  if (!v7)
  {
    __break(1u);
    goto LABEL_61;
  }

  v84 = v7;
  v8 = sub_190D56F10();
  sub_19087B834(a1, v8, v9);
  v10 = [objc_opt_self() sharedInstance];
  if (!v10)
  {
LABEL_61:

    __break(1u);
    goto LABEL_62;
  }

  v11 = v10;
  v12 = sub_190D56D60();
  v13 = [v11 mediaObjectWithSticker:a1 stickerUserInfo:v12];

  if (!v13)
  {

    if (qword_1EAD51940 != -1)
    {
      swift_once();
    }

    v34 = sub_190D53040();
    __swift_project_value_buffer(v34, qword_1EAD9D9A8);
    v35 = a1;
    v36 = sub_190D53020();
    v37 = sub_190D576A0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v35;
      *v39 = a1;
      v40 = v35;
      _os_log_impl(&dword_19020E000, v36, v37, "Creating media object for sticker: %@ failed", v38, 0xCu);
      sub_19022EEA4(v39, &unk_1EAD54610);
      MEMORY[0x193AF7A40](v39, -1, -1);
      MEMORY[0x193AF7A40](v38, -1, -1);
    }

    v41 = v85;
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_190DD1D90;
  *(v14 + 56) = sub_1902188FC(0, &qword_1EAD466C0);
  *(v14 + 32) = v13;
  v15 = v13;
  v16 = sub_190D57160();

  v17 = [objc_opt_self() compositionWithMediaObjects:v16 subject:0];

  if (!v17)
  {

LABEL_17:
    v41 = v84;
LABEL_18:

LABEL_20:

    return;
  }

  v83 = v15;
  v18 = [v2 conversation];
  v19 = sub_19087C374(v17, v18);

  if (v19)
  {

    if (qword_1EAD51940 != -1)
    {
      swift_once();
    }

    v20 = sub_190D53040();
    __swift_project_value_buffer(v20, qword_1EAD9D9A8);
    v21 = v2;
    v22 = v17;
    v23 = v17;
    v24 = v19;
    v84 = sub_190D53020();
    v25 = sub_190D576A0();

    v26 = os_log_type_enabled(v84, v25);
    v27 = v83;
    if (!v26)
    {

      v41 = v19;

      goto LABEL_20;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412802;
    v30 = [v21 conversation];
    *(v28 + 4) = v30;
    *(v28 + 12) = 2112;
    *(v28 + 14) = v23;
    *v29 = v30;
    v29[1] = v22;
    *(v28 + 22) = 2112;
    v31 = v23;
    v32 = v19;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 24) = v33;
    v29[2] = v33;
    _os_log_impl(&dword_19020E000, v84, v25, "Conversation: %@ cannot send composition: %@ error: %@", v28, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54610);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v29, -1, -1);
    MEMORY[0x193AF7A40](v28, -1, -1);

    goto LABEL_17;
  }

  v42 = [v2 chatItem];
  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (v43)
  {
    v44 = v17;
    v45 = [v43 aggregateChatItems];
    sub_1902188FC(0, &qword_1EAD54EE8);
    v46 = sub_190D57180();

    if (v46 >> 62)
    {
      if (sub_190D581C0())
      {
        goto LABEL_24;
      }
    }

    else if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      if ((v46 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x193AF3B90](0, v46);
      }

      else
      {
        if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_59:
          swift_once();
          goto LABEL_54;
        }

        v47 = *(v46 + 32);
      }

      v48 = v47;

      v42 = v85;
      v85 = v48;
      goto LABEL_33;
    }

LABEL_33:
    v17 = v44;
  }

  v82 = v17;
  v49 = sub_19087C084();
  v51 = v50;
  sub_190D517F0();
  v52 = sub_190D51840();
  v53 = *(v52 - 8);
  (*(v53 + 56))(v6, 0, 1, v52);
  v54 = [v85 IMChatItem];
  if (!v54)
  {
LABEL_62:

    __break(1u);
    return;
  }

  v55 = v54;

  v56 = [v55 guid];

  v81 = v51;
  if (v56)
  {
    v78 = sub_190D56F10();
    v58 = v57;
  }

  else
  {
    v78 = 0;
    v58 = 0;
  }

  v59 = [v85 messagePartRange];
  v79 = v60;
  v80 = v59;
  v61 = [v85 threadIdentifier];
  if (v61)
  {
    v62 = v61;
    sub_190D56F10();
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  v65 = (*(v53 + 48))(v6, 1, v52);
  v15 = v49;
  if (v65 == 1)
  {
    v66 = 0;
  }

  else
  {
    v66 = sub_190D51780();
    (*(v53 + 8))(v6, v52);
  }

  v44 = v83;
  v67 = sub_190D57160();

  if (v58)
  {
    v68 = sub_190D56ED0();

    if (v64)
    {
LABEL_46:
      v69 = sub_190D56ED0();

      goto LABEL_49;
    }
  }

  else
  {
    v68 = 0;
    if (v64)
    {
      goto LABEL_46;
    }
  }

  v69 = 0;
LABEL_49:
  v70 = objc_allocWithZone(MEMORY[0x1E69A5BD8]);
  v71 = [v70 initWithSender:0 time:v66 text:v15 messageSubject:0 fileTransferGUIDs:v67 flags:5 error:0 guid:v84 subject:0 associatedMessageGUID:v68 associatedMessageType:1000 associatedMessageRange:v80 messageSummaryInfo:v79 threadIdentifier:{0, v69}];

  if (v71)
  {
    v72 = [v44 transfer];
    if (v72)
    {
      [v72 setIMMessage_];
    }

    v73 = [v2 conversation];
    [v73 sendMessage:v71 newComposition:0];

    [objc_opt_self() donateStickerToRecents_];
    swift_unknownObjectRelease();
    return;
  }

  if (qword_1EAD51940 != -1)
  {
    goto LABEL_59;
  }

LABEL_54:
  v74 = sub_190D53040();
  __swift_project_value_buffer(v74, qword_1EAD9D9A8);
  v75 = sub_190D53020();
  v76 = sub_190D576A0();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_19020E000, v75, v76, "Creating message failed", v77, 2u);
    MEMORY[0x193AF7A40](v77, -1, -1);
  }
}

id sub_19087B834(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = &selRef_capStyle;
  v8 = [v3 cell];
  v9 = &selRef_applicationProxyForIdentifier_;
  v10 = [v8 balloonView];

  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = [v3 cell];
  v12 = [v11 superview];

  if (!v12)
  {

LABEL_6:
    if (qword_1EAD51940 != -1)
    {
LABEL_32:
      swift_once();
    }

    v15 = sub_190D53040();
    __swift_project_value_buffer(v15, qword_1EAD9D9A8);
    v16 = v3;
    v17 = sub_190D53020();
    v18 = sub_190D576A0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412546;
      v21 = [v16 *(v7 + 208)];
      v22 = [v21 v9[448]];

      *(v19 + 4) = v22;
      *v20 = v22;
      *(v19 + 12) = 2112;
      v23 = [v16 *(v7 + 208)];
      v24 = [v23 superview];

      *(v19 + 14) = v24;
      v20[1] = v24;
      _os_log_impl(&dword_19020E000, v17, v18, "Failed to find balloonView: %@ or collectionView: %@ for sticker reaction, no backwards compatibility location sent", v19, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54610);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v20, -1, -1);
      MEMORY[0x193AF7A40](v19, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD1D90;
    v109[0] = sub_190D56F10();
    v109[1] = v26;
    sub_190D58230();
    *(inited + 96) = MEMORY[0x1E69E6370];
    *(inited + 72) = 1;
    v27 = sub_190821644(inited);
    swift_setDeallocating();
    sub_19022EEA4(inited + 32, &qword_1EAD53A00);
    return v27;
  }

  v13 = [v3 chatItem];
  v14 = [v13 visibleAssociatedMessageChatItems];

  if (v14)
  {
    sub_1902188FC(0, &qword_1EAD44F88);
    v7 = sub_190D57180();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v105 = v3;
  v103 = a3;
  v101 = v10;
  v102 = a2;
  if (v7 >> 62)
  {
    v28 = sub_190D581C0();
  }

  else
  {
    v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = 0;
  v9 = 0;
  v3 = &selRef_isCharacterCountHidden;
  while (v28 != v29)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x193AF3B90](v29, v7);
    }

    else
    {
      if (v29 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v32 = *(v7 + 8 * v29 + 32);
    }

    v33 = v32;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      v35 = [v34 isReaction];

      v30 = v35;
    }

    else
    {

      v30 = 0;
    }

    ++v29;
    v31 = __OFADD__(v9, v30);
    v9 = (v9 + v30);
    if (v31)
    {
      goto LABEL_31;
    }
  }

  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v37 = result;

    [v37 stickerReactionSize];
    v99 = v38;
    v100 = v39;

    v40 = [v105 cell];
    v41 = v101;
    [v41 frame];
    [v40 convertRect:v12 toCoordinateSpace:?];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = objc_opt_self();
    v51 = [v105 chatItem];
    v52 = [v51 isFromMe];

    v53 = [v105 chatItem];
    [v53 stickerReactionInsets];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;

    [v50 locationForStickerReactionWithParentFrame:v9 reactionIndex:v52 ^ 1 parentIsFromMe:v43 insets:{v45, v47, v49, v55, v57, v59, v61}];
    [v12 convertPoint:0 toView:{v99 * 0.5 + v62, v100 * 0.5 + v63}];
    v65 = v64;
    v67 = v66;
    [v50 rotationForGUIDHash_];
    v104 = v68;
    [a1 calculatePreviewScaleWithTargetSize_];
    v70 = v69;
    v71 = [v105 cell];
    [v41 frame];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;

    [v71 convertRect:0 toView:{v73, v75, v77, v79}];
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;

    v110.origin.x = v81;
    v110.origin.y = v83;
    v110.size.width = v85;
    v110.size.height = v87;
    v88 = (v65 - v81) / CGRectGetWidth(v110);
    v111.origin.x = v81;
    v111.origin.y = v83;
    v111.size.width = v85;
    v111.size.height = v87;
    v89 = (v67 - v83) / CGRectGetHeight(v111);
    v90 = [v105 chatItem];
    [v90 size];
    v92 = v91;

    v93 = [a1 initialFrameIndex];
    v94 = [a1 getSafeExternalURI];
    if (!v94)
    {
      sub_190D56F10();
      v94 = sub_190D56ED0();
    }

    v95 = [objc_opt_self() userInfoDictionaryWithLayoutIntent:0 parentPreviewWidth:v93 xScalar:v94 yScalar:v92 scale:v88 rotation:v89 initialFrameIndex:v70 externalURI:v104];

    v96 = sub_190D56D90();
    *&v107 = sub_190D56F10();
    *(&v107 + 1) = v97;
    sub_190D58230();
    v108 = MEMORY[0x1E69E6370];
    LOBYTE(v107) = 1;
    sub_190824530(&v107, v106);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_190C1BFD0(v106, v109, isUniquelyReferenced_nonNull_native);

    sub_19084CFD0(v109);
    return v96;
  }

  __break(1u);
  return result;
}

id sub_19087C084()
{
  v5[1] = *MEMORY[0x1E69E9840];
  sub_1902188FC(0, &qword_1EAD54EF0);
  v1 = MEMORY[0x193AF3590](MEMORY[0x1E69E7CC0]);
  v5[0] = v1;
  v2 = [v0 superFormatText_];
  v3 = v5[0];

  if (v3)
  {
    v5[0] = 0;
    sub_190D57170();
  }

  return v2;
}

void __swiftcall CKStickerReactionSession.init()(CKStickerReactionSession *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_19087C300()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D9A8);
  __swift_project_value_buffer(v0, qword_1EAD9D9A8);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_19087C374(uint64_t a1, id a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if ([a2 canSendComposition:a1 error:v6])
  {
    v2 = v6[0];
    return 0;
  }

  else
  {
    v4 = v6[0];
    v5 = sub_190D51420();

    swift_willThrow();
    return v5;
  }
}

uint64_t CKTranscriptBackground.posterData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData);
  sub_19087C5A8(v1, *(v0 + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData + 8));
  return v1;
}

uint64_t sub_19087C5A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19083B680(a1, a2);
  }

  return a1;
}

id sub_19087C5C8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v3;
    sub_19083B680(*v3, *(v3 + 8));
    v7 = sub_190D51660();
    sub_19029064C(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t CKTranscriptBackground.watchData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData);
  sub_19087C5A8(v1, *(v0 + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData + 8));
  return v1;
}

void *CKTranscriptBackground.editorConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration);
  v2 = v1;
  return v1;
}

uint64_t CKTranscriptBackground.extensionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier);
  sub_190D52690();
  return v1;
}

uint64_t CKTranscriptBackground.fileName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName);
  sub_190D52690();
  return v1;
}

id sub_19087C788()
{
  sub_190D52690();
  v0 = sub_190D56ED0();

  return v0;
}

uint64_t CKTranscriptBackground.backgroundIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier);
  sub_190D52690();
  return v1;
}

id CKTranscriptBackground.__allocating_init(posterFileURL:fileName:backgroundIdentifier:extensionIdentifier:extensionIsPlayground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11 = sub_190D515F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = objc_allocWithZone(v8);
  v14 = sub_190D51610();
  v16 = v15;
  v17 = OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL;
  (*(v12 + 16))(&v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL], a1, v11);
  (*(v12 + 56))(&v13[v17], 0, 1, v11);
  v18 = &v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
  *v18 = v14;
  v18[1] = v16;
  *&v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData] = xmmword_190DD9310;
  v19 = &v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
  *v19 = a2;
  v19[1] = a3;
  v20 = &v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
  *v20 = a4;
  v20[1] = a5;
  v21 = &v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
  *v21 = a6;
  v21[1] = a7;
  v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground] = a8 & 1;
  *&v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration] = 0;
  v30.receiver = v13;
  v30.super_class = v8;
  v22 = objc_msgSendSuper2(&v30, sel_init);
  (*(v12 + 8))(a1, v11);
  return v22;
}

id CKTranscriptBackground.init(posterFileURL:fileName:backgroundIdentifier:extensionIdentifier:extensionIsPlayground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v13 = sub_190D515F0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_190D51610();
  v17 = v16;
  v18 = OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL;
  (*(v14 + 16))(&v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL], a1, v13);
  (*(v14 + 56))(&v9[v18], 0, 1, v13);
  v19 = &v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
  *v19 = v15;
  v19[1] = v17;
  *&v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData] = xmmword_190DD9310;
  v20 = &v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
  *v20 = a2;
  v20[1] = a3;
  v21 = &v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
  *v21 = a4;
  v21[1] = a5;
  v22 = &v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
  *v22 = a6;
  v22[1] = a7;
  v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground] = a8 & 1;
  *&v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration] = 0;
  v30.receiver = v9;
  v30.super_class = type metadata accessor for CKTranscriptBackground();
  v23 = objc_msgSendSuper2(&v30, sel_init);
  (*(v14 + 8))(a1, v13);
  return v23;
}

id CKTranscriptBackground.__allocating_init(watchFileURL:fileName:backgroundIdentifier:extensionIdentifier:extensionIsPlayground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11 = sub_190D515F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = objc_allocWithZone(v8);
  v14 = sub_190D51610();
  v16 = v15;
  v17 = OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL;
  (*(v12 + 16))(&v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL], a1, v11);
  (*(v12 + 56))(&v13[v17], 0, 1, v11);
  *&v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData] = xmmword_190DD9310;
  v18 = &v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData];
  *v18 = v14;
  v18[1] = v16;
  v19 = &v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
  *v19 = a2;
  v19[1] = a3;
  v20 = &v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
  *v20 = a4;
  v20[1] = a5;
  v21 = &v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
  *v21 = a6;
  v21[1] = a7;
  v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground] = a8 & 1;
  *&v13[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration] = 0;
  v30.receiver = v13;
  v30.super_class = v8;
  v22 = objc_msgSendSuper2(&v30, sel_init);
  (*(v12 + 8))(a1, v11);
  return v22;
}

id CKTranscriptBackground.init(watchFileURL:fileName:backgroundIdentifier:extensionIdentifier:extensionIsPlayground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v13 = sub_190D515F0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_190D51610();
  v17 = v16;
  v18 = OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL;
  (*(v14 + 16))(&v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL], a1, v13);
  (*(v14 + 56))(&v9[v18], 0, 1, v13);
  *&v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData] = xmmword_190DD9310;
  v19 = &v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData];
  *v19 = v15;
  v19[1] = v17;
  v20 = &v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
  *v20 = a2;
  v20[1] = a3;
  v21 = &v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
  *v21 = a4;
  v21[1] = a5;
  v22 = &v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
  *v22 = a6;
  v22[1] = a7;
  v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground] = a8 & 1;
  *&v9[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration] = 0;
  v30.receiver = v9;
  v30.super_class = type metadata accessor for CKTranscriptBackground();
  v23 = objc_msgSendSuper2(&v30, sel_init);
  (*(v14 + 8))(a1, v13);
  return v23;
}

uint64_t sub_19087D8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = sub_190D515F0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D515B0();
  v13 = sub_190D56F10();
  v15 = v14;
  v16 = sub_190D56F10();
  v18 = v17;
  v19 = sub_190D56F10();
  return a8(v12, v13, v15, v16, v18, v19, v20, a7);
}

id CKTranscriptBackground.__allocating_init(posterData:watchData:backgroundIdentifier:fileName:extensionIdentifier:extensionIsPlayground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v18 = objc_allocWithZone(v11);
  v19 = OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL;
  v20 = sub_190D515F0();
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  v21 = &v18[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
  *v21 = a1;
  v21[1] = a2;
  v22 = &v18[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData];
  *v22 = a3;
  v22[1] = a4;
  v23 = &v18[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
  *v23 = a7;
  v23[1] = a8;
  v24 = &v18[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
  *v24 = a5;
  v24[1] = a6;
  v25 = &v18[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
  *v25 = a9;
  v25[1] = a10;
  v18[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground] = a11;
  *&v18[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration] = 0;
  v29.receiver = v18;
  v29.super_class = v11;
  return objc_msgSendSuper2(&v29, sel_init);
}

id CKTranscriptBackground.init(posterData:watchData:backgroundIdentifier:fileName:extensionIdentifier:extensionIsPlayground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v19 = OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL;
  v20 = sub_190D515F0();
  (*(*(v20 - 8) + 56))(&v11[v19], 1, 1, v20);
  v21 = &v11[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
  *v21 = a1;
  v21[1] = a2;
  v22 = &v11[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData];
  *v22 = a3;
  v22[1] = a4;
  v23 = &v11[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
  *v23 = a7;
  v23[1] = a8;
  v24 = &v11[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
  *v24 = a5;
  v24[1] = a6;
  v25 = &v11[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
  *v25 = a9;
  v25[1] = a10;
  v11[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground] = a11;
  *&v11[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration] = 0;
  v28.receiver = v11;
  v28.super_class = type metadata accessor for CKTranscriptBackground();
  return objc_msgSendSuper2(&v28, sel_init);
}

id CKTranscriptBackground.__allocating_init(editorConfiguration:archivedPosterData:watchData:backgroundIdentifier:fileName:extensionIdentifier:extensionIsPlayground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v19 = objc_allocWithZone(v12);
  v20 = OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL;
  v21 = sub_190D515F0();
  (*(*(v21 - 8) + 56))(&v19[v20], 1, 1, v21);
  *&v19[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration] = a1;
  v22 = &v19[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
  *v22 = a2;
  v22[1] = a3;
  v23 = &v19[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData];
  *v23 = a4;
  v23[1] = a5;
  v24 = &v19[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
  *v24 = a8;
  v24[1] = a9;
  v25 = &v19[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
  *v25 = a6;
  v25[1] = a7;
  v26 = &v19[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
  *v26 = a10;
  v26[1] = a11;
  v19[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground] = a12;
  v30.receiver = v19;
  v30.super_class = v12;
  return objc_msgSendSuper2(&v30, sel_init);
}

id CKTranscriptBackground.init(editorConfiguration:archivedPosterData:watchData:backgroundIdentifier:fileName:extensionIdentifier:extensionIsPlayground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v19 = OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL;
  v20 = sub_190D515F0();
  (*(*(v20 - 8) + 56))(&v12[v19], 1, 1, v20);
  *&v12[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration] = a1;
  v21 = &v12[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
  *v21 = a2;
  v21[1] = a3;
  v22 = &v12[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData];
  *v22 = a4;
  v22[1] = a5;
  v23 = &v12[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
  *v23 = a8;
  v23[1] = a9;
  v24 = &v12[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
  *v24 = a6;
  v24[1] = a7;
  v25 = &v12[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
  *v25 = a10;
  v25[1] = a11;
  v12[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground] = a12;
  v29.receiver = v12;
  v29.super_class = type metadata accessor for CKTranscriptBackground();
  return objc_msgSendSuper2(&v29, sel_init);
}

void sub_19087E2FC(uint64_t a1, void (*a2)(void), uint64_t a3, double a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = *&v4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration];
  v9 = &v4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
  v10 = *&v4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData + 8];
  if (v10 >> 60 == 15)
  {
    v11 = v8;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  v12 = *v9;
  if (v8)
  {
    v14 = v8;
    goto LABEL_7;
  }

  gotLoadHelper_x8__OBJC_CLASS___PRSPosterArchiver(a4);
  v30 = objc_opt_self();
  sub_19083B680(v12, v10);
  v31 = sub_190D51660();
  aBlock[0] = 0;
  v8 = [v30 unarchiveConfigurationFromData:v31 format:-1 error:aBlock];

  v32 = aBlock[0];
  if (!v8)
  {
    v43 = v32;
    v44 = sub_190D51420();

    swift_willThrow();
    sub_19029064C(v12, v10);

    goto LABEL_21;
  }

  sub_19029064C(v12, v10);
LABEL_3:
  v12 = *v9;
  v10 = v9[1];
  v13 = v8;
  v14 = v13;
  if (v10 >> 60 == 15)
  {

LABEL_22:
    (a2)(0);
    goto LABEL_23;
  }

LABEL_7:
  sub_19083B680(v12, v10);

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  if (a1 < 1)
  {
    v51 = v4;
    v20 = qword_1EAD51AD0;
    swift_retain_n();
    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_190D53040();
    __swift_project_value_buffer(v21, qword_1EAD9DCD0);
    v22 = sub_190D53020();
    v23 = sub_190D576C0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = 0;
      *(v24 + 12) = 2048;
      *(v24 + 14) = a1;
      _os_log_impl(&dword_19020E000, v22, v23, "Attempted %ld times to create a watch snapshot, but failed (max retries allowed: %ld). Returning nil.", v24, 0x16u);
      MEMORY[0x193AF7A40](v24, -1, -1);
    }

    v49 = *&v51[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
    v50 = *&v51[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier + 8];
    v25 = *&v51[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName + 8];
    v47 = *&v51[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
    sub_190D52690();
    v48 = v25;
    sub_190D52690();
    v26 = [v14 providerBundleIdentifier];
    if (v26)
    {
      v27 = v26;
      v28 = sub_190D56F10();
      v45 = v29;
      v46 = v28;
    }

    else
    {
      v45 = *&v51[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier + 8];
      v46 = *&v51[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
      sub_190D52690();
    }

    v33 = v51[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground];
    v34 = type metadata accessor for CKTranscriptBackground();
    v35 = objc_allocWithZone(v34);
    v36 = OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL;
    v37 = sub_190D515F0();
    (*(*(v37 - 8) + 56))(&v35[v36], 1, 1, v37);
    v38 = &v35[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
    *v38 = v12;
    v38[1] = v10;
    *&v35[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData] = xmmword_190DD9310;
    v39 = &v35[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
    *v39 = v47;
    v39[1] = v48;
    v40 = &v35[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
    *v40 = v49;
    v40[1] = v50;
    v41 = &v35[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
    *v41 = v46;
    v41[1] = v45;
    v35[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground] = v33;
    *&v35[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration] = 0;
    sub_19083B680(v12, v10);
    v53.receiver = v35;
    v53.super_class = v34;
    v42 = objc_msgSendSuper2(&v53, sel_init);
    a2();
  }

  else
  {
    v16 = objc_opt_self();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = v4;
    v17[4] = v14;
    v17[5] = v12;
    v17[6] = v10;
    v17[7] = a1;
    v17[8] = sub_190233B04;
    v17[9] = v15;
    aBlock[4] = sub_19087F2B0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19087F0F0;
    aBlock[3] = &block_descriptor_12;
    v18 = _Block_copy(aBlock);
    sub_190D50920();
    sub_19087C5A8(v12, v10);
    sub_190D50920();
    v19 = v4;
    v14 = v14;
    sub_190D50920();

    [v16 createWatchSnapshotFromConfiguration:v14 completion:v18];
    _Block_release(v18);
  }

  sub_19029064C(v12, v10);
LABEL_23:
}

void sub_19087E8FC(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8, void (*a9)(void), uint64_t a10)
{
  v100 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (a1)
    {
      v22 = a1;
      v23 = UIImagePNGRepresentation(v22);
      if (v23)
      {
        v24 = v23;
        v25 = sub_190D51670();
        v27 = v26;

        aBlock[0] = 0;
        v28 = [a5 pr:aBlock loadTitleStyleConfigurationWithError:?];
        v87 = v28;
        if (v28)
        {
          v29 = v28;
          v30 = aBlock[0];
          [v29 contentsLuminance];
          v32 = v31;
        }

        else
        {
          v58 = aBlock[0];
          v59 = sub_190D51420();

          swift_willThrow();
          v32 = 0.5;
        }

        v60 = PIParallaxStyleTonalityFromMedianLuminance();
        v89 = v25;
        v61 = v27;
        v62 = sub_190D51660();
        v63 = [a5 providerBundleIdentifier];
        if (v63)
        {
          v64 = v63;
          sub_190D56F10();
        }

        else
        {
          sub_190D52690();
        }

        v65 = objc_opt_self();
        v66 = sub_190D56ED0();

        v67 = [v65 payloadDataFor:v62 luminance:v60 == 3 isHighKey:v66 extensionIdentfier:v32];

        v68 = sub_190D51670();
        v92 = v69;
        v94 = v68;

        sub_19083B6D4(v89, v61);
        goto LABEL_27;
      }
    }

    v92 = 0xF000000000000000;
    v94 = 0;
LABEL_27:
    v70 = *&a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier + 8];
    v71 = *&a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName + 8];
    v88 = *&a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
    v90 = *&a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
    sub_190D52690();
    sub_190D52690();
    v72 = [a5 providerBundleIdentifier];
    if (v72)
    {
      v73 = v72;
      v86 = sub_190D56F10();
      v75 = v74;
    }

    else
    {
      v75 = *&a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier + 8];
      v86 = *&a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
      sub_190D52690();
    }

    v76 = a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground];
    v77 = type metadata accessor for CKTranscriptBackground();
    v78 = objc_allocWithZone(v77);
    v79 = OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL;
    v80 = sub_190D515F0();
    (*(*(v80 - 8) + 56))(&v78[v79], 1, 1, v80);
    v81 = &v78[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
    *v81 = a6;
    v81[1] = a7;
    v82 = &v78[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData];
    *v82 = v94;
    v82[1] = v92;
    v83 = &v78[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
    *v83 = v88;
    v83[1] = v71;
    v84 = &v78[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
    *v84 = v90;
    v84[1] = v70;
    v85 = &v78[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
    *v85 = v86;
    v85[1] = v75;
    v78[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground] = v76;
    *&v78[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration] = 0;
    sub_19087C5A8(v94, v92);
    sub_19083B680(a6, a7);
    v99.receiver = v78;
    v99.super_class = v77;
    v57 = objc_msgSendSuper2(&v99, sel_init);
    a9();
    sub_19029064C(v94, v92);
    goto LABEL_31;
  }

  if (qword_1EAD51AD0 != -1)
  {
    swift_once();
  }

  v15 = sub_190D53040();
  __swift_project_value_buffer(v15, qword_1EAD9DCD0);
  v16 = sub_190D53020();
  v17 = sub_190D576C0();
  if (!os_log_type_enabled(v16, v17))
  {

    v19 = a3 + 1;
    if (!__OFADD__(a3, 1))
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  v18 = swift_slowAlloc();
  *v18 = 134217984;
  v19 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    goto LABEL_33;
  }

  *(v18 + 4) = v19;
  v20 = v17;
  v21 = v18;
  _os_log_impl(&dword_19020E000, v16, v20, "Got an error while trying to generate snapshot, trying again. New attempt count: %ld", v18, 0xCu);
  MEMORY[0x193AF7A40](v21, -1, -1);

LABEL_12:
  if (v19 < a8)
  {
    v33 = objc_opt_self();
    v34 = swift_allocObject();
    v34[2] = v19;
    v34[3] = a4;
    v34[4] = a5;
    v34[5] = a6;
    v34[6] = a7;
    v34[7] = a8;
    v34[8] = a9;
    v34[9] = a10;
    aBlock[4] = sub_19087FB78;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19087F0F0;
    aBlock[3] = &block_descriptor_27;
    v35 = _Block_copy(aBlock);
    sub_19083B680(a6, a7);
    v36 = a4;
    v37 = a5;
    sub_190D50920();

    [v33 createWatchSnapshotFromConfiguration:v37 completion:v35];
    _Block_release(v35);
    return;
  }

  v38 = sub_190D53020();
  v39 = sub_190D576C0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134218240;
    *(v40 + 4) = v19;
    *(v40 + 12) = 2048;
    *(v40 + 14) = a8;
    _os_log_impl(&dword_19020E000, v38, v39, "Attempted %ld times to create a watch snapshot, but failed (max retries allowed: %ld). Returning nil.", v40, 0x16u);
    MEMORY[0x193AF7A40](v40, -1, -1);
  }

  v41 = *&a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier + 8];
  v42 = *&a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName + 8];
  v91 = *&a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
  v93 = *&a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
  sub_190D52690();
  sub_190D52690();
  v43 = [a5 providerBundleIdentifier];
  if (v43)
  {
    v44 = v43;
    v45 = sub_190D56F10();
    v47 = v46;
  }

  else
  {
    v45 = *&a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
    v47 = *&a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier + 8];
    sub_190D52690();
  }

  v48 = a4[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground];
  v49 = type metadata accessor for CKTranscriptBackground();
  v50 = objc_allocWithZone(v49);
  v51 = OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL;
  v52 = sub_190D515F0();
  (*(*(v52 - 8) + 56))(&v50[v51], 1, 1, v52);
  v53 = &v50[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
  *v53 = a6;
  v53[1] = a7;
  *&v50[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData] = xmmword_190DD9310;
  v54 = &v50[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
  *v54 = v91;
  v54[1] = v42;
  v55 = &v50[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
  *v55 = v93;
  v55[1] = v41;
  v56 = &v50[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
  *v56 = v45;
  v56[1] = v47;
  v50[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground] = v48;
  *&v50[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration] = 0;
  sub_19083B680(a6, a7);
  v98.receiver = v50;
  v98.super_class = v49;
  v57 = objc_msgSendSuper2(&v98, sel_init);
  a9();
LABEL_31:
}

void sub_19087F0F0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_190D50920();
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id CKTranscriptBackground.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTranscriptBackground();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CKTranscriptBackground()
{
  result = qword_1EAD54EF8;
  if (!qword_1EAD54EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19087F2BC()
{
  sub_19087F470();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19087F470()
{
  if (!qword_1ED777010)
  {
    sub_190D515F0();
    v0 = sub_190D58050();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED777010);
    }
  }
}

void sub_19087F4C8(uint64_t a1, _BYTE *a2, void *aBlock, double a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = *&a2[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration];
  v8 = &a2[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
  v9 = *&a2[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData + 8];
  if (v9 >> 60 == 15)
  {
    _Block_copy(aBlock);
    v10 = v7;
    if (v7)
    {
LABEL_3:
      v11 = v7;
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  if (!v7)
  {
    v23 = *v8;
    gotLoadHelper_x8__OBJC_CLASS___PRSPosterArchiver(a4);
    v24 = objc_opt_self();
    _Block_copy(aBlock);
    sub_19087C5A8(v23, v9);
    v25 = sub_190D51660();
    aBlocka[0] = 0;
    v7 = [v24 unarchiveConfigurationFromData:v25 format:-1 error:aBlocka];

    v26 = aBlocka[0];
    if (v7)
    {
      sub_19029064C(v23, v9);
      goto LABEL_3;
    }

    v37 = v26;
    v38 = sub_190D51420();

    swift_willThrow();
    sub_19029064C(v23, v9);

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v11 = v7;
  _Block_copy(aBlock);
LABEL_6:
  v12 = v11;
  v13 = v12;
  v14 = *(v8 + 1);
  if (v14 >> 60 == 15)
  {

    v13 = v7;
LABEL_20:
    (*(aBlock + 2))(aBlock, 0);
    goto LABEL_24;
  }

  v15 = *v8;
  sub_19083B680(*v8, *(v8 + 1));

  v16 = swift_allocObject();
  *(v16 + 16) = aBlock;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_19084CED8;
  *(v17 + 24) = v16;
  if (a1 < 1)
  {
    _Block_copy(aBlock);
    _Block_copy(aBlock);
    v27 = qword_1EAD51AD0;
    sub_190D50920();
    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_190D53040();
    __swift_project_value_buffer(v28, qword_1EAD9DCD0);
    v29 = sub_190D53020();
    v30 = sub_190D576C0();
    v53 = v15;
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134218240;
      *(v31 + 4) = 0;
      *(v31 + 12) = 2048;
      *(v31 + 14) = a1;
      _os_log_impl(&dword_19020E000, v29, v30, "Attempted %ld times to create a watch snapshot, but failed (max retries allowed: %ld). Returning nil.", v31, 0x16u);
      MEMORY[0x193AF7A40](v31, -1, -1);
    }

    v52 = *&a2[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
    v32 = *&a2[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName + 8];
    v50 = *&a2[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
    v54 = *&a2[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier + 8];
    sub_190D52690();
    v51 = v32;
    sub_190D52690();
    v33 = [v13 providerBundleIdentifier];
    if (v33)
    {
      v34 = v33;
      v49 = sub_190D56F10();
      v36 = v35;
    }

    else
    {
      v36 = *&a2[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier + 8];
      v49 = *&a2[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
      sub_190D52690();
    }

    v39 = a2[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground];
    v40 = type metadata accessor for CKTranscriptBackground();
    v41 = objc_allocWithZone(v40);
    v42 = OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL;
    v43 = sub_190D515F0();
    (*(*(v43 - 8) + 56))(&v41[v42], 1, 1, v43);
    v44 = &v41[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
    *v44 = v53;
    v44[1] = v14;
    *&v41[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData] = xmmword_190DD9310;
    v45 = &v41[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
    *v45 = v50;
    v45[1] = v51;
    v46 = &v41[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
    *v46 = v52;
    v46[1] = v54;
    v47 = &v41[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
    *v47 = v49;
    v47[1] = v36;
    v41[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground] = v39;
    *&v41[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration] = 0;
    sub_19083B680(v53, v14);
    v56.receiver = v41;
    v56.super_class = v40;
    v48 = objc_msgSendSuper2(&v56, sel_init);
    (*(aBlock + 2))(aBlock, v48);

    _Block_release(aBlock);
    v22 = v53;
  }

  else
  {
    v18 = objc_opt_self();
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = a2;
    v19[4] = v13;
    v19[5] = v15;
    v19[6] = v14;
    v19[7] = a1;
    v19[8] = sub_19087FB7C;
    v19[9] = v17;
    aBlocka[4] = sub_19087FB78;
    aBlocka[5] = v19;
    aBlocka[0] = MEMORY[0x1E69E9820];
    aBlocka[1] = 1107296256;
    aBlocka[2] = sub_19087F0F0;
    aBlocka[3] = &block_descriptor_20;
    v20 = _Block_copy(aBlocka);
    _Block_copy(aBlock);
    _Block_copy(aBlock);
    sub_19087C5A8(v15, v14);
    sub_190D50920();
    v21 = a2;
    v13 = v13;
    sub_190D50920();

    [v18 createWatchSnapshotFromConfiguration:v13 completion:v20];
    _Block_release(v20);

    _Block_release(aBlock);
    v22 = v15;
  }

  sub_19029064C(v22, v14);
LABEL_24:

  _Block_release(aBlock);
}

uint64_t objectdestroy_2Tm_0()
{
  sub_19083B6D4(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19087FB80()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD54F08);
  __swift_project_value_buffer(v0, qword_1EAD54F08);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_19087FBEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v47 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v46 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v46 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = sub_190D51840();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v19 + 56;
  v20(v17, 1, 1, v18);
  v54 = v20;
  v20(v14, 1, 1, v18);
  v22 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v22 setFormatOptions_];
  v23 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v23 setFormatOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  v25 = 0;
  v26 = 0;
  *(inited + 16) = xmmword_190DD5CE0;
  *(inited + 32) = v22;
  v48 = inited + 32;
  v49 = v11;
  v27 = inited & 0xC000000000000001;
  v52 = inited;
  v53 = v21;
  *(inited + 40) = v23;
  v28 = (v21 - 8);
  v55 = v14;
  do
  {
    v57 = v25;
    if (v27)
    {
      v29 = MEMORY[0x193AF3B90](v26, v52);
    }

    else
    {
      v29 = *(v48 + 8 * v26);
    }

    v30 = v29;
    sub_190880754(v17, v11);
    v31 = *v28;
    v32 = (*v28)(v11, 1, v18);
    sub_19022AEAC(v11);
    if (v32 == 1)
    {
      v33 = v6;
      v34 = [v56 startTime];
      if (!v34)
      {
        sub_190D56F10();
        v34 = sub_190D56ED0();
      }

      v35 = v27;
      v36 = [v30 dateFromString_];

      if (v36)
      {
        v37 = v50;
        sub_190D517E0();

        v38 = 0;
        v14 = v55;
      }

      else
      {
        v38 = 1;
        v14 = v55;
        v37 = v50;
      }

      sub_19022AEAC(v17);
      v54(v37, v38, 1, v18);
      sub_19088090C(v37, v17);
      v27 = v35;
      v6 = v33;
      v11 = v49;
    }

    sub_190880754(v14, v6);
    if (v31(v6, 1, v18) == 1)
    {
      sub_19022AEAC(v6);
      v39 = [v56 endTime];
      if (!v39)
      {
        sub_190D56F10();
        v39 = sub_190D56ED0();
      }

      v40 = [v30 dateFromString_];

      if (v40)
      {
        v41 = v51;
        sub_190D517E0();

        v14 = v55;
        sub_19022AEAC(v55);
        v42 = 0;
      }

      else
      {
        v14 = v55;
        sub_19022AEAC(v55);

        v42 = 1;
        v41 = v51;
      }

      v54(v41, v42, 1, v18);
      sub_19088090C(v41, v14);
    }

    else
    {

      sub_19022AEAC(v6);
    }

    v25 = 1;
    v26 = 1;
  }

  while ((v57 & 1) == 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  v43 = v47;
  sub_19088090C(v17, v47);
  v44 = _s10EventTimesVMa();
  return sub_19088090C(v14, v43 + *(v44 + 20));
}

uint64_t CKSuggestedActionsHandler.createCalendarEvent(_:)(id a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v52 - v6;
  v8 = sub_190D51840();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v54 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v52 - v12;
  v14 = _s10EventTimesVMa();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19087FBEC(a1, v16);
  sub_190880754(v16, v7);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  v52[1] = v1;
  v53 = a1;
  v18 = v9;
  v19 = *(v9 + 32);
  v19(v13, v7, v8);
  v7 = v55;
  sub_190880754(&v16[*(v14 + 20)], v55);
  if (v17(v7, 1, v8) == 1)
  {
    (*(v9 + 8))(v13, v8);
    a1 = v53;
LABEL_4:
    sub_19022AEAC(v7);
    if (qword_1EAD51948 != -1)
    {
      swift_once();
    }

    v20 = sub_190D53040();
    __swift_project_value_buffer(v20, qword_1EAD54F08);
    v21 = a1;
    v22 = sub_190D53020();
    v23 = sub_190D57690();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v56[0] = v25;
      *v24 = 136315394;
      v26 = [v21 startTime];
      v27 = sub_190D56F10();
      v29 = v28;

      v30 = sub_19021D9F8(v27, v29, v56);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      v31 = [v21 endTime];
      v32 = sub_190D56F10();
      v34 = v33;

      v35 = sub_19021D9F8(v32, v34, v56);

      *(v24 + 14) = v35;
      _os_log_impl(&dword_19020E000, v22, v23, "startTime: %s endTime: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v25, -1, -1);
      MEMORY[0x193AF7A40](v24, -1, -1);
    }

    return sub_1908807C4(v16);
  }

  v36 = v54;
  v55 = v8;
  v19(v54, v7, v8);
  v37 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  v38 = [objc_opt_self() eventWithEventStore_];
  v39 = v53;
  v40 = [v53 title];
  if (!v40)
  {
    sub_190D56F10();
    v40 = sub_190D56ED0();
    v36 = v54;
  }

  [v38 setTitle_];

  v41 = v13;
  v42 = sub_190D51780();
  [v38 setStartDate_];

  v43 = sub_190D51780();
  [v38 setEndDate_];

  v44 = [v39 calDescription];
  [v38 setNotes_];

  gotLoadHelper_x8__OBJC_CLASS___EKEventEditViewController(v45);
  v47 = [objc_allocWithZone(*(v46 + 2952)) init];
  [v47 setEvent_];
  [v47 setEventStore_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didRequestCreateCalendarEvent_];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v49 = *(v18 + 8);
  v50 = v55;
  v49(v36, v55);
  v49(v41, v50);
  return sub_1908807C4(v16);
}

uint64_t _s10EventTimesVMa()
{
  result = qword_1EAD54F20;
  if (!qword_1EAD54F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190880754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1908807C4(uint64_t a1)
{
  v2 = _s10EventTimesVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_190880848()
{
  sub_1908808B4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1908808B4()
{
  if (!qword_1EAD54F30)
  {
    sub_190D51840();
    v0 = sub_190D58050();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD54F30);
    }
  }
}

uint64_t sub_19088090C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19088097C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_19082DBB4(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_19021834C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_19082DBB4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_190880A90(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_190D58390();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x193AF3B90](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_190D58360();
      sub_190D583B0();
      sub_190D583C0();
      sub_190D58370();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_190D581C0();
    sub_190D58390();
  }

  return v8;
}

uint64_t sub_190880C0C(uint64_t a1, unint64_t *a2)
{
  v8 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  sub_190D58390();
  if (!v4)
  {
    return v8;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_19021834C(i, v7);
    sub_1902188FC(0, a2);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_190D58360();
    sub_190D583B0();
    sub_190D583C0();
    sub_190D58370();
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t MessageQuery.entities(for:)(uint64_t a1)
{
  v1[70] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54F40);
  v1[71] = swift_task_alloc();
  v2 = type metadata accessor for ConversationEntity();
  v1[72] = v2;
  v1[73] = *(v2 - 8);
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190880E70, 0, 0);
}

uint64_t sub_190880E70()
{
  v1 = *(v0 + 560);
  *(v0 + 552) = MEMORY[0x1E69E7CC8];
  v2 = v1[2];
  *(v0 + 624) = v2;
  if (v2)
  {
    *(v0 + 632) = sub_190D572A0();
    *(v0 + 648) = MEMORY[0x1E69E7CC0];
    *(v0 + 640) = 0;
    v3 = v1[4];
    *(v0 + 656) = v3;
    v4 = v1[5];
    *(v0 + 664) = v4;
    v5 = objc_allocWithZone(MEMORY[0x1E69A8148]);
    sub_190D52690();
    v6 = sub_190D56ED0();
    v7 = [v5 initWithEncodedMessagePartGUID_];

    if (v7)
    {
      v8 = [v7 messageGUID];
      v3 = sub_190D56F10();
      v4 = v9;

      v10 = [v7 partNumber];
      if (v10 != sub_190D50E40())
      {
        v14 = [v7 partNumber];

        v15 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      sub_190D52690();
    }

    v14 = 0;
    v15 = 1;
LABEL_11:
    *(v0 + 688) = v4;
    *(v0 + 680) = v3;
    *(v0 + 545) = v15;
    *(v0 + 672) = v14;
    v16 = *(v0 + 616);
    v17 = *(v0 + 608);
    v18 = sub_190D572E0();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v16, 1, 1, v18);
    sub_190D52690();
    v20 = sub_190D57290();
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E85E0];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v3;
    v21[5] = v4;
    sub_19022FD14(v16, v17, &qword_1EAD5BAF0);
    v23 = (*(v19 + 48))(v17, 1, v18);
    sub_190D50920();
    v24 = *(v0 + 608);
    if (v23 == 1)
    {
      sub_19022EEA4(*(v0 + 608), &qword_1EAD5BAF0);
    }

    else
    {
      sub_190D572D0();
      (*(v19 + 8))(v24, v18);
    }

    v25 = v21[2];
    swift_unknownObjectRetain();

    if (v25)
    {
      swift_getObjectType();
      v26 = sub_190D57240();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    sub_19022EEA4(*(v0 + 616), &qword_1EAD5BAF0);
    v29 = swift_allocObject();
    *(v29 + 16) = &unk_190DD93D0;
    *(v29 + 24) = v21;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54F50);
    if (v28 | v26)
    {
      *(v0 + 496) = 0;
      *(v0 + 504) = 0;
      *(v0 + 512) = v26;
      *(v0 + 520) = v28;
    }

    v31 = swift_task_create();
    *(v0 + 696) = v31;
    v32 = swift_task_alloc();
    *(v0 + 704) = v32;
    *v32 = v0;
    v32[1] = sub_19088130C;
    v33 = MEMORY[0x1E69E73E0];
    v34 = MEMORY[0x1E69E7410];

    return MEMORY[0x1EEE6DA20](v0 + 528, v31, v30, v33, v34);
  }

  v11 = *(v0 + 8);
  v12 = MEMORY[0x1E69E7CC0];

  return v11(v12);
}

uint64_t sub_19088130C()
{

  return MEMORY[0x1EEE6DFA0](sub_190881424, 0, 0);
}

uint64_t sub_190881424(uint64_t a1)
{
  v2 = *(v1 + 528);
  *(v1 + 712) = v2;
  if (*(v1 + 544))
  {
    v3 = MEMORY[0x1E69E73E0];
    v4 = MEMORY[0x1E69E7410];

    return MEMORY[0x1EEE6C240](a1, v3, v4);
  }

  v5 = *(v1 + 536);
  if (v5)
  {
    v6 = sub_190880C0C(*(v1 + 536), &qword_1EAD44EE0);

    if (v6)
    {
      if (v6 >> 62)
      {
        if (sub_190D581C0())
        {
LABEL_9:
          if ((v6 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x193AF3B90](0, v6);
            if (!(v6 >> 62))
            {
              v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_12;
            }
          }

          else
          {
            v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v7)
            {
              v5 = *(v6 + 32);
LABEL_12:
              *(v1 + 720) = v5;

              if (v7 >= 2)
              {
                if (qword_1EAD521B0 != -1)
                {
                  swift_once();
                }

                v8 = sub_190D53040();
                __swift_project_value_buffer(v8, qword_1EAD9E840);
                v9 = sub_190D53020();
                v10 = sub_190D576A0();
                if (os_log_type_enabled(v9, v10))
                {
                  v11 = swift_slowAlloc();
                  *v11 = 0;
                  _os_log_impl(&dword_19020E000, v9, v10, "Multiple matching conversations found for chat, arbitrarily selecting the first one", v11, 2u);
                  MEMORY[0x193AF7A40](v11, -1, -1);
                }
              }

              v12 = swift_task_alloc();
              *(v1 + 728) = v12;
              *v12 = v1;
              v12[1] = sub_190881BB8;
              v13 = *(v1 + 568);

              return sub_1908838B8(v13, v5, v1 + 552);
            }

            __break(1u);
          }

          v7 = sub_190D581C0();
          goto LABEL_12;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }
    }
  }

  if (qword_1EAD521B0 != -1)
  {
    swift_once();
  }

  v14 = sub_190D53040();
  __swift_project_value_buffer(v14, qword_1EAD9E840);
  v15 = sub_190D53020();
  v16 = sub_190D576A0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_19020E000, v15, v16, "No chat found associated with message", v17, 2u);
    MEMORY[0x193AF7A40](v17, -1, -1);
  }

  v18 = *(v1 + 640) + 1;
  if (v18 == *(v1 + 624))
  {
    v19 = *(v1 + 648);

    v20 = *(v1 + 8);

    return v20(v19);
  }

  *(v1 + 640) = v18;
  v21 = *(v1 + 560) + 16 * v18;
  v22 = *(v21 + 32);
  *(v1 + 656) = v22;
  v23 = *(v21 + 40);
  *(v1 + 664) = v23;
  v24 = objc_allocWithZone(MEMORY[0x1E69A8148]);
  sub_190D52690();
  v25 = sub_190D56ED0();
  v26 = [v24 initWithEncodedMessagePartGUID_];

  if (v26)
  {
    v27 = [v26 messageGUID];
    v22 = sub_190D56F10();
    v23 = v28;

    v29 = [v26 partNumber];
    if (v29 != sub_190D50E40())
    {
      v30 = [v26 partNumber];

      v31 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    sub_190D52690();
  }

  v30 = 0;
  v31 = 1;
LABEL_37:
  *(v1 + 688) = v23;
  *(v1 + 680) = v22;
  *(v1 + 545) = v31;
  *(v1 + 672) = v30;
  v32 = *(v1 + 616);
  v33 = *(v1 + 608);
  v34 = sub_190D572E0();
  v35 = *(v34 - 8);
  (*(v35 + 56))(v32, 1, 1, v34);
  sub_190D52690();
  v36 = sub_190D57290();
  v37 = swift_allocObject();
  v38 = MEMORY[0x1E69E85E0];
  v37[2] = v36;
  v37[3] = v38;
  v37[4] = v22;
  v37[5] = v23;
  sub_19022FD14(v32, v33, &qword_1EAD5BAF0);
  v39 = (*(v35 + 48))(v33, 1, v34);
  sub_190D50920();
  v40 = *(v1 + 608);
  if (v39 == 1)
  {
    sub_19022EEA4(*(v1 + 608), &qword_1EAD5BAF0);
  }

  else
  {
    sub_190D572D0();
    (*(v35 + 8))(v40, v34);
  }

  v41 = v37[2];
  swift_unknownObjectRetain();

  if (v41)
  {
    swift_getObjectType();
    v42 = sub_190D57240();
    v44 = v43;
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  sub_19022EEA4(*(v1 + 616), &qword_1EAD5BAF0);
  v45 = swift_allocObject();
  *(v45 + 16) = &unk_190DD93D0;
  *(v45 + 24) = v37;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54F50);
  if (v44 | v42)
  {
    *(v1 + 496) = 0;
    *(v1 + 504) = 0;
    *(v1 + 512) = v42;
    *(v1 + 520) = v44;
  }

  v47 = swift_task_create();
  *(v1 + 696) = v47;
  v48 = swift_task_alloc();
  *(v1 + 704) = v48;
  *v48 = v1;
  v48[1] = sub_19088130C;
  v49 = MEMORY[0x1E69E73E0];
  v50 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v1 + 528, v47, v46, v49, v50);
}

uint64_t sub_190881BB8()
{
  *(*v1 + 736) = v0;

  if (v0)
  {

    v2 = sub_190882E50;
  }

  else
  {
    v2 = sub_190881D00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_190881D00()
{
  v95 = v0;
  v1 = *(v0 + 568);
  if ((*(*(v0 + 584) + 48))(v1, 1, *(v0 + 576)) == 1)
  {

    sub_19022EEA4(v1, &unk_1EAD54F40);
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v2 = sub_190D53040();
    __swift_project_value_buffer(v2, qword_1EAD9E840);
    v3 = sub_190D53020();
    v4 = sub_190D576A0();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 720);
    v7 = *(v0 + 712);
    if (v5)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v3, v4, "No matching conversation found for message", v8, 2u);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

LABEL_7:
    v9 = *(v0 + 648);
    goto LABEL_20;
  }

  v10 = *(v0 + 712);
  sub_19082FC20(v1, *(v0 + 600));
  if (!v10)
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v18 = sub_190D53040();
    __swift_project_value_buffer(v18, qword_1EAD9E840);
    sub_190D52690();
    v19 = sub_190D53020();
    v20 = sub_190D57690();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 688);
      v22 = *(v0 + 680);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v94 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_19021D9F8(v22, v21, &v94);
      _os_log_impl(&dword_19020E000, v19, v20, "Failed to find IMMessageItem matching GUID '%s'", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x193AF7A40](v24, -1, -1);
      MEMORY[0x193AF7A40](v23, -1, -1);
    }

    v25 = *(v0 + 688);
    v26 = *(v0 + 680);
    v27 = *(v0 + 664);
    v28 = *(v0 + 656);
    v29 = *(v0 + 592);
    sub_190830594(*(v0 + 600), v29);
    sub_190D1AE8C(v28, v27, v26, v25, v29, (v0 + 16));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v0 + 648);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_190836008(0, *(v9 + 2) + 1, 1, *(v0 + 648));
    }

    v32 = *(v9 + 2);
    v31 = *(v9 + 3);
    if (v32 >= v31 >> 1)
    {
      v9 = sub_190836008((v31 > 1), v32 + 1, 1, v9);
    }

    v33 = *(v0 + 600);

    sub_1908305F8(v33);
    *(v9 + 2) = v32 + 1;
    v34 = &v9[160 * v32];
    v35 = *(v0 + 32);
    *(v34 + 2) = *(v0 + 16);
    *(v34 + 3) = v35;
    v36 = *(v0 + 96);
    v38 = *(v0 + 48);
    v37 = *(v0 + 64);
    *(v34 + 6) = *(v0 + 80);
    *(v34 + 7) = v36;
    *(v34 + 4) = v38;
    *(v34 + 5) = v37;
    v39 = *(v0 + 160);
    v41 = *(v0 + 112);
    v40 = *(v0 + 128);
    *(v34 + 10) = *(v0 + 144);
    *(v34 + 11) = v39;
    *(v34 + 8) = v41;
    *(v34 + 9) = v40;
LABEL_20:
    v42 = *(v0 + 640) + 1;
    if (v42 == *(v0 + 624))
    {

      v43 = *(v0 + 8);

      return v43(v9);
    }

    *(v0 + 648) = v9;
    *(v0 + 640) = v42;
    v45 = *(v0 + 560) + 16 * v42;
    v46 = *(v45 + 32);
    *(v0 + 656) = v46;
    v47 = *(v45 + 40);
    *(v0 + 664) = v47;
    v48 = objc_allocWithZone(MEMORY[0x1E69A8148]);
    sub_190D52690();
    v49 = sub_190D56ED0();
    v50 = [v48 initWithEncodedMessagePartGUID_];

    if (v50)
    {
      v51 = [v50 messageGUID];
      v46 = sub_190D56F10();
      v47 = v52;

      v53 = [v50 partNumber];
      if (v53 != sub_190D50E40())
      {
        v54 = [v50 partNumber];

        v55 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      sub_190D52690();
    }

    v54 = 0;
    v55 = 1;
LABEL_30:
    *(v0 + 688) = v47;
    *(v0 + 680) = v46;
    *(v0 + 545) = v55;
    *(v0 + 672) = v54;
    v56 = *(v0 + 616);
    v57 = *(v0 + 608);
    v58 = sub_190D572E0();
    v59 = *(v58 - 8);
    (*(v59 + 56))(v56, 1, 1, v58);
    sub_190D52690();
    v60 = sub_190D57290();
    v61 = swift_allocObject();
    v62 = MEMORY[0x1E69E85E0];
    v61[2] = v60;
    v61[3] = v62;
    v61[4] = v46;
    v61[5] = v47;
    sub_19022FD14(v56, v57, &qword_1EAD5BAF0);
    v63 = (*(v59 + 48))(v57, 1, v58);
    sub_190D50920();
    v64 = *(v0 + 608);
    if (v63 == 1)
    {
      sub_19022EEA4(*(v0 + 608), &qword_1EAD5BAF0);
    }

    else
    {
      sub_190D572D0();
      (*(v59 + 8))(v64, v58);
    }

    v65 = v61[2];
    swift_unknownObjectRetain();

    if (v65)
    {
      swift_getObjectType();
      v66 = sub_190D57240();
      v68 = v67;
      swift_unknownObjectRelease();
    }

    else
    {
      v66 = 0;
      v68 = 0;
    }

    sub_19022EEA4(*(v0 + 616), &qword_1EAD5BAF0);
    v69 = swift_allocObject();
    *(v69 + 16) = &unk_190DD93D0;
    *(v69 + 24) = v61;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54F50);
    if (v68 | v66)
    {
      *(v0 + 496) = 0;
      *(v0 + 504) = 0;
      *(v0 + 512) = v66;
      *(v0 + 520) = v68;
    }

    v71 = swift_task_create();
    *(v0 + 696) = v71;
    v72 = swift_task_alloc();
    *(v0 + 704) = v72;
    *v72 = v0;
    v72[1] = sub_19088130C;
    v73 = MEMORY[0x1E69E73E0];
    v74 = MEMORY[0x1E69E7410];

    return MEMORY[0x1EEE6DA20](v0 + 528, v71, v70, v73, v74);
  }

  v11 = *(v0 + 712);
  v12 = objc_allocWithZone(MEMORY[0x1E69A5C48]);
  v13 = v11;
  v14 = [v12 initWithMessageItem_];
  *(v0 + 744) = v14;
  v15 = [v13 messageParts];
  if (v15)
  {
    v16 = v15;
    sub_1902188FC(0, &unk_1EAD54F60);
    v17 = sub_190D57180();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v75 = sub_1908840E0(v17, *(v0 + 672), *(v0 + 545));
  *(v0 + 752) = v75;

  if (!v75)
  {
    if (!v14 || (v80 = [v14 pluginBundleID]) == 0)
    {

      if (qword_1EAD521B0 != -1)
      {
        swift_once();
      }

      v81 = sub_190D53040();
      __swift_project_value_buffer(v81, qword_1EAD9E840);
      sub_190D52690();
      v82 = sub_190D53020();
      v83 = sub_190D57690();

      v84 = os_log_type_enabled(v82, v83);
      v85 = *(v0 + 720);
      v86 = *(v0 + 688);
      if (v84)
      {
        v87 = *(v0 + 720);
        v88 = *(v0 + 680);
        v93 = *(v0 + 600);
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v94 = v90;
        *v89 = 136315138;
        v91 = sub_19021D9F8(v88, v86, &v94);

        *(v89 + 4) = v91;
        _os_log_impl(&dword_19020E000, v82, v83, "No message part found and message doesn't represent a plugin message '%s'", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v90);
        MEMORY[0x193AF7A40](v90, -1, -1);
        MEMORY[0x193AF7A40](v89, -1, -1);

        sub_1908305F8(v93);
      }

      else
      {
        v92 = *(v0 + 600);

        sub_1908305F8(v92);
      }

      goto LABEL_7;
    }
  }

  v76 = swift_task_alloc();
  *(v0 + 760) = v76;
  *v76 = v0;
  v76[1] = sub_1908827C8;
  v77 = *(v0 + 664);
  v78 = *(v0 + 656);
  v79 = *(v0 + 600);

  return sub_1908845AC(v0 + 176, v78, v77, v13, v75, v14, v79);
}