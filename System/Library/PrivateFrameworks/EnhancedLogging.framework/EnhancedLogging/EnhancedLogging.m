char *sub_24A0637D8()
{
  *(v0 + OBJC_IVAR___ELBugSessionStatusProvider_connectionManager) = 0;
  v6.super_class = ELBugSessionStatusProvider;
  memset(v5, 0, sizeof(v5));
  v1 = objc_msgSendSuper2(&v6, sel_init);
  v2 = sub_24A068ACC(1, &unk_285D34BE8, 0, v5);
  v3 = *&v1[OBJC_IVAR___ELBugSessionStatusProvider_connectionManager];
  *&v1[OBJC_IVAR___ELBugSessionStatusProvider_connectionManager] = v2;

  return v1;
}

void sub_24A06389C()
{
  if (*(v0 + OBJC_IVAR___ELBugSessionStatusProvider_connectionManager))
  {

    v1 = sub_24A06F7EC();

    swift_unknownObjectRetain();
    v2 = sub_24A0761B8();
    [v1 bugSessionCollectionDidCompleteWithSessionIdentifier_];

    swift_unknownObjectRelease_n();
  }

  else
  {
    __break(1u);
  }
}

unint64_t type metadata accessor for ELBugSessionStatusProvider()
{
  result = qword_27EF31CA0;
  if (!qword_27EF31CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF31CA0);
  }

  return result;
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

uint64_t sub_24A063A48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_24A063A90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A063AEC(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  v4 = (result + 32);
  for (i = v2 - 1; ; --i)
  {
    memcpy(__dst, v4, sizeof(__dst));
    v7 = __dst[0];
    v6 = __dst[1];
    sub_24A06516C(__dst, &v39);
    v8 = *(v3 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v3 + 24);
    v10 = v39;
    v11 = sub_24A06E3E4(v7, v6);
    v13 = v10[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v10[3] < v16)
    {
      sub_24A064774(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_24A06E3E4(v7, v6);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_30;
      }

LABEL_8:
      v19 = v39;
      if (v17)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v20 = v11;
    sub_24A064BD0();
    v11 = v20;
    v19 = v39;
    if (v17)
    {
LABEL_9:
      *(v19[7] + 16 * v11) = xmmword_24A076D60;
      goto LABEL_13;
    }

LABEL_11:
    v19[(v11 >> 6) + 8] |= 1 << v11;
    v21 = (v19[6] + 16 * v11);
    *v21 = v7;
    v21[1] = v6;
    *(v19[7] + 16 * v11) = xmmword_24A076D60;
    v22 = v19[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v15)
    {
      goto LABEL_28;
    }

    v19[2] = v23;

LABEL_13:
    *(v3 + 24) = v19;
    v24 = *(v3 + 32);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v3 + 32);
    v26 = v39;
    v27 = sub_24A06E3E4(v7, v6);
    v29 = v26[2];
    v30 = (v28 & 1) == 0;
    v15 = __OFADD__(v29, v30);
    v31 = v29 + v30;
    if (v15)
    {
      goto LABEL_27;
    }

    v32 = v28;
    if (v26[3] < v31)
    {
      sub_24A064774(v31, v25);
      v27 = sub_24A06E3E4(v7, v6);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_30;
      }

LABEL_18:
      v34 = v39;
      if (v32)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    if (v25)
    {
      goto LABEL_18;
    }

    v35 = v27;
    sub_24A064BD0();
    v27 = v35;
    v34 = v39;
    if (v32)
    {
LABEL_19:
      *(v34[7] + 16 * v27) = xmmword_24A076D60;
      result = sub_24A0651C8(__dst);
      *(v3 + 32) = v34;
      if (!i)
      {
        return result;
      }

      goto LABEL_24;
    }

LABEL_22:
    v34[(v27 >> 6) + 8] |= 1 << v27;
    v36 = (v34[6] + 16 * v27);
    *v36 = v7;
    v36[1] = v6;
    *(v34[7] + 16 * v27) = xmmword_24A076D60;

    result = sub_24A0651C8(__dst);
    v37 = v34[2];
    v15 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v15)
    {
      goto LABEL_29;
    }

    v34[2] = v38;
    *(v3 + 32) = v34;
    if (!i)
    {
      return result;
    }

LABEL_24:
    v4 += 368;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_24A076448();
  __break(1u);
  return result;
}

char *sub_24A063DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 40) = 1;
  [*v4 setTotalUnitCount_];
  v11 = sub_24A0641FC(v72, a1, a2);
  if ((*(v10 + 16) & 1) == 0)
  {
    *(v10 + 8) = a4;
  }

  (v11)(v72, 0);
  v13 = sub_24A0641FC(v72, a1, a2);
  if ((*(v12 + 16) & 1) == 0)
  {
    *v12 = a3;
  }

  (v13)(v72, 0);
  v14 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CA8, &qword_24A076DD8);
  result = sub_24A0763A8();
  v16 = result;
  v17 = 0;
  v18 = 1 << *(v14 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v14 + 64;
  v21 = v19 & *(v14 + 64);
  v22 = (v18 + 63) >> 6;
  v23 = result + 64;
  if (v21)
  {
    while (1)
    {
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_14:
      v27 = v24 | (v17 << 6);
      v28 = (*(v14 + 48) + 16 * v27);
      v29 = *(*(v14 + 56) + 16 * v27);
      v30 = *v28;
      result = v28[1];
      *&v23[(v27 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v27;
      v31 = (*(v16 + 6) + 16 * v27);
      *v31 = v30;
      v31[1] = result;
      *(*(v16 + 7) + 8 * v27) = v29;
      v32 = *(v16 + 2);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      *(v16 + 2) = v34;

      if (!v21)
      {
        goto LABEL_9;
      }
    }

LABEL_58:
    __break(1u);
  }

  else
  {
LABEL_9:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if (v17 >= v22)
      {
        break;
      }

      v26 = *(v20 + 8 * v17);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    v35 = 0;
    v36 = 0;
    v37 = 1 << v16[32];
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v16 + 8);
    v40 = (v37 + 63) >> 6;
    do
    {
      if (!v39)
      {
        while (1)
        {
          v41 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_55;
          }

          if (v41 >= v40)
          {
            goto LABEL_29;
          }

          v39 = *&v23[8 * v41];
          ++v35;
          if (v39)
          {
            v35 = v41;
            goto LABEL_26;
          }
        }
      }

      v41 = v35;
LABEL_26:
      v42 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v43 = *(*(v16 + 7) + ((v41 << 9) | (8 * v42)));
      v33 = __OFADD__(v36, v43);
      v36 += v43;
    }

    while (!v33);
    __break(1u);
LABEL_29:

    result = sub_24A0763A8();
    v44 = result;
    v45 = 0;
    v46 = 1 << *(v14 + 32);
    v47 = *(v14 + 64);
    v48 = -1;
    if (v46 < 64)
    {
      v48 = ~(-1 << v46);
    }

    v49 = v48 & v47;
    v50 = (v46 + 63) >> 6;
    v51 = result + 64;
    if ((v48 & v47) == 0)
    {
LABEL_33:
      v53 = v45;
      while (1)
      {
        v45 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_56;
        }

        if (v45 >= v50)
        {
          v62 = 0;
          v63 = 0;
          v64 = 1 << v44[32];
          v65 = -1;
          if (v64 < 64)
          {
            v65 = ~(-1 << v64);
          }

          v66 = v65 & *(v44 + 8);
          v67 = (v64 + 63) >> 6;
          while (v66)
          {
            v68 = v62;
LABEL_50:
            v69 = __clz(__rbit64(v66));
            v66 &= v66 - 1;
            v70 = *(*(v44 + 7) + ((v68 << 9) | (8 * v69)));
            v33 = __OFADD__(v63, v70);
            v63 += v70;
            if (v33)
            {
              __break(1u);
LABEL_53:

              v71 = *(v5 + 8);
              [v71 setTotalUnitCount_];
              return [v71 setCompletedUnitCount_];
            }
          }

          while (1)
          {
            v68 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              goto LABEL_57;
            }

            if (v68 >= v67)
            {
              goto LABEL_53;
            }

            v66 = *&v51[8 * v68];
            ++v62;
            if (v66)
            {
              v62 = v68;
              goto LABEL_50;
            }
          }
        }

        v54 = *(v20 + 8 * v45);
        ++v53;
        if (v54)
        {
          v52 = __clz(__rbit64(v54));
          v49 = (v54 - 1) & v54;
          goto LABEL_38;
        }
      }
    }

    while (1)
    {
      v52 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
LABEL_38:
      v55 = v52 | (v45 << 6);
      v56 = (*(v14 + 48) + 16 * v55);
      v57 = *v56;
      result = v56[1];
      v58 = *(*(v14 + 56) + 16 * v55 + 8);
      *&v51[(v55 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v55;
      v59 = (*(v44 + 6) + 16 * v55);
      *v59 = v57;
      v59[1] = result;
      *(*(v44 + 7) + 8 * v55) = v58;
      v60 = *(v44 + 2);
      v33 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v33)
      {
        break;
      }

      *(v44 + 2) = v61;

      if (!v49)
      {
        goto LABEL_33;
      }
    }
  }

  __break(1u);
  return result;
}

void (*sub_24A0641FC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_24A064D38(v6, a2, a3);
  return sub_24A064284;
}

void sub_24A064284(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

char *sub_24A0642D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if ((*(v4 + 40) & 1) == 0)
  {
    [*(v4 + 8) cancel];
    [*v4 setTotalUnitCount_];
  }

  v11 = sub_24A0641FC(v72, a1, a2);
  if ((*(v10 + 16) & 1) == 0)
  {
    *(v10 + 8) = a4;
  }

  (v11)(v72, 0);
  v13 = sub_24A0641FC(v72, a1, a2);
  if ((*(v12 + 16) & 1) == 0)
  {
    *v12 = a3;
  }

  (v13)(v72, 0);
  v14 = *(v4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CA8, &qword_24A076DD8);
  result = sub_24A0763A8();
  v16 = result;
  v17 = 0;
  v18 = 1 << *(v14 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v14 + 64;
  v21 = v19 & *(v14 + 64);
  v22 = (v18 + 63) >> 6;
  v23 = result + 64;
  if (v21)
  {
    while (1)
    {
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_16:
      v27 = v24 | (v17 << 6);
      v28 = (*(v14 + 48) + 16 * v27);
      v29 = *(*(v14 + 56) + 16 * v27);
      v30 = *v28;
      result = v28[1];
      *&v23[(v27 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v27;
      v31 = (*(v16 + 6) + 16 * v27);
      *v31 = v30;
      v31[1] = result;
      *(*(v16 + 7) + 8 * v27) = v29;
      v32 = *(v16 + 2);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      *(v16 + 2) = v34;

      if (!v21)
      {
        goto LABEL_11;
      }
    }

LABEL_60:
    __break(1u);
  }

  else
  {
LABEL_11:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v17 >= v22)
      {
        break;
      }

      v26 = *(v20 + 8 * v17);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
        goto LABEL_16;
      }
    }

    v35 = 0;
    v36 = 0;
    v37 = 1 << v16[32];
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v16 + 8);
    v40 = (v37 + 63) >> 6;
    do
    {
      if (!v39)
      {
        while (1)
        {
          v41 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_57;
          }

          if (v41 >= v40)
          {
            goto LABEL_31;
          }

          v39 = *&v23[8 * v41];
          ++v35;
          if (v39)
          {
            v35 = v41;
            goto LABEL_28;
          }
        }
      }

      v41 = v35;
LABEL_28:
      v42 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v43 = *(*(v16 + 7) + ((v41 << 9) | (8 * v42)));
      v33 = __OFADD__(v36, v43);
      v36 += v43;
    }

    while (!v33);
    __break(1u);
