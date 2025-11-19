uint64_t sub_254634A38(uint64_t result)
{
  if (*(result + 24))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254634CEC();
    sub_25467F770();
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_254634B20()
{

  v1 = OBJC_IVAR____TtC11HoverTextUI31HoverTypingTextReplacementModel___observationRegistrar;
  v2 = sub_25467F7C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HoverTypingTextReplacementModel()
{
  result = qword_27F60BB98;
  if (!qword_27F60BB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254634C28()
{
  result = sub_25467F7C0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_254634CEC()
{
  result = qword_27F60BBA8;
  if (!qword_27F60BBA8)
  {
    type metadata accessor for HoverTypingTextReplacementModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BBA8);
  }

  return result;
}

uint64_t sub_254634D44(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_2546350E4();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x259C147A0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x259C147A0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_2546807E0();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_2546807E0();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_2546809C0();
  }

  result = sub_2546809C0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_254634F84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_254680A90() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_25463504C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2546350A8()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

unint64_t sub_2546350E4()
{
  result = qword_27F60C680;
  if (!qword_27F60C680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F60C680);
  }

  return result;
}

unint64_t sub_25463515C()
{
  result = qword_27F60BBB0;
  if (!qword_27F60BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BBB0);
  }

  return result;
}

uint64_t sub_2546351B0@<X0>(uint64_t a1@<X8>)
{
  sub_25467FA70();
  sub_254635AC0(&qword_27F60BBC8, MEMORY[0x277CDF7F8]);
  sub_254680670();
  sub_254680690();
  if (v9[4] == v9[0])
  {
    v2 = sub_25467FA00();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_2546806B0();
    v6 = v5;
    v7 = sub_25467FA00();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_254635348(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BBC0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v47 - v19;
  v21 = sub_25467FA00();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2546351B0(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_254635A34(v20);
  }

  (*(v22 + 32))(v24, v20, v21);
  sub_25467FB00();
  LOBYTE(v48) = v26 & 1;
  v49 = v27 & 1;
  sub_25467F9E0();
  v29 = v28;
  v31 = v30;
  swift_getKeyPath();
  v48 = a11;
  sub_254635AC0(&qword_27F60B9E0, type metadata accessor for HoverTypingStore);
  sub_25467F780();

  v32 = 10.0;
  v33 = *(a11 + 128) + v29 * -0.5 + 10.0;
  if (v33 >= 0.0)
  {
    v34 = *&a1;
    if (a2)
    {
      v34 = 10.0;
    }

    v35 = v34 - v29;
    v32 = *(a11 + 128) + v29 * -0.5 + 10.0;
    if (v35 < v33)
    {
      v32 = v35 + -10.0;
    }
  }

  sub_2546802E0();
  v37 = v32 - v29 * v36;
  *v47 = a3;
  v50.origin.x = a3;
  v38 = a4;
  v50.origin.y = a4;
  v39 = a5;
  v50.size.width = a5;
  v40 = a6;
  v50.size.height = a6;
  MinY = CGRectGetMinY(v50);
  sub_2546802E0();
  v43 = MinY - v31 * v42;
  v52.origin.x = v37;
  v52.origin.y = v43;
  v52.size.width = v29;
  v52.size.height = v31;
  if (CGRectEqualToRect(*(a11 + 184), v52))
  {
    *(a11 + 184) = v37;
    *(a11 + 192) = v43;
    *(a11 + 200) = v29;
    *(a11 + 208) = v31;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v47[-6] = a11;
    *&v47[-5] = v37;
    *&v47[-4] = v43;
    *&v47[-3] = v29;
    *&v47[-2] = v31;
    v48 = a11;
    sub_25467F770();
  }

  *&v51.origin.x = v47[0];
  v51.origin.y = v38;
  v51.size.width = v39;
  v51.size.height = v40;
  CGRectGetMinY(v51);
  sub_2546802E0();
  sub_25467FB00();
  LOBYTE(v48) = v45 & 1;
  v49 = v46 & 1;
  sub_25467F9E0();
  LOBYTE(v48) = 0;
  v49 = 0;
  sub_25467F9F0();
  return (*(v22 + 8))(v24, v21);
}

void (*sub_254635830(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25467F8A0();
  return sub_2546358B8;
}

void sub_2546358B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_254635908()
{
  result = qword_27F60BBB8;
  if (!qword_27F60BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BBB8);
  }

  return result;
}

__n128 sub_25463595C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254635AC0(&qword_27F60B9E0, type metadata accessor for HoverTypingStore);
  sub_25467F780();

  result = *(v3 + 184);
  v5 = *(v3 + 200);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_254635A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254635AC0(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_254635B08(size_t a1, int64_t a2, char a3)
{
  result = sub_254635B88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254635B28(char *a1, int64_t a2, char a3)
{
  result = sub_254635D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254635B48(char *a1, int64_t a2, char a3)
{
  result = sub_254635E6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254635B68(char *a1, int64_t a2, char a3)
{
  result = sub_254635F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_254635B88(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B728);
  v10 = *(sub_25467F5A0() - 8);
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
  v15 = *(sub_25467F5A0() - 8);
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

char *sub_254635D60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BBD8);
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

char *sub_254635E6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BBD0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_254635F70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BBE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_254636074(uint64_t a1, int a2, uint64_t a3)
{
  v40 = sub_25467FA00();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25467FA70();
  sub_254635AC0(&qword_27F60BBC8, MEMORY[0x277CDF7F8]);
  v9 = sub_254680680();
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    goto LABEL_7;
  }

  v11 = v9;
  v38 = v6;
  v43 = MEMORY[0x277D84F90];
  sub_254635B48(0, v9 & ~(v9 >> 63), 0);
  v10 = v43;
  result = sub_254680670();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a2;
    v39 = (v38 + 16);
    v13 = (v38 + 8);
    do
    {
      v14 = sub_2546806B0();
      v15 = v40;
      (*v39)(v8);
      v14(v42, 0);
      sub_25467FB00();
      v42[0] = v16 & 1;
      v41 = v17 & 1;
      sub_25467F9E0();
      v19 = v18;
      v21 = v20;
      (*v13)(v8, v15);
      v43 = v10;
      v22 = a3;
      v24 = *(v10 + 16);
      v23 = *(v10 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_254635B48((v23 > 1), v24 + 1, 1);
        v10 = v43;
      }

      *(v10 + 16) = v24 + 1;
      v25 = v10 + 16 * v24;
      *(v25 + 32) = v19;
      *(v25 + 40) = v21;
      sub_2546806A0();
      --v11;
      a3 = v22;
    }

    while (v11);
LABEL_7:
    v26 = *(v10 + 16);
    if (v26)
    {
      if (v26 == 1)
      {
        v27 = 0;
        v28 = 0.0;
      }

      else
      {
        v27 = v26 & 0x7FFFFFFFFFFFFFFELL;
        v29 = (v10 + 56);
        v28 = 0.0;
        v30 = v26 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v31 = *(v29 - 2);
          v32 = *v29;
          v29 += 4;
          v28 = v28 + v31 + v32;
          v30 -= 2;
        }

        while (v30);
        if (v26 == v27)
        {
        }
      }

      v33 = v26 - v27;
      v34 = (v10 + 16 * v27 + 40);
      do
      {
        v35 = *v34;
        v34 += 2;
        v28 = v28 + v35;
        --v33;
      }

      while (v33);
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HoverTextPresentationEvent.processEvent()()
{
  v1 = sub_25467F620();
  MEMORY[0x28223BE20](v1 - 8);
  v94 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25467F440();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_25467F840();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25467F5A0();
  v9 = MEMORY[0x28223BE20](v8);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0[1];
  v110 = *v0;
  v111 = v13;
  v14 = v0[3];
  v112 = v0[2];
  v113 = v14;
  v96 = v0;
  v15 = *(v0 + 64);
  v114 = v15;
  v16 = v110;
  v17 = v112;
  v18 = v15 >> 6;
  v19 = v14;
  if (v15 >> 6 <= 1)
  {
    if (!v18)
    {
      if ((v14 & 0x80) != 0)
      {
        v100[0] = v110;
        v100[1] = v111;
        v100[2] = v112;
        v101 = v14 & 1;
        sub_25463D06C(v110, *(&v110 + 1), v111, *(&v111 + 1), v112, *(&v112 + 1), v14);
        sub_254639B10(v100);
      }

      else
      {
        v20 = v110;
        v21 = v111;
        sub_25463D07C(&v110, v97);
        sub_25463D06C(v20, *(&v16 + 1), v21, *(&v21 + 1), v17, *(&v17 + 1), v19);
        v22 = v95;
        v23 = sub_254638910(v20);
        if (v22)
        {
          sub_254636CC4(&v110);
        }

        else
        {
          memset(v98, 0, sizeof(v98));
          v99 = 1;
          v24 = v23;
          v25 = v23;
          sub_254638CC8(v24, 0, 0, v98);
          sub_254636CC4(&v110);
        }
      }

      sub_254636CC4(&v110);
      return;
    }

    v32 = v12;
    v33 = v10;
    v93 = v9;
    v97[0] = v110;

    sub_25467F420();
    sub_25462C080();
    v34 = sub_254680850();
    v36 = v35;
    (*(v4 + 8))(v6, v3);
    sub_254636CC4(&v110);
    if (sub_254680540())
    {

      v34 = 0;
      v36 = 0xE000000000000000;
    }

    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v37)
    {

      sub_254636D40();
      swift_allocError();
      *v64 = xmmword_254683540;
      swift_willThrow();
      return;
    }

    sub_25467F610();
    sub_25467F5B0();
    v38 = type metadata accessor for HoverTextPresentationEvent();
    v39 = v96;
    (*(v33 + 40))(v96 + v38[7], v32, v93);
    v40 = (v39 + v38[8]);

    *v40 = 0;
    v40[1] = 0;
    v41 = v38[9];
LABEL_18:
    v42 = (v39 + v41);
    *v42 = 0u;
    v42[1] = 0u;
    return;
  }

  v26 = *(&v113 + 1);
  if (v18 == 2)
  {
    v27 = v110;
    v90 = *(&v111 + 1);
    v94 = v111;
    v28 = *(&v111 + 1);

    if (!AXDeviceSupportsHoverTextTyping() || (v15 & 1) != 0)
    {
      if (!AXDeviceSupportsHoverTextTyping() || v94 == 12)
      {
        v65 = v95;
        v66 = sub_254638910(0);
        if (!v65)
        {
          v74 = v28;
          memset(v108, 0, sizeof(v108));
          v109 = 1;
          v75 = v66;
          v76 = v66;
          sub_254638CC8(v75, v27, *(&v16 + 1), v108);

          return;
        }
      }

      else
      {

        v49 = sub_25467F810();
        swift_beginAccess();
        v50 = v91;
        v51 = v92;
        v52 = v93;
        (*(v91 + 16))(v92, v49, v93);
        v53 = sub_25467F830();
        v54 = sub_254680710();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v89 = v28;
          v57 = v56;
          v115 = v56;
          *v55 = 136315138;
          v58 = v50;
          v59 = v94;
          v60 = HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(v94);
          v62 = sub_25463CAC4(v60, v61, &v115);

          *(v55 + 4) = v62;
          _os_log_impl(&dword_254615000, v53, v54, "Received value change with event type %s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v57);
          v63 = v57;
          v28 = v89;
          MEMORY[0x259C155A0](v63, -1, -1);
          MEMORY[0x259C155A0](v55, -1, -1);

          (*(v58 + 8))(v92, v93);
        }

        else
        {

          (*(v50 + 8))(v51, v52);
          v59 = v94;
        }

        sub_254639CE4(v59, v90);
      }
    }

    else
    {
      v89 = v28;
      v29 = v95;
      v30 = sub_254638910(0);
      if (v29)
      {

        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      v104 = v17;
      v105 = v19;
      v106 = v26;
      v107 = 0;
      v67 = v96;
      sub_254638CC8(v31, v27, *(&v16 + 1), &v104);

      *(v67 + 66) = v94;
    }
  }

  else
  {
    v43 = v112 | *(&v112 + 1) | v14;
    if (v111 | *(&v110 + 1) | v110 | *(&v111 + 1) | v43 | *(&v113 + 1) || v15 != 192)
    {
      v44 = v111 | *(&v110 + 1) | *(&v111 + 1) | v43 | *(&v113 + 1);
      if ((v15 != 192 || v110 != 1 || v44) && (v15 != 192 || v110 != 2 || v44))
      {
        v68 = v10;
        v69 = v9;
        if (v15 != 192 || v110 != 3 || v44)
        {
          v77 = v12;
          sub_25467F500();
          v78 = type metadata accessor for HoverTextPresentationEvent();
          v79 = *(v68 + 40);
          v80 = v96;
          v79(v96 + v78[7], v77, v69);
          v81 = (v80 + v78[8]);

          *v81 = 0;
          v81[1] = 0;
          v82 = (v80 + v78[9]);
          __asm { FMOV            V1.2D, #1.0 }

          *v82 = *(v80 + v78[14]);
          v82[1] = _Q1;
          return;
        }

        v70 = v12;
        sub_25467F500();
        v71 = type metadata accessor for HoverTextPresentationEvent();
        v72 = *(v68 + 40);
        v39 = v96;
        v72(v96 + v71[7], v70, v69);
        v73 = (v39 + v71[8]);

        *v73 = 0;
        v73[1] = 0;
        v41 = v71[9];
        goto LABEL_18;
      }
    }

    v45 = v95;
    v46 = sub_254638910(0);
    if (!v45)
    {
      memset(v102, 0, sizeof(v102));
      v103 = 1;
      v47 = v46;
      v48 = v46;
      sub_254638CC8(v47, 0, 0, v102);
    }
  }
}

uint64_t type metadata accessor for HoverTextPresentationEvent()
{
  result = qword_27F60BC20;
  if (!qword_27F60BC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_254636D40()
{
  result = qword_27F60BC10;
  if (!qword_27F60BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BC10);
  }

  return result;
}

char *sub_254636D94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v100 = a2;
  v5 = sub_25467F650();
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B9A8);
  v7 = MEMORY[0x28223BE20](v97);
  v95 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v96 = &v71 - v9;
  v79 = sub_25467F550();
  v10 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v98 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC88);
  MEMORY[0x28223BE20](v12 - 8);
  v86 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v71 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC98);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v75 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v102 = &v71 - v22;
  MEMORY[0x28223BE20](v21);
  v103 = &v71 - v23;
  v24 = sub_25467F5A0();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v74 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v77 = &v71 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v71 - v30;
  v104 = a1;
  v105 = v100;
  v32 = *(v25 + 16);
  v100 = v33;
  v73 = v25 + 16;
  v72 = v32;
  (v32)(&v71 - v30, v3);
  v85 = sub_25467F750();
  v34 = *(v85 - 8);
  v84 = *(v34 + 56);
  v83 = v34 + 56;
  v82 = (v18 + 48);
  v35 = v31;
  v36 = v17;
  v93 = (v10 + 16);
  v94 = (v10 + 32);
  v92 = (v10 + 8);
  v99 = MEMORY[0x277D84F90];
  v81 = v25;
  v80 = v25 + 32;
  v76 = v16;
  v101 = v17;
  v91 = v31;
  v37 = v79;
  while (1)
  {
    v38 = v86;
    v84(v86, 1, 1, v85);
    sub_25463DB1C(&qword_27F60B9A0, MEMORY[0x277CC8C40]);
    sub_25462C080();
    sub_25467F6A0();
    sub_254626CC4(v38, &qword_27F60BC88);
    if ((*v82)(v16, 1, v36) == 1)
    {
      break;
    }

    v39 = v103;
    sub_25462CC24(v16, v103, &qword_27F60BC98);
    v40 = v98;
    sub_25467F4B0();
    v41 = sub_25463DB1C(&qword_27F60B9B8, MEMORY[0x277CC8C20]);
    if ((sub_254680420() & 1) == 0)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v90 = v41;
    v42 = *v94;
    v43 = v96;
    (*v94)(v96, v40, v37);
    v44 = v97;
    v45 = v43 + *(v97 + 48);
    v87 = *v93;
    v87(v45, v39, v37);
    v46 = v95;
    sub_25462CC8C(v43, v95, &qword_27F60B9A8);
    v47 = *(v44 + 48);
    v42(v102, v46, v37);
    v48 = *v92;
    (*v92)(v46 + v47, v37);
    sub_25462CC24(v43, v46, &qword_27F60B9A8);
    v49 = &v102[*(v101 + 36)];
    v50 = v46 + *(v44 + 48);
    v89 = v42;
    v42(v49, v50, v37);
    v88 = v48;
    v48(v46, v37);
    v31 = sub_25462C9F0(&qword_27F60BCA0, &qword_27F60BC98);
    sub_25467F5E0();
    v51 = v77;
    sub_25467F600();
    v52 = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_254626008(0, v52[2] + 1, 1, v52);
    }

    v54 = v52[2];
    v53 = v52[3];
    v16 = v98;
    v55 = v103;
    if (v54 >= v53 >> 1)
    {
      v52 = sub_254626008(v53 > 1, v54 + 1, 1, v52);
    }

    v52[2] = v54 + 1;
    (*(v81 + 32))(v52 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v54, v51, v100);
    sub_25467F4B0();
    v41 = v101;
    v56 = *(v101 + 36);
    if ((sub_254680420() & 1) == 0)
    {
      goto LABEL_15;
    }

    v99 = v52;
    v57 = v96;
    v90 = v31;
    v31 = v94;
    v58 = v89;
    v89(v96, v16, v37);
    v59 = v97;
    v87(v57 + *(v97 + 48), v55 + v56, v37);
    v60 = v95;
    sub_25462CC8C(v57, v95, &qword_27F60B9A8);
    v61 = *(v59 + 48);
    v62 = v75;
    v58(v75, v60, v37);
    v63 = v88;
    v88(v60 + v61, v37);
    sub_25462CC24(v57, v60, &qword_27F60B9A8);
    v64 = *(v59 + 48);
    v36 = v101;
    v58((v62 + *(v101 + 36)), (v60 + v64), v37);
    v63(v60, v37);
    v35 = v91;
    sub_25467F510();
    sub_254626CC4(v62, &qword_27F60BC98);
    sub_254626CC4(v102, &qword_27F60BC98);
    sub_254626CC4(v103, &qword_27F60BC98);
    v16 = v76;
  }

  sub_254626CC4(v16, &qword_27F60BC90);
  v41 = v74;
  v16 = v35;
  v72(v74, v35, v100);
  v31 = v99;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

LABEL_16:
  v31 = sub_254626008(0, *(v31 + 2) + 1, 1, v31);
LABEL_11:
  v66 = *(v31 + 2);
  v65 = *(v31 + 3);
  if (v66 >= v65 >> 1)
  {
    v31 = sub_254626008(v65 > 1, v66 + 1, 1, v31);
  }

  v67 = v81 + 8;
  v68 = v16;
  v69 = v100;
  (*(v81 + 8))(v68, v100);
  *(v31 + 2) = v66 + 1;
  (*(v67 + 24))(&v31[((*(v67 + 72) + 32) & ~*(v67 + 72)) + *(v67 + 64) * v66], v41, v69);
  return v31;
}

double static HoverTextPresentationEvent.didReceiveAnnouncement(text:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 66) = 12;
  v6 = type metadata accessor for HoverTextPresentationEvent();

  sub_25467F500();
  v7 = (a3 + v6[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a3 + v6[9]);
  result = 0.0;
  *v8 = 0u;
  v8[1] = 0u;
  v10 = a3 + v6[10];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a3 + v6[11]);
  *v11 = 0;
  v11[1] = 0;
  *(a3 + v6[12]) = 0;
  *(a3 + v6[13]) = 0;
  v12 = (a3 + v6[14]);
  *v12 = 0;
  v12[1] = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 64) = 320;
  return result;
}

unint64_t HoverTextPresentationEvent.Error.errorDescription.getter(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return 0xD000000000000018;
    }

    if (a2 == 1)
    {
      return 0xD000000000000022;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return 0xD00000000000002DLL;
      case 3:
        return 0xD000000000000029;
      case 4:
        return 0xD00000000000001CLL;
    }
  }

  sub_254680910();

  MEMORY[0x259C14370](a1, a2);
  return 0xD00000000000001DLL;
}

unint64_t HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD00000000000001DLL;
  if (a1 > 5u)
  {
    v5 = 0xD00000000000001BLL;
    v6 = 0xD000000000000026;
    if (a1 != 10)
    {
      v6 = 0xD000000000000020;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000016;
    if (a1 == 7)
    {
      v7 = 0xD00000000000001DLL;
    }

    if (a1 != 6)
    {
      v1 = v7;
    }

    if (a1 <= 8u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    v3 = 0xD00000000000001ALL;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000017;
    }

    if (!a1)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_254637BF8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_254680A90();
  }

  return v8 & 1;
}

uint64_t sub_254637C80()
{
  v1 = *v0;
  sub_254680B20();
  HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(v1);
  sub_2546804C0();

  return sub_254680B80();
}

uint64_t sub_254637CE4()
{
  HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(*v0);
  sub_2546804C0();
}

uint64_t sub_254637D38()
{
  v1 = *v0;
  sub_254680B20();
  HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(v1);
  sub_2546804C0();

  return sub_254680B80();
}

uint64_t sub_254637D98@<X0>(_BYTE *a1@<X8>)
{
  result = _s11HoverTextUI0aB17PresentationEventV011ValueChangeE4TypeO03rawF0AESgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_254637DC8@<X0>(unint64_t *a1@<X8>)
{
  result = HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t HoverTextPresentationEvent.displayText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HoverTextPresentationEvent() + 28);
  v4 = sub_25467F5A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HoverTextPresentationEvent.displayText.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HoverTextPresentationEvent() + 28);
  v4 = sub_25467F5A0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HoverTextPresentationEvent.secondaryText.getter()
{
  v1 = *(v0 + *(type metadata accessor for HoverTextPresentationEvent() + 32));

  return v1;
}

uint64_t HoverTextPresentationEvent.secondaryText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HoverTextPresentationEvent() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HoverTextPresentationEvent.anchorRect.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for HoverTextPresentationEvent();
  v10 = (v4 + *(result + 36));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t HoverTextPresentationEvent.displayMode.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HoverTextPresentationEvent();
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HoverTextPresentationEvent.selectedTextRange.setter(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for HoverTextPresentationEvent();
  v6 = (v2 + *(result + 44));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t HoverTextPresentationEvent.paragraphIndex.setter(uint64_t a1)
{
  result = type metadata accessor for HoverTextPresentationEvent();
  *(v1 + *(result + 48)) = a1;
  return result;
}

void *HoverTextPresentationEvent.axAttributedString.getter()
{
  v1 = *(v0 + *(type metadata accessor for HoverTextPresentationEvent() + 52));
  v2 = v1;
  return v1;
}

void HoverTextPresentationEvent.axAttributedString.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HoverTextPresentationEvent() + 52);

  *(v1 + v3) = a1;
}

