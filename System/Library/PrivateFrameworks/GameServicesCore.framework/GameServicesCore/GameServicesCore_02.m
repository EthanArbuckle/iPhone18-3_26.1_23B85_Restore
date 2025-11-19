BOOL sub_227B3982C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_227D4DB58();
  sub_227D4DB78();
  v5 = sub_227D4DB98();
  v6 = a2 + 56;
  do
  {
    v7 = v5 & ~(-1 << *(a2 + 32));
    result = ((1 << v7) & *(v6 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8))) != 0;
    if (((1 << v7) & *(v6 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v9 = *(*(a2 + 48) + v7);
    v5 = v7 + 1;
  }

  while (v9 != (a1 & 1));
  return result;
}

BOOL sub_227B398E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_227D49F28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 40);
  sub_227B3DF84(&qword_27D7E6950);
  v18 = a1;
  v10 = sub_227D4CE98();
  v11 = a2 + 56;
  v19 = a2;
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v11 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = v14 != 0;
    if (!v14)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v19 + 48) + *(v5 + 72) * v13, v4);
    sub_227B3DF84(&qword_27D7E6958);
    v16 = sub_227D4CF38();
    (*(v5 + 8))(v8, v4);
    v10 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

uint64_t sub_227B39AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_227B2664C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 32 * v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  sub_227D4CE58();
  sub_227D4CE58();
  return v7;
}

uint64_t sub_227B39B40(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_227B3D114(a1, sub_227B3D844, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_227B39BC4()
{
  if ((*(v0 + 72) & 1) != 0 && *(v0 + 256) >= 2uLL)
  {
    v1 = *(v0 + 248);
  }

  else
  {
    v3 = v0 + 56;
    v1 = *(v0 + 56);
    v2 = *(v3 + 8);
  }

  sub_227D4CE58();
  return v1;
}

uint64_t sub_227B39C10()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  if ((*(v0 + 56) & 1) != 0 && *(v0 + 16) >= 2uLL)
  {
    v1 = *(v0 + 8);
    sub_227D4CE58();
  }

  else
  {
    v3 = *(v0 + 48);
    sub_227D4CE58();
  }

  return v1;
}

uint64_t sub_227B39C6C()
{
  OUTLINED_FUNCTION_104_0();
  v3 = *(v2 + 16);
  (v3)(v8);
  sub_227B3DC34(v8);
  if (v9)
  {
    v4 = (*(v0 + 32))(v1, v0);
    if (v5 >= 2)
    {
      return v4;
    }
  }

  v3(&v10, v1, v0);
  v6 = v10;
  sub_227D4CE58();
  sub_227B3DC34(&v10);
  return v6;
}

uint64_t sub_227B39D38()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

void *sub_227B39D64()
{
  memcpy(__dst, (v0 + 56), 0xB8uLL);
  v1 = sub_227B3DC88(__dst, v3);
  return OUTLINED_FUNCTION_195(v1, __dst);
}

uint64_t sub_227B39DB0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = OUTLINED_FUNCTION_58();
  sub_227B3D9FC(v3, v4);
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227B39DDC()
{
  v4 = *(v0 + 240);
  v1 = v4;
  sub_227B3E0F8(&v4, &v3, &qword_27D7E6948, &qword_227D4E770);
  return v1;
}

uint64_t sub_227B39EAC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

void *sub_227B39ED8()
{
  memcpy(__dst, (v0 + 40), 0xB8uLL);
  v1 = sub_227B3DC88(__dst, v3);
  return OUTLINED_FUNCTION_195(v1, __dst);
}

uint64_t sub_227B39F2C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_58();
  sub_227B3D9FC(v3, v4);
  return OUTLINED_FUNCTION_58();
}

char *sub_227B39FD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69F0, &unk_227D4EB10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[216 * v8] <= v12)
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227B3A0EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69E8, &qword_227D4EB08);
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
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69E0, &qword_227D4EB00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_227B3A224(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_227B3A32C(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_227B3A508(a4 + v11, v8, v9 + v11, &qword_27D7E6900, &qword_227D4E680);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_227B3A32C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B0, &qword_227D4EAA8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227B3A434(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_227D4A508(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_227D4A508();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227B3A508(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_62_0(v10), a1 + *(v12 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_103_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_103_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

BOOL sub_227B3A5EC(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_227D49F28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_227B3DF84(&qword_27D7E6950);
  v30 = a2;
  v11 = sub_227D4CE98();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_227B3C668(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_227B3DF84(&qword_27D7E6958);
    v17 = sub_227D4CF38();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_227B3A88C(_BYTE *a1, char a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_227D4DB58();
  v7 = a2 & 1;
  sub_227D4DB78();
  v8 = sub_227D4DB98();
  v9 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v5 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      v12 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v2;
      sub_227B3C8CC(a2 & 1, v10, isUniquelyReferenced_nonNull_native);
      *v2 = v15;
      goto LABEL_7;
    }

    if (*(*(v5 + 48) + v10) == (a2 & 1))
    {
      break;
    }

    v8 = v10 + 1;
  }

  v7 = *(*(v5 + 48) + v10);
LABEL_7:
  result = v11 == 0;
  *a1 = v7;
  return result;
}

uint64_t sub_227B3A98C(uint64_t result)
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
    result = sub_227D4CE58();
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
        sub_227D4CE58();
        sub_227B3B0D4(v12, v13);

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

uint64_t sub_227B3AAB8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v59 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v50 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = sub_227D4CE58();
    v15 = 0;
    v52 = v12;
    v53 = v7;
    v54 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        sub_227D4DB58();
        sub_227D4CE58();
        sub_227D4D048();
        v21 = sub_227D4DB98();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_227D4DA78() & 1) != 0)
          {
            v56 = v50;
            v57 = v16;
            v58 = v11;
            v3 = v53;
            v12 = v54;
            v55[0] = v54;
            v55[1] = v53;

            v26 = *(v5 + 32);
            v47 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v47;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v48 = &v46;
              MEMORY[0x28223BE20](v25);
              v7 = &v46 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v51 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v52;
              while (1)
              {
                v49 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                sub_227D4DB58();
                sub_227D4CE58();
                sub_227D4D048();
                v36 = sub_227D4DB98();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v53;
                    v12 = v54;
                    v30 = v52;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = sub_227D4DA78();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v51[v7];
                v51[v7] = v41 & ~v8;
                v3 = v53;
                v12 = v54;
                v30 = v52;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v49 - 1;
                if (__OFSUB__(v49, 1))
                {
                  __break(1u);
                }

                if (v49 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_227B3BA00(v51, v47, v49, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v44 = swift_slowAlloc();
            v45 = sub_227B3B978(v44, v47, (v5 + 56), v47, v5, v7, v55);

            MEMORY[0x22AAA7130](v44, -1, -1);
            v50 = v56;
            v5 = v45;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v53;
        v14 = v54;
        v12 = v52;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_227B223D4();
  }

  else
  {

    v5 = MEMORY[0x277D84FA0];
  }

  v42 = *MEMORY[0x277D85DE8];
  return v5;
}

int64_t sub_227B3AF90(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_227B3B06C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69E0, &qword_227D4EB00);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_227B3B06C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_227B3A0EC(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_227B3B0D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_227D4DB58();
  sub_227D4D048();
  v7 = sub_227D4DB98();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_227D4DA78() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_227B279DC();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_227B3C4B0(v9);
  *v2 = v19;
  return v16;
}

uint64_t sub_227B3B1FC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_227D49F28();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69A0, &unk_227D52180);
  result = sub_227D4D638();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_227B26E40(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_227B3DF84(&qword_27D7E6950);
    result = sub_227D4CE98();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227B3B540(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6998, &unk_227D4EA90);
  result = sub_227D4D638();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_227B26E40(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_227D4DB58();
    sub_227D4DB78();
    result = sub_227D4DB98();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227B3B78C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_227D4DB58();
    sub_227D4CE58();
    sub_227D4D048();
    v17 = sub_227D4DB98();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_227D4DA78();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_227B3BA00(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_227B3B978(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_227B3B78C(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_227B3BA00(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68A8, &unk_227D4EAF0);
  result = sub_227D4D648();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_227D4DB58();
    sub_227D4CE58();
    sub_227D4D048();
    result = sub_227D4DB98();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_227B3BC1C()
{
  v1 = v0;
  v2 = sub_227D49F28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69A0, &unk_227D52180);
  v7 = *v0;
  v8 = sub_227D4D628();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void *sub_227B3BE50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6998, &unk_227D4EA90);
  v2 = *v0;
  v3 = sub_227D4D628();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

uint64_t sub_227B3BF90(uint64_t a1)
{
  v2 = v1;
  v37 = sub_227D49F28();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69A0, &unk_227D52180);
  v10 = sub_227D4D638();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_227B3DF84(&qword_27D7E6950);
        result = sub_227D4CE98();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_227B3C294(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6998, &unk_227D4EA90);
  result = sub_227D4D638();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_227D4DB58();
        sub_227D4DB78();
        result = sub_227D4DB98();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_227B3C4B0(unint64_t result)
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

    v9 = sub_227D4D5D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_227D4DB58();
        sub_227D4CE58();
        sub_227D4D048();
        v15 = sub_227D4DB98();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_227B3C668(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_227D49F28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227B3B1FC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_227B3BF90(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_227B3DF84(&qword_27D7E6950);
      v15 = sub_227D4CE98();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_227B3DF84(&qword_27D7E6958);
        v17 = sub_227D4CF38();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_227B3BC1C();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_227D4DAD8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_227B3C8CC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227B3B540(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_227B3C294(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_227D4DB58();
      sub_227D4DB78();
      result = sub_227D4DB98();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == (v5 & 1))
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_227B3BE50();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5 & 1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_227D4DAD8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_227B3CA0C(void *a1, int64_t a2, char a3)
{
  result = sub_227B3CAE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_227B3CA88(char *a1, int64_t a2, char a3)
{
  result = sub_227B3CC20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_227B3CAA8(size_t a1, int64_t a2, char a3)
{
  result = sub_227B3CD28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_227B3CAC8(size_t a1, int64_t a2, char a3)
{
  result = sub_227B3CEDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_227B3CAE8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69E8, &qword_227D4EB08);
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
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69E0, &qword_227D4EB00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_227B3CC20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_227B3CD28(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6990, &qword_227D52170);
  v10 = *(sub_227D4A508() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_227D4A508() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227B3A434(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_227B3CEDC(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69A8, &qword_227D4EAA0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227B3A508(a4 + v16, v8, v13 + v16, &qword_27D7E68E0, &unk_227D50DE0);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_227B3D0B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a7;
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  return a2;
}

uint64_t sub_227B3D114(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v58 = a5;
  sub_227B3D8D4(a1, a2, a3, v57);
  v6 = v57[1];
  v45 = v57[0];
  v7 = v57[3];
  v44 = v57[5];
  v8 = v57[4];
  v9 = (v57[2] + 64) >> 6;
  sub_227D4CE58();

  v43 = v6;
  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v45 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v45 + 56) + 32 * v12;
      v17 = *v16;
      v18 = *(v16 + 24);
      v54[0] = v14;
      v54[1] = v15;
      v54[2] = v17;
      v55 = *(v16 + 8);
      v56 = v18;
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      v44(&v50, v54);

      v19 = v50;
      v20 = v51;
      v46 = v52;
      v48 = v53;
      v21 = *v58;
      v23 = sub_227B2664C(v50, v51);
      v24 = *(v21 + 16);
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (*(v21 + 24) >= v26)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69D0, &qword_227D4EAE0);
          sub_227D4D7D8();
        }
      }

      else
      {
        v28 = v58;
        sub_227B3D438(v26, a4 & 1);
        v29 = *v28;
        v30 = sub_227B2664C(v19, v20);
        if ((v27 & 1) != (v31 & 1))
        {
          goto LABEL_23;
        }

        v23 = v30;
      }

      v8 &= v8 - 1;
      v32 = *v58;
      if (v27)
      {
        v33 = (v32[7] + 32 * v23);
        v47 = *v33;
        v49 = v33[1];
        sub_227D4CE58();
        sub_227D4CE58();

        v34 = v32[7] + 32 * v23;
        v35 = *(v34 + 8);
        v36 = *(v34 + 24);
        *v34 = v47;
        *(v34 + 16) = v49;
      }

      else
      {
        v32[(v23 >> 6) + 8] |= 1 << v23;
        v37 = (v32[6] + 16 * v23);
        *v37 = v19;
        v37[1] = v20;
        v38 = (v32[7] + 32 * v23);
        *v38 = v46;
        v38[1] = v48;
        v39 = v32[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_22;
        }

        v32[2] = v41;
      }

      a4 = 1;
      v7 = v10;
      v6 = v43;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_227B223D4();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}

uint64_t sub_227B3D438(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69D8, &qword_227D4EAE8);
  v39 = a2;
  result = sub_227D4D828();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_227B26E40(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v5 + 56) + 32 * v19;
    v40 = *v23;
    v41 = *(v23 + 8);
    v24 = *(v23 + 24);
    if ((v39 & 1) == 0)
    {
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
    }

    v25 = *(v8 + 40);
    sub_227D4DB58();
    sub_227D4D048();
    result = sub_227D4DB98();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = *(v8 + 56) + 32 * v29;
    *v35 = v40;
    *(v35 + 8) = v41;
    *(v35 + 24) = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_227B3D714(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_227B3D75C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_227B132F0(&v12, v10 + 40 * a1 + 32);
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

__n128 sub_227B3D844@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_227B3D0B8(v7, *a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  result = v7[0];
  v5 = v7[1];
  *a2 = v3;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_227B3D88C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_227B3D8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

uint64_t sub_227B3D910(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 56) + 32 * result);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    sub_227D4CE58();
    sub_227D4CE58();
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_227B3D9FC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_227D4CE58();
  }

  return result;
}

uint64_t sub_227B3DA10(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_227B3DA24()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_50(v4);
  *v5 = v6;
  v5[1] = sub_227B355D0;

  return sub_227B329A0();
}

uint64_t sub_227B3DB20(uint64_t *a1, void *a2)
{
  v5 = *(v2 + 16);
  v7 = *a1;
  v6 = a1[1];
  result = sub_227D4A658();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_227B3DB5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E68E0, &unk_227D50DE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227B3DBAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_227B3DBF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_227D4CE58();

    return sub_227D4CE58();
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

uint64_t sub_227B3DCF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 48))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227B3DD34(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_16GameServicesCore12AMSResponsesO7ArtworkVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16GameServicesCore12AMSResponsesO17GroupedEntityMetaVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_227B3DE48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 264))
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

  return OUTLINED_FUNCTION_161(v2);
}

void *sub_227B3DE84(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 29) = 0u;
    result = OUTLINED_FUNCTION_118(result, 0);
    *(result + 31) = v3;
    *result = v4;
    if (v5 < 0)
    {
      *(result + 264) = 1;
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

      return OUTLINED_FUNCTION_160(result, a2);
    }

    *(result + 264) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_160(result, a2);
    }
  }

  return result;
}

uint64_t sub_227B3DEEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 240))
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

  return OUTLINED_FUNCTION_161(v2);
}

void *sub_227B3DF28(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[29] = 0;
    result = OUTLINED_FUNCTION_118(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 240) = 1;
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

      return OUTLINED_FUNCTION_160(result, a2);
    }

    *(result + 240) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_160(result, a2);
    }
  }

  return result;
}

