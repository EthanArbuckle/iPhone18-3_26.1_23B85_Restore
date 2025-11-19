uint64_t sub_1DF5F350C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF5F357C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a3;
  v49 = a6;
  v44 = a4;
  v41 = *(a5 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF6335AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D98, &qword_1DF63A610);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v40 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v47 = &v38 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v38 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v38 - v29;
  v45 = a5;
  v46 = a1;
  v31 = *a1;
  v42 = a2;
  sub_1DF63289C();
  (*(v12 + 16))(v28, v48, v11);
  (*(v12 + 56))(v28, 0, 1, v11);
  v32 = *(v16 + 56);
  sub_1DF5F45A4(v30, v19);
  sub_1DF5F45A4(v28, &v19[v32]);
  v33 = *(v12 + 48);
  if (v33(v19, 1, v11) != 1)
  {
    v34 = v47;
    sub_1DF5F45A4(v19, v47);
    if (v33(&v19[v32], 1, v11) != 1)
    {
      v36 = v39;
      (*(v12 + 32))(v39, &v19[v32], v11);
      sub_1DF5F4614();
      LODWORD(v48) = sub_1DF63292C();
      v37 = *(v12 + 8);
      v37(v36, v11);
      sub_1DF59CB50(v28, &qword_1ECE42A20, &qword_1DF638C58);
      sub_1DF59CB50(v30, &qword_1ECE42A20, &qword_1DF638C58);
      v37(v34, v11);
      result = sub_1DF59CB50(v19, &qword_1ECE42A20, &qword_1DF638C58);
      if ((v48 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_1DF59CB50(v28, &qword_1ECE42A20, &qword_1DF638C58);
    sub_1DF59CB50(v30, &qword_1ECE42A20, &qword_1DF638C58);
    (*(v12 + 8))(v34, v11);
    return sub_1DF59CB50(v19, &qword_1ECE42D98, &qword_1DF63A610);
  }

  sub_1DF59CB50(v28, &qword_1ECE42A20, &qword_1DF638C58);
  sub_1DF59CB50(v30, &qword_1ECE42A20, &qword_1DF638C58);
  if (v33(&v19[v32], 1, v11) != 1)
  {
    return sub_1DF59CB50(v19, &qword_1ECE42D98, &qword_1DF63A610);
  }

  sub_1DF59CB50(v19, &qword_1ECE42A20, &qword_1DF638C58);
LABEL_8:
  (*(v41 + 16))(v43, v42, v45);
  sub_1DF5F45A4(v44, v40);
  sub_1DF63288C();
  return sub_1DF6328AC();
}

Swift::Void __swiftcall KeyedThrottle.clearThrottleForKeysExcept(keys:)(Swift::OpaquePointer keys)
{
  v2 = *(v1 + qword_1ED8E4B38);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 88);
  sub_1DF6335AC();
  sub_1DF63288C();
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1DF5F4484((v2 + v3));
  os_unfair_lock_unlock((v2 + v4));
}

uint64_t sub_1DF5F3B78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v29 - v12;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v37 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v29 - v17;
  v18 = sub_1DF6335AC();
  swift_getTupleTypeMetadata2();
  v19 = sub_1DF632D6C();
  v36 = v18;
  v39 = a4;
  v20 = sub_1DF5F4198(v19, a3, v18, a4);

  v43 = v20;
  if (!sub_1DF632D9C())
  {
LABEL_12:
    v28 = *a1;

    *a1 = v20;
    return result;
  }

  v31 = a1;
  v32 = v4;
  v21 = 0;
  v22 = *a1;
  v40 = (v13 + 16);
  v33 = (v13 + 8);
  v34 = v22;
  v35 = a2;
  while (1)
  {
    v23 = sub_1DF632D8C();
    sub_1DF632D5C();
    if (v23)
    {
      v24 = *(v13 + 16);
      v24(v41, (a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21), a3);
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1DF6334BC();
    if (v30 != 8)
    {
      break;
    }

    v42 = result;
    v24 = *v40;
    (*v40)(v41, &v42, a3);
    swift_unknownObjectRelease();
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:
      v20 = v43;
      a1 = v31;
      goto LABEL_12;
    }

LABEL_5:
    v26 = v41;
    v24(v37, v41, a3);
    sub_1DF63289C();
    (*v33)(v26, a3);
    a2 = v35;
    sub_1DF63288C();
    sub_1DF6328AC();
    ++v21;
    if (v25 == sub_1DF632D9C())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t KeyedThrottle.deinit()
{
  v1 = qword_1ECE42D90;
  v2 = sub_1DF6335CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1ED8E4B38);

  return v0;
}

uint64_t KeyedThrottle.__deallocating_deinit()
{
  KeyedThrottle.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1DF5F3FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1DF6328BC();

  return sub_1DF5F4010(a1, v9, a2, a3);
}

unint64_t sub_1DF5F4010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1DF63292C();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1DF5F4198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1DF632D9C())
  {
    sub_1DF63374C();
    v13 = sub_1DF63373C();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1DF632D9C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1DF632D8C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1DF6334BC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1DF5F3FB4(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1DF5F44A4()
{
  result = sub_1DF6335CC();
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

uint64_t dispatch thunk of KeyedThrottle.__allocating_init(throttleInterval:)()
{
  return (*(v0 + 120))();
}

{
  return (*(v0 + 128))();
}

uint64_t sub_1DF5F45A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DF5F4614()
{
  result = qword_1ECE42DA0;
  if (!qword_1ECE42DA0)
  {
    sub_1DF6335AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42DA0);
  }

  return result;
}

__CFNotificationCenter *sub_1DF5F466C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v67 = a4;
  v68 = a5;
  v8 = sub_1DF6335CC();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D88, &qword_1DF63A5C8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v62 - v14;
  v16 = sub_1DF6335AC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v64 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v62 - v28;
  v75[0] = a1;
  v75[1] = a2;
  v30 = *(a3 + qword_1ED8E4B38);
  v72 = v75;
  v73 = a3;
  v69 = a3;
  os_unfair_lock_lock((v30 + 24));
  sub_1DF5F4CCC((v30 + 16), v15);
  v31 = (v30 + 24);
  v32 = v25;
  v33 = v16;
  v34 = v17;
  os_unfair_lock_unlock(v31);
  LODWORD(a3) = *v15;
  v35 = *(v12 + 72);
  v36 = &v15[*(v12 + 56)];
  v71 = v29;
  sub_1DF5F350C(v36, v29);
  (*(v17 + 32))(v32, &v15[v35], v33);
  if (a3 != 1)
  {
    if (qword_1ED8E5958 != -1)
    {
      swift_once();
    }

    v58 = sub_1DF6326AC();
    __swift_project_value_buffer(v58, qword_1ED8E69A0);
    v59 = sub_1DF63268C();
    v60 = sub_1DF63318C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1DF59A000, v59, v60, "KeyedThrottle: Not dispatching, event is throttled", v61, 2u);
      MEMORY[0x1E12D9D80](v61, -1, -1);
    }

    goto LABEL_16;
  }

  v37 = v70;
  sub_1DF6335BC();
  sub_1DF63356C();
  v38 = sub_1DF63295C();
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (result)
  {
    v40 = result;
    v41 = v23;
    CFNotificationCenterPostNotification(result, v38, 0, 0, 1u);

    v42 = v64;
    sub_1DF63356C();
    sub_1DF63359C();
    v43 = *(v34 + 8);
    v43(v42, v33);
    v44 = *(v69 + qword_1ED8E4B40);
    v68 = *(v69 + qword_1ED8E4B40 + 8);
    if (sub_1DF633BFC())
    {
      v63 = v43;
      v64 = v41;
      if (qword_1ED8E5958 != -1)
      {
        swift_once();
      }

      v45 = sub_1DF6326AC();
      __swift_project_value_buffer(v45, qword_1ED8E69A0);
      swift_retain_n();
      v46 = sub_1DF63268C();
      v47 = sub_1DF63316C();
      v67 = v46;
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v74[0] = v62;
        *v48 = 136446466;
        v49 = sub_1DF633BEC();
        v51 = sub_1DF59EEC8(v49, v50, v74);

        *(v48 + 4) = v51;
        *(v48 + 12) = 2082;

        v52 = sub_1DF633BEC();
        v54 = v53;

        v55 = sub_1DF59EEC8(v52, v54, v74);

        *(v48 + 14) = v55;
        v56 = v67;
        _os_log_impl(&dword_1DF59A000, v67, v47, "KeyedThrottle: Running time of block (%{public}s) was longer than throttleInterval (%{public}s)", v48, 0x16u);
        v57 = v62;
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v57, -1, -1);
        MEMORY[0x1E12D9D80](v48, -1, -1);
      }

      else
      {
      }

      v63(v64, v33);
      (*(v65 + 8))(v70, v66);
    }

    else
    {
      v43(v41, v33);
      (*(v65 + 8))(v37, v66);
    }

LABEL_16:
    (*(v34 + 8))(v32, v33);
    return sub_1DF59CB50(v71, &qword_1ECE42A20, &qword_1DF638C58);
  }

  __break(1u);
  return result;
}

uint64_t DateInterval.init<A>(_:strategy:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v36 = a3;
  v33 = a1;
  v34 = a2;
  v37 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42CA0, &qword_1DF63A230);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v33 - v9;
  v11 = sub_1DF63252C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42DA8, &qword_1DF63A618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF638990;
  *(inited + 32) = 5721934;
  *(inited + 40) = 0xE300000000000000;
  sub_1DF63251C();
  if (qword_1ECE42358 != -1)
  {
    swift_once();
  }

  v17 = qword_1ECE42360;
  v18 = sub_1DF63248C();
  v19 = [v17 stringFromDate_];

  v20 = sub_1DF63298C();
  v22 = v21;

  (*(v12 + 8))(v15, v11);
  *(inited + 48) = v20;
  *(inited + 56) = v22;
  v23 = sub_1DF5C9138(inited);
  swift_setDeallocating();
  sub_1DF59CB50(inited + 32, &qword_1ECE42DB0, &unk_1DF63A620);
  MyBaseE5remap_15substitutionMapS2S_SDyS2SGtFZ_0 = _s10Foundation12DateIntervalV10FindMyBaseE5remap_15substitutionMapS2S_SDyS2SGtFZ_0(v33, v34, v23);
  v26 = v25;

  v38 = MyBaseE5remap_15substitutionMapS2S_SDyS2SGtFZ_0;
  v39 = v26;
  v27 = v36;
  sub_1DF6320EC();
  (*(*(a4 - 8) + 8))(v27, a4);

  v28 = sub_1DF6320DC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v30(v10, 0, 1, v28);
  v31 = v37;
  (*(v29 + 32))(v37, v10, v28);
  return (v30)(v31, 0, 1, v28);
}

uint64_t _s10Foundation12DateIntervalV10FindMyBaseE5remap_15substitutionMapS2S_SDyS2SGtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v44[0] = 47;
  v44[1] = 0xE100000000000000;
  v43[2] = v44;

  v7 = sub_1DF5EA7B4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DF5F53E0, v43, a1, a2, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v44[0] = MEMORY[0x1E69E7CC0];
    sub_1DF5DB1D8(0, v8, 0);
    v9 = v44[0];
    v10 = (v7 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      v15 = MEMORY[0x1E12D8260](v11, v12, v13, v14);
      v17 = v16;

      v44[0] = v9;
      v19 = *(v9 + 2);
      v18 = *(v9 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1DF5DB1D8((v18 > 1), v19 + 1, 1);
        v9 = v44[0];
      }

      *(v9 + 2) = v19 + 1;
      v20 = &v9[16 * v19];
      *(v20 + 4) = v15;
      *(v20 + 5) = v17;
      v10 += 4;
      --v8;
    }

    while (v8);

    if (!*(v9 + 2))
    {
      goto LABEL_15;
    }
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_15;
    }
  }

  v21 = *(v9 + 4);
  v22 = *(v9 + 5);
  v23 = sub_1DF632A6C();
  if (!*(a3 + 16))
  {
LABEL_14:

    goto LABEL_15;
  }

  v25 = sub_1DF59F184(v23, v24);
  v27 = v26;

  if (v27)
  {
    v28 = (*(a3 + 56) + 16 * v25);
    v30 = *v28;
    v29 = v28[1];

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (*(v9 + 2))
      {
LABEL_13:
        v31 = *(v9 + 5);
        *(v9 + 4) = v30;
        *(v9 + 5) = v29;
        goto LABEL_14;
      }
    }

    else
    {
      v9 = sub_1DF5F50E4(v9);
      if (*(v9 + 2))
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    result = sub_1DF5F50E4(v9);
    v9 = result;
    goto LABEL_19;
  }

LABEL_15:
  if (*(v9 + 2) < 2uLL)
  {
    goto LABEL_22;
  }

  v32 = *(v9 + 6);
  v33 = *(v9 + 7);
  v34 = sub_1DF632A6C();
  if (!*(a3 + 16))
  {
LABEL_21:

    goto LABEL_22;
  }

  v36 = sub_1DF59F184(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_22:
    v44[0] = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
    sub_1DF5BC754();
    v42 = sub_1DF6328DC();
    swift_bridgeObjectRelease_n();
    return v42;
  }

  v39 = (*(a3 + 56) + 16 * v36);
  v30 = *v39;
  v29 = v39[1];

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (*(v9 + 2) >= 2uLL)
  {
    v41 = *(v9 + 7);
    *(v9 + 6) = v30;
    *(v9 + 7) = v29;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t BinaryEncodingError.hashValue.getter()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

uint64_t RawRepresentable<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v17[-1] - v9;
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v11 + 8))(v17, v12, v11);
  sub_1DF632CAC();
  v13 = v18;
  v14 = v19;
  __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  (*(v14 + 16))(v10, AssociatedTypeWitness, v16, v13, v14);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v17);
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

uint64_t RawRepresentable<>.encode(to:)(void *a1)
{
  v2 = sub_1DF632A1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 8))(v15, v7, v8);
  sub_1DF632CAC();
  v9 = v14[1];
  v10 = v14[2];
  sub_1DF6329EC();
  v11 = v16;
  v12 = v17;
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  (*(v12 + 8))(v9, v10, v6, v11, v12);
  (*(v3 + 8))(v6, v2);

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

unint64_t sub_1DF5F57F8()
{
  result = qword_1ECE42DB8;
  if (!qword_1ECE42DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42DB8);
  }

  return result;
}

uint64_t dispatch thunk of BinaryEncodingContaining.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))();
}

{
  return (*(a5 + 32))();
}

uint64_t CodableBox.encode(to:)(void *a1)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v13[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v13];
  v5 = v13[0];
  if (v4)
  {
    v6 = sub_1DF6323CC();
    v8 = v7;

    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DF633AEC();
    __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_1DF5F5AA8();
    sub_1DF63397C();
    sub_1DF5B33C0(v6, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = v5;
    sub_1DF63228C();

    result = swift_willThrow();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1DF5F5AA8()
{
  result = qword_1ECE42DC0;
  if (!qword_1ECE42DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42DC0);
  }

  return result;
}

uint64_t CodableBox.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF633ACC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1DF5F5C78();
    sub_1DF63396C();
    sub_1DF5F5CCC();
    v6 = sub_1DF63319C();
    if (v6)
    {
      v8 = v6;
      sub_1DF5B33C0(v9, v10);
      __swift_destroy_boxed_opaque_existential_1(v11);
      *a2 = v8;
    }

    else
    {
      type metadata accessor for CodableBox.Error();
      swift_getWitnessTable();
      swift_allocError();
      swift_willThrow();
      sub_1DF5B33C0(v9, v10);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DF5F5C78()
{
  result = qword_1ECE42DC8;
  if (!qword_1ECE42DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42DC8);
  }

  return result;
}

unint64_t sub_1DF5F5CCC()
{
  result = qword_1ECE42DD0[0];
  if (!qword_1ECE42DD0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ECE42DD0);
  }

  return result;
}

uint64_t CodableBox.Error.hashValue.getter()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

uint64_t sub_1DF5F5DF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DF5F5E3C(uint64_t *a1, int a2)
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

uint64_t sub_1DF5F5E84(uint64_t result, int a2, int a3)
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

uint64_t UnsafeSendableBox.contents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_1DF63327C();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t UnsafeSendableBox.contents.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_1DF63327C();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t (*UnsafeSendableBox.contents.modify())()
{
  v1 = *(*v0 + 88);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t UnsafeSendableBox.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  (*(*(*(*v3 + 80) - 8) + 56))(v3 + *(*v3 + 88), 1, 1);
  return v3;
}

uint64_t UnsafeSendableBox.deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_1DF63327C();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

uint64_t UnsafeSendableBox.__deallocating_deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_1DF63327C();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5F62FC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1DF63327C();
  if (v3 <= 0x3F)
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

void sub_1DF5F63EC(uint64_t a1, unint64_t a2, double a3, uint64_t a4, void (*a5)(void))
{
  sub_1DF5F80AC(a3);
  v9 = sub_1DF5F7314();

  if (!v5)
  {
    if (qword_1ECE42548 != -1)
    {
      swift_once();
    }

    v10 = sub_1DF6326AC();
    __swift_project_value_buffer(v10, qword_1ECE4BD78);

    v11 = sub_1DF63268C();
    v12 = sub_1DF63318C();

    v21 = a1;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = v9;
      v15 = swift_slowAlloc();
      v22 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_1DF59EEC8(a1, a2, &v22);
      *(v13 + 12) = 1024;
      v16 = v14;
      *(v13 + 14) = v14;
      _os_log_impl(&dword_1DF59A000, v11, v12, "Successfully created power assertion %s:%u", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E12D9D80](v15, -1, -1);
      MEMORY[0x1E12D9D80](v13, -1, -1);
    }

    else
    {
      v16 = v9;
    }

    a5();
    sub_1DF5F755C(v16);

    v17 = sub_1DF63268C();
    v18 = sub_1DF63318C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1DF59EEC8(v21, a2, &v22);
      *(v19 + 12) = 1024;
      *(v19 + 14) = v16;
      _os_log_impl(&dword_1DF59A000, v17, v18, "Successfully released power assertion %s:%u", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12D9D80](v20, -1, -1);
      MEMORY[0x1E12D9D80](v19, -1, -1);
    }
  }
}

uint64_t withPowerAssertion<A>(reason:type:timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1DF5F68E0;

  return sub_1DF5F6A2C(a1, a2, a3, a4, v16, a6, a7, a8);
}

uint64_t sub_1DF5F68E0()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5F6A14, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1DF5F6A2C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 48) = a6;
  *(v8 + 40) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5F6A5C, 0, 0);
}

