void *sub_22B098BAC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[6];
  v7 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v6);
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v29 = sub_22B0A0080;
  v30 = &v31;
  v8 = MEMORY[0x277D84F78];
  (*(v7 + 24))(&v35, sub_22B0A00C8, v28, &type metadata for AccumulatorCounter, MEMORY[0x277D84F78] + 8, &off_2813EA3C0, v6, v7);
  v9 = a1[6];
  v10 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v9);
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v22 = sub_22B0A0108;
  v23 = &v24;
  (*(v10 + 24))(&v35, sub_22B0A0244, v21, &type metadata for DurationCounter, v8 + 8, &off_2813EA778, v9, v10);
  v11 = a1[6];
  v12 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v11);
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v16[2] = sub_22B0A0150;
  v16[3] = &v17;
  v13 = *(v12 + 24);
  v14 = sub_22B09F458();
  return v13(&v35, sub_22B0A0244, v16, &type metadata for DistributionCounter, v8 + 8, v14, v11, v12);
}

uint64_t sub_22B098D9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(uint64_t))
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  result = (*(v11 + 32))(*(a2 + 80), a3, v10, v11);
  if (result)
  {
    a5();
    a6(a3);
  }

  return result;
}

Swift::Void __swiftcall CounterGroup.incrementCounter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = sub_22B0DF0E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(v1 + 22);
  v9 = [*(sub_22B097390() + 24) currentDatePartition];
  sub_22B0DF0B0();

  sub_22B09A03C(1, countAndFlagsBits, object, v8);

  (*(v5 + 8))(v8, v4);
  os_unfair_lock_unlock(v1 + 22);
}

uint64_t CounterGroup.counter(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(v3 + 22);
  sub_22B097390();
  v7 = sub_22B099028(a1, a2, a3);

  os_unfair_lock_unlock(v3 + 22);
  return v7;
}

uint64_t sub_22B099028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22B09CAE4(a3);
  v6 = v5;
  if (*(v5 + 16) && (v7 = sub_22B0768A8(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_22B0990A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22B09CD84(a3);
  v6 = v5;
  if (*(v5 + 16) && (v7 = sub_22B0768A8(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

Swift::Int_optional __swiftcall CounterGroup.counter(_:in:)(Swift::String _, Swift::String in)
{
  object = in._object;
  countAndFlagsBits = in._countAndFlagsBits;
  v5 = _._object;
  v6 = _._countAndFlagsBits;
  os_unfair_lock_lock(v2 + 22);
  sub_22B097390();
  v7 = sub_22B0991A0(v6, v5, countAndFlagsBits, object);
  LOBYTE(countAndFlagsBits) = v8;

  os_unfair_lock_unlock(v2 + 22);
  v9 = countAndFlagsBits & 1;
  v10 = v7;
  result.value = v10;
  result.is_nil = v9;
  return result;
}

uint64_t sub_22B0991A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = qword_2813EA5B0;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (*(v10 + 16) && (v11 = sub_22B0768A8(a3, a4), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 16 * v11 + 8);
    swift_endAccess();
    if (*(v13 + 16))
    {

      v14 = sub_22B0768A8(a1, a2);
      if (v15)
      {
        v16 = *(*(v13 + 56) + 8 * v14);

        return v16;
      }
    }
  }

  else
  {
    swift_endAccess();
  }

  return 0;
}

double sub_22B099288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = qword_2813EA5B0;
  swift_beginAccess();
  v12 = *(v5 + v11);
  if (*(v12 + 16) && (v13 = sub_22B0768A8(a3, a4), (v14 & 1) != 0))
  {
    v15 = (*(v12 + 56) + 16 * v13);
    v16 = *v15;
    v17 = *(v15 + 1);
    swift_endAccess();

    sub_22B09D2E0(a1, a2, v17, a5);
  }

  else
  {
    swift_endAccess();
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 40) = 1;
  }

  return result;
}

uint64_t sub_22B0993C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = qword_2813EA5B0;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = sub_22B0768A8(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 16 * v9 + 8);
    swift_bridgeObjectRetain_n();
    swift_endAccess();

    return v11;
  }

  else
  {
    swift_endAccess();
    return a3(MEMORY[0x277D84F90]);
  }
}

uint64_t CounterGroup.sumOfCounters(for:)(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 22);
  sub_22B097390();
  v3 = sub_22B0994E8(a1);

  os_unfair_lock_unlock(v1 + 22);
  return v3;
}