uint64_t HoverTextPresentationEvent.location.setter(double a1, double a2)
{
  result = type metadata accessor for HoverTextPresentationEvent();
  v6 = (v2 + *(result + 56));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

__n128 HoverTextPresentationEvent.init(_:shouldFetchFocusedElementIfNeeded:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 66) = 12;
  v6 = type metadata accessor for HoverTextPresentationEvent();
  sub_25467F500();
  v7 = (a3 + v6[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a3 + v6[9]);
  *v8 = 0u;
  v8[1] = 0u;
  v9 = a3 + v6[10];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a3 + v6[11]);
  *v10 = 0;
  v10[1] = 0;
  *(a3 + v6[12]) = 0;
  *(a3 + v6[13]) = 0;
  v11 = (a3 + v6[14]);
  *v11 = 0;
  v11[1] = 0;
  v12 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v12;
  *(a3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  *(a3 + 65) = a2;
  return result;
}

__n128 static HoverTextPresentationEvent.focusDidChange(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *(a2 + 66) = 12;
  v7 = type metadata accessor for HoverTextPresentationEvent();
  v14 = *(a1 + 16);
  v15 = *a1;
  sub_25463D42C(a1, v16);
  sub_25467F500();
  v8 = (a2 + v7[8]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7[9]);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = a2 + v7[10];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a2 + v7[11]);
  *v11 = 0;
  v11[1] = 0;
  *(a2 + v7[12]) = 0;
  *(a2 + v7[13]) = 0;
  v12 = (a2 + v7[14]);
  *v12 = 0;
  v12[1] = 0;
  result = v15;
  *a2 = v15;
  *(a2 + 16) = v14;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = 256;
  return result;
}

double static HoverTextPresentationEvent.primaryAppsDidChange.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 66) = 12;
  v2 = type metadata accessor for HoverTextPresentationEvent();
  sub_25467F500();
  v3 = (a1 + v2[8]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + v2[9]);
  result = 0.0;
  *v4 = 0u;
  v4[1] = 0u;
  v6 = a1 + v2[10];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a1 + v2[11]);
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 0;
  v8 = (a1 + v2[14]);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 448;
  return result;
}

__n128 static HoverTextPresentationEvent.valueChanged(text:eventType:keyInputDelegate:frame:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a3;
  v12 = *(a5 + 32) & 1 | 0x80;
  *(a6 + 66) = 12;
  v13 = type metadata accessor for HoverTextPresentationEvent();
  v14 = a4;

  sub_25467F500();
  v15 = (a6 + v13[8]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a6 + v13[9]);
  *v16 = 0u;
  v16[1] = 0u;
  v17 = a6 + v13[10];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (a6 + v13[11]);
  *v18 = 0;
  v18[1] = 0;
  *(a6 + v13[12]) = 0;
  *(a6 + v13[13]) = 0;
  v19 = (a6 + v13[14]);
  *v19 = 0;
  v19[1] = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v11;
  *(a6 + 24) = a4;
  result = *a5;
  v21 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v21;
  *(a6 + 64) = v12;
  *(a6 + 65) = 1;
  return result;
}

double sub_254638848@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 66) = 12;
  v4 = type metadata accessor for HoverTextPresentationEvent();
  sub_25467F500();
  v5 = (a2 + v4[8]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4[9]);
  result = 0.0;
  *v6 = 0u;
  v6[1] = 0u;
  v8 = a2 + v4[10];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a2 + v4[11]);
  *v9 = 0;
  v9[1] = 0;
  *(a2 + v4[12]) = 0;
  *(a2 + v4[13]) = 0;
  v10 = (a2 + v4[14]);
  *v10 = 0;
  v10[1] = 0;
  *a2 = a1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 64) = 448;
  return result;
}

id sub_254638910(void *a1)
{
  v3 = sub_25467F840();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  if (a1)
  {
    return a1;
  }

  if (*(v1 + 65) != 1)
  {
    goto LABEL_17;
  }

  v11 = sub_25467F810();
  swift_beginAccess();
  v33 = *(v4 + 16);
  v34 = v11;
  v33(v9, v11, v3);
  v12 = sub_25467F830();
  v13 = sub_254680710();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_254615000, v12, v13, "Focus element given to us resolved to nil. reaching out to get focused element", v14, 2u);
    MEMORY[0x259C155A0](v14, -1, -1);
  }

  v15 = *(v4 + 8);
  v15(v9, v3);
  v16 = AXUIElementSharedSystemApp();
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277CE6BA0]) initWithAXUIElement_];
  if (!v18)
  {

LABEL_14:
    v25 = v34;
    swift_beginAccess();
    v33(v7, v25, v3);
    v26 = sub_25467F830();
    v27 = sub_254680710();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_254615000, v26, v27, "Shared system app unexpectedly nil!", v28, 2u);
      MEMORY[0x259C155A0](v28, -1, -1);
    }

    v15(v7, v3);
    goto LABEL_17;
  }

  v19 = v18;
  v20 = [v18 currentApplications];
  if (!v20)
  {
LABEL_20:
    v24 = 0;
    goto LABEL_21;
  }

  v21 = v20;
  v22 = sub_2546805B0();

  if (!*(v22 + 16))
  {

    goto LABEL_20;
  }

  sub_25463504C(v22 + 32, v35);

  sub_254626E64(0, &qword_27F60C680);
  v23 = swift_dynamicCast();
  v24 = v36;
  if (!v23)
  {
    v24 = 0;
  }

LABEL_21:
  v30 = v24;
  v31 = [v30 nativeFocusPreferredElement];

  result = v31;
  if (!v31)
  {
LABEL_17:
    sub_254636D40();
    swift_allocError();
    *v29 = 0;
    v29[1] = 0;
    return swift_willThrow();
  }

  return result;
}