uint64_t sub_227B3DF84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227D49F28();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227B3DFC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_62_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_58();
  v9(v8);
  return v4;
}

uint64_t sub_227B3E014()
{
  OUTLINED_FUNCTION_51_0();
  v1 = sub_227D4A058();
  OUTLINED_FUNCTION_5(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_50(v8);
  *v9 = v10;
  v9[1] = sub_227B3E2E8;

  return sub_227B33208();
}

uint64_t sub_227B3E0F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_62_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_58();
  v9(v8);
  return v4;
}

uint64_t sub_227B3E144@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v9 = *a1;
  v8 = a1[1];
  result = sub_227D4A658();
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v11 = *MEMORY[0x277D0D408];
    v12 = sub_227D4A508();
    OUTLINED_FUNCTION_62_0(v12);
    return (*(v13 + 104))(a3, v11);
  }

  return result;
}

uint64_t sub_227B3E1D8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_227D4D5C8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_227B3E218(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_227B3E224(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_227B3E274(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void OUTLINED_FUNCTION_39_1()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
}

uint64_t OUTLINED_FUNCTION_43_1()
{
  result = v0[107];
  v2 = v0[105];
  v3 = *(v0[106] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_2()
{
  v1 = v0[28];
  result = v0[24];
  v3 = v0[21];
  v4 = *(v0[22] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_1()
{
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_60_0()
{
  v2 = v0[137];
  v3 = v0[135];
  v4 = v0[124];

  return sub_227D4AA58();
}

uint64_t OUTLINED_FUNCTION_86_0()
{
  v2 = *(v0 + 960);
  v4 = *(v0 + 952);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_87_2()
{
  v5 = v1[20];
  v6 = v1[17];
  v7 = v1[16];
  v8 = v1[13];
  v9 = v1[12];
  v10 = v1[9];
  v3 = *(v2 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_95_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_98()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_99_0()
{
}

void OUTLINED_FUNCTION_102(uint64_t a1@<X8>)
{
  v4 = (v2 + ((a1 << 10) | (16 * v1)));
  *(v3 + 1456) = *v4;
  *(v3 + 1464) = v4[1];
}

uint64_t OUTLINED_FUNCTION_116_1()
{
  result = *(v0 + 1104);
  v2 = *(v0 + 1096);
  return result;
}

uint64_t OUTLINED_FUNCTION_117_1()
{
  v2 = v0[138];
  v3 = v0[137];
  v4 = v0[135];
}

uint64_t OUTLINED_FUNCTION_127()
{
}

uint64_t OUTLINED_FUNCTION_128_0()
{

  return swift_arrayDestroy();
}

BOOL OUTLINED_FUNCTION_153_0()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_154_0@<X0>(unint64_t a1@<X8>)
{

  return sub_227B3CA0C((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_155_0()
{
  v2 = v0[92];
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[85];
  v6 = v0[84];
}

uint64_t OUTLINED_FUNCTION_157_0()
{
  *(v0 + 1360) = v1;
  *(v0 + 1368) = v2;

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_158_0()
{
  v3 = v1[174];
  v4 = v1[173];

  return memcpy(v1 + 32, v0, 0xD8uLL);
}

uint64_t OUTLINED_FUNCTION_159()
{
}

uint64_t OUTLINED_FUNCTION_176_0()
{
  result = v0[19];
  v2 = v0[17];
  v3 = v0[8];
  v4 = *(v0[18] + 8);
  return result;
}

void OUTLINED_FUNCTION_178_0()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_180()
{
  v1 = v0[7];
  v2 = *(v0[8] + 8);
  return v0[9];
}

void OUTLINED_FUNCTION_185_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *OUTLINED_FUNCTION_188(uint64_t a1)
{
  *(v1 + 1336) = a1;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 16), 0xF0uLL);
}

void OUTLINED_FUNCTION_190()
{
  v2 = *(v0 + 856);
  v3 = *(v0 + 808);

  sub_227CFC560(v2);
}

uint64_t OUTLINED_FUNCTION_193_0()
{
}

void *OUTLINED_FUNCTION_195(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xB8uLL);
}

void OUTLINED_FUNCTION_196(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_197_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_227B1B1A4(a1, v12, va);
}

uint64_t GameActivityService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore19GameActivityService_id;
  v4 = sub_227D49EF8();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_227B3E88C()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BA38);
  __swift_project_value_buffer(v0, qword_280E7BA38);
  return sub_227D49E78();
}

uint64_t sub_227B3E8D8()
{
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_63_0();
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BA38);
}

uint64_t static GameActivityService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_63_0();
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BA38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227B3E9C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_227B3EA14(a1, a2);
  return v7;
}

uint64_t sub_227B3EA14(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v15 = sub_227D49EF8();
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC16GameServicesCore19GameActivityService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_actorSystem) = a1;
  type metadata accessor for GameActivityService();
  v17 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_7_5();
  sub_227B0F660(v9, v10);
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v11, v12);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_id, v7, v15);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider) = v16;
  v17 = *(v2 + v8);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for GameActivityService()
{
  result = qword_27D7EAF90;
  if (!qword_27D7EAF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameActivityService.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4A058();
  v0[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A00, &unk_227D4EB40);
  v0[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[14] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v0[17] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v0[18] = v20;
  v22 = *(v21 + 64);
  v0[19] = OUTLINED_FUNCTION_30();
  v23 = sub_227D49D58();
  v0[20] = v23;
  OUTLINED_FUNCTION_10_0(v23);
  v0[21] = v24;
  v26 = *(v25 + 64);
  v0[22] = OUTLINED_FUNCTION_30();
  v27 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_227B3EE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  v15 = v13[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_78_2();
    OUTLINED_FUNCTION_36(v16);
    v17 = OUTLINED_FUNCTION_9_1();
    v18(v17);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_4_5(&qword_280E7B830);
    OUTLINED_FUNCTION_3_5(&qword_280E7B838);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v12)
    {
      v19 = OUTLINED_FUNCTION_103_1();
      v20(v19);
      (*(v14 + 8))(v13[22], v13[20]);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_97();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_68_0();
      v27(v26);
      sub_227D49478();
      v28 = MEMORY[0x277D0D050];
      sub_227B0F660(&qword_27D7E6A10, MEMORY[0x277D0D050]);
      sub_227B0F660(&qword_27D7E6A18, v28);
      OUTLINED_FUNCTION_38_1();
      sub_227D49D18();
      v29 = v13[22];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v30 = v13[22];
      sub_227D49D08();
      v39 = v13[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v40 = *(MEMORY[0x277D0CE38] + 4);
      v41 = swift_task_alloc();
      v13[23] = v41;
      type metadata accessor for GameActivityService();
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v42, v43);
      OUTLINED_FUNCTION_48_0();
      *v41 = v44;
      OUTLINED_FUNCTION_108_0();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }
  }

  else
  {
    v21 = swift_task_alloc();
    v13[25] = v21;
    *v21 = v13;
    OUTLINED_FUNCTION_100(v21);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_33();

    return sub_227B3F570(v22, v23);
  }
}

uint64_t sub_227B3F1D8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B3F2D0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v11 = swift_task_alloc();
  v2[8] = v11;
  *v11 = v2;
  v11[1] = sub_227B4AFB4;

  return GameActivityService.refreshGameActivity(game:scope:)();
}

uint64_t sub_227B3F570(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B3F588()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[4] + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_227B4AF70;
  v3 = v0[3];
  OUTLINED_FUNCTION_53(v0[2]);

  return sub_227B4EFC0();
}

uint64_t GameActivityService.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D49458();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[7] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[10] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49D58();
  v1[13] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[14] = v16;
  v18 = *(v17 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227B3F7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  v13 = v12[3];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[15];
    v15 = v12[12];
    v17 = v12[8];
    v16 = v12[9];
    v18 = v12[7];
    v19 = v12[2];
    OUTLINED_FUNCTION_36(v12[3]);
    v20 = OUTLINED_FUNCTION_9_1();
    v21(v20);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_4_5(&qword_280E7B830);
    OUTLINED_FUNCTION_3_5(&qword_280E7B838);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v14)
    {
      v24 = v12[14];
      (*(v12[11] + 8))(v12[12], v12[10]);
      (*(v24 + 8))(v12[15], v12[13]);
      v25 = v12[15];
      v26 = v12[12];
      v27 = v12[9];
      v28 = v12[6];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
    }

    else
    {
      v22 = v12[15];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v23 = v12[15];
      sub_227D49D08();
      v41 = v12[6];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v42 = *(MEMORY[0x277D0CE38] + 4);
      v43 = swift_task_alloc();
      v12[16] = v43;
      type metadata accessor for GameActivityService();
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v44, v45);
      OUTLINED_FUNCTION_48_0();
      *v43 = v46;
      v43[1] = sub_227B3FA78;
      v47 = v12[15];
      v48 = v12[6];
      v49 = v12[3];
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
    }
  }

  else
  {
    v38 = swift_task_alloc();
    v12[18] = v38;
    *v38 = v12;
    v38[1] = sub_227B3FC38;
    v39 = v12[3];
    OUTLINED_FUNCTION_53(v12[2]);
    OUTLINED_FUNCTION_33();

    return sub_227B40148();
  }
}

uint64_t sub_227B3FA78()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B3FB70()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v7 = OUTLINED_FUNCTION_42();
  v8(v7);
  v9 = OUTLINED_FUNCTION_22_1();
  v10(v9);
  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[6];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_227B3FC38()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_77_0();
  v2 = v0[18];
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 120);
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[6];

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_164();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_227B3FD88()
{
  OUTLINED_FUNCTION_20();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_57_0();
  v6(v5);
  v7 = v0[17];
  (*(v0[14] + 8))(v0[15], v0[13]);
  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[6];

  OUTLINED_FUNCTION_18();

  return v12();
}

uint64_t sub_227B3FE5C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_227B3FFF4;

  return GameActivityService.refreshGameActivity(game:)();
}

uint64_t sub_227B3FFF4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = v0[2] - 8;
  OUTLINED_FUNCTION_80_0();
  v6 = v5;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_9_2();
  v10(v9);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_227B40148()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4A058();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();

  return MEMORY[0x2822009F8](sub_227B401F4, v0, 0);
}

uint64_t sub_227B401F4()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[3];
  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D0D040], v0[4]);
  v2 = *(v1 + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_227B402B4;
  v4 = v0[6];
  OUTLINED_FUNCTION_40_0();

  return sub_227B4EFC0();
}