uint64_t sub_1DF5F6A5C()
{
  v19 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1DF5F80AC(*(v0 + 40));
  v3 = sub_1DF5F7314();
  *(v0 + 96) = v3;

  if (qword_1ECE42548 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 32);
  v5 = sub_1DF6326AC();
  *(v0 + 72) = __swift_project_value_buffer(v5, qword_1ECE4BD78);

  v6 = sub_1DF63268C();
  v7 = sub_1DF63318C();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1DF59EEC8(v9, v8, &v18);
    *(v10 + 12) = 1024;
    *(v10 + 14) = v3;
    _os_log_impl(&dword_1DF59A000, v6, v7, "Successfully created power assertion %s:%u", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12D9D80](v11, -1, -1);
    MEMORY[0x1E12D9D80](v10, -1, -1);
  }

  v17 = (*(v0 + 48) + **(v0 + 48));
  v12 = *(*(v0 + 48) + 4);
  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = sub_1DF5F6CF8;
  v14 = *(v0 + 56);
  v15 = *(v0 + 16);

  return v17(v15);
}

uint64_t sub_1DF5F6CF8()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1DF5F70C4;
  }

  else
  {
    v3 = sub_1DF5F6E0C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF5F6E0C()
{
  v24 = v0;
  v1 = *(v0 + 88);
  sub_1DF5F755C(*(v0 + 96));
  if (v1)
  {
    (*(*(*(v0 + 64) - 8) + 8))(*(v0 + 16));
    sub_1DF5F755C(*(v0 + 96));
    v12 = *(v0 + 72);
    v13 = *(v0 + 32);

    v14 = sub_1DF63268C();
    v15 = sub_1DF63318C();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 96);
      v19 = *(v0 + 24);
      v18 = *(v0 + 32);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_1DF59EEC8(v19, v18, v23);
      *(v20 + 12) = 1024;
      *(v20 + 14) = v17;
      _os_log_impl(&dword_1DF59A000, v14, v15, "Successfully released power assertion %s:%u", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12D9D80](v21, -1, -1);
      MEMORY[0x1E12D9D80](v20, -1, -1);
    }

    swift_willThrow();
    v11 = *(v0 + 8);
  }

  else
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 32);

    v4 = sub_1DF63268C();
    v5 = sub_1DF63318C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 96);
      v8 = *(v0 + 24);
      v7 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1DF59EEC8(v8, v7, v23);
      *(v9 + 12) = 1024;
      *(v9 + 14) = v6;
      _os_log_impl(&dword_1DF59A000, v4, v5, "Successfully released power assertion %s:%u", v9, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12D9D80](v10, -1, -1);
      MEMORY[0x1E12D9D80](v9, -1, -1);
    }

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_1DF5F70C4()
{
  v14 = v0;
  v1 = *(v0 + 88);
  sub_1DF5F755C(*(v0 + 96));
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);

  v4 = sub_1DF63268C();
  v5 = sub_1DF63318C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DF59EEC8(v8, v7, &v13);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v6;
    _os_log_impl(&dword_1DF59A000, v4, v5, "Successfully released power assertion %s:%u", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12D9D80](v10, -1, -1);
    MEMORY[0x1E12D9D80](v9, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DF5F724C()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ECE4BD78);
  v1 = __swift_project_value_buffer(v0, qword_1ECE4BD78);
  if (qword_1ECE42550 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ECE4BD90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1DF5F7314()
{
  v13[1] = *MEMORY[0x1E69E9840];
  AssertionID = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE42FA8, &unk_1DF63A9A0);
  v0 = sub_1DF63282C();
  v1 = IOPMAssertionCreateWithProperties(v0, &AssertionID);

  if (v1)
  {
    if (qword_1ECE42548 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF6326AC();
    __swift_project_value_buffer(v2, qword_1ECE4BD78);

    v3 = sub_1DF63268C();
    v4 = sub_1DF63316C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13[0] = v6;
      *v5 = 136315394;
      v7 = sub_1DF63284C();
      v9 = sub_1DF59EEC8(v7, v8, v13);

      *(v5 + 4) = v9;
      *(v5 + 12) = 1024;
      *(v5 + 14) = v1;
      _os_log_impl(&dword_1DF59A000, v3, v4, "IOPMAssertionCreateWithProperties %s failed with error: %d", v5, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1E12D9D80](v6, -1, -1);
      MEMORY[0x1E12D9D80](v5, -1, -1);
    }

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v1 userInfo:0];
    result = swift_willThrow();
  }

  else
  {
    result = AssertionID;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF5F755C(IOPMAssertionID a1)
{
  result = IOPMAssertionRelease(a1);
  if (result)
  {
    v2 = result;
    if (qword_1ECE42548 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF6326AC();
    __swift_project_value_buffer(v3, qword_1ECE4BD78);
    v4 = sub_1DF63268C();
    v5 = sub_1DF63316C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v2;
      _os_log_impl(&dword_1DF59A000, v4, v5, "IOPMAssertionRelease failed with error: %d", v6, 8u);
      MEMORY[0x1E12D9D80](v6, -1, -1);
    }

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v2 userInfo:0];
    return swift_willThrow();
  }

  return result;
}

uint64_t PowerAssertion.AssertionType.hashValue.getter()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

unint64_t sub_1DF5F770C()
{
  result = qword_1ECE42FA0;
  if (!qword_1ECE42FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42FA0);
  }

  return result;
}

uint64_t sub_1DF5F7780()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ECE4BD90);
  __swift_project_value_buffer(v0, qword_1ECE4BD90);
  return sub_1DF63269C();
}

uint64_t sub_1DF5F7804(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  type metadata accessor for CFString(0);
  v11 = v10;
  v31[3] = v10;
  v31[0] = a1;
  v12 = *a5;
  v14 = sub_1DF59F184(a2, a3);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a4 & 1) != 0)
  {
LABEL_7:
    v20 = *a5;
    if (v18)
    {
LABEL_8:
      v21 = (v20[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v21);
      return sub_1DF5A27C4(v31, v21);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a4 & 1) == 0)
  {
    sub_1DF5DEF6C();
    goto LABEL_7;
  }

  sub_1DF5DE0BC(v17, a4 & 1);
  v23 = *a5;
  v24 = sub_1DF59F184(a2, a3);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *a5;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v31, v11);
  v27 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  sub_1DF5F8008(v14, a2, a3, *v29, v20);

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_1DF5F79F0(uint64_t a1, uint64_t a2, char a3, void *a4, double a5)
{
  *v24 = a5;
  v24[3] = MEMORY[0x1E69E63B0];
  v9 = *a4;
  v11 = sub_1DF59F184(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_1DF5A27C4(v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_1DF5DEF6C();
    goto LABEL_7;
  }

  sub_1DF5DE0BC(v14, a3 & 1);
  v20 = *a4;
  v21 = sub_1DF59F184(a1, a2);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v24, MEMORY[0x1E69E63B0]);
  sub_1DF5F7F84(v11, a1, a2, v17, *v23);

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1DF5F7B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x1E69E6158];
  v30[3] = MEMORY[0x1E69E6158];
  v30[0] = a1;
  v30[1] = a2;
  v11 = *a6;
  v13 = sub_1DF59F184(a3, a4);
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
      return sub_1DF5A27C4(v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_1DF5DEF6C();
    goto LABEL_7;
  }

  sub_1DF5DE0BC(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_1DF59F184(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1DF6339EC();
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
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_1DF5F7F00(v13, a3, a4, *v28, v28[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_1DF5F7D24(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v24[0] = a1;
  v24[3] = MEMORY[0x1E69E6530];
  v9 = *a5;
  v11 = sub_1DF59F184(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_1DF5A27C4(v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_1DF5DEF6C();
    goto LABEL_7;
  }

  sub_1DF5DE0BC(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_1DF59F184(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v24, MEMORY[0x1E69E6530]);
  sub_1DF5F7E7C(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1DF5F7E7C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11[0] = a4;
  v11[3] = MEMORY[0x1E69E6530];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DF5A27C4(v11, a5[7] + 32 * a1);
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

uint64_t sub_1DF5F7F00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12[3] = MEMORY[0x1E69E6158];
  v12[0] = a4;
  v12[1] = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_1DF5A27C4(v12, a6[7] + 32 * a1);
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

uint64_t sub_1DF5F7F84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  *v11 = a5;
  v11[3] = MEMORY[0x1E69E63B0];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DF5A27C4(v11, a4[7] + 32 * a1);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1DF5F8008(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for CFString(0);
  v16[3] = v10;
  v16[0] = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  result = sub_1DF5A27C4(v16, a5[7] + 32 * a1);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_1DF5F80AC(double a1)
{
  v2 = sub_1DF63295C();
  type metadata accessor for CFString(0);
  v4 = v3;
  v39 = v3;
  v38[0] = v2;
  sub_1DF5A27C4(v38, v36);
  v5 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v5;
  v7 = v37;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  sub_1DF5F7804(*v11, 0x7954747265737341, 0xEA00000000006570, isUniquelyReferenced_nonNull_native, &v35);
  __swift_destroy_boxed_opaque_existential_1(v36);
  v13 = v35;
  v14 = sub_1DF63295C();
  v39 = v4;
  v38[0] = v14;
  sub_1DF5A27C4(v38, v36);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v35 = v13;
  v16 = v37;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  sub_1DF5F7804(*v20, 0x614E747265737341, 0xEA0000000000656DLL, v15, &v35);
  __swift_destroy_boxed_opaque_existential_1(v36);
  v22 = v35;
  v39 = MEMORY[0x1E69E63B0];
  *v38 = a1;
  sub_1DF5A27C4(v38, v36);
  LOBYTE(v16) = swift_isUniquelyReferenced_nonNull_native();
  v35 = v22;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  sub_1DF5F79F0(0x5374756F656D6954, 0xEE0073646E6F6365, v16, &v35, *v23);
  __swift_destroy_boxed_opaque_existential_1(v36);
  v24 = v35;
  v39 = MEMORY[0x1E69E6158];
  v38[0] = 0xD000000000000014;
  v38[1] = 0x80000001DF635270;
  sub_1DF5A27C4(v38, v36);
  LOBYTE(v16) = swift_isUniquelyReferenced_nonNull_native();
  v35 = v24;
  v25 = v37;
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v34 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  sub_1DF5F7B40(*v29, v29[1], 0x4174756F656D6954, 0xED00006E6F697463, v16, &v35);
  __swift_destroy_boxed_opaque_existential_1(v36);
  v31 = v35;
  v39 = MEMORY[0x1E69E6530];
  v38[0] = 255;
  sub_1DF5A27C4(v38, v36);
  LOBYTE(v16) = swift_isUniquelyReferenced_nonNull_native();
  v35 = v31;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  sub_1DF5F7D24(*v32, 0x654C747265737341, 0xEB000000006C6576, v16, &v35);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v35;
}

uint64_t sub_1DF5F8570@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v4, AssociatedTypeWitness);
}

uint64_t sub_1DF5F8640(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(v1 + v4, a1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t sub_1DF5F8720(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *(*v1 + 88);
  v2[5] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[6] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5F8824, v1, 0);
}

uint64_t sub_1DF5F8824()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_1DF5F8570(v0[8]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1DF5F8904;
  v8 = v0[8];
  v9 = v0[6];
  v10 = v0[2];

  return MEMORY[0x1EEE6D8C8](v10, v9, AssociatedConformanceWitness);
}

uint64_t sub_1DF5F8904()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1DF5F8AC8;
  }

  else
  {
    v6 = sub_1DF5F8A30;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF5F8A30()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1DF5F8B60(v0[3], v1);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF5F8AC8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1DF5F8B60(v0[3], v1);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_1DF5F8B60(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a2);
  return sub_1DF5F8640(v8);
}

uint64_t AsyncShareSequence.deinit()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncShareSequence.__deallocating_deinit()
{
  AsyncShareSequence.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF5F8D64(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF59D2C8;

  return sub_1DF5F8720(a1);
}

uint64_t sub_1DF5F8E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  v10[2] = a4;
  v13 = *(a5 + 80);
  v12 = *(a5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v10[4] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v10[5] = v17;
  v18 = *(MEMORY[0x1E69E85D8] + 4);
  v19 = swift_task_alloc();
  v10[6] = v19;
  v20 = type metadata accessor for AsyncShareSequence();
  *v19 = v10;
  v19[1] = sub_1DF5F8F70;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, v20, a6, v17);
}

uint64_t sub_1DF5F8F70()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v6 = v2[5];
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1DF5F90A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - v7;
  v10 = *(v9 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v17 - v14;
  swift_defaultActor_initialize();
  (*(v5 + 16))(v8, a1, v4);
  sub_1DF632FCC();
  (*(v12 + 32))(v2 + *(*v2 + 104), v15, AssociatedTypeWitness);
  return v2;
}

uint64_t sub_1DF5F9278(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = type metadata accessor for AsyncShareSequence();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1DF5F90A4(a1);
}

uint64_t sub_1DF5F92D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1DF5F9378(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
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

uint64_t dispatch thunk of AsyncShareSequence.next()(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF59D2C8;

  return v8(a1);
}

uint64_t DirectorySequence.init(at:includingPropertiesForKeys:options:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x1E12D9570]();
  v5 = [objc_opt_self() defaultManager];
  v6 = sub_1DF63313C();

  objc_autoreleasePoolPop(v4);
  *a2 = v6;
  v7 = sub_1DF6322FC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

unint64_t sub_1DF5F9680()
{
  result = qword_1ECE43030;
  if (!qword_1ECE43030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43030);
  }

  return result;
}

uint64_t sub_1DF5F96E4()
{
  v1 = *v0;
  v2 = sub_1DF5F991C(*v0);

  return v2;
}

uint64_t sub_1DF5F9744@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  if (*v1)
  {
    v7 = *v1;
    v8 = MEMORY[0x1E12D9570]();
    sub_1DF59BE48(v7, v1, v6);
    objc_autoreleasePoolPop(v8);

    return sub_1DF5A3C48(v6, a1);
  }

  else
  {
    v10 = sub_1DF6322FC();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t sub_1DF5F9870(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1DF5F98CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DF5F991C(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v47 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v52 = v47 - v10;
  v11 = sub_1DF6322FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v53 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 80);
  v16 = a1;
  v17 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v18 = 0;
    v47[0] = (v15 + 32) & ~v15;
    v47[1] = v15;
    v19 = (MEMORY[0x1E69E7CC0] + v47[0]);
    v51 = (v12 + 56);
    v54 = (v12 + 32);
    v49 = v6;
    v50 = (v12 + 48);
    v20 = MEMORY[0x1E69E7CC0];
    v48 = v12;
    while (1)
    {
      v21 = a1;
      v22 = MEMORY[0x1E12D9570]();
      if ([v21 nextObject])
      {
        v55 = a1;
        v23 = v9;
        sub_1DF63339C();
        swift_unknownObjectRelease();
        sub_1DF5A27C4(v56, v57);
        sub_1DF5A27C4(v57, v56);
        v24 = v49;
        if (swift_dynamicCast())
        {
          v25 = *v51;
          (*v51)(v24, 0, 1, v11);
          v26 = v24;
          v9 = v23;
          (*v54)(v23, v26, v11);
          v25(v23, 0, 1, v11);
          v12 = v48;
          goto LABEL_9;
        }

        v27 = *v51;
        (*v51)(v24, 1, 1, v11);
        sub_1DF59CB50(v24, &qword_1ECE42D50, &qword_1DF63AAE0);
        v9 = v23;
        v12 = v48;
        v27(v9, 1, 1, v11);
      }

      else
      {

        (*v51)(v9, 1, 1, v11);
      }

      v55 = 0;
LABEL_9:
      objc_autoreleasePoolPop(v22);

      v28 = v52;
      sub_1DF5A3C48(v9, v52);
      if ((*v50)(v28, 1, v11) == 1)
      {

        goto LABEL_35;
      }

      v29 = *v54;
      result = (*v54)(v53, v28, v11);
      if (v18)
      {
        v17 = v20;
      }

      else
      {
        v31 = v20[3];
        if (((v31 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v32 = v31 & 0xFFFFFFFFFFFFFFFELL;
        if (v32 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v32;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43038, &qword_1DF63ABB8);
        v34 = *(v12 + 72);
        v35 = v47[0];
        v17 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v17);
        if (!v34)
        {
          goto LABEL_41;
        }

        v36 = result - v35;
        if (result - v35 == 0x8000000000000000 && v34 == -1)
        {
          goto LABEL_42;
        }

        v38 = v35;
        v39 = v36 / v34;
        v17[2] = v33;
        v17[3] = 2 * (v36 / v34);
        v40 = v17 + v38;
        v41 = v20[3] >> 1;
        v42 = v41 * v34;
        if (v20[2])
        {
          if (v17 < v20 || v40 >= v20 + v38 + v42)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v20[2] = 0;
        }

        v19 = &v40[v42];
        v18 = (v39 & 0x7FFFFFFFFFFFFFFFLL) - v41;
      }

      a1 = v55;
      v43 = __OFSUB__(v18--, 1);
      if (v43)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return result;
      }

      v29(v19, v53, v11);
      v19 += *(v12 + 72);
      v20 = v17;
      if (!a1)
      {
        goto LABEL_33;
      }
    }
  }

  v18 = 0;
LABEL_33:
  v28 = v52;
  (*(v12 + 56))(v52, 1, 1, v11);
  v20 = v17;
LABEL_35:
  result = sub_1DF59CB50(v28, &qword_1ECE42D50, &qword_1DF63AAE0);
  v44 = v20[3];
  if (v44 >= 2)
  {
    v45 = v44 >> 1;
    v43 = __OFSUB__(v45, v18);
    v46 = v45 - v18;
    if (v43)
    {
      goto LABEL_43;
    }

    v20[2] = v46;
  }

  return v20;
}

unint64_t sub_1DF5F9E38()
{
  result = qword_1ECE43040;
  if (!qword_1ECE43040)
  {
    sub_1DF6322FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43040);
  }

  return result;
}

uint64_t GenericError.description.getter()
{
  if (!v0[1])
  {
    return 0x6C706D49746F6E2ELL;
  }

  MEMORY[0x1E12D82E0](*v0);
  MEMORY[0x1E12D82E0](41, 0xE100000000000000);
  return 0x28726F7272652ELL;
}

uint64_t sub_1DF5F9F18()
{
  if (!v0[1])
  {
    return 0x6C706D49746F6E2ELL;
  }

  MEMORY[0x1E12D82E0](*v0);
  MEMORY[0x1E12D82E0](41, 0xE100000000000000);
  return 0x28726F7272652ELL;
}

uint64_t sub_1DF5F9FA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF5F9FF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DF5FA044(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DF5FA05C(void *result, int a2)
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

void *BufferedData.__allocating_init(data:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[3] = a2;
  result[4] = 0;
  result[2] = a1;
  return result;
}

BOOL BufferedData.isAtEnd.getter()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v3 = 0;
      return v1 == v3;
    }

    v7 = v3 + 16;
    v5 = *(v3 + 16);
    v6 = *(v7 + 8);
    v8 = __OFSUB__(v6, v5);
    v3 = v6 - v5;
    if (!v8)
    {
      return v1 == v3;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v3 = BYTE6(v2);
    return v1 == v3;
  }

  v8 = __OFSUB__(HIDWORD(v3), v3);
  LODWORD(v3) = HIDWORD(v3) - v3;
  if (!v8)
  {
    v3 = v3;
    return v1 == v3;
  }

  __break(1u);
  return result;
}

uint64_t BufferedData.read(maxBytes:)(uint64_t a1)
{
  result = sub_1DF5FA238(a1, *(v1 + 32));
  if (!v2)
  {
    v5 = *(v1 + 32);
    v6 = __OFADD__(v5, a1);
    v7 = v5 + a1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 32) = v7;
    }
  }

  return result;
}

void BufferedData.read()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v1), v1))
  {
    goto LABEL_14;
  }

  v5 = HIDWORD(v1) - v1;
LABEL_11:
  if (v5 >= v3)
  {
    sub_1DF5A3A94(v1, v2);
    sub_1DF63241C();
    sub_1DF5B33C0(v1, v2);
    return;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void *BufferedData.init(data:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 0;
  v2[2] = a1;
  return v2;
}

uint64_t sub_1DF5FA238(uint64_t result, uint64_t a2)
{
  v3 = a2 + result;
  if (__OFADD__(a2, result))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      v9 = __OFSUB__(v7, v8);
      v10 = v7 - v8;
      if (v9)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v10 >= v3)
      {
        goto LABEL_9;
      }
    }

    else if (v3 <= 0)
    {
LABEL_9:
      if (v3 >= a2)
      {
        sub_1DF5A3A94(v4, v5);
        v11 = sub_1DF63241C();
        sub_1DF5B33C0(v4, v5);
        return v11;
      }

      goto LABEL_17;
    }

LABEL_15:
    sub_1DF5E3264();
    swift_allocError();
    *v12 = 1;
    return swift_willThrow();
  }

  if (!v6)
  {
    if (BYTE6(v5) < v3)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v4), v4))
  {
    if (HIDWORD(v4) - v4 < v3)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t BufferedData.__deallocating_deinit()
{
  sub_1DF5B33C0(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5FA410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1DF633A6C();
  sub_1DF632ACC();
  v7 = sub_1DF633AAC();
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
    if (v12 || (sub_1DF63394C() & 1) != 0)
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

uint64_t sub_1DF5FA508()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ECE43048);
  v1 = __swift_project_value_buffer(v0, qword_1ECE43048);
  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E69A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static SystemInfo.architecture.getter()
{
  v0 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v3);
  objc_autoreleasePoolPop(v0);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1DF59CB50(v3, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  return 0;
}

uint64_t static SystemInfo.auditUserIdentifier.getter()
{
  v3 = *MEMORY[0x1E69E9840];
  memset(&v2, 0, sizeof(v2));
  getaudit_addr(&v2, 48);
  result = v2.ai_auid;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static SystemInfo.auditSessionIdentifier.getter()
{
  v3 = *MEMORY[0x1E69E9840];
  memset(&v2, 0, sizeof(v2));
  getaudit_addr(&v2, 48);
  result = v2.ai_asid;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL static SystemInfo.isSystemSession.getter()
{
  v3 = *MEMORY[0x1E69E9840];
  memset(&v2, 0, sizeof(v2));
  getaudit_addr(&v2, 48);
  result = v2.ai_auid == -1;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static SystemInfo.bootTime.getter()
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v6 = 16;
  v7 = 0;
  if (!sysctlbyname("kern.boottime", &v7, &v6, 0, 0))
  {
    if (v7 < 0)
    {
      __break(1u);
    }

    else if ((v8 & 0x80000000) == 0)
    {
      result = sub_1DF6324CC();
      goto LABEL_10;
    }

    __break(1u);
  }

  if (qword_1ECE42558 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF6326AC();
  __swift_project_value_buffer(v0, qword_1ECE43048);
  v1 = sub_1DF63268C();
  v2 = sub_1DF63316C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    *(v3 + 4) = MEMORY[0x1E12D7E80]();
    _os_log_impl(&dword_1DF59A000, v1, v2, "sysctlbyname() for kern.boottime failed: %d", v3, 8u);
    MEMORY[0x1E12D9D80](v3, -1, -1);
  }

  result = sub_1DF63245C();
LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static SystemInfo.bootSessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_1DF632A1C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 37;
  v10 = sub_1DF632D7C();
  *(v10 + 16) = 37;
  *(v10 + 48) = 0u;
  *(v10 + 61) = 0;
  *(v10 + 32) = 0u;
  if (sysctlbyname("kern.bootsessionuuid", (v10 + 32), &v29, 0, 0))
  {
    v16 = MEMORY[0x1E12D7E80]();
    if (!strerror(v16))
    {
      __break(1u);
    }

    goto LABEL_10;
  }

  sub_1DF6329FC();
  sub_1DF5FAD48(v10, v9);
  if (!v11)
  {
    while (1)
    {
LABEL_9:
      sub_1DF6336EC();
      __break(1u);
LABEL_10:
      v17 = sub_1DF63293C();
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0x6E776F6E6B6E55;
      }

      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      if (qword_1ECE42558 != -1)
      {
        swift_once();
      }

      v21 = sub_1DF6326AC();
      __swift_project_value_buffer(v21, qword_1ECE43048);

      v22 = sub_1DF63268C();
      v23 = sub_1DF63316C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30[0] = v25;
        *v24 = 136446466;
        v26 = sub_1DF59EEC8(v19, v20, v30);

        *(v24 + 4) = v26;
        *(v24 + 12) = 1024;
        *(v24 + 14) = MEMORY[0x1E12D7E80](v27);
        _os_log_impl(&dword_1DF59A000, v22, v23, "Error from sysctlbyname: %{public}s (%d)", v24, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1E12D9D80](v25, -1, -1);
        MEMORY[0x1E12D9D80](v24, -1, -1);
      }

      else
      {
      }
    }
  }

  sub_1DF63254C();
  v12 = sub_1DF6325AC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_1DF59CB50(v5, &qword_1ECE42AA8, &qword_1DF638F18);
    goto LABEL_9;
  }

  result = (*(v13 + 32))(a1, v5, v12);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF5FAD48(uint64_t a1, char *a2)
{
  v4 = sub_1DF632A1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6329EC();
  v9 = sub_1DF6329DC();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if ((v9 & 1) == 0)
  {
    sub_1DF6329FC();
    v11 = sub_1DF6329DC();
    v10(v8, v4);
    if ((v11 & 1) == 0)
    {
      sub_1DF6329CC();
      v12 = sub_1DF6329DC();
      v10(v8, v4);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = sub_1DF5FBD3C(v13);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v14;
  sub_1DF6329EC();
  v17 = sub_1DF6329DC();
  v10(v8, v4);
  if (v17)
  {

LABEL_17:
    v10(a2, v4);
    return v16;
  }

  if ((sub_1DF63345C() & 1) == 0)
  {

LABEL_10:
    v18 = *(a1 + 16);
    if (v18)
    {
      v8 = 0;
      while (v8[a1 + 32])
      {
        if (v18 == ++v8)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      sub_1DF6336EC();
      __break(1u);
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithBytes:a1 + 32 length:v8 encoding:sub_1DF632A0C()];

    if (!v19)
    {
      v10(a2, v4);
      return 0;
    }

    v16 = sub_1DF63298C();

    goto LABEL_17;
  }

  v10(a2, v4);

  return v16;
}

uint64_t static SystemInfo.arrowChipID.getter()
{
  v0 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v7);
  objc_autoreleasePoolPop(v0);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_1DF59CB50(v7, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF6326AC();
  __swift_project_value_buffer(v2, qword_1ED8E69A0);
  v3 = sub_1DF63268C();
  v4 = sub_1DF63316C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DF59A000, v3, v4, "Could not get arrow chip id", v5, 2u);
    MEMORY[0x1E12D9D80](v5, -1, -1);
  }

  return 0;
}

uint64_t sub_1DF5FB214(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v11);
  objc_autoreleasePoolPop(v4);
  if (v12)
  {
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
    sub_1DF59CB50(v11, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF6326AC();
  __swift_project_value_buffer(v6, qword_1ED8E69A0);
  v7 = sub_1DF63268C();
  v8 = sub_1DF63316C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DF59A000, v7, v8, a3, v9, 2u);
    MEMORY[0x1E12D9D80](v9, -1, -1);
  }

  return 0;
}

uint64_t static SystemInfo.hostUUID.getter()
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  v2 = xmmword_1DF63ACB0;
  gethostuuid(v3, &v2);
  result = sub_1DF63257C();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static SystemInfo.productType.getter()
{
  v0 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v3);
  objc_autoreleasePoolPop(v0);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1DF59CB50(v3, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  return 0;
}

uint64_t static SystemInfo.osVersion.getter()
{
  v0 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v7);
  objc_autoreleasePoolPop(v0);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_1DF59CB50(v7, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF6326AC();
  __swift_project_value_buffer(v2, qword_1ED8E69A0);
  v3 = sub_1DF63268C();
  v4 = sub_1DF63316C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DF59A000, v3, v4, "Could not get OS version", v5, 2u);
    MEMORY[0x1E12D9D80](v5, -1, -1);
  }

  return 0;
}