LABEL_31:

    result = sub_24A0763A8();
    v44 = result;
    v45 = 0;
    v46 = 1 << *(v14 + 32);
    v47 = *(v14 + 64);
    v48 = -1;
    if (v46 < 64)
    {
      v48 = ~(-1 << v46);
    }

    v49 = v48 & v47;
    v50 = (v46 + 63) >> 6;
    v51 = result + 64;
    if ((v48 & v47) == 0)
    {
LABEL_35:
      v53 = v45;
      while (1)
      {
        v45 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_58;
        }

        if (v45 >= v50)
        {
          v62 = 0;
          v63 = 0;
          v64 = 1 << v44[32];
          v65 = -1;
          if (v64 < 64)
          {
            v65 = ~(-1 << v64);
          }

          v66 = v65 & *(v44 + 8);
          v67 = (v64 + 63) >> 6;
          while (v66)
          {
            v68 = v62;
LABEL_52:
            v69 = __clz(__rbit64(v66));
            v66 &= v66 - 1;
            v70 = *(*(v44 + 7) + ((v68 << 9) | (8 * v69)));
            v33 = __OFADD__(v63, v70);
            v63 += v70;
            if (v33)
            {
              __break(1u);
LABEL_55:

              v71 = *(v5 + 16);
              [v71 setTotalUnitCount_];
              return [v71 setCompletedUnitCount_];
            }
          }

          while (1)
          {
            v68 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              goto LABEL_59;
            }

            if (v68 >= v67)
            {
              goto LABEL_55;
            }

            v66 = *&v51[8 * v68];
            ++v62;
            if (v66)
            {
              v62 = v68;
              goto LABEL_52;
            }
          }
        }

        v54 = *(v20 + 8 * v45);
        ++v53;
        if (v54)
        {
          v52 = __clz(__rbit64(v54));
          v49 = (v54 - 1) & v54;
          goto LABEL_40;
        }
      }
    }

    while (1)
    {
      v52 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
LABEL_40:
      v55 = v52 | (v45 << 6);
      v56 = (*(v14 + 48) + 16 * v55);
      v57 = *v56;
      result = v56[1];
      v58 = *(*(v14 + 56) + 16 * v55 + 8);
      *&v51[(v55 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v55;
      v59 = (*(v44 + 6) + 16 * v55);
      *v59 = v57;
      v59[1] = result;
      *(*(v44 + 7) + 8 * v55) = v58;
      v60 = *(v44 + 2);
      v33 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v33)
      {
        break;
      }

      *(v44 + 2) = v61;

      if (!v49)
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24A064774(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CB0, &qword_24A076DE0);
  v36 = a2;
  result = sub_24A0763B8();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_24A076498();
      sub_24A0761F8();
      result = sub_24A0764B8();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A064A20(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A076328() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24A076498();

      sub_24A0761F8();
      v13 = sub_24A0764B8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
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

void *sub_24A064BD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CB0, &qword_24A076DE0);
  v2 = *v0;
  v3 = sub_24A0763A8();
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void (*sub_24A064D38(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_24A0650E4(v8);
  v8[9] = sub_24A064E44(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_24A064DE4;
}

void sub_24A064DE4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_24A064E44(void *a1, uint64_t a2, uint64_t a3, char a4))(__int128 **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[4] = a3;
  v10[5] = v4;
  v10[3] = a2;
  v12 = *v4;
  v13 = sub_24A06E3E4(a2, a3);
  *(v11 + 17) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = v14 ^ 1;
  v17 = __OFADD__(v15, (v14 ^ 1) & 1);
  v18 = v15 + ((v14 ^ 1) & 1);
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_24A064BD0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_24A064774(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_24A06E3E4(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    result = sub_24A076448();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[6] = v13;
  v24 = 0uLL;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 16 * v13);
  }

  *v11 = v24;
  *(v11 + 16) = v16 & 1;
  return sub_24A064FA8;
}

void sub_24A064FA8(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 16);
  LOBYTE(v5) = *(*a1 + 17);
  if (a2)
  {
    if ((*a1)[1])
    {
      goto LABEL_8;
    }

    v6 = *(v2 + 6);
    v4 = **(v2 + 5);
    if (*(*a1 + 17))
    {
      goto LABEL_11;
    }

    v8 = *(v2 + 3);
    v7 = *(v2 + 4);
    v4[(v6 >> 6) + 8] |= 1 << v6;
    v9 = 16 * v6;
    v10 = (v4[6] + v9);
    *v10 = v8;
    v10[1] = v7;
    *(v4[7] + v9) = v3;
    v11 = v4[2];
    v12 = __OFADD__(v11, 1);
    v5 = v11 + 1;
    if (!v12)
    {
LABEL_13:
      v20 = *(v2 + 4);
      v4[2] = v5;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_8:
    if (v5)
    {
      v13 = *(v2 + 6);
      v14 = **(v2 + 5);
      sub_24A065118(*(v14 + 48) + 16 * v13);
      sub_24A064A20(v13, v14);
    }

    goto LABEL_14;
  }

  v6 = *(v2 + 6);
  v4 = **(v2 + 5);
  if ((v5 & 1) == 0)
  {
    v16 = *(v2 + 3);
    v15 = *(v2 + 4);
    v4[(v6 >> 6) + 8] |= 1 << v6;
    v17 = 16 * v6;
    v18 = (v4[6] + v17);
    *v18 = v16;
    v18[1] = v15;
    *(v4[7] + v17) = v3;
    v19 = v4[2];
    v12 = __OFADD__(v19, 1);
    v5 = v19 + 1;
    if (v12)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(v4[7] + 16 * v6) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_24A0650E4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24A06510C;
}

void sub_24A06521C(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 progressWithTotalUnitCount_];
  v4 = [v2 progressWithTotalUnitCount_];
  v5 = *MEMORY[0x277CCA648];
  v6 = v4;
  [v6 setKind_];
  v7 = [v2 progressWithTotalUnitCount_];
  [v7 setKind_];
  [v7 setFileOperationKind_];
  [v3 addChild:v6 withPendingUnitCount:1];

  [v3 addChild:v7 withPendingUnitCount:1];
  *a1 = v3;
  *(a1 + 8) = v6;
  v8 = MEMORY[0x277D84F98];
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v8;
  *(a1 + 40) = 0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProgressValues(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProgressValues(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

ELSessionConfigurator __swiftcall ELSessionConfigurator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for ELSessionConfigurator()
{
  result = qword_27EF31CB8;
  if (!qword_27EF31CB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF31CB8);
  }

  return result;
}

uint64_t static SessionError.isSessionError(_:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CC0, &qword_24A076E40);
  if (swift_dynamicCast())
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_24A0760A8();
    v4 = [v3 domain];

    v5 = sub_24A0761C8();
    v7 = v6;

    sub_24A076388();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CC8, &qword_24A076E48);
    v8 = sub_24A0761D8();
    MEMORY[0x24C20E890](v8);

    if (v5 == 0xD000000000000010 && v7 == 0x800000024A0780B0)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_24A076408();
    }
  }

  return v2 & 1;
}

uint64_t SessionError.hashValue.getter()
{
  v1 = *v0;
  sub_24A076498();
  MEMORY[0x24C20EB30](v1);
  return sub_24A0764B8();
}

uint64_t sub_24A065808()
{
  v1 = *v0;
  sub_24A076498();
  MEMORY[0x24C20EB30](v1);
  return sub_24A0764B8();
}

uint64_t sub_24A06587C()
{
  v1 = *v0;
  sub_24A076498();
  MEMORY[0x24C20EB30](v1);
  return sub_24A0764B8();
}

uint64_t SessionStatus.debugDescription.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0x694664616F6C7075;
      }

      if (a1 == 7)
      {
        return 0x614664616F6C7075;
      }

      goto LABEL_19;
    }

    if (a1 == 4)
    {
      v2 = 0x64616F6C7075;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
    }

    return 0x6E6964616F6C7075;
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x6C6C6F726E656E75;
      }

      if (a1 == 1)
      {
        v2 = 0x6C6C6F726E65;
        return v2 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
      }

LABEL_19:
      result = sub_24A076428();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0x697463656C6C6F63;
    }

    else
    {
      return 0xD000000000000010;
    }
  }
}

uint64_t sub_24A065A70()
{
  v1 = *v0;
  sub_24A076498();
  MEMORY[0x24C20EB30](v1);
  return sub_24A0764B8();
}

uint64_t sub_24A065AE4()
{
  v1 = *v0;
  sub_24A076498();
  MEMORY[0x24C20EB30](v1);
  return sub_24A0764B8();
}

unint64_t sub_24A065B28@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24A06767C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t EnrollConsentItem.titleKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EnrollConsentItem.descriptionKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t EnrollConsentItem.sensitiveInformationKey.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall EnrollConsentItem.init(titleKey:descriptionKey:sensitiveInformationKey:)(EnhancedLogging::EnrollConsentItem *__return_ptr retstr, Swift::String titleKey, Swift::String descriptionKey, Swift::String sensitiveInformationKey)
{
  retstr->titleKeyName._countAndFlagsBits = 0x79654B656C746974;
  retstr->titleKeyName._object = 0xE800000000000000;
  strcpy(&retstr->descriptionKeyName, "descriptionKey");
  HIBYTE(retstr->descriptionKeyName._object) = -18;
  retstr->sensitiveInformationKeyName._countAndFlagsBits = 0xD000000000000017;
  retstr->sensitiveInformationKeyName._object = 0x800000024A0780F0;
  retstr->titleKey = titleKey;
  retstr->descriptionKey = descriptionKey;
  retstr->sensitiveInformationKey = sensitiveInformationKey;
}

double sub_24A065C68@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = sub_24A06E3E4(0x79654B656C746974, 0xE800000000000000);
    if (v5)
    {
      if (*(a1 + 16))
      {
        v6 = (*(a1 + 56) + 16 * v4);
        v8 = *v6;
        v7 = v6[1];

        v9 = sub_24A06E3E4(0x7470697263736564, 0xEE0079654B6E6F69);
        if ((v10 & 1) != 0 && *(a1 + 16))
        {
          v11 = (*(a1 + 56) + 16 * v9);
          v12 = v11[1];
          v31 = *v11;

          v13 = sub_24A06E3E4(0xD000000000000017, 0x800000024A0780F0);
          if (v14)
          {
            v15 = (*(a1 + 56) + 16 * v13);
            v16 = v15[1];
            v30 = *v15;

            *&v33 = v8;
            *(&v33 + 1) = v7;
            *&v34 = v31;
            *(&v34 + 1) = v12;
            *&v35 = v30;
            *(&v35 + 1) = v16;
            *&v36 = 0x79654B656C746974;
            *(&v36 + 1) = 0xE800000000000000;
            strcpy(&v37, "descriptionKey");
            HIBYTE(v37) = -18;
            *&v38 = 0xD000000000000017;
            *(&v38 + 1) = 0x800000024A0780F0;
            v17 = v36;
            a2[2] = v35;
            a2[3] = v17;
            v18 = v38;
            a2[4] = v37;
            a2[5] = v18;
            v19 = v34;
            *a2 = v33;
            a2[1] = v19;
            v39[0] = v8;
            v39[1] = v7;
            v39[2] = v31;
            v39[3] = v12;
            v39[4] = v30;
            v39[5] = v16;
            v39[6] = 0x79654B656C746974;
            v39[7] = 0xE800000000000000;
            strcpy(v40, "descriptionKey");
            v40[15] = -18;
            v41 = 0xD000000000000017;
            v42 = 0x800000024A0780F0;
            sub_24A068980(&v33, v32);
            sub_24A0689B8(v39);
            return result;
          }
        }
      }
    }
  }

  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v21 = sub_24A076158();
  __swift_project_value_buffer(v21, qword_27EF32FE0);

  v22 = sub_24A076138();
  v23 = sub_24A076298();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v39[0] = v25;
    *v24 = 136315138;
    v26 = sub_24A0761A8();
    v28 = v27;

    v29 = sub_24A06C498(v26, v28, v39);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_24A062000, v22, v23, "Failed to parse EnrollConsentItem dict: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x24C20F040](v25, -1, -1);
    MEMORY[0x24C20F040](v24, -1, -1);
  }

  else
  {
  }

  result = 0.0;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

unint64_t EnrollConsentItem.dictionaryRepresentation.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v14 = *v0;
  v15 = v0[2];
  v3 = v0[5];
  v16 = v0[4];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CD0, &qword_24A076E50);
  inited = swift_initStackObject();
  *(inited + 32) = v5;
  *(inited + 16) = xmmword_24A076E20;
  *(inited + 40) = v4;
  *(inited + 48) = v14;
  *(inited + 56) = v1;
  *(inited + 64) = v7;
  *(inited + 72) = v6;
  *(inited + 80) = v15;
  *(inited + 88) = v2;
  *(inited + 96) = v13;
  *(inited + 104) = v9;
  *(inited + 112) = v16;
  *(inited + 120) = v3;

  v11 = sub_24A06768C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CD8, &qword_24A076E58);
  swift_arrayDestroy();
  return v11;
}

