uint64_t get_enum_tag_for_layout_string_9JetEngine15TreatmentFilter_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1AB02A048(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1AB461584();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
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
        v18 = 16 * (v15 | (v9 << 6));
        v19 = (*(v3 + 48) + v18);
        v20 = v19[1];
        v21 = (*(v5 + 48) + v18);
        *v21 = *v19;
        v21[1] = v20;
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
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
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
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1AB02A194(uint64_t result, uint64_t a2, unint64_t a3, char a4, uint64_t *a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1AB035034(v9 + 1, a5);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1AB02A048(a5);
      goto LABEL_16;
    }

    sub_1AB2463E4(v9 + 1, a5);
  }

  v11 = *v5;
  sub_1AB4620A4();
  sub_1AB460684();
  result = sub_1AB462104();
  v12 = -1 << *(v11 + 32);
  a3 = result & ~v12;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v11 + 48) + 16 * a3);
      if (*v14 == v8 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1AB461DA4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v8;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1AB461FB4();
  __break(1u);
  return result;
}

uint64_t sub_1AB02A330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1AB014A58(a1, &v25, &qword_1EB436B50);
  if (v26)
  {
    sub_1AB0149B0(&v25, &v27);
    v5 = v29;
    v6 = v30;
    v7 = __swift_project_boxed_opaque_existential_1Tm(&v27, v29);
    sub_1AB240354(v7, &v31, v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(&v27);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1AB014AC0(&v25, &qword_1EB436B50);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  v8 = v31;
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB02A808(0, v8[2] + 1, 1, v8);
    v31 = v8;
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB02A808((v9 > 1), v10 + 1, 1, v8);
    v31 = v8;
  }

  v29 = &type metadata for ConstraintTreatmentFilter;
  v30 = &off_1F2015168;
  *&v27 = v4;
  v8[2] = v10 + 1;
  sub_1AB0149B0(&v27, &v8[5 * v10 + 4]);
  v31 = v8;
LABEL_10:
  if (qword_1ED4D0C48 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED4D3EE0;
  v11 = *algn_1ED4D3EE8;
  v13 = qword_1ED4D3EF0;
  v14 = v31;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1AB02A808(0, v14[2] + 1, 1, v14);
    v31 = v14;
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1AB02A808((v15 > 1), v16 + 1, 1, v14);
    v31 = v14;
  }

  v29 = &type metadata for AllowedFieldsTreatmentFilter;
  v30 = &protocol witness table for AllowedFieldsTreatmentFilter;
  *&v27 = v12;
  *(&v27 + 1) = v11;
  v28 = v13;
  v14[2] = v16 + 1;
  sub_1AB0149B0(&v27, &v14[5 * v16 + 4]);
  if (qword_1EB435788 != -1)
  {
    swift_once();
  }

  v18 = qword_1EB46C260;
  v17 = *algn_1EB46C268;
  v19 = qword_1EB46C270;
  v31 = v14;
  v20 = v14[2];
  v21 = v14[3];
  v22 = v20 + 1;

  if (v20 >= v21 >> 1)
  {
    v14 = sub_1AB02A808((v21 > 1), v20 + 1, 1, v14);
    v31 = v14;
  }

  v29 = &type metadata for DeResolutionNumericTreatmentFilter;
  v30 = &protocol witness table for DeResolutionNumericTreatmentFilter;
  *&v27 = v18;
  *(&v27 + 1) = v17;
  v28 = v19;
  v14[2] = v22;
  sub_1AB0149B0(&v27, &v14[5 * v20 + 4]);
  v31 = v14;
  v23 = v14[3];
  if ((v20 + 2) > (v23 >> 1))
  {
    v14 = sub_1AB02A808((v23 > 1), v20 + 2, 1, v14);
    v31 = v14;
  }

  v29 = &type metadata for EventTimeTreatmentFilter;
  v30 = &off_1F200B020;
  v14[2] = v20 + 2;
  result = sub_1AB0149B0(&v27, &v14[5 * v22 + 4]);
  a3[3] = &type metadata for CompoundTreatmentFilter;
  a3[4] = &protocol witness table for CompoundTreatmentFilter;
  *a3 = v14;
  return result;
}

void *sub_1AB02A6C0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1AB02A82C()
{
  qword_1ED4D3EE0 = 0x646E655265676170;
  *algn_1ED4D3EE8 = 0xEA00000000007265;
  qword_1ED4D3EF0 = &unk_1F1FF2E28;
}

double sub_1AB02A860()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A330);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AB4D47F0;
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x80000001AB4FE9D0;
  result = 1.0;
  *(v0 + 48) = xmmword_1AB4E6770;
  *(v0 + 64) = 0xD00000000000001ELL;
  *(v0 + 72) = 0x80000001AB4FEA30;
  *(v0 + 80) = xmmword_1AB4E6770;
  qword_1EB46C260 = 0x646E655265676170;
  *algn_1EB46C268 = 0xEA00000000007265;
  qword_1EB46C270 = v0;
  return result;
}

void sub_1AB02A92C(uint64_t *a1, void (*a2)(_OWORD *__return_ptr))
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 1);
  }

  else
  {
    a2(v25);
    v3 = *&v25[0];
    v4 = *(v25 + 8);
  }

  v24 = v4;
  *&v25[0] = v3;
  *(v25 + 8) = v4;
  ProcessAssertion.acquire()();
  if (v5)
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D47F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    *(&v25[1] + 1) = MEMORY[0x1E69E6158];
    *&v25[0] = 0xD000000000000030;
    *(&v25[0] + 1) = 0x80000001AB505C20;
    *(v8 + 48) = 0u;
    *(v8 + 32) = 0u;
    sub_1AB0169C4(v25, v8 + 32);
    *(v8 + 64) = 0;
    *(v7 + 32) = v8;
    v35 = sub_1AB0168A8(0, 9, 0, MEMORY[0x1E69E7CC0]);
    v9._countAndFlagsBits = 0x203A6E6F73616572;
    v9._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    swift_getErrorValue();
    v10 = v33;
    v11 = v34;
    v30 = v34;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(v11[-1].Description + 2))(boxed_opaque_existential_0, v10, v11);
    sub_1AB014A58(v29, v32, &unk_1EB437E60);
    memset(v25, 0, sizeof(v25));
    sub_1AB0169C4(v32, v25);
    v26 = 0;
    v13 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
      v35 = v13;
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[40 * v15];
    v17 = v25[0];
    v18 = v25[1];
    v16[64] = v26;
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    v35 = v13;
    sub_1AB014AC0(v29, &unk_1EB437E60);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v7 + 40) = v35;
    *&v25[0] = v6;
    LOBYTE(v29[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v7, v29);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439190);
    v20 = swift_allocObject();
    v30 = &type metadata for SyncTaskScheduler;
    v31 = &protocol witness table for SyncTaskScheduler;
    sub_1AB01494C(v29, v25);
    v27 = sub_1AB252BA0;
    v28 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439198);
    v21 = swift_allocObject();
    *(v21 + 72) = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    sub_1AB014A58(v25, v21 + 16, &qword_1EB4391A0);
    sub_1AB014AC0(v25, &qword_1EB4391A0);
    *(v20 + 16) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB4391A8);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    v23 = *(*(&v24 + 1) + 16);

    [v23 lock];
    sub_1AB35CDC4(*(&v24 + 1), v22);
    [v23 unlock];
  }

  *a1 = v3;
  *(a1 + 1) = v24;
}

uint64_t sub_1AB02ADE4(uint64_t a1, uint64_t a2)
{
  sub_1AB4620A4();
  sub_1AB45F764();
  sub_1AB02B518(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  sub_1AB460454();
  sub_1AB460684();

  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_1AB4620C4();
    sub_1AB460684();
  }

  else
  {
    sub_1AB4620C4();
  }

  return sub_1AB462104();
}

uint64_t sub_1AB02AF28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438138);
  result = sub_1AB461914();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_1AB02B4BC(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      result = sub_1AB461524();
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
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t sub_1AB02B1D8(uint64_t a1)
{
  v2 = sub_1AB461524();

  return sub_1AB02B21C(a1, v2);
}

unint64_t sub_1AB02B21C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1AB02B4BC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC59C870](v9, a1);
      sub_1AB02B2E4(v9);
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

uint64_t sub_1AB02B338(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1AB02B1D8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1AB02AF28(v13, a3 & 1);
      v18 = sub_1AB02B1D8(a2);
      if ((v14 & 1) != (v19 & 1))
      {
LABEL_17:
        result = sub_1AB461FC4();
        __break(1u);
        return result;
      }

      v10 = v18;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1AB1D90E4();
  }

  v16 = *v4;
  if ((v14 & 1) == 0)
  {
LABEL_13:
    result = sub_1AB02B4BC(a2, v26);
    v16[(v10 >> 6) + 8] |= 1 << v10;
    v20 = v16[6] + 40 * v10;
    v21 = v27;
    v22 = v26[1];
    *v20 = v26[0];
    *(v20 + 16) = v22;
    *(v20 + 32) = v21;
    *(v16[7] + 8 * v10) = a1;
    v23 = v16[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      v16[2] = v25;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

uint64_t sub_1AB02B518(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB02B57C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1AB027460;

  return v8(a1);
}

uint64_t sub_1AB02B674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027460;

  return JetPackAssetDiskCache._executeWithTransaction<A>(_:)(a1, a2, a3, a4);
}

uint64_t JetPackAssetDiskCache._executeWithTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB02B760, 0, 0);
}

uint64_t sub_1AB02B760()
{
  v1 = (v0[6] + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v10 = (*(v3 + 80) + **(v3 + 80));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1AB05E830;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return v10(v7, v8, v5, v6, v2, v3);
}

uint64_t sub_1AB02B89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027460;

  return JetPackAssetDiskCacheSQLiteMetadataStore.executeWithTransaction<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_1AB02B960()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;

  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1AB05E6C0;
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return sub_1AB02BA68(v8, sub_1AB02C004, v7, &unk_1AB4E9080, v4, v3);
}

uint64_t sub_1AB02BA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB02BA90, 0, 0);
}

uint64_t sub_1AB02BA90()
{
  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  v1 = byte_1EB435998;
  *(v0 + 80) = byte_1EB435998;
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 56);
    *(swift_task_alloc() + 16) = *(v0 + 24);
    os_unfair_lock_lock((v2 + 40));
    sub_1AB02B560((v2 + 16));
    os_unfair_lock_unlock((v2 + 40));
  }

  v6 = (*(v0 + 40) + **(v0 + 40));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1AB05D53C;
  v4 = *(v0 + 16);

  return v6(v4);
}

void sub_1AB02BC20(void *a1@<X8>)
{
  v2 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4DE160;
  v4 = sub_1AB460514();
  v5 = sub_1AB460514();
  v6 = [objc_opt_self() attributeWithDomain:v4 name:v5];

  *(v3 + 32) = v6;
  v7 = objc_allocWithZone(type metadata accessor for ProcessAssertion.JetRBSAssertion());
  v8 = sub_1AB460514();
  sub_1AB02BEC4();
  v9 = sub_1AB460934();

  v10 = [v7 initWithExplanation:v8 target:v2 attributes:v9];

  *a1 = v10;
  v11 = objc_allocWithZone(_JEAtomicCounter);
  v12 = v10;
  a1[1] = [v11 initWithInitialValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439188);
  v13 = swift_allocObject();
  v14 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v15 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  a1[2] = v13;
  v17[4] = sub_1AB2527B8;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1AB2527C0;
  v17[3] = &block_descriptor_29;
  v16 = _Block_copy(v17);

  [v12 setInvalidationHandler_];
  _Block_release(v16);
}

unint64_t sub_1AB02BEC4()
{
  result = qword_1ED4D1058;
  if (!qword_1ED4D1058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4D1058);
  }

  return result;
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.executeWithTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB02BF38, 0, 0);
}

uint64_t sub_1AB02BF38()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1AB05E830;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v4, v5, v2, v3);
}

uint64_t AssetSQLiteDatabase.executeWithTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB02B960, 0, 0);
}

uint64_t sub_1AB02C06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB02C098, 0, 0);
}

uint64_t sub_1AB02C098()
{
  v13 = v0;
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 64) + 16);
  v3 = swift_task_alloc();
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1AB02C5F8((v2 + 16), &v12);
  os_unfair_lock_unlock((v2 + 24));
  v5 = v12;
  *(v0 + 72) = v12;

  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = type metadata accessor for JetPackAsset(0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  *v6 = v0;
  v6[1] = sub_1AB045464;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v9, v5, v7, v8, v10);
}

uint64_t sub_1AB02C1EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35[-v13];
  sub_1AB4619A4();
  v15 = *a1;
  if (*(*a1 + 16) && (v16 = sub_1AB02B1D8(v40), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);

    sub_1AB02B2E4(v40);
    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v19 = v41;
    v34 = v42;
    __swift_project_boxed_opaque_existential_1Tm(v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1AB4D4720;
    v43 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
    v21._object = 0x80000001AB506410;
    v21._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    v39[3] = a5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a2, a5);
    sub_1AB014A58(v39, v35, &unk_1EB437E60);
    v36 = 0u;
    v37 = 0u;
    sub_1AB017CC4(v35, &v36, &unk_1EB437E60);
    v38 = 0;
    v23 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[40 * v25];
    v27 = v36;
    v28 = v37;
    v26[64] = v38;
    *(v26 + 2) = v27;
    *(v26 + 3) = v28;
    v43 = v23;
    sub_1AB014AC0(v39, &unk_1EB437E60);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    *(v20 + 32) = v43;
    Logger.info(_:)(v20, v19, v34);

    result = __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    sub_1AB02B2E4(v40);
    v31 = sub_1AB460BE4();
    (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = a3;
    v32[5] = a4;

    v18 = sub_1AB3B2D0C(0, 0, v14, &unk_1AB4E3680, v32);
    sub_1AB4619A4();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36 = *a1;
    sub_1AB02B338(v18, v40, isUniquelyReferenced_nonNull_native);
    result = sub_1AB02B2E4(v40);
    *a1 = v36;
  }

  *a6 = v18;
  return result;
}