uint64_t sub_227B402B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = v2[7];
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[3];

    return MEMORY[0x2822009F8](sub_227B403F4, v7, 0);
  }

  else
  {
    v8 = v3[6];
    v9 = v3[4];
    v10 = OUTLINED_FUNCTION_102_0(v3[5]);
    v11(v10);

    OUTLINED_FUNCTION_15_0();

    return v12();
  }
}

uint64_t sub_227B403F4()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[6];
  v2 = v0[4];
  v3 = OUTLINED_FUNCTION_102_0(v0[5]);
  v4(v3);

  OUTLINED_FUNCTION_18();
  v6 = v0[8];

  return v5();
}

uint64_t GameActivityService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = sub_227D49458();
  v1[8] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[9] = v7;
  v9 = *(v8 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[11] = v10;
  v11 = *(*(v10 - 8) + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[13] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A28, &qword_227D636E0);
  v1[16] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[17] = v17;
  v19 = *(v18 + 64);
  v1[18] = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[19] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[20] = v21;
  v23 = *(v22 + 64);
  v1[21] = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[22] = v24;
  OUTLINED_FUNCTION_10_0(v24);
  v1[23] = v25;
  v27 = *(v26 + 64);
  v1[24] = OUTLINED_FUNCTION_30();
  v28 = sub_227D49D58();
  v1[25] = v28;
  OUTLINED_FUNCTION_10_0(v28);
  v1[26] = v29;
  v31 = *(v30 + 64);
  v1[27] = OUTLINED_FUNCTION_30();
  v32 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_227B406F4()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[7];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[27];
    v3 = v0[24];
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    v7 = v0[4];
    OUTLINED_FUNCTION_36(v0[7]);
    v8 = OUTLINED_FUNCTION_9_1();
    v9(v8);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_4_5(&qword_280E7B830);
    OUTLINED_FUNCTION_3_5(&qword_280E7B838);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v10 = v0[27];
    if (v2)
    {
      v11 = v0[25];
      v12 = v0[26];
      (*(v0[23] + 8))(v0[24], v0[22]);
      v13 = *(v12 + 8);
      v14 = OUTLINED_FUNCTION_57_0();
      v15(v14);
      v35 = v0[27];
      v36 = v0[24];
      v37 = v0[21];
      OUTLINED_FUNCTION_115_0();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_72();

      return v38();
    }

    else
    {
      v29 = v0[18];
      v0[2] = v0[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A30, &unk_227D62390);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_88_1();
      sub_227D49478();
      sub_227B418A4();
      sub_227B419DC();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      v30 = v0[27];
      v31 = v0[15];
      v32 = v0[11];
      sub_227B41B14(v0[6], v0[12]);
      OUTLINED_FUNCTION_61_0();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_38_1();
      sub_227D49D18();
      v33 = v0[27];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v34 = v0[27];
      v40 = OUTLINED_FUNCTION_113();
      __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
      OUTLINED_FUNCTION_55_2(&qword_27D7E6A78);
      OUTLINED_FUNCTION_54_2(&qword_27D7E6A80);
      OUTLINED_FUNCTION_17();
      v42 = v0[27];
      sub_227D49D08();
      v43 = v0[10];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v44 = *(MEMORY[0x277D0CE28] + 4);
      v45 = swift_task_alloc();
      v0[28] = v45;
      type metadata accessor for GameActivityService();
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v46, v47);
      OUTLINED_FUNCTION_48_0();
      *v45 = v48;
      v45[1] = sub_227B40C14;
      v49 = v0[27];
      v50 = v0[10];
      v51 = v0[7];
      v52 = v0[3];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00]();
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[30] = v16;
    *v16 = v17;
    v16[1] = sub_227B40E2C;
    v18 = v0[6];
    v19 = v0[7];
    v20 = v0[4];
    v21 = v0[5];
    v22 = v0[3];
    OUTLINED_FUNCTION_72();

    return sub_227B41704(v23, v24, v25, v26);
  }
}

uint64_t sub_227B40C14()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B40D0C()
{
  v7 = OUTLINED_FUNCTION_53_0();
  v8(v7);
  v9 = *(v1 + 8);
  v10 = OUTLINED_FUNCTION_93_0();
  v11(v10);
  v12 = (*(v0 + 8))(v4, v5);
  v20 = OUTLINED_FUNCTION_106(v12, v13, v14, v15, v16, v17, v18, v19, v32);
  v21(v20, v3);
  (*(v6 + 8))();
  v22 = v2[27];
  v23 = v2[24];
  v24 = v2[21];
  v25 = v2[18];
  v26 = v2[15];
  v27 = v2[12];
  v28 = v2[10];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_98_0();

  return v29();
}

uint64_t sub_227B40E2C()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_77_0();
  v2 = v0[30];
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 216);
  v7 = v0[24];
  v8 = v0[21];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[10];

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_227B40FE0()
{
  v7 = OUTLINED_FUNCTION_53_0();
  v8(v7);
  v9 = *(v1 + 8);
  v10 = OUTLINED_FUNCTION_93_0();
  v11(v10);
  v12 = (*(v0 + 8))(v4, v5);
  v20 = OUTLINED_FUNCTION_106(v12, v13, v14, v15, v16, v17, v18, v19, v29);
  v21(v20, v3);
  (*(v6 + 8))();
  v22 = v2[29];
  v23 = v2[27];
  v24 = v2[24];
  v25 = v2[21];
  OUTLINED_FUNCTION_115_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_98_0();

  return v26();
}

uint64_t sub_227B410F4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v16 = *v11;
  v12 = a2[2];
  v2[8] = v12;
  v13 = *(v12 - 8);
  v2[9] = v13;
  v14 = *(v13 + 64) + 15;
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v15 = swift_task_alloc();
  v2[11] = v15;
  *v15 = v2;
  v15[1] = sub_227B414B4;

  return GameActivityService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227B414B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_14();
  v18 = v17[11];
  v19 = v17[10];
  v43 = v17[9];
  OUTLINED_FUNCTION_69();
  v21 = *(v20 + 64);
  v23 = *(v22 + 56);
  v42 = *(v22 + 48);
  OUTLINED_FUNCTION_69();
  v25 = *(v24 + 40);
  v27 = v26[4];
  v28 = v26[3];
  v29 = v26[2];
  OUTLINED_FUNCTION_80_0();
  v31 = v30;
  OUTLINED_FUNCTION_5_4();
  *v32 = v31;

  (*(v28 + 8))(v27, v29);
  (*(v42 + 8))(v23, v25);
  (*(v43 + 8))(v19, v21);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v21 - 8, v43, v16, a14, a15, a16);
}

uint64_t sub_227B41704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B41720()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[6] + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[7] = v2;
  *v2 = v3;
  v2[1] = sub_227B417C4;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_227B53F5C();
}

uint64_t sub_227B417C4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_18();

  return v5();
}

unint64_t sub_227B418A4()
{
  result = qword_27D7E6A38;
  if (!qword_27D7E6A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A30, &unk_227D62390);
    sub_227B41928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6A38);
  }

  return result;
}

unint64_t sub_227B41928()
{
  result = qword_27D7E6A40;
  if (!qword_27D7E6A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A48, &unk_227D4EC80);
    sub_227B0F660(&qword_27D7E6A50, MEMORY[0x277D0CD78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6A40);
  }

  return result;
}

unint64_t sub_227B419DC()
{
  result = qword_27D7E6A58;
  if (!qword_27D7E6A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A30, &unk_227D62390);
    sub_227B41A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6A58);
  }

  return result;
}

unint64_t sub_227B41A60()
{
  result = qword_27D7E6A60;
  if (!qword_27D7E6A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A48, &unk_227D4EC80);
    sub_227B0F660(&qword_27D7E6A68, MEMORY[0x277D0CD78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6A60);
  }

  return result;
}

uint64_t sub_227B41B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GameActivityService.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_227D49458();
  v1[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A88, &qword_227D62480);
  v1[9] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v1[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B41CCC()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[14];
    v3 = v0[11];
    v4 = v0[4];
    OUTLINED_FUNCTION_36(v0[5]);
    v0[2] = v4;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A90, &unk_227D62490);
    sub_227D49478();
    sub_227B42330();
    sub_227B423E0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v5 = v0[14];
    if (v2)
    {
      v8 = v0[12];
      v9 = v0[13];
      v10 = OUTLINED_FUNCTION_90_3();
      v11(v10);
      v12 = *(v9 + 8);
      v13 = OUTLINED_FUNCTION_57_0();
      v14(v13);
      v15 = v0[14];
      v16 = v0[11];
      v17 = v0[8];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_72();

      return v18();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v6 = v0[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AC0, &unk_227D624A0);
      sub_227B42490();
      sub_227B425C8();
      OUTLINED_FUNCTION_17();
      v7 = v0[14];
      sub_227D49D08();
      v25 = v0[8];
      sub_227D49468();
      v26 = *(MEMORY[0x277D0CE28] + 4);
      v27 = swift_task_alloc();
      v0[15] = v27;
      type metadata accessor for GameActivityService();
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v28, v29);
      OUTLINED_FUNCTION_47();
      *v27 = v30;
      v27[1] = sub_227B41FE0;
      v31 = v0[14];
      v32 = v0[8];
      v33 = v0[5];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00]();
    }
  }

  else
  {
    v21 = swift_task_alloc();
    v0[17] = v21;
    *v21 = v0;
    v21[1] = sub_227B4AF8C;
    v22 = v0[5];
    OUTLINED_FUNCTION_53(v0[4]);
    OUTLINED_FUNCTION_72();

    return sub_227B42278(v23);
  }
}

uint64_t sub_227B41FE0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B420D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227B4AFB0;

  return GameActivityService.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_227B42278(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227B42294, v1);
}

uint64_t sub_227B42294()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_227B4AFB8;
  OUTLINED_FUNCTION_40_0();

  return sub_227B55528();
}

unint64_t sub_227B42330()
{
  result = qword_27D7E6A98;
  if (!qword_27D7E6A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A90, &unk_227D62490);
    sub_227B15A74(&qword_27D7E6AA0, &qword_27D7E6AA8, &unk_227D4ED70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6A98);
  }

  return result;
}

unint64_t sub_227B423E0()
{
  result = qword_27D7E6AB0;
  if (!qword_27D7E6AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A90, &unk_227D62490);
    sub_227B15A74(&qword_27D7E6AB8, &qword_27D7E6AA8, &unk_227D4ED70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6AB0);
  }

  return result;
}

unint64_t sub_227B42490()
{
  result = qword_27D7E6AC8;
  if (!qword_27D7E6AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6AC0, &unk_227D624A0);
    sub_227B42514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6AC8);
  }

  return result;
}

unint64_t sub_227B42514()
{
  result = qword_27D7E6AD0;
  if (!qword_27D7E6AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6AD8, &unk_227D4ED80);
    sub_227B0F660(&qword_27D7E6AE0, MEMORY[0x277D0CB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6AD0);
  }

  return result;
}

unint64_t sub_227B425C8()
{
  result = qword_27D7E6AE8;
  if (!qword_27D7E6AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6AC0, &unk_227D624A0);
    sub_227B4264C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6AE8);
  }

  return result;
}

unint64_t sub_227B4264C()
{
  result = qword_27D7E6AF0;
  if (!qword_27D7E6AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6AD8, &unk_227D4ED80);
    sub_227B0F660(&qword_27D7E6AF8, MEMORY[0x277D0CB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6AF0);
  }

  return result;
}

