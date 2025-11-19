size_t sub_216ABA648(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1A70);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1F8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_1(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1F8) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_216939754(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_216ABA814()
{
  OUTLINED_FUNCTION_224_0();
  if ((v5 & 1) == 0)
  {
    v6 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_37();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(v0 + 16);
    if (v6 <= v9)
    {
      v10 = *(v0 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size_1(v11);
      v11[2] = v9;
      v11[3] = 2 * ((v12 - 32) / 32);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v9, v11 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_238();
    goto LABEL_15;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_6_37();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_216ABA8F0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC18C8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_1(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_21693B604((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_216ABAA3C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1A50);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_1(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_2169397C4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_216ABAB44(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BF0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_1(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_2169396E8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_216ABAC4C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v10)
  {
    OUTLINED_FUNCTION_7_37();
    if (v12 != v13)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  else
  {
    v11 = v0;
  }

  v14 = *(v7 + 16);
  if (v11 <= v14)
  {
    v15 = *(v7 + 16);
  }

  else
  {
    v15 = v11;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  v16 = v5(0);
  OUTLINED_FUNCTION_2(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size_1(v21);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_18:
  v5(0);
  OUTLINED_FUNCTION_236();
  if (v9)
  {
    v3(v7 + v24, v14, v21 + v24);
    *(v7 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216ABADE8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1B58);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_1(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_21693B604((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1B60);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_216ABAEF8()
{
  OUTLINED_FUNCTION_49();
  v25 = v1;
  v2 = sub_21700DEE4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v24 = v0;
  v9 = *v0;
  OUTLINED_FUNCTION_134_3();
  sub_2166C53B4(v10, v11);
  sub_21700E424();
  OUTLINED_FUNCTION_81_3();
  v14 = ~v13;
  while (1)
  {
    v15 = v12 & v14;
    if (((*(v9 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
    {
      v19 = 1;
      v20 = v25;
      goto LABEL_9;
    }

    v16 = *(v4 + 72) * v15;
    (*(v4 + 16))(v8, *(v9 + 48) + v16, v2);
    OUTLINED_FUNCTION_134_3();
    sub_2166C53B4(&qword_280E2A148, v17);
    v18 = sub_21700E494();
    (*(v4 + 8))(v8, v2);
    if (v18)
    {
      break;
    }

    v12 = v15 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v24;
  v26 = *v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21689DCBC();
    v22 = v26;
  }

  v23 = *(v22 + 48) + v16;
  v20 = v25;
  (*(v4 + 32))(v25, v23, v2);
  sub_216ABB7C8(v15);
  v19 = 0;
  *v24 = v26;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v20, v19, 1, v2);
  OUTLINED_FUNCTION_26();
}

void sub_216ABB124(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  sub_21700F8F4();
  sub_21700E614();
  sub_21700F944();
  OUTLINED_FUNCTION_81_3();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    if (((*(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v10)) & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0;
      return;
    }

    v12 = (*(v7 + 48) + 16 * v11);
    v13 = *v12 == a1 && v12[1] == a2;
    if (v13 || (sub_21700F7D4() & 1) != 0)
    {
      break;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  v19 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21689E1F0();
    v15 = v19;
  }

  v16 = (*(v15 + 48) + 16 * v11);
  v18 = *v16;
  v17 = v16[1];
  *a3 = v18;
  a3[1] = v17;
  sub_216ABBAD4(v11);
  *v3 = v19;
}

uint64_t sub_216ABB244(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_21700F8F4();
  sub_21700E614();
  sub_21700F944();
  OUTLINED_FUNCTION_81_3();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    if (((*(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v8)) & 1) == 0)
    {
      break;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21700F7D4() & 1) != 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21689DBC0();
      }

      sub_216ABBC88(v9);
      *v2 = v14;
      return OUTLINED_FUNCTION_82();
    }

    v6 = v9 + 1;
  }

  return OUTLINED_FUNCTION_82();
}

uint64_t sub_216ABB364@<X0>(uint64_t a1@<X8>)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends);
  v12 = v1;
  v2 = *v1;
  sub_21700F8F4();
  sub_21700E614();
  v3 = sub_21700F944();
  v4 = ~(-1 << *(v2 + 32));
  while (1)
  {
    v5 = v3 & v4;
    if (((*(v2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v3 & v4)) & 1) == 0)
    {
      v8 = 1;
      v9 = a1;
      return __swift_storeEnumTagSinglePayload(v9, v8, 1, Friends);
    }

    sub_216ABE93C();
    sub_21700F8F4();
    sub_21700E614();
    v6 = sub_21700F944();
    sub_21700F8F4();
    sub_21700E614();
    v7 = sub_21700F944();
    sub_216ABE994();
    if (v6 == v7)
    {
      break;
    }

    v3 = v5 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21689E474();
  }

  v9 = a1;
  sub_216ABEA38();
  sub_216ABBE40(v5);
  v8 = 0;
  *v12 = v15;
  return __swift_storeEnumTagSinglePayload(v9, v8, 1, Friends);
}

void sub_216ABB5AC()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v14 = v2;
  v13 = type metadata accessor for MusicURLRequest();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v4 = *v0;
  sub_21700F8F4();
  sub_217006224();
  sub_2166C53B4(&qword_280E4A4E0, MEMORY[0x277CC95F0]);
  sub_21700E434();
  sub_21700F944();
  OUTLINED_FUNCTION_81_3();
  v7 = ~v6;
  while (1)
  {
    v8 = v5 & v7;
    if (((*(v4 + 56 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v7)) & 1) == 0)
    {
      v10 = 1;
      v11 = v14;
      goto LABEL_9;
    }

    sub_216ABE93C();
    v9 = sub_217006204();
    sub_216ABE994();
    if (v9)
    {
      break;
    }

    v5 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21689E730();
  }

  v11 = v14;
  sub_216ABEA38();
  sub_216ABC0C8(v8);
  v10 = 0;
  *v1 = v15;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v11, v10, 1, v13);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216ABB7C8(int64_t a1)
{
  v3 = sub_21700DEE4();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_21700F234();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v37 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v36 = v15;
      v16 = *(v14 + 56);
      v38 = v14;
      v39 = v16;
      v17 = v12;
      v18 = (v14 - 8);
      v19 = v8;
      while (1)
      {
        v20 = v9;
        v21 = v39 * v11;
        v22 = v17;
        v36(v7, *(v19 + 48) + v39 * v11, v3);
        v23 = v19;
        sub_2166C53B4(&unk_280E2A150, MEMORY[0x277D22320]);
        v24 = sub_21700E424();
        (*v18)(v7, v3);
        v17 = v22;
        v25 = v24 & v22;
        if (a1 >= v37)
        {
          if (v25 < v37 || a1 < v25)
          {
LABEL_20:
            v19 = v23;
            goto LABEL_24;
          }
        }

        else if (v25 < v37 && a1 < v25)
        {
          goto LABEL_20;
        }

        v19 = v23;
        v27 = *(v23 + 48);
        v28 = v39 * a1;
        v29 = v27 + v39 * a1;
        v30 = v27 + v21 + v39;
        if (v39 * a1 < v21 || v29 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v17 = v22;
          a1 = v11;
          goto LABEL_24;
        }

        a1 = v11;
        if (v28 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v11 = (v11 + 1) & v17;
        v9 = v20;
        if (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v8;
LABEL_28:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v8;
  }

  v33 = *(v19 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v35;
    ++*(v19 + 36);
  }

  return result;
}

unint64_t sub_216ABBAD4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21700F234();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21700F8F4();
        sub_21700DF14();
        sub_21700E614();

        v10 = sub_21700F944() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + 16 * v2);
            v15 = (v13 + 16 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_216ABBC88(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21700F234();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21700F8F4();
        sub_21700DF14();
        sub_21700E614();
        v10 = sub_21700F944();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
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

uint64_t sub_216ABBE40(int64_t a1)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v3 = *(Friends - 8);
  result = MEMORY[0x28223BE20](Friends);
  v5 = *v1;
  v6 = *v1 + 56;
  v7 = -1 << *(*v1 + 32);
  v8 = (a1 + 1) & ~v7;
  if (((1 << v8) & *(v6 + 8 * (v8 >> 6))) != 0)
  {
    v9 = ~v7;

    v10 = sub_21700F234();
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
    {
      v11 = (v10 + 1) & v9;
      v12 = *(v3 + 72);
      while (1)
      {
        v13 = v12 * v8;
        sub_216ABE93C();
        sub_21700F8F4();
        sub_21700E614();
        v14 = sub_21700F944();
        sub_216ABE994();
        v15 = v14 & v9;
        if (a1 >= v11)
        {
          if (v15 < v11 || a1 < v15)
          {
            goto LABEL_24;
          }
        }

        else if (v15 < v11 && a1 < v15)
        {
          goto LABEL_24;
        }

        v18 = *(v5 + 48);
        v19 = v12 * a1;
        v20 = v18 + v12 * a1;
        v21 = v18 + v13 + v12;
        if (v12 * a1 < v13 || v20 >= v21)
        {
          break;
        }

        a1 = v8;
        if (v19 != v13)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v8 = (v8 + 1) & v9;
        if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_23:
      a1 = v8;
      goto LABEL_24;
    }

LABEL_25:

    *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v23 = *(v5 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v25;
    ++*(v5 + 36);
  }

  return result;
}

void sub_216ABC0C8(int64_t a1)
{
  v27 = type metadata accessor for MusicURLRequest();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = *v1;
  v5 = *v1 + 56;
  v6 = -1 << *(*v1 + 32);
  v7 = (a1 + 1) & ~v6;
  if (((1 << v7) & *(v5 + 8 * (v7 >> 6))) != 0)
  {
    v8 = ~v6;

    v9 = sub_21700F234();
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) != 0)
    {
      v10 = (v9 + 1) & v8;
      v28 = *(v3 + 72);
      v11 = v8;
      while (1)
      {
        v12 = v28 * v7;
        sub_216ABE93C();
        sub_21700F8F4();
        sub_217006224();
        sub_2166C53B4(&qword_280E4A4E0, MEMORY[0x277CC95F0]);
        v13 = v10;
        v14 = v11;
        sub_21700E434();
        v15 = sub_21700F944();
        sub_216ABE994();
        v16 = v15 & v14;
        v11 = v14;
        v10 = v13;
        if (a1 >= v13)
        {
          if (v16 < v13 || a1 < v16)
          {
            goto LABEL_24;
          }
        }

        else if (v16 < v13 && a1 < v16)
        {
          goto LABEL_24;
        }

        v18 = *(v4 + 48);
        v19 = v28 * a1;
        v20 = v18 + v28 * a1;
        v21 = v18 + v12 + v28;
        if (v28 * a1 < v12 || v20 >= v21)
        {
          break;
        }

        a1 = v7;
        if (v19 != v12)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v7 = (v7 + 1) & v11;
        if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_23:
      a1 = v7;
      goto LABEL_24;
    }

LABEL_25:

    *(v5 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v5 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v24 = *(v4 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v26;
    ++*(v4 + 36);
  }
}

uint64_t sub_216ABC3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2166A6DF8(a4, a1);
  sub_21700DF14();
  return OUTLINED_FUNCTION_38();
}

uint64_t sub_216ABC400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_217006FE4();
  (*(*(v7 - 8) + 16))(a1, a4, v7);
  sub_21700DF14();
  return a2;
}

uint64_t sub_216ABC480(_BYTE *a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a4;
  sub_21700DF14();
  return OUTLINED_FUNCTION_38();
}

uint64_t sub_216ABC4B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1898) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC18A8);
  result = sub_216ABC400(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_216ABC524(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  v44 = sub_217006FE4();
  v9 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC18B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (v40 - v15);
  sub_216ABDAE8(a1, a2, a3, v49);
  v45 = v49[0];
  v46 = v49[1];
  v47 = v49[2];
  v48 = v50;
  v42 = v9;
  v43 = (v9 + 32);
  v40[4] = v9 + 8;
  v40[5] = v9 + 16;
  v40[3] = v9 + 40;
  v40[1] = a1;
  sub_21700DF14();
  v40[0] = a3;

  while (1)
  {
    sub_216ABDC74(v16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC18A8);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_216687978();
    }

    v19 = *v16;
    v18 = v16[1];
    v20 = *v43;
    v21 = v13;
    (*v43)(v13, v16 + *(v17 + 48), v44);
    v22 = *v51;
    v24 = sub_216E69548(v19, v18);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1888);
        sub_21700F564();
      }
    }

    else
    {
      sub_216AB91D4(v27, a4 & 1);
      v29 = sub_216E69548(v19, v18);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_16;
      }

      v24 = v29;
    }

    v31 = *v51;
    if (v28)
    {
      v33 = v41;
      v32 = v42;
      v13 = v21;
      v34 = v44;
      (*(v42 + 16))(v41, v21, v44);
      (*(v32 + 8))(v21, v34);

      (*(v32 + 40))(v31[7] + *(v32 + 72) * v24, v33, v34);
      a4 = 1;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v35 = (v31[6] + 16 * v24);
      *v35 = v19;
      v35[1] = v18;
      v13 = v21;
      v20((v31[7] + *(v42 + 72) * v24), v21, v44);
      v36 = v31[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_15;
      }

      v31[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_21700F824();
  __break(1u);
  return result;
}

void sub_216ABC91C()
{
  OUTLINED_FUNCTION_217_0();
  if (*(*v0 + 16))
  {
    v2 = v1 + 56;
    OUTLINED_FUNCTION_50_16();
    v5 = v4 & v3;
    v7 = (v6 + 63) >> 6;
    sub_21700DF14();
    v8 = 0;
    if (!v5)
    {
      goto LABEL_4;
    }

    do
    {
LABEL_8:
      v5 &= v5 - 1;
      OUTLINED_FUNCTION_132_0();
      v10 = OUTLINED_FUNCTION_82();
      sub_216ABB124(v10, v11, v12);
    }

    while (v5);
    while (1)
    {
LABEL_4:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_198_0();
  }

  else
  {
    OUTLINED_FUNCTION_198_0();
  }
}

uint64_t sub_216ABCA0C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_21700DF14();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_21700DF14();
        sub_216ABB244(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_216ABCB38@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_216AB4FE4(__dst);
  *a2 = result;
  return result;
}

void sub_216ABCB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1B20);
  OUTLINED_FUNCTION_36(v25);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - v27;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v30 = OUTLINED_FUNCTION_2(Friends);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  if (*(*v20 + 16))
  {
    OUTLINED_FUNCTION_50_16();
    v33 = v32 & v31;
    v35 = (v34 + 63) >> 6;
    sub_21700DF14();
    v36 = 0;
    if (!v33)
    {
      goto LABEL_4;
    }

    do
    {
LABEL_8:
      v33 &= v33 - 1;
      OUTLINED_FUNCTION_137_2();
      sub_216ABE93C();
      sub_216ABB364(v28);
      sub_216ABE994();
      sub_2166997CC(v28, &qword_27CAC1B20);
    }

    while (v33);
LABEL_4:
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v35)
      {

        goto LABEL_11;
      }

      v33 = *(v24 + 56 + 8 * v37);
      ++v36;
      if (v33)
      {
        v36 = v37;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_26();
  }
}

uint64_t sub_216ABCD54(uint64_t result)
{
  v2 = 0;
  v27 = result;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
LABEL_5:
  while (v6)
  {
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(v27 + 48) + ((v2 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];
    v13 = *v1;
    if (*(*v1 + 16))
    {
      sub_21700F8F4();
      sub_21700DF14();
      sub_21700E614();
      v14 = sub_21700F944();
      v20 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v21 = v14 & v20;
        if (((*(v13 + 56 + (((v14 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(v13 + 48) + 16 * v21);
        if (*v22 != v12 || v22[1] != v11)
        {
          v24 = sub_21700F7D4();
          v14 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        v1 = v26;
        sub_216ABB244(v12, v11);

        goto LABEL_5;
      }
    }

    else
    {
      sub_21700DF14();
    }

    v1 = v26;
    sub_2168A140C(v28, v12, v11, v15, v16, v17, v18, v19, v25, v26);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }
}

unint64_t sub_216ABCF1C()
{
  result = qword_27CAC1868;
  if (!qword_27CAC1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1868);
  }

  return result;
}

void sub_216ABCF70(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v12 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v30 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v29 = (v16 - v15);
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v26[1] = a1;
      v17 = 0;
      v18 = *(type metadata accessor for AnimatedTextListItemView.AnimationSchedule(0) + 20);
      v19 = v29;
      v27 = (v30 + 16);
      v28 = v18;
      v20 = (v30 + 32);
      while (v17 < a3)
      {
        if (__OFADD__(v17, 1))
        {
          goto LABEL_17;
        }

        sub_2166C53B4(&qword_27CAC1B08, MEMORY[0x277CC9578]);
        if ((sub_21700E464() & 1) == 0)
        {
          v24 = OUTLINED_FUNCTION_19_2();
          __swift_storeEnumTagSinglePayload(v24, v25, 1, v12);
LABEL_14:
          sub_2166997CC(v11, &qword_27CAB74E8);
          goto LABEL_15;
        }

        (*v27)(v11, v4, v12);
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
        sub_217006194();
        v21 = OUTLINED_FUNCTION_19_2();
        if (__swift_getEnumTagSinglePayload(v21, v22, v12) == 1)
        {
          goto LABEL_14;
        }

        v23 = *v20;
        (*v20)(v19, v11, v12);
        v23(a2, v19, v12);
        if (v17 + 1 == a3)
        {
          goto LABEL_15;
        }

        a2 += *(v30 + 72);
        ++v17;
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    OUTLINED_FUNCTION_116();
    sub_216ABEA38();
  }
}

unint64_t sub_216ABD224(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_217006FE4();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = a4 + 64;
  v14 = *(a4 + 64);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 64;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 56);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42, v12);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_216ABD4BC(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        sub_21700DF14();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = sub_21700DF14();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_216ABD618()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_31_0();
  Friends = type metadata accessor for SocialFindFriendsController.Friend(v7);
  v9 = OUTLINED_FUNCTION_2(Friends);
  v30 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v29 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28 = &v25 - v13;
  v14 = v2 + 56;
  v15 = -1 << *(v2 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v2 + 56);
  if (!v6)
  {
    v19 = 0;
LABEL_20:
    *v0 = v2;
    v0[1] = v14;
    v0[2] = ~v15;
    v0[3] = v19;
    v0[4] = v17;
    OUTLINED_FUNCTION_26();
    return;
  }

  if (!v4)
  {
    v19 = 0;
    goto LABEL_20;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v25 = -1 << *(v2 + 32);
    v26 = v0;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v15) >> 6;
    v27 = v4;
    while (v18 < v4)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_24;
      }

      if (!v17)
      {
        while (1)
        {
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            v17 = 0;
            v15 = v25;
            v0 = v26;
            goto LABEL_20;
          }

          v17 = *(v14 + 8 * v22);
          ++v19;
          if (v17)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v22 = v19;
LABEL_15:
      OUTLINED_FUNCTION_104_7();
      v23 = v2;
      v24 = *(v30 + 72);
      OUTLINED_FUNCTION_137_2();
      sub_216ABE93C();
      sub_216ABEA38();
      OUTLINED_FUNCTION_82();
      sub_216ABEA38();
      v4 = v27;
      if (v21 == v27)
      {
        v19 = v22;
        v15 = v25;
        v0 = v26;
        v2 = v23;
        goto LABEL_20;
      }

      v6 += v24;
      v18 = v21;
      v19 = v22;
      v2 = v23;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_216ABD840(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        sub_21700DF14();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = sub_21700DF14();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_216ABD99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_2();
  v19[3] = a3;
  v19[4] = a4;
  __swift_allocate_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_50();
  (*(v11 + 16))();
  v12 = sub_21700EA74();
  OUTLINED_FUNCTION_184_0(v12);
  sub_216681AA4(v19, v18);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  sub_2166A0F18(v18, (v13 + 5));

  v14 = OUTLINED_FUNCTION_9_46();
  sub_216888C34(v14, v15, v4, v16, v13);

  sub_2166997CC(v4, &unk_27CABFAC0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

uint64_t sub_216ABDAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_216ABDB24@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_2166A6DF8(*(v3 + 56) + 32 * v10, v18);
    *&v19 = v13;
    *(&v19 + 1) = v12;
    sub_2166EF9C4(v18, &v20);
    result = sub_21700DF14();
    v15 = *(&v19 + 1);
    v16 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v20;
      v18[2] = v21;
      v17(v18);
      return sub_2166997CC(v18, &qword_27CAC1A80);
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
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_216ABDC74(uint64_t a1@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1898);
  MEMORY[0x28223BE20](v38);
  v4 = &v35 - v3;
  v5 = sub_217006FE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1890);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v14 = &v35 - v12;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v35 = v4;
  v39 = v17;
  if (v19)
  {
    v37 = a1;
    v20 = v18;
LABEL_7:
    v36 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v20 << 6);
    v22 = (*(v15 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v21, v5, v13);
    v25 = v38;
    v26 = *(v38 + 48);
    *v14 = v23;
    *(v14 + 1) = v24;
    v27 = v8;
    v28 = v25;
    (*(v6 + 32))(&v14[v26], v27, v5);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v28);
    sub_21700DF14();
    v29 = v36;
    a1 = v37;
LABEL_8:
    *v1 = v15;
    v1[1] = v16;
    v30 = v40;
    v1[2] = v39;
    v1[3] = v18;
    v1[4] = v29;
    v31 = v1[5];
    sub_216ABE580();
    v32 = 1;
    if (__swift_getEnumTagSinglePayload(v30, 1, v28) != 1)
    {
      v33 = v35;
      sub_216ABE580();
      v31(v33);
      sub_2166997CC(v33, &qword_27CAC1898);
      v32 = 0;
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC18A8);
    __swift_storeEnumTagSinglePayload(a1, v32, 1, v34);
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= ((v17 + 64) >> 6))
      {
        v28 = v38;
        __swift_storeEnumTagSinglePayload(&v35 - v12, 1, 1, v38);
        v29 = 0;
        goto LABEL_8;
      }

      v19 = *(v16 + 8 * v20);
      ++v18;
      if (v19)
      {
        v37 = a1;
        v18 = v20;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_216ABDFC4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_21700F254();
  }

  OUTLINED_FUNCTION_81_3();
  return sub_21700F224();
}

void sub_216ABE020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_217_0();
  v15 = v14;
  if ((v14 & 0xC000000000000001) != 0)
  {
    if (v13)
    {
      v16 = OUTLINED_FUNCTION_227();
      MEMORY[0x21CEA00E0](v16);
      sub_216685F4C(0, &qword_280E29B30);
      swift_dynamicCast();
      OUTLINED_FUNCTION_198_0();
      return;
    }

    goto LABEL_23;
  }

  if (v13)
  {
    sub_216685F4C(0, &qword_280E29B30);
    OUTLINED_FUNCTION_227();
    if (sub_21700F294() == *(v15 + 36))
    {
      OUTLINED_FUNCTION_227();
      sub_21700F2A4();
      swift_dynamicCast();
      v10 = a10;
      sub_21700F0F4();
      OUTLINED_FUNCTION_81_3();
      v19 = ~v18;
      while (1)
      {
        v20 = v17 & v19;
        if (((*(v15 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v21 = *(*(v15 + 48) + 8 * v20);
        v22 = sub_21700F104();

        if (v22)
        {
          goto LABEL_15;
        }

        v17 = v20 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v11 < 0 || 1 << *(v14 + 32) <= v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(v14 + 8 * (v11 >> 6) + 56) >> v11) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(v14 + 36) != v12)
  {
    __break(1u);
LABEL_15:
  }

  OUTLINED_FUNCTION_198_0();

  v25 = v23;
}

uint64_t sub_216ABE204(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    sub_21700DF14();
    return OUTLINED_FUNCTION_8();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_216ABE27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_216ABE334;

  return sub_216A97258(a2, a3, a4, a5);
}

uint64_t sub_216ABE334()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  OUTLINED_FUNCTION_69_0();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  *v4 = v2;
  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_216ABE4B4()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_2166AB4A4;
  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_12_7();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216ABE580()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_252_0(v1, v2, v3);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return v0;
}

uint64_t sub_216ABE608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1228);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_216ABE678()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_2166AB4A0;
  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_47_8();

  return sub_216AB5644();
}

uint64_t sub_216ABE718()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = _s7SectionVMa(v0);
  OUTLINED_FUNCTION_36(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_2166AB4A0;
  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_12_7();

  return sub_216AB58B4(v5, v6, v7, v8, v9);
}

unint64_t sub_216ABE7E8()
{
  result = qword_27CAC1A60;
  if (!qword_27CAC1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1A60);
  }

  return result;
}

unint64_t sub_216ABE83C()
{
  result = qword_27CAC1AB8;
  if (!qword_27CAC1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1AB8);
  }

  return result;
}

uint64_t sub_216ABE890()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_252_0(v1, v2, v3);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return v0;
}

unint64_t sub_216ABE8E8()
{
  result = qword_280E32CA0[0];
  if (!qword_280E32CA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E32CA0);
  }

  return result;
}

uint64_t sub_216ABE93C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216ABE994()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_216ABE9E4()
{
  result = qword_27CAC1B38;
  if (!qword_27CAC1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1B38);
  }

  return result;
}

uint64_t sub_216ABEA38()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_99_10()
{
  *(v0 + 32) = 1;
  v3 = *(v1 + 16);

  os_unfair_lock_unlock(v3);
}

uint64_t OUTLINED_FUNCTION_121_5(uint64_t a1)
{
  *(v1 + 200) = a1;
}

uint64_t OUTLINED_FUNCTION_131_2()
{
}

uint64_t OUTLINED_FUNCTION_153()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_154_0()
{
  *(v0 + 160) = *(*(v0 + 48) + 40);
}

uint64_t OUTLINED_FUNCTION_160_0()
{
}

uint64_t OUTLINED_FUNCTION_162_0()
{
}

uint64_t OUTLINED_FUNCTION_163_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

id OUTLINED_FUNCTION_167_0()
{

  return sub_21669DAC4();
}

uint64_t OUTLINED_FUNCTION_177_1()
{
}

id OUTLINED_FUNCTION_178_0(float a1)
{
  *v2 = a1;

  return v1;
}

void OUTLINED_FUNCTION_180_0()
{
}

uint64_t OUTLINED_FUNCTION_184_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_185_0()
{
}

void OUTLINED_FUNCTION_186_0()
{
}

uint64_t OUTLINED_FUNCTION_205_1()
{
}

uint64_t OUTLINED_FUNCTION_212_0()
{

  return sub_21700C444();
}

uint64_t OUTLINED_FUNCTION_213_0(uint64_t a1)
{
  *(v1 + 216) = a1;
}

uint64_t OUTLINED_FUNCTION_214_0()
{
}

uint64_t OUTLINED_FUNCTION_219_0()
{

  return sub_21700C444();
}

uint64_t OUTLINED_FUNCTION_238()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_239_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_240_0()
{
}

uint64_t OUTLINED_FUNCTION_241_0()
{
  *(*(v0 + 56) + v1) = 18;
}

uint64_t OUTLINED_FUNCTION_242_0@<X0>(uint64_t a1@<X8>)
{

  return sub_21689DB5C(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_243_0()
{
}

uint64_t OUTLINED_FUNCTION_248_0()
{

  return sub_21700C444();
}

uint64_t OUTLINED_FUNCTION_250_0()
{

  return sub_217005EF4();
}

uint64_t OUTLINED_FUNCTION_252_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_253_0()
{

  return sub_217007CA4();
}

uint64_t OUTLINED_FUNCTION_254()
{
}

uint64_t OUTLINED_FUNCTION_255_0()
{

  return sub_21700C444();
}

unint64_t sub_216ABF05C()
{
  result = qword_280E30E70;
  if (!qword_280E30E70)
  {
    type metadata accessor for ApproveAllFollowRequestsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E30E70);
  }

  return result;
}

unint64_t sub_216ABF1B8()
{
  result = qword_280E2D120[0];
  if (!qword_280E2D120[0])
  {
    type metadata accessor for SocialOnboardingUpdateUserAttributesAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2D120);
  }

  return result;
}

uint64_t sub_216ABF210(uint64_t a1)
{
  v2 = sub_21700D2A4();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v4 = v27;
  v5 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialOnboardingUserAttributes;
  swift_beginAccess();
  v6 = (a1 + *(type metadata accessor for SocialOnboardingUpdateUserAttributesAction() + 20));
  v8 = v6[1];
  v7 = v6[2];
  v9 = v6[3];
  v10 = *(v6 + 32);
  v11 = *(v6 + 33);
  v12 = *(v6 + 34);
  if (v8)
  {
    v13 = *v6;
    v28 = MEMORY[0x277D837D0];
    *&v27 = v13;
    *(&v27 + 1) = v8;
    OUTLINED_FUNCTION_0_133();
    sub_21700DF14();
    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_113();
    OUTLINED_FUNCTION_2_97();
    sub_2166EF9D4();
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_21700DF14();
  if (v9)
  {
LABEL_3:
    v28 = MEMORY[0x277D837D0];
    *&v27 = v7;
    *(&v27 + 1) = v9;
    sub_2166EF9C4(&v27, &v26);
    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_113();
    OUTLINED_FUNCTION_2_97();
    sub_2166EF9D4();
  }

LABEL_4:
  v14 = MEMORY[0x277D839B0];
  if (v10 != 2)
  {
    v28 = MEMORY[0x277D839B0];
    LOBYTE(v27) = v10 & 1;
    OUTLINED_FUNCTION_0_133();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_113();
    OUTLINED_FUNCTION_2_97();
    sub_2166EF9D4();
  }

  if (v11 != 2)
  {
    v28 = v14;
    LOBYTE(v27) = v11 & 1;
    OUTLINED_FUNCTION_0_133();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_113();
    sub_2166EF9D4();
  }

  if (v12 != 2)
  {
    v28 = v14;
    LOBYTE(v27) = v12 & 1;
    OUTLINED_FUNCTION_0_133();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_113();
    sub_2166EF9D4();
  }

  v15 = v6[6];
  if (v15 >> 60 == 15)
  {
    if (*(v6 + 56) == 1)
    {
      v28 = MEMORY[0x277D837D0];
      *&v27 = 0;
      *(&v27 + 1) = 0xE000000000000000;
      OUTLINED_FUNCTION_0_133();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_113();
      OUTLINED_FUNCTION_2_97();
      sub_2166EF9D4();
    }
  }

  else
  {
    v16 = v6[5];
    v17 = &v4[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_pendingUserSelectedPhotoData];
    v18 = *&v4[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_pendingUserSelectedPhotoData];
    v19 = *&v4[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_pendingUserSelectedPhotoData + 8];
    *v17 = v16;
    v17[1] = v15;
    sub_21677A404(v16, v15);
    sub_21677A510(v18, v19);
  }

  swift_beginAccess();
  v20 = sub_21700DF14();
  sub_216860D3C(v20, sub_216A8D714, 0, &v4[v5]);
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v24 + 104))(v23, *MEMORY[0x277D21CA8], v25);
  v21 = sub_21700E1F4();

  return v21;
}

uint64_t type metadata accessor for AccountSignInAction()
{
  result = qword_280E3E340;
  if (!qword_280E3E340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216ABF688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

_BYTE *storeEnumTagSinglePayload for TopSearchLockup.LayoutStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216ABFA0C@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BF8);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_17_0();
  v5 = type metadata accessor for TopSearchLockup();
  sub_216681B04(v1 + *(v5 + 76), v2, &qword_27CAC1BF8);
  v6 = type metadata accessor for LockupArtwork();
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_216697664(v2, &qword_27CAC1BF8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_216A912E8(v2, a1);
      v7 = 0;
      goto LABEL_7;
    }

    sub_216AC0AC8(v2, type metadata accessor for LockupArtwork);
  }

  v7 = 1;
LABEL_7:
  v8 = type metadata accessor for Artwork();
  return __swift_storeEnumTagSinglePayload(a1, v7, 1, v8);
}

uint64_t sub_216ABFB4C()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216ABFBA0(char a1)
{
  if (a1)
  {
    return 0x72616C75676572;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

uint64_t sub_216ABFBF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216ABFB4C();
  *a1 = result;
  return result;
}

uint64_t sub_216ABFC24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216ABFBA0(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

unint64_t sub_216ABFC58()
{
  result = qword_27CAC1C00;
  if (!qword_27CAC1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1C00);
  }

  return result;
}

uint64_t sub_216ABFCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a2;
  v108 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v6);
  v103 = &v95 - v7;
  v107 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v105 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v10);
  v97 = &v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BF8);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_17_0();
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v95 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v95 - v22;
  v111 = a1;
  sub_21700CE04();
  v24 = sub_21700CDB4();
  v26 = v25;
  v29 = *(v15 + 8);
  v28 = v15 + 8;
  v27 = v29;
  (v29)(v23, v13);
  if (v26)
  {
    v104 = v27;
    v30 = type metadata accessor for TopSearchLockup();
    __dst[0] = v24;
    __dst[1] = v26;
    sub_21700F364();
    sub_21700CE04();
    v31 = *(v105 + 16);
    v32 = v97;
    v102 = v105 + 16;
    v101 = v31;
    v31(v97, v106, v107);
    v33 = v98;
    sub_216B9C964(v20, v32, v3);
    if (v33)
    {

      v98 = 0;
      v34 = 1;
    }

    else
    {
      v98 = 0;
      v34 = 0;
    }

    v95 = v28;
    v96 = v13;
    v41 = type metadata accessor for LockupArtwork();
    __swift_storeEnumTagSinglePayload(v3, v34, 1, v41);
    v42 = v108;
    sub_216AC0A04(v3, v108 + v30[19]);
    sub_21700CE04();
    sub_21700CDB4();
    v43 = OUTLINED_FUNCTION_0_134();
    v44 = v104;
    v104(v43);
    OUTLINED_FUNCTION_14_43(v30[7]);
    OUTLINED_FUNCTION_16_41();
    sub_21700CDB4();
    v45 = OUTLINED_FUNCTION_0_134();
    v44(v45);
    OUTLINED_FUNCTION_14_43(v30[8]);
    sub_21700CE04();
    sub_21700CDB4();
    v46 = OUTLINED_FUNCTION_0_134();
    v44(v46);
    OUTLINED_FUNCTION_14_43(v30[9]);
    sub_21700CE04();
    sub_21700CDB4();
    v47 = OUTLINED_FUNCTION_0_134();
    v44(v47);
    OUTLINED_FUNCTION_14_43(v30[10]);
    v48 = type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_8_56();
    sub_21700CE04();
    v49 = v30;
    v50 = v106;
    OUTLINED_FUNCTION_11_48();
    v51();
    sub_2166D635C(qword_280E40390, type metadata accessor for ContentDescriptor);
    v52 = v103;
    v97 = v48;
    sub_21700D734();
    v53 = v42 + v49[18];
    v54 = v52;
    v55 = v50;
    v56 = v96;
    sub_216681B04(v54, v53, &qword_27CAB6A00);
    sub_21700CE04();
    OUTLINED_FUNCTION_2_98();
    sub_21700D2E4();
    v57 = OUTLINED_FUNCTION_27_0();
    v58 = v104;
    v104(v57);
    v59 = v99;
    sub_21700CE04();
    v60 = sub_21700CD44();
    v61 = v59;
    v62 = v56;
    v63 = v55;
    v58(v61, v62);
    *(v108 + v49[11]) = v60 & 1;
    OUTLINED_FUNCTION_16_41();
    v99 = v49;
    v64 = v58;
    OUTLINED_FUNCTION_27_0();
    sub_21700D2E4();
    v65 = OUTLINED_FUNCTION_2_98();
    (v58)(v65);
    OUTLINED_FUNCTION_8_56();
    sub_21700CE04();
    OUTLINED_FUNCTION_27_0();
    sub_21700D2E4();
    v66 = OUTLINED_FUNCTION_2_98();
    (v58)(v66);
    OUTLINED_FUNCTION_15_44();
    if (v67)
    {
      sub_2166A0F18(v109, __dst);
    }

    else
    {
      sub_21700CE04();
      OUTLINED_FUNCTION_27_0();
      sub_21700D2E4();
      v68 = OUTLINED_FUNCTION_2_98();
      (v58)(v68);
      OUTLINED_FUNCTION_15_44();
      if (v69)
      {
        sub_216697664(v109, &qword_27CAB6DB0);
      }
    }

    v70 = v99;
    OUTLINED_FUNCTION_3_93(v99[12]);
    OUTLINED_FUNCTION_8_56();
    sub_21700CE04();
    OUTLINED_FUNCTION_27_0();
    sub_21700D2E4();
    v71 = OUTLINED_FUNCTION_2_98();
    v64(v71);
    OUTLINED_FUNCTION_15_44();
    if (v72)
    {
      v73 = v63;
      sub_2166A0F18(v109, __dst);
    }

    else
    {
      sub_21700CE04();
      v73 = v63;
      sub_21700D2E4();
      v74 = OUTLINED_FUNCTION_2_98();
      v64(v74);
      OUTLINED_FUNCTION_15_44();
      if (v75)
      {
        sub_216697664(v109, &qword_27CAB6DB0);
      }
    }

    OUTLINED_FUNCTION_3_93(v70[13]);
    sub_21700CE04();
    sub_2168F3E64();
    sub_21700CD14();
    v76 = OUTLINED_FUNCTION_2_98();
    v64(v76);
    v77 = v109[0];
    if (LOBYTE(v109[0]) == 3)
    {
      OUTLINED_FUNCTION_8_56();
      sub_21700CE04();
      sub_21700CCC4();
      v78 = OUTLINED_FUNCTION_2_98();
      v64(v78);
      v77 = __dst[0];
    }

    v79 = v64;
    v80 = v108;
    *(v108 + v70[14]) = v77;
    sub_21700CE04();
    sub_216AC0A74();
    sub_21700CCC4();
    v81 = OUTLINED_FUNCTION_2_98();
    v79(v81);
    *(v80 + v70[15]) = __dst[0];
    sub_21700D7A4();
    OUTLINED_FUNCTION_8_56();
    sub_21700CE04();
    v82 = v107;
    OUTLINED_FUNCTION_11_48();
    v83();
    sub_21700D734();
    v84 = v103;
    v85 = v100;
    sub_216681B04(v103, v100, &qword_27CAB6A00);
    if (__swift_getEnumTagSinglePayload(v85, 1, v97) == 1)
    {
      OUTLINED_FUNCTION_4_75();
      v86(v73, v82);
      v87 = OUTLINED_FUNCTION_13_41();
      v88(v87);
      sub_216697664(v84, &qword_27CAB6A00);
      result = sub_216697664(v85, &qword_27CAB6A00);
      v89 = 1;
    }

    else
    {
      memcpy(__dst, (v85 + 8), 0x69uLL);
      sub_21686BC90(__dst, v109);
      sub_216AC0AC8(v85, type metadata accessor for ContentDescriptor);
      memcpy(v109, __dst, 0x69uLL);
      v90 = ContentIdentifiers.identifierKinds.getter();
      sub_21686BCEC(__dst);
      v91 = sub_216CE1254(0, v90);

      OUTLINED_FUNCTION_4_75();
      v92(v73, v82);
      v93 = OUTLINED_FUNCTION_13_41();
      v94(v93);
      result = sub_216697664(v84, &qword_27CAB6A00);
      v89 = !v91;
    }

    *(v80 + v70[16]) = v89 & 1;
  }

  else
  {
    v35 = sub_21700E2E4();
    sub_2166D635C(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v37 = v36;
    v38 = type metadata accessor for TopSearchLockup();
    *v37 = 25705;
    v37[1] = 0xE200000000000000;
    v37[2] = v38;
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    OUTLINED_FUNCTION_4_75();
    v39(v106, v107);
    return (v27)(v111, v13);
  }

  return result;
}

uint64_t sub_216AC09AC(uint64_t a1)
{
  result = sub_2166D635C(&qword_280E41D00, type metadata accessor for TopSearchLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216AC0A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216AC0A74()
{
  result = qword_280E41D08[0];
  if (!qword_280E41D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E41D08);
  }

  return result;
}

uint64_t sub_216AC0AC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216AC0B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v3[10] = v4;
  OUTLINED_FUNCTION_2(v4);
  v3[11] = v5;
  v3[12] = OUTLINED_FUNCTION_80();
  v6 = sub_21700DA84();
  v3[13] = v6;
  OUTLINED_FUNCTION_2(v6);
  v3[14] = v7;
  v3[15] = OUTLINED_FUNCTION_80();
  v3[16] = type metadata accessor for PresentSheetAction();
  v3[17] = OUTLINED_FUNCTION_80();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v3[18] = v8;
  OUTLINED_FUNCTION_2(v8);
  v3[19] = v9;
  v3[20] = OUTLINED_FUNCTION_80();
  v3[21] = type metadata accessor for MusicAppDestination(0);
  v3[22] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[23] = sub_21700EA24();
  v11 = sub_21700E9B4();
  v3[24] = v11;
  v3[25] = v10;

  return MEMORY[0x2822009F8](sub_216AC0D18, v11, v10);
}

uint64_t sub_216AC0D18()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[16];
  v16 = v0[15];
  v17 = v0[14];
  v15 = v0[13];
  v18 = v0[12];
  v19 = v0[11];
  v20 = v0[10];
  v4 = v0[8];
  v5 = *(type metadata accessor for ViewLyricsAction() + 20);
  sub_21700C084();
  OUTLINED_FUNCTION_9();
  (*(v6 + 16))(v1, v4 + v5);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_216AC146C(v1, v2 + *(v3 + 20), type metadata accessor for MusicAppDestination);
  type metadata accessor for ModalActionModelDestinations.Destination();
  swift_storeEnumTagMultiPayload();
  sub_21700D284();
  OUTLINED_FUNCTION_9();
  (*(v7 + 16))(v2, v4);
  sub_21700E094();
  v0[5] = v3;
  v0[6] = sub_216AC1424(qword_280E3EA78, type metadata accessor for PresentSheetAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_216AC146C(v2, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
  (*(v17 + 16))(v18, v16, v15);
  (*(v19 + 104))(v18, *MEMORY[0x277D21E10], v20);
  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  v9[1] = sub_216AC0FB8;
  v10 = v0[18];
  v11 = v0[12];
  v12 = v0[9];
  v13 = v0[7];

  return MEMORY[0x28217F468](v13, v0 + 2, v11, v12, v10);
}

uint64_t sub_216AC0FB8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 216) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 200);
    v8 = sub_216AC1218;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
    v6 = *(v2 + 192);
    v7 = *(v2 + 200);
    v8 = sub_216AC1138;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_216AC1138()
{
  OUTLINED_FUNCTION_4_76();
  (*(v6 + 8))(v3, v4);
  OUTLINED_FUNCTION_0_135();
  (*(v5 + 8))(v0, v1);
  OUTLINED_FUNCTION_1_114();

  v7 = *(v2 + 8);

  return v7();
}

uint64_t sub_216AC1218()
{
  OUTLINED_FUNCTION_4_76();
  (*(v6 + 8))(v3, v4);
  OUTLINED_FUNCTION_0_135();
  (*(v5 + 8))(v0, v1);
  OUTLINED_FUNCTION_1_114();
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);

  v7 = *(v2 + 8);

  return v7();
}

uint64_t sub_216AC1300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2166DFAC0;

  return sub_216AC0B30(a1, a2, a3);
}

unint64_t sub_216AC13B0(uint64_t a1)
{
  result = sub_2166DAB60();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216AC1424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216AC146C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216AC14C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_216AC1528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for MappedSection(0);
  v8 = v7;
  v9 = 1;
  if ((a1 & 0x8000000000000000) == 0 && v6 > a1)
  {
    sub_216AC58F0(a2 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * a1, a3, type metadata accessor for MappedSection);
    v9 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v9, 1, v8);
}

uint64_t sub_216AC1614(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_216AC1674(uint64_t a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7MusicUI28PageCollectionViewController_dataSource] = 0;
  v3 = sub_216AC1710(a1);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PageCollectionViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCollectionViewLayout_, v3);
  sub_216AC2580(a1);

  return v4;
}

id sub_216AC1710(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension_];
  v4 = [v2 absoluteDimension_];
  v5 = objc_opt_self();
  v6 = [v5 sizeWithWidthDimension:v3 heightDimension:v4];

  v7 = [objc_opt_self() itemWithLayoutSize_];
  v8 = [v2 fractionalWidthDimension_];
  v9 = [v2 absoluteDimension_];
  v10 = [v5 sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21701D820;
  *(v12 + 32) = v7;
  sub_216685F4C(0, &qword_27CAB9448);
  v13 = v7;
  v14 = sub_21700E804();

  v15 = [v11 horizontalGroupWithLayoutSize:v10 subitems:v14];

  v16 = [objc_opt_self() sectionWithGroup_];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v16;
  v18 = objc_allocWithZone(MEMORY[0x277D752B8]);
  sub_21700DF14();
  v19 = v16;
  v20 = sub_216AC59A8(sub_216AC5B18, v17);

  return v20;
}

void sub_216AC19A4()
{
  *(v0 + OBJC_IVAR____TtC7MusicUI28PageCollectionViewController_dataSource) = 0;
  sub_21700F584();
  __break(1u);
}

void sub_216AC1A24(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = type metadata accessor for PageCollectionViewController();
  objc_msgSendSuper2(&v10, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  OUTLINED_FUNCTION_143();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_216AC5B10;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_216AC1614;
  v9[3] = &block_descriptor_19;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_216AC1B34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_216AC1C08();
  }
}

uint64_t sub_216AC1C08()
{
  result = [v0 collectionView];
  if (!result)
  {
    goto LABEL_17;
  }

  v2 = result;
  v3 = [result visibleCells];

  sub_216685F4C(0, &qword_27CAC1C20);
  v4 = sub_21700E824();

  result = sub_2166BF3C8(v4);
  if (result)
  {
    v5 = result;
    if (result >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x21CEA0220](i, v4);
        }

        else
        {
          v7 = *(v4 + 8 * i + 32);
        }

        v14 = v7;
        v8 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1C58);
        if (swift_dynamicCast())
        {
          sub_2166A0F18(v12, v15);
          v11 = v8;
          v9 = v16;
          v10 = v17;
          __swift_project_boxed_opaque_existential_1(v15, v16);
          (*(v10 + 8))(v9, v10);

          __swift_destroy_boxed_opaque_existential_1Tm(v15);
        }

        else
        {

          v13 = 0;
          memset(v12, 0, sizeof(v12));
          sub_216697664(v12, &qword_27CAC1C60);
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }
}

uint64_t sub_216AC1E30(uint64_t a1)
{
  v74 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1F0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v59 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1C38);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v66 = &v59 - v8;
  v9 = type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_1();
  v73 = v10;
  MEMORY[0x28223BE20](v11);
  v71 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v59 - v14;
  MEMORY[0x28223BE20](v15);
  v76 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1F8);
  OUTLINED_FUNCTION_1();
  v60 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1C40);
  OUTLINED_FUNCTION_1();
  v61 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  sub_2166D9530(&qword_27CAC1C48, &qword_27CABD1F8);
  sub_2166D9530(&qword_27CAC1C50, &qword_27CABD1F0);
  v75 = v17;
  v27 = v74;
  sub_217007CE4();
  v28 = *(v27 + 16);
  v68 = v26;
  if (v28)
  {
    v59 = v1;
    v67 = v22;
    v70 = v9;
    v78[0] = MEMORY[0x277D84F90];
    sub_216AB9AF8(0, v28, 0);
    v29 = v78[0];
    v30 = v27 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v74 = *(v73 + 72);
    v69 = v60 + 32;
    v64 = v30;
    v65 = v28;
    v31 = v28;
    v32 = v21;
    v33 = v60;
    v63 = v32;
    do
    {
      v34 = v76;
      sub_216AC58F0(v30, v76, type metadata accessor for MappedSection);
      sub_216AC58F0(v34, v72, type metadata accessor for MappedSection);
      v73 = sub_216AC5AC8(&qword_280E43BC8, type metadata accessor for MappedSection);
      sub_21700D1C4();
      OUTLINED_FUNCTION_4_77();
      sub_216AC5950(v34, v35);
      v78[0] = v29;
      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_216AB9AF8(v36 > 1, v37 + 1, 1);
        v29 = v78[0];
      }

      *(v29 + 16) = v37 + 1;
      (*(v33 + 32))(v29 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v37, v63, v75);
      v30 += v74;
      --v31;
    }

    while (v31);
    sub_217007CD4();

    v38 = 0;
    v39 = v71;
    v40 = v59;
    do
    {
      v72 = v38;
      OUTLINED_FUNCTION_6_60();
      sub_216AC58F0(v41, v39, v42);
      v43 = sub_216970CA0();
      v44 = *(v43 + 16);
      if (v44)
      {
        v79 = MEMORY[0x277D84F90];
        sub_216AB9AD8(0, v44, 0);
        v45 = v79;
        v69 = v43;
        v46 = v43 + 32;
        do
        {
          sub_2167B7D58(v46, v78);
          sub_2167B7D58(v78, v77);
          sub_21700D1B4();
          __swift_destroy_boxed_opaque_existential_1Tm(v78);
          v79 = v45;
          v48 = *(v45 + 16);
          v47 = *(v45 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_216AB9AD8(v47 > 1, v48 + 1, 1);
            v45 = v79;
          }

          *(v45 + 16) = v48 + 1;
          (*(v3 + 32))(v45 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v48, v6, v40);
          v46 += 40;
          --v44;
        }

        while (v44);

        v49 = v71;
      }

      else
      {

        v49 = v39;
      }

      v50 = v72 + 1;
      OUTLINED_FUNCTION_6_60();
      sub_216AC58F0(v49, v76, v51);
      v52 = v66;
      sub_21700D1C4();
      __swift_storeEnumTagSinglePayload(v52, 0, 1, v75);
      v53 = v67;
      sub_217007CC4();
      v38 = v50;

      sub_216697664(v52, &qword_27CAC1C38);
      OUTLINED_FUNCTION_4_77();
      v39 = v71;
      sub_216AC5950(v71, v54);
    }

    while (v50 != v65);
  }

  else
  {
    sub_217007CD4();

    v53 = v22;
  }

  v55 = *(v62 + OBJC_IVAR____TtC7MusicUI28PageCollectionViewController_dataSource);
  v56 = v68;
  if (v55)
  {
    v57 = v55;
    sub_217007D14();
  }

  return (*(v61 + 8))(v56, v53);
}