id sub_254638CC8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v116 = a3;
  v101 = a2;
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a4[3];
  v97 = a4;
  v112 = sub_25467F550();
  v111 = *(v112 - 8);
  v11 = MEMORY[0x28223BE20](v112);
  v110 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v96 - v13;
  v109 = sub_25467F4F0();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25467F620();
  MEMORY[0x28223BE20](v15 - 8);
  v102 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC78);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v120 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v113 = &v96 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v115 = &v96 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v114 = &v96 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v96 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v103 = &v96 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v96 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v96 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v96 - v37;
  v39 = sub_25467F5A0();
  v123 = *(v39 - 8);
  v118 = *(v123 + 56);
  v119 = v123 + 56;
  v118(v38, 1, 1, v39);
  v100 = v5;
  v99 = v4;
  v98 = a1;
  v122 = v39;
  if (!a1)
  {
    v117 = 0;
    v121 = 0;
    goto LABEL_23;
  }

  v40 = a1;
  if (![v40 isKeyboardKey])
  {
    goto LABEL_9;
  }

  v104 = v40;
  result = [v104 application];
  if (result)
  {
    v42 = result;
    v43 = [result firstResponder];

    if (v43)
    {
      v44 = [v43 value];
      if (v44)
      {
        v45 = v44;
        sub_254680470();
      }

      sub_25467F610();
      sub_25467F5B0();
      sub_254626CC4(v38, &qword_27F60BC78);
      v118(v36, 0, 1, v122);
      sub_25462CC24(v36, v38, &qword_27F60BC78);
      v46 = v104;
      v47 = [v104 label];
      if (v47)
      {
        v48 = v47;
        v117 = sub_254680470();
        v121 = v49;
      }

      else
      {

        v121 = 0xE100000000000000;
        v117 = 32;
      }

      goto LABEL_13;
    }

LABEL_9:
    v117 = 0;
    v121 = 0;
LABEL_13:
    sub_25462CC8C(v38, v33, &qword_27F60BC78);
    if ((*(v123 + 48))(v33, 1, v122) == 1)
    {
      sub_254626CC4(v33, &qword_27F60BC78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_254683550;
      *(inited + 32) = v40;
      v51 = v40;
      v52 = [v51 elementsForAttribute_];
      if (v52)
      {
        v53 = v52;
        sub_254626E64(0, &qword_27F60C680);
        v54 = sub_2546805B0();
      }

      else
      {
        v54 = MEMORY[0x277D84F90];
      }

      if (qword_27F60B410 != -1)
      {
        swift_once();
      }

      v56 = sub_254634D44(v55, v54);

      if ((v56 & 1) == 0)
      {
        v124 = v54;

        sub_25463D0B4(inited);
        inited = v124;
      }

      qword_27F60BBE8 = v54;

      v57 = v103;
      sub_25463B384(inited, v103);

      sub_254626CC4(v38, &qword_27F60BC78);
      v39 = v122;
      v118(v57, 0, 1, v122);
      sub_25462CC24(v57, v38, &qword_27F60BC78);
    }

    else
    {

      sub_254626CC4(v33, &qword_27F60BC78);
      v39 = v122;
    }

LABEL_23:
    sub_25462CC8C(v38, v28, &qword_27F60BC78);
    v58 = *(v123 + 48);
    v59 = v58(v28, 1, v39);
    sub_254626CC4(v28, &qword_27F60BC78);
    v105 = v38;
    v104 = v58;
    if (v59 == 1)
    {
      if (!v116)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v60 = v114;
      sub_25462CC8C(v38, v114, &qword_27F60BC78);
      result = v58(v60, 1, v39);
      if (result == 1)
      {
        goto LABEL_46;
      }

      v61 = v106;
      sub_25467F4A0();
      sub_25463DB1C(&qword_27F60B6B0, MEMORY[0x277CC8B30]);
      v62 = v108;
      v63 = v109;
      sub_254680670();
      v64 = v110;
      sub_254680690();
      sub_25463DB1C(&qword_27F60B6B8, MEMORY[0x277CC8C20]);
      v65 = v112;
      v66 = sub_254680430();
      v67 = *(v111 + 8);
      v67(v64, v65);
      v67(v62, v65);
      (*(v107 + 8))(v61, v63);
      v39 = v122;
      (*(v123 + 8))(v114, v122);
      v38 = v105;
      v58 = v104;
      if ((v66 & 1) == 0 || !v116)
      {
LABEL_30:
        v69 = v115;
        sub_25462CC8C(v38, v115, &qword_27F60BC78);
        v70 = v58(v69, 1, v39);
        sub_254626CC4(v69, &qword_27F60BC78);
        v71 = v121;
        if (v70 == 1)
        {
          goto LABEL_36;
        }

        v72 = v113;
        sub_25462CC8C(v38, v113, &qword_27F60BC78);
        result = v58(v72, 1, v39);
        if (result == 1)
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v73 = v106;
        sub_25467F4A0();
        sub_25463DB1C(&qword_27F60B6B0, MEMORY[0x277CC8B30]);
        v74 = v108;
        v75 = v109;
        sub_254680670();
        v76 = v110;
        sub_254680690();
        sub_25463DB1C(&qword_27F60B6B8, MEMORY[0x277CC8C20]);
        v77 = v112;
        v78 = sub_254680430();
        v79 = *(v111 + 8);
        v79(v76, v77);
        v79(v74, v77);
        (*(v107 + 8))(v73, v75);
        v39 = v122;
        (*(v123 + 8))(v113, v122);
        v38 = v105;
        v71 = v121;
        v58 = v104;
        if (v78)
        {
LABEL_36:
          if (!v71)
          {
            goto LABEL_41;
          }

          v80 = HIBYTE(v71) & 0xF;
          if ((v71 & 0x2000000000000000) == 0)
          {
            v80 = v117 & 0xFFFFFFFFFFFFLL;
          }

          if (!v80)
          {
LABEL_41:
            sub_254636D40();
            swift_allocError();
            *v94 = xmmword_254683540;
            swift_willThrow();

            return sub_254626CC4(v38, &qword_27F60BC78);
          }
        }

        v81 = v120;
        sub_25462CC8C(v38, v120, &qword_27F60BC78);
        result = v58(v81, 1, v39);
        if (result != 1)
        {
          v82 = type metadata accessor for HoverTextPresentationEvent();
          v83 = v99;
          (*(v123 + 40))(v99 + v82[7], v120, v39);
          v84 = (v83 + v82[8]);

          *v84 = v117;
          v84[1] = v71;
          if (!v98)
          {
            result = sub_254626CC4(v38, &qword_27F60BC78);
            v87 = 0;
            v89 = 0;
            v91 = 0;
            v93 = 0;
            if ((v97[4] & 1) == 0)
            {
              v87 = v7;
              v89 = v8;
              v91 = v9;
              v93 = v10;
            }

            goto LABEL_44;
          }

          result = [v98 uiElement];
          if (result)
          {
            v85 = result;
            [result rectWithAXAttribute_];
            v87 = v86;
            v89 = v88;
            v91 = v90;
            v93 = v92;

            result = sub_254626CC4(v38, &qword_27F60BC78);
LABEL_44:
            v95 = (v83 + v82[9]);
            *v95 = v87;
            v95[1] = v89;
            v95[2] = v91;
            v95[3] = v93;
            return result;
          }

          goto LABEL_48;
        }

        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    sub_25467F610();
    v68 = v103;
    sub_25467F5B0();
    sub_254626CC4(v38, &qword_27F60BC78);
    v118(v68, 0, 1, v39);
    sub_25462CC24(v68, v38, &qword_27F60BC78);
    goto LABEL_30;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_254639B10(uint64_t a1)
{
  v3 = sub_25467F620();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_25467F5A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    sub_25467F610();
    sub_25467F5B0();
    v10 = type metadata accessor for HoverTextPresentationEvent();
    (*(v5 + 40))(v1 + v10[7], v7, v4);
    v11 = (v1 + v10[8]);

    *v11 = 0;
    v11[1] = 0;
    v13 = 0uLL;
    v14 = 0uLL;
    if ((*(a1 + 48) & 1) == 0)
    {
      v13 = *(a1 + 16);
      v14 = *(a1 + 32);
    }

    v15 = (v1 + v10[9]);
    *v15 = v13;
    v15[1] = v14;
  }

  else
  {
    sub_254636D40();
    swift_allocError();
    *v16 = xmmword_254683540;
    return swift_willThrow();
  }

  return result;
}

void sub_254639CE4(int a1, void *a2)
{
  v3 = v2;
  v198 = a1;
  v210 = *MEMORY[0x277D85DE8];
  v5 = sub_25467F840();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v174 - v11;
  MEMORY[0x28223BE20](v10);
  v195 = v174 - v13;
  v14 = sub_25467F620();
  MEMORY[0x28223BE20](v14 - 8);
  v197 = sub_25467F5A0();
  v196 = *(v197 - 1);
  MEMORY[0x28223BE20](v197);
  v16 = v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() primaryApp];
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  v193 = v12;
  v192 = v9;
  v194 = v5;
  v19 = [v17 uiElement];
  if (!v19)
  {

LABEL_13:
    sub_254636D40();
    swift_allocError();
    *v39 = xmmword_254683590;
    swift_willThrow();
    return;
  }

  v20 = v19;
  v21 = a2;
  if (!a2)
  {
    v21 = [v18 firstResponder];
    if (!v21)
    {
      goto LABEL_15;
    }
  }

  v22 = a2;
  v21 = v21;
  v23 = [v21 uiElement];
  if (!v23)
  {

LABEL_15:
    sub_254636D40();
    swift_allocError();
    *v40 = xmmword_254683580;
    swift_willThrow();

    return;
  }

  v24 = v23;
  v186 = v6;
  v189 = v21;
  v191 = v20;
  v25 = sub_254680660();
  v26 = sub_254680660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC60);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_254683560;
  *(v27 + 32) = v25;
  *(v27 + 40) = v26;
  sub_254626E64(0, &qword_27F60BC68);
  v187 = v25;
  v188 = v26;
  v28 = sub_2546805A0();

  v190 = v24;
  v29 = [v24 valueArrayWithAXAttributes_];

  if (!v29)
  {
    v31 = v191;
    v32 = v189;
    goto LABEL_18;
  }

  v30 = sub_2546805B0();

  v31 = v191;
  v32 = v189;
  if (!v30)
  {
LABEL_18:
    sub_254636D40();
    swift_allocError();
    *v41 = xmmword_254683570;
    swift_willThrow();

    return;
  }

  if (!*(v30 + 16))
  {

    goto LABEL_18;
  }

  if (!*(v30 + 16))
  {
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  sub_25463504C(v30 + 32, v209);

  sub_25463504C(v209, v208);
  type metadata accessor for AXValue(0);
  swift_dynamicCast();
  v33 = v206;
  v202 = 0;
  valuePtr = 0;
  AXValueGetValue(v206, kAXValueTypeCFRange, &valuePtr);
  v34 = valuePtr;
  v35 = v202;
  v36 = type metadata accessor for HoverTextPresentationEvent();
  v37 = (v199 + *(v36 + 44));
  v182 = v34;
  *v37 = v34;
  v37[1] = v35;
  v181 = v35;
  v177 = v37;
  v38 = *(v30 + 16);
  v179 = v33;
  if (v38)
  {
    sub_25463504C(v30 + 32 * v38, v208);
  }

  else
  {

    memset(v208, 0, sizeof(v208));
  }

  v42 = HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(v198);
  v44 = v190;
  v45 = v36;
  if (v42 == 0xD000000000000026 && 0x8000000254685CF0 == v43)
  {

    v46 = 0;
    v47 = 0xE000000000000000;
    v48 = v191;
    goto LABEL_29;
  }

  v49 = sub_254680A90();

  v48 = v191;
  if ((v49 & 1) == 0)
  {
    sub_25462CC8C(v208, &v206, &qword_27F60BC70);
    if (*(&v207 + 1))
    {
      if (swift_dynamicCast())
      {
        v47 = *(&v204 + 1);
        v46 = v204;
        goto LABEL_29;
      }
    }

    else
    {
      sub_254626CC4(&v206, &qword_27F60BC70);
    }
  }

  v46 = 0;
  v47 = 0xE000000000000000;
LABEL_29:
  v50 = sub_2546806C0();
  v184 = v45;
  v185 = v47;
  v183 = v18;
  if (v52)
  {
    goto LABEL_74;
  }

  v175 = v51;
  v178 = v2;
  v176 = v50;
  v180 = v46;
  v53 = sub_254680580();
  v55 = v54;
  while (1)
  {
    if ((v55 ^ v53) < 0x4000)
    {

      v58 = v185;

      v176 = 15;
      v59 = v180;
      goto LABEL_38;
    }

    v55 = sub_254680820();
    if (sub_254680840() == 10 && v57 == 0xE100000000000000)
    {
      break;
    }

    v56 = sub_254680A90();

    if (v56)
    {
      goto LABEL_37;
    }
  }

LABEL_37:

  v58 = v185;

  v59 = v180;
  sub_254680580();
  v176 = sub_254680810();

LABEL_38:
  v60 = sub_25463B338(v175, v59, v58);
  v62 = v61;

  if ((v60 ^ v62) < 0x4000)
  {
LABEL_44:

    v66 = HIBYTE(v185) & 0xF;
    if ((v185 & 0x2000000000000000) == 0)
    {
      v66 = v180;
    }

    v67 = v66 << 16;
    v3 = v178;
    if ((v185 & 0x1000000000000000) == 0 || (v180 & 0x800000000000000) != 0)
    {
      v63 = v67 | 7;
    }

    else
    {
      v63 = v67 | 0xB;
    }
  }

  else
  {
    v63 = v60;
    while (sub_254680840() != 10 || v64 != 0xE100000000000000)
    {
      v65 = sub_254680A90();

      if (v65)
      {
        goto LABEL_51;
      }

      v63 = sub_254680810();
      if (!((v63 ^ v62) >> 14))
      {
        goto LABEL_44;
      }
    }

LABEL_51:

    v3 = v178;
  }

  v68 = v176;
  v69 = sub_254680520();
  if (v63 >> 14 < v68 >> 14)
  {
    goto LABEL_98;
  }

  v70 = v69;
  v71 = sub_254680580();
  v73 = v72;
  v75 = v74;

  sub_25467F610();
  v178 = v71;
  v175 = v73;
  v174[1] = v75;
  sub_25467F5C0();
  v76 = v184;
  v77 = v199;
  (*(*&v196 + 40))(v199 + v184[7], v16, v197);
  if (__OFSUB__(v182, v70))
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v78 = v177;
  *v177 = v182 - v70;
  v78[1] = v181;
  *(v77 + v76[12]) = v70;
  v79 = sub_2546804D0();
  v200[0] = 0;
  v200[1] = v79;
  v80 = AXValueCreate(kAXValueTypeCFRange, v200);
  if ([v190 objectWithAXAttribute:92508 parameter:v80])
  {
    sub_254680870();
    swift_unknownObjectRelease();
  }

  else
  {
    v205 = 0u;
    v204 = 0u;
  }

  v206 = v204;
  v207 = v205;
  v45 = v184;
  if (*(&v205 + 1))
  {
    sub_254626E64(0, &qword_27F60BC50);
    if (swift_dynamicCast())
    {
      v81 = v203;
      goto LABEL_62;
    }
  }

  else
  {
    sub_254626CC4(&v206, &qword_27F60BC70);
  }

  v81 = 0;
LABEL_62:
  v82 = sub_254680520();
  v83 = sub_254680830();

  v197 = v80;
  if (!v81)
  {
    goto LABEL_68;
  }

  v84 = v81;
  if (v82 == sub_25467F410())
  {

    goto LABEL_68;
  }

  v85 = v83;
  v86 = __OFADD__(v82, v83);
  v87 = v82 + v83;
  if (v86)
  {
LABEL_100:
    __break(1u);
  }

  v88 = [v84 length];

  v89 = v88 < v87;
  v90 = v85;
  v91 = v197;
  if (!v89)
  {
    v113 = [v84 substringWithRange_];

    v114 = v45[13];
    *(v77 + v114) = v113;
    v18 = v183;
    v48 = v191;
    v44 = v190;
    goto LABEL_74;
  }

LABEL_68:
  v196 = *&v81;
  v92 = sub_25467F810();
  swift_beginAccess();
  v93 = v186;
  v94 = v195;
  v95 = v92;
  v96 = v194;
  (*(v186 + 16))(v195, v95, v194);
  v97 = v183;
  v98 = v93;
  v99 = sub_25467F830();
  v100 = sub_2546806F0();

  if (os_log_type_enabled(v99, v100))
  {
    LODWORD(v182) = v100;
    v101 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    *&v206 = v181;
    *v101 = 136315394;
    v102 = sub_2546807F0();
    v104 = sub_25463CAC4(v102, v103, &v206);

    *(v101 + 4) = v104;
    *(v101 + 12) = 2080;
    v105 = [v97 label];
    if (v105)
    {
      v106 = v105;
      v107 = sub_254680470();
      v109 = v108;
    }

    else
    {
      v109 = 0xEC0000006C696E20;
      v107 = 0x7369206C6562616CLL;
    }

    v110 = v197;
    v111 = sub_25463CAC4(v107, v109, &v206);

    *(v101 + 14) = v111;
    _os_log_impl(&dword_254615000, v99, v182, "Invalid substring range %s %s", v101, 0x16u);
    v112 = v181;
    swift_arrayDestroy();
    MEMORY[0x259C155A0](v112, -1, -1);
    MEMORY[0x259C155A0](v101, -1, -1);

    (*(v186 + 8))(v94, v194);
    v18 = v183;
    v48 = v191;
    v45 = v184;
    v44 = v190;
  }

  else
  {

    (*(v98 + 8))(v94, v96);
    v18 = v183;
    v48 = v191;
    v44 = v190;
    v45 = v184;
  }

LABEL_74:
  v115 = [objc_opt_self() sharedInstance];
  v116 = [v115 hoverTextTypingDisplayMode];

  v117 = v199;
  v118 = (v199 + v45[10]);
  *v118 = v116;
  v197 = v118;
  *(v118 + 8) = 0;
  [v48 rectWithAXAttribute_];
  v120 = v119;
  [v44 rectWithAXAttribute_];
  v122 = v121;
  [v44 rectWithAXAttribute_];
  v215.origin.x = 0.0;
  v215.origin.y = 0.0;
  v215.size.width = 0.0;
  v215.size.height = 0.0;
  y = v211.origin.y;
  if (CGRectEqualToRect(v211, v215))
  {
    [v48 rectWithAXAttribute_];
  }

  else
  {
    v125.n128_f64[0] = y;
  }

  v124.n128_u64[0] = v120;
  v196 = CGSizeMake(v124, v125);
  v195 = v126;
  v182 = v127;
  v181 = v128;
  [v44 rectWithAXAttribute_];
  x = v212.origin.x;
  v130 = v212.origin.y;
  width = v212.size.width;
  height = v212.size.height;
  if (CGRectIsNull(v212) || (v213.origin.x = x, v213.origin.y = v130, v213.size.width = width, v213.size.height = height, CGRectIsInfinite(v213)))
  {
    v135 = sub_25467F810();
    swift_beginAccess();
    v136 = v186;
    v137 = *(v186 + 16);
    v138 = v193;
    v139 = v194;
    v180 = v186 + 16;
    v177 = v137;
    (v137)(v193, v135, v194);
    v140 = sub_25467F830();
    v141 = sub_2546806F0();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      *&v204 = v176;
      *v142 = 136315138;
      v214.origin.x = x;
      v214.origin.y = v130;
      v214.size.width = width;
      v214.size.height = height;
      v143 = NSStringFromCGRect(v214);
      v144 = v135;
      v145 = v116;
      v146 = sub_254680470();
      v178 = v3;
      v148 = v147;

      v149 = v146;
      v116 = v145;
      v135 = v144;
      v150 = sub_25463CAC4(v149, v148, &v204);

      *(v142 + 4) = v150;
      _os_log_impl(&dword_254615000, v140, v141, "Text cursor frame had infinite coordinates. %s. Falling back to cachedTextCursorFrame.", v142, 0xCu);
      v151 = v176;
      __swift_destroy_boxed_opaque_existential_0(v176);
      MEMORY[0x259C155A0](v151, -1, -1);
      MEMORY[0x259C155A0](v142, -1, -1);

      v152 = *(v186 + 8);
      v152(v138, v194);
    }

    else
    {

      v152 = *(v136 + 8);
      v152(v138, v139);
    }

    v153 = v189;
    v216.origin.x = 0.0;
    v216.origin.y = 0.0;
    v216.size.width = 0.0;
    v216.size.height = 0.0;
    v154 = CGRectEqualToRect(*ymmword_27F60BBF0, v216);
    v18 = v183;
    if (v154)
    {
      v193 = v116;
      swift_beginAccess();
      v155 = v192;
      v156 = v135;
      v157 = v194;
      (v177)(v192, v156, v194);
      v158 = sub_25467F830();
      v159 = sub_254680710();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&dword_254615000, v158, v159, "cachedTextCursorFrame is zero. Falling back to first responder frame.", v160, 2u);
        v161 = v190;
        MEMORY[0x259C155A0](v160, -1, -1);

        v152(v155, v157);
        v44 = v161;
        v117 = v199;
        v134.n128_u64[0] = v122;
        v48 = v191;
        v153 = v189;
        v45 = v184;
        v116 = v193;
        goto LABEL_89;
      }

      v152(v155, v157);
      v117 = v199;
      v134.n128_u64[0] = v122;
      v48 = v191;
      v153 = v189;
      v45 = v184;
      v116 = v193;
    }

    else
    {
      v134.n128_u64[0] = *&ymmword_27F60BBF0[8];
      v117 = v199;
      v48 = v191;
      v45 = v184;
    }

    v44 = v190;
  }

  else
  {
    *ymmword_27F60BBF0 = x;
    *&ymmword_27F60BBF0[8] = v130;
    *&ymmword_27F60BBF0[16] = width;
    *&ymmword_27F60BBF0[24] = height;
    v134.n128_f64[0] = v130;
    v153 = v189;
  }

LABEL_89:
  v133.n128_u64[0] = v120;
  v162 = CGSizeMake(v133, v134);
  v164 = v163;
  v166 = v165;
  v168 = v167;
  if (v116 == 2)
  {
    v169 = v153;
    v170 = [v153 hoverTypingShouldAdjustDockedMode];

    sub_254626CC4(v208, &qword_27F60BC70);
    __swift_destroy_boxed_opaque_existential_0(v209);
    if (v170)
    {
      v171 = v197;
      *v197 = 3;
      *(v171 + 8) = 0;
    }

    else
    {
      v162 = v196;
      v164 = v195;
      v166 = v182;
      v168 = v181;
    }
  }

  else
  {

    sub_254626CC4(v208, &qword_27F60BC70);
    __swift_destroy_boxed_opaque_existential_0(v209);
    if (v116 != 3)
    {
      goto LABEL_96;
    }
  }

  v172 = (v117 + v45[9]);
  *v172 = v162;
  *(v172 + 1) = v164;
  *(v172 + 2) = v166;
  *(v172 + 3) = v168;
LABEL_96:
  v173 = (v117 + v45[8]);

  *v173 = 0;
  v173[1] = 0;
  *(v117 + 66) = v198;
}

unint64_t sub_25463B338(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_254680580();
  }

  __break(1u);
  return result;
}