uint64_t GameActivityService.listGameActivities(game:filters:excludedFilters:after:)()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v7 = sub_227D49458();
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[13] = v11;
  v12 = *(*(v11 - 8) + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[15] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[16] = v14;
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B00, &qword_227D4EE30);
  v1[18] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[19] = v18;
  v20 = *(v19 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[22] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v1[23] = v22;
  v24 = *(v23 + 64);
  v1[24] = OUTLINED_FUNCTION_30();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[25] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v1[26] = v26;
  v28 = *(v27 + 64);
  v1[27] = OUTLINED_FUNCTION_30();
  v29 = sub_227D49D58();
  v1[28] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v1[29] = v30;
  v32 = *(v31 + 64);
  v1[30] = OUTLINED_FUNCTION_30();
  v33 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_227B429A0()
{
  v1 = v0[9];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[30];
    v3 = v0[27];
    v5 = v0[23];
    v4 = v0[24];
    v6 = v0[22];
    v7 = v0[5];
    OUTLINED_FUNCTION_36(v0[9]);
    v8 = OUTLINED_FUNCTION_9_1();
    v9(v8);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_4_5(&qword_280E7B830);
    OUTLINED_FUNCTION_3_5(&qword_280E7B838);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v10 = v0[30];
    if (v2)
    {
      v11 = v0[28];
      v12 = v0[29];
      (*(v0[26] + 8))(v0[27], v0[25]);
      v13 = *(v12 + 8);
      v14 = OUTLINED_FUNCTION_57_0();
      v15(v14);
      v37 = v0[30];
      v38 = v0[27];
      v39 = v0[24];
      OUTLINED_FUNCTION_114_0();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_98_0();

      return v40();
    }

    else
    {
      v31 = v0[21];
      v0[2] = v0[6];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B08, &qword_227D4EE40);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_88_1();
      sub_227D49478();
      sub_227B43CD4();
      sub_227B43D58();
      OUTLINED_FUNCTION_113_0();
      v32 = v0[30];
      v33 = v0[20];
      v0[3] = v0[7];
      sub_227D4CE58();
      sub_227D49478();
      OUTLINED_FUNCTION_113_0();
      v34 = v0[17];
      v35 = v0[13];
      sub_227B41B14(v0[8], v0[14]);
      OUTLINED_FUNCTION_61_0();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_38_1();
      sub_227D49D18();
      v36 = v0[30];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v42 = OUTLINED_FUNCTION_113();
      __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
      OUTLINED_FUNCTION_55_2(&qword_280E7B820);
      OUTLINED_FUNCTION_54_2(&qword_280E7B828);
      OUTLINED_FUNCTION_17();
      v44 = v0[30];
      sub_227D49D08();
      v45 = v0[12];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v46 = *(MEMORY[0x277D0CE28] + 4);
      v47 = swift_task_alloc();
      v0[31] = v47;
      type metadata accessor for GameActivityService();
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v48, v49);
      OUTLINED_FUNCTION_48_0();
      *v47 = v50;
      v47[1] = sub_227B42FEC;
      v51 = v0[30];
      v52 = v0[12];
      v53 = v0[9];
      v54 = v0[4];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_98_0();

      return MEMORY[0x282164B00]();
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[33] = v16;
    *v16 = v17;
    v16[1] = sub_227B1E11C;
    v18 = v0[8];
    v19 = v0[9];
    v20 = v0[6];
    v21 = v0[7];
    v22 = v0[4];
    v23 = v0[5];
    OUTLINED_FUNCTION_98_0();

    return sub_227B43B30(v24, v25, v26, v27, v28);
  }
}

uint64_t sub_227B42FEC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B430E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  v23 = OUTLINED_FUNCTION_47_0();
  v24(v23);
  v25 = *(v20 + 8);
  v26 = OUTLINED_FUNCTION_113();
  v27(v26);
  v28 = *(v18 + 8);
  v29 = OUTLINED_FUNCTION_173();
  v28(v29);
  (v28)(v21, v22);
  (*(v16 + 8))(a11, a10);
  (*(v17 + 8))(a13, a12);
  v30 = v19[30];
  v31 = v19[27];
  v32 = v19[24];
  v34 = v19[20];
  v33 = v19[21];
  v35 = v19[17];
  v36 = v19[14];
  v37 = v19[12];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_23();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227B4320C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  v23 = OUTLINED_FUNCTION_47_0();
  v24(v23);
  v25 = *(v20 + 8);
  v26 = OUTLINED_FUNCTION_113();
  v27(v26);
  v28 = *(v18 + 8);
  v29 = OUTLINED_FUNCTION_173();
  v28(v29);
  (v28)(v21, v22);
  (*(v16 + 8))(a11, a10);
  (*(v17 + 8))(a13, a12);
  v30 = v19[32];
  v31 = v19[30];
  v32 = v19[27];
  v33 = v19[24];
  OUTLINED_FUNCTION_114_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227B43328(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v12 = *v11;
  v13 = a2[2];
  v2[8] = v13;
  v14 = *(v13 - 8);
  v2[9] = v14;
  v15 = *(v14 + 64) + 15;
  v21 = swift_task_alloc();
  v2[10] = v21;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v20 = *v21;
  v16 = a2[3];
  v2[11] = v16;
  v17 = *(v16 - 8);
  v2[12] = v17;
  v18 = *(v17 + 64) + 15;
  v2[13] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v19 = swift_task_alloc();
  v2[14] = v19;
  *v19 = v2;
  v19[1] = sub_227B43840;

  return GameActivityService.listGameActivities(game:filters:excludedFilters:after:)();
}

uint64_t sub_227B43840()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 112);
  v27 = *(v0 + 104);
  OUTLINED_FUNCTION_69();
  v26 = *(v2 + 96);
  OUTLINED_FUNCTION_69();
  v4 = *(v3 + 88);
  v25 = *(v5 + 80);
  OUTLINED_FUNCTION_69();
  v24 = *(v6 + 72);
  OUTLINED_FUNCTION_69();
  v8 = *(v7 + 64);
  v23 = *(v9 + 56);
  OUTLINED_FUNCTION_69();
  v22 = *(v10 + 48);
  OUTLINED_FUNCTION_69();
  v12 = *(v11 + 40);
  v14 = v13[4];
  v15 = v13[3];
  v16 = v13[2];
  OUTLINED_FUNCTION_80_0();
  v18 = v17;
  OUTLINED_FUNCTION_5_4();
  *v19 = v18;

  (*(v15 + 8))(v14, v16);
  (*(v22 + 8))(v23, v12);
  (*(v24 + 8))(v25, v8);
  (*(v26 + 8))(v27, v4);

  v20 = *(v18 + 8);

  return v20();
}

uint64_t sub_227B43B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B43B4C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[7] + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[8] = v2;
  *v2 = v3;
  v2[1] = sub_227B43BF4;
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_227B56840();
}

uint64_t sub_227B43BF4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_18();

  return v5();
}

unint64_t sub_227B43CD4()
{
  result = qword_280E7B7E0;
  if (!qword_280E7B7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B08, &qword_227D4EE40);
    sub_227B15CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7E0);
  }

  return result;
}

unint64_t sub_227B43D58()
{
  result = qword_280E7B7E8;
  if (!qword_280E7B7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B08, &qword_227D4EE40);
    sub_227B15D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7E8);
  }

  return result;
}

uint64_t GameActivityService.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_227D49458();
  v1[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B20, &qword_227D65880);
  v1[9] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v1[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B43F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v18 = v17[5];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[14];
    v20 = v17[11];
    v21 = v17[4];
    OUTLINED_FUNCTION_36(v17[5]);
    v17[2] = v21;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B28, &unk_227D65890);
    sub_227D49478();
    sub_227B44A84();
    sub_227B44B34();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v22 = v17[14];
    if (v19)
    {
      v25 = v17[12];
      v26 = v17[13];
      v27 = OUTLINED_FUNCTION_90_3();
      v28(v27);
      v29 = *(v26 + 8);
      v30 = OUTLINED_FUNCTION_57_0();
      v31(v30);
      v32 = v17[14];
      v33 = v17[11];
      v34 = v17[8];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v23 = v17[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B48, &unk_227D658A0);
      sub_227B44BE4();
      sub_227B44D1C();
      OUTLINED_FUNCTION_17();
      v24 = v17[14];
      sub_227D49D08();
      v48 = v17[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v49 = *(MEMORY[0x277D0CE28] + 4);
      v50 = swift_task_alloc();
      v17[15] = v50;
      type metadata accessor for GameActivityService();
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v51, v52);
      OUTLINED_FUNCTION_47();
      *v50 = v53;
      v50[1] = sub_227B4421C;
      v54 = v17[14];
      v55 = v17[8];
      v56 = v17[5];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v44 = swift_task_alloc();
    v17[17] = v44;
    *v44 = v17;
    v44[1] = sub_227B443C8;
    v45 = v17[5];
    OUTLINED_FUNCTION_53(v17[4]);
    OUTLINED_FUNCTION_46();

    return sub_227B448E0(v46);
  }
}

uint64_t sub_227B4421C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B44314()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_83();
  v2(v1);
  v3 = OUTLINED_FUNCTION_42();
  v4(v3);
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  v7 = v0[3];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];

  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_117_0();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_227B443C8()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[8];

  v8 = *(v3 + 8);
  OUTLINED_FUNCTION_164();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_227B44520()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_83();
  v2(v1);
  v3 = OUTLINED_FUNCTION_42();
  v4(v3);
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  v7 = v0[16];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_227B445CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227B4476C;

  return GameActivityService.describeGameActivities(activities:)();
}

uint64_t sub_227B4476C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[3];
  v5 = v0[2];
  OUTLINED_FUNCTION_80_0();
  *v6 = v7;
  *v9 = v8;

  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_9_2();
  v12(v11);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_227B448E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227B448FC, v1);
}

uint64_t sub_227B448FC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_227B44998;
  OUTLINED_FUNCTION_40_0();

  return sub_227B56ECC();
}

uint64_t sub_227B44998()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  OUTLINED_FUNCTION_115();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

unint64_t sub_227B44A84()
{
  result = qword_27D7E6B30;
  if (!qword_27D7E6B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B28, &unk_227D65890);
    sub_227B15A74(&qword_280E7B690, &qword_27D7E6B38, &unk_227D4EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6B30);
  }

  return result;
}

unint64_t sub_227B44B34()
{
  result = qword_27D7E6B40;
  if (!qword_27D7E6B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B28, &unk_227D65890);
    sub_227B15A74(&qword_280E7B698, &qword_27D7E6B38, &unk_227D4EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6B40);
  }

  return result;
}

unint64_t sub_227B44BE4()
{
  result = qword_27D7E6B50;
  if (!qword_27D7E6B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B48, &unk_227D658A0);
    sub_227B44C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6B50);
  }

  return result;
}

unint64_t sub_227B44C68()
{
  result = qword_27D7E6B58;
  if (!qword_27D7E6B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B60, &unk_227D4EF50);
    sub_227B0F660(&qword_27D7E6B68, MEMORY[0x277D0CB18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6B58);
  }

  return result;
}

unint64_t sub_227B44D1C()
{
  result = qword_27D7E6B70;
  if (!qword_27D7E6B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B48, &unk_227D658A0);
    sub_227B44DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6B70);
  }

  return result;
}

unint64_t sub_227B44DA0()
{
  result = qword_27D7E6B78;
  if (!qword_27D7E6B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B60, &unk_227D4EF50);
    sub_227B0F660(&off_27D7E6B80, MEMORY[0x277D0CB18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6B78);
  }

  return result;
}

uint64_t GameActivityService.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49B08();
  v0[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B88, &unk_227D65950);
  v0[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v15 = sub_227D498E8();
  v0[14] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B90, &qword_227D4F000);
  v0[17] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v0[18] = v20;
  v22 = *(v21 + 64);
  v0[19] = OUTLINED_FUNCTION_30();
  v23 = sub_227D49D58();
  v0[20] = v23;
  OUTLINED_FUNCTION_10_0(v23);
  v0[21] = v24;
  v26 = *(v25 + 64);
  v0[22] = OUTLINED_FUNCTION_30();
  v27 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_227B45084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  v16 = v14[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_78_2();
    OUTLINED_FUNCTION_36(v17);
    v18 = OUTLINED_FUNCTION_9_1();
    v19(v18);
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_52_2();
    sub_227B0F660(v20, v12);
    OUTLINED_FUNCTION_59_3(&off_27D7E6B80);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v13)
    {
      v21 = OUTLINED_FUNCTION_103_1();
      v22(v21);
      (*(v15 + 8))(v14[22], v14[20]);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_97();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
    }

    else
    {
      v28 = OUTLINED_FUNCTION_68_0();
      v29(v28);
      OUTLINED_FUNCTION_88_1();
      sub_227D49478();
      v30 = MEMORY[0x277D0CC68];
      sub_227B0F660(&qword_27D7E6B98, MEMORY[0x277D0CC68]);
      sub_227B0F660(&qword_27D7E6BA0, v30);
      OUTLINED_FUNCTION_38_1();
      sub_227D49D18();
      v31 = v14[22];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v32 = v14[22];
      sub_227D49D08();
      v41 = v14[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v42 = *(MEMORY[0x277D0CE38] + 4);
      v43 = swift_task_alloc();
      v14[23] = v43;
      type metadata accessor for GameActivityService();
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v44, v45);
      OUTLINED_FUNCTION_48_0();
      *v43 = v46;
      OUTLINED_FUNCTION_108_0();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
    }
  }

  else
  {
    v23 = swift_task_alloc();
    v14[25] = v23;
    *v23 = v14;
    OUTLINED_FUNCTION_100(v23);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_33();

    return sub_227B45CBC(v24, v25);
  }
}

uint64_t sub_227B453F0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B454E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v14 = v12[21];
  v13 = v12[22];
  v16 = v12[19];
  v15 = v12[20];
  v17 = v12[17];
  v18 = v12[18];
  v20 = v12[12];
  v19 = v12[13];
  v21 = v12[11];
  v22 = OUTLINED_FUNCTION_62();
  v23(v22);
  v24 = OUTLINED_FUNCTION_86();
  v25(v24);
  v26 = OUTLINED_FUNCTION_85();
  v27(v26);
  v28 = *(v14 + 8);
  v29 = OUTLINED_FUNCTION_57_0();
  v30(v29);
  OUTLINED_FUNCTION_91_1();
  v31 = v12[13];
  v32 = v12[10];
  v33 = v12[7];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_227B455D4()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_77_0();
  v2 = v0[25];
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 176);
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[7];

  OUTLINED_FUNCTION_27();

  return v12();
}

