uint64_t sub_1D303AA08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A030, &qword_1D30F4CD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *a1;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D303B7A4(&qword_1EE313FC8);
  sub_1D30E87BC();
  swift_getKeyPath();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A038, &unk_1D30F4D00);
  a2[4] = sub_1D303B704();
  __swift_allocate_boxed_opaque_existential_0Tm(a2);
  sub_1D30E876C();

  (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D303ABD4(unint64_t a1)
{
  v8 = a1;
  v46 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_93:
  v1 = v3;
  v9 = sub_1D30E958C();
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v45 = v8 & 0xC000000000000001;
  v44 = v9;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1D38B29E0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v10 = *(v8 + 32);
  }

  swift_getKeyPath();
  sub_1D303B6BC(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D303B6BC(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  v2 = v60;
  v65 = v10;
  v1 = v61;
  v6 = v62;
  v7 = v64;
  v59 = v63;
  v11 = sub_1D3039188(1uLL, v8);
  v13 = v12;
  v3 = v14;

  if (v11 == v13)
  {
    v5 = 0;
    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_65;
  }

  v15 = v13;
  v5 = 0;
  v41 = v8 & 0xFFFFFFFFFFFFFF8;
  v38 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
  v47 = MEMORY[0x1E69E7CC0];
  v39 = v8;
  v40 = v13 - 1;
  v16 = v11;
  v51 = v13;
  v52 = v11;
  do
  {
    v49 = v5;
    v57 = v65;
    v55 = v2;
    v50 = v1;
    v58 = v6;
    v56 = v59;
    v54 = v7;
    v5 = v16;
    v17 = (2 * v16) | 1;
    v4 = v16;
    while (1)
    {
      if (v16 < v11 || v5 >= v15)
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1D38B29E0](v5, v3);
      }

      else
      {
        if (v5 < 0)
        {
          goto LABEL_91;
        }

        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        v18 = *(v3 + 32 + 8 * v5);
      }

      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v2 = v60;
      v65 = v18;
      v6 = v62;
      v7 = v64;
      v59 = v63;
      v53 = v61;
      if (!v58 || !v62)
      {
        v1 = 1;
        if (v57 != v18 || v55 != v60)
        {
          goto LABEL_32;
        }

        if (v56 != v63 || v54 != v64)
        {
          goto LABEL_35;
        }

        goto LABEL_37;
      }

      if (v50 != v61 || v58 != v62)
      {
        break;
      }

      v1 = 1;
      if (v57 != v18 || v55 != v60)
      {
        goto LABEL_32;
      }

      if (v56 != v63 || v54 != v64)
      {
        goto LABEL_35;
      }

LABEL_38:
      ++v5;
      v17 += 2;
      v15 = v51;
      v11 = v52;
      v16 = v4;
      if (v51 == v5)
      {
        v5 = v49;
        v6 = v58;
        v65 = v57;
        v2 = v55;
        v1 = v50;
        v59 = v56;
        v7 = v54;
        goto LABEL_65;
      }
    }

    v1 = sub_1D30E97CC();
    if (v57 != v18 || v55 != v60)
    {
LABEL_32:
      if ((sub_1D30E97CC() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (v56 != v63 || v54 != v64)
    {
LABEL_35:
      if ((sub_1D30E97CC() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (v1)
    {
LABEL_37:

      goto LABEL_38;
    }

LABEL_41:
    if (v5 < v49)
    {
      goto LABEL_98;
    }

    if (v46)
    {
      v1 = v47;
      if (sub_1D30E958C() < v49)
      {
        goto LABEL_99;
      }

      result = sub_1D30E958C();
    }

    else
    {
      result = *(v41 + 16);
      v1 = v47;
      if (result < v49)
      {
        goto LABEL_99;
      }
    }

    if (result < v5)
    {
      goto LABEL_100;
    }

    v48 = v1;
    if (!v45 || v49 == v5)
    {

      if (!v46)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v49 >= v5)
      {
        __break(1u);
        goto LABEL_105;
      }

      type metadata accessor for AssetPackRecord(0);

      v20 = v49;
      do
      {
        v21 = v20 + 1;
        sub_1D30E94AC();
        v20 = v21;
      }

      while (v5 != v21);
      if (!v46)
      {
LABEL_55:
        v22 = v41;
        v42 = v38;
        goto LABEL_58;
      }
    }

    v22 = sub_1D30E959C();
    v42 = v23;
    v49 = v24;
    v17 = v25;
LABEL_58:
    v26 = v48;

    v43 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1D30D7F80(0, v48[2] + 1, 1, v48);
    }

    v28 = v26[2];
    v27 = v26[3];
    if (v28 >= v27 >> 1)
    {
      v47 = sub_1D30D7F80((v27 > 1), v28 + 1, 1, v26);
    }

    else
    {
      v47 = v26;
    }

    v47[2] = v28 + 1;
    v29 = &v47[10 * v28];
    v29[4] = v57;
    v29[5] = v55;
    v29[6] = v50;
    v29[7] = v58;
    v29[8] = v56;
    v29[9] = v54;
    v29[10] = v43;
    v29[11] = v42;
    v29[12] = v49;
    v29[13] = v17;

    v16 = v5 + 1;
    v8 = v39;
    v1 = v61;
    v15 = v51;
    v11 = v52;
  }

  while (v40 != v5);
LABEL_65:

  v4 = v44;
  if (v5 == v44)
  {

    v4 = v47;
    goto LABEL_89;
  }

  if (v44 < v5)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v53 = v1;
  if (v46)
  {
    if (v8 < 0)
    {
      v1 = v8;
    }

    else
    {
      v1 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1D30E958C() >= v5)
    {
      result = sub_1D30E958C();
      goto LABEL_76;
    }

LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < v5)
  {
    goto LABEL_102;
  }

LABEL_76:
  if (result < v44)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (!v45)
  {

    if (!v46)
    {
      goto LABEL_82;
    }

    goto LABEL_84;
  }

  if (v5 >= v44)
  {
LABEL_105:
    __break(1u);
    return result;
  }

  type metadata accessor for AssetPackRecord(0);

  v30 = v5;
  do
  {
    v31 = v30 + 1;
    sub_1D30E94AC();
    v30 = v31;
  }

  while (v44 != v31);
  if (!v46)
  {
LABEL_82:
    v1 = v8 & 0xFFFFFFFFFFFFFF8;
    v58 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v8 = (2 * v44) | 1;
    goto LABEL_85;
  }

LABEL_84:

  v1 = sub_1D30E959C();
  v58 = v32;
  v5 = v33;
  v8 = v34;
LABEL_85:

  v4 = v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_104:
    v4 = sub_1D30D7F80(0, v4[2] + 1, 1, v4);
  }

  v36 = v4[2];
  v35 = v4[3];
  if (v36 >= v35 >> 1)
  {
    v4 = sub_1D30D7F80((v35 > 1), v36 + 1, 1, v4);
  }

  v4[2] = v36 + 1;
  v37 = &v4[10 * v36];
  v37[4] = v65;
  v37[5] = v2;
  v37[6] = v53;
  v37[7] = v6;
  v37[8] = v59;
  v37[9] = v7;
  v37[10] = v1;
  v37[11] = v58;
  v37[12] = v5;
  v37[13] = v8;

LABEL_89:

  return v4;
}

uint64_t sub_1D303B4D4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  v4 = a1 + 4;
  result = a1[4];
  if (v1 != 1)
  {
    v5 = a1[5];
    if (v5 <= result)
    {
      v6 = result;
    }

    else
    {
      v6 = v5;
    }

    if (v5 < result)
    {
      result = v5;
    }

    if (v1 != 2)
    {
      v7 = 2;
      v8 = result;
      v9 = v6;
      while (v7 < v1)
      {
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_29;
        }

        v11 = v4[v7];
        v7 = v1;
        v13 = v11;
        if (v12 != v1)
        {
          if (v12 >= v1)
          {
            goto LABEL_30;
          }

          v7 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_31;
          }

          v13 = v4[v12];
        }

        if (v13 <= v11)
        {
          v10 = v11;
        }

        else
        {
          v10 = v13;
        }

        if (v13 < v11)
        {
          v11 = v13;
        }

        if (v11 < v8)
        {
          result = v11;
          v8 = v11;
        }

        if (v10 > v9)
        {
          v9 = v10;
        }

        if (v7 == v1)
        {
          return result;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D303B5A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D303B600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A018, &qword_1D30F4C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D303B670()
{
  result = qword_1EE313000;
  if (!qword_1EE313000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE313000);
  }

  return result;
}

uint64_t sub_1D303B6BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D303B704()
{
  result = qword_1EE313FE8;
  if (!qword_1EE313FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A038, &unk_1D30F4D00);
    sub_1D303B7A4(&qword_1EE313FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE313FE8);
  }

  return result;
}

uint64_t sub_1D303B7A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A030, &qword_1D30F4CD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D303B7F4(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v2 = MEMORY[0x1E698C6A0];
    }

    else
    {
      v2 = MEMORY[0x1E698C6B0];
    }
  }

  else if (a1)
  {
    v2 = MEMORY[0x1E698C6A8];
  }

  else
  {
    v1 = objc_opt_self();
    if ([v1 deviceIsiPad])
    {
      v2 = MEMORY[0x1E698C6B8];
    }

    else
    {
      v4 = [v1 deviceIsMac];
      v2 = MEMORY[0x1E698C6B8];
      if ((v4 & 1) == 0 && ![v1 deviceIsRealityDevice])
      {
        v2 = MEMORY[0x1E698C6C0];
      }
    }
  }

  return *v2;
}

uint64_t sub_1D303B8B4()
{
  v1 = v0;
  v2 = [v0 infoDictionary];
  v3 = sub_1D2FEBF78(0xD000000000000012, 0x80000001D30EC600);

  if (v3)
  {
    v4 = [v1 infoDictionary];
    v5 = sub_1D3030FBC(0x6566696E614D4142, 0xED00004C52557473, MEMORY[0x1E69E6158]);

    if (v5)
    {
      v6 = [v1 bundleIdentifier];
      if (v6)
      {
        v7 = v6;
        v8 = sub_1D30E908C();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      sub_1D303B9FC();
      swift_allocError();
      *v12 = v8;
      v12[1] = v10;
      swift_willThrow();
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_1D303B9FC()
{
  result = qword_1EC74A040;
  if (!qword_1EC74A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A040);
  }

  return result;
}

uint64_t sub_1D303BA64(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x1000000000000071;
  }

  sub_1D30E948C();
  MEMORY[0x1D38B2610](0x1000000000000035, 0x80000001D30EC6A0);
  MEMORY[0x1D38B2610](a1, a2);
  MEMORY[0x1D38B2610](0x1000000000000059, 0x80000001D30EC6E0);
  return 0;
}

unint64_t sub_1D303BB38()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CB8, &qword_1D30F33E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D30EE930;
    v4 = *MEMORY[0x1E696A578];
    *(inited + 32) = sub_1D30E908C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v5;
    *(inited + 48) = v2;
    *(inited + 56) = v1;

    v6 = sub_1D30349B8(inited);
    swift_setDeallocating();
    sub_1D303DB58(inited + 32);
    return v6;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];

    return sub_1D30349B8(v8);
  }
}

uint64_t sub_1D303BC1C()
{
  v2 = *v0;
  sub_1D303CCE0();
  return sub_1D30E984C();
}

uint64_t sub_1D303BC60()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D303BC90(uint64_t a1)
{
  v2 = sub_1D303DB04();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D303BCCC(uint64_t a1)
{
  v2 = sub_1D303DB04();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D303BD08()
{
  type metadata accessor for ErrorCoding.NSErrorProjection();
  swift_getWitnessTable();
  return sub_1D30E984C();
}

unint64_t sub_1D303BD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a2;
    v7 = *MEMORY[0x1E696A578];
    v8 = sub_1D30E908C();
    v10 = v9;
    v24 = MEMORY[0x1E69E6158];
    *&v23 = a1;
    *(&v23 + 1) = v5;
    sub_1D2FDCC64(&v23, v21);

    LOBYTE(v5) = swift_isUniquelyReferenced_nonNull_native();
    v20 = a4;
    v11 = v22;
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v13 = *(*(v11 - 8) + 64);
    MEMORY[0x1EEE9AC00](v12);
    v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    sub_1D303D6E4(*v15, v15[1], v8, v10, v5, &v20);

    __swift_destroy_boxed_opaque_existential_1(v21);
    a4 = v20;
  }

  else
  {
  }

  v17 = sub_1D303BF20(a4);

  return v17;
}

unint64_t sub_1D303BF20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F90, &unk_1D30F4AB0);
    v2 = sub_1D30E95CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_1D2FF1430(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_1D2FDCC64(v29, &v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A138, &qword_1D30F5388);
        swift_dynamicCast();
        sub_1D2FDCC64(&v25, v27);
        sub_1D2FDCC64(v27, v28);
        sub_1D2FDCC64(v28, &v26);
        result = sub_1D3032698(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1D2FDCC64(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_1D2FDCC64(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D303C1AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1D303BD74();
}

unint64_t sub_1D303C1C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1D303BD98(*v1, v1[1], v1[2], v1[3]);
}

uint64_t sub_1D303C1D4(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  return sub_1D303BD08();
}

uint64_t sub_1D303C1E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AD0](a1, WitnessTable);
}

uint64_t sub_1D303C23C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AC0](a1, WitnessTable);
}

unint64_t sub_1D303C290()
{
  v1 = *v0;
  v2 = 0x656D614E65707974;
  v3 = 0x6E69616D6F64;
  v4 = 1701080931;
  if (v1 != 3)
  {
    v4 = 0x6F666E4972657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D303C324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D303D94C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D303C34C(uint64_t a1)
{
  v2 = sub_1D303CC8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D303C388(uint64_t a1)
{
  v2 = sub_1D303CC8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ErrorCoding.description.getter()
{
  v1 = *v0;
  swift_getErrorValue();
  return sub_1D30E984C();
}

uint64_t sub_1D303C404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2);
  v12 = sub_1D30E97AC();
  if (v12)
  {
    v13 = v12;
    v14 = *(v8 + 8);
    v14(v11, a2);
  }

  else
  {
    v13 = swift_allocError();
    (*(v8 + 32))(v15, v11, a2);
    v14 = *(v8 + 8);
  }

  DynamicType = swift_getDynamicType();
  *a4 = v13;
  a4[1] = DynamicType;
  a4[2] = a3;
  return (v14)(a1, a2);
}

uint64_t ErrorCoding.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v57[4] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A048, &qword_1D30F4DD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D303CC8C();
  sub_1D30E990C();
  if (!v2)
  {
    LOBYTE(v57[0]) = 0;
    v11 = sub_1D30E963C();
    v13 = v12;
    v53 = v11;
    LOBYTE(v57[0]) = 1;
    sub_1D30E961C();
    if (!v14 || (v15 = sub_1D30E949C(), , !v15))
    {
      v31 = sub_1D303CCE0();
      v26 = &type metadata for ErrorCoding.SwiftErrorProjection;
      v32 = swift_allocError();
      *v33 = v53;
      v33[1] = v13;
      v30 = v32;
      (*(v6 + 8))(v9, v5);
      goto LABEL_11;
    }

    v16 = dynamic_cast_existential_2_conditional(v15);
    if (v16)
    {
      v51 = v18;
      v52 = v17;
      v19 = v16;
      LOBYTE(v57[0]) = 3;
      v50 = sub_1D30E965C();
      LOBYTE(v54) = 4;
      sub_1D2FF96E8();
      sub_1D30E967C();
      v47 = v19;
      v49 = objc_opt_self();
      v21 = v55;
      v20 = v56;
      v48 = sub_1D30E891C();
      sub_1D2FF1804(v21, v20);
      v55 = 0;
      v22 = v48;
      v23 = [v49 propertyListWithData:v48 options:0 format:0 error:&v55];

      v24 = v55;
      if (v23)
      {
        sub_1D30E93AC();
        swift_unknownObjectRelease();
        sub_1D2FF1430(v57, &v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A080, &qword_1D30F4DE0);
        if (swift_dynamicCast())
        {
          v25 = v54;
          v48 = v54;
          v49 = objc_opt_self();
          v26 = v47;
          v27 = sub_1D303CDBC(v47, v53, v13, v50, v25);

          v28 = sub_1D30E87CC();

          v29 = [v49 launderError_];
          v30 = v29;
          __swift_destroy_boxed_opaque_existential_1(v57);
          (*(v6 + 8))(v9, v5);
          v31 = *(v52 + 8);
LABEL_11:
          *a2 = v30;
          a2[1] = v26;
          a2[2] = v31;
          goto LABEL_12;
        }

        goto LABEL_19;
      }

      v43 = v24;

      sub_1D30E87DC();

      swift_willThrow();
    }

    else
    {

      LOBYTE(v54) = 4;
      sub_1D2FF96E8();
      sub_1D30E967C();
      v53 = objc_opt_self();
      v36 = v55;
      v37 = v56;
      v38 = sub_1D30E891C();
      sub_1D2FF1804(v36, v37);
      v55 = 0;
      v39 = v38;
      v40 = [v53 propertyListWithData:v38 options:0 format:0 error:&v55];

      v41 = v55;
      if (v40)
      {
        sub_1D30E93AC();
        swift_unknownObjectRelease();
        sub_1D2FF1430(v57, &v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A060, &qword_1D30F4DD8);
        if (swift_dynamicCast())
        {
          LOBYTE(v55) = 2;
          v53 = sub_1D30E963C();
          LOBYTE(v55) = 3;
          v52 = sub_1D30E965C();
          v51 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v44 = sub_1D30E906C();

          v45 = sub_1D30E901C();

          v30 = [v51 initWithDomain:v44 code:v52 userInfo:v45];

          __swift_destroy_boxed_opaque_existential_1(v57);
          (*(v6 + 8))(v9, v5);
          v26 = sub_1D303D400();
          v31 = sub_1D303D44C();
          goto LABEL_11;
        }

LABEL_19:
        sub_1D303D3AC();
        swift_allocError();
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v57);
        goto LABEL_3;
      }

      v42 = v41;
      sub_1D30E87DC();

      swift_willThrow();
    }

LABEL_3:
    (*(v6 + 8))(v9, v5);
  }

LABEL_12:
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D303CC8C()
{
  result = qword_1EC74A050;
  if (!qword_1EC74A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A050);
  }

  return result;
}

unint64_t sub_1D303CCE0()
{
  result = qword_1EC74A058;
  if (!qword_1EC74A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A058);
  }

  return result;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D303CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ErrorCoding.NSErrorProjection();
  swift_getWitnessTable();
  v9 = swift_allocError();
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;

  return v9;
}

void ErrorCoding.encode(to:)(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A088, &qword_1D30F4DE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D303CC8C();
  v11 = v3;
  sub_1D30E992C();
  swift_getErrorValue();
  sub_1D30E984C();
  LOBYTE(v30) = 0;
  v12 = v28;
  sub_1D30E970C();
  if (v12)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v13 = v4;

    if ((swift_conformsToProtocol2() && v9 || v9 == sub_1D303D400()) && (sub_1D30E956C(), v14))
    {
      LOBYTE(v30) = 1;
      sub_1D30E970C();

      v16 = sub_1D30E87CC();
      v17 = [v16 domain];
      sub_1D30E908C();

      LOBYTE(v30) = 2;
      sub_1D30E970C();

      [v16 code];
      LOBYTE(v30) = 3;
      sub_1D30E972C();
      v27 = v11;
      v28 = objc_opt_self();
      v18 = [v16 userInfo];
      sub_1D30E902C();

      v19 = sub_1D30E901C();

      v30 = 0;
      v20 = [v28 dataWithPropertyList:v19 format:200 options:0 error:&v30];

      v21 = v30;
      if (v20)
      {
        v22 = sub_1D30E893C();
        v24 = v23;

        v30 = v22;
        v31 = v24;
        v29 = 4;
        sub_1D2FF92C4();
        v25 = v27;
        sub_1D30E974C();

        sub_1D2FF1804(v30, v31);
        (*(v13 + 8))(v7, v25);
      }

      else
      {
        v26 = v21;
        sub_1D30E87DC();

        swift_willThrow();
        (*(v4 + 8))(v7, v27);
      }
    }

    else
    {
      (*(v4 + 8))(v7, v3);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D303D320()
{
  v1 = *v0;
  swift_getErrorValue();
  return sub_1D30E984C();
}

unint64_t sub_1D303D3AC()
{
  result = qword_1EC74A068;
  if (!qword_1EC74A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A068);
  }

  return result;
}

unint64_t sub_1D303D400()
{
  result = qword_1EC74A070;
  if (!qword_1EC74A070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC74A070);
  }

  return result;
}

unint64_t sub_1D303D44C()
{
  result = qword_1EC74A078;
  if (!qword_1EC74A078)
  {
    sub_1D303D400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A078);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D303D4B8(uint64_t *a1, int a2)
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

uint64_t sub_1D303D500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D303D584()
{
  result = qword_1EC74A090;
  if (!qword_1EC74A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A090);
  }

  return result;
}

unint64_t sub_1D303D5E0()
{
  result = qword_1EC74A098;
  if (!qword_1EC74A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A098);
  }

  return result;
}

unint64_t sub_1D303D638()
{
  result = qword_1EC74A0A0;
  if (!qword_1EC74A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A0A0);
  }

  return result;
}

unint64_t sub_1D303D690()
{
  result = qword_1EC74A0A8;
  if (!qword_1EC74A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A0A8);
  }

  return result;
}

_OWORD *sub_1D303D6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x1E69E6158];
  v31 = MEMORY[0x1E69E6158];
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v11 = *a6;
  v13 = sub_1D3032698(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_1D2FDCC64(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_1D30343B0();
    goto LABEL_7;
  }

  sub_1D3033224(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_1D3032698(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1D30E981C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_1D303D8C8(v13, a3, a4, *v28, v28[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(&v30);
}

_OWORD *sub_1D303D8C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x1E69E6158];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_1D2FDCC64(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_1D303D94C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001D30EC740 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E65707974 && a2 == 0xE800000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D30E97CC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1D303DB04()
{
  result = qword_1EC74A0B0[0];
  if (!qword_1EC74A0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC74A0B0);
  }

  return result;
}

uint64_t sub_1D303DB58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CC0, &qword_1D30F33E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D303DBD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D303DC14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D303DC5C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1D303DE54()
{
  v0 = sub_1D30E8D9C();
  __swift_allocate_value_buffer(v0, qword_1EE3139D8);
  __swift_project_value_buffer(v0, qword_1EE3139D8);
  return MEMORY[0x1D38B2220](0xD000000000000013, 0x80000001D30EC800);
}

uint64_t sub_1D303DEB8()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE3139B0);
  __swift_project_value_buffer(v0, qword_1EE3139B0);
  return sub_1D30E8B2C();
}

char *sub_1D303DF3C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v61 = a1;
  v58 = sub_1D30E881C();
  v56 = *(v58 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v49 - v9;
  v59 = sub_1D30E88CC();
  v11 = *(v59 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D30E8D9C();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v54 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - v18;
  swift_defaultActor_initialize();
  *(v1 + 15) = sub_1D30346BC(MEMORY[0x1E69E7CC0]);
  if (qword_1EE3139A8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D30E8B3C();
  __swift_project_value_buffer(v20, qword_1EE3139B0);
  v21 = sub_1D30E928C();

  v22 = sub_1D30E8B1C();

  v23 = os_log_type_enabled(v22, v21);
  v57 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v52 = v14;
    v25 = v24;
    v50 = swift_slowAlloc();
    v51 = v10;
    v63 = v50;
    *v25 = 136446210;
    v62 = v61;
    type metadata accessor for ContainerManager();

    v26 = sub_1D30E909C();
    v28 = sub_1D2FFEA04(v26, v27, &v63);

    *(v25 + 4) = v28;
    v3 = v2;
    _os_log_impl(&dword_1D2FD9000, v22, v21, "Init container manager: %{public}s", v25, 0xCu);
    v29 = v50;
    __swift_destroy_boxed_opaque_existential_1(v50);
    v10 = v51;
    MEMORY[0x1D38B3760](v29, -1, -1);
    v30 = v25;
    v14 = v52;
    MEMORY[0x1D38B3760](v30, -1, -1);
  }

  *(v4 + 14) = v61;
  v31 = qword_1EE3139D0;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v14, qword_1EE3139D8);
  sub_1D3003CF4(v32, 0, v19);
  if (!v3)
  {
    v33 = *(v60 + 16);
    v34 = v54;
    v33(v54, v19, v14);
    v35 = v55;
    (*(v56 + 104))(v55, *MEMORY[0x1E6968F68], v58);
    sub_1D3040AB4(v34, v35, v10);
    v36 = v19;
    v37 = v57;
    if ((*(v57 + 48))(v10, 1, v59) != 1)
    {
      (*(v60 + 8))(v36, v14);

      v45 = *(v37 + 32);
      v46 = v53;
      v47 = v10;
      v48 = v59;
      v45(v53, v47, v59);
      v45(&v4[OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13StorefrontMap_fileURL], v46, v48);
      return v4;
    }

    sub_1D2FF14DC(v10, &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError();
    v38 = v60;
    sub_1D30408C0(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    v33(v39, v36, v14);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v38 + 8))(v36, v14);
  }

  v40 = *(v4 + 14);

  v41 = *(v4 + 15);

  type metadata accessor for StorefrontMap();
  swift_defaultActor_destroy();

  v42 = *(*v4 + 48);
  v43 = *(*v4 + 52);
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1D303E57C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D303E59C, v1, 0);
}