uint64_t URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_1AB45F764();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for URLJetPackAssetRequest();
  *(a5 + *(result + 20)) = v9;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t URLJetPackAssetFetcher.init(bag:urlSessionConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for URLJetPackAssetFetcher();
  v7 = *(v6 + 24);
  v8 = sub_1AB45F764();
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v9 + 16) = result;
  *(v9 + 24) = a1;
  *(v9 + 32) = 1;
  *&a3[*(v6 + 28)] = v9;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = a2;
  return result;
}

uint64_t sub_1AB02C7A0()
{
  sub_1AB02CC14(*(v0 + 448) + 24, v0 + 176);
  if (*(v0 + 200))
  {
    v1 = *(v0 + 240);
    *(v0 + 144) = *(v0 + 224);
    *(v0 + 160) = v1;
    v2 = *(v0 + 208);
    *(v0 + 112) = *(v0 + 192);
    *(v0 + 128) = v2;
    *(v0 + 96) = *(v0 + 176);
    if (*(v0 + 120))
    {
      v3 = *(v0 + 144);
      *(v0 + 48) = *(v0 + 128);
      *(v0 + 64) = v3;
      *(v0 + 80) = *(v0 + 160);
      v4 = *(v0 + 112);
      *(v0 + 16) = *(v0 + 96);
      *(v0 + 32) = v4;
      sub_1AB014A58(v0 + 16, v0 + 256, &qword_1EB4394A8);
      v5 = swift_task_alloc();
      *(v0 + 456) = v5;
      *v5 = v0;
      v5[1] = sub_1AB045058;
      v6 = *(v0 + 440);
      v7 = *(v0 + 424);
      v8 = *(v0 + 432);
      v9 = *(v0 + 408);
      v10 = *(v0 + 416);

      return sub_1AB26D8F4(v9, v10, v7, v0 + 256, v0 + 296, v8, v6);
    }
  }

  else
  {
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 96) = 0u;
    sub_1AB064948(v0 + 176);
  }

  sub_1AB014AC0(v0 + 96, &qword_1EB4394B0);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v13 = *(v0 + 360);
  v12 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AB4D4720;
  *(v0 + 400) = MEMORY[0x1E69E6158];
  *(v0 + 376) = 0xD000000000000094;
  *(v0 + 384) = 0x80000001AB506230;
  *(v15 + 48) = 0u;
  *(v15 + 32) = 0u;
  sub_1AB017CC4(v0 + 376, v15 + 32, &unk_1EB437E60);
  *(v15 + 64) = 0;
  *(v14 + 32) = v15;
  Logger.error(_:)(v14, v13, v12);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
  sub_1AB28D17C();
  swift_allocError();
  *v16 = 1;
  swift_willThrow();
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1AB02CA94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027554;

  return sub_1AB02B57C(a1, v4, v5, v6);
}

uint64_t sub_1AB02CB54(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027460;

  return sub_1AB02EBE0(a1, v4, v6, v5);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_1AB02CC7C(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ED4D1D98 = v2;
}

uint64_t sub_1AB02CD68(uint64_t *a1, void (*a2)(uint64_t *))
{
  v4 = type metadata accessor for InMemoryJetPackResourceBundle();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  a2(&v9);
  sub_1AB0574C0(v6);
  return sub_1AB0579C4(v6);
}

uint64_t sub_1AB02CE3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - v11;
  v39 = *a1;
  sub_1AB01494C(a2, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B7A0);
  if (swift_dynamicCast())
  {
    v13 = *(&v41 + 1);
    v14 = *v42;
    __swift_project_boxed_opaque_existential_1Tm(&v40, *(&v41 + 1));
    (*(v14 + 8))(v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  }

  else
  {
    *v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_1AB014AC0(&v40, &qword_1EB43B7A8);
    v15 = sub_1AB45F764();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  v16 = type metadata accessor for InMemoryJetPackResourceBundle();
  v17 = swift_allocBox();
  v19 = v18;
  sub_1AB014A58(v12, v10, &unk_1EB4395B0);
  v20 = MEMORY[0x1E69E7CC0];
  *v19 = sub_1AB02D46C(MEMORY[0x1E69E7CC0]);
  v19[1] = sub_1AB021978(v20);
  sub_1AB017FB8(v10, v19 + *(v16 + 24), &unk_1EB4395B0);
  v21 = [objc_allocWithZone(MEMORY[0x1E69AB848]) init];
  sub_1AB019BC0(a3, &v40);
  v22 = swift_allocObject();
  v23 = v41;
  *(v22 + 16) = v40;
  *(v22 + 32) = v23;
  *(v22 + 48) = *v42;
  *(v22 + 64) = *&v42[16];
  aBlock[4] = sub_1AB03C7D8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB03C67C;
  aBlock[3] = &block_descriptor_43;
  v24 = _Block_copy(aBlock);

  [v21 setKeyForIdentifier_];
  _Block_release(v24);
  *v42 = sub_1AB056E30;
  *&v42[8] = v17;
  *&v40 = MEMORY[0x1E69E9820];
  *(&v40 + 1) = 1107296256;
  *&v41 = sub_1AB03C264;
  *(&v41 + 1) = &block_descriptor_16_0;
  v25 = _Block_copy(&v40);

  [v21 setFileEntryFound_];
  _Block_release(v25);
  *v42 = sub_1AB02D58C;
  *&v42[8] = v17;
  *&v40 = MEMORY[0x1E69E9820];
  *(&v40 + 1) = 1107296256;
  *&v41 = sub_1AB021C48;
  *(&v41 + 1) = &block_descriptor_19_0;
  v26 = _Block_copy(&v40);

  [v21 setDataSegmentFound_];
  _Block_release(v26);
  v27 = *(a3 + 8);
  if ((v27 & 0x3000000000000000) == 0x2000000000000000 && v27 == 0x2000000000000000 && *a3 == 2)
  {
    v28 = xmmword_1AB4E32F0;
  }

  else
  {
    v44 = 0;
    v43 = 0u;
    *&v42[8] = 0u;
    *(&v41 + 1) = &type metadata for DefaultCoreAnalyticsLoggerProvider;
    *v42 = &protocol witness table for DefaultCoreAnalyticsLoggerProvider;
    sub_1AB3A2940();
    sub_1AB360680(&v40);
    v28 = *a3;
  }

  v40 = v28;
  v29 = sub_1AB021B20();
  v30 = *(a3 + 8);
  v31 = (v30 >> 60) & 3;
  v32 = !v31 || v31 != 1 && !(*a3 & 0xFFFFFFFFFFFFFFFELL | v30 ^ 0x2000000000000000);
  aBlock[0] = 0;
  v33 = [v21 processStream:v39 signatureVerifier:v29 options:v32 error:aBlock];

  if (v33)
  {
    v34 = aBlock[0];
    sub_1AB014AC0(v12, &unk_1EB4395B0);

    swift_beginAccess();
    sub_1AB05745C(v19, v38);
  }

  else
  {
    v36 = aBlock[0];
    sub_1AB45F594();

    swift_willThrow();
    sub_1AB014AC0(v12, &unk_1EB4395B0);
  }
}

uint64_t sub_1AB02D404()
{
  sub_1AB021B04(v0[2], v0[3]);
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

unint64_t sub_1AB02D46C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438130);
    v3 = sub_1AB461924();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v5 = *(i - 1);
      v7 = *i;

      sub_1AB017200(v5, v7);
      result = sub_1AB059C08(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v7;
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

uint64_t sub_1AB02D594(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  type metadata accessor for InMemoryJetPackResourceBundle();
  v7 = swift_projectBox();
  v8 = [a3 readData];
  v9 = sub_1AB45F854();
  v11 = v10;

  swift_beginAccess();

  sub_1AB017200(v9, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = *(v7 + 8);
  *(v7 + 8) = 0x8000000000000000;
  sub_1AB021CCC(v9, v11, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v7 + 8) = v41[0];
  swift_endAccess();
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1AB461DA4() & 1) != 0)
  {
    sub_1AB460594();
    v13 = sub_1AB460564();
    v15 = v14;
    if (qword_1ED4D1D90 != -1)
    {
      swift_once();
    }

    v16 = qword_1ED4D1D98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AB4D4720;
    v42 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v18._object = 0x80000001AB50AC20;
    v18._countAndFlagsBits = 0xD00000000000001BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    if (v15)
    {
      v19 = MEMORY[0x1E69E6158];
    }

    else
    {
      v13 = 0;
      v19 = 0;
      v41[2] = 0;
    }

    v41[0] = v13;
    v41[1] = v15;
    v41[3] = v19;
    sub_1AB014A58(v41, v37, &unk_1EB437E60);
    v38 = 0u;
    v39 = 0u;
    sub_1AB0169C4(v37, &v38);
    v40 = 0;
    v20 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[40 * v22];
    v24 = v38;
    v25 = v39;
    v23[64] = v40;
    *(v23 + 2) = v24;
    *(v23 + 3) = v25;
    v42 = v20;
    sub_1AB014AC0(v41, &unk_1EB437E60);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(v17 + 32) = v42;
    v27 = sub_1AB461094();
    if (os_log_type_enabled(v16, v27))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v28 = MEMORY[0x1E69E6158];
      v29 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v29[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v29 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v31 = swift_allocObject();
      *(v31 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v38 = v17;
      *(&v38 + 1) = sub_1AB01A8D8;
      *&v39 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v32 = sub_1AB460484();
      v34 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1AB4D4720;
      *(v35 + 56) = v28;
      *(v35 + 64) = sub_1AB016854();
      *(v35 + 32) = v32;
      *(v35 + 40) = v34;
      sub_1AB45FF14();
    }
  }

  sub_1AB017254(v9, v11);
  return 1;
}

void sub_1AB02DAA0(uint64_t a1)
{
  v3 = type metadata accessor for InMemoryJetPackResourceBundle();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437830);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v13, v11, &unk_1EB437830);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB2AAB7C(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB03C564(v11, v5, type metadata accessor for InMemoryJetPackResourceBundle);
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB057A20(v5);
    sub_1AB059DC8(v5, type metadata accessor for InMemoryJetPackResourceBundle);
  }

  else
  {
    v15 = *v11;
    sub_1AB014A58(a1, v24, &unk_1EB439890);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB02CC58(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB02CC58((v16 > 1), v17 + 1, 1, v15);
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
    *v9 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v9, v1 + v13, &unk_1EB437830);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

unint64_t sub_1AB02DD7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438128);
    v3 = sub_1AB461924();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1AB014DB4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
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

unint64_t sub_1AB02DE80()
{
  result = qword_1ED4D1048;
  if (!qword_1ED4D1048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4D1048);
  }

  return result;
}

uint64_t sub_1AB02DECC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4387E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InMemoryJetPackLoader.bundle(from:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  type metadata accessor for InMemoryJetPackResourceBundle();
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB02DFC8, 0, 0);
}

uint64_t sub_1AB02DFC8()
{
  v6 = v0;
  v0[23] = &type metadata for SyncTaskScheduler;
  v0[24] = &protocol witness table for SyncTaskScheduler;
  type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v3 = v0[27];
  v2 = v0[28];
  v0[25] = v1;

  swift_task_localValuePush();
  sub_1AB0172A8(v3, (v0 + 20), v2, &v5);
  swift_task_localValuePop();

  v0[30] = v5;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 20));

  return MEMORY[0x1EEE6DFA0](sub_1AB057C54, 0, 0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessAssertion.acquire()()
{
  v34 = *MEMORY[0x1E69E9840];
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
  v27 = sub_1AB0168A8(0, 36, 0, MEMORY[0x1E69E7CC0]);
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
  v11 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
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
  v17._object = 0x80000001AB505AC0;
  v17._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v18 = [(_JEAtomicCounter *)v1 currentValue];
  v30 = MEMORY[0x1E69E6530];
  *&v29 = v18;
  sub_1AB014A58(&v29, v28, &unk_1EB437E60);
  v31 = 0u;
  v32 = 0u;
  sub_1AB0169C4(v28, &v31);
  v33 = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1AB0168A8(0, *(v11 + 2) + 1, 1, v11);
  }

  v20 = *(v11 + 2);
  v19 = *(v11 + 3);
  if (v20 >= v19 >> 1)
  {
    v11 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v11);
  }

  *(v11 + 2) = v20 + 1;
  v21 = &v11[40 * v20];
  v22 = v31;
  v23 = v32;
  v21[64] = v33;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  sub_1AB014AC0(&v29, &unk_1EB437E60);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v4 + 32) = v11;
  *&v31 = v3;
  LOBYTE(v29) = 3;
  OSLogger.log(contentsOf:withLevel:)(v4, &v29);

  if (![v1 increment])
  {
    *&v31 = 0;
    if ([v6 acquireWithError_])
    {
      v25 = v31;
    }

    else
    {
      v26 = v31;
      sub_1AB45F594();

      swift_willThrow();
    }
  }
}

uint64_t sub_1AB02E4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;

  result = sub_1AB3620A8(a1, a2, v5, v21, v20);
  if (!v4)
  {
    v10 = v21[0];
    if (v21[0])
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v10;
      *(inited + 24) = 0;
      sub_1AB02E720(a3);
      while (1)
      {
        v12 = *(inited + 16);
        v13 = sqlite3_step(v12);
        if (qword_1ED4D0C30 != -1)
        {
          swift_once();
        }

        v14 = qword_1ED4D3ED8;
        if (!*(qword_1ED4D3ED8 + 16))
        {
          break;
        }

        sub_1AB4620A4();
        sub_1AB4620D4();
        v15 = sub_1AB462104();
        v16 = -1 << *(v14 + 32);
        v17 = v15 & ~v16;
        if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          break;
        }

        v18 = ~v16;
        while (*(*(v14 + 48) + 4 * v17) != v13)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        if (v13 != 100)
        {
          swift_setDeallocating();
          sqlite3_finalize(v12);
        }
      }