uint64_t static SystemInfo.deviceSKU.getter()
{
  v0 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v3);
  objc_autoreleasePoolPop(v0);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1DF59CB50(v3, &qword_1ECE436C0, &qword_1DF6393D0);
    return 0;
  }
}

uint64_t static SystemInfo.lowPowerExpressModesSupported.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v11);
  objc_autoreleasePoolPop(v2);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
    if (swift_dynamicCast())
    {
      v3 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DF59CB50(v11, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v4 = sub_1DF5FCC04(v3);

  v5 = sub_1DF5FA410(0x616873696C61, 0xE600000000000000, v4);
  v6 = v5 & 1;
  if (sub_1DF5FA410(0x796D2D646E6966, 0xE700000000000000, v4))
  {
    v6 = v5 & 1 | 2;
  }

  v7 = sub_1DF5FA410(0x727078652D63666ELL, 0xEB00000000737365, v4);

  v9 = v6 | 4;
  if ((v7 & 1) == 0)
  {
    v9 = v6;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1DF5FB8A4()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v4 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v5, &v4, 0, 0);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = v5 == 0;
  }

  v2 = !v1;
  byte_1ECE43060 = v2;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static SystemInfo.isVirtualMachine.getter()
{
  if (qword_1ECE42568 != -1)
  {
    swift_once();
  }

  return byte_1ECE43060;
}

uint64_t SystemInfo.LowPowerExpressModes.description.getter()
{
  v1 = 0x616873696C612ELL;
  v2 = *v0;
  if ((qword_1F5A93B30 & ~*v0) != 0)
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    if (qword_1F5A93B30)
    {
      v6 = 0xE700000000000000;
      v5 = 0x616873696C612ELL;
    }

    else
    {
      if ((qword_1F5A93B30 & 4) != 0)
      {
        v3 = 0x7270784563666E2ELL;
      }

      else
      {
        v3 = 0x4E574F4E4B4E552ELL;
      }

      v4 = 0xE800000000000000;
      if ((qword_1F5A93B30 & 4) != 0)
      {
        v4 = 0xEB00000000737365;
      }

      if ((qword_1F5A93B30 & 2) != 0)
      {
        v5 = 0x794D646E69662ELL;
      }

      else
      {
        v5 = v3;
      }

      if ((qword_1F5A93B30 & 2) != 0)
      {
        v6 = 0xE700000000000000;
      }

      else
      {
        v6 = v4;
      }
    }

    v7 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DF5C1294(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1DF5C1294((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v6;
  }

  if ((qword_1F5A93B38 & ~v2) == 0)
  {
    v11 = 0x794D646E69662ELL;
    v12 = 0xE700000000000000;
    if ((qword_1F5A93B38 & 4) != 0)
    {
      v13 = 0x7270784563666E2ELL;
    }

    else
    {
      v13 = 0x4E574F4E4B4E552ELL;
    }

    v14 = 0xE800000000000000;
    if ((qword_1F5A93B38 & 4) != 0)
    {
      v14 = 0xEB00000000737365;
    }

    if ((qword_1F5A93B38 & 2) == 0)
    {
      v11 = v13;
      v12 = v14;
    }

    if (qword_1F5A93B38)
    {
      v15 = 0x616873696C612ELL;
    }

    else
    {
      v15 = v11;
    }

    if (qword_1F5A93B38)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = v12;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DF5C1294(0, *(v7 + 2) + 1, 1, v7);
    }

    v18 = *(v7 + 2);
    v17 = *(v7 + 3);
    if (v18 >= v17 >> 1)
    {
      v7 = sub_1DF5C1294((v17 > 1), v18 + 1, 1, v7);
    }

    *(v7 + 2) = v18 + 1;
    v19 = &v7[16 * v18];
    *(v19 + 4) = v15;
    *(v19 + 5) = v16;
  }

  if ((qword_1F5A93B40 & ~v2) == 0)
  {
    v20 = 0x794D646E69662ELL;
    v21 = 0xE700000000000000;
    if ((qword_1F5A93B40 & 4) != 0)
    {
      v22 = 0x7270784563666E2ELL;
    }

    else
    {
      v22 = 0x4E574F4E4B4E552ELL;
    }

    v23 = 0xE800000000000000;
    if ((qword_1F5A93B40 & 4) != 0)
    {
      v23 = 0xEB00000000737365;
    }

    if ((qword_1F5A93B40 & 2) == 0)
    {
      v20 = v22;
      v21 = v23;
    }

    if (qword_1F5A93B40)
    {
      v24 = 0xE700000000000000;
    }

    else
    {
      v1 = v20;
      v24 = v21;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DF5C1294(0, *(v7 + 2) + 1, 1, v7);
    }

    v26 = *(v7 + 2);
    v25 = *(v7 + 3);
    if (v26 >= v25 >> 1)
    {
      v7 = sub_1DF5C1294((v25 > 1), v26 + 1, 1, v7);
    }

    *(v7 + 2) = v26 + 1;
    v27 = &v7[16 * v26];
    *(v27 + 4) = v1;
    *(v27 + 5) = v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5C3828(&qword_1ED8E49F8, &unk_1ECE425C0, &qword_1DF637D10);
  v28 = sub_1DF6328DC();
  v30 = v29;

  MEMORY[0x1E12D82E0](v28, v30);

  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1DF5FBD3C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = sub_1DF632A8C();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5FBDC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DF633A6C();
  sub_1DF632ACC();
  v9 = sub_1DF633AAC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1DF63394C() & 1) != 0)
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

    sub_1DF5FC4B8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DF5FBF10(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1DF6325AC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43098, &unk_1DF63AF30);
  result = sub_1DF63341C();
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
      sub_1DF5A9208(&qword_1ED8E6150);
      result = sub_1DF6328BC();
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

uint64_t sub_1DF5FC258(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43088, &qword_1DF63AF18);
  result = sub_1DF63341C();
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
      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
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

uint64_t sub_1DF5FC4B8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DF5FC258(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DF5FC870();
      goto LABEL_16;
    }

    sub_1DF5FC9CC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1DF633A6C();
  sub_1DF632ACC();
  result = sub_1DF633AAC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DF63394C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
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
  result = sub_1DF6339DC();
  __break(1u);
  return result;
}

void *sub_1DF5FC638()
{
  v1 = v0;
  v2 = sub_1DF6325AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43098, &unk_1DF63AF30);
  v7 = *v0;
  v8 = sub_1DF63340C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
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
LABEL_14:
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
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1DF5FC870()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43088, &qword_1DF63AF18);
  v2 = *v0;
  v3 = sub_1DF63340C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_1DF5FC9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43088, &qword_1DF63AF18);
  result = sub_1DF63341C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1DF633A6C();

      sub_1DF632ACC();
      result = sub_1DF633AAC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DF5FCC04(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12D8860](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DF5FBDC0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1DF5FCCA0()
{
  result = qword_1ECE43068;
  if (!qword_1ECE43068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43068);
  }

  return result;
}

unint64_t sub_1DF5FCCF8()
{
  result = qword_1ECE43070;
  if (!qword_1ECE43070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43070);
  }

  return result;
}

unint64_t sub_1DF5FCD94()
{
  result = qword_1ECE42540;
  if (!qword_1ECE42540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42540);
  }

  return result;
}

unint64_t sub_1DF5FCDEC()
{
  result = qword_1ECE42538;
  if (!qword_1ECE42538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42538);
  }

  return result;
}

uint64_t Identifier.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DF6325AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Identifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DF6325AC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1DF5FCF38(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DF63394C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DF5FCFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_1DF5FCF38(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DF5FCFE4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DF5C0ECC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DF5FD014(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DF5FD068(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Identifier.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  type metadata accessor for Identifier.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1DF6338AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF633AFC();
  sub_1DF6325AC();
  sub_1DF5A9208(&qword_1ECE430A0);
  sub_1DF63385C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Identifier.hash(into:)()
{
  sub_1DF6325AC();
  sub_1DF5A9208(&qword_1ED8E6150);

  return sub_1DF6328CC();
}

uint64_t Identifier.hashValue.getter()
{
  sub_1DF633A6C();
  sub_1DF6325AC();
  sub_1DF5A9208(&qword_1ED8E6150);
  sub_1DF6328CC();
  return sub_1DF633AAC();
}

uint64_t Identifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1DF6325AC();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Identifier.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1DF63382C();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Identifier();
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v30;
  sub_1DF633ADC();
  if (!v15)
  {
    v22 = v13;
    v30 = v10;
    v16 = v25;
    v17 = v27;
    sub_1DF5A9208(qword_1ECE430A8);
    v18 = v28;
    v19 = v26;
    sub_1DF6337CC();
    (*(v16 + 8))(v9, v19);
    v20 = v22;
    (*(v17 + 32))(v22, v29, v18);
    (*(v23 + 32))(v24, v20, v30);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DF5FD684()
{
  sub_1DF633A6C();
  Identifier.hash(into:)();
  return sub_1DF633AAC();
}

uint64_t sub_1DF5FD6C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return IdentifierProtocol.description.getter(a1, WitnessTable);
}

uint64_t IdentifierProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 91;
  v12[1] = 0xE100000000000000;
  v9 = CustomStringConvertible.typeDescription.getter(a1, *(a2 + 8));
  MEMORY[0x1E12D82E0](v9);

  MEMORY[0x1E12D82E0](32, 0xE100000000000000);
  (*(a2 + 56))(a1, a2);
  sub_1DF5A9208(&unk_1ED8E4A10);
  v10 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v10);

  (*(v5 + 8))(v8, v4);
  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  return v12[0];
}

uint64_t sub_1DF5FD89C(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  a1[4] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[5] = result;
  return result;
}

uint64_t sub_1DF5FDA44()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ECE4BD40);
  __swift_project_value_buffer(v0, qword_1ECE4BD40);
  return sub_1DF63269C();
}