uint64_t sub_227B4576C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = OUTLINED_FUNCTION_62();
  v8(v7);
  v9 = OUTLINED_FUNCTION_42();
  v10(v9);
  v11 = OUTLINED_FUNCTION_22_1();
  v12(v11);
  v13 = v0[24];
  (*(v0[21] + 8))(v0[22], v0[20]);
  v14 = v0[22];
  v15 = v0[19];
  v16 = v0[16];
  OUTLINED_FUNCTION_97();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_227B45858(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v11 = swift_task_alloc();
  v2[8] = v11;
  *v11 = v2;
  v11[1] = sub_227B45AF8;

  return GameActivityService.createOrUpdateGameActivity(activity:context:)();
}

uint64_t sub_227B45AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  v13 = v12[8];
  v14 = v12[7];
  v15 = v12[6];
  v16 = v12[4];
  v17 = v12[3];
  v18 = v12[5] - 8;
  v19 = v12[2] - 8;
  OUTLINED_FUNCTION_80_0();
  v21 = v20;
  OUTLINED_FUNCTION_5_4();
  *v22 = v21;

  v23 = *(v17 + 8);
  v24 = OUTLINED_FUNCTION_148();
  v25(v24);
  v26 = *(v15 + 8);
  v27 = OUTLINED_FUNCTION_9_2();
  v28(v27);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_227B45CBC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B45CD4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[4] + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_227B45D74;
  v3 = v0[3];
  OUTLINED_FUNCTION_53(v0[2]);

  return sub_227B57834();
}

uint64_t sub_227B45D74()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t GameActivityService.delete(gameActivity:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B38, &unk_227D4EF40);
  v0[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BA8, &qword_227D4F098);
  v0[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49D58();
  v0[14] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227B45FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v20 = v18[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_36(v21);
    v22 = OUTLINED_FUNCTION_9_1();
    v23(v22);
    sub_227D49478();
    OUTLINED_FUNCTION_4_5(&qword_280E7B690);
    OUTLINED_FUNCTION_3_5(&qword_280E7B698);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v17)
    {
      v28 = v18[15];
      v29 = OUTLINED_FUNCTION_64();
      v30(v29);
      (*(v28 + 8))(v18[16], v18[14]);
      OUTLINED_FUNCTION_89_0();
      v31 = v18[7];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
    }

    else
    {
      v24 = v18[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v25 = v18[16];
      sub_227D4A5B8();
      OUTLINED_FUNCTION_51_2();
      sub_227B0F660(v26, v19);
      OUTLINED_FUNCTION_58_2(&qword_27D7E6BB8);
      OUTLINED_FUNCTION_17();
      v27 = v18[16];
      sub_227D49D08();
      v47 = v18[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v48 = *(MEMORY[0x277D0CE28] + 4);
      v49 = swift_task_alloc();
      v18[17] = v49;
      type metadata accessor for GameActivityService();
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v50, v51);
      OUTLINED_FUNCTION_48_0();
      *v49 = v52;
      v49[1] = sub_227B46308;
      v53 = v18[16];
      v54 = v18[7];
      v55 = v18[4];
      v56 = v18[2];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v18[19] = v41;
    *v41 = v42;
    OUTLINED_FUNCTION_100(v41);
    v43 = v18[2];
    OUTLINED_FUNCTION_46();

    return sub_227B465B0(v44, v45);
  }
}

uint64_t sub_227B46308()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B46400(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_227B4AF94;

  return GameActivityService.delete(gameActivity:)();
}

uint64_t sub_227B465B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B465C8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[4] + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[5] = v2;
  *v2 = v3;
  v2[1] = sub_227B4AF70;
  v4 = v0[2];
  v5 = v0[3];

  return sub_227B57ECC();
}

uint64_t GameActivityService.deleteAllActivities(for:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v0[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49D58();
  v0[14] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227B46800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v20 = v18[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_36(v21);
    v22 = OUTLINED_FUNCTION_9_1();
    v23(v22);
    sub_227D49478();
    OUTLINED_FUNCTION_4_5(&qword_280E7B830);
    OUTLINED_FUNCTION_3_5(&qword_280E7B838);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v17)
    {
      v28 = v18[15];
      v29 = OUTLINED_FUNCTION_64();
      v30(v29);
      (*(v28 + 8))(v18[16], v18[14]);
      OUTLINED_FUNCTION_89_0();
      v31 = v18[7];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
    }

    else
    {
      v24 = v18[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v25 = v18[16];
      sub_227D4A5B8();
      OUTLINED_FUNCTION_51_2();
      sub_227B0F660(v26, v19);
      OUTLINED_FUNCTION_58_2(&qword_27D7E6BB8);
      OUTLINED_FUNCTION_17();
      v27 = v18[16];
      sub_227D49D08();
      v47 = v18[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v48 = *(MEMORY[0x277D0CE28] + 4);
      v49 = swift_task_alloc();
      v18[17] = v49;
      type metadata accessor for GameActivityService();
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v50, v51);
      OUTLINED_FUNCTION_48_0();
      *v49 = v52;
      v49[1] = sub_227B46B10;
      v53 = v18[16];
      v54 = v18[7];
      v55 = v18[4];
      v56 = v18[2];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v18[19] = v41;
    *v41 = v42;
    OUTLINED_FUNCTION_100(v41);
    v43 = v18[2];
    OUTLINED_FUNCTION_46();

    return sub_227B4708C(v44, v45);
  }
}

uint64_t sub_227B46B10()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B46C08()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = OUTLINED_FUNCTION_62();
  v8(v7);
  v9 = OUTLINED_FUNCTION_42();
  v10(v9);
  v11 = OUTLINED_FUNCTION_22_1();
  v12(v11);
  OUTLINED_FUNCTION_89_0();
  v13 = v0[7];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_227B46CC0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_77_0();
  v2 = v0[19];
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 128);
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[7];

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_164();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_227B46E10()
{
  OUTLINED_FUNCTION_20();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = OUTLINED_FUNCTION_62();
  v5(v4);
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_57_0();
  v8(v7);
  v9 = v0[18];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[7];

  OUTLINED_FUNCTION_18();

  return v14();
}

uint64_t sub_227B46EDC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_227B4AF94;

  return GameActivityService.deleteAllActivities(for:)();
}

uint64_t sub_227B4708C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B470A4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[4] + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[5] = v2;
  *v2 = v3;
  v2[1] = sub_227B4AF70;
  v4 = v0[2];
  v5 = v0[3];

  return sub_227B58224();
}

uint64_t GameActivityService.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_227D49458();
  v1[6] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v1[9] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v12 = sub_227D498E8();
  v1[12] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B90, &qword_227D4F000);
  v1[15] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[16] = v17;
  v19 = *(v18 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v20 = sub_227D49D58();
  v1[18] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[19] = v21;
  v23 = *(v22 + 64);
  v1[20] = OUTLINED_FUNCTION_30();
  v24 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_227B47334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  v14 = v13[5];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[20];
    v16 = v13[17];
    v18 = v13[13];
    v17 = v13[14];
    v19 = v13[12];
    v20 = v13[3];
    OUTLINED_FUNCTION_36(v13[5]);
    v21 = OUTLINED_FUNCTION_9_1();
    v22(v21);
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_52_2();
    sub_227B0F660(v23, v12);
    OUTLINED_FUNCTION_59_3(&off_27D7E6B80);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v24 = v13[20];
    if (v15)
    {
      v25 = v13[18];
      v26 = v13[19];
      v27 = OUTLINED_FUNCTION_60();
      v28(v27);
      v29 = *(v26 + 8);
      v30 = OUTLINED_FUNCTION_57_0();
      v31(v30);
      v42 = v13[20];
      v43 = v13[17];
      v44 = v13[14];
      v45 = v13[11];
      v46 = v13[8];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
    }

    else
    {
      v39 = v13[11];
      v13[2] = v13[4];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      sub_227D49478();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      v40 = v13[20];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v41 = v13[20];
      sub_227D49D08();
      v55 = v13[8];
      sub_227D49468();
      v56 = *(MEMORY[0x277D0CE38] + 4);
      v57 = swift_task_alloc();
      v13[21] = v57;
      type metadata accessor for GameActivityService();
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v58, v59);
      OUTLINED_FUNCTION_48_0();
      *v57 = v60;
      v57[1] = sub_227B476C8;
      v61 = v13[20];
      v62 = v13[8];
      v63 = v13[5];
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12);
    }
  }

  else
  {
    v32 = swift_task_alloc();
    v13[23] = v32;
    *v32 = v13;
    v32[1] = sub_227B47894;
    v33 = v13[4];
    v34 = v13[5];
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_33();

    return sub_227B47D7C(v35, v36);
  }
}

uint64_t sub_227B476C8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B477C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v14 = OUTLINED_FUNCTION_73_0();
  v15(v14);
  v16 = OUTLINED_FUNCTION_86();
  v17(v16);
  v18 = OUTLINED_FUNCTION_85();
  v19(v18);
  v20 = *(v13 + 8);
  v21 = OUTLINED_FUNCTION_57_0();
  v22(v21);
  v23 = v12[20];
  v24 = v12[17];
  v25 = v12[14];
  v26 = v12[11];
  v27 = v12[8];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_227B47894()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_77_0();
  v2 = v0[23];
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 160);
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_117_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_227B47A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v14 = OUTLINED_FUNCTION_73_0();
  v15(v14);
  v16 = OUTLINED_FUNCTION_86();
  v17(v16);
  v18 = OUTLINED_FUNCTION_85();
  v19(v18);
  v20 = *(v13 + 8);
  v21 = OUTLINED_FUNCTION_57_0();
  v22(v21);
  v23 = v12[22];
  v24 = v12[20];
  v25 = v12[17];
  v26 = v12[14];
  v27 = v12[11];
  v28 = v12[8];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_227B47AD8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v12 = *v11;
  v13 = swift_task_alloc();
  v2[8] = v13;
  *v13 = v2;
  v13[1] = sub_227B45AF8;

  return GameActivityService.shareGameActivity(activity:receivingPlayers:)();
}

uint64_t sub_227B47D7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B47D94()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[4] + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_227B4AF70;
  v3 = v0[3];
  OUTLINED_FUNCTION_53(v0[2]);

  return sub_227B58630();
}

unint64_t sub_227B47E34()
{
  result = qword_27D7E6BD0;
  if (!qword_27D7E6BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    sub_227B15A74(&qword_27D7E6BD8, &qword_27D7E67C0, &unk_227D4FB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6BD0);
  }

  return result;
}

unint64_t sub_227B47EE4()
{
  result = qword_27D7E6BE0;
  if (!qword_27D7E6BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    sub_227B15A74(&qword_27D7E6BE8, &qword_27D7E67C0, &unk_227D4FB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6BE0);
  }

  return result;
}

uint64_t GameActivityService.listAllStoredGameActivityDefinitions()()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v0;
  v2 = sub_227D49458();
  v1[4] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v6 = sub_227D49D58();
  v1[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B48084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v18 = v17[3];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[9];
    OUTLINED_FUNCTION_36(v17[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D28();
    v20 = v17[9];
    if (v19)
    {
      v22 = v17[7];
      v23 = OUTLINED_FUNCTION_102_0(v17[8]);
      v24(v23);
      v25 = v17[9];
      v26 = v17[6];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BF0, &qword_227D4F288);
      sub_227B48978();
      sub_227B48A2C();
      OUTLINED_FUNCTION_17();
      v21 = v17[9];
      sub_227D49D08();
      v39 = v17[6];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v40 = *(MEMORY[0x277D0CE28] + 4);
      v41 = swift_task_alloc();
      v17[10] = v41;
      type metadata accessor for GameActivityService();
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v42, v43);
      OUTLINED_FUNCTION_47();
      *v41 = v44;
      v41[1] = sub_227B482DC;
      v45 = v17[9];
      v46 = v17[6];
      v47 = v17[3];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v36 = swift_task_alloc();
    v17[12] = v36;
    *v36 = v17;
    v36[1] = sub_227B48470;
    v37 = v17[3];
    OUTLINED_FUNCTION_46();

    return sub_227B487D8();
  }
}

uint64_t sub_227B482DC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B483D4()
{
  OUTLINED_FUNCTION_20();
  v2 = OUTLINED_FUNCTION_110();
  v3(v2);
  v4 = *(v0 + 8);
  v5 = OUTLINED_FUNCTION_57_0();
  v6(v5);
  v7 = v1[2];
  v8 = v1[9];
  v9 = v1[6];

  OUTLINED_FUNCTION_115();

  return v10(v7);
}

uint64_t sub_227B48470()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  v8 = *(v4 + 72);
  v9 = *(v4 + 48);

  v11 = *(v6 + 8);
  if (!v0)
  {
    v10 = v3;
  }

  return v11(v10);
}

uint64_t sub_227B485AC()
{
  OUTLINED_FUNCTION_20();
  v2 = OUTLINED_FUNCTION_110();
  v3(v2);
  v4 = *(v0 + 8);
  v5 = OUTLINED_FUNCTION_57_0();
  v6(v5);
  v7 = v1[11];
  v8 = v1[9];
  v9 = v1[6];

  OUTLINED_FUNCTION_18();

  return v10();
}