uint64_t sub_1D303E59C()
{
  v38 = v0;
  if (qword_1EE3139A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  v0[10] = __swift_project_value_buffer(v1, qword_1EE3139B0);
  v2 = sub_1D30E8B1C();
  v3 = sub_1D30E92BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v2, v3, "Looking up the country code for the storefront “%llu” in memory…", v5, 0xCu);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = v0[9];

  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v7 + 16))
  {
    v8 = sub_1D3032654(v0[8]);
    if (v9)
    {
      v10 = (*(v7 + 56) + 16 * v8);
      v11 = *v10;
      v12 = v10[1];
      swift_bridgeObjectRetain_n();
      v13 = sub_1D30E8B1C();
      v14 = sub_1D30E92BC();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = v0[8];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v37 = v17;
        *v16 = 136446466;
        *(v16 + 4) = sub_1D2FFEA04(v11, v12, &v37);
        *(v16 + 12) = 2048;
        *(v16 + 14) = v15;
        v18 = "The country code “%{public}s” for the storefront “%llu” was found in memory.";
LABEL_15:
        _os_log_impl(&dword_1D2FD9000, v13, v14, v18, v16, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x1D38B3760](v17, -1, -1);
        MEMORY[0x1D38B3760](v16, -1, -1);
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  v19 = sub_1D30E8B1C();
  v20 = sub_1D30E92BC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[8];
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v21;
    _os_log_impl(&dword_1D2FD9000, v19, v20, "The country code for the storefront “%llu” wasn’t found in memory; checking the file system…", v22, 0xCu);
    MEMORY[0x1D38B3760](v22, -1, -1);
  }

  v23 = v0[9];

  sub_1D303ED4C();
  v24 = *(v6 + 120);
  if (*(v24 + 16))
  {
    v25 = sub_1D3032654(v0[8]);
    if (v26)
    {
      v27 = (*(v24 + 56) + 16 * v25);
      v11 = *v27;
      v12 = v27[1];
      swift_bridgeObjectRetain_n();
      v13 = sub_1D30E8B1C();
      v14 = sub_1D30E92BC();

      if (os_log_type_enabled(v13, v14))
      {
        v28 = v0[8];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v37 = v17;
        *v16 = 136446466;
        *(v16 + 4) = sub_1D2FFEA04(v11, v12, &v37);
        *(v16 + 12) = 2048;
        *(v16 + 14) = v28;
        v18 = "The country code “%{public}s” for the storefront “%llu” was found in the file system.";
        goto LABEL_15;
      }

LABEL_16:

      v29 = v0[1];

      return v29(v11, v12);
    }
  }

  v31 = sub_1D30E8B1C();
  v32 = sub_1D30E92BC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v0[8];
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v33;
    _os_log_impl(&dword_1D2FD9000, v31, v32, "The country code for the storefront “%llu” wasn’t found after loading the storefront map from the file system; checking the bag…", v34, 0xCu);
    MEMORY[0x1D38B3760](v34, -1, -1);
  }

  v35 = swift_task_alloc();
  v0[11] = v35;
  *v35 = v0;
  v35[1] = sub_1D303EA40;
  v36 = v0[8];

  return sub_1D3040238(v36);
}

uint64_t sub_1D303EA40(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 88);
  v6 = *v3;
  v4[12] = a1;
  v4[13] = a2;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = v4[9];

    return MEMORY[0x1EEE6DFA0](sub_1D303EB88, v9, 0);
  }
}

uint64_t sub_1D303EB88()
{
  v21 = v0;
  v1 = v0[13];
  v2 = v0[10];

  v3 = sub_1D30E8B1C();
  v4 = sub_1D30E92BC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1D2FFEA04(v6, v5, &v20);
    *(v8 + 12) = 2048;
    *(v8 + 14) = v7;
    _os_log_impl(&dword_1D2FD9000, v3, v4, "The country code “%{public}s” for the storefront “%llu” was found in the bag.", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v11 = v0[12];
  v10 = v0[13];
  v13 = v0[8];
  v12 = v0[9];
  swift_beginAccess();

  v14 = *(v12 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v12 + 120);
  *(v12 + 120) = 0x8000000000000000;
  sub_1D303377C(v11, v10, v13, isUniquelyReferenced_nonNull_native);
  *(v12 + 120) = v20;
  swift_endAccess();
  sub_1D303DCA4();
  v16 = v0[12];
  v17 = v0[13];
  v18 = v0[1];

  return v18(v16, v17);
}

void sub_1D303ED4C()
{
  v1 = v0;
  v66[3] = *MEMORY[0x1E69E9840];
  if (qword_1EE3139A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE3139B0);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Load", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = sub_1D30E8B1C();
  v7 = sub_1D30E92BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v66[0] = v9;
    *v8 = 136446210;
    sub_1D30E88CC();
    sub_1D30408C0(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
    v10 = sub_1D30E977C();
    v12 = sub_1D2FFEA04(v10, v11, v66);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D2FD9000, v6, v7, "Loading the storefront map at “%{public}s”…", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v65 = 1;
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  sub_1D30E888C();
  v15 = sub_1D30E906C();

  v16 = [v14 fileExistsAtPath:v15 isDirectory:&v65];

  if (!v16)
  {

    v30 = sub_1D30E8B1C();
    v31 = sub_1D30E92BC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v66[0] = v33;
      *v32 = 136446210;
      sub_1D30E88CC();
      sub_1D30408C0(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
      v34 = sub_1D30E977C();
      v36 = sub_1D2FFEA04(v34, v35, v66);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1D2FD9000, v30, v31, "The storefront map doesn’t yet exist at “%{public}s”.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1D38B3760](v33, -1, -1);
      MEMORY[0x1D38B3760](v32, -1, -1);
    }

    goto LABEL_17;
  }

  if (v65 != 1)
  {
    v38 = sub_1D30E927C();

    v39 = sub_1D30E8B1C();

    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v66[0] = v41;
      *v40 = 136446210;
      sub_1D30E88CC();
      sub_1D30408C0(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
      v42 = sub_1D30E977C();
      v44 = sub_1D2FFEA04(v42, v43, v66);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1D2FD9000, v39, v38, "The storefront map exists locally at “%{public}s”.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1D38B3760](v41, -1, -1);
      MEMORY[0x1D38B3760](v40, -1, -1);
    }

    v57 = sub_1D30E88DC();
    v59 = v58;
    v60 = sub_1D30E870C();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    sub_1D30E86FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A140, &unk_1D30F5408);
    sub_1D30401C8(&qword_1EC74A150);
    sub_1D30E86EC();
    swift_beginAccess();
    v63 = *(v1 + 120);
    *(v1 + 120) = v64;

    sub_1D303DCA4();

    sub_1D2FF1804(v57, v59);
    goto LABEL_18;
  }

  v17 = sub_1D30E92AC();

  v18 = sub_1D30E8B1C();

  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v66[0] = v20;
    *v19 = 136446210;
    sub_1D30E88CC();
    sub_1D30408C0(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
    v21 = sub_1D30E977C();
    v23 = sub_1D2FFEA04(v21, v22, v66);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1D2FD9000, v18, v17, "The item at “%{public}s” is unexpectedly a directory; removing it…", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1D38B3760](v20, -1, -1);
    MEMORY[0x1D38B3760](v19, -1, -1);
  }

  v24 = [v13 defaultManager];
  v25 = sub_1D30E882C();
  v66[0] = 0;
  v26 = [v24 removeItemAtURL:v25 error:v66];

  v27 = v66[0];
  if (!v26)
  {
    v45 = v66[0];
    v46 = sub_1D30E87DC();

    swift_willThrow();
    v47 = sub_1D30E929C();

    v48 = v46;
    v30 = sub_1D30E8B1C();

    if (!os_log_type_enabled(v30, v47))
    {

      goto LABEL_18;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v66[0] = v51;
    *v49 = 136446466;
    sub_1D30E88CC();
    sub_1D30408C0(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
    v52 = sub_1D30E977C();
    v54 = sub_1D2FFEA04(v52, v53, v66);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2114;
    v55 = v46;
    v56 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 14) = v56;
    *v50 = v56;
    _os_log_impl(&dword_1D2FD9000, v30, v47, "The item at “%{public}s” couldn’t be removed: %{public}@", v49, 0x16u);
    sub_1D2FF14DC(v50, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v50, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x1D38B3760](v51, -1, -1);
    MEMORY[0x1D38B3760](v49, -1, -1);

LABEL_17:
LABEL_18:
    v37 = *MEMORY[0x1E69E9840];
    return;
  }

  v28 = *MEMORY[0x1E69E9840];

  v29 = v27;
}

uint64_t sub_1D303FC38()
{
  v2 = v0;
  if (qword_1EE3139A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1D30E8B3C();
  __swift_project_value_buffer(v3, qword_1EE3139B0);
  v4 = sub_1D30E928C();
  v5 = sub_1D30E8B1C();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Save", v6, 2u);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v7 = sub_1D30E874C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D30E873C();
  sub_1D30E871C();
  swift_beginAccess();
  v24 = *(v2 + 120);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A140, &unk_1D30F5408);
  sub_1D30401C8(&qword_1EC74A148);
  v10 = sub_1D30E872C();
  if (v1)
  {
  }

  else
  {
    v22 = v10;
    v23 = v11;

    v13 = sub_1D30E8B1C();
    v14 = sub_1D30E92BC();

    v15 = &qword_1EE313000;
    if (os_log_type_enabled(v13, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446210;
      sub_1D30E88CC();
      sub_1D30408C0(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
      v18 = sub_1D30E977C();
      v20 = sub_1D2FFEA04(v18, v19, &v24);
      v15 = &qword_1EE313000;

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D2FD9000, v13, v14, "Saving the storefront map at “%{public}s”…", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1D38B3760](v17, -1, -1);
      MEMORY[0x1D38B3760](v16, -1, -1);
    }

    v21 = v15[307];
    sub_1D30E894C();
    sub_1D2FF1804(v22, v23);
  }
}

uint64_t sub_1D303FF7C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13StorefrontMap_fileURL;
  v4 = sub_1D30E88CC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for StorefrontMap()
{
  result = qword_1EE313988;
  if (!qword_1EE313988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D3040058()
{
  result = sub_1D30E88CC();
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

void sub_1D3040110(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v6 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A158, &qword_1D30F5420);
    sub_1D30E91CC();
  }

  else if (a2)
  {
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A158, &qword_1D30F5420);
    sub_1D30E91DC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D30401C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A140, &unk_1D30F5408);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D3040238(uint64_t a1)
{
  v1[21] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A158, &qword_1D30F5420);
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3040304, 0, 0);
}

uint64_t sub_1D3040304()
{
  v2 = v0[21];
  v3 = [objc_opt_self() ams_createEphemeralAccount];
  v0[25] = v3;
  v0[20] = v2;
  sub_1D30E977C();
  MEMORY[0x1D38B2610](12589, 0xE200000000000000);
  v4 = sub_1D30E906C();

  [v3 ams:v4 setStorefront:?];

  v5 = objc_opt_self();
  v6 = [v5 bagSubProfile];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v6;
  v7 = [v5 bagSubProfileVersion];
  if (!v7)
  {
LABEL_7:

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v17);
  }

  v8 = v7;
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  v12 = [objc_opt_self() currentProcess];
  v13 = [objc_opt_self() bagForProfile:v1 profileVersion:v8 processInfo:v12 account:v3];
  v0[26] = v13;

  v14 = sub_1D30E906C();
  v15 = [v13 stringForKey_];
  v0[27] = v15;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D3040660;
  swift_continuation_init();
  v0[17] = v11;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A160, &qword_1D30F5428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
  sub_1D30E91BC();
  (*(v10 + 32))(boxed_opaque_existential_0Tm, v9, v11);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D3040110;
  v0[13] = &block_descriptor_3;
  [v15 valueWithCompletion_];
  (*(v10 + 8))(boxed_opaque_existential_0Tm, v11);
  v17 = v0 + 2;

  return MEMORY[0x1EEE6DEC8](v17);
}

uint64_t sub_1D3040660()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_1D3040818;
  }

  else
  {
    v3 = sub_1D3040770;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3040770()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 144);

  v5 = sub_1D30E908C();
  v7 = v6;

  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t sub_1D3040818()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[28];

  return v6();
}

uint64_t sub_1D30408C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D3040908(uint64_t result)
{
  if (v1[3] >= result)
  {
    return result;
  }

  v2 = result;
  result *= 56;
  if ((v2 * 56) >> 64 != result >> 63)
  {
    __break(1u);
    goto LABEL_16;
  }

  result = swift_slowAlloc();
  v3 = v1[2];
  v4 = v1[4];
  if (v3 < v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 > v2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = result;
  v6 = v3 - v4;
  if (v3 != v4)
  {
    if (v6 <= v2)
    {
      if (v4 || v3 < 1)
      {
        memmove(result, (result + 56 * v4), 56 * v6);
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_11:
  result = *v1;
  if (*v1)
  {
    result = MEMORY[0x1D38B3760](result, -1, -1);
  }

  *v1 = v5;
  v1[1] = v2;
  v1[3] = v2;
  return result;
}

char *sub_1D30409E0(char *result)
{
  if (v1[3] >= result)
  {
    return result;
  }

  v2 = result;
  if ((result - 0x800000000000000) >> 60 != 15)
  {
    __break(1u);
    goto LABEL_16;
  }

  result = swift_slowAlloc();
  v3 = v1[2];
  v4 = v1[4];
  if (v3 < v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 > v2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = result;
  v6 = v3 - v4;
  if (v6)
  {
    if (v6 <= v2)
    {
      v7 = 16 * v6;
      v8 = &result[16 * v4];
      if (v4 || result >= &v8[v7])
      {
        memmove(result, v8, v7);
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_11:
  result = *v1;
  if (*v1)
  {
    result = MEMORY[0x1D38B3760](result, -1, -1);
  }

  *v1 = v5;
  v1[1] = v2;
  v1[3] = v2;
  return result;
}

uint64_t sub_1D3040AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = v26 - v7;
  v8 = sub_1D30E881C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D30E8D9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  (*(v14 + 16))(v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = sub_1D30E90DC();
  if (v18)
  {
    v19 = *(v9 + 16);
    v26[1] = v17;
    v28 = v8;
    v19(v12, a2, v8);
    v20 = sub_1D30E88CC();
    v26[0] = a2;
    v21 = v20;
    v22 = *(*(v20 - 8) + 56);
    v27 = a1;
    v23 = v30;
    v22(v29, 1, 1, v20);
    sub_1D30E88BC();
    (*(v9 + 8))(v26[0], v28);
    (*(v14 + 8))(v27, v13);
    return (v22)(v23, 0, 1, v21);
  }

  else
  {
    (*(v9 + 8))(a2, v8);
    (*(v14 + 8))(a1, v13);
    v25 = sub_1D30E88CC();
    return (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
  }
}

void *sub_1D3040DC8(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v22 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1D30E958C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
      v20 = v5 & 0xC000000000000001;
      v18 = v5;
      while (1)
      {
        if (v20)
        {
          v10 = MEMORY[0x1D38B29E0](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v21 = v10;
        v3 = a2;
        v12 = a1(&v21);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1D30E950C();
          v13 = v8;
          v14 = a1;
          v15 = a2;
          v16 = v22[2];
          sub_1D30E953C();
          a2 = v15;
          a1 = v14;
          v8 = v13;
          v5 = v18;
          sub_1D30E954C();
          v3 = &v22;
          sub_1D30E951C();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v22;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

uint64_t sub_1D3040F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_1D30E88CC();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749948, &unk_1D30F1B20);
  v4[26] = v8;
  v9 = *(v8 - 8);
  v4[27] = v9;
  v10 = *(v9 + 64) + 15;
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30410B0, 0, 0);
}

uint64_t sub_1D30410B0()
{
  v68 = v0;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[19];
  v3 = sub_1D30E8B3C();
  __swift_project_value_buffer(v3, qword_1EE3133A8);
  v4 = sub_1D30E928C();

  v5 = sub_1D30E8B1C();

  v66 = v0;
  if (os_log_type_enabled(v5, v4))
  {
    v7 = v0[20];
    v6 = v0[21];
    v8 = v0[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v67[0] = v10;
    *v9 = 136446466;
    v0[18] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B058, &qword_1D30FD0D0);
    v11 = sub_1D30E909C();
    v13 = sub_1D2FFEA04(v11, v12, v67);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1D2FFEA04(v7, v6, v67);
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Attribute items at: %{public}s to bundle with ID: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  else
  {
    v14 = v0[19];
  }

  v15 = v0[22];
  v16 = sub_1D3041A78(v0[19]);
  v18 = v16;
  if (v16[2])
  {
    v19 = v0[21];

    v20 = sub_1D30E8B1C();
    v21 = sub_1D30E92BC();

    if (os_log_type_enabled(v20, v21))
    {
      v62 = v0[20];
      v64 = v0[21];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v67[0] = v23;
      *v22 = 136446978;
      v24 = *(v18 + 16) == 1;
      if (*(v18 + 16) == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0x6974636570736572;
      }

      v26 = v18;
      if (*(v18 + 16) == 1)
      {
        v27 = 0xE000000000000000;
      }

      else
      {
        v27 = 0xEB00000000206576;
      }

      if (v24)
      {
        v28 = 0;
      }

      else
      {
        v28 = 115;
      }

      if (v24)
      {
        v29 = 0xE000000000000000;
      }

      else
      {
        v29 = 0xE100000000000000;
      }

      v30 = sub_1D2FFEA04(v25, v27, v67);
      v18 = v26;
      v0 = v66;

      *(v22 + 4) = v30;
      *(v22 + 12) = 2082;
      v31 = sub_1D2FFEA04(v28, v29, v67);

      *(v22 + 14) = v31;
      *(v22 + 22) = 2082;
      v32 = sub_1D3015CE8(v18);
      v34 = sub_1D2FFEA04(v32, v33, v67);

      *(v22 + 24) = v34;
      *(v22 + 32) = 2082;
      *(v22 + 34) = sub_1D2FFEA04(v62, v64, v67);
      _os_log_impl(&dword_1D2FD9000, v20, v21, "Attributing the %{public}sitem%{public}s at %{public}s to the bundle with the ID “%{public}s”…", v22, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v23, -1, -1);
      MEMORY[0x1D38B3760](v22, -1, -1);
    }

    v61 = [objc_opt_self() defaultManager];
    v0[29] = v61;
    v35 = *(v18 + 16);
    if (v35)
    {
      v36 = v0[24];
      v67[0] = MEMORY[0x1E69E7CC0];
      sub_1D30E952C();
      v37 = objc_opt_self();
      v38 = *(v36 + 16);
      v36 += 16;
      v63 = v38;
      v65 = v37;
      v39 = v18 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
      v40 = *(v36 + 56);
      v41 = (v36 - 8);
      do
      {
        v42 = v0[25];
        v43 = v0[23];
        v63(v42, v39, v43);
        v44 = sub_1D30E882C();
        v45 = [v65 pathInfoWithBinaryURL_];

        v0 = v66;
        (*v41)(v42, v43);
        sub_1D30E950C();
        v46 = *(v67[0] + 16);
        sub_1D30E953C();
        sub_1D30E954C();
        sub_1D30E951C();
        v39 += v40;
        --v35;
      }

      while (v35);
    }

    v53 = v0[27];
    v54 = v0[28];
    v55 = v0[26];
    v57 = v0[20];
    v56 = v0[21];
    sub_1D2FF1494(0, &qword_1EC749958, 0x1E69D3978);
    v58 = sub_1D30E916C();
    v0[30] = v58;

    v59 = sub_1D30E906C();
    v0[31] = v59;
    v0[2] = v0;
    v0[3] = sub_1D304184C;
    swift_continuation_init();
    v0[17] = v55;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
    sub_1D30E91BC();
    (*(v53 + 32))(boxed_opaque_existential_0Tm, v54, v55);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D3007390;
    v0[13] = &block_descriptor_4;
    [v61 registerPaths:v58 forBundleID:v59 completionHandler:?];
    (*(v53 + 8))(boxed_opaque_existential_0Tm, v55);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v47 = sub_1D30E92AC();
    v48 = sub_1D30E8B1C();
    if (os_log_type_enabled(v48, v47))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1D2FD9000, v48, v47, "No valid paths were specified for attribution.", v49, 2u);
      MEMORY[0x1D38B3760](v49, -1, -1);
    }

    v50 = v0[28];
    v51 = v0[25];

    v52 = v0[1];

    return v52();
  }
}

uint64_t sub_1D304184C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_1D30419E0;
  }

  else
  {
    v3 = sub_1D304195C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D304195C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  v3 = *(v0 + 224);
  v4 = *(v0 + 200);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D30419E0()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  swift_willThrow();

  v5 = v0[32];
  v6 = v0[28];
  v7 = v0[25];

  v8 = v0[1];

  return v8();
}

void *sub_1D3041A78(uint64_t a1)
{
  v2 = sub_1D30E881C();
  v74 = *(v2 - 8);
  v3 = *(v74 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v70 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v65 - v11;
  v13 = sub_1D30E88CC();
  v67 = *(v13 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D30E8D9C();
  v85 = *(v71 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x1EEE9AC00](v71);
  v82 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v65 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v90 = &v65 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v65 - v24;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D30E8B3C();
  __swift_project_value_buffer(v26, qword_1EE3133A8);
  v27 = sub_1D30E928C();

  v28 = sub_1D30E8B1C();
  v29 = os_log_type_enabled(v28, v27);
  v89 = v2;
  v86 = v13;
  v87 = v12;
  v81 = v25;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v92 = v31;
    *v30 = 136446210;
    v91 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B058, &qword_1D30FD0D0);
    v32 = sub_1D30E909C();
    v34 = sub_1D2FFEA04(v32, v33, &v92);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_1D2FD9000, v28, v27, "URLs for: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1D38B3760](v31, -1, -1);
    v2 = v89;
    MEMORY[0x1D38B3760](v30, -1, -1);
  }

  else
  {
  }

  v35 = *(a1 + 16);
  v92 = MEMORY[0x1E69E7CC0];
  sub_1D3028CBC(0, v35, 0);
  v36 = v92;
  if (v35)
  {
    v37 = *(v85 + 16);
    v77 = ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v38 = &v77[a1];
    v78 = (v85 + 8);
    v79 = v37;
    v80 = (v85 + 16);
    v75 = *(v85 + 72);
    v76 = (v85 + 32);
    v39 = v66;
    v40 = v71;
    v41 = v90;
    while (1)
    {
      (v79)(v21, v38, v40);
      sub_1D3003CF4(v21, 0, v41);
      if (v39)
      {
        break;
      }

      v39 = 0;
      v42 = v21;
      (*v78)(v21, v40);
      v92 = v36;
      v43 = v40;
      v45 = *(v36 + 16);
      v44 = *(v36 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1D3028CBC(v44 > 1, v45 + 1, 1);
        v36 = v92;
      }

      *(v36 + 16) = v45 + 1;
      v46 = v75;
      v41 = v90;
      (*v76)(&v77[v36 + v45 * v75], v90, v43);
      v38 = v46 + v38;
      --v35;
      v2 = v89;
      v40 = v43;
      v21 = v42;
      if (!v35)
      {
        goto LABEL_14;
      }
    }

    v66 = v39;
    (*v78)(v21, v40);
  }

  else
  {
    v39 = v66;
    v40 = v71;
LABEL_14:
    v66 = v39;
    v47 = *(v36 + 16);
    if (v47)
    {
      v80 = *(v85 + 16);
      v48 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v65 = v36;
      v90 = (v36 + v48);
      v79 = *(v85 + 72);
      LODWORD(v78) = *MEMORY[0x1E6968F80];
      v77 = (v74 + 104);
      v68 = (v74 + 16);
      v75 = (v74 + 8);
      v76 = (v67 + 56);
      v85 += 16;
      v74 = v85 - 8;
      v72 = (v67 + 32);
      v73 = (v67 + 48);
      v39 = MEMORY[0x1E69E7CC0];
      v49 = v84;
      v51 = v86;
      v50 = v87;
      do
      {
        v88 = v39;
        v89 = v47;
        v52 = v80;
        v53 = v81;
        v80(v81, v90, v40);
        (*v77)(v49, v78, v2);
        v54 = v2;
        v52(v82, v53, v40);
        sub_1D30E90DC();
        if (v55)
        {
          (*v68)(v70, v49, v2);
          v56 = v49;
          v57 = *v76;
          (*v76)(v69, 1, 1, v86);
          v58 = v87;
          v51 = v86;
          sub_1D30E88BC();
          v59 = v56;
          v40 = v71;
          (*v75)(v59, v2);
          (*v74)(v53, v40);
          v57(v58, 0, 1, v51);
          v50 = v58;
        }

        else
        {
          (*v75)(v49, v2);
          (*v74)(v53, v40);
          (*v76)(v50, 1, 1, v51);
        }

        v60 = (*v73)(v50, 1, v51);
        v39 = v88;
        if (v60 == 1)
        {
          sub_1D2FF14DC(v50, &qword_1EC7493C0, &qword_1D30EF500);
          v49 = v84;
        }

        else
        {
          v61 = *v72;
          (*v72)(v83, v50, v51);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_1D30D81E4(0, v39[2] + 1, 1, v39, &qword_1EC74B060, &qword_1D30FD0D8, MEMORY[0x1E6968FB0]);
          }

          v63 = v39[2];
          v62 = v39[3];
          if (v63 >= v62 >> 1)
          {
            v39 = sub_1D30D81E4(v62 > 1, v63 + 1, 1, v39, &qword_1EC74B060, &qword_1D30FD0D8, MEMORY[0x1E6968FB0]);
          }

          v39[2] = v63 + 1;
          v61(v39 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v63, v83, v51);
          v49 = v84;
          v2 = v54;
        }

        v90 = &v79[v90];
        v47 = v89 - 1;
      }

      while (v89 != 1);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v39;
}

uint64_t sub_1D3042420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749948, &unk_1D30F1B20);
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30424F0, 0, 0);
}

uint64_t sub_1D30424F0()
{
  v50 = v0;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[19];
  v3 = sub_1D30E8B3C();
  __swift_project_value_buffer(v3, qword_1EE3133A8);
  v4 = sub_1D30E928C();

  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v4))
  {
    v7 = v0[20];
    v6 = v0[21];
    v8 = v0[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49[0] = v10;
    *v9 = 136446466;
    v0[18] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B058, &qword_1D30FD0D0);
    v11 = sub_1D30E909C();
    v13 = sub_1D2FFEA04(v11, v12, v49);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1D2FFEA04(v7, v6, v49);
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Remove attribution of items at: %{public}s to bundle with ID: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  else
  {
    v14 = v0[19];
  }

  v15 = v0[22];
  v16 = sub_1D3041A78(v0[19]);
  v18 = v16;
  if (v16[2])
  {
    v19 = v0[21];

    v20 = sub_1D30E8B1C();
    v21 = sub_1D30E92BC();

    if (os_log_type_enabled(v20, v21))
    {
      v46 = v0[20];
      v48 = v0[21];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49[0] = v23;
      *v22 = 136446978;
      if (*(v18 + 16) == 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = 0x6974636570736572;
      }

      if (*(v18 + 16) == 1)
      {
        v25 = 0xE000000000000000;
      }

      else
      {
        v25 = 0xEB00000000206576;
      }

      if (*(v18 + 16) == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = 115;
      }

      if (*(v18 + 16) == 1)
      {
        v27 = 0xE000000000000000;
      }

      else
      {
        v27 = 0xE100000000000000;
      }

      v28 = sub_1D2FFEA04(v24, v25, v49);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2082;
      v29 = sub_1D2FFEA04(v26, v27, v49);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2082;
      v30 = sub_1D3015CE8(v18);
      v32 = sub_1D2FFEA04(v30, v31, v49);

      *(v22 + 24) = v32;
      *(v22 + 32) = 2082;
      *(v22 + 34) = sub_1D2FFEA04(v46, v48, v49);
      _os_log_impl(&dword_1D2FD9000, v20, v21, "Removing attribution for the %{public}sitem%{public}s at %{public}s to the bundle with the ID “%{public}s”…", v22, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v23, -1, -1);
      MEMORY[0x1D38B3760](v22, -1, -1);
    }

    v33 = v0[24];
    v47 = v0[25];
    v34 = v0[23];
    v36 = v0[20];
    v35 = v0[21];
    v37 = [objc_opt_self() defaultManager];
    v0[26] = v37;
    sub_1D30E88CC();
    v38 = sub_1D30E916C();
    v0[27] = v38;

    v39 = sub_1D30E906C();
    v0[28] = v39;
    v0[2] = v0;
    v0[3] = sub_1D3042B30;
    swift_continuation_init();
    v0[17] = v34;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
    sub_1D30E91BC();
    (*(v33 + 32))(boxed_opaque_existential_0Tm, v47, v34);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D3007390;
    v0[13] = &block_descriptor_741;
    [v37 unregisterURLs:v38 forBundleID:v39 completionHandler:?];
    (*(v33 + 8))(boxed_opaque_existential_0Tm, v34);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v41 = sub_1D30E92AC();
    v42 = sub_1D30E8B1C();
    if (os_log_type_enabled(v42, v41))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1D2FD9000, v42, v41, "No valid paths were specified for attribution removal.", v43, 2u);
      MEMORY[0x1D38B3760](v43, -1, -1);
    }

    v44 = v0[25];

    v45 = v0[1];

    return v45();
  }
}

uint64_t sub_1D3042B30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1D3042CB8;
  }

  else
  {
    v3 = sub_1D3042C40;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3042C40()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  v3 = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D3042CB8()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  swift_willThrow();

  v5 = v0[29];
  v6 = v0[25];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D3042D44(uint64_t a1)
{
  result = MEMORY[0x1D38B2760](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1D30D84A0(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3042E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1D30E98AC();
  sub_1D30E90BC();
  v7 = sub_1D30E98EC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1D30E97CC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D3042F58(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    sub_1D30E98AC();
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[4];
    v8 = a1[5];
    sub_1D30E90BC();
    v32 = v7;
    sub_1D30E90BC();
    v9 = sub_1D30E98EC();
    v10 = -1 << *(a2 + 32);
    v11 = v9 & ~v10;
    v31 = a2 + 56;
    if ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v29 = ~v10;
      v12 = a1[2];
      v13 = a1[3];
      v28 = v12;
      v30 = *(a2 + 48);
      do
      {
        v14 = (v30 + 48 * v11);
        v16 = *v14;
        v15 = v14[1];
        v17 = v14[3];
        v18 = v14[4];
        v19 = v14[5];
        if (v17)
        {
          v20 = v13 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (v20 || (v14[2] == v28 ? (v21 = v17 == v13) : (v21 = 0), v21))
        {
          if (v16 == v5 && v15 == v6)
          {
            v22 = 1;
            if (v18 == v32 && v19 == v8)
            {
              return v22;
            }

LABEL_35:
            if ((sub_1D30E97CC() & 1) == 0)
            {
              goto LABEL_5;
            }

            goto LABEL_4;
          }

          LOBYTE(v22) = 1;
        }

        else
        {
          LOBYTE(v22) = sub_1D30E97CC();
          if (v16 == v5 && v15 == v6)
          {
            goto LABEL_26;
          }
        }

        if ((sub_1D30E97CC() & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_26:
        if (v18 != v32 || v19 != v8)
        {
          goto LABEL_35;
        }

LABEL_4:
        if (v22)
        {
          return 1;
        }

LABEL_5:
        v11 = (v11 + 1) & v29;
      }

      while (((*(v31 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }
  }

  return 0;
}

uint64_t Helper.Message.description.getter()
{
  v1 = v0;
  v2 = sub_1D30E8D9C();
  v259 = *(v2 - 8);
  v260 = v2;
  v3 = *(v259 + 64);
  MEMORY[0x1EEE9AC00](v2);
  *&v261 = &v257 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D30E8A4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v257 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D30E8D5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v257 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AssetPackHost();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v257 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Helper.Message(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v257 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D3058338(v1, v22, type metadata accessor for Helper.Message);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7075206E61656C43;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v140 = *v22;
      v139 = *(v22 + 1);
      v141 = *(v22 + 3);
      v103 = v22[32];
      if (v141)
      {
        v142 = *(v22 + 2);
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000026, 0x80000001D30ED200);
        MEMORY[0x1D38B2610](v140, v139);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v142, v141);
      }

      else
      {
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000026, 0x80000001D30ED200);
        MEMORY[0x1D38B2610](v140, v139);
      }

      v105 = "r app with bundle ID: ";
      v106 = 0xD000000000000015;
      goto LABEL_104;
    case 2:
      v25 = *v22;
      v26 = *(v22 + 1);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      v151 = "App Store manifest data for app with bundle ID: ";
      goto LABEL_43;
    case 3:
      v25 = *v22;
      v26 = *(v22 + 1);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      v107 = "p with bundle ID: ";
      v108 = 17;
      goto LABEL_56;
    case 4:
      v59 = *v22;
      v58 = *(v22 + 1);
      v60 = *(v22 + 3);
      if (v60)
      {
        v61 = *(v22 + 2);
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        v62 = "Local cache manifest data for app with bundle ID: ";
        goto LABEL_51;
      }

      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      v240 = "Local cache manifest data for app with bundle ID: ";
      goto LABEL_112;
    case 5:
      v25 = *v22;
      v26 = *(v22 + 1);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      v107 = "for app with bundle ID: ";
      v108 = 19;
      goto LABEL_56;
    case 6:
      v25 = *v22;
      v26 = *(v22 + 1);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      v107 = "Install manifest from: ";
      v152 = 0xD000000000000038;
      goto LABEL_57;
    case 7:
      v131 = *v22;
      v132 = *(v22 + 1);
      v189 = *(v22 + 2);
      v188 = *(v22 + 3);
      v190 = *(v22 + 5);
      if (v190)
      {
        v191 = *(v22 + 4);
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30ED0A0);
        v192 = sub_1D30E88EC();
        MEMORY[0x1D38B2610](v192);

        MEMORY[0x1D38B2610](0xD000000000000019, 0x80000001D30EC8E0);
        MEMORY[0x1D38B2610](v189, v188);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v191, v190);
      }

      else
      {
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30ED0A0);
        v254 = sub_1D30E88EC();
        MEMORY[0x1D38B2610](v254);

        MEMORY[0x1D38B2610](0xD000000000000019, 0x80000001D30EC8E0);
        v135 = v189;
LABEL_119:
        MEMORY[0x1D38B2610](v135);
      }

      sub_1D2FF1804(v131, v132);
      return *v262;
    case 8:
      v25 = *v22;
      v26 = *(v22 + 1);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      v27 = 0x80000001D30ED070;
      v130 = 11;
      goto LABEL_68;
    case 9:
      v29 = *v22;
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      v30 = 0x80000001D30ED040;
      v31 = 0xD00000000000002ELL;
      goto LABEL_83;
    case 10:
      v101 = *v22;
      v100 = *(v22 + 1);
      v102 = *(v22 + 3);
      v103 = v22[32];
      if (v102)
      {
        v104 = *(v22 + 2);
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD00000000000002FLL, 0x80000001D30ECFF0);
        MEMORY[0x1D38B2610](v101, v100);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v104, v102);
      }

      else
      {
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD00000000000002FLL, 0x80000001D30ECFF0);
        MEMORY[0x1D38B2610](v101, v100);
      }

      v105 = "ecords for app with bundle ID: ";
      v106 = 0xD000000000000018;
LABEL_104:
      MEMORY[0x1D38B2610](v106, v105 | 0x8000000000000000);
      v224 = v103 == 0;
      goto LABEL_105;
    case 11:
      v116 = *v22;
      v117 = *(v22 + 1);
      v119 = *(v22 + 2);
      v118 = *(v22 + 3);
      v120 = *(v22 + 5);
      v259 = *(v22 + 4);
      v260 = v116;
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A8, &qword_1D30F54A8);
      v122 = v121[12];
      *&v261 = *&v22[v121[16]];
      v123 = v121[20];
      sub_1D3056830(&v22[v122], v18, type metadata accessor for AssetPackHost);
      (*(v11 + 32))(v14, &v22[v123], v10);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      v266 = *v262;
      MEMORY[0x1D38B2610](0xD000000000000026, 0x80000001D30ECFC0);
      *v262 = v260;
      *&v262[8] = v117;
      *&v262[16] = v119;
      v263 = v118;
      v264 = v259;
      v265 = v120;
      v124 = AssetPackRecord.GlobalID.description.getter();
      v126 = v125;

      MEMORY[0x1D38B2610](v124, v126);

      MEMORY[0x1D38B2610](0x203A74736F6820, 0xE700000000000000);
      v127 = AssetPackHost.description.getter();
      MEMORY[0x1D38B2610](v127);

      MEMORY[0x1D38B2610](0x6E6F697372657620, 0xEA0000000000203ALL);
      *v262 = v261;
      v128 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v128);

      MEMORY[0x1D38B2610](0xD00000000000001BLL, 0x80000001D30EBC50);
      sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
      v129 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v129);

      v99 = v266;
      (*(v11 + 8))(v14, v10);
      sub_1D3065284(v18, type metadata accessor for AssetPackHost);
      return v99;
    case 12:
      v144 = *v22;
      v143 = *(v22 + 1);
      v146 = *(v22 + 2);
      v145 = *(v22 + 3);
      v148 = *(v22 + 4);
      v147 = *(v22 + 5);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      v149 = 0x80000001D30ECF90;
      v150 = 0xD000000000000029;
      goto LABEL_59;
    case 13:
      v79 = *v22;
      v78 = *(v22 + 1);
      v81 = *(v22 + 2);
      v80 = *(v22 + 3);
      v83 = *(v22 + 4);
      v82 = *(v22 + 5);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      v266 = *v262;
      MEMORY[0x1D38B2610](0xD000000000000035, 0x80000001D30ECF30);
      *v262 = v79;
      *&v262[8] = v78;
      *&v262[16] = v81;
      v263 = v80;
      v264 = v83;
      v265 = v82;
      goto LABEL_60;
    case 14:
      v144 = *v22;
      v143 = *(v22 + 1);
      v146 = *(v22 + 2);
      v145 = *(v22 + 3);
      v148 = *(v22 + 4);
      v147 = *(v22 + 5);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      v149 = 0x80000001D30ECF00;
      v150 = 0xD000000000000028;
      goto LABEL_59;
    case 15:
      v63 = *v22;
      v65 = *(v22 + 1);
      v64 = *(v22 + 2);
      v67 = *(v22 + 3);
      v66 = *(v22 + 4);
      v69 = *(v22 + 5);
      v68 = *(v22 + 6);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      v266 = *v262;
      MEMORY[0x1D38B2610](0xD000000000000012, 0x80000001D30ECEC0);
      if (v63)
      {
        v70 = 1702195828;
      }

      else
      {
        v70 = 0x65736C6166;
      }

      if (v63)
      {
        v71 = 0xE400000000000000;
      }

      else
      {
        v71 = 0xE500000000000000;
      }

      MEMORY[0x1D38B2610](v70, v71);

      MEMORY[0x1D38B2610](0xD00000000000001FLL, 0x80000001D30ECEE0);
      *v262 = v65;
      *&v262[8] = v64;
      *&v262[16] = v67;
      v263 = v66;
      v264 = v69;
      v265 = v68;
      v72 = AssetPackRecord.GlobalID.description.getter();
      v74 = v73;

      goto LABEL_61;
    case 16:
      v154 = *v22;
      v153 = *(v22 + 1);
      v156 = *(v22 + 2);
      v155 = *(v22 + 3);
      v158 = *(v22 + 4);
      v157 = *(v22 + 5);
      v160 = *(v22 + 6);
      v159 = *(v22 + 7);
      if (v159)
      {
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        v260 = "t pack with global ID: ";
        v261 = *(v22 + 4);
        sub_1D30E948C();
        v266 = *v262;
        MEMORY[0x1D38B2610](0xD000000000000037, 0x80000001D30ECE60);
        *v262 = v154;
        *&v262[8] = v153;
        *&v262[16] = v156;
        v263 = v155;
        v264 = v158;
        v265 = v157;
        v161 = AssetPackRecord.GlobalID.description.getter();
        v163 = v162;

        MEMORY[0x1D38B2610](v161, v163);

        MEMORY[0x1D38B2610](0x6E6F697372657620, 0xEA0000000000203ALL);
        *v262 = v160;
        v164 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v164);

        MEMORY[0x1D38B2610](0xD000000000000014, v260 | 0x8000000000000000);
        *v262 = v159;
        *&v262[8] = v261;
        sub_1D3045A7C();
        v165 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v165);
      }

      else
      {
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        v266 = *v262;
        MEMORY[0x1D38B2610](0xD000000000000037, 0x80000001D30ECE60);
        *v262 = v154;
        *&v262[8] = v153;
        *&v262[16] = v156;
        v263 = v155;
        v264 = v158;
        v265 = v157;
        v248 = AssetPackRecord.GlobalID.description.getter();
        v250 = v249;

        MEMORY[0x1D38B2610](v248, v250);

        MEMORY[0x1D38B2610](0x6E6F697372657620, 0xEA0000000000203ALL);
        *v262 = v160;
        v251 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v251);