void sub_1DF5FDAC4()
{
  v1 = v0;
  if (qword_1ECE423A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF6326AC();
  __swift_project_value_buffer(v2, qword_1ECE4BD40);

  oslog = sub_1DF63268C();
  v3 = sub_1DF63318C();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1DF59EEC8(*(v1 + 24), *(v1 + 32), &v7);
    _os_log_impl(&dword_1DF59A000, oslog, v3, "Warning: Resume already called from %{public}s. Ignoring.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12D9D80](v5, -1, -1);
    MEMORY[0x1E12D9D80](v4, -1, -1);
  }
}

void OnceCheckedContinuation.resume(throwing:)(uint64_t a1)
{
  v22 = a1;
  v2 = *(*v1 + 88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v21 - v5;
  v8 = *(v7 + 80);
  v9 = *(v7 + 96);
  v10 = sub_1DF632E4C();
  v11 = sub_1DF63327C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v21 - v15;
  v17 = *(v10 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v21 - v19;
  sub_1DF5AB778();
  if ((*(v17 + 48))(v16, 1, v10) == 1)
  {
    (*(v12 + 8))(v16, v11);
    sub_1DF5FDAC4();
  }

  else
  {
    (*(v17 + 32))(v20, v16, v10);
    (*(v3 + 16))(v6, v22, v2);
    sub_1DF632E2C();
    (*(v17 + 8))(v20, v10);
  }
}

void OnceCheckedContinuation.resume<A>(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  v7 = sub_1DF632E4C();
  v8 = sub_1DF63327C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v18 - v12;
  v14 = *(v7 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v18 - v16;
  sub_1DF5AB778();
  if ((*(v14 + 48))(v13, 1, v7) == 1)
  {
    (*(v9 + 8))(v13, v8);
    sub_1DF5FDAC4();
  }

  else
  {
    (*(v14 + 32))(v17, v13, v7);
    sub_1DF5FE0AC(a1, v7, a2);
    (*(v14 + 8))(v17, v7);
  }
}

uint64_t sub_1DF5FE0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[1] = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DF633ABC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - v18;
  (*(v20 + 16))(v25 - v18, a1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *(v12 + 32);
    v21(v15, v19, a3);
    v22 = swift_allocError();
    v21(v23, v15, a3);
    v25[3] = v22;
    return sub_1DF632E2C();
  }

  else
  {
    (*(v6 + 32))(v10, v19, v5);
    return sub_1DF632E3C();
  }
}

void OnceCheckedContinuation.resume(with:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = sub_1DF632E4C();
  v7 = sub_1DF63327C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v17 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v17 - v15;
  sub_1DF5AB778();
  if ((*(v13 + 48))(v12, 1, v6) == 1)
  {
    (*(v8 + 8))(v12, v7);
    sub_1DF5FDAC4();
  }

  else
  {
    (*(v13 + 32))(v16, v12, v6);
    sub_1DF5FE50C(a1, v6);
    (*(v13 + 8))(v16, v6);
  }
}

uint64_t sub_1DF5FE50C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_1DF633ABC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_1DF632E2C();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_1DF632E3C();
  }
}

void OnceCheckedContinuation.resume<>()()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 96);
  v3 = sub_1DF632E4C();
  v4 = sub_1DF63327C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v14 - v12;
  sub_1DF5AB778();
  if ((*(v10 + 48))(v9, 1, v3) == 1)
  {
    (*(v5 + 8))(v9, v4);
    sub_1DF5FDAC4();
  }

  else
  {
    (*(v10 + 32))(v13, v9, v3);
    sub_1DF632E3C();
    (*(v10 + 8))(v13, v3);
  }
}

uint64_t OnceCheckedContinuation.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t static CaseIterable<>.allMembers.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1DF63349C();
  v2 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_1DF6330DC();
}

uint64_t sub_1DF5FEA58(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_1DF5FEAA0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  swift_beginAccess();
  v7 = *(v1 + 144);
  if (v7)
  {
    v8 = *(v1 + 152);
    v9 = sub_1DF5A32C0(v7);
    v7(v9);
    sub_1DF5A83BC(v7);
    v10 = sub_1DF63252C();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v6, 0, 1, v10);
    return (*(v11 + 32))(a1, v6, v10);
  }

  else
  {
    v13 = sub_1DF63252C();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v6, 1, 1, v13);
    sub_1DF63251C();
    result = (*(v14 + 48))(v6, 1, v13);
    if (result != 1)
    {
      return sub_1DF59CB50(v6, &qword_1ECE42D00, &qword_1DF63B250);
    }
  }

  return result;
}

uint64_t sub_1DF5FEC8C()
{
  v0 = sub_1DF6018D4();
  sub_1DF5A32C0(v0);
  return v0;
}

uint64_t sub_1DF5FECC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 144);
  v6 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return sub_1DF5A83BC(v5);
}

uint64_t AsyncKeyedThrottle.ThrottleResult.hashValue.getter(unsigned __int8 a1)
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](a1);
  return sub_1DF633AAC();
}

uint64_t sub_1DF5FEE00()
{
  sub_1DF633A6C();
  AsyncKeyedThrottle.ThrottleResult.hash(into:)(v2, *v0);
  return sub_1DF633AAC();
}

uint64_t AsyncKeyedThrottle.__allocating_init(throttleInterval:)(double a1)
{
  v2 = swift_allocObject();
  AsyncKeyedThrottle.init(throttleInterval:)(a1);
  return v2;
}

double *AsyncKeyedThrottle.init(throttleInterval:)(double a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  v4 = *(*&v3 + 80);
  v5 = sub_1DF63252C();
  swift_getTupleTypeMetadata2();
  v6 = sub_1DF632D6C();
  v7 = sub_1DF5F4198(v6, v4, v5, *(*&v3 + 88));

  *(v1 + 14) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE43130, &qword_1DF63B258);
  *(v1 + 16) = sub_1DF6327DC();
  v8 = sub_1DF6327DC();
  v1[18] = 0.0;
  v1[19] = 0.0;
  *(v1 + 17) = v8;
  v1[15] = a1;
  return v1;
}

uint64_t sub_1DF5FEF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF5FEFB8, a6, 0);
}

uint64_t sub_1DF5FEFB8()
{
  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF6326AC();
  __swift_project_value_buffer(v1, qword_1ED8E69A0);
  v2 = sub_1DF63268C();
  v3 = sub_1DF63315C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DF59A000, v2, v3, "AsyncKeyedThrottle: running block.", v4, 2u);
    MEMORY[0x1E12D9D80](v4, -1, -1);
  }

  v5 = v0[2];

  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1DF5FF160;
  v8 = v0[3];

  return v10();
}

uint64_t sub_1DF5FF160(char a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF5FF278, v3, 0);
}

uint64_t sub_1DF5FF278()
{
  if (*(v0 + 56) == 1)
  {
    v1 = *(v0 + 32);
    sub_1DF5FFDB8(*(v0 + 40));
  }

  v2 = *(v0 + 32);
  sub_1DF6003E4(*(v0 + 40));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF5FF2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a4;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_1DF5FF3A0;

  return sub_1DF5FF58C(a1, a2, a3);
}

uint64_t sub_1DF5FF3A0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 32);
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF5FF4F0, v9, 0);
  }
}

uint64_t sub_1DF5FF4F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56) != 1 || v1 == 0;
  if (v2 || (v3 = *(v0 + 48), v4 = *(v0 + 24), v1(), !v3))
  {
    v5 = *(v0 + 8);
  }

  else
  {
    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_1DF5FF58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v6 = sub_1DF63252C();
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v8 = *(v7 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5FF6BC, v3, 0);
}

uint64_t sub_1DF5FF6BC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);
  swift_beginAccess();
  v7 = *(v5 + 136);
  v9 = *(v3 + 80);
  v8 = *(v3 + 88);

  sub_1DF63289C();

  v10 = *(v0 + 192);
  swift_beginAccess();
  v11 = *(v5 + 112);

  sub_1DF63289C();

  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v12 = *(v0 + 120);
    sub_1DF59CB50(*(v0 + 136), &qword_1ECE42D00, &qword_1DF63B250);
    if (v10)
    {
      v13 = *(v12 + 120);
LABEL_9:
      v30 = *(v0 + 120);
      v31 = *(v0 + 96);
      swift_beginAccess();
      v32 = *(v30 + 128);

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE43130, &qword_1DF63B258);
      sub_1DF63289C();

      if (*(v0 + 88))
      {

        if (qword_1ED8E5958 != -1)
        {
          swift_once();
        }

        v33 = sub_1DF6326AC();
        __swift_project_value_buffer(v33, qword_1ED8E69A0);
        v34 = sub_1DF63268C();
        v35 = sub_1DF63315C();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_1DF59A000, v34, v35, "AsyncKeyedThrottle: Not dispatching, event is throttled", v36, 2u);
          MEMORY[0x1E12D9D80](v36, -1, -1);
        }

        v37 = 1;
      }

      else
      {
        v38 = *(v0 + 120);
        sub_1DF6005E4(*(v0 + 96), *(v0 + 104), *(v0 + 112), v13);
        v37 = 2;
      }

      v40 = *(v0 + 160);
      v39 = *(v0 + 168);
      v41 = *(v0 + 136);

      v42 = *(v0 + 8);

      return v42(v37);
    }
  }

  else
  {
    v15 = *(v0 + 160);
    v14 = *(v0 + 168);
    v16 = *(v0 + 144);
    v17 = *(v0 + 152);
    v18 = *(v0 + 120);
    (*(v17 + 32))(v14, *(v0 + 136), v16);
    sub_1DF5FEAA0(v15);
    sub_1DF63246C();
    v20 = v19;
    v21 = *(v17 + 8);
    v21(v15, v16);
    v22 = *(v18 + 120);
    sub_1DF63247C();
    sub_1DF6324BC();
    v13 = v23;
    v21(v15, v16);
    v21(v14, v16);
    if (v22 >= v20 || (v10 & 1) != 0)
    {
      goto LABEL_9;
    }
  }

  v24 = *(v0 + 120);
  v25 = *(v0 + 104);
  sub_1DF6003D4(*(v0 + 96));
  v43 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 176) = v27;
  *v27 = v0;
  v27[1] = sub_1DF5FFB34;
  v28 = *(v0 + 112);

  return v43();
}

uint64_t sub_1DF5FFB34(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(v4 + 184) = v1;

  v7 = *(v4 + 120);
  if (v1)
  {
    v8 = sub_1DF5FFD14;
  }

  else
  {
    *(v4 + 193) = a1 & 1;
    v8 = sub_1DF5FFC74;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DF5FFC74()
{
  if (*(v0 + 193) == 1)
  {
    v1 = *(v0 + 120);
    sub_1DF5FFDB8(*(v0 + 96));
  }

  v2 = *(v0 + 120);
  sub_1DF6003E4(*(v0 + 96));
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 136);

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_1DF5FFD14()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v5 = v0[15];
  sub_1DF6003E4(v0[12]);
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[23];

  return v6();
}

void sub_1DF5FFDB8(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19 - v7;
  v9 = *(v3 + 80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  (*(v12 + 16))(&v19 - v11, a1, v9);
  sub_1DF5FEAA0(v8);
  v13 = sub_1DF63252C();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  swift_beginAccess();
  v14 = *(v3 + 88);
  sub_1DF63288C();
  sub_1DF6328AC();
  swift_endAccess();
  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v15 = sub_1DF6326AC();
  __swift_project_value_buffer(v15, qword_1ED8E69A0);
  v16 = sub_1DF63268C();
  v17 = sub_1DF63315C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1DF59A000, v16, v17, "AsyncKeyedThrottle: executed date set.", v18, 2u);
    MEMORY[0x1E12D9D80](v18, -1, -1);
  }
}

uint64_t sub_1DF600038(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v26 - v7;
  v8 = *(v3 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v33 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v26 - v12;
  v13 = sub_1DF63252C();
  swift_getTupleTypeMetadata2();
  v14 = sub_1DF632D6C();
  v31 = v1;
  v28 = *(v3 + 88);
  v29 = v13;
  v15 = sub_1DF5F4198(v14, v8, v13, v28);

  v35 = v15;
  if (!sub_1DF632D9C())
  {
LABEL_12:
    v24 = v31;
    swift_beginAccess();
    v25 = v24[14];
    v24[14] = v15;
  }

  v16 = 0;
  v32 = (v9 + 16);
  v26 = v10;
  v27 = (v9 + 8);
  while (1)
  {
    v17 = sub_1DF632D8C();
    sub_1DF632D5C();
    if (v17)
    {
      v18 = *(v9 + 16);
      v18(v34, (a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16), v8);
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1DF6334BC();
    if (v26 != 8)
    {
      break;
    }

    v36[0] = result;
    v18 = *v32;
    (*v32)(v34, v36, v8);
    swift_unknownObjectRelease();
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:
      v15 = v35;
      goto LABEL_12;
    }

LABEL_5:
    v20 = v34;
    v18(v33, v34, v8);
    v21 = v31;
    swift_beginAccess();
    v22 = v21[14];

    sub_1DF63289C();

    (*v27)(v20, v8);
    sub_1DF63288C();
    sub_1DF6328AC();
    ++v16;
    if (v19 == sub_1DF632D9C())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1DF6003F4(uint64_t a1, char a2, const char *a3)
{
  v6 = *v3;
  v7 = *(*(*(*v3 + 80) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v15[-v8]);
  v15[31] = a2;
  swift_beginAccess();
  v10 = *(v6 + 88);
  sub_1DF63288C();
  sub_1DF6328AC();
  swift_endAccess();
  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF6326AC();
  __swift_project_value_buffer(v11, qword_1ED8E69A0);
  v12 = sub_1DF63268C();
  v13 = sub_1DF63315C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DF59A000, v12, v13, a3, v14, 2u);
    MEMORY[0x1E12D9D80](v14, -1, -1);
  }
}

uint64_t sub_1DF6005E4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v32 = a3;
  v30 = a2;
  v7 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v29 - v11;
  v13 = *(v7 + 80);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v31 = &v29 - v18;
  v19 = *(v14 + 16);
  v19();
  v20 = sub_1DF632E9C();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  (v19)(v17, a1, v13);
  v21 = *(v7 + 88);
  type metadata accessor for AsyncKeyedThrottle();
  WitnessTable = swift_getWitnessTable();
  v23 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = WitnessTable;
  *(v25 + 32) = v13;
  *(v25 + 40) = v21;
  *(v25 + 48) = a4;
  *(v25 + 56) = v4;
  (*(v14 + 32))(v25 + v23, v17, v13);
  v26 = (v25 + v24);
  v27 = v32;
  *v26 = v30;
  v26[1] = v27;
  swift_retain_n();

  v33 = sub_1DF623C34(0, 0, v12, &unk_1DF63B3E0, v25);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECE43130, &qword_1DF63B258);
  sub_1DF63288C();
  sub_1DF6328AC();
  return swift_endAccess();
}

uint64_t sub_1DF6008F0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a1;
  *(v8 + 80) = *a5;
  v10 = sub_1DF6335CC();
  *(v8 + 88) = v10;
  v11 = *(v10 - 8);
  *(v8 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF6009E4, a5, 0);
}

uint64_t sub_1DF6009E4()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = sub_1DF633C1C();
  v5 = v4;
  sub_1DF633A1C();
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1DF600AC0;
  v7 = v0[13];

  return sub_1DF60141C(v3, v5, 0, 0, 1);
}

uint64_t sub_1DF600AC0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[11];
  v8 = v2[6];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_1DF600EB8;
  }

  else
  {
    v9 = sub_1DF600C3C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1DF600C3C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  swift_beginAccess();
  v4 = *(v2 + 136);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);

  sub_1DF63289C();

  v7 = *(v0 + 152);
  if (v7 == 2 || (v7 & 1) == 0)
  {
    v11 = *(v0 + 56);
    sub_1DF6003D4(v11);
    sub_1DF601248(v11);
    if (qword_1ED8E5958 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF6326AC();
    *(v0 + 128) = __swift_project_value_buffer(v12, qword_1ED8E69A0);
    v13 = sub_1DF63268C();
    v14 = sub_1DF63315C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DF59A000, v13, v14, "AsyncKeyedThrottle: executing debounced task.", v15, 2u);
      MEMORY[0x1E12D9D80](v15, -1, -1);
    }

    v16 = *(v0 + 64);

    v20 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 136) = v18;
    *v18 = v0;
    v18[1] = sub_1DF600F1C;
    v19 = *(v0 + 72);

    return v20();
  }

  else
  {
    sub_1DF6005E4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(*(v0 + 48) + 120));
    v8 = *(v0 + 104);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1DF600EB8()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_1DF600F1C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(v4 + 144) = v1;

  v7 = *(v4 + 48);
  if (v1)
  {
    v8 = sub_1DF6010DC;
  }

  else
  {
    *(v4 + 153) = a1 & 1;
    v8 = sub_1DF60105C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DF60105C()
{
  if (*(v0 + 153) == 1)
  {
    v1 = *(v0 + 48);
    sub_1DF5FFDB8(*(v0 + 56));
  }

  v2 = *(v0 + 48);
  sub_1DF6003E4(*(v0 + 56));
  v3 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF6010DC()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v1;
  v4 = sub_1DF63268C();
  v5 = sub_1DF63316C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DF59A000, v4, v5, "Failed during debounced task execution: %{public}@.", v7, 0xCu);
    sub_1DF59CB50(v8, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v8, -1, -1);
    MEMORY[0x1E12D9D80](v7, -1, -1);
  }

  v11 = v0[18];
  v12 = v0[6];
  v13 = v0[7];

  sub_1DF6003E4(v13);
  v14 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1DF601248(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*(*(*v1 + 80) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8[-v4]);
  v9 = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECE43130, &qword_1DF63B258);
  v6 = *(v2 + 88);
  sub_1DF63288C();
  sub_1DF6328AC();
  return swift_endAccess();
}