id sub_216AC2580(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1C10);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  if (qword_27CAB5948 != -1)
  {
    swift_once();
  }

  v26 = v4;
  result = [v2 collectionView];
  if (result)
  {
    v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1C18));

    v15 = sub_217007CF4();
    v16 = OBJC_IVAR____TtC7MusicUI28PageCollectionViewController_dataSource;
    v17 = *&v2[OBJC_IVAR____TtC7MusicUI28PageCollectionViewController_dataSource];
    *&v2[OBJC_IVAR____TtC7MusicUI28PageCollectionViewController_dataSource] = v15;

    sub_21700E514();
    OUTLINED_FUNCTION_143();
    *(swift_allocObject() + 16) = a1;
    sub_216685F4C(0, &qword_27CAC1C20);
    v18 = a1;
    sub_21700DF14();
    sub_21700EDF4();
    v19 = *&v2[v16];
    v20 = v26;
    if (v19)
    {
      v21 = v25;
      (*(v6 + 16))(v25, v12, v26);
      v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v23 = swift_allocObject();
      (*(v6 + 32))(v23 + v22, v21, v20);
      v24 = v19;
      sub_217007D04();
    }

    sub_216AC1E30(v18);
    return (*(v6 + 8))(v12, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216AC2870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v122 = a4;
  v123 = a2;
  v124 = a1;
  v91 = type metadata accessor for VerticalVideoLockup();
  MEMORY[0x28223BE20](v91);
  v90 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9868);
  MEMORY[0x28223BE20](v5 - 8);
  v93 = &v89 - v6;
  v95 = type metadata accessor for TextListComponentModel();
  MEMORY[0x28223BE20](v95);
  v92 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90C0);
  MEMORY[0x28223BE20](v10 - 8);
  v97 = &v89 - v11;
  v100 = type metadata accessor for SuggestionItem();
  MEMORY[0x28223BE20](v100);
  v96 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v99 = &v89 - v14;
  v15 = type metadata accessor for SquareLockup();
  MEMORY[0x28223BE20](v15 - 8);
  v98 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9960);
  MEMORY[0x28223BE20](v17 - 8);
  v102 = &v89 - v18;
  v106 = type metadata accessor for PopoverSelector();
  MEMORY[0x28223BE20](v106);
  v101 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v104 = &v89 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9990);
  MEMORY[0x28223BE20](v22 - 8);
  v105 = &v89 - v23;
  v110 = type metadata accessor for ParagraphComponentModel();
  MEMORY[0x28223BE20](v110);
  v103 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v108 = &v89 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  MEMORY[0x28223BE20](v27 - 8);
  v109 = &v89 - v28;
  v114 = type metadata accessor for LinkComponentModel();
  MEMORY[0x28223BE20](v114);
  v107 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v112 = &v89 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99E8);
  MEMORY[0x28223BE20](v32 - 8);
  v113 = &v89 - v33;
  v116 = type metadata accessor for InlineUpsell();
  MEMORY[0x28223BE20](v116);
  v111 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v115 = &v89 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AB0);
  MEMORY[0x28223BE20](v37 - 8);
  v118 = &v89 - v38;
  v120 = type metadata accessor for GroupedTextListLockup();
  MEMORY[0x28223BE20](v120);
  v117 = &v89 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v119 = &v89 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B08);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v89 - v43;
  v45 = type metadata accessor for EmptyStateLockup();
  MEMORY[0x28223BE20](v45);
  v47 = &v89 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v89 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B38);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v89 - v52;
  v54 = type metadata accessor for SearchLandingBrickLockup();
  MEMORY[0x28223BE20](v54);
  v56 = &v89 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v59 = &v89 - v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1F0);
  sub_21700D1A4();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8C0);
  v121 = v60;
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      sub_216AC5B20(v59, v56, type metadata accessor for SearchLandingBrickLockup);
      sub_216AC58F0(v56, v53, type metadata accessor for SearchLandingBrickLockup);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB96E0);
      v61 = sub_21700EE04();
      sub_216697664(v53, &qword_27CAB9B38);
      v62 = type metadata accessor for SearchLandingBrickLockup;
      v63 = v56;
