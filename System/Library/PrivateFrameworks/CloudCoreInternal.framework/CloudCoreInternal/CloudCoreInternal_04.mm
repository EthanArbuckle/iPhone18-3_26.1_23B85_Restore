uint64_t sub_1C93EA4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ExponentialBackoff.State() + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1 + v4, AssociatedTypeWitness);
}

uint64_t sub_1C93EA58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ExponentialBackoff.State() + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1 + v4, AssociatedTypeWitness);
}

void ExponentialBackoff.tolerance.getter()
{
  v1 = *v0;
  sub_1C93EFF10();
  v3 = (v0 + *(v2 + 96));
  os_unfair_lock_lock(v3);
  sub_1C93EFF10();
  v5 = *(v4 + 80);
  sub_1C93EFF10();
  v7 = *(v6 + 88);
  v8 = v3 + *(sub_1C93EFEC8() + 28);
  sub_1C93EFF1C();
  sub_1C93EA71C(v9, v10);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();

  j__os_unfair_lock_unlock(v3);
}

uint64_t sub_1C93EA71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ExponentialBackoff.State() + 52);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t ExponentialBackoff.currentBackoffCount.getter()
{
  v2 = *v0;
  sub_1C93EFF04();
  v4 = (v0 + *(v3 + 96));
  os_unfair_lock_lock(v4);
  sub_1C93EFF04();
  v6 = *(v5 + 80);
  sub_1C93EFF04();
  v8 = *(v7 + 88);
  type metadata accessor for ExponentialBackoff.State();
  sub_1C93EFF28();
  v9 = type metadata accessor for Mutex();
  v10 = *(v1 + *(sub_1C93EFF70(v9) + 56));
  j__os_unfair_lock_unlock(v4);
  return v10;
}

void sub_1C93EA8A0(void (*a1)(void))
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 96));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  sub_1C93EFFA8();
  type metadata accessor for ExponentialBackoff.State();
  v7 = v4 + *(type metadata accessor for Mutex() + 28);
  sub_1C93EFFA8();
  a1();
  sub_1C93EFF28();
  swift_getAssociatedTypeWitness();

  j__os_unfair_lock_unlock(v4);
}

uint64_t sub_1C93EA9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ExponentialBackoff.State() + 60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1 + v4, AssociatedTypeWitness);
}

uint64_t ExponentialBackoff.__allocating_init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ExponentialBackoff.init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)();
  return v3;
}

void sub_1C93EAAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_1C93A5B40();
  v78 = v24;
  v79 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v75 = v34;
  v76 = v35;
  v36 = sub_1C93A1890(&qword_1EC39B600, &qword_1C9404A18);
  v37 = sub_1C939D430(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v70 - v40;
  v42 = sub_1C93A1890(&qword_1EC39B608, &qword_1C9404A20);
  v43 = sub_1C939D430(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = (&v70 - v46);
  if (v31 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  static Duration.zero.getter();
  if ((static Duration.< infix(_:_:)() & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (static Duration.< infix(_:_:)())
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v73 = v31;
  v74 = v36;
  v77 = a22;
  if ((a23 & 1) == 0)
  {
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      goto LABEL_12;
    }
  }

  v70 = v41;
  v71 = v39;
  v72 = v23;
  v48 = v33;
  v49 = v42[9];
  v50 = type metadata accessor for ContinuousClock();
  sub_1C939D47C();
  v52 = v51;
  v54 = v47 + v49;
  v55 = v48;
  (*(v53 + 16))(v54, v48, v50);
  static Duration.zero.getter();
  v56 = (v47 + v42[11]);
  *v56 = v29;
  v56[1] = v27;
  v57 = (v47 + v42[12]);
  v58 = v79;
  *v57 = v78;
  v57[1] = v58;
  v59 = v47 + v42[13];
  v60 = v77;
  *v59 = a21;
  *(v59 + 1) = v60;
  v59[16] = a23 & 1;
  v61 = v42[15];
  v62 = v76;
  *v47 = v75;
  v47[1] = v62;
  v63 = v73;
  *(v47 + v42[10]) = v73;
  *(v47 + v42[14]) = 0;
  *(v47 + v42[16]) = MEMORY[0x1E69E7CD0];
  if (v63)
  {
    v29 = static Duration.zero.getter();
    v27 = v64;
  }

  v65 = (v47 + v61);
  *v65 = v29;
  v65[1] = v27;
  v66 = v70;
  *v70 = 0;
  v67 = *(v74 + 28);
  v68 = sub_1C93A1890(&qword_1EC39B610, &qword_1C9404A28);
  sub_1C93A5A08(v68);
  bzero(&v66[v67], *(v69 + 64));
  sub_1C93EFDB4(v47, &v66[v67], &qword_1EC39B608, &qword_1C9404A20);
  (*(v52 + 8))(v55, v50);
  sub_1C93A4838(v47, &qword_1EC39B608, &qword_1C9404A20);
  memcpy((v72 + *(*v72 + 96)), v66, v71);
  sub_1C93A5B58();
}

void ExponentialBackoff.init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)()
{
  sub_1C93A5B40();
  v111 = v2;
  v112 = v1;
  v113 = v3;
  v110 = v4;
  v108 = v5;
  v95 = v6;
  v96 = v7;
  v8 = *v0;
  sub_1C93EFFC8();
  v10 = *(v9 + 80);
  sub_1C93EFFC8();
  v12 = *(v11 + 88);
  v13 = type metadata accessor for ExponentialBackoff.State();
  v98 = type metadata accessor for Mutex();
  v14 = sub_1C939D430(v98);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v85 - v17;
  sub_1C939D47C();
  v107 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v85 - v22;
  sub_1C939D47C();
  v100 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C93A59B8();
  v97 = v27 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v99 = &v85 - v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v109 = type metadata accessor for Optional();
  sub_1C939D47C();
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C93A59B8();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v85 - v36;
  sub_1C939D47C();
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C93A59B8();
  v45 = MEMORY[0x1EEE9AC00](v43 - v44);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = &v85 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46);
  v54 = &v85 - v53;
  if (v110 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v87 = v49;
  v88 = v52;
  v93 = v0;
  v89 = v51;
  v106 = v50;
  v91 = v16;
  v92 = v13;
  swift_getAssociatedTypeWitness();
  v90 = v12;
  v105 = v10;
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = *(AssociatedConformanceWitness + 8);
  sub_1C93EFF60();
  v102 = v57;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v58 = *(AssociatedConformanceWitness + 16);
  v59 = dispatch thunk of static Comparable.> infix(_:_:)();
  v103 = *(v39 + 8);
  v104 = v39 + 8;
  v103(v54, AssociatedTypeWitness);
  if ((v59 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((dispatch thunk of static Comparable.>= infix(_:_:)() & 1) == 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v60 = v106;
  v61 = v109;
  v86 = *(v106 + 16);
  v86(v37, v111, v109);
  if (sub_1C93A4810(v37, 1, AssociatedTypeWitness) != 1)
  {
    v62 = v39;
    (*(v39 + 32))(v48, v37, AssociatedTypeWitness);
    sub_1C93EFF60();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v63 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v64 = v103;
    v103(v54, AssociatedTypeWitness);
    v64(v48, AssociatedTypeWitness);
    if (v63)
    {
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    return;
  }

  (*(v60 + 8))(v37, v61);
  v62 = v39;
LABEL_7:
  v65 = v94;
  v66 = v61;
  v67 = v105;
  (*(v107 + 16))(v94, v108, v105);
  v68 = *(v62 + 16);
  v68(v54, v113, AssociatedTypeWitness);
  v68(v88, v112, AssociatedTypeWitness);
  v69 = v89;
  v86(v89, v111, v66);
  v70 = v87;
  sub_1C93E9F90();
  v84 = v70;
  v71 = v62;
  v72 = v99;
  v73 = v110;
  sub_1C93EA058(v95, v96, v65, v110, v54, v69, 0, v99, v84, MEMORY[0x1E69E7CD0], v67);
  if (v73)
  {
    sub_1C93EFF60();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v74 = v92;
    (*(v71 + 40))(&v72[*(v92 + 60)], v54, AssociatedTypeWitness);
  }

  else
  {
    v74 = v92;
    (*(v71 + 24))(&v72[*(v92 + 60)], &v72[*(v92 + 44)], AssociatedTypeWitness);
  }

  v75 = v93;
  v76 = v91;
  v77 = v100;
  v78 = v97;
  (*(v100 + 16))(v97, v72, v74);
  v79 = v101;
  *v101 = 0;
  v80 = *(v98 + 28);
  v81 = type metadata accessor for _Cell();
  sub_1C93A5A08(v81);
  bzero(&v79[v80], *(v82 + 64));
  (*(v77 + 32))(&v79[v80], v78, v74);
  (*(v106 + 8))(v111, v109);
  v83 = v103;
  v103(v112, AssociatedTypeWitness);
  v83(v113, AssociatedTypeWitness);
  (*(v107 + 8))(v108, v105);
  memcpy(v75 + *(*v75 + 96), v79, v76);
  (*(v77 + 8))(v72, v74);
  sub_1C93A5B58();
}

uint64_t sub_1C93EB598(uint64_t a1)
{
  v35 = sub_1C93A1890(&qword_1EC39B5C8, &unk_1C9404820);
  v31 = *(v35 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - v3;
  v4 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v30 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v30 - v10;
  v12 = type metadata accessor for ExponentialBackoff.State();
  v13 = v12;
  *(a1 + v12[14]) = 0;
  v14 = v12[10];
  v36 = a1;
  if (*(a1 + v14))
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v15 = *(swift_getAssociatedConformanceWitness() + 8);
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v16 = v36;
    (*(v8 + 40))(v36 + v13[15], v11, AssociatedTypeWitness);
  }

  else
  {
    v16 = v36;
    (*(v8 + 24))(v36 + v12[15], v36 + v12[11], AssociatedTypeWitness);
  }

  v17 = *(v16 + v13[16]);
  v18 = v17 + 56;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 56);
  v22 = (v19 + 63) >> 6;
  v23 = (v31 + 8);
  v36 = v17;

  for (i = 0; v21; result = sub_1C93A4838(v28, &qword_1EC39B5F8, qword_1C9404A00))
  {
    v26 = i;
LABEL_12:
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v28 = v32;
    sub_1C93EFDB4(*(v36 + 48) + *(v33 + 72) * (v27 | (v26 << 6)), v32, &qword_1EC39B5F8, qword_1C9404A00);
    sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
    v29 = v34;
    AsyncStream.Continuation.yield(_:)();
    (*v23)(v29, v35);
  }

  while (1)
  {
    v26 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
    }

    v21 = *(v18 + 8 * v26);
    ++i;
    if (v21)
    {
      i = v26;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1C93EB9A4(void (*a1)(void))
{
  v3 = *v1;
  sub_1C93EFF10();
  v5 = (v1 + *(v4 + 96));
  os_unfair_lock_lock(v5);
  sub_1C93EFF10();
  v7 = *(v6 + 80);
  v8 = *(v3 + 88);
  v9 = *(sub_1C93EFEC8() + 28);
  sub_1C93EFF1C();
  a1();

  j__os_unfair_lock_unlock(v5);
}

int *sub_1C93EBA70(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v18 - v5;
  result = type metadata accessor for ExponentialBackoff.State();
  v8 = result[14];
  v9 = *(a1 + v8);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    *(a1 + v8) = v11;
    v13 = *(a1 + result[10]);
    if (v11 >= v13)
    {
      if (v11 == v13)
      {
        return (*(v3 + 24))(a1 + result[15], a1 + result[11], AssociatedTypeWitness);
      }

      else if (v13 < v11)
      {
        v19 = result[15];
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v15 = v19;
        dispatch thunk of static DurationProtocol.*= infix(_:_:)();
        v16 = *(AssociatedConformanceWitness + 16);
        v17 = a1 + v12[12];
        min<A>(_:_:)();
        return (*(v3 + 40))(a1 + v15, v6, AssociatedTypeWitness);
      }
    }
  }

  return result;
}

uint64_t _s17CloudCoreInternal18ExponentialBackoffC3run9isolation_qd__ScA_pSgYi_qd__yYaKYTXEtYaKlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v9 = *v6;
  v10 = type metadata accessor for CancellationError();
  v7[12] = v10;
  sub_1C939ED4C(v10);
  v7[13] = v11;
  v13 = *(v12 + 64);
  v7[14] = sub_1C93DA730();
  v14 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  sub_1C93A5A08(v14);
  v16 = *(v15 + 64);
  v7[15] = sub_1C93DA730();
  v7[16] = *(v9 + 88);
  v7[17] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[18] = AssociatedTypeWitness;
  sub_1C939ED4C(AssociatedTypeWitness);
  v7[19] = v18;
  v20 = *(v19 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v7[22] = v21;
  v7[23] = v23;

  return MEMORY[0x1EEE6DFA0](sub_1C93EBE44, v21, v23);
}

uint64_t sub_1C93EBE44()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[11];
  ExponentialBackoff.currentDelay.getter();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v9 = *(v8 + 8);
  LOBYTE(v7) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if ((v7 & 1) == 0)
  {
    if (qword_1EE02B450 != -1)
    {
      swift_once();
    }

    v11 = v0[11];
    v12 = type metadata accessor for Logger();
    sub_1C93D9664(v12, qword_1EE02B458);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[21];
      v16 = v0[18];
      v17 = v0[11];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315394;
      v20 = ExponentialBackoff.label.getter();
      v22 = sub_1C93D969C(v20, v21, &v39);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      ExponentialBackoff.currentDelay.getter();
      v23 = String.init<A>(describing:)();
      v25 = sub_1C93D969C(v23, v24, &v39);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_1C939C000, v13, v14, "%s: delaying next iteration for %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA884B0](v19, -1, -1);
      MEMORY[0x1CCA884B0](v18, -1, -1);
    }
  }

  v26 = v0[15];
  v28 = v0[10];
  v27 = v0[11];
  v29 = type metadata accessor for TaskPriority();
  sub_1C93A1710(v26, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v28;
  v30[5] = v27;
  v0[2] = &unk_1C9404968;
  v0[3] = v30;

  v31 = sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
  v32 = swift_task_alloc();
  v0[24] = v32;
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v26;
  v32[5] = v0 + 2;
  v32[6] = 0;
  v32[7] = 0;
  v33 = *(MEMORY[0x1E69E88A0] + 4);
  v34 = swift_task_alloc();
  v0[25] = v34;
  *v34 = v0;
  v34[1] = sub_1C93EC20C;
  v35 = v0[6];
  v36 = v0[7];

  return MEMORY[0x1EEE6DD58](v34, v31);
}

uint64_t sub_1C93EC20C()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = v2;
  sub_1C93E3D8C();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  sub_1C93B5C54();
  *v8 = v7;
  v3[26] = v0;

  if (v0)
  {
    v9 = v3[22];
    v10 = v3[23];
    v11 = sub_1C93EC448;
  }

  else
  {
    v12 = v3[24];

    v9 = v3[22];
    v10 = v3[23];
    v11 = sub_1C93EC314;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1C93EC314()
{
  sub_1C93DA724();
  v1 = v0[15];
  v2 = v0[3];

  sub_1C93A4838(v1, &qword_1EC39ADF0, &qword_1C9404940);
  v3 = v0[26];
  static Task<>.checkCancellation()();
  if (v3)
  {
    v5 = v0[20];
    v4 = v0[21];
    v7 = v0[14];
    v6 = v0[15];

    sub_1C939D510();

    return v8();
  }

  else
  {
    sub_1C93EFE60();
    v11 = *(v10 + 4);
    v12 = swift_task_alloc();
    v0[27] = v12;
    *v12 = v0;
    v13 = sub_1C93EFE98(v12);

    return v14(v13);
  }
}

uint64_t sub_1C93EC448()
{
  sub_1C93DA724();
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);

  v6 = *(v0 + 24);

  sub_1C93A4838(v3, &qword_1EC39ADF0, &qword_1C9404940);
  *(v0 + 32) = v1;
  v7 = v1;
  sub_1C93A1890(&qword_1EC39B3B0, "T8");
  sub_1C93E1B08();
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 96);

    v11 = *(v9 + 8);
    v12 = sub_1C93BD618();
    v13(v12);

    static Task<>.checkCancellation()();
    sub_1C93EFE60();
    v15 = *(v14 + 4);
    v16 = swift_task_alloc();
    *(v0 + 216) = v16;
    *v16 = v0;
    v17 = sub_1C93EFE98(v16);

    return v18(v17);
  }

  else
  {

    v20 = *(v0 + 208);
    v22 = *(v0 + 160);
    v21 = *(v0 + 168);
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);

    sub_1C939D510();

    return v25();
  }
}

uint64_t sub_1C93EC600()
{
  sub_1C93DA724();
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *v0;
  sub_1C93B5C54();
  *v4 = v3;

  v5 = v1[21];
  v6 = v1[20];
  v7 = v1[15];
  v8 = v1[14];

  v9 = *(v3 + 8);

  return v9();
}

uint64_t sub_1C93EC768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a2;
  v7 = *a5;
  v6[5] = *(*a5 + 88);
  v8 = *(v7 + 80);
  v6[6] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[7] = AssociatedTypeWitness;
  v10 = type metadata accessor for Optional();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = *(AssociatedTypeWitness - 8);
  v6[11] = v13;
  v14 = *(v13 + 64) + 15;
  v6[12] = swift_task_alloc();
  v15 = *(v8 - 8);
  v6[13] = v15;
  v16 = *(v15 + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93EC928, 0, 0);
}

uint64_t sub_1C93EC928()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(*v3 + 96);
  *(v0 + 120) = v6;
  v7 = (v3 + v6);
  os_unfair_lock_lock((v3 + v6));
  *(v0 + 128) = type metadata accessor for ExponentialBackoff.State();
  v8 = *(type metadata accessor for Mutex() + 28);
  *(v0 + 152) = v8;
  sub_1C93ECFE0(v7 + v8, v5);
  v9 = *(v0 + 112);
  v10 = *(v0 + 96);
  v11 = *(v0 + 80);
  v12 = *(v0 + 24);
  j__os_unfair_lock_unlock(v7);
  ExponentialBackoff.clock.getter();
  ExponentialBackoff.currentDelay.getter();
  ExponentialBackoff.tolerance.getter();
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_1C93ECB0C;
  v14 = *(v0 + 112);
  v15 = *(v0 + 96);
  v16 = *(v0 + 80);
  v18 = *(v0 + 40);
  v17 = *(v0 + 48);

  return sub_1C93ED0F8(v15, v16, v17, v18);
}