void *AsyncKeyedThrottle.deinit()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[19];
  sub_1DF5A83BC(v0[18]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncKeyedThrottle.__deallocating_deinit()
{
  AsyncKeyedThrottle.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF60141C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1DF6335AC();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DF60151C, 0, 0);
}

uint64_t sub_1DF60151C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1DF6335CC();
  v7 = sub_1DF601FB4(&qword_1ECE422D0, MEMORY[0x1E69E8820]);
  sub_1DF6339FC();
  sub_1DF601FB4(&qword_1ECE422D8, MEMORY[0x1E69E87E8]);
  sub_1DF6335DC();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1DF6016AC;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1DF6016AC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF601868, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1DF601868()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1DF6018D4()
{
  swift_beginAccess();
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t sub_1DF601920(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 72) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DF59D2C8;

  return sub_1DF5FEF94(a1, v6, v4, v7, v8, v9, v1 + v5);
}

uint64_t dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 264);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1DF59D2C4;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AsyncKeyedThrottle.debounce(key:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 272);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DF5A902C;

  return v12(a1, a2, a3);
}

uint64_t sub_1DF601E70(uint64_t a1)
{
  v4 = *(v1 + 3);
  v5 = (*(*(*(v1 + 4) - 8) + 80) + 64) & ~*(*(*(v1 + 4) - 8) + 80);
  v6 = *(v1 + 2);
  v7 = v1[6];
  v8 = *(v1 + 7);
  v9 = (v1 + ((*(*(*(v1 + 4) - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DF59D2C8;

  return sub_1DF6008F0(v7, a1, v6, v4, v8, v1 + v5, v10, v11);
}

uint64_t sub_1DF601FB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t retry<A>(times:retryDelay:shouldRetry:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v17;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 200) = a5;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1DF63363C();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v12 = sub_1DF63365C();
  *(v8 + 112) = v12;
  v13 = *(v12 - 8);
  *(v8 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF60213C, 0, 0);
}

uint64_t sub_1DF60213C()
{
  v1 = v0[3];
  if (v1 <= 1)
  {
    v1 = 1;
  }

  v0[17] = v1;
  v0[18] = 0;
  sub_1DF632F7C();
  v2 = v0[8];

  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1DF6022B8;
  v5 = v0[9];
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_1DF6022B8()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF60240C, 0, 0);
  }

  else
  {
    v4 = v3[16];
    v5 = v3[12];
    v6 = v3[13];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1DF60240C()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = v1;
  if ((v3(v1) & 1) == 0)
  {
    v8 = *(v0 + 160);
    swift_willThrow();

    goto LABEL_6;
  }

  if (*(v0 + 200))
  {

    v5 = *(v0 + 144) + 1;
    v6 = *(v0 + 160);
    if (v5 == *(v0 + 136))
    {
      v7 = *(v0 + 160);
      swift_willThrow();
LABEL_6:
      v9 = *(v0 + 160);
      v10 = *(v0 + 128);
      v12 = *(v0 + 96);
      v11 = *(v0 + 104);

      v13 = *(v0 + 8);

      return v13();
    }

    *(v0 + 144) = v5;
    sub_1DF632F7C();
    v27 = *(v0 + 64);

    v32 = (v27 + *v27);
    v28 = v27[1];
    v29 = swift_task_alloc();
    *(v0 + 152) = v29;
    *v29 = v0;
    v29[1] = sub_1DF6022B8;
    v30 = *(v0 + 72);
    v31 = *(v0 + 16);

    return v32(v31);
  }

  else
  {
    v15 = *(v0 + 128);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);
    v21 = *(v0 + 32);
    v20 = *(v0 + 40);
    sub_1DF63364C();
    sub_1DF6335FC();
    sub_1DF63361C();
    v22 = *(v19 + 8);
    *(v0 + 168) = v22;
    *(v0 + 176) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v17, v18);
    v23 = *(MEMORY[0x1E69E8830] + 4);
    v24 = swift_task_alloc();
    *(v0 + 184) = v24;
    *v24 = v0;
    v24[1] = sub_1DF6026E4;
    v25 = *(v0 + 128);
    v26 = *(v0 + 104);

    return MEMORY[0x1EEE6DC68](v26, 0, 0, 1);
  }
}

uint64_t sub_1DF6026E4()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_1DF6029C0;
  }

  else
  {

    v4 = sub_1DF602800;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF602800()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  (*(v0 + 168))(*(v0 + 104), *(v0 + 80));
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 144) + 1;
  if (v5 == *(v0 + 136))
  {
    v6 = *(v0 + 160);
    swift_willThrow();
    v7 = *(v0 + 160);
LABEL_5:
    v10 = *(v0 + 128);
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);

    v13 = *(v0 + 8);

    return v13();
  }

  v8 = *(v0 + 192);
  v9 = *(v0 + 160);
  *(v0 + 144) = v5;
  sub_1DF632F7C();
  if (v8)
  {

    goto LABEL_5;
  }

  v15 = *(v0 + 64);

  v20 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_1DF6022B8;
  v18 = *(v0 + 72);
  v19 = *(v0 + 16);

  return v20(v19);
}

uint64_t sub_1DF6029C0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[10];

  v2(v7, v8);
  (*(v5 + 8))(v4, v6);
  v9 = v0[24];
  v10 = v0[16];
  v12 = v0[12];
  v11 = v0[13];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DF602AE0(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    v7 = a2;
    swift_once();
    a2 = v7;
  }

  v2 = *a2;
  v3 = sub_1DF63248C();
  v4 = [v2 stringFromDate_];

  v5 = sub_1DF63298C();
  return v5;
}

id sub_1DF602B70()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v0 setFormatOptions_];
  qword_1ECE42360 = v0;
  return result;
}

void sub_1DF602BC0()
{
  v0 = sub_1DF63262C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v5 setFormatOptions_];
  sub_1DF63261C();
  v6 = sub_1DF63260C();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_1ED8E4A28 = v5;
}

uint64_t Date.epoch.getter()
{
  result = sub_1DF6324DC();
  v2 = v1 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DF602D64()
{
  v3 = *MEMORY[0x1E69E9840];
  info = 0;
  result = mach_timebase_info(&info);
  if (result)
  {
    result = sub_1DF6336EC();
    __break(1u);
  }

  else
  {
    qword_1ECE42380 = info;
    v1 = *MEMORY[0x1E69E9840];
  }

  return result;
}

Swift::UInt64 __swiftcall convertToSeconds(_:)(Swift::UInt64 result)
{
  if (qword_1ECE42378 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_1ECE42380))
  {
    if (HIDWORD(qword_1ECE42380))
    {
      return result * qword_1ECE42380 / HIDWORD(qword_1ECE42380) / 0x3B9ACA00;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF602EC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE431D8, &qword_1DF63B408);
  inited = swift_initStackObject();
  v1 = *MEMORY[0x1E696A370];
  *(inited + 32) = *MEMORY[0x1E696A370];
  *(inited + 16) = xmmword_1DF638990;
  *(inited + 64) = MEMORY[0x1E69E6530];
  *(inited + 40) = 508;
  v2 = v1;
  v3 = sub_1DF5C9260(inited);
  swift_setDeallocating();
  result = sub_1DF59CB50(inited + 32, &qword_1ECE42A10, &unk_1DF638C40);
  qword_1ECE431B8 = v3;
  return result;
}

uint64_t static NSFileManager.daemonAgentDirectoryAttributes.getter()
{
  if (qword_1ECE42570 != -1)
  {
    swift_once();
  }
}

uint64_t static NSFileManager.createDirectoryIfNecessary(url:attributes:)(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() defaultManager];
  v26 = 0;
  sub_1DF6322EC();
  v4 = sub_1DF63295C();

  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v26];

  if (v5)
  {
    if ((v26 & 1) == 0)
    {
      sub_1DF63316C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE431C0, &qword_1DF63B400);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1DF638990;
      v7 = sub_1DF63229C();
      v9 = v8;
      *(v6 + 56) = MEMORY[0x1E69E6158];
      *(v6 + 64) = sub_1DF603330();
      *(v6 + 32) = v7;
      *(v6 + 40) = v9;
      sub_1DF60359C(0, &qword_1ECE431D0, 0x1E69E9BF8);
      v10 = sub_1DF63326C();
      sub_1DF63267C();
    }
  }

  else
  {
    v11 = MEMORY[0x1E12D9570]();
    v12 = sub_1DF6322CC();
    if (a2)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_1DF604D14(&qword_1ECE427B8, type metadata accessor for FileAttributeKey);
      a2 = sub_1DF63282C();
    }

    v25 = 0;
    v13 = [v3 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:a2 error:&v25];

    if (v13)
    {
      v14 = v25;
    }

    else
    {
      v15 = v25;
      v16 = sub_1DF63228C();

      swift_willThrow();
      sub_1DF63316C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE431C0, &qword_1DF63B400);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DF638990;
      v25 = v16;
      v18 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
      v19 = sub_1DF632A3C();
      v21 = v20;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1DF603330();
      *(v17 + 32) = v19;
      *(v17 + 40) = v21;
      sub_1DF60359C(0, &qword_1ECE431D0, 0x1E69E9BF8);
      v22 = sub_1DF63326C();
      sub_1DF63267C();
    }

    objc_autoreleasePoolPop(v11);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5 ^ 1;
}

unint64_t sub_1DF603330()
{
  result = qword_1ECE431C8;
  if (!qword_1ECE431C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE431C8);
  }

  return result;
}

void static NSFileManager.removeDirectory(url:)()
{
  v16[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1DF6322CC();
  v16[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v16];

  if (!v2)
  {
    v4 = v16[0];
    v5 = sub_1DF63228C();

    swift_willThrow();
    v16[0] = v5;
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
    sub_1DF60359C(0, &unk_1ECE422E0, 0x1E696ABC0);
    if (!swift_dynamicCast())
    {
LABEL_11:

      goto LABEL_12;
    }

    v7 = [v15 domain];
    v8 = sub_1DF63298C();
    v10 = v9;

    v11 = *MEMORY[0x1E696A250];
    if (sub_1DF63298C() == v8 && v12 == v10)
    {
    }

    else
    {
      v13 = sub_1DF63394C();

      if ((v13 & 1) == 0)
      {
LABEL_10:
        swift_willThrow();
        goto LABEL_11;
      }
    }

    if ([v15 code] == 4)
    {

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v3 = v16[0];
LABEL_12:
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DF60359C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void static NSFileManager.emptyDirectory(url:)(uint64_t a1)
{
  v76[4] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v59 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v59 - v10;
  v12 = sub_1DF6322FC();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v69 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v59 - v20;
  v22 = objc_opt_self();
  v70 = [v22 defaultManager];

  v66 = v13[2];
  v67 = v13 + 2;
  v23 = v66(v21, a1, v12);
  v24 = MEMORY[0x1E12D9570](v23);
  v25 = [v22 defaultManager];
  v26 = sub_1DF63313C();

  v27 = v24;
  v28 = v69;
  objc_autoreleasePoolPop(v27);
  v60 = v13;
  v71 = v13[1];
  v72 = v13 + 1;
  v71(v21, v12);
  if (v26)
  {
    v30 = (v60 + 7);
    v73 = (v60 + 4);
    v68 = (v60 + 6);
    *&v29 = 141558531;
    v61 = v29;
    v62 = v6;
    v65 = (v60 + 7);
    while (1)
    {
      v74 = v26;
      v32 = v26;
      v33 = MEMORY[0x1E12D9570]();
      if ([v32 nextObject])
      {
        sub_1DF63339C();
        swift_unknownObjectRelease();
        sub_1DF5A27C4(v76, v75);
        if (swift_dynamicCast())
        {
          v34 = *v30;
          (*v30)(v6, 0, 1, v12);
          (*v73)(v9, v6, v12);
          v34(v9, 0, 1, v12);
          goto LABEL_10;
        }

        v35 = *v30;
        (*v30)(v6, 1, 1, v12);
        sub_1DF59CB50(v6, &qword_1ECE42D50, &qword_1DF63AAE0);
        v35(v9, 1, 1, v12);
      }

      else
      {

        (*v30)(v9, 1, 1, v12);
      }

      v74 = 0;
      v28 = v69;
LABEL_10:
      objc_autoreleasePoolPop(v33);

      sub_1DF5A3C48(v9, v11);
      if ((*v68)(v11, 1, v12) == 1)
      {

        goto LABEL_20;
      }

      (*v73)(v28, v11, v12);
      v36 = sub_1DF6322CC();
      v76[0] = 0;
      v37 = [v70 removeItemAtURL:v36 error:v76];

      if (v37)
      {
        v31 = v76[0];
        v71(v28, v12);
        v26 = v74;
        if (!v74)
        {
          break;
        }
      }

      else
      {
        v38 = v76[0];
        v39 = sub_1DF63228C();

        swift_willThrow();
        if (qword_1ED8E5958 != -1)
        {
          swift_once();
        }

        v40 = sub_1DF6326AC();
        __swift_project_value_buffer(v40, qword_1ED8E69A0);
        v66(v17, v28, v12);
        v41 = v39;
        v42 = sub_1DF63268C();
        v43 = sub_1DF63316C();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v76[0] = v64;
          *v44 = v61;
          *(v44 + 4) = 1752392040;
          *(v44 + 12) = 2081;
          sub_1DF604D14(&qword_1ECE43040, MEMORY[0x1E6968FB0]);
          v63 = v42;
          v46 = sub_1DF6338DC();
          v47 = v9;
          v48 = v11;
          v50 = v49;
          v71(v17, v12);
          v51 = sub_1DF59EEC8(v46, v50, v76);
          v11 = v48;
          v9 = v47;
          v28 = v69;

          *(v44 + 14) = v51;
          *(v44 + 22) = 2114;
          v52 = sub_1DF63227C();
          *(v44 + 24) = v52;
          v53 = v45;
          *v45 = v52;
          v54 = v63;
          _os_log_impl(&dword_1DF59A000, v63, v43, "Error deleting %{private,mask.hash}s: %{public}@)", v44, 0x20u);
          sub_1DF59CB50(v53, &qword_1ECE42AF0, &qword_1DF63ABC0);
          MEMORY[0x1E12D9D80](v53, -1, -1);
          v55 = v64;
          __swift_destroy_boxed_opaque_existential_1(v64);
          MEMORY[0x1E12D9D80](v55, -1, -1);
          v56 = v44;
          v6 = v62;
          MEMORY[0x1E12D9D80](v56, -1, -1);

          v71(v28, v12);
        }

        else
        {

          v57 = v71;
          v71(v17, v12);
          v57(v28, v12);
        }

        v30 = v65;
        v26 = v74;
        if (!v74)
        {
          break;
        }
      }
    }
  }

  (v60[7])(v11, 1, 1, v12);
LABEL_20:
  v58 = *MEMORY[0x1E69E9840];
}

uint64_t NSFileManager.flatSequence(at:includingPropertiesForKeys:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DF6322FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(v5 + 16))(v8, a1, v4);
  v10 = MEMORY[0x1E12D9570](v9);
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1DF63313C();

  objc_autoreleasePoolPop(v10);
  result = (*(v5 + 8))(v8, v4);
  *a2 = v12;
  return result;
}

uint64_t NSFileManager.entryCount(directory:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v37 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = sub_1DF6322FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.isDirectory.getter())
  {
    v36 = v7;
    v34 = v1;
    v17 = (*(v13 + 16))(v16, a1, v12);
    v18 = MEMORY[0x1E12D9570](v17);
    v19 = [objc_opt_self() defaultManager];
    v20 = sub_1DF63313C();

    objc_autoreleasePoolPop(v18);
    v22 = *(v13 + 8);
    v21 = v13 + 8;
    v22(v16, v12);
    v23 = (v21 + 48);
    v35 = (v21 + 24);
    v40 = (v21 + 40);
    v33 = v20;
    a1 = 0;
    v24 = v37;
    while (1)
    {
      if (!v20)
      {

        (*v23)(v11, 1, 1, v12);
        return a1;
      }

      v25 = v20;
      v26 = MEMORY[0x1E12D9570]();
      if ([v25 nextObject])
      {
        sub_1DF63339C();
        swift_unknownObjectRelease();
        sub_1DF5A27C4(v39, v38);
        v27 = v36;
        if (swift_dynamicCast())
        {
          v28 = *v23;
          (*v23)(v27, 0, 1, v12);
          v24 = v37;
          (*v35)();
          v28(v24, 0, 1, v12);
          goto LABEL_10;
        }

        v29 = *v23;
        (*v23)(v27, 1, 1, v12);
        sub_1DF59CB50(v27, &qword_1ECE42D50, &qword_1DF63AAE0);
        v24 = v37;
        v29(v37, 1, 1, v12);
      }

      else
      {

        (*v23)(v24, 1, 1, v12);
      }

      v20 = 0;
LABEL_10:
      objc_autoreleasePoolPop(v26);

      sub_1DF5A3C48(v24, v11);
      if ((*v40)(v11, 1, v12) == 1)
      {

        return a1;
      }

      sub_1DF59CB50(v11, &qword_1ECE42D50, &qword_1DF63AAE0);
      if (__OFADD__(a1++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:258 userInfo:0];
  swift_willThrow();
  return a1;
}

void NSFileManager.removeEmptyDirectoriesRecursively(baseURL:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A88, &qword_1DF638E50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v81 = &v64[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v64[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v64[-v13];
  v15 = sub_1DF6322FC();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v72 = &v64[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v84 = &v64[-v21];
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v64[-v22];
  if ((URL.isDirectory.getter() & 1) == 0)
  {
    v87 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:258 userInfo:0];
    swift_willThrow();
    return;
  }

  v24 = v16[2];
  v70 = v16 + 2;
  v69 = v24;
  v25 = (v24)(v23, a1, v15);
  v26 = MEMORY[0x1E12D9570](v25);
  v27 = [objc_opt_self() defaultManager];
  v28 = sub_1DF63313C();

  objc_autoreleasePoolPop(v26);
  v79 = v16[1];
  v80 = v16 + 1;
  v79(v23, v15);
  v71 = v16;
  if (!v28)
  {
LABEL_27:
    (v71[7])(v14, 1, 1, v15);
    return;
  }

  v82 = (v16 + 4);
  v77 = (v16 + 6);
  v76 = *MEMORY[0x1E695DB78];
  v78 = (v16 + 7);
  v74 = (v16 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  *(&v29 + 1) = 2;
  v75 = xmmword_1DF638990;
  *&v29 = 136315138;
  v68 = v29;
  v73 = v12;
  while (1)
  {
    v30 = v28;
    v31 = MEMORY[0x1E12D9570]();
    if ([v30 nextObject])
    {
      sub_1DF63339C();
      swift_unknownObjectRelease();
      sub_1DF5A27C4(&v86, v85);
      if (swift_dynamicCast())
      {
        v32 = v28;
        v33 = *v78;
        (*v78)(v9, 0, 1, v15);
        (*v82)(v12, v9, v15);
        v33(v12, 0, 1, v15);
        goto LABEL_10;
      }

      v34 = *v78;
      (*v78)(v9, 1, 1, v15);
      sub_1DF59CB50(v9, &qword_1ECE42D50, &qword_1DF63AAE0);
      v34(v12, 1, 1, v15);
    }

    else
    {

      (*v78)(v12, 1, 1, v15);
    }

    v32 = 0;
LABEL_10:
    objc_autoreleasePoolPop(v31);

    sub_1DF5A3C48(v12, v14);
    if ((*v77)(v14, 1, v15) == 1)
    {
      break;
    }

    v83 = v32;
    (*v82)(v84, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A90, &qword_1DF638E58);
    inited = swift_initStackObject();
    *(inited + 16) = v75;
    v36 = v76;
    *(inited + 32) = v76;
    v37 = v36;
    sub_1DF5EC5D4(inited);
    swift_setDeallocating();
    sub_1DF5CE614(inited + 32);
    v38 = v81;
    v39 = v87;
    sub_1DF6322AC();
    if (v39)
    {

      v40 = sub_1DF63226C();
      (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
      sub_1DF59CB50(v38, &qword_1ECE42A88, &qword_1DF638E50);
      v87 = 0;
    }

    else
    {
      v87 = 0;
      v41 = v38;

      v42 = sub_1DF63226C();
      v43 = *(v42 - 8);
      (*(v43 + 56))(v41, 0, 1, v42);
      v44 = sub_1DF63223C();
      (*(v43 + 8))(v41, v42);
      if (v44 != 2 && (v44 & 1) != 0)
      {
        v45 = v84;
        sub_1DF6322EC();
        v46 = sub_1DF632A7C();

        v47 = rmdir((v46 + 32));

        if (v47)
        {
          v79(v45, v15);
          v12 = v73;
        }

        else
        {
          v12 = v73;
          if (qword_1ED8E5958 != -1)
          {
            swift_once();
          }

          v48 = sub_1DF6326AC();
          __swift_project_value_buffer(v48, qword_1ED8E69A0);
          v49 = v72;
          v50 = v84;
          v69(v72, v84, v15);
          v51 = sub_1DF63268C();
          v52 = sub_1DF63318C();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v66 = v53;
            v67 = swift_slowAlloc();
            v86 = v67;
            *v53 = v68;
            sub_1DF604D14(&qword_1ECE43040, MEMORY[0x1E6968FB0]);
            v65 = v52;
            v54 = sub_1DF6338DC();
            v55 = v49;
            v57 = v56;
            v58 = v79;
            v79(v55, v15);
            v59 = sub_1DF59EEC8(v54, v57, &v86);

            v60 = v66;
            *(v66 + 1) = v59;
            v61 = v60;
            _os_log_impl(&dword_1DF59A000, v51, v65, "Pruning empty directory: %s", v60, 0xCu);
            v62 = v67;
            __swift_destroy_boxed_opaque_existential_1(v67);
            MEMORY[0x1E12D9D80](v62, -1, -1);
            MEMORY[0x1E12D9D80](v61, -1, -1);

            v58(v84, v15);
          }

          else
          {

            v63 = v79;
            v79(v49, v15);
            v63(v50, v15);
          }
        }

        goto LABEL_19;
      }

      v12 = v73;
    }

    v79(v84, v15);
LABEL_19:
    v28 = v83;
    if (!v83)
    {
      goto LABEL_27;
    }
  }
}

uint64_t sub_1DF604D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF604D5C()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  (*(v0 + 120))(*(v0 + 88), *(v0 + 64));
  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);
  v7 = *(v0 + 144);

  return v6();
}

uint64_t sub_1DF604E14()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t withTimeout<A, B>(_:clock:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF604F68, 0, 0);
}

uint64_t sub_1DF604F68()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[3];
  v7 = v0[4];
  sub_1DF6339FC();
  swift_getAssociatedConformanceWitness();
  sub_1DF6335DC();
  v9 = *(v4 + 8);
  v0[14] = v9;
  v0[15] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v3);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1DF6050A0;
  v11 = v0[13];
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[7];
  v16 = v0[4];
  v17 = v0[5];
  v18 = v0[2];

  return withDeadline<A, B>(_:clock:block:)(v18, v11, v16, v17, v14, v15, v12, v13);
}

uint64_t sub_1DF6050A0()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1DF605234;
  }

  else
  {
    v3 = sub_1DF6051B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF6051B4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  (*(v0 + 112))(*(v0 + 104), *(v0 + 80));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF605234()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  (*(v0 + 112))(*(v0 + 104), *(v0 + 80));

  v3 = *(v0 + 8);
  v4 = *(v0 + 136);

  return v3();
}

uint64_t sub_1DF6052B4()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DF605360()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  swift_setDeallocating();
  v5 = *(v3 + 16);

  v6 = v0[21];
  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF605400()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 40);
  v9 = swift_task_alloc();
  *(v9 + 16) = *(v0 + 48);
  *(v9 + 32) = v7;
  sub_1DF5A61A8(sub_1DF5B77D8, v9, v8);

  (*(v5 + 16))(v3, v2, v4);
  v10 = *(v6 - 8);
  if ((*(v10 + 48))(v3, 1, v6) == 1)
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);
    v13 = *(*(v0 + 88) + 8);
    v13(*(v0 + 104), v12);

    v13(v11, v12);
  }

  else
  {
    *(v0 + 16) = v1;
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    v18 = *(v0 + 72);
    v19 = v1;
    sub_1DF632E2C();

    (*(v17 + 8))(v14, v16);
    (*(v10 + 8))(v15, v18);
  }

  v21 = *(v0 + 136);
  v20 = *(v0 + 144);
  v23 = *(v0 + 112);
  v22 = *(v0 + 120);
  v25 = *(v0 + 96);
  v24 = *(v0 + 104);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1DF605620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v9 = sub_1DF632E4C();
  v10 = sub_1DF63327C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  os_unfair_lock_lock((a1 + 24));
  v18 = *(a1 + 16);

  os_unfair_lock_unlock((a1 + 24));
  if (v18)
  {
    sub_1DF632F5C();
  }

  MEMORY[0x1EEE9AC00](v19);
  *(&v24 - 4) = a3;
  *(&v24 - 3) = a4;
  *(&v24 - 2) = a5;
  sub_1DF5A61A8(sub_1DF5B77F8, (&v24 - 6), v25);
  (*(v11 + 16))(v15, v17, v10);
  v20 = *(v9 - 8);
  if ((*(v20 + 48))(v15, 1, v9) == 1)
  {
    v21 = *(v11 + 8);
    v21(v17, v10);
    return (v21)(v15, v10);
  }

  else
  {
    sub_1DF632E5C();
    sub_1DF5B5178(&qword_1ED8E56F0, MEMORY[0x1E69E8550]);
    v23 = swift_allocError();
    sub_1DF6327FC();
    v26 = v23;
    sub_1DF632E2C();
    (*(v11 + 8))(v17, v10);
    return (*(v20 + 8))(v15, v9);
  }
}