LABEL_13:
      sub_216AC5950(v63, v62);
      goto LABEL_14;
    }

    if (swift_dynamicCast())
    {
      sub_216AC5B20(v50, v47, type metadata accessor for EmptyStateLockup);
      sub_216AC58F0(v47, v44, type metadata accessor for EmptyStateLockup);
      __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB96F0);
      v61 = sub_21700EE04();
      sub_216697664(v44, &qword_27CAB9B08);
      v62 = type metadata accessor for EmptyStateLockup;
      v63 = v47;
      goto LABEL_13;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8D0);
    if (swift_dynamicCast())
    {
      v125 = v126;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9700);
LABEL_22:
      v61 = sub_21700EE04();
      goto LABEL_3;
    }

    v64 = v119;
    v65 = v120;
    if (swift_dynamicCast())
    {
      v66 = v117;
      sub_216AC5B20(v64, v117, type metadata accessor for GroupedTextListLockup);
      v67 = v118;
      sub_216AC58F0(v66, v118, type metadata accessor for GroupedTextListLockup);
      __swift_storeEnumTagSinglePayload(v67, 0, 1, v65);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9710);
      v61 = sub_21700EE04();
      sub_216697664(v67, &qword_27CAB9AB0);
      v68 = type metadata accessor for GroupedTextListLockup;
LABEL_12:
      v62 = v68;
      v63 = v66;
      goto LABEL_13;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9728);
    if (swift_dynamicCast())
    {
      v125 = v126;

      v70 = &qword_27CAB9720;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8E0);
      if (swift_dynamicCast())
      {
        v125 = v126;

        v70 = &qword_27CAB9738;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8F0);
        if (swift_dynamicCast())
        {
          v125 = v126;

          v70 = &qword_27CAB9748;
        }

        else
        {
          v71 = v115;
          v72 = v116;
          if (swift_dynamicCast())
          {
            v66 = v111;
            sub_216AC5B20(v71, v111, type metadata accessor for InlineUpsell);
            v73 = v113;
            sub_216AC58F0(v66, v113, type metadata accessor for InlineUpsell);
            __swift_storeEnumTagSinglePayload(v73, 0, 1, v72);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9758);
            v61 = sub_21700EE04();
            sub_216697664(v73, &qword_27CAB99E8);
            v68 = type metadata accessor for InlineUpsell;
            goto LABEL_12;
          }

          v74 = v112;
          v75 = v114;
          if (swift_dynamicCast())
          {
            v66 = v107;
            sub_216AC5B20(v74, v107, type metadata accessor for LinkComponentModel);
            v76 = v109;
            sub_216AC58F0(v66, v109, type metadata accessor for LinkComponentModel);
            __swift_storeEnumTagSinglePayload(v76, 0, 1, v75);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9768);
            v61 = sub_21700EE04();
            sub_216697664(v76, &qword_27CAB7A30);
            v68 = type metadata accessor for LinkComponentModel;
            goto LABEL_12;
          }

          v77 = v108;
          v78 = v110;
          if (swift_dynamicCast())
          {
            v66 = v103;
            sub_216AC5B20(v77, v103, type metadata accessor for ParagraphComponentModel);
            v79 = v105;
            sub_216AC58F0(v66, v105, type metadata accessor for ParagraphComponentModel);
            __swift_storeEnumTagSinglePayload(v79, 0, 1, v78);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9778);
            v61 = sub_21700EE04();
            sub_216697664(v79, &qword_27CAB9990);
            v68 = type metadata accessor for ParagraphComponentModel;
            goto LABEL_12;
          }

          v80 = v104;
          v81 = v106;
          if (swift_dynamicCast())
          {
            v66 = v101;
            sub_216AC5B20(v80, v101, type metadata accessor for PopoverSelector);
            v82 = v102;
            sub_216AC58F0(v66, v102, type metadata accessor for PopoverSelector);
            __swift_storeEnumTagSinglePayload(v82, 0, 1, v81);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9788);
            v61 = sub_21700EE04();
            sub_216697664(v82, &qword_27CAB9960);
            v68 = type metadata accessor for PopoverSelector;
            goto LABEL_12;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF920);
          if (swift_dynamicCast())
          {
            v125 = v126;

            v70 = &qword_27CAB9798;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF940);
            if (swift_dynamicCast())
            {
              v125 = v126;

              v70 = &qword_27CAB97C8;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF970);
              if (swift_dynamicCast())
              {
                v83 = v126;
                v84 = v98;
                sub_216DE9428();
                sub_216AC5950(v84, type metadata accessor for SquareLockup);
                v125 = v83;

                v70 = &qword_27CAB97A8;
              }

              else
              {
                if (swift_dynamicCast())
                {
                  v66 = v96;
                  sub_216AC5B20(v99, v96, type metadata accessor for SuggestionItem);
                  v85 = v97;
                  sub_216AC58F0(v66, v97, type metadata accessor for SuggestionItem);
                  __swift_storeEnumTagSinglePayload(v85, 0, 1, v100);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97B8);
                  v61 = sub_21700EE04();
                  sub_216697664(v85, &qword_27CAB90C0);
                  v68 = type metadata accessor for SuggestionItem;
                  goto LABEL_12;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97E0);
                if (swift_dynamicCast())
                {
                  v125 = v126;

                  v70 = &qword_27CAB97D8;
                }

                else
                {
                  if (swift_dynamicCast())
                  {
                    v66 = v92;
                    sub_216AC5B20(v94, v92, type metadata accessor for TextListComponentModel);
                    v86 = v93;
                    sub_216AC58F0(v66, v93, type metadata accessor for TextListComponentModel);
                    __swift_storeEnumTagSinglePayload(v86, 0, 1, v95);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97F0);
                    v61 = sub_21700EE04();
                    sub_216697664(v86, &qword_27CAB9868);
                    v68 = type metadata accessor for TextListComponentModel;
                    goto LABEL_12;
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF990);
                  if (swift_dynamicCast())
                  {
                    v125 = v126;

                    v70 = &qword_27CAB9800;
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9A0);
                    if (!swift_dynamicCast())
                    {
                      v61 = 0;
                      goto LABEL_14;
                    }

                    v87 = v126;
                    v88 = v90;
                    sub_216DE8FE8();
                    sub_216AC5950(v88, type metadata accessor for VerticalVideoLockup);
                    v125 = v87;

                    v70 = &qword_27CAB9810;
                  }
                }
              }
            }
          }
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(v70);
    goto LABEL_22;
  }

  v125 = v126;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB96D0);
  v61 = sub_21700EE04();
