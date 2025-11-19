uint64_t sub_249CFEA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_249D04B2C();
  v4[3] = sub_249D04B1C();
  v6 = sub_249D04ADC();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_249CFEAEC, v6, v5);
}

uint64_t sub_249CFEAEC()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_249CFEB10, v1, 0);
}

uint64_t sub_249CFEB10()
{
  v1 = v0[6];
  sub_249CFDA00();
  v2 = v0[4];
  v3 = v0[5];

  return MEMORY[0x2822009F8](sub_249CFEB74, v2, v3);
}

uint64_t sub_249CFEB74()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_249CFEC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  return MEMORY[0x2822009F8](sub_249CFEC34, 0, 0);
}

uint64_t sub_249CFEC34()
{
  v1 = *(v0 + 104);
  v2 = *(*(v0 + 88) + 32);
  *(v0 + 16) = *v1;
  v4 = *(v1 + 32);
  v3 = *(v1 + 48);
  v5 = *(v1 + 16);
  *(v0 + 80) = *(v1 + 64);
  *(v0 + 48) = v4;
  *(v0 + 64) = v3;
  *(v0 + 32) = v5;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_249CE693C;
  v7 = *(v0 + 96);

  return sub_249CFD59C(v7, (v0 + 16));
}

uint64_t sub_249CFECF8()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v10 = *v1;

  if (v0)
  {

    v4 = *(v2 + 568);
    v5 = *(v2 + 616);
    swift_unknownObjectRelease();

    v6 = sub_249CFF100;
  }

  else
  {
    v7 = *(v2 + 568);
    v8 = *(v2 + 616);
    swift_unknownObjectRelease();

    v6 = sub_249CFEE30;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_249CFEE30()
{
  v1 = *(v0 + 648);
  if (!v1)
  {
    goto LABEL_26;
  }

  v2 = *(v0 + 656);
  if (v2)
  {
    v3 = *(v0 + 688);
    v4 = *(v0 + 680);
    v5 = v2;
    v6 = v1;
    os_unfair_lock_lock(v4 + 4);
    *(v0 + 176) = *v3;
    v7 = v3[1];
    v8 = v3[2];
    v9 = v3[3];
    *(v0 + 233) = *(v3 + 57);
    *(v0 + 208) = v8;
    *(v0 + 224) = v9;
    *(v0 + 192) = v7;
    v10 = v5;
    sub_249D03320(v3, v0 + 416, &qword_27EF19970, &qword_249D080A0);
    sub_249CFD420(v2, (v0 + 176));
    os_unfair_lock_unlock(v4 + 4);
  }

  else
  {
    v11 = v1;
  }

  v12 = *(v0 + 696) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  v13 = v1;
  os_unfair_lock_lock(v12);
  v14 = *(v12 + 24);
  if (v14 != 1)
  {
    sub_249CE3970(*(v12 + 8), *(v12 + 16), v14);
    *(v12 + 8) = v1;
    *(v12 + 16) = 256;
    *(v12 + 24) = 0;
    v15 = v13;
  }

  v16 = *(v0 + 696);
  os_unfair_lock_unlock(v12);
  v17 = v16 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners;
  os_unfair_lock_lock((v16 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners));
  v18 = *(v17 + 8);
  v35 = v13;
  v36 = v2;
  if (v18 >> 62)
  {
    v19 = sub_249D04CEC();
    if (v19)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_9:
      if (v19 >= 1)
      {
        for (i = 0; i != v19; ++i)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            MEMORY[0x24C1FED90](i, v18);
          }

          else
          {
            v21 = *(v18 + 8 * i + 32);
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong thumbnailLoaded_];
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_18;
      }

      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }
  }

LABEL_18:
  v23 = *(v0 + 696);
  os_unfair_lock_unlock(v17);
  v24 = v23 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers;
  os_unfair_lock_lock((v23 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers));
  v25 = *(v24 + 8);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = (v25 + 40);
    do
    {
      v29 = *(v27 - 1);
      v28 = *v27;

      v29(v30);

      v27 += 2;
      --v26;
    }

    while (v26);
    v31 = *(v24 + 8);
  }

  v32 = MEMORY[0x277D84F90];
  *(v24 + 8) = MEMORY[0x277D84F90];

  os_unfair_lock_unlock(v24);
  os_unfair_lock_lock(v17);
  v33 = *(v17 + 8);
  *(v17 + 8) = v32;

  os_unfair_lock_unlock(v17);

  sub_249D03388(v1, v36);
  v34 = *(v0 + 8);

  v34();
}