uint64_t sub_1DF60592C()
{
  sub_1DF6059BC();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1DF6059BC()
{
  result = qword_1ED8E5280;
  if (!qword_1ED8E5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E5280);
  }

  return result;
}

uint64_t sub_1DF605A24@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1DF605AC4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1DF605B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1DF605C0C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t HysteresisFilter.__allocating_init(currentValue:threshold:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  HysteresisFilter.init(currentValue:threshold:)(a1, a2);
  return v7;
}

uint64_t *HysteresisFilter.init(currentValue:threshold:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v5 = *v2;
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  swift_defaultActor_initialize();
  *(v2 + *(*v2 + 128)) = 1;
  v14 = *(*v2 + 136);
  sub_1DF63259C();
  v15 = sub_1DF63255C();
  v17 = v16;
  (*(v7 + 16))(v11, v13, v6);
  v27 = 2;
  v18 = type metadata accessor for WorkItemQueue(0);
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = WorkItemQueue.init(name:identifier:warningOptions:)(v15, v17, v11, &v27);
  (*(v7 + 8))(v13, v6);
  *(v3 + v14) = v21;
  v22 = *(v5 + 80);
  v23 = *(v22 - 8);
  (*(v23 + 16))(v3 + *(*v3 + 104), a1, v22);
  (*(v23 + 32))(v3 + *(*v3 + 120), a1, v22);
  *(v3 + *(*v3 + 112)) = v26;
  return v3;
}

uint64_t sub_1DF605FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v41 = a4;
  v42 = a5;
  v39 = a2;
  v40 = a3;
  v8 = *v5;
  v9 = sub_1DF6325AC();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v38 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v16 = v8[10];
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v20 = &v38 - v19;
  v45 = *(v5 + v8[17]);
  (*(v17 + 16))(&v38 - v19, a1, v16);
  v21 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v16;
  *(v23 + 3) = v8[11];
  *(v23 + 4) = v6;
  (*(v17 + 32))(&v23[v21], v20, v16);
  v24 = &v23[v22];
  v25 = v40;
  *v24 = v39;
  *(v24 + 1) = v25;
  v26 = &v23[(v22 + 23) & 0xFFFFFFFFFFFFFFF8];
  v28 = v41;
  v27 = v42;
  *v26 = v41;
  v26[1] = v27;

  sub_1DF5A32C0(v28);
  sub_1DF63259C();
  v30 = v43;
  v29 = v44;
  v31 = v38;
  (*(v43 + 16))(v38, v15, v44);
  v32 = swift_allocObject();
  *(v32 + 16) = &unk_1DF63B4D8;
  *(v32 + 24) = v23;
  v33 = type metadata accessor for WorkItemQueue.WorkItem();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_1DF60D5E8(0, v31, &unk_1DF63B4E8, v32, &unk_1DF63B4E0, 0);

  (*(v30 + 8))(v15, v29);
  sub_1DF5A9620(v36);
}

uint64_t sub_1DF606304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DF5D7754;

  return sub_1DF606504(a2, a3, a4, a5, a6);
}

uint64_t sub_1DF6063D0()
{
  v2 = (*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80);
  v3 = (*(*(*(v0 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 32);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1DF59D2C4;

  return sub_1DF606304(v5, v0 + v2, v7, v8, v9, v10);
}

uint64_t sub_1DF606504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[8] = *v5;
  v8 = *(v7 + 80);
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF606610, v5, 0);
}

uint64_t sub_1DF606610()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[2];
  sub_1DF605B6C(v1);
  v7 = *(v4 + 88);
  v8 = sub_1DF63292C();
  v9 = *(v3 + 8);
  v0[13] = v9;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  v10 = *(*v5 + 128);
  if ((v8 & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *(v5 + v10);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_5:
    v13 = 1;
  }

  v14 = v0[12];
  v15 = v0[9];
  v16 = v0[10];
  v17 = v0[7];
  v18 = v0[2];
  *(v5 + v10) = v13;
  v19 = *(v16 + 16);
  v19(v14, v18, v15);
  sub_1DF605C0C(v14);
  sub_1DF605A24(v14);
  LOBYTE(v17) = sub_1DF63292C();
  v9(v14, v15);
  if (v17)
  {
    v20 = v0[5];
    if (v20)
    {
      v21 = v0[6];
      v22 = v0[5];
      v43 = (v20 + *v20);
      v23 = v20[1];
      v24 = swift_task_alloc();
      v0[17] = v24;
      *v24 = v0;
      v25 = sub_1DF606D7C;
LABEL_12:
      v24[1] = v25;

      return v43();
    }

LABEL_15:
    v32 = v0[11];
    v31 = v0[12];

    v33 = v0[1];

    return v33();
  }

  if (*(v0[7] + *(*v0[7] + 128)) < *(v0[7] + *(*v0[7] + 112)))
  {
    v26 = v0[5];
    if (v26)
    {
      v27 = v0[6];
      v28 = v0[5];
      v43 = (v26 + *v26);
      v29 = v26[1];
      v24 = swift_task_alloc();
      v0[16] = v24;
      *v24 = v0;
      v25 = sub_1DF606C50;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v34 = v0[11];
  v35 = v0[9];
  v37 = v0[2];
  v36 = v0[3];
  sub_1DF605A24(v0[12]);
  v19(v34, v37, v35);
  sub_1DF605AC4(v34);
  sub_1DF605A24(v34);
  v44 = (v36 + *v36);
  v38 = v36[1];
  v39 = swift_task_alloc();
  v0[15] = v39;
  *v39 = v0;
  v39[1] = sub_1DF606A5C;
  v41 = v0[11];
  v40 = v0[12];
  v42 = v0[4];

  return v44(v41, v40);
}

uint64_t sub_1DF606A5C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 56);
  v8 = *v0;

  v3(v4, v5);

  return MEMORY[0x1EEE6DFA0](sub_1DF606BD8, v6, 0);
}

uint64_t sub_1DF606BD8()
{
  v1 = *(v0 + 112);
  (*(v0 + 104))(*(v0 + 96), *(v0 + 72));
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF606C50()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v7 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1DF606D7C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v7 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t HysteresisFilter.deinit()
{
  v1 = *(*v0 + 80);
  v2 = *(*(v1 - 8) + 8);
  v2(v0 + *(*v0 + 104), v1);
  v2(v0 + *(*v0 + 120), v1);
  v3 = *(v0 + *(*v0 + 136));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HysteresisFilter.__deallocating_deinit()
{
  HysteresisFilter.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF606FCC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
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

uint64_t sub_1DF6070F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 168) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 48) = *v5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58) - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = swift_task_alloc();
  v9 = sub_1DF6335AC();
  *(v6 + 80) = v9;
  v10 = *(v9 - 8);
  *(v6 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 169) = *a5;
  v12 = *(a5 + 32);
  *(v6 + 128) = *(a5 + 16);
  *(v6 + 144) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1DF607274, v5, 0);
}

uint64_t sub_1DF607274()
{
  v178 = v0;
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlock);
  v2 = swift_task_alloc();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  os_unfair_lock_lock((v1 + 32));
  sub_1DF5B10D0((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
  v3 = *(v0 + 40);

  if (*(v3 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completionAlreadyCalled))
  {
    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 40);
    v5 = sub_1DF6326AC();
    __swift_project_value_buffer(v5, qword_1ECE4BD58);

    v6 = sub_1DF63268C();
    v7 = sub_1DF63316C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 40);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v177[0] = v10;
      *v9 = 136315138;
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v11 = sub_1DF6338DC();
      v13 = sub_1DF59EEC8(v11, v12, v177);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DF59A000, v6, v7, "completion called more than once for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12D9D80](v10, -1, -1);
      MEMORY[0x1E12D9D80](v9, -1, -1);
    }

    goto LABEL_7;
  }

  v23 = *(v0 + 120);
  v24 = *(v0 + 40);
  *(v3 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completionAlreadyCalled) = 1;
  sub_1DF63357C();
  v25 = *(v24 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completed);
  *(swift_task_alloc() + 16) = v23;
  v26 = MEMORY[0x1E69E6B68];
  v27 = *(*v25 + *MEMORY[0x1E69E6B68] + 16);
  v28 = (v25 + ((*(*v25 + 48) + 3) & 0x1FFFFFFFCLL));
  os_unfair_lock_lock(v28);
  sub_1DF5DA024(v25 + v27);
  v29 = *(v0 + 80);
  v30 = *(v0 + 88);
  v31 = *(v0 + 72);
  v32 = *(v0 + 40);
  os_unfair_lock_unlock(v28);

  v33 = *(v32 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_enqueued);
  v34 = *(*v33 + *v26 + 16);
  v35 = (*(*v33 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v33 + v35));
  sub_1DF59CC98(v33 + v34, v31, &qword_1ECE42A20, &qword_1DF638C58);
  os_unfair_lock_unlock((v33 + v35));
  v36 = *(v30 + 48);
  if (v36(v31, 1, v29) == 1)
  {
    v37 = *(v0 + 72);
LABEL_17:
    sub_1DF59CB50(v37, &qword_1ECE42A20, &qword_1DF638C58);
    goto LABEL_18;
  }

  v38 = *(v0 + 64);
  v39 = *(v0 + 40);
  v163 = (*(v0 + 88) + 32);
  v167 = *v163;
  v171 = *(v0 + 80);
  (*v163)(*(v0 + 112), *(v0 + 72));
  v40 = *(v39 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_started);
  v41 = *(*v40 + *MEMORY[0x1E69E6B68] + 16);
  v42 = (*(*v40 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v40 + v42));
  sub_1DF59CC98(v40 + v41, v38, &qword_1ECE42A20, &qword_1DF638C58);
  os_unfair_lock_unlock((v40 + v42));
  v43 = v36(v38, 1, v171);
  v44 = *(v0 + 80);
  v45 = *(v0 + 64);
  if (v43 == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 112), *(v0 + 80));