LABEL_14:
      sub_1AB1F60B4();
      swift_allocError();
      *v19 = v13;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      sqlite3_finalize(v12);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AB02E720(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 16);
  result = sqlite3_bind_parameter_count(*(v3 + 16));
  if (v5 == result)
  {
    if (v5)
    {
      v7 = 0;
      v8 = a1 + 32;
      do
      {
        v19 = v7;
        result = sub_1AB05A4E4(v8 + 40 * v7, &v20);
        if (v22 == 1)
        {
          break;
        }

        v25 = v20;
        v26 = v21;
        v27 = v22;
        v9 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        if (v9 < 0xFFFFFFFF80000000)
        {
          goto LABEL_26;
        }

        if (v9 > 0x7FFFFFFF)
        {
          goto LABEL_27;
        }

        sub_1AB05A4E4(&v25, &v23);
        if (v24)
        {
          sub_1AB0149B0(&v23, &v19);
          v10 = v21;
          v11 = v22;
          __swift_project_boxed_opaque_existential_1Tm(&v19, v21);
          (*(v11 + 8))(v3, v9, v10, v11);
          sub_1AB05A47C(&v25);
          result = __swift_destroy_boxed_opaque_existential_1Tm(&v19);
          if (v2)
          {
            return result;
          }
        }

        else
        {
          sub_1AB05A47C(&v23);
          v12 = sqlite3_bind_null(*(v3 + 16), v9);
          if (qword_1ED4D0C30 != -1)
          {
            swift_once();
          }

          v13 = qword_1ED4D3ED8;
          if (!*(qword_1ED4D3ED8 + 16) || (sub_1AB4620A4(), sub_1AB4620D4(), v14 = sub_1AB462104(), v15 = -1 << *(v13 + 32), v16 = v14 & ~v15, ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0))
          {
LABEL_23:
            sub_1AB1F60B4();
            swift_allocError();
            *v18 = v12;
            *(v18 + 8) = 0;
            *(v18 + 16) = 0;
            swift_willThrow();
            return sub_1AB05A47C(&v25);
          }

          v17 = ~v15;
          while (*(*(v13 + 48) + 4 * v16) != v12)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          result = sub_1AB05A47C(&v25);
        }

        ++v7;
      }

      while (v7 != v5);
    }
  }

  else
  {
    sub_1AB3AC33C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AB02E9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027554;

  return JetPackAssetDiskCache._asset(for:)(a1, a2, a3);
}

uint64_t JetPackAssetDiskCache._asset(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = sub_1AB45FF84();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB02F3B4, 0, 0);
}

void sub_1AB02EB54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*v3 + 16);

  sub_1AB02F9B8(v7, a1, a2, a3);
}

uint64_t sub_1AB02EBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB02EF14, 0, 0);
}

uint64_t sub_1AB02EC24@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int *a4@<X8>)
{
  swift_beginAccess();
  v8 = sqlite3_open_v2(a1, (a2 + 16), a3, 0);
  result = swift_endAccess();
  *a4 = v8;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine29SingleUseClosureEventObserverC5StateOyx_G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AB02ECC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = a3(0, *(v6 + 16) + 1, 1, v6);
    *(a1 + 24) = v6;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    v6 = a3(v8 > 1, v9 + 1, 1, v6);
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = a2;
  *(a1 + 24) = v6;
  swift_endAccess();
}

const char *sub_1AB02EDB4@<X0>(uint64_t *a1@<X0>, const char **a2@<X8>)
{
  result = sub_1AB2EDA74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1AB02EDE0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_1AB02EF14()
{
  v8 = v0;
  v1 = *(v0[3] + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  v0[6] = v1;
  os_unfair_lock_lock((v1 + 24));
  sub_1AB02F0EC((v1 + 16), &v7);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v0[4];

  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1AB05DF60;
  v4 = v0[2];

  return v6(v4);
}

unint64_t sub_1AB02F088()
{
  result = qword_1ED4D13D0;
  if (!qword_1ED4D13D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D13D0);
  }

  return result;
}

uint64_t sub_1AB02F104(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  sub_1AB45F6A4();
  if (qword_1ED4D0C30 != -1)
  {
    swift_once();
  }

  if (!sub_1AB15AA44(v7, qword_1ED4D3ED8))
  {
    sub_1AB1F60B4();
    swift_allocError();
    *v4 = v7;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    swift_willThrow();
  }

  v5 = sub_1AB45F764();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v2;
}

void sub_1AB02F24C(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a1;
    v5 = *(a2 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_db);
    os_unfair_lock_lock((v5 + 24));
    sub_1AB02EDB4((v5 + 16), &v6);
    os_unfair_lock_unlock((v5 + 24));
    if (!v3)
    {
      *a3 = v6;
    }
  }
}

uint64_t sub_1AB02F310(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for JetPackAsset.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB02F3B4()
{
  v55 = v0;
  if (qword_1ED4D0AF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1AB45FFC4();
  __swift_project_value_buffer(v1, qword_1ED4D0B00);
  sub_1AB45FFA4();
  sub_1AB45FF54();
  v2 = sub_1AB45FFA4();
  v3 = sub_1AB461234();
  if (sub_1AB461314())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v2, v3, v5, "Retrieve Cached Asset", "", v4, 2u);
    MEMORY[0x1AC59F020](v4, -1, -1);
  }

  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 264);
  v9 = *(v0 + 272);

  (*(v9 + 16))(v7, v6, v8);
  sub_1AB460014();
  swift_allocObject();
  v45 = sub_1AB460004();
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 240);
  v11 = *(v0 + 248);
  sub_1AB4622E4();
  v12 = *(v0 + 40);
  v44 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AB4D4720;
  v54[0] = sub_1AB0168A8(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v14._object = 0x80000001AB505150;
  v14._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v0 + 160) = MEMORY[0x1E69E6158];
  *(v0 + 136) = v10;
  *(v0 + 144) = v11;
  sub_1AB01522C(v0 + 136, v0 + 168);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1AB0169C4(v0 + 168, v0 + 96);
  *(v0 + 128) = 0;
  v15 = v54[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1AB0168A8(0, *(v54[0] + 2) + 1, 1, v54[0]);
    v54[0] = v15;
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
  }

  v19 = *(v0 + 248);
  v18 = *(v0 + 256);
  v20 = *(v0 + 240);
  *(v15 + 2) = v17 + 1;
  v21 = &v15[40 * v17];
  v22 = *(v0 + 96);
  v23 = *(v0 + 112);
  v21[64] = *(v0 + 128);
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  v54[0] = v15;
  sub_1AB014AC0(v0 + 136, &unk_1EB437E60);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v13 + 32) = v15;
  Logger.info(_:)(v13, v12, v44);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v25 = (v18 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore);
  v26 = *(v18 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore + 24);
  v27 = *(v18 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1Tm(v25, v26);
  (*(v27 + 16))(&v46, v20, v19, v26, v27);
  v28 = v48;
  if (v48 == 1)
  {
    v29 = *(v0 + 232);
    sub_1AB4622E4();
    v31 = *(v0 + 80);
    v30 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 56), v31);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1AB4D4720;
    *(v0 + 224) = MEMORY[0x1E69E6158];
    *(v0 + 200) = 0xD000000000000026;
    *(v0 + 208) = 0x80000001AB509610;
    *(v33 + 48) = 0u;
    *(v33 + 32) = 0u;
    sub_1AB0169C4(v0 + 200, v33 + 32);
    *(v33 + 64) = 0;
    *(v32 + 32) = v33;
    Logger.info(_:)(v32, v31, v30);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
    v34 = type metadata accessor for JetPackAsset(0);
    (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
  }

  else
  {
    v35 = *(v0 + 232);
    v37 = v51;
    v36 = v52;
    v39 = v49;
    v38 = v50;
    v41 = v46;
    v40 = v47;
    v53 = BYTE4(v46) & 1;
    LODWORD(v54[0]) = v46;
    BYTE4(v54[0]) = BYTE4(v46) & 1;
    v54[1] = v47;
    v54[2] = v48;
    v54[3] = v49;
    v54[4] = v50;
    v54[5] = v51;
    v54[6] = v52;
    sub_1AB05B578(v54, v35);
    sub_1AB05DEFC(v41, v40, v28, v39, v38, v37, v36);
  }

  sub_1AB05DC6C(v45, "Retrieve Cached Asset");

  (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));

  v42 = *(v0 + 8);

  return v42();
}

void sub_1AB02F9B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  v10 = qword_1EB4359C0;

  if (v10 != -1)
  {
    v11 = swift_once();
  }

  v12 = byte_1EB435998;
  if ((byte_1EB435998 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v11);
    os_unfair_lock_lock((v9 + 40));
    sub_1AB2EF31C((v9 + 16));
    if (v4)
    {

      os_unfair_lock_unlock((v9 + 40));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v9 + 40));
  }

  sub_1AB059E8C(a1, a2, a3, a4);
  if ((v12 & 1) == 0)
  {
    os_unfair_lock_lock((v9 + 40));
    v13 = *(v9 + 16);
    if (v13)
    {
      v14 = *(v9 + 24);
      v20 = *(v9 + 16);
      v15 = v13;
      v16 = v14;

      v17 = ProcessAssertion.invalidate()();

      if (v17)
      {
        v18 = *(v9 + 16);
        v19 = *(v9 + 24);
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 0;
        sub_1AB05D770(v18, v19);
      }
    }

    os_unfair_lock_unlock((v9 + 40));
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1AB02FBD0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1AB02FE44(a1, a2);
  return v4;
}

unint64_t sub_1AB02FC38()
{
  result = qword_1EB435710;
  if (!qword_1EB435710)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB435710);
  }

  return result;
}

uint64_t sub_1AB02FCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t)@<X4>, uint64_t (*a6)(uint64_t, uint64_t)@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  v11 = a5(0, a4);

  v12 = a6(a2, a3);
  a7[4] = v11;

  a7[1] = v12;
  return result;
}

uint64_t BaseObjectGraph.__allocating_init(name:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 16);
  v9 = sub_1AB014B20();
  v11 = MEMORY[0x1AC59B670](v8, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v9);
  sub_1AB014B88(a3);

  return (*(v4 + 96))(a1, a2, &v11);
}

uint64_t sub_1AB02FE44(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DependencyCell.ObjectState();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v11 - v7);
  *v8 = a1;
  v8[1] = a2;
  swift_storeEnumTagMultiPayload();
  v9 = sub_1AB02FFC0();
  (*(v6 + 8))(v8, v5);
  *(v2 + 16) = v9;
  return v2;
}

unint64_t sub_1AB02FF48()
{
  result = sub_1AB02FC38();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AB02FFC0()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1AB461704();
  return sub_1AB4616F4();
}

uint64_t sub_1AB03003C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1AB0300F4(uint64_t *a1)
{
  v2 = *v1;
  v10 = v1[2];
  v3 = *a1;
  v4 = v2;
  sub_1AB0165C4((a1 + 1), v8);

  sub_1AB03022C(v8, v3, v9);
  sub_1AB014AC0(v9, &unk_1EB437E60);
  swift_beginAccess();
  v5 = v1[4];
  *&v8[0] = v1[3];
  *(&v8[0] + 1) = v5;

  MEMORY[0x1AC59BA20](2108192, 0xE300000000000000);
  v6 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v6);

  return (*(v4 + 96))(*&v8[0], *(&v8[0] + 1), &v10);
}

_OWORD *sub_1AB03022C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_1AB016558(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_1AB01A340(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_1AB016558(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_1AB461FC4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_1AB01A034();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    result = sub_1AB030360(v11, a2, a1, v10);
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = 32 * v11;
  sub_1AB014B78((v10[7] + 32 * v11), a3);
  result = sub_1AB014B78(a1, (v10[7] + v18));
LABEL_11:
  *v5 = v10;
  return result;
}

_OWORD *sub_1AB030360(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1AB014B78(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1AB030404(void *a1, void (*a2)(uint64_t, uint64_t (*)@<X0>(void *a1@<X0>, void *a2@<X8>), void, uint64_t, void *))
{
  v5 = v2[2];
  v6 = a1[2];
  v7 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = v5;
  a2(v6, sub_1AB030994, 0, isUniquelyReferenced_nonNull_native, v15);

  v9 = v15[0];

  swift_beginAccess();
  v10 = v2[4];
  v16 = v2[3];
  v17 = v10;

  MEMORY[0x1AC59BA20](2108192, 0xE300000000000000);
  swift_beginAccess();
  v11 = a1[3];
  v12 = a1[4];

  MEMORY[0x1AC59BA20](v11, v12);

  v13 = v16;
  v16 = v9;
  return (*(v7 + 96))(v13, v17, &v16);
}

unint64_t sub_1AB030578(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v40 = a1;
  v41 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v42 = v8;
  v43 = 0;
  v44 = v11 & v9;
  v45 = a2;
  v46 = a3;

  sub_1AB030848(&v38);
  v12 = v38;
  if (!v38)
  {
    goto LABEL_25;
  }

  sub_1AB014B78(v39, v37);
  v13 = *a5;
  result = sub_1AB016558(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1AB01A340(v19, a4 & 1);
    result = sub_1AB016558(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1AB461FC4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    sub_1AB01A034();
    result = v24;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = (v22[7] + 32 * result);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    sub_1AB014B78(v37, v23);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_1AB014B78(v37, (v22[7] + 32 * result));
  v25 = v22[2];
  v18 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v18)
  {
    v22[2] = v26;
LABEL_15:
    sub_1AB030848(&v38);
    v12 = v38;
    if (v38)
    {
      v20 = 1;
      do
      {
        sub_1AB014B78(v39, v37);
        v28 = *a5;
        result = sub_1AB016558(v12);
        v30 = v28[2];
        v31 = (v29 & 1) == 0;
        v18 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v29;
        if (v28[3] < v32)
        {
          sub_1AB01A340(v32, 1);
          result = sub_1AB016558(v12);
          if ((a4 & 1) != (v33 & 1))
          {
            goto LABEL_8;
          }
        }

        v34 = *a5;
        if (a4)
        {
          v27 = (v34[7] + 32 * result);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          sub_1AB014B78(v37, v27);
        }

        else
        {
          v34[(result >> 6) + 8] |= 1 << result;
          *(v34[6] + 8 * result) = v12;
          result = sub_1AB014B78(v37, (v34[7] + 32 * result));
          v35 = v34[2];
          v18 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v34[2] = v36;
        }

        sub_1AB030848(&v38);
        v12 = v38;
      }

      while (v38);
    }

LABEL_25:
    sub_1AB0309A4();
  }

LABEL_27:
  __break(1u);
  return result;
}

_OWORD *sub_1AB030848@<X0>(uint64_t a1@<X8>)
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
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_1AB0165C4(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    result = sub_1AB014B78(&v18, (v21 + 8));
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_1AB014AC0(&v18, &qword_1EB43B668);
    }

    else
    {
      *(a1 + 32) = 0;
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
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
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

uint64_t sub_1AB0309C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB030A14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438920);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB434938 = result;
  return result;
}

uint64_t sub_1AB030A78()
{
  v0 = sub_1AB45FFC4();
  __swift_allocate_value_buffer(v0, qword_1EB46C230);
  __swift_project_value_buffer(v0, qword_1EB46C230);
  return sub_1AB45FFB4();
}

uint64_t sub_1AB030AF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BAB8);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB46C208 = result;
  return result;
}

uint64_t sub_1AB030B7C(int64x2_t *a1)
{
  v13 = *a1;
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v14 + 16);
  v2 = 32;
  do
  {
    if (!v1)
    {
    }

    v3 = vmovn_s64(vceqq_s64(*(v14 + v2), v13));
    v2 += 16;
    --v1;
  }

  while ((v3.i32[0] & v3.i32[1] & 1) == 0);

  sub_1AB4622E4();
  v4 = v14;
  v5 = *(v14 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1AB17791C(0, v5, 0);
    v6 = v15;
    v7 = *(v15 + 16);
    v8 = 40;
    do
    {
      v9 = *(v4 + v8);
      v10 = *(v15 + 24);
      if (v7 >= v10 >> 1)
      {
        sub_1AB17791C((v10 > 1), v7 + 1, 1);
      }

      *(v15 + 16) = v7 + 1;
      *(v15 + 8 * v7 + 32) = v9;
      v8 += 16;
      ++v7;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1AB157E60();
  swift_allocError();
  *v12 = v6;
  return swift_willThrow();
}

unint64_t sub_1AB030D2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1AB030DF8(v11, 0, 0, 1, a1, a2);
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
    sub_1AB0165C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1AB030DF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1AB033158(a5, a6);
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
    result = sub_1AB461714();
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

void *sub_1AB030F04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439DE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1AB030F78()
{
  result = qword_1EB433700;
  if (!qword_1EB433700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433700);
  }

  return result;
}

void *sub_1AB030FCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = a1;
  sub_1AB460184();
  v2[3] = sub_1AB460154();
  v5 = sub_1AB031150(a2);

  v6 = sub_1AB03148C(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF40);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  v3[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF48);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = 0;
  v3[6] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF50);
  swift_allocObject();
  v3[4] = sub_1AB03356C();
  return v3;
}