LABEL_3:

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1Tm(v127);
  return v61;
}

unint64_t sub_216AC3EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for MappedSection(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21700E514() == a2 && v13 == a3)
  {
  }

  else
  {
    v15 = sub_21700F7D4();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  result = sub_217006394();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *(a5 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v17 = sub_216AC58F0(a5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * result, v12, type metadata accessor for MappedSection);
  MEMORY[0x28223BE20](v17);
  *(&v18 - 2) = v12;
  *(&v18 - 1) = a4;
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1C28);
  v19[4] = sub_2166D9530(&qword_27CAC1C30, &qword_27CAC1C28);
  __swift_allocate_boxed_opaque_existential_1(v19);
  type metadata accessor for SectionHeaderView();
  sub_216AC5AC8(qword_280E3F988, type metadata accessor for SectionHeaderView);
  sub_217009874();
  MEMORY[0x21CE9FE00](v19);
  return sub_216AC5950(v12, type metadata accessor for MappedSection);
}

uint64_t sub_216AC413C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MappedSection(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216AC58F0(a1, v7, type metadata accessor for MappedSection);
  v8 = sub_217006394();
  v9 = v7[1];
  *a2 = *v7;
  a2[1] = v9;
  v10 = v5[8];
  v11 = type metadata accessor for SectionHeaderView();
  sub_216AC5880(v7 + v10, a2 + v11[6]);
  a2[2] = *(v7 + v5[14]);
  LOBYTE(v5) = *(v7 + v5[15]);
  sub_21700DF14();
  result = sub_216AC5950(v7, type metadata accessor for MappedSection);
  *(a2 + v11[7]) = v5;
  *(a2 + v11[8]) = v8;
  *(a2 + v11[9]) = 1;
  return result;
}

uint64_t sub_216AC426C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_21700E514() == a2 && v4 == a3)
  {
  }

  else
  {
    v6 = sub_21700F7D4();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_216685F4C(0, &qword_27CAC1C20);
  return sub_21700EE14();
}

void sub_216AC4330(unint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v126 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0);
  MEMORY[0x28223BE20](v7 - 8);
  v124 = &v118 - v8;
  v9 = sub_217008844();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v118 - v14;
  v16 = type metadata accessor for MappedSection(0);
  v123 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_msgSend(a2 container];
  v21 = v20;
  swift_unknownObjectRelease();
  sub_216AC1528(a1, a3, v15);
  v125 = v16;
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_216697664(v15, &qword_27CABBAE0);
LABEL_5:
    v126;
    return;
  }

  sub_216AC5B20(v15, v19, type metadata accessor for MappedSection);
  v22 = [a2 traitCollection];
  v23 = [v22 preferredContentSizeCategory];

  sub_216AC5218(v12);
  sub_216B2B128(v127, v21);
  (*(v10 + 8))(v12, v9);
  v24 = v128;
  if ((~v128 & 0x7E) == 0)
  {
    sub_216AC5950(v19, type metadata accessor for MappedSection);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v122 = v19;
  v25 = *&v127[1];
  v120 = v127[0];
  v119 = v127[2];
  v26 = *&v127[3];
  v27 = v129;
  v28 = v130;
  v30 = v131;
  v29 = v132;
  v31 = v134;
  v121 = v133;
  v32 = v135;
  LODWORD(v126) = v128;
  v33 = v124;
  sub_216AC5880(a3 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * a1 + *(v125 + 24), v124);
  v34 = _s7SectionV6HeaderVMa(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v34);
  sub_216697664(v33, &qword_27CABDCC0);
  if (EnumTagSinglePayload == 1)
  {
    v36 = MEMORY[0x277D84F90];
  }

  else
  {
    v37 = objc_opt_self();
    v38 = [v37 fractionalWidthDimension_];
    v39 = [v37 estimatedDimension_];
    v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

    sub_216685F4C(0, &qword_27CAC1C68);
    v41 = sub_21700E514();
    v43 = v42;
    v44 = v40;
    v45 = sub_216AC5638(v44, v41, v43, 2);
    [v45 setZIndex_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_21701D820;
    *(v46 + 32) = v45;

    v36 = v46;
  }

  v47 = (v126 >> 5) & 3;
  if (v47)
  {
    if (v47 != 1)
    {
      v77 = sub_216B2B5F4(v21);
      v78 = objc_opt_self();
      v79 = [v78 fractionalWidthDimension_];
      v80 = [v78 estimatedDimension_];
      v81 = objc_opt_self();
      v82 = [v81 sizeWithWidthDimension:v79 heightDimension:v80];

      v83 = [objc_opt_self() itemWithLayoutSize_];
      v84 = [v78 fractionalWidthDimension_];
      v85 = [v78 estimatedDimension_];
      v86 = [v81 sizeWithWidthDimension:v84 heightDimension:v85];

      v87 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_21701D820;
      *(v88 + 32) = v83;
      sub_216685F4C(0, &qword_27CAB9448);
      v89 = v83;
      v90 = sub_21700E804();

      v91 = [v87 verticalGroupWithLayoutSize:v86 subitems:v90];

      v92 = [objc_opt_self() sectionWithGroup_];
      [v92 setContentInsets_];
      sub_216685F4C(0, &qword_27CAC1C68);
      v93 = sub_21700E804();

      [v92 setBoundarySupplementaryItems_];

LABEL_25:
      v94 = v122;
LABEL_48:
      sub_216AC5950(v94, type metadata accessor for MappedSection);
      return;
    }

    if (v120 >= 1)
    {
      v48 = v21 - (v29 + v31);
      v49 = ceil(v120 + -1.0) * v27;
      if (v48 >= v27 * 0.0 + (v32 * v48 - v49) / v120)
      {
        v50 = v27 * 0.0 + (v32 * v48 - v49) / v120;
      }

      else
      {
        v50 = v21 - (v29 + v31);
      }

      v51 = sub_216A4C914(v48, v27, v50);
      v53 = v52;
      v54 = v51;
      v55 = sub_216B2B5F4(v52);
      v56 = objc_opt_self();
      v57 = [v56 absoluteDimension_];
      v58 = [v56 estimatedDimension_];
      v59 = objc_opt_self();
      v60 = [v59 sizeWithWidthDimension:v57 heightDimension:v58];

      v61 = [objc_opt_self() itemWithLayoutSize_];
      v62 = [v56 fractionalWidthDimension_];
      v63 = [v56 &selRef_activationState + 3];
      v64 = [v59 sizeWithWidthDimension:v62 heightDimension:v63];

      v65 = objc_opt_self();
      v66 = v61;
      sub_21683138C(v66, v54);
      sub_216685F4C(0, &qword_27CAB9448);
      v67 = sub_21700E804();

      v68 = [v65 horizontalGroupWithLayoutSize:v64 subitems:v67];

      v69 = [objc_opt_self() fixedSpacing_];
      [v68 setInterItemSpacing_];

      v70 = [objc_opt_self() sectionWithGroup_];
      [v70 setContentInsets_];
      sub_216685F4C(0, &qword_27CAC1C68);
      v71 = sub_21700E804();

      [v70 setBoundarySupplementaryItems_];

      goto LABEL_25;
    }

    goto LABEL_51;
  }

  v124 = v36;
  if ((v126 & 0x80000000) != 0)
  {
    if (*&v25 < 1 || v119 < 1)
    {
      goto LABEL_53;
    }

    v75 = v122;
    v97 = *&v122[*(v125 + 48)] == 1 && *&v25 == 1;
    if (v24)
    {
      v76 = v120;
      if (!v97)
      {
LABEL_42:
        v98 = v21 - (v29 + v31);
        goto LABEL_44;
      }
    }

    else
    {
      v76 = v120;
      if (!v97)
      {
        v98 = v21 - v26;
LABEL_44:
        v99 = (v119 + -1.0) * v27 + (v32 * v98 - ceil(*&v25 + -1.0) * v27) / *&v25 * v119;
        if (v21 - (v29 + v31) >= v99)
        {
          v74 = v99;
        }

        else
        {
          v74 = v21 - (v29 + v31);
        }

LABEL_47:
        v100 = sub_216B2B5F4(v74);
        v101 = objc_opt_self();
        v102 = [v101 fractionalWidthDimension_];
        v103 = [v101 estimatedDimension_];
        v104 = objc_opt_self();
        v105 = [v104 sizeWithWidthDimension:v102 heightDimension:v103];

        v106 = [objc_opt_self() itemWithLayoutSize_];
        v107 = [v101 absoluteDimension_];
        v108 = [v101 &selRef_activationState + 3];
        v109 = [v104 sizeWithWidthDimension:v107 heightDimension:v108];

        v110 = objc_opt_self();
        v111 = v106;
        sub_21683138C(v111, v76);
        sub_216685F4C(0, &qword_27CAB9448);
        v112 = sub_21700E804();

        v113 = v75;
        v114 = [v110 verticalGroupWithLayoutSize:v109 subitems:v112];

        v115 = [objc_opt_self() fixedSpacing_];
        [v114 setInterItemSpacing_];

        v116 = [objc_opt_self() sectionWithGroup_];
        [v116 setContentInsets_];
        [v116 setInterGroupSpacing_];
        [v116 setOrthogonalScrollingBehavior_];
        sub_216685F4C(0, &qword_27CAC1C68);
        v117 = sub_21700E804();

        [v116 setBoundarySupplementaryItems_];

        v94 = v113;
        goto LABEL_48;
      }
    }

    if (v32 < 1.0)
    {
      v32 = 1.0;
    }

    goto LABEL_42;
  }

  if (v25 > 0.0)
  {
    v72 = v21 - (v29 + v31);
    v73 = v27 * 0.0 + (v32 * v72 - ceil(v25 + -1.0) * v27) / v25;
    if (v72 >= v73)
    {
      v74 = v73;
    }

    else
    {
      v74 = v21 - (v29 + v31);
    }

    v75 = v122;
    v76 = v120;
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_216AC5218@<X0>(uint64_t a1@<X8>)
{
  sub_21700E514();
  OUTLINED_FUNCTION_3_94();
  OUTLINED_FUNCTION_5_70();
  v5 = v5 && v1 == v4;
  if (v5)
  {
    v6 = MEMORY[0x277CDF9F8];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_136();
  OUTLINED_FUNCTION_7_66();

  if (v2)
  {
    v6 = MEMORY[0x277CDF9F8];
    goto LABEL_9;
  }

  sub_21700E514();
  OUTLINED_FUNCTION_3_94();
  OUTLINED_FUNCTION_5_70();
  if (v5 && v1 == v12)
  {
    v6 = MEMORY[0x277CDF9E0];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_136();
  OUTLINED_FUNCTION_7_66();

  if (v2)
  {
    v6 = MEMORY[0x277CDF9E0];
    goto LABEL_9;
  }

  sub_21700E514();
  OUTLINED_FUNCTION_3_94();
  OUTLINED_FUNCTION_5_70();
  if (v5 && v1 == v14)
  {
    v6 = MEMORY[0x277CDF9E8];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_136();
  OUTLINED_FUNCTION_7_66();

  v16 = MEMORY[0x277CDF9E8];
  v6 = MEMORY[0x277CDF9E8];
  if (v2)
  {
    goto LABEL_9;
  }

  sub_21700E514();
  OUTLINED_FUNCTION_3_94();
  OUTLINED_FUNCTION_5_70();
  if (v5 && v1 == v17)
  {
    v6 = MEMORY[0x277CDF9D8];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_136();
  OUTLINED_FUNCTION_7_66();

  if (v2)
  {
    v6 = MEMORY[0x277CDF9D8];
    goto LABEL_9;
  }

  sub_21700E514();
  OUTLINED_FUNCTION_3_94();
  OUTLINED_FUNCTION_5_70();
  if (v5 && v1 == v19)
  {
    v6 = MEMORY[0x277CDF9F0];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_136();
  OUTLINED_FUNCTION_7_66();

  if (v2)
  {
    v6 = MEMORY[0x277CDF9F0];
    goto LABEL_9;
  }

  sub_21700E514();
  OUTLINED_FUNCTION_3_94();
  OUTLINED_FUNCTION_5_70();
  if (v5 && v1 == v21)
  {
    v6 = MEMORY[0x277CDFA00];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_136();
  OUTLINED_FUNCTION_7_66();

  if (v2)
  {
    v6 = MEMORY[0x277CDFA00];
    goto LABEL_9;
  }

  sub_21700E514();
  OUTLINED_FUNCTION_3_94();
  OUTLINED_FUNCTION_5_70();
  if (v5 && v1 == v23)
  {
    v6 = MEMORY[0x277CDFA10];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_136();
  OUTLINED_FUNCTION_7_66();

  if (v2)
  {
    v6 = MEMORY[0x277CDFA10];
    goto LABEL_9;
  }

  sub_21700E514();
  OUTLINED_FUNCTION_3_94();
  OUTLINED_FUNCTION_5_70();
  if (v5 && v1 == v25)
  {
    v6 = MEMORY[0x277CDF988];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_136();
  OUTLINED_FUNCTION_7_66();

  if (v2)
  {
    v6 = MEMORY[0x277CDF988];
    goto LABEL_9;
  }

  sub_21700E514();
  OUTLINED_FUNCTION_3_94();
  OUTLINED_FUNCTION_5_70();
  if (v5 && v1 == v27)
  {
    v6 = MEMORY[0x277CDF998];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_136();
  OUTLINED_FUNCTION_7_66();

  if (v2)
  {
    v6 = MEMORY[0x277CDF998];
    goto LABEL_9;
  }

  sub_21700E514();
  OUTLINED_FUNCTION_3_94();
  OUTLINED_FUNCTION_5_70();
  if (v5 && v1 == v29)
  {
    v6 = MEMORY[0x277CDF9A8];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_136();
  OUTLINED_FUNCTION_7_66();

  if (v2)
  {
    v6 = MEMORY[0x277CDF9A8];
    goto LABEL_9;
  }

  sub_21700E514();
  OUTLINED_FUNCTION_3_94();
  OUTLINED_FUNCTION_5_70();
  if (v5 && v1 == v31)
  {
    v6 = MEMORY[0x277CDF9B8];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_136();
  OUTLINED_FUNCTION_7_66();

  if (v2)
  {
    v6 = MEMORY[0x277CDF9B8];
    goto LABEL_9;
  }

  sub_21700E514();
  v33 = OUTLINED_FUNCTION_3_94();
  v6 = MEMORY[0x277CDF9D0];
  if (v2 == v33 && v1 == v34)
  {
LABEL_8:

    goto LABEL_9;
  }

  v36 = OUTLINED_FUNCTION_0_136();

  if ((v36 & 1) == 0)
  {
    v6 = v16;
  }

LABEL_9:
  v7 = *v6;
  sub_217008844();
  OUTLINED_FUNCTION_34();
  v10 = *(v9 + 104);

  return v10(a1, v7, v8);
}

id sub_216AC5638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21700E4D4();

  v7 = [swift_getObjCClassFromMetadata() boundarySupplementaryItemWithLayoutSize:a1 elementKind:v6 alignment:a4];

  return v7;
}

id sub_216AC575C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_216AC57D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1C10);

  return sub_216AC426C(a1, a2, a3);
}

uint64_t sub_216AC5880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216AC58F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216AC5950(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_216AC59A8(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_216AC5A4C;
  v6[3] = &block_descriptor_15;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithSectionProvider_];
  _Block_release(v3);

  return v4;
}

id sub_216AC5A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_216AC5AC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216AC5B20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_216AC5BB0()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78C8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23_33();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22_36(v6);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_95();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_14_44();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_78();
  MEMORY[0x28223BE20](v12);
  if (OUTLINED_FUNCTION_26_33())
  {
    v13 = OUTLINED_FUNCTION_31_34();
    v14(v13);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v15 + 8))(v3);
  }

  else
  {
    OUTLINED_FUNCTION_36_25();
    OUTLINED_FUNCTION_35_27();
    if (v16)
    {
      sub_2166997CC(v0, &qword_27CAB78D0);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E18);
      v18 = MEMORY[0x277D84F90];
      *v52 = v17;
      v52[1] = v18;
      v19 = OUTLINED_FUNCTION_11_49();
      v20(v19);
      sub_21700CF04();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D8);
      OUTLINED_FUNCTION_25_30();
      v21 = OUTLINED_FUNCTION_29_29();
      v22(v21);
      sub_216681B64(v54, v53, &qword_27CAB78E0);
      if (v53[3])
      {
        OUTLINED_FUNCTION_19_36();
        OUTLINED_FUNCTION_0_137();
        sub_2166D2434(v23, v24);
        v25 = OUTLINED_FUNCTION_16_42();
        v27 = OUTLINED_FUNCTION_6_61(v25, v26);
        v28(v27);
        OUTLINED_FUNCTION_21_36();
        v29 = OUTLINED_FUNCTION_8_57();
        v30(v29);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v31 + 8))(v3);
        sub_2166997CC(v54, &qword_27CAB78E0);
        v32 = OUTLINED_FUNCTION_2_98();
        v33(v32);

        __swift_destroy_boxed_opaque_existential_1Tm(v53);
      }

      else
      {
        v47 = OUTLINED_FUNCTION_8_57();
        v48(v47);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v49 + 8))(v3);
        OUTLINED_FUNCTION_32_21(v54);
        v50 = OUTLINED_FUNCTION_2_98();
        v51(v50);
        OUTLINED_FUNCTION_32_21(v53);
      }
    }

    else
    {
      v34 = OUTLINED_FUNCTION_10_52();
      v35(v34);
      v36 = OUTLINED_FUNCTION_9_56();
      v37(v36);
      v38 = OUTLINED_FUNCTION_7_67();
      v39(v38);
      type metadata accessor for ContentDescriptor();
      OUTLINED_FUNCTION_12_46();
      sub_2166D2434(v40, v41);
      OUTLINED_FUNCTION_17_44();
      sub_21700E954();
      v42 = OUTLINED_FUNCTION_13_42();
      v43(v42, v1);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v44 + 8))(v3);
      v45 = OUTLINED_FUNCTION_30_31();
      v46(v45);
    }
  }

  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_216AC609C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78C8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23_33();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22_36(v6);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_95();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_14_44();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_78();
  MEMORY[0x28223BE20](v12);
  if (OUTLINED_FUNCTION_26_33())
  {
    v13 = OUTLINED_FUNCTION_31_34();
    v14(v13);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v15 + 8))(v3);
  }

  else
  {
    OUTLINED_FUNCTION_36_25();
    OUTLINED_FUNCTION_35_27();
    if (v16)
    {
      sub_2166997CC(v0, &qword_27CAB78D0);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71D8);
      v18 = MEMORY[0x277D84F90];
      *v50 = v17;
      v50[1] = v18;
      v19 = OUTLINED_FUNCTION_11_49();
      v20(v19);
      sub_21700CF04();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D8);
      OUTLINED_FUNCTION_25_30();
      v21 = OUTLINED_FUNCTION_29_29();
      v22(v21);
      sub_216681B64(v52, v51, &qword_27CAB78E0);
      if (v51[3])
      {
        OUTLINED_FUNCTION_19_36();
        OUTLINED_FUNCTION_0_137();
        sub_2166D2434(v23, v24);
        v25 = OUTLINED_FUNCTION_16_42();
        v27 = OUTLINED_FUNCTION_6_61(v25, v26);
        v28(v27);
        OUTLINED_FUNCTION_21_36();
        v29 = OUTLINED_FUNCTION_8_57();
        v30(v29);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v31 + 8))(v3);
        sub_2166997CC(v52, &qword_27CAB78E0);
        v32 = OUTLINED_FUNCTION_2_98();
        v33(v32);

        __swift_destroy_boxed_opaque_existential_1Tm(v51);
      }

      else
      {
        v45 = OUTLINED_FUNCTION_8_57();
        v46(v45);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v47 + 8))(v3);
        OUTLINED_FUNCTION_32_21(v52);
        v48 = OUTLINED_FUNCTION_2_98();
        v49(v48);
        OUTLINED_FUNCTION_32_21(v51);
      }
    }

    else
    {
      v34 = OUTLINED_FUNCTION_10_52();
      v35(v34);
      v36 = OUTLINED_FUNCTION_9_56();
      v37(v36);
      v38 = OUTLINED_FUNCTION_7_67();
      v39(v38);
      type metadata accessor for PlayActionItem();
      sub_2166D2434(qword_280E43180, type metadata accessor for PlayActionItem);
      OUTLINED_FUNCTION_17_44();
      sub_21700E954();
      v40 = OUTLINED_FUNCTION_13_42();
      v41(v40, v1);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v42 + 8))(v3);
      v43 = OUTLINED_FUNCTION_30_31();
      v44(v43);
    }
  }

  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_216AC65F8()
{
  OUTLINED_FUNCTION_49();
  v56 = v3;
  v57 = v4;
  v58 = v5;
  v59 = v6;
  v65 = v7;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78C8);
  OUTLINED_FUNCTION_1();
  v60 = v11;
  v61 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  sub_21700E2E4();
  OUTLINED_FUNCTION_1();
  v63 = v16;
  v64 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_37_29(v17);
  v18 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_95();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  OUTLINED_FUNCTION_36(v22);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_14_44();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_78();
  MEMORY[0x28223BE20](v28);
  if (OUTLINED_FUNCTION_26_33())
  {
    (*(v20 + 8))(v65, v18);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v29 + 8))(v9);
  }

  else
  {
    v55 = v18;
    v30 = v65;
    sub_21700CD74();
    if (__swift_getEnumTagSinglePayload(v1, 1, v24) == 1)
    {
      v59 = v9;
      sub_2166997CC(v1, &qword_27CAB78D0);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v56);
      v32 = MEMORY[0x277D84F90];
      v34 = v62;
      v33 = v63;
      *v62 = v31;
      v34[1] = v32;
      v35 = v64;
      (*(v33 + 104))(v34, *MEMORY[0x277D22538], v64);
      sub_21700CF04();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D8);
      sub_21700CF44();
      (*(v60 + 8))(v14, v61);
      sub_216681B64(v68, v66, &qword_27CAB78E0);
      if (v67)
      {
        __swift_project_boxed_opaque_existential_1(v66, v67);
        OUTLINED_FUNCTION_0_137();
        sub_2166D2434(v36, v37);
        v38 = OUTLINED_FUNCTION_16_42();
        (*(v33 + 16))(v39, v34, v35);
        sub_21700DC44();
        v40 = OUTLINED_FUNCTION_13_42();
        v41(v40, v55);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v42 + 8))(v59);
        sub_2166997CC(v68, &qword_27CAB78E0);
        (*(v33 + 8))(v34, v35);

        __swift_destroy_boxed_opaque_existential_1Tm(v66);
      }

      else
      {
        v52 = OUTLINED_FUNCTION_13_42();
        v53(v52, v55);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v54 + 8))(v59);
        OUTLINED_FUNCTION_32_21(v68);
        (*(v33 + 8))(v34, v35);
        OUTLINED_FUNCTION_32_21(v66);
      }
    }

    else
    {
      v43 = OUTLINED_FUNCTION_10_52();
      v44(v43);
      v45 = OUTLINED_FUNCTION_9_56();
      v46(v45);
      v47 = v30;
      v48 = v30;
      v49 = v55;
      v50 = (*(v20 + 16))(v2, v48, v55);
      v58(v50);
      OUTLINED_FUNCTION_17_44();
      sub_21700E954();
      (*(v20 + 8))(v47, v49);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v51 + 8))(v9);
      (*(v26 + 8))(v0, v24);
    }
  }

  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_216AC6B88()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78C8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23_33();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22_36(v6);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_95();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_14_44();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_78();
  MEMORY[0x28223BE20](v12);
  if (OUTLINED_FUNCTION_26_33())
  {
    v13 = OUTLINED_FUNCTION_31_34();
    v14(v13);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v15 + 8))(v3);
  }

  else
  {
    OUTLINED_FUNCTION_36_25();
    OUTLINED_FUNCTION_35_27();
    if (v16)
    {
      sub_2166997CC(v0, &qword_27CAB78D0);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDBE8);
      v18 = MEMORY[0x277D84F90];
      *v50 = v17;
      v50[1] = v18;
      v19 = OUTLINED_FUNCTION_11_49();
      v20(v19);
      sub_21700CF04();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D8);
      OUTLINED_FUNCTION_25_30();
      v21 = OUTLINED_FUNCTION_29_29();
      v22(v21);
      sub_216681B64(v52, v51, &qword_27CAB78E0);
      if (v51[3])
      {
        OUTLINED_FUNCTION_19_36();
        OUTLINED_FUNCTION_0_137();
        sub_2166D2434(v23, v24);
        v25 = OUTLINED_FUNCTION_16_42();
        v27 = OUTLINED_FUNCTION_6_61(v25, v26);
        v28(v27);
        OUTLINED_FUNCTION_21_36();
        v29 = OUTLINED_FUNCTION_8_57();
        v30(v29);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v31 + 8))(v3);
        sub_2166997CC(v52, &qword_27CAB78E0);
        v32 = OUTLINED_FUNCTION_2_98();
        v33(v32);

        __swift_destroy_boxed_opaque_existential_1Tm(v51);
      }

      else
      {
        v45 = OUTLINED_FUNCTION_8_57();
        v46(v45);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v47 + 8))(v3);
        OUTLINED_FUNCTION_32_21(v52);
        v48 = OUTLINED_FUNCTION_2_98();
        v49(v48);
        OUTLINED_FUNCTION_32_21(v51);
      }
    }

    else
    {
      v34 = OUTLINED_FUNCTION_10_52();
      v35(v34);
      v36 = OUTLINED_FUNCTION_9_56();
      v37(v36);
      v38 = OUTLINED_FUNCTION_7_67();
      v39(v38);
      type metadata accessor for SocialProfileEditorPlaylistLockup(0);
      sub_2166D2434(&qword_27CAC1C80, type metadata accessor for SocialProfileEditorPlaylistLockup);
      OUTLINED_FUNCTION_17_44();
      sub_21700E954();
      v40 = OUTLINED_FUNCTION_13_42();
      v41(v40, v1);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v42 + 8))(v3);
      v43 = OUTLINED_FUNCTION_30_31();
      v44(v43);
    }
  }

  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216AC7144@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a2;
  v103 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_37_29(v7);
  v8 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_95();
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v92 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v91 = &v90 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v90 = &v90 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v90 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v90 - v25;
  sub_21700D7A4();
  OUTLINED_FUNCTION_0_7();
  sub_21700CE04();
  v94 = v10;
  v27 = *(v10 + 16);
  v104 = v10 + 16;
  v105 = v8;
  v102 = v27;
  (v27)(v3, v107, v8);
  v99 = v3;
  sub_21700D734();
  v101 = a1;
  sub_21700CE04();
  v28 = sub_21700CDB4();
  v30 = v29;
  v33 = *(v14 + 8);
  v31 = v14 + 8;
  v32 = v33;
  v33(v24, v12);
  if (v30)
  {
    v34 = type metadata accessor for AlbumDetailHeaderLockup();
    *&v106 = v28;
    *(&v106 + 1) = v30;
    v96 = v32;
    sub_21700F364();
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_0_7();
    sub_21700CE04();
    v35 = OUTLINED_FUNCTION_38_22();
    v97 = v31;
    v98 = v12;
    v36 = v102;
    v102(v35);
    OUTLINED_FUNCTION_12_46();
    sub_2166D2434(v37, v38);
    v39 = v103;
    OUTLINED_FUNCTION_24_27();
    type metadata accessor for Artwork();
    sub_21700CE04();
    v40 = OUTLINED_FUNCTION_38_22();
    v36(v40);
    v41 = v34;
    sub_2166D2434(&qword_280E2BF60, type metadata accessor for Artwork);
    OUTLINED_FUNCTION_24_27();
    sub_21700CE04();
    v42 = sub_21700CDB4();
    v44 = v43;
    v45 = v98;
    v46 = v96;
    v96(v26, v98);
    v47 = (v39 + v34[6]);
    *v47 = v42;
    v47[1] = v44;
    sub_21700CE04();
    v48 = OUTLINED_FUNCTION_38_22();
    v102(v48);
    OUTLINED_FUNCTION_20_33();
    sub_216AC65F8();
    v100 = v34;
    *(v39 + v34[7]) = v49;
    sub_21700CE04();
    v50 = sub_21700CDB4();
    v52 = v51;
    v46(v26, v45);
    v53 = (v39 + v34[8]);
    *v53 = v50;
    v53[1] = v52;
    type metadata accessor for ModalPresentationDescriptor();
    OUTLINED_FUNCTION_11_0();
    sub_21700CE04();
    v54 = OUTLINED_FUNCTION_38_22();
    v102(v54);
    sub_2166D2434(&qword_27CAC1C70, type metadata accessor for ModalPresentationDescriptor);
    v55 = v39;
    OUTLINED_FUNCTION_24_27();
    v56 = v90;
    sub_21700CE04();
    LOBYTE(v50) = sub_21700CD44();
    v57 = v98;
    v58 = v96;
    v96(v56, v98);
    *(v55 + v41[10]) = v50 & 1;
    type metadata accessor for VideoArtwork();
    sub_21700CE04();
    (v102)(v99, v107, v105);
    sub_2166D2434(qword_280E44448, type metadata accessor for VideoArtwork);
    v59 = v55;
    sub_21700D734();
    v60 = v91;
    sub_21700CE04();
    v61 = v93;
    sub_21700CD74();
    v58(v60, v57);
    v62 = sub_21700E2C4();
    if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
    {
      sub_2166997CC(v61, &qword_27CAB78D0);
      v63 = 0;
    }

    else
    {
      v71 = v95;
      v63 = sub_21700E2A4();
      v95 = v71;
      (*(*(v62 - 8) + 8))(v61, v62);
    }

    *(v59 + v100[11]) = v63;
    v72 = type metadata accessor for LinkComponentModel();
    v73 = v101;
    sub_21700CE04();
    v74 = v99;
    v75 = v107;
    v76 = v102;
    (v102)(v99, v107, v105);
    v91 = sub_2166D2434(&qword_280E3EC48, type metadata accessor for LinkComponentModel);
    v93 = v72;
    sub_21700D734();
    v77 = v73;
    sub_21700CE04();
    v78 = v105;
    v76(v74, v75, v105);
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    v79 = v77;
    sub_21700CE04();
    v76(v74, v75, v78);
    sub_216AC7D00();
    sub_21700D734();
    v80 = v100;
    v81 = v103;
    *(v103 + v100[12]) = v106;
    v82 = v81;
    __swift_storeEnumTagSinglePayload(v81 + v80[18], 1, 1, v93);
    OUTLINED_FUNCTION_11_0();
    v83 = v92;
    sub_21700CE04();
    v84 = sub_21700CD24();
    v86 = v85;
    (*(v94 + 8))(v107, v78);
    v87 = v98;
    v88 = v96;
    v96(v79, v98);
    result = v88(v83, v87);
    v89 = 10;
    if ((v86 & 1) == 0)
    {
      v89 = v84;
    }

    *(v82 + v80[19]) = v89;
  }

  else
  {
    v64 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_137();
    sub_2166D2434(v65, v66);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    v68 = v67;
    v69 = type metadata accessor for AlbumDetailHeaderLockup();
    *v68 = 25705;
    v68[1] = 0xE200000000000000;
    v68[2] = v69;
    (*(*(v64 - 8) + 104))(v68, *MEMORY[0x277D22530], v64);
    swift_willThrow();
    (*(v94 + 8))(v107, v105);
    v32(v101, v12);
    return sub_2166997CC(v103, &qword_27CAB6D58);
  }

  return result;
}