uint64_t sub_22B0994E8(uint64_t a1)
{
  result = sub_22B09CAE4(a1);
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
    v12 = __OFADD__(v4, v11);
    v4 += v11;
    if (v12)
    {
      __break(1u);
LABEL_13:

      return v4;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      goto LABEL_13;
    }

    v7 = *(v2 + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B0995A8(uint64_t a1)
{
  result = sub_22B09CD84(a1);
  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  for (i = 0.0; v6; i = i + *(*(v2 + 56) + ((v9 << 9) | (8 * v10))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(v2 + 64 + 8 * v9);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B099668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22B09D024(a1);
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  v10 = 0uLL;
  v11 = 0x8000000000000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (v9)
  {
    while (1)
    {
      v13 = v5;
LABEL_8:
      v14 = *(v4 + 56) + 40 * (__clz(__rbit64(v9)) | (v13 << 6));
      v15 = *(v14 + 16);
      v16 = __OFADD__(v6, v15);
      v6 += v15;
      if (v16)
      {
        break;
      }

      v9 &= v9 - 1;
      v17 = *(v14 + 24);
      v20 = v14;
      v18 = *v14;
      v19 = *(v20 + 8);
      if (v19 > v11)
      {
        v11 = v19;
      }

      if (v18 < v12)
      {
        v12 = v18;
      }

      v10 = vaddq_f64(v10, v17);
      v5 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v13 >= ((v7 + 63) >> 6))
      {
        v21 = v10;

        *a2 = v12;
        *(a2 + 8) = v11;
        *(a2 + 16) = v6;
        *(a2 + 24) = v21;
        return result;
      }

      v9 = *(v4 + 64 + 8 * v13);
      ++v5;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall CounterGroup.sumOfCounters(in:)(Swift::String in)
{
  object = in._object;
  countAndFlagsBits = in._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 22);
  sub_22B097390();
  v4 = sub_22B0997E8(countAndFlagsBits, object);

  os_unfair_lock_unlock(v1 + 22);
  return v4;
}

uint64_t sub_22B0997E8(uint64_t a1, uint64_t a2)
{
  result = sub_22B0993C8(a1, a2, sub_22B0B9108);
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(result + 56) + ((v9 << 9) | (8 * v10)));
    v12 = __OFADD__(v4, v11);
    v4 += v11;
    if (v12)
    {
      __break(1u);
LABEL_13:

      return v4;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      goto LABEL_13;
    }

    v7 = *(result + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B0998B8(uint64_t a1, uint64_t a2)
{
  result = sub_22B0993C8(a1, a2, sub_22B0B9204);
  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  for (i = 0.0; v6; i = i + *(*(result + 56) + ((v9 << 9) | (8 * v10))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(result + 64 + 8 * v9);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B099988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22B0993C8(a1, a2, sub_22B0B9308);
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 64);
  v10 = 0uLL;
  v11 = 0x8000000000000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (v9)
  {
    while (1)
    {
      v13 = v5;
LABEL_8:
      v14 = *(result + 56) + 40 * (__clz(__rbit64(v9)) | (v13 << 6));
      v15 = *(v14 + 16);
      v16 = __OFADD__(v6, v15);
      v6 += v15;
      if (v16)
      {
        break;
      }

      v9 &= v9 - 1;
      v17 = *(v14 + 24);
      v20 = v14;
      v18 = *v14;
      v19 = *(v20 + 8);
      if (v19 > v11)
      {
        v11 = v19;
      }

      if (v18 < v12)
      {
        v12 = v18;
      }

      v10 = vaddq_f64(v10, v17);
      v5 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v13 >= ((v7 + 63) >> 6))
      {
        v21 = v10;

        *a3 = v12;
        *(a3 + 8) = v11;
        *(a3 + 16) = v6;
        *(a3 + 24) = v21;
        return result;
      }

      v9 = *(result + 64 + 8 * v13);
      ++v5;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CounterGroup.resumeDurationCounter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock((v1 + 88));
  if (!*(*(v1 + 128) + 16) || (sub_22B0768A8(countAndFlagsBits, object), (v4 & 1) == 0))
  {
    [*(v1 + 72) uptime];
    v6 = v5;
    v7 = *(v1 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v1 + 128);
    *(v1 + 128) = 0x8000000000000000;
    sub_22B088234(countAndFlagsBits, object, isUniquelyReferenced_nonNull_native, v6);
    v9 = *(v1 + 128);
    *(v1 + 128) = v10;
  }

  os_unfair_lock_unlock((v1 + 88));
}

Swift::Void __swiftcall CounterGroup.pauseDurationCounter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 22);
  sub_22B099BF8(countAndFlagsBits, object, &v1[24]);

  sub_22B080B9C(0, 1, countAndFlagsBits, object);

  os_unfair_lock_unlock(v1 + 22);
}

unint64_t sub_22B099BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22B0DF0E0();
  v56 = *(v8 - 8);
  v9 = v56[8];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v53 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v53 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v53 - v20;
  result = MEMORY[0x28223BE20](v19);
  v55 = &v53 - v23;
  v24 = *(a3 + 32);
  if (*(v24 + 16))
  {
    result = sub_22B0768A8(a1, a2);
    if (v25)
    {
      v26 = *(*(v24 + 56) + 8 * result);
      v27 = *(v4 + 72);
      v63 = v4;
      [v27 uptime];
      v29 = v28;
      v30 = [*(v4 + 64) currentDate];
      v31 = a1;
      v54 = a1;
      v32 = v55;
      sub_22B0DF0B0();

      v33 = *(a3 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = *(a3 + 32);
      sub_22B088234(v31, a2, isUniquelyReferenced_nonNull_native, v29);
      *(a3 + 32) = v64;
      v35 = v56 + 2;
      v36 = v32;
      v37 = v56[2];
      v37(v21, v36, v8);
      sub_22B0DF0A0();
      v62 = a3;
      v38 = *(v63 + 16);
      v39 = sub_22B0DF070();
      v61 = v38;
      v40 = v38;
      v41 = v39;
      v42 = [v40 datePartitionContainingDate_];

      sub_22B0DF0B0();
      v43 = sub_22B0DF090();
      v44 = v54;
      if (v43)
      {
        v59 = v56 + 1;
        v60 = v18;
        v57 = (v56 + 4);
        v58 = v35;
        do
        {
          sub_22B0DEFC0();
          v46 = v45;
          sub_22B0974C4();
          sub_22B09A738(v44, a2, v15, v46);

          v63 = *v59;
          (v63)(v21, v8);
          v37(v21, v15, v8);
          v47 = sub_22B0DF070();
          v48 = a2;
          v49 = [v61 datePartitionWithOffset:-1 fromDatePartition:v47];

          sub_22B0DF0B0();
          a2 = v48;
          (v63)(v15, v8);
          v18 = v60;
          (*v57)(v15, v12, v8);
        }

        while ((sub_22B0DF090() & 1) != 0);
      }

      sub_22B0DEFC0();
      v51 = v50;
      sub_22B0974C4();
      sub_22B09A738(v44, a2, v15, v51);

      v52 = v56[1];
      v52(v15, v8);
      v52(v18, v8);
      v52(v21, v8);
      return (v52)(v55, v8);
    }
  }

  return result;
}

uint64_t sub_22B09A03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v93 = a3;
  v94 = a2;
  v91 = a1;
  v7 = sub_22B0DF0E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v82 - v13;
  v15 = [*(v4 + 24) currentDatePartition];
  sub_22B0DF0B0();

  v16 = qword_2813EA5A0;
  swift_beginAccess();
  v17 = *(v8 + 16);
  (v17)(v12, v5 + v16, v7);
  sub_22B076420(&qword_2813EAD70);
  v87 = v14;
  LOBYTE(v15) = sub_22B0DF2F0();
  v18 = *(v8 + 8);
  v84 = v8 + 8;
  v83 = v18;
  v18(v12, v7);
  if ((v15 & 1) == 0)
  {
    v14 = v87;
    sub_22B09CAE4(v87);

    swift_beginAccess();
    (*(v8 + 24))(v5 + v16, v14, v7);
    swift_endAccess();
  }

  v86 = v7;
  v19 = qword_2813EA5B8;
  swift_beginAccess();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22B09D2D0;
  *(v20 + 24) = 0;
  v82 = v20;
  v21 = *(v5 + v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v97 = *(v5 + v19);
  v23 = v97;
  *(v5 + v19) = 0x8000000000000000;
  v25 = sub_22B07639C(a4);
  v26 = v23[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v14) = v24;
  if (v23[3] >= v28)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_47:
    sub_22B084798();
    v23 = v97;
    goto LABEL_8;
  }

  sub_22B086764(v28, isUniquelyReferenced_nonNull_native);
  v23 = v97;
  v29 = sub_22B07639C(a4);
  if ((v14 & 1) != (v30 & 1))
  {
    goto LABEL_51;
  }

  v25 = v29;
LABEL_8:
  v31 = v93;
  *(v5 + v19) = v23;
  if ((v14 & 1) == 0)
  {
    v32 = sub_22B09D2D0();
    v34 = v33;
    LOBYTE(v97) = v32 & 1;
    (v17)(v12, a4, v86);
    sub_22B08A804(v25, v12, v97, v34, v23);
  }

  v35 = v23[7] + 16 * v25;
  v38 = *(v35 + 8);
  v36 = (v35 + 8);
  v37 = v38;
  v39 = *(v38 + 16);
  v90 = v5;
  if (!v39 || (v40 = sub_22B0768A8(v94, v31), (v41 & 1) == 0))
  {
    v42 = 0;
    v44 = 1;
    v43 = v91;
    goto LABEL_15;
  }

  v42 = *(*(v37 + 56) + 8 * v40);
  v43 = v42 + v91;
  if (!__OFADD__(v42, v91))
  {
    v44 = 0;
LABEL_15:
    v45 = *v36;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v97 = *v36;
    v19 = v93;
    v47 = v94;
    sub_22B0769D8(v43, v94, v93, v46);
    *v36 = v97;
    swift_endAccess();
    v48 = v43;
    v49 = v90;
    sub_22B09C4F4(v47, v19, v42, v44, v48);
    v50 = qword_2813EA5B0;
    swift_beginAccess();
    v92 = v50;
    v5 = *(v49 + v50);
    a4 = v5 + 64;
    v51 = 1 << *(v5 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v25 = v52 & *(v5 + 64);
    v53 = (v51 + 63) >> 6;

    v17 = 0;
    v85 = v5;
    while (1)
    {
      if (!v25)
      {
        while (1)
        {
          v56 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v56 >= v53)
          {
            v83(v87, v86);
          }

          v25 = *(a4 + 8 * v56);
          ++v17;
          if (v25)
          {
            v17 = v56;
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

LABEL_26:
      v57 = (*(v5 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v25)))));
      v19 = *v57;
      v12 = v57[1];
      swift_beginAccess();

      v58 = sub_22B09CA10(v96, v19, v12);
      v55 = v58;
      v60 = *(v59 + 8);
      if (v60)
      {
        v14 = v59;
        if (*v59 == 1)
        {
          break;
        }
      }

LABEL_20:
      (v55)(v96, 0);
      swift_endAccess();
      v25 &= v25 - 1;
    }

    v88 = v58;
    v61 = v91;
    v62 = v93;
    if (*(v60 + 16))
    {
      v63 = sub_22B0768A8(v94, v93);
      v61 = v91;
      if (v64)
      {
        v65 = *(*(v60 + 56) + 8 * v63);
        v61 = v65 + v91;
        if (__OFADD__(v65, v91))
        {
          __break(1u);
          goto LABEL_49;
        }
      }
    }

    v89 = v61;
    v66 = *(v14 + 8);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v14 + 8);
    v67 = v95;
    *(v14 + 8) = 0x8000000000000000;
    v5 = sub_22B0768A8(v94, v62);
    v69 = v67[2];
    v70 = (v68 & 1) == 0;
    v71 = v69 + v70;
    if (__OFADD__(v69, v70))
    {
      goto LABEL_44;
    }

    v72 = v68;
    if (v67[3] < v71)
    {
      sub_22B086778(v71, v19);
      v73 = sub_22B0768A8(v94, v93);
      if ((v72 & 1) != (v74 & 1))
      {
        goto LABEL_50;
      }

      v5 = v73;
      v75 = v95;
      if ((v72 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_18:
      *(v75[7] + 8 * v5) = v89;
LABEL_19:
      v54 = *(v14 + 8);
      *(v14 + 8) = v75;

      v5 = v85;
      v55 = v88;
      goto LABEL_20;
    }

    if (v19)
    {
      v75 = v95;
      if (v68)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_22B0847AC();
      v75 = v95;
      if (v72)
      {
        goto LABEL_18;
      }
    }

LABEL_38:
    v75[(v5 >> 6) + 8] |= 1 << v5;
    v76 = (v75[6] + 16 * v5);
    v77 = v93;
    *v76 = v94;
    v76[1] = v77;
    *(v75[7] + 8 * v5) = v89;
    v78 = v75[2];
    v79 = __OFADD__(v78, 1);
    v80 = v78 + 1;
    if (v79)
    {
      goto LABEL_46;
    }

    v75[2] = v80;

    goto LABEL_19;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  sub_22B0DFCA0();
  __break(1u);
LABEL_51:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09A738(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v88 = a2;
  v90 = a1;
  v8 = sub_22B0DF0E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v80 - v14;
  v16 = [*(v4 + 24) currentDatePartition];
  sub_22B0DF0B0();

  v17 = qword_2813EA5A0;
  swift_beginAccess();
  v18 = *(v9 + 16);
  (v18)(v13, v5 + v17, v8);
  sub_22B076420(&qword_2813EAD70);
  LOBYTE(v16) = sub_22B0DF2F0();
  v19 = *(v9 + 8);
  v82 = v9 + 8;
  v81 = v19;
  v19(v13, v8);
  if ((v16 & 1) == 0)
  {
    sub_22B09CD84(v15);

    swift_beginAccess();
    (*(v9 + 24))(v5 + v17, v15, v8);
    swift_endAccess();
  }

  v83 = v15;
  v85 = v8;
  v20 = qword_2813EA5B8;
  swift_beginAccess();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_22B09D2D0;
  *(v21 + 24) = 0;
  v80 = v21;
  v22 = *(v5 + v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(v5 + v20);
  v24 = v93;
  *(v5 + v20) = 0x8000000000000000;
  v26 = sub_22B07639C(a3);
  v27 = v24[2];
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  LOBYTE(v15) = v25;
  if (v24[3] >= v29)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_46:
    sub_22B084914();
    v24 = v93;
    goto LABEL_8;
  }

  sub_22B086A18(v29, isUniquelyReferenced_nonNull_native);
  v24 = v93;
  v30 = sub_22B07639C(a3);
  if ((v15 & 1) == (v31 & 1))
  {
    v26 = v30;
LABEL_8:
    v32 = v88;
    *(v5 + v20) = v24;
    if ((v15 & 1) == 0)
    {
      v33 = sub_22B09D2D0();
      v35 = v34;
      LOBYTE(v93) = v33 & 1;
      (v18)(v13, a3, v85);
      sub_22B08A804(v26, v13, v93, v35, v24);
    }

    v36 = v24[7] + 16 * v26;
    v39 = *(v36 + 8);
    v37 = (v36 + 8);
    v38 = v39;
    v40 = *(v39 + 16);
    v87 = v5;
    if (v40 && (v41 = sub_22B0768A8(v90, v32), (v42 & 1) != 0))
    {
      v26 = 0;
      v43 = *(*(v38 + 56) + 8 * v41) + a4;
      v44 = *(*(v38 + 56) + 8 * v41);
    }

    else
    {
      v44 = 0;
      v26 = 1;
      v43 = a4;
    }

    v45 = *v37;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v93 = *v37;
    v20 = v90;
    sub_22B088234(v90, v32, v46, v43);
    *v37 = v93;
    swift_endAccess();
    v47 = v32;
    v48 = v87;
    sub_22B09C640(v20, v47, v44, v26, v43);
    v49 = qword_2813EA5B0;
    swift_beginAccess();
    v89 = v49;
    v5 = *(v48 + v49);
    a3 = v5 + 64;
    v50 = 1 << *(v5 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v15 = v51 & *(v5 + 64);
    v52 = (v50 + 63) >> 6;

    v18 = 0;
    v84 = v5;
    while (1)
    {
      if (!v15)
      {
        while (1)
        {
          v55 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v55 >= v52)
          {
            v81(v83, v85);
          }

          v15 = *(a3 + 8 * v55);
          ++v18;
          if (v15)
          {
            v18 = v55;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_25:
      v56 = (*(v5 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v15)))));
      v20 = *v56;
      v13 = v56[1];
      swift_beginAccess();

      v57 = sub_22B09C988(v92, v20, v13);
      v54 = v57;
      v59 = *(v58 + 8);
      if (v59)
      {
        v26 = v58;
        if (*v58 == 1)
        {
          break;
        }
      }

LABEL_19:
      (v54)(v92, 0);
      swift_endAccess();
      v15 &= v15 - 1;
    }

    v86 = v57;
    v60 = a4;
    v61 = v88;
    if (*(v59 + 16))
    {
      v62 = sub_22B0768A8(v90, v88);
      v60 = a4;
      if (v63)
      {
        v60 = *(*(v59 + 56) + 8 * v62) + a4;
      }
    }

    v64 = *(v26 + 8);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v26 + 8);
    v65 = v91;
    *(v26 + 8) = 0x8000000000000000;
    v5 = sub_22B0768A8(v90, v61);
    v67 = v65[2];
    v68 = (v66 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      goto LABEL_43;
    }

    v70 = v66;
    if (v65[3] < v69)
    {
      sub_22B086E18(v69, v20);
      v71 = sub_22B0768A8(v90, v88);
      if ((v70 & 1) != (v72 & 1))
      {
        sub_22B0DFCA0();
        __break(1u);
        goto LABEL_48;
      }

      v5 = v71;
      v73 = v91;
      if ((v70 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_17:
      *(v73[7] + 8 * v5) = v60;
LABEL_18:
      v53 = *(v26 + 8);
      *(v26 + 8) = v73;

      v54 = v86;
      v5 = v84;
      goto LABEL_19;
    }

    if (v20)
    {
      v73 = v91;
      if (v66)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_22B084928();
      v73 = v91;
      if (v70)
      {
        goto LABEL_17;
      }
    }

LABEL_37:
    v73[(v5 >> 6) + 8] |= 1 << v5;
    v74 = (v73[6] + 16 * v5);
    v75 = v88;
    *v74 = v90;
    v74[1] = v75;
    *(v73[7] + 8 * v5) = v60;
    v76 = v73[2];
    v77 = __OFADD__(v76, 1);
    v78 = v76 + 1;
    if (v77)
    {
      goto LABEL_45;
    }

    v73[2] = v78;

    goto LABEL_18;
  }

LABEL_48:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09AE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v112 = a3;
  v114 = a2;
  v111 = a1;
  v7 = sub_22B0DF0E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v101 - v13;
  v15 = [*(v4 + 24) currentDatePartition];
  sub_22B0DF0B0();

  v16 = qword_2813EA5A0;
  swift_beginAccess();
  v17 = *(v8 + 16);
  (v17)(v12, v5 + v16, v7);
  sub_22B076420(&qword_2813EAD70);
  LOBYTE(v15) = sub_22B0DF2F0();
  v18 = *(v8 + 8);
  v103 = v8 + 8;
  v102 = v18;
  v18(v12, v7);
  if ((v15 & 1) == 0)
  {
    sub_22B09D024(v14);

    swift_beginAccess();
    (*(v8 + 24))(v5 + v16, v14, v7);
    swift_endAccess();
  }

  v104 = v14;
  v106 = v7;
  v19 = qword_2813EA5B8;
  swift_beginAccess();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22B09D2D0;
  *(v20 + 24) = 0;
  v101[1] = v20;
  v21 = *(v5 + v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v119 = *(v5 + v19);
  v23 = v119;
  *(v5 + v19) = 0x8000000000000000;
  v25 = sub_22B07639C(a4);
  v26 = v23[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    goto LABEL_58;
  }

  LOBYTE(v14) = v24;
  if (v23[3] >= v28)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_60;
    }

    *(v5 + v19) = v23;
    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }

    while (1)
    {
LABEL_11:
      v34 = v23[7] + 16 * v25;
      v37 = *(v34 + 8);
      v35 = (v34 + 8);
      v36 = v37;
      v38 = *(v37 + 16);
      v39 = 0.0;
      if (v38)
      {
        v17 = v112;
        v40 = sub_22B0768A8(v114, v112);
        if (v41)
        {
          v42 = 0;
          v43 = *(v36 + 56) + 40 * v40;
          v38 = *v43;
          v44 = *(v43 + 8);
          v45 = *(v43 + 16);
          v39 = *(v43 + 24);
          v46 = *(v43 + 32);
        }

        else
        {
          v38 = 0;
          v44 = 0;
          v45 = 0;
          v42 = 1;
          v46 = 0.0;
        }
      }

      else
      {
        v44 = 0;
        v45 = 0;
        v42 = 1;
        v46 = 0.0;
        v17 = v112;
      }

      *&v119 = v38;
      *(&v119 + 1) = v44;
      v120 = v45;
      v121 = v39;
      v122 = v46;
      v123 = v42;
      if (v42)
      {
        v44 = v111;
        v47 = v111;
        v48 = 1;
        v49 = v47 * v47;
        v38 = v111;
        v50 = v111;
        v51 = v47 * v47;
      }

      else
      {
        v48 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          sub_22B0DFCA0();
          __break(1u);
          goto LABEL_65;
        }

        if (v44 <= v111)
        {
          v44 = v111;
        }

        if (v38 >= v111)
        {
          v38 = v111;
        }

        v47 = v111;
        v50 = v39 + v111;
        v49 = v47 * v47;
        v51 = v47 * v47 + v46;
      }

      v124[0] = v38;
      v124[1] = v44;
      v124[2] = v48;
      *&v124[3] = v50;
      *&v124[4] = v51;
      v52 = *v35;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v118 = *v35;
      *v35 = 0x8000000000000000;
      v54 = v114;
      sub_22B088390(v124, v114, v17, v53);
      *v35 = v118;
      swift_endAccess();
      sub_22B09C79C(v54, v17, &v119, v124);
      v55 = qword_2813EA5B0;
      swift_beginAccess();
      v113 = v55;
      v56 = *(v5 + v55);
      a4 = v56 + 64;
      v57 = 1 << *(v56 + 32);
      v58 = -1;
      if (v57 < 64)
      {
        v58 = ~(-1 << v57);
      }

      v14 = v58 & *(v56 + 64);
      v59 = (v57 + 63) >> 6;
      v115 = v56;

      v19 = 0;
      v105 = v5;
      while (v14)
      {
LABEL_35:
        v65 = (*(v115 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v14)))));
        v66 = *v65;
        v12 = v65[1];
        swift_beginAccess();

        v67 = sub_22B09C8FC(v117, v66, v12);
        v63 = v67;
        v69 = *(v68 + 8);
        if (v69)
        {
          v25 = v68;
          if (*v68 == 1)
          {
            v70 = *(v69 + 16);
            v107 = v67;
            if (v70 && (v71 = sub_22B0768A8(v114, v17), (v72 & 1) != 0))
            {
              v73 = *(v69 + 56) + 40 * v71;
              v74 = *(v73 + 16);
              v75 = __OFADD__(v74, 1);
              v76 = v74 + 1;
              if (v75)
              {
                goto LABEL_63;
              }

              v110 = v76;
              v78 = *(v73 + 24);
              v77 = *(v73 + 32);
              v81 = v73;
              v79 = *v73;
              v80 = *(v81 + 8);
              if (v80 <= v111)
              {
                v80 = v111;
              }

              v109 = v80;
              if (v79 >= v111)
              {
                v79 = v111;
              }

              v108 = v79;
              v82 = v78 + v47;
              v83 = v49 + v77;
            }

            else
            {
              v108 = v111;
              v109 = v111;
              v110 = 1;
              v82 = v47;
              v83 = v49;
            }

            v84 = *(v25 + 8);
            v5 = swift_isUniquelyReferenced_nonNull_native();
            v116 = *(v25 + 8);
            v85 = v116;
            *(v25 + 8) = 0x8000000000000000;
            v17 = sub_22B0768A8(v114, v17);
            v87 = v85[2];
            v88 = (v86 & 1) == 0;
            v89 = v87 + v88;
            if (__OFADD__(v87, v88))
            {
              goto LABEL_57;
            }

            v90 = v86;
            if (v85[3] >= v89)
            {
              if ((v5 & 1) == 0)
              {
                sub_22B084D38();
              }
            }

            else
            {
              sub_22B0870D0(v89, v5);
              v91 = sub_22B0768A8(v114, v112);
              if ((v90 & 1) != (v92 & 1))
              {
                goto LABEL_64;
              }

              v17 = v91;
            }

            v5 = v105;
            v93 = v116;
            if (v90)
            {
              v60 = v116[7] + 40 * v17;
              v61 = v109;
              *v60 = v108;
              *(v60 + 8) = v61;
              *(v60 + 16) = v110;
              *(v60 + 24) = v82;
              *(v60 + 32) = v83;
              v17 = v112;
            }

            else
            {
              v116[(v17 >> 6) + 8] |= 1 << v17;
              v94 = (v93[6] + 16 * v17);
              v95 = v112;
              *v94 = v114;
              v94[1] = v95;
              v96 = v93[7] + 40 * v17;
              v97 = v109;
              *v96 = v108;
              *(v96 + 8) = v97;
              *(v96 + 16) = v110;
              *(v96 + 24) = v82;
              *(v96 + 32) = v83;
              v98 = v93[2];
              v75 = __OFADD__(v98, 1);
              v99 = v98 + 1;
              if (v75)
              {
                goto LABEL_59;
              }

              v93[2] = v99;
            }

            v62 = *(v25 + 8);
            *(v25 + 8) = v93;

            v63 = v107;
          }
        }

        (v63)(v117, 0);
        swift_endAccess();
        v14 &= v14 - 1;
      }

      while (1)
      {
        v64 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v64 >= v59)
        {
          v102(v104, v106);
        }

        v14 = *(a4 + 8 * v64);
        ++v19;
        if (v14)
        {
          v19 = v64;
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      sub_22B084A90();
      v23 = v119;
      *(v5 + v19) = v119;
      if ((v14 & 1) == 0)
      {
LABEL_10:
        v31 = sub_22B09D2D0();
        v33 = v32;
        LOBYTE(v119) = v31 & 1;
        (v17)(v12, a4, v106);
        sub_22B08A804(v25, v12, v119, v33, v23);
      }
    }
  }

  sub_22B0870BC(v28, isUniquelyReferenced_nonNull_native);
  v23 = v119;
  v29 = sub_22B07639C(a4);
  if ((v14 & 1) == (v30 & 1))
  {
    v25 = v29;
    *(v5 + v19) = v23;
    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_65:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t CounterGroup.duration(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(v3 + 22);
  sub_22B099BF8(a1, a2, &v3[24]);
  sub_22B0974C4();
  v7 = sub_22B0990A0(a1, a2, a3);

  os_unfair_lock_unlock(v3 + 22);
  return v7;
}

Swift::Double_optional __swiftcall CounterGroup.duration(_:in:)(Swift::String _, Swift::String in)
{
  object = in._object;
  countAndFlagsBits = in._countAndFlagsBits;
  v5 = _._object;
  v6 = _._countAndFlagsBits;
  os_unfair_lock_lock(v2 + 22);
  sub_22B099BF8(v6, v5, &v2[24]);
  sub_22B0974C4();
  LOBYTE(object) = sub_22B0991A0(v6, v5, countAndFlagsBits, object);

  os_unfair_lock_unlock(v2 + 22);
  v8 = object;
  result.value = v7;
  result.is_nil = v8;
  return result;
}

uint64_t CounterGroup.durations(for:)(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 22);
  sub_22B097810(&v1[24]);
  sub_22B0974C4();
  sub_22B09CD84(a1);
  v4 = v3;

  os_unfair_lock_unlock(v1 + 22);
  return v4;
}

uint64_t CounterGroup.durations(in:)(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(v2 + 22);
  sub_22B097810(&v2[24]);
  sub_22B0974C4();
  v5 = sub_22B0993C8(a1, a2, sub_22B0B9204);

  os_unfair_lock_unlock(v2 + 22);
  return v5;
}

double CounterGroup.sumOfDurations(for:)(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 22);
  sub_22B097810(&v1[24]);
  sub_22B0974C4();
  sub_22B0995A8(a1);
  v4 = v3;

  os_unfair_lock_unlock(v1 + 22);
  return v4;
}

Swift::Double __swiftcall CounterGroup.sumOfDurations(inEphemeralContainer:)(Swift::String inEphemeralContainer)
{
  object = inEphemeralContainer._object;
  countAndFlagsBits = inEphemeralContainer._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 22);
  sub_22B097810(&v1[24]);
  sub_22B0974C4();
  sub_22B0998B8(countAndFlagsBits, object);
  v5 = v4;

  os_unfair_lock_unlock(v1 + 22);
  return v5;
}

Swift::Void __swiftcall CounterGroup.addValue(_:toDistribution:)(Swift::Int _, Swift::String toDistribution)
{
  object = toDistribution._object;
  countAndFlagsBits = toDistribution._countAndFlagsBits;
  v6 = sub_22B0DF0E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(v2 + 22);
  v11 = [*(sub_22B0975F8() + 24) currentDatePartition];
  sub_22B0DF0B0();

  sub_22B09AE18(_, countAndFlagsBits, object, v10);

  (*(v7 + 8))(v10, v6);
  os_unfair_lock_unlock(v2 + 22);
}

void CounterGroup.distribution(_:for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  os_unfair_lock_lock(v4 + 22);
  sub_22B0975F8();
  sub_22B09D024(a3);
  sub_22B09D2E0(a1, a2, v9, a4);

  os_unfair_lock_unlock(v4 + 22);
}

void __swiftcall CounterGroup.distribution(_:in:)(HomeKitMetrics::CounterDistribution_optional *__return_ptr retstr, Swift::String _, Swift::String in)
{
  object = in._object;
  countAndFlagsBits = in._countAndFlagsBits;
  v6 = _._object;
  v7 = _._countAndFlagsBits;
  os_unfair_lock_lock(v3 + 22);
  sub_22B0975F8();
  sub_22B099288(v7, v6, countAndFlagsBits, object, retstr);

  os_unfair_lock_unlock(v3 + 22);
}

uint64_t sub_22B09BC6C(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t))
{
  os_unfair_lock_lock(v3 + 22);
  a2();
  a3(a1);
  v8 = v7;

  os_unfair_lock_unlock(v3 + 22);
  return v8;
}

uint64_t sub_22B09BD10(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  os_unfair_lock_lock(v4 + 22);
  a3();
  v9 = sub_22B0993C8(a1, a2, a4);

  os_unfair_lock_unlock(v4 + 22);
  return v9;
}

void CounterGroup.aggregatedDistribution(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(v2 + 22);
  sub_22B0975F8();
  sub_22B099668(a1, a2);

  os_unfair_lock_unlock(v2 + 22);
}

void __swiftcall CounterGroup.aggregatedDistribution(in:)(HomeKitMetrics::CounterDistribution *__return_ptr retstr, Swift::String in)
{
  object = in._object;
  countAndFlagsBits = in._countAndFlagsBits;
  os_unfair_lock_lock(v2 + 22);
  sub_22B0975F8();
  sub_22B099988(countAndFlagsBits, object, retstr);

  os_unfair_lock_unlock(v2 + 22);
}

uint64_t CounterGroup.datePartitions.getter()
{
  v1 = v0;
  v2 = v0[6];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v2);
  v4 = *(v3 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AB0, &unk_22B0E2A10);
  v4(&v12, sub_22B09DF94, v0, v5, v2, v3);
  if (v12)
  {
    v6 = v12;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = sub_22B09EF88(v6);

  v8 = v1[6];
  v9 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v8);
  v11[2] = v1;
  v11[3] = v7;
  (*(v9 + 32))(&v12, sub_22B09F110, v11, v5, v8, v9);

  return v12;
}

void sub_22B09BFB4(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, size_t *a3@<X8>)
{
  os_unfair_lock_lock(a1 + 22);
  sub_22B09C024(a2, a3);
  os_unfair_lock_unlock(a1 + 22);
  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_22B09C024@<X0>(uint64_t a1@<X1>, size_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AC0, &qword_22B0E5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E4400;
  *(inited + 32) = a1;

  v5 = sub_22B097390();
  v6 = qword_2813EA5B8;
  swift_beginAccess();
  v7 = *(v5 + v6);

  v9 = sub_22B098960(v8);

  *(inited + 40) = v9;
  v10 = sub_22B0974C4();
  v11 = qword_2813EA5B8;
  swift_beginAccess();
  v12 = *(v10 + v11);

  v14 = sub_22B098960(v13);

  *(inited + 48) = v14;
  v15 = sub_22B0975F8();
  v16 = qword_2813EA5B8;
  swift_beginAccess();
  v17 = *(v15 + v16);

  v19 = sub_22B098960(v18);

  *(inited + 56) = v19;
  v20 = sub_22B098524(inited);
  v21 = v20;
  v22 = *(v20 + 16);
  if (!v22)
  {
    goto LABEL_4;
  }

  v23 = sub_22B083388(*(v20 + 16), 0);
  v24 = *(sub_22B0DF0E0() - 8);
  v25 = sub_22B093468(&v27, (v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80))), v22, v21);
  result = sub_22B0781A0();
  if (v25 != v22)
  {
    __break(1u);
LABEL_4:

    v23 = MEMORY[0x277D84F90];
  }

  *a2 = v23;
  return result;
}