uint64_t sub_249CFF104()
{
  v1 = *(v0 + 728);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ImageCache.deinit()
{
  sub_249CE9184(v0 + 24, &qword_27EF19700, &qword_249D07718);
  v1 = *(v0 + 32);

  return v0;
}

uint64_t ImageCache.__deallocating_deinit()
{
  sub_249CE9184(v0 + 24, &qword_27EF19700, &qword_249D07718);
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_249CFF1EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19990, &qword_249D08100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF19998, &qword_249D08108);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_249CFF334(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19960, &qword_249D08080);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19968, &qword_249D08088);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_249CFF468(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19928, &qword_249D08018);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E8, &qword_249D07FC0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E8, &qword_249D07FC0) - 8);
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

uint64_t sub_249CFF658(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_249CFF724(v11, 0, 0, 1, a1, a2);
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
    sub_249CF91AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_249CFF724(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_249CFF830(a5, a6);
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
    result = sub_249D04CCC();
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

uint64_t sub_249CFF830(uint64_t a1, unint64_t a2)
{
  v4 = sub_249CFF87C(a1, a2);
  sub_249CFF9AC(&unk_285CEAA68);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_249CFF87C(uint64_t a1, unint64_t a2)
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

  v6 = sub_249CFFA98(v5, 0);
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

  result = sub_249D04CCC();
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
        v10 = sub_249D04A8C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_249CFFA98(v10, 0);
        result = sub_249D04C9C();
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

uint64_t sub_249CFF9AC(uint64_t result)
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

  result = sub_249CFFB0C(result, v12, 1, v3);
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

void *sub_249CFFA98(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19980, &qword_249D080D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_249CFFB0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19980, &qword_249D080D0);
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

uint64_t sub_249CFFC00(_OWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 49);
  *v48 = *(a2 + 33);
  *&v48[16] = v8;
  *&v48[32] = *(a2 + 65);
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_249D04D7C();
  v11 = *a2;
  sub_249D04C5C();
  if (v4 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v4;
  }

  MEMORY[0x24C1FEE80](*&v12);
  if (v5 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v5;
  }

  MEMORY[0x24C1FEE80](*&v13);
  if (v6 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v6;
  }

  MEMORY[0x24C1FEE80](*&v14);
  v49 = *&v48[7];
  v50 = *&v48[23];
  v51 = v48[39];
  v41 = v7;
  sub_249D04D8C();
  sub_249D01748();
  v15 = sub_249D04DAC();
  v16 = -1 << *(v9 + 32);
  v17 = v15 & ~v16;
  if (((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_24:
    v24 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43[0] = *v35;
    sub_249CE93BC(a2, &v45);
    sub_249D00310(a2, v17, isUniquelyReferenced_nonNull_native);
    *v35 = *&v43[0];
    v26 = *(a2 + 48);
    a1[2] = *(a2 + 32);
    a1[3] = v26;
    *(a1 + 57) = *(a2 + 57);
    v27 = *(a2 + 16);
    result = 1;
    *a1 = *a2;
    a1[1] = v27;
    return result;
  }

  v18 = ~v16;
  sub_249CE6CC8(0, &qword_27EF198C0, 0x277D82BB8);
  while (1)
  {
    v19 = (*(v9 + 48) + 80 * v17);
    v45 = *v19;
    v21 = v19[2];
    v20 = v19[3];
    v22 = *(v19 + 57);
    v46 = v19[1];
    *v47 = v21;
    *&v47[25] = v22;
    *&v47[16] = v20;
    sub_249CE93BC(&v45, v43);
    if (sub_249D04C4C() & 1) == 0 || *(&v45 + 1) != v4 || *&v46 != v5 || *(&v46 + 1) != v6 || ((v47[0] ^ v41))
    {
      goto LABEL_13;
    }

    v23 = v51;
    if (v47[40])
    {
      break;
    }

    v39 = *&v47[8];
    v40 = *&v47[24];
    v37 = v49;
    v38 = v50;
    sub_249CE93F4(&v45);
    if ((v23 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v39, v37), vceqq_f64(v40, v38)), xmmword_249D076A0)) & 0xF) == 0)
    {
      goto LABEL_26;
    }

LABEL_14:
    v17 = (v17 + 1) & v18;
    if (((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if ((v51 & 1) == 0)
  {
LABEL_13:
    sub_249CE93F4(&v45);
    goto LABEL_14;
  }

  sub_249CE93F4(&v45);
LABEL_26:
  sub_249CE93F4(a2);
  v29 = (*(v9 + 48) + 80 * v17);
  v43[0] = *v29;
  v31 = v29[2];
  v30 = v29[3];
  v32 = *(v29 + 57);
  v43[1] = v29[1];
  v43[2] = v31;
  *(v44 + 9) = v32;
  v44[0] = v30;
  v33 = v29[3];
  a1[2] = v29[2];
  a1[3] = v33;
  *(a1 + 57) = *(v29 + 57);
  v34 = v29[1];
  *a1 = *v29;
  a1[1] = v34;
  sub_249CE93BC(v43, v42);
  return 0;
}

uint64_t sub_249CFFF4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E0, &qword_249D07FB8);
  v5 = sub_249D04C8C();
  v6 = v5;
  if (*(v3 + 16))
  {
    v7 = 0;
    v48 = v2;
    v49 = (v3 + 56);
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
    v12 = v5 + 56;
    v50 = v3;
    v51 = v5;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v53 = (v10 - 1) & v10;
LABEL_17:
      v19 = *(v3 + 48) + 80 * (v15 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      *v56 = *(v19 + 33);
      *&v56[3] = *(v19 + 36);
      v26 = *(v19 + 40);
      v25 = *(v19 + 48);
      v27 = *(v19 + 64);
      v55 = *(v19 + 56);
      v28 = *(v19 + 72);
      v29 = *(v6 + 40);
      sub_249D04D7C();
      sub_249D04C5C();
      if (v21 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v21;
      }

      MEMORY[0x24C1FEE80](*&v30);
      if (v22 == 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v22;
      }

      MEMORY[0x24C1FEE80](*&v31);
      if (v23 == 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v23;
      }

      MEMORY[0x24C1FEE80](*&v32);
      v54 = v24;
      sub_249D04D8C();
      v52 = v28;
      if (v28)
      {
        v33 = v27;
        v34 = v25;
        sub_249D04D8C();
        v35 = v55;
      }

      else
      {
        sub_249D04D8C();
        if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v36 = v26;
        }

        else
        {
          v36 = 0;
        }

        MEMORY[0x24C1FEE80](v36);
        v34 = v25;
        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v37 = v25;
        }

        else
        {
          v37 = 0;
        }

        MEMORY[0x24C1FEE80](v37);
        v35 = v55;
        if ((v55 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v38 = v55;
        }

        else
        {
          v38 = 0;
        }

        MEMORY[0x24C1FEE80](v38);
        v33 = v27;
        if ((v27 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = v27;
        }

        else
        {
          v39 = 0;
        }

        MEMORY[0x24C1FEE80](v39);
      }

      result = sub_249D04DAC();
      v6 = v51;
      v40 = -1 << *(v51 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v12 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v12 + 8 * v42);
          if (v46 != -1)
          {
            v13 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_56:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v41) & ~*(v12 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v51 + 48) + 80 * v13;
      *v14 = v20;
      *(v14 + 8) = v21;
      *(v14 + 16) = v22;
      *(v14 + 24) = v23;
      *(v14 + 32) = v54;
      *(v14 + 33) = *v56;
      *(v14 + 36) = *&v56[3];
      *(v14 + 40) = v26;
      *(v14 + 48) = v34;
      *(v14 + 56) = v35;
      *(v14 + 64) = v33;
      *(v14 + 72) = v52;
      ++*(v51 + 16);
      v3 = v50;
      v10 = v53;
    }

    v16 = v7;
    result = v49;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v49[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v53 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v47 = 1 << *(v3 + 32);
    if (v47 >= 64)
    {
      bzero(v49, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v49 = -1 << v47;
    }

    v2 = v48;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_249D00310(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_32;
  }

  if (a3)
  {
    sub_249CFFF4C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_249D007CC();
      goto LABEL_32;
    }

    sub_249D0095C(v6 + 1);
  }

  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_249D04D7C();
  v14 = *v5;
  sub_249D04C5C();
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x24C1FEE80](*&v15);
  if (v9 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v9;
  }

  MEMORY[0x24C1FEE80](*&v16);
  if (v10 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v10;
  }

  MEMORY[0x24C1FEE80](*&v17);
  v18 = *(v5 + 56);
  v44 = *(v5 + 40);
  v45 = v18;
  v46 = *(v5 + 72);
  v39 = v11;
  sub_249D04D8C();
  sub_249D01748();
  result = sub_249D04DAC();
  v19 = -1 << *(v12 + 32);
  a2 = result & ~v19;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    sub_249CE6CC8(0, &qword_27EF198C0, 0x277D82BB8);
    do
    {
      v21 = (*(v12 + 48) + 80 * a2);
      v41 = *v21;
      v23 = v21[2];
      v22 = v21[3];
      v24 = *(v21 + 57);
      v42 = v21[1];
      *v43 = v23;
      *&v43[25] = v24;
      *&v43[16] = v22;
      sub_249CE93BC(&v41, v40);
      if ((sub_249D04C4C() & 1) != 0 && *(&v41 + 1) == v8 && *&v42 == v9 && *(&v42 + 1) == v10 && ((v43[0] ^ v39) & 1) == 0)
      {
        v37 = *&v43[8];
        v38 = *&v43[24];
        v25 = v43[40];
        v35 = v44;
        v36 = v45;
        v26 = v46;
        result = sub_249CE93F4(&v41);
        if (v25)
        {
          if (v26)
          {
            goto LABEL_31;
          }
        }

        else if ((v26 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v37, v35), vceqq_f64(v38, v36)), xmmword_249D076A0)) & 0xF) == 0)
        {
LABEL_31:
          result = sub_249D04D5C();
          __break(1u);
          break;
        }
      }

      else
      {
        result = sub_249CE93F4(&v41);
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_32:
  v27 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v28 = (*(v27 + 48) + 80 * a2);
  *(v28 + 57) = *(v5 + 57);
  v29 = *(v5 + 48);
  v28[2] = *(v5 + 32);
  v28[3] = v29;
  v30 = *(v5 + 16);
  *v28 = *v5;
  v28[1] = v30;
  v31 = *(v27 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v33;
  }

  return result;
}

void *sub_249D00630()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19938, &qword_249D08028);
  v2 = *v0;
  v3 = sub_249D04C7C();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_249CE40CC(v23, v22))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 88 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v24 = *(v17 + 80);
      v23[3] = v19;
      v23[4] = v20;
      v21 = v17[1];
      v23[0] = *v17;
      v23[1] = v21;
      v23[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x51uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_249D007CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E0, &qword_249D07FB8);
  v2 = *v0;
  v3 = sub_249D04C7C();
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
    v10 = *(v2 + 56);
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
        v17 = 80 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        *&v24[9] = *(v18 + 57);
        *v24 = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x49uLL);
        result = sub_249CE93BC(v23, &v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_249D0095C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E0, &qword_249D07FB8);
  result = sub_249D04C8C();
  v6 = result;
  if (*(v3 + 16))
  {
    v47 = v2;
    v48 = result;
    v7 = 0;
    v8 = v3 + 56;
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
    v49 = v3;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v51 = (v11 - 1) & v11;
LABEL_17:
      v22 = (*(v3 + 48) + 80 * (v19 | (v7 << 6)));
      v24 = v22[2];
      v23 = v22[3];
      v25 = v22[1];
      *&v56[9] = *(v22 + 57);
      v55 = v24;
      *v56 = v23;
      v53 = *v22;
      v54 = v25;
      v26 = *(v6 + 40);
      sub_249D04D7C();
      v27 = *(&v53 + 1);
      v28 = v54;
      v29 = *(&v55 + 1);
      v30 = *v56;
      v31 = *&v56[8];
      v50 = *&v56[16];
      v32 = v56[24];
      sub_249CE93BC(&v53, v52);
      sub_249D04C5C();
      if (v27 == 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v27;
      }

      MEMORY[0x24C1FEE80](*&v33);
      if (*&v28 == 0.0)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = *&v28;
      }

      MEMORY[0x24C1FEE80](*&v34);
      if (*(&v28 + 1) == 0.0)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = *(&v28 + 1);
      }

      MEMORY[0x24C1FEE80](*&v35);
      sub_249D04D8C();
      if (v32 == 1)
      {
        sub_249D04D8C();
      }

      else
      {
        sub_249D04D8C();
        if ((v29 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v36 = v29;
        }

        else
        {
          v36 = 0;
        }

        MEMORY[0x24C1FEE80](v36);
        if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v37 = v30;
        }

        else
        {
          v37 = 0;
        }

        MEMORY[0x24C1FEE80](v37);
        if ((v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v38 = v31;
        }

        else
        {
          v38 = 0;
        }

        MEMORY[0x24C1FEE80](v38);
        if ((v50 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = v50;
        }

        else
        {
          v39 = 0;
        }

        MEMORY[0x24C1FEE80](v39);
      }

      result = sub_249D04DAC();
      v6 = v48;
      v3 = v49;
      v40 = -1 << *(v48 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v13 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v13 + 8 * v42);
          if (v46 != -1)
          {
            v14 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_54;
      }

      v14 = __clz(__rbit64((-1 << v41) & ~*(v13 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v48 + 48) + 80 * v14);
      v16 = v54;
      v17 = v55;
      v18 = *v56;
      *(v15 + 57) = *&v56[9];
      v15[2] = v17;
      v15[3] = v18;
      v15[1] = v16;
      *v15 = v53;
      ++*(v48 + 16);
      v11 = v51;
    }

    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v47;
        goto LABEL_52;
      }

      v21 = *(v8 + 8 * v7);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v51 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {

LABEL_52:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_249D00CCC(unint64_t result, uint64_t a2, void (*a3)(__int128 *, char *), uint64_t (*a4)(__int128 *))
{
  v4 = a2;
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(v4 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v43 = v6;
    v41 = (sub_249D04C6C() + 1) & ~v7;
    v42 = v9;
    v44 = v4;
    while (1)
    {
      v10 = 80 * v8;
      v11 = *(v4 + 40);
      v12 = (*(v4 + 48) + 80 * v8);
      v48 = *v12;
      v14 = v12[2];
      v13 = v12[3];
      v15 = v12[1];
      *&v51[9] = *(v12 + 57);
      v50 = v14;
      *v51 = v13;
      v49 = v15;
      sub_249D04D7C();
      v16 = *(&v48 + 1);
      v17 = v49;
      v19 = *(&v50 + 1);
      v18 = *v51;
      v21 = *&v51[8];
      v20 = *&v51[16];
      v22 = v51[24];
      a3(&v48, v47);
      sub_249D04C5C();
      if (v16 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v16;
      }

      MEMORY[0x24C1FEE80](*&v23);
      if (*&v17 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = *&v17;
      }

      MEMORY[0x24C1FEE80](*&v24);
      if (*(&v17 + 1) == 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = *(&v17 + 1);
      }

      MEMORY[0x24C1FEE80](*&v25);
      sub_249D04D8C();
      if (v22 == 1)
      {
        sub_249D04D8C();
      }

      else
      {
        sub_249D04D8C();
        if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v26 = v19;
        }

        else
        {
          v26 = 0;
        }

        MEMORY[0x24C1FEE80](v26);
        if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v27 = v18;
        }

        else
        {
          v27 = 0;
        }

        MEMORY[0x24C1FEE80](v27);
        if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v28 = v21;
        }

        else
        {
          v28 = 0;
        }

        MEMORY[0x24C1FEE80](v28);
        if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v29 = v20;
        }

        else
        {
          v29 = 0;
        }

        MEMORY[0x24C1FEE80](v29);
      }

      v30 = sub_249D04DAC();
      result = a4(&v48);
      v31 = v30 & v42;
      v4 = v44;
      if (v5 >= v41)
      {
        v32 = v43;
        if (v31 < v41)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v32 = v43;
        if (v31 >= v41)
        {
          goto LABEL_34;
        }
      }

      if (v5 >= v31)
      {
LABEL_34:
        v33 = *(v44 + 48);
        result = v33 + 80 * v5;
        v34 = (v33 + v10);
        if (80 * v5 < v10 || result >= v34 + 80 || v5 != v8)
        {
          result = memmove(result, v34, 0x50uLL);
        }

        v35 = *(v44 + 56);
        v36 = (v35 + 8 * v5);
        v37 = (v35 + 8 * v8);
        if (v5 != v8 || v36 >= v37 + 1)
        {
          *v36 = *v37;
          v5 = v8;
        }
      }

LABEL_4:
      v8 = (v8 + 1) & v42;
      if (((*(v32 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        *(v32 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
        goto LABEL_43;
      }
    }
  }

  *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_43:
  v38 = *(v4 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v40;
    ++*(v4 + 36);
  }

  return result;
}

void *sub_249D00FD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198D8, &qword_249D07FB0);
  v2 = *v0;
  v3 = sub_249D04CFC();
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
        v18 = (*(v2 + 48) + 80 * v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        *&v25[9] = *(v18 + 57);
        *v25 = v21;
        v24[0] = *v18;
        v24[1] = v20;
        v24[2] = v19;
        v22 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + 80 * v17), v18, 0x49uLL);
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_249CE93BC(v24, &v23);
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