unint64_t sub_216AC7D00()
{
  result = qword_27CAC1C78;
  if (!qword_27CAC1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1C78);
  }

  return result;
}

unint64_t sub_216AC7D54()
{
  result = qword_280E3D118;
  if (!qword_280E3D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3D118);
  }

  return result;
}

unint64_t sub_216AC7DA8()
{
  result = qword_27CAC1C98;
  if (!qword_27CAC1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1C98);
  }

  return result;
}

unint64_t sub_216AC7DFC()
{
  result = qword_280E2DB60[0];
  if (!qword_280E2DB60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2DB60);
  }

  return result;
}

uint64_t OpenNotificationSettingsPageAction.init(actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700D284();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t OpenNotificationSettingsPageAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21700D284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_216AC7FA4()
{
  result = qword_280E36028;
  if (!qword_280E36028)
  {
    type metadata accessor for SetPersistenceItemAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E36028);
  }

  return result;
}

uint64_t sub_216AC7FFC(uint64_t a1, uint64_t a2)
{
  v16 = sub_21700D2A4();
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Persistence();
  type metadata accessor for ObjectGraph();
  v15[1] = a2;
  sub_21700E094();
  v7 = type metadata accessor for SetPersistenceItemAction();
  v8 = *(v7 + 20);
  sub_2166A6DF8(a1 + v8, v20);
  v9 = (a1 + *(v7 + 24));
  v10 = *v9 == 0xD000000000000015 && 0x8000000217087CA0 == v9[1];
  if (v10 || (sub_21700F7D4() & 1) != 0)
  {
    sub_2166A6DF8(a1 + v8, &v18);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1CF8);
    if (swift_dynamicCast())
    {
      v12 = sub_216AC8254(v17);

      v19 = v11;
      *&v18 = v12;
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      sub_2166EF9C4(&v18, v20);
    }
  }

  sub_216AE36D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v4 + 104))(v6, *MEMORY[0x277D21CA8], v16);
  v13 = sub_21700E1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v13;
}

uint64_t sub_216AC8254(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v1;
  v5 = type metadata accessor for Persistence();
  v6 = MEMORY[0x277D84F90];
  v7 = (a1 + 32);
  do
  {
    v8 = *v7;
    v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    v31[0] = v8;
    swift_bridgeObjectRetain_n();
    v9 = sub_216AE3760(v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    if (v9)
    {
      sub_21700DF14();
      v10 = v9;
      v11 = sub_217007C84();
      v12 = sub_21700ED84();

      if (os_log_type_enabled(v11, v12))
      {
        v30 = v6;
        v13 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31[0] = v29;
        *v13 = 138543618;
        v14 = v9;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v15;
        *v28 = v15;
        *(v13 + 12) = 2082;
        log = v11;
        v16 = sub_21700E364();
        v17 = v5;
        v18 = v3;
        v20 = v19;

        v21 = sub_2166A85FC(v16, v20, v31);
        v3 = v18;
        v5 = v17;

        *(v13 + 14) = v21;
        _os_log_impl(&dword_216679000, log, v12, "Unable to serialize storage item. Dropping. '%{public}@' '%{public}s'", v13, 0x16u);
        sub_2166ADB8C(v28);
        MEMORY[0x21CEA1440](v28, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x21CEA1440](v29, -1, -1);
        v22 = v13;
        v6 = v30;
        MEMORY[0x21CEA1440](v22, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_216938F10();
        v6 = v24;
      }

      v23 = *(v6 + 16);
      if (v23 >= *(v6 + 24) >> 1)
      {
        sub_216938F10();
        v6 = v25;
      }

      *(v6 + 16) = v23 + 1;
      *(v6 + 8 * v23 + 32) = v8;
    }

    ++v7;
    --v2;
  }

  while (v2);
  return v6;
}

_BYTE *storeEnumTagSinglePayload for Page.Header.TitleDisplayMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

ValueMetadata *type metadata accessor for Page.Header.TitleDisplayMode()
{
  return &type metadata for Page.Header.TitleDisplayMode;
}

{
  return &type metadata for Page.Header.TitleDisplayMode;
}

_BYTE *storeEnumTagSinglePayload for Page.Header.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

ValueMetadata *type metadata accessor for Page.Header.Style()
{
  return &type metadata for Page.Header.Style;
}

{
  return &type metadata for Page.Header.Style;
}

uint64_t sub_216AC8778()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CB22978);
  __swift_project_value_buffer(v0, qword_27CB22978);
  return sub_217007C94();
}

void sub_216AC87F8(uint64_t a1, void *a2)
{
  if (qword_27CAB5CD8 != -1)
  {
    swift_once();
  }

  v3 = sub_217007CA4();
  __swift_project_value_buffer(v3, qword_27CB22978);
  v4 = a2;
  oslog = sub_217007C84();
  v5 = sub_21700ED84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136446466;
    v9 = sub_21700F9C4();
    v11 = sub_2166A85FC(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2114;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_216679000, oslog, v5, "Failure to initialize '%{public}s' Error: '%{public}@'", v6, 0x16u);
    sub_216697664(v7, &qword_27CABF880);
    MEMORY[0x21CEA1440](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x21CEA1440](v8, -1, -1);
    MEMORY[0x21CEA1440](v6, -1, -1);
  }
}