size_t sub_25463B384@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v83 = sub_25467F550();
  v3 = *(v83 - 8);
  v4 = MEMORY[0x28223BE20](v83);
  v82 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v63 - v6;
  v80 = sub_25467F4F0();
  v7 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC78);
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v94 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - v12;
  v14 = sub_25467F620();
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25467F5A0();
  v96 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v78 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v63 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v97 = &v63 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v84 = &v63 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v63 - v26;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2546809C0())
  {
    v29 = MEMORY[0x277D84F90];
    v95 = v16;
    if (!i)
    {
      break;
    }

    v77 = v27;
    v99 = MEMORY[0x277D84F90];
    v27 = &v99;
    result = sub_254635B08(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v75 = i;
    v63 = v7;
    v64 = v3;
    v65 = v21;
    v31 = 0;
    v29 = v99;
    v74 = *MEMORY[0x277CE6DD0];
    v76 = a1 & 0xC000000000000001;
    v68 = a1 & 0xFFFFFFFFFFFFFF8;
    v71 = a1;
    v67 = (a1 + 32);
    v73 = (v96 + 56);
    v69 = "No display element found";
    v32 = (v96 + 48);
    v98 = (v96 + 32);
    v72 = (v96 + 8);
    v7 = &qword_27F60BC78;
    v21 = &unk_254683890;
    while (1)
    {
      v90 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v76)
      {
        v33 = MEMORY[0x259C147A0]();
      }

      else
      {
        if (v31 >= *(v68 + 16))
        {
          goto LABEL_42;
        }

        v33 = *&v67[8 * v31];
      }

      v91 = v29;
      v92 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC80);
      v34 = *(v85 + 72);
      v35 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v87 = swift_allocObject();
      v36 = v87 + v35;
      sub_25463C098(v87 + v35);
      sub_25463C88C(v36 + v34);
      v37 = [v92 hasAnyTraits_];
      v89 = v36;
      if (v37)
      {
        v38 = sub_254680440();
        v39 = HTUILocString(v38);

        sub_254680470();
        sub_25467F610();
        v36 = v89;
        sub_25467F5B0();
        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      v41 = v94;
      v88 = v90;
      (*v73)(v36 + 2 * v34, v40, 1, v16);
      v42 = 3;
      v43 = MEMORY[0x277D84F90];
      v93 = v34;
      do
      {
        sub_25462CC8C(v36, v13, v7);
        sub_25462CC24(v13, v41, v7);
        if ((*v32)(v41, 1, v16) == 1)
        {
          sub_254626CC4(v41, v7);
        }

        else
        {
          v44 = v32;
          v45 = v21;
          v46 = v7;
          v47 = v13;
          v48 = *v98;
          (*v98)(v97, v41, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_254626008(0, v43[2] + 1, 1, v43);
          }

          v50 = v43[2];
          v49 = v43[3];
          if (v50 >= v49 >> 1)
          {
            v43 = sub_254626008(v49 > 1, v50 + 1, 1, v43);
          }

          v43[2] = v50 + 1;
          v51 = v43 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v50;
          v16 = v95;
          v48(v51, v97, v95);
          v13 = v47;
          v7 = v46;
          v21 = v45;
          v32 = v44;
          v34 = v93;
          v41 = v94;
        }

        v36 += v34;
        --v42;
      }

      while (v42);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v52 = v84;
      sub_25462EBC4(8236, 0xE200000000000000, v43);

      v53 = sub_254636D94(10, 0xE100000000000000);
      v27 = v77;
      sub_25462EBC4(8238, 0xE200000000000000, v53);

      (*v72)(v52, v16);
      v29 = v91;
      v99 = v91;
      a1 = *(v91 + 2);
      v54 = *(v91 + 3);
      v3 = a1 + 1;
      if (a1 >= v54 >> 1)
      {
        sub_254635B08(v54 > 1, a1 + 1, 1);
        v27 = v77;
        v29 = v99;
      }

      *(v29 + 2) = v3;
      (*(v96 + 32))(&v29[((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * a1], v27, v16);
      v31 = v88;
      if (v90 == v75)
      {
        v21 = v65;
        v3 = v64;
        v7 = v63;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

LABEL_27:
  v93 = *(v29 + 2);
  if (v93)
  {
    v13 = 0;
    v92 = (v96 + 16);
    v89 = (v7 + 8);
    v90 = (v3 + 8);
    v87 = (v96 + 8);
    v88 = (v96 + 32);
    v27 = MEMORY[0x277D84F90];
    v91 = v29;
    v55 = v81;
    while (v13 < *(v29 + 2))
    {
      v97 = ((*(v96 + 80) + 32) & ~*(v96 + 80));
      v98 = v27;
      v94 = *(v96 + 72);
      (*(v96 + 16))(v21, &v97[v29 + v94 * v13], v16);
      v7 = v79;
      sub_25467F4A0();
      sub_25463DB1C(&qword_27F60B6B0, MEMORY[0x277CC8B30]);
      v56 = v21;
      v57 = v80;
      sub_254680670();
      v58 = v82;
      sub_254680690();
      sub_25463DB1C(&qword_27F60B6B8, MEMORY[0x277CC8C20]);
      a1 = v83;
      v59 = sub_254680430();
      v3 = *v90;
      (*v90)(v58, a1);
      (v3)(v55, a1);
      (*v89)(v7, v57);
      if (v59)
      {
        v16 = v95;
        (*v87)(v56, v95);
        v21 = v56;
        v29 = v91;
        v27 = v98;
      }

      else
      {
        a1 = *v88;
        (*v88)(v78, v56, v95);
        v27 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v27;
        v21 = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_254635B08(0, *(v27 + 2) + 1, 1);
          v27 = v99;
        }

        v29 = v91;
        v61 = v97;
        v7 = v94;
        v3 = *(v27 + 2);
        v62 = *(v27 + 3);
        if (v3 >= v62 >> 1)
        {
          sub_254635B08(v62 > 1, v3 + 1, 1);
          v27 = v99;
        }

        *(v27 + 2) = v3 + 1;
        v16 = v95;
        (a1)(&v61[v27 + v3 * v7], v78, v95);
      }

      if (v93 == ++v13)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_41;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_39:

  sub_25462EBC4(8236, 0xE200000000000000, v27);
}

uint64_t HoverTextPresentationEvent.description.getter()
{
  v1 = *(v0 + 64);
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 == 2)
    {
      return 0x61684365756C6156;
    }

    else
    {
      v4 = *v0;
      v5 = v0[1];
      result = 0xD000000000000014;
      v6 = v0[5];
      v7 = v0[6] | v0[7];
      v8 = v0[4] | v0[3] | v0[2];
      if (v1 != 192 || v7 | v4 | v6 | v8 | v5)
      {
        v9 = v7 | v6 | v8 | v5;
        if (v1 != 192 || v4 != 1 || v9)
        {
          if (v1 == 192 && v4 == 2 && !v9)
          {
            return 0xD000000000000011;
          }

          else if (v1 == 192 && v4 == 3 && !v9)
          {
            return 0xD00000000000001DLL;
          }

          else
          {
            return 0xD000000000000016;
          }
        }
      }
    }
  }

  else if (v2)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6469447375636F46;
  }

  return result;
}

uint64_t sub_25463C098@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_25467F550();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v59 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = v52 - v5;
  v56 = sub_25467F4F0();
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_25467F440();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25467F5A0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v52 - v14;
  v16 = sub_25467F620();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC78);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v52 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v52 - v24;
  v63 = v10;
  v65 = *(v10 + 56);
  v66 = v10 + 56;
  v65(v52 - v24, 1, 1, v9);
  v26 = [v1 uiElement];
  v64 = v9;
  if (!v26)
  {
    v69 = 0u;
    v70 = 0u;
    v29 = v13;
LABEL_9:
    sub_254626CC4(&v69, &qword_27F60BC70);
    goto LABEL_10;
  }

  v27 = v26;
  v28 = [v26 objectWithAXAttribute_];

  if (v28)
  {
    sub_254680870();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  v29 = v13;
  v69 = v67;
  v70 = v68;
  v9 = v64;
  if (!*(&v68 + 1))
  {
    goto LABEL_9;
  }

  sub_254626E64(0, &qword_27F60BC50);
  if (swift_dynamicCast())
  {
    v30 = v67;
    v31 = [v67 attributedString];
    sub_25467F5F0();

    goto LABEL_12;
  }

LABEL_10:
  v32 = [v1 label];
  if (!v32)
  {
    goto LABEL_13;
  }

  v33 = v32;
  sub_254680470();

  sub_25467F610();
  v9 = v64;
  sub_25467F5B0();
LABEL_12:
  sub_254626CC4(v25, &qword_27F60BC78);
  v65(v23, 0, 1, v9);
  sub_25462CC24(v23, v25, &qword_27F60BC78);
  v29 = v13;
LABEL_13:
  sub_25462CC8C(v25, v20, &qword_27F60BC78);
  v34 = v63;
  if ((*(v63 + 48))(v20, 1, v9) == 1)
  {
    sub_254626CC4(v25, &qword_27F60BC78);
    sub_254626CC4(v20, &qword_27F60BC78);
  }

  else
  {
    v35 = v34 + 32;
    v36 = *(v34 + 32);
    v37 = v15;
    v52[1] = v35;
    v52[0] = v36;
    v36(v15, v20, v9);
    sub_25467F420();
    sub_25462DB10(v8, v29);
    (*(v53 + 8))(v8, v54);
    v38 = v55;
    sub_25467F4A0();
    sub_25463DB1C(&qword_27F60B6B0, MEMORY[0x277CC8B30]);
    v54 = v29;
    v39 = v56;
    v40 = v57;
    sub_254680670();
    v41 = v59;
    sub_254680690();
    sub_25463DB1C(&qword_27F60B6B8, MEMORY[0x277CC8C20]);
    v42 = v61;
    v43 = sub_254680430();
    v44 = *(v60 + 8);
    v45 = v41;
    v46 = v63;
    v44(v45, v42);
    v44(v40, v42);
    v9 = v64;
    (*(v58 + 8))(v38, v39);
    v47 = *(v46 + 8);
    v47(v37, v9);
    sub_254626CC4(v25, &qword_27F60BC78);
    if ((v43 & 1) == 0)
    {
      v50 = v62;
      (v52[0])(v62, v54, v9);
      v49 = v50;
      v48 = 0;
      return (v65)(v49, v48, 1, v9);
    }

    v47(v54, v9);
  }

  v48 = 1;
  v49 = v62;
  return (v65)(v49, v48, 1, v9);
}

uint64_t sub_25463C88C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25467F620();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = [v1 value];
  if (v4)
  {
    v5 = v4;
    if ([v1 hasAnyTraits_])
    {
      [v5 intValue];
      v6 = sub_254680440();
      v7 = HTUILocString(v6);

      v8 = sub_254680470();
      v10 = v9;
    }

    else
    {
      v8 = sub_254680470();
      v10 = v11;
    }

    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_25467F610();
      sub_25467F5B0();

      v13 = sub_25467F5A0();
      return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
    }
  }

  v15 = sub_25467F5A0();
  v16 = *(*(v15 - 8) + 56);

  return v16(a1, 1, 1, v15);
}

unint64_t sub_25463CAC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25463CB90(v11, 0, 0, 1, a1, a2);
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
    sub_25463504C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25463CB90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25463CC9C(a5, a6);
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
    result = sub_254680940();
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

uint64_t sub_25463CC9C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25463CCE8(a1, a2);
  sub_25463CE18(&unk_28667B4C8);
  return v3;
}

uint64_t sub_25463CCE8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25463CF04(v5, 0);
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

  result = sub_254680940();
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
        v10 = sub_254680500();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25463CF04(v10, 0);
        result = sub_2546808E0();
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

uint64_t sub_25463CE18(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25463CF78(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25463CF04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25463CF78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

id sub_25463D06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 < 0)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_25463D0B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2546809C0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2546809C0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_254654D18();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_25463D1A4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25463D1A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2546809C0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2546809C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25462C9F0(&qword_27F60BCB0, &qword_27F60BCA8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BCA8);
            v9 = sub_25463D358(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_254626E64(0, &qword_27F60C680);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_25463D358(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C147A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_25463D3D8;
  }

  __break(1u);
  return result;
}

uint64_t _s11HoverTextUI0aB17PresentationEventV011ValueChangeE4TypeO03rawF0AESgSS_tcfC_0()
{
  v0 = sub_254680A60();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25463D490()
{
  result = qword_27F60BC18;
  if (!qword_27F60BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BC18);
  }

  return result;
}

void sub_25463D50C()
{
  sub_25463D660(319, &qword_27F60BC30);
  if (v0 <= 0x3F)
  {
    sub_25467F5A0();
    if (v1 <= 0x3F)
    {
      sub_25463D660(319, &qword_27F60BC38);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGRect(319);
        if (v3 <= 0x3F)
        {
          sub_25463D6AC();
          if (v4 <= 0x3F)
          {
            type metadata accessor for _NSRange(319);
            if (v5 <= 0x3F)
            {
              sub_25463D704();
              if (v6 <= 0x3F)
              {
                type metadata accessor for CGPoint(319);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_25463D660(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_254680800();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_25463D6AC()
{
  if (!qword_27F60BC40)
  {
    type metadata accessor for AXHoverTextDisplayMode(255);
    v0 = sub_254680800();
    if (!v1)
    {
      atomic_store(v0, &qword_27F60BC40);
    }
  }
}

void sub_25463D704()
{
  if (!qword_27F60BC48)
  {
    sub_254626E64(255, &qword_27F60BC50);
    v0 = sub_254680800();
    if (!v1)
    {
      atomic_store(v0, &qword_27F60BC48);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11HoverTextUI0aB17PresentationEventV5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25463D784(uint64_t a1, unsigned int a2)
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

uint64_t sub_25463D7DC(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_25463D82C(void *result, int a2)
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

uint64_t get_enum_tag_for_layout_string_11HoverTextUI0aB17PresentationEventV0E4TypeO(uint64_t a1)
{
  v1 = *(a1 + 64) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
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

uint64_t sub_25463D8A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 65))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 64) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 64) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25463D8FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_25463D97C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 64) = *(result + 64) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = -64;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HoverTextPresentationEvent.ValueChangeEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverTextPresentationEvent.ValueChangeEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25463DB1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25463DB64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_25463DBAC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_25463DC10()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = **v0;
  v4 = v2[18];
  if (v4(v3, v2))
  {
    if (v4(v3, v2) == 1)
    {
      v5 = *(*v1 + 128);
      v6 = v5();
      (v5)(v6);
      CGRectMake();
    }
  }

  else
  {
    (*(*v1 + 128))();
    CGRectMake();
  }
}

double sub_25463DD58(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v44 = CGRectUnion(*&a1, *&a5);
  x = v44.origin.x;
  v43 = a8;
  width = v44.size.width;
  y = v44.origin.y;
  v35 = a7;
  rect = v44.size.height;
  v33 = a5;
  v34 = a6;
  v44.origin.x = a5;
  v44.origin.y = a6;
  v44.size.width = a7;
  v44.size.height = a8;
  MinX = CGRectGetMinX(v44);
  v39 = a1;
  v40 = a2;
  v45.origin.x = a1;
  v45.origin.y = a2;
  v17 = a3;
  v45.size.width = a3;
  v18 = a4;
  v45.size.height = a4;
  if (MinX >= CGRectGetMinX(v45))
  {
    v26 = v33;
    v25 = v34;
    v48.origin.x = v33;
    v48.origin.y = v34;
    v24 = v35;
    v48.size.width = v35;
    v48.size.height = v43;
    MaxX = CGRectGetMaxX(v48);
    v49.origin.x = v39;
    v20 = v40;
    v49.origin.y = v40;
    v21 = v17;
    v22 = v39;
    v49.size.width = v21;
    v49.size.height = v18;
    v28 = CGRectGetMaxX(v49);
    v23 = 0.0;
    if (v28 < MaxX)
    {
      v50.origin.x = v33;
      v50.origin.y = v34;
      v50.size.width = v35;
      v50.size.height = v43;
      v29 = CGRectGetMaxX(v50);
      v51.origin.x = v39;
      v51.origin.y = v40;
      v51.size.width = v21;
      v51.size.height = v18;
      v23 = v29 - CGRectGetMaxX(v51);
    }
  }

  else
  {
    v46.origin.x = x;
    v46.size.width = width;
    v46.origin.y = y;
    v46.size.height = rect;
    v19 = CGRectGetMinX(v46);
    v47.origin.x = a1;
    v20 = v40;
    v47.origin.y = v40;
    v21 = v17;
    v22 = a1;
    v47.size.width = v21;
    v47.size.height = v18;
    v23 = v19 - CGRectGetMinX(v47);
    v25 = a6;
    v24 = v35;
    v26 = v33;
  }

  v41 = v23;
  v52.origin.x = v26;
  v52.origin.y = v25;
  v52.size.width = v24;
  v52.size.height = v43;
  MinY = CGRectGetMinY(v52);
  v53.origin.x = v22;
  v53.origin.y = v20;
  v53.size.width = v21;
  v53.size.height = v18;
  if (MinY >= CGRectGetMinY(v53))
  {
    v56.origin.x = v26;
    v56.origin.y = v25;
    v56.size.width = v24;
    v56.size.height = v43;
    MaxY = CGRectGetMaxY(v56);
    v57.origin.x = v22;
    v57.origin.y = v20;
    v57.size.width = v21;
    v57.size.height = v18;
    if (CGRectGetMaxY(v57) < MaxY)
    {
      v58.origin.x = v26;
      v58.origin.y = v25;
      v58.size.width = v24;
      v58.size.height = v43;
      CGRectGetMaxY(v58);
      v59.origin.x = v22;
      v59.origin.y = v20;
      v59.size.width = v21;
      v59.size.height = v18;
      CGRectGetMaxY(v59);
    }
  }

  else
  {
    v54.origin.x = x;
    v54.size.width = width;
    v54.origin.y = y;
    v54.size.height = rect;
    CGRectGetMinY(v54);
    v55.origin.x = v22;
    v55.origin.y = v20;
    v55.size.width = v21;
    v55.size.height = v18;
    CGRectGetMinY(v55);
  }

  return v41;
}

double sub_25463DF90(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_25463E004(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25467F8A0();
  return sub_2546358B8;
}

unint64_t sub_25463E090()
{
  result = qword_27F60BCB8;
  if (!qword_27F60BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BCB8);
  }

  return result;
}

uint64_t sub_25463E0E4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BBC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v82 - v11;
  v13 = sub_25467FA00();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2546351B0(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_254635A34(v12);
  }

  v91 = v14;
  v18 = *(v14 + 32);
  v93 = v13;
  v19 = v18(v16, v12, v13);
  if (a2)
  {
    v20 = 10.0;
  }

  else
  {
    v20 = *&a1;
  }

  if (a4)
  {
    v21 = 10.0;
  }

  else
  {
    v21 = *&a3;
  }

  v22 = *v4;
  v23 = *(v4 + 8);
  v24 = **v4;
  v25 = *(v24 + 152);
  v26 = (v25)(v19);
  v28 = v27;
  v87 = v25;
  v29 = (v25)(v26);
  sub_25463E8C8(v4, &v101);
  v30 = UIEdgeInsetsInsetRect(v28, v29, v20, v21, 10.0, 10.0);
  v98 = v31;
  v99 = v30;
  v33 = v32;
  v35 = v34;
  type metadata accessor for HoverTypingStore();
  if (!swift_dynamicCastClass())
  {
    v101 = v22;
    v36 = *(v23 + 144);
    if (v36(v24, v23))
    {
      v101 = v22;
      v36(v24, v23);
    }
  }

  v97 = v33;
  v94 = v35;
  LOBYTE(v101) = 0;
  v100 = 0;
  sub_25467F9E0();
  v38 = v37;
  v40 = v39;
  sub_25463DC10();
  v45 = UIEdgeInsetsInsetRect(v41, v42, v43, v44, -15.0, -15.0);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  if (*(v4 + 64))
  {
    sub_254680300();
  }

  else
  {
    v52 = *(v4 + 48);
    v53 = *(v4 + 56);
  }

  v54 = v93;
  v89 = v49;
  v55 = v45 + v49 * v52;
  v56 = 1.0 - v52;
  v57 = v55 - v38 * (1.0 - v52);
  v96 = 1.0 - v53;
  v95 = v47 + v51 * v53;
  v88 = v40 * (1.0 - v53);
  v92 = v51;
  v58 = v95 - v88;
  v102.origin.y = v98;
  v102.origin.x = v99;
  v102.size.width = v97;
  v90 = v47;
  v59 = v94;
  v102.size.height = v94;
  v109.origin.x = v57;
  v109.origin.y = v95 - v88;
  v109.size.width = v38;
  v109.size.height = v40;
  v60 = CGRectContainsRect(v102, v109);
  v61 = v91;
  if (!v60)
  {
    v62 = sub_25463DD58(v99, v98, v97, v59, v57, v58, v38, v40);
    v83 = v63;
    v64 = -v62;
    v103.origin.x = v57;
    v103.origin.y = v58;
    v103.size.width = v38;
    v103.size.height = v40;
    v104 = CGRectOffset(v103, v64, 0.0);
    v110.origin.x = v45;
    v110.origin.y = v90;
    v65 = v89;
    v110.size.width = v89;
    v110.size.height = v92;
    v66 = CGRectIntersectsRect(v104, v110);
    v84 = v45;
    v67 = v45 + v65 * v56;
    if (v66)
    {
      v56 = 1.0 - v56;
      v55 = v67;
    }

    v57 = v55 - v38 * v56;
    v105.origin.y = v98;
    v105.origin.x = v99;
    v105.size.width = v97;
    v105.size.height = v59;
    v111.origin.x = v57;
    v111.origin.y = v58;
    v111.size.width = v38;
    v111.size.height = v40;
    v68 = CGRectContainsRect(v105, v111);
    v82 = v38 * v56;
    if (!v68)
    {
      v55 = v55 - sub_25463DD58(v99, v98, v97, v59, v55 - v38 * v56, v58, v38, v40);
      v57 = v55 - v38 * v56;
      v95 = v95 + 0.0;
      v58 = v95 - v88;
    }

    v69 = v96;
    v106.origin.x = v57;
    v106.origin.y = v58;
    v106.size.width = v38;
    v106.size.height = v40;
    v107 = CGRectOffset(v106, 0.0, -v83);
    v112.origin.x = v84;
    v70 = v90;
    v112.origin.y = v90;
    v112.size.width = v89;
    v112.size.height = v92;
    v71 = CGRectIntersectsRect(v107, v112);
    v86 = v56;
    v85 = v55;
    if (v71)
    {
      if (swift_dynamicCastClass())
      {
        v87();
      }

      else
      {
        v72 = v70 + v92 * v69;
      }

      v96 = 1.0 - v69;
      v88 = v40 * (1.0 - v69);
      v95 = v72;
      v73 = v72 - v88;
    }

    else
    {
      v73 = v58;
    }

    v74 = v98;
    v75 = v99;
    v108.origin.x = v99;
    v108.origin.y = v98;
    v76 = v97;
    v108.size.width = v97;
    v77 = v94;
    v108.size.height = v94;
    v113.origin.x = v57;
    v113.origin.y = v73;
    v113.size.width = v38;
    v113.size.height = v40;
    if (CGRectContainsRect(v108, v113))
    {
      v58 = v73;
    }

    else
    {
      sub_25463DD58(v75, v74, v76, v77, v57, v73, v38, v40);
      v57 = v85 + 0.0 - v82;
      v58 = v95 - v78 - v88;
    }
  }

  v79 = swift_dynamicCastClass();
  if (v79)
  {
    v80 = v79;
    v114.origin.x = v57;
    v114.origin.y = v58;
    v114.size.width = v38;
    v114.size.height = v40;
    if (!CGRectEqualToRect(*(v79 + 152), v114))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v82 - 6) = v80;
      *(&v82 - 5) = v57;
      *(&v82 - 4) = v58;
      *(&v82 - 3) = v38;
      *(&v82 - 2) = v40;
      v101 = v80;
      sub_254631FE4();
      sub_25467F770();

      sub_25463E900(v5);
      v54 = v93;
      goto LABEL_35;
    }

    v80[19] = v57;
    v80[20] = v58;
    v80[21] = v38;
    v80[22] = v40;
  }

  sub_25463E900(v5);
LABEL_35:
  LOBYTE(v101) = 0;
  v100 = 0;
  sub_25467F9F0();
  return (*(v61 + 8))(v16, v54);
}

uint64_t sub_25463E970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v27 = sub_25467FCE0();
  MEMORY[0x28223BE20](v27);
  v28 = sub_25467F930();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B748);
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B750);
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BCC0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  *v16 = sub_25467FBF0();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BCC8);
  sub_25463EF24(a1, &v16[*(v17 + 44)]);
  v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BCD0) + 36)] = 0;
  swift_getKeyPath();
  *&v34 = a1;
  sub_25463F200(&qword_27F60B9E0, type metadata accessor for HoverTypingStore);
  sub_25467F780();

  CGRectGetHeight(*(a1 + 152));
  sub_254680250();
  sub_25467F990();
  v18 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BCD8) + 36)];
  v19 = v35;
  *v18 = v34;
  *(v18 + 1) = v19;
  *(v18 + 2) = v36;
  sub_2546615AC();
  v20 = &v16[*(v14 + 36)];
  *v20 = v21;
  *(v20 + 1) = 0;
  sub_25467FD10();
  sub_25467F900();
  sub_25463F200(&qword_27F60B780, MEMORY[0x277CDD730]);
  sub_25463F200(&qword_27F60B788, MEMORY[0x277CDD708]);

  v22 = v28;
  sub_254680210();

  (*(v3 + 8))(v5, v22);
  sub_25462C9F0(&qword_27F60B790, &qword_27F60B748);

  v23 = v29;
  sub_254680200();

  (*(v30 + 8))(v9, v23);
  sub_25467F940();
  sub_25463F24C();
  sub_25462C9F0(&qword_27F60B910, &qword_27F60B750);
  v24 = v31;
  sub_25467FF50();
  (*(v32 + 8))(v13, v24);
  return sub_254626CC4(v16, &qword_27F60BCC0);
}