id sub_249D01188()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19950, &qword_249D08060);
  v2 = *v0;
  v3 = sub_249D04CFC();
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
        v18 = (*(v2 + 48) + 80 * v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        *&v25[9] = *(v18 + 57);
        *v25 = v21;
        v24[0] = *v18;
        v24[1] = v20;
        v24[2] = v19;
        v22 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + 80 * v17), v18, 0x49uLL);
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_249CEA370(v24, &v23);
        result = v22;
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

unint64_t sub_249D01334(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_249D04C6C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v39 = v4;
      v40 = v2;
      v38 = (v8 + 1) & v7;
      while (1)
      {
        v9 = 80 * v6;
        v10 = (*(v3 + 48) + 80 * v6);
        v12 = v10[2];
        v11 = v10[3];
        v13 = v10[1];
        *&v45[9] = *(v10 + 57);
        v44 = v12;
        *v45 = v11;
        v42 = *v10;
        v43 = v13;
        v14 = v3;
        v15 = *(v3 + 40);
        sub_249D04D7C();
        v16 = *(&v42 + 1);
        v17 = v43;
        v18 = *(&v44 + 1);
        v19 = *v45;
        v21 = *&v45[8];
        v20 = *&v45[16];
        v22 = v45[24];
        sub_249CE93BC(&v42, v41);
        sub_249D04C5C();
        v23 = v16 == 0.0 ? 0.0 : v16;
        MEMORY[0x24C1FEE80](*&v23);
        v24 = *&v17 == 0.0 ? 0.0 : *&v17;
        MEMORY[0x24C1FEE80](*&v24);
        v25 = *(&v17 + 1) == 0.0 ? 0.0 : *(&v17 + 1);
        MEMORY[0x24C1FEE80](*&v25);
        sub_249D04D8C();
        if (v22 == 1)
        {
          sub_249D04D8C();
        }

        else
        {
          sub_249D04D8C();
          v26 = (v18 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v18 : 0;
          MEMORY[0x24C1FEE80](v26);
          v27 = (v19 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v19 : 0;
          MEMORY[0x24C1FEE80](v27);
          v28 = (v21 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v21 : 0;
          MEMORY[0x24C1FEE80](v28);
          v29 = (v20 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v20 : 0;
          MEMORY[0x24C1FEE80](v29);
        }

        v30 = sub_249D04DAC();
        sub_249CE93F4(&v42);
        v31 = v30 & v7;
        v2 = v40;
        v3 = v14;
        if (v40 >= v38)
        {
          break;
        }

        v4 = v39;
        if (v31 < v38)
        {
          goto LABEL_32;
        }

LABEL_33:
        v32 = *(v3 + 48);
        v33 = (v32 + 80 * v40);
        v34 = (v32 + v9);
        if (80 * v40 < v9 || v33 >= v34 + 80 || v40 != v6)
        {
          memmove(v33, v34, 0x50uLL);
          v2 = v6;
        }

LABEL_37:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_39;
        }

        v40 = v2;
      }

      v4 = v39;
      if (v31 < v38)
      {
        goto LABEL_37;
      }

LABEL_32:
      if (v40 < v31)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

LABEL_39:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v35 = *(v3 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v37;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_249D01630(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_249D04CEC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_249D04CBC();
  *v1 = result;
  return result;
}

uint64_t sub_249D016E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_249D04CEC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_249D04CBC();
}

uint64_t sub_249D01748()
{
  if (v0[4])
  {
    return sub_249D04D8C();
  }

  v3 = v0[2];
  v2 = v0[3];
  v5 = *v0;
  v4 = v0[1];
  sub_249D04D8C();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x24C1FEE80](v6);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x24C1FEE80](v7);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x24C1FEE80](v8);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x24C1FEE80](v9);
}