void sub_22B09C208(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 22);
  sub_22B09C274(&a1[24]);
  os_unfair_lock_unlock(a1 + 22);
  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_22B09C274(uint64_t a1)
{
  sub_22B097810(a1);
  v1 = sub_22B097390();
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v19 = sub_22B09F3C8;
  v20 = v1;
  v4 = MEMORY[0x277D84F78];
  (*(v3 + 24))(&v21, sub_22B0A0244, v18, &type metadata for AccumulatorCounter, MEMORY[0x277D84F78] + 8, &off_2813EA3C0, v2, v3);

  v5 = sub_22B0974C4();
  v6 = v5[7];
  v7 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v6);
  v16 = sub_22B09F3F8;
  v17 = v5;
  (*(v7 + 24))(&v21, sub_22B0A0244, v15, &type metadata for DurationCounter, v4 + 8, &off_2813EA778, v6, v7);

  v8 = sub_22B0975F8();
  v9 = v8[7];
  v10 = v8[8];
  __swift_project_boxed_opaque_existential_1(v8 + 4, v9);
  v14[2] = sub_22B09F428;
  v14[3] = v8;
  v11 = *(v10 + 24);
  v12 = sub_22B09F458();
  v11(&v21, sub_22B0A0244, v14, &type metadata for DistributionCounter, v4 + 8, v12, v9, v10);
}

uint64_t CounterGroup.deinit()
{
  sub_22B091448(v0 + 16);
  v1 = *(v0 + 80);

  sub_22B09F12C(v0 + 96);
  return v0;
}

uint64_t CounterGroup.__deallocating_deinit()
{
  sub_22B091448(v0 + 16);
  v1 = *(v0 + 80);

  sub_22B09F12C(v0 + 96);

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_22B09C4F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = qword_2813EA598;
  swift_beginAccess();
  v10 = *(v5 + v9);
  if (!*(v10 + 16))
  {
    return swift_endAccess();
  }

  v11 = sub_22B0768A8(a1, a2);
  if ((v12 & 1) == 0)
  {
    return swift_endAccess();
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  swift_endAccess();
  v14 = *(v13 + 16);

  if (!v14)
  {
  }

  v16 = 0;
  v17 = v13 + 32;
  v18 = a4 & 1;
  while (v16 < *(v13 + 16))
  {
    sub_22B07D124(v17, v26);
    ++v16;
    v23 = a5;
    v24 = a3;
    v25 = v18;
    v19 = v27;
    v20 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v20 + 16))(a1, a2, &v24, &v23, v19, v20);
    result = __swift_destroy_boxed_opaque_existential_0(v26);
    v17 += 40;
    if (v14 == v16)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B09C640(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v10 = qword_2813EA598;
  swift_beginAccess();
  v11 = *(v5 + v10);
  if (!*(v11 + 16))
  {
    return swift_endAccess();
  }

  v12 = sub_22B0768A8(a1, a2);
  if ((v13 & 1) == 0)
  {
    return swift_endAccess();
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  swift_endAccess();
  v15 = *(v14 + 16);

  if (!v15)
  {
  }

  v17 = 0;
  v18 = v14 + 32;
  v19 = a4 & 1;
  while (v17 < *(v14 + 16))
  {
    sub_22B07D124(v18, v26);
    ++v17;
    v24 = a3;
    v25 = v19;
    v23 = a5;
    v20 = v27;
    v21 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v21 + 16))(a1, a2, &v24, &v23, v20, v21);
    result = __swift_destroy_boxed_opaque_existential_0(v26);
    v18 += 40;
    if (v15 == v17)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B09C79C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v9 = qword_2813EA598;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (!*(v10 + 16))
  {
    return swift_endAccess();
  }

  v11 = sub_22B0768A8(a1, a2);
  if ((v12 & 1) == 0)
  {
    return swift_endAccess();
  }

  v22 = a1;
  v13 = *(*(v10 + 56) + 8 * v11);
  swift_endAccess();
  v14 = *(v13 + 16);

  if (!v14)
  {
  }

  v16 = 0;
  v17 = v13 + 32;
  while (v16 < *(v13 + 16))
  {
    sub_22B07D124(v17, v27);
    ++v16;
    v18 = a3[1];
    v25 = *a3;
    v26[0] = v18;
    *(v26 + 9) = *(a3 + 25);
    v19 = *(a4 + 16);
    v23[0] = *a4;
    v23[1] = v19;
    v24 = *(a4 + 32);
    v20 = v28;
    v21 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v21 + 16))(v22, a2, &v25, v23, v20, v21);
    result = __swift_destroy_boxed_opaque_existential_0(v27);
    v17 += 40;
    if (v14 == v16)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22B09C8FC(uint64_t **a1, uint64_t a2, uint64_t a3))()
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
  v6[4] = sub_22B09E004(v6, a2, a3);
  return sub_22B09C984;
}

uint64_t (*sub_22B09C988(uint64_t **a1, uint64_t a2, uint64_t a3))()
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
  v6[4] = sub_22B09E0B4(v6, a2, a3);
  return sub_22B0A0230;
}

uint64_t (*sub_22B09CA10(uint64_t **a1, uint64_t a2, uint64_t a3))()
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
  v6[4] = sub_22B09E160(v6, a2, a3);
  return sub_22B0A0230;
}

void sub_22B09CA98(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_22B09CAE4(uint64_t a1)
{
  v2 = v1;
  v4 = qword_2813EA5B8;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (v6 = sub_22B07639C(a1), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 16 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    swift_endAccess();
    if ((v9 & 1) == 0)
    {

      return 0;
    }
  }

  else
  {
    swift_endAccess();
  }

  v12 = v2[7];
  v13 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v12);
  MEMORY[0x28223BE20]();
  v27[2] = v2;
  v27[3] = a1;
  v14 = *(v13 + 24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AD8, &qword_22B0E4530);
  v14(&v29, sub_22B09FF98, v27, &type metadata for AccumulatorCounter, v15, &off_2813EA3C0, v12, v13);
  v11 = (v30 != 0) & v29;
  if (v30)
  {
    v16 = v30;
  }

  else
  {
    v16 = MEMORY[0x277D84F98];
  }

  swift_beginAccess();
  v17 = *(v2 + v4);
  if (*(v17 + 16) && (v18 = sub_22B07639C(a1), (v19 & 1) != 0))
  {
    v20 = *(v17 + 56) + 16 * v18;
    v21 = *v20;
    v22 = *(v20 + 8);
    swift_endAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v16;
    if (v21)
    {
      sub_22B09F4AC(v22, sub_22B09E7D8, 0, isUniquelyReferenced_nonNull_native, &v29);
    }

    else
    {
      sub_22B09F734(v22, sub_22B09E7D8, 0, isUniquelyReferenced_nonNull_native, &v29);
    }

    v16 = v29;
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();

  v24 = *(v2 + v4);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v2 + v4);
  *(v2 + v4) = 0x8000000000000000;
  sub_22B088008(v11, v16, a1, v25);
  *(v2 + v4) = v28;
  swift_endAccess();
  return v11;
}

uint64_t sub_22B09CD84(uint64_t a1)
{
  v2 = v1;
  v4 = qword_2813EA5B8;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (v6 = sub_22B07639C(a1), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 16 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    swift_endAccess();
    if ((v9 & 1) == 0)
    {

      return 0;
    }
  }

  else
  {
    swift_endAccess();
  }

  v12 = v2[7];
  v13 = v2[8];
  v14 = __swift_project_boxed_opaque_existential_1(v2 + 4, v12);
  MEMORY[0x28223BE20](v14);
  v28[2] = v2;
  v28[3] = a1;
  v15 = *(v13 + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AD0, &qword_22B0E4528);
  v15(&v30, sub_22B0A020C, v28, &type metadata for DurationCounter, v16, &off_2813EA778, v12, v13);
  v11 = (v31 != 0) & v30;
  if (v31)
  {
    v17 = v31;
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  swift_beginAccess();
  v18 = *(v2 + v4);
  if (*(v18 + 16) && (v19 = sub_22B07639C(a1), (v20 & 1) != 0))
  {
    v21 = *(v18 + 56) + 16 * v19;
    v22 = *v21;
    v23 = *(v21 + 8);
    swift_endAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v17;
    if (v22)
    {
      sub_22B09E830(v23, sub_22B09E7F0, 0, isUniquelyReferenced_nonNull_native, &v30);
    }

    else
    {
      sub_22B09EAB0(v23, sub_22B09E7F0, 0, isUniquelyReferenced_nonNull_native, &v30);
    }

    v17 = v30;
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();

  v25 = *(v2 + v4);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v2 + v4);
  *(v2 + v4) = 0x8000000000000000;
  sub_22B08801C(v11, v17, a1, v26);
  *(v2 + v4) = v29;
  swift_endAccess();
  return v11;
}

uint64_t sub_22B09D024(uint64_t a1)
{
  v2 = v1;
  v4 = qword_2813EA5B8;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (v6 = sub_22B07639C(a1), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 16 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    swift_endAccess();
    if ((v9 & 1) == 0)
    {

      return 0;
    }
  }

  else
  {
    swift_endAccess();
  }

  v12 = v2[7];
  v13 = v2[8];
  v14 = __swift_project_boxed_opaque_existential_1(v2 + 4, v12);
  v30 = &v30;
  MEMORY[0x28223BE20](v14);
  v29[2] = v2;
  v29[3] = a1;
  v15 = *(v13 + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AC8, "\\m");
  v17 = sub_22B09F458();
  v15(&v32, sub_22B0A020C, v29, &type metadata for DistributionCounter, v16, v17, v12, v13);
  v11 = (v33 != 0) & v32;
  if (v33)
  {
    v18 = v33;
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  swift_beginAccess();
  v19 = *(v2 + v4);
  if (*(v19 + 16) && (v20 = sub_22B07639C(a1), (v21 & 1) != 0))
  {
    v22 = *(v19 + 56) + 16 * v20;
    v23 = *v22;
    v24 = *(v22 + 8);
    swift_endAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v18;
    if (v23)
    {
      sub_22B09F9A8(v24, sub_22B09E808, 0, isUniquelyReferenced_nonNull_native, &v32);
    }

    else
    {
      sub_22B09FCC8(v24, sub_22B09E808, 0, isUniquelyReferenced_nonNull_native, &v32);
    }

    v18 = v32;
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();

  v26 = *(v2 + v4);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v2 + v4);
  *(v2 + v4) = 0x8000000000000000;
  sub_22B088030(v11, v18, a1, v27);
  *(v2 + v4) = v31;
  swift_endAccess();
  return v11;
}

double sub_22B09D2E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_22B0768A8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;
    v9 = *(v8 + 16);
    *a4 = *v8;
    *(a4 + 16) = v9;
    v10 = *(v8 + 24);
    *(a4 + 24) = v10;
    *(a4 + 40) = 0;
  }

  else
  {
    *(a4 + 32) = 0;
    *&v10 = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 40) = 1;
  }

  return *&v10;
}

uint64_t sub_22B09D354(void *a1, uint64_t a2, void (*a3)(void))
{
  v53 = a3;
  v67 = sub_22B0DF0E0();
  v5 = *(v67 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v67);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = &v53 - v10;
  MEMORY[0x28223BE20](v9);
  v61 = &v53 - v11;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = qword_2813EA5B8;
  swift_beginAccess();
  v15 = *(a2 + v14);
  v16 = *(a2 + 16);
  v17 = *(v13 + 24);

  v17(v18, v16, v12, v13);

  v55 = v14;
  v19 = *(a2 + v14);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(a2 + v14) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = qword_2813EA5A0;
  v65 = *(a2 + v14);

  v60 = v26;
  v66 = a2;
  result = swift_beginAccess();
  v28 = 0;
  v29 = (v23 + 63) >> 6;
  v59 = v5 + 16;
  v57 = v5 + 32;
  v63 = v5;
  v30 = v5 + 8;
  v31 = v54;
  v58 = v21;
  v56 = v30;
  while (v25)
  {
LABEL_12:
    v34 = *(v65 + 48);
    v35 = v63;
    v64 = *(v63 + 72);
    v36 = *(v63 + 16);
    v37 = v61;
    v38 = v67;
    v36(v61, v34 + v64 * (__clz(__rbit64(v25)) | (v28 << 6)), v67);
    (*(v35 + 32))(v31, v37, v38);
    v39 = v66;
    v40 = v62;
    v36(v62, v66 + v60, v38);
    sub_22B076420(&qword_2813EAD70);
    LOBYTE(v36) = sub_22B0DF2F0();
    v41 = *(v35 + 8);
    v41(v40, v38);
    if ((v36 & 1) == 0)
    {
      v42 = v55;
      swift_beginAccess();
      v43 = *(v39 + v42);
      v44 = v31;
      v45 = sub_22B07639C(v31);
      if (v46)
      {
        v47 = v39;
        v48 = v45;
        v49 = v55;
        v50 = *(v47 + v55);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = *(v47 + v49);
        v68 = v52;
        *(v47 + v49) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v53();
          v52 = v68;
        }

        v41((*(v52 + 48) + v48 * v64), v67);
        v32 = *(*(v52 + 56) + 16 * v48 + 8);

        sub_22B09DADC(v48, v52);
        *(v47 + v49) = v52;
      }

      swift_endAccess();
      v31 = v44;
    }

    v25 &= v25 - 1;
    result = (v41)(v31, v67);
    v21 = v58;
  }

  while (1)
  {
    v33 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v33 >= v29)
    {
    }

    v25 = *(v21 + 8 * v33);
    ++v28;
    if (v25)
    {
      v28 = v33;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B09D770(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B0DF7F0() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_22B0DFD40();

      sub_22B0DF380();
      v15 = sub_22B0DFD80();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22B09D92C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B0DF7F0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22B0DFD40();

      sub_22B0DF380();
      v13 = sub_22B0DFD80();

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

unint64_t sub_22B09DADC(int64_t a1, uint64_t a2)
{
  v43 = sub_22B0DF0E0();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_22B0DF7F0();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_22B076420(&qword_2813EAD80);
      v26 = sub_22B0DF2A0();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_22B09DDE4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B0DF7F0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22B0DFD40();

      sub_22B0DF380();
      v13 = sub_22B0DFD80();

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
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
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

uint64_t sub_22B09DF94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(v5 + 32))(*(v2 + 80), v4, v5);
  *a2 = result;
  return result;
}

uint64_t (*sub_22B09E004(uint64_t *a1, uint64_t a2, uint64_t a3))()
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
  v8[8] = sub_22B09E77C(v8);
  v8[9] = sub_22B09E26C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_22B09E0B0;
}

uint64_t (*sub_22B09E0B4(uint64_t *a1, uint64_t a2, uint64_t a3))()
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
  v8[8] = sub_22B09E7B0(v8);
  v8[9] = sub_22B09E3E8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_22B0A023C;
}

uint64_t (*sub_22B09E160(uint64_t *a1, uint64_t a2, uint64_t a3))()
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
  v8[8] = sub_22B09E7B0(v8);
  v8[9] = sub_22B09E618(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_22B0A023C;
}