LABEL_62:
      }

      return v266;
    case 17:
      v144 = *v22;
      v143 = *(v22 + 1);
      v146 = *(v22 + 2);
      v145 = *(v22 + 3);
      v148 = *(v22 + 4);
      v147 = *(v22 + 5);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      v149 = 0x80000001D30ECE30;
      v150 = 0xD000000000000022;
LABEL_59:
      *&v266 = v150;
      *(&v266 + 1) = v149;
      *v262 = v144;
      *&v262[8] = v143;
      *&v262[16] = v146;
      v263 = v145;
      v264 = v148;
      v265 = v147;
LABEL_60:
      v72 = AssetPackRecord.GlobalID.description.getter();
      v74 = v187;

LABEL_61:

      MEMORY[0x1D38B2610](v72, v74);
      goto LABEL_62;
    case 18:
      if (*(v22 + 1))
      {
        v59 = *v22;
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();

        *v262 = 0xD00000000000002FLL;
        *&v262[8] = 0x80000001D30ECE00;
        goto LABEL_114;
      }

      return 0xD000000000000016;
    case 19:
      v25 = *v22;
      v26 = *(v22 + 1);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      v107 = "for asset pack with ID: ";
      v108 = 25;
LABEL_56:
      v152 = v108 | 0xD000000000000020;
LABEL_57:
      MEMORY[0x1D38B2610](v152, v107 | 0x8000000000000000);
      goto LABEL_70;
    case 20:
      v178 = *v22;
      v177 = *(v22 + 1);
      v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A0, &qword_1D30F54A0);
      v180 = *&v22[v179[16]];
      v181 = &v22[v179[20]];
      v182 = *v181;
      v183 = *(v181 + 1);
      (*(v6 + 32))(v9, &v22[v179[12]], v5);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000028, 0x80000001D30ECD70);
      MEMORY[0x1D38B2610](v178, v177);

      MEMORY[0x1D38B2610](0x6E6F697372657620, 0xED0000203A444920);
      sub_1D3045A34(&qword_1EC749490, MEMORY[0x1E69695A8]);
      v184 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v184);

      MEMORY[0x1D38B2610](0xD000000000000016, 0x80000001D30EB1C0);
      *&v266 = v180;
      v185 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v185);

      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
      MEMORY[0x1D38B2610](v182, v183);

      v186 = *v262;
      (*(v6 + 8))(v9, v5);
      return v186;
    case 21:
      v210 = *v22;
      v59 = *(v22 + 1);
      v211 = *(v22 + 2);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000025, 0x80000001D30ECD40);
      v212 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
      v213 = MEMORY[0x1D38B26B0](v210, v212);
      v215 = v214;

      MEMORY[0x1D38B2610](v213, v215);

      v216 = "<App Info | Bundle ID: ";
      v217 = 0xD000000000000010;
      goto LABEL_113;
    case 22:
      v29 = *v22;
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      v30 = 0x80000001D30ECD20;
      v31 = 0xD00000000000001DLL;
      goto LABEL_83;
    case 23:
      v136 = *v22;
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD00000000000003CLL, 0x80000001D30ECCE0);
      sub_1D3045AD0();
      v76 = sub_1D30E922C();
      goto LABEL_35;
    case 24:
      v131 = *v22;
      v132 = *(v22 + 1);
      v133 = *(v22 + 2);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      *v262 = 0xD000000000000017;
      *&v262[8] = 0x80000001D30ECCC0;
      v134 = sub_1D30E88EC();
      MEMORY[0x1D38B2610](v134);

      MEMORY[0x1D38B2610](0xD000000000000016, 0x80000001D30ECCA0);
      *&v266 = v133;
      v135 = sub_1D30E977C();
      goto LABEL_119;
    case 25:
      v234 = *(v22 + 2);
      v235 = *(v22 + 3);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      v261 = *v22;
      sub_1D30E948C();

      *&v266 = 0xD000000000000015;
      *(&v266 + 1) = 0x80000001D30ECC80;
      *v262 = v261;
      *&v262[16] = v234;
      sub_1D3045A7C();
      v236 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v236);

      MEMORY[0x1D38B2610](0xD000000000000016, 0x80000001D30ECCA0);
      *v262 = v235;
      v237 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v237);

      return v266;
    case 26:
      v56 = *v22;
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      *v262 = 0xD00000000000001FLL;
      *&v262[8] = 0x80000001D30ECC40;
      *&v266 = v56;
      v57 = sub_1D30E977C();
      goto LABEL_115;
    case 27:
      v225 = *v22;
      v131 = *(v22 + 1);
      v132 = *(v22 + 2);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      *v262 = 0xD00000000000001ELL;
      *&v262[8] = 0x80000001D30ECC20;
      if (v225)
      {
        v226 = 0x676E696E676973;
      }

      else
      {
        v226 = 0x6974707972636E65;
      }

      if (v225)
      {
        v227 = 0xE700000000000000;
      }

      else
      {
        v227 = 0xEA00000000006E6FLL;
      }

      MEMORY[0x1D38B2610](v226, v227);

      MEMORY[0x1D38B2610](0x203A6D6F726620, 0xE700000000000000);
      v135 = sub_1D30E88EC();
      goto LABEL_119;
    case 28:
      v228 = *v22;
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      *v262 = 0xD000000000000020;
      *&v262[8] = 0x80000001D30ECBF0;
      if (v228)
      {
        v57 = 0x676E696E676973;
      }

      else
      {
        v57 = 0x6974707972636E65;
      }

      goto LABEL_115;
    case 29:
      v25 = *v22;
      v26 = *(v22 + 1);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      v27 = 0x80000001D30ECBA0;
      v130 = 13;
LABEL_68:
      v28 = v130 | 0xD000000000000020;
      goto LABEL_69;
    case 30:
      v25 = *v22;
      v26 = *(v22 + 1);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      v151 = "Remove App Review record of app with bundle ID: ";
LABEL_43:
      v27 = (v151 - 32) | 0x8000000000000000;
      v28 = 0xD000000000000030;
      goto LABEL_69;
    case 31:
      v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A190, &qword_1D30F5498);
      v194 = &v22[*(v193 + 48)];
      v195 = *v194;
      v196 = *(v194 + 1);
      v197 = *(v194 + 3);
      v257 = *(v194 + 2);
      v258 = v195;
      v199 = *(v194 + 4);
      v198 = *(v194 + 5);
      v200 = *&v22[*(v193 + 64)];
      v202 = v259;
      v201 = v260;
      (*(v259 + 32))(v261, v22, v260);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      v266 = *v262;
      MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30ECB40);
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v203 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v203);

      MEMORY[0x1D38B2610](0x206C61626F6C6720, 0xEC000000203A4449);
      *v262 = v258;
      *&v262[8] = v196;
      *&v262[16] = v257;
      v263 = v197;
      v264 = v199;
      v265 = v198;
      v204 = AssetPackRecord.GlobalID.description.getter();
      v206 = v205;

      MEMORY[0x1D38B2610](v204, v206);

      MEMORY[0x1D38B2610](0xD000000000000020, 0x80000001D30ECB10);
      v207 = sub_1D30E922C();
      v209 = v208;

      MEMORY[0x1D38B2610](v207, v209);

      v99 = v266;
      (*(v202 + 8))(v261, v201);
      return v99;
    case 32:
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A188, &qword_1D30F5490);
      v85 = &v22[v84[12]];
      v86 = *v85;
      v87 = *(v85 + 1);
      v88 = &v22[v84[16]];
      v89 = *(v88 + 1);
      v90 = *&v22[v84[20]];
      if (v89)
      {
        v91 = *v88;
        v92 = v259;
        v93 = v260;
        v94 = v261;
        (*(v259 + 32))(v261, v22, v260);
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000011, 0x80000001D30ECAF0);
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
        v95 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v95);

        MEMORY[0x1D38B2610](0x20656C646E756220, 0xEC000000203A4449);
        MEMORY[0x1D38B2610](v86, v87);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v91, v89);

        MEMORY[0x1D38B2610](0xD000000000000020, 0x80000001D30ECB10);
        v96 = sub_1D30E922C();
        v98 = v97;

        MEMORY[0x1D38B2610](v96, v98);

        v99 = *v262;
        (*(v92 + 8))(v94, v93);
      }

      else
      {
        v241 = v259;
        v242 = v260;
        v243 = v261;
        (*(v259 + 32))(v261, v22, v260);
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000011, 0x80000001D30ECAF0);
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
        v244 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v244);

        MEMORY[0x1D38B2610](0x20656C646E756220, 0xEC000000203A4449);
        MEMORY[0x1D38B2610](v86, v87);

        MEMORY[0x1D38B2610](0xD000000000000020, 0x80000001D30ECB10);
        v245 = sub_1D30E922C();
        v247 = v246;

        MEMORY[0x1D38B2610](v245, v247);

        v99 = *v262;
        (*(v241 + 8))(v243, v242);
      }

      return v99;
    case 33:
      v59 = *v22;
      v58 = *(v22 + 1);
      v60 = *(v22 + 3);
      if (v60)
      {
        v61 = *(v22 + 2);
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        v62 = "Path to staging directory for app with bundle ID: ";
LABEL_51:
        MEMORY[0x1D38B2610](0xD000000000000032, (v62 - 32) | 0x8000000000000000);
        MEMORY[0x1D38B2610](v59, v58);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        v138 = v61;
LABEL_52:
        MEMORY[0x1D38B2610](v138, v60);
      }

      else
      {
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        v240 = "Path to staging directory for app with bundle ID: ";
LABEL_112:
        v216 = v240 - 32;
        v217 = 0xD000000000000032;
LABEL_113:
        MEMORY[0x1D38B2610](v217, v216 | 0x8000000000000000);
LABEL_114:
        v57 = v59;
LABEL_115:
        MEMORY[0x1D38B2610](v57);
      }

LABEL_116:

      return *v262;
    case 34:
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A180, &qword_1D30F5488);
      v44 = &v22[*(v43 + 48)];
      v45 = *v44;
      v46 = *(v44 + 1);
      v47 = &v22[*(v43 + 64)];
      v48 = *(v47 + 1);
      if (v48)
      {
        v49 = *v47;
        v39 = v259;
        v40 = v260;
        v41 = v261;
        (*(v259 + 32))(v261, v22, v260);
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD00000000000002ELL, 0x80000001D30ECA80);
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
        v50 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v50);

        MEMORY[0x1D38B2610](0x20656C646E756220, 0xEC000000203A4449);
        MEMORY[0x1D38B2610](v45, v46);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v49, v48);

        goto LABEL_77;
      }

      v112 = v259;
      v113 = v260;
      v114 = v261;
      (*(v259 + 32))(v261, v22, v260);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD00000000000002ELL, 0x80000001D30ECA80);
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v239 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v239);

      MEMORY[0x1D38B2610](0x20656C646E756220, 0xEC000000203A4449);
      MEMORY[0x1D38B2610](v45, v46);

      goto LABEL_124;
    case 35:
      v51 = v259;
      v52 = v260;
      v53 = v261;
      (*(v259 + 32))(v261, v22, v260);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      v54 = 0x80000001D30ECA30;
      v55 = 0xD000000000000027;
      goto LABEL_81;
    case 36:
      v33 = *v22;
      v32 = *(v22 + 1);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v35 = *(v34 + 48);
      v36 = &v22[*(v34 + 64)];
      v37 = *(v36 + 1);
      if (v37)
      {
        v38 = *v36;
        v39 = v259;
        v40 = v260;
        v41 = v261;
        (*(v259 + 32))(v261, &v22[v35], v260);
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        v42 = "Copy item into container resolved from bookmark data: ";
        goto LABEL_76;
      }

      v112 = v259;
      v113 = v260;
      v114 = v261;
      (*(v259 + 32))(v261, &v22[v35], v260);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      v238 = "Copy item into container resolved from bookmark data: ";
      goto LABEL_122;
    case 37:
      v229 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48)];
      v110 = *v229;
      v111 = v229[1];
      v112 = v259;
      v113 = v260;
      v114 = v261;
      (*(v259 + 32))(v261, v22, v260);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      v115 = "Copy item out of container source path: ";
      goto LABEL_95;
    case 38:
      v33 = *v22;
      v32 = *(v22 + 1);
      v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v219 = *(v218 + 48);
      v220 = &v22[*(v218 + 64)];
      v37 = *(v220 + 1);
      if (v37)
      {
        v38 = *v220;
        v39 = v259;
        v40 = v260;
        v41 = v261;
        (*(v259 + 32))(v261, &v22[v219], v260);
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        v42 = "Move item into container resolved from bookmark data: ";
LABEL_76:
        MEMORY[0x1D38B2610](0xD000000000000036, (v42 - 32) | 0x8000000000000000);
        v221 = sub_1D30E88EC();
        MEMORY[0x1D38B2610](v221);

        MEMORY[0x1D38B2610](0x203A6F7420, 0xE500000000000000);
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
        v222 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v222);

        MEMORY[0x1D38B2610](0xD000000000000020, 0x80000001D30EC990);
        MEMORY[0x1D38B2610](v38, v37);

        sub_1D2FF1804(v33, v32);