uint64_t sub_249D017D0(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x24C1FEE80](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x24C1FEE80](*&v3);
}

uint64_t sub_249D01820(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v34 = &v30 - v8;
  os_unfair_lock_lock((v1 + 16));

  *(v1 + 24) = a1;
  v9 = a1;
  os_unfair_lock_unlock((v1 + 16));
  swift_beginAccess();
  result = *(v1 + 40);
  v11 = *(result + 16);
  if (v11)
  {

    v12 = (v31 + 48);
    do
    {
      v14 = *(v12 - 2);
      v13 = *(v12 - 1);
      v15 = *v12;
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      *(v16 + 24) = v13;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v33 = v15;
        swift_retain_n();

        swift_unknownObjectRelease();
        v17 = swift_allocObject();
        *(v17 + 16) = sub_249D03238;
        *(v17 + 24) = v16;
        v18 = sub_249D04B6C();
        v19 = *(v18 - 8);
        v20 = v34;
        (*(v19 + 56))(v34, 1, 1, v18);
        sub_249D04B2C();

        v21 = sub_249D04B1C();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = MEMORY[0x277D85700];
        v22[4] = sub_249D039CC;
        v32 = v17;
        v22[5] = v17;
        v23 = v7;
        sub_249D03320(v20, v7, &qword_27EF19670, &qword_249D07600);
        LODWORD(v21) = (*(v19 + 48))(v7, 1, v18);

        if (v21 == 1)
        {
          sub_249CE9184(v7, &qword_27EF19670, &qword_249D07600);
        }

        else
        {
          sub_249D04B5C();
          (*(v19 + 8))(v7, v18);
        }

        v24 = v22[2];
        v25 = v22[3];
        swift_unknownObjectRetain();

        if (v24)
        {
          swift_getObjectType();
          v26 = sub_249D04ADC();
          v28 = v27;
          swift_unknownObjectRelease();
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        sub_249CE9184(v34, &qword_27EF19670, &qword_249D07600);
        v29 = swift_allocObject();
        *(v29 + 16) = &unk_249D08038;
        *(v29 + 24) = v22;
        if (v28 | v26)
        {
          v35 = 0;
          v36 = 0;
          v37 = v26;
          v38 = v28;
        }

        v7 = v23;
        swift_task_create();
      }

      else
      {
      }

      v12 += 3;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t _s21DocumentManagerUICore12ImageOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  v5 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v5 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0)
  {
    v6 = *(a2 + 64);
    if (*(a1 + 64))
    {
      if (*(a2 + 64))
      {
        return 1;
      }
    }

    else if ((*(a2 + 64) & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))), xmmword_249D076A0)) & 0xF) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s21DocumentManagerUICore9ThumbnailO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 1)
    {
      v2 = 2;
      if (*(a2 + 8) == 2)
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  v3 = 2;
  if (*(a1 + 8) == 2)
  {
    v3 = 3;
  }

  if (*(a1 + 16) != 1)
  {
    v3 = 0;
  }

  if (*(a1 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v2 == v4;
}

BOOL _s21DocumentManagerUICore9ThumbnailO1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v2 = 2;
      if (*(a1 + 8) == 2)
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  v3 = 2;
  if (*(a2 + 8) == 2)
  {
    v3 = 3;
  }

  if (*(a2 + 16) != 1)
  {
    v3 = 0;
  }

  if (*(a2 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v2 < v4;
}

unint64_t sub_249D01DDC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF19998, &qword_249D08108);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_249D01EC8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_249CFF1EC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_249D01DDC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_249D01F88(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_62:
    v6 = sub_249D04CEC();
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FED90](v7, v3);
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_53:
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
        goto LABEL_62;
      }

      v9 = *(v3 + 8 * v7 + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        v4 = a1;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v12 == sub_249D04CEC())
            {
              return v7;
            }
          }

          else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v7;
          }

          v5 = v3 & 0xC000000000000001;
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x24C1FED90](v12, v3);
          }

          else
          {
            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v15 = *(v3 + 8 * v12 + 32);
          }

          v16 = swift_unknownObjectWeakLoadStrong();

          if (!v16 || (swift_unknownObjectRelease(), v16 != a2))
          {
            if (v7 != v12)
            {
              if (v5)
              {
                v17 = MEMORY[0x24C1FED90](v7, v3);
                v18 = MEMORY[0x24C1FED90](v12, v3);
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_59;
                }

                v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v19)
                {
                  goto LABEL_60;
                }

                if (v12 >= v19)
                {
                  goto LABEL_61;
                }

                v17 = *(v3 + 32 + 8 * v7);
                v18 = *(v3 + 32 + 8 * v12);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_249D016E4(v3);
                v20 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v20) = 0;
              }

              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

              if ((v3 & 0x8000000000000000) != 0 || v20)
              {
                v3 = sub_249D016E4(v3);
                v5 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v12 & 0x8000000000000000) != 0)
                {
LABEL_50:
                  __break(1u);
                  return sub_249D04CEC();
                }
              }

              else if ((v12 & 0x8000000000000000) != 0)
              {
                goto LABEL_50;
              }

              if (v12 >= *(v5 + 16))
              {
                goto LABEL_58;
              }

              v13 = v5 + 8 * v12;
              v14 = *(v13 + 32);
              *(v13 + 32) = v17;

              *a1 = v3;
            }

            v8 = __OFADD__(v7++, 1);
            if (v8)
            {
              goto LABEL_57;
            }
          }

          v8 = __OFADD__(v12++, 1);
          if (v8)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_53;
    }
  }

  if (v5)
  {
    return sub_249D04CEC();
  }

  return *(v4 + 16);
}