uint64_t UploadConsentItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A076128();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UploadConsentItem.id.setter(uint64_t a1)
{
  v3 = sub_24A076128();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UploadConsentItem.titleKey.getter()
{
  v1 = (v0 + *(type metadata accessor for UploadConsentItem() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t UploadConsentItem.rootURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UploadConsentItem() + 28);
  v4 = sub_24A0760D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UploadConsentItem.files.getter()
{
  v1 = *(v0 + *(type metadata accessor for UploadConsentItem() + 32));
}

uint64_t UploadConsentItem.init(titleKey:modificationDate:rootURL:files:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_24A076118();
  v12 = type metadata accessor for UploadConsentItem();
  v13 = (a6 + v12[9]);
  *v13 = 0x79654B656C746974;
  v13[1] = 0xE800000000000000;
  v14 = (a6 + v12[10]);
  *v14 = 0xD000000000000010;
  v14[1] = 0x800000024A078110;
  v15 = (a6 + v12[11]);
  *v15 = 0x4C5255746F6F72;
  v15[1] = 0xE700000000000000;
  v16 = (a6 + v12[12]);
  *v16 = 0x73656C6966;
  v16[1] = 0xE500000000000000;
  v17 = (a6 + v12[13]);
  *v17 = 0x656369766564;
  v17[1] = 0xE600000000000000;
  v18 = (a6 + v12[5]);
  *v18 = a1;
  v18[1] = a2;
  sub_24A0677EC(a3, a6 + v12[6]);
  v19 = v12[7];
  v20 = sub_24A0760D8();
  result = (*(*(v20 - 8) + 32))(a6 + v19, a4, v20);
  *(a6 + v12[8]) = a5;
  return result;
}

uint64_t sub_24A066438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CE0, &qword_24A076E60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v79 = &v73 - v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31D88, &qword_24A077490) - 8) + 64);
  v6 = (MEMORY[0x28223BE20])();
  v82 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v73 - v8;
  v10 = sub_24A0760D8();
  v83 = *(v10 - 8);
  v84 = v10;
  v11 = *(v83 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v81 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = &v73 - v14;
  v15 = type metadata accessor for UploadConsentItem();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A076118();
  v20 = &v19[v15[9]];
  *v20 = 0x79654B656C746974;
  *(v20 + 1) = 0xE800000000000000;
  v21 = &v19[v15[10]];
  *v21 = 0xD000000000000010;
  *(v21 + 1) = 0x800000024A078110;
  v22 = &v19[v15[11]];
  *v22 = 0x4C5255746F6F72;
  *(v22 + 1) = 0xE700000000000000;
  v23 = &v19[v15[12]];
  *v23 = 0x73656C6966;
  *(v23 + 1) = 0xE500000000000000;
  v24 = &v19[v15[13]];
  *v24 = 0x656369766564;
  *(v24 + 1) = 0xE600000000000000;
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v25 = sub_24A06E3E4(0x79654B656C746974, 0xE800000000000000);
  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_24A0685BC(*(a1 + 56) + 32 * v25, v88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v27 = v87;
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v78 = v86;
  v28 = sub_24A06E3E4(0x4C5255746F6F72, 0xE700000000000000);
  if ((v29 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_24A0685BC(*(a1 + 56) + 32 * v28, v88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v73 = v27;
  sub_24A0760C8();

  v30 = v83;
  v31 = v84;
  v76 = *(v83 + 48);
  v77 = v83 + 48;
  if (v76(v9, 1, v84) == 1)
  {

    sub_24A068618(v9);
LABEL_19:
    if (qword_27EF31C90 != -1)
    {
      swift_once();
    }

    v48 = sub_24A076158();
    __swift_project_value_buffer(v48, qword_27EF32FE0);

    v49 = sub_24A076138();
    v50 = sub_24A076298();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v88[0] = v52;
      *v51 = 136315138;
      v53 = sub_24A0761A8();
      v55 = v54;

      v56 = sub_24A06C498(v53, v55, v88);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_24A062000, v49, v50, "Failed to parse UploadConsentItem dict: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C20F040](v52, -1, -1);
      MEMORY[0x24C20F040](v51, -1, -1);
    }

    else
    {
    }

    v57 = sub_24A076128();
    (*(*(v57 - 8) + 8))(v19, v57);
    return (*(v16 + 56))(v85, 1, 1, v15);
  }

  v32 = v80;
  v74 = *(v30 + 32);
  v75 = v30 + 32;
  v74(v80, v9, v31);
  if (!*(a1 + 16))
  {

    (*(v30 + 8))(v32, v31);
    goto LABEL_19;
  }

  v33 = sub_24A06E3E4(0x73656C6966, 0xE500000000000000);
  if ((v34 & 1) == 0)
  {

    (*(v83 + 8))(v80, v84);
    goto LABEL_19;
  }

  sub_24A0685BC(*(a1 + 56) + 32 * v33, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CF0, &qword_24A076E70);
  v35 = swift_dynamicCast();
  v36 = v83;
  v37 = v80;
  v38 = v73;
  if ((v35 & 1) == 0)
  {
    (*(v83 + 8))(v80, v84);
LABEL_18:

    goto LABEL_19;
  }

  v39 = v86;
  v40 = &v19[v15[5]];
  *v40 = v78;
  *(v40 + 1) = v38;
  if (*(a1 + 16) && (v41 = sub_24A06E3E4(0xD000000000000010, 0x800000024A078110), v37 = v80, v36 = v83, (v42 & 1) != 0))
  {
    sub_24A0685BC(*(a1 + 56) + 32 * v41, v88);

    v43 = sub_24A076108();
    v44 = v79;
    v45 = swift_dynamicCast();
    v46 = *(*(v43 - 8) + 56);
    v47 = v43;
    v37 = v80;
    v36 = v83;
    v46(v44, v45 ^ 1u, 1, v47);
  }

  else
  {

    v59 = sub_24A076108();
    v44 = v79;
    (*(*(v59 - 8) + 56))(v79, 1, 1, v59);
  }

  sub_24A0677EC(v44, &v19[v15[6]]);
  v60 = v84;
  result = (*(v36 + 16))(&v19[v15[7]], v37, v84);
  v79 = *(v39 + 16);
  if (v79)
  {
    v61 = 0;
    v62 = (v39 + 40);
    v63 = MEMORY[0x277D84F90];
    while (v61 < *(v39 + 16))
    {
      v64 = v39;
      v66 = *(v62 - 1);
      v65 = *v62;

      v67 = v82;
      sub_24A0760C8();
      v68 = v67;

      v69 = v67;
      v60 = v84;
      if (v76(v69, 1, v84) == 1)
      {
        result = sub_24A068618(v68);
      }

      else
      {
        v74(v81, v68, v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_24A06BF2C(0, v63[2] + 1, 1, v63);
        }

        v71 = v63[2];
        v70 = v63[3];
        if (v71 >= v70 >> 1)
        {
          v63 = sub_24A06BF2C(v70 > 1, v71 + 1, 1, v63);
        }

        v63[2] = v71 + 1;
        result = (v74)(v63 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v71, v81, v60);
      }

      ++v61;
      v62 += 2;
      v39 = v64;
      if (v79 == v61)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
LABEL_38:

    (*(v83 + 8))(v80, v60);
    *&v19[v15[8]] = v63;
    v72 = v85;
    sub_24A068680(v19, v85);
    (*(v16 + 56))(v72, 0, 1, v15);
    return sub_24A0686E4(v19);
  }

  return result;
}

unint64_t UploadConsentItem.dictionaryRepresentation.getter()
{
  v1 = v0;
  v46 = sub_24A0760D8();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v45 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CE8, &qword_24A076E68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A076E30;
  v6 = type metadata accessor for UploadConsentItem();
  v7 = (v0 + v6[9]);
  v8 = v7[1];
  *(inited + 32) = *v7;
  v42[1] = inited + 32;
  *(inited + 40) = v8;
  v9 = (v1 + v6[5]);
  v10 = *v9;
  v11 = v9[1];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v12 = (v1 + v6[10]);
  v13 = v12[1];
  *(inited + 80) = *v12;
  *(inited + 88) = v13;
  v14 = v6[6];
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CE0, &qword_24A076E60);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 96));
  sub_24A0689F8(v1 + v14, boxed_opaque_existential_0, &qword_27EF31CE0, &qword_24A076E60);
  v16 = (v1 + v6[11]);
  v17 = v16[1];
  *(inited + 128) = *v16;
  *(inited + 136) = v17;
  v18 = v6[7];

  v19 = sub_24A0760B8();
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 144) = v19;
  *(inited + 152) = v20;
  v21 = (v1 + v6[12]);
  v22 = v21[1];
  *(inited + 176) = *v21;
  *(inited + 184) = v22;
  v23 = *(v1 + v6[8]);
  v24 = *(v23 + 16);
  if (v24)
  {
    v42[0] = inited;
    v47 = MEMORY[0x277D84F90];

    sub_24A0673FC(0, v24, 0);
    v25 = v47;
    v27 = *(v2 + 16);
    v26 = v2 + 16;
    v44 = v27;
    v28 = v23 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v43 = *(v26 + 56);
    v29 = (v26 - 8);
    v30 = v26;
    do
    {
      v31 = v45;
      v32 = v46;
      v33 = v30;
      v44(v45, v28, v46);
      v34 = sub_24A0760B8();
      v36 = v35;
      (*v29)(v31, v32);
      v47 = v25;
      v38 = *(v25 + 16);
      v37 = *(v25 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_24A0673FC((v37 > 1), v38 + 1, 1);
        v25 = v47;
      }

      *(v25 + 16) = v38 + 1;
      v39 = v25 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v28 += v43;
      --v24;
      v30 = v33;
    }

    while (v24);
    inited = v42[0];
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CF0, &qword_24A076E70);
  *(inited + 192) = v25;
  v40 = sub_24A0678C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CF8, &qword_24A076E78);
  swift_arrayDestroy();
  return v40;
}

uint64_t sub_24A067154@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A076128();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24A0671DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_24A0672A0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_24A0672D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24A0672FC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_24A0673D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

char *sub_24A0673FC(char *a1, int64_t a2, char a3)
{
  result = sub_24A06743C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A06741C(void *a1, int64_t a2, char a3)
{
  result = sub_24A067548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A06743C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31DA0, &qword_24A0774A8);
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

void *sub_24A067548(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31D78, &qword_24A077480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31D80, &qword_24A077488);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_24A06767C(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24A06768C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31DA8, &qword_24A0774B0);
    v3 = sub_24A0763C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24A06E3E4(v5, v6);
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

uint64_t type metadata accessor for UploadConsentItem()
{
  result = qword_27EF31D58;
  if (!qword_27EF31D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A0677EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CE0, &qword_24A076E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_24A0678C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31D98, &qword_24A0774A0);
    v3 = sub_24A0763C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A0689F8(v4, &v13, &qword_27EF31CF8, &qword_24A076E78);
      v5 = v13;
      v6 = v14;
      result = sub_24A06E3E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24A0689E8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24A0679F4()
{
  result = qword_27EF31D00;
  if (!qword_27EF31D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31D00);
  }

  return result;
}

unint64_t sub_24A067A4C()
{
  result = qword_27EF31D08;
  if (!qword_27EF31D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31D08);
  }

  return result;
}

unint64_t sub_24A067AA4()
{
  result = qword_27EF31D10;
  if (!qword_27EF31D10)
  {
    sub_24A076128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31D10);
  }

  return result;
}

unint64_t sub_24A067B00()
{
  result = qword_27EF31D18;
  if (!qword_27EF31D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31D18);
  }

  return result;
}

unint64_t sub_24A067B58()
{
  result = qword_27EF31D20;
  if (!qword_27EF31D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31D20);
  }

  return result;
}

unint64_t sub_24A067BB0()
{
  result = qword_27EF31D28;
  if (!qword_27EF31D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31D28);
  }

  return result;
}

unint64_t sub_24A067C08()
{
  result = qword_27EF31D30;
  if (!qword_27EF31D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31D30);
  }

  return result;
}

unint64_t sub_24A067C60()
{
  result = qword_27EF31D38;
  if (!qword_27EF31D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31D38);
  }

  return result;
}

unint64_t sub_24A067CB8()
{
  result = qword_27EF31D40;
  if (!qword_27EF31D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31D40);
  }

  return result;
}

unint64_t sub_24A067D10()
{
  result = qword_27EF31D48;
  if (!qword_27EF31D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31D48);
  }

  return result;
}

unint64_t sub_24A067D68()
{
  result = qword_27EF31D50;
  if (!qword_27EF31D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31D50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_24A067F54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_24A067F9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A068018(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24A076128();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CE0, &qword_24A076E60);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_24A0760D8();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24A0681B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24A076128();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CE0, &qword_24A076E60);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_24A0760D8();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_24A068334()
{
  sub_24A076128();
  if (v0 <= 0x3F)
  {
    sub_24A06845C(319, &qword_27EF31D68, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24A0760D8();
      if (v2 <= 0x3F)
      {
        sub_24A06845C(319, &qword_27EF31D70, MEMORY[0x277CC9260], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24A06845C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s14CollectOptionsVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14CollectOptionsVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24A0685BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A068618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31D88, &qword_24A077490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A068680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadConsentItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A0686E4(uint64_t a1)
{
  v2 = type metadata accessor for UploadConsentItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A068740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31DB0, &qword_24A0774B8);
    v3 = sub_24A0763C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A0689F8(v4, v13, &qword_27EF31DB8, &qword_24A0774C0);
      result = sub_24A06E494(v13);
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
      result = sub_24A0689E8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24A06887C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31D90, &qword_24A077498);
    v3 = sub_24A0763C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24A06E3E4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_24A0689E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24A0689F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A068AE0(int a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t *a5, uint64_t *a6)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v19 = a1;
  v18 = sub_24A0762C8();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_24A0762B8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v13 = *(*(sub_24A076178() - 8) + 64);
  MEMORY[0x28223BE20]();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = swift_allocObject();
  sub_24A06CC4C(0, &qword_27EF31DC0, 0x277D85C78);
  sub_24A076168();
  v23 = MEMORY[0x277D84F90];
  sub_24A06CA40(&qword_27EF31DC8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31DD0, &qword_24A0774F0);
  sub_24A069DA8();
  sub_24A076318();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v18);
  *(v14 + 72) = sub_24A0762E8();
  *(v14 + 80) = 0;
  *(v14 + 16) = v19 & 1;
  v15 = v21;
  *(v14 + 24) = v20;
  *(v14 + 32) = v15;
  v16 = v22[1];
  *(v14 + 40) = *v22;
  *(v14 + 56) = v16;
  return v14;
}

uint64_t SessionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  SessionManager.init()();
  return v0;
}

void SessionManager.createSession(parameters:ticket:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(v3 + 32))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v3;
  v7 = *(v3 + 32);

  v8 = sub_24A069670();

  if (v4)
  {
    return;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  aBlock[7] = v10 + 16;
  v11 = sub_24A076188();
  if (a3)
  {
    a3 = sub_24A0761B8();
  }

  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = v5;
  aBlock[4] = sub_24A069CB4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A069CC0;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  [v8 configureSessionWithParameters:v11 ticket:a3 completionHandler:v13];
  _Block_release(v13);

  swift_beginAccess();
  v14 = *(v9 + 16);
  if (!v14)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v15 = *(v10 + 16);
}

uint64_t SessionManager.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t SessionManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SessionManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24A069128;
}

void sub_24A069128(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t *SessionManager.init()()
{
  v13 = *v0;
  v12 = sub_24A0762C8();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_24A0762B8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_24A076178() - 8) + 64);
  MEMORY[0x28223BE20]();
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = 0;
  sub_24A06CC4C(0, &qword_27EF31DC0, 0x277D85C78);
  sub_24A076168();
  *&v14 = MEMORY[0x277D84F90];
  sub_24A06CA40(&qword_27EF31DC8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31DD0, &qword_24A0774F0);
  sub_24A069DA8();
  sub_24A076318();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v12);
  v0[5] = sub_24A0762E8();
  v0[6] = 0;
  v15 = v13;
  *&v14 = v0;
  v7 = &unk_285D34B88;
  v8 = &unk_285D34348;

  v9 = sub_24A068AE0(0, v7, &unk_285D34348, &v14, &qword_27EF31E30, &qword_24A0775D0);
  v10 = v0[4];
  v0[4] = v9;

  return v0;
}

void SessionManager.currentSession.getter()
{
  if (!*(v0 + 32))
  {
    goto LABEL_8;
  }

  v1 = v0;
  v2 = *(v0 + 32);

  v3 = sub_24A069670();

  if (*(v1 + 48))
  {
    v4 = *(v1 + 48);

    swift_unknownObjectRelease();
    return;
  }

  v10 = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = &v10;
  *(v5 + 24) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24A069E8C;
  *(v6 + 24) = v5;
  v9[4] = sub_24A069EA4;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A069A7C;
  v9[3] = &block_descriptor_15;
  v7 = _Block_copy(v9);

  [v3 getCurrentSessionIDWithCompletionHandler_];
  swift_unknownObjectRelease();
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }
}

uint64_t sub_24A069670()
{
  v1 = *(v0 + 72);
  sub_24A06CC4C(0, &qword_27EF31E38, 0x277CCAE80);
  sub_24A0762D8();
  v2 = aBlock[0];
  aBlock[4] = sub_24A06F7E8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A0700EC;
  aBlock[3] = &block_descriptor_20;
  v3 = _Block_copy(aBlock);
  v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v3);

  sub_24A0762F8();
  swift_unknownObjectRelease();
  sub_24A0685BC(v8, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31E40, &qword_24A0775D8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    return v6;
  }

  else
  {
    sub_24A06CC94();
    swift_allocError();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v8);
  }
}