LABEL_77:
        v99 = *v262;
        (*(v39 + 8))(v41, v40);
      }

      else
      {
        v112 = v259;
        v113 = v260;
        v114 = v261;
        (*(v259 + 32))(v261, &v22[v219], v260);
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        v238 = "Move item into container resolved from bookmark data: ";
LABEL_122:
        MEMORY[0x1D38B2610](0xD000000000000036, (v238 - 32) | 0x8000000000000000);
        v255 = sub_1D30E88EC();
        MEMORY[0x1D38B2610](v255);

        MEMORY[0x1D38B2610](0x203A6F7420, 0xE500000000000000);
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
        v256 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v256);

        v232 = v33;
        v233 = v32;
LABEL_123:
        sub_1D2FF1804(v232, v233);
LABEL_124:
        v99 = *v262;
        (*(v112 + 8))(v114, v113);
      }

      return v99;
    case 39:
      v109 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48)];
      v110 = *v109;
      v111 = v109[1];
      v112 = v259;
      v113 = v260;
      v114 = v261;
      (*(v259 + 32))(v261, v22, v260);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();
      v115 = "Move item out of container source path: ";
LABEL_95:
      MEMORY[0x1D38B2610](0xD000000000000028, (v115 - 32) | 0x8000000000000000);
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v230 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v230);

      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EC930);
      v231 = sub_1D30E88EC();
      MEMORY[0x1D38B2610](v231);

      v232 = v110;
      v233 = v111;
      goto LABEL_123;
    case 40:
      v166 = *v22;
      v167 = *(v22 + 1);
      v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A168, &qword_1D30F5470);
      v169 = v168[12];
      v170 = &v22[v168[16]];
      v172 = *v170;
      v171 = *(v170 + 1);
      v173 = &v22[v168[20]];
      v174 = *(v173 + 1);
      if (v174)
      {
        *&v261 = *v173;
        (*(v11 + 32))(v14, &v22[v169], v10);
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD00000000000003CLL, 0x80000001D30EC8A0);
        v175 = sub_1D30E88EC();
        MEMORY[0x1D38B2610](v175);

        MEMORY[0x1D38B2610](0x203A6F7420, 0xE500000000000000);
        sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
        v176 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v176);

        MEMORY[0x1D38B2610](0xD000000000000019, 0x80000001D30EC8E0);
        MEMORY[0x1D38B2610](v172, v171);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v261, v174);
      }

      else
      {
        (*(v11 + 32))(v14, &v22[v169], v10);
        *v262 = 0;
        *&v262[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD00000000000003CLL, 0x80000001D30EC8A0);
        v252 = sub_1D30E88EC();
        MEMORY[0x1D38B2610](v252);

        MEMORY[0x1D38B2610](0x203A6F7420, 0xE500000000000000);
        sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
        v253 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v253);

        MEMORY[0x1D38B2610](0xD000000000000019, 0x80000001D30EC8E0);
        MEMORY[0x1D38B2610](v172, v171);
      }

      sub_1D2FF1804(v166, v167);
      v99 = *v262;
      (*(v11 + 8))(v14, v10);
      return v99;
    case 41:
      v51 = v259;
      v52 = v260;
      v53 = v261;
      (*(v259 + 32))(v261, v22, v260);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      v54 = 0x80000001D30EC880;
      v55 = 0xD00000000000001DLL;
LABEL_81:
      *v262 = v55;
      *&v262[8] = v54;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v223 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v223);

      v99 = *v262;
      (*(v51 + 8))(v53, v52);
      return v99;
    case 42:
      v29 = *v22;
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      v30 = 0x80000001D30EC850;
      v31 = 0xD00000000000002FLL;
LABEL_83:
      *v262 = v31;
      *&v262[8] = v30;
      v224 = v29 == 0;
LABEL_105:
      if (v224)
      {
        v57 = 0x65736C6166;
      }

      else
      {
        v57 = 1702195828;
      }

      goto LABEL_115;
    case 43:
      v75 = *v22;
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      *v262 = 0xD000000000000027;
      *&v262[8] = 0x80000001D30EC820;
      v76 = MEMORY[0x1D38B26B0](v75, MEMORY[0x1E69E6158]);
LABEL_35:
      v137 = v76;
      v60 = v77;

      v138 = v137;
      goto LABEL_52;
    case 44:
      return 0xD000000000000018;
    case 45:
      return 0xD000000000000013;
    case 46:
      return 0xD000000000000016;
    case 47:
      return 0xD000000000000011;
    case 48:
      return result;
    case 49:
      return 0x6164206573617245;
    default:
      v25 = *v22;
      v26 = *(v22 + 1);
      *v262 = 0;
      *&v262[8] = 0xE000000000000000;
      sub_1D30E948C();

      v27 = 0x80000001D30ED250;
      v28 = 0xD00000000000001FLL;
LABEL_69:
      *v262 = v28;
      *&v262[8] = v27;
LABEL_70:
      MEMORY[0x1D38B2610](v25, v26);
      goto LABEL_116;
  }
}

uint64_t sub_1D3045A34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D3045A7C()
{
  result = qword_1EC74A198;
  if (!qword_1EC74A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A198);
  }

  return result;
}

unint64_t sub_1D3045AD0()
{
  result = qword_1EE314430;
  if (!qword_1EE314430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314430);
  }

  return result;
}