uint64_t sub_227B48640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_227B486D8;

  return GameActivityService.listAllStoredGameActivityDefinitions()();
}

uint64_t sub_227B486D8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 24);
  v6 = *v0;
  **(v1 + 16) = v3;

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227B487F4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_35(v2);

  return sub_227B59B48();
}

uint64_t sub_227B4888C()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  OUTLINED_FUNCTION_115();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

unint64_t sub_227B48978()
{
  result = qword_27D7E6BF8;
  if (!qword_27D7E6BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6BF0, &qword_227D4F288);
    sub_227B0F660(&qword_27D7E6AE0, MEMORY[0x277D0CB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6BF8);
  }

  return result;
}

unint64_t sub_227B48A2C()
{
  result = qword_27D7E6C00;
  if (!qword_27D7E6C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6BF0, &qword_227D4F288);
    sub_227B0F660(&qword_27D7E6AF8, MEMORY[0x277D0CB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6C00);
  }

  return result;
}

uint64_t GameActivityService.listAllStoredGameActivityInstances()()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v0;
  v2 = sub_227D49458();
  v1[4] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v6 = sub_227D49D58();
  v1[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B48BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v18 = v17[3];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[9];
    OUTLINED_FUNCTION_36(v17[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D28();
    v20 = v17[9];
    if (v19)
    {
      v22 = v17[7];
      v23 = OUTLINED_FUNCTION_102_0(v17[8]);
      v24(v23);
      v25 = v17[9];
      v26 = v17[6];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C08, &unk_227D4F310);
      sub_227B4906C();
      sub_227B49120();
      OUTLINED_FUNCTION_17();
      v21 = v17[9];
      sub_227D49D08();
      v39 = v17[6];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v40 = *(MEMORY[0x277D0CE28] + 4);
      v41 = swift_task_alloc();
      v17[10] = v41;
      type metadata accessor for GameActivityService();
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v42, v43);
      OUTLINED_FUNCTION_47();
      *v41 = v44;
      v41[1] = sub_227B48E28;
      v45 = v17[9];
      v46 = v17[6];
      v47 = v17[3];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v36 = swift_task_alloc();
    v17[12] = v36;
    *v36 = v17;
    v36[1] = sub_227B4AF98;
    v37 = v17[3];
    OUTLINED_FUNCTION_46();

    return sub_227B48FB8();
  }
}

uint64_t sub_227B48E28()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B48F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_227B4AF7C;

  return GameActivityService.listAllStoredGameActivityInstances()();
}

uint64_t sub_227B48FD4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_35(v2);

  return sub_227B59F68();
}

unint64_t sub_227B4906C()
{
  result = qword_27D7E6C10;
  if (!qword_27D7E6C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6C08, &unk_227D4F310);
    sub_227B0F660(&qword_27D7E6B68, MEMORY[0x277D0CB18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6C10);
  }

  return result;
}

unint64_t sub_227B49120()
{
  result = qword_27D7E6C18;
  if (!qword_27D7E6C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6C08, &unk_227D4F310);
    sub_227B0F660(&off_27D7E6B80, MEMORY[0x277D0CB18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6C18);
  }

  return result;
}

uint64_t static GameActivityService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GameActivityService();
  sub_227D49D78();
  OUTLINED_FUNCTION_7_5();
  sub_227B0F660(v5, v6);
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v7, v8);
  v9 = sub_227D493A8();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC16GameServicesCore19GameActivityService_id;
    v12 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v12);
    (*(v13 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_actorSystem) = a2;
  }

  return v10;
}

uint64_t GameActivityService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore19GameActivityService_id;
  v2 = OBJC_IVAR____TtC16GameServicesCore19GameActivityService_actorSystem;
  sub_227D49D78();
  OUTLINED_FUNCTION_7_5();
  sub_227B0F660(v3, v4);
  sub_227D493C8();
  v5 = sub_227D49EF8();
  OUTLINED_FUNCTION_62_0(v5);
  (*(v6 + 8))(v0 + v1);
  v7 = *(v0 + v2);

  v8 = *(v0 + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GameActivityService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore19GameActivityService_id;
    v2 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    GameActivityService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227B49480()
{
  sub_227D4DB58();
  type metadata accessor for GameActivityService();
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v0, v1);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t GameActivityService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for GameActivityService();
    OUTLINED_FUNCTION_0_1();
    sub_227B0F660(v1, v2);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227B49574@<X0>(uint64_t *a1@<X8>)
{
  result = GameActivityService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227B495D4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_45();
  return (*(v2 + 216))();
}

uint64_t sub_227B49614()
{
  OUTLINED_FUNCTION_109_0();
  type metadata accessor for GameActivityService();
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v0, v1);
  OUTLINED_FUNCTION_9_2();
  return sub_227D49418();
}

uint64_t sub_227B49678()
{
  v2 = *v0;
  sub_227D4DB58();
  type metadata accessor for GameActivityService();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227B49880()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameActivityService.refreshGameActivity(game:scope:)();
}

uint64_t sub_227B4990C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameActivityService.refreshGameActivity(game:)();
}

uint64_t sub_227B49990()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_164();

  return GameActivityService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227B49A20()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameActivityService.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_227B49AA4()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_96_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_74_0(v3);
  OUTLINED_FUNCTION_117_0();

  return GameActivityService.listGameActivities(game:filters:excludedFilters:after:)();
}

uint64_t sub_227B49B34()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameActivityService.describeGameActivities(activities:)();
}

uint64_t sub_227B49BB8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameActivityService.createOrUpdateGameActivity(activity:context:)();
}

uint64_t sub_227B49C44()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return GameActivityService.delete(gameActivity:)();
}

uint64_t sub_227B49CD0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return GameActivityService.deleteAllActivities(for:)();
}

uint64_t sub_227B49D5C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameActivityService.shareGameActivity(activity:receivingPlayers:)();
}

uint64_t sub_227B49DE8()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return GameActivityService.listAllStoredGameActivityDefinitions()();
}

uint64_t sub_227B49E6C()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return GameActivityService.listAllStoredGameActivityInstances()();
}

uint64_t sub_227B49EF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for GameActivityService();
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v4, v5);
  v6 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v6);
}

uint64_t sub_227B49F68()
{
  v1 = *v0;
  type metadata accessor for GameActivityService();
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v2, v3);
  OUTLINED_FUNCTION_15_1();
  sub_227B0F660(v4, v5);
  return sub_227D49428();
}

uint64_t sub_227B4A010@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GameActivityService();
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v3, v4);
  OUTLINED_FUNCTION_15_1();
  sub_227B0F660(v5, v6);
  OUTLINED_FUNCTION_10();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227B4A0C0()
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of GameActivityService.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 120);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameActivityService.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 128);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameActivityService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 136);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_76(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameActivityService.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 144);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameActivityService.listGameActivities(game:filters:excludedFilters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 152);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_74_0(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameActivityService.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 160);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameActivityService.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 168);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameActivityService.delete(gameActivity:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 176);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_0(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameActivityService.deleteAllActivities(for:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 184);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_0(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameActivityService.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 192);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameActivityService.listAllStoredGameActivityDefinitions()()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 200);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_35(v4);

  return v7();
}

uint64_t sub_227B4AD00()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_115();

  return v7(v2);
}

uint64_t dispatch thunk of GameActivityService.listAllStoredGameActivityInstances()()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 208);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_35(v4);

  return v7();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_4_5(unint64_t *a1)
{

  return sub_227B15A74(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_63_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_90_3()
{
  result = v0[11];
  v2 = v0[9];
  v3 = *(v0[10] + 8);
  return result;
}

void OUTLINED_FUNCTION_95_1()
{
  v1 = v0[16];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v7 = v0[3];
  v6 = v0[4];
}

uint64_t OUTLINED_FUNCTION_100(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_108_0()
{
  *(v1 + 8) = v0;
  v3 = v2[22];
  v4 = v2[7];
  return v2[4];
}

uint64_t OUTLINED_FUNCTION_113_0()
{

  return sub_227D49D18();
}

uint64_t OUTLINED_FUNCTION_114_0()
{
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[12];
}

id sub_227B4B12C()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x277D25F70];
    v3 = sub_227D4CFA8();
    v5 = sub_227B4BF60(v3, v4, v1);

    if (v5)
    {
      v6 = [v5 integerValue];

      return v6;
    }

    else
    {

      return sub_227BBBDB8();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227B4B1D0()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C58, qword_227D4F6F8);
  *v2 = v0;
  v2[1] = sub_227B4B2B8;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x8000000227D75390, sub_227B4B3CC, 0, v3);
}

uint64_t sub_227B4B2B8()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_227B4B3B4, 0, 0);
}

uint64_t sub_227B4B3CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C60, &qword_227D4F738);
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v34 - v8;
  v10 = sub_227D4CAB8();
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = static GameRestrictions.accountStore.getter();
  v20 = [v19 ams_activeiTunesAccount];

  if (v20 && (v21 = [v20 ams_DSID], v20, v21))
  {
    v39 = [objc_opt_self() exceptionConnection];
    [v39 activate];
    v37 = a1;
    v38 = v21;
    v22 = v2;
    v23 = *(v5 + 16);
    v23(v9, a1, v22);
    v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v25 = swift_allocObject();
    v36 = *(v5 + 32);
    v36(v25 + v24, v9, v22);
    v44 = sub_227B4BFE8;
    v45 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_227B4B9F0;
    v43 = &block_descriptor;
    v26 = _Block_copy(&aBlock);

    v35 = [v39 asynchronousExceptionServiceWithErrorHandler_];
    _Block_release(v26);
    v23(v9, v37, v22);
    v27 = swift_allocObject();
    v36(v27 + v24, v9, v22);
    v44 = sub_227B4C110;
    v45 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_227B4BE80;
    v43 = &block_descriptor_8;
    v28 = _Block_copy(&aBlock);

    v29 = v38;
    [v35 fetchAllAppExceptionsForRequesterDSID:v38 completionHandler:v28];
    _Block_release(v28);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_227D4AA58();
    v31 = sub_227D4CA98();
    v32 = sub_227D4D438();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_227B0D000, v31, v32, "Error fetching exceptions: No iCloud account", v33, 2u);
      OUTLINED_FUNCTION_5_2();
    }

    (*(v13 + 8))(v18, v10);
    aBlock = sub_227D4CE28();
    return sub_227D4D2A8();
  }
}

uint64_t sub_227B4B820(void *a1)
{
  v2 = sub_227D4CAB8();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  sub_227D4AA58();
  v11 = a1;
  v12 = sub_227D4CA98();
  v13 = sub_227D4D438();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_227B0D000, v12, v13, "Error connecting to exception service: %@", v14, 0xCu);
    sub_227B2A0F8(v15);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();
  }

  (*(v5 + 8))(v10, v2);
  sub_227D4CE28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C60, &qword_227D4F738);
  return sub_227D4D2A8();
}

void sub_227B4B9F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_227B4BA58(unint64_t a1, void *a2)
{
  v4 = sub_227D4CAB8();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  if (!a1 || a2)
  {
    sub_227D4AA58();
    v13 = a2;
    v14 = sub_227D4CA98();
    v15 = sub_227D4D438();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      if (a2)
      {
        v18 = a2;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v16 + 4) = v19;
      *v17 = v20;
      _os_log_impl(&dword_227B0D000, v14, v15, "Error fetching exceptions: %@", v16, 0xCu);
      sub_227B2A0F8(v17);
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_5_2();
    }

    (*(v7 + 8))(v12, v4);
    sub_227D4CE28();
    goto LABEL_34;
  }

  v21 = sub_227D4CE28();
  v52 = sub_227B4BF3C(a1);
  if (!v52)
  {
LABEL_34:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C60, &qword_227D4F738);
    return sub_227D4D2A8();
  }

  v22 = 0;
  v50 = a1;
  v51 = a1 & 0xC000000000000001;
  v49 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v51)
    {
      v23 = MEMORY[0x22AAA63D0](v22, a1);
    }

    else
    {
      if (v22 >= *(v49 + 16))
      {
        goto LABEL_39;
      }

      v23 = *(a1 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    v26 = [v23 bundleIdentifier];
    v27 = sub_227D4CFA8();
    v29 = v28;

    if (v21[2] && (v30 = sub_227B2664C(v27, v29), (v31 & 1) != 0))
    {
      v32 = *(v21[7] + 8 * v30);
    }

    else
    {
      v32 = 0;
    }

    v33 = [v24 ratingValue];
    if (v33 < 0)
    {
      goto LABEL_36;
    }

    v53 = v22;
    if (v33 <= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v33;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v35 = v27;
    v36 = v27;
    v37 = v29;
    v38 = sub_227B2664C(v36, v29);
    if (__OFADD__(v21[2], (v39 & 1) == 0))
    {
      goto LABEL_37;
    }

    v40 = v38;
    v41 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C70, &qword_227D4F748);
    if (sub_227D4D7C8())
    {
      v42 = sub_227B2664C(v35, v37);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_40;
      }

      v40 = v42;
    }

    if (v41)
    {

      *(v21[7] + 8 * v40) = v34;
    }

    else
    {
      v21[(v40 >> 6) + 8] |= 1 << v40;
      v44 = (v21[6] + 16 * v40);
      *v44 = v35;
      v44[1] = v37;
      *(v21[7] + 8 * v40) = v34;

      v45 = v21[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_38;
      }

      v21[2] = v47;
    }

    v22 = v53 + 1;
    a1 = v50;
    if (v25 == v52)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}