uint64_t sub_25463EF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD18);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_25467FC20();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  swift_getKeyPath();
  *&v20 = a1;
  sub_25463F200(&qword_27F60B9E0, type metadata accessor for HoverTypingStore);
  sub_25467F780();

  v13 = *(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont);
  CTFontGetAscent(v13);
  CTFontGetDescent(v13);
  CTFontGetLeading(v13);

  sub_254680250();
  sub_25467F990();
  v14 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD20) + 36)];
  v15 = v21;
  *v14 = v20;
  *(v14 + 1) = v15;
  *(v14 + 2) = v22;
  swift_getKeyPath();
  v19[1] = a1;
  sub_25467F780();

  *&v10[*(v5 + 44)] = *(a1 + 104);
  sub_25463F448(v10, v8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD28);
  sub_25463F448(v8, a2 + *(v16 + 48));
  v17 = a2 + *(v16 + 64);
  *v17 = 0;
  *(v17 + 8) = 1;

  sub_254626CC4(v10, &qword_27F60BD18);
  return sub_254626CC4(v8, &qword_27F60BD18);
}

uint64_t sub_25463F200(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25463F24C()
{
  result = qword_27F60BCE0;
  if (!qword_27F60BCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BCC0);
    sub_25463F2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BCE0);
  }

  return result;
}

unint64_t sub_25463F2D8()
{
  result = qword_27F60BCE8;
  if (!qword_27F60BCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BCD8);
    sub_25463F364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BCE8);
  }

  return result;
}

unint64_t sub_25463F364()
{
  result = qword_27F60BCF0;
  if (!qword_27F60BCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BCD0);
    sub_25462C9F0(&qword_27F60BCF8, &qword_27F60BD00);
    sub_25462C9F0(&qword_27F60BD08, &qword_27F60BD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BCF0);
  }

  return result;
}

uint64_t sub_25463F448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25463F4B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v27 - v3;
  v5 = sub_254680760();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD48);
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x28223BE20](v8);
  v37 = v27 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD50);
  v12 = *(v11 - 8);
  v35 = v11;
  v36 = v12;
  MEMORY[0x28223BE20](v11);
  v30 = v27 - v13;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v14 = *(MEMORY[0x277D768C8] + 16);
  *(v0 + 32) = *MEMORY[0x277D768C8];
  *(v0 + 48) = v14;
  *(v0 + 64) = 1;
  *(v0 + 72) = sub_25464558C(MEMORY[0x277D84F90]);
  *(v0 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD58);
  swift_allocObject();
  v15 = sub_25467F860();
  *(v0 + 88) = v15;
  v39 = v15;

  sub_254680750();
  sub_25462C168();
  v16 = sub_254680780();
  v38 = v16;
  v17 = sub_254680740();
  v18 = *(v17 - 8);
  v28 = *(v18 + 56);
  v29 = v18 + 56;
  v28(v4, 1, 1, v17);
  sub_25462C9F0(&qword_27F60BD60, &qword_27F60BD58);
  v27[1] = sub_254640918();
  sub_25467F880();
  v19 = v4;
  sub_254626CC4(v4, &qword_27F60BD40);

  (*(v31 + 8))(v7, v32);

  v20 = sub_254680780();
  v39 = v20;
  v28(v19, 1, 1, v17);
  sub_25462C9F0(&qword_27F60BD70, &qword_27F60BD48);
  v21 = v30;
  v22 = v33;
  v23 = v37;
  sub_25467F870();
  sub_254626CC4(v19, &qword_27F60BD40);

  (*(v34 + 8))(v23, v22);
  swift_allocObject();
  swift_weakInit();
  sub_25462C9F0(&qword_27F60BD78, &qword_27F60BD50);
  v24 = v35;
  v25 = sub_25467F890();

  (*(v36 + 8))(v21, v24);
  *(v1 + 80) = v25;

  return v1;
}

void sub_25463F9BC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25467F840();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v14)
  {
    v15 = v14;
    if (a1)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = a2;
      *(v16 + 24) = a3;
      v17 = a1;
      swift_beginAccess();
      v18 = v17;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v3[9];
      v3[9] = 0x8000000000000000;
      sub_25467E378(sub_254640510, v16, v18, isUniquelyReferenced_nonNull_native);

      v3[9] = v28;
      swift_endAccess();
      CFNotificationCenterAddObserver(v15, v3, sub_2546402E0, v18, 0, HTSuspensionBehavior);
    }

    else
    {
      v24 = sub_25467F810();
      swift_beginAccess();
      (*(v8 + 16))(v13, v24, v7);
      v25 = sub_25467F830();
      v26 = sub_254680710();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_254615000, v25, v26, "Notification name nil", v27, 2u);
        MEMORY[0x259C155A0](v27, -1, -1);
      }

      else
      {
      }

      (*(v8 + 8))(v13, v7);
    }
  }

  else
  {
    v20 = sub_25467F810();
    swift_beginAccess();
    (*(v8 + 16))(v11, v20, v7);
    v21 = sub_25467F830();
    v22 = sub_254680710();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_254615000, v21, v22, "Darwin Center unavailable", v23, 2u);
      MEMORY[0x259C155A0](v23, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }
}

__n128 sub_25463FD30(uint64_t a1, uint64_t a2, __n128 result, double a4)
{
  *(v4 + 16) = result.n128_u64[0];
  *(v4 + 24) = a4;
  *(v4 + 64) = a1;
  if ((*(a2 + 32) & 1) == 0)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v4 + 32) = *a2;
    *(v4 + 48) = v5;
  }

  return result;
}

uint64_t sub_25463FD4C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v9[0] = Strong, type metadata accessor for HoverStoreCommon(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD88), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v7 + 1))
    {
      sub_254640978(&v6, v9);
      v3 = v10;
      v4 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v4 + 296))(v1, v3, v4);
      return __swift_destroy_boxed_opaque_existential_0(v9);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_254626CC4(&v6, &qword_27F60BD80);
}

void sub_25463FE54()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    v3 = v0[9];
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      CFNotificationCenterRemoveObserver(v2, v0, *(*(v3 + 48) + ((v9 << 9) | (8 * v10))), 0);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_25463FF6C()
{
  sub_25463FE54();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for HoverStoreCommon.Feature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverStoreCommon.Feature(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HoverStoreCommon.StyleItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverStoreCommon.StyleItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25464028C()
{
  result = qword_27F60BD30;
  if (!qword_27F60BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BD30);
  }

  return result;
}

void sub_2546402E0(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_25464053C(a2, a3);
}

unint64_t sub_25464037C()
{
  result = qword_27F60BD38;
  if (!qword_27F60BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BD38);
  }

  return result;
}

uint64_t sub_2546403EC(unsigned __int8 a1)
{
  if (a1 <= 0xCu)
  {
    if (a1 - 10 < 3 || a1 - 3 < 2)
    {

      return sub_254680060();
    }

    if (a1 == 5)
    {
LABEL_14:
      v3 = [objc_opt_self() systemBackgroundColor];
      sub_25467FFA0();
      v4 = [objc_opt_self() sharedInstance];
      [v4 hoverTextBackgroundOpacity];

      v5 = sub_254680050();

      return v5;
    }

    goto LABEL_18;
  }

  switch(a1)
  {
    case 0xDu:
      goto LABEL_14;
    case 0x10u:

      return sub_25467FFD0();
    case 0x11u:

      return sub_25467FFE0();
    default:
LABEL_18:

      return MEMORY[0x282133480]();
  }
}

uint64_t sub_25464053C(uint64_t a1, void *a2)
{
  v4 = sub_25467F840();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v33 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v33 - v12;
  if (a1)
  {
    if (a2)
    {

      swift_beginAccess();
      v14 = *(a1 + 72);
      v15 = *(v14 + 16);
      v16 = a2;
      if (v15)
      {

        v17 = sub_25467D0C0(v16);
        if (v18)
        {
          v19 = *(*(v14 + 56) + 16 * v17);

          v33[0] = a1;
          v19(v33);
        }
      }

      v29 = sub_25467F810();
      swift_beginAccess();
      (*(v5 + 16))(v8, v29, v4);
      v30 = sub_25467F830();
      v31 = sub_254680710();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_254615000, v30, v31, "No handler found ", v32, 2u);
        MEMORY[0x259C155A0](v32, -1, -1);
      }

      else
      {
      }

      return (*(v5 + 8))(v8, v4);
    }

    else
    {
      v25 = sub_25467F810();
      swift_beginAccess();
      (*(v5 + 16))(v11, v25, v4);
      v26 = sub_25467F830();
      v27 = sub_254680710();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_254615000, v26, v27, "cfNotificationName for darwin callback handler not found", v28, 2u);
        MEMORY[0x259C155A0](v28, -1, -1);
      }

      return (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    v21 = sub_25467F810();
    swift_beginAccess();
    (*(v5 + 16))(v13, v21, v4);
    v22 = sub_25467F830();
    v23 = sub_254680710();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_254615000, v22, v23, "Observer for darwin callback handler not found", v24, 2u);
      MEMORY[0x259C155A0](v24, -1, -1);
    }

    return (*(v5 + 8))(v13, v4);
  }
}

unint64_t sub_254640918()
{
  result = qword_27F60BD68;
  if (!qword_27F60BD68)
  {
    sub_25462C168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BD68);
  }

  return result;
}

uint64_t sub_254640978(__int128 *a1, uint64_t a2)
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

uint64_t sub_2546409D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v5 = a3 & 1;
  *(a5 + 16) = v5;
  *(a5 + 24) = a4;
  sub_254643DEC(a1, a2, v5);
}

double HoverTextMarqueeingContentView.init(delay:rate:multiplier:startingPosition:marqueeBegan:marqueeCompleted:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>)
{
  *a8 = 0x4028000000000000;
  v22 = type metadata accessor for HoverTextMarqueeingContentView();
  v23 = v22[16];
  *(a8 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B418);
  swift_storeEnumTagMultiPayload();
  v24 = (a8 + v22[17]);
  v25 = property wrapper backing initializer of HoverTextMarqueeingContentView.contentSize();
  *v24 = v26;
  v24[1] = v27;
  v24[2] = v25;
  v28 = (a8 + v22[18]);
  sub_254680120();
  *v28 = v31;
  v29 = v22[19];
  sub_254680120();
  result = *&v31;
  *(a8 + v29) = v31;
  *(a8 + 8) = a9;
  *(a8 + 16) = a10;
  *(a8 + 24) = a11;
  *(a8 + 72) = a6;
  *(a8 + 80) = a7;
  *(a8 + 32) = a1;
  *(a8 + 40) = a2;
  *(a8 + 48) = a3;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  return result;
}

double sub_254640B90()
{
  v0 = sub_25467FBE0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  sub_25467FBD0();
  sub_25467FB40();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v6, v0);
  sub_25467FBD0();
  sub_25467FB40();
  v11 = v10;
  v9(v4, v0);
  return v8 + v11;
}

uint64_t sub_254640CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25467FBE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B418);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_25462CC8C(v2 + *(a1 + 64), &v15 - v10, &qword_27F60B418);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_25467FAB0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_254680700();
    v14 = sub_25467FD50();
    sub_25467F820();

    sub_25467FBD0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_254640EDC(uint64_t a1)
{
  v2 = sub_25467FAB0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25467FB80();
}

uint64_t property wrapper backing initializer of HoverTextMarqueeingContentView.contentSize()
{
  type metadata accessor for CGSize(0);
  sub_254680120();
  return v1;
}

double sub_254641058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B800);
  sub_254680130();
  return v1;
}