uint64_t sub_24A06981C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A069854()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24A06988C(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a2)
  {
    v8 = qword_27EF31C90;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A076158();
    __swift_project_value_buffer(v9, qword_27EF32FE0);

    v10 = sub_24A076138();
    v11 = sub_24A0762A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_24A06C498(a1, a2, &v18);
      _os_log_impl(&dword_24A062000, v10, v11, "Initializing Session object for ID %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C20F040](v13, -1, -1);
      MEMORY[0x24C20F040](v12, -1, -1);
    }

    v14 = *(a4 + 32);
    if (v14)
    {
      type metadata accessor for Session();
      swift_allocObject();

      v15 = sub_24A070404(a1, a2, v14);
      v16 = *a3;
      *a3 = v15;

      v17 = *(a4 + 48);
      *(a4 + 48) = v15;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24A069A7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_24A0761C8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
}

void sub_24A069AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    sub_24A068740(MEMORY[0x277D84F90]);
  }

  v13 = objc_allocWithZone(ELSessionConfigurationResponse);

  v14 = sub_24A076188();

  v15 = [v13 initWithStatusCode:a1 data:v14];

  swift_beginAccess();
  v16 = *(a5 + 16);
  *(a5 + 16) = v15;

  if (a4)
  {
    v17 = *(a7 + 32);
    if (v17)
    {
      type metadata accessor for Session();
      swift_allocObject();

      v18 = sub_24A070404(a3, a4, v17);
      swift_beginAccess();
      v19 = *(a6 + 16);
      *(a6 + 16) = v18;

      v20 = *(a7 + 48);
      *(a7 + 48) = v18;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24A069C6C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A069CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_24A076198();
    if (v4)
    {
LABEL_3:
      v9 = sub_24A0761C8();
      v4 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:

  v7(a2, v8, v9, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24A069DA8()
{
  result = qword_27EF31DD8;
  if (!qword_27EF31DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF31DD0, &qword_24A0774F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31DD8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24A069E54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A069EA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t SessionManager.deinit()
{
  sub_24A069F04(v0 + 16);
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t SessionManager.__deallocating_deinit()
{
  sub_24A069F04(v0 + 16);
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

Swift::Void __swiftcall SessionManager.sessionCreated(sessionID:)(Swift::String sessionID)
{
  v2 = v1;
  object = sessionID._object;
  countAndFlagsBits = sessionID._countAndFlagsBits;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v5 = sub_24A076158();
  __swift_project_value_buffer(v5, qword_27EF32FE0);

  v6 = sub_24A076138();
  v7 = sub_24A076288();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_24A06C498(0xD00000000000001ALL, 0x800000024A0781C0, v12);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24A06C498(countAndFlagsBits, object, v12);
    _os_log_impl(&dword_24A062000, v6, v7, "%s sessionID: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C20F040](v9, -1, -1);
    MEMORY[0x24C20F040](v8, -1, -1);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v2, countAndFlagsBits, object, ObjectType, v10);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall SessionManager.sessionEnded(sessionID:)(Swift::String sessionID)
{
  v2 = v1;
  object = sessionID._object;
  countAndFlagsBits = sessionID._countAndFlagsBits;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v5 = sub_24A076158();
  __swift_project_value_buffer(v5, qword_27EF32FE0);

  v6 = sub_24A076138();
  v7 = sub_24A076288();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_24A06C498(0xD000000000000018, 0x800000024A0781E0, v13);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24A06C498(countAndFlagsBits, object, v13);
    _os_log_impl(&dword_24A062000, v6, v7, "%s sessionID: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C20F040](v9, -1, -1);
    MEMORY[0x24C20F040](v8, -1, -1);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(v2, countAndFlagsBits, object, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  v12 = *(v2 + 48);
  *(v2 + 48) = 0;
}

uint64_t sub_24A06A390(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = sub_24A0761C8();
  v7 = v6;

  a4(v5, v7);
}

void SessionManager.session(_:didUpdateStatus:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v6 = sub_24A076158();
  __swift_project_value_buffer(v6, qword_27EF32FE0);

  v7 = sub_24A076138();
  v8 = sub_24A076288();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_24A06C498(0xD00000000000001BLL, 0x800000024A078200, &v20);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_24A06C498(a1, a2, &v20);
    *(v9 + 22) = 2080;
    v11 = sub_24A0761E8();
    v13 = sub_24A06C498(v11, v12, &v20);

    *(v9 + 24) = v13;
    _os_log_impl(&dword_24A062000, v7, v8, "%s sessionID: %s status: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C20F040](v10, -1, -1);
    MEMORY[0x24C20F040](v9, -1, -1);
  }

  SessionManager.currentSession.getter();
  if (v14)
  {
    if (*(v14 + 16) == a1 && *(v14 + 24) == a2 || (sub_24A076408() & 1) != 0)
    {
      SessionManager.currentSession.getter();
      if (v15)
      {
        Session.didUpdateStatus(_:)(a3);
      }

      return;
    }
  }

  v16 = sub_24A076138();
  v17 = sub_24A076298();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_24A06C498(a1, a2, &v20);
    _os_log_impl(&dword_24A062000, v16, v17, "Ignoring status update for unknown session %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C20F040](v19, -1, -1);
    MEMORY[0x24C20F040](v18, -1, -1);
  }
}

void SessionManager.session(_:didUpdateCollectionProgress:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_24A076108();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v11 = sub_24A076158();
  v12 = __swift_project_value_buffer(v11, qword_27EF32FE0);
  (*(v7 + 16))(v10, a3, v6);

  v13 = sub_24A076138();
  v14 = sub_24A076288();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = v14;
    v16 = v15;
    v38 = swift_slowAlloc();
    v40[0] = v38;
    *v16 = 136315650;
    *(v16 + 4) = sub_24A06C498(0xD000000000000027, 0x800000024A078220, v40);
    v36 = v13;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_24A06C498(a1, a2, v40);
    *(v16 + 22) = 2080;
    sub_24A06CA40(&qword_27EF31DE0, MEMORY[0x277CC9578]);
    v17 = sub_24A0763E8();
    v39 = v12;
    v18 = a3;
    v19 = a2;
    v20 = a1;
    v22 = v21;
    (*(v7 + 8))(v10, v6);
    v23 = sub_24A06C498(v17, v22, v40);
    a1 = v20;
    a2 = v19;
    a3 = v18;

    *(v16 + 24) = v23;
    v24 = v36;
    _os_log_impl(&dword_24A062000, v36, v37, "%s sessionID: %s projectedEndDate: %s", v16, 0x20u);
    v25 = v38;
    swift_arrayDestroy();
    MEMORY[0x24C20F040](v25, -1, -1);
    MEMORY[0x24C20F040](v16, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  SessionManager.currentSession.getter();
  if (v26)
  {
    v27 = v26;
    if (*(v26 + 16) == a1 && *(v26 + 24) == a2 || (sub_24A076408() & 1) != 0)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v27 + 40);
        ObjectType = swift_getObjectType();
        (*(v28 + 16))(v27, a3, ObjectType, v28);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }
  }

  v30 = sub_24A076138();
  v31 = sub_24A076298();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = a1;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_24A06C498(v32, a2, v40);
    _os_log_impl(&dword_24A062000, v30, v31, "Ignoring collection progress update for unknown session %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x24C20F040](v34, -1, -1);
    MEMORY[0x24C20F040](v33, -1, -1);
  }
}

Swift::Void __swiftcall SessionManager.session(_:didUpdateCompressionProgress:totalBytes:deviceID:)(Swift::String _, Swift::Int64 didUpdateCompressionProgress, Swift::Int64 totalBytes, Swift::String deviceID)
{
  object = deviceID._object;
  countAndFlagsBits = deviceID._countAndFlagsBits;
  v6 = _._object;
  v7 = _._countAndFlagsBits;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v8 = sub_24A076158();
  __swift_project_value_buffer(v8, qword_27EF32FE0);

  v9 = sub_24A076138();
  v10 = sub_24A076288();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136316162;
    *(v11 + 4) = sub_24A06C498(0xD00000000000003CLL, 0x800000024A078250, v21);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_24A06C498(v7, v6, v21);
    *(v11 + 22) = 2048;
    *(v11 + 24) = didUpdateCompressionProgress;
    *(v11 + 32) = 2048;
    *(v11 + 34) = totalBytes;
    *(v11 + 42) = 2080;
    *(v11 + 44) = sub_24A06C498(countAndFlagsBits, object, v21);
    _os_log_impl(&dword_24A062000, v9, v10, "%s sessionID: %s completedBytes: %lld totalBytes: %lld on device: %s", v11, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C20F040](v12, -1, -1);
    MEMORY[0x24C20F040](v11, -1, -1);
  }

  SessionManager.currentSession.getter();
  if (v13)
  {
    if (*(v13 + 16) == v7 && *(v13 + 24) == v6 || (v14 = *(v13 + 16), (sub_24A076408() & 1) != 0))
    {
      swift_beginAccess();
      sub_24A063DB4(countAndFlagsBits, object, didUpdateCompressionProgress, totalBytes);
      swift_endAccess();

      return;
    }
  }

  osloga = sub_24A076138();
  v15 = sub_24A076298();

  if (os_log_type_enabled(osloga, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_24A06C498(v7, v6, v21);
    _os_log_impl(&dword_24A062000, osloga, v15, "Ignoring compression progress update for unknown session %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C20F040](v17, -1, -1);
    MEMORY[0x24C20F040](v16, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall SessionManager.session(_:didUpdateUploadProgress:totalBytes:deviceID:)(Swift::String _, Swift::Int64 didUpdateUploadProgress, Swift::Int64 totalBytes, Swift::String deviceID)
{
  object = deviceID._object;
  countAndFlagsBits = deviceID._countAndFlagsBits;
  v6 = _._object;
  v7 = _._countAndFlagsBits;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v8 = sub_24A076158();
  __swift_project_value_buffer(v8, qword_27EF32FE0);

  v9 = sub_24A076138();
  v10 = sub_24A076288();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136316162;
    *(v11 + 4) = sub_24A06C498(0xD000000000000037, 0x800000024A078290, v21);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_24A06C498(v7, v6, v21);
    *(v11 + 22) = 2048;
    *(v11 + 24) = didUpdateUploadProgress;
    *(v11 + 32) = 2048;
    *(v11 + 34) = totalBytes;
    *(v11 + 42) = 2080;
    *(v11 + 44) = sub_24A06C498(countAndFlagsBits, object, v21);
    _os_log_impl(&dword_24A062000, v9, v10, "%s sessionID: %s completedBytes: %lld totalBytes: %lld on device: %s", v11, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C20F040](v12, -1, -1);
    MEMORY[0x24C20F040](v11, -1, -1);
  }

  SessionManager.currentSession.getter();
  if (v13)
  {
    if (*(v13 + 16) == v7 && *(v13 + 24) == v6 || (v14 = *(v13 + 16), (sub_24A076408() & 1) != 0))
    {
      swift_beginAccess();
      sub_24A0642D0(countAndFlagsBits, object, didUpdateUploadProgress, totalBytes);
      swift_endAccess();

      return;
    }
  }

  osloga = sub_24A076138();
  v15 = sub_24A076298();

  if (os_log_type_enabled(osloga, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_24A06C498(v7, v6, v21);
    _os_log_impl(&dword_24A062000, osloga, v15, "Ignoring upload progress update for unknown session %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C20F040](v17, -1, -1);
    MEMORY[0x24C20F040](v16, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A06B474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = sub_24A0761C8();
  v12 = v11;
  v13 = sub_24A0761C8();
  v15 = v14;

  a7(v10, v12, a4, a5, v13, v15);
}

void SessionManager.session(_:didEndWithError:)(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v6 = sub_24A076158();
  __swift_project_value_buffer(v6, qword_27EF32FE0);

  v7 = a3;
  v8 = sub_24A076138();
  v9 = sub_24A076288();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_24A06C498(0xD00000000000001BLL, 0x800000024A0782D0, v29);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_24A06C498(a1, a2, v29);
    *(v10 + 22) = 2112;
    if (a3)
    {
      v13 = a3;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v10 + 24) = v14;
    *v11 = v15;
    _os_log_impl(&dword_24A062000, v8, v9, "%s sessionID: %s error: %@", v10, 0x20u);
    sub_24A06CAA0(v11, &qword_27EF31DE8, &qword_24A0774F8);
    MEMORY[0x24C20F040](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C20F040](v12, -1, -1);
    MEMORY[0x24C20F040](v10, -1, -1);
  }

  SessionManager.currentSession.getter();
  if (v16)
  {
    v17 = v16;
    if (*(v16 + 16) == a1 && *(v16 + 24) == a2 || (sub_24A076408() & 1) != 0)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 40);
        ObjectType = swift_getObjectType();
        (*(v18 + 24))(v17, a3, ObjectType, v18);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }
  }

  v20 = a3;
  oslog = sub_24A076138();
  v21 = sub_24A076298();

  if (os_log_type_enabled(oslog, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29[0] = v24;
    *v22 = 136315394;
    *(v22 + 4) = sub_24A06C498(a1, a2, v29);
    *(v22 + 12) = 2112;
    if (a3)
    {
      v25 = a3;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v22 + 14) = v26;
    *v23 = v27;
    _os_log_impl(&dword_24A062000, oslog, v21, "Ignoring error for unknown session %s error: %@", v22, 0x16u);
    sub_24A06CAA0(v23, &qword_27EF31DE8, &qword_24A0774F8);
    MEMORY[0x24C20F040](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C20F040](v24, -1, -1);
    MEMORY[0x24C20F040](v22, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall SessionManager.session(_:didDiscoverDevices:)(Swift::String _, Swift::OpaquePointer didDiscoverDevices)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (qword_27EF31C90 != -1)
  {
LABEL_30:
    swift_once();
  }

  v5 = sub_24A076158();
  __swift_project_value_buffer(v5, qword_27EF32FE0);

  v6 = sub_24A076138();
  v7 = sub_24A076288();

  if (os_log_type_enabled(v6, v7))
  {
    osloga = object;
    v8 = countAndFlagsBits;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    __src_368[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24A06C498(0xD00000000000001ELL, 0x800000024A0782F0, __src_368);
    *(v9 + 12) = 2080;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31D80, &qword_24A077488);
    v12 = MEMORY[0x24C20E8D0](didDiscoverDevices._rawValue, v11);
    v14 = sub_24A06C498(v12, v13, __src_368);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_24A062000, v6, v7, "%s devices: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C20F040](v10, -1, -1);
    v15 = v9;
    countAndFlagsBits = v8;
    object = osloga;
    MEMORY[0x24C20F040](v15, -1, -1);
  }

  SessionManager.currentSession.getter();
  if (v16)
  {
    v17 = v16;
    v18 = *(didDiscoverDevices._rawValue + 2);
    if (v18)
    {
      v19 = 0;
      object = MEMORY[0x277D84F90];
      countAndFlagsBits = didDiscoverDevices._rawValue + 32;
      do
      {
        didDiscoverDevices._rawValue = v19;
        while (1)
        {
          if (didDiscoverDevices._rawValue >= v18)
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v19 = didDiscoverDevices._rawValue + 1;
          if (__OFADD__(didDiscoverDevices._rawValue, 1))
          {
            goto LABEL_29;
          }

          v20 = *&countAndFlagsBits[8 * didDiscoverDevices._rawValue];

          TargetDevice.init(dictionaryRepresentation:)(__src, v21);
          memcpy(__src_368, __src, 0x170uLL);
          if (sub_24A06CA88(__src_368) != 1)
          {
            break;
          }

          memcpy(__dst, __src, sizeof(__dst));
          sub_24A06CAA0(__dst, &qword_27EF31DF0, &unk_24A077500);
          ++didDiscoverDevices._rawValue;
          if (v19 == v18)
          {
            goto LABEL_22;
          }
        }

        memcpy(__dst, __src, sizeof(__dst));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          object = sub_24A06BF54(0, *(object + 2) + 1, 1, object);
        }

        v23 = *(object + 2);
        v22 = *(object + 3);
        if (v23 >= v22 >> 1)
        {
          object = sub_24A06BF54((v22 > 1), v23 + 1, 1, object);
        }

        memcpy(v31, __dst, sizeof(v31));
        *(object + 2) = v23 + 1;
        memcpy(&object[368 * v23 + 32], v31, 0x170uLL);
      }

      while (v19 != v18);
    }

    else
    {
      object = MEMORY[0x277D84F90];
    }

LABEL_22:
    v27 = *(v17 + 104);
    if (v27)
    {
      v28 = *(v17 + 112);

      v27(object, 0);

      sub_24A06CB00(v27);
    }

    else
    {
    }
  }

  else
  {

    oslog = sub_24A076138();
    v24 = sub_24A076298();

    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      __src_368[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_24A06C498(countAndFlagsBits, object, __src_368);
      _os_log_impl(&dword_24A062000, oslog, v24, "Ignoring device discovery update for unknown session %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x24C20F040](v26, -1, -1);
      MEMORY[0x24C20F040](v25, -1, -1);
    }

    else
    {
    }
  }
}

char *sub_24A06BF54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31E20, &qword_24A0775C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 368);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[368 * v8])
    {
      memmove(v12, v13, 368 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A06C080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31E18, &qword_24A0775B8);
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

char *sub_24A06C174(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31E10, &qword_24A0775B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24A06C2BC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_24A06C498(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24A06C564(v11, 0, 0, 1, a1, a2);
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
    sub_24A0685BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24A06C564(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24A06C670(a5, a6);
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
    result = sub_24A076398();
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

uint64_t sub_24A06C670(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A06C6BC(a1, a2);
  sub_24A06C7EC(&unk_285D31688);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24A06C6BC(uint64_t a1, unint64_t a2)
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

  v6 = sub_24A06C8D8(v5, 0);
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

  result = sub_24A076398();
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
        v10 = sub_24A076218();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24A06C8D8(v10, 0);
        result = sub_24A076378();
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

uint64_t sub_24A06C7EC(uint64_t result)
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

  result = sub_24A06C94C(result, v12, 1, v3);
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

void *sub_24A06C8D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31E28, &qword_24A0775C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24A06C94C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31E28, &qword_24A0775C8);
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

uint64_t sub_24A06CA40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A06CA88(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A06CAA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24A06CB00(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A06CB10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24A06CB60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24A06CC4C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_24A06CC94()
{
  result = qword_27EF31E48;
  if (!qword_27EF31E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31E48);
  }

  return result;
}

void __swiftcall TargetDevice.init(dictionaryRepresentation:)(EnhancedLogging::TargetDevice_optional *__return_ptr retstr, Swift::OpaquePointer dictionaryRepresentation)
{
  if (!*(dictionaryRepresentation._rawValue + 2))
  {
    goto LABEL_42;
  }

  v4 = sub_24A06E3E4(25705, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_24A0685BC(*(dictionaryRepresentation._rawValue + 7) + 32 * v4, __src);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_42;
  }

  v6 = rawValue[1];
  if (*(dictionaryRepresentation._rawValue + 2))
  {
    v7 = rawValue[0];
    v8 = sub_24A06E3E4(0x6C43656369766564, 0xEB00000000737361);
    if (v9)
    {
      sub_24A0685BC(*(dictionaryRepresentation._rawValue + 7) + 32 * v8, __src);
      if (swift_dynamicCast())
      {
        v10 = rawValue[1];
        if (!*(dictionaryRepresentation._rawValue + 2))
        {
          goto LABEL_40;
        }

        v11 = sub_24A06E3E4(0x7954656369766564, 0xEA00000000006570);
        if ((v12 & 1) == 0)
        {
          goto LABEL_40;
        }

        sub_24A0685BC(*(dictionaryRepresentation._rawValue + 7) + 32 * v11, __src);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_40;
        }

        TargetDevice.DeviceType.init(rawValue:)(rawValue[0]);
        if (LOBYTE(__src[0]) == 7)
        {
          goto LABEL_40;
        }

        v75 = __src[0];
        if (!*(dictionaryRepresentation._rawValue + 2))
        {
          goto LABEL_40;
        }

        v13 = sub_24A06E3E4(0x54746375646F7270, 0xEB00000000657079);
        if ((v14 & 1) == 0)
        {
          goto LABEL_40;
        }

        sub_24A0685BC(*(dictionaryRepresentation._rawValue + 7) + 32 * v13, __src);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_40;
        }

        v74 = rawValue[0];
        v15 = rawValue[1];
        if (!*(dictionaryRepresentation._rawValue + 2))
        {
          goto LABEL_39;
        }

        v73 = rawValue[0];
        v16 = sub_24A06E3E4(0xD000000000000010, 0x800000024A078500);
        if ((v17 & 1) == 0)
        {
          goto LABEL_39;
        }

        sub_24A0685BC(*(dictionaryRepresentation._rawValue + 7) + 32 * v16, __src);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_39;
        }

        v72 = rawValue[1];
        if (*(dictionaryRepresentation._rawValue + 2))
        {
          v71 = rawValue[0];
          v18 = sub_24A06E3E4(0x737574617473, 0xE600000000000000);
          if (v19)
          {
            sub_24A0685BC(*(dictionaryRepresentation._rawValue + 7) + 32 * v18, __src);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_38;
            }

            v70 = rawValue[0];
            if (rawValue[0] >= 4uLL)
            {

              goto LABEL_41;
            }

            if (!*(dictionaryRepresentation._rawValue + 2))
            {
              goto LABEL_37;
            }

            v20 = sub_24A06E3E4(0x6C61636F4C7369, 0xE700000000000000);
            if ((v21 & 1) == 0)
            {
              goto LABEL_37;
            }

            sub_24A0685BC(*(dictionaryRepresentation._rawValue + 7) + 32 * v20, __src);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_38:

LABEL_39:

              goto LABEL_40;
            }

            if (*(dictionaryRepresentation._rawValue + 2))
            {
              v69 = rawValue[0];
              v22 = sub_24A06E3E4(0xD000000000000010, 0x800000024A078520);
              if (v23)
              {
                sub_24A0685BC(*(dictionaryRepresentation._rawValue + 7) + 32 * v22, __src);
                if (swift_dynamicCast())
                {
                  v68 = rawValue[0];
                  if (*(dictionaryRepresentation._rawValue + 2))
                  {
                    v24 = sub_24A06E3E4(0x746E656449736469, 0xED00007265696669);
                    if (v25)
                    {
                      sub_24A0685BC(*(dictionaryRepresentation._rawValue + 7) + 32 * v24, __src);
                      v26 = swift_dynamicCast();
                      if (v26)
                      {
                        v27 = rawValue[0];
                      }

                      else
                      {
                        v27 = 0;
                      }

                      if (v26)
                      {
                        v28 = rawValue[1];
                      }

                      else
                      {
                        v28 = 0;
                      }

                      v66 = v28;
                      v67 = v27;
                    }

                    else
                    {
                      v66 = 0;
                      v67 = 0;
                    }

                    if (*(dictionaryRepresentation._rawValue + 2))
                    {
                      v38 = sub_24A06E3E4(0x754E6C6169726573, 0xEC0000007265626DLL);
                      if (v39)
                      {
                        sub_24A0685BC(*(dictionaryRepresentation._rawValue + 7) + 32 * v38, __src);
                        v40 = swift_dynamicCast();
                        if (v40)
                        {
                          v41 = rawValue[0];
                        }

                        else
                        {
                          v41 = 0;
                        }

                        if (v40)
                        {
                          v42 = rawValue[1];
                        }

                        else
                        {
                          v42 = 0;
                        }

                        v64 = v42;
                        v65 = v41;
                      }

                      else
                      {
                        v64 = 0;
                        v65 = 0;
                      }

                      if (*(dictionaryRepresentation._rawValue + 2))
                      {
                        v53 = sub_24A06E3E4(0x6E6974656B72616DLL, 0xED0000656D614E67);
                        if (v54)
                        {
                          sub_24A0685BC(*(dictionaryRepresentation._rawValue + 7) + 32 * v53, __src);
                          v55 = swift_dynamicCast();
                          if (v55)
                          {
                            v56 = rawValue[0];
                          }

                          else
                          {
                            v56 = 0;
                          }

                          if (v55)
                          {
                            v57 = rawValue[1];
                          }

                          else
                          {
                            v57 = 0;
                          }

                          v62 = v57;
                          v63 = v56;
                          if (!*(dictionaryRepresentation._rawValue + 2))
                          {
                            goto LABEL_89;
                          }

                          goto LABEL_62;
                        }
                      }

LABEL_61:
                      v62 = 0;
                      v63 = 0;
                      if (!*(dictionaryRepresentation._rawValue + 2))
                      {
LABEL_89:
                        v60 = 0;
                        v61 = 0;
                        goto LABEL_90;
                      }

LABEL_62:
                      v43 = sub_24A06E3E4(0x6F43656369766564, 0xEB00000000726F6CLL);
                      if (v44)
                      {
                        sub_24A0685BC(*(dictionaryRepresentation._rawValue + 7) + 32 * v43, __src);
                        v45 = swift_dynamicCast();
                        if (v45)
                        {
                          v46 = rawValue[0];
                        }

                        else
                        {
                          v46 = 0;
                        }

                        if (v45)
                        {
                          v47 = rawValue[1];
                        }

                        else
                        {
                          v47 = 0;
                        }

                        v60 = v47;
                        v61 = v46;
                      }

                      else
                      {
                        v60 = 0;
                        v61 = 0;
                      }

                      if (*(dictionaryRepresentation._rawValue + 2))
                      {
                        v48 = sub_24A06E3E4(0x7275736F6C636E65, 0xEE00726F6C6F4365);
                        if (v49)
                        {
                          sub_24A0685BC(*(dictionaryRepresentation._rawValue + 7) + 32 * v48, v79);

                          v50 = swift_dynamicCast();
                          if (v50)
                          {
                            v51 = *&__src[0];
                          }

                          else
                          {
                            v51 = 0;
                          }

                          if (v50)
                          {
                            v52 = *(&__src[0] + 1);
                          }

                          else
                          {
                            v52 = 0;
                          }

                          goto LABEL_91;
                        }
                      }

LABEL_90:

                      v51 = 0;
                      v52 = 0;
LABEL_91:
                      v77[0] = rawValue[0];
                      v77[1] = rawValue[1];
                      v77[2] = v67;
                      v77[3] = v66;
                      v77[4] = v65;
                      v77[5] = v64;
                      LOBYTE(v77[6]) = v75;
                      *(&v77[6] + 1) = v83[0];
                      HIDWORD(v77[6]) = *(v83 + 3);
                      v77[7] = rawValue[0];
                      v77[8] = rawValue[1];
                      v77[9] = rawValue[0];
                      v77[10] = rawValue[1];
                      v77[11] = rawValue[0];
                      v77[12] = rawValue[1];
                      v77[13] = v63;
                      v77[14] = v62;
                      v77[15] = v61;
                      v77[16] = v60;
                      v58 = v52;
                      v59 = v51;
                      v77[17] = v51;
                      v77[18] = v52;
                      LOBYTE(v77[19]) = rawValue[0];
                      BYTE1(v77[19]) = rawValue[0];
                      BYTE2(v77[19]) = rawValue[0];
                      *(&v77[19] + 3) = v81;
                      HIBYTE(v77[19]) = v82;
                      v77[20] = 25705;
                      v77[21] = 0xE200000000000000;
                      strcpy(&v77[22], "idsIdentifier");
                      HIWORD(v77[23]) = -4864;
                      strcpy(&v77[24], "serialNumber");
                      BYTE5(v77[25]) = 0;
                      HIWORD(v77[25]) = -5120;
                      v77[26] = 0x7954656369766564;
                      v77[27] = 0xEA00000000006570;
                      v77[28] = 0x6C43656369766564;
                      v77[29] = 0xEB00000000737361;
                      v77[30] = 0x54746375646F7270;
                      v77[31] = 0xEB00000000657079;
                      v77[32] = 0xD000000000000010;
                      v77[33] = 0x800000024A078500;
                      strcpy(&v77[34], "marketingName");
                      HIWORD(v77[35]) = -4864;
                      v77[36] = 0x6F43656369766564;
                      v77[37] = 0xEB00000000726F6CLL;
                      strcpy(&v77[38], "enclosureColor");
                      HIBYTE(v77[39]) = -18;
                      v77[40] = 0x737574617473;
                      v77[41] = 0xE600000000000000;
                      v77[42] = 0xD000000000000010;
                      v77[43] = 0x800000024A078520;
                      v77[44] = 0x6C61636F4C7369;
                      v77[45] = 0xE700000000000000;
                      memcpy(rawValue, v77, sizeof(rawValue));
                      nullsub_1(rawValue);
                      memcpy(retstr, rawValue, 0x170uLL);
                      *&__src[0] = v7;
                      *(&__src[0] + 1) = v6;
                      *&__src[1] = v67;
                      *(&__src[1] + 1) = v66;
                      *&__src[2] = v65;
                      *(&__src[2] + 1) = v64;
                      LOBYTE(__src[3]) = v75;
                      *(&__src[3] + 1) = v74;
                      *&__src[4] = v10;
                      *(&__src[4] + 1) = v73;
                      *&__src[5] = v15;
                      *(&__src[5] + 1) = v71;
                      *&__src[6] = v72;
                      *(&__src[6] + 1) = v63;
                      *&__src[7] = v62;
                      *(&__src[7] + 1) = v61;
                      *&__src[8] = v60;
                      *(&__src[8] + 1) = v59;
                      *&__src[9] = v58;
                      *(&__src[3] + 1) = v83[0];
                      DWORD1(__src[3]) = *(v83 + 3);
                      BYTE8(__src[9]) = v70;
                      BYTE9(__src[9]) = v69;
                      BYTE10(__src[9]) = v68;
                      *(&__src[9] + 11) = v81;
                      HIBYTE(__src[9]) = v82;
                      *&__src[10] = 25705;
                      *(&__src[10] + 1) = 0xE200000000000000;
                      strcpy(&__src[11], "idsIdentifier");
                      HIWORD(__src[11]) = -4864;
                      strcpy(&__src[12], "serialNumber");
                      BYTE13(__src[12]) = 0;
                      HIWORD(__src[12]) = -5120;
                      *&__src[13] = 0x7954656369766564;
                      *(&__src[13] + 1) = 0xEA00000000006570;
                      *&__src[14] = 0x6C43656369766564;
                      *(&__src[14] + 1) = 0xEB00000000737361;
                      *&__src[15] = 0x54746375646F7270;
                      *(&__src[15] + 1) = 0xEB00000000657079;
                      *&__src[16] = 0xD000000000000010;
                      *(&__src[16] + 1) = 0x800000024A078500;
                      strcpy(&__src[17], "marketingName");
                      HIWORD(__src[17]) = -4864;
                      *&__src[18] = 0x6F43656369766564;
                      *(&__src[18] + 1) = 0xEB00000000726F6CLL;
                      strcpy(&__src[19], "enclosureColor");
                      HIBYTE(__src[19]) = -18;
                      *&__src[20] = 0x737574617473;
                      *(&__src[20] + 1) = 0xE600000000000000;
                      *&__src[21] = 0xD000000000000010;
                      *(&__src[21] + 1) = 0x800000024A078520;
                      *&__src[22] = 0x6C61636F4C7369;
                      *(&__src[22] + 1) = 0xE700000000000000;
                      sub_24A06516C(v77, v76);
                      sub_24A0651C8(__src);
                      return;
                    }
                  }

                  else
                  {
                    v66 = 0;
                    v67 = 0;
                  }

                  v64 = 0;
                  v65 = 0;
                  goto LABEL_61;
                }

                goto LABEL_38;
              }
            }
          }
        }

LABEL_37:

LABEL_40:
      }
    }
  }

LABEL_41:

LABEL_42:
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v29 = sub_24A076158();
  __swift_project_value_buffer(v29, qword_27EF32FE0);

  v30 = sub_24A076138();
  v31 = sub_24A076298();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&__src[0] = v33;
    *v32 = 136315138;
    v34 = sub_24A0761A8();
    v36 = v35;

    v37 = sub_24A06C498(v34, v36, __src);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_24A062000, v30, v31, "Failed to parse TargetDevice dict: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x24C20F040](v33, -1, -1);
    MEMORY[0x24C20F040](v32, -1, -1);
  }

  else
  {
  }

  sub_24A06E45C(__src);
  memcpy(retstr, __src, 0x170uLL);
}

uint64_t TargetDevice.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TargetDevice.idsIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TargetDevice.serialNumber.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TargetDevice.deviceClass.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t TargetDevice.productType.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t TargetDevice.userAssignedName.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t TargetDevice.marketingName.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t TargetDevice.deviceColor.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t TargetDevice.enclosureColor.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

EnhancedLogging::TargetDevice::DeviceType_optional __swiftcall TargetDevice.DeviceType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

EnhancedLogging::TargetDevice::Status_optional __swiftcall TargetDevice.Status.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t TargetDevice.dictionaryRepresentation.getter()
{
  v1 = v0[1];
  v18 = *v0;
  v46 = v0[2];
  v49 = v0[3];
  v50 = v0[5];
  v22 = v0[4];
  v23 = *(v0 + 48);
  v25 = v0[7];
  v51 = v0[8];
  v52 = v0[10];
  v27 = v0[9];
  v28 = v0[11];
  v53 = v0[12];
  v54 = v0[14];
  v30 = v0[13];
  v31 = v0[15];
  v55 = v0[16];
  v32 = v0[17];
  v45 = v0[18];
  v36 = *(v0 + 152);
  v40 = *(v0 + 153);
  v44 = *(v0 + 154);
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[24];
  v41 = v0[25];
  v7 = v0[26];
  v8 = v0[28];
  v38 = v0[29];
  v39 = v0[27];
  v37 = v0[31];
  v16 = v0[30];
  v17 = v0[32];
  v34 = v0[35];
  v35 = v0[33];
  v19 = v0[34];
  v20 = v0[36];
  v33 = v0[37];
  v21 = v0[38];
  v24 = v0[40];
  v29 = v0[42];
  v42 = v0[41];
  v43 = v0[43];
  v26 = v0[44];
  v47 = v0[39];
  v48 = v0[45];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CE8, &qword_24A076E68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A0775E0;
  *(inited + 32) = v3;
  v10 = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = v18;
  *(inited + 56) = v1;
  *(inited + 72) = v10;
  *(inited + 80) = v4;
  *(inited + 88) = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31E58, &qword_24A0775F0);
  *(inited + 128) = v6;
  *(inited + 144) = v22;
  *(inited + 176) = v7;
  *(inited + 192) = v23;
  *(inited + 224) = v8;
  *(inited + 240) = v25;
  *(inited + 264) = v10;
  *(inited + 272) = v16;
  *(inited + 288) = v27;
  *(inited + 312) = v10;
  *(inited + 320) = v17;
  *(inited + 336) = v28;
  *(inited + 360) = v10;
  *(inited + 368) = v19;
  *(inited + 384) = v30;
  *(inited + 408) = v11;
  *(inited + 416) = v20;
  *(inited + 432) = v31;
  *(inited + 456) = v11;
  *(inited + 464) = v21;
  *(inited + 480) = v32;
  *(inited + 120) = v11;
  *(inited + 168) = v11;
  *(inited + 504) = v11;
  *(inited + 512) = v24;
  v12 = MEMORY[0x277D83B88];
  *(inited + 216) = MEMORY[0x277D83B88];
  *(inited + 552) = v12;
  *(inited + 528) = v36;
  *(inited + 560) = v26;
  *(inited + 576) = v40;
  v13 = MEMORY[0x277D839B0];
  *(inited + 608) = v29;
  *(inited + 600) = v13;
  *(inited + 648) = v13;
  *(inited + 624) = v44;
  *(inited + 136) = v41;
  *(inited + 184) = v39;
  *(inited + 232) = v38;
  *(inited + 280) = v37;
  *(inited + 328) = v35;
  *(inited + 376) = v34;
  *(inited + 424) = v33;
  *(inited + 472) = v47;
  *(inited + 96) = v46;
  *(inited + 104) = v49;
  *(inited + 152) = v50;
  *(inited + 248) = v51;
  *(inited + 296) = v52;
  *(inited + 344) = v53;
  *(inited + 392) = v54;
  *(inited + 440) = v55;
  *(inited + 488) = v45;
  *(inited + 520) = v42;
  *(inited + 568) = v48;
  *(inited + 616) = v43;

  v14 = sub_24A0678C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CF8, &qword_24A076E78);
  swift_arrayDestroy();
  return v14;
}

BOOL static TargetDevice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  v3 = *(a2 + 152);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_24A076408();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t TargetDevice.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24A0761F8();
}

uint64_t TargetDevice.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24A076498();
  sub_24A0761F8();
  return sub_24A0764B8();
}

uint64_t sub_24A06E1D8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24A076498();
  sub_24A0761F8();
  return sub_24A0764B8();
}

uint64_t sub_24A06E224()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24A0761F8();
}

uint64_t sub_24A06E22C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24A076498();
  sub_24A0761F8();
  return sub_24A0764B8();
}

uint64_t sub_24A06E274@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL sub_24A06E280(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  v3 = *(a2 + 152);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_24A076408();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

void sub_24A06E2EC(_BYTE *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if ((deviceClassNumber - 1) > 0xA)
    {
      v5 = 0;
    }

    else
    {
      v5 = byte_24A077926[deviceClassNumber - 1];
    }

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static TargetDevice.DeviceType.current.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27EF31C88 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_27EF31E50;
  return result;
}

unint64_t sub_24A06E3E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24A076498();
  sub_24A0761F8();
  v6 = sub_24A0764B8();

  return sub_24A06E4D8(a1, a2, v6);
}

double sub_24A06E45C(_OWORD *a1)
{
  result = 0.0;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_24A06E494(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24A076338();

  return sub_24A06E590(a1, v5);
}

unint64_t sub_24A06E4D8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24A076408())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24A06E590(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24A06EB0C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C20E9D0](v9, a1);
      sub_24A06EB68(v9);
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

unint64_t sub_24A06E65C()
{
  result = qword_27EF31E60;
  if (!qword_27EF31E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31E60);
  }

  return result;
}

unint64_t sub_24A06E6C0()
{
  result = qword_27EF31E68;
  if (!qword_27EF31E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31E68);
  }

  return result;
}

unint64_t sub_24A06E718()
{
  result = qword_27EF31E70;
  if (!qword_27EF31E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31E70);
  }

  return result;
}

uint64_t sub_24A06E774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
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

uint64_t sub_24A06E7BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetDevice.DeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetDevice.DeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetDevice.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetDevice.Status(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24A06EBDC()
{
  v0 = sub_24A076158();
  __swift_allocate_value_buffer(v0, qword_27EF32FE0);
  __swift_project_value_buffer(v0, qword_27EF32FE0);
  return sub_24A076148();
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

EnhancedLogging::MachService_optional __swiftcall MachService.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A0763D8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t MachService.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000031;
  }

  else
  {
    result = 0xD00000000000001ELL;
  }

  *v0;
  return result;
}

uint64_t sub_24A06ED50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000031;
  }

  else
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v3)
  {
    v5 = &unk_24A077C20;
  }

  else
  {
    v5 = "com.apple.enhancedloggingd.xpc";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000031;
  }

  else
  {
    v7 = 0xD00000000000001ELL;
  }

  if (*a2)
  {
    v8 = "com.apple.enhancedloggingd.xpc";
  }

  else
  {
    v8 = &unk_24A077C20;
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24A076408();
  }

  return v10 & 1;
}

unint64_t sub_24A06EE00()
{
  result = qword_27EF31E78;
  if (!qword_27EF31E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31E78);
  }

  return result;
}