uint64_t sub_1D3045B24(char a1)
{
  result = 0x6F666E49707061;
  switch(a1)
  {
    case 1:
      result = 0x74736566696E616DLL;
      break;
    case 2:
    case 15:
    case 30:
      result = 0xD000000000000014;
      break;
    case 3:
    case 4:
    case 17:
    case 36:
    case 41:
    case 43:
    case 48:
      result = 0xD000000000000016;
      break;
    case 5:
    case 24:
      result = 0xD000000000000017;
      break;
    case 6:
    case 44:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0x4D6C6C6174736E69;
      break;
    case 8:
    case 26:
    case 27:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000025;
      break;
    case 11:
    case 23:
    case 29:
    case 32:
      result = 0xD000000000000012;
      break;
    case 12:
    case 13:
    case 33:
    case 40:
    case 42:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 16:
      result = 0x6176417349746573;
      break;
    case 18:
      v3 = 0x65766F6D6572;
      goto LABEL_19;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
    case 37:
      result = 0xD00000000000001CLL;
      break;
    case 21:
      result = 0x4C74736575716572;
      break;
    case 22:
      result = 0xD00000000000001BLL;
      break;
    case 25:
      result = 0xD000000000000013;
      break;
    case 28:
      result = 0xD000000000000013;
      break;
    case 31:
      result = 0xD000000000000013;
      break;
    case 34:
      v3 = 0x6E4968746170;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7341000000000000;
      break;
    case 35:
      result = 0x41726F4668746170;
      break;
    case 38:
      result = 0x6F436F5468746170;
      break;
    case 39:
      result = 0xD000000000000013;
      break;
    case 45:
      result = 0x744965766F6D6572;
      break;
    case 46:
      result = 0x70556E61656C63;
      break;
    case 47:
      result = 0x7461446573617265;
      break;
    case 49:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D3045F9C(uint64_t a1)
{
  v2 = sub_1D304E8F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3045FD8(uint64_t a1)
{
  v2 = sub_1D304E8F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D3046014()
{
  v1 = 0x626F6C4768746977;
  v2 = 0x6E6F6973726576;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 1953722216;
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

uint64_t sub_1D3046094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30D9608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D30460BC(uint64_t a1)
{
  v2 = sub_1D304F134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30460F8(uint64_t a1)
{
  v2 = sub_1D304F134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046134(uint64_t a1)
{
  v2 = sub_1D304E948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046170(uint64_t a1)
{
  v2 = sub_1D304E948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30461C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D30EE570 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D30E97CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D304625C(uint64_t a1)
{
  v2 = sub_1D304F1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046298(uint64_t a1)
{
  v2 = sub_1D304F1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30462D4()
{
  v1 = 0x44496D616574;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1D3046324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30D9778(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D304634C(uint64_t a1)
{
  v2 = sub_1D304F188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046388(uint64_t a1)
{
  v2 = sub_1D304F188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30463C4(uint64_t a1)
{
  v2 = sub_1D304EAEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046400(uint64_t a1)
{
  v2 = sub_1D304EAEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D30EE5B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D30E97CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D30464EC(uint64_t a1)
{
  v2 = sub_1D304F4D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046528(uint64_t a1)
{
  v2 = sub_1D304F4D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046564(uint64_t a1)
{
  v2 = sub_1D304F428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30465A0(uint64_t a1)
{
  v2 = sub_1D304F428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30465DC(uint64_t a1)
{
  v2 = sub_1D304F32C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046618(uint64_t a1)
{
  v2 = sub_1D304F32C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646E754268746977 && a2 == 0xED0000734449656CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D3046708(uint64_t a1)
{
  v2 = sub_1D304E2F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046744(uint64_t a1)
{
  v2 = sub_1D304E2F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30467A0(uint64_t a1)
{
  v2 = sub_1D304EFE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30467DC(uint64_t a1)
{
  v2 = sub_1D304EFE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046818(uint64_t a1)
{
  v2 = sub_1D304E3F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046854(uint64_t a1)
{
  v2 = sub_1D304E3F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30D988C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D30468C0(uint64_t a1)
{
  v2 = sub_1D304E2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30468FC(uint64_t a1)
{
  v2 = sub_1D304E2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001D30EE430 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D30E97CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D30469E8(uint64_t a1)
{
  v2 = sub_1D304E348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046A24(uint64_t a1)
{
  v2 = sub_1D304E348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046A84(uint64_t a1)
{
  v2 = sub_1D304E63C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046AC0(uint64_t a1)
{
  v2 = sub_1D304E63C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046AFC(uint64_t a1)
{
  v2 = sub_1D304E5E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046B38(uint64_t a1)
{
  v2 = sub_1D304E5E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046B74()
{
  v1 = 0x4449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x44496D616574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6150656372756F73;
  }
}

uint64_t sub_1D3046BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30DA7DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D3046BF8(uint64_t a1)
{
  v2 = sub_1D304E6E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046C34(uint64_t a1)
{
  v2 = sub_1D304E6E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046C70(uint64_t a1)
{
  v2 = sub_1D304E594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046CAC(uint64_t a1)
{
  v2 = sub_1D304E594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046CE8(uint64_t a1)
{
  v2 = sub_1D304F08C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046D24(uint64_t a1)
{
  v2 = sub_1D304F08C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046D60(uint64_t a1)
{
  v2 = sub_1D304E39C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046D9C(uint64_t a1)
{
  v2 = sub_1D304E39C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046DD8()
{
  if (*v0)
  {
    result = 1836020326;
  }

  else
  {
    result = 0x656C6F52726F66;
  }

  *v0;
  return result;
}

uint64_t sub_1D3046E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C6F52726F66 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1836020326 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D3046EE8(uint64_t a1)
{
  v2 = sub_1D304EA44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046F24(uint64_t a1)
{
  v2 = sub_1D304EA44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046F60()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x44496D616574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t sub_1D3046FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30DA8F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D3046FDC(uint64_t a1)
{
  v2 = sub_1D304F284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047018(uint64_t a1)
{
  v2 = sub_1D304F284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047054(uint64_t a1)
{
  v2 = sub_1D304F380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047090(uint64_t a1)
{
  v2 = sub_1D304F380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30470CC(uint64_t a1)
{
  v2 = sub_1D304EE40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047108(uint64_t a1)
{
  v2 = sub_1D304EE40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D3047144()
{
  v1 = 0x44496D616574;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1D30471A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30DAA14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D30471D0(uint64_t a1)
{
  v2 = sub_1D304F47C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304720C(uint64_t a1)
{
  v2 = sub_1D304F47C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D3047248()
{
  v1 = 28532;
  v2 = 0x44496D616574;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
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

uint64_t sub_1D30472B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30DAB38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D30472E0(uint64_t a1)
{
  v2 = sub_1D304E498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304731C(uint64_t a1)
{
  v2 = sub_1D304E498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047358(uint64_t a1)
{
  v2 = sub_1D304E540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047394(uint64_t a1)
{
  v2 = sub_1D304E540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30473D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6150656372756F73 && a2 == 0xEA00000000006874;
  if (v6 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEC00000061746144)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D30474B8(uint64_t a1)
{
  v2 = sub_1D304E4EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30474F4(uint64_t a1)
{
  v2 = sub_1D304E4EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D304754C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001D30EE510 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D30E97CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D30475E0(uint64_t a1)
{
  v2 = sub_1D304EC3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304761C(uint64_t a1)
{
  v2 = sub_1D304EC3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D304766C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x636974617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D30476F0(uint64_t a1)
{
  v2 = sub_1D304EC90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304772C(uint64_t a1)
{
  v2 = sub_1D304EC90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D3047768()
{
  v1 = 29793;
  v2 = 0x44496D616574;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x4449656C646E7562;
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

uint64_t sub_1D30477D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30DADBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D3047800(uint64_t a1)
{
  v2 = sub_1D304E78C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304783C(uint64_t a1)
{
  v2 = sub_1D304E78C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047878()
{
  v1 = 0x44496C61626F6C67;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 29793;
  }
}

uint64_t sub_1D30478CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30DAF1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D30478F4(uint64_t a1)
{
  v2 = sub_1D304E84C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047930(uint64_t a1)
{
  v2 = sub_1D304E84C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D304796C(uint64_t a1)
{
  v2 = sub_1D304E690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30479A8(uint64_t a1)
{
  v2 = sub_1D304E690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30479E4(uint64_t a1)
{
  v2 = sub_1D304F2D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047A20(uint64_t a1)
{
  v2 = sub_1D304F2D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001D30EE470 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D30E97CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D3047B40(uint64_t a1)
{
  v2 = sub_1D304E738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047B7C(uint64_t a1)
{
  v2 = sub_1D304E738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047BB8(uint64_t a1)
{
  v2 = sub_1D304EBE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047BF4(uint64_t a1)
{
  v2 = sub_1D304EBE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047C30(uint64_t a1)
{
  v2 = sub_1D304EE94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047C6C(uint64_t a1)
{
  v2 = sub_1D304EE94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D30EE4D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D30E97CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D3047D3C(uint64_t a1)
{
  v2 = sub_1D304E8A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047D78(uint64_t a1)
{
  v2 = sub_1D304E8A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047DB4(uint64_t a1)
{
  v2 = sub_1D304EEE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047DF0(uint64_t a1)
{
  v2 = sub_1D304EEE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047E2C(uint64_t a1)
{
  v2 = sub_1D304F0E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047E68(uint64_t a1)
{
  v2 = sub_1D304F0E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6961746E6F436E69 && a2 == 0xED0000744172656ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D3047F34(uint64_t a1)
{
  v2 = sub_1D304E444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047F70(uint64_t a1)
{
  v2 = sub_1D304E444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444968746977 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D3048044(uint64_t a1)
{
  v2 = sub_1D304EA98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3048080(uint64_t a1)
{
  v2 = sub_1D304EA98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30480BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D30EE4F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D3048198(uint64_t a1)
{
  v2 = sub_1D304EB40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30481D4(uint64_t a1)
{
  v2 = sub_1D304EB40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D3048210()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x6F72724568746977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1D304827C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30DB034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D30482A4(uint64_t a1)
{
  v2 = sub_1D304EF3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30482E0(uint64_t a1)
{
  v2 = sub_1D304EF3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D304831C()
{
  v1 = 0x496E6F6973726576;
  v2 = 0x6C646E7542707061;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1D30483A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30DB160(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D30483CC(uint64_t a1)
{
  v2 = sub_1D304EDEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3048408(uint64_t a1)
{
  v2 = sub_1D304EDEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3048444()
{
  if (*v0)
  {
    result = 0x6C646E7542707061;
  }

  else
  {
    result = 7499622;
  }

  *v0;
  return result;
}

uint64_t sub_1D3048480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7499622 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D3048560(uint64_t a1)
{
  v2 = sub_1D304ECE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304859C(uint64_t a1)
{
  v2 = sub_1D304ECE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D30485D8()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1D304860C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D30EE550 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D30486E8(uint64_t a1)
{
  v2 = sub_1D304EF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3048724(uint64_t a1)
{
  v2 = sub_1D304EF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3048760(uint64_t a1)
{
  v2 = sub_1D304F3D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304879C(uint64_t a1)
{
  v2 = sub_1D304F3D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30487D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x626F6C4768746977 && a2 == 0xEC00000044496C61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D3048864(uint64_t a1)
{
  v2 = sub_1D304F038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30488A0(uint64_t a1)
{
  v2 = sub_1D304F038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30488F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C6F52726F66 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D304897C(uint64_t a1)
{
  v2 = sub_1D304E99C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30489B8(uint64_t a1)
{
  v2 = sub_1D304E99C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30489F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001D30EE470 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D30E97CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D3048A88(uint64_t a1)
{
  v2 = sub_1D304F230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3048AC4(uint64_t a1)
{
  v2 = sub_1D304F230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Helper.Message.encode(to:)(void *a1)
{
  v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1B0, &qword_1D30F54B0);
  v607 = *(v565 - 8);
  v2 = *(v607 + 64);
  MEMORY[0x1EEE9AC00](v565);
  v564 = &v461 - v3;
  v563 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1B8, &qword_1D30F54B8);
  v606 = *(v563 - 8);
  v4 = *(v606 + 64);
  MEMORY[0x1EEE9AC00](v563);
  v562 = &v461 - v5;
  v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1C0, &qword_1D30F54C0);
  v559 = *(v560 - 8);
  v6 = *(v559 + 64);
  MEMORY[0x1EEE9AC00](v560);
  v555 = &v461 - v7;
  v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1C8, &qword_1D30F54C8);
  v552 = *(v554 - 8);
  v8 = *(v552 + 64);
  MEMORY[0x1EEE9AC00](v554);
  v549 = &v461 - v9;
  v557 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1D0, &qword_1D30F54D0);
  v604 = *(v557 - 8);
  v10 = *(v604 + 64);
  MEMORY[0x1EEE9AC00](v557);
  v553 = &v461 - v11;
  v567 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1D8, &qword_1D30F54D8);
  v611 = *(v567 - 8);
  v12 = *(v611 + 64);
  MEMORY[0x1EEE9AC00](v567);
  v566 = &v461 - v13;
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1E0, &qword_1D30F54E0);
  v603 = *(v556 - 8);
  v14 = *(v603 + 64);
  MEMORY[0x1EEE9AC00](v556);
  v551 = &v461 - v15;
  v561 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1E8, &qword_1D30F54E8);
  v605 = *(v561 - 8);
  v16 = *(v605 + 64);
  MEMORY[0x1EEE9AC00](v561);
  v558 = &v461 - v17;
  v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1F0, &qword_1D30F54F0);
  v601 = *(v547 - 8);
  v18 = *(v601 + 64);
  MEMORY[0x1EEE9AC00](v547);
  v546 = &v461 - v19;
  v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1F8, &qword_1D30F54F8);
  v602 = *(v550 - 8);
  v20 = *(v602 + 64);
  MEMORY[0x1EEE9AC00](v550);
  v548 = &v461 - v21;
  v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A200, &qword_1D30F5500);
  v599 = *(v541 - 8);
  v22 = *(v599 + 64);
  MEMORY[0x1EEE9AC00](v541);
  v539 = &v461 - v23;
  v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A208, &qword_1D30F5508);
  v534 = *(v535 - 8);
  v24 = *(v534 + 64);
  MEMORY[0x1EEE9AC00](v535);
  v533 = &v461 - v25;
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A210, &qword_1D30F5510);
  v600 = *(v544 - 8);
  v26 = *(v600 + 64);
  MEMORY[0x1EEE9AC00](v544);
  v542 = &v461 - v27;
  v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A218, &qword_1D30F5518);
  v597 = *(v537 - 8);
  v28 = *(v597 + 64);
  MEMORY[0x1EEE9AC00](v537);
  v536 = &v461 - v29;
  v545 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A220, &qword_1D30F5520);
  v610 = *(v545 - 8);
  v30 = *(v610 + 64);
  MEMORY[0x1EEE9AC00](v545);
  v543 = &v461 - v31;
  v540 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A228, &qword_1D30F5528);
  v598 = *(v540 - 8);
  v32 = *(v598 + 64);
  MEMORY[0x1EEE9AC00](v540);
  v538 = &v461 - v33;
  v34 = sub_1D30E8D9C();
  v626 = *(v34 - 8);
  v627 = v34;
  v35 = *(v626 + 64);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v532 = &v461 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v615 = &v461 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v622 = &v461 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v614 = &v461 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v621 = &v461 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v531 = &v461 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v616 = &v461 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v618 = &v461 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v617 = &v461 - v52;
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A230, &qword_1D30F5530);
  v596 = *(v530 - 8);
  v53 = *(v596 + 64);
  MEMORY[0x1EEE9AC00](v530);
  v529 = &v461 - v54;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A238, &qword_1D30F5538);
  v595 = *(v528 - 8);
  v55 = *(v595 + 64);
  MEMORY[0x1EEE9AC00](v528);
  v527 = &v461 - v56;
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A240, &qword_1D30F5540);
  v522 = *(v524 - 8);
  v57 = *(v522 + 64);
  MEMORY[0x1EEE9AC00](v524);
  v521 = &v461 - v58;
  v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A248, &qword_1D30F5548);
  v593 = *(v525 - 8);
  v59 = *(v593 + 64);
  MEMORY[0x1EEE9AC00](v525);
  v520 = &v461 - v60;
  v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A250, &qword_1D30F5550);
  v594 = *(v526 - 8);
  v61 = *(v594 + 64);
  MEMORY[0x1EEE9AC00](v526);
  v523 = &v461 - v62;
  v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A258, &qword_1D30F5558);
  v592 = *(v519 - 8);
  v63 = *(v592 + 64);
  MEMORY[0x1EEE9AC00](v519);
  v517 = &v461 - v64;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A260, &qword_1D30F5560);
  v511 = *(v513 - 8);
  v65 = *(v511 + 64);
  MEMORY[0x1EEE9AC00](v513);
  v509 = &v461 - v66;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A268, &qword_1D30F5568);
  v591 = *(v518 - 8);
  v67 = *(v591 + 64);
  MEMORY[0x1EEE9AC00](v518);
  v516 = &v461 - v68;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A270, &qword_1D30F5570);
  v590 = *(v515 - 8);
  v69 = *(v590 + 64);
  MEMORY[0x1EEE9AC00](v515);
  v512 = &v461 - v70;
  v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A278, &qword_1D30F5578);
  v589 = *(v507 - 8);
  v71 = *(v589 + 64);
  MEMORY[0x1EEE9AC00](v507);
  v505 = &v461 - v72;
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A280, &qword_1D30F5580);
  v587 = *(v503 - 8);
  v73 = *(v587 + 64);
  MEMORY[0x1EEE9AC00](v503);
  v502 = &v461 - v74;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A288, &qword_1D30F5588);
  v588 = *(v506 - 8);
  v75 = *(v588 + 64);
  MEMORY[0x1EEE9AC00](v506);
  v504 = &v461 - v76;
  v623 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A290, &qword_1D30F5590);
  v609 = *(v623 - 8);
  v77 = *(v609 + 64);
  MEMORY[0x1EEE9AC00](v623);
  v508 = &v461 - v78;
  v514 = sub_1D30E8A4C();
  v613 = *(v514 - 8);
  v79 = *(v613 + 64);
  MEMORY[0x1EEE9AC00](v514);
  v510 = &v461 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A298, &qword_1D30F5598);
  v585 = *(v500 - 8);
  v81 = *(v585 + 64);
  MEMORY[0x1EEE9AC00](v500);
  v498 = &v461 - v82;
  v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2A0, &qword_1D30F55A0);
  v584 = *(v497 - 8);
  v83 = *(v584 + 64);
  MEMORY[0x1EEE9AC00](v497);
  v495 = &v461 - v84;
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2A8, &qword_1D30F55A8);
  v583 = *(v496 - 8);
  v85 = *(v583 + 64);
  MEMORY[0x1EEE9AC00](v496);
  v493 = &v461 - v86;
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2B0, &qword_1D30F55B0);
  v586 = *(v501 - 8);
  v87 = *(v586 + 64);
  MEMORY[0x1EEE9AC00](v501);
  v499 = &v461 - v88;
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2B8, &qword_1D30F55B8);
  v582 = *(v494 - 8);
  v89 = *(v582 + 64);
  MEMORY[0x1EEE9AC00](v494);
  v492 = &v461 - v90;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2C0, &qword_1D30F55C0);
  v581 = *(v489 - 8);
  v91 = *(v581 + 64);
  MEMORY[0x1EEE9AC00](v489);
  v488 = &v461 - v92;
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2C8, &qword_1D30F55C8);
  v580 = *(v487 - 8);
  v93 = *(v580 + 64);
  MEMORY[0x1EEE9AC00](v487);
  v486 = &v461 - v94;
  v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2D0, &qword_1D30F55D0);
  v483 = *(v484 - 8);
  v95 = *(v483 + 64);
  MEMORY[0x1EEE9AC00](v484);
  v481 = &v461 - v96;
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2D8, &qword_1D30F55D8);
  v579 = *(v485 - 8);
  v97 = *(v579 + 64);
  MEMORY[0x1EEE9AC00](v485);
  v482 = &v461 - v98;
  v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2E0, &qword_1D30F55E0);
  v608 = *(v491 - 8);
  v99 = *(v608 + 64);
  MEMORY[0x1EEE9AC00](v491);
  v490 = &v461 - v100;
  v101 = sub_1D30E8D5C();
  v624 = *(v101 - 8);
  v625 = v101;
  v102 = *(v624 + 64);
  v103 = MEMORY[0x1EEE9AC00](v101);
  v620 = &v461 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103);
  v612 = &v461 - v105;
  v461 = type metadata accessor for AssetPackHost();
  v106 = *(*(v461 - 8) + 64);
  MEMORY[0x1EEE9AC00](v461);
  v619 = &v461 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2E8, &qword_1D30F55E8);
  v578 = *(v480 - 8);
  v108 = *(v578 + 64);
  MEMORY[0x1EEE9AC00](v480);
  v479 = &v461 - v109;
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2F0, &qword_1D30F55F0);
  v576 = *(v476 - 8);
  v110 = *(v576 + 64);
  MEMORY[0x1EEE9AC00](v476);
  v474 = &v461 - v111;
  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2F8, &qword_1D30F55F8);
  v575 = *(v475 - 8);
  v112 = *(v575 + 64);
  MEMORY[0x1EEE9AC00](v475);
  v473 = &v461 - v113;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A300, &qword_1D30F5600);
  v577 = *(v478 - 8);
  v114 = *(v577 + 64);
  MEMORY[0x1EEE9AC00](v478);
  v477 = &v461 - v115;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A308, &qword_1D30F5608);
  v574 = *(v472 - 8);
  v116 = *(v574 + 64);
  MEMORY[0x1EEE9AC00](v472);
  v470 = &v461 - v117;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A310, &qword_1D30F5610);
  v572 = *(v469 - 8);
  v118 = *(v572 + 64);
  MEMORY[0x1EEE9AC00](v469);
  v467 = &v461 - v119;
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A318, &qword_1D30F5618);
  v573 = *(v471 - 8);
  v120 = *(v573 + 64);
  MEMORY[0x1EEE9AC00](v471);
  v468 = &v461 - v121;
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A320, &qword_1D30F5620);
  v570 = *(v465 - 8);
  v122 = *(v570 + 64);
  MEMORY[0x1EEE9AC00](v465);
  v463 = &v461 - v123;
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A328, &qword_1D30F5628);
  v569 = *(v462 - 8);
  v124 = *(v569 + 64);
  MEMORY[0x1EEE9AC00](v462);
  v126 = &v461 - v125;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A330, &qword_1D30F5630);
  v571 = *(v466 - 8);
  v127 = *(v571 + 64);
  MEMORY[0x1EEE9AC00](v466);
  v464 = &v461 - v128;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A338, &qword_1D30F5638);
  v568 = *(v129 - 8);
  v130 = *(v568 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v132 = &v461 - v131;
  v133 = type metadata accessor for Helper.Message(0);
  v134 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v136 = &v461 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A340, &qword_1D30F5640);
  v631 = *(v137 - 8);
  v632 = v137;
  v138 = *(v631 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v140 = &v461 - v139;
  v141 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D304E2A0();
  v633 = v140;
  sub_1D30E992C();
  sub_1D3058338(v629, v136, type metadata accessor for Helper.Message);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v326 = *v136;
      v327 = *(v136 + 1);
      v328 = *(v136 + 3);
      *&v629 = *(v136 + 2);
      v329 = v136[32];
      LOBYTE(v634) = 1;
      sub_1D304F47C();
      v330 = v464;
      v204 = v632;
      v331 = v633;
      sub_1D30E96DC();
      LOBYTE(v634) = 0;
      v332 = v466;
      v333 = v628;
      sub_1D30E970C();
      if (!v333)
      {
        LODWORD(v628) = v329;

        LOBYTE(v634) = 1;
        sub_1D30E96EC();

        LOBYTE(v634) = 2;
        sub_1D30E971C();
        (*(v571 + 8))(v330, v332);
        goto LABEL_118;
      }

      (*(v571 + 8))(v330, v332);
      (*(v631 + 8))(v331, v204);
      return;
    case 2u:
      v305 = *v136;
      v304 = *(v136 + 1);
      LOBYTE(v634) = 2;
      sub_1D304F428();
      v296 = v632;
      v297 = v633;
      sub_1D30E96DC();
      v298 = v462;
      sub_1D30E970C();

      v306 = &v601;
      goto LABEL_99;
    case 3u:
      v316 = *v136;
      v315 = *(v136 + 1);
      LOBYTE(v634) = 3;
      sub_1D304F3D4();
      v126 = v463;
      v296 = v632;
      v297 = v633;
      sub_1D30E96DC();
      v298 = v465;
      sub_1D30E970C();

      v306 = &v602;
      goto LABEL_99;
    case 4u:
      v261 = *v136;
      v260 = *(v136 + 1);
      v263 = *(v136 + 2);
      v262 = *(v136 + 3);
      LOBYTE(v634) = 4;
      sub_1D304F380();
      v239 = v468;
      v240 = v632;
      v241 = v633;
      sub_1D30E96DC();
      LOBYTE(v634) = 0;
      v242 = v471;
      v264 = v628;
      sub_1D30E970C();

      if (!v264)
      {
        LOBYTE(v634) = 1;
        sub_1D30E96EC();
      }

      v433 = &v605;
      goto LABEL_95;
    case 5u:
      v367 = *v136;
      v366 = *(v136 + 1);
      LOBYTE(v634) = 5;
      sub_1D304F32C();
      v126 = v467;
      v296 = v632;
      v297 = v633;
      sub_1D30E96DC();
      v298 = v469;
      sub_1D30E970C();

      v306 = &v604;
      goto LABEL_99;
    case 6u:
      v379 = *v136;
      v378 = *(v136 + 1);
      LOBYTE(v634) = 6;
      sub_1D304F2D8();
      v126 = v470;
      v296 = v632;
      v297 = v633;
      sub_1D30E96DC();
      v298 = v472;
      sub_1D30E970C();

      v306 = &v606;
      goto LABEL_99;
    case 7u:
      v318 = *v136;
      v317 = *(v136 + 1);
      v319 = *(v136 + 2);
      *&v629 = *(v136 + 3);
      v320 = *(v136 + 5);
      v626 = *(v136 + 4);
      v627 = v319;
      LOBYTE(v634) = 7;
      sub_1D304F284();
      v321 = v477;
      v296 = v632;
      v322 = v633;
      sub_1D30E96DC();
      *&v634 = v318;
      *(&v634 + 1) = v317;
      v639 = 0;
      sub_1D2FF92C4();
      v323 = v478;
      v324 = v628;
      sub_1D30E974C();
      if (v324)
      {

        (*(v577 + 8))(v321, v323);
        (*(v631 + 8))(v322, v296);
        v325 = v318;
        goto LABEL_116;
      }

      LOBYTE(v634) = 1;
      sub_1D30E970C();

      LOBYTE(v634) = 2;
      sub_1D30E96EC();
      sub_1D2FF1804(v318, v317);

      (*(v577 + 8))(v321, v323);
      v207 = *(v631 + 8);
      v208 = v633;
      goto LABEL_100;
    case 8u:
      v390 = *v136;
      v389 = *(v136 + 1);
      LOBYTE(v634) = 8;
      sub_1D304F230();
      v126 = v473;
      v296 = v632;
      v297 = v633;
      sub_1D30E96DC();
      v298 = v475;
      sub_1D30E970C();

      v306 = &v607;
      goto LABEL_99;
    case 9u:
      v288 = *v136;
      LOBYTE(v634) = 9;
      sub_1D304F1DC();
      v289 = v474;
      v290 = v632;
      v291 = v633;
      sub_1D30E96DC();
      v292 = v476;
      sub_1D30E971C();
      v293 = &v608;
      goto LABEL_80;
    case 0xAu:
      v383 = *v136;
      v382 = *(v136 + 1);
      v384 = *(v136 + 3);
      *&v629 = *(v136 + 2);
      v385 = v136[32];
      LOBYTE(v634) = 10;
      sub_1D304F188();
      v386 = v479;
      v204 = v632;
      v331 = v633;
      sub_1D30E96DC();
      LOBYTE(v634) = 0;
      v387 = v480;
      v388 = v628;
      sub_1D30E970C();
      if (v388)
      {
      }

      else
      {
        LODWORD(v628) = v385;

        LOBYTE(v634) = 1;
        sub_1D30E96EC();

        LOBYTE(v634) = 2;
        sub_1D30E971C();
      }

      (*(v578 + 8))(v386, v387);
LABEL_118:
      v207 = *(v631 + 8);
      v208 = v331;
      goto LABEL_119;
    case 0xBu:
      v245 = *(v136 + 1);
      *&v629 = *v136;
      v246 = *(v136 + 2);
      v247 = *(v136 + 3);
      v248 = *(v136 + 5);
      v626 = *(v136 + 4);
      v627 = v246;
      v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A8, &qword_1D30F54A8);
      v250 = v249[12];
      v623 = *&v136[v249[16]];
      v251 = v249[20];
      sub_1D3056830(&v136[v250], v619, type metadata accessor for AssetPackHost);
      v252 = v624;
      v253 = v612;
      (*(v624 + 32))(v612, &v136[v251], v625);
      LOBYTE(v634) = 11;
      sub_1D304F134();
      v254 = v490;
      v256 = v632;
      v255 = v633;
      sub_1D30E96DC();
      *&v634 = v629;
      *(&v634 + 1) = v245;
      *&v629 = v245;
      v635 = v627;
      v636 = v247;
      v637 = v626;
      v638 = v248;
      v627 = v248;
      v639 = 0;
      sub_1D2FF6708();
      v257 = v491;
      v258 = v628;
      sub_1D30E974C();
      if (v258)
      {
        (*(v608 + 8))(v254, v257);
        (*(v252 + 8))(v253, v625);
        sub_1D3065284(v619, type metadata accessor for AssetPackHost);
        (*(v631 + 8))(v255, v256);

        goto LABEL_73;
      }

      LOBYTE(v634) = 1;
      sub_1D3045A34(&qword_1EC749A60, type metadata accessor for AssetPackHost);
      v434 = v619;
      sub_1D30E974C();
      LOBYTE(v634) = 2;
      sub_1D30E973C();
      v170 = v632;
      v171 = v633;
      v448 = v624;
      v449 = v625;
      v450 = v612;
      LOBYTE(v634) = 3;
      sub_1D3045A34(&qword_1EC749A68, MEMORY[0x1E69E8380]);
      sub_1D30E974C();
      (*(v608 + 8))(0, v257);
      (*(v448 + 8))(v450, v449);
      sub_1D3065284(v434, type metadata accessor for AssetPackHost);
      goto LABEL_47;
    case 0xCu:
      v282 = *(v136 + 1);
      *&v629 = *v136;
      v283 = *(v136 + 2);
      v284 = *(v136 + 3);
      v286 = *(v136 + 4);
      v285 = *(v136 + 5);
      LOBYTE(v634) = 12;
      sub_1D304F0E0();
      v287 = v482;
      v231 = v632;
      v230 = v633;
      sub_1D30E96DC();
      *&v634 = v629;
      *(&v634 + 1) = v282;
      *&v629 = v282;
      v635 = v283;
      v636 = v284;
      v232 = v287;
      v637 = v286;
      v638 = v285;
      sub_1D2FF6708();
      v233 = v485;
      sub_1D30E974C();
      v234 = &v611;
      goto LABEL_55;
    case 0xDu:
      v372 = *(v136 + 1);
      *&v629 = *v136;
      v373 = *(v136 + 2);
      v374 = *(v136 + 3);
      v376 = *(v136 + 4);
      v375 = *(v136 + 5);
      LOBYTE(v634) = 14;
      sub_1D304F038();
      v377 = v486;
      v231 = v632;
      v230 = v633;
      sub_1D30E96DC();
      *&v634 = v629;
      *(&v634 + 1) = v372;
      *&v629 = v372;
      v635 = v373;
      v636 = v374;
      v232 = v377;
      v637 = v376;
      v638 = v375;
      sub_1D2FF6708();
      v233 = v487;
      sub_1D30E974C();
      v234 = &v612;
      goto LABEL_55;
    case 0xEu:
      v224 = *(v136 + 1);
      *&v629 = *v136;
      v225 = *(v136 + 2);
      v226 = *(v136 + 3);
      v228 = *(v136 + 4);
      v227 = *(v136 + 5);
      LOBYTE(v634) = 15;
      sub_1D304EFE4();
      v229 = v488;
      v231 = v632;
      v230 = v633;
      sub_1D30E96DC();
      *&v634 = v629;
      *(&v634 + 1) = v224;
      *&v629 = v224;
      v635 = v225;
      v636 = v226;
      v232 = v229;
      v637 = v228;
      v638 = v227;
      sub_1D2FF6708();
      v233 = v489;
      sub_1D30E974C();
      v234 = &v613;
      goto LABEL_55;
    case 0xFu:
      v307 = *v136;
      v308 = *(v136 + 2);
      *&v629 = *(v136 + 1);
      v309 = *(v136 + 3);
      v310 = *(v136 + 4);
      v311 = *(v136 + 6);
      v626 = *(v136 + 5);
      v627 = v309;
      LOBYTE(v634) = 16;
      sub_1D304EF90();
      v312 = v492;
      v170 = v632;
      v171 = v633;
      sub_1D30E96DC();
      LOBYTE(v634) = 0;
      v313 = v494;
      v314 = v628;
      sub_1D30E971C();
      if (v314)
      {

        (*(v582 + 8))(v312, v313);
        goto LABEL_47;
      }

      *&v634 = v629;
      *(&v634 + 1) = v308;
      v635 = v627;
      v636 = v310;
      v637 = v626;
      v638 = v311;
      v639 = 1;
      sub_1D2FF6708();
      sub_1D30E974C();
      (*(v582 + 8))(v312, v313);
      (*(v631 + 8))(v633, v632);

      goto LABEL_73;
    case 0x10u:
      v209 = *v136;
      v210 = *(v136 + 1);
      v211 = *(v136 + 2);
      v212 = *(v136 + 3);
      v213 = *(v136 + 4);
      v214 = *(v136 + 5);
      v215 = *(v136 + 7);
      v626 = *(v136 + 6);
      v627 = v209;
      *&v629 = v215;
      v216 = *(v136 + 8);
      v624 = *(v136 + 9);
      v625 = v216;
      LOBYTE(v634) = 17;
      sub_1D304EF3C();
      v217 = v499;
      v219 = v632;
      v218 = v633;
      sub_1D30E96DC();
      *&v634 = v627;
      *(&v634 + 1) = v210;
      v220 = v217;
      v635 = v211;
      v636 = v212;
      v637 = v213;
      v638 = v214;
      v639 = 0;
      sub_1D2FF6708();
      v221 = v501;
      v222 = v628;
      sub_1D30E974C();
      if (v222)
      {

        (*(v586 + 8))(v217, v221);
        (*(v631 + 8))(v218, v219);
      }

      else
      {
        v431 = v624;
        v430 = v625;
        v432 = v629;

        LOBYTE(v634) = 1;
        sub_1D30E973C();
        v445 = v432;
        *&v634 = v432;
        *(&v634 + 1) = v430;
        v635 = v431;
        v639 = 2;
        sub_1D304EB94();
        sub_1D30E96FC();
        v446 = v632;
        v447 = v633;
        (*(v586 + 8))(v220, v221);
        (*(v631 + 8))(v447, v446);
      }

      return;
    case 0x11u:
      v345 = *(v136 + 1);
      *&v629 = *v136;
      v346 = *(v136 + 2);
      v347 = *(v136 + 3);
      v349 = *(v136 + 4);
      v348 = *(v136 + 5);
      LOBYTE(v634) = 18;
      sub_1D304EEE8();
      v350 = v493;
      v231 = v632;
      v230 = v633;
      sub_1D30E96DC();
      *&v634 = v629;
      *(&v634 + 1) = v345;
      *&v629 = v345;
      v635 = v346;
      v636 = v347;
      v232 = v350;
      v637 = v349;
      v638 = v348;
      sub_1D2FF6708();
      v233 = v496;
      sub_1D30E974C();
      v234 = &v615;
LABEL_55:
      (*(*(v234 - 32) + 1))(v232, v233);
      (*(v631 + 8))(v230, v231);

      goto LABEL_73;
    case 0x12u:
      v381 = *v136;
      v380 = *(v136 + 1);
      LOBYTE(v634) = 19;
      sub_1D304EE94();
      v126 = v495;
      v296 = v632;
      v297 = v633;
      sub_1D30E96DC();
      v298 = v497;
      sub_1D30E96EC();

      v306 = &v616;
      goto LABEL_99;
    case 0x13u:
      v412 = *v136;
      v411 = *(v136 + 1);
      LOBYTE(v634) = 20;
      sub_1D304EE40();
      v126 = v498;
      v296 = v632;
      v297 = v633;
      sub_1D30E96DC();
      v298 = v500;
      sub_1D30E970C();

      v306 = &v617;
      goto LABEL_99;
    case 0x14u:
      v352 = *(v136 + 1);
      *&v629 = *v136;
      v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A0, &qword_1D30F54A0);
      v354 = v353[12];
      v355 = *&v136[v353[16]];
      v356 = &v136[v353[20]];
      v358 = *v356;
      v357 = v356[1];
      v625 = v358;
      v626 = v355;
      v627 = v357;
      v359 = v613;
      v360 = v510;
      v361 = v514;
      (*(v613 + 32))(v510, &v136[v354], v514);
      LOBYTE(v634) = 21;
      sub_1D304EDEC();
      v362 = v508;
      v364 = v632;
      v363 = v633;
      sub_1D30E96DC();
      LOBYTE(v634) = 0;
      v365 = v628;
      sub_1D30E970C();
      if (v365)
      {

        (*(v609 + 8))(v362, v623);
        (*(v359 + 8))(v360, v361);
        (*(v631 + 8))(v363, v364);
        return;
      }

      LOBYTE(v634) = 1;
      sub_1D3045A34(&qword_1EC7494B0, MEMORY[0x1E69695A8]);
      sub_1D30E974C();
      v439 = v361;
      LOBYTE(v634) = 2;
      v456 = v362;
      sub_1D30E975C();
      v457 = v613;
      LOBYTE(v634) = 3;
      sub_1D30E970C();
      v170 = v632;

      (*(v609 + 8))(v456, v623);
      (*(v457 + 8))(v360, v439);
      v207 = *(v631 + 8);
      v208 = v363;
      goto LABEL_48;
    case 0x15u:
      v368 = *v136;
      v369 = *(v136 + 1);
      v370 = *(v136 + 2);
      LOBYTE(v634) = 22;
      sub_1D304ECE4();
      v301 = v504;
      v144 = v632;
      v145 = v633;
      sub_1D30E96DC();
      *&v634 = v368;
      v639 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A460, &qword_1D30F5660);
      sub_1D304ED38();
      v302 = v506;
      v371 = v628;
      sub_1D30E974C();
      if (v371)
      {

        (*(v588 + 8))(v301, v302);
        (*(v631 + 8))(v145, v144);
        goto LABEL_73;
      }

      LOBYTE(v634) = 1;
      sub_1D30E970C();

      v437 = &v620;
      goto LABEL_108;
    case 0x16u:
      v406 = *v136;
      LOBYTE(v634) = 23;
      sub_1D304EC90();
      v289 = v502;
      v290 = v632;
      v291 = v633;
      sub_1D30E96DC();
      v292 = v503;
      sub_1D30E971C();
      v293 = &v619;
      goto LABEL_80;
    case 0x17u:
      v414 = *v136;
      LOBYTE(v634) = 24;
      sub_1D304EC3C();
      v147 = v505;
      v148 = v632;
      v149 = v633;
      sub_1D30E96DC();
      *&v634 = v414;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A440, &qword_1D30F5658);
      sub_1D3056940(&qword_1EC74A448, sub_1D2FF6708);
      v150 = v507;
      sub_1D30E974C();
      v151 = &v621;
      goto LABEL_72;
    case 0x18u:
      v189 = *v136;
      v188 = *(v136 + 1);
      v300 = *(v136 + 2);
      LOBYTE(v634) = 25;
      sub_1D304EBE8();
      v301 = v512;
      v144 = v632;
      v145 = v633;
      sub_1D30E96DC();
      *&v634 = v189;
      *(&v634 + 1) = v188;
      v639 = 0;
      sub_1D2FF92C4();
      v302 = v515;
      v303 = v628;
      sub_1D30E974C();
      if (v303)
      {
        (*(v590 + 8))(v301, v302);
        goto LABEL_87;
      }

      LOBYTE(v634) = 1;
      sub_1D30E975C();
      sub_1D2FF1804(v189, v188);
      v437 = &v622;
LABEL_108:
      (*(*(v437 - 32) + 1))(v301, v302);
      goto LABEL_109;
    case 0x19u:
      v295 = *(v136 + 2);
      v294 = *(v136 + 3);
      LOBYTE(v634) = 26;
      sub_1D304EB40();
      v629 = *v136;
      v126 = v516;
      v296 = v632;
      v297 = v633;
      sub_1D30E96DC();
      v634 = v629;
      v635 = v295;
      v639 = 0;
      sub_1D304EB94();
      v298 = v518;
      v299 = v628;
      sub_1D30E974C();
      if (v299)
      {
        (*(v591 + 8))(v126, v298);
        (*(v631 + 8))(v297, v296);

        return;
      }

      LOBYTE(v634) = 1;
      sub_1D30E975C();

      v306 = &v623;
LABEL_99:
      (*(*(v306 - 32) + 8))(v126, v298);
      v207 = *(v631 + 8);
      v208 = v297;
LABEL_100:
      v351 = v296;
      goto LABEL_121;
    case 0x1Au:
      v427 = *v136;
      LOBYTE(v634) = 28;
      sub_1D304EA98();
      v289 = v517;
      v290 = v632;
      v291 = v633;
      sub_1D30E96DC();
      v292 = v519;
      sub_1D30E975C();
      v293 = &v624;
      goto LABEL_80;
    case 0x1Bu:
      v187 = *v136;
      v189 = *(v136 + 1);
      v188 = *(v136 + 2);
      LOBYTE(v634) = 29;
      sub_1D304EA44();
      v190 = v523;
      v144 = v632;
      v145 = v633;
      sub_1D30E96DC();
      LOBYTE(v634) = v187;
      v639 = 0;
      sub_1D304E9F0();
      v191 = v526;
      v192 = v628;
      sub_1D30E974C();
      if (!v192)
      {
        *&v634 = v189;
        *(&v634 + 1) = v188;
        v639 = 1;
        sub_1D2FF92C4();
        sub_1D30E974C();
        (*(v594 + 8))(v190, v191);
LABEL_87:
        (*(v631 + 8))(v145, v144);
        sub_1D2FF1804(v189, v188);
        return;
      }

      sub_1D2FF1804(v189, v188);
      (*(v594 + 8))(v190, v191);
LABEL_109:
      v207 = *(v631 + 8);
      v208 = v145;
      goto LABEL_110;
    case 0x1Cu:
      v415 = *v136;
      LOBYTE(v634) = 30;
      sub_1D304E99C();
      v289 = v520;
      v290 = v632;
      v291 = v633;
      sub_1D30E96DC();
      LOBYTE(v634) = v415;
      sub_1D304E9F0();
      v292 = v525;
      sub_1D30E974C();
      v293 = &v625;
      goto LABEL_80;
    case 0x1Du:
      v417 = *v136;
      v416 = *(v136 + 1);
      LOBYTE(v634) = 32;
      sub_1D304E8F4();
      v126 = v527;
      v296 = v632;
      v297 = v633;
      sub_1D30E96DC();
      v298 = v528;
      sub_1D30E970C();

      v306 = &v627;
      goto LABEL_99;
    case 0x1Eu:
      v392 = *v136;
      v391 = *(v136 + 1);
      LOBYTE(v634) = 33;
      sub_1D304E8A0();
      v126 = v529;
      v296 = v632;
      v297 = v633;
      sub_1D30E96DC();
      v298 = v530;
      sub_1D30E970C();

      v306 = &v628;
      goto LABEL_99;
    case 0x1Fu:
      v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A190, &qword_1D30F5498);
      v335 = &v136[*(v334 + 48)];
      v336 = *v335;
      v625 = *(v335 + 1);
      v337 = *(v335 + 3);
      v621 = *(v335 + 2);
      v622 = v336;
      *&v629 = v337;
      v338 = *(v335 + 5);
      v620 = *(v335 + 4);
      v623 = *&v136[*(v334 + 64)];
      v624 = v338;
      v339 = v626;
      v340 = v627;
      v341 = v617;
      (*(v626 + 32))(v617, v136, v627);
      LOBYTE(v634) = 34;
      sub_1D304E84C();
      v342 = v538;
      v170 = v632;
      v171 = v633;
      sub_1D30E96DC();
      LOBYTE(v634) = 0;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
      v343 = v540;
      v344 = v628;
      sub_1D30E974C();
      if (!v344)
      {
        v438 = v623;
        *&v634 = v622;
        *(&v634 + 1) = v625;
        v635 = v621;
        v636 = v629;
        v637 = v620;
        v638 = v624;
        v639 = 1;
        sub_1D2FF6708();
        sub_1D30E974C();

        *&v634 = v438;
        v639 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A3C8, &qword_1D30F5650);
        sub_1D304E7E0(&qword_1EC74A3D0);
        sub_1D30E974C();
        v451 = v632;
        v452 = v633;
        v453 = v626;
        v454 = v627;
        v455 = v617;
        (*(v598 + 8))(v342, v343);
        (*(v453 + 8))(v455, v454);
        (*(v631 + 8))(v452, v451);
        goto LABEL_73;
      }

      (*(v598 + 8))(v342, v343);
      (*(v339 + 8))(v341, v340);
LABEL_47:
      v207 = *(v631 + 8);
      v208 = v171;
LABEL_48:
      v351 = v170;
      goto LABEL_121;
    case 0x20u:
      v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A188, &qword_1D30F5490);
      v394 = &v136[v393[12]];
      v395 = *v394;
      *&v629 = v394[1];
      v396 = &v136[v393[16]];
      v397 = *(v396 + 1);
      v622 = *v396;
      v623 = v395;
      v624 = *&v136[v393[20]];
      v625 = v397;
      v398 = v626;
      v399 = v627;
      v400 = v618;
      (*(v626 + 32))(v618, v136, v627);
      LOBYTE(v634) = 35;
      sub_1D304E78C();
      v401 = v543;
      v240 = v632;
      v402 = v633;
      sub_1D30E96DC();
      LOBYTE(v634) = 0;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
      v403 = v545;
      v404 = v628;
      sub_1D30E974C();
      if (v404)
      {

        (*(v610 + 8))(v401, v403);
        (*(v398 + 8))(v400, v399);
        v207 = *(v631 + 8);
        v208 = v402;
LABEL_96:
        v351 = v240;
        goto LABEL_121;
      }

      v440 = v624;
      LOBYTE(v634) = 1;
      sub_1D30E970C();

      LOBYTE(v634) = 2;
      sub_1D30E96EC();

      *&v634 = v440;
      v639 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A3C8, &qword_1D30F5650);
      sub_1D304E7E0(&qword_1EC74A3D0);
      sub_1D30E974C();
      v459 = v618;
      v460 = v633;
      (*(v610 + 8))(v401, v403);
      (*(v626 + 8))(v459, v627);
      (*(v631 + 8))(v460, v240);
LABEL_73:

      return;
    case 0x21u:
      v236 = *v136;
      v235 = *(v136 + 1);
      v238 = *(v136 + 2);
      v237 = *(v136 + 3);
      LOBYTE(v634) = 36;
      sub_1D304E738();
      v239 = v536;
      v240 = v632;
      v241 = v633;
      sub_1D30E96DC();
      LOBYTE(v634) = 0;
      v242 = v537;
      v243 = v628;
      sub_1D30E970C();

      if (!v243)
      {
        LOBYTE(v634) = 1;
        sub_1D30E96EC();
      }

      v433 = &v629;
LABEL_95:
      (*(*(v433 - 32) + 8))(v239, v242);
      v207 = *(v631 + 8);
      v208 = v241;
      goto LABEL_96;
    case 0x22u:
      v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A180, &qword_1D30F5488);
      v194 = &v136[*(v193 + 48)];
      v195 = *v194;
      *&v629 = *(v194 + 1);
      v196 = &v136[*(v193 + 64)];
      v198 = *v196;
      v197 = v196[1];
      v623 = v198;
      v624 = v195;
      v625 = v197;
      v200 = v626;
      v199 = v627;
      v201 = v616;
      (*(v626 + 32))(v616, v136, v627);
      LOBYTE(v634) = 37;
      sub_1D304E6E4();
      v202 = v542;
      v204 = v632;
      v203 = v633;
      sub_1D30E96DC();
      LOBYTE(v634) = 0;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
      v205 = v544;
      v206 = v628;
      sub_1D30E974C();
      if (v206)
      {

        (*(v600 + 8))(v202, v205);
        (*(v200 + 8))(v201, v199);
        v207 = *(v631 + 8);
        v208 = v203;
      }

      else
      {
        LOBYTE(v634) = 1;
        v429 = v202;
        sub_1D30E970C();

        LOBYTE(v634) = 2;
        sub_1D30E96EC();
        v443 = v616;
        v444 = v633;

        (*(v600 + 8))(v429, v205);
        (*(v200 + 8))(v443, v627);
        v207 = *(v631 + 8);
        v208 = v444;
      }

LABEL_119:
      v351 = v204;
      goto LABEL_121;
    case 0x23u:
      v166 = v626;
      v167 = v627;
      v168 = v531;
      (*(v626 + 32))(v531, v136, v627);
      LOBYTE(v634) = 39;
      sub_1D304E63C();
      v169 = v539;
      v170 = v632;
      v171 = v633;
      sub_1D30E96DC();
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
      v172 = v541;
      sub_1D30E974C();
      v173 = &v630;
      goto LABEL_46;
    case 0x24u:
      v175 = *v136;
      v174 = *(v136 + 1);
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v177 = *(v176 + 48);
      v178 = &v136[*(v176 + 64)];
      v180 = *v178;
      v179 = v178[1];
      v625 = v180;
      *&v629 = v179;
      v181 = v626;
      (*(v626 + 32))(v621, &v136[v177], v627);
      LOBYTE(v634) = 40;
      sub_1D304E5E8();
      v182 = v548;
      v183 = v632;
      v184 = v633;
      sub_1D30E96DC();
      *&v634 = v175;
      *(&v634 + 1) = v174;
      v639 = 0;
      sub_1D2FF92C4();
      v185 = v550;
      v186 = v628;
      sub_1D30E974C();
      if (v186)
      {

        (*(v602 + 8))(v182, v185);
        (*(v181 + 8))(v621, v627);
        goto LABEL_78;
      }

      LOBYTE(v634) = 1;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
      sub_1D30E974C();
      LOBYTE(v634) = 2;
      sub_1D30E96EC();
      v441 = v633;
      v442 = v626;
      sub_1D2FF1804(v175, v174);

      (*(v602 + 8))(v182, v185);
      (*(v442 + 8))(v621, v627);
      goto LABEL_120;
    case 0x25u:
      v152 = &v136[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48)];
      v154 = *v152;
      v153 = *(v152 + 1);
      *&v629 = v154;
      v625 = v153;
      v155 = v626;
      v156 = v627;
      v157 = v614;
      (*(v626 + 32))(v614, v136, v627);
      LOBYTE(v634) = 41;
      sub_1D304E594();
      v158 = v546;
      v144 = v632;
      v159 = v633;
      sub_1D30E96DC();
      LOBYTE(v634) = 0;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
      v160 = v547;
      v161 = v628;
      sub_1D30E974C();
      if (v161)
      {
        sub_1D2FF1804(v629, v625);
        v162 = &v632;
        goto LABEL_68;
      }

      v317 = v625;
      *&v634 = v629;
      *(&v634 + 1) = v625;
      v639 = 1;
      sub_1D2FF92C4();
      sub_1D30E974C();
      (*(v601 + 8))(v158, v160);
      (*(v155 + 8))(v614, v156);
      goto LABEL_115;
    case 0x26u:
      v175 = *v136;
      v174 = *(v136 + 1);
      v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v419 = *(v418 + 48);
      v420 = &v136[*(v418 + 64)];
      v422 = *v420;
      v421 = v420[1];
      v625 = v422;
      *&v629 = v421;
      v423 = v626;
      (*(v626 + 32))(v622, &v136[v419], v627);
      LOBYTE(v634) = 42;
      sub_1D304E540();
      v424 = v558;
      v183 = v632;
      v184 = v633;
      sub_1D30E96DC();
      *&v634 = v175;
      *(&v634 + 1) = v174;
      v639 = 0;
      sub_1D2FF92C4();
      v425 = v561;
      v426 = v628;
      sub_1D30E974C();
      if (v426)
      {

        (*(v605 + 8))(v424, v425);
        (*(v423 + 8))(v622, v627);
LABEL_78:
        (*(v631 + 8))(v184, v183);
        sub_1D2FF1804(v175, v174);
        return;
      }

      LOBYTE(v634) = 1;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
      sub_1D30E974C();
      LOBYTE(v634) = 2;
      sub_1D30E96EC();
      v441 = v633;
      v458 = v626;
      sub_1D2FF1804(v175, v174);

      (*(v605 + 8))(v424, v425);
      (*(v458 + 8))(v622, v627);
LABEL_120:
      v207 = *(v631 + 8);
      v208 = v441;
      v351 = v632;
      goto LABEL_121;
    case 0x27u:
      v407 = &v136[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48)];
      v409 = *v407;
      v408 = *(v407 + 1);
      *&v629 = v409;
      v625 = v408;
      v155 = v626;
      v156 = v627;
      v157 = v615;
      (*(v626 + 32))(v615, v136, v627);
      LOBYTE(v634) = 43;
      sub_1D304E4EC();
      v158 = v551;
      v144 = v632;
      v159 = v633;
      sub_1D30E96DC();
      LOBYTE(v634) = 0;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
      v160 = v556;
      v410 = v628;
      sub_1D30E974C();
      if (v410)
      {
        sub_1D2FF1804(v629, v625);
        v162 = &v634;
LABEL_68:
        (*(*(v162 - 32) + 8))(v158, v160);
        (*(v155 + 8))(v157, v156);
        v207 = *(v631 + 8);
        v208 = v159;
LABEL_110:
        v351 = v144;
        goto LABEL_121;
      }

      v317 = v625;
      *&v634 = v629;
      *(&v634 + 1) = v625;
      v639 = 1;
      sub_1D2FF92C4();
      sub_1D30E974C();
      (*(v603 + 8))(v158, v160);
      (*(v155 + 8))(v615, v156);
LABEL_115:
      (*(v631 + 8))(v633, v632);
      v325 = v629;
LABEL_116:
      sub_1D2FF1804(v325, v317);
      break;
    case 0x28u:
      v266 = *v136;
      v265 = *(v136 + 1);
      v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A168, &qword_1D30F5470);
      v268 = v267[12];
      v269 = &v136[v267[16]];
      v271 = *v269;
      v270 = *(v269 + 1);
      v622 = v271;
      v623 = v270;
      v272 = &v136[v267[20]];
      v274 = *v272;
      v273 = *(v272 + 1);
      v621 = v274;
      *&v629 = v273;
      v276 = v624;
      v275 = v625;
      (*(v624 + 32))(v620, &v136[v268], v625);
      LOBYTE(v634) = 44;
      sub_1D304E498();
      v277 = v566;
      v279 = v632;
      v278 = v633;
      sub_1D30E96DC();
      v626 = v266;
      v627 = v265;
      *&v634 = v266;
      *(&v634 + 1) = v265;
      v639 = 0;
      sub_1D2FF92C4();
      v280 = v567;
      v281 = v628;
      sub_1D30E974C();
      if (v281)
      {

        (*(v611 + 8))(v277, v280);
        (*(v276 + 8))(v620, v275);
        (*(v631 + 8))(v278, v279);
        sub_1D2FF1804(v626, v627);
      }

      else
      {
        LOBYTE(v634) = 1;
        sub_1D3045A34(&qword_1EC749A68, MEMORY[0x1E69E8380]);
        v435 = v275;
        v436 = v620;
        sub_1D30E974C();
        LOBYTE(v634) = 2;
        sub_1D30E970C();
        v290 = v279;

        LOBYTE(v634) = 3;
        sub_1D30E96EC();
        sub_1D2FF1804(v626, v627);

        (*(v611 + 8))(v277, v280);
        (*(v624 + 8))(v436, v435);
        v207 = *(v631 + 8);
        v208 = v633;
LABEL_81:
        v351 = v290;
LABEL_121:
        v207(v208, v351);
      }

      break;
    case 0x29u:
      v166 = v626;
      v167 = v627;
      v168 = v532;
      (*(v626 + 32))(v532, v136, v627);
      LOBYTE(v634) = 45;
      sub_1D304E444();
      v169 = v553;
      v170 = v632;
      v171 = v633;
      sub_1D30E96DC();
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
      v172 = v557;
      sub_1D30E974C();
      v173 = &v634 + 8;
LABEL_46:
      (*(*(v173 - 32) + 8))(v169, v172);
      (*(v166 + 8))(v168, v167);
      goto LABEL_47;
    case 0x2Au:
      v413 = *v136;
      LOBYTE(v634) = 48;
      sub_1D304E348();
      v289 = v562;
      v290 = v632;
      v291 = v633;
      sub_1D30E96DC();
      v292 = v563;
      sub_1D30E971C();
      v293 = &v636;
LABEL_80:
      (*(*(v293 - 32) + 8))(v289, v292);
      v207 = *(v631 + 8);
      v208 = v291;
      goto LABEL_81;
    case 0x2Bu:
      v146 = *v136;
      LOBYTE(v634) = 49;
      sub_1D304E2F4();
      v147 = v564;
      v148 = v632;
      v149 = v633;
      sub_1D30E96DC();
      *&v634 = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A348, &qword_1D30F5648);
      sub_1D30567C4(&qword_1EE313058);
      v150 = v565;
      sub_1D30E974C();
      v151 = &v637;
LABEL_72:
      (*(*(v151 - 32) + 8))(v147, v150);
      (*(v631 + 8))(v149, v148);
      goto LABEL_73;
    case 0x2Cu:
      LOBYTE(v634) = 13;
      sub_1D304F08C();
      v223 = v481;
      v164 = v632;
      v165 = v633;
      sub_1D30E96DC();
      (*(v483 + 8))(v223, v484);
      goto LABEL_83;
    case 0x2Du:
      LOBYTE(v634) = 27;
      sub_1D304EAEC();
      v405 = v509;
      v164 = v632;
      v165 = v633;
      sub_1D30E96DC();
      (*(v511 + 8))(v405, v513);
      goto LABEL_83;
    case 0x2Eu:
      LOBYTE(v634) = 31;
      sub_1D304E948();
      v428 = v521;
      v164 = v632;
      v165 = v633;
      sub_1D30E96DC();
      (*(v522 + 8))(v428, v524);
      goto LABEL_83;
    case 0x2Fu:
      LOBYTE(v634) = 38;
      sub_1D304E690();
      v163 = v533;
      v164 = v632;
      v165 = v633;
      sub_1D30E96DC();
      (*(v534 + 8))(v163, v535);
      goto LABEL_83;
    case 0x30u:
      LOBYTE(v634) = 46;
      sub_1D304E3F0();
      v244 = v549;
      v164 = v632;
      v165 = v633;
      sub_1D30E96DC();
      (*(v552 + 8))(v244, v554);
      goto LABEL_83;
    case 0x31u:
      LOBYTE(v634) = 47;
      sub_1D304E39C();
      v259 = v555;
      v164 = v632;
      v165 = v633;
      sub_1D30E96DC();
      (*(v559 + 8))(v259, v560);
LABEL_83:
      (*(v631 + 8))(v165, v164);
      return;
    default:
      v143 = *v136;
      v142 = *(v136 + 1);
      LOBYTE(v634) = 0;
      sub_1D304F4D0();
      v144 = v632;
      v145 = v633;
      sub_1D30E96DC();
      sub_1D30E970C();

      (*(v568 + 8))(v132, v129);
      goto LABEL_109;
  }
}

unint64_t sub_1D304E2A0()
{
  result = qword_1EE314B48;
  if (!qword_1EE314B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B48);
  }

  return result;
}

unint64_t sub_1D304E2F4()
{
  result = qword_1EE3149F0;
  if (!qword_1EE3149F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149F0);
  }

  return result;
}

unint64_t sub_1D304E348()
{
  result = qword_1EC74A350;
  if (!qword_1EC74A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A350);
  }

  return result;
}

unint64_t sub_1D304E39C()
{
  result = qword_1EC74A358;
  if (!qword_1EC74A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A358);
  }

  return result;
}

unint64_t sub_1D304E3F0()
{
  result = qword_1EC74A360;
  if (!qword_1EC74A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A360);
  }

  return result;
}

unint64_t sub_1D304E444()
{
  result = qword_1EC74A368;
  if (!qword_1EC74A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A368);
  }

  return result;
}

unint64_t sub_1D304E498()
{
  result = qword_1EC74A378;
  if (!qword_1EC74A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A378);
  }

  return result;
}

unint64_t sub_1D304E4EC()
{
  result = qword_1EC74A380;
  if (!qword_1EC74A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A380);
  }

  return result;
}

unint64_t sub_1D304E540()
{
  result = qword_1EC74A388;
  if (!qword_1EC74A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A388);
  }

  return result;
}

unint64_t sub_1D304E594()
{
  result = qword_1EC74A390;
  if (!qword_1EC74A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A390);
  }

  return result;
}

unint64_t sub_1D304E5E8()
{
  result = qword_1EC74A398;
  if (!qword_1EC74A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A398);
  }

  return result;
}

unint64_t sub_1D304E63C()
{
  result = qword_1EC74A3A0;
  if (!qword_1EC74A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3A0);
  }

  return result;
}

unint64_t sub_1D304E690()
{
  result = qword_1EC74A3A8;
  if (!qword_1EC74A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3A8);
  }

  return result;
}

unint64_t sub_1D304E6E4()
{
  result = qword_1EC74A3B0;
  if (!qword_1EC74A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3B0);
  }

  return result;
}

unint64_t sub_1D304E738()
{
  result = qword_1EC74A3B8;
  if (!qword_1EC74A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3B8);
  }

  return result;
}

unint64_t sub_1D304E78C()
{
  result = qword_1EC74A3C0;
  if (!qword_1EC74A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3C0);
  }

  return result;
}

uint64_t sub_1D304E7E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A3C8, &qword_1D30F5650);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D304E84C()
{
  result = qword_1EC74A3D8;
  if (!qword_1EC74A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3D8);
  }

  return result;
}

unint64_t sub_1D304E8A0()
{
  result = qword_1EC74A3E0;
  if (!qword_1EC74A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3E0);
  }

  return result;
}

unint64_t sub_1D304E8F4()
{
  result = qword_1EC74A3E8;
  if (!qword_1EC74A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3E8);
  }

  return result;
}

unint64_t sub_1D304E948()
{
  result = qword_1EC74A3F0;
  if (!qword_1EC74A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3F0);
  }

  return result;
}

unint64_t sub_1D304E99C()
{
  result = qword_1EC74A3F8;
  if (!qword_1EC74A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3F8);
  }

  return result;
}

unint64_t sub_1D304E9F0()
{
  result = qword_1EC74A400;
  if (!qword_1EC74A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A400);
  }

  return result;
}

unint64_t sub_1D304EA44()
{
  result = qword_1EC74A408;
  if (!qword_1EC74A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A408);
  }

  return result;
}

unint64_t sub_1D304EA98()
{
  result = qword_1EC74A410;
  if (!qword_1EC74A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A410);
  }

  return result;
}

unint64_t sub_1D304EAEC()
{
  result = qword_1EC74A418;
  if (!qword_1EC74A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A418);
  }

  return result;
}

unint64_t sub_1D304EB40()
{
  result = qword_1EC74A420;
  if (!qword_1EC74A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A420);
  }

  return result;
}

unint64_t sub_1D304EB94()
{
  result = qword_1EC74A428;
  if (!qword_1EC74A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A428);
  }

  return result;
}

unint64_t sub_1D304EBE8()
{
  result = qword_1EC74A430;
  if (!qword_1EC74A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A430);
  }

  return result;
}

unint64_t sub_1D304EC3C()
{
  result = qword_1EC74A438;
  if (!qword_1EC74A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A438);
  }

  return result;
}

unint64_t sub_1D304EC90()
{
  result = qword_1EC74A450;
  if (!qword_1EC74A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A450);
  }

  return result;
}

unint64_t sub_1D304ECE4()
{
  result = qword_1EC74A458;
  if (!qword_1EC74A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A458);
  }

  return result;
}

unint64_t sub_1D304ED38()
{
  result = qword_1EC74A468;
  if (!qword_1EC74A468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A460, &qword_1D30F5660);
    sub_1D3045A34(&qword_1EC74A470, type metadata accessor for AssetPackRecord.StaticRepresentation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A468);
  }

  return result;
}

unint64_t sub_1D304EDEC()
{
  result = qword_1EC74A478;
  if (!qword_1EC74A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A478);
  }

  return result;
}

unint64_t sub_1D304EE40()
{
  result = qword_1EC74A480;
  if (!qword_1EC74A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A480);
  }

  return result;
}

unint64_t sub_1D304EE94()
{
  result = qword_1EE3149B8;
  if (!qword_1EE3149B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149B8);
  }

  return result;
}

unint64_t sub_1D304EEE8()
{
  result = qword_1EC74A488;
  if (!qword_1EC74A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A488);
  }

  return result;
}

unint64_t sub_1D304EF3C()
{
  result = qword_1EC74A490;
  if (!qword_1EC74A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A490);
  }

  return result;
}

unint64_t sub_1D304EF90()
{
  result = qword_1EC74A498;
  if (!qword_1EC74A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A498);
  }

  return result;
}

unint64_t sub_1D304EFE4()
{
  result = qword_1EC74A4A0;
  if (!qword_1EC74A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4A0);
  }

  return result;
}

unint64_t sub_1D304F038()
{
  result = qword_1EC74A4A8;
  if (!qword_1EC74A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4A8);
  }

  return result;
}

unint64_t sub_1D304F08C()
{
  result = qword_1EC74A4B0;
  if (!qword_1EC74A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4B0);
  }

  return result;
}

unint64_t sub_1D304F0E0()
{
  result = qword_1EC74A4B8;
  if (!qword_1EC74A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4B8);
  }

  return result;
}

unint64_t sub_1D304F134()
{
  result = qword_1EC74A4C0;
  if (!qword_1EC74A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4C0);
  }

  return result;
}

unint64_t sub_1D304F188()
{
  result = qword_1EC74A4C8;
  if (!qword_1EC74A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4C8);
  }

  return result;
}

unint64_t sub_1D304F1DC()
{
  result = qword_1EC74A4D0;
  if (!qword_1EC74A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4D0);
  }

  return result;
}