uint64_t sub_249D02270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF196F0, &unk_249D076E0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_249D04CEC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_249D04CEC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_249D0237C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_249D04CEC();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_249D04CEC();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_249D01630(result);

  return sub_249D02270(v4, v2, 0);
}

uint64_t sub_249D02454()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_249D0247C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249CE6A30;

  return sub_249CFEC10(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t objectdestroy_2Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_249D02588(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_249CE6A30;

  return sub_249CFEA54(a1, v4, v5, v6);
}

unint64_t sub_249D02640()
{
  result = qword_27EF19708;
  if (!qword_27EF19708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF19708);
  }

  return result;
}

unint64_t sub_249D02698()
{
  result = qword_27EF19710;
  if (!qword_27EF19710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF19710);
  }

  return result;
}

unint64_t sub_249D026F0()
{
  result = qword_27EF19718;
  if (!qword_27EF19718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF19718);
  }

  return result;
}

uint64_t sub_249D02744(uint64_t a1, uint64_t a2)
{
  result = sub_249CE6C80(&unk_27EF19720, a2, type metadata accessor for NodeThumbnail);
  *(a1 + 8) = result;
  return result;
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

uint64_t sub_249D027E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_249D02838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_249D0289C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249D028BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_249D0291C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_249D02964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249D029B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_249D029FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_249D02AC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_249D02B10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21DocumentManagerUICore12ImageRequest33_595D9CE99B152AB33A118330F75FAEECLLC0dE5StateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_249D02B94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 17))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_249D02BE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_249D02C48(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_249D02CA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_249D02CF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249D02D9C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8) - 8);
  v4 = v1 + ((*(v3 + 80) + 104) & ~*(v3 + 80));

  return sub_249CFC2E4(a1, v1 + 16, v4);
}