uint64_t sub_216AC89CC()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216AC8A20(char a1)
{
  if (a1)
  {
    return 0x6C6C616D73;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_216AC8A54()
{
  v0 = sub_21700F5E4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216AC8AA0(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0x656E696C6E69;
      break;
    case 2:
      result = 0x656772616CLL;
      break;
    case 3:
      result = 0x614C656E696C6E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216AC8B4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216AC89CC();
  *a1 = result;
  return result;
}

uint64_t sub_216AC8B7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AC8A20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216AC8BCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216AC8A54();
  *a1 = result;
  return result;
}

uint64_t sub_216AC8BFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AC8AA0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216AC8C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v85 = a3;
  v86 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v84 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v80 = v7 - v6;
  OUTLINED_FUNCTION_4_1();
  v79 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v78 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  v20 = v74 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v74 - v22;
  v24 = a1;
  sub_21700CE04();
  v25 = sub_21700CDB4();
  v27 = v26;
  v28 = *(v15 + 8);
  v82 = v15 + 8;
  v83 = v13;
  v28(v23, v13);
  v81 = v28;
  if (!v27)
  {
    sub_217006214();
    v25 = sub_2170061F4();
    v27 = v29;
    (*(v78 + 1))(v12, v79);
  }

  *&v90 = v25;
  *(&v90 + 1) = v27;
  v30 = v85;
  sub_21700F364();
  sub_21700D7A4();
  OUTLINED_FUNCTION_8_59();
  OUTLINED_FUNCTION_21_38();
  v31 = *(v84 + 16);
  v79 = v84 + 16;
  v78 = v31;
  (v31)(v80, v94, v86);
  v32 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_27_32();
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v35 = v34;
  v36 = v83;
  v37 = v81;
  v81(v20, v83);
  v38 = (v30 + v32[6]);
  v74[1] = v20;
  v39 = v30;
  *v38 = v33;
  v38[1] = v35;
  v40 = v76;
  OUTLINED_FUNCTION_21_38();
  LOBYTE(v33) = sub_21700CD44();
  v37(v40, v36);
  *(v39 + v32[8]) = v33 & 1;
  v41 = v77;
  sub_21700CE04();
  LOBYTE(v33) = sub_21700CD44();
  v42 = v36;
  v43 = v86;
  v37(v41, v42);
  *(v39 + v32[9]) = (v33 == 2) | v33 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02C8);
  OUTLINED_FUNCTION_8_59();
  sub_21700CE04();
  v44 = v80;
  v45 = v94;
  v78(v80);
  sub_216ACB228();
  OUTLINED_FUNCTION_27_32();
  v75 = v24;
  if (v90)
  {
    *(v39 + v32[10]) = v90;
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    (v78)(v44, v45, v43);
    sub_216819D24();
    sub_21700D734();
    if (v88)
    {
      v90 = v87[0];
      v91 = v87[1];
      v92 = v88;
      v93 = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1640);
      v46 = swift_allocObject();
      v47 = v90;
      v48 = v91;
      *(v46 + 16) = xmmword_217013DA0;
      *(v46 + 32) = v47;
      v49 = v92;
      *(v46 + 48) = v48;
      *(v46 + 64) = v49;
      *(v46 + 80) = v93;
      *(v39 + v32[10]) = v46;
    }

    else
    {
      sub_216697664(v87, &qword_27CAB8E60);
      *(v39 + v32[10]) = 0;
    }
  }

  v50 = v83;
  v51 = v75;
  sub_21700CE04();
  sub_216ACB2AC();
  sub_21700CCC4();
  v52 = OUTLINED_FUNCTION_10_53();
  v53 = v81;
  (v81)(v52);
  *(v39 + v32[11]) = v90;
  sub_21700CE04();
  v54 = sub_21700CDB4();
  v56 = v55;
  v57 = OUTLINED_FUNCTION_10_53();
  v53(v57);
  v58 = (v39 + v32[7]);
  *v58 = v54;
  v58[1] = v56;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_8_59();
  sub_21700CE04();
  sub_216ACB300();
  sub_21700CD14();
  v59 = OUTLINED_FUNCTION_10_53();
  v53(v59);
  v83 = v32;
  *(v39 + v32[12]) = v90;
  OUTLINED_FUNCTION_8_59();
  OUTLINED_FUNCTION_21_38();
  sub_216ACB354();
  v60 = v87;
  OUTLINED_FUNCTION_28_28();
  v61 = OUTLINED_FUNCTION_10_53();
  v53(v61);
  v62 = *(&v87[0] + 1);
  if (!*(&v87[0] + 1))
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v60 = &v90;
    OUTLINED_FUNCTION_28_28();
    v63 = OUTLINED_FUNCTION_10_53();
    v53(v63);
    v62 = *(&v90 + 1);
  }

  v64 = *v60;
  v65 = v83;
  v66 = v85;
  v67 = (v85 + *(v83 + 52));
  *v67 = v64;
  v67[1] = v62;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_8_59();
  sub_21700CE04();
  OUTLINED_FUNCTION_28_28();
  v68 = OUTLINED_FUNCTION_10_53();
  v53(v68);
  v69 = *(&v87[0] + 1);
  if (*(&v87[0] + 1))
  {
    v70 = *&v87[0];
    (*(v84 + 8))(v94, v86);
    result = (v53)(v51, v50);
  }

  else
  {
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    OUTLINED_FUNCTION_28_28();
    (*(v84 + 8))(v94, v86);
    (v53)(v51, v50);
    v72 = OUTLINED_FUNCTION_10_53();
    result = (v53)(v72);
    v69 = *(&v90 + 1);
    v70 = v90;
  }

  v73 = (v66 + *(v65 + 56));
  *v73 = v70;
  v73[1] = v69;
  return result;
}

uint64_t sub_216AC950C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v44 = a2;
  OUTLINED_FUNCTION_110();
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v45 = v12;
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  OUTLINED_FUNCTION_36(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = type metadata accessor for LinkComponentModel();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  v48 = v2;
  sub_21700CE04();
  v47 = v6;
  v22 = *(v6 + 16);
  v50 = a1;
  v49 = v4;
  v43 = v22;
  v22(v10, a1, v4);
  sub_216691E3C(&qword_280E3EC48, type metadata accessor for LinkComponentModel);
  OUTLINED_FUNCTION_20_35();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_216697664(v16, &qword_27CAB7A30);
    v23 = sub_21700E2E4();
    sub_216691E3C(&qword_280E2A0F8, MEMORY[0x277D22548]);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    v25 = v24;
    v26 = type metadata accessor for Page.Footer(0);
    strcpy(v25, "primaryButton");
    *(v25 + 14) = -4864;
    *(v25 + 16) = v26;
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    v27 = OUTLINED_FUNCTION_24_28();
    v28(v27);
    return (*(v45 + 8))(v48, v46);
  }

  else
  {
    v30 = v21;
    v42 = v21;
    sub_216ACB3A8(v16, v21);
    v31 = type metadata accessor for Page.Footer(0);
    v32 = v44;
    sub_216ACB40C(v30, v44 + *(v31 + 20));
    v33 = v48;
    sub_21700CE04();
    v43(v10, v50, v49);
    OUTLINED_FUNCTION_20_35();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v34 = sub_21700CDB4();
    v36 = v35;
    v37 = OUTLINED_FUNCTION_24_28();
    v38(v37);
    v39 = *(v45 + 8);
    v39(v33, v46);
    v40 = OUTLINED_FUNCTION_10_53();
    (v39)(v40);
    result = sub_216ACB1D0(v42, type metadata accessor for LinkComponentModel);
    *v32 = v34;
    v32[1] = v36;
  }

  return result;
}

uint64_t sub_216AC99B4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a1;
  v125 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v103 = v6;
  OUTLINED_FUNCTION_4_1();
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v119 = v8;
  v120 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_4();
  v122 = v12;
  MEMORY[0x28223BE20](v13);
  v114 = &v98 - v14;
  OUTLINED_FUNCTION_4_1();
  v99 = sub_21700D194();
  OUTLINED_FUNCTION_1();
  v98 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v117 = (v18 - v17);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858);
  OUTLINED_FUNCTION_1();
  v113 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_105();
  v112 = v21;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860);
  OUTLINED_FUNCTION_1();
  v107 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_105();
  v108 = v24;
  OUTLINED_FUNCTION_4_1();
  sub_21700D2F4();
  OUTLINED_FUNCTION_1();
  v110 = v26;
  v111 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78C8);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  v35 = &v98 - v34;
  v36 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v40);
  v42 = &v98 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v98 - v44;
  v118 = type metadata accessor for Page(0);
  v46 = v118[16];
  v123 = a3;
  v47 = (a3 + v46);
  *v47 = 0;
  v47[1] = 0;
  v124[3] = &type metadata for Page.JSONSerializationPageInitFailureLogger;
  v124[4] = sub_216ACB464();
  sub_21700CF04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D8);
  sub_21700CEF4();
  (*(v32 + 8))(v35, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v124);
  if (qword_280E45D50 != -1)
  {
    swift_once();
  }

  v48 = v109;
  v49 = __swift_project_value_buffer(v109, qword_280E73D98);
  (*(v107 + 16))(v108, v49, v48);
  sub_2166F1194();
  sub_2166F1214();
  sub_21700D304();
  v50 = v112;
  sub_21700CEE4();
  v51 = v111;
  sub_21700CEF4();
  (*(v113 + 8))(v50, v121);
  (*(v110 + 8))(v29, v51);
  v52 = (v38 + 8);
  v53 = *(v38 + 8);
  v53(v42, v36);
  v54 = v116;
  sub_21700CE04();
  v56 = *(v38 + 16);
  v55 = v38 + 16;
  v121 = v56;
  v56(v106, v45, v36);
  v57 = v115;
  sub_21700D134();
  if (v57)
  {
    v53(v125, v36);
    (*(v119 + 8))(v54, v120);
    return (v53)(v45, v36);
  }

  else
  {
    v114 = v52;
    v115 = 0;
    v112 = v53;
    v59 = v42;
    (*(v98 + 32))(v123, v117, v99);
    sub_21700CE04();
    v104 = v45;
    v121(v42, v45, v36);
    _s7SectionVMa(0);
    v105 = v36;
    OUTLINED_FUNCTION_6_62();
    sub_216691E3C(v60, v61);
    *(v123 + v118[7]) = sub_21700E944();
    type metadata accessor for Page.Header(0);
    sub_21700CE04();
    v62 = v45;
    v63 = v121;
    v121(v42, v62, v36);
    v113 = v55;
    sub_216691E3C(&qword_280E2C8D0, type metadata accessor for Page.Header);
    OUTLINED_FUNCTION_27_32();
    type metadata accessor for Page.Footer(0);
    sub_21700CE04();
    v64 = v104;
    v65 = v105;
    v63(v59, v104, v105);
    sub_216691E3C(&qword_280E2C998, type metadata accessor for Page.Footer);
    OUTLINED_FUNCTION_27_32();
    v66 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D08);
    OUTLINED_FUNCTION_15_46();
    sub_21700CE04();
    v121(v59, v64, v65);
    sub_2168AECC8(&qword_280E3A078, &qword_27CAC1D08);
    sub_21700D734();
    v67 = v123;
    v68 = v118;
    *(v123 + v118[8]) = v124[0];
    v69 = v100;
    sub_21700CE04();
    v70 = sub_21700CD44();
    v71 = v119 + 8;
    v72 = *(v119 + 8);
    v72(v69, v120);
    *(v67 + v68[14]) = v70 & 1;
    v73 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCF8);
    sub_21700CE04();
    v121(v59, v104, v105);
    sub_2168AECC8(qword_280E2E668, &qword_27CABFCF8);
    v111 = v59;
    v74 = v71;
    sub_21700D734();
    v75 = v101;
    sub_21700CE04();
    v76 = sub_21700CD44();
    v77 = v120;
    v72(v75, v120);
    *(v73 + v118[10]) = v76 & 1;
    v78 = v102;
    v79 = v66;
    sub_21700CE04();
    v80 = v103;
    sub_21700CCB4();
    v117 = v72;
    v119 = v74;
    v72(v78, v77);
    v81 = sub_21700D3E4();
    if (__swift_getEnumTagSinglePayload(v80, 1, v81) == 1)
    {
      sub_216697664(v80, &qword_27CAB7D20);
      v82 = 0;
    }

    else
    {
      v83 = v115;
      v82 = sub_21700D3C4();
      v115 = v83;
      (*(*(v81 - 8) + 8))(v80, v81);
    }

    v84 = v118;
    v86 = v122;
    v85 = v123;
    *(v123 + v118[11]) = v82;
    sub_21700CE04();
    v87 = v111;
    v88 = v104;
    v89 = v121;
    v121(v111, v104, v105);
    sub_216AC5BB0();
    *(v85 + v84[12]) = v90;
    OUTLINED_FUNCTION_15_46();
    sub_21700CE04();
    v91 = v88;
    v92 = v105;
    v89(v87, v91, v105);
    sub_216AC5BB0();
    *(v85 + v84[13]) = v93;
    OUTLINED_FUNCTION_15_46();
    sub_21700CE04();
    v94 = v104;
    sub_21700D2E4();
    v95 = v112;
    v112(v125, v92);
    v96 = v120;
    v97 = v117;
    v117(v79, v120);
    v97(v86, v96);
    return v95(v94, v92);
  }
}

uint64_t sub_216ACA70C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  sub_2167839C8(v2);
  return v2;
}

uint64_t sub_216ACA7B8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v62 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  v63 = v7;
  OUTLINED_FUNCTION_4_1();
  v64 = sub_217006924();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v59 = v11;
  MEMORY[0x28223BE20](v12);
  v58 = &v57 - v13;
  v14 = OUTLINED_FUNCTION_4_1();
  _s7SectionVMa(v14);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v60 = type metadata accessor for Page(0);
  v61 = v0;
  v21 = *(v0 + *(v60 + 28));
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v21 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v1 = *(v16 + 72);
    v24 = MEMORY[0x277D84F90];
    do
    {
      v25 = sub_216ACB40C(v23, v20);
      sub_2168C0B98(v25, v26, v27, v28, v29, v30, v31, v32, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
      v34 = v33;
      sub_216ACB1D0(v20, _s7SectionVMa);
      if (v34)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216937908();
          v24 = v35;
        }

        v16 = *(v24 + 16);
        if (v16 >= *(v24 + 24) >> 1)
        {
          sub_216937908();
          v24 = v36;
        }

        *(v24 + 16) = v16 + 1;
        *(v24 + 8 * v16 + 32) = v34;
      }

      v23 += v1;
      --v22;
    }

    while (v22);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v37 = 0;
  v38 = *(v24 + 16);
  v39 = MEMORY[0x277D84F90];
  v40 = v64;
  while (1)
  {
    if (v38 == v37)
    {

      v49 = v62;
      sub_2168282D4(v61 + *(v60 + 20), v62, &qword_27CAB6BF0);
      v50 = type metadata accessor for Page.Header(0);
      if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
      {
        sub_216697664(v49, &qword_27CAB6BF0);
        v51 = v63;
        __swift_storeEnumTagSinglePayload(v63, 1, 1, v40);
      }

      else
      {
        v51 = v63;
        sub_216CE38C0();
        sub_216ACB1D0(v49, type metadata accessor for Page.Header);
        if (__swift_getEnumTagSinglePayload(v51, 1, v40) != 1)
        {
          v37 = *(v9 + 32);
          v1 = v58;
          (v37)(v58, v51, v40);
          v16 = v59;
          (*(v9 + 16))(v59, v1, v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_34;
        }
      }

      sub_216697664(v51, &unk_27CABF9C0);
      return v39;
    }

    if (v37 >= *(v24 + 16))
    {
      break;
    }

    v41 = *(v24 + 8 * v37 + 32);
    v42 = *(v41 + 16);
    v16 = *(v39 + 16);
    v1 = v16 + v42;
    if (__OFADD__(v16, v42))
    {
      goto LABEL_39;
    }

    sub_21700DF14();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v1 > *(v39 + 24) >> 1)
    {
      if (v16 <= v1)
      {
        v44 = v16 + v42;
      }

      else
      {
        v44 = v16;
      }

      sub_2169375D4(isUniquelyReferenced_nonNull_native, v44, 1, v39);
      v39 = v45;
    }

    if (*(v41 + 16))
    {
      if ((*(v39 + 24) >> 1) - *(v39 + 16) < v42)
      {
        goto LABEL_41;
      }

      swift_arrayInitWithCopy();

      if (v42)
      {
        v46 = *(v39 + 16);
        v47 = __OFADD__(v46, v42);
        v48 = v46 + v42;
        if (v47)
        {
          goto LABEL_42;
        }

        *(v39 + 16) = v48;
      }
    }

    else
    {

      if (v42)
      {
        goto LABEL_40;
      }
    }

    ++v37;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_2169375D4(0, *(v39 + 16) + 1, 1, v39);
  v39 = v55;
LABEL_34:
  v53 = *(v39 + 16);
  v52 = *(v39 + 24);
  if (v53 >= v52 >> 1)
  {
    sub_2169375D4(v52 > 1, v53 + 1, 1, v39);
    v39 = v56;
  }

  (*(v9 + 8))(v1, v40);
  *(v39 + 16) = v53 + 1;
  (v37)(v39 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v53, v16, v40);
  return v39;
}

uint64_t sub_216ACAD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 64));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_216ACADD0()
{
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

unint64_t sub_216ACAEC0()
{
  result = qword_27CAC1D18;
  if (!qword_27CAC1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1D18);
  }

  return result;
}

unint64_t sub_216ACAF18()
{
  result = qword_27CAC1D20;
  if (!qword_27CAC1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1D20);
  }

  return result;
}

double sub_216ACAFFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21700D704();
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v7 = type metadata accessor for Page(0);
  v8 = (a2 + v7[16]);
  *v8 = 0;
  v8[1] = 0;
  sub_216FC60B4();
  v9 = OUTLINED_FUNCTION_110();
  v10 = _s7SectionVMa(v9);
  OUTLINED_FUNCTION_6_62();
  v13 = sub_216691E3C(v11, v12);
  v15 = sub_216F76E04(a1, v14, v10, v13);
  if (v2)
  {
    OUTLINED_FUNCTION_7_69();
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    *(a2 + v7[7]) = v18;
    *(a2 + v7[8]) = 1;
    sub_21700D6F4();
    sub_216C5570C(v17);
    sub_21700D124();
    OUTLINED_FUNCTION_7_69();
    v19 = type metadata accessor for Page.Header(0);
    OUTLINED_FUNCTION_13_43(v19);
    v20 = type metadata accessor for Page.Footer(0);
    OUTLINED_FUNCTION_13_43(v20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCF8);
    OUTLINED_FUNCTION_13_43(v21);
    *(a2 + v7[10]) = 0;
    *(a2 + v7[11]) = 0;
    *(a2 + v7[12]) = 0;
    *(a2 + v7[13]) = 0;
    *(a2 + v7[14]) = 0;
    v22 = a2 + v7[15];
    *(v22 + 32) = 0;
    result = 0.0;
    *v22 = 0u;
    *(v22 + 16) = 0u;
  }

  return result;
}

uint64_t sub_216ACB1D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216ACB228()
{
  result = qword_280E29F90;
  if (!qword_280E29F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC02C8);
    sub_216819D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29F90);
  }

  return result;
}

unint64_t sub_216ACB2AC()
{
  result = qword_280E2C8E0;
  if (!qword_280E2C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C8E0);
  }

  return result;
}

unint64_t sub_216ACB300()
{
  result = qword_280E2C8F0[0];
  if (!qword_280E2C8F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2C8F0);
  }

  return result;
}

unint64_t sub_216ACB354()
{
  result = qword_280E44FD0;
  if (!qword_280E44FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E44FD0);
  }

  return result;
}

uint64_t sub_216ACB3A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkComponentModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216ACB40C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

unint64_t sub_216ACB464()
{
  result = qword_280E2C9A0;
  if (!qword_280E2C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C9A0);
  }

  return result;
}