unint64_t sub_1D304F230()
{
  result = qword_1EC74A4D8;
  if (!qword_1EC74A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4D8);
  }

  return result;
}

unint64_t sub_1D304F284()
{
  result = qword_1EC74A4E0;
  if (!qword_1EC74A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4E0);
  }

  return result;
}

unint64_t sub_1D304F2D8()
{
  result = qword_1EC74A4E8;
  if (!qword_1EC74A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4E8);
  }

  return result;
}

unint64_t sub_1D304F32C()
{
  result = qword_1EC74A4F0;
  if (!qword_1EC74A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4F0);
  }

  return result;
}

unint64_t sub_1D304F380()
{
  result = qword_1EC74A4F8;
  if (!qword_1EC74A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4F8);
  }

  return result;
}

unint64_t sub_1D304F3D4()
{
  result = qword_1EC74A500;
  if (!qword_1EC74A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A500);
  }

  return result;
}

unint64_t sub_1D304F428()
{
  result = qword_1EC74A508;
  if (!qword_1EC74A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A508);
  }

  return result;
}

unint64_t sub_1D304F47C()
{
  result = qword_1EC74A510;
  if (!qword_1EC74A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A510);
  }

  return result;
}

unint64_t sub_1D304F4D0()
{
  result = qword_1EC74A518;
  if (!qword_1EC74A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A518);
  }

  return result;
}