uint64_t sub_227B4BE80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_227B4C19C();
    v4 = sub_227D4D1C8();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_227B4BF3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_227D4D808();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_227B4BF60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_227D4CF78();

  v5 = [a3 effectiveValueForSetting_];

  return v5;
}

uint64_t sub_227B4BFE8(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C60, &qword_227D4F738) - 8) + 80);

  return sub_227B4B820(a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C60, &qword_227D4F738);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_227B4C110(unint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C60, &qword_227D4F738) - 8) + 80);

  return sub_227B4BA58(a1, a2);
}

unint64_t sub_227B4C19C()
{
  result = qword_27D7E6C68;
  if (!qword_27D7E6C68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7E6C68);
  }

  return result;
}

uint64_t sub_227B4C1F4()
{
  v0 = sub_227D4ABE8();
  __swift_allocate_value_buffer(v0, qword_280E7BA60);
  v1 = __swift_project_value_buffer(v0, qword_280E7BA60);
  return sub_227B71BD8(v1);
}

uint64_t sub_227B4C258()
{
  v0 = sub_227D4ABE8();
  __swift_allocate_value_buffer(v0, qword_280E7BA78);
  v1 = __swift_project_value_buffer(v0, qword_280E7BA78);
  return sub_227B71BD8(v1);
}

uint64_t sub_227B4C2BC()
{
  OUTLINED_FUNCTION_6();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  v8 = type metadata accessor for GameServicesEnvironment(0);
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v11 = sub_227D4ABE8();
  v1[21] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[22] = v12;
  v14 = *(v13 + 64);
  v1[23] = OUTLINED_FUNCTION_30();
  v15 = sub_227D4AC38();
  OUTLINED_FUNCTION_5(v15);
  v17 = *(v16 + 64);
  v1[24] = OUTLINED_FUNCTION_30();
  v18 = sub_227D4AB78();
  v1[25] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[26] = v19;
  v21 = *(v20 + 64);
  v1[27] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_227B4C410()
{
  (*(v0[26] + 16))(v0[27], v0[13], v0[25]);
  if (_MergedGlobals_1 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[18];
  v9 = __swift_project_value_buffer(v4, qword_280E7BA60);
  v33 = *(v5 + 16);
  v33(v2, v9, v4);
  v11 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v11);
  (*(v10 + 8))(v11, v10);
  sub_227B4EC38(v7);
  sub_227D4AC08();
  v12 = sub_227D4AB58();
  sub_227D4AB48();
  v13 = MEMORY[0x277D0F9A8];
  sub_227B128F0(&qword_27D7E6CB8, MEMORY[0x277D0F9A8]);
  sub_227D4D3C8();
  sub_227B128F0(&qword_27D7E6CC0, v13);
  sub_227D4D408();
  v12(v0 + 2, 0);
  v14 = v8[3];
  v15 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v14);
  (*(v15 + 8))(v14, v15);
  v17 = *(v6 + 8);
  v16 = *(v6 + 16);
  sub_227D4CE58();
  sub_227B4EC38(v6);
  if (v16)
  {
    if (qword_280E7BA58 != -1)
    {
      swift_once();
    }

    v18 = v0[27];
    v20 = v0[23];
    v19 = v0[24];
    v21 = v0[21];
    v22 = __swift_project_value_buffer(v21, qword_280E7BA78);
    v33(v20, v22, v21);
    sub_227D4AC08();
    v23 = sub_227D4AB58();
    sub_227D4D3C8();
    sub_227D4D408();
    v23(v0 + 6, 0);
  }

  v34 = (v0[16] + *v0[16]);
  v24 = *(v0[16] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[28] = v25;
  *v25 = v26;
  v25[1] = sub_227B4C7EC;
  v27 = v0[27];
  v28 = v0[17];
  v29 = v0[14];
  v30 = v0[15];
  v31 = v0[12];

  return v34(v31, v27, v29, v30);
}

uint64_t sub_227B4C7EC()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 224);
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v5 + 232) = v0;

  if (!v0)
  {
    *(v5 + 240) = v3;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B4C8F8()
{
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_11_3();
  v2(v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 240);

  return v3(v4);
}

uint64_t sub_227B4C99C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_11_3();
  v2(v1);

  OUTLINED_FUNCTION_18();
  v4 = *(v0 + 232);

  return v3();
}

uint64_t sub_227B4CA4C()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_227B4CB24;

  return sub_227B4C2BC();
}

uint64_t sub_227B4CB24()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_227B4CC14()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = *(v2 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227B4CCC0()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 80) = v5;
  *v5 = v6;
  v5[1] = sub_227B4CD98;
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);

  return sub_227B71D5C();
}

uint64_t sub_227B4CD98()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B4CE98()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  sub_227B4D5E8(v2, v4, v0[2]);
  (*(v3 + 8))(v2, v4);
  v5 = v0[8];

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227B4CF44()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[8];

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227B4CFA8()
{
  OUTLINED_FUNCTION_6();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_227D4ACB8();
  v0[6] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[7] = v6;
  v8 = *(v7 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B4D054()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[8];
  v2 = v0[5];
  sub_227B4D42C();
  v10 = (v0[3] + *v0[3]);
  v3 = *(v0[3] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[9] = v4;
  *v4 = v5;
  v4[1] = sub_227B4D19C;
  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v6);
}

uint64_t sub_227B4D19C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = v5[9];
  v7 = v5[8];
  v8 = v5[7];
  v9 = v5[6];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v3 + 80) = v0;

  (*(v8 + 8))(v7, v9);
  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v15 = *(v3 + 64);

    OUTLINED_FUNCTION_18();

    return v16();
  }
}

uint64_t sub_227B4D324()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227B4D380()
{
  OUTLINED_FUNCTION_20();
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_227B355D0;

  return sub_227B4CFA8();
}

uint64_t sub_227B4D42C()
{
  v2 = sub_227D4C908();
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = sub_227D49188();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  result = sub_227D4C8C8();
  if (!v1)
  {
    v11 = v0[3];
    v12 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v11);
    v16[3] = v11;
    v16[4] = *(v12 + 8);
    __swift_allocate_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_14_0(v11);
    (*(v13 + 16))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C90, &qword_227D4F818);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_227D4E520;
    *(v14 + 56) = &type metadata for GameCenterServerClientWrapper.EnvironmentMiddleware;
    *(v14 + 64) = sub_227B4EADC();
    v15 = swift_allocObject();
    *(v14 + 32) = v15;
    sub_227B11EE8((v0 + 5), v15 + 16);
    sub_227B4E7D0();
    return sub_227D4ACA8();
  }

  return result;
}

uint64_t sub_227B4D5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = sub_227D4DBC8();
  OUTLINED_FUNCTION_6_2();
  v21 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  *(&v32 + 1) = a2;
  __swift_allocate_boxed_opaque_existential_1(&v31);
  OUTLINED_FUNCTION_14_0(a2);
  v13 = *(v12 + 16);
  v13();
  sub_227D4DBA8();
  sub_227D4DBB8();
  sub_227D4D7A8();
  while (1)
  {
    sub_227D4D848();
    if (!*(&v30 + 1))
    {

LABEL_23:
      (*(v21 + 8))(v11, v34);
      return (v13)(a3, a1, a2);
    }

    v25 = v28;
    v26 = v29;
    v27 = v30;
    if (*(&v28 + 1))
    {
      v14 = v25 == 0x737574617473 && *(&v28 + 1) == 0xE600000000000000;
      if (v14 || (sub_227D4DA78() & 1) != 0)
      {
        break;
      }
    }

    sub_227B4DB00(&v25, &qword_27D7E6C78, qword_227D506E0);
  }

  v31 = v25;
  v32 = v26;
  v33 = v27;
  sub_227B4DA90(&v31, &v28);

  if ((swift_dynamicCast() & 1) == 0 || (v15 = v25) == 0)
  {
    sub_227B4DB00(&v31, &qword_27D7E6C78, qword_227D506E0);
    goto LABEL_23;
  }

  sub_227D4DBB8();
  sub_227D4D7A8();
  while (1)
  {
    sub_227D4D848();
    if (!*(&v27 + 1))
    {
      break;
    }

    v22 = v25;
    v23 = v26;
    v24 = v27;
    if (*(&v25 + 1))
    {
      v16 = v22 == 0x6567617373656DLL && *(&v25 + 1) == 0xE700000000000000;
      if (v16 || (sub_227D4DA78() & 1) != 0)
      {

        v28 = v22;
        v29 = v23;
        v30 = v24;

        sub_227B4DB5C(&v29, &v25);
        swift_dynamicCast();
        goto LABEL_26;
      }
    }

    sub_227B4DB00(&v22, &qword_27D7E6C78, qword_227D506E0);
  }

LABEL_26:
  *(&v29 + 1) = MEMORY[0x277D849A8];
  LODWORD(v28) = v15;
  sub_227D49E08();
  OUTLINED_FUNCTION_0_2();
  sub_227B128F0(v18, v19);
  swift_allocError();
  sub_227D49DE8();

  sub_227B4DB00(&v28, &qword_27D7E6C80, &unk_227D4F780);
  swift_willThrow();
  sub_227B4DB00(&v31, &qword_27D7E6C78, qword_227D506E0);
  return (*(v21 + 8))(v11, v34);
}

uint64_t sub_227B4DA90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C78, qword_227D506E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227B4DB00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_14_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

_OWORD *sub_227B4DB5C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_227B4DB6C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = *(*a2 + *MEMORY[0x277D84DE8] + 8);
  OUTLINED_FUNCTION_6_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  v14 = *v13;
  OUTLINED_FUNCTION_6_2();
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v29 - v21;
  result = sub_227B4D5E8(v20, v14, v29 - v21);
  if (!v3)
  {
    swift_getAtKeyPath();
    (*(v16 + 8))(v22, v14);
    v24 = *(v5 + 16);
    if (__swift_getEnumTagSinglePayload(v12, 1, v24) == 1)
    {
      (*(v7 + 8))(v12, v5);
      v29[3] = v14;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
      (*(v16 + 16))(boxed_opaque_existential_1, a1, v14);
      sub_227D49E08();
      OUTLINED_FUNCTION_0_2();
      sub_227B128F0(v26, v27);
      OUTLINED_FUNCTION_18_2();
      swift_allocError();
      sub_227D49DD8();
      sub_227B4DB00(v29, &qword_27D7E6C80, &unk_227D4F780);
      return swift_willThrow();
    }

    else
    {
      OUTLINED_FUNCTION_14_0(v24);
      return (*(v28 + 32))(v30, v12, v24);
    }
  }

  return result;
}

uint64_t sub_227B4DDF0(uint64_t a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x277D84DE8]);
  OUTLINED_FUNCTION_6_2();
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  result = sub_227B4D5E8(v9, v3, &v13 - v10);
  if (!v2)
  {
    swift_getAtKeyPath();
    return (*(v5 + 8))(v11, v3);
  }

  return result;
}

uint64_t sub_227B4DEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  OUTLINED_FUNCTION_15();
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B4DF34()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 56);
  v8 = *(v0 + 24);
  v9 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *(v2 + 16) = *(v0 + 64);
  *(v2 + 32) = v8;
  *(v2 + 48) = v9;
  *(v2 + 64) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 88) = v3;
  *v3 = v4;
  v3[1] = sub_227B4E01C;
  v5 = *(v0 + 64);
  v6 = *(v0 + 16);

  return sub_227B71D5C();
}

uint64_t sub_227B4E01C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 80);

    OUTLINED_FUNCTION_18();

    return v13();
  }
}

uint64_t sub_227B4E138()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_18();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_227B4E194()
{
  OUTLINED_FUNCTION_6();
  v0[16] = v1;
  v0[17] = v2;
  v0[14] = v3;
  v0[15] = v4;
  v0[12] = v5;
  v0[13] = v6;
  v0[10] = v7;
  v0[11] = v8;
  v9 = sub_227D4D4F8();
  v0[18] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[19] = v10;
  v12 = *(v11 + 64);
  v0[20] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227B4E24C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[11];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_227B4E378;
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];

  return v11(v9, v7, v8, v2, v3);
}