void sub_22B09E20C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_22B09E26C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
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
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_22B0768A8(a2, a3);
  *(v11 + 48) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_22B083DCC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_22B08545C(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_22B0768A8(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_22B0DFCA0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v24 = (*(*v5 + 56) + 16 * v13);
    v25 = *v24;
    v26 = *(v24 + 1);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  *v11 = v25;
  v11[1] = v26;
  return sub_22B09E3D0;
}

void (*sub_22B09E3E8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
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
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_22B0768A8(a2, a3);
  *(v11 + 48) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_22B083DE0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_22B085470(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_22B0768A8(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_22B0DFCA0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v24 = (*(*v5 + 56) + 16 * v13);
    v25 = *v24;
    v26 = *(v24 + 1);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  *v11 = v25;
  v11[1] = v26;
  return sub_22B09E3D0;
}

void sub_22B09E54C(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = *(*a1 + 48);
  if (v5)
  {
    v7 = v3[5];
    v8 = *v3[4];
    if (v6)
    {
      v9 = *(v8 + 56) + 16 * v7;
      *v9 = v4 & 1;
      *(v9 + 8) = v5;
    }

    else
    {
      a3(v7, v3[2], v3[3], v4 & 1, v5, v8);
    }
  }

  else if ((*a1)[6])
  {
    v10 = v3[5];
    v11 = *v3[4];
    sub_22B0A002C(*(v11 + 48) + 16 * v10);
    sub_22B09D92C(v10, v11);
  }

  v12 = v3[1];

  free(v3);
}

void (*sub_22B09E618(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
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
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_22B0768A8(a2, a3);
  *(v11 + 48) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_22B083DF4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_22B085484(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_22B0768A8(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_22B0DFCA0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v24 = (*(*v5 + 56) + 16 * v13);
    v25 = *v24;
    v26 = *(v24 + 1);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  *v11 = v25;
  v11[1] = v26;
  return sub_22B09E3D0;
}

uint64_t (*sub_22B09E77C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22B09E7A4;
}

uint64_t (*sub_22B09E7B0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22B0A0224;
}

uint64_t sub_22B09E7D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_22B09E7F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_22B09E808@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[4];
  *(a2 + 16) = *(a1 + 1);
  *(a2 + 32) = v4;
  *(a2 + 40) = *(a1 + 5);
  *a2 = v3;
  *(a2 + 8) = v2;
}

uint64_t sub_22B09E830(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v39 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v42 = a4;
    v13 = v11;
LABEL_14:
    v15 = __clz(__rbit64(v9)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a1 + 56) + 8 * v15);
    v46[0] = *v16;
    v46[1] = v17;
    v46[2] = v18;

    a2(&v43, v46);

    v19 = v43;
    v20 = v44;
    v21 = v45;
    v22 = *v47;
    v24 = sub_22B0768A8(v43, v44);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v42 & 1) == 0)
      {
        sub_22B084928();
      }
    }

    else
    {
      v29 = v47;
      sub_22B086E18(v27, v42 & 1);
      v30 = *v29;
      v31 = sub_22B0768A8(v19, v20);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v28)
    {
      v12 = *(v33[7] + 8 * v24);

      *(v33[7] + 8 * v24) = v21 + v12;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      v34 = (v33[6] + 16 * v24);
      *v34 = v19;
      v34[1] = v20;
      *(v33[7] + 8 * v24) = v21;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v13;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_22B0781A0();
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09EAB0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v37 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v40 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v45[0] = *v15;
    v45[1] = v16;
    v45[2] = v17;

    a2(&v42, v45);

    v18 = v42;
    v19 = v43;
    v20 = v44;
    v21 = *a5;
    v23 = sub_22B0768A8(v42, v43);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v40 & 1) == 0)
      {
        sub_22B084928();
      }
    }

    else
    {
      sub_22B086E18(v26, v40 & 1);
      v28 = *a5;
      v29 = sub_22B0768A8(v18, v19);
      if ((v27 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v23 = v29;
    }

    v9 &= v9 - 1;
    v31 = *a5;
    if (v27)
    {

      *(v31[7] + 8 * v23) = v20;
    }

    else
    {
      v31[(v23 >> 6) + 8] |= 1 << v23;
      v32 = (v31[6] + 16 * v23);
      *v32 = v18;
      v32[1] = v19;
      *(v31[7] + 8 * v23) = v20;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v31[2] = v35;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_22B0781A0();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v40 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

os_unfair_lock_s *sub_22B09ED24(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *&v4->_os_unfair_lock_opaque;
  if (a4)
  {
    v10 = a2[4];
    v11 = a2[5];
    __swift_project_boxed_opaque_existential_1(a2 + 1, v10);
    (*(v11 + 16))(&v18, sub_22B0A0198, a1, MEMORY[0x277D84F78] + 8, v10, v11);
  }

  sub_22B0915C4(a2, &v4[4]);
  *&v4[20]._os_unfair_lock_opaque = a1;
  v4[22]._os_unfair_lock_opaque = 0;
  *&v4[24]._os_unfair_lock_opaque = 0u;
  *&v4[28]._os_unfair_lock_opaque = 0u;
  *&v4[32]._os_unfair_lock_opaque = MEMORY[0x277D84F98];

  os_unfair_lock_lock(v4 + 22);
  v12 = *&v4[24]._os_unfair_lock_opaque;
  *&v5[24]._os_unfair_lock_opaque = v5;
  swift_unownedRetain();
  swift_unownedRelease();
  os_unfair_lock_unlock(v5 + 22);
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = (a3 + 40);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;

      os_unfair_lock_lock(v5 + 22);
      sub_22B097810(&v5[24]);
      sub_22B097390();
      sub_22B097D38(v16, v15, sub_22B087D04);

      sub_22B0974C4();
      sub_22B097D38(v16, v15, sub_22B087B34);

      sub_22B0975F8();
      sub_22B097D38(v16, v15, sub_22B087B20);

      os_unfair_lock_unlock(v5 + 22);
      v14 += 2;
      --v13;
    }

    while (v13);
  }

  sub_22B091448(a2);
  return v5;
}

uint64_t sub_22B09EF88(uint64_t a1)
{
  v2 = sub_22B0DF0E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_22B076420(&qword_2813EAD80);
  result = MEMORY[0x2318892B0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_22B0AA93C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_22B09F16C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22B09F1B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B09F23C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B09F284(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_22B09F2DC(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_22B0781A0();
  }

  return result;
}

uint64_t sub_22B09F2F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B09F358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B09F458()
{
  result = qword_2813EA370;
  if (!qword_2813EA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA370);
  }

  return result;
}

uint64_t sub_22B09F4AC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v48 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v39 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v6;
  while (v9)
  {
    v43 = a4;
    v16 = v11;
LABEL_15:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(*(a1 + 56) + 8 * v18);
    v47[0] = *v19;
    v47[1] = v20;
    v47[2] = v21;

    a2(&v44, v47);

    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = *v48;
    v27 = sub_22B0768A8(v44, v45);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_26;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v43 & 1) == 0)
      {
        sub_22B0847AC();
      }
    }

    else
    {
      v32 = v48;
      sub_22B086778(v30, v43 & 1);
      v33 = *v32;
      v34 = sub_22B0768A8(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_29;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v48;
    if (v31)
    {
      v37 = *(v36[7] + 8 * v27);

      if (__OFADD__(v37, v24))
      {
        goto LABEL_27;
      }

      *(v36[7] + 8 * v27) = v37 + v24;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v12 = (v36[6] + 16 * v27);
      *v12 = v22;
      v12[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v13 = v36[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_28;
      }

      v36[2] = v15;
    }

    a4 = 1;
    v11 = v16;
    v6 = v40;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      sub_22B0781A0();
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v43 = a4;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09F734(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v46[0] = *v15;
    v46[1] = v16;
    v46[2] = v17;

    a2(&v43, v46);

    v18 = v43;
    v19 = v44;
    v20 = v45;
    v21 = *v47;
    v23 = sub_22B0768A8(v43, v44);
    v24 = *(v21 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (*(v21 + 24) >= v26)
    {
      if ((v42 & 1) == 0)
      {
        sub_22B0847AC();
      }
    }

    else
    {
      v28 = v47;
      sub_22B086778(v26, v42 & 1);
      v29 = *v28;
      v30 = sub_22B0768A8(v18, v19);
      if ((v27 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v23 = v30;
    }

    v9 &= v9 - 1;
    v32 = *v47;
    if (v27)
    {

      *(v32[7] + 8 * v23) = v20;
    }

    else
    {
      v32[(v23 >> 6) + 8] |= 1 << v23;
      v33 = (v32[6] + 16 * v23);
      *v33 = v18;
      v33[1] = v19;
      *(v32[7] + 8 * v23) = v20;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v11 = v12;
    v6 = v39;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_22B0781A0();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09F9A8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v72 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v53 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v54 = v10;
  v55 = v6;
  while (1)
  {
    v12 = v9;
    v13 = v11;
    if (!v9)
    {
      break;
    }

LABEL_10:
    v15 = __clz(__rbit64(v12)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(a1 + 56) + 40 * v15;
    v20 = *(v19 + 16);
    v61[0] = v18;
    v61[1] = v17;
    v62 = *v19;
    v63 = v20;
    v64 = *(v19 + 24);

    a2(&v65, v61);

    v21 = v66;
    if (!v66)
    {
LABEL_27:
      sub_22B0781A0();
    }

    v22 = v65;
    v23 = v68;
    v59 = v67;
    v60 = v69;
    v25 = v70;
    v24 = v71;
    v26 = *v72;
    v28 = sub_22B0768A8(v65, v66);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_29;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_22B084D38();
      }
    }

    else
    {
      v33 = v72;
      sub_22B0870D0(v31, a4 & 1);
      v34 = *v33;
      v35 = sub_22B0768A8(v22, v21);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_32;
      }

      v28 = v35;
    }

    v58 = (v12 - 1) & v12;
    v37 = *v72;
    if (v32)
    {
      v38 = v37[7] + 40 * v28;
      v39 = *v38;
      v40 = *(v38 + 8);
      v41 = *(v38 + 16);
      v43 = *(v38 + 24);
      v42 = *(v38 + 32);

      if (__OFADD__(v41, v60))
      {
        goto LABEL_30;
      }

      if (v23 <= v40)
      {
        v44 = v40;
      }

      else
      {
        v44 = v23;
      }

      v45 = v59;
      if (v59 >= v39)
      {
        v45 = v39;
      }

      v46 = v37[7] + 40 * v28;
      *v46 = v45;
      *(v46 + 8) = v44;
      *(v46 + 16) = v41 + v60;
      *(v46 + 24) = v25 + v43;
      *(v46 + 32) = v24 + v42;
      a4 = 1;
      v11 = v13;
      v10 = v54;
      v6 = v55;
      v9 = v58;
    }

    else
    {
      v37[(v28 >> 6) + 8] |= 1 << v28;
      v47 = (v37[6] + 16 * v28);
      *v47 = v22;
      v47[1] = v21;
      v48 = v37[7] + 40 * v28;
      *v48 = v59;
      *(v48 + 8) = v23;
      *(v48 + 16) = v60;
      *(v48 + 24) = v25;
      *(v48 + 32) = v24;
      v49 = v37[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_31;
      }

      v37[2] = v51;
      a4 = 1;
      v11 = v13;
      v10 = v54;
      v6 = v55;
      v9 = (v12 - 1) & v12;
    }
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_27;
    }

    v12 = *(v6 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09FCC8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v63 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v6;
  while (1)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v16 = __clz(__rbit64(v13)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(a1 + 56) + 40 * v16;
    v21 = *(v20 + 16);
    v52[0] = v19;
    v52[1] = v18;
    v53 = *v20;
    v54 = v21;
    v55 = *(v20 + 24);

    a2(&v56, v52);

    v22 = v57;
    if (!v57)
    {
LABEL_22:
      sub_22B0781A0();
    }

    v23 = v56;
    v49 = v58;
    v50 = v59;
    v51 = v60;
    v25 = v61;
    v24 = v62;
    v26 = *v63;
    v28 = sub_22B0768A8(v56, v57);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_24;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_22B084D38();
      }
    }

    else
    {
      v33 = v63;
      sub_22B0870D0(v31, a4 & 1);
      v34 = *v33;
      v35 = sub_22B0768A8(v23, v22);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_26;
      }

      v28 = v35;
    }

    v37 = (v13 - 1) & v13;
    v38 = *v63;
    if (v32)
    {

      v12 = (v38[7] + 40 * v28);
      *v12 = v49;
      v12[1] = v50;
      v12[2] = v51;
      v12[3] = v25;
      v12[4] = v24;
    }

    else
    {
      v38[(v28 >> 6) + 8] |= 1 << v28;
      v39 = (v38[6] + 16 * v28);
      *v39 = v23;
      v39[1] = v22;
      v40 = (v38[7] + 40 * v28);
      *v40 = v49;
      v40[1] = v50;
      v40[2] = v51;
      v40[3] = v25;
      v40[4] = v24;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_25;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v14;
    v6 = v46;
    v9 = v37;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09FFB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  result = (*(v7 + 40))(*(v5 + 16), v4, v6, v7);
  *a2 = result & 1;
  a2[1] = v9;
  return result;
}

uint64_t sub_22B0A00C8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = 0;
  return result;
}

uint64_t sub_22B0A0198@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(v5 + 8))(v2, v4, v5);
  *a2 = 0;
  return result;
}

uint64_t sub_22B0A025C()
{
  result = sub_22B0DF0E0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B0A0320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *v6;
  v12 = swift_allocObject();
  v13 = *(v11 + 80);
  v12[2] = v13;
  v12[3] = a4;
  v14 = *(v11 + 88);
  v12[4] = v14;
  v12[5] = a5;
  v32[3] = a4;
  v32[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  v16 = qword_2813EA598;
  swift_beginAccess();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = a4;
  v17[4] = v14;
  v17[5] = a5;
  v17[6] = sub_22B0A0760;
  v17[7] = v12;
  v18 = *(v6 + v16);
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v6 + v16);
  v31 = v19;
  *(v6 + v16) = 0x8000000000000000;
  v29 = a1;
  v28 = sub_22B0768A8(a1, a2);
  if (__OFADD__(*(v19 + 16), (v20 & 1) == 0))
  {
    __break(1u);
  }

  else
  {
    v21 = v20;
    swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata();
    sub_22B0DF550();
    sub_22B0DFA30();
    if ((sub_22B0DFA10() & 1) == 0)
    {
      v24 = v28;
      *(v6 + v16) = v19;
      if (v21)
      {
LABEL_8:
        v26 = *(v31 + 56) + 8 * v24;
        sub_22B0DF520();
        swift_endAccess();
      }

LABEL_7:
      v25 = v17[7];
      (v17[6])();

      sub_22B0DFA20();
      goto LABEL_8;
    }

    v22 = sub_22B0768A8(v29, a2);
    if ((v21 & 1) == (v23 & 1))
    {
      v24 = v22;
      *(v6 + v16) = v19;
      if (v21)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B0A05E0()
{
  swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  return sub_22B0DF4E0();
}

void *sub_22B0A0648()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v3 = qword_2813EA5A0;
  v4 = sub_22B0DF0E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_2813EA5B8);

  v6 = *(v0 + qword_2813EA5B0);

  v7 = *(v0 + qword_2813EA598);

  return v0;
}

uint64_t sub_22B0A06F0()
{
  sub_22B0A0648();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B0A0760()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_22B0A05E0();
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

uint64_t sub_22B0A0814@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t *a3@<X8>)
{
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 88);
  v6 = type metadata accessor for FlatFileCounterSetPersistenceProvider();
  v7 = sub_22B0BBF00(a1, a2);
  a3[3] = v6;
  a3[4] = swift_getWitnessTable();
  *a3 = v7;
}

uint64_t sub_22B0A08FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v8 = *(*a1 + 80);
  sub_22B09F458();
  v9 = *(v4 + 88);
  v5 = type metadata accessor for FlatFileCounterSetPersistenceProvider();
  v6 = sub_22B0BBF00(a1, 2);
  a2[3] = v5;
  a2[4] = swift_getWitnessTable();
  *a2 = v6;
}

unint64_t sub_22B0A09C4(uint64_t a1)
{
  result = sub_22B09F458();
  *(a1 + 8) = result;
  return result;
}

uint64_t ProcessLaunchSummaryLogEvent.coreAnalyticsEventName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventName);
  v2 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventName + 8);

  return v1;
}

__n128 ProcessLaunchSummaryLogEvent.counts.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts;
  v3 = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts + 112);
  *(a1 + 96) = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts + 96);
  *(a1 + 112) = v3;
  *(a1 + 121) = *(v2 + 121);
  v4 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v4;
  v5 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v5;
  result = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = result;
  return result;
}

id ProcessLaunchSummaryLogEvent.__allocating_init(coreAnalyticsEventPrefix:counts:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  *&v8[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions] = 1;
  v17 = a1;
  v18 = a2;

  MEMORY[0x231889070](0xD000000000000015, 0x800000022B0E6CD0);

  v9 = &v8[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventName];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = &v8[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts];
  v11 = a3[7];
  *(v10 + 6) = a3[6];
  *(v10 + 7) = v11;
  *(v10 + 121) = *(a3 + 121);
  v12 = a3[3];
  *(v10 + 2) = a3[2];
  *(v10 + 3) = v12;
  v13 = a3[5];
  *(v10 + 4) = a3[4];
  *(v10 + 5) = v13;
  v14 = a3[1];
  *v10 = *a3;
  *(v10 + 1) = v14;
  v16.receiver = v8;
  v16.super_class = v4;
  return objc_msgSendSuper2(&v16, sel_init);
}