uint64_t Helper.Message.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v802 = a2;
  v740 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A520, &qword_1D30F5668);
  v741 = *(v740 - 8);
  v3 = *(v741 + 64);
  MEMORY[0x1EEE9AC00](v740);
  v796 = &v612 - v4;
  v738 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A528, &qword_1D30F5670);
  v739 = *(v738 - 8);
  v5 = *(v739 + 64);
  MEMORY[0x1EEE9AC00](v738);
  v797 = &v612 - v6;
  v737 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A530, &qword_1D30F5678);
  v736 = *(v737 - 8);
  v7 = *(v736 + 64);
  MEMORY[0x1EEE9AC00](v737);
  *&v808 = &v612 - v8;
  v730 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A538, &qword_1D30F5680);
  v729 = *(v730 - 8);
  v9 = *(v729 + 64);
  MEMORY[0x1EEE9AC00](v730);
  v793 = &v612 - v10;
  v735 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A540, &qword_1D30F5688);
  v732 = *(v735 - 8);
  v11 = *(v732 + 64);
  MEMORY[0x1EEE9AC00](v735);
  v807 = &v612 - v12;
  v747 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A548, &qword_1D30F5690);
  v804 = *(v747 - 8);
  v13 = *(v804 + 64);
  MEMORY[0x1EEE9AC00](v747);
  v801 = &v612 - v14;
  v733 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A550, &qword_1D30F5698);
  v731 = *(v733 - 8);
  v15 = *(v731 + 64);
  MEMORY[0x1EEE9AC00](v733);
  v794 = &v612 - v16;
  v734 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A558, &qword_1D30F56A0);
  v803 = *(v734 - 8);
  v17 = *(v803 + 64);
  MEMORY[0x1EEE9AC00](v734);
  v795 = &v612 - v18;
  v727 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A560, &qword_1D30F56A8);
  v726 = *(v727 - 8);
  v19 = *(v726 + 64);
  MEMORY[0x1EEE9AC00](v727);
  v791 = &v612 - v20;
  v728 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A568, &qword_1D30F56B0);
  v656 = *(v728 - 8);
  v21 = *(v656 + 64);
  MEMORY[0x1EEE9AC00](v728);
  v792 = &v612 - v22;
  v724 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A570, &qword_1D30F56B8);
  v723 = *(v724 - 8);
  v23 = *(v723 + 64);
  MEMORY[0x1EEE9AC00](v724);
  v789 = &v612 - v24;
  v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A578, &qword_1D30F56C0);
  v719 = *(v720 - 8);
  v25 = *(v719 + 64);
  MEMORY[0x1EEE9AC00](v720);
  v786 = &v612 - v26;
  v725 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A580, &qword_1D30F56C8);
  v655 = *(v725 - 8);
  v27 = *(v655 + 64);
  MEMORY[0x1EEE9AC00](v725);
  v790 = &v612 - v28;
  v721 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A588, &qword_1D30F56D0);
  v718 = *(v721 - 8);
  v29 = *(v718 + 64);
  MEMORY[0x1EEE9AC00](v721);
  v787 = &v612 - v30;
  v746 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A590, &qword_1D30F56D8);
  v654 = *(v746 - 8);
  v31 = *(v654 + 64);
  MEMORY[0x1EEE9AC00](v746);
  v800 = &v612 - v32;
  v722 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A598, &qword_1D30F56E0);
  v653 = *(v722 - 8);
  v33 = *(v653 + 64);
  MEMORY[0x1EEE9AC00](v722);
  v788 = &v612 - v34;
  v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5A0, &qword_1D30F56E8);
  v716 = *(v717 - 8);
  v35 = *(v716 + 64);
  MEMORY[0x1EEE9AC00](v717);
  v785 = &v612 - v36;
  v715 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5A8, &qword_1D30F56F0);
  v714 = *(v715 - 8);
  v37 = *(v714 + 64);
  MEMORY[0x1EEE9AC00](v715);
  v784 = &v612 - v38;
  v710 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5B0, &qword_1D30F56F8);
  v708 = *(v710 - 8);
  v39 = *(v708 + 64);
  MEMORY[0x1EEE9AC00](v710);
  v781 = &v612 - v40;
  v711 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5B8, &qword_1D30F5700);
  v709 = *(v711 - 8);
  v41 = *(v709 + 64);
  MEMORY[0x1EEE9AC00](v711);
  v782 = &v612 - v42;
  v713 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5C0, &qword_1D30F5708);
  v712 = *(v713 - 8);
  v43 = *(v712 + 64);
  MEMORY[0x1EEE9AC00](v713);
  v783 = &v612 - v44;
  v707 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5C8, &qword_1D30F5710);
  v706 = *(v707 - 8);
  v45 = *(v706 + 64);
  MEMORY[0x1EEE9AC00](v707);
  v780 = &v612 - v46;
  v702 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5D0, &qword_1D30F5718);
  v701 = *(v702 - 8);
  v47 = *(v701 + 64);
  MEMORY[0x1EEE9AC00](v702);
  v777 = &v612 - v48;
  v705 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5D8, &qword_1D30F5720);
  v704 = *(v705 - 8);
  v49 = *(v704 + 64);
  MEMORY[0x1EEE9AC00](v705);
  v779 = &v612 - v50;
  v703 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5E0, &qword_1D30F5728);
  v652 = *(v703 - 8);
  v51 = *(v652 + 64);
  MEMORY[0x1EEE9AC00](v703);
  v778 = &v612 - v52;
  v700 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5E8, &qword_1D30F5730);
  v699 = *(v700 - 8);
  v53 = *(v699 + 64);
  MEMORY[0x1EEE9AC00](v700);
  v776 = &v612 - v54;
  v696 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5F0, &qword_1D30F5738);
  v695 = *(v696 - 8);
  v55 = *(v695 + 64);
  MEMORY[0x1EEE9AC00](v696);
  v774 = &v612 - v56;
  v698 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5F8, &qword_1D30F5740);
  v697 = *(v698 - 8);
  v57 = *(v697 + 64);
  MEMORY[0x1EEE9AC00](v698);
  v775 = &v612 - v58;
  v745 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A600, &qword_1D30F5748);
  v651 = *(v745 - 8);
  v59 = *(v651 + 64);
  MEMORY[0x1EEE9AC00](v745);
  v799 = &v612 - v60;
  v693 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A608, &qword_1D30F5750);
  v692 = *(v693 - 8);
  v61 = *(v692 + 64);
  MEMORY[0x1EEE9AC00](v693);
  v772 = &v612 - v62;
  v691 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A610, &qword_1D30F5758);
  v690 = *(v691 - 8);
  v63 = *(v690 + 64);
  MEMORY[0x1EEE9AC00](v691);
  v771 = &v612 - v64;
  v689 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A618, &qword_1D30F5760);
  v688 = *(v689 - 8);
  v65 = *(v688 + 64);
  MEMORY[0x1EEE9AC00](v689);
  v770 = &v612 - v66;
  v694 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A620, &qword_1D30F5768);
  v650 = *(v694 - 8);
  v67 = *(v650 + 64);
  MEMORY[0x1EEE9AC00](v694);
  v773 = &v612 - v68;
  v687 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A628, &qword_1D30F5770);
  v686 = *(v687 - 8);
  v69 = *(v686 + 64);
  MEMORY[0x1EEE9AC00](v687);
  v769 = &v612 - v70;
  v685 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A630, &qword_1D30F5778);
  v684 = *(v685 - 8);
  v71 = *(v684 + 64);
  MEMORY[0x1EEE9AC00](v685);
  v768 = &v612 - v72;
  v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A638, &qword_1D30F5780);
  v682 = *(v683 - 8);
  v73 = *(v682 + 64);
  MEMORY[0x1EEE9AC00](v683);
  v767 = &v612 - v74;
  v679 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A640, &qword_1D30F5788);
  v677 = *(v679 - 8);
  v75 = *(v677 + 64);
  MEMORY[0x1EEE9AC00](v679);
  v764 = &v612 - v76;
  v680 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A648, &qword_1D30F5790);
  v678 = *(v680 - 8);
  v77 = *(v678 + 64);
  MEMORY[0x1EEE9AC00](v680);
  v765 = &v612 - v78;
  v744 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A650, &qword_1D30F5798);
  v743 = *(v744 - 8);
  v79 = *(v743 + 64);
  MEMORY[0x1EEE9AC00](v744);
  v798 = &v612 - v80;
  v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A658, &qword_1D30F57A0);
  v649 = *(v681 - 8);
  v81 = *(v649 + 64);
  MEMORY[0x1EEE9AC00](v681);
  v766 = &v612 - v82;
  v675 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A660, &qword_1D30F57A8);
  v674 = *(v675 - 8);
  v83 = *(v674 + 64);
  MEMORY[0x1EEE9AC00](v675);
  v762 = &v612 - v84;
  v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A668, &qword_1D30F57B0);
  v672 = *(v673 - 8);
  v85 = *(v672 + 64);
  MEMORY[0x1EEE9AC00](v673);
  v761 = &v612 - v86;
  v676 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A670, &qword_1D30F57B8);
  v648 = *(v676 - 8);
  v87 = *(v648 + 64);
  MEMORY[0x1EEE9AC00](v676);
  v763 = &v612 - v88;
  v671 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A678, &qword_1D30F57C0);
  v670 = *(v671 - 8);
  v89 = *(v670 + 64);
  MEMORY[0x1EEE9AC00](v671);
  v760 = &v612 - v90;
  v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A680, &qword_1D30F57C8);
  v667 = *(v668 - 8);
  v91 = *(v667 + 64);
  MEMORY[0x1EEE9AC00](v668);
  v758 = &v612 - v92;
  v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A688, &qword_1D30F57D0);
  v806 = *(v669 - 8);
  v93 = *(v806 + 64);
  MEMORY[0x1EEE9AC00](v669);
  v759 = &v612 - v94;
  v665 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A690, &qword_1D30F57D8);
  v805 = *(v665 - 8);
  v95 = *(v805 + 64);
  MEMORY[0x1EEE9AC00](v665);
  v756 = &v612 - v96;
  v664 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A698, &qword_1D30F57E0);
  v663 = *(v664 - 8);
  v97 = *(v663 + 64);
  MEMORY[0x1EEE9AC00](v664);
  v755 = &v612 - v98;
  v666 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A6A0, &qword_1D30F57E8);
  v647 = *(v666 - 8);
  v99 = *(v647 + 64);
  MEMORY[0x1EEE9AC00](v666);
  v757 = &v612 - v100;
  v660 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A6A8, &qword_1D30F57F0);
  v659 = *(v660 - 8);
  v101 = *(v659 + 64);
  MEMORY[0x1EEE9AC00](v660);
  v754 = &v612 - v102;
  v811 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A6B0, &unk_1D30F57F8);
  v809 = *(v811 - 8);
  v103 = *(v809 + 64);
  MEMORY[0x1EEE9AC00](v811);
  v814 = &v612 - v104;
  v810 = type metadata accessor for Helper.Message(0);
  v105 = *(*(v810 - 8) + 64);
  v106 = MEMORY[0x1EEE9AC00](v810);
  v645 = &v612 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x1EEE9AC00](v106);
  v644 = (&v612 - v109);
  v110 = MEMORY[0x1EEE9AC00](v108);
  v658 = &v612 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v752 = &v612 - v113;
  v114 = MEMORY[0x1EEE9AC00](v112);
  v662 = &v612 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v750 = &v612 - v117;
  v118 = MEMORY[0x1EEE9AC00](v116);
  v661 = &v612 - v119;
  v120 = MEMORY[0x1EEE9AC00](v118);
  v748 = &v612 - v121;
  v122 = MEMORY[0x1EEE9AC00](v120);
  v657 = &v612 - v123;
  v124 = MEMORY[0x1EEE9AC00](v122);
  v753 = &v612 - v125;
  v126 = MEMORY[0x1EEE9AC00](v124);
  v627 = (&v612 - v127);
  v128 = MEMORY[0x1EEE9AC00](v126);
  v742 = &v612 - v129;
  v130 = MEMORY[0x1EEE9AC00](v128);
  v749 = &v612 - v131;
  v132 = MEMORY[0x1EEE9AC00](v130);
  v643 = (&v612 - v133);
  v134 = MEMORY[0x1EEE9AC00](v132);
  v642 = (&v612 - v135);
  v136 = MEMORY[0x1EEE9AC00](v134);
  v641 = &v612 - v137;
  v138 = MEMORY[0x1EEE9AC00](v136);
  v626 = (&v612 - v139);
  v140 = MEMORY[0x1EEE9AC00](v138);
  v639 = (&v612 - v141);
  v142 = MEMORY[0x1EEE9AC00](v140);
  v625 = (&v612 - v143);
  v144 = MEMORY[0x1EEE9AC00](v142);
  v624 = (&v612 - v145);
  v146 = MEMORY[0x1EEE9AC00](v144);
  v640 = &v612 - v147;
  v148 = MEMORY[0x1EEE9AC00](v146);
  v638 = (&v612 - v149);
  v150 = MEMORY[0x1EEE9AC00](v148);
  v623 = (&v612 - v151);
  v152 = MEMORY[0x1EEE9AC00](v150);
  v646 = (&v612 - v153);
  v154 = MEMORY[0x1EEE9AC00](v152);
  v637 = (&v612 - v155);
  v156 = MEMORY[0x1EEE9AC00](v154);
  v635 = (&v612 - v157);
  v158 = MEMORY[0x1EEE9AC00](v156);
  v636 = &v612 - v159;
  v160 = MEMORY[0x1EEE9AC00](v158);
  v621 = (&v612 - v161);
  v162 = MEMORY[0x1EEE9AC00](v160);
  v622 = &v612 - v163;
  v164 = MEMORY[0x1EEE9AC00](v162);
  v634 = &v612 - v165;
  v166 = MEMORY[0x1EEE9AC00](v164);
  v633 = &v612 - v167;
  v168 = MEMORY[0x1EEE9AC00](v166);
  v632 = &v612 - v169;
  v170 = MEMORY[0x1EEE9AC00](v168);
  v751 = &v612 - v171;
  v172 = MEMORY[0x1EEE9AC00](v170);
  v620 = (&v612 - v173);
  v174 = MEMORY[0x1EEE9AC00](v172);
  v631 = (&v612 - v175);
  v176 = MEMORY[0x1EEE9AC00](v174);
  v630 = (&v612 - v177);
  v178 = MEMORY[0x1EEE9AC00](v176);
  v619 = (&v612 - v179);
  v180 = MEMORY[0x1EEE9AC00](v178);
  v629 = (&v612 - v181);
  v182 = MEMORY[0x1EEE9AC00](v180);
  v628 = (&v612 - v183);
  v184 = MEMORY[0x1EEE9AC00](v182);
  v186 = &v612 - v185;
  v187 = MEMORY[0x1EEE9AC00](v184);
  v189 = &v612 - v188;
  v190 = MEMORY[0x1EEE9AC00](v187);
  v192 = &v612 - v191;
  v193 = MEMORY[0x1EEE9AC00](v190);
  v195 = &v612 - v194;
  v196 = MEMORY[0x1EEE9AC00](v193);
  v198 = &v612 - v197;
  MEMORY[0x1EEE9AC00](v196);
  v200 = &v612 - v199;
  v202 = a1[3];
  v201 = a1[4];
  v813 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v202);
  sub_1D304E2A0();
  v203 = v812;
  sub_1D30E990C();
  if (!v203)
  {
    v615 = v198;
    v616 = v192;
    v617 = v189;
    v613 = v195;
    v614 = v186;
    v204 = v805;
    v205 = v806;
    v206 = v807;
    v207 = v808;
    v812 = 0;
    v618 = v200;
    v208 = v811;
    v209 = sub_1D30E96AC();
    v210 = (2 * *(v209 + 16)) | 1;
    v821 = v209;
    v822 = v209 + 32;
    v823 = 0;
    v824 = v210;
    v211 = sub_1D302D66C();
    if (v823 == v824 >> 1)
    {
      switch(v211)
      {
        case 0:
          LOBYTE(v817) = 0;
          sub_1D304F4D0();
          v212 = v754;
          v213 = v814;
          v214 = v812;
          sub_1D30E95FC();
          if (v214)
          {
            goto LABEL_5;
          }

          v425 = v660;
          v426 = sub_1D30E963C();
          v427 = v809;
          v484 = v426;
          v486 = v485;
          (*(v659 + 8))(v212, v425);
          (*(v427 + 8))(v814, v208);
          swift_unknownObjectRelease();
          v606 = v615;
          *v615 = v484;
          v606[1] = v486;
          goto LABEL_122;
        case 1:
          LOBYTE(v817) = 1;
          sub_1D304F47C();
          v328 = v757;
          v228 = v814;
          v329 = v812;
          sub_1D30E95FC();
          if (v329)
          {
            goto LABEL_94;
          }

          LOBYTE(v817) = 0;
          v330 = v666;
          v331 = sub_1D30E963C();
          v332 = v809;
          v333 = v331;
          v335 = v334;
          LOBYTE(v817) = 1;
          *&v808 = sub_1D30E961C();
          v565 = v564;
          LOBYTE(v817) = 2;
          v566 = sub_1D30E964C();
          v812 = 0;
          v596 = v566;
          (*(v647 + 8))(v328, v330);
          (*(v332 + 8))(v228, v208);
          swift_unknownObjectRelease();
          v580 = v613;
          *v613 = v333;
          v580[1] = v335;
          v580[2] = v808;
          v580[3] = v565;
          *(v580 + 32) = v596 & 1;
          goto LABEL_128;
        case 2:
          LOBYTE(v817) = 2;
          sub_1D304F428();
          v308 = v755;
          v222 = v814;
          v309 = v812;
          sub_1D30E95FC();
          if (v309)
          {
            goto LABEL_56;
          }

          v310 = v664;
          v311 = sub_1D30E963C();
          v312 = v809;
          v476 = v311;
          v478 = v477;
          (*(v663 + 8))(v308, v310);
          (*(v312 + 8))(v222, v208);
          swift_unknownObjectRelease();
          v580 = v616;
          *v616 = v476;
          v580[1] = v478;
          goto LABEL_128;
        case 3:
          LOBYTE(v817) = 3;
          sub_1D304F3D4();
          v320 = v756;
          v273 = v814;
          v321 = v812;
          sub_1D30E95FC();
          if (v321)
          {
            goto LABEL_104;
          }

          v322 = v665;
          v323 = sub_1D30E963C();
          v324 = v320;
          v325 = v809;
          v479 = v323;
          v481 = v480;
          (*(v204 + 8))(v324, v322);
          (*(v325 + 8))(v273, v208);
          swift_unknownObjectRelease();
          v482 = v617;
          *v617 = v479;
          v482[1] = v481;
          swift_storeEnumTagMultiPayload();
          v483 = v482;
          goto LABEL_130;
        case 4:
          LOBYTE(v817) = 4;
          sub_1D304F380();
          v278 = v759;
          v228 = v814;
          v279 = v812;
          sub_1D30E95FC();
          if (v279)
          {
            goto LABEL_94;
          }

          LOBYTE(v817) = 0;
          v280 = v669;
          v281 = sub_1D30E963C();
          v282 = v809;
          v468 = v467;
          v469 = v281;
          LOBYTE(v817) = 1;
          v470 = sub_1D30E961C();
          v549 = *(v205 + 8);
          v812 = v470;
          v550 = v278;
          v552 = v551;
          v549(v550, v280);
          (*(v282 + 8))(v228, v208);
          swift_unknownObjectRelease();
          v553 = v614;
          *v614 = v469;
          v553[1] = v468;
          v553[2] = v812;
          v553[3] = v552;
          swift_storeEnumTagMultiPayload();
          v233 = v618;
          sub_1D3056830(v553, v618, type metadata accessor for Helper.Message);
          v554 = v802;
          goto LABEL_125;
        case 5:
          LOBYTE(v817) = 5;
          sub_1D304F32C();
          v349 = v758;
          v256 = v814;
          v350 = v812;
          sub_1D30E95FC();
          if (v350)
          {
            goto LABEL_98;
          }

          v351 = v668;
          v496 = sub_1D30E963C();
          v498 = v497;
          (*(v667 + 8))(v349, v351);
          (*(v809 + 8))(v256, v208);
          swift_unknownObjectRelease();
          v606 = v628;
          *v628 = v496;
          v606[1] = v498;
          goto LABEL_122;
        case 6:
          LOBYTE(v817) = 6;
          sub_1D304F2D8();
          v355 = v760;
          v339 = v814;
          v356 = v812;
          sub_1D30E95FC();
          if (v356)
          {
            goto LABEL_74;
          }

          v430 = v208;
          v431 = v671;
          v432 = sub_1D30E963C();
          v433 = v809;
          v504 = v432;
          v505 = v355;
          v507 = v506;
          (*(v670 + 8))(v505, v431);
          (*(v433 + 8))(v339, v430);
          swift_unknownObjectRelease();
          v586 = v629;
          *v629 = v504;
          v586[1] = v507;
          goto LABEL_118;
        case 7:
          LOBYTE(v817) = 7;
          sub_1D304F284();
          v326 = v763;
          v222 = v814;
          v327 = v812;
          sub_1D30E95FC();
          if (v327)
          {
            goto LABEL_56;
          }

          LOBYTE(v815) = 0;
          sub_1D2FF96E8();
          v422 = v676;
          sub_1D30E967C();
          v423 = v809;
          v424 = v817;
          LOBYTE(v815) = 1;
          v559 = v208;
          *&v808 = sub_1D30E963C();
          v560 = v326;
          v562 = v561;
          LOBYTE(v815) = 2;
          v563 = sub_1D30E961C();
          v812 = 0;
          v593 = v563;
          v595 = v594;
          (*(v648 + 8))(v560, v422);
          (*(v423 + 8))(v814, v559);
          swift_unknownObjectRelease();
          v558 = v619;
          *v619 = v424;
          v558[2] = v808;
          v558[3] = v562;
          v558[4] = v593;
          v558[5] = v595;
          goto LABEL_129;
        case 8:
          LOBYTE(v817) = 8;
          sub_1D304F230();
          v369 = v761;
          v222 = v814;
          v370 = v812;
          sub_1D30E95FC();
          if (v370)
          {
            goto LABEL_56;
          }

          v371 = v673;
          v372 = sub_1D30E963C();
          v373 = v809;
          v511 = v372;
          v513 = v512;
          (*(v672 + 8))(v369, v371);
          (*(v373 + 8))(v222, v208);
          swift_unknownObjectRelease();
          v462 = v630;
          *v630 = v511;
          *(v462 + 8) = v513;
          goto LABEL_120;
        case 9:
          LOBYTE(v817) = 9;
          sub_1D304F1DC();
          v294 = v762;
          v256 = v814;
          v295 = v812;
          sub_1D30E95FC();
          if (v295)
          {
            goto LABEL_98;
          }

          v296 = v675;
          v297 = sub_1D30E964C();
          v298 = v809;
          v472 = v297;
          (*(v674 + 8))(v294, v296);
          (*(v298 + 8))(v256, v208);
          swift_unknownObjectRelease();
          v473 = v472 & 1;
          v586 = v631;
          *v631 = v473;
          goto LABEL_118;
        case 10:
          LOBYTE(v817) = 10;
          sub_1D304F188();
          v364 = v766;
          v228 = v814;
          v365 = v812;
          sub_1D30E95FC();
          if (v365)
          {
            goto LABEL_94;
          }

          LOBYTE(v817) = 0;
          v366 = v681;
          v367 = sub_1D30E963C();
          v368 = v809;
          v508 = v367;
          v510 = v509;
          LOBYTE(v817) = 1;
          *&v808 = sub_1D30E961C();
          v568 = v364;
          v570 = v569;
          LOBYTE(v817) = 2;
          v571 = sub_1D30E964C();
          v812 = 0;
          v599 = v571;
          (*(v649 + 8))(v568, v366);
          (*(v368 + 8))(v228, v208);
          swift_unknownObjectRelease();
          v558 = v620;
          *v620 = v508;
          v558[1] = v510;
          v558[2] = v808;
          v558[3] = v570;
          *(v558 + 32) = v599 & 1;
          goto LABEL_129;
        case 11:
          LOBYTE(v817) = 11;
          sub_1D304F134();
          v273 = v814;
          v274 = v812;
          sub_1D30E95FC();
          if (v274)
          {
            goto LABEL_104;
          }

          LOBYTE(v817) = 0;
          sub_1D2FF67A4();
          sub_1D30E967C();
          v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A8, &qword_1D30F54A8);
          v466 = v465[12];
          type metadata accessor for AssetPackHost();
          LOBYTE(v817) = 1;
          sub_1D3045A34(&qword_1EC749A78, type metadata accessor for AssetPackHost);
          v812 = v466;
          sub_1D30E967C();
          LOBYTE(v817) = 2;
          v548 = sub_1D30E966C();
          v589 = v465[20];
          *&v751[v465[16]] = v548;
          sub_1D30E8D5C();
          LOBYTE(v817) = 3;
          sub_1D3045A34(&qword_1EC749A80, MEMORY[0x1E69E8380]);
          sub_1D30E967C();
          (*(v743 + 8))(v798, v744);
          (*(v809 + 8))(v814, v811);
          swift_unknownObjectRelease();
          v457 = v751;
          goto LABEL_132;
        case 12:
          LOBYTE(v817) = 12;
          sub_1D304F0E0();
          v287 = v765;
          v256 = v814;
          v288 = v812;
          sub_1D30E95FC();
          if (v288)
          {
            goto LABEL_98;
          }

          sub_1D2FF67A4();
          v289 = v680;
          sub_1D30E967C();
          v290 = v809;
          (*(v678 + 8))(v287, v289);
          (*(v290 + 8))(v256, v208);
          swift_unknownObjectRelease();
          v291 = *(&v817 + 1);
          v292 = v819;
          v293 = v820;
          v457 = v632;
          *v632 = v817;
          *(v457 + 1) = v291;
          *(v457 + 1) = v818;
          *(v457 + 4) = v292;
          *(v457 + 5) = v293;
          goto LABEL_132;
        case 13:
          LOBYTE(v817) = 13;
          sub_1D304F08C();
          v353 = v764;
          v213 = v814;
          v354 = v812;
          sub_1D30E95FC();
          if (v354)
          {
            goto LABEL_5;
          }

          (*(v677 + 8))(v353, v679);
          (*(v809 + 8))(v213, v208);
          swift_unknownObjectRelease();
          v233 = v618;
          goto LABEL_117;
        case 14:
          LOBYTE(v817) = 14;
          sub_1D304F038();
          v255 = v767;
          v256 = v814;
          v257 = v812;
          sub_1D30E95FC();
          if (v257)
          {
            goto LABEL_98;
          }

          sub_1D2FF67A4();
          v258 = v683;
          sub_1D30E967C();
          v259 = v809;
          (*(v682 + 8))(v255, v258);
          (*(v259 + 8))(v256, v208);
          swift_unknownObjectRelease();
          v260 = *(&v817 + 1);
          v261 = v819;
          v262 = v820;
          v457 = v633;
          *v633 = v817;
          *(v457 + 1) = v260;
          *(v457 + 1) = v818;
          *(v457 + 4) = v261;
          *(v457 + 5) = v262;
          goto LABEL_132;
        case 15:
          LOBYTE(v817) = 15;
          sub_1D304EFE4();
          v313 = v768;
          v256 = v814;
          v314 = v812;
          sub_1D30E95FC();
          if (v314)
          {
            goto LABEL_98;
          }

          sub_1D2FF67A4();
          v315 = v685;
          sub_1D30E967C();
          v316 = v809;
          (*(v684 + 8))(v313, v315);
          (*(v316 + 8))(v256, v208);
          swift_unknownObjectRelease();
          v317 = *(&v817 + 1);
          v318 = v819;
          v319 = v820;
          v457 = v634;
          *v634 = v817;
          *(v457 + 1) = v317;
          *(v457 + 1) = v818;
          *(v457 + 4) = v318;
          *(v457 + 5) = v319;
          goto LABEL_132;
        case 16:
          LOBYTE(v817) = 16;
          sub_1D304EF90();
          v249 = v769;
          v222 = v814;
          v250 = v812;
          sub_1D30E95FC();
          if (v250)
          {
            goto LABEL_56;
          }

          LOBYTE(v817) = 0;
          v251 = v687;
          v252 = sub_1D30E964C();
          v253 = v809;
          v452 = v252;
          LOBYTE(v815) = 1;
          sub_1D2FF67A4();
          sub_1D30E967C();
          (*(v686 + 8))(v249, v251);
          (*(v253 + 8))(v222, v208);
          swift_unknownObjectRelease();
          v453 = v817;
          v454 = v819;
          v455 = v820;
          v456 = v452 & 1;
          v457 = v622;
          *v622 = v456;
          *(v457 + 8) = v453;
          *(v457 + 24) = v818;
          *(v457 + 5) = v454;
          *(v457 + 6) = v455;
          goto LABEL_132;
        case 17:
          LOBYTE(v817) = 17;
          sub_1D304EF3C();
          v338 = v773;
          v339 = v814;
          v340 = v812;
          sub_1D30E95FC();
          if (!v340)
          {
            LOBYTE(v815) = 0;
            sub_1D2FF67A4();
            v341 = v694;
            sub_1D30E967C();
            v487 = v208;
            v488 = *(&v817 + 1);
            v812 = v817;
            v489 = *(&v818 + 1);
            v490 = v818;
            v491 = v820;
            *&v808 = v819;
            LOBYTE(v815) = 1;
            v567 = sub_1D30E966C();
            v825 = 2;
            sub_1D30568EC();
            sub_1D30E962C();
            (*(v650 + 8))(v338, v341);
            (*(v809 + 8))(v814, v487);
            swift_unknownObjectRelease();
            v597 = v816;
            v598 = v621;
            *v621 = v812;
            *(v598 + 8) = v488;
            *(v598 + 16) = v490;
            *(v598 + 24) = v489;
            *(v598 + 32) = v808;
            *(v598 + 40) = v491;
            *(v598 + 48) = v567;
            *(v598 + 56) = v815;
            *(v598 + 72) = v597;
            swift_storeEnumTagMultiPayload();
            v233 = v618;
            sub_1D3056830(v598, v618, type metadata accessor for Helper.Message);
            goto LABEL_124;
          }

LABEL_74:
          (*(v809 + 8))(v339, v208);
          goto LABEL_7;
        case 18:
          LOBYTE(v817) = 18;
          sub_1D304EEE8();
          v357 = v770;
          v256 = v814;
          v358 = v812;
          sub_1D30E95FC();
          if (v358)
          {
            goto LABEL_98;
          }

          sub_1D2FF67A4();
          v359 = v689;
          sub_1D30E967C();
          v360 = v809;
          (*(v688 + 8))(v357, v359);
          (*(v360 + 8))(v256, v208);
          swift_unknownObjectRelease();
          v361 = *(&v817 + 1);
          v362 = v819;
          v363 = v820;
          v457 = v636;
          *v636 = v817;
          *(v457 + 1) = v361;
          *(v457 + 1) = v818;
          *(v457 + 4) = v362;
          *(v457 + 5) = v363;
          goto LABEL_132;
        case 19:
          LOBYTE(v817) = 19;
          sub_1D304EE94();
          v396 = v771;
          v222 = v814;
          v397 = v812;
          sub_1D30E95FC();
          if (v397)
          {
            goto LABEL_56;
          }

          v398 = v691;
          v399 = sub_1D30E961C();
          v400 = v809;
          v520 = v399;
          v522 = v521;
          (*(v690 + 8))(v396, v398);
          (*(v400 + 8))(v222, v208);
          swift_unknownObjectRelease();
          v462 = v635;
          *v635 = v520;
          *(v462 + 8) = v522;
          goto LABEL_120;
        case 20:
          LOBYTE(v817) = 20;
          sub_1D304EE40();
          v344 = v772;
          v222 = v814;
          v345 = v812;
          sub_1D30E95FC();
          if (v345)
          {
            goto LABEL_56;
          }

          v346 = v693;
          v347 = sub_1D30E963C();
          v348 = v809;
          v493 = v347;
          v495 = v494;
          (*(v692 + 8))(v344, v346);
          (*(v348 + 8))(v222, v208);
          swift_unknownObjectRelease();
          v462 = v637;
          *v637 = v493;
          *(v462 + 8) = v495;
          goto LABEL_120;
        case 21:
          LOBYTE(v817) = 21;
          sub_1D304EDEC();
          v228 = v814;
          v352 = v812;
          sub_1D30E95FC();
          if (v352)
          {
            goto LABEL_94;
          }

          LOBYTE(v817) = 0;
          v499 = sub_1D30E963C();
          v501 = v500;
          *&v808 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A0, &qword_1D30F54A0);
          v502 = *(v808 + 48);
          v503 = v646;
          *v646 = v499;
          v503[1] = v501;
          v812 = v501;
          sub_1D30E8A4C();
          LOBYTE(v817) = 1;
          sub_1D3045A34(&qword_1EC7494C8, MEMORY[0x1E69695A8]);
          sub_1D30E967C();
          LOBYTE(v817) = 2;
          *(v646 + *(v808 + 64)) = sub_1D30E969C();
          LOBYTE(v817) = 3;
          v608 = sub_1D30E963C();
          v610 = v609;
          v606 = v646;
          v611 = (v646 + *(v808 + 80));
          (*(v651 + 8))(v799, v745);
          (*(v809 + 8))(v814, v811);
          swift_unknownObjectRelease();
          *v611 = v608;
          v611[1] = v610;
          goto LABEL_122;
        case 22:
          LOBYTE(v817) = 22;
          sub_1D304ECE4();
          v387 = v775;
          v228 = v814;
          v388 = v812;
          sub_1D30E95FC();
          if (v388)
          {
            goto LABEL_94;
          }

          v389 = v208;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A460, &qword_1D30F5660);
          LOBYTE(v815) = 0;
          sub_1D30569B8();
          v390 = v698;
          sub_1D30E967C();
          v391 = v809;
          v517 = v817;
          LOBYTE(v815) = 1;
          v518 = sub_1D30E963C();
          v812 = 0;
          v572 = v518;
          v574 = v573;
          (*(v697 + 8))(v387, v390);
          (*(v391 + 8))(v228, v389);
          swift_unknownObjectRelease();
          v575 = v623;
          *v623 = v517;
          v575[1] = v572;
          v575[2] = v574;
          swift_storeEnumTagMultiPayload();
          v483 = v575;
          goto LABEL_130;
        case 23:
          LOBYTE(v817) = 23;
          sub_1D304EC90();
          v403 = v774;
          v256 = v814;
          v404 = v812;
          sub_1D30E95FC();
          if (v404)
          {
            goto LABEL_98;
          }

          v405 = v696;
          v406 = sub_1D30E964C();
          v407 = v809;
          v408 = v406;
          (*(v695 + 8))(v403, v405);
          (*(v407 + 8))(v256, v208);
          swift_unknownObjectRelease();
          v409 = v408 & 1;
          v586 = v638;
          *v638 = v409;
          goto LABEL_118;
        case 24:
          LOBYTE(v817) = 24;
          sub_1D304EC3C();
          v304 = v776;
          v256 = v814;
          v305 = v812;
          sub_1D30E95FC();
          if (v305)
          {
            goto LABEL_98;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A440, &qword_1D30F5658);
          sub_1D3056940(&qword_1EC74A6D8, sub_1D2FF67A4);
          v306 = v700;
          sub_1D30E967C();
          v307 = v809;
          (*(v699 + 8))(v304, v306);
          (*(v307 + 8))(v256, v208);
          swift_unknownObjectRelease();
          v457 = v640;
          *v640 = v817;
          goto LABEL_132;
        case 25:
          LOBYTE(v817) = 25;
          sub_1D304EBE8();
          v299 = v778;
          v273 = v814;
          v300 = v812;
          sub_1D30E95FC();
          if (v300)
          {
            goto LABEL_104;
          }

          v301 = v208;
          LOBYTE(v815) = 0;
          sub_1D2FF96E8();
          v302 = v703;
          sub_1D30E967C();
          v303 = v809;
          v474 = v817;
          LOBYTE(v815) = 1;
          v475 = sub_1D30E969C();
          v812 = 0;
          v557 = v475;
          (*(v652 + 8))(v299, v302);
          (*(v303 + 8))(v273, v301);
          swift_unknownObjectRelease();
          v558 = v624;
          *v624 = v474;
          v558[2] = v557;
          goto LABEL_129;
        case 26:
          LOBYTE(v817) = 26;
          sub_1D304EB40();
          v416 = v779;
          v273 = v814;
          v417 = v812;
          sub_1D30E95FC();
          if (v417)
          {
LABEL_104:
            (*(v809 + 8))(v273, v208);
            goto LABEL_7;
          }

          LOBYTE(v815) = 0;
          sub_1D30568EC();
          v441 = v705;
          sub_1D30E967C();
          v442 = v809;
          v808 = v817;
          v527 = v416;
          v528 = v818;
          LOBYTE(v815) = 1;
          v529 = sub_1D30E969C();
          v812 = 0;
          v578 = v529;
          (*(v704 + 8))(v527, v441);
          (*(v442 + 8))(v273, v208);
          swift_unknownObjectRelease();
          v558 = v625;
          *v625 = v808;
          v558[2] = v528;
          v558[3] = v578;