uint64_t sub_24A06EE54()
{
  v1 = *v0;
  sub_24A076498();
  sub_24A0761F8();

  return sub_24A0764B8();
}

uint64_t sub_24A06EED4()
{
  *v0;
  sub_24A0761F8();
}

uint64_t sub_24A06EF40()
{
  v1 = *v0;
  sub_24A076498();
  sub_24A0761F8();

  return sub_24A0764B8();
}

uint64_t sub_24A06EFBC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A0763D8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24A06F01C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000031;
  }

  else
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v1)
  {
    v3 = "com.apple.enhancedloggingd.xpc";
  }

  else
  {
    v3 = &unk_24A077C20;
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t getEnumTagSinglePayload for MachService(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MachService(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24A06F22C()
{
  sub_24A076498();
  MEMORY[0x24C20EB30](0);
  return sub_24A0764B8();
}

uint64_t sub_24A06F298()
{
  sub_24A076498();
  MEMORY[0x24C20EB30](0);
  return sub_24A0764B8();
}

id *sub_24A06F2D8()
{
  v1 = v0;
  v2 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31F00, &qword_24A077AB8);
  sub_24A0762D8();

  sub_24A06CAA0((v1 + 5), &qword_27EF31F08, &unk_24A077AC0);
  return v1;
}

uint64_t sub_24A06F390()
{
  sub_24A06F2D8();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

id sub_24A06F3DC@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

void sub_24A06F430()
{
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v0 = sub_24A076158();
  __swift_project_value_buffer(v0, qword_27EF32FE0);
  oslog = sub_24A076138();
  v1 = sub_24A076298();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24A062000, oslog, v1, "XPC connection interrupted", v2, 2u);
    MEMORY[0x24C20F040](v2, -1, -1);
  }
}

void sub_24A06F51C(void *a1)
{
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v2 = sub_24A076158();
  __swift_project_value_buffer(v2, qword_27EF32FE0);
  v3 = a1;
  oslog = sub_24A076138();
  v4 = sub_24A076298();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24A062000, oslog, v4, "XPC error: %@", v5, 0xCu);
    sub_24A06CAA0(v6, &qword_27EF31DE8, &qword_24A0774F8);
    MEMORY[0x24C20F040](v6, -1, -1);
    MEMORY[0x24C20F040](v5, -1, -1);
  }
}