LABEL_16:
    v37 = v45;
    goto LABEL_17;
  }

  v46 = *(v0 + 56);
  (v167)(*(v0 + 104), *(v0 + 64), *(v0 + 80));
  os_unfair_lock_lock(v28);
  sub_1DF59CC98(v25 + v27, v46, &qword_1ECE42A20, &qword_1DF638C58);
  os_unfair_lock_unlock(v28);
  if (v36(v46, 1, v44) == 1)
  {
    v47 = *(v0 + 112);
    v48 = *(v0 + 80);
    v45 = *(v0 + 56);
    v49 = *(*(v0 + 88) + 8);
    v49(*(v0 + 104), v48);
    v49(v47, v48);
    goto LABEL_16;
  }

  v66 = *(v0 + 169);
  v67 = *(v0 + 104);
  v68 = *(v0 + 112);
  (v167)(*(v0 + 96), *(v0 + 56), *(v0 + 80));
  v69 = sub_1DF63359C();
  v71 = v70;
  v72 = sub_1DF63359C();
  v74 = v73;
  v75 = 0x1ECE42000uLL;
  if (v66 == 1)
  {
    v173 = v69;
    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v77 = *(v0 + 32);
    v76 = *(v0 + 40);
    v78 = sub_1DF6326AC();
    __swift_project_value_buffer(v78, qword_1ECE4BD58);

    v79 = sub_1DF63268C();
    v80 = sub_1DF63315C();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = v74;
      v82 = v72;
      v168 = v80;
      v83 = *(v0 + 32);
      v84 = *(v0 + 40);
      v85 = *(v0 + 24);
      v86 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v177[0] = v164;
      *v86 = 136315906;
      *(v86 + 4) = sub_1DF59EEC8(v85, v83, v177);
      *(v86 + 12) = 2080;
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v72 = v82;
      v74 = v81;
      v75 = 0x1ECE42000;
      v87 = sub_1DF6338DC();
      v89 = sub_1DF59EEC8(v87, v88, v177);

      *(v86 + 14) = v89;
      *(v86 + 22) = 2080;
      v69 = v173;
      v90 = Duration.formattedDescription.getter(v173, v71);
      v92 = sub_1DF59EEC8(v90, v91, v177);

      *(v86 + 24) = v92;
      *(v86 + 32) = 2080;
      v93 = Duration.formattedDescription.getter(v72, v74);
      v95 = sub_1DF59EEC8(v93, v94, v177);

      *(v86 + 34) = v95;
      _os_log_impl(&dword_1DF59A000, v79, v168, "[%s:%s] queueDuration: %s; runDuration: %s", v86, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v164, -1, -1);
      MEMORY[0x1E12D9D80](v86, -1, -1);
    }

    else
    {

      v69 = v173;
    }
  }

  v96 = *(v0 + 128);
  v97 = *(v0 + 136);
  if (sub_1DF633BFC())
  {
    v169 = v71;
    if (*(v75 + 1288) != -1)
    {
      swift_once();
    }

    v99 = *(v0 + 32);
    v98 = *(v0 + 40);
    v100 = sub_1DF6326AC();
    __swift_project_value_buffer(v100, qword_1ECE4BD58);

    v101 = sub_1DF63268C();
    v102 = sub_1DF63316C();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = v74;
      v104 = v72;
      v105 = *(v0 + 32);
      v106 = *(v0 + 40);
      v107 = *(v0 + 24);
      v108 = swift_slowAlloc();
      v174 = v69;
      v177[0] = swift_slowAlloc();
      v109 = v177[0];
      *v108 = 136446722;
      *(v108 + 4) = sub_1DF59EEC8(v107, v105, v177);
      *(v108 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v72 = v104;
      v74 = v103;
      v75 = 0x1ECE42000uLL;
      v110 = sub_1DF6338DC();
      v112 = sub_1DF59EEC8(v110, v111, v177);

      *(v108 + 14) = v112;
      *(v108 + 22) = 2082;
      v113 = Duration.formattedDescription.getter(v174, v169);
      v115 = sub_1DF59EEC8(v113, v114, v177);

      *(v108 + 24) = v115;
      _os_log_impl(&dword_1DF59A000, v101, v102, "[%{public}s:%{public}s] Excessive WorkItem queue time: %{public}s", v108, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v109, -1, -1);
      MEMORY[0x1E12D9D80](v108, -1, -1);
    }
  }

  v116 = *(v0 + 144);
  v117 = *(v0 + 152);
  if (sub_1DF633BFC())
  {
    v175 = v74;
    v118 = *(*(v0 + 40) + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_callStack);
    os_unfair_lock_lock((v118 + 24));
    v119 = *(v118 + 16);

    os_unfair_lock_unlock((v118 + 24));
    if (*(v75 + 1288) != -1)
    {
      swift_once();
    }

    v121 = *(v0 + 32);
    v120 = *(v0 + 40);
    v122 = sub_1DF6326AC();
    __swift_project_value_buffer(v122, qword_1ECE4BD58);

    v123 = sub_1DF63268C();
    v124 = sub_1DF63316C();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = *(v0 + 32);
      v165 = *(v0 + 40);
      v126 = *(v0 + 24);
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v177[0] = v128;
      *v127 = 136446722;
      *(v127 + 4) = sub_1DF59EEC8(v126, v125, v177);
      *(v127 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v129 = sub_1DF6338DC();
      v131 = sub_1DF59EEC8(v129, v130, v177);

      *(v127 + 14) = v131;
      *(v127 + 22) = 2082;
      v132 = Duration.formattedDescription.getter(v72, v175);
      v134 = sub_1DF59EEC8(v132, v133, v177);

      *(v127 + 24) = v134;
      _os_log_impl(&dword_1DF59A000, v123, v124, "[%{public}s:%{public}s] Excessive WorkItem run time: %{public}s", v127, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v128, -1, -1);
      MEMORY[0x1E12D9D80](v127, -1, -1);
    }

    v136 = *(v0 + 32);
    v135 = *(v0 + 40);

    v137 = sub_1DF63268C();
    v138 = sub_1DF63318C();

    v139 = os_log_type_enabled(v137, v138);
    v141 = *(v0 + 104);
    v140 = *(v0 + 112);
    v142 = *(v0 + 88);
    v143 = *(v0 + 96);
    v144 = *(v0 + 80);
    if (v139)
    {
      v145 = *(v0 + 32);
      v162 = *(v0 + 40);
      v176 = *(v0 + 104);
      v146 = *(v0 + 24);
      v166 = *(v0 + 96);
      v147 = swift_slowAlloc();
      v170 = v140;
      v148 = swift_slowAlloc();
      v177[0] = v148;
      *v147 = 136446722;
      *(v147 + 4) = sub_1DF59EEC8(v146, v145, v177);
      *(v147 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v149 = sub_1DF6338DC();
      v151 = sub_1DF59EEC8(v149, v150, v177);

      *(v147 + 14) = v151;
      *(v147 + 22) = 2082;
      v152 = sub_1DF60CF60(v119);
      v154 = v153;

      v155 = sub_1DF59EEC8(v152, v154, v177);

      *(v147 + 24) = v155;
      _os_log_impl(&dword_1DF59A000, v137, v138, "[%{public}s:%{public}s] enqueue callstack: %{public}s", v147, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v148, -1, -1);
      MEMORY[0x1E12D9D80](v147, -1, -1);

      v156 = *(v142 + 8);
      v156(v166, v144);
      v156(v176, v144);
      v157 = v170;
    }

    else
    {

      v156 = *(v142 + 8);
      v156(v143, v144);
      v156(v141, v144);
      v157 = v140;
    }

    v156(v157, v144);
  }

  else
  {
    v158 = *(v0 + 104);
    v159 = *(v0 + 112);
    v160 = *(v0 + 80);
    v161 = *(*(v0 + 88) + 8);
    v161(*(v0 + 96), v160);
    v161(v158, v160);
    v161(v159, v160);
  }

LABEL_18:
  v51 = *(v0 + 40);
  v50 = *(v0 + 48);
  v52 = *(v0 + 16);
  v53 = *(v0 + 168) & 1;
  v54 = v51 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult;
  v55 = *(v51 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult);
  *v54 = v52;
  v56 = *(v54 + 8);
  *(v54 + 8) = v53;
  sub_1DF5B10E8(v52, v53);
  sub_1DF5AE9D8(v55, v56);
  v57 = *(v51 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_willDeadlock);
  v58 = swift_task_alloc();
  *(v58 + 16) = v51;
  *(v58 + 24) = v50;
  v59 = (v57 + 20);
  os_unfair_lock_lock((v57 + 20));
  sub_1DF60E7EC((v57 + 16));
  v60 = *(v0 + 40);
  os_unfair_lock_unlock(v59);

  sub_1DF5B1124();
  v61 = *(v60 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completion);
  if (!v61)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 120), *(v0 + 80));
LABEL_7:
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v19 = *(v0 + 64);
    v18 = *(v0 + 72);
    v20 = *(v0 + 56);

    v21 = *(v0 + 8);

    return v21();
  }

  v62 = *(v60 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completion + 8);
  v172 = (v61 + *v61);
  v63 = v61[1];
  v64 = swift_task_alloc();
  *(v0 + 160) = v64;
  *v64 = v0;
  v64[1] = sub_1DF608374;
  v65 = *(v0 + 16);

  return v172(v65, v53);
}

uint64_t sub_1DF608374()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF608484, v2, 0);
}

uint64_t sub_1DF608484()
{
  (*(v0[11] + 8))(v0[15], v0[10]);
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t WorkItemQueue.WorkItem.__allocating_init(identifier:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = type metadata accessor for WorkItemQueue.WorkItem();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1DF60D5E8(0, v10, &unk_1DF638F88, v11, 0, 0);

  (*(v7 + 8))(a1, v6);
  return v15;
}

{
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = type metadata accessor for WorkItemQueue.WorkItem();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1DF60D5E8(0, v10, a2, a3, 0, 0);

  (*(v7 + 8))(a1, v6);
  return v14;
}

uint64_t sub_1DF6087E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1DF63363C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = sub_1DF63365C();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF608910, 0, 0);
}

uint64_t sub_1DF608910()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v14 = *(v0 + 40);
  sub_1DF63364C();
  sub_1DF6335FC();
  sub_1DF63362C();
  v8 = *(v5 + 8);
  *(v0 + 112) = v8;
  *(v0 + 120) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v4);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *(v9 + 16) = v14;
  *(v9 + 32) = v2;
  *(v9 + 40) = v1;
  v10 = *(MEMORY[0x1E69E88A0] + 4);
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1DF608A84;
  v12 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v12);
}

uint64_t sub_1DF608A84()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1DF608C58;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1DF608BA0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF608BA0()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  (*(v0 + 112))(*(v0 + 80), *(v0 + 56));
  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DF608C58()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[7];

  v4(v7, v9);
  (*(v6 + 8))(v3, v5);

  v10 = v0[1];
  v11 = v0[18];

  return v10();
}

uint64_t sub_1DF608D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = sub_1DF63365C();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  v9 = sub_1DF63363C();
  v6[11] = v9;
  v10 = *(v9 - 8);
  v6[12] = v10;
  v6[13] = *(v10 + 64);
  v6[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF608E8C, 0, 0);
}

uint64_t sub_1DF608E8C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[11];
  v22 = v0[10];
  v23 = v0[13];
  v18 = v0[8];
  v19 = v0[14];
  v20 = v0[6];
  v21 = v0[7];
  v4 = v0[4];
  v17 = v0[5];
  v5 = v0[3];
  v24 = v0[9];
  v25 = v0[2];
  v6 = sub_1DF632E9C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v4;

  sub_1DF5AF4B0(v1, &unk_1DF63B708, v8);
  sub_1DF59CB50(v1, &qword_1ECE42C10, &qword_1DF63B260);
  v7(v1, 1, 1, v6);
  (*(v2 + 16))(v19, v17, v3);
  (*(v18 + 16))(v22, v20, v21);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = (v23 + *(v18 + 80) + v9) & ~*(v18 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v2 + 32))(v11 + v9, v19, v3);
  (*(v18 + 32))(v11 + v10, v22, v21);
  sub_1DF5AF4B0(v1, &unk_1DF63B718, v11);
  sub_1DF59CB50(v1, &qword_1ECE42C10, &qword_1DF63B260);
  v12 = *(MEMORY[0x1E69E8708] + 4);
  v13 = swift_task_alloc();
  v0[16] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B40, &qword_1DF6393A0);
  *v13 = v0;
  v13[1] = sub_1DF609168;
  v15 = v0[2];

  return MEMORY[0x1EEE6DAC8](v0 + 18, 0, 0, v14);
}

uint64_t sub_1DF609168()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1DF6093D0;
  }

  else
  {
    v3 = sub_1DF60927C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF60927C()
{
  v1 = **(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF632FAC();
  if (*(v0 + 144))
  {
    sub_1DF632E5C();
    sub_1DF60E5CC(&qword_1ED8E56F0, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1DF6327FC();
    swift_willThrow();
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v4 = *(v0 + 80);
  }

  else
  {
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 80);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DF6093D0()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DF609450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF6094F0, 0, 0);
}

uint64_t sub_1DF6094F0()
{
  v1 = *(v0 + 72);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43268, &qword_1DF63B720);
  v4 = *(v3 + 52);
  v5 = (*(v3 + 48) + 3) & 0x1FFFFFFFCLL;
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v6 + ((*(*v6 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DF5F2268(v1, v6 + *(*v6 + *MEMORY[0x1E69E6B68] + 16), &qword_1ECE42B28, &qword_1DF639308);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE431E0, &qword_1DF63B4A8);
  inited = swift_initStackObject();
  *(v0 + 88) = inited;
  *(inited + 24) = 0;
  *(inited + 16) = 0;
  sub_1DF632F7C();
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = *(v0 + 56);
  *(v8 + 16) = v6;
  *(v8 + 24) = inited;
  *(v8 + 32) = v9;
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *(v10 + 16) = inited;
  *(v10 + 24) = v6;
  v11 = *(MEMORY[0x1E69E88F0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1DF6097A0;
  v13 = *(v0 + 48);
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v13, &unk_1DF63B730, v8, sub_1DF60E6D4, v10, 0, 0, v14);
}

uint64_t sub_1DF6097A0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1DF609950;
  }

  else
  {
    v6 = *(v2 + 96);
    v5 = *(v2 + 104);

    v4 = sub_1DF6098C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF6098C4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  swift_setDeallocating();
  v4 = *(v2 + 16);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DF609950()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  swift_setDeallocating();
  v5 = *(v3 + 16);

  v6 = v0[15];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF6099F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF609A18, 0, 0);
}

uint64_t sub_1DF609A18()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1DF609B10;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001CLL, 0x80000001DF6355D0, sub_1DF60E6DC, v1, v6);
}

uint64_t sub_1DF609B10()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5D44C4, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

void sub_1DF609C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v6));
  sub_1DF60E6E8(a2 + v5);
  os_unfair_lock_unlock((a2 + v6));
  os_unfair_lock_lock((a3 + 24));
  sub_1DF60E704((a3 + 16));
  os_unfair_lock_unlock((a3 + 24));
}

uint64_t sub_1DF609D24(uint64_t a1, uint64_t a2)
{
  sub_1DF59CB50(a1, &qword_1ECE42B28, &qword_1DF639308);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_1DF609DF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = *a1;

  v13 = sub_1DF632E9C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a4;

  result = sub_1DF5CE7F8(0, 0, v11, &unk_1DF63B740, v14);
  *a1 = result;
  return result;
}

uint64_t sub_1DF609F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF609FF4, 0, 0);
}

uint64_t sub_1DF609FF4()
{
  sub_1DF632F7C();
  v5 = (v0[3] + *v0[3]);
  v1 = *(v0[3] + 4);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1DF60A320;
  v3 = v0[4];

  return v5();
}

uint64_t sub_1DF60A320()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1DF60A660;
  }

  else
  {
    v3 = sub_1DF60A434;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF60A434()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1DF5F2268(v3 + v4, v2, &qword_1ECE42B28, &qword_1DF639308);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v7 = *(v6 - 8);
  (*(v7 + 56))(v3 + v4, 1, 1, v6);
  os_unfair_lock_unlock((v3 + v5));
  sub_1DF59CC98(v2, v1, &qword_1ECE42B28, &qword_1DF639308);
  v8 = (*(v7 + 48))(v1, 1, v6);
  v9 = v0[8];
  v10 = v0[9];
  if (v8 == 1)
  {
    sub_1DF59CB50(v0[9], &qword_1ECE42B28, &qword_1DF639308);
    sub_1DF59CB50(v9, &qword_1ECE42B28, &qword_1DF639308);
  }

  else
  {
    sub_1DF632E3C();
    sub_1DF59CB50(v10, &qword_1ECE42B28, &qword_1DF639308);
    (*(v7 + 8))(v9, v6);
  }

  v12 = v0[8];
  v11 = v0[9];
  v14 = v0[6];
  v13 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1DF60A660()
{
  v18 = v0[11];
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1DF5F2268(v3 + v4, v2, &qword_1ECE42B28, &qword_1DF639308);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v7 = *(v6 - 8);
  (*(v7 + 56))(v3 + v4, 1, 1, v6);
  os_unfair_lock_unlock((v3 + v5));
  sub_1DF59CC98(v2, v1, &qword_1ECE42B28, &qword_1DF639308);
  if ((*(v7 + 48))(v1, 1, v6) == 1)
  {
    v8 = v0[6];
    sub_1DF59CB50(v0[7], &qword_1ECE42B28, &qword_1DF639308);

    sub_1DF59CB50(v8, &qword_1ECE42B28, &qword_1DF639308);
  }

  else
  {
    v0[2] = v18;
    v10 = v0[6];
    v9 = v0[7];
    v11 = v18;
    sub_1DF632E2C();

    sub_1DF59CB50(v9, &qword_1ECE42B28, &qword_1DF639308);
    (*(v7 + 8))(v10, v6);
  }

  v13 = v0[8];
  v12 = v0[9];
  v15 = v0[6];
  v14 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1DF60A8C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - v9;
  os_unfair_lock_lock((a1 + 24));
  v11 = *(a1 + 16);

  os_unfair_lock_unlock((a1 + 24));
  if (v11)
  {
    sub_1DF632F5C();
  }

  v12 = *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  v13 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v13));
  sub_1DF5F2268(a2 + v12, v10, &qword_1ECE42B28, &qword_1DF639308);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v15 = *(v14 - 8);
  (*(v15 + 56))(a2 + v12, 1, 1, v14);
  os_unfair_lock_unlock((a2 + v13));
  sub_1DF59CC98(v10, v8, &qword_1ECE42B28, &qword_1DF639308);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1DF59CB50(v10, &qword_1ECE42B28, &qword_1DF639308);
    return sub_1DF59CB50(v8, &qword_1ECE42B28, &qword_1DF639308);
  }

  else
  {
    sub_1DF632E5C();
    sub_1DF60E5CC(&qword_1ED8E56F0, MEMORY[0x1E69E8550]);
    v17 = swift_allocError();
    sub_1DF6327FC();
    v18[1] = v17;
    sub_1DF632E2C();
    sub_1DF59CB50(v10, &qword_1ECE42B28, &qword_1DF639308);
    return (*(v15 + 8))(v8, v14);
  }
}

uint64_t sub_1DF60ABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF60ABD4, 0, 0);
}