uint64_t sub_216ACB520(void *a1)
{
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v36 = v2;
  v37 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v29 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v35 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  started = type metadata accessor for StartSocialOnboardingAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v18 = v38[0];
  if (*(v38[0] + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded))
  {
    type metadata accessor for UnfollowUserAction();
    sub_216CAD67C();
    v39 = sub_21700D7C4();
    v40 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v38);

    sub_21700D7B4();
    sub_21700D2A4();
    v19 = sub_21700E1B4();
  }

  else
  {
    sub_21700E094();
    sub_21700D234();
    v11[*(started + 20)] = 0;
    v31 = v7;
    v32 = v18;
    v20 = v33;
    sub_21700E094();
    v39 = started;
    v40 = sub_216ACBCE0(&qword_27CAB6FC8, type metadata accessor for StartSocialOnboardingAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
    v30 = type metadata accessor for StartSocialOnboardingAction;
    sub_216ACBD28(v11, boxed_opaque_existential_1, type metadata accessor for StartSocialOnboardingAction);
    v22 = v14;
    v23 = *(v14 + 16);
    v24 = v34;
    v23(v34, v17, v12);
    v26 = v36;
    v25 = v37;
    (*(v36 + 104))(v24, *MEMORY[0x277D21E10], v37);
    v27 = v31;
    v19 = sub_21700D5E4();

    (*(v26 + 8))(v24, v25);
    (*(v35 + 8))(v27, v20);
    sub_216ACBD88(v11, v30);
    (*(v22 + 8))(v17, v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return v19;
}

uint64_t sub_216ACB980@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - v4;
  v6 = type metadata accessor for NoticeAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  if (*a1 == 1)
  {
    type metadata accessor for ObjectGraph();
    sub_21700E094();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00);
    __swift_storeEnumTagSinglePayload(v8, 5, 11, v13);
    sub_21700D234();
    v22[3] = v6;
    v22[4] = sub_216ACBCE0(&qword_27CAB8E08, type metadata accessor for NoticeAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    sub_216ACBD28(v8, boxed_opaque_existential_1, type metadata accessor for NoticeAction);
    v15 = v20;
    (*(v3 + 104))(v5, *MEMORY[0x277D21E18], v20);
    sub_21700D5E4();

    (*(v3 + 8))(v5, v15);
    sub_216ACBD88(v8, type metadata accessor for NoticeAction);
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  v16 = *MEMORY[0x277D21CA8];
  v17 = sub_21700D2A4();
  return (*(*(v17 - 8) + 104))(v21, v16, v17);
}

uint64_t sub_216ACBCE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216ACBD28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216ACBD88(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216ACBDF0()
{
  if (qword_27CAB5F78 != -1)
  {
    swift_once();
  }

  return byte_27CB22A29;
}

uint64_t sub_216ACBE70@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v94 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v95 = v10;
  MEMORY[0x28223BE20](v11);
  v87 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v81 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v81 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v81 - v20;
  MEMORY[0x28223BE20](v22);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v88 = v24;
  v89 = v23;
  MEMORY[0x28223BE20](v23);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a1;
  sub_21700CE04();
  v27 = v6;
  v28 = v92;
  (*(v27 + 16))(v9, v92, v4);
  v29 = v91;
  sub_21700D224();
  v91 = v29;
  if (v29)
  {
    (*(v27 + 8))(v28, v4);
    return (*(v95 + 8))(v93, v90);
  }

  else
  {
    v83 = v18;
    v84 = v15;
    v85 = v27;
    v86 = v4;
    v32 = v88;
    v31 = v89;
    (*(v88 + 32))(v94, v26, v89);
    sub_21700CE04();
    v33 = sub_21700CDB4();
    v35 = v34;
    v37 = v95 + 8;
    v36 = *(v95 + 8);
    v38 = v21;
    v39 = v90;
    v36(v38, v90);
    if (v35)
    {
      v40 = type metadata accessor for ShareImageRequestAction();
      v41 = v93;
      v42 = (v94 + *(v40 + 20));
      *v42 = v33;
      v42[1] = v35;
      v43 = v83;
      sub_21700CE04();
      v44 = sub_21700CD24();
      v46 = v45;
      v95 = v37;
      v36(v43, v39);
      if (v46)
      {
        v47 = 0;
      }

      else
      {
        v47 = v44;
      }

      v48 = v40;
      v49 = v94;
      *(v94 + *(v40 + 24)) = v47;
      v50 = v84;
      sub_21700CE04();
      v51 = sub_21700CD24();
      v53 = v52;
      v36(v50, v39);
      v54 = *(v48 + 28);
      v89 = v48;
      v55 = v49 + v54;
      *v55 = v51;
      *(v55 + 8) = v53 & 1;
      v56 = v41;
      sub_21700CE04();
      v57 = sub_21700CDB4();
      v59 = v58;
      v36(v50, v39);
      v60 = (v94 + *(v48 + 32));
      *v60 = v57;
      v60[1] = v59;
      v61 = v87;
      sub_21700CE04();
      v62 = sub_21700CD24();
      LOBYTE(v59) = v63;
      v36(v61, v39);
      v82 = v36;
      if (v59)
      {
        v64 = 0;
      }

      else
      {
        v64 = v62;
      }

      v65 = v89;
      v66 = v94;
      *(v94 + *(v89 + 36)) = v64;
      sub_21700CE04();
      v67 = sub_21700CD24();
      v69 = v68;
      v36(v50, v39);
      v70 = v66 + *(v65 + 40);
      *v70 = v67;
      *(v70 + 8) = v69 & 1;
      sub_21700CE04();
      v71 = sub_21700CDB4();
      v73 = v72;
      (*(v85 + 8))(v92, v86);
      v74 = v82;
      v82(v56, v39);
      result = v74(v50, v39);
      v75 = (v66 + *(v65 + 44));
      *v75 = v71;
      v75[1] = v73;
    }

    else
    {
      v76 = sub_21700E2E4();
      sub_2167B1EA4();
      v77 = swift_allocError();
      v79 = v78;
      v80 = type metadata accessor for ShareImageRequestAction();
      *v79 = 0x6E694B7465737361;
      v79[1] = 0xE900000000000064;
      v79[2] = v80;
      (*(*(v76 - 8) + 104))(v79, *MEMORY[0x277D22530], v76);
      v91 = v77;
      swift_willThrow();
      (*(v85 + 8))(v92, v86);
      v36(v93, v39);
      return (*(v32 + 8))(v94, v31);
    }
  }

  return result;
}

uint64_t sub_216ACC534()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v0[43] = v1;
  v0[44] = v3;
  v0[41] = v4;
  v0[42] = v5;
  v0[39] = v6;
  v0[40] = v7;
  v0[45] = type metadata accessor for NoticeAction(0);
  v0[46] = OUTLINED_FUNCTION_80();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v0[47] = v8;
  OUTLINED_FUNCTION_2(v8);
  v0[48] = v9;
  v0[49] = OUTLINED_FUNCTION_80();
  v10 = sub_21700D2A4();
  v0[50] = v10;
  OUTLINED_FUNCTION_2(v10);
  v0[51] = v11;
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v0[54] = v12;
  OUTLINED_FUNCTION_2(v12);
  v0[55] = v13;
  v0[56] = OUTLINED_FUNCTION_80();
  v14 = sub_21700BAB4();
  v0[57] = v14;
  OUTLINED_FUNCTION_2(v14);
  v0[58] = v15;
  v0[59] = OUTLINED_FUNCTION_80();
  v16 = sub_21700F164();
  v0[60] = v16;
  OUTLINED_FUNCTION_2(v16);
  v0[61] = v17;
  v0[62] = OUTLINED_FUNCTION_80();
  v0[63] = *(v2 - 8);
  v0[64] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v0[65] = sub_21700EA24();
  v19 = sub_21700E9B4();
  v0[66] = v19;
  v0[67] = v18;

  return MEMORY[0x2822009F8](sub_216ACC7F4, v19, v18);
}

uint64_t sub_216ACC7F4()
{
  v17 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  *(v0 + 544) = type metadata accessor for ObjectGraph();
  sub_21700E094();
  v3 = type metadata accessor for QueueMusicItemsAction();
  WitnessTable = swift_getWitnessTable();
  sub_2169FC06C(v2, v3, WitnessTable, v16);
  v5 = v16[1];
  *(v0 + 552) = v16[0];
  *(v0 + 568) = v5;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  swift_getDynamicType();
  if (((*(*(v0 + 48) + 8))() & 1) == 0)
  {
    goto LABEL_4;
  }

  v6 = *(v0 + 496);
  v2 = *(v0 + 344);
  *(v0 + 304) = **(v0 + 320);
  sub_21700E984();
  swift_getWitnessTable();
  sub_21700ECC4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v2) == 1)
  {
    (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
LABEL_4:
    v7 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_3_96();
    sub_21700DF14();
    sub_21677A3F0(v1, v7);
    v8 = swift_task_alloc();
    OUTLINED_FUNCTION_18_36(v8);
    OUTLINED_FUNCTION_6_63();
    *v2 = v0;
    OUTLINED_FUNCTION_2_99();

    __asm { BRAA            X8, X16 }
  }

  v11 = *(v0 + 344);
  v10 = *(v0 + 352);
  (*(*(v0 + 504) + 32))(*(v0 + 512), *(v0 + 496), v11);
  sub_21694EF28((v0 + 16), v11, v10);
  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  v12 = swift_task_alloc();
  *(v0 + 584) = v12;
  *v12 = v0;
  v12[1] = sub_216ACCB58;
  v13 = *(v0 + 472);
  v14 = *(v0 + 328);

  return sub_21694EFA0(v0 + 96, v13, v14, v0 + 136);
}

uint64_t sub_216ACCB58()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 592) = v0;

  sub_216ACDCA4(v3 + 136);
  OUTLINED_FUNCTION_8_60();
  if (v0)
  {
    v9 = sub_216ACD684;
  }

  else
  {
    v9 = sub_216ACCC5C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216ACCC5C()
{
  OUTLINED_FUNCTION_115_1();
  sub_2167AD8C0(v0 + 96, v0 + 176);
  if (!*(v0 + 200))
  {
    v10 = *(v0 + 504);
    v9 = *(v0 + 512);
    v12 = *(v0 + 464);
    v11 = *(v0 + 472);
    v13 = *(v0 + 456);
    v14 = *(v0 + 344);
    sub_2167AD91C(v0 + 96);
    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v9, v14);
    v15 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_3_96();
    sub_21700DF14();
    sub_21677A3F0(v10 + 8, v15);
    v16 = swift_task_alloc();
    OUTLINED_FUNCTION_18_36(v16);
    OUTLINED_FUNCTION_6_63();
    *v13 = v0;
    OUTLINED_FUNCTION_2_99();

    __asm { BRAA            X8, X16 }
  }

  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  sub_2166A0F18((v0 + 176), v0 + 216);
  sub_21700E094();
  (*(v2 + 104))(v1, *MEMORY[0x277D21E18], v3);
  v4 = swift_task_alloc();
  *(v0 + 600) = v4;
  *v4 = v0;
  v4[1] = sub_216ACCED4;
  v5 = *(v0 + 424);
  v6 = *(v0 + 432);
  v7 = *(v0 + 392);
  v8 = *(v0 + 328);

  return MEMORY[0x28217F468](v5, v0 + 216, v7, v8, v6);
}

uint64_t sub_216ACCED4()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v6 = v5[49];
  v7 = v5[48];
  v8 = v5[47];
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  v3[76] = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_8_60();
    v13 = sub_216ACD770;
  }

  else
  {
    (*(v3[51] + 8))(v3[53], v3[50]);
    OUTLINED_FUNCTION_8_60();
    v13 = sub_216ACD050;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_216ACD050()
{
  OUTLINED_FUNCTION_1_116();
  v1 = v0[63];
  v2 = v0[58];
  v3 = v0[56];
  v9 = v0[57];
  v5 = v0[54];
  v4 = v0[55];
  v6 = v0[51];
  v13 = v0[64];
  v14 = v0[50];
  v10 = v0[43];
  v11 = v0[59];
  v12 = v0[39];

  OUTLINED_FUNCTION_11_51();
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 27));
  sub_2167AD91C((v0 + 12));
  (*(v2 + 8))(v11, v9);
  (*(v1 + 8))(v13, v10);
  (*(v6 + 104))(v12, *MEMORY[0x277D21CA8], v14);
  OUTLINED_FUNCTION_9_58();

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_216ACD1C0()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *v4 = *v1;
  v3[79] = v0;

  sub_21677A4C0(v3[32], v2[33], v2[34], v2[35]);

  v5 = v3[67];
  v6 = v3[66];
  if (v0)
  {
    v7 = sub_216ACD8A8;
  }

  else
  {
    v7 = sub_216ACD344;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216ACD344()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  sub_216ACDA20(*(v0 + 657), v1);
  sub_21700D234();
  *(v0 + 80) = v2;
  *(v0 + 88) = sub_216ACDC4C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_2169BC198(v1, boxed_opaque_existential_1);
  v4 = swift_task_alloc();
  *(v0 + 640) = v4;
  type metadata accessor for QueueMusicItemsActionImplementation();
  swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_216ACD470;

  return sub_216B6DB60();
}

uint64_t sub_216ACD470()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[81] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_60();
    v9 = sub_216ACD960;
  }

  else
  {
    (*(v3[51] + 8))(v3[52], v3[50]);
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 7));
    OUTLINED_FUNCTION_8_60();
    v9 = sub_216ACD58C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216ACD58C()
{
  OUTLINED_FUNCTION_1_116();
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[46];
  v4 = v0[39];

  OUTLINED_FUNCTION_11_51();
  sub_2169BC1FC(v3);
  (*(v2 + 104))(v4, *MEMORY[0x277D21CA8], v1);
  OUTLINED_FUNCTION_9_58();

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216ACD684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_1_116();
  v14 = v12[63];
  v13 = v12[64];
  v16 = v12[58];
  v15 = v12[59];
  v17 = v12[57];
  v18 = v12[43];

  OUTLINED_FUNCTION_11_51();
  (*(v16 + 8))(v15, v17);
  (*(v14 + 8))(v13, v18);
  OUTLINED_FUNCTION_0_138();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_216ACD770()
{
  OUTLINED_FUNCTION_1_116();
  v1 = v0[63];
  v2 = v0[58];
  v9 = v0[59];
  v4 = v0[56];
  v3 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  v10 = v0[43];
  v11 = v0[64];

  OUTLINED_FUNCTION_11_51();
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 27));
  sub_2167AD91C((v0 + 12));
  (*(v2 + 8))(v9, v3);
  (*(v1 + 8))(v11, v10);
  OUTLINED_FUNCTION_0_138();

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_216ACD8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();

  OUTLINED_FUNCTION_11_51();

  OUTLINED_FUNCTION_0_138();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_216ACD960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_1_116();
  v13 = *(v12 + 368);

  OUTLINED_FUNCTION_11_51();
  sub_2169BC1FC(v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 56);
  OUTLINED_FUNCTION_0_138();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_216ACDA20@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00);
  v5 = dword_217040A70[a1];

  return __swift_storeEnumTagSinglePayload(a2, v5, 11, v4);
}

uint64_t sub_216ACDA84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A4;

  return sub_216ACC534();
}

uint64_t sub_216ACDB4C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216ACDB88(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216ACDBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

unint64_t sub_216ACDC4C()
{
  result = qword_27CAB8E08;
  if (!qword_27CAB8E08)
  {
    type metadata accessor for NoticeAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8E08);
  }

  return result;
}

uint64_t sub_216ACDCA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216ACDE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D30);
  if (swift_dynamicCast())
  {
    v6 = *(&v11 + 1);
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
    (*(v7 + 8))(v6, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_216ACDF5C(&v10);
    v9 = type metadata accessor for Page.Header(0);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v9);
  }
}