id ProcessLaunchSummaryLogEvent.init(coreAnalyticsEventPrefix:counts:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *&v3[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions] = 1;
  v14 = a1;
  v15 = a2;

  MEMORY[0x231889070](0xD000000000000015, 0x800000022B0E6CD0);

  v5 = v15;
  v6 = &v3[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventName];
  *v6 = v14;
  *(v6 + 1) = v5;
  v7 = &v3[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts];
  v8 = a3[7];
  *(v7 + 6) = a3[6];
  *(v7 + 7) = v8;
  *(v7 + 121) = *(a3 + 121);
  v9 = a3[3];
  *(v7 + 2) = a3[2];
  *(v7 + 3) = v9;
  v10 = a3[5];
  *(v7 + 4) = a3[4];
  *(v7 + 5) = v10;
  v11 = a3[1];
  *v7 = *a3;
  *(v7 + 1) = v11;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for ProcessLaunchSummaryLogEvent();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_22B0A0D18()
{
  v21 = MEMORY[0x277D84F98];
  v1 = (v0 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts);
  if (*(v0 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts + 8))
  {
    v2 = 0;
  }

  else
  {
    v3 = *v1;
    v2 = sub_22B0DF620();
  }

  sub_22B080C88(v2, 0x6F4368636E75616CLL, 0xEB00000000746E75);
  if (v1[3])
  {
    v4 = 0;
  }

  else
  {
    v5 = v1[2];
    v4 = sub_22B0DF620();
  }

  sub_22B080C88(v4, 0xD000000000000011, 0x800000022B0E6CF0);
  if (v1[5])
  {
    v6 = 0;
  }

  else
  {
    v7 = v1[4];
    v6 = sub_22B0DF620();
  }

  sub_22B080C88(v6, 0xD000000000000012, 0x800000022B0E6D10);
  if (v1[7])
  {
    v8 = 0;
  }

  else
  {
    v9 = v1[6];
    v8 = sub_22B0DF620();
  }

  sub_22B080C88(v8, 0xD000000000000010, 0x800000022B0E6D30);
  if (v1[9])
  {
    v10 = 0;
  }

  else
  {
    v11 = v1[8];
    v10 = sub_22B0DF620();
  }

  sub_22B080C88(v10, 0xD000000000000014, 0x800000022B0E6D50);
  if (v1[11])
  {
    v12 = 0;
  }

  else
  {
    v13 = v1[10];
    v12 = sub_22B0DF620();
  }

  sub_22B080C88(v12, 0xD000000000000017, 0x800000022B0E6D70);
  if (v1[13])
  {
    v14 = 0;
  }

  else
  {
    v15 = v1[12];
    v14 = sub_22B0DF620();
  }

  sub_22B080C88(v14, 0xD000000000000013, 0x800000022B0E6D90);
  if (v1[15])
  {
    v16 = 0;
  }

  else
  {
    v17 = v1[14];
    v16 = sub_22B0DF620();
  }

  sub_22B080C88(v16, 0x756F436873617263, 0xEA0000000000746ELL);
  if (v1[17])
  {
    v18 = 0;
  }

  else
  {
    v19 = v1[16];
    v18 = sub_22B0DF620();
  }

  sub_22B080C88(v18, 0x676F646863746177, 0xED0000746E756F43);
  return v21;
}

uint64_t sub_22B0A0FA0()
{
  v1 = OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22B0A1038(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ProcessLaunchSummaryLogEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessLaunchSummaryLogEvent.__allocating_init(startTime:)(double a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStartTime_];
}

id ProcessLaunchSummaryLogEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessLaunchSummaryLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_22B0A13C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 137))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B0A13E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
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

  *(result + 137) = v3;
  return result;
}

unint64_t sub_22B0A1440()
{
  result = qword_2813E9960;
  if (!qword_2813E9960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E9960);
  }

  return result;
}

uint64_t TapToRadarFilterResult.hashValue.getter()
{
  v1 = *v0;
  sub_22B0DFD40();
  MEMORY[0x231889A00](v1);
  return sub_22B0DFD80();
}

unint64_t sub_22B0A1518()
{
  result = qword_27D8B5B80;
  if (!qword_27D8B5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5B80);
  }

  return result;
}

uint64_t sub_22B0A15A4(uint64_t a1)
{
  v2 = sub_22B0DF0E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - v9;
  MEMORY[0x28223BE20](v8);
  v57 = &v46 - v11;
  v12 = *(a1 + 16);
  v13 = v12 + 56;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 56);
  v17 = (v14 + 63) >> 6;
  v59 = a1;
  v60 = v3 + 16;
  v55 = (v3 + 8);
  v56 = v3 + 32;
  v58 = v12;

  v19 = 0;
  *&v20 = 136315138;
  v49 = v20;
  v50 = v3;
  v47 = v10;
  v48 = v7;
  if (v16)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v31 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v31 >= v17)
    {

      *(v59 + 16) = MEMORY[0x277D84FA0];
      return result;
    }

    v16 = *(v13 + 8 * v31);
    ++v19;
    if (v16)
    {
      while (1)
      {
        v32 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v33 = v57;
        v34 = *(v3 + 16);
        v34(v57, *(v58 + 48) + *(v3 + 72) * (v32 | (v31 << 6)), v2);
        (*(v3 + 32))(v10, v33, v2);
        v35 = v10;
        v36 = *(v59 + 8);
        if (*(v36 + 16) && (v37 = sub_22B07639C(v35), (v38 & 1) != 0))
        {
          v39 = *(*(v36 + 56) + 8 * v37);

          sub_22B0A1A58(v40, v35);

          result = (*v55)(v35, v2);
        }

        else
        {
          if (qword_2813E9AA8 != -1)
          {
            swift_once();
          }

          v41 = sub_22B0DF1B0();
          __swift_project_value_buffer(v41, qword_2813EBE90);
          v34(v7, v35, v2);
          v42 = v7;
          v43 = sub_22B0DF190();
          v44 = sub_22B0DF690();
          if (os_log_type_enabled(v43, v44))
          {
            v21 = swift_slowAlloc();
            v52 = v21;
            v54 = swift_slowAlloc();
            v61 = v54;
            *v21 = v49;
            sub_22B0A359C(&qword_2813EAD68, MEMORY[0x277CC9578]);
            v22 = v42;
            v23 = sub_22B0DFC20();
            v24 = v2;
            v26 = v25;
            v51 = v44;
            v53 = *v55;
            v53(v22, v24);
            v27 = sub_22B07B428(v23, v26, &v61);
            v2 = v24;

            v28 = v52;
            *(v52 + 1) = v27;
            v29 = v28;
            _os_log_impl(&dword_22B074000, v43, v51, "Changed date %s has no data, which is impossible", v28, 0xCu);
            v30 = v54;
            __swift_destroy_boxed_opaque_existential_0(v54);
            MEMORY[0x23188A520](v30, -1, -1);
            v3 = v50;
            MEMORY[0x23188A520](v29, -1, -1);

            v10 = v47;
            result = v53(v47, v24);
            v19 = v31;
            v7 = v48;
            if (!v16)
            {
              goto LABEL_6;
            }

            goto LABEL_10;
          }

          v7 = v42;
          v45 = *v55;
          (*v55)(v42, v2);
          result = v45(v35, v2);
        }

        v19 = v31;
        v10 = v35;
        if (!v16)
        {
          goto LABEL_6;
        }

LABEL_10:
        v31 = v19;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_22B0A1A58(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  v128 = *MEMORY[0x277D85DE8];
  v101 = sub_22B0DEF00();
  v100 = *(v101 - 8);
  v3 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22B0DF0E0();
  v5 = *(v102 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v102);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OutputDataStream();
  inited = swift_initStackObject();
  v112 = inited;
  *(inited + 16) = xmmword_22B0E4800;
  v10 = inited + 16;
  v11 = sub_22B0DEE10();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v109 = sub_22B0DEE00();
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v110 = a1;

  v19 = 0;
  v114 = 0;
  v106 = v5;
  v107 = v8;
  v113 = v10;
  v105 = a1 + 64;
  v104 = v18;
LABEL_6:
  if (v17)
  {
    v20 = v5;
    v21 = v19;
    goto LABEL_12;
  }

  do
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_73;
    }

    if (v21 >= v18)
    {

      __src = 0;
      v63 = sub_22B0A32F4(&__src, v127);
      v65 = v64;
      swift_beginAccess();
      sub_22B0DEF60();
      swift_endAccess();
      sub_22B080408(v63, v65 & 0xFFFFFFFFFFFFFFLL);
      v66 = *(v112 + 16);
      v67 = *(v112 + 24) >> 62;
      if (v67 > 1)
      {
        v21 = v102;
        if (v67 != 2)
        {
LABEL_62:
          v71 = sub_22B0DEF40();
          v73 = v72;
          v74 = *(v98 + 16);
          v75 = sub_22B0DF050();
          v122 = 0x2D796C696144;
          v123 = 0xE600000000000000;
          MEMORY[0x231889070](v75);

          MEMORY[0x231889070](0x7265746E756F632ELL, 0xE900000000000073);

          v76 = v99;
          sub_22B0DEEC0();
          v77 = v76;

          v78 = v114;
          sub_22B0DEF50();
          v114 = v78;
          if (!v78)
          {

            sub_22B080408(v71, v73);
            v79 = v112;
            swift_setDeallocating();
            sub_22B080408(*(v79 + 16), *(v79 + 24));
            (*(v100 + 8))(v77, v101);
            goto LABEL_71;
          }

          sub_22B080408(v71, v73);

          (*(v100 + 8))(v77, v101);
LABEL_67:
          if (qword_2813E9AA8 != -1)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        }

        v68 = *(v66 + 16);
        v69 = *(v66 + 24);
      }

      else
      {
        v21 = v102;
        if (!v67)
        {
          goto LABEL_62;
        }

        v68 = v66;
        v69 = v66 >> 32;
      }

      if (v69 < v68)
      {
        __break(1u);
      }

      goto LABEL_62;
    }

    v17 = *(v14 + 8 * v21);
    ++v19;
  }

  while (!v17);
  v20 = v5;
LABEL_12:
  v22 = (v21 << 9) | (8 * __clz(__rbit64(v17)));
  v23 = *(*(v110 + 48) + v22);
  v119 = *(*(v110 + 56) + v22);
  type metadata accessor for AccessoryGroupSpecifier();
  if (swift_dynamicCastClass())
  {
    v24 = 50331648;
  }

  else
  {
    type metadata accessor for HomeGroupSpecifier();
    if (swift_dynamicCastClass())
    {
      v24 = 0x2000000;
    }

    else
    {
      v24 = 0x1000000;
    }
  }

  __src = v24;

  v25 = sub_22B0A32F4(&__src, v127);
  v27 = v26;
  swift_beginAccess();
  sub_22B0DEF60();
  swift_endAccess();
  sub_22B080408(v25, v27 & 0xFFFFFFFFFFFFFFLL);
  v111 = v23;
  v122 = v23;
  type metadata accessor for NamedGroupSpecifier();
  sub_22B0A359C(&qword_2813EA2D0, type metadata accessor for NamedGroupSpecifier);
  v28 = v114;
  v29 = sub_22B0DEDF0();
  v114 = v28;
  if (v28)
  {

    v21 = v102;
    v5 = v20;
LABEL_66:
    v8 = v107;
    goto LABEL_67;
  }

  v31 = v29;
  v32 = v30;
  sub_22B07FFAC(v29, v30, 1);
  v114 = 0;
  v108 = (v17 - 1) & v17;
  sub_22B080408(v31, v32);
  v5 = 0;
  v33 = v119 + 64;
  v34 = 1 << *(v119 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & *(v119 + 64);
  v8 = ((v34 + 63) >> 6);
  while (2)
  {
    if (v36)
    {
LABEL_30:
      v39 = __clz(__rbit64(v36)) | (v5 << 6);
      v40 = *(*(v119 + 48) + v39);
      v41 = *(v119 + 56) + 24 * v39;
      v43 = *v41;
      v42 = *(v41 + 8);
      v116 = *(v41 + 16);
      v44 = v118 & 0xF00000000000000 | 0x4000000000000;
      swift_beginAccess();
      v120 = v43;
      v45 = v43;
      v46 = v42;
      sub_22B08045C(v45, v42);
      v118 = v44;
      sub_22B0DEF60();
      swift_endAccess();
      v47 = v42 >> 62;
      if ((v42 >> 62) > 1)
      {
        v49 = 0;
        v48 = v117;
        if (v47 == 2)
        {
          v51 = *(v120 + 16);
          v50 = *(v120 + 24);
          v52 = __OFSUB__(v50, v51);
          v49 = v50 - v51;
          if (v52)
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        v48 = v117;
        if (v47)
        {
          LODWORD(v49) = HIDWORD(v120) - v120;
          if (__OFSUB__(HIDWORD(v120), v120))
          {
            goto LABEL_76;
          }

          v49 = v49;
        }

        else
        {
          v49 = BYTE6(v42);
        }
      }

      v53 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_74;
      }

      if (v53 >= 0x100000000)
      {
        sub_22B0804B0();
        v114 = swift_allocError();
        *v70 = v53;
        *(v70 + 8) = 0;
        swift_willThrow();

        sub_22B080408(v120, v42);

        v21 = v102;
        v5 = v106;
        goto LABEL_66;
      }

      if (v53 < 0)
      {
        goto LABEL_75;
      }

      v54 = v48 & 0xF00000000000000 | 0x4000000000000;
      swift_beginAccess();
      v117 = v54;
      sub_22B0DEF60();
      v115 = v115 & 0xF00000000000000 | 0x1000000000000;
      sub_22B0DEF60();
      v124 = MEMORY[0x277CC9318];
      v125 = MEMORY[0x277CC9300];
      v55 = v120;
      v122 = v120;
      v123 = v42;
      v56 = __swift_project_boxed_opaque_existential_1(&v122, MEMORY[0x277CC9318]);
      v57 = *v56;
      v58 = v56[1];
      v59 = v58 >> 62;
      if ((v58 >> 62) > 1)
      {
        if (v59 != 2)
        {
          memset(v121, 0, 14);
          sub_22B08045C(v55, v42);
LABEL_23:
          v37 = v55;
          sub_22B0DEF30();
LABEL_24:
          v36 &= v36 - 1;
          __swift_destroy_boxed_opaque_existential_0(&v122);
          swift_endAccess();
          sub_22B080408(v37, v46);
          continue;
        }

        v61 = *(v57 + 16);
        v60 = *(v57 + 24);
        v116 = v42;
        sub_22B08045C(v55, v42);
        if (sub_22B0DEE30() && __OFSUB__(v61, sub_22B0DEE50()))
        {
          goto LABEL_80;
        }

        if (__OFSUB__(v60, v61))
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (!v59)
        {
          v121[0] = *v56;
          LOWORD(v121[1]) = v58;
          BYTE2(v121[1]) = BYTE2(v58);
          BYTE3(v121[1]) = BYTE3(v58);
          BYTE4(v121[1]) = BYTE4(v58);
          BYTE5(v121[1]) = BYTE5(v58);
          sub_22B08045C(v55, v42);
          goto LABEL_23;
        }

        v116 = v42;
        v62 = v57;
        if (v57 >> 32 < v57)
        {
          goto LABEL_78;
        }

        sub_22B08045C(v55, v116);
        if (sub_22B0DEE30() && __OFSUB__(v62, sub_22B0DEE50()))
        {
          goto LABEL_81;
        }
      }

      sub_22B0DEE40();
      sub_22B0DEF30();
      v37 = v120;
      v46 = v116;
      goto LABEL_24;
    }

    break;
  }

  while (1)
  {
    v38 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v38 >= v8)
    {

      v19 = v21;
      v5 = v106;
      v8 = v107;
      v14 = v105;
      v18 = v104;
      v17 = v108;
      goto LABEL_6;
    }

    v36 = *(v33 + 8 * v38);
    ++v5;
    if (v36)
    {
      v5 = v38;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  swift_once();
LABEL_68:
  v80 = sub_22B0DF1B0();
  __swift_project_value_buffer(v80, qword_2813EBE90);
  (*(v5 + 16))(v8, v103, v21);
  v81 = v114;
  v82 = v114;
  v83 = sub_22B0DF190();
  v84 = sub_22B0DF690();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = v21;
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v122 = v88;
    *v85 = 136315394;
    sub_22B0A359C(&qword_2813EAD68, MEMORY[0x277CC9578]);
    v89 = sub_22B0DFC20();
    v90 = v8;
    v92 = v91;
    (*(v5 + 8))(v90, v86);
    v93 = sub_22B07B428(v89, v92, &v122);

    *(v85 + 4) = v93;
    *(v85 + 12) = 2112;
    v94 = v114;
    v95 = v114;
    v96 = _swift_stdlib_bridgeErrorToNSError();
    *(v85 + 14) = v96;
    *v87 = v96;
    _os_log_impl(&dword_22B074000, v83, v84, "Failed to save counters for date %s: %@", v85, 0x16u);
    sub_22B093A64(v87);
    MEMORY[0x23188A520](v87, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x23188A520](v88, -1, -1);
    MEMORY[0x23188A520](v85, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v21);
  }

LABEL_71:
  v97 = *MEMORY[0x277D85DE8];
}

uint64_t *sub_22B0A27F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v9 = *v5;
  *(v5 + 8) = 0;
  v5[5] = 0;
  v5[6] = 0;
  *(v5 + 56) = 1;
  v10 = type metadata accessor for FlatFileManager();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_22B0CE5D0(a1, a2);
  if (v4)
  {

    sub_22B0A3628((v5 + 5));
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5[2] = v13;
    v5[3] = a3;
  }

  return v5;
}

uint64_t sub_22B0A2920(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5B98, &qword_22B0E48D8);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v7[3] = v4;
  v7[4] = &off_283EEC2B8;
  v7[0] = v5;

  a2(v7);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void sub_22B0A29CC(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  os_unfair_lock_lock((v5 + 32));
  sub_22B0A2F28((v5 + 40), v5, &v9);
  if (v4)
  {
    os_unfair_lock_unlock((v5 + 32));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v5 + 32));
    if (v9)
    {
      a1(v9);
      os_unfair_lock_lock((v5 + 32));
      sub_22B0A2FF4((v5 + 40));
      os_unfair_lock_unlock((v5 + 32));
    }

    else
    {
      (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
    }
  }
}

uint64_t sub_22B0A2B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v13 + 56))(v14, v13);
  v23[0] = a3;
  swift_getExtendedExistentialTypeMetadata_unique();
  if (swift_dynamicCast())
  {
    if (*(&v25 + 1))
    {
      sub_22B07D124(&v24, &v20);
      goto LABEL_6;
    }
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  v20 = v24;
  v21 = v25;
  v22 = v26;
LABEL_6:
  if (*(&v21 + 1))
  {
    v15 = sub_22B0781A8(&v20, v23);
    MEMORY[0x28223BE20](v15);
    *(&v20 - 6) = a3;
    *(&v20 - 5) = a4;
    *(&v20 - 4) = a5;
    *(&v20 - 3) = a1;
    v18 = a2;
    v19 = v23;
    sub_22B0A29CC(sub_22B0A35E4, a4, a6);
    result = __swift_destroy_boxed_opaque_existential_0(v23);
    if (*(&v25 + 1))
    {
      return __swift_destroy_boxed_opaque_existential_0(&v24);
    }
  }

  else
  {
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_22B0DF8E0();

    strcpy(v23, "Counter class ");
    HIBYTE(v23[1]) = -18;
    v17 = sub_22B0DFE30();
    MEMORY[0x231889070](v17);

    MEMORY[0x231889070](0xD00000000000001ELL, 0x800000022B0E6FC0);
    result = sub_22B0DFB00();
    __break(1u);
  }

  return result;
}