uint64_t sub_227B4E378()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 176) = v8;

  if (v0)
  {
    v9 = *(v3 + 160);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_227B4E4B4()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  sub_227B4E76C(*(v0 + 120), *(v0 + 128), *(v0 + 176), (v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C80, &unk_227D4F780);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 160);
    v5 = *(v0 + 136);
    v6 = *(v0 + 80);

    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    OUTLINED_FUNCTION_14_0(v5);
    (*(v7 + 32))(v6, v4, v5);
  }

  else
  {
    v9 = *(v0 + 176);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 144);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, *(v0 + 136));
    (*(v11 + 8))(v10, v12);
    *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C88, &qword_227D4F810);
    *(v0 + 48) = v9;
    sub_227D49E08();
    OUTLINED_FUNCTION_0_2();
    sub_227B128F0(v13, v14);
    OUTLINED_FUNCTION_18_2();
    swift_allocError();
    OUTLINED_FUNCTION_15();
    sub_227D49DF8();
    sub_227B4DB00(v0 + 48, &qword_27D7E6C80, &unk_227D4F780);
    swift_willThrow();
    v15 = *(v0 + 160);
  }

  OUTLINED_FUNCTION_18();

  return v8();
}

uint64_t sub_227B4E694()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_227B3E2E8;

  return sub_227B4E194();
}

double sub_227B4E76C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_227B2664C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_227B1B268(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_227B4E7D0()
{
  v0 = sub_227D4C958();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4[3] = sub_227D4C968();
  v4[4] = MEMORY[0x277D379F8];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_227D4C918();
  sub_227B4E988();
  v3[3] = sub_227D4C988();
  v3[4] = MEMORY[0x277D37A10];
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_227D4C978();
  return sub_227D4C8F8();
}

uint64_t sub_227B4E8B0(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 0x61656C6572657270;
  }

  else
  {
    v2 = 1702259052;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xEA00000000006573;
  }

  return MEMORY[0x282197EC8](v2, v3);
}

uint64_t sub_227B4E8EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_227B4E92C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

      return OUTLINED_FUNCTION_16_2(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_16_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_227B4E988()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C98, &qword_227D4F820);
  v0 = *(sub_227D4C958() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_227D4F750;
  sub_227D4C938();
  sub_227D4C948();
  sub_227B128F0(&qword_27D7E6CA0, MEMORY[0x277D379D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CA8, &qword_227D4F828);
  sub_227B4EB30();
  return sub_227D4D5B8();
}

unint64_t sub_227B4EADC()
{
  result = qword_27D7EAFA0[0];
  if (!qword_27D7EAFA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EAFA0);
  }

  return result;
}

unint64_t sub_227B4EB30()
{
  result = qword_27D7E6CB0;
  if (!qword_27D7E6CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6CA8, &qword_227D4F828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6CB0);
  }

  return result;
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

uint64_t sub_227B4EBA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_227B4EBE8(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_16_2(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_16_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_227B4EC38(uint64_t a1)
{
  v2 = type metadata accessor for GameServicesEnvironment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227B4EC94()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4A058();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B4ED38()
{
  OUTLINED_FUNCTION_6();
  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D0D040], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_227B4EDEC;
  v2 = v0[6];
  v3 = v0[3];
  OUTLINED_FUNCTION_53(v0[2]);

  return sub_227B4EFC0();
}

uint64_t sub_227B4EDEC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = v5[7];
  v7 = v5[6];
  v8 = v5[5];
  v9 = v5[4];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v3 + 64) = v0;

  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_91_0();
  v14(v13);
  if (v0)
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  else
  {
    v19 = *(v3 + 48);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_164();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_227B4EF64()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_18();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_227B4EFC0()
{
  OUTLINED_FUNCTION_6();
  v1[55] = v2;
  v1[56] = v0;
  v1[54] = v3;
  v4 = sub_227D49AB8();
  v1[57] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[58] = v5;
  v7 = *(v6 + 64);
  v1[59] = OUTLINED_FUNCTION_121();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[64] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[65] = v9;
  v11 = *(v10 + 64);
  v1[66] = OUTLINED_FUNCTION_30();
  v12 = sub_227D4A058();
  v1[67] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[68] = v13;
  v15 = *(v14 + 64);
  v1[69] = OUTLINED_FUNCTION_121();
  v1[70] = swift_task_alloc();
  v16 = sub_227D4CAB8();
  v1[71] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[72] = v17;
  v19 = *(v18 + 64);
  v1[73] = OUTLINED_FUNCTION_121();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

void sub_227B4F218(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_t log, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_83_1();
  a35 = v37;
  a36 = v38;
  OUTLINED_FUNCTION_98_1();
  a34 = v36;
  v39 = *(v36 + 432);
  v40 = sub_227D4A6A8();
  *(v36 + 680) = v40;
  *(v36 + 688) = v41;
  v50 = v40;
  v51 = v41;
  v52 = *(v36 + 672);
  v53 = *(v36 + 560);
  v54 = *(v36 + 544);
  v55 = *(v36 + 536);
  v56 = *(v36 + 440);
  sub_227D4AA58();
  v167 = *(v54 + 16);
  v167(v53, v56, v55);
  sub_227D4CE58();
  v57 = sub_227D4CA98();
  LODWORD(v52) = sub_227D4D428();

  LODWORD(a20) = v52;
  v58 = os_log_type_enabled(v57, v52);
  v59 = *(v36 + 672);
  v60 = *(v36 + 576);
  v164 = *(v36 + 568);
  v61 = *(v36 + 560);
  v62 = *(v36 + 544);
  v63 = *(v36 + 536);
  v161 = v50;
  if (v58)
  {
    log = v57;
    v64 = OUTLINED_FUNCTION_12_1();
    a17 = swift_slowAlloc();
    a23 = a17;
    *v64 = 136315394;
    v65 = OUTLINED_FUNCTION_132_0();
    *(v64 + 4) = sub_227B1B1A4(v65, v66, v67);
    *(v64 + 12) = 2080;
    a18 = v59;
    v68 = sub_227D4A048();
    v70 = v69;
    v71 = *(v62 + 8);
    v72 = OUTLINED_FUNCTION_147();
    v73(v72);
    v74 = sub_227B1B1A4(v68, v70, &a23);

    *(v64 + 14) = v74;
    _os_log_impl(&dword_227B0D000, log, a20, "Refreshing game activity for %s with preference: %s", v64, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_44_3();

    v77 = *(v60 + 8);
    v75 = (v60 + 8);
    v76 = v77;
    v77(a18, v164);
  }

  else
  {

    v78 = *(v62 + 8);
    v79 = OUTLINED_FUNCTION_147();
    v80(v79);
    v81 = *(v60 + 8);
    v75 = (v60 + 8);
    v76 = v81;
    v81(v59, v164);
  }

  *(v36 + 696) = v76;
  v82 = *(v36 + 544);
  v167(*(v36 + 552), *(v36 + 440), *(v36 + 536));
  v83 = *(v82 + 88);
  v84 = OUTLINED_FUNCTION_57_0();
  v86 = v85(v84);
  if (v86 == *MEMORY[0x277D0D038])
  {
    v87 = *(v36 + 664);
    sub_227D4AA58();
    sub_227D4CE58();
    v88 = sub_227D4CA98();
    v89 = sub_227D4D428();

    v90 = OUTLINED_FUNCTION_160_0();
    v91 = *(v36 + 664);
    v92 = *(v36 + 576);
    v93 = *(v36 + 568);
    if (v90)
    {
      v168 = *(v36 + 664);
      v91 = &loc_227D4E000;
      v94 = OUTLINED_FUNCTION_129();
      v75 = OUTLINED_FUNCTION_14_5();
      a23 = v75;
      *v94 = 136315138;
      *(v94 + 4) = sub_227B1B1A4(v161, v51, &a23);
      _os_log_impl(&dword_227B0D000, v88, v89, "Always refresh preference - bypassing cache for game activity: %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_4_3();

      v95 = v168;
    }

    else
    {

      v95 = v91;
    }

    v76(v95, v93);
    v98 = *(v36 + 448);
    v99 = sub_227D1CC44();
    v100 = *(v36 + 688);
    if (v99)
    {
      v101 = *(v36 + 632);
      sub_227D4AA58();
      sub_227D4CE58();
      v102 = sub_227D4CA98();
      sub_227D4D428();
      OUTLINED_FUNCTION_151_0();
      OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_165_1();
      if (v103)
      {
        v104 = *(v36 + 680);
        v169 = *(v36 + 632);
        OUTLINED_FUNCTION_54_3();
        a23 = OUTLINED_FUNCTION_55_3();
        *v75 = 136315138;
        v105 = OUTLINED_FUNCTION_82();
        sub_227B1B1A4(v105, v106, v107);
        OUTLINED_FUNCTION_184_0();
        *(v75 + 4) = v104;
        OUTLINED_FUNCTION_36_2(&dword_227B0D000, v108, v109, "Skipping refreshing game activities for %s in debug mode");
        OUTLINED_FUNCTION_77();
        OUTLINED_FUNCTION_48_1();

        v110 = v169;
      }

      else
      {
        v124 = *(v36 + 632);
        OUTLINED_FUNCTION_144_0();

        v110 = OUTLINED_FUNCTION_69_1();
      }

      v92(v110, v91);
      OUTLINED_FUNCTION_4_6();
      v155 = v126;
      v156 = v125;
      v157 = *(v36 + 560);
      loga = *(v36 + 552);
      v159 = *(v36 + 528);
      v160 = *(v36 + 504);
      v162 = *(v36 + 496);
      v163 = *(v36 + 488);
      v165 = *(v36 + 480);
      v171 = *(v36 + 472);

      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_52();

      v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, v155, v156, v157, loga, v159, v160, v162, v163, v165, v171, a23, a24, a25, a26, a27, a28);
    }

    else
    {
      v112 = *(v36 + 624);
      sub_227D4AA58();
      sub_227D4CE58();
      v113 = sub_227D4CA98();
      sub_227D4D458();
      OUTLINED_FUNCTION_151_0();
      v114 = OUTLINED_FUNCTION_107();
      v115 = *(v36 + 696);
      if (v114)
      {
        v116 = *(v36 + 688);
        v117 = *(v36 + 680);
        v170 = *(v36 + 624);
        OUTLINED_FUNCTION_54_3();
        a23 = OUTLINED_FUNCTION_55_3();
        *v75 = 136315138;
        v118 = OUTLINED_FUNCTION_82();
        *(v75 + 4) = sub_227B1B1A4(v118, v119, v120);
        OUTLINED_FUNCTION_36_2(&dword_227B0D000, v121, v122, "Proceeding with game activity refresh for: %s");
        OUTLINED_FUNCTION_77();
        OUTLINED_FUNCTION_48_1();

        v123 = v170;
      }

      else
      {
        v132 = *(v36 + 624);
        OUTLINED_FUNCTION_144_0();

        v123 = OUTLINED_FUNCTION_69_1();
      }

      v115(v123, v91);
      v133 = *(v36 + 688);
      v134 = *(v36 + 680);
      v135 = *(v36 + 528);
      v136 = *(v36 + 448);
      v137 = *(v36 + 432);
      v138 = v136[80];
      __swift_project_boxed_opaque_existential_1(v136 + 76, v136[79]);
      v139 = *(v138 + 64);
      v140 = OUTLINED_FUNCTION_147();
      *(v36 + 1002) = v141(v140) & 1;

      sub_227CFC560(v135);
      v166 = OUTLINED_FUNCTION_84_0();
      OUTLINED_FUNCTION_36_0();
      v172 = v142 + *v142;
      v144 = *(v143 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v36 + 792) = v145;
      *v145 = v146;
      OUTLINED_FUNCTION_9_4(v145);
      OUTLINED_FUNCTION_52();

      v152(v147, v148, v149, v150, v151, v152, v153, v154, a9, a10, a11, a12, a13, a14, a15, log, a17, a18, v161, a20, v166, v172, a23, a24, a25, a26, a27, a28);
    }
  }

  else
  {
    if (v86 == *MEMORY[0x277D0D040])
    {
      v96 = swift_task_alloc();
      *(v36 + 704) = v96;
      *v96 = v36;
      v97 = sub_227B4FB70;
    }

    else
    {
      if (v86 != *MEMORY[0x277D0D048])
      {
        v127 = *(v36 + 536);
        v128 = *(v36 + 440);
        a23 = 0;
        a24 = 0xE000000000000000;
        sub_227D4D668();
        v129 = a24;
        *(v36 + 416) = a23;
        *(v36 + 424) = v129;
        MEMORY[0x22AAA5DA0](0xD000000000000014, 0x8000000227D752D0);
        sub_227D4D7B8();
        MEMORY[0x22AAA5DA0](0xD00000000000001ELL, 0x8000000227D754A0);
        v130 = *(v36 + 416);
        v131 = *(v36 + 424);
        sub_227D4D7F8();
        OUTLINED_FUNCTION_52();
        return;
      }

      v96 = swift_task_alloc();
      *(v36 + 752) = v96;
      *v96 = v36;
      v97 = sub_227B503B4;
    }

    v96[1] = v97;
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_52();

    sub_227D22470();
  }
}