uint64_t sub_1C93ECB0C()
{
  v2 = *v1;
  sub_1C93E3D8C();
  *v4 = v3;
  v5 = v2[17];
  *v4 = *v1;
  *(v3 + 144) = v0;

  v18 = v2[14];
  v6 = v2[13];
  v7 = v2[12];
  v8 = v2[11];
  v9 = v2[10];
  v10 = v2[9];
  v11 = v2[8];
  v12 = v2[7];
  v13 = v2[6];
  if (v0)
  {

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    (*(v10 + 8))(v2[10], v2[8]);
  }

  (*(v8 + 8))(v7, v12);
  (*(v6 + 8))(v18, v13);
  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

void sub_1C93ECD88()
{
  sub_1C93DA798();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  os_unfair_lock_lock((*(v0 + 24) + *(v0 + 120)));
  sub_1C93EFFA8();
  sub_1C93ED514(v7);
  v8 = *(v0 + 128);
  if (!v1)
  {
    sub_1C93EFFB4();
    j__os_unfair_lock_unlock((v12 + v11));

    sub_1C939D510();
    sub_1C93DA880();

    __asm { BRAA            X1, X16 }
  }

  sub_1C93EFF50(*(v0 + 120));
  sub_1C93DA880();

  j__os_unfair_lock_unlock(v9);
}

uint64_t sub_1C93ECEAC()
{
  sub_1C93DA798();
  v1 = *(v0 + 152);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  os_unfair_lock_lock((*(v0 + 24) + *(v0 + 120)));
  sub_1C93EFF1C();
  sub_1C93ED514(v6);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  sub_1C93EFFB4();
  j__os_unfair_lock_unlock((v10 + v9));

  sub_1C939D510();

  return v11();
}

uint64_t sub_1C93ECFE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  sub_1C93EFDB4(a2, v8, &qword_1EC39B5F8, qword_1C9404A00);
  v11 = a1 + *(type metadata accessor for ExponentialBackoff.State() + 64);
  sub_1C93EDC48(v10, v8);
  return sub_1C93A4838(v10, &qword_1EC39B5F8, qword_1C9404A00);
}

uint64_t sub_1C93ED0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93ED1E4, 0, 0);
}

uint64_t sub_1C93ED1E4()
{
  sub_1C93DA798();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v0[2];
  dispatch thunk of Clock.now.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of InstantProtocol.advanced(by:)();
  v0[11] = *(v4 + 8);
  v0[12] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = sub_1C93A8E10();
  v10(v9);
  v11 = *(MEMORY[0x1E69E8938] + 4);
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_1C93ED314;
  v13 = v0[10];
  v14 = v0[5];
  v15 = v0[6];
  v16 = v0[3];
  v17 = v0[4];

  return MEMORY[0x1EEE6DE58](v13, v16, v17, v14);
}