uint64_t sub_22B0A2D84(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void *a4)
{
  v6 = a4[3];
  v7 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v6);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for FlatFileManager();
  v8(v11, a1, v9, &off_283EED438, v6, v7);
  a2(v11);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

void sub_22B0A2E50(void (*a1)(uint64_t))
{
  os_unfair_lock_lock((v1 + 32));
  sub_22B0A2F28((v1 + 40), v1, &v5);
  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    __break(1u);
  }

  else
  {

    a1(v4);
    os_unfair_lock_lock((v1 + 32));
    sub_22B0A2FF4((v1 + 40));
    os_unfair_lock_unlock(0x20);
  }
}

uint64_t *sub_22B0A2F28@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result;
  v5 = *result;
  if (!*result)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5B90, &qword_22B0E48A0);
    v11 = swift_allocObject();
    *(v11 + 32) = 0;
    v12 = MEMORY[0x277D84F98];
    *(v11 + 40) = 0;
    *(v11 + 48) = v12;
    *(v11 + 40) = 1;
    *(v11 + 56) = MEMORY[0x277D84FA0];
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    *v3 = v11;
    v3[1] = 1;
    *a3 = v11;

    v13 = v10;
  }

  v6 = result[1];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    result[1] = v8;
    *a3 = v5;
  }

  __break(1u);
  return result;
}

void *sub_22B0A2FF4(void *result)
{
  v1 = result[1];
  v2 = v1 == 1;
  v3 = v1 < 1;
  v4 = v1 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    result[1] = v4;
    if (v2)
    {
      v5 = *result;
      if (*result)
      {
        v6 = result;
        os_unfair_lock_lock((v5 + 32));
        if (sub_22B0A345C(*(v5 + 40)))
        {
          sub_22B0A15A4(v5 + 40);
          v7 = sub_22B0B8CE8(MEMORY[0x277D84F90]);
          v8 = *(v5 + 48);
          *(v5 + 48) = v7;

          *(v5 + 40) = 0;
        }

        os_unfair_lock_unlock((v5 + 32));

        result = v6;
      }

      *result = 0;
    }
  }

  return result;
}

uint64_t sub_22B0A30A0()
{
  v1 = *(v0 + 16);

  sub_22B0A3628(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t sub_22B0A310C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22B0A3168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22B0A3234()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 8);
  sub_22B0A2F28(&v1[10], v1, &v3);
  os_unfair_lock_unlock(v1 + 8);
}

void sub_22B0A329C()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 8);
  sub_22B0A2FF4(&v1[10]._os_unfair_lock_opaque);

  os_unfair_lock_unlock(v1 + 8);
}

uint64_t sub_22B0A32F4(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
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
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B0A33AC(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_22B0A32F4(a1, &a1[a2]);
  }

  v3 = sub_22B0DEE60();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22B0DEE20();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_22B0DEF20();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_22B0A345C(char a1)
{
  if (a1)
  {
    return a1 & 1;
  }

  if ((HMFIsInternalBuild() & 1) == 0)
  {
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v2 = sub_22B0DF1B0();
    __swift_project_value_buffer(v2, qword_2813EBE90);
    v3 = sub_22B0DF190();
    v4 = sub_22B0DF690();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22B074000, v3, v4, "FlatFileCounterStore isn't open", v5, 2u);
      MEMORY[0x23188A520](v5, -1, -1);
    }

    return a1 & 1;
  }

  result = sub_22B0DFB00();
  __break(1u);
  return result;
}

uint64_t sub_22B0A359C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B0A35E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_22B0A2D84(a1, *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

uint64_t sub_22B0A3608(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_22B0A2920(a1, *(v1 + 24));
}

id sub_22B0A36B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessMemorySampleLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B0A37E4()
{
  v11 = MEMORY[0x277D84F98];
  v1 = (v0 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_counts);
  if (*(v0 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_counts + 8))
  {
    v2 = 0;
  }

  else
  {
    v3 = *v1;
    v2 = sub_22B0DF620();
  }

  sub_22B080C88(v2, 0xD000000000000021, 0x800000022B0E70D0);
  if (v1[3])
  {
    v4 = 0;
  }

  else
  {
    v5 = v1[2];
    v4 = sub_22B0DF620();
  }

  sub_22B080C88(v4, 0xD000000000000022, 0x800000022B0E7100);
  if (v1[5])
  {
    v6 = 0;
  }

  else
  {
    v7 = v1[4];
    v6 = sub_22B0DF620();
  }

  sub_22B080C88(v6, 0xD000000000000022, 0x800000022B0E7130);
  if (v1[7])
  {
    v8 = 0;
  }

  else
  {
    v9 = v1[6];
    v8 = sub_22B0DF620();
  }

  sub_22B080C88(v8, 0xD00000000000001FLL, 0x800000022B0E7160);
  return v11;
}

id sub_22B0A398C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessMemorySummaryLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22B0A3A14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B0A3A34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

uint64_t DailySchedulerProvider.makeScheduler(repeatingScheduler:preferenceName:coreAnalyticsEventPrefix:logEventSubmitter:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_22B0A67B4(a1, a2, a3, a4, a5, a6, v6, ObjectType);
}

uint64_t *DailyScheduler.__allocating_init<A>(repeatingScheduler:dailyBlockRunDateDelegate:dateProvider:coreAnalyticsEventPrefix:logEventSubmitter:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_allocObject();
  v16 = sub_22B0A6C74(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*(a7 - 8) + 8))(a1, a7);
  return v16;
}

uint64_t sub_22B0A3BD4()
{
  type metadata accessor for DailyScheduler.DailyBlock();
  v0 = sub_22B0DF210();
  type metadata accessor for DailyScheduler.Bookend();
  sub_22B0DF210();
  return v0;
}

uint64_t *DailyScheduler.init<A>(repeatingScheduler:dailyBlockRunDateDelegate:dateProvider:coreAnalyticsEventPrefix:logEventSubmitter:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_22B0A6C74(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*(a7 - 8) + 8))(a1, a7);
  return v10;
}

uint64_t sub_22B0A3C9C(char a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 64) = a1;
  return MEMORY[0x2822009F8](sub_22B0A3CC0, 0, 0);
}

uint64_t sub_22B0A3CC0()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_22B0A3DB0;
    v4 = *(v0 + 64);

    return sub_22B0A3EC0(v4);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_22B0A3DB0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B0A3EC0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 192) = a1;
  *(v2 + 24) = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C30, &unk_22B0E60A0);
  *(v2 + 32) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  v6 = sub_22B0DF0E0();
  *(v2 + 80) = v6;
  v7 = *(v6 - 8);
  *(v2 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0A4050, 0, 0);
}

uint64_t sub_22B0A4050()
{
  if (*(v0 + 192))
  {
    goto LABEL_11;
  }

  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v68 = *(v8 + 88);
  v69 = *(v0 + 32);
  v9 = [v68 startOfCurrentDay];
  sub_22B0DF0B0();

  v10 = *(v7 + 80);
  v65 = v10;
  v66 = *(v8 + 80);
  v67 = *(v7 + 88);
  (*(v67 + 8))();
  v64 = v2[2];
  v64(v4, v1, v3);
  v63 = v2[7];
  v63(v4, 0, 1, v3);
  v11 = *(v69 + 48);
  sub_22B0898A8(v5, v6, &unk_27D8B5670, &unk_22B0E32C0);
  sub_22B0898A8(v4, v6 + v11, &unk_27D8B5670, &unk_22B0E32C0);
  v12 = v2[6];
  v13 = v12(v6, 1, v3);
  v14 = *(v0 + 80);
  if (v13 == 1)
  {
    v15 = *(v0 + 72);
    sub_22B07D02C(*(v0 + 64), &unk_27D8B5670, &unk_22B0E32C0);
    sub_22B07D02C(v15, &unk_27D8B5670, &unk_22B0E32C0);
    if (v12(v6 + v11, 1, v14) == 1)
    {
      v16 = *(v0 + 88);
      sub_22B07D02C(*(v0 + 40), &unk_27D8B5670, &unk_22B0E32C0);
      (*(v16 + 8))(*(v0 + 104), *(v0 + 80));
LABEL_20:
      v54 = *(v0 + 96);
      v53 = *(v0 + 104);
      v56 = *(v0 + 64);
      v55 = *(v0 + 72);
      v58 = *(v0 + 48);
      v57 = *(v0 + 56);
      v59 = *(v0 + 40);

      v60 = *(v0 + 8);

      return v60();
    }
  }

  else
  {
    sub_22B0898A8(*(v0 + 40), *(v0 + 56), &unk_27D8B5670, &unk_22B0E32C0);
    if (v12(v6 + v11, 1, v14) != 1)
    {
      v47 = *(v0 + 88);
      v46 = *(v0 + 96);
      v48 = *(v0 + 80);
      v62 = *(v0 + 72);
      v50 = *(v0 + 56);
      v49 = *(v0 + 64);
      v70 = *(v0 + 40);
      (*(v47 + 32))(v46, v6 + v11, v48);
      sub_22B0A7304();
      v51 = sub_22B0DF2F0();
      v52 = *(v47 + 8);
      v52(v46, v48);
      sub_22B07D02C(v49, &unk_27D8B5670, &unk_22B0E32C0);
      sub_22B07D02C(v62, &unk_27D8B5670, &unk_22B0E32C0);
      v52(v50, v48);
      sub_22B07D02C(v70, &unk_27D8B5670, &unk_22B0E32C0);
      if (v51)
      {
        v52(*(v0 + 104), *(v0 + 80));
        goto LABEL_20;
      }

      goto LABEL_8;
    }

    v17 = *(v0 + 80);
    v18 = *(v0 + 88);
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);
    sub_22B07D02C(*(v0 + 64), &unk_27D8B5670, &unk_22B0E32C0);
    sub_22B07D02C(v19, &unk_27D8B5670, &unk_22B0E32C0);
    (*(v18 + 8))(v20, v17);
  }

  sub_22B07D02C(*(v0 + 40), &qword_27D8B5C30, &unk_22B0E60A0);
LABEL_8:
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v23 = *(v0 + 80);
  v24 = *(v0 + 88);
  v25 = [v68 currentDate];
  sub_22B0DF0B0();

  sub_22B0DEFC0();
  v27 = v26;
  v28 = *(v24 + 8);
  v28(v22, v23);
  v29 = *(v0 + 104);
  v30 = *(v0 + 80);
  if (v27 < 300.0)
  {
    v28(*(v0 + 104), *(v0 + 80));
    goto LABEL_20;
  }

  v31 = *(v0 + 48);
  v64(v31, *(v0 + 104), *(v0 + 80));
  v63(v31, 0, 1, v30);
  (*(v67 + 16))(v31, v65);
  v28(v29, v30);
LABEL_11:
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v32 = sub_22B0DF1B0();
  __swift_project_value_buffer(v32, qword_2813EBE78);
  v33 = sub_22B0DF190();
  v34 = sub_22B0DF670();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v0 + 192);
    v36 = swift_slowAlloc();
    *v36 = 67109120;
    *(v36 + 4) = v35;
    _os_log_impl(&dword_22B074000, v33, v34, "Running daily blocks with isDebug = %{BOOL}d...", v36, 8u);
    MEMORY[0x23188A520](v36, -1, -1);
  }

  v38 = *(v0 + 16);
  v37 = *(v0 + 24);
  v39 = *(v0 + 192);

  os_unfair_lock_lock((v38 + 56));
  v40 = *(v37 + 80);
  *(v0 + 112) = v40;
  v41 = *(v37 + 88);
  *(v0 + 120) = v41;
  v42 = *(v38 + 72);
  *(v0 + 128) = v42;
  *(v0 + 136) = *(v38 + 64);
  type metadata accessor for DailyScheduler.State();
  type metadata accessor for DailyScheduler.Bookend();
  sub_22B0DF550();
  type metadata accessor for DailyScheduler.DailyBlock();
  sub_22B0DF550();

  os_unfair_lock_unlock((v38 + 56));
  v43 = swift_task_alloc();
  *(v0 + 144) = v43;
  *(v43 + 16) = v40;
  *(v43 + 24) = v41;
  *(v43 + 32) = v42;
  *(v43 + 40) = v39;
  v44 = *(MEMORY[0x277D859E8] + 4);
  v45 = swift_task_alloc();
  *(v0 + 152) = v45;
  *v45 = v0;
  v45[1] = sub_22B0A4748;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_22B0A4748()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B0A4860, 0, 0);
}

uint64_t sub_22B0A4860()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 16);
  v3 = *(v0 + 192);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  v5 = *(MEMORY[0x277D859E8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = sub_22B0A494C;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_22B0A494C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 136);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B0A4A80, 0, 0);
}

uint64_t sub_22B0A4A80()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 192);
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *(v3 + 16) = *(v0 + 112);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D859E8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_22B0A4B70;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_22B0A4B70()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 128);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B0A4CA4, 0, 0);
}

uint64_t sub_22B0A4CA4()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

void DailyScheduler.scheduleDailyBlock(name:publicSafeName:block:)()
{
  v1 = *&v0->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v0 + 14);
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  sub_22B0A4E34();
  type metadata accessor for DailyScheduler.State();

  os_unfair_lock_unlock(v0 + 14);
}

uint64_t sub_22B0A4E34()
{
  type metadata accessor for DailyScheduler.DailyBlock();
  sub_22B0DF550();

  return sub_22B0DF520();
}

void DailyScheduler.scheduleDailyBookends(name:setupBlock:cleanupBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 | a5)
  {
    v11 = *&v5->_os_unfair_lock_opaque;
    os_unfair_lock_lock(v5 + 14);
    v12 = *(v11 + 80);
    v13 = *(v11 + 88);
    sub_22B0A5008(&v5[16], a1, a2, a3, a4, a5);
    type metadata accessor for DailyScheduler.State();

    os_unfair_lock_unlock(v5 + 14);
  }

  else
  {
    sub_22B0DFB00();
    __break(1u);
  }
}

uint64_t sub_22B0A5008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_22B0A7418(a4);
  sub_22B0A7418(a6);
  type metadata accessor for DailyScheduler.Bookend();
  sub_22B0DF550();
  return sub_22B0DF520();
}

uint64_t sub_22B0A50C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = a6;
  *(v6 + 120) = a4;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480) - 8) + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0A5170, 0, 0);
}

uint64_t sub_22B0A5170()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  type metadata accessor for DailyScheduler.Bookend();
  if (sub_22B0DF510())
  {
    v4 = 0;
    v33 = *(v0 + 120);
    v5 = (*(v0 + 80) + 72);
    while (1)
    {
      v10 = *(v0 + 80);
      v11 = sub_22B0DF4F0();
      result = sub_22B0DF4C0();
      if ((v11 & 1) == 0)
      {
        break;
      }

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_21;
      }

      v13 = *(v5 - 3);
      if (v13)
      {
        v35 = *(v5 - 4);
        v14 = *(v5 - 2);
        v36 = *v5;
        v37 = *(v5 - 1);
        v16 = *(v0 + 104);
        v15 = *(v0 + 112);
        v17 = sub_22B0DF5C0();
        v18 = *(v17 - 8);
        (*(v18 + 56))(v15, 1, 1, v17);
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        *(v19 + 32) = v13;
        *(v19 + 40) = v14;
        *(v19 + 48) = v33;
        sub_22B0898A8(v15, v16, &qword_27D8B5C38, &qword_22B0E5480);
        v34 = v18;
        v20 = v18;
        v21 = v13;
        LODWORD(v16) = (*(v20 + 48))(v16, 1, v17);
        sub_22B0A7418(v13);
        sub_22B0A7418(v13);

        sub_22B0A7418(v37);
        sub_22B0A7418(v13);
        v22 = *(v0 + 104);
        if (v16 == 1)
        {
          sub_22B07D02C(*(v0 + 104), &qword_27D8B5C38, &qword_22B0E5480);
        }

        else
        {
          sub_22B0DF5B0();
          (*(v34 + 8))(v22, v17);
        }

        if (*(v19 + 16))
        {
          v23 = *(v19 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v24 = sub_22B0DF570();
          v26 = v25;
          swift_unknownObjectRelease();
        }

        else
        {
          v24 = 0;
          v26 = 0;
        }

        v27 = **(v0 + 72);
        v28 = swift_allocObject();
        *(v28 + 16) = &unk_22B0E6110;
        *(v28 + 24) = v19;

        if (v26 | v24)
        {
          v6 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v24;
          *(v0 + 40) = v26;
        }

        else
        {
          v6 = 0;
        }

        v7 = *(v0 + 112);
        *(v0 + 48) = 1;
        *(v0 + 56) = v6;
        *(v0 + 64) = v27;
        swift_task_create();

        sub_22B094864(v21);
        sub_22B094864(v37);

        sub_22B094864(v21);
        sub_22B07D02C(v7, &qword_27D8B5C38, &qword_22B0E5480);
        v8 = v4 + 1;
      }

      v9 = *(v0 + 80);
      ++v4;
      v5 += 6;
      if (v8 == sub_22B0DF510())
      {
        goto LABEL_17;
      }
    }

    v32 = *(v0 + 80);
    result = sub_22B0DF900();
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:
    v30 = *(v0 + 104);
    v29 = *(v0 + 112);

    v31 = *(v0 + 8);

    return v31();
  }

  return result;
}

uint64_t sub_22B0A55A0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_22B0A5698;

  return v10(a5);
}

uint64_t sub_22B0A5698()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B0A578C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 168) = a5;
  *(v5 + 128) = a3;
  *(v5 + 136) = a4;
  *(v5 + 120) = a2;
  *(v5 + 144) = *a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480) - 8) + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0A5864, 0, 0);
}