uint64_t getEnumTagSinglePayload for XPCConnectionError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for XPCConnectionError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_24A06F794()
{
  result = qword_27EF31F10;
  if (!qword_27EF31F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF31F10);
  }

  return result;
}

uint64_t sub_24A06F830(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(v4 + 72);
  sub_24A075A50();
  sub_24A0762D8();
  v9 = aBlock[0];
  aBlock[4] = sub_24A06F7E8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A0700EC;
  aBlock[3] = a2;
  v10 = _Block_copy(aBlock);
  v11 = [v9 remoteObjectProxyWithErrorHandler_];
  _Block_release(v10);

  sub_24A0762F8();
  swift_unknownObjectRelease();
  sub_24A0685BC(v15, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
    return v13;
  }

  else
  {
    sub_24A06CC94();
    swift_allocError();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }
}

uint64_t Session.didUpdateStatus(_:)(uint64_t a1)
{
  if (a1 == 5)
  {
    v3 = Session.targetedDevices.getter();
    swift_beginAccess();
    sub_24A063AEC(v3);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_24A06FA9C(uint64_t a1, void (*a2)(), uint64_t a3)
{
  v7 = v3;
  *(v3 + 16);
  *(v3 + 16);
  v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v9 = sub_24A0761B8();

  v10 = [v8 initWithMachServiceName:v9 options:4096];

  v11 = *(v7 + 24);
  v12 = objc_opt_self();
  v13 = [v12 interfaceWithProtocol_];
  [v10 setRemoteObjectInterface_];

  v14 = *(v7 + 32);
  if (v14)
  {
    sub_24A075AF0(v7 + 40, &v28);
    if (v29)
    {
      sub_24A0689E8(&v28, &aBlock);
      v15 = v14;
      v16 = [v12 interfaceWithProtocol_];
      [v10 setExportedInterface_];

      __swift_project_boxed_opaque_existential_0(&aBlock, v32);
      [v10 setExportedObject_];
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {
      sub_24A06CAA0(&v28, &qword_27EF31F08, &unk_24A077AC0);
    }
  }

  v33 = sub_24A06F430;
  v34 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v31 = sub_24A06FEA8;
  v32 = a1;
  v17 = _Block_copy(&aBlock);
  [v10 setInterruptionHandler_];
  _Block_release(v17);
  v33 = a2;
  v34 = v7;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v31 = sub_24A06FEA8;
  v32 = a3;
  v18 = _Block_copy(&aBlock);

  [v10 setInvalidationHandler_];
  _Block_release(v18);
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v19 = sub_24A076158();
  __swift_project_value_buffer(v19, qword_27EF32FE0);

  v20 = sub_24A076138();
  v21 = sub_24A0762A8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&aBlock = v23;
    *v22 = 136315138;
    if (*(v7 + 16))
    {
      v24 = 0xD000000000000031;
    }

    else
    {
      v24 = 0xD00000000000001ELL;
    }

    if (*(v7 + 16))
    {
      v25 = "com.apple.enhancedloggingd.xpc";
    }

    else
    {
      v25 = &unk_24A077C20;
    }

    v26 = sub_24A06C498(v24, v25 | 0x8000000000000000, &aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_24A062000, v20, v21, "Connecting to enhancedloggingd with mach service %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x24C20F040](v23, -1, -1);
    MEMORY[0x24C20F040](v22, -1, -1);
  }

  [v10 activate];
  return v10;
}

uint64_t sub_24A06FEA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_24A06FEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v9 = sub_24A076158();
  __swift_project_value_buffer(v9, qword_27EF32FE0);
  v10 = sub_24A076138();
  v11 = sub_24A076298();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24A062000, v10, v11, "XPC connection invalidated", v12, 2u);
    MEMORY[0x24C20F040](v12, -1, -1);
  }

  v13 = *(a1 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  v17[4] = a4;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_24A0700C4;
  v17[3] = a5;
  v15 = _Block_copy(v17);

  dispatch_sync(v13, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

void sub_24A0700EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t Session.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Session.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t Session.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*Session.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24A0702B4;
}

void sub_24A0702B4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id Session.totalProgress.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

id Session.compressionProgress.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

id Session.uploadProgress.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_24A070404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 40) = 0;
  swift_unknownObjectWeakInit();
  sub_24A06521C(&v11);
  v8 = v12[0];
  *(v4 + 56) = v11;
  *(v4 + 72) = v8;
  *(v4 + 81) = *(v12 + 9);
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 48) = a3;

  if (Session.status.getter() == 5)
  {
    v9 = Session.targetedDevices.getter();
    swift_beginAccess();
    sub_24A063AEC(v9);
    swift_endAccess();
  }

  return v4;
}