char *sub_1AB031130(char *a1, int64_t a2, char a3)
{
  result = sub_1AB03136C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AB031150(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1AB031130(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1AB4614F4();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 8 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1AB031130((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1AB031480(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1AB031480(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
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
  return result;
}

char *sub_1AB03136C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1AB031480(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1AB03148C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AB031500();
  result = MEMORY[0x1AC59C180](v2, &type metadata for StartUpPerformanceEvent.RawCheckpoint, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1AB0315AC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1AB031500()
{
  result = qword_1EB432F30;
  if (!qword_1EB432F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432F30);
  }

  return result;
}

unint64_t sub_1AB031558()
{
  result = qword_1EB432F28;
  if (!qword_1EB432F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432F28);
  }

  return result;
}

uint64_t sub_1AB0315AC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AB4620A4();
  if (a2)
  {
    MEMORY[0x1AC59D3F0](0);
    v6 = a2;
  }

  else
  {
    v6 = 1;
  }

  MEMORY[0x1AC59D3F0](v6);
  v7 = sub_1AB462104();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1AB03178C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
    goto LABEL_12;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(*(v5 + 48) + 8 * v9);
    if (v11)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_10;
    }

LABEL_7:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v11 != a2)
  {
    goto LABEL_7;
  }

LABEL_10:
  result = 0;
LABEL_12:
  *a1 = a2;
  return result;
}

Swift::Void __swiftcall StartUpPerformanceEvent.start()()
{
  if (!sub_1AB0318FC())
  {

    sub_1AB412AA4("JetEngine/StartUpPerformanceEvent.swift", 0x27uLL, 2, 0x89uLL);
  }
}

void *static StartUpPerformanceEvent.forBootstrap(domain:)(uint64_t a1)
{
  v2 = sub_1AB031C1C(&unk_1F1FF4320);
  swift_allocObject();
  return sub_1AB030FCC(a1, v2);
}

uint64_t sub_1AB03178C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_1AB2484C0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1AB2456A0();
      a2 = v7;
      goto LABEL_18;
    }

    sub_1AB246D54();
  }

  v8 = *v3;
  sub_1AB4620A4();
  if (v4)
  {
    MEMORY[0x1AC59D3F0](0);
    v9 = v4;
  }

  else
  {
    v9 = 1;
  }

  MEMORY[0x1AC59D3F0](v9);
  result = sub_1AB462104();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      if (v12)
      {
        if (v12 == v4)
        {
LABEL_17:
          result = sub_1AB461FB4();
          __break(1u);
          break;
        }
      }

      else if (!v4)
      {
        goto LABEL_17;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

BOOL sub_1AB0318FC()
{
  v1 = *(v0 + 48);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  if (*(v1 + 16))
  {
    os_unfair_lock_unlock((v1 + 20));
  }

  else
  {
    *(v1 + 16) = 1;
    os_unfair_lock_unlock((v1 + 20));

    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v3 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D4720;
    v6 = MEMORY[0x1E69E6158];
    v19 = MEMORY[0x1E69E6158];
    v16 = 0xD00000000000001ALL;
    v17 = 0x80000001AB50E130;
    *(v5 + 48) = 0u;
    *(v5 + 32) = 0u;
    sub_1AB0169C4(&v16, v5 + 32);
    *(v5 + 64) = 0;
    *(v4 + 32) = v5;
    v7 = sub_1AB461094();
    if (os_log_type_enabled(v3, v7))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v8 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v8[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v8 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v10 = swift_allocObject();
      *(v10 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v16 = v4;
      v17 = sub_1AB01A8D8;
      v18 = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v11 = sub_1AB460484();
      v13 = v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1AB4D4720;
      *(v14 + 56) = v6;
      *(v14 + 64) = sub_1AB016854();
      *(v14 + 32) = v11;
      *(v14 + 40) = v13;
      sub_1AB45FF14();
    }

    else
    {
    }

    sub_1AB460164();
  }

  return v2 == 0;
}

uint64_t sub_1AB031C1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437620);
    v3 = sub_1AB4615A4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_1AB4620A4();
      if (v10)
      {
        MEMORY[0x1AC59D3F0](0);
        v11 = v10;
      }

      else
      {
        v11 = 1;
      }

      MEMORY[0x1AC59D3F0](v11);
      result = sub_1AB462104();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        do
        {
          v19 = *(v18 + 8 * v14);
          if (v19)
          {
            if (v19 == v10)
            {
              goto LABEL_5;
            }
          }

          else if (!v10)
          {
            goto LABEL_5;
          }

          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
        }

        while ((v16 & (1 << v14)) != 0);
      }

      *(v5 + 8 * v15) = v16 | v17;
      *(v18 + 8 * v14) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        break;
      }

      *(v3 + 16) = v9;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1AB031D8C()
{

  sub_1AB033004(&v9, v1);
  v2 = v9;
  v3 = sub_1AB030B7C(&v9);
  v4 = *(v0 + 16);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v0;
  v8 = v2;
  type metadata accessor for DependencyCell.ObjectState();

  sub_1AB01A1F0(sub_1AB032584, &v6, v4);
}

uint64_t sub_1AB031FA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a3;
  v53 = a4;
  v8 = *a2;
  v9 = sub_1AB45FF84();
  tv_nsec = *(v9 - 8);
  tv_sec = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v49 - v13;
  v15 = *(v8 + 80);
  v16 = type metadata accessor for DependencyCell.ObjectState();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v49 - v17);
  v20 = *(v19 + 16);
  v54 = a1;
  v20(v18, a1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(v15 - 8) + 32))(a5, v18, v15);
  }

  v56 = v15;
  v22 = v18[1];
  v49[0] = *v18;
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v23 = sub_1AB45FFC4();
  __swift_project_value_buffer(v23, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v24 = sub_1AB45FFA4();
  v25 = sub_1AB461234();
  v26 = sub_1AB461314();
  v49[1] = a5;
  v49[2] = v5;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v55.tv_sec = v28;
    *v27 = 136315138;
    v29 = sub_1AB462314();
    v31 = sub_1AB030D2C(v29, v30, &v55.tv_sec);

    *(v27 + 4) = v31;
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v24, v25, v32, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1AC59F020](v28, -1, -1);
    MEMORY[0x1AC59F020](v27, -1, -1);
  }

  v34 = tv_nsec;
  v33 = tv_sec;
  (*(tv_nsec + 16))(v12, v14, tv_sec);
  sub_1AB460014();
  swift_allocObject();
  v35 = sub_1AB460004();
  (*(v34 + 8))(v14, v33);
  static MonotonicTime.now.getter(&v55);
  tv_nsec = v55.tv_nsec;
  tv_sec = v55.tv_sec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v36 = v55.tv_sec;
  started = type metadata accessor for StartUpPerformanceEvent();
  v38 = v56;
  if (v56 == started)
  {
    v41 = 0;
    v40 = 0;
  }

  else
  {
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v55.tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    if (v40)
    {

      v41 = sub_1AB043384(v38);

      if (v41)
      {

        sub_1AB460164();
      }
    }

    else
    {
      v41 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 16) = 0;
  v55.tv_sec = v42;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v44 = v49[0];
  v49[-14] = v56;
  v49[-13] = v44;
  v46 = v52;
  v45 = v53;
  v49[-12] = v22;
  v49[-11] = v46;
  v49[-10] = v45;
  v49[-9] = v41;
  v47 = v54;
  v49[-8] = v40;
  v49[-7] = v47;
  v48 = tv_nsec;
  v49[-6] = tv_sec;
  v49[-5] = v48;
  v49[-4] = v35;
  v49[-3] = v43;
  v49[-2] = v36;
  sub_1AB4622F4();
}

void sub_1AB0325E8(uint64_t a1@<X0>, uint64_t a2@<X1>, __darwin_time_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v49 = a6;
  v50 = a8;
  v47 = a1;
  v48 = a2;
  v19 = sub_1AB45FFD4();
  v45 = *(v19 - 8);
  v46 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v51 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1AB45FF84();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1AB460134();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55.tv_sec = a3;
  v55.tv_nsec = a4;
  v26 = v52;
  sub_1AB032B18(v47, v48, &v55.tv_sec);
  v52 = v26;
  if (a5)
  {
    (*(v23 + 104))(v25, *MEMORY[0x1E6977AC8], v22);
    sub_1AB460174();
    (*(v23 + 8))(v25, v22);
  }

  if (v49)
  {
    v55.tv_sec = swift_getDynamicType();
    StartUpPerformanceEvent.record(checkpoint:)(&v55.tv_sec);
  }

  v27 = type metadata accessor for DependencyCell.ObjectState();
  (*(*(v27 - 8) + 8))(a7, v27);
  (*(*(a14 - 8) + 16))(a7, a9, a14);
  swift_storeEnumTagMultiPayload();
  static MonotonicTime.now.getter(&v55);
  tv_sec = v55.tv_sec;
  tv_nsec = v55.tv_nsec;
  v30 = v51;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v31 = tv_nsec / *&qword_1ED4D1F90 + tv_sec;
  v32 = a10 / *&qword_1ED4D1F90 + v50;
  v33 = v53;
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v34 = v31 - v32;
  v35 = sub_1AB45FFC4();
  __swift_project_value_buffer(v35, qword_1EB46C230);

  v36 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v37 = sub_1AB461224();

  if (sub_1AB461314())
  {

    sub_1AB460024();

    v39 = v45;
    v38 = v46;
    if ((*(v45 + 88))(v30, v46) == *MEMORY[0x1E69E93E8])
    {
      v40 = 0;
      v41 = "[Error] Interval already ended";
    }

    else
    {
      (*(v39 + 8))(v30, v38);
      v41 = "selfTime=%f";
      v40 = 1;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    *(v42 + 1) = v40;
    *(v42 + 2) = 2048;
    os_unfair_lock_lock((a12 + 24));
    v43 = *(a12 + 16);
    os_unfair_lock_unlock((a12 + 24));
    *(v42 + 4) = v34 - v43;
    v44 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v36, v37, v44, "MakeDependency", v41, v42, 0xCu);
    MEMORY[0x1AC59F020](v42, -1, -1);
  }

  (*(v54 + 8))(v33, v56);
  os_unfair_lock_lock((a13 + 24));
  *(a13 + 16) = v34 + *(a13 + 16);
  os_unfair_lock_unlock((a13 + 24));
}