uint64_t sub_22B0A5864()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v36 = *(v1 + 88);
  v37 = *(v1 + 80);
  type metadata accessor for DailyScheduler.DailyBlock();
  if (sub_22B0DF510())
  {
    v3 = 0;
    v35 = *(v0 + 168);
    v34 = **(v0 + 120);
    v4 = (*(v0 + 128) + 72);
    while (1)
    {
      v8 = *(v0 + 128);
      v9 = sub_22B0DF4F0();
      result = sub_22B0DF4C0();
      if ((v9 & 1) == 0)
      {
        break;
      }

      v11 = *(v4 - 4);
      v12 = *(v4 - 3);
      v13 = *(v4 - 2);
      v14 = *(v4 - 1);
      v15 = *v4;
      *(v0 + 16) = *(v4 - 5);
      *(v0 + 24) = v11;
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      *(v0 + 56) = v15;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_19;
      }

      v40 = v3 + 1;
      v41 = v3;
      v16 = *(v0 + 160);
      v38 = v4;
      v39 = *(v0 + 152);
      v17 = *(v0 + 136);

      sub_22B0A5C94((v0 + 16));
      v18 = sub_22B0DF5C0();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v16, 1, 1, v18);
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      v21 = (v20 + 16);
      *(v20 + 24) = 0;
      *(v20 + 32) = v37;
      *(v20 + 40) = v36;
      v22 = *(v0 + 32);
      *(v20 + 48) = *(v0 + 16);
      *(v20 + 64) = v22;
      *(v20 + 80) = *(v0 + 48);
      *(v20 + 96) = v35;
      sub_22B0898A8(v16, v39, &qword_27D8B5C38, &qword_22B0E5480);
      LODWORD(v16) = (*(v19 + 48))(v39, 1, v18);

      v23 = *(v0 + 152);
      if (v16 == 1)
      {
        sub_22B07D02C(*(v0 + 152), &qword_27D8B5C38, &qword_22B0E5480);
      }

      else
      {
        sub_22B0DF5B0();
        (*(v19 + 8))(v23, v18);
      }

      if (*v21)
      {
        v24 = *(v20 + 24);
        v25 = *v21;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v26 = sub_22B0DF570();
        v28 = v27;
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = swift_allocObject();
      *(v29 + 16) = &unk_22B0E4B58;
      *(v29 + 24) = v20;

      if (v28 | v26)
      {
        v5 = v0 + 64;
        *(v0 + 64) = 0;
        *(v0 + 72) = 0;
        *(v0 + 80) = v26;
        *(v0 + 88) = v28;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v0 + 160);
      v7 = *(v0 + 128);
      *(v0 + 96) = 1;
      *(v0 + 104) = v5;
      *(v0 + 112) = v34;
      swift_task_create();

      sub_22B07D02C(v6, &qword_27D8B5C38, &qword_22B0E5480);
      v3 = v41 + 1;
      v4 = v38 + 6;
      if (v40 == sub_22B0DF510())
      {
        goto LABEL_15;
      }
    }

    v33 = *(v0 + 128);
    result = sub_22B0DF900();
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:
    v31 = *(v0 + 152);
    v30 = *(v0 + 160);

    v32 = *(v0 + 8);

    return v32();
  }

  return result;
}

void sub_22B0A5C94(uint64_t *a1)
{
  v2 = v1;
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v4 = sub_22B0DF1B0();
  __swift_project_value_buffer(v4, qword_2813EBE78);
  v5 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[5];

  v10 = sub_22B0DF190();
  v11 = sub_22B0DF670();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B07B428(v5, v6, &v26);
    _os_log_impl(&dword_22B074000, v10, v11, "Running daily block %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188A520](v13, -1, -1);
    MEMORY[0x23188A520](v12, -1, -1);
  }

  v15 = *(v2 + 96);
  v14 = *(v2 + 104);
  v16 = type metadata accessor for BlockSchedulerLogEvent();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventOptions] = 0;
  v26 = v15;
  v27 = v14;

  MEMORY[0x231889070](0x6C7564656863732ELL, 0xEE006E75722E7265);
  v18 = v27;
  v19 = &v17[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventName];
  *v19 = v26;
  v19[1] = v18;
  v20 = 0x6669636570736E55;
  if (v7)
  {
    v20 = v8;
  }

  v21 = 0xEB00000000646569;
  if (v7)
  {
    v21 = v7;
  }

  v22 = &v17[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_publicBlockName];
  *v22 = v20;
  v22[1] = v21;
  v23 = &v17[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_secondsSinceLastRun];
  *v23 = 0;
  v23[8] = 1;
  v17[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_isDailyBlock] = 1;
  v25.receiver = v17;
  v25.super_class = v16;
  v24 = objc_msgSendSuper2(&v25, sel_init);
  [*(v2 + 112) submitLogEvent_];
}

uint64_t sub_22B0A5F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 40);
  v10 = (*(a3 + 32) + **(a3 + 32));
  v7 = *(*(a3 + 32) + 4);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22B0A78E4;

  return v10(a4);
}

uint64_t sub_22B0A6024(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = a6;
  *(v6 + 120) = a4;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480) - 8) + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0A60D4, 0, 0);
}

uint64_t sub_22B0A60D4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  type metadata accessor for DailyScheduler.Bookend();
  if (sub_22B0DF510())
  {
    v4 = 0;
    v33 = *(v0 + 120);
    v5 = (*(v0 + 80) + 72);
    while (1)
    {
      v10 = *(v0 + 80);
      v11 = sub_22B0DF4F0();
      result = sub_22B0DF4C0();
      if ((v11 & 1) == 0)
      {
        break;
      }

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_21;
      }

      v13 = *(v5 - 1);
      if (v13)
      {
        v35 = *(v5 - 4);
        v36 = *(v5 - 2);
        v37 = *(v5 - 3);
        v14 = *v5;
        v16 = *(v0 + 104);
        v15 = *(v0 + 112);
        v17 = sub_22B0DF5C0();
        v18 = *(v17 - 8);
        (*(v18 + 56))(v15, 1, 1, v17);
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        *(v19 + 32) = v13;
        *(v19 + 40) = v14;
        *(v19 + 48) = v33;
        sub_22B0898A8(v15, v16, &qword_27D8B5C38, &qword_22B0E5480);
        v34 = v18;
        v20 = v18;
        v21 = v13;
        LODWORD(v16) = (*(v20 + 48))(v16, 1, v17);
        sub_22B0A7418(v13);
        sub_22B0A7418(v13);

        sub_22B0A7418(v37);
        sub_22B0A7418(v13);
        v22 = *(v0 + 104);
        if (v16 == 1)
        {
          sub_22B07D02C(*(v0 + 104), &qword_27D8B5C38, &qword_22B0E5480);
        }

        else
        {
          sub_22B0DF5B0();
          (*(v34 + 8))(v22, v17);
        }

        if (*(v19 + 16))
        {
          v23 = *(v19 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v24 = sub_22B0DF570();
          v26 = v25;
          swift_unknownObjectRelease();
        }

        else
        {
          v24 = 0;
          v26 = 0;
        }

        v27 = **(v0 + 72);
        v28 = swift_allocObject();
        *(v28 + 16) = &unk_22B0E4B40;
        *(v28 + 24) = v19;

        if (v26 | v24)
        {
          v6 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v24;
          *(v0 + 40) = v26;
        }

        else
        {
          v6 = 0;
        }

        v7 = *(v0 + 112);
        *(v0 + 48) = 1;
        *(v0 + 56) = v6;
        *(v0 + 64) = v27;
        swift_task_create();

        sub_22B094864(v37);
        sub_22B094864(v21);

        sub_22B094864(v21);
        sub_22B07D02C(v7, &qword_27D8B5C38, &qword_22B0E5480);
        v8 = v4 + 1;
      }

      v9 = *(v0 + 80);
      ++v4;
      v5 += 6;
      if (v8 == sub_22B0DF510())
      {
        goto LABEL_17;
      }
    }

    v32 = *(v0 + 80);
    result = sub_22B0DF900();
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:
    v30 = *(v0 + 104);
    v29 = *(v0 + 112);

    v31 = *(v0 + 8);

    return v31();
  }

  return result;
}

uint64_t sub_22B0A6504(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_22B0A78E4;

  return v10(a5);
}

uint64_t *DailyScheduler.deinit()
{
  v1 = *v0;
  v2 = v0[6];

  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for DailyScheduler.State();
  v5 = *(sub_22B0DF180() + 16);
  sub_22B0DF770();
  v6 = v0[10];
  swift_unknownObjectRelease();

  v7 = v0[13];

  v8 = v0[14];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  return v0;
}

uint64_t DailyScheduler.__deallocating_deinit()
{
  DailyScheduler.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t sub_22B0A67B4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[1] = a8;
  v14 = type metadata accessor for RunDatePreferencesStorage.State(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RunDatePreferencesStorage(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = (v21 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  v23 = sub_22B0DF0E0();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  *v22 = 0;

  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0) + 28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C48, &qword_22B0E4B90);
  bzero(v22 + v24, *(*(v25 - 8) + 64));
  sub_22B0A7744(v17, v22 + v24);
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v26 = objc_opt_self();

  v27 = [v26 sharedInstance];

  swift_unknownObjectRetain();
  return sub_22B0A6984(a1, v21, v27, a4, a5, a6);
}

uint64_t sub_22B0A6984(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C50, &qword_22B0E4B98);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22B0E4950;
  *(v12 + 32) = 0x4072C00000000000;
  *(v12 + 40) = 0xD000000000000014;
  *(v12 + 48) = 0x800000022B0E72F0;
  *(v12 + 56) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v12 + 64) = MEMORY[0x277D84F90];
  *(v12 + 72) = v13;
  *(v12 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C58, &unk_22B0E4BA0);
  *(v12 + 152) = &protocol witness table for CoalescingRepeatingScheduler<A>;
  *(v12 + 80) = a2;
  *(v12 + 88) = a3;
  *(v12 + 96) = a4;
  *(v12 + 104) = a5;
  *(v12 + 112) = a6;
  *(v12 + 120) = a1;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5C60, &unk_22B0E4BB0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = *(*v18 + 128);
  v20 = sub_22B0DF990();
  v21 = *(*(v20 - 8) + 56);
  v21(v18 + v19, 1, 1, v20);
  v21(v18 + *(*v18 + 136), 1, 1, v20);
  *(v18 + 16) = 0xD000000000000014;
  *(v18 + 24) = 0x800000022B0E72F0;
  *(v18 + 32) = 0xD000000000000014;
  *(v18 + 40) = 0x800000022B0E72F0;
  *(v18 + 48) = &unk_22B0E6090;
  *(v18 + 56) = v14;
  *(v18 + 64) = xmmword_22B0E4950;
  v22 = &a1[*(*a1 + 136)];
  swift_bridgeObjectRetain_n();

  v23 = a3;
  swift_unknownObjectRetain();
  swift_retain_n();
  os_unfair_lock_lock(v22);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0) + 28);
  sub_22B0C5BF8(v22 + v24, 0xD000000000000014, 0x800000022B0E72F0);
  os_unfair_lock_unlock(v22);
  os_unfair_lock_lock(v22);
  sub_22B0C5F44((&v22->_os_unfair_lock_opaque + v24), v18, a1);
  os_unfair_lock_unlock(v22);

  swift_unknownObjectRelease();

  return v12;
}

uint64_t *sub_22B0A6C74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v16 = *v9;
  *(v9 + 1) = xmmword_22B0E4950;
  v9[4] = 0x4072C00000000000;
  v9[5] = 0xD000000000000014;
  v9[6] = 0x800000022B0E72F0;
  v17 = *(v16 + 80);
  v18 = *(v16 + 88);
  v33[0] = sub_22B0A3BD4();
  v33[1] = v19;
  *(v9 + 14) = 0;
  v9[9] = 0;
  v9[8] = 0;
  v20 = type metadata accessor for DailyScheduler.State();
  sub_22B0CC750(v33, (v9 + 8), v20);
  v9[18] = a7;
  v9[19] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9 + 15);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  v9[10] = a2;
  v9[11] = a3;
  v9[12] = a4;
  v9[13] = a5;
  v9[14] = a6;
  v22 = v9[5];
  v23 = v9[6];
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v17;
  v25[3] = a7;
  v25[4] = v18;
  v25[5] = a8;
  v25[6] = v24;
  v30 = *(a8 + 8);
  swift_unknownObjectRetain();
  v32 = a3;
  swift_unknownObjectRetain();

  v30(v22, v23, 0x28093E61EE400000, 195, v22, v23, &unk_22B0E4B80, v25, a7, a8);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_22B0A703C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B0A70A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22B0A78E4;

  return sub_22B0A50C0(a1, a2, v8, v9, v6, v7);
}

uint64_t sub_22B0A7174(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22B0A78E4;

  return sub_22B0A578C(a1, a2, v6, v7, v8);
}

uint64_t sub_22B0A7238(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22B0A78E4;

  return sub_22B0A6024(a1, a2, v8, v9, v6, v7);
}

unint64_t sub_22B0A7304()
{
  result = qword_2813EAD70;
  if (!qword_2813EAD70)
  {
    sub_22B0DF0E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EAD70);
  }

  return result;
}

uint64_t sub_22B0A735C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22B0A78E4;

  return sub_22B0A6504(v2, v3, v4, v5, v6);
}

uint64_t sub_22B0A7418(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B0A7428()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 96);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22B0A78E4;

  return sub_22B0A5F30(v4, v5, v0 + 48, v6);
}

uint64_t sub_22B0A74E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B0A5698;

  return sub_22B0CC784(v2);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_22B0A75D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B0A78E4;

  return sub_22B0CC784(v2);
}

uint64_t sub_22B0A7680(char a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B0A78E4;

  return sub_22B0A3C9C(a1, v8);
}

uint64_t sub_22B0A7744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunDatePreferencesStorage.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B0A77A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_SbIeghHy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_22B0A7810()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B0A784C(uint64_t a1, int a2)
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

uint64_t sub_22B0A7894(uint64_t result, int a2, int a3)
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

uint64_t sub_22B0A78EC(uint64_t a1)
{
  v3 = *(a1 + 80);
  v5 = *(a1 + 96);
  result = type metadata accessor for BaseAnalyzerDataSource();
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B0A79A8()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22B0A7A34();
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_22B0A7A34()
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *buffer = 0u;
  v1 = getpid();
  v2 = proc_pid_rusage(v1, 6, buffer);
  if (v2)
  {
    v3 = v2;
    sub_22B0A7FF8();
    v4 = sub_22B0DF760();
    v5 = sub_22B0DF6A0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v3;
      _os_log_impl(&dword_22B074000, v4, v5, "Unable to retrieve memory foot-print, result: %d", v6, 8u);
      MEMORY[0x23188A520](v6, -1, -1);
    }
  }

  else
  {
    v7 = *(&v17 + 1);
    v8 = *(&v30 + 1);
    proc_reset_footprint_interval();
    v9 = type metadata accessor for ProcessMemorySampleLogEvent();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR____TtC14HomeKitMetrics27ProcessMemorySampleLogEvent_currentMemoryUsage] = v7;
    *&v10[OBJC_IVAR____TtC14HomeKitMetrics27ProcessMemorySampleLogEvent_intervalMaxMemoryUsage] = v8;
    v12.receiver = v10;
    v12.super_class = v9;
    v4 = objc_msgSendSuper2(&v12, sel_init);
    [*(v0 + *(*v0 + 112) + 32) submitLogEvent_];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B0A7BFC()
{
  v1 = *(*v0 + 112);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 96);
  v2 = type metadata accessor for BaseAnalyzerDataSource();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_22B0A7CA8()
{
  sub_22B0A7BFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B0A7D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(*v4 + 112);
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 88);
  v9 = *(*v4 + 96);
  v10 = *(*v4 + 104);
  v11 = type metadata accessor for BaseAnalyzerDataSource();
  (*(*(v11 - 8) + 16))(v4 + v6, a1, v11);
  v12 = *(v11 + 68);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v14[6] = v13;
  v15 = *(v9 + 8);

  v15(0xD000000000000011, 0x800000022B0E7320, a2, a3, 0xD000000000000011, 0x800000022B0E7320, &unk_22B0E4D20, v14, v7, v9);

  return v4;
}

uint64_t sub_22B0A7EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_22B0A7D18(a1, a2, a3);
}

uint64_t sub_22B0A7F34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B0A5698;

  return sub_22B0A7988(a1, v8);
}