LABEL_129:
          swift_storeEnumTagMultiPayload();
          v483 = v558;
          goto LABEL_130;
        case 27:
          LOBYTE(v817) = 27;
          sub_1D304EAEC();
          v242 = v777;
          v213 = v814;
          v243 = v812;
          sub_1D30E95FC();
          if (v243)
          {
            goto LABEL_5;
          }

          (*(v701 + 8))(v242, v702);
          (*(v809 + 8))(v213, v208);
          swift_unknownObjectRelease();
          v233 = v618;
          goto LABEL_117;
        case 28:
          LOBYTE(v817) = 28;
          sub_1D304EA98();
          v410 = v780;
          v256 = v814;
          v411 = v812;
          sub_1D30E95FC();
          if (v411)
          {
            goto LABEL_98;
          }

          v436 = v707;
          v437 = sub_1D30E969C();
          v438 = v809;
          v524 = v437;
          (*(v706 + 8))(v410, v436);
          (*(v438 + 8))(v256, v208);
          swift_unknownObjectRelease();
          v525 = v639;
          *v639 = v524;
          swift_storeEnumTagMultiPayload();
          v483 = v525;
          goto LABEL_130;
        case 29:
          LOBYTE(v817) = 29;
          sub_1D304EA44();
          v412 = v783;
          v222 = v814;
          v413 = v812;
          sub_1D30E95FC();
          if (v413)
          {
            goto LABEL_56;
          }

          LOBYTE(v817) = 0;
          sub_1D3056898();
          v439 = v713;
          sub_1D30E967C();
          v440 = v809;
          v526 = v815;
          v825 = 1;
          sub_1D2FF96E8();
          sub_1D30E967C();
          (*(v712 + 8))(v412, v439);
          (*(v440 + 8))(v222, v208);
          swift_unknownObjectRelease();
          v606 = v626;
          *v626 = v526;
          *(v606 + 1) = v817;
          goto LABEL_122;
        case 30:
          LOBYTE(v817) = 30;
          sub_1D304E99C();
          v374 = v782;
          v256 = v814;
          v375 = v812;
          sub_1D30E95FC();
          if (v375)
          {
            goto LABEL_98;
          }

          sub_1D3056898();
          v376 = v711;
          sub_1D30E967C();
          v377 = v809;
          (*(v709 + 8))(v374, v376);
          (*(v377 + 8))(v256, v208);
          swift_unknownObjectRelease();
          v457 = v641;
          *v641 = v817;
          goto LABEL_132;
        case 31:
          LOBYTE(v817) = 31;
          sub_1D304E948();
          v336 = v781;
          v213 = v814;
          v337 = v812;
          sub_1D30E95FC();
          if (v337)
          {
            goto LABEL_5;
          }

          (*(v708 + 8))(v336, v710);
          (*(v809 + 8))(v213, v208);
          swift_unknownObjectRelease();
          v233 = v618;
          goto LABEL_117;
        case 32:
          LOBYTE(v817) = 32;
          sub_1D304E8F4();
          v378 = v784;
          v222 = v814;
          v379 = v812;
          sub_1D30E95FC();
          if (v379)
          {
            goto LABEL_56;
          }

          v380 = v715;
          v381 = sub_1D30E963C();
          v382 = v809;
          v514 = v381;
          v516 = v515;
          (*(v714 + 8))(v378, v380);
          (*(v382 + 8))(v222, v208);
          swift_unknownObjectRelease();
          v462 = v642;
          *v642 = v514;
          *(v462 + 8) = v516;
          goto LABEL_120;
        case 33:
          LOBYTE(v817) = 33;
          sub_1D304E8A0();
          v263 = v785;
          v222 = v814;
          v264 = v812;
          sub_1D30E95FC();
          if (v264)
          {
            goto LABEL_56;
          }

          v265 = v717;
          v266 = sub_1D30E963C();
          v267 = v809;
          v459 = v266;
          v461 = v460;
          (*(v716 + 8))(v263, v265);
          (*(v267 + 8))(v222, v208);
          swift_unknownObjectRelease();
          v462 = v643;
          *v643 = v459;
          *(v462 + 8) = v461;
LABEL_120:
          swift_storeEnumTagMultiPayload();
          v233 = v618;
          sub_1D3056830(v462, v618, type metadata accessor for Helper.Message);
          v554 = v802;
          goto LABEL_125;
        case 34:
          LOBYTE(v817) = 34;
          sub_1D304E84C();
          v244 = v788;
          v228 = v814;
          v245 = v812;
          sub_1D30E95FC();
          if (v245)
          {
            goto LABEL_94;
          }

          sub_1D30E8D9C();
          LOBYTE(v817) = 0;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
          v246 = v749;
          v247 = v722;
          sub_1D30E967C();
          v248 = v809;
          v448 = v247;
          v449 = v244;
          v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A190, &qword_1D30F5498);
          v451 = &v246[*(v450 + 48)];
          LOBYTE(v817) = 1;
          sub_1D2FF67A4();
          sub_1D30E967C();
          v812 = *(v450 + 64);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A3C8, &qword_1D30F5650);
          LOBYTE(v817) = 2;
          sub_1D304E7E0(&qword_1EC74A6C0);
          sub_1D30E967C();
          (*(v653 + 8))(v449, v448);
          (*(v248 + 8))(v228, v811);
          swift_unknownObjectRelease();
          v586 = v749;
          goto LABEL_118;
        case 35:
          LOBYTE(v817) = 35;
          sub_1D304E78C();
          v228 = v814;
          v234 = v812;
          sub_1D30E95FC();
          if (v234)
          {
            goto LABEL_94;
          }

          v235 = sub_1D30E8D9C();
          LOBYTE(v817) = 0;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
          v236 = v742;
          sub_1D30E967C();
          LOBYTE(v817) = 1;
          v444 = sub_1D30E963C();
          v539 = v538;
          v540 = v444;
          v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A188, &qword_1D30F5490);
          v542 = &v236[v541[12]];
          *v542 = v540;
          v542[1] = v539;
          LOBYTE(v817) = 2;
          v543 = sub_1D30E961C();
          v812 = 0;
          v582 = &v236[v541[16]];
          v583 = v541[20];
          *v582 = v543;
          v582[1] = v584;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A3C8, &qword_1D30F5650);
          LOBYTE(v817) = 3;
          sub_1D304E7E0(&qword_1EC74A6C0);
          v585 = v812;
          sub_1D30E967C();
          if (v585)
          {
            (*(v654 + 8))(v800, v746);
            (*(v809 + 8))(v814, v811);

            swift_unknownObjectRelease();

            (*(*(v235 - 8) + 8))(v742, v235);
            return __swift_destroy_boxed_opaque_existential_1(v813);
          }

          (*(v654 + 8))(v800, v746);
          (*(v809 + 8))(v814, v811);
          swift_unknownObjectRelease();
          v457 = v742;
          goto LABEL_132;
        case 36:
          LOBYTE(v817) = 36;
          sub_1D304E738();
          v237 = v787;
          v228 = v814;
          v238 = v812;
          sub_1D30E95FC();
          if (v238)
          {
            goto LABEL_94;
          }

          LOBYTE(v817) = 0;
          v239 = v721;
          v240 = sub_1D30E963C();
          v241 = v809;
          v446 = v445;
          *&v808 = v240;
          LOBYTE(v817) = 1;
          v447 = sub_1D30E961C();
          v812 = 0;
          v544 = v447;
          v546 = v545;
          (*(v718 + 8))(v237, v239);
          (*(v241 + 8))(v228, v208);
          swift_unknownObjectRelease();
          v580 = v627;
          *v627 = v808;
          v580[1] = v446;
          v580[2] = v544;
          v580[3] = v546;
          goto LABEL_128;
        case 37:
          LOBYTE(v817) = 37;
          sub_1D304E6E4();
          v227 = v790;
          v228 = v814;
          v229 = v812;
          sub_1D30E95FC();
          if (v229)
          {
            goto LABEL_94;
          }

          sub_1D30E8D9C();
          LOBYTE(v817) = 0;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
          v230 = v725;
          sub_1D30E967C();
          v231 = v809;
          LOBYTE(v817) = 1;
          v530 = sub_1D30E963C();
          v532 = v531;
          v533 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A180, &qword_1D30F5488);
          v534 = &v753[*(v533 + 48)];
          *v534 = v530;
          v534[1] = v532;
          LOBYTE(v817) = 2;
          v535 = sub_1D30E961C();
          v537 = v536;
          v579 = v535;
          v580 = v753;
          v581 = &v753[*(v533 + 64)];
          (*(v655 + 8))(v227, v230);
          (*(v231 + 8))(v228, v811);
          swift_unknownObjectRelease();
          *v581 = v579;
          *(v581 + 1) = v537;
          goto LABEL_128;
        case 38:
          LOBYTE(v817) = 38;
          sub_1D304E690();
          v414 = v786;
          v213 = v814;
          v415 = v812;
          sub_1D30E95FC();
          if (v415)
          {
            goto LABEL_5;
          }

          (*(v719 + 8))(v414, v720);
          (*(v809 + 8))(v213, v208);
          swift_unknownObjectRelease();
          v233 = v618;
          goto LABEL_117;
        case 39:
          LOBYTE(v817) = 39;
          sub_1D304E63C();
          v392 = v789;
          v256 = v814;
          v393 = v812;
          sub_1D30E95FC();
          if (v393)
          {
            goto LABEL_98;
          }

          sub_1D30E8D9C();
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
          v384 = v657;
          v394 = v724;
          sub_1D30E967C();
          v395 = v809;
          (*(v723 + 8))(v392, v394);
          (*(v395 + 8))(v256, v208);
          swift_unknownObjectRelease();
          goto LABEL_119;
        case 40:
          LOBYTE(v817) = 40;
          sub_1D304E5E8();
          v283 = v792;
          v228 = v814;
          v284 = v812;
          sub_1D30E95FC();
          if (v284)
          {
            goto LABEL_94;
          }

          LOBYTE(v817) = 0;
          sub_1D2FF96E8();
          v285 = v728;
          sub_1D30E967C();
          v286 = v809;
          *&v808 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
          v471 = *(v808 + 48);
          sub_1D30E8D9C();
          LOBYTE(v817) = 1;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
          v812 = v471;
          sub_1D30E967C();
          LOBYTE(v817) = 2;
          v555 = sub_1D30E961C();
          v556 = v285;
          v591 = v590;
          v580 = v748;
          v592 = &v748[*(v808 + 64)];
          (*(v656 + 8))(v283, v556);
          (*(v286 + 8))(v228, v208);
          swift_unknownObjectRelease();
          *v592 = v555;
          v592[1] = v591;
          goto LABEL_128;
        case 41:
          LOBYTE(v817) = 41;
          sub_1D304E594();
          v342 = v791;
          v222 = v814;
          v343 = v812;
          sub_1D30E95FC();
          if (v343)
          {
            goto LABEL_56;
          }

          sub_1D30E8D9C();
          LOBYTE(v817) = 0;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
          v224 = v661;
          v428 = v727;
          sub_1D30E967C();
          v429 = v809;
          v492 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48);
          LOBYTE(v817) = 1;
          sub_1D2FF96E8();
          sub_1D30E967C();
          (*(v726 + 8))(v342, v428);
          (*(v429 + 8))(v222, v208);
          swift_unknownObjectRelease();
          goto LABEL_121;
        case 42:
          LOBYTE(v817) = 42;
          sub_1D304E540();
          v401 = v795;
          v228 = v814;
          v402 = v812;
          sub_1D30E95FC();
          if (v402)
          {
LABEL_94:
            (*(v809 + 8))(v228, v208);
            goto LABEL_7;
          }

          LOBYTE(v817) = 0;
          sub_1D2FF96E8();
          v434 = v734;
          sub_1D30E967C();
          v435 = v809;
          *&v808 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
          v523 = *(v808 + 48);
          sub_1D30E8D9C();
          LOBYTE(v817) = 1;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
          v812 = v523;
          sub_1D30E967C();
          LOBYTE(v817) = 2;
          v576 = sub_1D30E961C();
          v577 = v434;
          v601 = v600;
          v580 = v750;
          v602 = &v750[*(v808 + 64)];
          (*(v803 + 8))(v401, v577);
          (*(v435 + 8))(v228, v208);
          swift_unknownObjectRelease();
          *v602 = v576;
          v602[1] = v601;
LABEL_128:
          swift_storeEnumTagMultiPayload();
          v483 = v580;
          goto LABEL_130;
        case 43:
          LOBYTE(v817) = 43;
          sub_1D304E4EC();
          v221 = v794;
          v222 = v814;
          v223 = v812;
          sub_1D30E95FC();
          if (v223)
          {
            goto LABEL_56;
          }

          sub_1D30E8D9C();
          LOBYTE(v817) = 0;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
          v224 = v662;
          v225 = v733;
          sub_1D30E967C();
          v226 = v809;
          v443 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48);
          LOBYTE(v817) = 1;
          sub_1D2FF96E8();
          sub_1D30E967C();
          (*(v731 + 8))(v221, v225);
          (*(v226 + 8))(v222, v208);
          swift_unknownObjectRelease();
LABEL_121:
          swift_storeEnumTagMultiPayload();
          v519 = v224;
          goto LABEL_123;
        case 44:
          LOBYTE(v817) = 44;
          sub_1D304E498();
          v222 = v814;
          v254 = v812;
          sub_1D30E95FC();
          if (v254)
          {
LABEL_56:
            (*(v809 + 8))(v222, v208);
            goto LABEL_7;
          }

          LOBYTE(v817) = 0;
          sub_1D2FF96E8();
          sub_1D30E967C();
          v812 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A168, &qword_1D30F5470);
          v458 = *(v812 + 48);
          sub_1D30E8D5C();
          LOBYTE(v817) = 1;
          sub_1D3045A34(&qword_1EC749A80, MEMORY[0x1E69E8380]);
          sub_1D30E967C();
          LOBYTE(v817) = 2;
          v547 = sub_1D30E963C();
          v587 = &v752[*(v812 + 64)];
          *v587 = v547;
          v587[1] = v588;
          LOBYTE(v817) = 3;
          v603 = sub_1D30E961C();
          v605 = v604;
          v606 = v752;
          v607 = &v752[*(v812 + 80)];
          (*(v804 + 8))(v801, v747);
          (*(v809 + 8))(v814, v208);
          swift_unknownObjectRelease();
          *v607 = v603;
          v607[1] = v605;
LABEL_122:
          swift_storeEnumTagMultiPayload();
          v519 = v606;
          goto LABEL_123;
        case 45:
          LOBYTE(v817) = 45;
          sub_1D304E444();
          v256 = v814;
          v383 = v812;
          sub_1D30E95FC();
          if (v383)
          {
            goto LABEL_98;
          }

          sub_1D30E8D9C();
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
          v384 = v658;
          v385 = v735;
          sub_1D30E967C();
          v386 = v809;
          (*(v732 + 8))(v206, v385);
          (*(v386 + 8))(v256, v208);
          swift_unknownObjectRelease();
LABEL_119:
          swift_storeEnumTagMultiPayload();
          v519 = v384;
          goto LABEL_123;
        case 46:
          LOBYTE(v817) = 46;
          sub_1D304E3F0();
          v418 = v793;
          v213 = v814;
          v419 = v812;
          sub_1D30E95FC();
          if (v419)
          {
            goto LABEL_5;
          }

          (*(v729 + 8))(v418, v730);
          (*(v809 + 8))(v213, v208);
          swift_unknownObjectRelease();
          v233 = v618;
          goto LABEL_117;
        case 47:
          LOBYTE(v817) = 47;
          sub_1D304E39C();
          v213 = v814;
          v232 = v812;
          sub_1D30E95FC();
          if (v232)
          {
LABEL_5:
            (*(v809 + 8))(v213, v208);
            goto LABEL_7;
          }

          (*(v736 + 8))(v207, v737);
          (*(v809 + 8))(v213, v208);
          swift_unknownObjectRelease();
          v233 = v618;
LABEL_117:
          swift_storeEnumTagMultiPayload();
          v554 = v802;
          goto LABEL_125;
        case 48:
          LOBYTE(v817) = 48;
          sub_1D304E348();
          v268 = v797;
          v256 = v814;
          v269 = v812;
          sub_1D30E95FC();
          if (v269)
          {
LABEL_98:
            (*(v809 + 8))(v256, v208);
            goto LABEL_7;
          }

          v270 = v738;
          v271 = sub_1D30E964C();
          v272 = v809;
          v463 = v271;
          (*(v739 + 8))(v268, v270);
          (*(v272 + 8))(v256, v208);
          swift_unknownObjectRelease();
          v464 = v463 & 1;
          v586 = v644;
          *v644 = v464;
LABEL_118:
          swift_storeEnumTagMultiPayload();
          v483 = v586;
LABEL_130:
          v233 = v618;
          sub_1D3056830(v483, v618, type metadata accessor for Helper.Message);
          v554 = v802;
          goto LABEL_125;
        case 49:
          LOBYTE(v817) = 49;
          sub_1D304E2F4();
          v275 = v796;
          v276 = v814;
          v277 = v812;
          sub_1D30E95FC();
          if (v277)
          {
            (*(v809 + 8))(v276, v208);
            swift_unknownObjectRelease();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A348, &qword_1D30F5648);
            sub_1D30567C4(&qword_1EE313050);
            v420 = v740;
            sub_1D30E967C();
            v421 = v809;
            (*(v741 + 8))(v275, v420);
            (*(v421 + 8))(v276, v208);
            swift_unknownObjectRelease();
            v457 = v645;
            *v645 = v817;
LABEL_132:
            swift_storeEnumTagMultiPayload();
            v519 = v457;
LABEL_123:
            v233 = v618;
            sub_1D3056830(v519, v618, type metadata accessor for Helper.Message);
LABEL_124:
            v554 = v802;
LABEL_125:
            sub_1D3056830(v233, v554, type metadata accessor for Helper.Message);
          }

          break;
        default:
          goto LABEL_6;
      }
    }

    else
    {
LABEL_6:
      v215 = sub_1D30E94EC();
      swift_allocError();
      v217 = v216;
      v218 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30) + 48);
      *v217 = v810;
      v219 = v814;
      sub_1D30E960C();
      sub_1D30E94DC();
      (*(*(v215 - 8) + 104))(v217, *MEMORY[0x1E69E6AF8], v215);
      swift_willThrow();
      (*(v809 + 8))(v219, v208);
LABEL_7:
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v813);
}