uint64_t Session.status.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = sub_24A069670();
  v13 = 0;
  v14 = 1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_24A0761B8();
  v7 = swift_allocObject();
  *(v7 + 16) = &v13;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24A07085C;
  *(v8 + 24) = v7;
  aBlock[4] = sub_24A07086C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A070894;
  aBlock[3] = &block_descriptor_0;
  v9 = _Block_copy(aBlock);

  [v3 getStatusWithSessionID:v6 completionHandler:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else if ((v14 & 1) == 0)
  {
    v11 = v13;

    swift_unknownObjectRelease();
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t Session.targetedDevices.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = sub_24A069670();
  v13 = 0;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_24A0761B8();
  v7 = swift_allocObject();
  *(v7 + 16) = &v13;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24A071A3C;
  *(v8 + 24) = v7;
  v12[4] = sub_24A0760A0;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24A071A44;
  v12[3] = &block_descriptor_12;
  v9 = _Block_copy(v12);

  [v3 getTargetedDevicesWithSessionID:v6 completionHandler:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;
    if (v13)
    {

      swift_unknownObjectRelease();

      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A07085C(uint64_t result)
{
  v2 = *(v1 + 16);
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_24A07086C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Session.collectionStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = sub_24A069670();
  v6 = sub_24A076108();
  (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = sub_24A0761B8();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24A071A58;
  *(v11 + 24) = v10;
  aBlock[4] = sub_24A071A60;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A070B08;
  aBlock[3] = &block_descriptor_21;
  v12 = _Block_copy(aBlock);

  [v5 getCollectionStartDateWithSessionID:v9 completionHandler:v12];
  swift_unknownObjectRelease();

  _Block_release(v12);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A070B08(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31CE0, &qword_24A076E60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_24A0760F8();
    v9 = sub_24A076108();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  }

  else
  {
    v10 = sub_24A076108();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  }

  v8(v6);
  return sub_24A06CAA0(v6, &qword_27EF31CE0, &qword_24A076E60);
}

uint64_t Session.projectedCollectionEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = sub_24A069670();
  v6 = sub_24A076108();
  (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = sub_24A0761B8();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24A0760A4;
  *(v11 + 24) = v10;
  aBlock[4] = sub_24A076098;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A070B08;
  aBlock[3] = &block_descriptor_31;
  v12 = _Block_copy(aBlock);

  [v5 getProjectedCollectionEndDateWithSessionID:v9 completionHandler:v12];
  swift_unknownObjectRelease();

  _Block_release(v12);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t Session.collectionDeferralDuration.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = sub_24A069670();
  v12 = 0;
  v13 = 1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_24A0761B8();
  v7 = swift_allocObject();
  *(v7 + 16) = &v12;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24A071A88;
  *(v8 + 24) = v7;
  aBlock[4] = sub_24A071A98;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A07101C;
  aBlock[3] = &block_descriptor_40;
  v9 = _Block_copy(aBlock);

  [v3 getCollectionDeferralDurationWithSessionID:v6 completionHandler:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else if ((v13 & 1) == 0)
  {

    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t Session.isDeferredCollectionSession.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = sub_24A069670();
  v13 = 2;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_24A0761B8();
  v7 = swift_allocObject();
  *(v7 + 16) = &v13;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24A071AC0;
  *(v8 + 24) = v7;
  v12[4] = sub_24A071ACC;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24A0711F4;
  v12[3] = &block_descriptor_49;
  v9 = _Block_copy(v12);

  [v3 getIsDeferredCollectionSessionWithSessionID:v6 completionHandler:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;
    if (v13 != 2)
    {

      swift_unknownObjectRelease();
      return v11 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t Session.requiresDeviceSelection.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = sub_24A069670();
  v13 = 2;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_24A0761B8();
  v7 = swift_allocObject();
  *(v7 + 16) = &v13;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24A076088;
  *(v8 + 24) = v7;
  v12[4] = sub_24A07609C;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24A0711F4;
  v12[3] = &block_descriptor_59;
  v9 = _Block_copy(v12);

  [v3 getRequiresDeviceSelectionWithSessionID:v6 completionHandler:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;
    if (v13 != 2)
    {

      swift_unknownObjectRelease();
      return v11 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t Session.requiresFollowUpQuestion.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = sub_24A069670();
  v13 = 2;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_24A0761B8();
  v7 = swift_allocObject();
  *(v7 + 16) = &v13;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24A076088;
  *(v8 + 24) = v7;
  v12[4] = sub_24A07609C;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24A0711F4;
  v12[3] = &block_descriptor_69;
  v9 = _Block_copy(v12);

  [v3 getRequiresFollowUpQuestionWithSessionID:v6 completionHandler:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;
    if (v13 != 2)
    {

      swift_unknownObjectRelease();
      return v11 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t Session.targetedDeviceTypes.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = sub_24A069670();
  v14 = MEMORY[0x277D84F90];
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_24A0761B8();
  v7 = swift_allocObject();
  *(v7 + 16) = &v14;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24A071AF4;
  *(v8 + 24) = v7;
  v13[4] = sub_24A0760A0;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24A07183C;
  v13[3] = &block_descriptor_78;
  v9 = _Block_copy(v13);

  [v3 getTargetedDeviceTypesWithSessionID:v6 completionHandler:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {

    v12 = sub_24A07575C(v11);
    swift_unknownObjectRelease();

    return v12;
  }

  return result;
}

uint64_t sub_24A071750(uint64_t a1, char **a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v7 = *v4++;
      v6 = v7;
      if (v7 <= 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_24A06C080(0, *(v5 + 2) + 1, 1, v5);
        }

        v9 = *(v5 + 2);
        v8 = *(v5 + 3);
        if (v9 >= v8 >> 1)
        {
          v5 = sub_24A06C080((v8 > 1), v9 + 1, 1, v5);
        }

        *(v5 + 2) = v9 + 1;
        v5[v9 + 32] = v6;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v10 = *a2;
  *a2 = v5;
}

uint64_t sub_24A07183C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_24A076238();
  v2();
}

uint64_t sub_24A071898(uint64_t result, char **a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    v6 = result + 32;
    do
    {
      v7 = v4;
      while (1)
      {
        if (v7 >= v3)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }

        v8 = *(v6 + 8 * v7);

        TargetDevice.init(dictionaryRepresentation:)(__src, v9);
        memcpy(&__src[0].is_nil, __src, 0x170uLL);
        if (sub_24A06CA88(&__src[0].is_nil) != 1)
        {
          break;
        }

        memcpy(__dst, __src, sizeof(__dst));
        result = sub_24A06CAA0(__dst, &qword_27EF31DF0, &unk_24A077500);
        ++v7;
        if (v4 == v3)
        {
          goto LABEL_16;
        }
      }

      memcpy(__dst, __src, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24A06BF54(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_24A06BF54((v10 > 1), v11 + 1, 1, v5);
      }

      memcpy(v13, __dst, sizeof(v13));
      *(v5 + 2) = v11 + 1;
      result = memcpy(&v5[368 * v11 + 32], v13, 0x170uLL);
    }

    while (v4 != v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v12 = *a2;
  *a2 = v5;
}

uint64_t sub_24A071A60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_24A071A88(double a1)
{
  v2 = *(v1 + 16);
  *v2 = a1;
  *(v2 + 8) = 0;
}

uint64_t sub_24A071A98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24A071ACC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t Session.enrollConsentItems.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = sub_24A069670();
  v13 = 0;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_24A0761B8();
  v7 = swift_allocObject();
  *(v7 + 16) = &v13;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24A0757D0;
  *(v8 + 24) = v7;
  v12[4] = sub_24A0757D8;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24A071E84;
  v12[3] = &block_descriptor_87;
  v9 = _Block_copy(v12);

  [v3 getEnrollConsentItemsWithSessionID:v6 completionHandler:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;
    if (v13)
    {

      swift_unknownObjectRelease();

      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A071CBC(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    v6 = result + 32;
    do
    {
      v7 = v4;
      while (1)
      {
        if (v7 >= v3)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }

        v8 = *(v6 + 8 * v7);

        sub_24A065C68(v9, &v26);
        if (*(&v26 + 1))
        {
          break;
        }

        v22 = v28;
        v23 = v29;
        v24 = v30;
        v25 = v31;
        v20 = v26;
        v21 = v27;
        result = sub_24A06CAA0(&v20, &qword_27EF31F48, &qword_24A077C30);
        ++v7;
        if (v4 == v3)
        {
          goto LABEL_16;
        }
      }

      v22 = v28;
      v23 = v29;
      v24 = v30;
      v25 = v31;
      v20 = v26;
      v21 = v27;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24A06C174(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_24A06C174((v10 > 1), v11 + 1, 1, v5);
        v5 = result;
      }

      v16 = v22;
      v17 = v23;
      v18 = v24;
      v19 = v25;
      v12 = v20;
      v15 = v21;
      *(v5 + 16) = v11 + 1;
      v13 = (v5 + 96 * v11);
      v13[3] = v15;
      v13[6] = v18;
      v13[7] = v19;
      v13[4] = v16;
      v13[5] = v17;
      v13[2] = v12;
    }

    while (v4 != v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v14 = *a2;
  *a2 = v5;
}

uint64_t sub_24A071E98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_24A076238();
  v5();
}

uint64_t Session.uploadConsentItems.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = sub_24A069670();
  v13 = 0;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_24A0761B8();
  v7 = swift_allocObject();
  *(v7 + 16) = &v13;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24A075800;
  *(v8 + 24) = v7;
  v12[4] = sub_24A075808;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24A072484;
  v12[3] = &block_descriptor_96;
  v9 = _Block_copy(v12);

  [v3 getUploadConsentItemsWithSessionID:v6 completionHandler:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;
    if (v13)
    {

      swift_unknownObjectRelease();

      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A0720E0(uint64_t a1, uint64_t *a2)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31F38, &qword_24A077C20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v46 - v5;
  v7 = type metadata accessor for UploadConsentItem();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31D90, &qword_24A077498);
  result = sub_24A0763A8();
  v13 = result;
  v14 = 0;
  v51 = result;
  v52 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v58 = v8;
  v59 = v7;
  v22 = (v8 + 48);
  v50 = result + 64;
  v57 = v11;
  v48 = v16;
  v49 = v21;
  if (v20)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v20));
      v53 = (v20 - 1) & v20;
LABEL_10:
      v26 = v23 | (v14 << 6);
      v27 = *(v52 + 56);
      v28 = (*(v52 + 48) + 16 * v26);
      v29 = v28[1];
      v55 = *v28;
      v56 = v26;
      v30 = *(v27 + 8 * v26);
      v31 = *(v30 + 16);
      v54 = v29;

      if (v31)
      {
        break;
      }

      v33 = MEMORY[0x277D84F90];
LABEL_22:

      v39 = v56;
      v13 = v51;
      *(v50 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      v40 = (v13[6] + 16 * v39);
      v41 = v54;
      *v40 = v55;
      v40[1] = v41;
      *(v13[7] + 8 * v39) = v33;
      v42 = v13[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_28;
      }

      v13[2] = v44;
      v21 = v49;
      v20 = v53;
      if (!v53)
      {
        goto LABEL_5;
      }
    }

    v32 = 0;
    v33 = MEMORY[0x277D84F90];
    while (v32 < *(v30 + 16))
    {
      v34 = *(v30 + 32 + 8 * v32);

      sub_24A066438(v35, v6);
      if ((*v22)(v6, 1, v7) == 1)
      {
        result = sub_24A06CAA0(v6, &qword_27EF31F38, &qword_24A077C20);
      }

      else
      {
        sub_24A075E28(v6, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_24A06C294(0, v33[2] + 1, 1, v33);
        }

        v37 = v33[2];
        v36 = v33[3];
        if (v37 >= v36 >> 1)
        {
          v33 = sub_24A06C294(v36 > 1, v37 + 1, 1, v33);
        }

        v33[2] = v37 + 1;
        v38 = v33 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v37;
        v11 = v57;
        result = sub_24A075E28(v57, v38);
        v7 = v59;
      }

      if (v31 == ++v32)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v14 >= v21)
      {
        v45 = *v47;
        *v47 = v13;
      }

      v25 = *(v48 + 8 * v14);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v53 = (v25 - 1) & v25;
        goto LABEL_10;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_24A072484(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31F30, &qword_24A077C18);
  sub_24A076198();
  v2();
}

uint64_t Session.attachConsentForm(data:)()
{
  v2 = v0;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v3 = sub_24A076158();
  __swift_project_value_buffer(v3, qword_27EF32FE0);
  v4 = sub_24A076138();
  v5 = sub_24A0762A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24A06C498(0xD000000000000018, 0x800000024A078650, v20);
    _os_log_impl(&dword_24A062000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C20F040](v7, -1, -1);
    MEMORY[0x24C20F040](v6, -1, -1);
  }

  v8 = v2[6];
  result = sub_24A069670();
  if (!v1)
  {
    v10 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = v2[2];
    v13 = v2[3];
    v14 = sub_24A0761B8();
    v15 = sub_24A0760E8();
    v20[4] = sub_24A07608C;
    v20[5] = v11;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 1107296256;
    v20[2] = sub_24A0727A8;
    v20[3] = &block_descriptor_102;
    v16 = _Block_copy(v20);

    [v10 attachConsentFormWithSessionID:v14 data:v15 completionHandler:v16];
    _Block_release(v16);

    swift_beginAccess();
    v17 = *(v11 + 16);
    if (v17)
    {
      v18 = *(v11 + 16);
      swift_willThrow();
      v19 = v17;
    }

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A0727A8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t Session.startCollectingFromLocalDevice(options:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_24A072838, 0, 0);
}

uint64_t sub_24A072838()
{
  v20 = v0;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v1 = sub_24A076158();
  __swift_project_value_buffer(v1, qword_27EF32FE0);
  v2 = sub_24A076138();
  v3 = sub_24A0762A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_24A06C498(0xD000000000000028, 0x800000024A078670, v19);
    *(v5 + 12) = 2080;
    v0[2] = v4;
    v7 = sub_24A0761E8();
    v9 = sub_24A06C498(v7, v8, v19);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_24A062000, v2, v3, "%s options: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C20F040](v6, -1, -1);
    MEMORY[0x24C20F040](v5, -1, -1);
  }

  v10 = *(v0[3] + 48);
  v11 = sub_24A06F830(sub_24A075D88, &block_descriptor_166, &qword_27EF31E40, &qword_24A0775D8);
  v0[5] = v11;
  v12 = v11;
  v14 = v0[3];
  v13 = v0[4];
  v15 = swift_task_alloc();
  v0[6] = v15;
  v15[2] = v12;
  v15[3] = v14;
  v15[4] = v13;
  v16 = *(MEMORY[0x277D85A40] + 4);
  v17 = swift_task_alloc();
  v0[7] = v17;
  *v17 = v0;
  v17[1] = sub_24A072B20;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24A072B20()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_24A072CA0;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_24A072C3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24A072C3C()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24A072CA0()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_unknownObjectRelease();

  v3 = v0[8];
  v4 = v0[1];

  return v4();
}

void sub_24A072D0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31F28, &qword_24A077C10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v15 = sub_24A0761B8();
  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  aBlock[4] = sub_24A076090;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A0727A8;
  aBlock[3] = &block_descriptor_163;
  v18 = _Block_copy(aBlock);

  [a2 startCollectingFromLocalDeviceWithSessionID:v15 options:a4 completionHandler:v18];
  _Block_release(v18);
}

uint64_t Session.startCollecting(from:options:)(uint64_t a1, void *a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v3[5] = *a2;
  return MEMORY[0x2822009F8](sub_24A072F0C, 0, 0);
}

uint64_t sub_24A072F0C()
{
  v20 = v0;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v1 = sub_24A076158();
  __swift_project_value_buffer(v1, qword_27EF32FE0);
  v2 = sub_24A076138();
  v3 = sub_24A0762A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_24A06C498(0xD00000000000001ELL, 0x800000024A0786A0, v19);
    *(v5 + 12) = 2080;
    *(v0 + 16) = v4;
    v7 = sub_24A0761E8();
    v9 = sub_24A06C498(v7, v8, v19);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_24A062000, v2, v3, "%s options: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C20F040](v6, -1, -1);
    MEMORY[0x24C20F040](v5, -1, -1);
  }

  v10 = *(*(v0 + 32) + 48);
  v11 = sub_24A06F830(sub_24A075D88, &block_descriptor_166, &qword_27EF31E40, &qword_24A0775D8);
  *(v0 + 48) = v11;
  v12 = v11;
  v13 = *(v0 + 40);
  v14 = swift_task_alloc();
  *(v0 + 56) = v14;
  v15 = *(v0 + 24);
  *(v14 + 16) = v12;
  *(v14 + 24) = vextq_s8(v15, v15, 8uLL);
  *(v14 + 40) = v13;
  v16 = *(MEMORY[0x277D85A40] + 4);
  v17 = swift_task_alloc();
  *(v0 + 64) = v17;
  *v17 = v0;
  v17[1] = sub_24A073200;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24A073200()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_24A073380;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_24A07331C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24A07331C()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24A073380()
{
  v1 = v0[6];
  v2 = v0[7];
  swift_unknownObjectRelease();

  v3 = v0[9];
  v4 = v0[1];

  return v4();
}

void sub_24A0733EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31F28, &qword_24A077C10);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v30 = &v28 - v11;
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  v14 = sub_24A0761B8();
  v15 = v14;
  v16 = *(a4 + 16);
  v33 = a5;
  if (v16)
  {
    v28 = v14;
    v29 = a2;
    v35 = MEMORY[0x277D84F90];
    sub_24A06741C(0, v16, 0);
    v17 = v35;
    v18 = (a4 + 32);
    do
    {
      memcpy(v34, v18, sizeof(v34));
      v19 = TargetDevice.dictionaryRepresentation.getter();
      v35 = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24A06741C((v20 > 1), v21 + 1, 1);
        v17 = v35;
      }

      *(v17 + 16) = v21 + 1;
      *(v17 + 8 * v21 + 32) = v19;
      v18 += 368;
      --v16;
    }

    while (v16);
    v15 = v28;
    a2 = v29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31D80, &qword_24A077488);
  v22 = sub_24A076228();

  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v31, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = swift_allocObject();
  (*(v9 + 32))(v26 + v25, v23, v24);
  v34[4] = sub_24A075C90;
  v34[5] = v26;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 1107296256;
  v34[2] = sub_24A0727A8;
  v34[3] = &block_descriptor_157;
  v27 = _Block_copy(v34);

  [a2 startCollectingWithSessionID:v15 devices:v22 options:v33 completionHandler:v27];
  _Block_release(v27);
}

uint64_t sub_24A0736B0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31F28, &qword_24A077C10);
    return sub_24A076258();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31F28, &qword_24A077C10);
    return sub_24A076268();
  }
}

uint64_t Session.startUploading(options:)(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v5 = sub_24A076158();
  __swift_project_value_buffer(v5, qword_27EF32FE0);
  v6 = sub_24A076138();
  v7 = sub_24A0762A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_24A06C498(0xD000000000000018, 0x800000024A0786C0, v24);
    *(v8 + 12) = 2080;
    v24[7] = v4;
    v10 = sub_24A0761E8();
    v12 = sub_24A06C498(v10, v11, v24);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_24A062000, v6, v7, "%s options: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C20F040](v9, -1, -1);
    MEMORY[0x24C20F040](v8, -1, -1);
  }

  v13 = v3[6];
  result = sub_24A069670();
  if (!v2)
  {
    v15 = result;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v17 = v3[2];
    v18 = v3[3];
    v19 = sub_24A0761B8();
    v24[4] = sub_24A07608C;
    v24[5] = v16;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 1107296256;
    v24[2] = sub_24A0727A8;
    v24[3] = &block_descriptor_110;
    v20 = _Block_copy(v24);

    [v15 startUploadingWithSessionID:v19 options:v4 completionHandler:v20];
    _Block_release(v20);

    swift_beginAccess();
    v21 = *(v16 + 16);
    if (v21)
    {
      v22 = *(v16 + 16);
      swift_willThrow();
      v23 = v21;
    }

    swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Session.issueOccurred()()
{
  v2 = v0;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v3 = sub_24A076158();
  __swift_project_value_buffer(v3, qword_27EF32FE0);
  v4 = sub_24A076138();
  v5 = sub_24A0762A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24A06C498(0x63634F6575737369, 0xEF29286465727275, v19);
    _os_log_impl(&dword_24A062000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C20F040](v7, -1, -1);
    MEMORY[0x24C20F040](v6, -1, -1);
  }

  v8 = v2[6];
  v9 = sub_24A069670();
  if (!v1)
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = v2[2];
    v13 = v2[3];
    v14 = sub_24A0761B8();
    v19[4] = sub_24A075880;
    v19[5] = v11;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_24A0727A8;
    v19[3] = &block_descriptor_114;
    v15 = _Block_copy(v19);

    [v10 issueOccurredWithSessionID:v14 completionHandler:v15];
    _Block_release(v15);

    swift_beginAccess();
    v16 = *(v11 + 16);
    if (v16)
    {
      v17 = *(v11 + 16);
      swift_willThrow();
      v18 = v16;
    }

    swift_unknownObjectRelease();
  }
}

void sub_24A073C8C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;
}

uint64_t sub_24A073D0C()
{
  v16 = v0;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v1 = sub_24A076158();
  __swift_project_value_buffer(v1, qword_27EF32FE0);
  v2 = sub_24A076138();
  v3 = sub_24A0762A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24A06C498(0xD000000000000012, 0x800000024A0786E0, &v15);
    _os_log_impl(&dword_24A062000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C20F040](v5, -1, -1);
    MEMORY[0x24C20F040](v4, -1, -1);
  }

  v6 = *(v0[2] + 48);
  v7 = sub_24A06F830(sub_24A075D88, &block_descriptor_166, &qword_27EF31E40, &qword_24A0775D8);
  v0[3] = v7;
  v8 = v7;
  v9 = v0[2];
  v10 = swift_task_alloc();
  v0[4] = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_24A073FA0;
  v13 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD000000000000012, 0x800000024A0786E0, sub_24A07589C, v10, v13);
}