uint64_t HoverTextMarqueeingContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD90);
  v3 = MEMORY[0x28223BE20](v59);
  v58 = &v45 - v4;
  v5 = *(a1 - 8);
  v65 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(a1 + 16);
  sub_25467FAE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BD98);
  v8 = sub_25467FAE0();
  type metadata accessor for CGSize(255);
  v10 = v9;
  v63 = *(a1 + 24);
  v80 = v63;
  v81 = MEMORY[0x277CDFC48];
  v11 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v13 = sub_25462C9F0(&qword_27F60BDA0, &qword_27F60BD98);
  v78 = WitnessTable;
  v79 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_254644268(&qword_27F60BDA8, type metadata accessor for CGSize);
  v74 = v8;
  v75 = v10;
  v76 = v14;
  v77 = v15;
  v16 = v15;
  v57 = v15;
  swift_getOpaqueTypeMetadata2();
  v17 = sub_25467FAE0();
  v74 = v8;
  v75 = v10;
  v76 = v14;
  v77 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = MEMORY[0x277CDF748];
  v55 = v11;
  v18 = swift_getWitnessTable();
  v74 = v17;
  v75 = MEMORY[0x277D83B88];
  v76 = v18;
  v77 = MEMORY[0x277D83B98];
  sub_254680170();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BDB0);
  sub_25467FAE0();
  v19 = swift_getWitnessTable();
  v20 = sub_25462C9F0(&qword_27F60BDB8, &qword_27F60BDB0);
  v70 = v19;
  v71 = v20;
  v47 = swift_getWitnessTable();
  v49 = sub_25467FA60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BDC0);
  v51 = sub_25467FAE0();
  v54 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v61 = &v45 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BDC8);
  v53 = sub_25467FAE0();
  v56 = *(v53 - 8);
  v22 = MEMORY[0x28223BE20](v53);
  v50 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v52 = &v45 - v24;
  v48 = *(v5 + 16);
  v45 = v7;
  v48(v7, v62, a1);
  v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v26 = swift_allocObject();
  v27 = v63;
  *(v26 + 16) = v64;
  *(v26 + 24) = v27;
  v46 = *(v5 + 32);
  v46(v26 + v25, v7, a1);
  v74 = sub_25467FA50();
  v75 = v28;
  v29 = v58;
  sub_254642A80(v58);
  v30 = swift_getWitnessTable();
  sub_254642D68();
  sub_25467FF30();
  sub_254626CC4(v29, &qword_27F60BD90);

  v31 = v45;
  v48(v45, v62, a1);
  v32 = swift_allocObject();
  v33 = v63;
  *(v32 + 16) = v64;
  *(v32 + 24) = v33;
  v46(v32 + v25, v31, a1);
  v34 = sub_25462C9F0(&qword_27F60BE08, &qword_27F60BDC0);
  v68 = v30;
  v69 = v34;
  v35 = v51;
  v36 = swift_getWitnessTable();
  sub_254642FE8();
  v37 = v50;
  v38 = v61;
  sub_25467FF00();

  (*(v54 + 8))(v38, v35);
  v39 = sub_25462C9F0(&qword_27F60BE18, &qword_27F60BDC8);
  v66 = v36;
  v67 = v39;
  v40 = v53;
  v41 = swift_getWitnessTable();
  v42 = v52;
  sub_254646298(v37, v40, v41);
  v43 = *(v56 + 8);
  v43(v37, v40);
  sub_254646298(v42, v40, v41);
  return (v43)(v42, v40);
}

uint64_t sub_2546418FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v119 = a2;
  v114 = a1;
  v110 = a5;
  v106 = type metadata accessor for HoverTextMarqueeingContentView();
  v108 = *(v106 - 8);
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v106);
  v116 = &v78 - v7;
  v113 = sub_25467F9C0();
  v118 = *(v113 - 8);
  v117 = *(v118 + 64);
  v8 = MEMORY[0x28223BE20](v113);
  v94 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(a3 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25467FAE0();
  v99 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = &v78 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BD98);
  v82 = v12;
  v14 = sub_25467FAE0();
  v105 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v115 = &v78 - v15;
  type metadata accessor for CGSize(255);
  v17 = v16;
  v130 = a4;
  v131 = MEMORY[0x277CDFC48];
  v112 = a4;
  v18 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v81 = WitnessTable;
  v20 = sub_25462C9F0(&qword_27F60BDA0, &qword_27F60BD98);
  v128 = WitnessTable;
  v129 = v20;
  v107 = v18;
  v21 = swift_getWitnessTable();
  v22 = sub_254644268(&qword_27F60BDA8, type metadata accessor for CGSize);
  *&v125 = v14;
  *(&v125 + 1) = v17;
  v83 = v14;
  v86 = v17;
  v126 = v21;
  v127 = v22;
  v85 = v21;
  v84 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v98 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v89 = &v78 - v23;
  v24 = sub_25467FAE0();
  v100 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v90 = &v78 - v25;
  *&v125 = v14;
  *(&v125 + 1) = v17;
  v126 = v21;
  v127 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v123 = OpaqueTypeConformance2;
  v124 = MEMORY[0x277CDF748];
  v93 = v24;
  v92 = swift_getWitnessTable();
  *&v125 = v24;
  *(&v125 + 1) = MEMORY[0x277D83B88];
  v126 = v92;
  v127 = MEMORY[0x277D83B98];
  v97 = sub_254680170();
  v103 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v87 = &v78 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BDB0);
  v102 = sub_25467FAE0();
  v104 = *(v102 - 8);
  v27 = MEMORY[0x28223BE20](v102);
  v96 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v101 = &v78 - v30;
  (*(v119 + 72))(v29);
  v31 = v80;
  v111 = a3;
  sub_25467FF90();
  (*(v91 + 8))(v11, a3);
  sub_254680160();
  v32 = v118;
  v91 = *(v118 + 16);
  v33 = v94;
  v34 = v113;
  (v91)(v94, v114, v113);
  v35 = *(v32 + 80);
  v36 = swift_allocObject();
  v37 = *(v32 + 32);
  v118 = v32 + 32;
  v79 = v37;
  v37(v36 + ((v35 + 16) & ~v35), v33, v34);
  type metadata accessor for CGRect(0);
  sub_254642FE8();
  v38 = v82;
  sub_25467FEE0();

  (*(v99 + 1))(v31, v38);
  v39 = v106;
  v40 = v119;
  v41 = (v119 + *(v106 + 68));
  v42 = *(v41 + 2);
  v125 = *v41;
  v126 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B800);
  sub_254680130();
  v125 = v122;
  v43 = v108;
  v44 = *(v108 + 16);
  v82 = v108 + 16;
  v99 = v44;
  v45 = v116;
  v44(v116, v40, v39);
  v46 = v114;
  v47 = v113;
  (v91)(v33, v114, v113);
  v48 = *(v43 + 80);
  v49 = (v48 + 32) & ~v48;
  v109 += v49;
  v91 = v48 | 7;
  v50 = (v109 + v35) & ~v35;
  v51 = swift_allocObject();
  v52 = v112;
  *(v51 + 16) = v111;
  *(v51 + 24) = v52;
  v117 = *(v43 + 32);
  v53 = v39;
  v117(v51 + v49, v45, v39);
  v79(v51 + v50, v33, v47);
  v54 = v89;
  v55 = v83;
  v56 = v115;
  sub_25467FF70();

  (*(v105 + 8))(v56, v55);
  v57 = v119;
  sub_254642814(v46, v53);
  v58 = v90;
  v59 = OpaqueTypeMetadata2;
  sub_25467FF40();
  (*(v98 + 8))(v54, v59);
  v60 = v57;
  v125 = *(v57 + *(v53 + 76));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEE8);
  sub_254680130();
  v61 = v87;
  v62 = v93;
  sub_25467FF20();
  (*(v100 + 8))(v58, v62);
  v63 = (v60 + *(v53 + 72));
  v64 = *v63;
  v65 = v63[1];
  *&v125 = v64;
  *(&v125 + 1) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEF0);
  sub_254680130();
  v66 = v116;
  v99(v116, v60, v53);
  v67 = swift_allocObject();
  v68 = v112;
  *(v67 + 16) = v111;
  *(v67 + 24) = v68;
  v117(v67 + v49, v66, v53);
  v69 = v97;
  v70 = swift_getWitnessTable();
  sub_254644150();
  v71 = v96;
  View.onAnimationCompletion<A>(for:completion:)(&v122, sub_2546440E0, v67, v69, MEMORY[0x277D85048], v70, v96);

  (*(v103 + 8))(v61, v69);
  v72 = sub_25462C9F0(&qword_27F60BDB8, &qword_27F60BDB0);
  v120 = v70;
  v121 = v72;
  v73 = v102;
  v74 = swift_getWitnessTable();
  v75 = v101;
  sub_254646298(v71, v73, v74);
  v76 = *(v104 + 8);
  v76(v71, v73);
  sub_254646298(v75, v73, v74);
  return (v76)(v75, v73);
}

uint64_t sub_25464265C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for HoverTextMarqueeingContentView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_2546418FC(a1, v8, v5, v6, a2);
}

void sub_2546426F8(uint64_t a1, uint64_t a2)
{
  sub_25464396C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEF0);
  sub_254680140();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEE8);
  sub_254680130();
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_254680140();

    sub_254643344(a1, a2);
  }
}

void sub_254642814(uint64_t a1, uint64_t a2)
{
  v4 = sub_25467FAB0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = sub_254641058();
  sub_25467F9A0();
  if (v12 + sub_254640B90() <= v11)
  {
    v13 = (v2 + *(a2 + 72));
    v14 = *v13;
    v15 = v13[1];
    v18[2] = v14;
    v18[3] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEF0);
    sub_254680130();
    if (v18[1] == 0.0)
    {
      sub_254640CB4(a2, v10);
      (*(v5 + 104))(v8, *MEMORY[0x277CDFA88], v4);
      v16 = sub_25467FAA0();
      v17 = *(v5 + 8);
      v17(v8, v4);
      v17(v10, v4);
      if ((v16 & 1) == 0)
      {
        sub_25467F9A0();
      }
    }

    else
    {
      sub_254641058();
      sub_25467F9A0();
    }
  }

  else
  {
    sub_25467FC60();
    if (sub_25467FC50() & 1) != 0 || (sub_25467FC70(), (sub_25467FC50()))
    {
      sub_25467F9A0();
      sub_254641058();
    }
  }
}

double sub_254642A80@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_25467FBF0();
  v38 = 0;
  sub_254643080(&v25);
  v47 = v33;
  v48 = v34;
  v49 = v35;
  v43 = v29;
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v51[8] = v33;
  v51[9] = v34;
  v51[10] = v35;
  v51[4] = v29;
  v51[5] = v30;
  v51[6] = v31;
  v51[7] = v32;
  v51[0] = v25;
  v51[1] = v26;
  v50 = v36;
  v52 = v36;
  v51[2] = v27;
  v51[3] = v28;
  sub_25462CC8C(&v39, v24, &qword_27F60BED8);
  sub_254626CC4(v51, &qword_27F60BED8);
  *(&v37[8] + 7) = v47;
  *(&v37[9] + 7) = v48;
  *(&v37[10] + 7) = v49;
  *(&v37[4] + 7) = v43;
  *(&v37[5] + 7) = v44;
  *(&v37[6] + 7) = v45;
  *(&v37[7] + 7) = v46;
  *(v37 + 7) = v39;
  *(&v37[1] + 7) = v40;
  *(&v37[2] + 7) = v41;
  *(&v37[11] + 7) = v50;
  *(&v37[3] + 7) = v42;
  v3 = v38;
  v4 = sub_25467FD60();
  sub_25467F8D0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v24[0] = 0;
  KeyPath = swift_getKeyPath();
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD90) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BE00) + 28);
  v16 = *MEMORY[0x277CDFA88];
  v17 = sub_25467FAB0();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = KeyPath;
  v18 = v37[9];
  *(a1 + 145) = v37[8];
  *(a1 + 161) = v18;
  *(a1 + 177) = v37[10];
  *(a1 + 192) = *(&v37[10] + 15);
  v19 = v37[5];
  *(a1 + 81) = v37[4];
  *(a1 + 97) = v19;
  v20 = v37[7];
  *(a1 + 113) = v37[6];
  *(a1 + 129) = v20;
  v21 = v37[1];
  *(a1 + 17) = v37[0];
  *(a1 + 33) = v21;
  result = *&v37[2];
  v23 = v37[3];
  *(a1 + 49) = v37[2];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 65) = v23;
  *(a1 + 208) = v4;
  *(a1 + 209) = v25;
  *(a1 + 212) = *(&v25 + 3);
  *(a1 + 216) = v6;
  *(a1 + 224) = v8;
  *(a1 + 232) = v10;
  *(a1 + 240) = v12;
  *(a1 + 248) = 0;
  return result;
}

unint64_t sub_254642D68()
{
  result = qword_27F60BDD0;
  if (!qword_27F60BDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BD90);
    sub_254642E20();
    sub_25462C9F0(&qword_27F60BDF8, &qword_27F60BE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BDD0);
  }

  return result;
}

unint64_t sub_254642E20()
{
  result = qword_27F60BDD8;
  if (!qword_27F60BDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BDE0);
    sub_25462C9F0(&qword_27F60BDE8, &qword_27F60BDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BDD8);
  }

  return result;
}

uint64_t sub_254642ED8()
{
  type metadata accessor for HoverTextMarqueeingContentView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B800);
  return sub_254680140();
}

uint64_t sub_254642F5C()
{
  type metadata accessor for HoverTextMarqueeingContentView();

  return sub_254642ED8();
}

unint64_t sub_254642FE8()
{
  result = qword_27F60BE10;
  if (!qword_27F60BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BE10);
  }

  return result;
}

uint64_t sub_254643080@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BAF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_254681DC0;
  *(v2 + 32) = sub_254680030();
  *(v2 + 40) = sub_254680020();
  MEMORY[0x259C140A0](v2);
  sub_254680320();
  sub_254680330();
  sub_25467FA80();
  sub_254680250();
  sub_25467F990();
  v3 = sub_254680020();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_254681DC0;
  *(v4 + 32) = sub_254680020();
  *(v4 + 40) = sub_254680030();
  MEMORY[0x259C140A0](v4);
  sub_254680320();
  sub_254680330();
  sub_25467FA80();
  sub_254680250();
  sub_25467F990();
  v18[2] = v14;
  v18[3] = v15;
  v18[4] = v16;
  v18[0] = v12;
  v18[1] = v13;
  v20[2] = v8;
  v20[3] = v9;
  v20[4] = v10;
  v20[0] = v6;
  v20[1] = v7;
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 48) = v15;
  *(a1 + 64) = v16;
  *(a1 + 32) = v14;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  v19 = v17;
  v21 = v11;
  *(a1 + 80) = v17;
  *(a1 + 88) = v3;
  *(a1 + 176) = v11;
  v22[0] = v6;
  v22[1] = v7;
  v23 = v11;
  v22[3] = v9;
  v22[4] = v10;
  v22[2] = v8;
  sub_25462CC8C(v18, v24, &qword_27F60BEE0);

  sub_25462CC8C(v20, v24, &qword_27F60BEE0);
  sub_254626CC4(v22, &qword_27F60BEE0);

  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v25 = v17;
  v24[0] = v12;
  v24[1] = v13;
  return sub_254626CC4(v24, &qword_27F60BEE0);
}

void sub_254643344(uint64_t a1, uint64_t a2)
{
  v4 = sub_254680380();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2546803B0();
  v35 = *(v37 - 8);
  v6 = MEMORY[0x28223BE20](v37);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2546803D0();
  v33 = *(v39 - 8);
  v11 = MEMORY[0x28223BE20](v39);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = sub_254641058();
  sub_25467F9A0();
  v32 = *(a2 + 16);
  if (v17 + sub_254640B90() <= v16)
  {
    sub_25467F9A0();
    sub_254641058();
    sub_2546802A0();
    sub_254680280();
    v31 = v4;

    v18 = sub_254680290();
    v29 = v15;
    v19 = v18;

    sub_25462C168();
    v30 = sub_254680780();
    sub_2546803C0();
    sub_2546803E0();
    v33 = *(v33 + 8);
    (v33)(v13, v39);
    (*(v8 + 16))(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2);
    v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v32;
    *(v21 + 32) = v19;
    (*(v8 + 32))(v21 + v20, v10, a2);
    aBlock[4] = sub_2546441A4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2546274BC;
    aBlock[3] = &block_descriptor_3;
    v22 = _Block_copy(aBlock);

    v23 = v34;
    sub_254680390();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_254644268(&qword_27F60B7E8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BFF0);
    sub_25462C9F0(&qword_27F60B7F0, &unk_27F60BFF0);
    v24 = v36;
    v25 = v31;
    sub_254680890();
    v26 = v29;
    v27 = v30;
    MEMORY[0x259C145B0](v29, v23, v24, v22);
    _Block_release(v22);

    (*(v38 + 8))(v24, v25);
    (*(v35 + 8))(v23, v37);
    (v33)(v26, v39);
  }
}

uint64_t sub_2546438BC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v1();
  }

  type metadata accessor for HoverTextMarqueeingContentView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEF0);
  return sub_254680140();
}

uint64_t sub_25464396C()
{
  sub_2546802A0();
  sub_25467FA40();
}

uint64_t sub_2546439EC()
{
  type metadata accessor for HoverTextMarqueeingContentView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEF0);
  return sub_254680140();
}

void sub_254643A70()
{
  sub_254643C28();
  if (v0 <= 0x3F)
  {
    sub_254643C8C();
    if (v1 <= 0x3F)
    {
      sub_254643CDC(319, &qword_27F60BEB8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_254643CDC(319, &qword_27F60BEC0, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_254643D40(319, &qword_27F60BEC8);
          if (v4 <= 0x3F)
          {
            sub_254643D40(319, &qword_27F60BED0);
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

void sub_254643C28()
{
  if (!qword_27F60BEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BEB0);
    v0 = sub_254680800();
    if (!v1)
    {
      atomic_store(v0, &qword_27F60BEA8);
    }
  }
}

unint64_t sub_254643C8C()
{
  result = qword_27F60BFA0;
  if (!qword_27F60BFA0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F60BFA0);
  }

  return result;
}

void sub_254643CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_254643D40(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_254680150();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

double sub_254643DA4(_OWORD *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_254643DEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_254643DFC@<D0>(_OWORD *a1@<X8>)
{
  sub_25467F9C0();
  type metadata accessor for CGRect(0);
  sub_25467F9D0();
  result = *&v3;
  *a1 = v3;
  return result;
}

void sub_254643E8C()
{
  v1 = type metadata accessor for HoverTextMarqueeingContentView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_25467F9C0() - 8);
  sub_2546426F8(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)), v1);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for HoverTextMarqueeingContentView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 40))
  {
  }

  if (*(v5 + 56))
  {
  }

  v6 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B418);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_25467FAB0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2546440E0()
{
  v1 = type metadata accessor for HoverTextMarqueeingContentView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 56);
  if (v4)
  {
    return v4();
  }

  return result;
}

unint64_t sub_254644150()
{
  result = qword_27F60BEF8;
  if (!qword_27F60BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BEF8);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_254644268(unint64_t *a1, void (*a2)(uint64_t))
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

double UIFont.hoverTextLineHeight.getter()
{
  Ascent = CTFontGetAscent(v0);
  v2 = Ascent + CTFontGetDescent(v0);
  return v2 + CTFontGetLeading(v0);
}

uint64_t sub_2546443A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25467FCB0();
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_25467FCC0();
}

uint64_t sub_25464449C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25467FCB0();
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_25467FCC0();
}