uint64_t sub_1DF60ABD4()
{
  sub_1DF632F7C();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v1 = *(MEMORY[0x1E69E86D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = sub_1DF63365C();
  v4 = sub_1DF60E5CC(&qword_1ED8E56E8, MEMORY[0x1E69E8848]);
  *v2 = v0;
  v2[1] = sub_1DF60AD18;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  return MEMORY[0x1EEE6DA68](v5, v0 + 16, v6, v3, v4);
}

uint64_t sub_1DF60AD18()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1DF60AEB4;
  }

  else
  {
    v3 = sub_1DF60AE2C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF60AE2C()
{
  sub_1DF6059BC();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF60AECC()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ECE4BD58);
  v1 = __swift_project_value_buffer(v0, qword_1ECE4BD58);
  if (qword_1ED8E5CD8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E69F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t WorkItemQueue.WorkItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id;
  v4 = sub_1DF6325AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DF60B00C()
{
  v1 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DF60B050(char a1)
{
  v3 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DF60B26C()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  swift_beginAccess();
  *(v1 + v2) = 1;
  v3 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlock);
  v0[6] = v3;
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 24);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    v0[7] = v7;
    *(v7 + 16) = &unk_1DF63B598;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = &unk_1DF63B598;
    *(v8 + 24) = v6;
    *(v3 + 16) = &unk_1DF63B5B0;
    *(v3 + 24) = v8;

    os_unfair_lock_unlock((v3 + 32));
    v9 = swift_allocObject();
    v0[8] = v9;
    *(v9 + 16) = &unk_1DF63B5A8;
    *(v9 + 24) = v7;
    sub_1DF5A32C0(&unk_1DF63B5A8);

    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_1DF60B508;

    return sub_1DF60DD64();
  }

  else
  {
    os_unfair_lock_unlock((v3 + 32));
    v12 = v0[6];
    v13 = swift_task_alloc();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    os_unfair_lock_lock((v12 + 32));
    sub_1DF5AC8B8((v12 + 16));
    os_unfair_lock_unlock((v12 + 32));
    sub_1DF5A83BC(0);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1DF60B508()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 40);
  v6 = *v0;

  sub_1DF5A83BC(&unk_1DF63B5A8);

  return MEMORY[0x1EEE6DFA0](sub_1DF60B66C, v4, 0);
}

uint64_t sub_1DF60B66C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = swift_task_alloc();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  os_unfair_lock_lock((v2 + 32));
  sub_1DF5AC8B8((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
  sub_1DF5A83BC(&unk_1DF63B590);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF60B748(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DF59D2C4;

  return v5();
}

uint64_t sub_1DF60B830()
{
  v1[4] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_1DF6325AC();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF60B940, v0, 0);
}

uint64_t sub_1DF60B940()
{
  v70 = v0;
  v1 = *(v0[4] + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_willDeadlock);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    if (qword_1ED8E6078 != -1)
    {
      swift_once();
    }

    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[6];
    sub_1DF633C5C();
    v6 = *(v4 + 48);
    if (v6(v5, 1, v3) == 1)
    {
      v7 = v0[6];
      v8 = v0[7];
      sub_1DF63257C();
      if (v6(v7, 1, v8) != 1)
      {
        sub_1DF59CB50(v0[6], &qword_1ECE42AA8, &qword_1DF638F18);
      }
    }

    else
    {
      (*(v0[8] + 32))(v0[10], v0[6], v0[7]);
    }

    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v23 = v0[9];
    v24 = v0[10];
    v25 = v0[7];
    v26 = v0[8];
    v27 = v0[4];
    v28 = sub_1DF6326AC();
    __swift_project_value_buffer(v28, qword_1ECE4BD58);
    (*(v26 + 16))(v23, v24, v25);

    v29 = sub_1DF63268C();
    v30 = sub_1DF63317C();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[8];
    v33 = v0[9];
    v34 = v0[7];
    if (v31)
    {
      v35 = v0[4];
      v36 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69[0] = v68;
      *v36 = 136446722;
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v37 = sub_1DF6338DC();
      v39 = sub_1DF59EEC8(v37, v38, v69);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_1DF59EEC8(0xD000000000000011, 0x80000001DF635630, v69);
      *(v36 + 22) = 2082;
      v40 = sub_1DF6338DC();
      v42 = v41;
      v45 = *(v32 + 8);
      v43 = v32 + 8;
      v44 = v45;
      v45(v33, v34);
      v46 = sub_1DF59EEC8(v40, v42, v69);

      *(v36 + 24) = v46;
      _os_log_impl(&dword_1DF59A000, v29, v30, "Cancelling WorkItem %{public}s because calling %s from %{public}s WorkItemQueue context will cause a deadlock!", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v68, -1, -1);
      MEMORY[0x1E12D9D80](v36, -1, -1);
    }

    else
    {

      v58 = *(v32 + 8);
      v43 = v32 + 8;
      v44 = v58;
      v58(v33, v34);
    }

    v0[11] = v43;
    v0[12] = v44;
    v59 = swift_task_alloc();
    v0[13] = v59;
    *v59 = v0;
    v59[1] = sub_1DF60C1DC;
    v60 = v0[4];

    return sub_1DF60B24C();
  }

  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];
  v12 = *(v0[4] + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_assocatedQueueIdentifier);
  v13 = *(*v12 + *MEMORY[0x1E69E6B68] + 16);
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v14));
  sub_1DF59CC98(v12 + v13, v11, &qword_1ECE42AA8, &qword_1DF638F18);
  os_unfair_lock_unlock((v12 + v14));
  LODWORD(v9) = (*(v10 + 48))(v11, 1, v9);
  sub_1DF59CB50(v11, &qword_1ECE42AA8, &qword_1DF638F18);
  if (v9 == 1)
  {
    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v15 = sub_1DF6326AC();
    __swift_project_value_buffer(v15, qword_1ECE4BD58);
    v16 = sub_1DF63268C();
    v17 = sub_1DF63317C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v69[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1DF59EEC8(0xD000000000000011, 0x80000001DF635630, v69);
      _os_log_impl(&dword_1DF59A000, v16, v17, "%s called on WorkItem that was never enqueued!", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E12D9D80](v19, -1, -1);
      MEMORY[0x1E12D9D80](v18, -1, -1);
    }

    type metadata accessor for WorkItemQueue.Error(0);
    sub_1DF60E5CC(&qword_1ECE42500, type metadata accessor for WorkItemQueue.Error);
    swift_allocError();
    v21 = v20;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B00, &qword_1DF6391B0);
    (*(*(v22 - 8) + 56))(v21, 2, 2, v22);
    swift_willThrow();
    goto LABEL_21;
  }

  v47 = v0[4];
  v48 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult;
  v0[14] = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult;
  v49 = v47 + v48;
  v50 = *(v49 + 8);
  if (v50 != 255)
  {
    if ((v50 & 1) == 0)
    {
      v65 = v0[9];
      v64 = v0[10];
      v67 = v0[5];
      v66 = v0[6];

      v56 = v0[1];
      goto LABEL_22;
    }

    v51 = *v49;
    v0[3] = *v49;
    sub_1DF5B10E8(v51, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
    swift_willThrowTypedImpl();
LABEL_21:
    v53 = v0[9];
    v52 = v0[10];
    v55 = v0[5];
    v54 = v0[6];

    v56 = v0[1];
LABEL_22:

    return v56();
  }

  sub_1DF60E5CC(&qword_1ED8E6020, type metadata accessor for WorkItemQueue.WorkItem);
  v61 = *(MEMORY[0x1E69E88D0] + 4);
  v62 = swift_task_alloc();
  v0[15] = v62;
  *v62 = v0;
  v62[1] = sub_1DF60C454;
  v63 = v0[4];

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1DF60C1DC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF60C2EC, v2, 0);
}

uint64_t sub_1DF60C2EC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  type metadata accessor for WorkItemQueue.Error(0);
  sub_1DF60E5CC(&qword_1ECE42500, type metadata accessor for WorkItemQueue.Error);
  swift_allocError();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B00, &qword_1DF6391B0);
  (*(*(v7 - 8) + 56))(v6, 1, 2, v7);
  swift_willThrow();
  v1(v3, v4);
  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[5];
  v10 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DF60C454()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF60C564, v2, 0);
}

uint64_t sub_1DF60C564()
{
  v1 = v0[4] + v0[14];
  v2 = *(v1 + 8);
  if (v2 == 255)
  {
    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF6326AC();
    __swift_project_value_buffer(v4, qword_1ECE4BD58);
    v5 = sub_1DF63268C();
    v6 = sub_1DF63317C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DF59A000, v5, v6, "Expected storedResult to be non-nil!", v7, 2u);
      MEMORY[0x1E12D9D80](v7, -1, -1);
    }

    sub_1DF632E5C();
    sub_1DF60E5CC(&qword_1ED8E56F0, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1DF6327FC();
    swift_willThrow();
    goto LABEL_9;
  }

  if (v2)
  {
    v3 = *v1;
    v0[2] = *v1;
    sub_1DF5B10E8(v3, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
    swift_willThrowTypedImpl();
LABEL_9:
    v9 = v0[9];
    v8 = v0[10];
    v11 = v0[5];
    v10 = v0[6];

    v12 = v0[1];
    goto LABEL_11;
  }

  v14 = v0[9];
  v13 = v0[10];
  v16 = v0[5];
  v15 = v0[6];

  v12 = v0[1];
LABEL_11:

  return v12();
}

uint64_t sub_1DF60C79C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF60C7C0, v2, 0);
}

uint64_t sub_1DF60C7C0()
{
  v1 = v0[5];

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1DF60C888;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_1DF6087E0(sub_1DF6087E0, v5, v3, &unk_1DF63B5D0, v4);
}

uint64_t sub_1DF60C888()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1DF60C9CC;
  }

  else
  {
    v7 = *(v2 + 40);

    v6 = sub_1DF5D44AC;
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF60C9CC()
{
  v25 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  *(v0 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
  if (swift_dynamicCast())
  {

    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 40);
    v5 = sub_1DF6326AC();
    __swift_project_value_buffer(v5, qword_1ECE4BD58);

    v6 = sub_1DF63268C();
    v7 = sub_1DF63316C();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 32);
      v8 = *(v0 + 40);
      v10 = *(v0 + 24);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136446466;
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v13 = sub_1DF6338DC();
      v15 = sub_1DF59EEC8(v13, v14, &v24);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v16 = sub_1DF633BEC();
      v18 = sub_1DF59EEC8(v16, v17, &v24);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_1DF59A000, v6, v7, "Cancelling %{public}s after %{public}s timeout.", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v12, -1, -1);
      MEMORY[0x1E12D9D80](v11, -1, -1);
    }

    v19 = swift_task_alloc();
    *(v0 + 64) = v19;
    *v19 = v0;
    v19[1] = sub_1DF60CCD4;
    v20 = *(v0 + 40);

    return sub_1DF60B24C();
  }

  else
  {

    v22 = *(v0 + 8);
    v23 = *(v0 + 56);

    return v22();
  }
}

uint64_t sub_1DF60CCD4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF60CDE4, v2, 0);
}

uint64_t sub_1DF60CDE4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF60CE48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF59D2C4;

  return sub_1DF60B830();
}

uint64_t sub_1DF60CEE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id;
  v5 = sub_1DF6325AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DF60CF60(uint64_t a1)
{
  v20 = type metadata accessor for ImageOffset();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  sub_1DF5DB1D8(0, v6, 0);
  v7 = v24;
  if (v6)
  {
    v8 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_1DF60E808(v8, v5);
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v22 = sub_1DF6338DC();
      v23 = v10;
      MEMORY[0x1E12D82E0](2016419898, 0xE400000000000000);
      v21 = *&v5[*(v20 + 20)];
      sub_1DF60E86C();
      v11 = sub_1DF632BDC();
      MEMORY[0x1E12D82E0](v11);

      v12 = v22;
      v13 = v23;
      sub_1DF60E8C0(v5);
      v24 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DF5DB1D8((v14 > 1), v15 + 1, 1);
        v7 = v24;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v22 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5BC754();
  v17 = sub_1DF6328DC();

  return v17;
}

void sub_1DF60D1C0(_BYTE *a1, uint64_t a2)
{
  v5 = sub_1DF6325AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v10 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id;
    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF6326AC();
    __swift_project_value_buffer(v11, qword_1ECE4BD58);
    (*(v6 + 16))(v9, a2 + v10, v5);
    v12 = sub_1DF63268C();
    v13 = sub_1DF63318C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v21[1] = v2;
      v15 = v14;
      v21[0] = swift_slowAlloc();
      v22 = v21[0];
      *v15 = 136446210;
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v16 = sub_1DF6338DC();
      v18 = v17;
      (*(v6 + 8))(v9, v5);
      v19 = sub_1DF59EEC8(v16, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1DF59A000, v12, v13, "Clearing willDeadlock since %{public}s completed and awaitCompletion can now successfully be called from any context.", v15, 0xCu);
      v20 = v21[0];
      __swift_destroy_boxed_opaque_existential_1(v21[0]);
      MEMORY[0x1E12D9D80](v20, -1, -1);
      MEMORY[0x1E12D9D80](v15, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }

  *a1 = 0;
}

uint64_t sub_1DF60D460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429F8, &qword_1DF638C28);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_1DF6325AC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF63259C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1DF5C5BDC(v5, v9);
  return swift_endAccess();
}

uint64_t sub_1DF60D5E8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a5;
  v67 = a6;
  v64 = a3;
  v65 = a4;
  v63 = a2;
  v62 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v60 - v13;
  swift_defaultActor_initialize();
  *(v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled) = 0;
  v15 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_assocatedQueueIdentifier;
  v16 = sub_1DF6325AC();
  v17 = *(v16 - 8);
  v60 = v16;
  v61 = v17;
  (*(v17 + 56))(v14, 1, 1, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43280, &qword_1DF63B768);
  v19 = *(v18 + 52);
  v20 = (*(v18 + 48) + 3) & 0x1FFFFFFFCLL;
  v21 = swift_allocObject();
  *(v21 + ((*(*v21 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v22 = MEMORY[0x1E69E6B68];
  sub_1DF5F2268(v14, v21 + *(*v21 + *MEMORY[0x1E69E6B68] + 16), &qword_1ECE42AA8, &qword_1DF638F18);
  *(v6 + v15) = v21;
  *(v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completionAlreadyCalled) = 0;
  *(v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlockNeeded) = 1;
  v23 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43288, &qword_1DF63B770);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v6 + v23) = v24;
  v25 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancelContinuation;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  (*(*(v26 - 8) + 56))(v6 + v25, 1, 1, v26);
  v27 = v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult;
  *v27 = 0;
  *(v27 + 8) = -1;
  *(v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_waiterContinuations) = MEMORY[0x1E69E7CC8];
  v28 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_visitedQueueIdentifiers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43290, &qword_1DF63B778);
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E7CD0];
  *(v29 + 24) = 0;
  *(v29 + 16) = v30;
  *(v6 + v28) = v29;
  v31 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_callStack;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43298, &qword_1DF63B780);
  v32 = swift_allocObject();
  v33 = MEMORY[0x1E69E7CC0];
  *(v32 + 24) = 0;
  *(v32 + 16) = v33;
  *(v6 + v31) = v32;
  v34 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_enqueued;
  v35 = sub_1DF6335AC();
  v36 = *(*(v35 - 8) + 56);
  v36(v10, 1, 1, v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE432A0, &qword_1DF63B788);
  v38 = *(v37 + 52);
  v39 = (*(v37 + 48) + 3) & 0x1FFFFFFFCLL;
  v40 = swift_allocObject();
  *(v40 + ((*(*v40 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DF5F2268(v10, v40 + *(*v40 + *v22 + 16), &qword_1ECE42A20, &qword_1DF638C58);
  *(v6 + v34) = v40;
  v41 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_started;
  v36(v10, 1, 1, v35);
  v42 = *(v37 + 52);
  v43 = (*(v37 + 48) + 3) & 0x1FFFFFFFCLL;
  v44 = swift_allocObject();
  *(v44 + ((*(*v44 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DF5F2268(v10, v44 + *(*v44 + *v22 + 16), &qword_1ECE42A20, &qword_1DF638C58);
  *(v6 + v41) = v44;
  v45 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completed;
  v36(v10, 1, 1, v35);
  v46 = *(v37 + 52);
  v47 = (*(v37 + 48) + 3) & 0x1FFFFFFFCLL;
  v48 = swift_allocObject();
  *(v48 + ((*(*v48 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DF5F2268(v10, v48 + *(*v48 + *v22 + 16), &qword_1ECE42A20, &qword_1DF638C58);
  *(v6 + v45) = v48;
  v49 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_willDeadlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE432A8, &qword_1DF63B790);
  v50 = swift_allocObject();
  *(v50 + 20) = 0;
  *(v6 + v49) = v50;
  *(v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType) = v62;
  *(v50 + 16) = 0;
  v52 = v60;
  v51 = v61;
  v53 = v63;
  (*(v61 + 16))(v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id, v63, v60);
  v54 = (v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_block);
  v55 = v65;
  *v54 = v64;
  v54[1] = v55;
  v56 = (v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completion);
  v58 = v66;
  v57 = v67;
  *v56 = v66;
  v56[1] = v57;

  sub_1DF5A32C0(v58);
  sub_1DF5A9544();
  (*(v51 + 8))(v53, v52);
  return v6;
}

uint64_t sub_1DF60DCB8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF59D2C4;

  return sub_1DF60B748(v2);
}

uint64_t sub_1DF60DD64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF59D2C4;

  return sub_1DF5A9BB0(a1, v5);
}

uint64_t sub_1DF60DE24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF59D2C4;

  return sub_1DF60CE48();
}

uint64_t dispatch thunk of WorkItemQueue.WorkItem.cancel()()
{
  v2 = *(*v0 + 384);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF59D2C4;

  return v6();
}

uint64_t dispatch thunk of WorkItemQueue.WorkItem.awaitCompletion()()
{
  v2 = *(*v0 + 392);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF59D2C4;

  return v6();
}

uint64_t dispatch thunk of WorkItemQueue.WorkItem.awaitCompletion(cancelAfter:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 400);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF59D2C4;

  return v10(a1, a2);
}

uint64_t sub_1DF60E2F4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1DF59D2C4;

  return sub_1DF608D20(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1DF60E3BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF609450(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF60E47C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DF63363C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1DF63365C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1DF59D2C8;

  return sub_1DF60ABB4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1DF60E5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF60E614(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF6099F0(a1, v4, v5, v7, v6);
}

void sub_1DF60E6DC(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  sub_1DF609C4C(a1, v1[2], v1[3]);
}

uint64_t sub_1DF60E724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF59D2C8;

  return sub_1DF609F30(a1, v4, v5, v6, v7, v8);
}