unint64_t sub_22B0A7FF8()
{
  result = qword_27D8B5CE8;
  if (!qword_27D8B5CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8B5CE8);
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

uint64_t getEnumTagSinglePayload for DataStreamError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataStreamError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22B0A80E4(uint64_t a1)
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

uint64_t sub_22B0A80FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_22B0A8134(uint64_t a1)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 96);
  result = type metadata accessor for BaseAnalyzerDataSource();
  if (v2 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B0A8204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_22B0A825C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22B0A9000(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_22B0A82BC()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_22B0A8344();
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_22B0A8344()
{
  v1 = v0;
  v52 = sub_22B0DF0E0();
  v2 = *(v52 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v52);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D85000];
  v7 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  v8 = [v7[2] startOfDayByAddingDayCount_];
  sub_22B0DF0B0();

  v9 = *v1;
  v10 = *v6;
  v11 = *(v1 + *((*v6 & *v1) + 0x90));
  if (v11)
  {
    v13 = *(v1 + *((*v6 & *v1) + 0x70));
    if (!v13)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    os_unfair_lock_lock(v13 + 22);
    sub_22B097390();
    v14 = sub_22B099028(0xD000000000000015, 0x800000022B0E73D0, v5);
    v16 = v15;

    os_unfair_lock_unlock(v13 + 22);
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v14;
    }

    v51 = v17;
    v9 = *v1;
    v10 = *v6;
    if ((v11 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v51 = 0;
    if ((v11 & 2) == 0)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_14;
    }
  }

  v18 = *(v1 + *((v10 & v9) + 0x70));
  if (!v18)
  {
LABEL_33:
    __break(1u);
    return;
  }

  os_unfair_lock_lock(v18 + 22);
  sub_22B097390();
  v19 = sub_22B099028(0xD000000000000016, 0x800000022B0E73F0, v5);
  v21 = v20;

  os_unfair_lock_unlock(v18 + 22);
  if (v21)
  {
    v12 = 0;
  }

  else
  {
    v12 = v19;
  }

  v9 = *v1;
  v10 = *v6;
LABEL_14:
  v22 = *(v1 + *((v10 & v9) + 0x70));
  if (!v22)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  os_unfair_lock_lock(v22 + 22);
  sub_22B0975F8();
  sub_22B09D024(v5);
  v24 = v23;
  if (*(v23 + 16) && (v25 = sub_22B0768A8(0x694879726F6D656DLL, 0xEF72657461776867), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 40 * v25 + 8);

    v28 = 0;
  }

  else
  {

    v27 = 0;
    v28 = 1;
  }

  os_unfair_lock_unlock(v22 + 22);
  os_unfair_lock_lock(v22 + 22);
  sub_22B0975F8();
  sub_22B09D024(v5);
  v30 = v29;
  if (!*(v29 + 16))
  {
    goto LABEL_25;
  }

  v31 = sub_22B0768A8(0x615379726F6D656DLL, 0xEC000000656C706DLL);
  if ((v32 & 1) == 0)
  {
    goto LABEL_25;
  }

  v33 = *(v30 + 56) + 40 * v31;
  v35 = *(v33 + 16);
  v34 = *(v33 + 24);

  os_unfair_lock_unlock(v22 + 22);
  v36 = v34 / v35;
  if (COERCE__INT64(fabs(v36)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v36 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v36 >= 9.22337204e18)
  {
    __break(1u);
LABEL_25:

    os_unfair_lock_unlock(v22 + 22);
    v36 = 0.0;
  }

  v37 = (v11 & 2) == 0;
  v38 = (v11 & 1) == 0;
  if (v28)
  {
    v27 = 0;
  }

  v40 = *v7;
  v39 = v7[1];
  v61 = v38;
  v60 = v37;
  v50 = v5;
  v41 = v7;
  v42 = v36 & ~(v36 >> 63);
  v58 = v36 < 1;
  v56 = v28;
  v43 = type metadata accessor for ProcessMemorySummaryLogEvent();
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_coreAnalyticsEventOptions] = 1;
  v54 = v40;
  v55 = v39;

  MEMORY[0x231889070](0xD000000000000015, 0x800000022B0E7430);
  v45 = v55;
  v46 = &v44[OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_coreAnalyticsEventName];
  *v46 = v54;
  *(v46 + 1) = v45;
  v47 = &v44[OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_counts];
  *v47 = v51;
  v47[8] = v61;
  *(v47 + 9) = v54;
  *(v47 + 3) = *(&v54 + 3);
  *(v47 + 2) = v12;
  v47[24] = v60;
  *(v47 + 25) = *v59;
  *(v47 + 7) = *&v59[3];
  *(v47 + 4) = v42;
  v47[40] = v58;
  LODWORD(v45) = *v57;
  *(v47 + 11) = *&v57[3];
  *(v47 + 41) = v45;
  *(v47 + 6) = v27;
  v47[56] = v56;
  v53.receiver = v44;
  v53.super_class = v43;
  v48 = objc_msgSendSuper2(&v53, sel_init);
  [v41[4] submitLogEvent_];

  (*(v2 + 8))(v50, v52);
}

void sub_22B0A88C0(void *a1)
{
  type metadata accessor for ProcessMemorySampleLogEvent();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    oslog = a1;
    sub_22B0A89E4(v3);
  }

  else
  {
    if (qword_27D8B53C0 != -1)
    {
      swift_once();
    }

    v4 = sub_22B0DF1B0();
    __swift_project_value_buffer(v4, qword_27D8B91F8);
    oslog = sub_22B0DF190();
    v5 = sub_22B0DF690();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B074000, oslog, v5, "Received HMMLogEvent of unknown type.", v6, 2u);
      MEMORY[0x23188A520](v6, -1, -1);
    }
  }
}

void sub_22B0A89E4(uint64_t a1)
{
  v3 = sub_22B0DF0E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70));
  if (v8)
  {
    v9 = *(a1 + OBJC_IVAR____TtC14HomeKitMetrics27ProcessMemorySampleLogEvent_intervalMaxMemoryUsage) >> 10;
    v10 = *(a1 + OBJC_IVAR____TtC14HomeKitMetrics27ProcessMemorySampleLogEvent_currentMemoryUsage) >> 10;
    os_unfair_lock_lock(v8 + 22);
    v11 = [*(sub_22B0975F8() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09AE18(v9, 0x694879726F6D656DLL, 0xEF72657461776867, v7);

    v12 = *(v4 + 8);
    v12(v7, v3);
    os_unfair_lock_unlock(v8 + 22);
    os_unfair_lock_lock(v8 + 22);
    v13 = [*(sub_22B0975F8() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09AE18(v10, 0x615379726F6D656DLL, 0xEC000000656C706DLL, v7);

    v12(v7, v3);
    os_unfair_lock_unlock(v8 + 22);
  }

  else
  {
    __break(1u);
  }
}

void sub_22B0A8C0C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_22B0A88C0(v4);
}

void sub_22B0A8C74(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_22B0A9948(a4);
}

void sub_22B0A8CE0(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  sub_22B0A9C44();
}

void sub_22B0A8D48(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *a1;
  v4 = *&a1[*(v3 + 0x70)];

  v5 = *((*v2 & *a1) + 0x78);
  v8 = *(v3 + 80);
  v9 = *(v3 + 96);
  v6 = type metadata accessor for BaseAnalyzerDataSource();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = *&a1[*((*v2 & *a1) + 0x80)];
}

unint64_t sub_22B0A8EA0()
{
  result = qword_27D8B5DD0;
  if (!qword_27D8B5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5DD0);
  }

  return result;
}

unint64_t sub_22B0A8EF8()
{
  result = qword_27D8B5DD8;
  if (!qword_27D8B5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5DD8);
  }

  return result;
}

unint64_t sub_22B0A8F50()
{
  result = qword_27D8B5DE0;
  if (!qword_27D8B5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5DE0);
  }

  return result;
}

unint64_t sub_22B0A8FA8()
{
  result = qword_27D8B5DE8;
  if (!qword_27D8B5DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5DE8);
  }

  return result;
}

uint64_t sub_22B0A9000(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_22B0A9038(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_22B0DF830())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5E00, qword_22B0E4FF0);
      v3 = sub_22B0DF8C0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_22B0DF830();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x2318895C0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_22B0DF740();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_22B08A1B0();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_22B0DF750();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_22B0DF740();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_22B08A1B0();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_22B0DF750();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_22B0A9304(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = *v3;
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v3) + 0x78);
  v12 = *((*MEMORY[0x277D85000] & v8) + 0x58);
  v13 = *((*MEMORY[0x277D85000] & v8) + 0x60);
  v14 = *((*MEMORY[0x277D85000] & v8) + 0x68);
  v42 = *((*MEMORY[0x277D85000] & v8) + 0x50);
  v11 = v42;
  v43 = v12;
  v44 = v13;
  v45 = v14;
  v15 = type metadata accessor for BaseAnalyzerDataSource();
  (*(*(v15 - 8) + 16))(&v4[v10], a1, v15);
  *&v4[*((*v9 & *v4) + 0x90)] = a2;
  v16 = *(a1 + *(v15 + 76));
  type metadata accessor for NamedGroupSpecifier();
  v17 = swift_allocObject();
  *(v17 + 16) = 0xD000000000000018;
  *(v17 + 24) = 0x800000022B0E7410;
  v18 = sub_22B08C5E8(v17);

  v19 = MEMORY[0x277D85000];
  *&v4[*((*MEMORY[0x277D85000] & *v4) + 0x70)] = v18;
  v42 = v11;
  v43 = v12;
  v44 = v13;
  v45 = v14;
  type metadata accessor for MemoryUtilizationTracker();
  *&v4[*((*v19 & *v4) + 0x80)] = sub_22B0A7EE0(a1, 0x94049F30F7200000, 97);
  *&v4[*((*v19 & *v4) + 0x88)] = [objc_allocWithZone(MEMORY[0x277D0F810]) init];
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v41, sel_init);
  v21 = *(a1 + 40);
  type metadata accessor for ProcessMemorySampleLogEvent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = v20;
  [v21 addObserver:v23 forEventClass:ObjCClassFromMetadata];
  type metadata accessor for ProcessMemorySummaryLogEvent();
  [v21 addObserver:v23 forEventClass:swift_getObjCClassFromMetadata()];
  v24 = *(v15 + 72);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v26 = swift_allocObject();
  v26[2] = v11;
  v26[3] = v12;
  v26[4] = v13;
  v26[5] = v14;
  v26[6] = v25;
  v27 = *(v14 + 8);

  v27(0x764579726F6D654DLL, 0xEC00000073746E65, 0x764579726F6D654DLL, 0xEC00000073746E65, &unk_22B0E4FE0, v26, v12, v14);

  v42 = a2;
  sub_22B0A9D38();
  if (sub_22B0DFE20())
  {
    v28 = *(v23 + *((*MEMORY[0x277D85000] & *v23) + 0x88));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B0E4D80;
    v30 = v28;
    *(inited + 32) = sub_22B0DF620();
    sub_22B0A9038(inited);
    swift_setDeallocating();
    v31 = *(inited + 16);
    swift_arrayDestroy();
    sub_22B08A1B0();
    sub_22B0A9D8C();
    v32 = sub_22B0DF5F0();

    [v30 addObserver:v23 debounceInterval:v32 events:a3];
  }

  v42 = a2;
  if (sub_22B0DFE20())
  {
    v33 = *(v23 + *((*MEMORY[0x277D85000] & *v23) + 0x88));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_22B0E4D80;
    v35 = v33;
    *(v34 + 32) = sub_22B0DF620();
    sub_22B0A9038(v34);
    swift_setDeallocating();
    v36 = *(v34 + 16);
    swift_arrayDestroy();
    sub_22B08A1B0();
    sub_22B0A9D8C();
    v37 = sub_22B0DF5F0();

    [v35 addObserver:v23 debounceInterval:v37 events:a3];
  }

  v42 = a2;
  sub_22B0A8FA8();
  if ((sub_22B0DF7B0() & 1) == 0)
  {
    [*(v23 + *((*MEMORY[0x277D85000] & *v23) + 0x88)) start];
  }

  return v23;
}

void sub_22B0A9948(uint64_t a1)
{
  v3 = sub_22B0DF0E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 4)
  {
    v8 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70));
    if (v8)
    {
      os_unfair_lock_lock(v8 + 22);
      v12 = [*(sub_22B097390() + 24) currentDatePartition];
      sub_22B0DF0B0();

      v11 = 0x800000022B0E73D0;
      v10 = 0xD000000000000015;
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (a1 == 5)
  {
    v8 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70));
    if (v8)
    {
      os_unfair_lock_lock(v8 + 22);
      v9 = [*(sub_22B097390() + 24) currentDatePartition];
      sub_22B0DF0B0();

      v10 = 0xD000000000000016;
      v11 = 0x800000022B0E73F0;
LABEL_7:
      sub_22B09A03C(1, v10, v11, v7);

      (*(v4 + 8))(v7, v3);
      os_unfair_lock_unlock(v8 + 22);
      return;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  if (qword_27D8B53C0 != -1)
  {
    swift_once();
  }

  v13 = sub_22B0DF1B0();
  __swift_project_value_buffer(v13, qword_27D8B91F8);
  v18 = sub_22B0DF190();
  v14 = sub_22B0DF680();
  if (os_log_type_enabled(v18, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = a1;
    _os_log_impl(&dword_22B074000, v18, v14, "Received unexpected HMFMemoryEvent type: %ld", v15, 0xCu);
    MEMORY[0x23188A520](v15, -1, -1);
  }

  v16 = v18;
}

uint64_t sub_22B0A9C74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B0A5698;

  return sub_22B0A829C(a1, v8);
}

unint64_t sub_22B0A9D38()
{
  result = qword_27D8B5DF0;
  if (!qword_27D8B5DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5DF0);
  }

  return result;
}

unint64_t sub_22B0A9D8C()
{
  result = qword_27D8B5DF8;
  if (!qword_27D8B5DF8)
  {
    sub_22B08A1B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5DF8);
  }

  return result;
}

uint64_t sub_22B0A9E30()
{
  v1 = sub_22B0DF0E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0;
  result = sub_22B0A9FC4();
  v7 = result;
  v8 = MEMORY[0x277D84FA0];
  v15 = MEMORY[0x277D84FA0];
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    while (v10 < *(v7 + 16))
    {
      (*(v2 + 16))(v5, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v10++, v1);
      v11 = *(v14 + 16);
      v12 = sub_22B091908(v5);
      sub_22B0ACDE4(v12);

      result = (*(v2 + 8))(v5, v1);
      if (v9 == v10)
      {
        v8 = v15;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v13 = sub_22B0ACCDC(v8);

    return v13;
  }

  return result;
}

uint64_t sub_22B0A9FC4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v9 - v5;
  (*(v3 + 16))(&v9 - v5, v0[2] + *(*v0[2] + 96), v2);
  v7 = (*(*(v1 + 88) + 8))(v2);
  (*(v3 + 8))(v6, v2);
  return v7;
}

char *sub_22B0AA120(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - v5;
  v7 = sub_22B0DF0E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v42 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v34 = &v31 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = sub_22B0A9FC4();
  v41 = *(v16 + 16);
  if (v41)
  {
    v39 = v15;
    v40 = v1;
    v17 = 0;
    v37 = v8 + 16;
    v38 = (v8 + 8);
    v35 = (v8 + 32);
    v36 = (v8 + 48);
    v43 = MEMORY[0x277D84F90];
    v18 = a1;
    v32 = v6;
    v33 = a1;
    v19 = v8;
    while (v17 < *(v16 + 16))
    {
      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = v16;
      v22 = *(v19 + 72);
      v23 = v19;
      v15 = v39;
      (*(v19 + 16))(v39, v16 + v20 + v22 * v17, v7);
      sub_22B0AA49C(v15, v40, v18, v6);
      (*v38)(v15, v7);
      if ((*v36)(v6, 1, v7) == 1)
      {
        sub_22B09F2F0(v6);
      }

      else
      {
        v24 = v6;
        v25 = v34;
        v26 = *v35;
        (*v35)(v34, v24, v7);
        v26(v42, v25, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_22B082E70(0, *(v43 + 2) + 1, 1, v43);
        }

        v15 = *(v43 + 2);
        v27 = *(v43 + 3);
        if (v15 >= v27 >> 1)
        {
          v43 = sub_22B082E70(v27 > 1, v15 + 1, 1, v43);
        }

        v28 = v42;
        v29 = v43;
        *(v43 + 2) = v15 + 1;
        v26(&v29[v20 + v15 * v22], v28, v7);
        v6 = v32;
        v18 = v33;
      }

      ++v17;
      v16 = v21;
      v19 = v23;
      if (v41 == v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    (*v38)(v15, v7);

    __break(1u);
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
LABEL_13:

    return v43;
  }

  return result;
}

uint64_t sub_22B0AA49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = sub_22B091908(a1);
  v13[2] = &v14;
  v14 = a3;
  LOBYTE(a3) = sub_22B0AA800(sub_22B0ACD8C, v13, v8);

  v9 = sub_22B0DF0E0();
  v10 = *(v9 - 8);
  if (a3)
  {
    (*(*(v9 - 8) + 16))(a4, a1, v9);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return (*(v10 + 56))(a4, v11, 1, v9);
}

uint64_t sub_22B0AA5AC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v12[-v9];
  (*(v7 + 16))(&v12[-v9], v2[2] + *(*v2[2] + 96), v6);
  v13 = a1;
  (*(*(v5 + 88) + 16))(a2, v12, v6);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22B0AA800(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x2318895C0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_22B0DF830();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_22B0AA93C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22B0DF0E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22B076420(&qword_2813EAD80);
  v36 = a2;
  v13 = sub_22B0DF2A0();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_22B076420(&qword_2813EAD70);
      v23 = sub_22B0DF2F0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_22B0ABAAC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_22B0AABF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22B0DFD40();
  sub_22B0DF380();
  v9 = sub_22B0DFD80();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22B0DFC60() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_22B0ABD28(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22B0AAD44(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_22B0DF840();

    if (v8)
    {

      v22[9] = v8;
      type metadata accessor for NamedGroupSpecifier();
      swift_dynamicCast();
      result = 0;
      *a1 = v22[0];
      return result;
    }

    result = sub_22B0DF830();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_22B0AAFB0(v7, result + 1);
    v22[0] = v19;
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_22B0AB778(v20 + 1);
      v19 = v22[0];
    }

    sub_22B0AB9E8(v21, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  sub_22B0DFD40();
  (*(*a2 + 112))(v22);
  v11 = sub_22B0DFD80();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = *v2;

    sub_22B0ABEA8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22[0];
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(**(*(v6 + 48) + 8 * v13) + 120);

    LOBYTE(v15) = v15(a2);

    if (v15)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_22B0AAFB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E10, &qword_22B0E5078);
    v2 = sub_22B0DF8B0();
    v20 = v2;
    sub_22B0DF820();
    v3 = sub_22B0DF850();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for NamedGroupSpecifier();
      v5 = v4;
      do
      {
        v19[0] = v5;
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          sub_22B0AB778(v14 + 1);
        }

        v6 = v19[9];
        v2 = v20;
        v7 = *(v20 + 40);
        sub_22B0DFD40();
        (*(*v6 + 112))(v19);
        result = sub_22B0DFD80();
        v9 = v2 + 56;
        v10 = -1 << *(v2 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v2 + 48) + 8 * v13) = v6;
        ++*(v2 + 16);
        v5 = sub_22B0DF850();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22B0AB1D0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22B0DF0E0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E18, &qword_22B0E5080);
  result = sub_22B0DF8A0();
  v10 = result;
  if (*(v7 + 16))
  {
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22B076420(&qword_2813EAD80);
      result = sub_22B0DF2A0();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_22B0AB518(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5E20, &qword_22B0E5088);
  result = sub_22B0DF8A0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}