uint64_t sub_1C93ED314()
{
  sub_1C93DA724();
  sub_1C939D504();
  v3 = v2;
  sub_1C93E3D8C();
  *v4 = v3;
  v6 = v5[13];
  v7 = v5[12];
  v8 = v5[11];
  v9 = v5[10];
  v10 = v5[7];
  v11 = *v1;
  sub_1C93B5C54();
  *v12 = v11;
  v3[14] = v0;

  v13 = sub_1C93A8E10();
  v8(v13);
  if (v0)
  {
    sub_1C93DA690();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  else
  {
    v18 = v3[9];
    v17 = v3[10];

    sub_1C939D510();

    return v19();
  }
}

uint64_t sub_1C93ED4B0()
{
  sub_1C939ED74();
  v2 = v0[9];
  v1 = v0[10];

  sub_1C939D510();
  v4 = v0[14];

  return v3();
}

uint64_t sub_1C93ED514(uint64_t a1)
{
  v2 = sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - v4;
  v6 = a1 + *(type metadata accessor for ExponentialBackoff.State() + 64);
  sub_1C93EEA50(v5);
  return sub_1C93A4838(v5, &qword_1EC39B628, &qword_1C9404A88);
}

uint64_t *ExponentialBackoff.deinit()
{
  v1 = *v0;
  sub_1C93EFFC8();
  v3 = v0 + *(v2 + 96);
  v5 = *(v4 + 80);
  sub_1C93EFFC8();
  v7 = *(v6 + 88);
  type metadata accessor for ExponentialBackoff.State();
  sub_1C93EFF28();
  v8 = *(type metadata accessor for Mutex() + 28);
  sub_1C93EFF28();
  v9 = type metadata accessor for _Cell();
  sub_1C93EEFBC(v9);
  return v0;
}

uint64_t ExponentialBackoff.__deallocating_deinit()
{
  ExponentialBackoff.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void ExponentialBackoff.propertyDescriptions.getter()
{
  sub_1C93A5B40();
  v0 = type metadata accessor for OSLogPrivacy();
  v1 = sub_1C93A5A08(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C93A59B8();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v10 = (type metadata accessor for PropertyDescription() - 8);
  v11 = *v10;
  v33 = *(*v10 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C93FE890;
  v14 = (v13 + v12);
  v15 = ExponentialBackoff.label.getter();
  v17 = v16;

  static OSLogPrivacy.auto.getter();
  v34 = v15;
  v35 = v17;
  v18 = String.init<A>(describing:)();
  v20 = v19;
  v21 = sub_1C93E1B08();
  sub_1C93A86A8(v21, v22);
  v23 = v10[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v9);
  *v14 = 0x6C6562616CLL;
  v14[1] = 0xE500000000000000;
  v14[2] = v18;
  v14[3] = v20;
  sub_1C93A8768(v6, v14 + v23);

  v24 = (v14 + v33);
  v25 = ExponentialBackoff.currentBackoffCount.getter();
  static OSLogPrivacy.auto.getter();
  v34 = v25;
  v26 = String.init<A>(describing:)();
  v28 = v27;
  v29 = sub_1C93E1B08();
  sub_1C93A86A8(v29, v30);
  v31 = v10[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v9);
  *v24 = 0xD000000000000013;
  v24[1] = 0x80000001C9406950;
  v24[2] = v26;
  v24[3] = v28;
  sub_1C93A8768(v6, v24 + v31);
  sub_1C93A5B58();
}

uint64_t sub_1C93ED91C(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return PropertyDescribable<>.description.getter(a1, WitnessTable);
}

uint64_t sub_1C93EDA50(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1C93EDAE4()
{
  sub_1C93DA724();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1C93B5C44(v5);
  *v6 = v7;
  v8 = sub_1C93EFF34(v6);

  return sub_1C93EC768(v8, v9, v10, v11, v3, v4);
}

uint64_t sub_1C93EDB8C()
{
  sub_1C93DA798();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_1C93B5C44(v7);
  *v8 = v9;
  sub_1C93EFF34(v8);

  return sub_1C93E8984();
}

BOOL sub_1C93EDC48(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v24 - v9;
  v25 = v2;
  v10 = *v2;
  v11 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  sub_1C93EFE14(&qword_1EE02B3A0, &qword_1EC39B5D0, &qword_1C9404AB0);
  v28 = a2;
  dispatch thunk of Hashable.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = ~(-1 << *(v10 + 32));
  while (1)
  {
    v14 = v12 & v13;
    v15 = (1 << (v12 & v13)) & *(v10 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v15)
    {
      v18 = v25;
      v19 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v28;
      v22 = v24;
      sub_1C93EFDB4(v28, v24, &qword_1EC39B5F8, qword_1C9404A00);
      v29 = *v18;
      sub_1C93EE240(v22, v14, isUniquelyReferenced_nonNull_native);
      *v18 = v29;
      sub_1C93EFC18(v21, v26);
      return v15 == 0;
    }

    v16 = *(v27 + 72) * v14;
    sub_1C93EFDB4(*(v10 + 48) + v16, v8, &qword_1EC39B5F8, qword_1C9404A00);
    v17 = static AsyncStream.Continuation.== infix(_:_:)();
    sub_1C93A4838(v8, &qword_1EC39B5F8, qword_1C9404A00);
    if (v17)
    {
      break;
    }

    v12 = v14 + 1;
  }

  sub_1C93A4838(v28, &qword_1EC39B5F8, qword_1C9404A00);
  sub_1C93EFDB4(*(v10 + 48) + v16, v26, &qword_1EC39B5F8, qword_1C9404A00);
  return v15 == 0;
}

uint64_t sub_1C93EDEF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C93A1890(&qword_1EC39B630, &qword_1C9404A90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v34 = v2;
  v35 = v8;
  v12 = 0;
  v13 = (v8 + 56);
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
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      sub_1C93EE4B0(0, (v32 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v8 + 48);
    v37 = *(v36 + 72);
    sub_1C93EFC18(v22 + v37 * (v19 | (v12 << 6)), v7);
    v23 = *(v11 + 40);
    Hasher.init(_seed:)();
    sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
    sub_1C93EFE14(&qword_1EE02B3A0, &qword_1EC39B5D0, &qword_1C9404AB0);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v11 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = sub_1C93EFC18(v7, *(v11 + 48) + v27 * v37);
    ++*(v11 + 16);
    v8 = v35;
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

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C93EE240(uint64_t a1, unint64_t a2, char a3)
{
  v26 = a1;
  v6 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - v10;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v24 = v9;
      sub_1C93EDEF8(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      v24 = v9;
      sub_1C93EE728(v12 + 1);
LABEL_8:
      v25 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      Hasher.init(_seed:)();
      sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
      sub_1C93EFE14(&qword_1EE02B3A0, &qword_1EC39B5D0, &qword_1C9404AB0);
      dispatch thunk of Hashable.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        sub_1C93EFDB4(*(v14 + 48) + *(v7 + 72) * a2, v11, &qword_1EC39B5F8, qword_1C9404A00);
        v18 = static AsyncStream.Continuation.== infix(_:_:)();
        sub_1C93A4838(v11, &qword_1EC39B5F8, qword_1C9404A00);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v25;
      goto LABEL_13;
    }

    sub_1C93EE514();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1C93EFC18(v26, *(v19 + 48) + *(v7 + 72) * a2);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_1C93EE4B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C93FD260;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_1C93EE514()
{
  v1 = v0;
  v2 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - v5;
  sub_1C93A1890(&qword_1EC39B630, &qword_1C9404A90);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v24 = v1;
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
    v16 = *(v7 + 56);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1C93EFDB4(*(v7 + 48) + v22, v6, &qword_1EC39B5F8, qword_1C9404A00);
        result = sub_1C93EFC18(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
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

uint64_t sub_1C93EE728(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C93A1890(&qword_1EC39B630, &qword_1C9404A90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
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
    v18 = result + 56;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v8 + 48);
        v36 = *(v35 + 72);
        sub_1C93EFDB4(v22 + v36 * (v19 | (v12 << 6)), v7, &qword_1EC39B5F8, qword_1C9404A00);
        v23 = *(v11 + 40);
        Hasher.init(_seed:)();
        sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
        sub_1C93EFE14(&qword_1EE02B3A0, &qword_1EC39B5D0, &qword_1C9404AB0);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v24 = -1 << *(v11 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        result = sub_1C93EFC18(v7, *(v11 + 48) + v27 * v36);
        ++*(v11 + 16);
        v8 = v34;
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

          v2 = v33;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1C93EEA50@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v23 = *(v21 - 8);
  v2 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v19 - v3;
  v20 = v1;
  v5 = *v1;
  v6 = *(*v1 + 40);
  Hasher.init(_seed:)();
  sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  sub_1C93EFE14(&qword_1EE02B3A0, &qword_1EC39B5D0, &qword_1C9404AB0);
  dispatch thunk of Hashable.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      v12 = 1;
      v13 = v22;
      return sub_1C93A1710(v13, v12, 1, v21);
    }

    v10 = *(v23 + 72) * v9;
    sub_1C93EFDB4(*(v5 + 48) + v10, v4, &qword_1EC39B5F8, qword_1C9404A00);
    v11 = static AsyncStream.Continuation.== infix(_:_:)();
    sub_1C93A4838(v4, &qword_1EC39B5F8, qword_1C9404A00);
    if (v11)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v14 = v20;
  v15 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v14;
  v24 = *v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C93EE514();
    v17 = v24;
  }

  v13 = v22;
  sub_1C93EFC18(*(v17 + 48) + v10, v22);
  sub_1C93EECA0(v9);
  v12 = 0;
  *v14 = v24;
  return sub_1C93A1710(v13, v12, 1, v21);
}

uint64_t sub_1C93EECA0(int64_t a1)
{
  v31 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v31);
  v34 = &v31 - v6;
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    v12 = *v1;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v32 = v7;
      v33 = v8;
      v14 = (v13 + 1) & v11;
      v35 = *(v3 + 72);
      v15 = v34;
      while (1)
      {
        v16 = v35 * v10;
        sub_1C93EFDB4(*(v7 + 48) + v35 * v10, v15, &qword_1EC39B5F8, qword_1C9404A00);
        v17 = *(v7 + 40);
        Hasher.init(_seed:)();
        sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
        sub_1C93EFE14(&qword_1EE02B3A0, &qword_1EC39B5D0, &qword_1C9404AB0);
        v18 = v14;
        dispatch thunk of Hashable.hash(into:)();
        v19 = Hasher._finalize()();
        sub_1C93A4838(v15, &qword_1EC39B5F8, qword_1C9404A00);
        v20 = v19 & v11;
        v14 = v18;
        if (a1 >= v18)
        {
          if (v20 < v18 || a1 < v20)
          {
LABEL_20:
            v7 = v32;
            goto LABEL_24;
          }
        }

        else if (v20 < v18 && a1 < v20)
        {
          goto LABEL_20;
        }

        v7 = v32;
        v22 = *(v32 + 48);
        v23 = v35 * a1;
        v24 = v22 + v35 * a1;
        v25 = v22 + v16 + v35;
        if (v35 * a1 < v16 || v24 >= v25)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          a1 = v10;
          goto LABEL_24;
        }

        a1 = v10;
        if (v23 != v16)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v11;
        if (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          v8 = v33;
          goto LABEL_28;
        }
      }
    }

LABEL_28:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v28 = *(v7 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v30;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1C93EEFCC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C93EF00C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for ExponentialBackoff.State();
  result = type metadata accessor for Mutex();
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

uint64_t sub_1C93EF0F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      v7 = type metadata accessor for Optional();
      if (v8 > 0x3F)
      {
        return v7;
      }

      else
      {
        sub_1C93EF814();
        AssociatedTypeWitness = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1C93EF210(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  v12 = v10 - 1;
  if (!v10)
  {
    v12 = 0;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (v11 <= v10)
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v11;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  v16 = *(v9 + 80);
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  v18 = v17 + 7;
  if (v10)
  {
    v19 = v17 + 7;
  }

  else
  {
    v19 = v17 + 8;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = AssociatedTypeWitness;
  v21 = *(v6 + 64) + 7;
  v22 = v16 + 8;
  v23 = v17 + v16;
  if (v14 >= a2)
  {
LABEL_37:
    if ((v13 & 0x80000000) == 0)
    {
      v31 = *(a1 + 1);
      if (v31 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      return (v31 + 1);
    }

    v32 = (a1 + v15 + 16) & ~v15;
    if (v7 == v14)
    {
      v10 = v7;
      v20 = v5;
LABEL_44:

      return sub_1C93A4810(v32, v10, v20);
    }

    v33 = ~v16;
    v32 = (v22 + ((v21 + v32) & 0xFFFFFFFFFFFFFFF8)) & v33;
    if (v10 == v14)
    {
      goto LABEL_44;
    }

    if (v10 >= 2)
    {
      v34 = sub_1C93A4810((v23 + ((v23 + v32) & v33)) & v33, v10, v20);
      if (v34 >= 2)
      {
        return v34 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  result = ((v18 + ((v22 + ((v19 + ((v23 + ((v23 + ((v22 + ((v21 + ((v15 + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v16)) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((result & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v14 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  switch(v27)
  {
    case 1:
      v28 = *(a1 + result);
      if (!*(a1 + result))
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 2:
      v28 = *(a1 + result);
      if (!*(a1 + result))
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 3:
      __break(1u);
      return result;
    case 4:
      v28 = *(a1 + result);
      if (!v28)
      {
        goto LABEL_37;
      }

LABEL_34:
      v29 = v28 - 1;
      if ((result & 0xFFFFFFF8) != 0)
      {
        v29 = 0;
        v30 = *a1;
      }

      else
      {
        v30 = 0;
      }

      result = v14 + (v30 | v29) + 1;
      break;
    default:
      goto LABEL_37;
  }

  return result;
}

void sub_1C93EF4EC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  if (v9 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v9;
  }

  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  if (v14 <= v15)
  {
    v14 = v15;
  }

  if (v14 <= v13)
  {
    v16 = *(v12 + 84);
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = *(v8 + 64) + 7;
  v20 = *(v12 + 80);
  v21 = v20 + 8;
  v22 = *(*(AssociatedTypeWitness - 8) + 64);
  v23 = v22 + v20;
  v24 = (v22 + v20 + ((v22 + v20 + ((v20 + 8 + ((v19 + ((v18 + 16) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v20)) & ~v20;
  v25 = v22 + 7;
  v26 = v22 + 8;
  if (v13)
  {
    v26 = v25;
  }

  v27 = ((v25 + ((v21 + ((v26 + v24) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 < a3)
  {
    if (((v25 + ((v21 + ((v26 + v24) & 0xFFFFFFF8)) & ~v20)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a3 - v17 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v11 = v29;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 <= v17)
  {
    v32 = ~v20;
    switch(v11)
    {
      case 1:
        *(a1 + v27) = 0;
        if (a2)
        {
          goto LABEL_43;
        }

        return;
      case 2:
        *(a1 + v27) = 0;
        if (a2)
        {
          goto LABEL_43;
        }

        return;
      case 3:
LABEL_59:
        __break(1u);
        return;
      case 4:
        *(a1 + v27) = 0;
        goto LABEL_42;
      default:
LABEL_42:
        if (!a2)
        {
          return;
        }

LABEL_43:
        if ((v16 & 0x80000000) != 0)
        {
          v33 = (a1 + v18 + 16) & ~v18;
          if (v9 == v17)
          {
            v34 = a2;
            v13 = v9;
            AssociatedTypeWitness = v7;
          }

          else
          {
            v33 = (v21 + ((v19 + v33) & 0xFFFFFFFFFFFFFFF8)) & v32;
            if (v13 == v17)
            {
              v34 = a2;
            }

            else
            {
              if (v13 < 2)
              {
                return;
              }

              v33 = (v23 + ((v23 + v33) & v32)) & v32;
              v34 = (a2 + 1);
            }
          }

          sub_1C93A1710(v33, v34, v13, AssociatedTypeWitness);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }

        break;
    }
  }

  else
  {
    if (v27)
    {
      v30 = 1;
    }

    else
    {
      v30 = a2 - v17;
    }

    if (v27)
    {
      v31 = ~v17 + a2;
      bzero(a1, v27);
      *a1 = v31;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v27) = v30;
        break;
      case 2:
        *(a1 + v27) = v30;
        break;
      case 3:
        goto LABEL_59;
      case 4:
        *(a1 + v27) = v30;
        break;
      default:
        return;
    }
  }
}

void sub_1C93EF814()
{
  if (!qword_1EE02B308)
  {
    sub_1C93B27AC(&qword_1EC39B5F8, qword_1C9404A00);
    sub_1C93EFE14(qword_1EE02B310, &qword_1EC39B5F8, qword_1C9404A00);
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE02B308);
    }
  }
}

uint64_t sub_1C93EF8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C93EFE5C;

  return sub_1C93E93AC(a2, a3, a4);
}

uint64_t sub_1C93EF968()
{
  sub_1C93DA724();
  v1 = sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  sub_1C93A5A08(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = sub_1C93B5C44(v6);
  *v7 = v8;
  v7[1] = sub_1C93B5BC4;
  v9 = sub_1C93EFF94();

  return v10(v9);
}

uint64_t sub_1C93EFA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1C93EFB0C;

  return sub_1C93E9934(a2, a3, a4, a5);
}

uint64_t sub_1C93EFB0C()
{
  sub_1C93DA724();
  v3 = v2;
  v5 = v4;
  sub_1C939D504();
  v7 = v6;
  sub_1C93E3D8C();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  sub_1C93B5C54();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v7 + 16);
    *v13 = v5;
    *(v13 + 8) = v3;
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_1C93EFC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C93EFC88()
{
  sub_1C93DA798();
  v1 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  sub_1C93A5A08(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = sub_1C93B5C44(v7);
  *v8 = v9;
  v8[1] = sub_1C93B5BC4;
  sub_1C93EFF94();
  sub_1C93DA880();

  __asm { BR              X5 }
}

void sub_1C93EFD7C(void *a1, char a2)
{
  if (a2 != 254)
  {
    sub_1C93EFD90(a1, a2);
  }
}

void sub_1C93EFD90(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1C93EFDA8(a1, a2 & 1);
  }
}

void sub_1C93EFDA8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1C93EFDB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C93A1890(a3, a4);
  sub_1C939D430(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C93EFE14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C93B27AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C93EFE98(uint64_t a1)
{
  *(a1 + 8) = sub_1C93EC600;
  v2 = *(v1 + 72);
  return *(v1 + 40);
}

uint64_t sub_1C93EFEC8()
{
  type metadata accessor for ExponentialBackoff.State();

  return type metadata accessor for Mutex();
}

uint64_t sub_1C93EFF70(uint64_t a1)
{
  v3 = v1 + *(a1 + 28);

  return type metadata accessor for ExponentialBackoff.State();
}

void sub_1C93EFFB4()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[3];
}

uint64_t sub_1C93EFFD4()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[20];
  v5 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
}

uint64_t sub_1C93EFFF4()
{
  v1 = (v0 + *(*v0 + 96));
  os_unfair_lock_lock(v1);
  v2 = *(sub_1C93A1890(&qword_1EC39B600, &qword_1C9404A18) + 28);
  v3 = (v1 + v2 + *(sub_1C93A1890(&qword_1EC39B608, &qword_1C9404A20) + 60));
  v4 = *v3;
  v5 = v3[1];
  os_unfair_lock_unlock(v1);
  return v4;
}

void sub_1C93F0084()
{
  v1 = (v0 + *(*v0 + 96));
  os_unfair_lock_lock(v1);
  v2 = sub_1C93A1890(&qword_1EC39B600, &qword_1C9404A18);
  sub_1C93F0100(v1 + *(v2 + 28));
  os_unfair_lock_unlock(v1);
}

uint64_t sub_1C93F0100(uint64_t a1)
{
  v30 = sub_1C93A1890(&qword_1EC39B5C8, &unk_1C9404820);
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v28 = &v27 - v4;
  v5 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = sub_1C93A1890(&qword_1EC39B608, &qword_1C9404A20);
  v10 = v9;
  *(a1 + v9[14]) = 0;
  if (*(a1 + v9[10]))
  {
    v11 = static Duration.zero.getter();
    v13 = v10[15];
    *(a1 + v13) = v11;
  }

  else
  {
    v14 = (a1 + v9[11]);
    v13 = v9[15];
    v12 = v14[1];
    *(a1 + v13) = *v14;
  }

  *(a1 + v13 + 8) = v12;
  v15 = *(a1 + v10[16]);
  v16 = v15 + 56;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 56);
  v20 = (v17 + 63) >> 6;
  v21 = (v2 + 8);
  v31 = v15;

  v23 = 0;
  for (i = v28; v19; result = sub_1C93A4838(v8, &qword_1EC39B5F8, qword_1C9404A00))
  {
    v25 = v23;
LABEL_12:
    v26 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    sub_1C93EFDB4(*(v31 + 48) + *(v29 + 72) * (v26 | (v25 << 6)), v8, &qword_1EC39B5F8, qword_1C9404A00);
    sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
    AsyncStream.Continuation.yield(_:)();
    (*v21)(i, v30);
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
    }

    v19 = *(v16 + 8 * v25);
    ++v23;
    if (v19)
    {
      v23 = v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C93F0540@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);

  return sub_1C93A1710(a1, 1, 1, v2);
}

void sub_1C93F0594(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 128));
  os_unfair_lock_lock(v4);
  v6 = *(v3 + 80);
  v7 = *(v3 + 96);
  type metadata accessor for ExponentialNetworkBackoff.State();
  v5 = type metadata accessor for Mutex();
  sub_1C93EFDB4(v4 + *(v5 + 28), a1, &qword_1EC39B628, &qword_1C9404A88);
  sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);
  j__os_unfair_lock_unlock(v4);
}

uint64_t sub_1C93F0690(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 128));
  os_unfair_lock_lock(v3);
  v4 = sub_1C93A1890(&qword_1EC39B640, &qword_1C9404B68);
  sub_1C93F422C(a1, v3 + *(v4 + 28));
  os_unfair_lock_unlock(v3);
  return sub_1C93A4838(a1, &qword_1EC39B628, &qword_1C9404A88);
}

uint64_t sub_1C93F0714(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 128));
  os_unfair_lock_lock(v4);
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  type metadata accessor for ExponentialNetworkBackoff.State();
  v5 = type metadata accessor for Mutex();
  sub_1C93F422C(a1, v4 + *(v5 + 28));
  j__os_unfair_lock_unlock(v4);
  return sub_1C93A4838(a1, &qword_1EC39B628, &qword_1C9404A88);
}

void ExponentialNetworkBackoff.__allocating_init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:networkPathMonitor:)()
{
  sub_1C93A5B40();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ExponentialNetworkBackoff.init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:networkPathMonitor:)();
  sub_1C93A5B58();
}

uint64_t sub_1C93F088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v13 = v12;
  v50 = a7;
  v51 = a8;
  v48 = a5;
  v49 = a6;
  v46 = a2;
  v47 = a4;
  v44 = a9;
  v45 = a1;
  v43 = a10;
  HIDWORD(v42) = a11;
  v15 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v42 - v17;
  v19 = type metadata accessor for ContinuousClock();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C93A1890(&qword_1EC39B638, &qword_1C9404B60);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v42 - v26;
  v28 = (v12 + *(*v12 + 128));
  v29 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  sub_1C93A1710(v27, 1, 1, v29);
  *v28 = 0;
  v30 = *(sub_1C93A1890(&qword_1EC39B640, &qword_1C9404B68) + 28);
  v31 = sub_1C93A1890(&qword_1EC39B648, &qword_1C9404B70);
  bzero(v28 + v30, *(*(v31 - 8) + 64));
  sub_1C93F3E1C(v27, v28 + v30);
  (*(v20 + 16))(v23, a3, v19);
  v32 = sub_1C93A1890(&qword_1EC39B650, &qword_1C9404B78);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  LOBYTE(v40) = BYTE4(v42) & 1;
  sub_1C93EAAD4(v45, v46, v23, v47, v48, v49, v50, v51, v44, v43, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  *(v13 + 16) = v35;
  *(v13 + 24) = a12;
  v36 = type metadata accessor for TaskPriority();
  sub_1C93A1710(v18, 1, 1, v36);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v37;
  v38[5] = a12;

  sub_1C93F30EC(0, 0, v18, &unk_1C9404B88, v38);

  (*(v20 + 8))(a3, v19);
  return v13;
}

void ExponentialNetworkBackoff.init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:networkPathMonitor:)()
{
  sub_1C93A5B40();
  v1 = v0;
  v79 = v2;
  v80 = v3;
  v88 = v5;
  v89 = v4;
  v90 = v7;
  v91 = v6;
  v76 = v8;
  v77 = v9;
  v10 = *v0;
  v11 = *(*v0 + 88);
  sub_1C939D47C();
  v78 = v12;
  v82 = *(v13 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v68 - v15;
  v16 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  sub_1C93A5A08(v16);
  v18 = *(v17 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v68 - v20;
  v21 = v10[12];
  v22 = v10[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = type metadata accessor for Optional();
  sub_1C939D47C();
  v85 = v23;
  v25 = *(v24 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v26);
  v71 = &v68 - v27;
  sub_1C939D47C();
  v84 = v28;
  v30 = *(v29 + 64);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v70 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v69 = &v68 - v34;
  sub_1C939D47C();
  v36 = v35;
  v73 = v35;
  v38 = *(v37 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v68 - v40;
  *&v42 = v22;
  v68 = v11;
  *(&v42 + 1) = v11;
  v75 = v42;
  *&v43 = v21;
  *(&v43 + 1) = v10[13];
  v74 = v43;
  v93 = v43;
  v92 = v42;
  v44 = type metadata accessor for ExponentialNetworkBackoff.State();
  sub_1C939D430(v44);
  v46 = *(v45 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v68 - v48;
  v50 = &v1[v10[16]];
  sub_1C93F0540(&v68 - v48);
  *v50 = 0;
  v51 = *(type metadata accessor for Mutex() + 28);
  v52 = type metadata accessor for _Cell();
  sub_1C93A5A08(v52);
  bzero(&v50[v51], *(v53 + 64));
  sub_1C93EDAB0(v49, &v50[v51], v44);
  v72 = v22;
  type metadata accessor for ExponentialBackoff();
  (*(v36 + 16))(v41, v91, v22);
  v54 = AssociatedTypeWitness;
  v55 = *(v84 + 16);
  v55(v69, v90, AssociatedTypeWitness);
  v55(v70, v89, v54);
  (*(v85 + 16))(v71, v88, v87);
  *(v1 + 2) = ExponentialBackoff.__allocating_init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)();
  v56 = v78;
  v57 = *(v78 + 16);
  v58 = v80;
  v59 = v68;
  v57(&v1[*(*v1 + 120)], v80, v68);
  v60 = type metadata accessor for TaskPriority();
  sub_1C93A1710(v86, 1, 1, v60);
  sub_1C93F4654();
  v61 = swift_allocObject();
  swift_weakInit();
  v62 = v81;
  v57(v81, v58, v59);
  v63 = (*(v56 + 80) + 72) & ~*(v56 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  v65 = v74;
  *(v64 + 32) = v75;
  *(v64 + 48) = v65;
  *(v64 + 64) = v61;
  (*(v56 + 32))(v64 + v63, v62, v59);

  sub_1C93F30EC(0, 0, v86, &unk_1C9404AA0, v64);

  (*(v56 + 8))(v58, v59);
  (*(v85 + 8))(v88, v87);
  v66 = AssociatedTypeWitness;
  v67 = *(v84 + 8);
  v67(v89, AssociatedTypeWitness);
  v67(v90, v66);
  (*(v73 + 8))(v91, v72);
  sub_1C93A5B58();
}

uint64_t sub_1C93F1268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v6 = *(*(sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93F1308, 0, 0);
}

uint64_t sub_1C93F1308()
{
  sub_1C93DA69C();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = type metadata accessor for TaskPriority();
  sub_1C93A1710(v1, 1, 1, v4);
  sub_1C93F4654();
  v5 = swift_allocObject();
  sub_1C93F45C4();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v6[5] = v2;
  v0[5] = &unk_1C9404BA0;
  v0[6] = v6;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C93F1404()
{
  sub_1C93DA69C();
  v1 = v0[10];
  sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
  v2 = swift_task_alloc();
  v0[11] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v1;
  v2[5] = v0 + 5;
  v2[6] = 0;
  v2[7] = 0;
  v3 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[12] = v4;
  *v4 = v5;
  v4[1] = sub_1C93F14FC;
  v6 = v0[7];
  sub_1C93F4588();

  return MEMORY[0x1EEE6DD58](v7, v8);
}

uint64_t sub_1C93F14FC()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = v2;
  v4 = *(v2 + 96);
  v5 = *v1;
  sub_1C93B5C54();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v7 = *(v3 + 88);
  }

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C93F1604()
{
  sub_1C939ED74();
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  sub_1C93A4838(v1, &qword_1EC39ADF0, &qword_1C9404940);

  sub_1C939D624();

  return v3();
}

uint64_t sub_1C93F1680()
{
  sub_1C939ED74();
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[6];

  sub_1C93A4838(v2, &qword_1EC39ADF0, &qword_1C9404940);
  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C93F1700()
{
  sub_1C939ED74();
  v1 = *(v0 + 80);

  sub_1C939D510();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_1C93F175C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v13;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  v8[7] = a1;
  v9 = *(a7 - 8);
  v8[14] = v9;
  v8[15] = *(v9 + 64);
  v8[16] = swift_task_alloc();
  v10 = *(*(sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940) - 8) + 64) + 15;
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93F1860, 0, 0);
}

uint64_t sub_1C93F1860()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);
  v9 = type metadata accessor for TaskPriority();
  v17 = *(v0 + 88);
  sub_1C93A1710(v1, 1, 1, v9);
  sub_1C93F4654();
  v10 = swift_allocObject();
  sub_1C93F45C4();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v3 + 16))(v2, v6, v17);
  v11 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v7;
  *(v12 + 40) = v17;
  *(v12 + 56) = v5;
  *(v12 + 64) = v10;
  (*(v3 + 32))(v12 + v11, v2, v17);
  *(v0 + 40) = &unk_1C9404BC0;
  *(v0 + 48) = v12;
  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C93F19E0()
{
  sub_1C93DA69C();
  v1 = v0[17];
  sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
  v2 = swift_task_alloc();
  v0[18] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v1;
  v2[5] = v0 + 5;
  v2[6] = 0;
  v2[7] = 0;
  v3 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[19] = v4;
  *v4 = v5;
  v4[1] = sub_1C93F1AD8;
  v6 = v0[7];
  sub_1C93F4588();

  return MEMORY[0x1EEE6DD58](v7, v8);
}

uint64_t sub_1C93F1AD8()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = v2;
  v4 = *(v2 + 152);
  v5 = *v1;
  sub_1C93B5C54();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
    v7 = *(v3 + 144);
  }

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C93F1BE0()
{
  sub_1C939ED74();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[6];

  sub_1C93A4838(v2, &qword_1EC39ADF0, &qword_1C9404940);

  sub_1C939D624();

  return v4();
}

uint64_t sub_1C93F1C64()
{
  sub_1C939ED74();
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[6];

  sub_1C93A4838(v2, &qword_1EC39ADF0, &qword_1C9404940);
  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C93F1CE4()
{
  sub_1C939ED74();
  v2 = v0[16];
  v1 = v0[17];

  sub_1C939D510();
  v4 = v0[20];

  return v3();
}

uint64_t sub_1C93F1D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a2;
  v6[15] = *a6;
  v7 = *(*(sub_1C93A1890(&qword_1EC39B658, &qword_1C9404BB0) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v8 = type metadata accessor for NWPathMonitor.Iterator();
  v6[17] = v8;
  v9 = *(v8 - 8);
  v6[18] = v9;
  v10 = *(v9 + 64) + 15;
  v6[19] = swift_task_alloc();
  v11 = *(*(sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93F1EA4, 0, 0);
}

uint64_t sub_1C93F1EA4()
{
  v1 = v0[13];
  sub_1C93F45C4();
  if (swift_weakLoadStrong())
  {
    v2 = v0[20];
    sub_1C93EFDB4(v0[12], v2, &qword_1EC39B5F8, qword_1C9404A00);
    v3 = sub_1C93A8E10();
    v5 = sub_1C93A1890(v3, v4);
    sub_1C93A1710(v2, 0, 1, v5);
    sub_1C93F0690(v2);
  }

  v6 = v0[13];
  sub_1C93F45F0();
  if (swift_weakLoadStrong() && (, (static Task<>.isCancelled.getter() & 1) == 0))
  {
    v12 = v0[19];
    v13 = v0[15];
    v14 = v0[13];
    v0[11] = v0[14];
    sub_1C93F41E4(&qword_1EE02AD98, MEMORY[0x1E6977C88]);

    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    sub_1C93F45F0();
    sub_1C93F4570();
    sub_1C93F41E4(v15, v16);
    v17 = *(MEMORY[0x1E69E85B0] + 4);
    swift_task_alloc();
    sub_1C93DA6BC();
    v0[21] = v18;
    *v18 = v19;
    v18[1] = sub_1C93F20CC;
    v20 = v0[19];
    v21 = v0[16];
    v22 = v0[17];
    sub_1C93F455C();

    return MEMORY[0x1EEE6D8D0]();
  }

  else
  {
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[16];

    sub_1C939D624();

    return v10();
  }
}

uint64_t sub_1C93F20CC()
{
  sub_1C939ED74();
  sub_1C939D504();
  v2 = *(v1 + 168);
  v3 = *v0;
  sub_1C93B5C54();
  *v4 = v3;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C93F21C8()
{
  sub_1C93DA69C();
  v1 = v0[16];
  v2 = type metadata accessor for NWPath();
  if (sub_1C93A4810(v1, 1, v2) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
LABEL_11:
    v18 = v0[19];
    v17 = v0[20];
    v19 = v0[16];

    sub_1C939D624();

    return v20();
  }

  if ((static Task<>.isCancelled.getter() & 1) != 0 || (v3 = v0[13], (Strong = swift_weakLoadStrong()) == 0))
  {
    v16 = v0[16];
    (*(v0[18] + 8))(v0[19], v0[17]);
    sub_1C93A4838(v16, &qword_1EC39B658, &qword_1C9404BB0);
    goto LABEL_11;
  }

  v5 = Strong;
  v6 = *(Strong + 16);
  sub_1C93EFFF4();
  v8 = v7;
  static Duration.zero.getter();
  if (static Duration.== infix(_:_:)())
  {
    if (qword_1EE02B450 != -1)
    {
      sub_1C93F4520();
    }

    v9 = type metadata accessor for Logger();
    sub_1C93D9664(v9, qword_1EE02B458);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (!sub_1C93F45A8(v11))
    {
      goto LABEL_19;
    }

    v12 = sub_1C93F4680();
    sub_1C93F4648(v12);
    v15 = "NWPathMonitor indicated a network change while currentDelay is .zero";
  }

  else
  {
    if (qword_1EE02B450 != -1)
    {
      sub_1C93F4520();
    }

    v22 = type metadata accessor for Logger();
    sub_1C93D9664(v22, qword_1EE02B458);
    v10 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (!sub_1C93F45A8(v23))
    {
      goto LABEL_19;
    }

    v24 = sub_1C93F4680();
    sub_1C93F4648(v24);
    v15 = "NWPathMonitor indicated a network change, resetting our backoff";
  }

  sub_1C93F4660(&dword_1C939C000, v13, v14, v15);
  MEMORY[0x1CCA884B0](v8, -1, -1);
LABEL_19:
  v25 = v0[16];

  v26 = *(v5 + 16);
  sub_1C93F0084();

  sub_1C93A4838(v25, &qword_1EC39B658, &qword_1C9404BB0);
  sub_1C93F4570();
  sub_1C93F41E4(v27, v28);
  v29 = *(MEMORY[0x1E69E85B0] + 4);
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[21] = v30;
  *v30 = v31;
  v30[1] = sub_1C93F20CC;
  v32 = v0[19];
  v33 = v0[16];
  v34 = v0[17];
  sub_1C93F455C();

  return MEMORY[0x1EEE6D8D0]();
}

uint64_t sub_1C93F2494()
{
  sub_1C93DA69C();
  if (!_getErrorEmbeddedNSError<A>(_:)())
  {
    swift_allocError();
  }

  v1 = v0[20];
  v2 = v0[16];
  (*(v0[18] + 8))(v0[19], v0[17]);

  sub_1C939D510();

  return v3();
}

uint64_t sub_1C93F255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v27;
  v8[17] = v28;
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[18] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[19] = v11;
  v12 = *(v11 + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v8[22] = v13;
  v14 = *(v13 - 8);
  v8[23] = v14;
  v15 = *(v14 + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v8[27] = v16;
  v17 = *(v16 - 8);
  v8[28] = v17;
  v18 = *(v17 + 64) + 15;
  v8[29] = swift_task_alloc();
  v19 = *(a8 - 8);
  v8[30] = v19;
  v20 = *(v19 + 64) + 15;
  v8[31] = swift_task_alloc();
  v21 = swift_getAssociatedTypeWitness();
  v8[32] = v21;
  v22 = *(v21 - 8);
  v8[33] = v22;
  v23 = *(v22 + 64) + 15;
  v8[34] = swift_task_alloc();
  v24 = *(*(sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88) - 8) + 64) + 15;
  v8[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93F2860, 0, 0);
}

uint64_t sub_1C93F2860()
{
  sub_1C93DA798();
  v1 = v0[12];
  sub_1C93F45C4();
  if (swift_weakLoadStrong())
  {
    v2 = v0[35];
    sub_1C93EFDB4(v0[11], v2, &qword_1EC39B5F8, qword_1C9404A00);
    v3 = sub_1C93A8E10();
    v5 = sub_1C93A1890(v3, v4);
    sub_1C93A1710(v2, 0, 1, v5);
    sub_1C93F0714(v2);
  }

  v6 = v0[12];
  sub_1C93F45F0();
  if (swift_weakLoadStrong() && (, (static Task<>.isCancelled.getter() & 1) == 0))
  {
    v9 = v0[34];
    v10 = v0[17];
    v11 = v0[12];
    (*(v0[30] + 16))(v0[31], v0[13], v0[15]);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    sub_1C93F45F0();
    v12 = v0[32];
    v13 = v0[17];
    v14 = v0[15];
    v0[36] = swift_getAssociatedConformanceWitness();
    v15 = *(MEMORY[0x1E69E85B0] + 4);
    swift_task_alloc();
    sub_1C93DA6BC();
    v0[37] = v16;
    *v16 = v17;
    v16[1] = sub_1C93F2A94;
    v18 = v0[34];
    v19 = v0[32];
    v20 = v0[29];
    v21 = v0[25];
    sub_1C93F455C();

    return MEMORY[0x1EEE6D8D0]();
  }

  else
  {
    sub_1C93F4624();

    sub_1C939D624();

    return v7();
  }
}

uint64_t sub_1C93F2A94()
{
  sub_1C939ED74();
  sub_1C939D504();
  v2 = *(v1 + 296);
  v3 = *v0;
  sub_1C93B5C54();
  *v4 = v3;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C93F2B90()
{
  v1 = v0 + 29;
  if (sub_1C93A4810(v0[29], 1, v0[26]) == 1)
  {
    v2 = (v0[33] + 8);
    v1 = v0 + 34;
    v3 = v0 + 32;
    goto LABEL_11;
  }

  if ((static Task<>.isCancelled.getter() & 1) != 0 || (v4 = v0[12], !swift_weakLoadStrong()))
  {
    (*(v0[33] + 8))(v0[34], v0[32]);
    v3 = v0 + 27;
    v2 = (v0[28] + 8);
LABEL_11:
    (*v2)(*v1, *v3);
    sub_1C93F4624();

    sub_1C939D624();
    sub_1C93F4608();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[18];
  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[14];
  ExponentialNetworkBackoff.currentDelay.getter();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v12 = *(v11 + 8);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v8 + 8);
  v14(v6, v7);
  v15 = sub_1C93A8E10();
  (v14)(v15);
  if (v13)
  {
    if (qword_1EE02B450 != -1)
    {
      sub_1C93F4520();
    }

    v16 = type metadata accessor for Logger();
    sub_1C93D9664(v16, qword_1EE02B458);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (sub_1C93F45A8(v18))
    {
      v19 = sub_1C93F4680();
      sub_1C93F4648(v19);
      v22 = "NWPathMonitor indicated a network change while currentDelay is .zero";
LABEL_18:
      sub_1C93F4660(&dword_1C939C000, v20, v21, v22);
      MEMORY[0x1CCA884B0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_1EE02B450 != -1)
    {
      sub_1C93F4520();
    }

    v25 = type metadata accessor for Logger();
    sub_1C93D9664(v25, qword_1EE02B458);
    v17 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (sub_1C93F45A8(v26))
    {
      v27 = sub_1C93F4680();
      sub_1C93F4648(v27);
      v22 = "NWPathMonitor indicated a network change, resetting our backoff";
      goto LABEL_18;
    }
  }

  v29 = v0[28];
  v28 = v0[29];
  v30 = v0[27];

  ExponentialNetworkBackoff.reset()();

  v31 = *(v29 + 8);
  v32 = sub_1C93A8E10();
  v33(v32);
  v34 = v0[32];
  v35 = v0[17];
  v36 = v0[15];
  v0[36] = swift_getAssociatedConformanceWitness();
  v37 = *(MEMORY[0x1E69E85B0] + 4);
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[37] = v38;
  *v38 = v39;
  v38[1] = sub_1C93F2A94;
  v40 = v0[34];
  v41 = v0[32];
  v42 = v0[29];
  v43 = v0[25];
  sub_1C93F455C();
  sub_1C93F4608();

  return MEMORY[0x1EEE6D8D0]();
}

void sub_1C93F2F3C()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = *(v0[23] + 32);
  v3(v0[24], v0[25], v0[22]);
  swift_getAssociatedConformanceWitness();
  v4 = _getErrorEmbeddedNSError<A>(_:)();
  v5 = v0[24];
  if (v4)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
  }

  else
  {
    v6 = v0[22];
    swift_allocError();
    v3(v7, v5, v6);
  }

  v8 = v0[35];
  v9 = v0[31];
  v10 = v0[29];
  v12 = v0[24];
  v11 = v0[25];
  v14 = v0[20];
  v13 = v0[21];
  (*(v0[33] + 8))(v0[34], v0[32]);

  sub_1C939D510();
  sub_1C93F4608();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C93F30EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1C93EFDB4(a3, v23 - v10, &qword_1EC39ADF0, &qword_1C9404940);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_1C93A4810(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1C93A4838(v11, &qword_1EC39ADF0, &qword_1C9404940);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1C93A4838(a3, &qword_1EC39ADF0, &qword_1C9404940);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C93A4838(a3, &qword_1EC39ADF0, &qword_1C9404940);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void ExponentialNetworkBackoff.deinit()
{
  sub_1C93A5B40();
  v1 = v0;
  v2 = *v0;
  v3 = sub_1C93A1890(&qword_1EC39B5C8, &unk_1C9404820);
  sub_1C939D47C();
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  sub_1C939D430(v11);
  v13 = *(v12 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v31 - v15;
  v17 = sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);
  sub_1C93A5A08(v17);
  v19 = *(v18 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v31 - v21;
  sub_1C93F0594(v31 - v21);
  if (sub_1C93A4810(v22, 1, v11))
  {
    v23 = &qword_1EC39B628;
    v24 = &qword_1C9404A88;
    v25 = v22;
  }

  else
  {
    sub_1C93EFDB4(v22, v16, &qword_1EC39B5F8, qword_1C9404A00);
    sub_1C93A4838(v22, &qword_1EC39B628, &qword_1C9404A88);
    sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
    AsyncStream.Continuation.yield(_:)();
    (*(v5 + 8))(v10, v3);
    v25 = v16;
    v23 = &qword_1EC39B5F8;
    v24 = qword_1C9404A00;
  }

  sub_1C93A4838(v25, v23, v24);
  v26 = *(v0 + 2);

  v27 = *(v2 + 88);
  (*(*(v27 - 8) + 8))(&v1[*(*v1 + 120)], v27);
  v28 = *(*v1 + 128);
  v31[0] = *(v2 + 80);
  v31[1] = v27;
  v32 = *(v2 + 96);
  type metadata accessor for ExponentialNetworkBackoff.State();
  v29 = &v1[*(type metadata accessor for Mutex() + 28)];
  v30 = type metadata accessor for _Cell();
  sub_1C93EEFBC(v30);
  sub_1C93A5B58();
}

uint64_t ExponentialNetworkBackoff.__deallocating_deinit()
{
  ExponentialNetworkBackoff.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t _s17CloudCoreInternal25ExponentialNetworkBackoffC3run9isolation_qd__ScA_pSgYi_qd__yYaKYAYTXEtYaKlF()
{
  sub_1C93DA69C();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  if (v5)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1C93F3768, v8, v10);
}

uint64_t sub_1C93F3768()
{
  sub_1C939ED74();
  v1 = *(v0[8] + 16);
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[9] = v2;
  *v2 = v3;
  v2[1] = sub_1C93F3808;
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return _s17CloudCoreInternal18ExponentialBackoffC3run9isolation_qd__ScA_pSgYi_qd__yYaKYTXEtYaKlF(v8, v9, v6, v7, v4, v5);
}

uint64_t sub_1C93F3808()
{
  sub_1C939ED74();
  sub_1C939D504();
  v2 = *(v1 + 72);
  v3 = *v0;
  sub_1C93B5C54();
  *v4 = v3;

  sub_1C939D510();

  return v5();
}

uint64_t sub_1C93F3930(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return PropertyDescribable<>.description.getter(a1, WitnessTable);
}

void ExponentialNetworkBackoff<>.init(label:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_1C93A5B40();
  v23 = v22;
  v25 = v24;
  v51 = v26;
  v52 = v27;
  v50 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = type metadata accessor for ContinuousClock();
  v38 = sub_1C93A5A08(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v49 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.init()();
  v43 = type metadata accessor for NWPathMonitor();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = NWPathMonitor.init()();
  v47 = *(v23 + 48);
  v48 = *(v23 + 52);
  swift_allocObject();
  sub_1C93F088C(v36, v34, v42, v32, v30, v50, v51, v52, v25, a21, a22 & 1, v46);
  sub_1C93A5B58();
}

uint64_t sub_1C93F3A90()
{
  v20 = v0[4];
  v1 = v0[6];
  v2 = v0[7];
  v3 = (*(*(v0[5] - 8) + 80) + 72) & ~*(*(v0[5] - 8) + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[8];
  v7 = swift_task_alloc();
  v8 = sub_1C93B5C44(v7);
  *v8 = v9;
  v8[1] = sub_1C93B5858;
  sub_1C93F4608();

  return sub_1C93F175C(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1C93F3B9C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C93F3BD8(uint64_t a1)
{
  v2 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v6 = *(a1 + 80);
    v7 = *(a1 + 96);
    type metadata accessor for ExponentialNetworkBackoff.State();
    result = type metadata accessor for Mutex();
    if (v5 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1C93F3D24()
{
  sub_1C93F3DB8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C93F3DB8()
{
  if (!qword_1EE02AD78)
  {
    sub_1C93B27AC(&qword_1EC39B5F8, qword_1C9404A00);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE02AD78);
    }
  }
}

uint64_t sub_1C93F3E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B638, &qword_1C9404B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93F3E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C93B5858;

  return sub_1C93F1268(a1, a2, a3, a4, v10);
}

uint64_t sub_1C93F3F54(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_1C93B5C44(v6);
  *v7 = v8;
  v7[1] = sub_1C93B5BC4;

  return sub_1C93F3E8C(a1, v3, v4, v5, v1 + 5);
}

uint64_t sub_1C93F4018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1C93B5BC4;

  return sub_1C93F1D48(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_1C93F40E8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C93F4130()
{
  sub_1C93DA798();
  sub_1C93F45E0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1C93B5C44(v2);
  *v3 = v4;
  v3[1] = sub_1C93B5BC4;
  v5 = sub_1C93F4540();

  return v6(v5);
}

uint64_t sub_1C93F41E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C93F422C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93F429C()
{
  v1 = *(v0 + 5);
  sub_1C939D47C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 8);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C93F4358(uint64_t a1, uint64_t a2)
{
  v4 = v2[5];
  v16 = v2[4];
  v6 = v2[6];
  v5 = v2[7];
  v7 = (*(*(v4 - 8) + 80) + 72) & ~*(*(v4 - 8) + 80);
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[8];
  v11 = swift_task_alloc();
  v12 = sub_1C93B5C44(v11);
  *v12 = v13;
  v12[1] = sub_1C93B5BC4;

  return sub_1C93F255C(a1, a2, v8, v9, v10, v2 + v7, v16, v4);
}

uint64_t sub_1C93F446C()
{
  sub_1C93DA798();
  sub_1C93F45E0();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = sub_1C93B5C44(v5);
  *v6 = v7;
  v6[1] = sub_1C93B5BC4;
  sub_1C93F4540();

  return sub_1C93E8984();
}

uint64_t sub_1C93F4520()
{

  return swift_once();
}

BOOL sub_1C93F45A8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C93F45C4()
{

  return swift_beginAccess();
}

uint64_t sub_1C93F45F0()
{

  return swift_beginAccess();
}

uint64_t sub_1C93F4624()
{
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[31];
  v5 = v0[29];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[20];
  v8 = v0[21];
}

void sub_1C93F4660(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t sub_1C93F4680()
{

  return swift_slowAlloc();
}

uint64_t sub_1C93F4698()
{
  v0 = type metadata accessor for Logger();
  sub_1C93F47BC(v0, qword_1EE02B458);
  sub_1C93D9664(v0, qword_1EE02B458);
  return Logger.init(subsystem:category:)();
}

uint64_t CCLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE02B450 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1C93D9664(v2, qword_1EE02B458);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_1C93F47BC(uint64_t a1, uint64_t *a2)
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

uint64_t _Security.auditToken.getter()
{
  v13 = *MEMORY[0x1E69E9840];
  *task_info_out = 0u;
  v12 = 0u;
  task_info_outCnt = 8;
  v0 = task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt);
  if (!v0)
  {
    result = *task_info_out;
    goto LABEL_5;
  }

  v1 = v0;
  if ((MachErrorCode.init(rawValue:)() & 0x100000000) == 0)
  {
    type metadata accessor for MachError();
    sub_1C93F4BF8(MEMORY[0x1E69E7CC0]);
    v2 = MEMORY[0x1E6969C80];
    sub_1C93F4D30(&qword_1EC39B660, MEMORY[0x1E6969C80]);
    _BridgedStoredNSError.init(_:userInfo:)();
    sub_1C93F4D30(&qword_1EC39B668, v2);
    result = swift_willThrowTypedImpl();
LABEL_5:
    v4 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (qword_1EE02B450 != -1)
  {
    sub_1C93DA48C();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1C93D9664(v5, qword_1EE02B458);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v1;
    _os_log_impl(&dword_1C939C000, v6, v7, "Couldn't map task_info kr %d to a MachError.Code", v8, 8u);
    MEMORY[0x1CCA884B0](v8, -1, -1);
  }

  _StringGuts.grow(_:)(48);

  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1CCA87780](v9);

  MEMORY[0x1CCA87780](0xD000000000000014, 0x80000001C9406A20);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1C93F4AF4(uint64_t a1)
{
  v3 = type metadata accessor for MachError();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _Security.auditToken.getter();
  if (v1)
  {
    return (*(v4 + 32))(a1, v7, v3);
  }

  return result;
}

unint64_t sub_1C93F4BF8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  sub_1C93A1890(&qword_1EC39B678, &qword_1C9404C30);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1C93F4EDC(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1C939E8FC(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1C939EA84(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C93F4D30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C93F4D78(uint64_t a1)
{
  v2 = sub_1C93A1890(&qword_1EC39B3A0, &qword_1C9404BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for _Security(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C93F4EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B680, &qword_1C9404C38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UnsafeSendableTransfer.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  UnsafeSendableTransfer.init(_:)(a1);
  return v5;
}

uint64_t UnsafeSendableTransfer.extractValue()@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = sub_1C939EE34(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19[-v15];
  v17 = *(v4 + 88);
  sub_1C93F57E4();
  (*(v9 + 16))(v16, v2 + v17, v1);
  if (sub_1C93A4810(v16, 1, v5) == 1)
  {
    result = (*(v9 + 8))(v16, v1);
    __break(1u);
  }

  else
  {
    (*(*(v5 - 8) + 32))(a1, v16, v5);
    sub_1C93A1710(v14, 1, 1, v5);
    swift_beginAccess();
    (*(v9 + 40))(v2 + v17, v14, v1);
    return swift_endAccess();
  }

  return result;
}

uint64_t UnsafeSendableTransfer.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  UnsafeSendableTransfer.init()();
  return v3;
}

uint64_t *UnsafeSendableTransfer.init(_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = sub_1C939EE34(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v16 - v12;
  v14 = *(v4 + 88);
  sub_1C93A1710(v2 + v14, 1, 1, v5);
  (*(*(v5 - 8) + 32))(v13, a1, v5);
  sub_1C93A1710(v13, 0, 1, v5);
  swift_beginAccess();
  (*(v9 + 40))(v2 + v14, v13, v1);
  swift_endAccess();
  return v2;
}

uint64_t UnsafeSendableTransfer.deinit()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v5 = sub_1C939EE34(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = *(v2 + 88);
  sub_1C93F57E4();
  (*(v7 + 16))(v11, &v1[v12], v0);
  LODWORD(v2) = sub_1C93A4810(v11, 1, v3);
  v13 = *(v7 + 8);
  result = v13(v11, v0);
  if (v2 == 1)
  {
    v13(&v1[v12], v0);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeSendableTransfer.__deallocating_deinit()
{
  UnsafeSendableTransfer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t UnsafeSendableTransfer.setValue(_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = sub_1C939EE34(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19[-v15];
  v17 = *(v4 + 88);
  swift_beginAccess();
  (*(v9 + 16))(v16, v2 + v17, v1);
  LODWORD(v4) = sub_1C93A4810(v16, 1, v5);
  result = (*(v9 + 8))(v16, v1);
  if (v4 == 1)
  {
    (*(*(v5 - 8) + 16))(v14, a1, v5);
    sub_1C93A1710(v14, 0, 1, v5);
    swift_beginAccess();
    (*(v9 + 40))(v2 + v17, v14, v1);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C93F56F8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
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

uint64_t sub_1C93F57E4()
{

  return swift_beginAccess();
}

uint64_t sub_1C93F5830()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C93F7BF4();
  v3 = v1;
  _typeName(_:qualified:)();
  sub_1C93F7C78();

  sub_1C93F7C40();
  sub_1C93B09D0();
  sub_1C93F7C78();

  sub_1C93F7C5C();
  return v3;
}

uint64_t sub_1C93F58A8()
{
  sub_1C93F7BF4();
  v3 = v0;
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v1);

  sub_1C93F7C40();
  sub_1C93B0B64();
  sub_1C93F7C78();

  sub_1C93F7C5C();
  return v3;
}

uint64_t sub_1C93F5938()
{
  v0 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v0);

  MEMORY[0x1CCA87780](8250, 0xE200000000000000);
  sub_1C93B0CE8();
  MEMORY[0x1CCA87780]();

  MEMORY[0x1CCA87780](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1C93F5A68()
{
  v4 = *v0;
  v5 = v0[1];
  v6 = *(v0 + 4);
  sub_1C93F7BF4();
  v3 = v1;
  _typeName(_:qualified:)();
  sub_1C93F7C28();

  sub_1C939EE4C();
  sub_1C93B0FF8();
  sub_1C93F7C28();

  sub_1C93F7C00();
  return v3;
}

uint64_t sub_1C93F5B0C()
{
  sub_1C93F7C90();
  v4 = *(v0 + 48);
  sub_1C93F7BF4();
  v3 = v1;
  _typeName(_:qualified:)();
  sub_1C93F7C28();

  sub_1C939EE4C();
  sub_1C93B11A4();
  sub_1C93F7C28();

  sub_1C93F7C00();
  return v3;
}

uint64_t sub_1C93F5B80()
{
  sub_1C93F7C90();
  sub_1C93F7BF4();
  v2 = v0;
  _typeName(_:qualified:)();
  sub_1C93F7C28();

  sub_1C939EE4C();
  sub_1C93B19B8();
  sub_1C93F7C28();

  sub_1C93F7C00();
  return v2;
}

uint64_t sub_1C93F5BEC()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C93F7BF4();
  v3 = v1;
  _typeName(_:qualified:)();
  sub_1C93F7C78();

  sub_1C93F7C40();
  sub_1C93B1CB0();
  sub_1C93F7C78();

  sub_1C93F7C5C();
  return v3;
}

uint64_t sub_1C93F5CBC(void (*a1)(void), void (*a2)(void))
{
  a1(0);
  v3 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v3);

  sub_1C939EE4C();
  a2();
  sub_1C93F7C28();

  sub_1C93F7C00();
  return 60;
}

unint64_t Entitlements.Key.rawValue.getter()
{
  result = 0xD000000000000016;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000030;
      break;
    case 2:
      result = 0xD00000000000003BLL;
      break;
    case 3:
      result = 0xD000000000000041;
      break;
    case 4:
      result = 0xD000000000000038;
      break;
    default:
      return result;
  }

  return result;
}

void static Entitlements.currentProcess.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C93A1890(&qword_1EC39B688, &unk_1C9404C70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v45 - v7;
  v9 = type metadata accessor for Entitlements.Error();
  v10 = sub_1C939D430(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C93A59B8();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  if (qword_1EE02B208 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE02B210);
  v19 = qword_1EE02B220;
  if (qword_1EE02B220)
  {
    v20 = dword_1EE02B228;
    *a2 = qword_1EE02B218;
    *(a2 + 8) = v19;
    *(a2 + 16) = v20 & 1;
    *(a2 + 17) = BYTE1(v20) & 1;
    *(a2 + 18) = BYTE2(v20) & 1;
    *(a2 + 19) = HIBYTE(v20) & 1;
LABEL_5:

    os_unfair_lock_unlock(&dword_1EE02B210);
    return;
  }

  sub_1C93F699C(v18, &v46);
  if (!v2)
  {

    v32 = v47;
    v33 = v48;
    v34 = v49;
    v35 = v50;
    v36 = v51;
    if (v49)
    {
      v37 = 256;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37 | v48;
    if (v50)
    {
      v39 = 0x10000;
    }

    else
    {
      v39 = 0;
    }

    if (v51)
    {
      v40 = 0x1000000;
    }

    else
    {
      v40 = 0;
    }

    qword_1EE02B218 = v46;
    qword_1EE02B220 = v47;
    dword_1EE02B228 = v38 | v39 | v40;
    *a2 = v46;
    *(a2 + 8) = v32;
    *(a2 + 16) = v33;
    *(a2 + 17) = v34;
    *(a2 + 18) = v35;
    *(a2 + 19) = v36;

    goto LABEL_5;
  }

  sub_1C93F7BC4();
  sub_1C93F7530(v21, v22);
  v23 = swift_allocError();
  sub_1C93F7BAC();
  sub_1C93F7630(v18, v24, v25);
  os_unfair_lock_unlock(&dword_1EE02B210);
  v46 = v23;
  v26 = v23;
  sub_1C93A1890(&qword_1EC39B3B0, "T8");
  if (swift_dynamicCast())
  {
    sub_1C93F7C1C();
    sub_1C93A1710(v27, v28, v29, v30);
    sub_1C93F7BAC();
    sub_1C93F7630(v8, v15, v31);
    sub_1C93F7578(v15, a1, type metadata accessor for Entitlements.Error);
    swift_willThrowTypedImpl();

    sub_1C93F75D8(v15, type metadata accessor for Entitlements.Error);
  }

  else
  {
    sub_1C93F7C1C();
    sub_1C93A1710(v41, v42, v43, v44);
    sub_1C93A4838(v8, &qword_1EC39B688, &unk_1C9404C70);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

CloudCoreInternal::Entitlements::Key_optional __swiftcall Entitlements.Key.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&unk_1F48EB888, v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int sub_1C93F61F8()
{
  Hasher.init(_seed:)();
  sub_1C93F6248();
  return Hasher._finalize()();
}

uint64_t sub_1C93F6248()
{
  String.hash(into:)();
}

Swift::Int sub_1C93F6310()
{
  Hasher.init(_seed:)();
  sub_1C93F6248();
  return Hasher._finalize()();
}

unint64_t sub_1C93F6360@<X0>(unint64_t *a1@<X8>)
{
  result = Entitlements.Key.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Entitlements.bundleID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Entitlements.bundleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t _s17CloudCoreInternal12EntitlementsV10auditToken8securityACSo0E8_token_ta_xtAC5ErrorOYKcAA17_SecurityProtocolRzlufC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v64 = a6;
  v50 = type metadata accessor for Entitlements.Error();
  v9 = sub_1C939D430(v50);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C93A59A8();
  v49 = v13 - v12;
  v59[0] = MEMORY[0x1E69E7CC0];
  sub_1C939DC14(0, 5, 0);
  v14 = 0;
  v15 = v59[0];
  v16 = "application-identifier";
  v17 = "iner-environment";
  v18 = "nal.allow-custom-bundle-ids";
  v19 = "-authorization-ui";
  do
  {
    v20 = &unk_1C9405EC0;
    v21 = 0xD000000000000016;
    switch(byte_1F48EB7E8[v14 + 32])
    {
      case 1:
        v21 = 0xD000000000000030;
        v20 = v16;
        break;
      case 2:
        v21 = 0xD00000000000003BLL;
        v20 = v17;
        break;
      case 3:
        v21 = 0xD000000000000041;
        v20 = v18;
        break;
      case 4:
        v21 = 0xD000000000000038;
        v20 = v19;
        break;
      default:
        break;
    }

    v59[0] = v15;
    v23 = *(v15 + 16);
    v22 = *(v15 + 24);
    if (v23 >= v22 >> 1)
    {
      v25 = v16;
      v46 = v18;
      v47 = v17;
      v45 = v19;
      sub_1C939DC14((v22 > 1), v23 + 1, 1);
      v19 = v45;
      v18 = v46;
      v17 = v47;
      v16 = v25;
      v15 = v59[0];
    }

    ++v14;
    *(v15 + 16) = v23 + 1;
    v24 = v15 + 16 * v23;
    *(v24 + 32) = v21;
    *(v24 + 40) = v20 | 0x8000000000000000;
  }

  while (v14 != 5);
  v26 = v64;
  v27 = (*(a7 + 16))(a1, a2, a3, a4, v15, v64);
  if (v56)
  {

    if (qword_1EE02B450 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1C93D9664(v28, qword_1EE02B458);
    v29 = v27;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      type metadata accessor for CFError(0);
      sub_1C93F7530(&qword_1EE02AD70, type metadata accessor for CFError);
      swift_allocError();
      *v34 = v29;
      v35 = v29;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v36;
      *v33 = v36;
      _os_log_impl(&dword_1C939C000, v30, v31, "Error getting entitlements for secTask: %@", v32, 0xCu);
      sub_1C93A4838(v33, &qword_1EC39B3A0, &qword_1C9404BE0);
      MEMORY[0x1CCA884B0](v33, -1, -1);
      MEMORY[0x1CCA884B0](v32, -1, -1);
    }

    *a8 = v29;
    swift_storeEnumTagMultiPayload();
    sub_1C93F7BC4();
    sub_1C93F7530(v37, v38);
    swift_willThrowTypedImpl();
    return (*(*(v26 - 8) + 8))(a5, v26);
  }

  else
  {

    sub_1C939E08C(v27, v49, v59);
    result = (*(*(v26 - 8) + 8))(a5, v26);
    v40 = v59[1];
    v41 = v60;
    v42 = v61;
    v43 = v62;
    v44 = v63;
    *a9 = v59[0];
    *(a9 + 8) = v40;
    *(a9 + 16) = v41;
    *(a9 + 17) = v42;
    *(a9 + 18) = v43;
    *(a9 + 19) = v44;
  }

  return result;
}

void sub_1C93F6984()
{
  dword_1EE02B210 = 0;
  qword_1EE02B218 = 0;
  qword_1EE02B220 = 0;
  dword_1EE02B228 = 0;
}

uint64_t sub_1C93F699C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for Entitlements.Error();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MachError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v25 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  v19 = _Security.auditToken.getter();
  if (!v2)
  {
    return sub_1C939D668(v19, v20, v21, v22, v7, v26);
  }

  v23 = *(v9 + 32);
  v23(v18, v16, v8);
  v23(v13, v18, v8);
  (*(v9 + 16))(a1, v13, v8);
  swift_storeEnumTagMultiPayload();
  sub_1C93F7530(&qword_1EE02B200, type metadata accessor for Entitlements.Error);
  swift_willThrowTypedImpl();
  return (*(v9 + 8))(v13, v8);
}

uint64_t _s17CloudCoreInternal12EntitlementsV14currentProcess8securityACx_tAC5ErrorOYKAA17_SecurityProtocolRzlFZ@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a4;
  v50 = a5;
  v53 = type metadata accessor for Entitlements.Error();
  v9 = sub_1C939D430(v53);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C93A59A8();
  v51 = (v13 - v12);
  v48 = *(a2 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C93A59A8();
  v47 = v17 - v16;
  v18 = type metadata accessor for MachError();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C93A59B8();
  v23 = (v21 - v22);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v46 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v46 - v28;
  v30 = *(a3 + 8);
  v49 = a1;
  v31 = a2;
  v52 = a3;
  v32 = v30(v27, a2, a3);
  if (v5)
  {
    v36 = *(v19 + 32);
    v36(v29, v27, v18);
    v36(v23, v29, v18);
    (*(v19 + 16))(v54, v23, v18);
    swift_storeEnumTagMultiPayload();
    sub_1C93F7BC4();
    sub_1C93F7530(v37, v38);
    swift_willThrowTypedImpl();
    return (*(v19 + 8))(v23, v18);
  }

  else
  {
    v40 = v32;
    v41 = v33;
    v42 = v47;
    v43 = v31;
    v44 = v34;
    v45 = v35;
    (*(v48 + 16))(v47, v49, v43);
    return _s17CloudCoreInternal12EntitlementsV10auditToken8securityACSo0E8_token_ta_xtAC5ErrorOYKcAA17_SecurityProtocolRzlufC(v40, v41, v44, v45, v42, v43, v52, v51, v50);
  }
}

uint64_t sub_1C93F6F34()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  *(v0 + 17);
  *(v0 + 18);
  *(v0 + 19);
  return sub_1C93F5938();
}

size_t Entitlements.propertyDescriptions.getter()
{
  v1 = type metadata accessor for PropertyDescription();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C93A59B8();
  v91 = (v4 - v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v89 = &v83 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v83 - v9;
  v10 = type metadata accessor for OSLogPrivacy();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C93A59B8();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v83 - v16;
  v18 = *v0;
  v19 = v0[1];
  v20 = *(v0 + 16);
  LODWORD(v85) = *(v0 + 17);
  v86 = *(v0 + 18);
  LODWORD(v87) = v20;
  v88 = *(v0 + 19);
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v21 = *(v2 + 72);
  v22 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C93FE890;
  v92 = v22;
  v24 = (v23 + v22);
  static OSLogPrivacy.public.getter();
  v93 = v18;
  v94 = v19;

  v25 = String.init<A>(describing:)();
  v27 = v26;
  v28 = MEMORY[0x1E69E93B0];
  sub_1C93F7578(v17, v14, MEMORY[0x1E69E93B0]);
  v29 = *(v1 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93F75D8(v17, v28);
  *v24 = 0x4449656C646E7562;
  v24[1] = 0xE800000000000000;
  v24[2] = v25;
  v24[3] = v27;
  sub_1C93A8768(v14, v24 + v29);
  v30 = (v24 + v21);
  static OSLogPrivacy.public.getter();
  LOBYTE(v93) = v87;
  v31 = String.init<A>(describing:)();
  v33 = v32;
  sub_1C93F7578(v17, v14, v28);
  v87 = v1;
  v34 = *(v1 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93F75D8(v17, v28);
  sub_1C93B8D8C();
  *v30 = v35 + 2;
  v30[1] = 0x80000001C9406AC0;
  v30[2] = v31;
  v30[3] = v33;
  sub_1C93A8768(v14, v24 + v21 + v34);
  v90 = v21;
  if (v85 == 1)
  {
    v85 = 2 * v21;
    static OSLogPrivacy.public.getter();
    LOBYTE(v93) = 1;
    v36 = String.init<A>(describing:)();
    v38 = v37;
    v39 = MEMORY[0x1E69E93B0];
    sub_1C93F7578(v17, v14, MEMORY[0x1E69E93B0]);
    v40 = v87;
    v41 = *(v87 + 24);
    v42 = v84;
    static OSLogPrivacy.auto.getter();
    sub_1C93F75D8(v17, v39);
    sub_1C93B8D8C();
    *v42 = v43 + 3;
    v42[1] = 0x80000001C9406B20;
    v42[2] = v36;
    v42[3] = v38;
    sub_1C93A8768(v14, v42 + v41);
    sub_1C93F7C1C();
    v23 = sub_1C93A4F7C(v44, v45, v46, v47);
    *(v23 + 16) = 3;
    sub_1C93F7BDC();
    sub_1C93F7630(v42, v48 + v49, v50);
  }

  else
  {
    v40 = v87;
  }

  if (v86)
  {
    static OSLogPrivacy.public.getter();
    LOBYTE(v93) = 1;
    v51 = String.init<A>(describing:)();
    v53 = v52;
    v54 = MEMORY[0x1E69E93B0];
    sub_1C93F7578(v17, v14, MEMORY[0x1E69E93B0]);
    v55 = v40;
    v56 = *(v40 + 24);
    v57 = v89;
    static OSLogPrivacy.auto.getter();
    sub_1C93F75D8(v17, v54);
    sub_1C93B8D8C();
    *v57 = v58 + 8;
    v57[1] = 0x80000001C9406B00;
    v57[2] = v51;
    v57[3] = v53;
    sub_1C93A8768(v14, v57 + v56);
    v59 = *(v23 + 16);
    if (v59 >= *(v23 + 24) >> 1)
    {
      sub_1C93F7C1C();
      v23 = sub_1C93A4F7C(v75, v76, v77, v78);
    }

    *(v23 + 16) = v59 + 1;
    sub_1C93F7BDC();
    sub_1C93F7630(v60, v61, v62);
  }

  else
  {
    v55 = v40;
  }

  if (v88)
  {
    static OSLogPrivacy.public.getter();
    LOBYTE(v93) = 1;
    v63 = String.init<A>(describing:)();
    v65 = v64;
    v66 = MEMORY[0x1E69E93B0];
    sub_1C93F7578(v17, v14, MEMORY[0x1E69E93B0]);
    v67 = *(v55 + 24);
    v68 = v91;
    static OSLogPrivacy.auto.getter();
    sub_1C93F75D8(v17, v66);
    sub_1C93B8D8C();
    *v68 = v69;
    v68[1] = 0x80000001C9406AE0;
    v68[2] = v63;
    v68[3] = v65;
    sub_1C93A8768(v14, v68 + v67);
    v70 = *(v23 + 16);
    if (v70 >= *(v23 + 24) >> 1)
    {
      sub_1C93F7C1C();
      v23 = sub_1C93A4F7C(v79, v80, v81, v82);
    }

    *(v23 + 16) = v70 + 1;
    sub_1C93F7BDC();
    sub_1C93F7630(v71, v72, v73);
  }

  return v23;
}

uint64_t sub_1C93F7530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C93F7578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C939D430(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C93F75D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C939D430(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C93F7630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C939D430(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1C93F7694()
{
  result = qword_1EC39B690;
  if (!qword_1EC39B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B690);
  }

  return result;
}

unint64_t sub_1C93F76EC()
{
  result = qword_1EC39B698;
  if (!qword_1EC39B698)
  {
    sub_1C93B27AC(&qword_1EC39B6A0, &qword_1C9404D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B698);
  }

  return result;
}

unint64_t sub_1C93F7750(uint64_t a1)
{
  result = sub_1C93F7778();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93F7778()
{
  result = qword_1EC39B6A8;
  if (!qword_1EC39B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B6A8);
  }

  return result;
}

uint64_t sub_1C93F7830(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C93F7870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C93F78C0()
{
  type metadata accessor for MachError();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CFError(319);
    if (v1 <= 0x3F)
    {
      sub_1C93F7970();
      if (v2 <= 0x3F)
      {
        sub_1C93F7998();
        if (v3 <= 0x3F)
        {
          sub_1C93F7A2C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

ValueMetadata *sub_1C93F7970()
{
  result = qword_1EE02BE80;
  if (!qword_1EE02BE80)
  {
    result = &type metadata for Entitlements.Key;
    atomic_store(&type metadata for Entitlements.Key, &qword_1EE02BE80);
  }

  return result;
}

void sub_1C93F7998()
{
  if (!qword_1EE02BE78)
  {
    sub_1C93B27AC(&qword_1EC39B6B0, "N8");
    sub_1C93B27AC(&qword_1EC39B670, &qword_1C9404BE8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE02BE78);
    }
  }
}

void sub_1C93F7A2C()
{
  if (!qword_1EE02BE88)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE02BE88);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Entitlements.Key(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C93F7B6C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_1C93F7C00()
{

  JUMPOUT(0x1CCA87780);
}

void sub_1C93F7C28()
{

  JUMPOUT(0x1CCA87780);
}

void sub_1C93F7C40()
{

  JUMPOUT(0x1CCA87780);
}

void sub_1C93F7C5C()
{

  JUMPOUT(0x1CCA87780);
}

void sub_1C93F7C78()
{

  JUMPOUT(0x1CCA87780);
}

__n128 sub_1C93F7C90()
{
  v2 = *v0;
  v3 = v0[1];
  return v0[2];
}

uint64_t sub_1C93F7D04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000001C9406BD0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C9406BF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001C9406C10 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001C9406C30 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C9406C50 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001C9406C70 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000020 && 0x80000001C9406C90 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000019 && 0x80000001C9406CC0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000021 && 0x80000001C9406CE0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD00000000000001DLL && 0x80000001C9406D10 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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
}

unint64_t sub_1C93F8010(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000012;
      break;
    case 2:
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000021;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C93F8100(uint64_t a1)
{
  v2 = sub_1C93F905C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F813C(uint64_t a1)
{
  v2 = sub_1C93F905C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8178(uint64_t a1)
{
  v2 = sub_1C93F8F0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F81B4(uint64_t a1)
{
  v2 = sub_1C93F8F0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F81F0(uint64_t a1)
{
  v2 = sub_1C93F9104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F822C(uint64_t a1)
{
  v2 = sub_1C93F9104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8268(uint64_t a1)
{
  v2 = sub_1C93F90B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F82A4(uint64_t a1)
{
  v2 = sub_1C93F90B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F82E0(uint64_t a1)
{
  v2 = sub_1C93F8EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F831C(uint64_t a1)
{
  v2 = sub_1C93F8EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8358(uint64_t a1)
{
  v2 = sub_1C93F8FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F8394(uint64_t a1)
{
  v2 = sub_1C93F8FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F83D0(uint64_t a1)
{
  v2 = sub_1C93F9008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F840C(uint64_t a1)
{
  v2 = sub_1C93F9008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93F7D04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93F8478@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93F8008();
  *a1 = result;
  return result;
}

uint64_t sub_1C93F84A0(uint64_t a1)
{
  v2 = sub_1C93F8E64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F84DC(uint64_t a1)
{
  v2 = sub_1C93F8E64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8518(uint64_t a1)
{
  v2 = sub_1C93F9158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F8554(uint64_t a1)
{
  v2 = sub_1C93F9158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8590(uint64_t a1)
{
  v2 = sub_1C93F8F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F85CC(uint64_t a1)
{
  v2 = sub_1C93F8F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8608(uint64_t a1)
{
  v2 = sub_1C93F91AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F8644(uint64_t a1)
{
  v2 = sub_1C93F91AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SessionReadinessError.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1C93A1890(&qword_1EC39B6D0, &qword_1C9404F20);
  v5 = sub_1C939D44C(v4);
  v112 = v6;
  v113 = v5;
  v8 = *(v7 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C939ED24();
  v111 = v10;
  v11 = sub_1C93A1890(&qword_1EC39B6D8, &qword_1C9404F28);
  v12 = sub_1C939D44C(v11);
  v109 = v13;
  v110 = v12;
  v15 = *(v14 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C939ED24();
  v108 = v17;
  v18 = sub_1C93A1890(&qword_1EC39B6E0, &qword_1C9404F30);
  v19 = sub_1C939D44C(v18);
  v106 = v20;
  v107 = v19;
  v22 = *(v21 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C939ED24();
  v105 = v24;
  v25 = sub_1C93A1890(&qword_1EC39B6E8, &qword_1C9404F38);
  v26 = sub_1C939D44C(v25);
  v103 = v27;
  v104 = v26;
  v29 = *(v28 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C939ED24();
  v102 = v31;
  v32 = sub_1C93A1890(&qword_1EC39B6F0, &qword_1C9404F40);
  v33 = sub_1C939D44C(v32);
  v100 = v34;
  v101 = v33;
  v36 = *(v35 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C939ED24();
  v99 = v38;
  v39 = sub_1C93A1890(&qword_1EC39B6F8, &qword_1C9404F48);
  v40 = sub_1C939D44C(v39);
  v97 = v41;
  v98 = v40;
  v43 = *(v42 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C939ED24();
  v96 = v45;
  v95 = sub_1C93A1890(&qword_1EC39B700, &qword_1C9404F50);
  sub_1C939D44C(v95);
  v94 = v46;
  v48 = *(v47 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C939ED24();
  v93 = v50;
  v92 = sub_1C93A1890(&qword_1EC39B708, &qword_1C9404F58);
  sub_1C939D44C(v92);
  v91 = v51;
  v53 = *(v52 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C939ED24();
  v90 = v55;
  v89 = sub_1C93A1890(&qword_1EC39B710, &qword_1C9404F60);
  sub_1C939D44C(v89);
  v88[2] = v56;
  v58 = *(v57 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v59);
  v61 = v88 - v60;
  v62 = sub_1C93A1890(&qword_1EC39B718, &qword_1C9404F68);
  sub_1C939D44C(v62);
  v88[1] = v63;
  v65 = *(v64 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v66);
  v114 = sub_1C93A1890(&qword_1EC39B720, &qword_1C9404F70);
  sub_1C939D44C(v114);
  v68 = v67;
  v70 = *(v69 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v71);
  v73 = v88 - v72;
  v74 = *v2;
  v75 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93F8E64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v76 = (v68 + 8);
  switch(v74)
  {
    case 1:
      v116 = 1;
      sub_1C93F9158();
      v85 = v114;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1C939EE68(&v118);
      v86(v61, v89);
      return (*v76)(v73, v85);
    case 2:
      v117[0] = 2;
      sub_1C93F9104();
      v82 = v90;
      sub_1C93FA950();
      sub_1C939EE68(&v119);
      v77 = v82;
      v83 = &v120;
      goto LABEL_7;
    case 3:
      v117[1] = 3;
      sub_1C93F90B0();
      v84 = v93;
      sub_1C93FA950();
      sub_1C939EE68(&v121);
      v77 = v84;
      v83 = &v122;
LABEL_7:
      v79 = *(v83 - 32);
      break;
    case 4:
      v117[2] = 4;
      sub_1C93F905C();
      v80 = v96;
      sub_1C93FA950();
      v81 = v97;
      v79 = v98;
      goto LABEL_13;
    case 5:
      v117[3] = 5;
      sub_1C93F9008();
      v80 = v99;
      sub_1C93FA950();
      v81 = v100;
      v79 = v101;
      goto LABEL_13;
    case 6:
      v117[4] = 6;
      sub_1C93F8FB4();
      v80 = v102;
      sub_1C93FA950();
      v81 = v103;
      v79 = v104;
      goto LABEL_13;
    case 7:
      v117[5] = 7;
      sub_1C93F8F60();
      v80 = v105;
      sub_1C93FA950();
      v81 = v106;
      v79 = v107;
      goto LABEL_13;
    case 8:
      v117[6] = 8;
      sub_1C93F8F0C();
      v80 = v108;
      sub_1C93FA950();
      v81 = v109;
      v79 = v110;
      goto LABEL_13;
    case 9:
      v117[7] = 9;
      sub_1C93F8EB8();
      v80 = v111;
      sub_1C93FA950();
      v81 = v112;
      v79 = v113;
LABEL_13:
      v78 = *(v81 + 8);
      v77 = v80;
      break;
    default:
      v115 = 0;
      sub_1C93F91AC();
      v61 = v114;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v77 = sub_1C93FA998(v117);
      v79 = v62;
      break;
  }

  v78(v77, v79);
  return (*v76)(v73, v61);
}

unint64_t sub_1C93F8E64()
{
  result = qword_1EE02B6C0;
  if (!qword_1EE02B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B6C0);
  }

  return result;
}

unint64_t sub_1C93F8EB8()
{
  result = qword_1EC39B728;
  if (!qword_1EC39B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B728);
  }

  return result;
}

unint64_t sub_1C93F8F0C()
{
  result = qword_1EC39B730;
  if (!qword_1EC39B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B730);
  }

  return result;
}

unint64_t sub_1C93F8F60()
{
  result = qword_1EE02B648;
  if (!qword_1EE02B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B648);
  }

  return result;
}

unint64_t sub_1C93F8FB4()
{
  result = qword_1EC39B738;
  if (!qword_1EC39B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B738);
  }

  return result;
}

unint64_t sub_1C93F9008()
{
  result = qword_1EC39B740;
  if (!qword_1EC39B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B740);
  }

  return result;
}

unint64_t sub_1C93F905C()
{
  result = qword_1EC39B748;
  if (!qword_1EC39B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B748);
  }

  return result;
}

unint64_t sub_1C93F90B0()
{
  result = qword_1EE02B6A8;
  if (!qword_1EE02B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B6A8);
  }

  return result;
}

unint64_t sub_1C93F9104()
{
  result = qword_1EC39B750;
  if (!qword_1EC39B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B750);
  }

  return result;
}

unint64_t sub_1C93F9158()
{
  result = qword_1EE02B690;
  if (!qword_1EE02B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B690);
  }

  return result;
}

unint64_t sub_1C93F91AC()
{
  result = qword_1EC39B758;
  if (!qword_1EC39B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B758);
  }

  return result;
}

Swift::Int SessionReadinessError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](v1);
  return Hasher._finalize()();
}

uint64_t SessionReadinessError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v144 = a2;
  v3 = sub_1C93A1890(&qword_1EC39B760, &qword_1C9404F78);
  v4 = sub_1C939D44C(v3);
  v137 = v5;
  v138 = v4;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C939ED24();
  v143 = v9;
  v10 = sub_1C93A1890(&qword_1EC39B768, &qword_1C9404F80);
  v11 = sub_1C939D44C(v10);
  v135 = v12;
  v136 = v11;
  v14 = *(v13 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C939ED24();
  v142 = v16;
  v17 = sub_1C93A1890(&qword_1EC39B770, &qword_1C9404F88);
  v18 = sub_1C939D44C(v17);
  v133 = v19;
  v134 = v18;
  v21 = *(v20 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C939ED24();
  v147 = v23;
  v24 = sub_1C93A1890(&qword_1EC39B778, &qword_1C9404F90);
  v25 = sub_1C939D44C(v24);
  v131 = v26;
  v132 = v25;
  v28 = *(v27 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C939ED24();
  v146 = v30;
  v130 = sub_1C93A1890(&qword_1EC39B780, &qword_1C9404F98);
  sub_1C939D44C(v130);
  v129 = v31;
  v33 = *(v32 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C939ED24();
  v145 = v35;
  v128 = sub_1C93A1890(&qword_1EC39B788, &qword_1C9404FA0);
  sub_1C939D44C(v128);
  v127 = v36;
  v38 = *(v37 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C939ED24();
  v141 = v40;
  v126 = sub_1C93A1890(&qword_1EC39B790, &qword_1C9404FA8);
  sub_1C939D44C(v126);
  v125 = v41;
  v43 = *(v42 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C939ED24();
  v140 = v45;
  v124 = sub_1C93A1890(&qword_1EC39B798, &qword_1C9404FB0);
  sub_1C939D44C(v124);
  v123 = v46;
  v48 = *(v47 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C939ED24();
  v139 = v50;
  v122 = sub_1C93A1890(&qword_1EC39B7A0, &qword_1C9404FB8);
  sub_1C939D44C(v122);
  v121 = v51;
  v53 = *(v52 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v114 - v55;
  v57 = sub_1C93A1890(&qword_1EC39B7A8, &qword_1C9404FC0);
  sub_1C939D44C(v57);
  v120 = v58;
  v60 = *(v59 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v114 - v62;
  v64 = sub_1C93A1890(&qword_1EC39B7B0, &unk_1C9404FC8);
  sub_1C939D44C(v64);
  v66 = v65;
  v68 = *(v67 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v114 - v70;
  v73 = a1[3];
  v72 = a1[4];
  v148 = a1;
  sub_1C93A4890(a1, v73);
  sub_1C93F8E64();
  v74 = v149;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v74)
  {
    goto LABEL_11;
  }

  v117 = v63;
  v116 = v57;
  v118 = v56;
  v75 = v145;
  v76 = v146;
  v77 = v147;
  v149 = v66;
  v78 = v71;
  v79 = KeyedDecodingContainer.allKeys.getter();
  result = sub_1C93C0330(v79, 0);
  if (v82 == v83 >> 1)
  {
    v119 = result;
    v84 = v149;
    v85 = v71;
LABEL_10:
    v98 = type metadata accessor for DecodingError();
    swift_allocError();
    v100 = v99;
    v101 = *(sub_1C93A1890(&qword_1EC39AAB0, "̗") + 48);
    *v100 = &type metadata for SessionReadinessError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v98 - 8) + 104))(v100, *MEMORY[0x1E69E6AF8], v98);
    swift_willThrow();
    sub_1C93FA9B8();
    (*(v84 + 8))(v85, v64);
LABEL_11:
    v102 = v148;
    return sub_1C939EA94(v102);
  }

  v115 = 0;
  if (v82 < (v83 >> 1))
  {
    v86 = v64;
    v87 = *(v81 + v82);
    v88 = sub_1C93C0328(v82 + 1);
    v90 = v89;
    v92 = v91;
    swift_unknownObjectRelease();
    v119 = v88;
    v85 = v78;
    if (v90 == v92 >> 1)
    {
      v93 = v87;
      v94 = v144;
      v95 = v115;
      switch(v87)
      {
        case 1:
          v151 = 1;
          sub_1C93F9158();
          sub_1C93FA974();
          sub_1C93FA9B8();
          v103 = sub_1C93FA998(v153);
          v105 = &v154;
          goto LABEL_19;
        case 2:
          v153[0] = 2;
          sub_1C93F9104();
          sub_1C93FA974();
          sub_1C93FA9B8();
          v103 = sub_1C93FA998(&v155);
          v105 = &v156;
          goto LABEL_19;
        case 3:
          v153[1] = 3;
          sub_1C93F90B0();
          sub_1C93FA974();
          sub_1C93FA9B8();
          v103 = sub_1C93FA998(&v157);
          v105 = &v158;
          goto LABEL_19;
        case 4:
          v153[2] = 4;
          sub_1C93F905C();
          sub_1C93FA974();
          sub_1C93FA9B8();
          v103 = sub_1C93FA998(&v159);
          v105 = &v160;
LABEL_19:
          v106 = *(v105 - 32);
          goto LABEL_25;
        case 5:
          v153[3] = 5;
          sub_1C93F9008();
          sub_1C939D634();
          sub_1C93FA9B8();
          v103 = sub_1C93FA998(&v161);
          v106 = v130;
          goto LABEL_25;
        case 6:
          v153[4] = 6;
          sub_1C93F8FB4();
          v77 = v76;
          sub_1C939D634();
          sub_1C93FA9B8();
          v107 = v131;
          v106 = v132;
          goto LABEL_24;
        case 7:
          v153[5] = 7;
          sub_1C93F8F60();
          sub_1C93FA974();
          sub_1C93FA9B8();
          v107 = v133;
          v106 = v134;
          goto LABEL_24;
        case 8:
          v153[6] = 8;
          sub_1C93F8F0C();
          v77 = v142;
          sub_1C93FA974();
          sub_1C93FA9B8();
          v107 = v135;
          v106 = v136;
          goto LABEL_24;
        case 9:
          v153[7] = 9;
          sub_1C93F8EB8();
          v77 = v143;
          sub_1C93FA974();
          sub_1C93FA9B8();
          v107 = v137;
          v106 = v138;
LABEL_24:
          v104 = *(v107 + 8);
          v103 = v77;
LABEL_25:
          v104(v103, v106);
          v112 = sub_1C93FA9A8();
          v113(v112, v75);
          v102 = v148;
          goto LABEL_26;
        default:
          v150 = 0;
          sub_1C93F91AC();
          v96 = v117;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v95)
          {
            v97 = sub_1C93FA9A8();
            v108(v97, v86);
            sub_1C93FA9B8();
            goto LABEL_11;
          }

          sub_1C93FA9B8();
          sub_1C939EE68(&v152);
          v109(v96, v116);
          v110 = sub_1C93FA9A8();
          v111(v110, v86);
          v102 = v148;
          v93 = v87;
LABEL_26:
          *v94 = v93;
          break;
      }

      return sub_1C939EA94(v102);
    }

    v84 = v149;
    v64 = v86;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C93F9D58()
{
  result = qword_1EE02B5F0;
  if (!qword_1EE02B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B5F0);
  }

  return result;
}

unint64_t sub_1C93F9DB0()
{
  result = qword_1EC39B7B8;
  if (!qword_1EC39B7B8)
  {
    sub_1C93B27AC(&qword_1EC39B7C0, &qword_1C9405110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B7B8);
  }

  return result;
}

uint64_t type metadata accessor for CloudCoreError()
{
  result = qword_1EE02BFE0;
  if (!qword_1EE02BFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C93F9E88()
{
  sub_1C93F9EE0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1C93F9EE0()
{
  if (!qword_1EE02B6C8)
  {
    type metadata accessor for SessionInvalidationContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE02B6C8);
    }
  }
}

uint64_t sub_1C93F9F5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C93F9FE4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C93FA164()
{
  result = qword_1EC39B7C8;
  if (!qword_1EC39B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B7C8);
  }

  return result;
}

unint64_t sub_1C93FA1BC()
{
  result = qword_1EE02B628;
  if (!qword_1EE02B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B628);
  }

  return result;
}

unint64_t sub_1C93FA214()
{
  result = qword_1EE02B630;
  if (!qword_1EE02B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B630);
  }

  return result;
}

unint64_t sub_1C93FA26C()
{
  result = qword_1EE02B680;
  if (!qword_1EE02B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B680);
  }

  return result;
}

unint64_t sub_1C93FA2C4()
{
  result = qword_1EE02B688;
  if (!qword_1EE02B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B688);
  }

  return result;
}

unint64_t sub_1C93FA31C()
{
  result = qword_1EE02B660;
  if (!qword_1EE02B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B660);
  }

  return result;
}

unint64_t sub_1C93FA374()
{
  result = qword_1EE02B668;
  if (!qword_1EE02B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B668);
  }

  return result;
}

unint64_t sub_1C93FA3CC()
{
  result = qword_1EE02B698;
  if (!qword_1EE02B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B698);
  }

  return result;
}

unint64_t sub_1C93FA424()
{
  result = qword_1EE02B6A0;
  if (!qword_1EE02B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B6A0);
  }

  return result;
}

unint64_t sub_1C93FA47C()
{
  result = qword_1EE02B670;
  if (!qword_1EE02B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B670);
  }

  return result;
}

unint64_t sub_1C93FA4D4()
{
  result = qword_1EE02B678;
  if (!qword_1EE02B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B678);
  }

  return result;
}

unint64_t sub_1C93FA52C()
{
  result = qword_1EE02B650;
  if (!qword_1EE02B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B650);
  }

  return result;
}

unint64_t sub_1C93FA584()
{
  result = qword_1EE02B658;
  if (!qword_1EE02B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B658);
  }

  return result;
}

unint64_t sub_1C93FA5DC()
{
  result = qword_1EE02B608;
  if (!qword_1EE02B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B608);
  }

  return result;
}

unint64_t sub_1C93FA634()
{
  result = qword_1EE02B610;
  if (!qword_1EE02B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B610);
  }

  return result;
}

unint64_t sub_1C93FA68C()
{
  result = qword_1EE02B638;
  if (!qword_1EE02B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B638);
  }

  return result;
}

unint64_t sub_1C93FA6E4()
{
  result = qword_1EE02B640;
  if (!qword_1EE02B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B640);
  }

  return result;
}

unint64_t sub_1C93FA73C()
{
  result = qword_1EE02B5F8;
  if (!qword_1EE02B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B5F8);
  }

  return result;
}

unint64_t sub_1C93FA794()
{
  result = qword_1EE02B600;
  if (!qword_1EE02B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B600);
  }

  return result;
}

unint64_t sub_1C93FA7EC()
{
  result = qword_1EE02B618;
  if (!qword_1EE02B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B618);
  }

  return result;
}

unint64_t sub_1C93FA844()
{
  result = qword_1EE02B620;
  if (!qword_1EE02B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B620);
  }

  return result;
}

unint64_t sub_1C93FA89C()
{
  result = qword_1EE02B6B0;
  if (!qword_1EE02B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B6B0);
  }

  return result;
}

unint64_t sub_1C93FA8F4()
{
  result = qword_1EE02B6B8;
  if (!qword_1EE02B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B6B8);
  }

  return result;
}

uint64_t sub_1C93FA950()
{
  v2 = *(v0 - 112);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1C93FA974()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1C93FA9B8()
{
  v2 = *(v0 - 344);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C93FA9D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6513524 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73616C6361746164 && a2 == 0xE900000000000073;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65536D6574737973 && a2 == 0xED00006563697672)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C93FAAF0(char a1)
{
  if (!a1)
  {
    return 6513524;
  }

  if (a1 == 1)
  {
    return 0x73616C6361746164;
  }

  return 0x65536D6574737973;
}

uint64_t sub_1C93FAB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93FA9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93FAB80(uint64_t a1)
{
  v2 = sub_1C93FB04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93FABBC(uint64_t a1)
{
  v2 = sub_1C93FB04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93FABF8(uint64_t a1)
{
  v2 = sub_1C93FB0A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93FAC34(uint64_t a1)
{
  v2 = sub_1C93FB0A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93FAC70(uint64_t a1)
{
  v2 = sub_1C93FB0F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93FACAC(uint64_t a1)
{
  v2 = sub_1C93FB0F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39B7D0, &qword_1C9405B00);
  v4 = sub_1C939D44C(v3);
  v37 = v5;
  v38 = v4;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v33 - v9;
  v10 = sub_1C93A1890(&qword_1EC39B7D8, &qword_1C9405B08);
  sub_1C939D44C(v10);
  v35 = v11;
  v13 = *(v12 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v40 = sub_1C93A1890(&qword_1EC39B7E0, &qword_1C9405B10);
  sub_1C939D44C(v40);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  v24 = *(v1 + 8);
  v39 = *v1;
  v34 = v24;
  v25 = *(v1 + 16);
  v26 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93FB04C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v25)
  {
    if (v25 == 1)
    {
      LOBYTE(v41[0]) = 1;
      sub_1C93FB0A0();
      v27 = v36;
      v28 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v38;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v37 + 8))(v27, v29);
      return (*(v18 + 8))(v23, v28);
    }

    else
    {
      v42 = 2;
      v32 = v40;
      KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
      sub_1C939EA94(v41);
      return (*(v18 + 8))(v23, v32);
    }
  }

  else
  {
    LOBYTE(v41[0]) = 0;
    sub_1C93FB0F4();
    v31 = v40;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v41[0] = v39;
    v41[1] = v34;
    sub_1C93B229C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v35 + 8))(v16, v10);
    return (*(v18 + 8))(v23, v31);
  }
}

unint64_t sub_1C93FB04C()
{
  result = qword_1EE02B7D8;
  if (!qword_1EE02B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B7D8);
  }

  return result;
}

unint64_t sub_1C93FB0A0()
{
  result = qword_1EC39B7E8;
  if (!qword_1EC39B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B7E8);
  }

  return result;
}

unint64_t sub_1C93FB0F4()
{
  result = qword_1EE02B7B0;
  if (!qword_1EE02B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B7B0);
  }

  return result;
}

uint64_t AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_1C93A1890(&qword_1EC39B7F0, &qword_1C9405B18);
  v57 = sub_1C939D44C(v3);
  v58 = v4;
  v6 = *(v5 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v55 - v8;
  v9 = sub_1C93A1890(&qword_1EC39B7F8, &qword_1C9405B20);
  v55 = sub_1C939D44C(v9);
  v56 = v10;
  v12 = *(v11 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = type metadata accessor for DecodingError.Context();
  v17 = sub_1C939D44C(v16);
  v59 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C93A1890(&qword_1EC39B800, &unk_1C9405B28);
  sub_1C939D44C(v23);
  v62 = v24;
  v26 = *(v25 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v55 - v28;
  v30 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93FB04C();
  v31 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    goto LABEL_11;
  }

  v65 = a1;
  v32 = KeyedDecodingContainer.allKeys.getter();
  if (!*(v32 + 16))
  {

    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    v40 = *(sub_1C93A1890(&qword_1EC39AAB0, "̗") + 48);
    *v39 = &type metadata for AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload;
    v41 = v59;
    (*(v59 + 16))(&v39[v40], v22, v16);
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v41 + 8))(v22, v16);
    (*(v62 + 8))(v29, v23);
    a1 = v65;
LABEL_11:
    v45 = a1;
    return sub_1C939EA94(v45);
  }

  v33 = *(v32 + 32);

  if (!v33)
  {
    LOBYTE(v63) = 0;
    sub_1C93FB0F4();
    v42 = v15;
    sub_1C93FBBA4();
    sub_1C93B22F0();
    v47 = v55;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v56 + 1))(v42, v47);
    v48 = sub_1C93FBB94();
    v49(v48);
    v51 = v63;
    v54 = v64;
    v34 = v65;
LABEL_9:
    v36 = v60;
    goto LABEL_10;
  }

  v34 = v65;
  v35 = v62;
  if (v33 != 1)
  {
    v43 = sub_1C93FBB94();
    v44(v43);
    v51 = 0;
    v54 = 0;
    goto LABEL_9;
  }

  LOBYTE(v63) = 1;
  sub_1C93FB0A0();
  sub_1C93FBBA4();
  v36 = v60;
  v56 = v29;
  v59 = v23;
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  v51 = MEMORY[0x1CCA876F0](v46);

  v52 = sub_1C939D654();
  v53(v52);
  (*(v35 + 8))(v56, v59);
  v54 = 0;
LABEL_10:
  *v36 = v51;
  *(v36 + 8) = v54;
  *(v36 + 16) = v33;
  v45 = v34;
  return sub_1C939EA94(v45);
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C93FB7CC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C93FB87C()
{
  result = qword_1EC39B808;
  if (!qword_1EC39B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B808);
  }

  return result;
}

unint64_t sub_1C93FB8D4()
{
  result = qword_1EC39B810;
  if (!qword_1EC39B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B810);
  }

  return result;
}

unint64_t sub_1C93FB92C()
{
  result = qword_1EC39B818;
  if (!qword_1EC39B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B818);
  }

  return result;
}

unint64_t sub_1C93FB984()
{
  result = qword_1EE02B7B8;
  if (!qword_1EE02B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B7B8);
  }

  return result;
}

unint64_t sub_1C93FB9DC()
{
  result = qword_1EE02B7C0;
  if (!qword_1EE02B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B7C0);
  }

  return result;
}

unint64_t sub_1C93FBA34()
{
  result = qword_1EE02B7A0;
  if (!qword_1EE02B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B7A0);
  }

  return result;
}

unint64_t sub_1C93FBA8C()
{
  result = qword_1EE02B7A8;
  if (!qword_1EE02B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B7A8);
  }

  return result;
}

unint64_t sub_1C93FBAE4()
{
  result = qword_1EE02B7C8;
  if (!qword_1EE02B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B7C8);
  }

  return result;
}

unint64_t sub_1C93FBB3C()
{
  result = qword_1EE02B7D0;
  if (!qword_1EE02B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B7D0);
  }

  return result;
}

uint64_t sub_1C93FBBA4()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x1EEE68DA0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = MEMORY[0x1EEE690A0](repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

{
  return MEMORY[0x1EEE6AD18]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE20]();
}

{
  return MEMORY[0x1EEE6AE50]();
}