uint64_t View.if<A>(_:transform:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v39 = a1;
  v42 = a7;
  v43 = a6;
  v35[1] = a3;
  v36 = a2;
  v38 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v37 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v35 - v14;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v35 - v21;
  v41 = sub_25467FCD0();
  v23 = *(v41 - 8);
  v24 = MEMORY[0x28223BE20](v41);
  v26 = v35 - v25;
  if (v39(v24))
  {
    v36(v40);
    v27 = *(v17 + 16);
    v27(v22, v20, a5);
    v40 = a8;
    v28 = *(v17 + 8);
    v28(v20, a5);
    v27(v20, v22, a5);
    sub_2546443A4(v20, a5);
    v28(v20, a5);
    v28(v22, a5);
    a8 = v40;
  }

  else
  {
    v29 = v38;
    v30 = *(v38 + 16);
    v30(v15, v40, a4);
    v31 = v37;
    v30(v37, v15, a4);
    sub_25464449C(v31, a5, a4);
    v32 = *(v29 + 8);
    v32(v31, a4);
    v32(v15, a4);
  }

  v44 = v42;
  v45 = v43;
  v33 = v41;
  swift_getWitnessTable();
  (*(v23 + 16))(a8, v26, v33);
  return (*(v23 + 8))(v26, v33);
}

uint64_t View.onAnimationCompletion<A>(for:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a6;
  v19 = a7;
  v20 = a4;
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AnimationCompletionModifier();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v19 - v16;
  (*(v11 + 16))(v13, a1, a5);
  sub_254644C78(v13, a2, a3, a5, v17);

  MEMORY[0x259C13DE0](v17, v20, v14, v21);
  return (*(v15 + 8))(v17, v14);
}

CGSize __swiftcall String.size(usingFont:)(UIFont usingFont)
{
  v2 = sub_254680440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BF00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254683E60;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_254626E64(0, &qword_27F60B708);
  *(inited + 40) = usingFont;
  v5 = v4;
  v6 = usingFont.super.isa;
  sub_254645900(inited);
  swift_setDeallocating();
  sub_254645A28(inited + 32);
  type metadata accessor for Key(0);
  sub_2546461EC(&qword_27F60B6A0, type metadata accessor for Key);
  v7 = sub_2546803F0();

  [v2 sizeWithAttributes_];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

uint64_t sub_254644C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AnimationCompletionModifier();
  v11 = (a5 + *(v10 + 40));
  *v11 = a2;
  v11[1] = a3;
  v15 = *(a4 - 8);
  (*(v15 + 16))(a5, a1, a4);
  v12 = *(v15 + 32);
  v13 = a5 + *(v10 + 36);

  return v12(v13, a1, a4);
}

uint64_t sub_254644D70(uint64_t a1)
{
  v3 = sub_254680380();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2546803B0();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v14 = *(v12 + 24);
  v13 = *(v12 + 32);
  result = sub_254680430();
  if (result)
  {
    sub_254626E64(0, &qword_27F60BFE0);
    v22 = sub_254680780();
    (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
    v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v13;
    (*(v10 + 32))(v17 + v16, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    aBlock[4] = sub_254646164;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2546274BC;
    aBlock[3] = &block_descriptor_4;
    v18 = _Block_copy(aBlock);

    sub_254680390();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2546461EC(&qword_27F60B7E8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BFF0);
    sub_254646234();
    v19 = v26;
    sub_254680890();
    v20 = v22;
    MEMORY[0x259C14620](0, v9, v5, v18);
    _Block_release(v18);

    (*(v25 + 8))(v5, v19);
    return (*(v23 + 8))(v9, v24);
  }

  return result;
}

uint64_t AnimationCompletionModifier.animatableData.setter(uint64_t a1, uint64_t a2)
{
  sub_254645CA8(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t *(*AnimationCompletionModifier.animatableData.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_2546451D4;
}

uint64_t *sub_2546451D4(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_254644D70(*result);
  }

  return result;
}

uint64_t AnimationCompletionModifier.body(content:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  swift_getWitnessTable();
  v4 = sub_25467FD00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  swift_getWitnessTable();
  v8 = *(v5 + 16);
  v8(v7, a1, v4);
  v8(a2, v7, v4);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_254645348(uint64_t a1, uint64_t a2)
{
  sub_254645CA8(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*sub_2546453B4(void *a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = AnimationCompletionModifier.animatableData.modify(v4, a2);
  return sub_2546358B8;
}

uint64_t sub_254645430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212DFC8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_2546454C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212DFC0](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t sub_25464558C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BFD0);
    v3 = sub_254680A40();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = sub_25467D0C0(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_254645694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BFC0);
    v3 = sub_254680A40();
    v4 = a1 + 32;

    while (1)
    {
      sub_25462CC8C(v4, v13, &qword_27F60BFC8);
      result = sub_25467D1EC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_254646154(&v15, (v3[7] + 32 * result));
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

unint64_t sub_2546457D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BFB0);
    v3 = sub_254680A40();
    v4 = a1 + 32;

    while (1)
    {
      sub_25462CC8C(v4, &v13, &qword_27F60B700);
      v5 = v13;
      v6 = v14;
      result = sub_25467D174(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_254646154(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_254645900(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C000);
    v3 = sub_254680A40();
    v4 = a1 + 32;

    while (1)
    {
      sub_25462CC8C(v4, &v11, qword_27F60BF10);
      v5 = v11;
      result = sub_25467D230(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_254646154(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_254645A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F60BF10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254645A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C060);
    v3 = sub_254680A40();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_25467D2C4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_254645B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BFA8);
    v3 = sub_254680A40();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_25467D308(v5 | (v6 << 32), v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 24 * result;
      *v12 = v5;
      *(v12 + 4) = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v3[7] + 8 * result) = v9;
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

uint64_t sub_254645CA8(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 24))(v2, a1);

  return sub_254644D70(a2);
}

unint64_t sub_254645D9C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_254643C8C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_254645E24(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v20 = *((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

_BYTE *sub_254645F78(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = v8 + 7;
  v13 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v17 = 0;
    v18 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v7;
    if (((v12 + v11) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&result[v13] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v13] = 0;
      }

      else if (v17)
      {
        result[v13] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v23 = ((v12 + (&result[v10] & ~v9)) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v23 = a2 & 0x7FFFFFFF;
          v23[1] = 0;
        }

        else
        {
          *v23 = a2 - 1;
        }
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v7 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&result[v13] = v19;
    }

    else
    {
      *&result[v13] = v19;
    }
  }

  else if (v17)
  {
    result[v13] = v19;
  }

  return result;
}

_OWORD *sub_254646154(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2546461EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_254646234()
{
  result = qword_27F60B7F0;
  if (!qword_27F60B7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F60BFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B7F0);
  }

  return result;
}

void *sub_25464629C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2546809D0();

    if (v4)
    {
      type metadata accessor for HoverTextRootViewController();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_25467D2C4(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t HoverTextCoordinator.__allocating_init(withService:isHoverTextTyping:)(uint64_t a1, char a2)
{
  swift_allocObject();
  v4 = sub_254655028(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t HoverTextCoordinator.init(withService:isHoverTextTyping:)(uint64_t a1, char a2)
{
  v2 = sub_254655028(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

void sub_2546463E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 32);

    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 hoverTextPreferredActivatorKey];

    *&v1[OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationKey] = v3;
  }
}

id sub_254646494()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
LABEL_5:
    v5 = v1;
    return v2;
  }

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v4 = *(v0 + 56);
    *(v0 + 56) = result;
    v2 = result;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t HoverTextCoordinator.startHoverText()()
{
  v1[65] = v0;
  v1[66] = type metadata accessor for HoverTextPresentationEvent();
  v1[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v2 = sub_25467F840();
  v1[70] = v2;
  v1[71] = *(v2 - 8);
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = sub_254680620();
  v1[77] = sub_254680610();
  v4 = sub_254680600();
  v1[78] = v4;
  v1[79] = v3;

  return MEMORY[0x2822009F8](sub_2546466A4, v4, v3);
}

uint64_t sub_2546466A4()
{
  v38 = v0;
  v1 = v0[75];
  v2 = v0[71];
  v3 = v0[70];
  v4 = sub_25467F810();
  v0[80] = v4;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v0[81] = v5;
  v0[82] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);

  v6 = sub_25467F830();
  v7 = sub_2546806D0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[65];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = *(v9 + 104);
    *(v10 + 8) = 1024;
    *(v10 + 10) = (*(v9 + 16) & 1) == 0;

    _os_log_impl(&dword_254615000, v6, v7, "Coordinator asked to start HoverText. isRunning=%{BOOL}d isHoverTextTyping=%{BOOL}d", v10, 0xEu);
    MEMORY[0x259C155A0](v10, -1, -1);
  }

  else
  {
  }

  v11 = v0[75];
  v12 = v0[71];
  v13 = v0[70];
  v14 = v0[65];
  v15 = *(v12 + 8);
  v0[83] = v15;
  v0[84] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v11, v13);
  if (*(v14 + 104))
  {

LABEL_14:

    v35 = v0[1];

    return v35();
  }

  v0[85] = *(v0[65] + 24);
  AXRuntimeClient.enableAccessibility()();
  if (v16)
  {

    v17 = v0[81];
    v18 = v0[80];
    v19 = v0[72];
    v20 = v0[70];
    swift_beginAccess();
    v17(v19, v18, v20);
    v21 = v16;
    v22 = sub_25467F830();
    v23 = sub_2546806F0();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[83];
    v26 = v0[72];
    v27 = v0[70];
    if (v24)
    {
      v36 = v0[83];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = sub_254680AC0();
      v32 = sub_25463CAC4(v30, v31, &v37);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_254615000, v22, v23, "Coordinator could not start HoverText: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x259C155A0](v29, -1, -1);
      MEMORY[0x259C155A0](v28, -1, -1);

      v36(v26, v27);
    }

    else
    {

      v25(v26, v27);
    }

    *(v0[65] + 104) = 1;
    goto LABEL_14;
  }

  v33 = swift_task_alloc();
  v0[86] = v33;
  *v33 = v0;
  v33[1] = sub_254646AD8;

  return sub_254648940(0, 1);
}

uint64_t sub_254646AD8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 696) = a1;
  *(v4 + 704) = v1;

  v5 = *(v3 + 632);
  v6 = *(v3 + 624);
  if (v1)
  {
    v7 = sub_2546486E4;
  }

  else
  {
    v7 = sub_254646C20;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_254646C20()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[74];
  v4 = v0[70];
  swift_beginAccess();
  v1(v3, v2, v4);
  v5 = sub_25467F830();
  v6 = sub_2546806D0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_254615000, v5, v6, "Coordinator did show HoverText UI on main screen", v7, 2u);
    MEMORY[0x259C155A0](v7, -1, -1);
  }

  v8 = v0[87];
  v9 = v0[83];
  v10 = v0[74];
  v11 = v0[70];
  v12 = v0[65];

  v9(v10, v11);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = (v8 + direct field offset for HoverTextRootViewController.showStatusAlertForActivationLockDidChange);
  swift_beginAccess();
  v15 = *v14;
  *v14 = sub_2546552D0;
  v14[1] = v13;

  sub_254619940(v15);

  HoverTextRootViewController.startHoverText()();
  if (*(v12 + 16))
  {
    v16 = &selRef_hoverTextShowedBanner;
    v17 = &selRef_setHoverTextShowedBanner_;
    v18 = 0x6C62616E652E7468;
    v19 = 0xEA00000000006465;
  }

  else
  {
    v16 = &selRef_hoverTextTypingShowedBanner;
    v17 = &selRef_setHoverTextTypingShowedBanner_;
    v18 = 0x62616E652E747468;
    v19 = 0xEB0000000064656CLL;
  }

  sub_254649098(v16, v18, v19, v17);
  v20 = v0[87];
  v21 = v0[65];
  v22 = *(v21 + 80);
  *(v21 + 80) = v20;
  v23 = v20;

  swift_beginAccess();
  v24 = *(v21 + 72);
  v0[89] = v24;
  if (v24 >> 62)
  {
    v25 = sub_2546809C0();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[90] = v25;

  v26 = swift_beginAccess();
  v28 = v0[89];
  if (v25)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x259C147A0](0);
    }

    else
    {
      if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v26, v28, v27);
      }

      v29 = *(v28 + 32);
    }

    v0[91] = v29;
    v0[92] = 1;
    v30 = v29;
    v0[93] = sub_254680610();
    v31 = sub_254680600();
    v27 = v32;
    v0[94] = v31;
    v0[95] = v32;
    v26 = sub_2546475CC;
    v28 = v31;

    return MEMORY[0x2822009F8](v26, v28, v27);
  }

  v33 = v0[65];

  v34 = *(v33 + 16);
  v35 = v0[85];
  v36 = v0[65];
  v37 = sub_2546555C4;
  v38 = sub_25465558C;
  if (v34)
  {
    v39 = sub_254655584;
    v89 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_elementVisualsUpdated;
    v87 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveAnnouncement;
    v40 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_focusedApplicationsDidChange;
    v41 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_nativeFocusItemDidChange;
    v88 = sub_2546555CC;
  }

  else
  {
    v42 = (v35 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_valueChanged);
    swift_beginAccess();
    v43 = *v42;
    *v42 = sub_2546553A0;
    v42[1] = v36;

    sub_254619940(v43);
    v44 = (v35 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_keyboardWillHide);
    swift_beginAccess();
    v45 = *v44;
    *v44 = sub_2546553A8;
    v44[1] = v36;

    sub_254619940(v45);
    v88 = sub_254655458;
    v89 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_updateTypingDisplayMode;
    v37 = sub_254655450;
    v87 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_loupeStateChanged;
    v40 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_keyboardWillChangeFrame;
    v38 = sub_254655418;
    v39 = sub_2546553E0;
    v41 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_currentInputModeDidChange;
  }

  v46 = v35;
  v47 = (v35 + *v41);
  swift_beginAccess();
  v48 = *v47;
  *v47 = v39;
  v47[1] = v36;

  sub_254619940(v48);
  v49 = (v46 + *v40);
  swift_beginAccess();
  v50 = *v49;
  *v49 = v38;
  v49[1] = v36;

  sub_254619940(v50);
  v51 = (v46 + *v87);
  swift_beginAccess();
  v52 = *v51;
  *v51 = v37;
  v51[1] = v36;

  sub_254619940(v52);
  v53 = (v46 + *v89);
  swift_beginAccess();
  v54 = *v53;
  *v53 = v88;
  v53[1] = v36;

  sub_254619940(v54);
  v55 = v0[65];
  v56 = (v0[85] + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveNotification);
  swift_beginAccess();
  v57 = *v56;
  *v56 = sub_25464977C;
  v56[1] = 0;
  sub_254619940(v57);
  v58 = *(v55 + 16);
  v59 = *(v55 + 32);
  v60 = v0[65];
  v61 = sub_254655490;
  if (v58 == 1)
  {
    v62 = (v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtPointerDidChange);
    v63 = *(v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtPointerDidChange);
    *v62 = sub_254655498;
    v62[1] = v60;

    sub_254619940(v63);
    v64 = (v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtHandDidChange);
    v65 = *(v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtHandDidChange);
    *v64 = sub_2546554A0;
    v64[1] = v60;

    sub_254619940(v65);
    v66 = (v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_pointerMoved);
    v67 = *(v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_pointerMoved);
    *v66 = sub_2546554A8;
    v66[1] = v60;

    sub_254619940(v67);
    v68 = (v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_consumeHandEvents);
    v69 = *(v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_consumeHandEvents);
    *v68 = sub_2546554B0;
    v68[1] = v60;

    sub_254619940(v69);
    v70 = (v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_azimuthDidChange);
    v71 = *(v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_azimuthDidChange);
    *v70 = sub_2546554B8;
    v70[1] = v60;

    sub_254619940(v71);
    v72 = (v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationLockSequenceOccurred);
    v73 = *(v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationLockSequenceOccurred);
    *v72 = sub_2546554D4;
    v72[1] = v60;

    sub_254619940(v73);
    v74 = (v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonPressed);
    v75 = *(v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonPressed);
    *v74 = sub_25465550C;
    v74[1] = v60;

    sub_254619940(v75);
    v76 = (v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonReleased);
    v77 = *(v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonReleased);
    *v76 = sub_254655544;
    v76[1] = v60;

    sub_254619940(v77);
    v61 = sub_25465557C;
    v78 = &OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_stylusMoved;
  }

  else
  {
    v78 = &OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_handleTapGesture;
  }

  v79 = (v59 + *v78);
  v80 = *v79;
  *v79 = v61;
  v79[1] = v60;

  sub_254619940(v80);
  v81 = v0[65];
  v82 = [objc_opt_self() sharedInstance];
  v83 = [v82 hoverTextPreferredActivatorKey];

  *(v59 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationKey) = v83;
  sub_254679FC0();
  v84 = v0[87];
  if (*(v81 + 16) == 1)
  {
    sub_25464A344();
  }

  *(v0[65] + 104) = 1;

  v85 = v0[1];

  return v85();
}

uint64_t sub_2546475CC()
{
  v1 = v0[91];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[65];
  v5 = sub_254680640();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2, 1, 1, v5);

  v7 = v1;
  v8 = sub_254680610();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = 0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v4;
  sub_25462CC8C(v2, v3, &unk_27F60C010);
  LODWORD(v3) = (*(v6 + 48))(v3, 1, v5);

  v11 = v0[68];
  if (v3 == 1)
  {
    sub_254626CC4(v0[68], &unk_27F60C010);
  }

  else
  {
    sub_254680630();
    (*(v6 + 8))(v11, v5);
  }

  v12 = *(v9 + 16);
  swift_unknownObjectRetain();

  if (v12)
  {
    swift_getObjectType();
    v13 = sub_254680600();
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  sub_254626CC4(v0[69], &unk_27F60C010);
  v16 = type metadata accessor for HoverTextRootViewController();
  if (v15 | v13)
  {
    v0[2] = 0;
    v0[3] = 0;
    v0[4] = v13;
    v0[5] = v15;
  }

  v17 = swift_task_create();
  v0[96] = v17;
  v18 = swift_task_alloc();
  v0[97] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B6C0);
  v0[98] = v19;
  *v18 = v0;
  v18[1] = sub_2546478A0;
  v20 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 60, v17, v16, v19, v20);
}

uint64_t sub_2546478A0()
{
  v1 = *v0;

  v2 = *(v1 + 760);
  v3 = *(v1 + 752);

  return MEMORY[0x2822009F8](sub_2546479C0, v3, v2);
}