uint64_t objectdestroy_130Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 96);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249D02EF4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249CE6A30;

  return sub_249CFC864(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t objectdestroy_142Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 112);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249D030D4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249CE6A30;

  return sub_249CFC500(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_249D03238()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_249D03260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249CE6A30;

  return sub_249CFA7BC(a1, v4, v5, v7, v6);
}

uint64_t sub_249D03320(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_249D03388(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_249D033C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_249CE6A34;

  return sub_249CEAABC(a1, v5);
}

uint64_t objectdestroy_160Tm(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_unknownObjectRelease();
  a1(*(v2 + 40));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_249D034DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_249CE6A30;

  return sub_249CFB8C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_249D035A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_249D036E4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_249D038EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_249D03934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double gotLoadHelper_x8__ICQCurrentInAppMessageChangedNotification(double result)
{
  if (!atomic_load(dlopenHelperFlag_iCloudQuotaUI))
  {
    return dlopenHelper_iCloudQuotaUI(result);
  }

  return result;
}

double gotLoadHelper_x8__ICQInAppMessageKey(double result)
{
  if (!atomic_load(dlopenHelperFlag_iCloudQuotaUI))
  {
    return dlopenHelper_iCloudQuotaUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___ICQInAppMessaging(double result)
{
  if (!atomic_load(dlopenHelperFlag_iCloudQuotaUI))
  {
    return dlopenHelper_iCloudQuotaUI(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_iCloudQuotaUI(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/iCloudQuotaUI.framework/iCloudQuotaUI", 0);
  atomic_store(1u, dlopenHelperFlag_iCloudQuotaUI);
  return a1;
}