uint64_t sub_24A073FA0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_24A074124;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_24A0740BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24A0740BC()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24A074124()
{
  v1 = v0[3];
  v2 = v0[4];
  swift_unknownObjectRelease();

  v3 = v0[6];
  v4 = v0[1];

  return v4(0);
}

void sub_24A074194(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31F20, &qword_24A077C08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  v13 = sub_24A0761B8();
  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  aBlock[4] = sub_24A075BF0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A0743E0;
  aBlock[3] = &block_descriptor_151;
  v16 = _Block_copy(aBlock);

  [a2 issueDidNotOccurWithSessionID:v13 completionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_24A07435C(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31F20, &qword_24A077C08);
    return sub_24A076258();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31F20, &qword_24A077C08);
    return sub_24A076268();
  }
}

void sub_24A0743E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

Swift::Void __swiftcall Session.cancel()()
{
  v1 = v0;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v2 = sub_24A076158();
  __swift_project_value_buffer(v2, qword_27EF32FE0);
  v3 = sub_24A076138();
  v4 = sub_24A0762A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24A06C498(0x29286C65636E6163, 0xE800000000000000, aBlock);
    _os_log_impl(&dword_24A062000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C20F040](v6, -1, -1);
    MEMORY[0x24C20F040](v5, -1, -1);
  }

  v7 = v1[6];
  v8 = sub_24A069670();
  v10 = v1[2];
  v9 = v1[3];
  v11 = v8;
  v12 = sub_24A0761B8();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A06FEA8;
  aBlock[3] = &block_descriptor_119;
  v13 = _Block_copy(aBlock);
  [v11 cancelWithSessionID:v12 completionHandler:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall Session.flush()()
{
  v1 = v0;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v2 = sub_24A076158();
  __swift_project_value_buffer(v2, qword_27EF32FE0);
  v3 = sub_24A076138();
  v4 = sub_24A0762A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24A06C498(0x29286873756C66, 0xE700000000000000, aBlock);
    _os_log_impl(&dword_24A062000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C20F040](v6, -1, -1);
    MEMORY[0x24C20F040](v5, -1, -1);
  }

  v7 = v1[6];
  v8 = sub_24A069670();
  v10 = v1[2];
  v9 = v1[3];
  v11 = v8;
  v12 = sub_24A0761B8();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A06FEA8;
  aBlock[3] = &block_descriptor_122;
  v13 = _Block_copy(aBlock);
  [v11 flushWithSessionID:v12 completionHandler:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

void Session.discoverDevices(callback:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v6 = sub_24A076158();
  __swift_project_value_buffer(v6, qword_27EF32FE0);
  v7 = sub_24A076138();
  v8 = sub_24A0762A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_24A06C498(0xD00000000000001ALL, 0x800000024A078700, aBlock);
    _os_log_impl(&dword_24A062000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C20F040](v10, -1, -1);
    MEMORY[0x24C20F040](v9, -1, -1);
  }

  v11 = v3[6];
  v12 = sub_24A06F830(sub_24A075D88, &block_descriptor_166, &qword_27EF31E40, &qword_24A0775D8);
  v14 = v3[13];
  v13 = v3[14];
  v3[13] = a1;
  v3[14] = a2;
  v15 = v12;
  sub_24A06CB00(v14);
  v16 = v3[2];
  v17 = v3[3];

  v18 = sub_24A0761B8();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v3;
  aBlock[4] = sub_24A0758E4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A0727A8;
  aBlock[3] = &block_descriptor_128;
  v20 = _Block_copy(aBlock);

  [v15 startDeviceDiscoveryWithSessionID:v18 completionHandler:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();
}

void *sub_24A074B78(void *result, void (*a2)(void, void *), uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v6 = result;
    v7 = result;
    a2(MEMORY[0x277D84F90], v6);

    v8 = *(a4 + 104);
    v9 = *(a4 + 112);
    *(a4 + 104) = 0;
    *(a4 + 112) = 0;

    return sub_24A06CB00(v8);
  }

  return result;
}

Swift::Void __swiftcall Session.stopDeviceDiscovery()()
{
  v1 = v0;
  if (qword_27EF31C90 != -1)
  {
    swift_once();
  }

  v2 = sub_24A076158();
  __swift_project_value_buffer(v2, qword_27EF32FE0);
  v3 = sub_24A076138();
  v4 = sub_24A0762A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24A06C498(0xD000000000000015, 0x800000024A078720, &v15);
    _os_log_impl(&dword_24A062000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C20F040](v6, -1, -1);
    MEMORY[0x24C20F040](v5, -1, -1);
  }

  v7 = v1[6];
  v8 = sub_24A069670();
  v10 = v1[2];
  v9 = v1[3];
  v11 = v8;
  v12 = sub_24A0761B8();
  [v11 stopDeviceDiscoveryWithSessionID_];

  swift_unknownObjectRelease();
  v13 = v1[13];
  v14 = v1[14];
  v1[13] = 0;
  v1[14] = 0;

  sub_24A06CB00(v13);
}

void *Session.deinit()
{
  v1 = v0[3];

  sub_24A069F04((v0 + 4));
  v2 = v0[6];

  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[11];

  v8 = v0[14];
  sub_24A06CB00(v0[13]);
  return v0;
}

uint64_t Session.__deallocating_deinit()
{
  v1 = v0[3];

  sub_24A069F04((v0 + 4));
  v2 = v0[6];

  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[11];

  v8 = v0[14];
  sub_24A06CB00(v0[13]);

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_24A074EB8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_24A076498();
  MEMORY[0x24C20EB30](a2);
  v7 = sub_24A0764B8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_24A075200(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24A074FB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31F58, &qword_24A077C38);
  result = sub_24A076368();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_24A076498();
      MEMORY[0x24C20EB30](v18);
      result = sub_24A0764B8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24A075200(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A074FB0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24A07534C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24A07548C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_24A076498();
  MEMORY[0x24C20EB30](v4);
  result = sub_24A0764B8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A076438();
  __break(1u);
  return result;
}

void *sub_24A07534C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31F58, &qword_24A077C38);
  v2 = *v0;
  v3 = sub_24A076358();
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