uint64_t sub_216ACDF5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216ACE054(uint64_t a1)
{
  result = sub_21668F138(&qword_27CAC1D40, type metadata accessor for PlayAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for RoutedPageIntent()
{
  result = qword_27CAC1D48;
  if (!qword_27CAC1D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216ACE120()
{
  sub_216ACE1DC(319, &qword_280E44870, type metadata accessor for ReferrerInfo);
  if (v0 <= 0x3F)
  {
    sub_216ACE1DC(319, &qword_280E4A510, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216ACE1DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_216ACE278(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v11 = result;
    sub_2166F1DCC();
    v12 = type metadata accessor for RoutedPageIntent();
    v23 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D68);
    v13 = sub_21700E594();
    v25 = MEMORY[0x277D837D0];
    v23 = v13;
    v24 = v14;
    v15 = a1;
    v16 = sub_2166F1E10(&v23, a1);
    sub_2166F1F64(v16);
    sub_216681B64(v2 + *(v12 + 20), v9, &qword_27CABA820);
    v17 = sub_217005EF4();
    if (__swift_getEnumTagSinglePayload(v9, 1, v17) == 1)
    {
      sub_21669987C(v9, &qword_27CABA820);
    }

    else
    {
      v18 = sub_217005DE4();
      v20 = v19;
      (*(*(v17 - 8) + 8))(v9, v17);
      v23 = v18;
      v24 = v20;
      sub_21700DD04();

      sub_21700F0B4();
    }

    sub_216681B64(v2, v6, &qword_27CAB6FD0);
    v21 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v6, 1, v21) == 1)
    {
      sub_21669987C(v6, &qword_27CAB6FD0);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v15).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216ACE5D4(uint64_t a1)
{
  result = sub_2166CE5DC(&qword_27CAC1D58, type metadata accessor for RoutedPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216ACE674(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE5DC(&qword_27CAC1D58, type metadata accessor for RoutedPageIntent);
  result = sub_2166CE5DC(&qword_27CAC1D60, type metadata accessor for RoutedPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for GenreContextMenu()
{
  result = qword_280E41210;
  if (!qword_280E41210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216ACE76C()
{
  sub_2167B83B4();
  if (v0 <= 0x3F)
  {
    sub_2167EE974();
    if (v1 <= 0x3F)
    {
      sub_21700C254();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MenuConfiguration(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216ACE83C()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for GenreContextMenu();
    v6 = *(v5 + 24);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64F98(v0 + v6, v4, v0 + *(v5 + 28));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_2167EE91C();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

double sub_216ACEA00@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v89 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v78 - v6;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_54();
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v79 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = &v78 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  v24 = sub_21700D7A4();
  OUTLINED_FUNCTION_9_59();
  sub_21700CE04();
  v81 = v9;
  v25 = *(v9 + 16);
  v91 = v7;
  v26 = v7;
  v27 = v13;
  v28 = v9 + 16;
  v88 = v25;
  v25(v3, v93, v26);
  v29 = a1;
  OUTLINED_FUNCTION_0_131();
  sub_21700CE04();
  v30 = v20;
  sub_21700CDB4();
  OUTLINED_FUNCTION_11_52();
  v32 = *(v27 + 8);
  v31 = v27 + 8;
  v33 = v20;
  v34 = v11;
  v90 = v32;
  v32(v33, v11);
  if (v24)
  {
    v35 = type metadata accessor for ContainerDetailHeaderLockup();
    v87 = v31;
    v36 = v35;
    *&v92 = v30;
    *(&v92 + 1) = v24;
    v37 = v89;
    sub_21700F364();
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_9_59();
    sub_21700CE04();
    v85 = v34;
    v38 = v88;
    v88(v3, v93, v91);
    v86 = v28;
    sub_216ACFCB4(qword_280E40390, type metadata accessor for ContentDescriptor);
    OUTLINED_FUNCTION_0_131();
    v39 = type metadata accessor for Artwork();
    sub_21700CE04();
    v38(v3, v93, v91);
    sub_216ACFCB4(&qword_280E2BF60, type metadata accessor for Artwork);
    OUTLINED_FUNCTION_0_131();
    v80 = v29;
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_11_52();
    v90(v23, v85);
    v40 = (v37 + v36[6]);
    *v40 = v23;
    v40[1] = v39;
    sub_21700CE04();
    v41 = v93;
    v42 = v91;
    v38(v3, v93, v91);
    sub_216AC6598();
    *(v37 + v36[7]) = v43;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_9_59();
    sub_21700CE04();
    v38(v3, v41, v42);
    sub_216AC6598();
    *(v37 + v36[8]) = v44;
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_11_52();
    v45 = v85;
    v90(v23, v85);
    v46 = v36[9];
    v84 = v36;
    v47 = (v37 + v46);
    *v47 = v23;
    v47[1] = v41;
    type metadata accessor for ModalPresentationDescriptor();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_9_59();
    sub_21700CE04();
    v48 = v93;
    v88(v3, v93, v91);
    sub_216ACFCB4(&qword_27CAC1C70, type metadata accessor for ModalPresentationDescriptor);
    OUTLINED_FUNCTION_0_131();
    v49 = v78;
    sub_21700CE04();
    LOBYTE(v38) = sub_21700CD44();
    v90(v49, v45);
    *(v37 + v84[11]) = v38 & 1;
    type metadata accessor for VideoArtwork();
    sub_21700CE04();
    v88(v3, v48, v91);
    sub_216ACFCB4(qword_280E44448, type metadata accessor for VideoArtwork);
    v50 = v37;
    v78 = v3;
    sub_21700D734();
    v51 = v79;
    sub_21700CE04();
    v52 = v82;
    sub_21700CD74();
    v90(v51, v85);
    v53 = sub_21700E2C4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v53);
    v55 = v93;
    v56 = v50;
    v57 = v88;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v82, &qword_27CAB78D0);
      v58 = 0;
    }

    else
    {
      v67 = v82;
      v66 = v83;
      v58 = sub_21700E2A4();
      v83 = v66;
      (*(*(v53 - 8) + 8))(v67, v53);
    }

    *(v56 + v84[12]) = v58;
    type metadata accessor for LinkComponentModel();
    OUTLINED_FUNCTION_7_70(0x79616C70u);
    sub_21700CE04();
    v68 = v78;
    v69 = v55;
    v70 = v91;
    v57(v78, v69, v91);
    v82 = sub_216ACFCB4(&qword_280E3EC48, type metadata accessor for LinkComponentModel);
    OUTLINED_FUNCTION_6_64();
    sub_21700D734();
    sub_21700CE04();
    v71 = v88;
    v88(v68, v93, v70);
    v72 = v84;
    OUTLINED_FUNCTION_6_64();
    sub_21700D734();
    OUTLINED_FUNCTION_7_70(0x676E6973u);
    sub_21700CE04();
    v73 = v93;
    v71(v68, v93, v91);
    OUTLINED_FUNCTION_6_64();
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_9_59();
    v74 = v80;
    sub_21700CE04();
    v75 = v73;
    v76 = v73;
    v77 = v91;
    v71(v68, v76, v91);
    sub_216AC7D00();
    sub_21700D734();
    (*(v81 + 8))(v75, v77);
    v90(v74, v85);
    result = *&v92;
    *(v89 + v72[13]) = v92;
  }

  else
  {
    v59 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_139();
    sub_216ACFCB4(v60, v61);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    v63 = v62;
    v64 = type metadata accessor for ContainerDetailHeaderLockup();
    *v63 = 25705;
    v63[1] = 0xE200000000000000;
    v63[2] = v64;
    (*(*(v59 - 8) + 104))(v63, *MEMORY[0x277D22530], v59);
    swift_willThrow();
    (*(v81 + 8))(v93, v91);
    v90(v29, v11);
    sub_216697664(v89, &qword_27CAB6D58);
  }

  return result;
}

uint64_t sub_216ACF518@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for ContainerDetailHeaderLockup();
  sub_216681B04(v1 + *(v6 + 68), v5, &qword_27CAB7A30);
  v7 = type metadata accessor for LinkComponentModel();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    result = sub_216697664(v5, &qword_27CAB7A30);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    sub_216681B04(&v5[*(v7 + 24)], a1, &qword_27CAB6DB0);
    return sub_216ACFCF8(v5);
  }

  return result;
}

uint64_t sub_216ACF634(uint64_t a1, uint64_t a2)
{
  v6 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_54();
  sub_21700CE04();
  v10 = v3;
  sub_21700CDB4();
  OUTLINED_FUNCTION_11_52();
  v11 = *(v8 + 8);
  v11(v3, v6);
  if (!v2)
  {
    v10 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_139();
    sub_216ACFCB4(v13, v14);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    *v15 = 0x656C746974;
    v15[1] = 0xE500000000000000;
    v15[2] = &type metadata for ContainerDetailHeaderLockup.SiriBannerConfiguration;
    (*(*(v10 - 8) + 104))(v15, *MEMORY[0x277D22530], v10);
    swift_willThrow();
  }

  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v12 + 8))(a2);
  v11(a1, v6);
  return v10;
}

uint64_t sub_216ACF860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_216ACF634(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t type metadata accessor for ContainerDetailHeaderLockup()
{
  result = qword_27CAC1D70;
  if (!qword_27CAC1D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216ACF900()
{
  sub_216689400(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_21668FAC0(319, &qword_280E29E70, &qword_27CAB8968);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_216689400(319, qword_280E33788, type metadata accessor for ModalPresentationDescriptor);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_21668FAC0(319, &qword_280E2A030, &qword_27CAB8950);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_216688560(319, qword_280E33BC8);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_216689400(319, &qword_280E2BF20, type metadata accessor for Artwork);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_216689400(319, qword_280E44408, type metadata accessor for VideoArtwork);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  sub_216689400(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
                  v1 = v17;
                  if (v18 <= 0x3F)
                  {
                    sub_216689400(319, &qword_280E3EC00, type metadata accessor for LinkComponentModel);
                    v1 = v19;
                    if (v20 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_216ACFC14(uint64_t a1)
{
  result = sub_216ACFCB4(&qword_27CAC1D80, type metadata accessor for ContainerDetailHeaderLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216ACFCB4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216ACFCF8(uint64_t a1)
{
  v2 = type metadata accessor for LinkComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216ACFD68(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[25])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216ACFDA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

_BYTE *sub_216ACFE04(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216ACFEE0()
{
  result = qword_27CAC1D90;
  if (!qword_27CAC1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1D90);
  }

  return result;
}

uint64_t sub_216ACFF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  return result;
}

void sub_216ACFFF8()
{
  OUTLINED_FUNCTION_22_3();
  v71 = v1;
  v68 = v3;
  v69 = v2;
  v73 = v4;
  v5 = *v0;
  v6 = type metadata accessor for SectionContent();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v65 = v8 - v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v64 = &v59 - v11;
  v12 = _s7SectionVMa(0);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v63 = v15 - v14;
  v16 = *(v5 + 80);
  v70 = v0;
  v72 = *(v5 + 88);
  type metadata accessor for PageUpdateDescriptor();
  OUTLINED_FUNCTION_16();
  v66 = v18;
  v67 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  v62 = (v19 - v20);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  v61 = &v59 - v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  v60 = &v59 - v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  v59 = &v59 - v26;
  type metadata accessor for SectionChangeInstruction.Instruction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v28 = sub_21700F164();
  OUTLINED_FUNCTION_16();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v59 - v32;
  OUTLINED_FUNCTION_16();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_77();
  v39 = v37 - v38;
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v59 - v42;
  (*(v30 + 16))(v33, v73, v28, v41);
  if (__swift_getEnumTagSinglePayload(v33, 1, v16) == 1)
  {
    (*(v30 + 8))(v33, v28);
    type metadata accessor for SectionChangeInstructionPerformer.SectionChangeInstructionUpdateError();
    OUTLINED_FUNCTION_10_55();
    OUTLINED_FUNCTION_4();
    *v44 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v35 + 32))(v43, v33, v16);
    v45 = v69;
    sub_216AD1760();
    OUTLINED_FUNCTION_8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v47 = v43;
    v48 = v16;
    v49 = v70;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_6_65();
        v50 = v64;
        sub_2166C5CD4();
        OUTLINED_FUNCTION_9_60();
        v51 = v61;
        goto LABEL_10;
      case 2:
        OUTLINED_FUNCTION_6_65();
        v50 = v65;
        sub_2166C5CD4();
        OUTLINED_FUNCTION_7_71();
        v51 = v62;
LABEL_10:
        v57 = v71;
        sub_216AD0EDC();
        v53 = v57;
        v54 = type metadata accessor for SectionContent;
        goto LABEL_11;
      case 3:
        (*(v35 + 16))(v39, v47, v16);
        sub_216E41D9C(v39, 0, *(v49 + 48), 0, 0, v16, v68);
        goto LABEL_13;
      case 4:
        v55 = v59;
        v56 = v71;
        sub_216AD0790(v47, v59);
        if (v56)
        {
          goto LABEL_15;
        }

        (*(v66 + 32))(v68, v55, v67);
        goto LABEL_13;
      default:
        v50 = v63;
        sub_2166C5CD4();
        v51 = v60;
        v52 = v71;
        sub_216AD0A14();
        v53 = v52;
        v54 = _s7SectionVMa;
LABEL_11:
        sub_216AD16E8(v50, v54);
        if (v53)
        {
          goto LABEL_15;
        }

        (*(v66 + 32))(v68, v51, v67);
LABEL_13:
        v58 = *(v45 + *(type metadata accessor for SectionChangeInstruction(0) + 20));
        if (v58 != 1)
        {
          sub_2168E6C7C(v58);
        }

LABEL_15:
        (*(v35 + 8))(v47, v48);
        break;
    }
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216AD05C8()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v4 = v3;
  v5 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_7();
  v8 = (v7 - v6);
  v9 = (*(*(*(v0 + 88) + 16) + 32))(*(v0 + 80));
  v10 = 0;
  v11 = *(v9 + 16);
  while (1)
  {
    if (v11 == v10)
    {

      type metadata accessor for SectionChangeInstructionPerformer.SectionChangeInstructionUpdateError();
      OUTLINED_FUNCTION_10_55();
      OUTLINED_FUNCTION_4();
      *v15 = 1;
      swift_willThrow();
      goto LABEL_13;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_0_140();
    sub_216AD1760();
    if (*v8 == v4 && v8[1] == v2)
    {
      OUTLINED_FUNCTION_1_117();
      sub_216AD16E8(v8, v16);
LABEL_12:

LABEL_13:
      OUTLINED_FUNCTION_21_4();
      return;
    }

    v13 = sub_21700F7D4();
    OUTLINED_FUNCTION_1_117();
    sub_216AD16E8(v8, v14);
    if (v13)
    {
      goto LABEL_12;
    }

    ++v10;
  }

  __break(1u);
}

uint64_t sub_216AD077C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

void sub_216AD0790(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  v5 = *v2;
  v6 = *v2;
  v7 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + 80);
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v11);
  v23 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  v16 = v27;
  sub_216AD05C8();
  if (!v16)
  {
    v18 = v2[3];
    v27 = v17;
    sub_2168E6F2C(v2[2], v18);
    v19 = v24;
    (*(v24 + 16))(v15, a1, v10);
    v20 = (*(*(*(v6 + 88) + 16) + 48))(v26, v10);
    sub_216CFB5A0();
    sub_216AD16E8(v9, _s7SectionVMa);
    v20(v26, 0);
    v21 = v23;
    (*(v19 + 32))(v23, v15, v10);
    sub_216E41D9C(v21, 0, *(v3 + 48), 0, 0, v10, v25);
  }
}

void sub_216AD0A14()
{
  OUTLINED_FUNCTION_22_3();
  v3 = v2;
  v54 = v4;
  v5 = *v0;
  v6 = *(*v0 + 80);
  OUTLINED_FUNCTION_16();
  v57 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v47 - v13;
  v16 = *v15;
  v17 = v15[1];
  v55 = v18;
  sub_216AD05C8();
  if (v1)
  {
    goto LABEL_7;
  }

  v52 = v11;
  v53 = v19;
  v49 = v16;
  v50 = v17;
  v51 = 0;
  v20 = v0;
  v21 = v3;
  sub_2168E6C88(v3);
  v22 = *(v57 + 16);
  v23 = v55;
  v55 = (v57 + 16);
  v48 = v22;
  v22(v14, v23, v6);
  v24 = *(v5 + 88);
  v25 = (*(*(v24 + 16) + 48))(v56, v6);
  v27 = v26;
  v28 = *v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v27 = v28;
  v30 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_216E15A14();
    v28 = v46;
    *v27 = v46;
  }

  v31 = v21;
  v32 = v20;
  if ((v53 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v53 < *(v28 + 16))
  {
    v47[1] = _s7SectionVMa(0);
    sub_216AD1694();
    v33 = v25(v56, 0);
    v47[0] = v47;
    v56[0] = v20[5];
    MEMORY[0x28223BE20](v33);
    v34 = v30;
    v47[-4] = v6;
    v47[-3] = v24;
    v47[-2] = v31;
    _s15ContentObserverCMa();
    sub_21700E984();
    v53 = v32;
    sub_21700DF14();
    OUTLINED_FUNCTION_8_61();
    swift_getWitnessTable();
    sub_21700E7A4();

    v48(v52, v30, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0);
    OUTLINED_FUNCTION_13_44();
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_217013DA0;
    v38 = (v37 + v36);
    v39 = v50;
    *v38 = v49;
    v38[1] = v39;
    OUTLINED_FUNCTION_0_140();
    sub_216AD1760();
    sub_21700DF14();
    sub_21700E384();
    (*(v57 + 8))(v34, v6);
    v40 = OUTLINED_FUNCTION_14_46();
    sub_216E41D9C(v40, v41, v42, v43, v44, v6, v45);
LABEL_7:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  __break(1u);
}

void sub_216AD0EDC()
{
  OUTLINED_FUNCTION_22_3();
  v75 = v2;
  v81 = v3;
  v82 = v4;
  v84 = v1;
  v5 = v0;
  v86 = v6;
  v8 = v7;
  v10 = v9;
  v77 = v11;
  v12 = *v0;
  v83 = *(v12 + 80);
  OUTLINED_FUNCTION_16();
  v79 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v76 = v15 - v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  v78 = &v68 - v18;
  v19 = type metadata accessor for SectionContent();
  v20 = OUTLINED_FUNCTION_36(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  v24 = _s7SectionVMa(0);
  OUTLINED_FUNCTION_16();
  v80 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = (&v68 - v31);
  v33 = v10;
  v34 = v8;
  v35 = v84;
  sub_216AD05C8();
  if (v35)
  {
    goto LABEL_10;
  }

  v72 = v24;
  v73 = v32;
  v84 = 0;
  v69 = v33;
  v70 = v29;
  v74 = v23;
  v68 = v8;
  v71 = v5;
  v37 = *(v12 + 88);
  v38 = *(v37 + 16);
  v39 = v86;
  v40 = v36;
  v41 = (*(v38 + 32))(v83, v38);
  if ((v40 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v39 = v41;
  if (v40 >= *(v41 + 16))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    sub_216E15A14();
    v48 = v67;
    *v32 = v67;
    goto LABEL_7;
  }

  v42 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v43 = *(v80 + 72) * v40;
  OUTLINED_FUNCTION_0_140();
  v44 = v73;
  sub_216AD1760();

  v45 = v84;
  v82(v81);
  v84 = v45;
  if (v45)
  {
    v46 = v44;
LABEL_9:
    sub_216AD16E8(v46, _s7SectionVMa);
LABEL_10:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  v81 = v42;
  v82 = v43;
  OUTLINED_FUNCTION_0_140();
  v23 = v70;
  sub_216AD1760();
  sub_216AD1694();
  v34 = v83;
  v80 = *(v79 + 16);
  (v80)(v78, v86, v83);
  v39 = (*(v38 + 48))(v85, v34, v38);
  v32 = v47;
  v48 = *v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v32 = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v50 = v71;
  if (v40 < *(v48 + 16))
  {
    sub_216AD1694();
    v51 = v39(v85, 0);
    v52 = v23;
    v85[0] = v50[5];
    MEMORY[0x28223BE20](v51);
    *(&v68 - 4) = v34;
    *(&v68 - 3) = v37;
    *(&v68 - 2) = v23;
    _s15ContentObserverCMa();
    sub_21700E984();
    v53 = v34;
    sub_21700DF14();
    OUTLINED_FUNCTION_8_61();
    swift_getWitnessTable();
    v54 = v84;
    sub_21700E7A4();
    v84 = v54;

    v55 = v78;
    (v80)(v76, v78, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0);
    OUTLINED_FUNCTION_13_44();
    v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_217013DA0;
    v59 = (v58 + v57);
    v60 = v68;
    *v59 = v69;
    v59[1] = v60;
    OUTLINED_FUNCTION_0_140();
    sub_216AD1760();
    sub_21700DF14();
    sub_21700E384();
    (*(v79 + 8))(v55, v53);
    sub_216AD16E8(v74, type metadata accessor for SectionContent);
    sub_216AD16E8(v73, _s7SectionVMa);
    v61 = OUTLINED_FUNCTION_14_46();
    sub_216E41D9C(v61, v62, v63, v64, v65, v53, v66);
    v46 = v52;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_216AD14D4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_216A9642C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_216AD152C()
{
  v0 = _s7SectionVMa(0);
  v1 = OUTLINED_FUNCTION_36(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v4 = v3 - v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_0_140();
    sub_216AD1760();
    sub_216A9642C();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1_117();
    return sub_216AD16E8(v4, v6);
  }

  return result;
}

uint64_t sub_216AD15E0()
{

  return v0;
}

uint64_t sub_216AD1610()
{
  sub_216AD15E0();

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t sub_216AD1694()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216AD16E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216AD1760()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

_BYTE *sub_216AD17B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216AD18DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for ArtistDetailHeaderLockup();
  sub_216681B64(v0 + *(v7 + 52), v6, &qword_27CABBEA8);
  v8 = type metadata accessor for VideoArtwork();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v8);
  sub_21669987C(v6, &qword_27CABBEA8);
  if (EnumTagSinglePayload != 1 && !UIAccessibilityIsReduceMotionEnabled())
  {
    v10 = [objc_opt_self() processInfo];
    v11 = [v10 isLowPowerModeEnabled];

    if (!v11)
    {
      return 1;
    }
  }

  sub_216681B64(v0 + *(v7 + 28), v3, &qword_27CAB6D60);
  v12 = type metadata accessor for Artwork();
  v13 = __swift_getEnumTagSinglePayload(v3, 1, v12) != 1;
  sub_21669987C(v3, &qword_27CAB6D60);
  return v13;
}

uint64_t sub_216AD1AB4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v60 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v48 - v17;
  sub_21700D7A4();
  OUTLINED_FUNCTION_1_84();
  sub_21700CE04();
  v53 = v6;
  v20 = *(v6 + 16);
  v19 = v6 + 16;
  v56 = v4;
  v54 = v20;
  v20(v9, v57, v4);
  OUTLINED_FUNCTION_2_100();
  v55 = a1;
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v24 = *(v12 + 8);
  v51 = v12 + 8;
  v52 = v10;
  v50 = v24;
  v24(v16, v10);
  if (v23)
  {
    v49 = type metadata accessor for ArtistDetailHeaderLockup();
    v58 = v21;
    v59 = v23;
    sub_21700F364();
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_1_84();
    sub_21700CE04();
    v25 = v56;
    v54(v9, v57, v56);
    sub_2166D35AC(qword_280E40390, type metadata accessor for ContentDescriptor);
    OUTLINED_FUNCTION_2_100();
    type metadata accessor for Artwork();
    sub_21700CE04();
    v26 = v57;
    v27 = v54;
    v54(v9, v57, v25);
    v48[0] = sub_2166D35AC(&qword_280E2BF60, type metadata accessor for Artwork);
    v48[1] = v19;
    OUTLINED_FUNCTION_2_100();
    sub_21700CE04();
    v28 = v9;
    v29 = v9;
    v30 = v26;
    v31 = v56;
    v27(v28, v26, v56);
    v32 = v49;
    sub_21700D734();
    type metadata accessor for VideoArtwork();
    v33 = v55;
    sub_21700CE04();
    v27(v29, v30, v31);
    sub_2166D35AC(qword_280E44448, type metadata accessor for VideoArtwork);
    v34 = v60;
    sub_21700D734();
    v35 = v33;
    sub_21700CE04();
    v36 = sub_21700CDB4();
    v38 = v37;
    v39 = v52;
    v40 = v50;
    v50(v18, v52);
    v41 = (v34 + *(v32 + 24));
    *v41 = v36;
    v41[1] = v38;
    sub_21700CE04();
    v42 = v57;
    sub_21700D2E4();
    v40(v18, v39);
    OUTLINED_FUNCTION_1_84();
    sub_21700CE04();
    LOBYTE(v36) = sub_21700CD44();
    v40(v18, v39);
    *(v34 + *(v32 + 32)) = v36;
    sub_2170061D4();
    (*(v53 + 8))(v42, v56);
    return (v40)(v35, v39);
  }

  else
  {
    v44 = sub_21700E2E4();
    sub_2166D35AC(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v46 = v45;
    v47 = type metadata accessor for ArtistDetailHeaderLockup();
    *v46 = 25705;
    v46[1] = 0xE200000000000000;
    v46[2] = v47;
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D22530], v44);
    swift_willThrow();
    (*(v53 + 8))(v57, v56);
    v50(v55, v52);
    return sub_21669987C(v60, &qword_27CAB6D58);
  }
}