uint64_t sub_2546479C0()
{

  v1 = *(v0 + 480);
  *(v0 + 792) = v1;
  if (*(v0 + 488))
  {
    v2 = *(v0 + 728);

    *(v0 + 504) = v1;
    swift_willThrowTypedImpl();

    v3 = *(v0 + 632);
    v4 = *(v0 + 624);
    v5 = sub_254648478;
  }

  else
  {

    v3 = *(v0 + 632);
    v4 = *(v0 + 624);
    v5 = sub_254647AA4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_254647AA4()
{
  v87 = *(v0 + 648);
  v86 = *(v0 + 640);
  v1 = *(v0 + 584);
  v2 = *(v0 + 560);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 792) + qword_27F60BB60;
  v6 = *(v5 + 8);
  v7 = **v5;
  *(v0 + 512) = *v5;
  *(v3 + 66) = 12;

  sub_25467F500();
  v8 = (v3 + v4[8]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v3 + v4[9]);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = v3 + v4[10];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v3 + v4[11]);
  *v11 = 0;
  v11[1] = 0;
  *(v3 + v4[12]) = 0;
  *(v3 + v4[13]) = 0;
  v12 = (v3 + v4[14]);
  *v12 = 0;
  v12[1] = 0;
  *v3 = 2;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 64) = 448;
  (*(v6 + 304))(v3, v7, v6);
  sub_254655F04(v3, type metadata accessor for HoverTextPresentationEvent);

  v87(v1, v86, v2);

  v13 = sub_25467F830();
  v14 = sub_2546806D0();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 792);
  v17 = *(v0 + 728);
  v18 = *(v0 + 520);
  if (v15)
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = *(v18 + 104);

    _os_log_impl(&dword_254615000, v13, v14, "Coordinator did show HoverText UI on external screen (isRunning=%{BOOL}d)", v19, 8u);
    MEMORY[0x259C155A0](v19, -1, -1);

    sub_2546187D8(v16);
  }

  else
  {

    sub_2546187D8(v16);

    v17 = v13;
  }

  v20 = *(v0 + 736);
  v21 = *(v0 + 720);
  v22 = (*(v0 + 664))(*(v0 + 584), *(v0 + 560));
  if (v20 != v21)
  {
    v33 = *(v0 + 736);
    v34 = *(v0 + 712);
    if ((v34 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x259C147A0](*(v0 + 736));
    }

    else
    {
      if (v33 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v22 = *(v34 + 8 * v33 + 32);
    }

    *(v0 + 728) = v22;
    *(v0 + 736) = v33 + 1;
    if (!__OFADD__(v33, 1))
    {
      v35 = v22;
      *(v0 + 744) = sub_254680610();
      v36 = sub_254680600();
      v23 = v37;
      *(v0 + 752) = v36;
      *(v0 + 760) = v37;
      v22 = sub_2546475CC;
      v34 = v36;

      return MEMORY[0x2822009F8](v22, v34, v23);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return MEMORY[0x2822009F8](v22, v34, v23);
  }

  v24 = *(v0 + 520);

  v25 = *(v24 + 16);
  v26 = *(v0 + 680);
  v27 = *(v0 + 520);
  v28 = sub_2546555C4;
  v29 = sub_25465558C;
  if (v25)
  {
    v30 = sub_254655584;
    v85 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_elementVisualsUpdated;
    v83 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveAnnouncement;
    v31 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_focusedApplicationsDidChange;
    v32 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_nativeFocusItemDidChange;
    v84 = sub_2546555CC;
  }

  else
  {
    v38 = (v26 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_valueChanged);
    swift_beginAccess();
    v39 = *v38;
    *v38 = sub_2546553A0;
    v38[1] = v27;

    sub_254619940(v39);
    v40 = (v26 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_keyboardWillHide);
    swift_beginAccess();
    v41 = *v40;
    *v40 = sub_2546553A8;
    v40[1] = v27;

    sub_254619940(v41);
    v84 = sub_254655458;
    v85 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_updateTypingDisplayMode;
    v28 = sub_254655450;
    v83 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_loupeStateChanged;
    v31 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_keyboardWillChangeFrame;
    v29 = sub_254655418;
    v30 = sub_2546553E0;
    v32 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_currentInputModeDidChange;
  }

  v42 = v26;
  v43 = (v26 + *v32);
  swift_beginAccess();
  v44 = *v43;
  *v43 = v30;
  v43[1] = v27;

  sub_254619940(v44);
  v45 = (v42 + *v31);
  swift_beginAccess();
  v46 = *v45;
  *v45 = v29;
  v45[1] = v27;

  sub_254619940(v46);
  v47 = (v42 + *v83);
  swift_beginAccess();
  v48 = *v47;
  *v47 = v28;
  v47[1] = v27;

  sub_254619940(v48);
  v49 = (v42 + *v85);
  swift_beginAccess();
  v50 = *v49;
  *v49 = v84;
  v49[1] = v27;

  sub_254619940(v50);
  v51 = *(v0 + 520);
  v52 = (*(v0 + 680) + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveNotification);
  swift_beginAccess();
  v53 = *v52;
  *v52 = sub_25464977C;
  v52[1] = 0;
  sub_254619940(v53);
  v54 = *(v51 + 16);
  v55 = *(v51 + 32);
  v56 = *(v0 + 520);
  v57 = sub_254655490;
  if (v54 == 1)
  {
    v58 = (v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtPointerDidChange);
    v59 = *(v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtPointerDidChange);
    *v58 = sub_254655498;
    v58[1] = v56;

    sub_254619940(v59);
    v60 = (v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtHandDidChange);
    v61 = *(v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtHandDidChange);
    *v60 = sub_2546554A0;
    v60[1] = v56;

    sub_254619940(v61);
    v62 = (v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_pointerMoved);
    v63 = *(v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_pointerMoved);
    *v62 = sub_2546554A8;
    v62[1] = v56;

    sub_254619940(v63);
    v64 = (v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_consumeHandEvents);
    v65 = *(v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_consumeHandEvents);
    *v64 = sub_2546554B0;
    v64[1] = v56;

    sub_254619940(v65);
    v66 = (v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_azimuthDidChange);
    v67 = *(v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_azimuthDidChange);
    *v66 = sub_2546554B8;
    v66[1] = v56;

    sub_254619940(v67);
    v68 = (v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationLockSequenceOccurred);
    v69 = *(v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationLockSequenceOccurred);
    *v68 = sub_2546554D4;
    v68[1] = v56;

    sub_254619940(v69);
    v70 = (v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonPressed);
    v71 = *(v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonPressed);
    *v70 = sub_25465550C;
    v70[1] = v56;

    sub_254619940(v71);
    v72 = (v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonReleased);
    v73 = *(v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonReleased);
    *v72 = sub_254655544;
    v72[1] = v56;

    sub_254619940(v73);
    v57 = sub_25465557C;
    v74 = &OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_stylusMoved;
  }

  else
  {
    v74 = &OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_handleTapGesture;
  }

  v75 = (v55 + *v74);
  v76 = *v75;
  *v75 = v57;
  v75[1] = v56;

  sub_254619940(v76);
  v77 = *(v0 + 520);
  v78 = [objc_opt_self() sharedInstance];
  v79 = [v78 hoverTextPreferredActivatorKey];

  *(v55 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationKey) = v79;
  sub_254679FC0();
  v80 = *(v0 + 696);
  if (*(v77 + 16) == 1)
  {
    sub_25464A344();
  }

  *(*(v0 + 520) + 104) = 1;

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_254648478()
{
  v25 = v0;
  v1 = v0[91];
  v2 = v0[87];

  v3 = v0[99];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[72];
  v7 = v0[70];
  swift_beginAccess();
  v4(v6, v5, v7);
  v8 = v3;
  v9 = sub_25467F830();
  v10 = sub_2546806F0();

  if (os_log_type_enabled(v9, v10))
  {
    v23 = v0[83];
    v11 = v0[72];
    v12 = v0[70];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = sub_254680AC0();
    v17 = sub_25463CAC4(v15, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_254615000, v9, v10, "Coordinator could not start HoverText: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x259C155A0](v14, -1, -1);
    MEMORY[0x259C155A0](v13, -1, -1);

    v23(v11, v12);
  }

  else
  {
    v18 = v0[83];
    v19 = v0[72];
    v20 = v0[70];

    v18(v19, v20);
  }

  *(v0[65] + 104) = 1;

  v21 = v0[1];

  return v21();
}

uint64_t sub_2546486E4()
{
  v23 = v0;

  v1 = v0[88];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[72];
  v5 = v0[70];
  swift_beginAccess();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_25467F830();
  v8 = sub_2546806F0();

  if (os_log_type_enabled(v7, v8))
  {
    v21 = v0[83];
    v9 = v0[72];
    v10 = v0[70];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_254680AC0();
    v15 = sub_25463CAC4(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_254615000, v7, v8, "Coordinator could not start HoverText: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x259C155A0](v12, -1, -1);
    MEMORY[0x259C155A0](v11, -1, -1);

    v21(v9, v10);
  }

  else
  {
    v16 = v0[83];
    v17 = v0[72];
    v18 = v0[70];

    v16(v17, v18);
  }

  *(v0[65] + 104) = 1;

  v19 = v0[1];

  return v19();
}

uint64_t sub_254648940(uint64_t a1, char a2)
{
  *(v3 + 25) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = sub_254680620();
  *(v3 + 72) = sub_254680610();
  v5 = sub_254680600();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return MEMORY[0x2822009F8](sub_254648A18, v5, v4);
}

uint64_t sub_254648A18()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 25);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = sub_254680640();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = v4;

  v7 = sub_254680610();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v2;
  *(v8 + 40) = v4;
  *(v8 + 48) = v3;
  v10 = sub_25464DF34(0, 0, v1, &unk_254684290, v8);
  *(v0 + 96) = v10;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = type metadata accessor for HoverTextRootViewController();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B6C0);
  *(v0 + 112) = v13;
  *v11 = v0;
  v11[1] = sub_254648BB0;
  v14 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 16, v10, v12, v13, v14);
}

uint64_t sub_254648BB0()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_254648CD0, v3, v2);
}

uint64_t sub_254648CD0()
{

  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    *(v0 + 32) = v1;
    swift_willThrowTypedImpl();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {

    v4 = *(v0 + 8);

    return v4(v1);
  }
}

uint64_t sub_254648DC8(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_254648E50();
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_254648F74();
  }
}

uint64_t sub_254648E50()
{
  sub_2546547A0();
  v1 = sub_254646494();
  v2 = sub_254680440();
  v3 = HTUILocString(v2);

  if (!v3)
  {
    sub_254680470();
    v3 = sub_254680440();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = [v1 showAlertWithText:v3 subtitleText:0 iconImage:0 type:0 priority:20 duration:result forService:1.0];

    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = sub_254680470();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *(v0 + 88) = v6;
    *(v0 + 96) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_254648F74()
{
  sub_2546547A0();
  v1 = sub_254646494();
  v2 = sub_254680440();
  v3 = HTUILocString(v2);

  if (!v3)
  {
    sub_254680470();
    v3 = sub_254680440();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = [v1 showAlertWithText:v3 subtitleText:0 iconImage:0 type:0 priority:20 duration:result forService:1.0];

    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = sub_254680470();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *(v0 + 88) = v6;
    *(v0 + 96) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_254649098(SEL *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = objc_opt_self();
  v8 = [v7 sharedInstance];
  LOBYTE(a1) = [v8 *a1];

  if ((a1 & 1) == 0)
  {
    sub_2546547A0();
    v9 = sub_254646494();
    v10 = sub_254680440();
    v11 = HTUILocString(v10);

    if (!v11)
    {
      sub_254680470();
      v11 = sub_254680440();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = [v9 showAlertWithText:v11 subtitleText:0 iconImage:0 type:0 priority:20 duration:Strong forService:2.0];

      swift_unknownObjectRelease();
      if (v13)
      {
        v14 = sub_254680470();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      *(v4 + 88) = v14;
      *(v4 + 96) = v16;

      v17 = [v7 sharedInstance];
      [v17 *a4];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_254649250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_254680640();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_254680620();
  sub_25463D42C(a1, v14);

  v8 = sub_254680610();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  v11 = *(a1 + 16);
  *(v9 + 32) = *a1;
  *(v9 + 48) = v11;
  *(v9 + 64) = *(a1 + 32);
  *(v9 + 80) = *(a1 + 48);
  *(v9 + 88) = a2;
  sub_25464CB40(0, 0, v6, &unk_254684140, v9);
}

uint64_t sub_2546493A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_254680640();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_254680620();

  v10 = sub_254680610();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  sub_25464CB40(0, 0, v8, &unk_254684120, v11);
}

uint64_t sub_2546494E0(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_254680640();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_254680620();
  v16 = a4;

  v17 = sub_254680610();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  v20 = *(a5 + 16);
  *(v18 + 64) = *a5;
  *(v18 + 80) = v20;
  *(v18 + 96) = *(a5 + 32);
  *(v18 + 104) = a6;
  sub_25464CB40(0, 0, v14, &unk_254684280, v18);
}

uint64_t sub_254649650(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_254680640();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_254680620();

  v8 = sub_254680610();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = a2;
  *(v9 + 40) = a1;
  sub_25464CB40(0, 0, v6, &unk_254684240, v9);
}

uint64_t sub_25464977C(int a1, uint64_t a2)
{
  v4 = sub_25467F840();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25467F810();
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  sub_25462CC8C(a2, v23, &qword_27F60BC70);
  v9 = sub_25467F830();
  v10 = sub_2546806E0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v4;
    v13 = v12;
    v22 = v12;
    *v11 = 67109378;
    *(v11 + 4) = a1;
    *(v11 + 8) = 2080;
    sub_25462CC8C(v23, v21, &qword_27F60BC70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC70);
    v14 = sub_254680480();
    v16 = v15;
    sub_254626CC4(v23, &qword_27F60BC70);
    v17 = sub_25463CAC4(v14, v16, &v22);

    *(v11 + 10) = v17;
    _os_log_impl(&dword_254615000, v9, v10, "Coordinator got AX notification: %d. data: %s", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C155A0](v13, -1, -1);
    MEMORY[0x259C155A0](v11, -1, -1);

    return (*(v5 + 8))(v7, v20);
  }

  else
  {

    sub_254626CC4(v23, &qword_27F60BC70);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2546499FC(void *a1, char a2, uint64_t a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_254680640();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_254680620();
  v14 = a1;

  v15 = sub_254680610();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = v14;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a3;
  *(v16 + 64) = a2;
  sub_25464CB40(0, 0, v12, &unk_254684208, v16);
}

uint64_t sub_254649B58(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_254680640();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_254680620();
  v12 = a1;

  v13 = sub_254680610();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = a1;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4;
  *(v14 + 56) = a2;
  sub_25464CB40(0, 0, v10, &unk_2546841F8, v14);
}

uint64_t sub_254649C9C(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_254680640();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_254680620();

  v10 = sub_254680610();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 48) = a1;
  sub_25464CB40(0, 0, v8, &unk_2546841E8, v11);
}

uint64_t sub_254649DD4()
{
  sub_254626E64(0, &qword_27F60BFE0);
  v0 = sub_254680780();
  sub_254680790();

  return v2;
}

uint64_t sub_254649E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_254680640();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_254680620();

  v8 = sub_254680610();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = a2;
  *(v9 + 40) = a1;
  *(v9 + 44) = BYTE4(a1) & 1;
  sub_25464CE40(0, 0, v6, &unk_254684190, v9);
}

uint64_t sub_254649FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_254680640();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_254680620();

  v9 = sub_254680610();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  sub_25464CB40(0, 0, v7, a3, v10);
}

uint64_t sub_25464A0D0(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_254680640();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_254680620();

  v10 = sub_254680610();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  sub_25464CB40(0, 0, v8, &unk_254684150, v11);
}

uint64_t sub_25464A208(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_254680640();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_254680620();

  v8 = a1;
  v9 = sub_254680610();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a2;
  v10[5] = v8;
  sub_25464CB40(0, 0, v6, &unk_254684218, v10);
}

uint64_t sub_25464A344()
{
  v1 = v0;
  v2 = sub_25467F840();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(v0 + 40) <= 0)
  {
    sub_254626E64(0, &qword_27F60BFE0);
    v7 = sub_254680780();
    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_254656BB4;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25465474C;
    aBlock[3] = &block_descriptor_114;
    v9 = _Block_copy(aBlock);

    swift_beginAccess();
    v10 = notify_register_dispatch("com.apple.springboard.lockstate", (v1 + 40), v7, v9);
    swift_endAccess();
    _Block_release(v9);

    v11 = sub_25467F810();
    swift_beginAccess();
    (*(v3 + 16))(v5, v11, v2);
    v12 = sub_25467F830();
    v13 = sub_2546806D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = v10;
      _os_log_impl(&dword_254615000, v12, v13, "registerForScreenEvents result=%u", v14, 8u);
      MEMORY[0x259C155A0](v14, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t HoverTextCoordinator.stopHoverText()()
{
  v1[34] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v2 = sub_25467F840();
  v1[37] = v2;
  v1[38] = *(v2 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = sub_254680620();
  v1[44] = sub_254680610();
  v4 = sub_254680600();
  v1[45] = v4;
  v1[46] = v3;

  return MEMORY[0x2822009F8](sub_25464A740, v4, v3);
}

uint64_t sub_25464A740()
{
  v1 = v0[42];
  v2 = v0[37];
  v3 = v0[38];
  v4 = sub_25467F810();
  v0[47] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[48] = v5;
  v0[49] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_25467F830();
  v7 = sub_2546806D0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[34];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = *(v9 + 104);

    _os_log_impl(&dword_254615000, v6, v7, "Coordinator asked to stop HoverText. isRunning=%{BOOL}d", v10, 8u);
    MEMORY[0x259C155A0](v10, -1, -1);
  }

  else
  {
  }

  v11 = v0[42];
  v12 = v0[37];
  v13 = v0[38];
  v14 = v0[34];
  v15 = *(v13 + 8);
  v0[50] = v15;
  v0[51] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v11, v12);
  if (*(v14 + 104) == 1)
  {
    v16 = swift_task_alloc();
    v0[52] = v16;
    *v16 = v0;
    v16[1] = sub_25464A980;

    return sub_25464BDAC(0, 1);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}