uint64_t sub_1AB032B18(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *a3;
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v3 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AB033054(0, *(v8 + 16) + 1, 1, v8);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1AB033054((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  *&v3[16 * v5 + 32] = v7;
  sub_1AB4622F4();
}

uint64_t BaseObjectGraph._inject<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1AB461354();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19[-v9];
  v11 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  BaseObjectGraph._injectIfAvailable<A>(_:)();
  if ((*(v11 + 48))(v10, 1, a1) == 1)
  {
    (*(v7 + 8))(v10, v6);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15 = BaseObjectGraph._downcast<A>(to:)(AssociatedTypeWitness, AssociatedTypeWitness);
    v16 = MEMORY[0x1EEE9AC00](v15);
    *&v19[-32] = a1;
    *&v19[-24] = a2;
    *&v19[-16] = v16;
    (*(*v16 + 104))(sub_1AB06B70C);
  }

  else
  {
    v18 = *(v11 + 32);
    v18(v13, v10, a1);
    return v18(a3, v13, a1);
  }
}

uint64_t type metadata accessor for PageIntentInstrumentation()
{
  result = qword_1EB4350B0;
  if (!qword_1EB4350B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB032F34()
{
  result = type metadata accessor for PageRenderEvent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for PageRenderEvent()
{
  result = qword_1ED4D0210;
  if (!qword_1ED4D0210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB033008@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = *a1;

  v6 = *(v4 + 80);
  *a2 = a1;
  a2[1] = v6;
  return result;
}

char *sub_1AB033054(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A50);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1AB033158(uint64_t a1, unint64_t a2)
{
  v3 = sub_1AB0331A4(a1, a2);
  sub_1AB0332D4(&unk_1F1FF0DE8);
  return v3;
}

uint64_t sub_1AB0331A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_1AB030F04(v5, 0);
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

  result = sub_1AB461714();
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
        v10 = sub_1AB460734();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1AB030F04(v10, 0);
        result = sub_1AB4615B4();
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

uint64_t sub_1AB0332D4(uint64_t result)
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

  result = sub_1AB414AB0(result, v11, 1, v3);
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

void sub_1AB0333C0()
{
  type metadata accessor for MonotonicTimeReference();
  if (v0 <= 0x3F)
  {
    sub_1AB03344C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AB03344C()
{
  if (!qword_1EB434400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
    v0 = sub_1AB461354();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB434400);
    }
  }
}

uint64_t BasicImpressionsTracker.__allocating_init(threshold:)(double a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4383E8);
  swift_allocObject();
  v3 = sub_1AB03356C();
  *(v2 + 24) = a1;
  strcpy((v2 + 32), "data-metrics");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 48) = v3;
  v4 = type metadata accessor for ImpressionsTracking.AppearanceJournal();
  v5 = sub_1AB059040();
  *(v2 + 16) = MEMORY[0x1AC59B670](20, &type metadata for ImpressionMetrics.ID, v4, v5);
  return v2;
}

uint64_t sub_1AB033574()
{
  v11 = sub_1AB461114();
  v1 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v5);
  v10[1] = sub_1AB015664();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  sub_1AB4610D4();
  v12 = v6;
  sub_1AB033808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB033860();
  sub_1AB4614E4();
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v11);
  v7 = sub_1AB461154();
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v7;
  *(v0 + 24) = v8;
  return v0;
}

unint64_t sub_1AB033808()
{
  result = qword_1ED4D1F50;
  if (!qword_1ED4D1F50)
  {
    sub_1AB4610E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1F50);
  }

  return result;
}

unint64_t sub_1AB033860()
{
  result = qword_1ED4D1F68;
  if (!qword_1ED4D1F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB439770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1F68);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1AB033928(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ImpressionMetrics.init(id:fields:custom:commonFields:clickLocationFields:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v19 = a1[6];
  v20 = a1[5];
  v21 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = a4;
  sub_1AB033AB8(a2, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, &v22);

  v16 = v22;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = a4;
  sub_1AB033AB8(a5, sub_1AB06BA1C, 0, v17, &v22);

  result = v22;
  *a6 = v10;
  a6[1] = v11;
  a6[2] = v12;
  a6[3] = v13;
  a6[4] = v14;
  a6[5] = v20;
  a6[6] = v19;
  a6[7] = v16;
  a6[8] = v21;
  a6[9] = result;
  return result;
}

unint64_t sub_1AB033AB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1AB06B8BC(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1AB014B78(v44, v42);
  v14 = *a5;
  result = sub_1AB014DB4(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1AB01AF68(v20, a4 & 1);
    result = sub_1AB014DB4(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1AB461FC4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1AB0676CC();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    sub_1AB014B78(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1AB014B78(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1AB06B8BC(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1AB014B78(v44, v42);
        v32 = *a5;
        result = sub_1AB014DB4(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1AB01AF68(v36, 1);
          result = sub_1AB014DB4(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          sub_1AB014B78(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1AB014B78(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1AB06B8BC(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1AB0309A4();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1AB033DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4380C0);
    v3 = sub_1AB461924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AB014A58(v4, &v13, &qword_1EB4380C8);
      v5 = v13;
      v6 = v14;
      result = sub_1AB014DB4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1AB0149B0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t _s9JetEngine20IntentImplementationPAAE10intentKindSSvg_0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(&v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  return v3;
}

uint64_t sub_1AB033F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1AB0149B0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1AB039FF4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1AB014AC0(a1, &qword_1EB4380A0);
    sub_1AB177708(a2, a3, v9);

    return sub_1AB014AC0(v9, &qword_1EB4380A0);
  }

  return result;
}

uint64_t sub_1AB034068@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1AB01494C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t IntentDispatchOptions.withTimeout(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v7 = &type metadata for IntentDispatchTimeout;
  v6 = v2;
  v5[0] = &type metadata for IntentDispatchTimeout;
  v5[1] = v1;
  v3 = sub_1AB0300F4(v5);
  sub_1AB01667C(v5);
  return v3;
}

void *IntentDispatchOptions.__allocating_init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  result[3] = a1;
  result[4] = a2;
  result[2] = v7;
  return result;
}

uint64_t IntentDispatchOptions.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t IntentDispatchOptions.withPageIntentInstrumentation(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43D2B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  sub_1AB03ABBC(a1, &v8 - v3, type metadata accessor for PageIntentInstrumentation);
  v5 = type metadata accessor for PageIntentInstrumentation();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_1AB03AC24(v4);
  sub_1AB014AC0(v4, qword_1EB43D2B0);
  v6 = sub_1AB03B068(&type metadata for IntentDispatchOptions.BadOrderingCanary);

  return v6;
}

uint64_t sub_1AB0342CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB034334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB03439C(uint64_t a1)
{
  v2 = type metadata accessor for PageIntentInstrumentation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *Promise<A>.init(_:)(void *a1)
{
  v2 = Promise.__allocating_init()();
  v10 = sub_1AB0580E0;
  v11 = v2;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = sub_1AB058080;
  v9 = &block_descriptor_51;
  v3 = _Block_copy(&v6);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v3);
  v10 = j___s9JetEngine7PromiseC6rejectyys5Error_pF_0;
  v11 = v2;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = sub_1AB058108;
  v9 = &block_descriptor_3_1;
  v4 = _Block_copy(&v6);

  [a1 addErrorBlock_];

  _Block_release(v4);
  return v2;
}

BOOL sub_1AB0345BC()
{
  result = sub_1AB0345E0();
  byte_1EB435998 = result;
  return result;
}

BOOL sub_1AB0345E0()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1AB4602F4();
  if (*(v2 + 16))
  {
    sub_1AB014DB4(0xD00000000000001BLL, 0x80000001AB50E220);
    v4 = v3;

    if (v4)
    {
      return 1;
    }
  }

  else
  {
  }

  v6 = sub_1AB460514();
  v7 = NSClassFromString(v6);

  return v7 != 0;
}

uint64_t sub_1AB0346F8()
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

uint64_t sub_1AB0347AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437638);
  result = sub_1AB4615A4();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1AB4620A4();

    sub_1AB460684();
    result = sub_1AB462104();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1AB0349D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[0] = a1;
  v33[3] = &type metadata for PageMetricsFieldsProvider;
  v33[4] = &protocol witness table for PageMetricsFieldsProvider;
  v33[1] = a2;
  sub_1AB01494C(v33, &v28);
  swift_unknownObjectRetain();

  sub_1AB0381B4(&v28, a3, a4, &v30);
  v6 = *(&v31 + 1);
  sub_1AB014AC0(&v30, &qword_1EB4375F8);
  if (v6)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v27 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v9._object = 0x80000001AB500880;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v29 = &type metadata for MetricsFieldExclusionRequest;
    *&v28 = a3;
    *(&v28 + 1) = a4;
    sub_1AB01522C(&v28, v26);
    v30 = 0u;
    v31 = 0u;

    sub_1AB0169C4(v26, &v30);
    v32 = 1;
    v10 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AB0168A8(0, *(v10 + 2) + 1, 1, v10);
      v27 = v10;
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[40 * v12];
    v14 = v30;
    v15 = v31;
    v13[64] = v32;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    v27 = v10;
    sub_1AB014AC0(&v28, &unk_1EB437E60);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v8 + 32) = v27;
    v17 = sub_1AB461094();
    if (os_log_type_enabled(v7, v17))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v18 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v18[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v18 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v20 = swift_allocObject();
      *(v20 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v30 = v8;
      *(&v30 + 1) = sub_1AB0223E4;
      *&v31 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v21 = sub_1AB460484();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1AB016854();
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v33);
}

uint64_t sub_1AB034DC0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_1AB0370A8(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_1AB038B08(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_1AB0370A8(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_1AB461FC4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v13;
    sub_1AB06A9CC();
    v13 = v22;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1AB0347A4(v13, a2, a3, a1, v12);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 40 * v13;
  sub_1AB0149B0((v12[7] + 40 * v13), a4);
  result = sub_1AB0149B0(a1, v12[7] + v20);
LABEL_11:
  *v6 = v12;
  return result;
}

uint64_t sub_1AB034F18(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1AB0149B0(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1AB034F88()
{
  result = qword_1ED4D1468[0];
  if (!qword_1ED4D1468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED4D1468);
  }

  return result;
}

unint64_t sub_1AB034FE0()
{
  result = qword_1ED4D1460;
  if (!qword_1ED4D1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1460);
  }

  return result;
}

uint64_t sub_1AB035034(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1AB461594();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v19 = (*(v4 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      sub_1AB4620A4();
      sub_1AB460684();
      result = sub_1AB462104();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v4 + 32);
    if (v29 >= 64)
    {
      bzero((v4 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v29;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1AB03528C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_1AB4620A4();

    sub_1AB460684();
    v11 = sub_1AB462104();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_1AB461DA4() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x1EEE9AC00](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_1AB0347AC(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_1AB4620A4();

        sub_1AB460684();
        v33 = sub_1AB462104();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_1AB461DA4() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x1E69E7CD0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_1AB227208(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x1AC59F020](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x1AC59F020](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1AB0357BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[3] = &type metadata for IsSignedInFieldProvider;
  v33[4] = &off_1F20046A8;
  v33[0] = swift_allocObject();
  sub_1AB037D34(a1, v33[0] + 16);
  sub_1AB01494C(v33, &v28);
  sub_1AB0381B4(&v28, a2, a3, &v30);
  v6 = *(&v31 + 1);
  sub_1AB014AC0(&v30, &qword_1EB4375F8);
  if (v6)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v27 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v9._object = 0x80000001AB500880;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v29 = &type metadata for MetricsFieldExclusionRequest;
    *&v28 = a2;
    *(&v28 + 1) = a3;
    sub_1AB01522C(&v28, v26);
    v30 = 0u;
    v31 = 0u;

    sub_1AB0169C4(v26, &v30);
    v32 = 1;
    v10 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AB0168A8(0, *(v10 + 2) + 1, 1, v10);
      v27 = v10;
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[40 * v12];
    v14 = v30;
    v15 = v31;
    v13[64] = v32;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    v27 = v10;
    sub_1AB014AC0(&v28, &unk_1EB437E60);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v8 + 32) = v27;
    v17 = sub_1AB461094();
    if (os_log_type_enabled(v7, v17))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v18 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v18[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v18 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v20 = swift_allocObject();
      *(v20 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v30 = v8;
      *(&v30 + 1) = sub_1AB0223E4;
      *&v31 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v21 = sub_1AB460484();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1AB016854();
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v33);
}

uint64_t sub_1AB035BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[3] = &type metadata for StoreFrontHeaderFieldProvider;
  v33[4] = &off_1F2009390;
  v33[0] = swift_allocObject();
  sub_1AB035FB4(a1, v33[0] + 16);
  sub_1AB01494C(v33, &v28);
  sub_1AB0381B4(&v28, a2, a3, &v30);
  v6 = *(&v31 + 1);
  sub_1AB014AC0(&v30, &qword_1EB4375F8);
  if (v6)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v27 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v9._object = 0x80000001AB500880;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v29 = &type metadata for MetricsFieldExclusionRequest;
    *&v28 = a2;
    *(&v28 + 1) = a3;
    sub_1AB01522C(&v28, v26);
    v30 = 0u;
    v31 = 0u;

    sub_1AB0169C4(v26, &v30);
    v32 = 1;
    v10 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AB0168A8(0, *(v10 + 2) + 1, 1, v10);
      v27 = v10;
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[40 * v12];
    v14 = v30;
    v15 = v31;
    v13[64] = v32;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    v27 = v10;
    sub_1AB014AC0(&v28, &unk_1EB437E60);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v8 + 32) = v27;
    v17 = sub_1AB461094();
    if (os_log_type_enabled(v7, v17))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v18 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v18[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v18 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v20 = swift_allocObject();
      *(v20 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v30 = v8;
      *(&v30 + 1) = sub_1AB0223E4;
      *&v31 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v21 = sub_1AB460484();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1AB016854();
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v33);
}

uint64_t sub_1AB03611C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v34 = a2;
  result = sub_1AB461914();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v6 + 56) + 40 * v21);
      if (v34)
      {
        sub_1AB0149B0(v25, v35);
      }

      else
      {
        sub_1AB01494C(v25, v35);
      }

      sub_1AB4620A4();
      sub_1AB460684();
      result = sub_1AB462104();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1AB0149B0(v35, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_34;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero((v6 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v4 = v8;
  return result;
}

uint64_t sub_1AB0363D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a4;
  v39 = a5;
  sub_1AB01494C(v37, &v32);
  sub_1AB0381B4(&v32, a1, a2, &v34);
  v10 = *(&v35 + 1);
  sub_1AB014AC0(&v34, &qword_1EB4375F8);
  if (v10)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v11 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D4720;
    v31 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v13._object = 0x80000001AB500880;
    v13._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v33 = &type metadata for MetricsFieldExclusionRequest;
    *&v32 = a1;
    *(&v32 + 1) = a2;
    sub_1AB01522C(&v32, v30);
    v34 = 0u;
    v35 = 0u;

    sub_1AB0169C4(v30, &v34);
    v36 = 1;
    v14 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB0168A8(0, *(v14 + 2) + 1, 1, v14);
      v31 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v34;
    v19 = v35;
    v17[64] = v36;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v31 = v14;
    sub_1AB014AC0(&v32, &unk_1EB437E60);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    *(v12 + 32) = v31;
    v21 = sub_1AB461094();
    if (os_log_type_enabled(v11, v21))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v22 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v22 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v24 = swift_allocObject();
      *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v34 = v12;
      *(&v34 + 1) = a7;
      *&v35 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v25 = sub_1AB460484();
      v27 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1AB4D4720;
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 64) = sub_1AB016854();
      *(v28 + 32) = v25;
      *(v28 + 40) = v27;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

uint64_t sub_1AB036790(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1AB0291C4(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1AB036810(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v40[3] = &type metadata for ScreenMetricsFieldsProvider;
  v40[4] = &protocol witness table for ScreenMetricsFieldsProvider;
  v12 = swift_allocObject();
  v40[0] = v12;
  *(v12 + 16) = a1;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  sub_1AB01494C(v40, &v35);

  sub_1AB0381B4(&v35, a2, a3, &v37);
  v13 = *(&v38 + 1);
  sub_1AB014AC0(&v37, &qword_1EB4375F8);
  if (v13)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AB4D4720;
    v34 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v16._object = 0x80000001AB500880;
    v16._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v36 = &type metadata for MetricsFieldExclusionRequest;
    *&v35 = a2;
    *(&v35 + 1) = a3;
    sub_1AB01522C(&v35, v33);
    v37 = 0u;
    v38 = 0u;

    sub_1AB0169C4(v33, &v37);
    v39 = 1;
    v17 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
      v34 = v17;
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1AB0168A8((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[40 * v19];
    v21 = v37;
    v22 = v38;
    v20[64] = v39;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    v34 = v17;
    sub_1AB014AC0(&v35, &unk_1EB437E60);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v15 + 32) = v34;
    v24 = sub_1AB461094();
    if (os_log_type_enabled(v14, v24))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v25 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v25[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v25 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v27 = swift_allocObject();
      *(v27 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v37 = v15;
      *(&v37 + 1) = sub_1AB0223E4;
      *&v38 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v28 = sub_1AB460484();
      v30 = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1AB4D4720;
      *(v31 + 56) = MEMORY[0x1E69E6158];
      *(v31 + 64) = sub_1AB016854();
      *(v31 + 32) = v28;
      *(v31 + 40) = v30;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

uint64_t sub_1AB036C30()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB036C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[3] = &type metadata for DsIdFieldProvider;
  v33[4] = &off_1F2006348;
  v33[0] = swift_allocObject();
  sub_1AB035760(a1, v33[0] + 16);
  sub_1AB01494C(v33, &v28);
  sub_1AB034DC0(&v28, a2, a3, &v30);
  v6 = *(&v31 + 1);
  sub_1AB014AC0(&v30, &qword_1EB4375F8);
  if (v6)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v27 = sub_1AB0168A8(0, 33, 0, MEMORY[0x1E69E7CC0]);
    v9._object = 0x80000001AB5008A0;
    v9._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v29 = &type metadata for MetricsFieldInclusionRequest;
    *&v28 = a2;
    *(&v28 + 1) = a3;
    sub_1AB01522C(&v28, v26);
    v30 = 0u;
    v31 = 0u;

    sub_1AB0169C4(v26, &v30);
    v32 = 1;
    v10 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AB0168A8(0, *(v10 + 2) + 1, 1, v10);
      v27 = v10;
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[40 * v12];
    v14 = v30;
    v15 = v31;
    v13[64] = v32;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    v27 = v10;
    sub_1AB014AC0(&v28, &unk_1EB437E60);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v8 + 32) = v27;
    v17 = sub_1AB461094();
    if (os_log_type_enabled(v7, v17))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v18 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v18[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v18 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v20 = swift_allocObject();
      *(v20 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v30 = v8;
      *(&v30 + 1) = sub_1AB0223E4;
      *&v31 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v21 = sub_1AB460484();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1AB016854();
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v33);
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1AB0370C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[0] = a1;
  v33[3] = &type metadata for PageMetricsFieldsProvider;
  v33[4] = &protocol witness table for PageMetricsFieldsProvider;
  v33[1] = a2;
  sub_1AB01494C(v33, &v28);
  swift_unknownObjectRetain();

  sub_1AB034DC0(&v28, a3, a4, &v30);
  v6 = *(&v31 + 1);
  sub_1AB014AC0(&v30, &qword_1EB4375F8);
  if (v6)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v27 = sub_1AB0168A8(0, 33, 0, MEMORY[0x1E69E7CC0]);
    v9._object = 0x80000001AB5008A0;
    v9._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v29 = &type metadata for MetricsFieldInclusionRequest;
    *&v28 = a3;
    *(&v28 + 1) = a4;
    sub_1AB01522C(&v28, v26);
    v30 = 0u;
    v31 = 0u;

    sub_1AB0169C4(v26, &v30);
    v32 = 1;
    v10 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AB0168A8(0, *(v10 + 2) + 1, 1, v10);
      v27 = v10;
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[40 * v12];
    v14 = v30;
    v15 = v31;
    v13[64] = v32;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    v27 = v10;
    sub_1AB014AC0(&v28, &unk_1EB437E60);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v8 + 32) = v27;
    v17 = sub_1AB461094();
    if (os_log_type_enabled(v7, v17))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v18 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v18[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v18 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v20 = swift_allocObject();
      *(v20 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v30 = v8;
      *(&v30 + 1) = sub_1AB0223E4;
      *&v31 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v21 = sub_1AB460484();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1AB016854();
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v33);
}

uint64_t sub_1AB0374D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40[3] = &type metadata for ClickLocationMetricsFieldsProvider;
  v40[4] = &off_1F2010F90;
  v12 = swift_allocObject();
  v40[0] = v12;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  sub_1AB01494C(v40, &v35);

  sub_1AB034DC0(&v35, a5, a6, &v37);
  v13 = *(&v38 + 1);
  sub_1AB014AC0(&v37, &qword_1EB4375F8);
  if (v13)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AB4D4720;
    v34 = sub_1AB0168A8(0, 33, 0, MEMORY[0x1E69E7CC0]);
    v16._object = 0x80000001AB5008A0;
    v16._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v36 = &type metadata for MetricsFieldInclusionRequest;
    *&v35 = a5;
    *(&v35 + 1) = a6;
    sub_1AB01522C(&v35, v33);
    v37 = 0u;
    v38 = 0u;

    sub_1AB0169C4(v33, &v37);
    v39 = 1;
    v17 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
      v34 = v17;
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1AB0168A8((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[40 * v19];
    v21 = v37;
    v22 = v38;
    v20[64] = v39;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    v34 = v17;
    sub_1AB014AC0(&v35, &unk_1EB437E60);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v15 + 32) = v34;
    v24 = sub_1AB461094();
    if (os_log_type_enabled(v14, v24))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v25 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v25[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v25 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v27 = swift_allocObject();
      *(v27 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v37 = v15;
      *(&v37 + 1) = sub_1AB0223E4;
      *&v38 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v28 = sub_1AB460484();
      v30 = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1AB4D4720;
      *(v31 + 56) = MEMORY[0x1E69E6158];
      *(v31 + 64) = sub_1AB016854();
      *(v31 + 32) = v28;
      *(v31 + 40) = v30;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

uint64_t sub_1AB0378E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB037954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[3] = &type metadata for EventVersionFieldProvider;
  v32[4] = &off_1F20182A8;
  v32[0] = a1;
  sub_1AB01494C(v32, &v27);

  sub_1AB0381B4(&v27, a2, a3, &v29);
  v5 = *(&v30 + 1);
  sub_1AB014AC0(&v29, &qword_1EB4375F8);
  if (v5)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v6 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    v26 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001AB500880;
    v8._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v28 = &type metadata for MetricsFieldExclusionRequest;
    *&v27 = a2;
    *(&v27 + 1) = a3;
    sub_1AB01522C(&v27, v25);
    v29 = 0u;
    v30 = 0u;

    sub_1AB0169C4(v25, &v29);
    v31 = 1;
    v9 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
      v26 = v9;
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v29;
    v14 = v30;
    v12[64] = v31;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v26 = v9;
    sub_1AB014AC0(&v27, &unk_1EB437E60);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v7 + 32) = v26;
    v16 = sub_1AB461094();
    if (os_log_type_enabled(v6, v16))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v17 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v29 = v7;
      *(&v29 + 1) = sub_1AB0223E4;
      *&v30 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v20 = sub_1AB460484();
      v22 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D4720;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1AB016854();
      *(v23 + 32) = v20;
      *(v23 + 40) = v22;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v32);
}

uint64_t sub_1AB037DA0()
{
  v0 = sub_1AB028F9C(&unk_1F1FF2B60);
  result = sub_1AB0360C8(&unk_1F1FF2B80);
  qword_1ED4D3ED0 = v0;
  return result;
}

uint64_t sub_1AB037DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38[3] = a6;
  v38[4] = a7;
  v38[0] = a1;
  v38[1] = a2;
  sub_1AB01494C(v38, &v33);

  swift_unknownObjectRetain();
  sub_1AB0381B4(&v33, a3, a4, &v35);
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
    v32 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v14._object = 0x80000001AB500880;
    v14._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v34 = &type metadata for MetricsFieldExclusionRequest;
    *&v33 = a3;
    *(&v33 + 1) = a4;
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
      *(&v35 + 1) = a9;
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

uint64_t sub_1AB0381B4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_1AB0370A8(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_1AB0370B0(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_1AB0370A8(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_1AB461FC4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v13;
    sub_1AB06983C();
    v13 = v22;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1AB0347A4(v13, a2, a3, a1, v12);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 40 * v13;
  sub_1AB0149B0((v12[7] + 40 * v13), a4);
  result = sub_1AB0149B0(a1, v12[7] + v20);
LABEL_11:
  *v6 = v12;
  return result;
}

unint64_t sub_1AB038308(uint64_t a1, uint64_t a2)
{
  sub_1AB4620A4();
  sub_1AB460684();
  v4 = sub_1AB462104();
  return sub_1AB014E2C(a1, a2, v4);
}

uint64_t sub_1AB03837C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40[3] = a5;
  v40[4] = a6;
  v40[0] = a1;
  sub_1AB01494C(v40, &v35);
  v12 = a1;
  sub_1AB0381B4(&v35, a2, a3, &v37);
  v13 = *(&v38 + 1);
  sub_1AB014AC0(&v37, &qword_1EB4375F8);
  if (v13)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AB4D4720;
    v34 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v16._object = 0x80000001AB500880;
    v16._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v36 = &type metadata for MetricsFieldExclusionRequest;
    *&v35 = a2;
    *(&v35 + 1) = a3;
    sub_1AB01522C(&v35, v33);
    v37 = 0u;
    v38 = 0u;

    sub_1AB0169C4(v33, &v37);
    v39 = 1;
    v17 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
      v34 = v17;
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1AB0168A8((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[40 * v19];
    v21 = v37;
    v22 = v38;
    v20[64] = v39;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    v34 = v17;
    sub_1AB014AC0(&v35, &unk_1EB437E60);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v15 + 32) = v34;
    v24 = sub_1AB461094();
    if (os_log_type_enabled(v14, v24))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v25 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v25[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v25 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v27 = swift_allocObject();
      *(v27 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v37 = v15;
      *(&v37 + 1) = a8;
      *&v38 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v28 = sub_1AB460484();
      v30 = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1AB4D4720;
      *(v31 + 56) = MEMORY[0x1E69E6158];
      *(v31 + 64) = sub_1AB016854();
      *(v31 + 32) = v28;
      *(v31 + 40) = v30;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

uint64_t sub_1AB038740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38[3] = a5;
  v38[4] = a6;
  v38[0] = a1;
  sub_1AB01494C(v38, &v33);

  sub_1AB0381B4(&v33, a2, a3, &v35);
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
    v32 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v14._object = 0x80000001AB500880;
    v14._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v34 = &type metadata for MetricsFieldExclusionRequest;
    *&v33 = a2;
    *(&v33 + 1) = a3;
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
      *(&v35 + 1) = a8;
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

uint64_t sub_1AB038B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[3] = type metadata accessor for PageHistoryFieldProvider();
  v33[4] = &protocol witness table for PageHistoryFieldProvider;
  v33[0] = a1;
  sub_1AB01494C(v33, &v28);

  sub_1AB0381B4(&v28, a2, a3, &v30);
  v6 = *(&v31 + 1);
  sub_1AB014AC0(&v30, &qword_1EB4375F8);
  if (v6)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v27 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v9._object = 0x80000001AB500880;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v29 = &type metadata for MetricsFieldExclusionRequest;
    *&v28 = a2;
    *(&v28 + 1) = a3;
    sub_1AB01522C(&v28, v26);
    v30 = 0u;
    v31 = 0u;

    sub_1AB0169C4(v26, &v30);
    v32 = 1;
    v10 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AB0168A8(0, *(v10 + 2) + 1, 1, v10);
      v27 = v10;
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[40 * v12];
    v14 = v30;
    v15 = v31;
    v13[64] = v32;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    v27 = v10;
    sub_1AB014AC0(&v28, &unk_1EB437E60);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v8 + 32) = v27;
    v17 = sub_1AB461094();
    if (os_log_type_enabled(v7, v17))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v18 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v18[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v18 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v20 = swift_allocObject();
      *(v20 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v30 = v8;
      *(&v30 + 1) = sub_1AB0223E4;
      *&v31 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v21 = sub_1AB460484();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1AB016854();
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v33);
}

uint64_t sub_1AB038EFC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a5;
  v40 = a6;
  v38[0] = a1;
  sub_1AB01494C(v38, &v33);
  sub_1AB034DC0(&v33, a2, a3, &v35);
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
    *&v33 = a2;
    *(&v33 + 1) = a3;
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
      *(&v35 + 1) = a8;
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

double JEGestaltGetMainScreenSize()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0 && (v2 = [v0 bytes], v3 = objc_msgSend(v1, "length"), v3 >= 0x10))
  {
    v4 = *(v2 + (v3 & 0xFFFFFFFFFFFFFFF0) - 16);
  }

  else
  {
    v4 = MGGetSInt32Answer();
    MGGetSInt32Answer();
  }

  return v4;
}

unint64_t sub_1AB039354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4381F8);
    v3 = sub_1AB461924();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1AB038308(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AB0394F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[3] = &type metadata for PageRenderClientIdentifierFieldsProvider;
  v33[4] = &off_1F2003498;
  v33[0] = swift_allocObject();
  sub_1AB039940(a1, v33[0] + 16);
  sub_1AB01494C(v33, &v28);
  sub_1AB0381B4(&v28, a2, a3, &v30);
  v6 = *(&v31 + 1);
  sub_1AB014AC0(&v30, &qword_1EB4375F8);
  if (v6)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v27 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v9._object = 0x80000001AB500880;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v29 = &type metadata for MetricsFieldExclusionRequest;
    *&v28 = a2;
    *(&v28 + 1) = a3;
    sub_1AB01522C(&v28, v26);
    v30 = 0u;
    v31 = 0u;

    sub_1AB0169C4(v26, &v30);
    v32 = 1;
    v10 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AB0168A8(0, *(v10 + 2) + 1, 1, v10);
      v27 = v10;
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[40 * v12];
    v14 = v30;
    v15 = v31;
    v13[64] = v32;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    v27 = v10;
    sub_1AB014AC0(&v28, &unk_1EB437E60);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v8 + 32) = v27;
    v17 = sub_1AB461094();
    if (os_log_type_enabled(v7, v17))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v18 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v18[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v18 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v20 = swift_allocObject();
      *(v20 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v30 = v8;
      *(&v30 + 1) = sub_1AB0223E4;
      *&v31 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v21 = sub_1AB460484();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1AB016854();
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v33);
}

uint64_t sub_1AB0398EC()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t Lazy.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1AB461354();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  (*(v5 + 16))(&v9 - v6, a1, v4);
  sub_1AB039A9C(v7, v4, &v10);
  result = (*(v5 + 8))(a1, v4);
  *a2 = v10;
  return result;
}

uint64_t sub_1AB039A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LazyValueWrapper.State();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = *(a2 - 8);
  (*(v10 + 16))(&v13 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  v11 = sub_1AB039C08();
  (*(v7 + 8))(v9, v6);
  result = (*(v10 + 8))(a1, a2);
  *a3 = v11;
  return result;
}

uint64_t sub_1AB039C24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Lazy.wrappedValue.setter(uint64_t a1)
{
  sub_1AB039CD8(a1);
  v2 = sub_1AB461354();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1AB039CD8(uint64_t a1)
{
  sub_1AB461354();
  v2 = type metadata accessor for LazyValueWrapper();

  sub_1AB039D58(a1, v2);
}

void sub_1AB039D58(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4[2] = *(a2 + 16);
  v4[3] = a1;
  type metadata accessor for LazyValueWrapper.State();
  sub_1AB01A1F0(sub_1AB039DCC, v4, v3);
}

unint64_t sub_1AB039DE8()
{
  result = sub_1AB02FC38();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1AB015798();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AB039E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LazyValueWrapper.State();
  (*(*(v6 - 8) + 8))(a1, v6);
  (*(*(a3 - 8) + 16))(a1, a2, a3);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB039FF4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AB014DB4(a2, a3);
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
      sub_1AB1D9A58(&qword_1EB4380C0, &unk_1AB4DBC38, sub_1AB1580C0);
      v11 = v19;
      goto LABEL_8;
    }

    sub_1AB03A624(v16, a4 & 1, &qword_1EB4380C0, &unk_1AB4DBC38, sub_1AB1580C0);
    v11 = sub_1AB014DB4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1AB461FC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_1AB0149B0(a1, v22);
  }

  else
  {
    sub_1AB034F18(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1AB03A194(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  sub_1AB03A978(&v43);
  v12 = v44;
  if (!v44)
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1AB1580C0(v45, v42);
  v14 = *a5;
  result = sub_1AB014DB4(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1AB03AAF0(v20, a4 & 1);
    result = sub_1AB014DB4(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1AB461FC4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1AB1D9A30();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = v23[7] + 40 * v24;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    sub_1AB1580C0(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1AB1580C0(v42, v23[7] + 40 * result);
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1AB03A978(&v43);
    v12 = v44;
    if (v44)
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1AB1580C0(v45, v42);
        v32 = *a5;
        result = sub_1AB014DB4(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1AB03AAF0(v36, 1);
          result = sub_1AB014DB4(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = v38[7] + 40 * v30;
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          sub_1AB1580C0(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1AB1580C0(v42, v38[7] + 40 * result);
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1AB03A978(&v43);
        v12 = v44;
      }

      while (v44);
    }

LABEL_25:
    sub_1AB0309A4();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1AB03A4B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t NativeIntentDispatcher.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  v2 = (a1 + 40);
  sub_1AB014AC0(a1 + 40, &qword_1EB439168);
  *v2 = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *a1 = sub_1AB033DC8(MEMORY[0x1E69E7CC0]);
  v3 = type metadata accessor for NoOpIntentCache();
  result = swift_allocObject();
  *(a1 + 32) = v3;
  *(a1 + 8) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine16IntentDispatcher_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t NativeIntentDispatcher.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 24))(a2, a3);
  v8 = v7;
  v11[3] = a2;
  v11[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  return sub_1AB033F98(v11, v6, v8);
}

uint64_t sub_1AB03A624(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_1AB461914();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 40 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_1AB01494C(v27, v38);
      }

      sub_1AB4620A4();
      sub_1AB460684();
      result = sub_1AB462104();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t NativeIntentDispatcher.register(contentsOf:)(uint64_t *a1)
{
  v2 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  sub_1AB03A194(v2, sub_1AB034068, 0, isUniquelyReferenced_nonNull_native, &v5);

  *v1 = v5;
  return result;
}

uint64_t sub_1AB03A978@<X0>(uint64_t a1@<X8>)
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
    sub_1AB01494C(*(v3 + 56) + 40 * v13, v21);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_1AB1580C0(v21, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
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
      v21[1] = v24;
      v21[2] = v25;
      v22 = v26;
      v20(v21);
      return sub_1AB014AC0(v21, &qword_1EB43B658);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
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
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
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

uint64_t sub_1AB03AB54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB03ABBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB03AC24(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43D2B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-1] - v5;
  v7 = type metadata accessor for PageIntentInstrumentation();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(a1, v6, qword_1EB43D2B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1AB014AC0(v6, qword_1EB43D2B0);
    v20 = v1[2];

    DependencyDictionary.remove(dependencyFor:)(v7);
    swift_beginAccess();
    v11 = v1[4];
    v18 = v1[3];
    v19 = v11;

    MEMORY[0x1AC59BA20](2108704, 0xE300000000000000);
    v12 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v12);

    return (*(v3 + 96))(v18, v19, &v20);
  }

  else
  {
    sub_1AB034334(v6, v10, type metadata accessor for PageIntentInstrumentation);
    v17[3] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
    sub_1AB03ABBC(v10, boxed_opaque_existential_0, type metadata accessor for PageIntentInstrumentation);
    v16 = v7;
    v15 = sub_1AB0300F4(&v16);
    sub_1AB03439C(v10);
    sub_1AB01667C(&v16);
    return v15;
  }
}

uint64_t sub_1AB03AEC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t BaseObjectGraph.__allocating_init(_:)(void *a1)
{
  swift_beginAccess();
  v4 = a1[3];
  v3 = a1[4];
  v8 = a1[2];
  v5 = *(v1 + 96);

  v6 = v5(v4, v3, &v8);

  return v6;
}

uint64_t DependencyDictionary.remove(dependencyFor:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1AB016558(a1);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    v9 = *v2;
    *v2 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AB01A034();
      v7 = v9;
    }

    sub_1AB014B78((*(v7 + 56) + 32 * v5), v10);
    sub_1AB0951B0(v5, v7);

    *v2 = v7;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  return sub_1AB014AC0(v10, &unk_1EB437E60);
}

uint64_t sub_1AB03B068(uint64_t a1)
{
  v3 = *v1;
  v8 = v1[2];

  DependencyDictionary.remove(dependencyFor:)(a1);
  swift_beginAccess();
  v6 = v1[3];
  v7 = v1[4];

  MEMORY[0x1AC59BA20](2108704, 0xE300000000000000);
  v4 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v4);

  return (*(v3 + 96))(v6, v7, &v8);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

JetEngine::JSONContext __swiftcall JSONContext.init()()
{
  v1 = v0;
  result.storage._rawValue = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  v1->storage._rawValue = result.storage._rawValue;
  return result;
}

uint64_t JSONContext.addingValue<A>(_:forProperty:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  *a4 = *v4;
  v11[3] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);

  return sub_1AB01AD48(v11, v7, v8);
}

uint64_t static AsyncEvent.defaultScheduler.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1AB015664();
  result = sub_1AB461124();
  a1[3] = v2;
  a1[4] = &protocol witness table for OS_dispatch_queue;
  *a1 = result;
  return result;
}

uint64_t AsyncEvent.addObserver<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v25 = a3;
  v30 = a4;
  v27 = *v5;
  v8 = sub_1AB4601F4();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1AB4601B4();
  v11 = *(v26 - 8);
  v12 = MEMORY[0x1EEE9AC00](v26);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1, a2);
  EventSubscription.init<A>(_:)(v16, a2, aBlock);
  v18 = aBlock[0];
  v27 = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439700);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AB4D4720;
  sub_1AB4601A4();
  aBlock[0] = v19;
  sub_1AB0204F0(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01CB68(&qword_1ED4D1FB0, &qword_1EB438540);
  v20 = v26;
  sub_1AB4614E4();
  v21 = swift_allocObject();
  v22 = v25;
  v21[2] = a2;
  v21[3] = v22;
  v21[4] = v5;
  v21[5] = v18;
  aBlock[4] = sub_1AB06D24C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_6_2;
  v23 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  MEMORY[0x1AC59C480](0, v10, v14, v23);
  _Block_release(v23);
  (*(v28 + 8))(v10, v29);
  (*(v11 + 8))(v14, v20);

  *v30 = v18;
  return result;
}

uint64_t sub_1AB03B6E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t EventSubscription.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConcreteEventObserverBox();
  (*(v6 + 16))(v8, a1, a2);
  v9 = sub_1AB03B82C(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t sub_1AB03B82C(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 120) - 8) + 32))(v2 + *(*v2 + 136), a1);
  return v2;
}

uint64_t sub_1AB03B8D8()
{
  sub_1AB45F764();
  sub_1AB02B518(&qword_1ED4D1D50, MEMORY[0x1E6968FB0]);

  return sub_1AB461C44();
}

uint64_t JetPackFileKeyProvider.keyForIdentifier(_:)(unsigned __int16 a1)
{
  v3 = sub_1AB45F764();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-v11];
  v13 = *v1;
  if (*(v13 + 16) && (v14 = sub_1AB03BBA8(a1), (v15 & 1) != 0))
  {
    (*(v4 + 16))(v12, *(v13 + 56) + *(v4 + 72) * v14, v3);
    (*(v4 + 56))(v12, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v12, 1, 1, v3);
  }

  sub_1AB03BC60(v12, v10);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    v16 = 0;
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    v16 = sub_1AB45F784();
    (*(v4 + 8))(v6, v3);
  }

  sub_1AB03BCD0(v12);
  return v16;
}

unint64_t sub_1AB03BBA8(unsigned __int16 a1)
{
  v3 = MEMORY[0x1AC59D3C0](*(v1 + 40), a1, 2);

  return sub_1AB03BBF0(a1, v3);
}

unint64_t sub_1AB03BBF0(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1AB03BC60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB03BCD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1AB03BD38(char *a1, int64_t a2, char a3)
{
  result = sub_1AB03C158(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AB03BD58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AB017254(a1, a2);
  }

  return a1;
}

JetEngine::JetPackPath __swiftcall JetPackPath.init(_:)(Swift::String a1)
{
  v38 = v1;
  v41[0] = 47;
  v41[1] = 0xE100000000000000;
  v40 = v41;
  result.components._rawValue = sub_1AB021178(0x7FFFFFFFFFFFFFFFLL, 1, sub_1AB021558, v39, a1._countAndFlagsBits, a1._object, v41);
  rawValue = result.components._rawValue;
  v4 = *(result.components._rawValue + 2);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v7 = result.components._rawValue + 56;
    v37 = result.components._rawValue + 56;
    do
    {
      v8 = &v7[32 * v6];
      v9 = v6;
      while (1)
      {
        if (v9 >= rawValue[2])
        {
          __break(1u);
          goto LABEL_33;
        }

        v10 = *(v8 - 3);
        v11 = *(v8 - 2);
        if ((v11 ^ v10) >= 0x4000)
        {
          v12 = *(v8 - 1);
          v13 = *v8;
          v14 = v12 == 46 && v13 == 0xE100000000000000;
          v15 = v14 && v10 >> 16 == 0;
          if (!v15 || v11 >> 16 != 1)
          {
            result.components._rawValue = sub_1AB461C34();
            if ((result.components._rawValue & 1) == 0)
            {
              break;
            }
          }
        }

        ++v9;
        v8 += 32;
        if (v4 == v9)
        {
          goto LABEL_23;
        }
      }

      result.components._rawValue = swift_isUniquelyReferenced_nonNull_native();
      v41[0] = v5;
      if ((result.components._rawValue & 1) == 0)
      {
        result.components._rawValue = sub_1AB03C138(0, v5[2] + 1, 1);
        v5 = v41[0];
      }

      v18 = v5[2];
      v17 = v5[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v21 = v18 + 1;
        v36 = v18;
        result.components._rawValue = sub_1AB03C138((v17 > 1), v18 + 1, 1);
        v18 = v36;
        v19 = v21;
        v5 = v41[0];
      }

      v6 = v9 + 1;
      v5[2] = v19;
      v20 = &v5[4 * v18];
      v20[4] = v10;
      v20[5] = v11;
      v20[6] = v12;
      v20[7] = v13;
      v7 = v37;
    }

    while (v4 - 1 != v9);
  }

LABEL_23:

  v22 = v5[2];
  if (v22)
  {
    v41[0] = MEMORY[0x1E69E7CC0];
    result.components._rawValue = sub_1AB03BD38(0, v22, 0);
    v23 = 0;
    v24 = v41[0];
    v25 = v5 + 7;
    while (v23 < v5[2])
    {
      v26 = *(v25 - 3);
      v27 = *(v25 - 2);
      v28 = *(v25 - 1);
      v29 = *v25;

      v30 = MEMORY[0x1AC59B960](v26, v27, v28, v29);
      v32 = v31;

      v41[0] = v24;
      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        result.components._rawValue = sub_1AB03BD38((v33 > 1), v34 + 1, 1);
        v24 = v41[0];
      }

      ++v23;
      *(v24 + 16) = v34 + 1;
      v35 = v24 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      v25 += 4;
      if (v22 == v23)
      {

        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
LABEL_31:
    *v38 = v24;
  }

  return result;
}

char *sub_1AB03C02C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439D10);
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

char *sub_1AB03C138(char *a1, int64_t a2, char a3)
{
  result = sub_1AB03C02C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AB03C158(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1AB03C264(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  LOBYTE(a2) = v5(v6, v7);

  return a2 & 1;
}

uint64_t sub_1AB03C360()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1AB03C3B4(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    if (qword_1ED4D0B80 != -1)
    {
      result = swift_once();
    }

    v5[2] = v3;
    v5[3] = v2;
    v4 = *(qword_1ED4D3EB0 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v4 + 6);
    sub_1AB0572BC(v5);
    os_unfair_lock_unlock(v4 + 6);
  }

  return result;
}

uint64_t objectdestroy_39Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB03C4FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB03C564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB03C5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1AB03C67C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = sub_1AB45F834();
    sub_1AB03BD58(v4, v6);
    v7 = v8;
  }

  return v7;
}

uint64_t sub_1AB03C714(uint64_t a1, uint64_t a2)
{
  sub_1AB014A58(a2 + 16, v7, &qword_1EB43B7B0);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    v5 = (*(v4 + 8))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_1AB014AC0(v7, &qword_1EB43B7B0);
    return 0;
  }

  return v5;
}

uint64_t JetPackManagedKeyProvider.keyForIdentifier(_:)(int a1)
{
  v55 = a1;
  v1 = sub_1AB45F764();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = 0;
  v7 = 0;
  v61 = 0;
  v58 = "d element incompatible with " & 0x2F00000000000000;
  v56 = 0x80000001AB509AF0;
  v8 = (v2 + 8);
  v60 = xmmword_1AB4D4720;
  v59 = v5;
  while (1)
  {
    v62 = v6;
    v9 = &unk_1F1FF3AF8 + 16 * v7;
    v11 = *(v9 + 4);
    v10 = *(v9 + 5);

    v12 = [v5 defaultManager];
    v13 = sub_1AB460514();
    v14 = [v12 fileExistsAtPath_];

    if (v14)
    {
      break;
    }

LABEL_3:
    v6 = 1;
    v7 = 1;
    if (v62)
    {
      return 0;
    }
  }

  sub_1AB45F634();
  v15 = v61;
  v16 = sub_1AB45F784();
  if (v15)
  {
    if (qword_1ED4D1D90 != -1)
    {
      swift_once();
    }

    v61 = 0;
    v20 = qword_1ED4D1D98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v21 = swift_allocObject();
    *(v21 + 16) = v60;
    v22 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
    if (v58 != 0x2000000000000000)
    {
      v57 = v15;
      v23 = v20;
      v24 = v8;
      v25 = v4;
      v26 = v1;
      v66 = MEMORY[0x1E69E6158];
      v64 = 0xD00000000000001BLL;
      v65 = v56;
      v67 = 0u;
      v68 = 0u;
      sub_1AB0169C4(&v64, &v67);
      v69 = 0;
      v28 = *(v22 + 2);
      v27 = *(v22 + 3);
      if (v28 >= v27 >> 1)
      {
        v22 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v22);
      }

      *(v22 + 2) = v28 + 1;
      v29 = &v22[40 * v28];
      v30 = v67;
      v31 = v68;
      v29[64] = v69;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v1 = v26;
      v4 = v25;
      v8 = v24;
      v20 = v23;
      v15 = v57;
    }

    v66 = MEMORY[0x1E69E6158];
    v64 = v11;
    v65 = v10;
    sub_1AB01522C(&v64, v63);
    v67 = 0u;
    v68 = 0u;
    sub_1AB0169C4(v63, &v67);
    v69 = 0;
    v33 = *(v22 + 2);
    v32 = *(v22 + 3);
    if (v33 >= v32 >> 1)
    {
      v22 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v22);
    }

    *(v22 + 2) = v33 + 1;
    v34 = &v22[40 * v33];
    v35 = v67;
    v36 = v68;
    v34[64] = v69;
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
    sub_1AB0167A8(&v64);
    *(v21 + 32) = v22;
    v37 = sub_1AB461074();
    if (os_log_type_enabled(v20, v37))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v38 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v38[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v38 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v40 = swift_allocObject();
      *(v40 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v67 = v21;
      *(&v67 + 1) = sub_1AB01A8D8;
      *&v68 = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v41 = sub_1AB460484();
      v43 = v42;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v44 = swift_allocObject();
      *(v44 + 16) = v60;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = sub_1AB016854();
      *(v44 + 32) = v41;
      *(v44 + 40) = v43;
      sub_1AB45FF14();
    }

    goto LABEL_22;
  }

  v18 = v16;
  v19 = v17;
  sub_1AB45F564();
  swift_allocObject();
  sub_1AB45F554();
  sub_1AB03CEF4();
  sub_1AB45F544();
  v61 = 0;

  v45 = v67;
  LOWORD(v67) = v55;
  v46 = sub_1AB461C44();
  if (!*(v45 + 16))
  {

    sub_1AB017254(v18, v19);

    goto LABEL_27;
  }

  v48 = sub_1AB014DB4(v46, v47);
  v50 = v49;

  if ((v50 & 1) == 0)
  {

    sub_1AB017254(v18, v19);
LABEL_27:

LABEL_22:
    (*v8)(v4, v1);
    v5 = v59;
    goto LABEL_3;
  }

  v52 = *(v45 + 56) + 16 * v48;
  v53 = *v52;
  sub_1AB017200(*v52, *(v52 + 8));

  sub_1AB017254(v18, v19);
  (*v8)(v4, v1);

  return v53;
}

unint64_t sub_1AB03CEF4()
{
  result = qword_1ED4D0D68;
  if (!qword_1ED4D0D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0D68);
  }

  return result;
}

void *sub_1AB03CF48(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB03D130();
  sub_1AB462224();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438CC0);
    sub_1AB03D184(&qword_1ED4D0C38, sub_1AB066CD4);
    sub_1AB461AC4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

void *sub_1AB03D104@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AB03CF48(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1AB03D130()
{
  result = qword_1ED4D0D80;
  if (!qword_1ED4D0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0D80);
  }

  return result;
}

uint64_t sub_1AB03D184(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB438CC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for PackageDataBlobFormatWriterError(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PackageDataBlobFormatWriterError(unsigned int *a1, int a2)
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

void Promise.reject(_:)(void *a1)
{
  v3 = type metadata accessor for Promise.State();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8 - 8];
  v10 = *(v1 + 2);
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v9, &v1[v11], v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    (*(v4 + 8))(v9, v3);
    os_unfair_lock_unlock(v10 + 4);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_13;
  }

  v13 = *v9;
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v14 = a1;
  (*(v4 + 40))(&v1[v11], v7, v3);
  swift_endAccess();
  os_unfair_lock_unlock(v10 + 4);
  v15 = type metadata accessor for Promise.Observer();
  if (sub_1AB4609F4())
  {
    v16 = 0;
    v17 = v13 + 32;
    while (1)
    {
      v18 = sub_1AB4609D4();
      sub_1AB460974();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = *(v15 - 8);
      (*(v19 + 16))(v22, v17, v15);
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_12;
      }

      sub_1AB03D640(a1, v15);
      (*(v19 + 8))(v22, v15);
      ++v16;
      v17 += 80;
      if (v20 == sub_1AB4609F4())
      {
        goto LABEL_9;
      }
    }

    sub_1AB461644();
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    sub_1AB461884();
    __break(1u);
    return;
  }

LABEL_9:
}

uint64_t sub_1AB03D640(void *a1, uint64_t a2)
{
  v3 = v2;
  (*(*(a2 - 8) + 16))(v21, v3, a2);
  if (v23)
  {
    v6 = v21[0];
    v18[0] = a1;
    v7 = a1;
    v8 = *(a2 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    return sub_1AB2F1D9C(v18, v6, v8, v9);
  }

  else
  {

    v12 = v21[2];
    v11 = v21[3];
    sub_1AB0149B0(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = v11;
    v15[4] = a1;
    v16 = *(v14 + 8);

    v17 = a1;
    v16(sub_1AB03D7D0, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }
}

uint64_t PipelinePhase.init(mapTask:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1AB03D838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v20 = a3;
  v5 = type metadata accessor for Result();
  v6 = sub_1AB461354();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  swift_beginAccess();
  v13 = *a1;
  if (!*a1)
  {
    goto LABEL_5;
  }

  v17 = v3;

  sub_1AB03DB10();
  v14 = *(v5 - 8);
  if ((*(v14 + 48))(v12, 1, v5) != 1)
  {
    (*(v7 + 16))(v10, v12, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      (*(v14 + 8))(v10, v5);
      (*(v7 + 8))(v12, v6);
LABEL_5:
      v19 = v18;
      type metadata accessor for AnyPipelineTask();
      v15 = AnyPipelineTask.run()();
      swift_beginAccess();
      *a1 = v15;

      *v20 = v15;
      return result;
    }

    (*(v14 + 8))(v10, v5);
  }

  *v20 = v13;
  return (*(v7 + 8))(v12, v6);
}

void sub_1AB03DB10()
{
  v1 = *(v0 + 16);
  type metadata accessor for Result();
  v3 = sub_1AB461354();
  v4 = sub_1AB03DE04;
  v5 = v0;
  sub_1AB01A1F0(sub_1AB03DE20, v2, v1);
}

uint64_t sub_1AB03DBBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = type metadata accessor for Promise.State();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v15 - v8);
  v10 = *(v4 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v9, a1 + v10, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    *a2 = *v9;
    v14 = type metadata accessor for Result();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v7 + 8))(v9, v6);
      v12 = type metadata accessor for Result();
      return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
    }

    (*(*(v5 - 8) + 32))(a2, v9, v5);
    v14 = type metadata accessor for Result();
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t sub_1AB03DE48()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t MapPipelineTask.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static Pipeline.start<A>(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for Promise();
  v4 = _s9JetEngine7PromiseC8resolved7toValueACyxGx_tFZ_0(a1);

  return PipelineEntryTask.init(_:)(v4, a2);
}

{
  PipelineEntryTask.init(_:)(a1, a2);
}

uint64_t AnyPipelineTask.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SpecializedPipelineTaskBox();
  (*(v6 + 16))(v8, a1, a2);
  v9 = sub_1AB020A10(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

void *MapPipelineTask.__allocating_init(previous:body:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = *a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t static PipelinePhase.cacheValueIfSuccessful()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;
  v8[5] = v6;

  return PipelinePhase.init(mapTask:)(sub_1AB03E330, v8, a3);
}

uint64_t sub_1AB03E1BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB03E1F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB03E234()
{
  v1 = MEMORY[0x1AC59DDE0]();
  v2 = *(v0 + 24);
  v5 = *(v0 + 16);

  v3 = v2(&v5);

  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_1AB03E2A0(uint64_t a1, void *a2)
{
  sub_1AB03E33C();
  type metadata accessor for Promise();
  withLock<A, B>(_:_:)(a2, sub_1AB03E388);
  return v4;
}

unint64_t sub_1AB03E33C()
{
  result = qword_1ED4D0BE8;
  if (!qword_1ED4D0BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4D0BE8);
  }

  return result;
}

uint64_t sub_1AB03E4CC()
{
  sub_1AB03DB08();
}

void *sub_1AB03E4F4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a5;
  v36 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437860);
  MEMORY[0x1EEE9AC00](v37);
  v13 = (&v34 - v12);
  v14 = sub_1AB45F764();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = a6;
  v50[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v50);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_0, a4, a6);
  type metadata accessor for BaseObjectGraph();
  v19 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    v33 = v19;
    swift_once();
    v19 = v33;
  }

  *&v44 = v19;
  v38 = v19;

  swift_task_localValuePush();
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v20);
  (*(v21 + 8))(v20, v21);
  sub_1AB01494C(a1, v49);
  (*(v15 + 16))(&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14);
  sub_1AB03FFF8(v35, &v44);
  v22 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v23 = v22 + v16;
  v24 = swift_allocObject();
  sub_1AB0149B0(v49, v24 + 16);
  (*(v15 + 32))(v24 + v22, v17, v14);
  *(v24 + v23) = v36 & 1;
  v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
  *(v25 + 56) = v47;
  *(v25 + 40) = v46;
  v26 = v44;
  *(v25 + 24) = v45;
  *(v25 + 8) = v26;
  *v13 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4394E8);
  v27 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v27[2] = v28;
  sub_1AB040054(v13, v27 + *(*v27 + 96));
  v29 = swift_allocObject();
  v29[2] = sub_1AB04D734;
  v29[3] = v24;
  v29[4] = v27;
  *&v44 = sub_1AB04D668;
  *(&v44 + 1) = v29;
  *&v45 = sub_1AB3606D8;
  *(&v45 + 1) = v27;
  sub_1AB01494C(v50, &v46);
  v48 = 0;
  swift_retain_n();

  sub_1AB017894(&v44);

  sub_1AB014AC0(&v44, &unk_1EB437870);
  sub_1AB01494C(a1, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4394F0);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0(v42, v49);
    sub_1AB01494C(v49, &v44);
    v30 = swift_allocObject();
    sub_1AB0149B0(&v44, v30 + 16);
    sub_1AB01494C(v49, v42);
    v31 = swift_allocObject();
    sub_1AB0149B0(v42, v31 + 16);
    v40 = &type metadata for SyncTaskScheduler;
    v41 = &protocol witness table for SyncTaskScheduler;
    *&v44 = sub_1AB04F7D4;
    *(&v44 + 1) = v30;
    *&v45 = sub_1AB3606D4;
    *(&v45 + 1) = v31;
    sub_1AB01494C(v39, &v46);
    v48 = 0;

    sub_1AB03EBC4(&v44);

    sub_1AB014AC0(&v44, &unk_1EB4398C0);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  else
  {
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    sub_1AB014AC0(v42, &qword_1EB4394F8);
  }

  swift_task_localValuePop();

  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  return v27;
}