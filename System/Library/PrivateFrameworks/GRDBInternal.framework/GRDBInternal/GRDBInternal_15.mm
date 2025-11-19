void sub_1B2224248()
{
  sub_1B2111640();
  v2 = v1;
  type metadata accessor for SchedulingWatchdog();
  if (sub_1B21114CC())
  {
    v3 = *(v0 + 16);
    v4 = sub_1B211A144(v3);
    if (v4)
    {
      v5 = Database.isInsideTransaction.getter();
      v2(v3);
      if ((v5 & 1) == 0)
      {
        sub_1B21343E4(v3, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 172, v0);
      }
    }

    else
    {
      v7 = *(v0 + 40);
      MEMORY[0x1EEE9AC00](v4);
      sub_1B2122364();
    }
  }

  else
  {
    v6 = *(v0 + 40);
    MEMORY[0x1EEE9AC00](0);
    sub_1B2122364();
  }

  sub_1B2112FDC();
}

uint64_t sub_1B2224430(uint64_t a1)
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B21114CC();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 16);
    swift_beginAccess();
    v5 = *(a1 + 16);
    swift_beginAccess();

    sub_1B2150300(v6);
    swift_endAccess();
    sub_1B2134088();
    v7 = *(v3 + 16);
    *(v3 + 16) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2224558()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_1B2224430(v0[2]);
}

uint64_t sub_1B2224578(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B21114CC();
  if (result)
  {
    v9 = result;

    v10 = sub_1B221D8A4(a1, v9, a2, a3, a4);

    return v10 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B222462C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = Database.isInsideTransaction.getter();
  a2(&v9, v7);
  if ((v8 & 1) == 0)
  {
    sub_1B21343E4(v7, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, a4, a1);
  }
}

void sub_1B22246E8()
{
  sub_1B2111640();
  sub_1B2115410(v3);
  v4 = sub_1B2115A24();
  v1(v4);
  if ((v2 & 1) == 0)
  {
    v5 = sub_1B211790C();
    sub_1B21343E4(v5, v6, v7, v8, v9, v0);
  }

  sub_1B2112FDC();
}

uint64_t sub_1B2224748(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  result = a1(v3);
  if ((*(v3 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 41) & 1) == 0)
  {
    result = Database.isInsideTransaction.getter();
    if (result)
    {
      result = sub_1B2252EC0();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B22247F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B2117B40(*(a5 + 16));
  if ((result & 1) == 0)
  {
    sub_1B2112A88();
    result = sub_1B211492C();
    __break(1u);
  }

  return result;
}

void sub_1B2224884(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_1B222462C(a1, a2, a3, 159);
  if (!v4)
  {
    *a4 = v6 & 1;
  }
}

uint64_t sub_1B22248D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t)@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1B2224578(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_1B22249A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static FetchableRecord.databaseDecodingUserInfo.getter()
{
  sub_1B2252E60();

  return sub_1B2252190();
}

void sub_1B2224A04()
{
  sub_1B2111F14();
  v0 = sub_1B2251A00();
  v1 = sub_1B211280C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1B2111844();
  v8 = v7 - v6;
  v9 = sub_1B22519D0();
  v10 = sub_1B211280C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v17 = v16 - v15;
  v18 = sub_1B22519C0();
  v19 = sub_1B211280C(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1B2111844();
  v26 = v25 - v24;
  v27 = sub_1B2251A50();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_1B2251A40();
  (*(v21 + 104))(v26, *MEMORY[0x1E6967F08], v18);
  sub_1B22519E0();
  (*(v12 + 104))(v17, *MEMORY[0x1E6967F18], v9);
  sub_1B22519F0();
  (*(v3 + 104))(v8, *MEMORY[0x1E6967F40], v0);
  sub_1B2251A10();
  sub_1B2252E60();
  sub_1B2252190();
  sub_1B2225128();

  sub_1B2251A30();
  sub_1B2111588();
}

void static FetchableRecord.databaseJSONDecoder(for:)()
{
  sub_1B2111F14();
  v33 = v0;
  v32 = v1;
  v31 = sub_1B2251A00();
  v2 = sub_1B211280C(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B2111844();
  v9 = v8 - v7;
  v10 = sub_1B22519D0();
  v11 = sub_1B211280C(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v18 = v17 - v16;
  v19 = sub_1B22519C0();
  v20 = sub_1B211280C(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1B2111844();
  v27 = v26 - v25;
  v28 = sub_1B2251A50();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_1B2251A40();
  (*(v22 + 104))(v27, *MEMORY[0x1E6967F08], v19);
  sub_1B22519E0();
  (*(v13 + 104))(v18, *MEMORY[0x1E6967F18], v10);
  sub_1B22519F0();
  (*(v4 + 104))(v9, *MEMORY[0x1E6967F40], v31);
  sub_1B2251A10();
  (*(v32 + 16))(v33);
  sub_1B2225128();

  sub_1B2251A30();
  sub_1B2111588();
}

unint64_t sub_1B2224EAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1B21619D8(&qword_1EB7A3210, &unk_1B2269F70);
    v1 = sub_1B212DFE0();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  sub_1B21115A0();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v36 = v1 + 64;

  v10 = 0;
  v11 = &qword_1EB7A0E30;
  v37 = v1;
  while (v6)
  {
    v12 = v11;
    v13 = v10;
LABEL_11:
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(a1 + 56) + 24 * v15;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);

    v23 = v22;
    v24 = v17;
    sub_1B2113A20(v20, v21, v23);
    v11 = v12;
    sub_1B21619D8(v12, &unk_1B2259360);
    swift_dynamicCast();
    v43 = v40;
    v44 = v41;
    v45 = v42;
    v39 = v40;
    v40 = v41;
    *&v41 = v42;
    v1 = v37;
    result = sub_1B211E590();
    v25 = result;
    if (v26)
    {
      v27 = (v37[6] + 16 * result);
      v28 = v27[1];
      *v27 = v24;
      v27[1] = v18;

      result = sub_1B21466AC(&v39, v37[7] + 40 * v25, v12, &unk_1B2259360);
      v10 = v13;
    }

    else
    {
      if (v37[2] >= v37[3])
      {
        goto LABEL_18;
      }

      *(v36 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v29 = (v37[6] + 16 * result);
      *v29 = v24;
      v29[1] = v18;
      v30 = v37[7] + 40 * result;
      v31 = v39;
      v32 = v40;
      *(v30 + 32) = v41;
      *v30 = v31;
      *(v30 + 16) = v32;
      v33 = v37[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_19;
      }

      v37[2] = v35;
      v10 = v13;
    }
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return v1;
    }

    v6 = *(a1 + 64 + 8 * v13);
    ++v10;
    if (v6)
    {
      v12 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_1B2225128()
{
  sub_1B2111F14();
  v1 = v0;
  v73 = sub_1B21619D8(&qword_1EB7A3220, &qword_1B2269F88);
  v2 = sub_1B21118A0(v73);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v72 = &v61 - v5;
  v71 = sub_1B21619D8(&qword_1EB7A3228, &qword_1B2269F90);
  v6 = sub_1B21118A0(v71);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v61 - v9;
  v10 = sub_1B2252E60();
  v11 = sub_1B211280C(v10);
  v74 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v17 = (v16 - v15);
  v68 = sub_1B21619D8(&qword_1EB7A3230, &qword_1B2269F98);
  v18 = sub_1B21118A0(v68);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v67 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v61 - v23;
  v75 = v1;
  if (*(v1 + 16))
  {
    sub_1B21619D8(&qword_1EB7A3238, &qword_1B2269FA0);
    v24 = sub_1B212DFE0();
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC8];
  }

  v25 = v75 + 64;
  v26 = 1 << *(v75 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v75 + 64);
  v29 = (v26 + 63) >> 6;
  v64 = v74 + 16;
  v77 = v74 + 32;
  v30 = v24 + 64;

  v31 = 0;
  v62 = v25;
  v63 = v29;
  v69 = v17;
  v65 = v24;
  if (!v28)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v33 = __clz(__rbit64(v28)) | (v31 << 6);
    v34 = v74;
    v35 = v75;
    v36 = *(v75 + 48);
    v76 = *(v74 + 72);
    v37 = v66;
    (*(v74 + 16))(v66, v36 + v76 * v33, v10);
    v38 = *(v35 + 56) + 32 * v33;
    v39 = v68;
    sub_1B21721B4(v38, v37 + *(v68 + 48));
    v40 = v67;
    sub_1B2226DAC(v37, v67);
    v41 = *(v39 + 48);
    v42 = *(v73 + 48);
    v43 = *(v34 + 32);
    v44 = v10;
    v45 = v72;
    v43(v72, v40, v44);
    sub_1B215FE70((v40 + v41), v78);
    sub_1B21619D8(&qword_1EB7A3240, qword_1B2269FA8);
    swift_dynamicCast();
    v46 = v70;
    v47 = *(v71 + 48);
    v43(v70, v45, v44);
    v48 = &v45[v42];
    v10 = v44;
    sub_1B215FE70(v48, &v46[v47]);
    v49 = v69;
    v43(v69, v46, v44);
    sub_1B215FE70(&v46[v47], v78);
    v50 = v65;
    v51 = *(v65 + 40);
    v52 = sub_1B2252210();
    v53 = -1 << *(v50 + 32);
    v54 = v52 & ~v53;
    v55 = v54 >> 6;
    if (((-1 << v54) & ~*(v30 + 8 * (v54 >> 6))) == 0)
    {
      v57 = 0;
      v58 = (63 - v53) >> 6;
      v29 = v63;
      while (++v55 != v58 || (v57 & 1) == 0)
      {
        v59 = v55 == v58;
        if (v55 == v58)
        {
          v55 = 0;
        }

        v57 |= v59;
        v60 = *(v30 + 8 * v55);
        if (v60 != -1)
        {
          v56 = __clz(__rbit64(~v60)) + (v55 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v56 = __clz(__rbit64((-1 << v54) & ~*(v30 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
    v29 = v63;
LABEL_21:
    v28 &= v28 - 1;
    *(v30 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
    v43((*(v50 + 48) + v56 * v76), v49, v10);
    sub_1B215FE70(v78, (*(v50 + 56) + 32 * v56));
    ++*(v50 + 16);
    v25 = v62;
  }

  while (v28);
LABEL_8:
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v29)
    {

      sub_1B2111588();
      return;
    }

    v28 = *(v25 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1B2225608(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1B21619D8(&qword_1EB7A3218, &qword_1B2269F80);
    v2 = sub_1B212DFE0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  sub_1B21115A0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (v12 << 10) | (16 * v13);
    v15 = (*(a1 + 48) + v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = (*(a1 + 56) + v14);
    v28 = *v18;
    v29 = v18[1];

    swift_dynamicCast();
    sub_1B215FE70(&v30, v32);
    sub_1B215FE70(v32, v33);
    sub_1B215FE70(v33, &v31);
    result = sub_1B211E590();
    v19 = result;
    if (v20)
    {
      v21 = (v2[6] + 16 * result);
      v22 = v21[1];
      *v21 = v17;
      v21[1] = v16;

      v23 = (v2[7] + 32 * v19);
      sub_1B2113208(v23);
      result = sub_1B215FE70(&v31, v23);
      v11 = v12;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v24 = (v2[6] + 16 * result);
      *v24 = v17;
      v24[1] = v16;
      result = sub_1B215FE70(&v31, (v2[7] + 32 * result));
      v25 = v2[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v2[2] = v27;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v2;
    }

    v7 = *(a1 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t static FetchableRecord<>.fetchSet(_:arguments:adapter:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1B2115D98(a1, a2, a3, a4, a5, a6, a7, a8, v10);
  if (!v8)
  {
    type metadata accessor for RecordCursor();
    sub_1B2111C38();
    swift_getWitnessTable();
    return Set.init<A>(_:)();
  }

  return result;
}

uint64_t static FetchableRecord<>.fetchSet<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 32))(&v28, a1, 0, a4, a7);
  if (!v7)
  {
    v18 = v30;
    if (v30)
    {
      v31 = a6;
      type metadata accessor for Row();
      v19 = v28;
      v27 = 0uLL;

      v20 = static Row.fetchAll(_:arguments:adapter:)(v19, &v27, v29);
      v18(a1, v20);
      v21 = swift_allocObject();
      v21[2] = a3;
      v21[3] = a4;
      v22 = v31;
      v21[4] = a5;
      v21[5] = v22;
      v21[6] = a7;
      v21[7] = a3;
      sub_1B21619D8(&qword_1EB7A31F0, "ޯ");
      sub_1B211AE9C();
      sub_1B211AB74(v23, v24, "ޯ");
      sub_1B2252F20();

      sub_1B2161A20(&qword_1EB7A11A8, &qword_1B22549B8);
      sub_1B211AE9C();
      sub_1B211AB74(v25, v26, &qword_1B22549B8);
      sub_1B2252E00();
      swift_getWitnessTable();
      a2 = sub_1B2252820();
      sub_1B2112F4C(v18);
    }

    else
    {
      v27 = 0uLL;
      static FetchableRecord<>.fetchSet(_:arguments:adapter:)(v28, &v27, v29, a3, a5, a6, v15, v16);
      sub_1B212D124();
    }

    sub_1B2142D18(&v28);
  }

  return a2;
}

uint64_t sub_1B2225FE8(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[6];
  v5 = *a1;
  v6 = *(v3 + 8);

  return v6(v7, v2, v3);
}

uint64_t sub_1B2226054(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a5 + 8);

  return v8(v9, a3, a5);
}

uint64_t sub_1B22260B8(uint64_t *a1)
{
  v2 = v1[5];
  v3 = v1[6];
  return sub_1B2226054(a1, v1[7], v1[2], v1[3], v1[4]);
}

uint64_t sub_1B2226118(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1B2226154(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = RecordCursor._isDone.modify();
  return sub_1B2171E40;
}

uint64_t sub_1B22261B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2226268(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B2226294(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B22262BC()
{
  if (!*v0)
  {

    sub_1B2112F9C();
    return sub_1B22534E0();
  }

  if (*v0 == 1)
  {
    sub_1B2112F9C();
    sub_1B2226394();
    return sub_1B22534E0();
  }

  v2 = v0[1];
  v3 = sub_1B2112F9C();
  v4(v3);
  sub_1B21139A0(v5, v5[3]);
  sub_1B2112F9C();
  sub_1B22534D0();
  sub_1B22534E0();
  return sub_1B2113208(v5);
}

void sub_1B2226394()
{
  sub_1B2111F14();
  v2 = v1;
  v3 = v0;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_15:

LABEL_16:
    sub_1B2111588();
    return;
  }

  v5 = 4 * v4;
  for (i = 15; ; i = sub_1B2252390())
  {
    v7 = i >> 14;
    if (i >> 14 == v5)
    {
      goto LABEL_15;
    }

    if (sub_1B2252480() != 95 || v8 != 0xE100000000000000)
    {
      break;
    }

LABEL_14:
    ;
  }

  v10 = sub_1B22531F0();

  if (v10)
  {
    goto LABEL_14;
  }

  v11 = 7;
  if (((v2 >> 60) & ((v3 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  v12 = v11 | (v4 << 16);
  while (1)
  {
    sub_1B2118574();
    v13 = sub_1B22523A0();
    if (v7 >= v13 >> 14)
    {
      break;
    }

    sub_1B2118574();
    if (sub_1B2252480() == 95 && v14 == 0xE100000000000000)
    {
    }

    else
    {
      v16 = sub_1B22531F0();

      if ((v16 & 1) == 0)
      {
        break;
      }
    }
  }

  if (v13 >> 14 < v7)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v79 = v12;
  sub_1B2118574();
  v17 = sub_1B2252390();
  v80 = v5;
  if (v5 < v17 >> 14)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v18 = v17;
  sub_1B2118574();
  sub_1B2252390();
  v19 = sub_1B22524A0();
  *&v82 = 95;
  *(&v82 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v19);
  v74[2] = &v82;
  v24 = sub_1B22269A4(0x7FFFFFFFFFFFFFFFLL, 1u, sub_1B2158EB4, v74, v20, v21, v22, v23);
  v25 = v24[2];
  if (v25 == 1)
  {

    sub_1B2252390();
    v26 = sub_1B22524A0();
    v27 = MEMORY[0x1B2741E40](v26);
    v29 = v28;

    goto LABEL_45;
  }

  v77 = v18;
  v78 = v2;
  sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B22546B0;
  if (!v25)
  {
    goto LABEL_57;
  }

  v31 = v30;
  v76 = v3;
  v32 = v24[4];
  v33 = v24[5];
  v34 = v24[6];
  v35 = v24[7];

  v36 = sub_1B2252B10();
  v38 = v37;

  *(v31 + 32) = v36;
  *(v31 + 40) = v38;
  v75 = v31;
  v39 = v24[2];
  if (!v39)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v40 = sub_1B21B6648(1, v39, v24);
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = v46 >> 1;
  v48 = (v46 >> 1) - v44;
  if (__OFSUB__(v46 >> 1, v44))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v48)
  {
    swift_unknownObjectRelease();
    v49 = MEMORY[0x1E69E7CC0];
LABEL_44:
    *&v82 = v75;
    sub_1B2156C88(v49);
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B211AE9C();
    sub_1B211AB74(v58, v59, &qword_1B2254340);
    v27 = sub_1B2252250();
    v29 = v60;

    v18 = v77;
LABEL_45:
    v61 = v18 >> 14;
    v62 = v80;
    if (v7)
    {
      v63 = sub_1B22524A0();
      v64 = MEMORY[0x1B2741E40](v63);
      v66 = v65;

      if (v61 == v62)
      {
        *&v82 = v64;
        *(&v82 + 1) = v66;

        MEMORY[0x1B2741EB0](v27, v29);

LABEL_53:

        goto LABEL_16;
      }

      *&v82 = v64;
      *(&v82 + 1) = v66;

      MEMORY[0x1B2741EB0](v27, v29);

      v29 = *(&v82 + 1);
      v71 = v82;
      v72 = sub_1B22524A0();
      v68 = MEMORY[0x1B2741E40](v72);
      v70 = v73;

      *&v82 = v71;
    }

    else
    {
      if (v61 == v80)
      {
        goto LABEL_16;
      }

      v67 = sub_1B22524A0();
      v68 = MEMORY[0x1B2741E40](v67);
      v70 = v69;

      *&v82 = v27;
    }

    *(&v82 + 1) = v29;

    MEMORY[0x1B2741EB0](v68, v70);

    goto LABEL_53;
  }

  v74[4] = v40;
  v85 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v49 = v85;
    v50 = (v42 + 32 * v44 + 24);
    v81 = v46 >> 1;
    while (v44 < v47)
    {
      v51 = *(v50 - 1);
      v52 = *v50;
      v82 = *(v50 - 3);
      v83 = v51;
      v84 = v52;
      sub_1B2226D58();
      v53 = sub_1B2252B60();
      v55 = v54;
      v85 = v49;
      v56 = *(v49 + 16);
      if (v56 >= *(v49 + 24) >> 1)
      {
        sub_1B2116B10();
        v49 = v85;
      }

      *(v49 + 16) = v56 + 1;
      v57 = v49 + 16 * v56;
      *(v57 + 32) = v53;
      *(v57 + 40) = v55;
      ++v44;
      v50 += 4;
      v47 = v81;
      if (v81 == v44)
      {
        swift_unknownObjectRelease();
        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_60:
  __break(1u);
}

uint64_t sub_1B22269A4(uint64_t a1, unsigned __int8 a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v53[3] = a7;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v16 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v16 != v13)
  {
    v8 = a4;
    v51 = MEMORY[0x1E69E7CC0];
    v10 = a5;
    do
    {
      v49 = v10;
      while (1)
      {
        v17 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v10 = v49;
          goto LABEL_24;
        }

        v12 = a8;
        v18 = sub_1B2252B30();
        a8 = v19;
        v53[0] = v18;
        v53[1] = v19;
        v20 = a3(v53);
        if (v9)
        {

          return a8;
        }

        v21 = v20;

        if (v21)
        {
          break;
        }

        a8 = v12;
        v10 = sub_1B2252B20();
      }

      v23 = (v49 >> 14 == v17) & a2;
      a8 = v12;
      if (!v23)
      {
        if (v17 < v49 >> 14)
        {
          __break(1u);
          return result;
        }

        v50 = sub_1B2252B40();
        v45 = v25;
        v46 = v24;
        v44 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v51 + 16);
          sub_1B2162808();
          v51 = v30;
        }

        v27 = *(v51 + 16);
        if (v27 >= *(v51 + 24) >> 1)
        {
          sub_1B2162808();
          v51 = v31;
        }

        *(v51 + 16) = v27 + 1;
        v28 = (v51 + 32 * v27);
        v28[4] = v50;
        v28[5] = v46;
        v28[6] = v45;
        v28[7] = v44;
        a8 = v12;
      }

      v10 = sub_1B2252B20();
    }

    while (v23 || *(v51 + 16) != a1);
LABEL_24:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v51;
    }

    a8 = v51;
    if (v13 >= v10 >> 14)
    {
      v8 = sub_1B2252B40();
      v10 = v37;
      v12 = v38;
      v13 = v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_32:
      v14 = *(a8 + 16);
      v36 = *(a8 + 24);
LABEL_33:
      v11 = v14 + 1;
      if (v14 < v36 >> 1)
      {
LABEL_34:
        *(a8 + 16) = v11;
        v40 = (a8 + 32 * v14);
        v40[4] = v8;
        v40[5] = v10;
        v40[6] = v12;
        v40[7] = v13;
        return a8;
      }

LABEL_37:
      sub_1B2162808();
      a8 = v41;
      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    v42 = *(a8 + 16);
    sub_1B2162808();
    a8 = v43;
    goto LABEL_32;
  }

  if (v16 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v16)
    {
      v8 = sub_1B2252B40();
      v10 = v32;
      v12 = v33;
      v13 = v34;

      sub_1B2162808();
      a8 = v35;
      v14 = *(v35 + 16);
      v36 = *(v35 + 24);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_39;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1B2226D58()
{
  result = qword_1EB7A3208;
  if (!qword_1EB7A3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3208);
  }

  return result;
}

uint64_t sub_1B2226DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A3230, &qword_1B2269F98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2226EC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1B2226F08()
{
  sub_1B2226EC0();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1B2226F54(uint64_t a1)
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

void sub_1B2226FF0(uint64_t a1@<X8>)
{
  v2 = sub_1B2251D30();
  NSURL.databaseValue.getter(a1);
}

uint64_t sub_1B2227058(sqlite3_stmt *a1, int a2)
{
  v4 = sub_1B2251D30();
  NSURL.databaseValue.getter(&v13);

  v5 = v13;
  v6 = v14;
  v7 = v15;
  switch(v15)
  {
    case 1:
      v8 = sqlite3_bind_double(a1, a2, *&v13);
      goto LABEL_9;
    case 2:
      sub_1B2113A20(v13, v14, 2);
      if (qword_1ED85E010 != -1)
      {
        swift_once();
      }

      v9 = qword_1ED861908;
      v10 = sub_1B2252350();
      v11 = sqlite3_bind_text(a1, a2, (v10 + 32), -1, v9);

      sub_1B2113A44(v5, v6, 2);
      goto LABEL_10;
    case 3:
      v8 = Data.bind(to:at:)(a1, a2);
      goto LABEL_9;
    case 4:
      v8 = sqlite3_bind_null(a1, a2);
      goto LABEL_9;
    default:
      v8 = sqlite3_bind_int64(a1, a2, v13);
LABEL_9:
      v11 = v8;
LABEL_10:
      sub_1B2113A44(v5, v6, v7);
      return v11;
  }
}

uint64_t sub_1B22271D0(sqlite3_stmt *a1, int a2)
{
  if (qword_1ED85D6E0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED85D6E8;
  v5 = sub_1B2251E50();
  v6 = [v4 stringFromDate_];

  sub_1B22522A0();
  v7 = qword_1ED85E010;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED861908;
  v9 = sub_1B2252350();
  v10 = sqlite3_bind_text(a1, a2, (v9 + 32), -1, v8);
  swift_bridgeObjectRelease_n();

  return v10;
}

uint64_t sub_1B2227300(Swift::OpaquePointer a1, Swift::Int32 a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = sub_1B2251ED0();
  v11[1] = v4;
  v5 = MEMORY[0x1B27418E0](v11, 16);
  v7 = v6;
  v8 = Data.bind(to:at:)(a1, a2);
  sub_1B21267A8(v5, v7);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1B22273A4(sqlite3_stmt *a1, int a2)
{
  v4 = qword_1ED85E010;

  if (v4 != -1)
  {
    sub_1B2118584();
  }

  v5 = qword_1ED861908;
  v6 = sub_1B2252350();
  v7 = sqlite3_bind_text(a1, a2, (v6 + 32), -1, v5);

  return v7;
}

uint64_t sub_1B2227450(sqlite3_stmt *a1, int a2)
{
  DatabaseDateComponents.databaseValue.getter();
  switch(v11)
  {
    case 1:
      v4 = sqlite3_bind_double(a1, a2, *&v9);
      goto LABEL_9;
    case 2:
      sub_1B2113A20(v9, v10, 2);
      if (qword_1ED85E010 != -1)
      {
        swift_once();
      }

      v5 = qword_1ED861908;
      v6 = sub_1B2252350();
      v7 = sqlite3_bind_text(a1, a2, (v6 + 32), -1, v5);

      sub_1B2113A44(v9, v10, 2);
      goto LABEL_10;
    case 3:
      v4 = Data.bind(to:at:)(a1, a2);
      goto LABEL_9;
    case 4:
      v4 = sqlite3_bind_null(a1, a2);
      goto LABEL_9;
    default:
      v4 = sqlite3_bind_int64(a1, a2, v9);
LABEL_9:
      v7 = v4;
LABEL_10:
      sub_1B2113A44(v9, v10, v11);
      return v7;
  }
}

uint64_t sub_1B22275C0(sqlite3_stmt *a1, int a2, unint64_t a3, unint64_t a4, unsigned int a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v31 = a2;
  v30 = a1;
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);
  v10 = a4 >> 16;
  v11 = HIDWORD(a4);
  v28 = HIWORD(a4);
  v29 = HIWORD(a5);
  v12 = sub_1B2251F10();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(MEMORY[0x1E696AB90]);
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v35 = v6;
  v36 = v10;
  v37 = v11;
  v38 = v28;
  v39 = v5;
  v40 = v29;
  v18 = [v17 initWithDecimal_];
  sub_1B2251EF0();
  v19 = sub_1B2251F00();
  (*(v13 + 8))(v16, v12);
  v20 = [v18 descriptionWithLocale_];

  v21 = sub_1B22522A0();
  v23 = v22;

  sub_1B2113A20(v21, v23, 2);
  if (qword_1ED85E010 != -1)
  {
    swift_once();
  }

  v24 = qword_1ED861908;
  v25 = sub_1B2252350();
  v26 = sqlite3_bind_text(v30, v31, (v25 + 32), -1, v24);
  swift_bridgeObjectRelease_n();

  return v26;
}

Swift::Int32 __swiftcall DatabaseValueConvertible.bind(to:at:)(Swift::OpaquePointer to, Swift::Int32 at)
{
  (*(v2 + 24))(&v27);
  v3 = v27;
  v4 = v28;
  switch(v28)
  {
    case 1:
      v21 = sub_1B2122C80();
      v7 = sqlite3_bind_double(v21, v22, v23);
      goto LABEL_9;
    case 2:
      v10 = sub_1B2112FD0();
      sub_1B2113A20(v10, v11, 2);
      if (qword_1ED85E010 != -1)
      {
        sub_1B2118584();
      }

      v12 = qword_1ED861908;
      sub_1B2112FD0();
      sub_1B2252350();
      v13 = sub_1B2122C80();
      v16 = sqlite3_bind_text(v13, v14, v15, -1, v12);

      v17 = sub_1B2112FD0();
      sub_1B2113A44(v17, v18, 2);
      goto LABEL_10;
    case 3:
      v19 = sub_1B2122C80();
      v7 = Data.bind(to:at:)(v19, v20);
      goto LABEL_9;
    case 4:
      v8 = sub_1B2122C80();
      v7 = sqlite3_bind_null(v8, v9);
      goto LABEL_9;
    default:
      v5 = sub_1B2122C80();
      v7 = sqlite3_bind_int64(v5, v6, v3);
LABEL_9:
      v16 = v7;
LABEL_10:
      v24 = sub_1B2112FD0();
      sub_1B2113A44(v24, v25, v4);
      return v16;
  }
}

uint64_t sub_1B2227B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  sub_1B2117ADC();
  swift_getAssociatedTypeWitness();
  v7 = sub_1B21226E8();
  return a6(v7);
}

void sub_1B2227D7C()
{
  v1 = *(v0 + 4);
  v2 = *v0;
  v3 = v0[1];
  sub_1B219AD80();
}

uint64_t DatabaseValueCursor._isDone.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

void (*sub_1B2227F08(void *a1))(void *)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = DatabaseValueCursor._isDone.modify();
  return sub_1B21A25C0;
}

void (*sub_1B2228070(void *a1))(void *)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = NullableDatabaseValueCursor._isDone.modify();
  return sub_1B21A325C;
}

uint64_t static DatabaseValueConvertible.fetchAll(_:arguments:adapter:)(uint64_t a1, uint64_t a2)
{
  sub_1B2117FF8(a1, a2);
  result = static DatabaseValueConvertible.fetchCursor(_:arguments:adapter:)(v3, v4, v5, v6, v7);
  if (!v2)
  {
    sub_1B2113BDC();
    sub_1B22526A0();
    sub_1B2113BDC();
    type metadata accessor for DatabaseValueCursor();
    sub_1B21163F8();
    sub_1B2115A58();
    WitnessTable = swift_getWitnessTable();
    sub_1B211494C(WitnessTable, v10, v11);
    return v12;
  }

  return result;
}

uint64_t static DatabaseValueConvertible<>.fetchSet(_:arguments:adapter:)(uint64_t a1, uint64_t a2)
{
  sub_1B2117FF8(a1, a2);
  result = static DatabaseValueConvertible.fetchCursor(_:arguments:adapter:)(v3, v4, v5, v6, v7);
  if (!v2)
  {
    type metadata accessor for DatabaseValueCursor();
    sub_1B2115A58();
    swift_getWitnessTable();
    return Set.init<A>(_:)();
  }

  return result;
}

uint64_t sub_1B22282E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a2;
  sub_1B21140D0(a1, a2, a3, a4, a5, a6);
  v11 = v10();
  if (!v7)
  {
    v19 = sub_1B2114510(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22, v23[0]);
    v9 = a7(v19);
    sub_1B2142D18(v23);
  }

  return v9;
}

uint64_t static DatabaseValueConvertible.fetchOne<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B21140D0(a1, a2, a3, a4, a5, a6);
  result = v7();
  if (!v6)
  {
    sub_1B2114510(result, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18[0]);
    static DatabaseValueConvertible.fetchOne(_:arguments:adapter:)();
    return sub_1B2142D18(v18);
  }

  return result;
}

uint64_t sub_1B22285C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t), uint64_t (*a7)(uint64_t, void *, _BYTE *))
{
  v10 = *a2;
  v11 = a2[1];
  a6(0, a4, a5);
  v14[0] = v10;
  v14[1] = v11;
  sub_1B2122784(a3, v13);

  sub_1B211CF8C(v10);
  return a7(a1, v14, v13);
}

uint64_t static Optional<A>.fetchAll(_:arguments:adapter:)(uint64_t a1, uint64_t a2)
{
  sub_1B2117FF8(a1, a2);
  result = static Optional<A>.fetchCursor(_:arguments:adapter:)(v3, v4, v5, v6, v7);
  if (!v2)
  {
    sub_1B2252B00();
    sub_1B22526A0();
    sub_1B2113BDC();
    type metadata accessor for NullableDatabaseValueCursor();
    sub_1B21163F8();
    sub_1B2116884();
    WitnessTable = swift_getWitnessTable();
    sub_1B211494C(WitnessTable, v10, v11);
    return v12;
  }

  return result;
}

uint64_t sub_1B2228AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v11 = (*(a7 + 32))(v23, a1, 0, a4, a7);
  if (!v8)
  {
    v19 = sub_1B2114510(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22, v23[0]);
    a2 = a8(v19);
    sub_1B2142D18(v23);
  }

  return a2;
}

uint64_t sub_1B2228BE8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2228C24(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2228C60(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2228C9C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2228DCC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    result = sub_1B2252380();
    if (!__OFSUB__(result, v1))
    {
      sub_1B22523B0();
      sub_1B22524A0();
      sub_1B21148B4();
      return sub_1B21121BC();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2228E9C(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_1B222ECE8(0, (v4 - result) & ~((v4 - result) >> 63), v4);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      a3(0);
      sub_1B21148B4();
      return sub_1B21121BC();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2228FAC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B21B2A90(v2, &v22);
  if (v23)
  {
    sub_1B21217FC(&v22, v24);
    swift_beginAccess();
    v21 = *(v1 + 80);
    if (*(Row.PrefetchedRowsView.keys.getter() + 16))
    {
      sub_1B2252CD0();

      sub_1B219C744();
      v4 = v3;

      v5 = MEMORY[0x1B2742080](v4, MEMORY[0x1E69E6158]);
      v7 = v6;

      MEMORY[0x1B2741EB0](v5, v7);

      v8 = 0x80000001B2270870;
    }

    else
    {

      v8 = 0x80000001B22708A0;
    }

    v24[6] = v8;
    v9 = sub_1B2252D40();
    swift_allocError();
    v11 = v10;
    sub_1B211EE68(v24, v10);

    sub_1B2228E9C(1, v2, sub_1B21B6648);
    v13 = v12;
    v15 = v14;
    if (v14)
    {
      sub_1B2253280();
      swift_unknownObjectRetain_n();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {
        swift_unknownObjectRelease();
        v16 = MEMORY[0x1E69E7CC0];
      }

      v17 = *(v16 + 16);

      if (__OFSUB__(v15 >> 1, v13))
      {
        __break(1u);
      }

      else if (v17 == (v15 >> 1) - v13)
      {
        v18 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v18)
        {
LABEL_13:
          v19 = v11 + *(sub_1B21619D8(&qword_1EB7A3260, &qword_1B226A778) + 48);
          sub_1B2252D30();
          (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6AF0], v9);
          swift_willThrow();
          return sub_1B2113208(v24);
        }

LABEL_12:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    sub_1B216EAD0();
    goto LABEL_12;
  }

  sub_1B212AC5C(&v22, &qword_1EB7A3258, &qword_1B226A770);
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B22292F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v6 + 16);
  if (v7)
  {
    sub_1B211EE68(v6 + 40 * v7 - 8, v30);
    sub_1B21139A0(v30, v31);
    v8 = sub_1B22534D0();
    v10 = v9;
    v11 = v5[5];
    v12 = v5[6];
    sub_1B21139A0(v5 + 2, v11);
    v13 = (*(v12 + 88))(v8, v10, v11, v12);
    LOBYTE(v11) = v14;

    if (v11)
    {
      sub_1B21139A0(v30, v31);
      v15 = sub_1B22534D0();
      v17 = v16;
      v26 = 0uLL;
      LOBYTE(v27) = -1;

      RowDecodingContext.init(row:key:)(v18, &v26, v25);
      sub_1B21A2FC0();
      swift_allocError();
      static RowDecodingError.columnNotFound(_:context:)(v15, v17, v25, v19);

      v26 = v25[0];
      v27 = v25[1];
      v28 = v25[2];
      v29 = v25[3];
      sub_1B218450C(&v26);
      swift_willThrow();
    }

    else
    {
      v23 = *(a1 + 16);
      v24 = *(a1 + 24);
      a2[3] = type metadata accessor for ColumnDecoder();
      a2[4] = swift_getWitnessTable();
      *a2 = v5;
      a2[1] = v13;
      a2[2] = v6;
    }

    return sub_1B2113208(v30);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(a1 + 24);
    a2[3] = type metadata accessor for ColumnDecoder();
    a2[4] = swift_getWitnessTable();
    *a2 = v5;
    a2[1] = 0;
    a2[2] = v6;
  }
}

uint64_t sub_1B2229524()
{
  if (v0[12])
  {
    v1 = v0[12];
  }

  else
  {
    v1 = sub_1B2229584(v0);
    v2 = v0[12];
    v0[12] = v1;
  }

  return v1;
}

uint64_t sub_1B2229584(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  if (a1[11])
  {

    sub_1B2169254(v3);
  }

  else
  {

    sub_1B21691C4(v4);
  }

  Row.scopes.getter();
  Row.ScopesTreeView.names.getter();

  sub_1B213FE4C();
  swift_beginAccess();
  v11 = *(v1 + 80);
  Row.PrefetchedRowsView.keys.getter();
  sub_1B213FE4C();
  v5 = *(v2 + 88);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(v2 + 80);
  v10 = *(v2 + 96);
  sub_1B21619D8(&qword_1EB7A3280, &unk_1B226A7B0);
  sub_1B211AB74(qword_1EB7A3288, &qword_1EB7A3280, &unk_1B226A7B0);
  v7 = sub_1B22524D0();

  return v7;
}

uint64_t sub_1B2229778(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1B22534E0();
}

uint64_t sub_1B22298E8()
{
  sub_1B211D7E8();
  if (!v1)
  {
    sub_1B211689C();
    v0 = v2();
  }

  return v0;
}

uint64_t sub_1B2229980()
{
  sub_1B211D7E8();
  if (!v1)
  {
    sub_1B211689C();
    v0 = v2();
  }

  return v0;
}

uint64_t sub_1B2229A18()
{
  sub_1B211D7E8();
  if (!v1)
  {
    sub_1B211689C();
    v0 = v2();
  }

  return v0;
}

void sub_1B2229AB0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v40 = a3;
  v7 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v28[-1] - v10;
  v12 = *v3;
  v13 = v3[1];
  v14 = *(v3 + 16);
  v15 = *(a1 + 64);
  if (v15)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      MEMORY[0x1EEE9AC00](v9);
      *(&v27 - 2) = a1;
      *(&v27 - 1) = a2;
      if (sqlite3_column_type(v15, a2) == 5)
      {
        goto LABEL_10;
      }

      *&v34 = v12;
      *(&v34 + 1) = v13;
      LOBYTE(v35) = v14;
      v20 = v40;
      sub_1B222D200(v15, a2, &v34, sub_1B222EE2C, (&v27 - 4), v40);
      if (!v4)
      {
        v17 = sub_1B2251E90();
        v18 = v20;
        v19 = 0;
        goto LABEL_11;
      }

      return;
    }

    __break(1u);
LABEL_20:
    swift_unexpectedError();
    __break(1u);
    return;
  }

  sub_1B222EAB8(a2, &v38);
  if (v4)
  {
    goto LABEL_20;
  }

  v16 = v39;
  if (v39 == 4 && v38 == 0)
  {
    sub_1B2113A44(0, 0, 4);
LABEL_10:
    v17 = sub_1B2251E90();
    v18 = v40;
    v19 = 1;
LABEL_11:
    sub_1B21117B4(v18, v19, 1, v17);
    return;
  }

  *&v34 = v12;
  *(&v34 + 1) = v13;
  LOBYTE(v35) = v14;
  v21 = v38;
  v30 = v38;
  v22 = *(&v38 + 1);
  LOBYTE(v31) = v39;
  sub_1B222E668(&v30, v11);
  v23 = sub_1B2251E90();
  if (sub_1B2122A98(v11, 1, v23) != 1)
  {
    sub_1B2113A44(v21, v22, v16);
    v26 = v40;
    (*(*(v23 - 8) + 32))(v40, v11, v23);
    v18 = v26;
    v19 = 0;
    v17 = v23;
    goto LABEL_11;
  }

  sub_1B212AC5C(v11, &qword_1EB7A1330, &unk_1B226A760);
  v34 = a2;
  LOBYTE(v35) = 1;

  RowDecodingContext.init(row:key:)(v24, &v34, &v30);
  v28[0] = v21;
  v28[1] = v22;
  v29 = v16;
  sub_1B21A2FC0();
  swift_allocError();
  sub_1B2183238(v23, &v30, v28, v25);
  v34 = v30;
  v35 = v31;
  v36 = v32;
  v37 = v33;
  sub_1B218450C(&v34);
  swift_willThrow();
  sub_1B2113A44(v21, v22, v16);
}

void sub_1B2229E00(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = v4;
  v9 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24[-1] - v11;
  v14 = *v3;
  v13 = v3[1];
  v15 = *(v3 + 16);
  v16 = *(a1 + 64);
  if (v16)
  {
    *&v30 = *v3;
    *(&v30 + 1) = v13;
    LOBYTE(v31) = v15;
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {

      sub_1B222DBFC(v16, a2, &v30, a1, a2, a3);
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  sub_1B222EAB8(a2, &v34);
  if (v5)
  {
LABEL_11:
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *&v30 = v14;
  *(&v30 + 1) = v13;
  v17 = *(&v34 + 1);
  v18 = v34;
  LOBYTE(v31) = v15;
  v26 = v34;
  v19 = v35;
  LOBYTE(v27) = v35;
  sub_1B222E668(&v26, v12);
  v20 = sub_1B2251E90();
  if (sub_1B2122A98(v12, 1, v20) == 1)
  {
    sub_1B212AC5C(v12, &qword_1EB7A1330, &unk_1B226A760);
    v30 = a2;
    LOBYTE(v31) = 1;

    RowDecodingContext.init(row:key:)(v21, &v30, &v26);
    v24[0] = v18;
    v24[1] = v17;
    v25 = v19;
    sub_1B21A2FC0();
    swift_allocError();
    sub_1B2183238(v20, &v26, v24, v22);
    v30 = v26;
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1B218450C(&v30);
    swift_willThrow();
    sub_1B2113A44(v18, v17, v19);
  }

  else
  {
    sub_1B2113A44(v18, v17, v19);
    (*(*(v20 - 8) + 32))(a3, v12, v20);
  }
}

uint64_t sub_1B222A0F8()
{
  v0 = sub_1B2252D40();
  swift_allocError();
  v2 = v1;
  v3 = *(sub_1B21619D8(&qword_1EB7A3270, &qword_1B226A798) + 48);
  *v2 = sub_1B21619D8(&qword_1EB7A3278, &unk_1B226A7A0);
  sub_1B211FEA4();
  sub_1B2252D30();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

unint64_t sub_1B222A1E4@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(*v1 + 80);
  v8 = *(*v1 + 96);
  a1[3] = type metadata accessor for _RowDecoder();
  a1[4] = swift_getWitnessTable();
  v9 = swift_allocObject();
  *a1 = v9;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v9[5] = v6;

  return sub_1B212E5CC(v5);
}

uint64_t sub_1B222A2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v5;
  v9 = sub_1B212FED0(a4);
  if (v9)
  {
    v11 = v9;
    v12 = v10;
    v13 = *(v10 + 8);
    v19[3] = v9;
    v19[4] = v10;
    sub_1B212FF14(v19);

    v13(v14, v11, v12);
    sub_1B21619D8(&qword_1EB7A3268, &qword_1B226A790);
    return swift_dynamicCast();
  }

  else
  {
    v16 = *(v8 + 80);
    v17 = *(v8 + 96);
    type metadata accessor for _RowDecoder();
    swift_getWitnessTable();
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;
    v18[4] = 0;
    v18[5] = 0;

    return sub_1B22527E0();
  }
}

uint64_t sub_1B222A44C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B222A488(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B222A4C8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B222A6EC(uint64_t a1, uint64_t a2)
{
  sub_1B2117920(a1, a2);
  v3 = sub_1B2112E78();
  return v2(v3);
}

uint64_t sub_1B222A730(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  type metadata accessor for _RowDecoder.KeyedContainer();
  return sub_1B22532A0();
}

uint64_t sub_1B222A948(uint64_t a1, uint64_t a2)
{
  sub_1B2117920(a1, a2);
  v3 = sub_1B2112E78();
  v4 = v2(v3);
  return sub_1B2114520(v4 & 0x1FF);
}

uint64_t sub_1B222A9C0(uint64_t a1, uint64_t a2)
{
  sub_1B2117920(a1, a2);
  v3 = sub_1B2112E78();
  v4 = v2(v3);
  return sub_1B2114520(v4 & 0x1FFFF);
}

uint64_t sub_1B222AA38(uint64_t a1, uint64_t a2)
{
  sub_1B2117920(a1, a2);
  v3 = sub_1B2112E78();
  v4 = v2(v3);
  return sub_1B21185A4(v4);
}

uint64_t sub_1B222AAAC(uint64_t a1, uint64_t a2)
{
  sub_1B2117920(a1, a2);
  v4 = sub_1B2112E78();
  result = v2(v4);
  if (v3)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B222AB28(uint64_t a1, uint64_t a2)
{
  sub_1B2117920(a1, a2);
  v4 = sub_1B2112E78();
  result = v2(v4);
  if (v3)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B222AC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[3] = type metadata accessor for PrefetchedRowsDecoder();
  a4[4] = swift_getWitnessTable();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t sub_1B222AE00(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B2252C20();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

BOOL sub_1B222AE40(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v4 = sub_1B2252C20();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 <= a3;
}

uint64_t sub_1B222AE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[6] = a4;
  v5 = v4;
  if (sub_1B212FED0(a3))
  {
    (*(v7 + 40))(v24);
    v9 = v24[0];
    v8 = v24[1];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = v4[2];
  v11 = *v5;
  v12 = *v5 & 0xC000000000000001;
  sub_1B21C2A5C(v5[2], v12 == 0, *v5);
  if (v12)
  {
    v13 = MEMORY[0x1B27427E0](v10, v11);
  }

  else
  {
    v13 = *(v11 + 8 * v10 + 32);
  }

  v14 = v5[1];
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v24[3] = type metadata accessor for _RowDecoder();
  v24[4] = swift_getWitnessTable();
  v17 = swift_allocObject();
  v24[0] = v17;
  v17[2] = v13;
  v17[3] = v14;
  v17[4] = v9;
  v17[5] = v8;

  result = sub_1B22527E0();
  v19 = v5[2];
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  v22 = v20;
  if (v23)
  {
    if (!v22)
    {
LABEL_13:
      v5[2] = v21;
      return result;
    }

    __break(1u);
  }

  if (!v22)
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B222B134(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  return sub_1B222AE00(*v1);
}

uint64_t sub_1B222B19C(uint64_t a1)
{
  sub_1B222AE8C(MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], MEMORY[0x1E69E6390]);
  if (!v1)
  {
    v2 = v4;
  }

  return v2 & 1;
}

uint64_t sub_1B222B1E8(uint64_t a1)
{
  result = sub_1B222AE8C(MEMORY[0x1E69E6158], a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190]);
  if (!v1)
  {
    return v3;
  }

  return result;
}

double sub_1B222B230(uint64_t a1)
{
  sub_1B222AE8C(MEMORY[0x1E69E63B0], a1, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63E8]);
  if (!v1)
  {
    return v3;
  }

  return result;
}

float sub_1B222B278(uint64_t a1)
{
  sub_1B222AE8C(MEMORY[0x1E69E6448], a1, MEMORY[0x1E69E6448], MEMORY[0x1E69E6478]);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1B222B3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B222AE8C(a3, a1, a3, a4);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B222B450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B222AE8C(a3, a1, a3, a4);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B222B4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B222AE8C(a3, a1, a3, a4);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B222B510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B222AE8C(a3, a1, a3, a4);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B222B5B8()
{
  result = sub_1B2253010();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B222B608()
{
  result = sub_1B2253020();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B222B6B0()
{
  result = sub_1B2253050();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B222B700()
{
  result = sub_1B2253030();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B222B828()
{
  result = sub_1B2253060();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B222B878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1B222B9C8(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) == 0 && *(a1 + 72) > iCol)
  {
    v3 = *(a1 + 64);
    if (!v3)
    {
      v7 = sub_1B21B9AA0();
      return v7 & 1;
    }

    if (!(iCol >> 31))
    {
      if (sqlite3_column_type(*(a1 + 64), iCol) == 5)
      {
        v13 = iCol;
        LOBYTE(v14) = 1;

        RowDecodingContext.init(row:key:)(v4, &v13, v17);
        sub_1B21A2FC0();
        swift_allocError();
        v6 = v5;
        v13 = v17[0];
        v14 = v17[1];
        v15 = v17[2];
        v16 = v17[3];
        sub_1B21320F0(v3, iCol, &v11);
        v9 = v11;
        v10 = v12;
        sub_1B2183238(MEMORY[0x1E69E6370], &v13, &v9, v6);
        sub_1B2113A44(v9, *(&v9 + 1), v10);
        sub_1B218450C(v17);
        v7 = swift_willThrow();
      }

      else
      {
        v7 = sqlite3_column_int64(v3, iCol) != 0;
      }

      return v7 & 1;
    }

    __break(1u);
  }

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

void sub_1B222BB68(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9B0C();
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || (v4 = sqlite3_column_int64(v3, iCol), v4 != v4))
  {
    v12 = iCol;
    LOBYTE(v13) = 1;

    RowDecodingContext.init(row:key:)(v5, &v12, v16);
    sub_1B21A2FC0();
    swift_allocError();
    v7 = v6;
    v12 = v16[0];
    v13 = v16[1];
    v14 = v16[2];
    v15 = v16[3];
    sub_1B21320F0(v3, iCol, &v10);
    v8 = v10;
    v9 = v11;
    sub_1B2183238(MEMORY[0x1E69E7230], &v12, &v8, v7);
    sub_1B2113A44(v8, *(&v8 + 1), v9);
    sub_1B218450C(v16);
    swift_willThrow();
  }
}

void sub_1B222BD00(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9B3C();
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || (v4 = sqlite3_column_int64(v3, iCol), v4 != v4))
  {
    v12 = iCol;
    LOBYTE(v13) = 1;

    RowDecodingContext.init(row:key:)(v5, &v12, v16);
    sub_1B21A2FC0();
    swift_allocError();
    v7 = v6;
    v12 = v16[0];
    v13 = v16[1];
    v14 = v16[2];
    v15 = v16[3];
    sub_1B21320F0(v3, iCol, &v10);
    v8 = v10;
    v9 = v11;
    sub_1B2183238(MEMORY[0x1E69E7290], &v12, &v8, v7);
    sub_1B2113A44(v8, *(&v8 + 1), v9);
    sub_1B218450C(v16);
    swift_willThrow();
  }
}

void sub_1B222BE98(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9B6C();
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || (v4 = sqlite3_column_int64(v3, iCol), v4 != v4))
  {
    v12 = iCol;
    LOBYTE(v13) = 1;

    RowDecodingContext.init(row:key:)(v5, &v12, v16);
    sub_1B21A2FC0();
    swift_allocError();
    v7 = v6;
    v12 = v16[0];
    v13 = v16[1];
    v14 = v16[2];
    v15 = v16[3];
    sub_1B21320F0(v3, iCol, &v10);
    v8 = v10;
    v9 = v11;
    sub_1B2183238(MEMORY[0x1E69E72F0], &v12, &v8, v7);
    sub_1B2113A44(v8, *(&v8 + 1), v9);
    sub_1B218450C(v16);
    swift_willThrow();
  }
}

void sub_1B222C030(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9BFC();
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || sqlite3_column_int64(v3, iCol) >= 0x100)
  {
    v11 = iCol;
    LOBYTE(v12) = 1;

    RowDecodingContext.init(row:key:)(v4, &v11, v15);
    sub_1B21A2FC0();
    swift_allocError();
    v6 = v5;
    v11 = v15[0];
    v12 = v15[1];
    v13 = v15[2];
    v14 = v15[3];
    sub_1B21320F0(v3, iCol, &v9);
    v7 = v9;
    v8 = v10;
    sub_1B2183238(MEMORY[0x1E69E7508], &v11, &v7, v6);
    sub_1B2113A44(v7, *(&v7 + 1), v8);
    sub_1B218450C(v15);
    swift_willThrow();
  }
}

void sub_1B222C1C8(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9C80();
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || sqlite3_column_int64(v3, iCol) >= 0x10000)
  {
    v11 = iCol;
    LOBYTE(v12) = 1;

    RowDecodingContext.init(row:key:)(v4, &v11, v15);
    sub_1B21A2FC0();
    swift_allocError();
    v6 = v5;
    v11 = v15[0];
    v12 = v15[1];
    v13 = v15[2];
    v14 = v15[3];
    sub_1B21320F0(v3, iCol, &v9);
    v7 = v9;
    v8 = v10;
    sub_1B2183238(MEMORY[0x1E69E75F8], &v11, &v7, v6);
    sub_1B2113A44(v7, *(&v7 + 1), v8);
    sub_1B218450C(v15);
    swift_willThrow();
  }
}

void sub_1B222C360(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9D04();
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || sqlite3_column_int64(v3, iCol) >> 32)
  {
    v11 = iCol;
    LOBYTE(v12) = 1;

    RowDecodingContext.init(row:key:)(v4, &v11, v15);
    sub_1B21A2FC0();
    swift_allocError();
    v6 = v5;
    v11 = v15[0];
    v12 = v15[1];
    v13 = v15[2];
    v14 = v15[3];
    sub_1B21320F0(v3, iCol, &v9);
    v7 = v9;
    v8 = v10;
    sub_1B2183238(MEMORY[0x1E69E7668], &v11, &v7, v6);
    sub_1B2113A44(v7, *(&v7 + 1), v8);
    sub_1B218450C(v15);
    swift_willThrow();
  }
}

uint64_t sub_1B222C4F8(uint64_t a1, unint64_t iCol, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(unint64_t), uint64_t a7)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v8 = *(a1 + 64);
  if (!v8)
  {
    return a6(iCol);
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2122384();
    result = sub_1B2115A74();
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || (result = sqlite3_column_int64(v8, iCol), result < 0))
  {
    v35 = iCol;
    v36 = 1;

    RowDecodingContext.init(row:key:)(v11, &v35, v37);
    sub_1B21A2FC0();
    swift_allocError();
    v12 = sub_1B2111C78();
    sub_1B21320F0(v12, iCol, v13);
    sub_1B2116424(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26, v27, v29, v31, v33, v34);
    sub_1B2183238(a7, v22, v23, v24);
    sub_1B2113A44(v28, v30, v32);
    sub_1B218450C(v37);
    return swift_willThrow();
  }

  return result;
}

void sub_1B222C640(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9E0C();
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_10:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5)
  {
    v11 = iCol;
    LOBYTE(v12) = 1;

    RowDecodingContext.init(row:key:)(v4, &v11, v15);
    sub_1B21A2FC0();
    swift_allocError();
    v6 = v5;
    v11 = v15[0];
    v12 = v15[1];
    v13 = v15[2];
    v14 = v15[3];
    sub_1B21320F0(v3, iCol, &v9);
    v7 = v9;
    v8 = v10;
    sub_1B2183238(MEMORY[0x1E69E6448], &v11, &v7, v6);
    sub_1B2113A44(v7, *(&v7 + 1), v8);
    sub_1B218450C(v15);
    swift_willThrow();
  }

  else
  {
    sqlite3_column_double(v3, iCol);
  }
}

void sub_1B222C7D8(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9E74();
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_10:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5)
  {
    v11 = iCol;
    LOBYTE(v12) = 1;

    RowDecodingContext.init(row:key:)(v4, &v11, v15);
    sub_1B21A2FC0();
    swift_allocError();
    v6 = v5;
    v11 = v15[0];
    v12 = v15[1];
    v13 = v15[2];
    v14 = v15[3];
    sub_1B21320F0(v3, iCol, &v9);
    v7 = v9;
    v8 = v10;
    sub_1B2183238(MEMORY[0x1E69E63B0], &v11, &v7, v6);
    sub_1B2113A44(v7, *(&v7 + 1), v8);
    sub_1B218450C(v15);
    swift_willThrow();
  }

  else
  {
    sqlite3_column_double(v3, iCol);
  }
}

void sub_1B222C96C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a4;
  v44 = a8;
  v52 = a9;
  v16 = sub_1B2251E90();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v21 == a1)
  {
    (*(a7 + 32))(&v47, a5, a7, v18);
    v45 = v47;
    v46 = v48;
    sub_1B2229E00(a2, a3, v20);
    sub_1B2187B6C(v45, *(&v45 + 1), v46);
    if (v9)
    {
      return;
    }

    goto LABEL_21;
  }

  v22 = sub_1B212F324(a6);
  if (!v22)
  {
    v36 = sub_1B212FED0(a6);
    if (!v36)
    {
      v49 = type metadata accessor for ColumnDecoder();
      WitnessTable = swift_getWitnessTable();
      *&v47 = a2;
      *(&v47 + 1) = a3;
      v50 = WitnessTable;
      v48 = v43;

      sub_1B22527E0();
      return;
    }

    v49 = v36;
    v50 = v37;
    sub_1B212FF14(&v47);
    static DatabaseValueConvertible.decode(fromRow:atUncheckedIndex:)();
    if (v9)
    {
      goto LABEL_16;
    }

    v38 = &qword_1EB7A1290;
    v39 = &qword_1B226A750;
    goto LABEL_20;
  }

  v25 = v22;
  v26 = v24;
  v49 = v22;
  v50 = v23;
  v51 = v24;
  v27 = v23;
  v28 = sub_1B212FF14(&v47);
  v29 = *(a2 + 64);
  if (v29)
  {
    v44 = v27;
    if (a3 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else
    {
      v42 = v28;
      v43 = a6;
      if (a3 <= 0x7FFFFFFF)
      {
        MEMORY[0x1EEE9AC00](v28);
        v41[-2] = a2;
        v41[-1] = a3;
        v30 = sqlite3_column_type(v29, a3);
        if (v30 == 5)
        {
LABEL_9:
          MEMORY[0x1EEE9AC00](v30);
          v41[-2] = sub_1B21B6634;
          v41[-1] = &v41[-4];
          static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v29, a3, sub_1B21B663C, &v41[-4], v25);
LABEL_16:
          sub_1B21C80D0(&v47);
          return;
        }

        v41[2] = v41;
        v41[0] = sub_1B2252B00();
        v41[1] = v41;
        v31 = *(v41[0] - 8);
        v32 = *(v31 + 64);
        v33 = MEMORY[0x1EEE9AC00](v41[0]);
        v35 = v41 - v34;
        (*(v26 + 8))(v29, a3, v25, v26, v33);
        if (sub_1B2122A98(v35, 1, v25) == 1)
        {
          v30 = (*(v31 + 8))(v35, v41[0]);
          goto LABEL_9;
        }

        (*(*(v25 - 8) + 32))(v42, v35, v25);
        goto LABEL_19;
      }
    }

    __break(1u);
    return;
  }

  Row.fastDecode<A>(_:atUncheckedIndex:)();
  if (v9)
  {
    goto LABEL_16;
  }

LABEL_19:
  v38 = &unk_1EB7A3250;
  v39 = &unk_1B226A758;
LABEL_20:
  sub_1B21619D8(v38, v39);
LABEL_21:
  swift_dynamicCast();
}

uint64_t sub_1B222CE4C(uint64_t a1)
{
  v2 = v1[2];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1B222B9C8(*v1, v1[1]) & 1;
}

void sub_1B222CE78(uint64_t a1)
{
  v2 = v1[2];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1B222C7D8(*v1, v1[1]);
}

void sub_1B222CEA0(uint64_t a1)
{
  v2 = v1[2];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1B222C640(*v1, v1[1]);
}

id sub_1B222D1B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v0 setFormatOptions_];
  qword_1EB7A3248 = v0;
  return result;
}

void sub_1B222D200(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void (*a4)(__int128 *__return_ptr, uint64_t)@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v84 = a5;
  v85 = a4;
  v101 = a2;
  v88 = a1;
  v87 = a6;
  v7 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v78 - v12;
  v83 = type metadata accessor for DatabaseDateComponents();
  v14 = *(*(v83 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v83);
  v81 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v78 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v78 - v20;
  v21 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v78 - v26;
  v86 = sub_1B2251E90();
  v28 = *(*(v86 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v86);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v78 - v35;
  v37 = *a3;
  if (*(a3 + 16))
  {
    if (*(a3 + 16) == 1)
    {
      v80 = v33;
      v38 = *(a3 + 8);
      v39 = v88;
      v40 = v101;
      sub_1B21320F0(v88, v101, &v97);
      v41 = v97;
      v42 = v98;
      v37(&v97);
      v43 = v86;
      if (sub_1B2122A98(v27, 1, v86) == 1)
      {
        v44 = sub_1B212AC5C(v27, &qword_1EB7A1330, &unk_1B226A760);
        v85(&v93, v44);
        sub_1B21320F0(v39, v40, &v91);
        v89 = v91;
        v90 = v92;
        sub_1B21A2FC0();
        swift_allocError();
        sub_1B2183238(v43, &v93, &v89, v45);
        sub_1B2113A44(v89, *(&v89 + 1), v90);
        v97 = v93;
        v98 = v94;
        v99 = v95;
        v100 = v96;
        sub_1B218450C(&v97);
        swift_willThrow();
        sub_1B2113A44(v41, *(&v41 + 1), v42);
      }

      else
      {
        sub_1B2113A44(v41, *(&v41 + 1), v42);
        (*(v80 + 32))(v87, v27, v43);
      }

      return;
    }

    v50 = *a3;
    switch(v37)
    {
      case 1uLL:
        sqlite3_column_double(v88, v101);
        sub_1B2251E30();
        return;
      case 2uLL:
      case 3uLL:
        sqlite3_column_double(v88, v101);
        sub_1B2251E60();
        return;
      case 4uLL:
        v60 = v88;
        v61 = v101;
        if (!sqlite3_column_text(v88, v101))
        {
          goto LABEL_32;
        }

        sub_1B2252400();
        v62 = v86;
        if (qword_1EB7A0D80 != -1)
        {
          swift_once();
        }

        v63 = qword_1EB7A3248;
        v64 = sub_1B2252290();

        v49 = [v63 dateFromString_];

        if (v49)
        {
          goto LABEL_7;
        }

        (v85)(&v93);
        sub_1B21320F0(v60, v61, &v91);
        v89 = v91;
        v90 = v92;
        sub_1B21A2FC0();
        swift_allocError();
        v58 = v65;
        v59 = v62;
        break;
      default:
        v79 = v34;
        v80 = v33;
        v51 = v88;
        v52 = v101;
        v53 = sqlite3_column_type(v88, v101);
        if ((v53 - 1) < 2)
        {
          sqlite3_column_double(v51, v52);
          v54 = v79;
          sub_1B2251E60();
          v55 = *(v80 + 32);
          v56 = v86;
LABEL_11:
          v55(v36, v54, v56);
          v55(v87, v36, v56);
          return;
        }

        v56 = v86;
        if (v53 == 3)
        {
          v53 = sqlite3_column_text(v88, v101);
          if (v53)
          {
            v66 = v53;
            v67 = sqlite3_column_bytes(v88, v101);
            SQLiteDateParser.components(cString:length:)(v66, v67, v13);
            sub_1B222EB20(v13, v11, &qword_1EB7A1338, &qword_1B2260530);
            v68 = v83;
            if (sub_1B2122A98(v11, 1, v83) == 1)
            {
              v69 = &qword_1EB7A1338;
              v70 = &qword_1B2260530;
              v71 = v11;
            }

            else
            {
              sub_1B2175B30(v11, v19);
              v72 = sub_1B2251D00();
              v73 = v82;
              (*(*(v72 - 8) + 16))(v82, v19, v72);
              v74 = v19[*(v68 + 20)];
              sub_1B2175BF8(v19);
              *(v73 + *(v68 + 20)) = v74;
              v75 = v81;
              sub_1B2175B94(v73, v81);
              Date.init(databaseDateComponents:)(v75, v25);
              if (sub_1B2122A98(v25, 1, v56) != 1)
              {
                v77 = v80;
                v55 = *(v80 + 32);
                v55(v31, v25, v56);
                sub_1B2251E40();
                v54 = v79;
                sub_1B2251E30();
                (*(v77 + 8))(v31, v56);
                sub_1B2175BF8(v73);
                goto LABEL_11;
              }

              sub_1B2175BF8(v73);
              v69 = &qword_1EB7A1330;
              v70 = &unk_1B226A760;
              v71 = v25;
            }

            v53 = sub_1B212AC5C(v71, v69, v70);
          }
        }

        v85(&v93, v53);
        sub_1B21320F0(v88, v101, &v91);
        v89 = v91;
        v90 = v92;
        sub_1B21A2FC0();
        swift_allocError();
        v58 = v76;
        v59 = v56;
        break;
    }

LABEL_14:
    sub_1B2183238(v59, &v93, &v89, v58);
    sub_1B2113A44(v89, *(&v89 + 1), v90);
    v97 = v93;
    v98 = v94;
    v99 = v95;
    v100 = v96;
    sub_1B218450C(&v97);
    swift_willThrow();
    return;
  }

  v46 = v88;
  v47 = v101;
  if (sqlite3_column_text(v88, v101))
  {
    sub_1B2252400();
    v48 = sub_1B2252290();

    v49 = [v37 dateFromString_];

    if (v49)
    {
LABEL_7:
      sub_1B2251E80();

      return;
    }

    (v85)(&v93);
    sub_1B21320F0(v46, v47, &v91);
    v89 = v91;
    v90 = v92;
    sub_1B21A2FC0();
    swift_allocError();
    v58 = v57;
    v59 = v86;
    goto LABEL_14;
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1B222DBFC(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char *a6@<X8>)
{
  v88 = a5;
  v91 = a4;
  v105 = a2;
  v92 = a1;
  v89 = a6;
  v7 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v84 - v12;
  v87 = type metadata accessor for DatabaseDateComponents();
  v14 = *(*(v87 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v87);
  v85 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v84 - v20;
  v21 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v84 - v26;
  v90 = sub_1B2251E90();
  v28 = *(*(v90 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v90);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v84 - v35;
  v37 = *a3;
  if (*(a3 + 16))
  {
    if (*(a3 + 16) == 1)
    {
      v38 = v33;
      v39 = *(a3 + 8);
      v40 = v92;
      v41 = v105;
      sub_1B21320F0(v92, v105, &v101);
      v42 = v101;
      v43 = v102;
      v87 = *(&v101 + 1);
      v37(&v101);
      v44 = v90;
      if (sub_1B2122A98(v27, 1, v90) == 1)
      {
        sub_1B212AC5C(v27, &qword_1EB7A1330, &unk_1B226A760);
        v101 = v88;
        LOBYTE(v102) = 1;

        RowDecodingContext.init(row:key:)(v45, &v101, &v97);
        sub_1B21320F0(v40, v41, &v95);
        v93 = v95;
        v94 = v96;
        sub_1B21A2FC0();
        swift_allocError();
        sub_1B2183238(v44, &v97, &v93, v46);
        sub_1B2113A44(v93, *(&v93 + 1), v94);
        v101 = v97;
        v102 = v98;
        v103 = v99;
        v104 = v100;
        sub_1B218450C(&v101);
        swift_willThrow();
        sub_1B2113A44(v42, v87, v43);
      }

      else
      {
        sub_1B2113A44(v42, v87, v43);
        (*(v38 + 32))(v89, v27, v44);
      }

      goto LABEL_15;
    }

    v52 = *a3;
    switch(v37)
    {
      case 1uLL:
        sqlite3_column_double(v92, v105);
        sub_1B2251E30();
        goto LABEL_15;
      case 2uLL:
      case 3uLL:
        sqlite3_column_double(v92, v105);
        sub_1B2251E60();
        goto LABEL_15;
      case 4uLL:
        v64 = v92;
        v65 = v105;
        if (!sqlite3_column_text(v92, v105))
        {
          goto LABEL_34;
        }

        sub_1B2252400();
        v66 = v90;
        if (qword_1EB7A0D80 != -1)
        {
          swift_once();
        }

        v67 = qword_1EB7A3248;
        v68 = sub_1B2252290();

        v50 = [v67 dateFromString_];

        if (v50)
        {
          goto LABEL_7;
        }

        v101 = v88;
        LOBYTE(v102) = 1;

        RowDecodingContext.init(row:key:)(v69, &v101, &v97);
        sub_1B21320F0(v64, v65, &v95);
        v93 = v95;
        v94 = v96;
        sub_1B21A2FC0();
        swift_allocError();
        v62 = v70;
        v63 = v66;
        break;
      default:
        v84 = v34;
        v53 = v33;
        v54 = v92;
        v55 = v105;
        v56 = sqlite3_column_type(v92, v105);
        if ((v56 - 1) < 2)
        {
          sqlite3_column_double(v54, v55);
          v57 = v84;
          sub_1B2251E60();
          v58 = *(v53 + 32);
          v59 = v90;
LABEL_11:
          v58(v36, v57, v59);
          v58(v89, v36, v59);
          goto LABEL_15;
        }

        if (v56 == 3)
        {
          v71 = sqlite3_column_text(v92, v105);
          if (v71)
          {
            v72 = v71;
            v73 = sqlite3_column_bytes(v92, v105);
            SQLiteDateParser.components(cString:length:)(v72, v73, v13);
            sub_1B222EB20(v13, v11, &qword_1EB7A1338, &qword_1B2260530);
            v74 = v87;
            if (sub_1B2122A98(v11, 1, v87) == 1)
            {
              v75 = &qword_1EB7A1338;
              v76 = &qword_1B2260530;
              v77 = v11;
            }

            else
            {
              sub_1B2175B30(v11, v19);
              v78 = sub_1B2251D00();
              v79 = v86;
              (*(*(v78 - 8) + 16))(v86, v19, v78);
              v80 = v19[*(v74 + 20)];
              sub_1B2175BF8(v19);
              *(v79 + *(v74 + 20)) = v80;
              v81 = v85;
              sub_1B2175B94(v79, v85);
              Date.init(databaseDateComponents:)(v81, v25);
              v59 = v90;
              if (sub_1B2122A98(v25, 1, v90) != 1)
              {
                v58 = *(v53 + 32);
                v58(v31, v25, v59);
                sub_1B2251E40();
                v57 = v84;
                sub_1B2251E30();
                (*(v53 + 8))(v31, v59);
                sub_1B2175BF8(v79);
                goto LABEL_11;
              }

              sub_1B2175BF8(v79);
              v75 = &qword_1EB7A1330;
              v76 = &unk_1B226A760;
              v77 = v25;
            }

            sub_1B212AC5C(v77, v75, v76);
          }
        }

        v101 = v88;
        LOBYTE(v102) = 1;

        RowDecodingContext.init(row:key:)(v82, &v101, &v97);
        sub_1B21320F0(v92, v105, &v95);
        v93 = v95;
        v94 = v96;
        sub_1B21A2FC0();
        swift_allocError();
        v62 = v83;
        v63 = v90;
        break;
    }

LABEL_14:
    sub_1B2183238(v63, &v97, &v93, v62);
    sub_1B2113A44(v93, *(&v93 + 1), v94);
    v101 = v97;
    v102 = v98;
    v103 = v99;
    v104 = v100;
    sub_1B218450C(&v101);
    swift_willThrow();
LABEL_15:

    return;
  }

  v47 = v92;
  v48 = v105;
  if (sqlite3_column_text(v92, v105))
  {
    sub_1B2252400();
    v49 = sub_1B2252290();

    v50 = [v37 dateFromString_];

    v51 = v90;
    if (v50)
    {
LABEL_7:
      sub_1B2251E80();

      return;
    }

    v101 = v88;
    LOBYTE(v102) = 1;

    RowDecodingContext.init(row:key:)(v60, &v101, &v97);
    sub_1B21320F0(v47, v48, &v95);
    v93 = v95;
    v94 = v96;
    sub_1B21A2FC0();
    swift_allocError();
    v62 = v61;
    v63 = v51;
    goto LABEL_14;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1B222E668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  v12 = sub_1B22522F0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *v2;
  if (*(v2 + 16))
  {
    if (*(v2 + 16) == 1)
    {
      v18 = *(v2 + 8);
      v39 = v14;
      v40 = v15;
      v41 = v16;
      return v17(&v39);
    }

    v21 = *v2;
    switch(v17)
    {
      case 1uLL:
        if (v16 >= 2)
        {
          goto LABEL_24;
        }

        sub_1B2251E30();
        goto LABEL_34;
      case 2uLL:
        if (v16 <= 1)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      case 3uLL:
        if (v16 > 1)
        {
LABEL_24:
          v27 = sub_1B2251E90();
          v28 = a2;
          v29 = 1;
        }

        else
        {
LABEL_32:
          sub_1B2251E60();
LABEL_34:
          v27 = sub_1B2251E90();
          v28 = a2;
          v29 = 0;
        }

        return sub_1B21117B4(v28, v29, 1, v27);
      case 4uLL:
        if (v16 == 3)
        {
          sub_1B22522E0();
          sub_1B22522C0();
          if (!v30)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v16 != 2)
          {
            goto LABEL_30;
          }

          sub_1B2113A20(v14, v15, 2);
        }

        v31 = qword_1EB7A0D80;

        if (v31 != -1)
        {
          swift_once();
        }

        v32 = qword_1EB7A3248;
        v33 = sub_1B2252290();
        v34 = [v32 dateFromString_];

        if (v34)
        {
          sub_1B2251E80();

          v35 = 0;
        }

        else
        {
          v35 = 1;
        }

        v37 = sub_1B2251E90();
        sub_1B21117B4(v11, v35, 1, v37);
        v26 = v11;
        break;
      default:
        v39 = v14;
        v40 = v15;
        v41 = v16;
        return static Date.fromDatabaseValue(_:)(&v39, a2);
    }

    goto LABEL_15;
  }

  if (v16 == 2)
  {
    sub_1B2113A20(v14, v15, 2);
    goto LABEL_11;
  }

  if (v16 == 3)
  {
    sub_1B22522E0();
    sub_1B22522C0();
    if (v20)
    {
LABEL_11:

      v22 = sub_1B2252290();
      v23 = [v17 dateFromString_];

      if (v23)
      {
        sub_1B2251E80();

        v24 = 0;
      }

      else
      {
        v24 = 1;
      }

      v25 = sub_1B2251E90();
      sub_1B21117B4(v9, v24, 1, v25);
      v26 = v9;
LABEL_15:
      sub_1B222EB20(v26, a2, &qword_1EB7A1330, &unk_1B226A760);
      return swift_bridgeObjectRelease_n();
    }
  }

LABEL_30:
  v36 = sub_1B2251E90();
  return sub_1B21117B4(a2, 1, 1, v36);
}

sqlite3_stmt *sub_1B222EAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) == 0 && v2[9] > a1)
  {
    return sub_1B216A780(v2, a1, a2);
  }

  result = sub_1B2115A74();
  __break(1u);
  return result;
}

uint64_t sub_1B222EB20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B21619D8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B222EB88(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A15CC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B222EBF4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B222EBF4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B2252FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1B2252610();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B219F3BC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B219E97C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B222ECE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B222ED34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A3258, &qword_1B226A770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B222EDA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A3258, &qword_1B226A770);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B222EE34(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1B2229778(a1);
}

uint64_t sub_1B222EE58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B222EE94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ValueReducers.Fetch._fetch(_:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t ValueReducers.Fetch._value(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  (*(*(v4 - 8) + 16))(a3, a1, v4);

  return sub_1B21117B4(a3, 0, 1, v4);
}

uint64_t sub_1B222EF94(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B222F000()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

GRDBInternal::StatementArguments __swiftcall StatementArguments.init()()
{
  v1 = MEMORY[0x1E69E7CC8];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v1;
  return result;
}

uint64_t Statement.arguments.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  a1[1] = v2;
}

uint64_t sub_1B222F0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  sub_1B2116AD0();
  result = swift_beginAccess();
  if ((*(v3 + 24) & 1) == 0)
  {
    v10 = *(v3 + 16);

    result = a3(v10, a1, a2, v3);
    if (!v6)
    {
      *(v3 + 24) = 1;
    }
  }

  return result;
}

sqlite3_int64 sub_1B222F15C(sqlite3_stmt *a1)
{
  v3 = *(v1 + 28);
  if (sqlite3_column_type(a1, v3) == 5)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_int64(a1, v3);
  }
}

uint64_t sub_1B222F1B8(sqlite3_stmt *a1)
{
  v3 = *(v1 + 28);
  if (sqlite3_column_type(a1, v3) == 5)
  {
    return 2;
  }

  else
  {
    return sqlite3_column_int64(a1, v3) != 0;
  }
}

Swift::Int_optional __swiftcall Statement.index(ofColumn:)(Swift::String ofColumn)
{
  v1 = sub_1B2252220();
  v3 = v2;
  v4 = sub_1B222F74C();
  v5 = sub_1B212F2CC(v1, v3, v4);
  v7 = v6;

  v8 = v7 & 1;
  v9 = v5;
  result.value = v9;
  result.is_nil = v8;
  return result;
}

uint64_t StatementArguments.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  v8 = sub_1B2150D28(sub_1B2230680, 0, a2, &type metadata for DatabaseValue, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], a4);
  sub_1B2111808(a2);
  result = (*(v9 + 8))(a1, a2);
  v11 = MEMORY[0x1E69E7CC8];
  *a5 = v8;
  a5[1] = v11;
  return result;
}

uint64_t sub_1B222F474()
{
  v1 = *v0;
  swift_getWitnessTable();
  v2 = sub_1B211497C();
  return DatabaseCursor.next()(v2, v3, v4);
}

uint64_t sub_1B222F510()
{
  v0 = sub_1B2251B80();
  sub_1B21115E0();
  v2 = v1;
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v13 - v9;
  sub_1B2175CC4(v8, qword_1ED8618E8);
  sub_1B2156958(v0, qword_1ED8618E8);
  sub_1B2251B30();
  sub_1B2251B60();
  sub_1B2251B70();
  v11 = *(v2 + 8);
  v11(v7, v0);
  return (v11)(v10, v0);
}

uint64_t sub_1B222F648(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return Statement.columnNames.setter(v4);
}

uint64_t Statement.columnNames.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t (*Statement.columnNames.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Statement.columnNames.getter();
  return sub_1B222F6CC;
}

uint64_t sub_1B222F6CC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

uint64_t Statement.databaseRegion.getter@<X0>(void *a1@<X8>)
{
  sub_1B21115FC();
  swift_beginAccess();
  *a1 = *(v1 + 32);
}

uint64_t sub_1B222F74C()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v1 = sub_1B222F7AC();
    v2 = *(v0 + 88);
    *(v0 + 88) = v1;
  }

  return v1;
}

uint64_t sub_1B222F7AC()
{
  v0 = Statement.columnNames.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    result = sub_1B211E89C(0, v1, 0);
    v3 = 0;
    v4 = v15;
    v5 = *(v0 + 16);
    v6 = (v0 + 40);
    while (v5 != v3)
    {
      if (v3 >= *(v0 + 16))
      {
        goto LABEL_12;
      }

      v7 = *(v6 - 1);
      v8 = *v6;
      result = sub_1B2252220();
      v9 = result;
      v11 = v10;
      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1B211E89C(v12 > 1, v13 + 1, 1);
      }

      *(v15 + 16) = v13 + 1;
      v14 = (v15 + 24 * v13);
      v14[4] = v9;
      v14[5] = v11;
      v14[6] = v3++;
      v6 += 2;
      if (v1 == v3)
      {

        return sub_1B211E40C(v4);
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
    return sub_1B211E40C(v4);
  }

  return result;
}

double sub_1B222F8E4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  Statement.arguments.getter(&v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1B222F920(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v5[0] = *a1;
  v5[1] = v2;

  return Statement.arguments.setter(v5);
}

uint64_t (*Statement.arguments.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  *a1 = v3;
  a1[1] = v4;

  return sub_1B222F9C8;
}

uint64_t sub_1B222F9C8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v6 = *a1;
    v7 = v2;

    Statement.arguments.setter(&v6);
  }

  else
  {
    v6 = *a1;
    v7 = v2;
    return Statement.arguments.setter(&v6);
  }
}

uint64_t sub_1B222FA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SchedulingWatchdog();
  v7 = *(a1 + 80);
  swift_unownedRetainStrong();

  if (sub_1B2117B40(v7))
  {

    v8 = *(a1 + 16);
    if (sqlite3_stmt_busy(v8))
    {
      v24 = a1;
      v27 = v7;
      goto LABEL_4;
    }

    swift_unownedRetainStrong();
    Database.statementWillExecute(_:)(a1);
    if (v3)
    {
    }

    else
    {
      v24 = a1;
      v27 = v7;

LABEL_4:
      while (sqlite3_step(v8) == 100)
      {
        v30 = *(a2 + 32);
        v10 = *(a3 + 24);
        v9 = *(a3 + 32);

        v10(&v29, &v30);
        if (v3)
        {

          return sub_1B2122A70();
        }

        v11 = v29;

        sub_1B2246D34(&v28, v11);
      }

      sub_1B21122DC();
      if (v20)
      {
        sub_1B21130F0(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24, v27);
        swift_unownedRetainStrong();
        Database.statementDidExecute(_:)(v25);
        if (!v3)
        {
          sub_1B2122A70();
        }
      }

      else
      {
        sub_1B21130F0(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24, v27);
        swift_unownedRetainStrong();
        sub_1B2122700(v26);
      }
    }

    return sub_1B2122A70();
  }

  else
  {
    sub_1B2122A70();

    sub_1B2112EA0();
    sub_1B2117938();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B222FC88(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  type metadata accessor for SchedulingWatchdog();
  v9 = *(a1 + 80);
  v10 = swift_unownedRetainStrong();
  if ((sub_1B2117B40(v10) & 1) == 0)
  {

    sub_1B2252EC0();
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(a1 + 16);
  if (sqlite3_stmt_busy(v5))
  {
    goto LABEL_7;
  }

  swift_unownedRetainStrong();
  Database.statementWillExecute(_:)(a1);
  if (!v4)
  {
LABEL_6:
    while (1)
    {

LABEL_7:
      v11 = sqlite3_step(v5);
      if (v11 != 100)
      {
        break;
      }

      v14 = *(a4 + 32);

      a2(&v14);
      if (v4)
      {
        goto LABEL_13;
      }
    }

    v12 = v11;
    if (v11 == 101)
    {
      swift_unownedRetainStrong();
      Database.statementDidExecute(_:)(a1);
    }

    else
    {
      swift_unownedRetainStrong();
      Database.statementDidFail(_:withResultCode:)(a1, v12);
    }
  }

LABEL_13:
}

uint64_t sub_1B222FE44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for SchedulingWatchdog();
  v5 = *(a1 + 80);
  v6 = swift_unownedRetainStrong();
  if (sub_1B2117B40(v6))
  {

    v7 = *(a1 + 16);
    if (sqlite3_stmt_busy(v7))
    {
      v22 = a1;
    }

    else
    {
      swift_unownedRetainStrong();
      Database.statementWillExecute(_:)(a1);
      if (v23)
      {
LABEL_14:
      }

      v22 = a1;
    }

    while (1)
    {
      v8 = sqlite3_step(v7);
      if (v8 != 100)
      {
        break;
      }

      v9 = sub_1B215A47C(v7);
      v11 = v10;
      v12 = *a3;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = *(v12 + 16);
        sub_1B21150D0();
        sub_1B214400C();
        v12 = v18;
        *a3 = v18;
      }

      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B211156C(v14);
        sub_1B214400C();
        v12 = v19;
        *a3 = v19;
      }

      *(v12 + 16) = v15 + 1;
      v16 = v12 + 16 * v15;
      *(v16 + 32) = v9;
      *(v16 + 40) = v11;
    }

    v20 = v8;
    if (v8 == 101)
    {
      swift_unownedRetainStrong();
      Database.statementDidExecute(_:)(v22);
      sub_1B211DA88();
    }

    swift_unownedRetainStrong();
    Database.statementDidFail(_:withResultCode:)(v22, v20);
    goto LABEL_14;
  }

  sub_1B2112EA0();
  sub_1B2117938();
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B2230040(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for SchedulingWatchdog();
  v5 = *(a1 + 80);
  v6 = swift_unownedRetainStrong();
  if (sub_1B2117B40(v6))
  {

    v7 = *(a1 + 16);
    if (sqlite3_stmt_busy(v7))
    {
      goto LABEL_3;
    }

    swift_unownedRetainStrong();
    Database.statementWillExecute(_:)(a1);
    if (!v2)
    {

LABEL_3:
      while (1)
      {
        v8 = sqlite3_step(v7);
        if (v8 != 100)
        {
          break;
        }

        a2();
        if (v2)
        {
        }
      }

      v9 = v8;
      if (v8 == 101)
      {
        swift_unownedRetainStrong();
        Database.statementDidExecute(_:)(a1);
      }

      else
      {
        swift_unownedRetainStrong();
        Database.statementDidFail(_:withResultCode:)(a1, v9);
      }
    }
  }

  else
  {

    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B22301D0(uint64_t a1)
{
  if (!sub_1B2115AA0(a1))
  {
    sub_1B2118184();
    v7 = sub_1B211497C();
    Database.statementWillExecute(_:)(v7);
    v1 = v2;
    if (v2)
    {
      goto LABEL_11;
    }
  }

  if (sqlite3_step(v3) == 100)
  {
    v8 = sub_1B2115468();
    sub_1B2231A08(v8, v9);
    if (!v2)
    {

      return v10;
    }
  }

  sub_1B21122DC();
  if (!v4)
  {
    sub_1B2118184();
    sub_1B2122398();
LABEL_11:
  }

  sub_1B2118184();
  v5 = sub_1B211497C();
  Database.statementDidExecute(_:)(v5);
  sub_1B211DA88();

  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B22302C0(uint64_t a1)
{
  if (!sub_1B2115AA0(a1))
  {
    sub_1B2118184();
    v7 = sub_1B211497C();
    Database.statementWillExecute(_:)(v7);
    v1 = v2;
    if (v2)
    {
      goto LABEL_11;
    }
  }

  if (sqlite3_step(v3) == 100)
  {
    v8 = sub_1B2115468();
    sub_1B22319EC(v8, v9);
    if (!v2)
    {

      return v10;
    }
  }

  sub_1B21122DC();
  if (!v4)
  {
    sub_1B2118184();
    sub_1B2122398();
LABEL_11:
  }

  sub_1B2118184();
  v5 = sub_1B211497C();
  Database.statementDidExecute(_:)(v5);
  sub_1B211DA88();

  if (!v1)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1B2230398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  if (!sqlite3_stmt_busy(v6))
  {
    sub_1B2122070();
    v10 = sub_1B211E540();
    Database.statementWillExecute(_:)(v10);
    v3 = v2;
    if (v2)
    {
      goto LABEL_10;
    }
  }

  if (sqlite3_step(v6) == 100)
  {
    sub_1B2111BFC();
    sub_1B2231A24(v11);
  }

  sub_1B21122DC();
  if (!v7)
  {
    sub_1B2122070();
    sub_1B2122700(a1);
LABEL_10:
  }

  sub_1B2122070();
  v8 = sub_1B211E540();
  Database.statementDidExecute(_:)(v8);
  sub_1B211DA88();

  if (!v3)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_1B22304E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);

  return ForeignKeyViolation.init(row:)(v4, a2);
}

uint64_t sub_1B2230528()
{
  sub_1B21115FC();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1B2230558(char a1)
{
  sub_1B2116AD0();
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1B22305DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2133BF0();
  if (!v1)
  {
    *a1 = result & 1;
  }

  return result;
}

BOOL sub_1B2230638()
{
  v1 = *(v0 + 64);
  if ((v1 - 1) < 2)
  {
    return 1;
  }

  if (v1 == 3)
  {
    return __PAIR128__((*(v0 + 48) != 0) + *(v0 + 56) - 1, *(v0 + 48) - 1) < 2;
  }

  return 0;
}

uint64_t sub_1B2230680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B211E17C(a1, v11, &qword_1EB7A0E30, &unk_1B2259360);
  v3 = v12;
  if (v12)
  {
    v4 = v13;
    sub_1B21139A0(v11, v12);
    (*(v4 + 24))(&v9, v3, v4);
    v8 = v9;
    v5 = v10;
    result = sub_1B2113208(v11);
    v7 = v8;
  }

  else
  {
    result = sub_1B2122B98(v11);
    v7 = 0uLL;
    v5 = 4;
  }

  *a2 = v7;
  *(a2 + 16) = v5;
  return result;
}

GRDBInternal::StatementArguments_optional __swiftcall StatementArguments.init(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v20 = v1;
  v3 = 0;
  v4 = *(a1._rawValue + 2);
  v5 = MEMORY[0x1E69E7CC0];
  for (i = a1._rawValue + 32; ; i += 32)
  {
    if (v4 == v3)
    {

      sub_1B2112554(v5, v25);
      *v20 = *v25;
      goto LABEL_13;
    }

    if (v3 >= rawValue[2])
    {
      break;
    }

    sub_1B21721B4(i, v28);
    sub_1B21721B4(v28, v24);
    sub_1B21619D8(&qword_1EB7A1290, &qword_1B226A750);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1B2113208(v28);
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      sub_1B2122B98(&v21);

      *v20 = 0;
      *(v20 + 8) = 0;
      goto LABEL_13;
    }

    sub_1B21217FC(&v21, v25);
    v7 = v26;
    v8 = v27;
    sub_1B21139A0(v25, v26);
    (*(v8 + 24))(&v21, v7, v8);
    sub_1B2113208(v28);
    v9 = v21;
    v10 = v22;
    sub_1B2113208(v25);
    sub_1B2113A20(v9, *(&v9 + 1), v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = v5[2];
      sub_1B21150D0();
      sub_1B2163040();
      v5 = v18;
    }

    v12 = v5[2];
    v11 = v5[3];
    if (v12 >= v11 >> 1)
    {
      sub_1B211156C(v11);
      sub_1B2163040();
      v5 = v19;
    }

    a1._rawValue = sub_1B2113A44(v9, *(&v9 + 1), v10);
    v5[2] = v12 + 1;
    v15 = &v5[5 * v12];
    *(v15 + 2) = v9;
    *(v15 + 48) = v10;
    v16 = *(v25 + 3);
    *(v15 + 49) = v25[0];
    *(v15 + 13) = v16;
    v15[7] = &type metadata for DatabaseValue;
    v15[8] = &protocol witness table for DatabaseValue;
    ++v3;
  }

  __break(1u);
LABEL_13:
  result.value.namedValues._rawValue = v13;
  result.value.values = a1;
  result.is_nil = v14;
  return result;
}

{
  v39 = v1;
  v2 = 0;
  v4 = a1._rawValue + 64;
  v3 = *(a1._rawValue + 8);
  v5 = *(a1._rawValue + 32);
  sub_1B21115A0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v11 = MEMORY[0x1E69E7CC8];
  v41 = v10;
  v42 = v4;
  if ((v7 & v6) != 0)
  {
    while (1)
    {
      v12 = v2;
LABEL_7:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v12 << 6);
      sub_1B223182C(*(a1._rawValue + 6) + 40 * v14, &v46);
      sub_1B21721B4(*(a1._rawValue + 7) + 32 * v14, v45);
      __src[0] = v46;
      __src[1] = v47;
      *&__src[2] = v48;
      sub_1B2226E2C(v45, (&__src[2] + 8));
LABEL_8:
      memcpy(__dst, __src, 0x48uLL);
      if (!*(&__dst[1] + 1))
      {

        v38 = StatementArguments.init(_:)(v11);
        rawValue = v38.namedValues._rawValue;
        v35 = v38.values._rawValue;
        *v39 = __dst[0];
        goto LABEL_30;
      }

      sub_1B2226E2C((&__dst[2] + 8), v45);
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      *&__src[2] = *&__dst[2];
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1B2113208(v45);

        goto LABEL_25;
      }

      v15 = v46;
      sub_1B21721B4(v45, v44);
      sub_1B21721B4(v44, v43);
      sub_1B21619D8(&qword_1EB7A1290, &qword_1B226A750);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1B21217FC(&v46, __src);
      v16 = *(&__src[1] + 1);
      v17 = *&__src[2];
      sub_1B21139A0(__src, *(&__src[1] + 1));
      (*(v17 + 24))(&v46, v16, v17);
      sub_1B2113208(v44);
      v18 = v46;
      v19 = v47;
      sub_1B2113208(__src);
      __src[0] = v18;
      LOBYTE(__src[1]) = v19;
      *(&__src[1] + 1) = &type metadata for DatabaseValue;
      *&__src[2] = &protocol witness table for DatabaseValue;
      sub_1B2113A20(v18, *(&v18 + 1), v19);
      swift_isUniquelyReferenced_nonNull_native();
      *&v46 = v11;
      sub_1B211E590();
      v20 = v11[2];
      sub_1B2118304();
      if (__OFADD__(v23, v24))
      {
        goto LABEL_27;
      }

      v25 = v21;
      v26 = v22;
      sub_1B21619D8(&qword_1EB7A2238, &qword_1B226BA40);
      if (sub_1B2252E70())
      {
        v27 = sub_1B211E590();
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_29;
        }

        v25 = v27;
      }

      if (v26)
      {

        v11 = v46;
        sub_1B2231888(__src, *(v46 + 56) + 40 * v25);
        sub_1B2113A44(v18, *(&v18 + 1), v19);
        sub_1B2113208(v45);
      }

      else
      {
        v11 = v46;
        *(v46 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        *(v11[6] + 16 * v25) = v15;
        v29 = v11[7] + 40 * v25;
        v30 = *&__src[2];
        v31 = __src[1];
        *v29 = __src[0];
        *(v29 + 16) = v31;
        *(v29 + 32) = v30;
        sub_1B2113A44(v18, *(&v18 + 1), v19);
        sub_1B2113208(v45);
        v32 = v11[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_28;
        }

        v11[2] = v34;
      }

      v10 = v41;
      v4 = v42;
      if (!v8)
      {
        goto LABEL_3;
      }
    }

    sub_1B2113208(v44);
    sub_1B2113208(v45);
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    sub_1B2122B98(&v46);

LABEL_25:
    *v39 = 0;
    *(v39 + 8) = 0;
  }

  else
  {
LABEL_3:
    while (1)
    {
      v12 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        v8 = 0;
        memset(__src, 0, 72);
        goto LABEL_8;
      }

      v8 = *&v4[8 * v12];
      ++v2;
      if (v8)
      {
        v2 = v12;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v35 = sub_1B2253390();
    __break(1u);
  }

LABEL_30:
  result.value.namedValues._rawValue = rawValue;
  result.value.values._rawValue = v35;
  result.is_nil = v37;
  return result;
}

GRDBInternal::StatementArguments __swiftcall StatementArguments.init(_:)(Swift::OpaquePointer a1)
{
  v33 = v1;
  sub_1B21619D8(&qword_1EB7A1900, &qword_1B2259370);
  v3 = sub_1B2252EE0();
  v4 = 0;
  rawValue = a1._rawValue;
  v6 = *(a1._rawValue + 8);
  v5 = a1._rawValue + 64;
  v7 = *(v5 - 32);
  sub_1B21115A0();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v34 = v8;
  v35 = v8 + 64;
  if ((v11 & v10) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_8:
      v18 = v15 | (v4 << 6);
      v19 = (rawValue[6] + 16 * v18);
      v37 = *v19;
      v38 = v19[1];
      sub_1B211E17C(rawValue[7] + 40 * v18, v44, &qword_1EB7A0E30, &unk_1B2259360);
      sub_1B211E17C(v44, v41, &qword_1EB7A0E30, &unk_1B2259360);
      v20 = v42;
      if (v42)
      {
        v21 = v43;
        sub_1B21139A0(v41, v42);
        v22 = v12;
        v23 = *(v21 + 24);

        v24 = v21;
        v3 = v34;
        v23(v39, v20, v24);
        v12 = v22;
        v25 = v39[0];
        v20 = v39[1];
        v26 = v40;
        sub_1B2113208(v41);
      }

      else
      {

        sub_1B2122B98(v41);
        v25 = 0;
        v26 = 4;
      }

      v8 = sub_1B2122B98(v44);
      *&v35[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
      v27 = (v3[6] + 16 * v18);
      *v27 = v37;
      v27[1] = v38;
      v28 = v3[7] + 24 * v18;
      *v28 = v25;
      *(v28 + 8) = v20;
      *(v28 + 16) = v26;
      v29 = v3[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v3[2] = v31;
      if (!v12)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v16 = v4;
    while (1)
    {
      v4 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v4 >= v14)
      {

        *v33 = MEMORY[0x1E69E7CC0];
        v33[1] = v3;
        goto LABEL_17;
      }

      v17 = *&v5[8 * v4];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_17:
  result.namedValues._rawValue = v9;
  result.values._rawValue = v8;
  return result;
}

uint64_t sub_1B2230BAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = MEMORY[0x1B2741C60](*(a1 + 16), MEMORY[0x1E69E6158], &type metadata for DatabaseValue, MEMORY[0x1E69E6168]);
  v30 = *(v2 + 16);
  if (v30)
  {
    v28 = a2;
    v29 = v2;
    v5 = 0;
    v6 = v2 + 32;
    while (v5 < *(v2 + 16))
    {
      sub_1B211E17C(v6, v37, &qword_1EB7A3320, &qword_1B226ACC8);
      v7 = v37[1];
      v32 = v37[0];
      v35[0] = v38;
      v35[1] = v39;
      v36 = v40;
      v8 = *(&v39 + 1);
      if (*(&v39 + 1))
      {
        v9 = v36;
        sub_1B21139A0(v35, *(&v39 + 1));
        (*(v9 + 24))(v33, v8, v9);
        v11 = v33[0];
        v10 = v33[1];
        v31 = v34;
        sub_1B2113208(v35);
      }

      else
      {
        sub_1B2122B98(v35);
        v11 = 0;
        v10 = 0;
        v31 = 4;
      }

      swift_isUniquelyReferenced_nonNull_native();
      *&v35[0] = v4;
      v12 = sub_1B211E590();
      if (__OFADD__(v4[2], (v13 & 1) == 0))
      {
        goto LABEL_20;
      }

      v14 = v12;
      v15 = v13;
      sub_1B21619D8(&qword_1EB7A1918, &qword_1B226A9E0);
      if (sub_1B2252E70())
      {
        v16 = sub_1B211E590();
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_22;
        }

        v14 = v16;
      }

      if (v15)
      {

        v4 = *&v35[0];
        v18 = *(*&v35[0] + 56) + 24 * v14;
        v19 = *v18;
        v20 = *(v18 + 8);
        *v18 = v11;
        *(v18 + 8) = v10;
        v21 = *(v18 + 16);
        *(v18 + 16) = v31;
        sub_1B2113A44(v19, v20, v21);
      }

      else
      {
        v4 = *&v35[0];
        *(*&v35[0] + 8 * (v14 >> 6) + 64) |= 1 << v14;
        v22 = (v4[6] + 16 * v14);
        *v22 = v32;
        v22[1] = v7;
        v23 = v4[7] + 24 * v14;
        *v23 = v11;
        *(v23 + 8) = v10;
        *(v23 + 16) = v31;
        v24 = v4[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        v4[2] = v26;
      }

      ++v5;
      v6 += 56;
      v2 = v29;
      if (v30 == v5)
      {

        a2 = v28;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_1B2253390();
    __break(1u);
  }

  else
  {

LABEL_18:
    *a2 = MEMORY[0x1E69E7CC0];
    a2[1] = v4;
  }

  return result;
}

uint64_t StatementArguments.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a3;
  sub_1B21115E0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v50 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = sub_1B22524C0();
  v20 = MEMORY[0x1B2741C60](v19, MEMORY[0x1E69E6158], &type metadata for DatabaseValue, MEMORY[0x1E69E6168]);
  v51 = v6;
  v21 = *(v6 + 16);
  v52 = a1;
  v21(v11, a1, a2);
  v56 = v18;
  sub_1B22524B0();
  v53 = a2;
  v57 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_1B2252B50();
    v22 = v64;
    if (!v64)
    {
      (*(v51 + 8))(v52, v53);
      result = (*(v50 + 8))(v56, v57);
      v48 = v54;
      *v54 = MEMORY[0x1E69E7CC0];
      v48[1] = v20;
      return result;
    }

    v23 = v63;
    v60 = v65;
    v61 = v66;
    v62 = v67;
    v24 = *(&v66 + 1);
    if (*(&v66 + 1))
    {
      v25 = v62;
      sub_1B21139A0(&v60, *(&v61 + 1));
      (*(v25 + 24))(v58, v24, v25);
      v26 = v58[0];
      v27 = v58[1];
      v28 = v59;
      sub_1B2113208(&v60);
    }

    else
    {
      sub_1B2122B98(&v60);
      v26 = 0;
      v27 = 0;
      v28 = 4;
    }

    swift_isUniquelyReferenced_nonNull_native();
    *&v60 = v20;
    sub_1B211E590();
    v29 = v20[2];
    sub_1B2118304();
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v34 = v30;
    v35 = v31;
    sub_1B21619D8(&qword_1EB7A1918, &qword_1B226A9E0);
    if (sub_1B2252E70())
    {
      v36 = sub_1B211E590();
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_17;
      }

      v34 = v36;
    }

    if (v35)
    {

      v20 = v60;
      v38 = *(v60 + 56) + 24 * v34;
      v39 = *v38;
      v40 = *(v38 + 8);
      *v38 = v26;
      *(v38 + 8) = v27;
      v41 = *(v38 + 16);
      *(v38 + 16) = v28;
      sub_1B2113A44(v39, v40, v41);
    }

    else
    {
      v20 = v60;
      *(v60 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v42 = (v20[6] + 16 * v34);
      *v42 = v23;
      v42[1] = v22;
      v43 = v20[7] + 24 * v34;
      *v43 = v26;
      *(v43 + 8) = v27;
      *(v43 + 16) = v28;
      v44 = v20[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_16;
      }

      v20[2] = v46;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1B2253390();
  __break(1u);
  return result;
}

uint64_t static StatementArguments.+ infix(_:_:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  a3[1] = v4;
  v6 = *a2;

  return static StatementArguments.+= infix(_:_:)(a3, &v6);
}

uint64_t static StatementArguments.&+ infix(_:_:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  a3[1] = v3;
  v5 = *a2;

  StatementArguments.append(contentsOf:)(&v5);
}

BOOL static StatementArguments.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B21B8260(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B21D37A8(v2, v3);
}

double StatementArguments.init(dictionaryLiteral:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B2230BAC(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1B22317D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B211EB44();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B2231888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2231948(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B2231964(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

sqlite3_int64 sub_1B223198C@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B223048C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1B22319C0@<X0>(sqlite3_stmt *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B22304BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B2231A40()
{
  sub_1B2112174();
  sub_1B211DAA0();
  sub_1B2111C98();

  return AssociationToMany.forKey(_:)(v0, v1);
}

void sub_1B2231AB4()
{
  sub_1B2115DE8();
  sub_1B2117958();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.distinct()(v0, v1, v2);
}

void sub_1B2231B3C()
{
  sub_1B211D80C();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B21223B4();

  Association.limit(_:offset:)(v0, v1, v2);
}

void sub_1B2231BE4()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B21122E8();
  sub_1B212CF24();

  Association.with<A>(_:)(v0, v1, v2, v3);
}

void sub_1B2231CC4()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.group(_:)(v0, v1, v2);
}

void sub_1B2231D50()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.having(_:)(v0, v1, v2);
}

void sub_1B2231DDC()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.filter(_:)(v0, v1, v2);
}

void sub_1B2231E68()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.order(_:)(v0, v1, v2);
}

void sub_1B2231EF4()
{
  sub_1B2115DE8();
  sub_1B2117958();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.reversed()(v0, v1, v2);
}

void sub_1B2231F7C()
{
  sub_1B2115DE8();
  sub_1B2117958();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.unordered()(v0, v1, v2);
}

void sub_1B2232004()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.select(_:)(v0, v1, v2);
}

void sub_1B2232090()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.annotated(with:)(v0, v1, v2);
}

uint64_t sub_1B223211C()
{
  sub_1B2117958();
  swift_getWitnessTable();
  v0 = sub_1B212DFFC();

  return Association.databaseTableName.getter(v0, v1);
}

uint64_t Association.databaseTableName.getter(uint64_t a1, uint64_t a2)
{
  sub_1B211AEA8(a1, a2);
  result = v2();
  v4 = *(v7 + 16);
  if (v4)
  {
    memcpy(__dst, (v7 + 232 * v4 - 200), 0xE3uLL);
    sub_1B21819B8(__dst, v6);

    v5 = __dst[8];
    sub_1B2136148(&__dst[8], v6);
    sub_1B2181A14(__dst);

    sub_1B2137224(&__dst[8]);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B2232208()
{
  sub_1B211452C();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2114988();

  Association.aliased(_:)(v0, v1, v2);
}

void sub_1B2232298()
{
  sub_1B211452C();
  sub_1B2117958();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(all:)(v0);
}

void sub_1B2232318()
{
  sub_1B211452C();
  sub_1B2117958();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(optional:)(v0);
}

void sub_1B2232398()
{
  sub_1B211452C();
  sub_1B2117958();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(required:)(v0);
}

void sub_1B2232418()
{
  sub_1B211452C();
  sub_1B2117958();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._joining(optional:)(v0);
}

void sub_1B2232498()
{
  sub_1B211452C();
  sub_1B2117958();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._joining(required:)(v0);
}

uint64_t sub_1B2232574()
{
  sub_1B2112174();
  sub_1B211DAA0();
  sub_1B2111C98();

  return AssociationToOne.forKey(_:)(v0, v1);
}

void sub_1B22325CC()
{
  sub_1B2115DE8();
  sub_1B2116454();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.distinct()(v0, v1, v2);
}

void sub_1B2232614()
{
  sub_1B211D80C();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B21223B4();

  Association.limit(_:offset:)(v0, v1, v2);
}

void sub_1B2232664()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B21122E8();
  sub_1B212CF24();

  Association.with<A>(_:)(v0, v1, v2, v3);
}

void sub_1B22326B8()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.group(_:)(v0, v1, v2);
}

void sub_1B2232708()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.having(_:)(v0, v1, v2);
}

void sub_1B2232758()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.filter(_:)(v0, v1, v2);
}

void sub_1B22327A8()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.order(_:)(v0, v1, v2);
}

void sub_1B22327F8()
{
  sub_1B2115DE8();
  sub_1B2116454();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.reversed()(v0, v1, v2);
}

void sub_1B2232840()
{
  sub_1B2115DE8();
  sub_1B2116454();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.unordered()(v0, v1, v2);
}

void sub_1B2232888()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.select(_:)(v0, v1, v2);
}

void sub_1B22328D8()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.annotated(with:)(v0, v1, v2);
}

uint64_t sub_1B2232928()
{
  sub_1B2116454();
  swift_getWitnessTable();
  v0 = sub_1B212DFFC();

  return Association.databaseTableName.getter(v0, v1);
}

void sub_1B2232968()
{
  sub_1B211452C();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2114988();

  Association.aliased(_:)(v0, v1, v2);
}

void sub_1B22329AC()
{
  sub_1B211452C();
  sub_1B2116454();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(all:)(v0);
}

void sub_1B22329F0()
{
  sub_1B211452C();
  sub_1B2116454();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(optional:)(v0);
}

void sub_1B2232A34()
{
  sub_1B211452C();
  sub_1B2116454();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(required:)(v0);
}

void sub_1B2232A78()
{
  sub_1B211452C();
  sub_1B2116454();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._joining(optional:)(v0);
}

void sub_1B2232ABC()
{
  sub_1B211452C();
  sub_1B2116454();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._joining(required:)(v0);
}

uint64_t sub_1B2232B00(uint64_t a1, uint64_t a2)
{
  sub_1B211AEA8(a1, a2);
  result = v2();
  v4 = *(v7 + 16);
  if (v4)
  {
    memcpy(__dst, (v7 + 232 * v4 - 200), 0xE3uLL);
    sub_1B21819B8(__dst, v6);

    v5 = __dst[0];
    sub_1B21C8064(__dst[0], __dst[1], __dst[2]);
    sub_1B2181A14(__dst);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2232BA4()
{
  sub_1B2112174();
  sub_1B211DAA0();
  sub_1B2111C98();

  return AssociationToOne.forKey(_:)(v0, v1);
}

void sub_1B2232BFC()
{
  sub_1B2115DE8();
  sub_1B21168AC();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.distinct()(v0, v1, v2);
}

void sub_1B2232C44()
{
  sub_1B211D80C();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B21223B4();

  Association.limit(_:offset:)(v0, v1, v2);
}

void sub_1B2232C94()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B21122E8();
  sub_1B212CF24();

  Association.with<A>(_:)(v0, v1, v2, v3);
}

void sub_1B2232CE8()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.group(_:)(v0, v1, v2);
}

void sub_1B2232D38()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.having(_:)(v0, v1, v2);
}

void sub_1B2232D88()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.filter(_:)(v0, v1, v2);
}

void sub_1B2232DD8()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.order(_:)(v0, v1, v2);
}

void sub_1B2232E28()
{
  sub_1B2115DE8();
  sub_1B21168AC();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.reversed()(v0, v1, v2);
}

void sub_1B2232E70()
{
  sub_1B2115DE8();
  sub_1B21168AC();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.unordered()(v0, v1, v2);
}

void sub_1B2232EB8()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.select(_:)(v0, v1, v2);
}

void sub_1B2232F08()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.annotated(with:)(v0, v1, v2);
}

uint64_t sub_1B2232F58()
{
  sub_1B21168AC();
  swift_getWitnessTable();
  v0 = sub_1B212DFFC();

  return Association.databaseTableName.getter(v0, v1);
}

void sub_1B2232F98()
{
  sub_1B211452C();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2114988();

  Association.aliased(_:)(v0, v1, v2);
}

void sub_1B2232FDC()
{
  sub_1B211452C();
  sub_1B21168AC();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(all:)(v0);
}

void sub_1B2233020()
{
  sub_1B211452C();
  sub_1B21168AC();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(optional:)(v0);
}

void sub_1B2233064()
{
  sub_1B211452C();
  sub_1B21168AC();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(required:)(v0);
}

void sub_1B22330A8()
{
  sub_1B211452C();
  sub_1B21168AC();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._joining(optional:)(v0);
}

void sub_1B22330EC()
{
  sub_1B211452C();
  sub_1B21168AC();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._joining(required:)(v0);
}

uint64_t sub_1B2233130()
{
  sub_1B2112174();
  sub_1B211DAA0();
  sub_1B2111C98();

  return AssociationToMany.forKey(_:)(v0, v1);
}

void sub_1B2233188()
{
  sub_1B2115DE8();
  sub_1B2115AC4();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.distinct()(v0, v1, v2);
}

void sub_1B22331D0()
{
  sub_1B211D80C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B21223B4();

  Association.limit(_:offset:)(v0, v1, v2);
}

void sub_1B2233220()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B21122E8();
  sub_1B212CF24();

  Association.with<A>(_:)(v0, v1, v2, v3);
}

void sub_1B2233274()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.group(_:)(v0, v1, v2);
}

void sub_1B22332C4()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.having(_:)(v0, v1, v2);
}

void sub_1B2233314()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.filter(_:)(v0, v1, v2);
}

void sub_1B2233364()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.order(_:)(v0, v1, v2);
}

void sub_1B22333B4()
{
  sub_1B2115DE8();
  sub_1B2115AC4();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.reversed()(v0, v1, v2);
}

void sub_1B22333FC()
{
  sub_1B2115DE8();
  sub_1B2115AC4();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.unordered()(v0, v1, v2);
}

void sub_1B2233444()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.select(_:)(v0, v1, v2);
}

void sub_1B2233494()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.annotated(with:)(v0, v1, v2);
}

uint64_t sub_1B22334E4()
{
  sub_1B2115AC4();
  swift_getWitnessTable();
  v0 = sub_1B212DFFC();

  return Association.databaseTableName.getter(v0, v1);
}

void sub_1B2233524()
{
  sub_1B211452C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association.aliased(_:)(v0, v1, v2);
}

void sub_1B2233568()
{
  sub_1B211452C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(all:)(v0);
}

void sub_1B22335AC()
{
  sub_1B211452C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(optional:)(v0);
}

void sub_1B22335F0()
{
  sub_1B211452C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(required:)(v0);
}

void sub_1B2233634()
{
  sub_1B211452C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._joining(optional:)(v0);
}

void sub_1B2233678()
{
  sub_1B211452C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._joining(required:)(v0);
}

uint64_t sub_1B22336BC()
{
  sub_1B2112174();
  sub_1B211DAA0();
  sub_1B2111C98();

  return AssociationToOne.forKey(_:)(v0, v1);
}

void sub_1B2233714()
{
  sub_1B2115DE8();
  sub_1B2115478();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.distinct()(v0, v1, v2);
}

void sub_1B223375C()
{
  sub_1B211D80C();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B21223B4();

  Association.limit(_:offset:)(v0, v1, v2);
}

void sub_1B22337AC()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B21122E8();
  sub_1B212CF24();

  Association.with<A>(_:)(v0, v1, v2, v3);
}

void sub_1B2233800()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.group(_:)(v0, v1, v2);
}

void sub_1B2233850()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.having(_:)(v0, v1, v2);
}

void sub_1B22338A0()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.filter(_:)(v0, v1, v2);
}

void sub_1B22338F0()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.order(_:)(v0, v1, v2);
}

void sub_1B2233940()
{
  sub_1B2115DE8();
  sub_1B2115478();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.reversed()(v0, v1, v2);
}

void sub_1B2233988()
{
  sub_1B2115DE8();
  sub_1B2115478();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.unordered()(v0, v1, v2);
}

void sub_1B22339D0()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.select(_:)(v0, v1, v2);
}

void sub_1B2233A20()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.annotated(with:)(v0, v1, v2);
}

uint64_t sub_1B2233A70()
{
  sub_1B2115478();
  swift_getWitnessTable();
  v0 = sub_1B212DFFC();

  return Association.databaseTableName.getter(v0, v1);
}

void sub_1B2233AB0()
{
  sub_1B211452C();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2114988();

  Association.aliased(_:)(v0, v1, v2);
}

void sub_1B2233AF4()
{
  sub_1B211452C();
  sub_1B2115478();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(all:)(v0);
}

void sub_1B2233B38()
{
  sub_1B211452C();
  sub_1B2115478();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(optional:)(v0);
}

void sub_1B2233B7C()
{
  sub_1B211452C();
  sub_1B2115478();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(required:)(v0);
}

void sub_1B2233BC0()
{
  sub_1B211452C();
  sub_1B2115478();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._joining(optional:)(v0);
}

void sub_1B2233C04()
{
  sub_1B211452C();
  sub_1B2115478();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._joining(required:)(v0);
}

uint64_t sub_1B2233C48()
{
  sub_1B2112174();
  sub_1B211DAA0();
  sub_1B2111C98();

  return AssociationToOne.forKey(_:)(v0, v1);
}

void sub_1B2233CA0()
{
  sub_1B2115DE8();
  sub_1B2112EB4();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.distinct()(v0, v1, v2);
}

void sub_1B2233CE8()
{
  sub_1B211D80C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B21223B4();

  Association.limit(_:offset:)(v0, v1, v2);
}

void sub_1B2233D38()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B21122E8();
  sub_1B212CF24();

  Association.with<A>(_:)(v0, v1, v2, v3);
}

void sub_1B2233D8C()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.group(_:)(v0, v1, v2);
}

void sub_1B2233DDC()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.having(_:)(v0, v1, v2);
}

void sub_1B2233E2C()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.filter(_:)(v0, v1, v2);
}

void sub_1B2233E7C()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.order(_:)(v0, v1, v2);
}

void sub_1B2233ECC()
{
  sub_1B2115DE8();
  sub_1B2112EB4();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.reversed()(v0, v1, v2);
}

void sub_1B2233F14()
{
  sub_1B2115DE8();
  sub_1B2112EB4();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.unordered()(v0, v1, v2);
}

void sub_1B2233F5C()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.select(_:)(v0, v1, v2);
}

void sub_1B2233FAC()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.annotated(with:)(v0, v1, v2);
}

uint64_t sub_1B2233FFC()
{
  sub_1B2112EB4();
  swift_getWitnessTable();
  v0 = sub_1B212DFFC();

  return Association.databaseTableName.getter(v0, v1);
}

void sub_1B223403C()
{
  sub_1B211452C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association.aliased(_:)(v0, v1, v2);
}

void sub_1B2234080()
{
  sub_1B211452C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(all:)(v0);
}

void sub_1B22340C4()
{
  sub_1B211452C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(optional:)(v0);
}

void sub_1B2234108()
{
  sub_1B211452C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._including(required:)(v0);
}

void sub_1B223414C()
{
  sub_1B211452C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._joining(optional:)(v0);
}

void sub_1B2234190()
{
  sub_1B211452C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  v0 = sub_1B2114988();

  Association._joining(required:)(v0);
}

void sub_1B22341D4(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X8>)
{
  v7 = v5;
  v9 = a2;
  v11 = a4;
  v12 = *(a2 - 8);
  (*(v12 + 16))(a4, v4);
  v13 = (*(*(a3 + 16) + 24))(v26, v9);
  v15 = *v14;
  v16 = *(*v14 + 16);
  if (!v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v14;
  v28 = v13;
  v17 = (v15 + 232 * v16 - 200);
  memcpy(__dst, v17, 0xE3uLL);
  memcpy(__src, v17, 0xE3uLL);
  sub_1B21819B8(__dst, v24);
  (a1)(&__src[64]);
  if (v5)
  {
    memcpy(v24, __src, 0xE3uLL);
    v7 = *v6;
    a1 = *(*v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (a1)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

LABEL_12:
    sub_1B21956E4(v7);
    v7 = v21;
    *v6 = v21;
    if (a1)
    {
LABEL_5:
      if (a1 <= *(v7 + 16))
      {
        memcpy(v23, (v7 + 232 * a1 - 200), 0xE3uLL);
        memcpy((v7 + 232 * a1 - 200), v24, 0xE3uLL);
        sub_1B2181A14(v23);
        v28(v26, 1);
        (*(v12 + 8))(v11, v9);
        return;
      }

      goto LABEL_14;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1B21956E4(v9);
    v9 = v22;
    *v6 = v22;
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  memcpy(v24, __src, 0xE3uLL);
  v9 = *v6;
  v11 = *(*v6 + 16);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v9;
  if ((v19 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_9:
  if (v11 <= *(v9 + 16))
  {
    v20 = (v9 + 232 * v11 - 200);
    memcpy(v23, v20, 0xE3uLL);
    memcpy(v20, v24, 0xE3uLL);
    sub_1B2181A14(v23);
    v28(v26, 0);
    return;
  }

LABEL_17:
  __break(1u);
}

void *sub_1B223447C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0xA2uLL);
  v7 = a2;
  sub_1B21C4698();
  sub_1B2137224(__dst);
  return memcpy(__src, v5, 0xA2uLL);
}

void *sub_1B2234504(void *__src, uint64_t a2, void (*a3)(void *))
{
  memcpy(__dst, __src, 0xA2uLL);
  __srca[0] = a2;

  a3(__srca);
  if (v3)
  {

    __break(1u);
  }

  else
  {
    sub_1B21C4698();

    sub_1B2137224(__dst);
    return memcpy(__src, __srca, 0xA2uLL);
  }

  return result;
}

uint64_t Association.forKey(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  v5 = sub_1B22534D0();
  (*(a3 + 32))(v5);
}

void *sub_1B2234670(char *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0xA2uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  v6 = __dst[2];
  memcpy(__srca, __src + 24, sizeof(__srca));
  if (__dst[2])
  {
    sub_1B2136148(__dst, v9);

    sub_1B21DA240(v7);

    a2 = v6;
  }

  else
  {
    sub_1B2136148(__dst, v9);

    sub_1B21DA6C0(v4, v5);
  }

  sub_1B2137224(__dst);

  *__src = v4;
  *(__src + 1) = v5;
  *(__src + 2) = a2;
  return memcpy(__src + 24, __srca, 0x8AuLL);
}

void *sub_1B2234760(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v11 = *a1;
  v12 = *(a1 + 2);
  v6 = *(a1 + 4);
  memcpy(v10, a1 + 40, sizeof(v10));
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1B2235504;
  *(v8 + 24) = v7;

  *a1 = v11;
  *(a1 + 2) = v12;
  *(a1 + 3) = sub_1B2139E34;
  *(a1 + 4) = v8;
  return memcpy(a1 + 40, v10, 0x7AuLL);
}

uint64_t sub_1B2234858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = *(a1 + 24);
  *(v7 + 32) = sub_1B2235558;
  *(v7 + 40) = v6;
  *(a1 + 24) = sub_1B2155E14;
  *(a1 + 32) = v7;
}

uint64_t sub_1B2234900(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2();
  if (!v2)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1B213A1C8();
      v3 = v17;
      v7 = v5 + 32;
      for (i = v6 - 1; ; --i)
      {
        sub_1B211EE68(v7, v13);
        v9 = v14;
        v10 = v15;
        sub_1B21139A0(v13, v14);
        (*(v10 + 8))(__src, v9, v10);
        sub_1B2113208(v13);
        v17 = v3;
        v11 = *(v3 + 16);
        if (v11 >= *(v3 + 24) >> 1)
        {
          sub_1B213A1C8();
          v3 = v17;
        }

        *(v3 + 16) = v11 + 1;
        memcpy((v3 + 184 * v11 + 32), __src, 0xB8uLL);
        if (!i)
        {
          break;
        }

        v7 += 40;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1B2234A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = sub_1B213B0F4;
  if (v6)
  {
    v10 = swift_allocObject();
    v10[2] = v6;
    v10[3] = v7;
    v10[4] = sub_1B213B0F4;
    v10[5] = v8;
    v9 = sub_1B213B044;
    v8 = v10;
  }

  *(a1 + 40) = v9;
  *(a1 + 48) = v8;
}

void *sub_1B2234B24(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0xA2uLL);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_1B214C6B4(sub_1B2235520, v6, v8);

  sub_1B2137224(__dst);
  return memcpy(__src, v8, 0xA2uLL);
}

uint64_t sub_1B2234BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2();
  if (!v2)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1B214D708();
      v3 = v17;
      v7 = v5 + 32;
      for (i = v6 - 1; ; --i)
      {
        sub_1B211EE68(v7, v13);
        v9 = v14;
        v10 = v15;
        sub_1B21139A0(v13, v14);
        (*(v10 + 8))(__src, v9, v10);
        sub_1B2113208(v13);
        v17 = v3;
        v11 = *(v3 + 16);
        if (v11 >= *(v3 + 24) >> 1)
        {
          sub_1B214D708();
          v3 = v17;
        }

        *(v3 + 16) = v11 + 1;
        memcpy((v3 + 168 * v11 + 32), __src, 0xA3uLL);
        if (!i)
        {
          break;
        }

        v7 += 40;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

__n128 sub_1B2234D54(char *__src)
{
  memcpy(__dst, __src, 0xA2uLL);
  v2 = *(__src + 1);
  v21 = *__src;
  v22 = v2;
  v23 = *(__src + 2);
  v24 = *(__src + 6);
  v20[0] = *(__src + 65);
  *(v20 + 15) = *(__src + 10);
  v3 = *(__src + 104);
  v4 = *(__src + 120);
  v5 = *(__src + 136);
  *(v19 + 10) = *(__src + 146);
  v18 = v4;
  v19[0] = v5;
  v17 = v3;
  sub_1B2136148(__dst, &v15);

  sub_1B21A3F40();
  v7 = v6;
  v9 = v8;
  sub_1B2137224(__dst);

  v10 = v22;
  *__src = v21;
  *(__src + 1) = v10;
  *(__src + 2) = v23;
  v11 = MEMORY[0x1E69E7CC0];
  *(__src + 6) = v24;
  *(__src + 7) = v11;
  __src[64] = 0;
  *(__src + 65) = v20[0];
  *(__src + 10) = *(v20 + 15);
  *(__src + 11) = v7;
  *(__src + 12) = v9;
  result = v17;
  v13 = v18;
  v14 = v19[0];
  *(__src + 146) = *(v19 + 10);
  *(__src + 136) = v14;
  *(__src + 120) = v13;
  *(__src + 104) = result;
  return result;
}

__n128 sub_1B2234E98(__n128 *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = __src[7].n128_i64[0];
  v7 = __src[7].n128_u64[1];
  v11 = __src[8];
  v12 = __src[9];
  v13 = __src[10].n128_u16[0];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B223553C;
  *(v9 + 24) = v8;

  sub_1B216C5B4(v6);
  memcpy(__src, __dst, 0x70uLL);
  __src[7].n128_u64[0] = sub_1B2139E34;
  __src[7].n128_u64[1] = v9;
  result = v11;
  __src[8] = v11;
  __src[9] = v12;
  __src[10].n128_u16[0] = v13;
  return result;
}

uint64_t sub_1B2234F9C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2();
  if (!v2)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1B213CA68();
      v3 = v17;
      v7 = v5 + 32;
      for (i = v6 - 1; ; --i)
      {
        sub_1B211EE68(v7, v13);
        v9 = v14;
        v10 = v15;
        sub_1B21139A0(v13, v14);
        (*(v10 + 8))(__src, v9, v10);
        sub_1B2113208(v13);
        v17 = v3;
        v11 = *(v3 + 16);
        if (v11 >= *(v3 + 24) >> 1)
        {
          sub_1B213CA68();
          v3 = v17;
        }

        *(v3 + 16) = v11 + 1;
        memcpy((v3 + 168 * v11 + 32), __src, 0xA3uLL);
        if (!i)
        {
          break;
        }

        v7 += 40;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1B22350F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = *(a1 + 136);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = sub_1B2181AEC;
  if (v6)
  {
    v10 = swift_allocObject();
    v10[2] = v6;
    v10[3] = v7;
    v10[4] = sub_1B2181AEC;
    v10[5] = v8;
    v9 = sub_1B213B044;
    v8 = v10;
  }

  *(a1 + 128) = v9;
  *(a1 + 136) = v8;
}

uint64_t sub_1B22351C0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*(a6 + 8) + 16);
  (*(v11 + 8))(&v14, a5, v11);
  v13 = v14;

  sub_1B220A2E8(&v13, a2, a3, a4);
  if (v6)
  {

    __break(1u);
  }

  else
  {

    v14 = v13;
    return (*(v11 + 16))(&v14, a5, v11);
  }

  return result;
}

__n128 sub_1B22352B4(__n128 *a1)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  a1[9] = result;
  a1[10].n128_u16[0] = v2;
  return result;
}

uint64_t sub_1B22352CC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1B217F908(a1, *(v1 + 40));
}

uint64_t NSString.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B22522A0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 2;
  return result;
}

id static NSString.fromDatabaseValue(_:)(uint64_t *a1)
{
  v2 = sub_1B22522F0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  if (v6 == 3)
  {
    sub_1B22522E0();
    sub_1B22522C0();
    if (v8)
    {
      return sub_1B21FE00C();
    }
  }

  else if (v6 == 2)
  {
    v7 = a1[1];

    return sub_1B21FE00C();
  }

  return 0;
}

id sub_1B22356B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = static NSString.fromDatabaseValue(_:)(a1);
  *a2 = result;
  return result;
}

void *DatabaseCollation.__allocating_init(_:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v8[4] = sub_1B2235BAC;
  v8[5] = v9;
  return v8;
}

uint64_t DatabaseCollation.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *DatabaseCollation.init(_:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v4[4] = sub_1B2235D54;
  v4[5] = v7;
  return v4;
}

uint64_t sub_1B22357F0()
{
  v0 = sub_1B22522F0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B22522E0();
  result = sub_1B2252280();
  if (v3)
  {
    v4 = result;
    v5 = v3;
    sub_1B22522E0();
    result = sub_1B2252280();
    if (v6)
    {
      v7 = sub_1B218578C(v4, v5, result, v6);

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

uint64_t sub_1B223595C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, void, void, unint64_t, unint64_t))
{
  v6 = sub_1B22522F0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B22522E0();
  result = sub_1B2252280();
  if (v9)
  {
    v10 = result;
    v11 = v9;
    sub_1B22522E0();
    result = sub_1B2252280();
    if (v12)
    {
      v15[2] = v10;
      v15[3] = v11;
      v15[0] = result;
      v15[1] = v12;
      v13 = sub_1B2156990();
      v14 = a5(v15, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v13, v13);

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2235A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1B22522F0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B22522E0();
  result = sub_1B2252280();
  if (v9)
  {
    v10 = result;
    v11 = v9;
    sub_1B22522E0();
    result = sub_1B2252280();
    if (v12)
    {
      v13 = a5(v10, v11, result, v12);

      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DatabaseCollation.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t DatabaseCollation.__deallocating_deinit()
{
  DatabaseCollation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t DatabaseCollation.hashValue.getter()
{
  sub_1B2253420();
  MEMORY[0x1B2742F10](0);
  return sub_1B2253470();
}

unint64_t sub_1B2235CB0()
{
  result = qword_1ED85E828;
  if (!qword_1ED85E828)
  {
    type metadata accessor for DatabaseCollation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E828);
  }

  return result;
}

void sub_1B2235FFC()
{
  sub_1B21325E0();
  v2 = v1;
  sub_1B21140E4(v3, v1);

  if ((Database.isInsideTransaction.getter() & 1) == 0)
  {

    sub_1B21184CC();
    sub_1B223655C(v7, v8);
LABEL_12:

    goto LABEL_13;
  }

  v4._countAndFlagsBits = sub_1B211453C();
  Database.execute(sql:arguments:)(v4, v5);
  if (!v6)
  {

    v9 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v10 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    v11 = sub_1B221EAA4(v2);
    if (v11)
    {
      v19 = 0;
    }

    else
    {
      sub_1B2115ADC();
      sub_1B21130FC();
      sub_1B2119EFC();
      *(v0 + v9) = v10;
      v20._countAndFlagsBits = sub_1B21122F8();
      Database.execute(sql:arguments:)(v20, v21);
      if (!v22)
      {

        goto LABEL_11;
      }

      v19 = v22;
    }

    v12._countAndFlagsBits = sub_1B212CF30();
    Database.execute(sql:arguments:)(v12, v13);
    v15 = v14;

    if (v14 || (v16._countAndFlagsBits = sub_1B21122F8(), Database.execute(sql:arguments:)(v16, v17), v15 = v18, , , v18))
    {
      if (v19)
      {
      }
    }

    else if (!v19)
    {
      goto LABEL_11;
    }

    swift_willThrow();
LABEL_11:
    *(v0 + v9) = v10;
    goto LABEL_12;
  }

LABEL_13:
  sub_1B213CD90();
}

void sub_1B2236220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1B21325E0();
  a21 = v23;
  a22 = v24;
  v25 = v22;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if (Database.isInsideTransaction.getter())
  {
    v32 = MEMORY[0x1E69E7CC8];
    a9 = MEMORY[0x1E69E7CC0];
    a10 = MEMORY[0x1E69E7CC8];
    sub_1B211453C();
    sub_1B2116AE4();
    Database.execute(sql:arguments:)(v33, v34);
    sub_1B2124C08();

    if (!v25)
    {
      v36 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
      v37 = *(v31 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
      *(v31 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
      v27(&a9, v35);
      *v29 = 0;
      sub_1B2115ADC();
      sub_1B21130FC();
      sub_1B2116AE4();
      sub_1B2119EFC();
      v49 = v37;
      *(v31 + v36) = v37;
      v50 = MEMORY[0x1E69E7CC0];
      a9 = MEMORY[0x1E69E7CC0];
      a10 = v32;
      sub_1B21122F8();
      sub_1B2116AE4();
      Database.execute(sql:arguments:)(v51, v52);
      if (!v53)
      {

        goto LABEL_11;
      }

      a9 = v50;
      a10 = v32;
      v38._countAndFlagsBits = sub_1B212CF30();
      Database.execute(sql:arguments:)(v38, v39);

      if (v40)
      {
        v41 = v40;
      }

      else
      {
        a9 = v50;
        a10 = v32;
        sub_1B21122F8();
        sub_1B213CEB0();
        Database.execute(sql:arguments:)(v46, v47);

        if (!v48)
        {
LABEL_10:
          swift_willThrow();
LABEL_11:
          *(v31 + v36) = v49;
          goto LABEL_12;
        }

        v41 = v48;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1B223C224();
    sub_1B22366B0(v42, v43, v44, v45);
  }

LABEL_12:
  sub_1B213CD90();
}

uint64_t sub_1B2236404(char *a1, uint64_t a2, _BYTE *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5, uint64_t a6)
{
  v18 = *a1;

  Database.beginTransaction(_:)(&v18);
  if (!v11)
  {
    v12 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v13 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;

    if (sub_1B2238FC0(a3, a4, a5, a6))
    {
      v14 = 0;
    }

    else
    {
      sub_1B2119EFC();
      *(a2 + v12) = v13;
      Database.commit()();
      if (!v17)
      {
        goto LABEL_9;
      }

      v14 = v17;
    }

    Database.rollback()();
    if (v15)
    {
      if (v14)
      {
      }
    }

    else if (!v14)
    {
LABEL_9:
      *(a2 + v12) = v13;
    }

    swift_willThrow();
    goto LABEL_9;
  }
}

uint64_t sub_1B223655C(char *a1, uint64_t a2)
{
  v12 = *a1;

  Database.beginTransaction(_:)(&v12);
  if (!v3)
  {
    v4 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v5 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;

    v7 = sub_1B221EAA4(v6);

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      sub_1B2119EFC();
      *(a2 + v4) = v5;
      Database.commit()();
      if (!v11)
      {
        goto LABEL_9;
      }

      v8 = v11;
    }

    Database.rollback()();
    if (v9)
    {
      if (v8)
      {
      }
    }

    else if (!v8)
    {
LABEL_9:
      *(a2 + v4) = v5;
    }

    swift_willThrow();
    goto LABEL_9;
  }
}

void sub_1B22366B0(char *a1, uint64_t a2, _BYTE *a3, void (*a4)(uint64_t *__return_ptr))
{
  v12 = *a1;
  Database.beginTransaction(_:)(&v12);
  if (!v7)
  {
    v8 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v9 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    a4(&v13);
    *a3 = 0;
    sub_1B2115ADC();
    sub_1B21130FC();
    sub_1B2116AE4();
    sub_1B2119EFC();
    *(a2 + v8) = v9;
    sub_1B2116AE4();
    Database.commit()();
    if (v10)
    {
      Database.rollback()();
      if (v11)
      {
      }

      swift_willThrow();
    }

    *(a2 + v8) = v9;
  }
}

void sub_1B22367B4(char *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v16 = *a1;
  Database.beginTransaction(_:)(&v16);
  if (!v7)
  {
    v8 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v9 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    v10 = *(a3 + 4);
    (*(a3 + 3))(a4);
    sub_1B21A37E4();
    sub_1B213CEB0();
    Database.foreignKeyViolations()();
    sub_1B213CEB0();
    sub_1B21BCE80();

    sub_1B2115ADC();
    sub_1B21130FC();
    sub_1B2119EFC();
    *(a2 + v8) = v9;
    Database.commit()();
    if (!v11)
    {
      *(a2 + v8) = v9;
      v14 = *a3;
      sub_1B2158CA0(&v14);

      goto LABEL_8;
    }

    Database.rollback()();
    if (v12)
    {
    }

    swift_willThrow();
    *(a2 + v8) = v9;
  }

  v15 = *a3;
  sub_1B2158CA0(&v15);
  v13 = *(a3 + 4);

LABEL_8:

  sub_1B2149864();
}

uint64_t sub_1B223694C(char *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  sub_1B2111748(a1);
  Database.beginTransaction(_:)(v7);
  if (!v8)
  {
    v9 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v10 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    v11 = *(a3 + 4);
    (*(a3 + 3))(a4);
    sub_1B21A37E4();
    sub_1B21130FC();
    sub_1B2119EFC();
    *(a2 + v9) = v10;
    Database.commit()();
    if (!v12)
    {
      *(a2 + v9) = v10;
      v16 = *a3;
      sub_1B2158CA0(&v16);
    }

    Database.rollback()();
    if (v13)
    {
    }

    swift_willThrow();
    *(a2 + v9) = v10;
  }

  v17 = *a3;
  sub_1B2158CA0(&v17);
  v14 = *(a3 + 4);
}

uint64_t sub_1B2236ABC(char *a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  sub_1B2111748(a1);
  Database.beginTransaction(_:)(v11);
  if (!v12)
  {
    v13 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v14 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    if (sub_1B2204220(a3 & 0x101, a4, a5, a6))
    {
      v15 = 0;
    }

    else
    {
      sub_1B2115ADC();
      sub_1B21130FC();
      sub_1B2119EFC();
      *(a2 + v13) = v14;
      Database.commit()();
      if (!v18)
      {
        goto LABEL_9;
      }

      v15 = v18;
    }

    Database.rollback()();
    if (v16)
    {
      if (v15)
      {
      }
    }

    else if (!v15)
    {
LABEL_9:
      *(a2 + v13) = v14;
      goto LABEL_10;
    }

    swift_willThrow();
    goto LABEL_9;
  }

LABEL_10:
}

uint64_t sub_1B2236BF0(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  sub_1B2111748(a1);
  Database.beginTransaction(_:)(v8);
  if (!v9)
  {
    v10 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v11 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    if (a3(a5))
    {
      v12 = 0;
    }

    else
    {
      sub_1B21130FC();
      sub_1B2119EFC();
      *(a2 + v10) = v11;
      Database.commit()();
      if (!v15)
      {
        goto LABEL_9;
      }

      v12 = v15;
    }

    Database.rollback()();
    if (v13)
    {
      if (v12)
      {
      }
    }

    else if (!v12)
    {
LABEL_9:
      *(a2 + v10) = v11;
    }

    swift_willThrow();
    goto LABEL_9;
  }
}

uint64_t sub_1B2236D30()
{
  sub_1B212425C();
  v0 = type metadata accessor for Configuration();
  v1 = (v0 - 8);
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = 1;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 23) = 0;
  *(v4 + 4) = MEMORY[0x1E69E7CC0];
  *(v4 + 20) = 0;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  v4[64] = 2;
  *(v4 + 9) = 0;
  *(v4 + 10) = 0;
  v4[88] = -1;
  *(v4 + 12) = 5;
  v5 = &v4[v1[18]];
  sub_1B2252110();
  *&v4[v1[19]] = 0;
  *&v4[v1[20]] = 0;
  v4[v1[21]] = 1;
  v4[v1[22]] = 0;
  v6 = &v4[v1[23]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v4[v1[24]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v4[v1[25]];
  type metadata accessor for DatabaseQueue();
  *v8 = 0;
  *(v8 + 1) = 0;
  swift_allocObject();
  DatabaseQueue.init(configuration:)(v4);
  sub_1B21115FC();
  sub_1B2237BD0(v9, v10, v11, v12, 0, 0);
}

id sub_1B2236EE0(void (*a1)(uint64_t))
{
  [*(v1 + 24) lock];
  swift_beginAccess();
  a1(v1 + 16);
  swift_endAccess();
  return [*(v1 + 24) unlock];
}

uint64_t sub_1B2236F80()
{
  sub_1B2146B30();
  v1 = dword_1B226BA04[v0];
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t sub_1B2236FF8()
{
  sub_1B2253420();
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t sub_1B2237040()
{
  sub_1B2253420();
  sub_1B21184CC();
  sub_1B2252370();
  return sub_1B2253470();
}

uint64_t sub_1B223708C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1B2253420();
  a2(v5, a1);
  return sub_1B2253470();
}

uint64_t sub_1B22370F4()
{
  sub_1B2252370();
}

uint64_t sub_1B22371B4()
{
  sub_1B2252370();
}

uint64_t sub_1B2237270(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      sub_1B212D8B0();
      break;
    default:
      break;
  }

  sub_1B2252370();
}

uint64_t sub_1B2237364()
{
  sub_1B2252370();
}

uint64_t sub_1B22373CC()
{
  sub_1B2252370();
}

uint64_t sub_1B2237490()
{
  sub_1B2253420();
  sub_1B2252370();

  return sub_1B2253470();
}

uint64_t sub_1B2237538()
{
  sub_1B2253420();
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t sub_1B223757C()
{
  sub_1B2253420();
  sub_1B21184CC();
  sub_1B2252370();
  return sub_1B2253470();
}

uint64_t sub_1B22375DC()
{
  sub_1B2253420();
  sub_1B2252370();

  return sub_1B2253470();
}

uint64_t sub_1B2237670(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1B2253420();
  a3(v6, a2);
  return sub_1B2253470();
}

uint64_t sub_1B22376BC(uint64_t a1, char a2)
{
  sub_1B2253420();
  v3 = dword_1B226BA04[a2];
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t sub_1B223770C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_1B2237764@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
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

uint64_t Database.ConflictResolution.rawValue.getter()
{
  result = 0x4B4341424C4C4F52;
  switch(*v0)
  {
    case 1:
      result = 0x54524F4241;
      break;
    case 2:
      result = 1279869254;
      break;
    case 3:
      result = 0x45524F4E4749;
      break;
    case 4:
      result = 0x4543414C504552;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1B2237844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  HIBYTE(_38[0]) = 1;

  if ((a1 & 1) == 0)
  {

    sub_1B2235D58(a2, _38 + 7, v8, a4, a5);

    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  sub_1B2152610();
  if (v5)
  {
LABEL_9:

LABEL_10:

    return;
  }

  sub_1B2236220(a2, _38 + 7, sub_1B223C0C8, v15, v11, v12, v13, v14, v15[0], v15[1], v16, v17, v18, v19, v20, _38[0], _38[1], _38[2], _38[3], _38[4], _38[5], _38[6]);
  v8 = 0;
  a1 = 0;
  sub_1B215476C();
  while (1)
  {
    if (a1)
    {
      swift_willThrow();
      goto LABEL_9;
    }

    if (v8)
    {
      break;
    }

LABEL_5:
    if ((_38[0] & 0x100000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1B2237994(uint64_t *a1, void (*a2)(void))
{
  if (*a1)
  {
    v5 = OBJC_IVAR____TtC12GRDBInternal8Database_isRecordingSelectedRegion;
    v11 = *(v2 + OBJC_IVAR____TtC12GRDBInternal8Database_isRecordingSelectedRegion);
    v6 = OBJC_IVAR____TtC12GRDBInternal8Database_selectedRegion;
    sub_1B21118B8();
    swift_beginAccess();
    v7 = *(v2 + v6);
    *(v2 + v5) = 1;
    sub_1B211B358();

    v8 = sub_1B2252190();
    v9 = *(v2 + v6);
    *(v2 + v6) = v8;

    (a2)(v10);
    sub_1B2238724(a1, v2, v11, v7);
  }

  else
  {
    a2();
  }

  sub_1B2149864();
}

uint64_t sub_1B2237AAC(uint64_t a1, uint64_t a2)
{
  v5[3] = a2;
  v3 = *(v2 + 16);
  v5[2] = a1;
  return sub_1B2113C20(sub_1B223C0AC, v5);
}

uint64_t Database.ForeignKeyAction.rawValue.getter()
{
  result = 0x45444143534143;
  switch(*v0)
  {
    case 1:
      result = 0x5443495254534552;
      break;
    case 2:
      result = 0x4C4C554E20544553;
      break;
    case 3:
      result = 0x4146454420544553;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B2237BD0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  return sub_1B2237AAC(sub_1B223C084, v7);
}

void sub_1B2237C18(uint64_t a1, int a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t *))
{
  sub_1B21115FC();
  swift_beginAccess();
  v11 = *(a1 + 16);
  sub_1B21115FC();
  swift_beginAccess();
  v12 = sqlite3_backup_init(v11, "main", *(v5 + 16), "main");
  if (v12)
  {
    v13 = v12;
    if (v12 == 1)
    {
      sub_1B21AC298();
      sub_1B21152FC();
      sub_1B2144148();
      if (sqlite3_errstr(1))
      {
        v14 = sub_1B22523F0();
        *v5 = 1;
        *(v5 + 8) = v14;
        *(v5 + 16) = v15;
        goto LABEL_21;
      }

      goto LABEL_31;
    }

    if (a3)
    {
      a3();
    }

    while (1)
    {
      v18 = sqlite3_backup_step(v13, a2);
      v19 = sqlite3_backup_pagecount(v13);
      v20 = sqlite3_backup_remaining(v13);
      if (v18)
      {
        break;
      }

      if (a5)
      {
        v22 = v20;
        v23 = v19;
        v24 = 0;
        a5(&v22);
        if (v6)
        {
          goto LABEL_26;
        }
      }
    }

    if (v18 != 101)
    {
      Database.lastErrorMessage.getter();
      sub_1B212E310();
      sub_1B21AC298();
      sub_1B21152FC();
      sub_1B2144148();
      if (!a5)
      {
        if (!sqlite3_errstr(v18))
        {
          goto LABEL_33;
        }

        sub_1B22523F0();
        sub_1B212E310();
      }

      *a1 = v18;
      *(a1 + 8) = a1;
      *(a1 + 16) = a5;
      sub_1B211AEBC();
      swift_willThrow();
LABEL_26:
      sqlite3_backup_finish(v13);
      goto LABEL_27;
    }

    if (a5)
    {
      v22 = v20;
      v23 = v19;
      v24 = 1;
      a5(&v22);
      if (v6)
      {
      }
    }

    v21 = sqlite3_backup_finish(v13);
    if (!v21)
    {
      Database.clearSchemaCache()();
      return;
    }

    v17 = v21;
    v16 = a1;
    Database.lastErrorMessage.getter();
    sub_1B212E310();
    sub_1B21AC298();
    sub_1B21152FC();
    sub_1B2144148();
    if (a5)
    {
      goto LABEL_20;
    }

    if (!sqlite3_errstr(v17))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    goto LABEL_7;
  }

  v16 = a1;
  Database.lastErrorCode.getter(&v22);
  v17 = v22;
  Database.lastErrorMessage.getter();
  sub_1B212E310();
  sub_1B21AC298();
  sub_1B21152FC();
  sub_1B2144148();
  if (!a5)
  {
    if (!sqlite3_errstr(v17))
    {
      goto LABEL_32;
    }

LABEL_7:
    sub_1B22523F0();
    sub_1B212E310();
  }

LABEL_20:
  *v16 = v17;
  *(v16 + 8) = a1;
  *(v16 + 16) = a5;
LABEL_21:
  sub_1B211AEBC();
LABEL_27:
  swift_willThrow();
}

uint64_t sub_1B2237EC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__isSuspended);

  sub_1B217146C(v2, v0);
}

uint64_t Database.sqliteConnection.setter(uint64_t a1)
{
  sub_1B21118B8();
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B2237FBC()
{
  swift_beginAccess();
  if (off_1EB7A3328)
  {
    v0 = sub_1B22380D4;
  }

  else
  {
    v0 = 0;
  }

  return sub_1B223C05C(v0);
}

uint64_t sub_1B2238020(uint64_t a1, int a2, uint64_t a3)
{
  result = swift_beginAccess();
  v6 = off_1EB7A3328;
  if (off_1EB7A3328)
  {
    if (a3)
    {

      v7 = sub_1B22523F0();
      v9 = a2;
      v6(&v9, v7, v8);
      sub_1B2112F4C(v6);
    }
  }

  return result;
}

void *static Database.logError.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
  v0 = off_1EB7A3328;
  sub_1B2112328(off_1EB7A3328);
  return v0;
}

uint64_t static Database.logError.setter(void *a1, uint64_t a2)
{
  sub_1B21118B8();
  swift_beginAccess();
  off_1EB7A3328 = a1;
  qword_1EB7A3330 = a2;
  sub_1B2112328(a1);
  v4 = sub_1B2112F9C();
  sub_1B2112F4C(v4);
  sub_1B2237FBC();
  return sub_1B2112F4C(a1);
}

uint64_t (*static Database.logError.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  sub_1B2117F5C();
  return sub_1B2238200;
}

uint64_t sub_1B2238200(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1B2237FBC();
  }

  return result;
}

uint64_t sub_1B2238234@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB7A3328;
  v3 = qword_1EB7A3330;
  if (off_1EB7A3328)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1B223C018;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  return sub_1B2112328(v2);
}

uint64_t sub_1B22382CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B223BFE0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1B2112328(v3);
  return static Database.logError.setter(v6, v5);
}

uint64_t Database.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_description);
  v2 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_description + 8);

  return v1;
}

uint64_t Database.debugDescription.getter()
{
  v0 = sub_1B2121264(OBJC_IVAR____TtC12GRDBInternal8Database_description);
  MEMORY[0x1B2741EB0](v0);
  MEMORY[0x1B2741EB0](62, 0xE100000000000000);
  return 0x736162617461443CLL;
}

uint64_t Database.lastErrorCode.getter@<X0>(_DWORD *a1@<X8>)
{
  sub_1B2117330();
  swift_beginAccess();
  result = sqlite3_errcode(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_1B2238460()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__isSuspended);

  sub_1B2236E90();
}

uint64_t sub_1B22384B0(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result + OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback;
    v4 = *(result + OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback);

    if (v4)
    {
      v5 = *(v3 + 8);

      v6 = v4(a2);

      sub_1B2112F4C(v4);
      return v6 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Database.maximumStatementArgumentCount.getter()
{
  sub_1B2117330();
  swift_beginAccess();
  return sqlite3_limit(*(v0 + 16), 9, -1);
}

uint64_t Database.remove(function:)()
{
  sub_1B213CF68();
  sub_1B211A33C();
  sub_1B223A83C(v1);
  swift_endAccess();

  return sub_1B224D078(v0);
}

uint64_t sub_1B22385E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v10 = *(result + 32);
    v9 = *(result + 40);

    v11 = v10(a2, a3, a4, a5);

    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v11 <= 0x7FFFFFFF)
    {
      return v11;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Database.remove(collation:)()
{
  sub_1B213CF68();
  sub_1B211A33C();
  sub_1B223A9BC(v1);
  swift_endAccess();

  sub_1B2117330();
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_1B2252350();
  sqlite3_create_collation_v2(v2, (v5 + 32), 1, 0, 0, 0);
}

uint64_t sub_1B2238724(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC12GRDBInternal8Database_selectedRegion;
  swift_beginAccess();
  v9 = *a1;
  v13 = *(a2 + v8);
  v14 = v9;

  v16.tableRegions.value._rawValue = &v13;
  DatabaseRegion.union(_:)(v16);

  *a1 = v15;

  *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isRecordingSelectedRegion) = a3;
  if (a3)
  {
    v13 = *(a2 + v8);
    v14 = a4;

    v17.tableRegions.value._rawValue = &v13;
    DatabaseRegion.union(_:)(v17);

    v10 = *(a2 + v8);
    *(a2 + v8) = v15;
  }

  else
  {
    v11 = *(a2 + v8);
    *(a2 + v8) = a4;
  }
}

uint64_t Database.trace(options:_:)(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  type metadata accessor for SchedulingWatchdog();
  v8 = sub_1B2113B28();
  if (sub_1B2117B40(v8))
  {
    v9 = (v3 + OBJC_IVAR____TtC12GRDBInternal8Database_trace);
    v10 = *(v3 + OBJC_IVAR____TtC12GRDBInternal8Database_trace);
    v11 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_trace + 8);
    *v9 = a2;
    v9[1] = a3;
    sub_1B2112328(a2);
    sub_1B2112F4C(v10);
    if (v7 && a2)
    {
      sub_1B2122734();
      swift_beginAccess();
      v12 = v4[2];
      v13 = sub_1B2238A98;
      v14 = v7;
      v15 = v4;
    }

    else
    {
      sub_1B2122734();
      swift_beginAccess();
      v16 = v4[2];
      sub_1B21115FC();
    }

    return sqlite3_trace_v2(v12, v14, v13, v15);
  }

  else
  {
    sub_1B2111608();
    sub_1B2112ECC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2238930(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    v6 = result;

    sub_1B22389A0(v6, a3, a4, MEMORY[0x1E69E5998]);

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B22389A0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_trace);
  if (v5)
  {
    v6 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_trace + 8);
    if (result == 2)
    {
      if (a2 && a3)
      {
        v8 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 26);
        v9 = *a3 / 1000000000.0;
        v10 = a2;
        v11 = 0;
        v12 = a4;
        v13 = v8 | 0x8000000000000080;
        v14 = v9;
        goto LABEL_10;
      }
    }

    else if (result == 1 && a2 && a3)
    {
      v7 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 26) | 0x80;
      v10 = a2;
      v11 = a3;
      v12 = a4;
      v13 = v7;
      v14 = 0.0;
LABEL_10:

      v5(&v10);
      sub_1B2112F4C(v5);
      return sub_1B223C048(v10, v11, v12, v13, *&v14);
    }
  }

  return result;
}

Swift::tuple_walFrameCount_Int_checkpointedFrameCount_Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.checkpoint(_:on:)(GRDBInternal::Database::CheckpointMode _, Swift::String_optional on)
{
  sub_1B212425C();
  v4 = v3;
  v20 = *MEMORY[0x1E69E9840];
  v6 = *v5;
  type metadata accessor for SchedulingWatchdog();
  if ((sub_1B2117B40(v2) & 1) == 0)
  {
    goto LABEL_16;
  }

  pnCkpt = -1;
  pnLog = -1;
  sub_1B21115FC();
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (v4)
  {
    sub_1B2115B7C();
    v8 = (sub_1B2252350() + 32);
  }

  else
  {
    v8 = 0;
  }

  v9 = sqlite3_wal_checkpoint_v2(v7, v8, v6, &pnLog, &pnCkpt);
  swift_unknownObjectRelease();
  if (!v9)
  {
    goto LABEL_9;
  }

  if (v9 != 21)
  {
    v7 = v2;
    v12 = Database.lastErrorMessage.getter();
    v14 = v13;
    sub_1B21AC298();
    sub_1B21152FC();
    sub_1B2144148();
    if (v14)
    {
LABEL_13:
      *v7 = v9;
      *(v7 + 1) = v12;
      *(v7 + 2) = v14;
      sub_1B211AEBC();
      v10 = swift_willThrow();
      goto LABEL_14;
    }

    if (sqlite3_errstr(v9))
    {
LABEL_12:
      v12 = sub_1B22523F0();
      v14 = v15;
      goto LABEL_13;
    }

    __break(1u);
LABEL_16:
    sub_1B2111608();
    sub_1B2112ECC();
    v10 = sub_1B2252EC0();
    __break(1u);
    goto LABEL_17;
  }

  sub_1B21AC298();
  sub_1B21152FC();
  sub_1B2144148();
  if (sqlite3_errstr(21))
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_9:
  v11 = pnCkpt;
  v10 = pnLog;
LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
LABEL_17:
  result.checkpointedFrameCount = v11;
  result.walFrameCount = v10;
  return result;
}

uint64_t sub_1B2238C50()
{
  sub_1B2122088();
  result = sub_1B2252290();
  qword_1EB7A3338 = result;
  return result;
}

uint64_t sub_1B2238CA0()
{
  result = sub_1B2252290();
  qword_1EB7A3340 = result;
  return result;
}

id sub_1B2238CFC(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

const char *sub_1B2238D48()
{
  ppStmt[1] = *MEMORY[0x1E69E9840];
  v1 = (v0 + OBJC_IVAR____TtC12GRDBInternal8Database_journalModeCache);
  if (*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_journalModeCache + 8))
  {
    v2 = *v1;
LABEL_5:

LABEL_6:
    v5 = *MEMORY[0x1E69E9840];
    return v2;
  }

  ppStmt[0] = 0;
  swift_beginAccess();
  sqlite3_prepare_v2(*(v0 + 16), "PRAGMA journal_mode", -1, ppStmt, 0);
  sqlite3_step(ppStmt[0]);
  if (sqlite3_column_text(ppStmt[0], 0))
  {
    v2 = sub_1B2252400();
    v3 = v1[1];
    *v1 = v2;
    v1[1] = v4;

    sqlite3_finalize(ppStmt[0]);
    goto LABEL_5;
  }

  Database.lastErrorCode.getter(&v13);
  v7 = v13;
  v8 = Database.lastErrorMessage.getter();
  v10 = v9;
  sub_1B21AC298();
  swift_allocError();
  v2 = v11;
  if (v10)
  {
LABEL_10:
    *v2 = v7;
    *(v2 + 8) = v8;
    *(v2 + 16) = v10;
    *(v2 + 24) = 0xD000000000000013;
    *(v2 + 32) = 0x80000001B226F510;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    swift_willThrow();
    sqlite3_finalize(ppStmt[0]);
    goto LABEL_6;
  }

  result = sqlite3_errstr(v7);
  if (result)
  {
    v8 = sub_1B22523F0();
    v10 = v12;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.rollback()()
{
  if (Database.isInsideTransaction.getter())
  {
    sub_1B21173F4();
    v0._countAndFlagsBits = 0xD000000000000014;
    Database.execute(sql:arguments:)(v0, v1);
  }
}

uint64_t sub_1B2238F64(_BYTE *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v7, a4);
  if (!v4)
  {
    *a1 = 0;
  }

  return 0;
}

uint64_t sub_1B2238FC0(_BYTE *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{

  LOBYTE(a3) = sub_1B2238F64(a1, a2, a3, a4);

  return a3 & 1;
}

uint64_t Database.TransactionKind.rawValue.getter()
{
  v1 = 0x54414944454D4D49;
  if (*v0 != 1)
  {
    v1 = 0x564953554C435845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4445525245464544;
  }
}

GRDBInternal::Database::CheckpointMode_optional __swiftcall Database.CheckpointMode.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B223912C@<X0>(_DWORD *a1@<X8>)
{
  result = Database.CheckpointMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Database.ColumnType.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *sub_1B223927C@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

GRDBInternal::Database::ConflictResolution_optional __swiftcall Database.ConflictResolution.init(rawValue:)(Swift::String rawValue)
{
  sub_1B212D608();
  v2 = sub_1B2252F40();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1B2239394@<X0>(uint64_t *a1@<X8>)
{
  result = Database.ConflictResolution.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GRDBInternal::Database::ForeignKeyAction_optional __swiftcall Database.ForeignKeyAction.init(rawValue:)(Swift::String rawValue)
{
  sub_1B212D608();
  v2 = sub_1B2252F40();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1B2239490@<X0>(uint64_t *a1@<X8>)
{
  result = Database.ForeignKeyAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1B22394D8(_DWORD *a1@<X8>, unsigned int *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_1B21600EC(a1);
}

void sub_1B22394E4(_DWORD *a1@<X8>, unsigned int *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_1B21600FC(a1);
}

void sub_1B2239508(_DWORD *a1@<X8>, unsigned int *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_1B216019C(a1);
}

uint64_t sub_1B223953C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = Database.TracingOptions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B223957C@<X0>(_DWORD *a1@<X8>)
{
  result = Database.TracingOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Database.TraceEvent.Statement.sql.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  return sub_1B2239600();
}

uint64_t sub_1B2239600()
{
  if ((*(v0 + 24) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  if (!*(v0 + 8) && !sqlite3_sql(*v0))
  {
    __break(1u);
LABEL_8:
    sub_1B2111608();
    sub_1B2112A88();
    result = sub_1B2252EC0();
    __break(1u);
    return result;
  }

  sub_1B22523F0();
  if (qword_1ED85D650 != -1)
  {
    sub_1B2117970();
  }

  v1 = sub_1B2251B80();
  sub_1B2156958(v1, qword_1ED8618E8);
  sub_1B2156990();
  v2 = sub_1B2252B80();

  return v2;
}

uint64_t Database.TraceEvent.Statement.expandedSQL.getter()
{
  v1 = *v0;
  if (v0[3] < 0)
  {
    v3 = (v0[2])(*v0);
    if (v3)
    {
      v4 = v3;
      sub_1B22523F0();
      if (qword_1ED85D650 != -1)
      {
        sub_1B2117970();
      }

      v5 = sub_1B2251B80();
      sub_1B2156958(v5, qword_1ED8618E8);
      sub_1B2156990();
      v1 = sub_1B2252B80();

      sqlite3_free(v4);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = v0[1];
  }

  return v1;
}

uint64_t Database.TraceEvent.Statement.description.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 24);
  if (v3 < 0)
  {
    if (v3)
    {
      v4 = v2(*v0);
      if (v4)
      {
        v5 = v4;
        sub_1B22523F0();
        if (qword_1ED85D650 != -1)
        {
          sub_1B2117970();
        }

        v6 = sub_1B2251B80();
        sub_1B2156958(v6, qword_1ED8618E8);
        sub_1B2156990();
        v1 = sub_1B2252B80();

        sqlite3_free(v5);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v8 = *v0;
      v9 = v0[1];
      v10 = v0[2];
      return sub_1B2239600();
    }
  }

  else
  {
    sub_1B223B3DC(*v0, v0[1], v2, v3);
  }

  return v1;
}

uint64_t Database.TraceEvent.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  if (v7 < 0)
  {
    v11 = v3[4];
    sub_1B21619D8(&qword_1EB7A2BC8, &qword_1B2260538);
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E63B0];
    *(v12 + 16) = xmmword_1B22546B0;
    sub_1B211463C(v12, v13);
    MEMORY[0x1B2741EB0](8307, 0xE200000000000000);
    v14 = Database.TraceEvent.Statement.description.getter();
    MEMORY[0x1B2741EB0](v14);
  }

  else if ((v7 & 0x80) != 0)
  {
    if (v7)
    {
      v15 = v6(*v3, a2, a3, v7);
      if (v15)
      {
        v16 = v15;
        sub_1B22523F0();
        if (qword_1ED85D650 != -1)
        {
          sub_1B2117970();
        }

        v17 = sub_1B2251B80();
        sub_1B2156958(v17, qword_1ED8618E8);
        sub_1B2156990();
        sub_1B2252B80();
        sub_1B214CC54();
        sqlite3_free(v16);
      }
    }

    else
    {
      v19 = *v3;
      v20 = v3[1];
      v21 = v3[2];
      sub_1B2239600();
    }
  }

  else
  {
    v8 = sub_1B211187C();
    sub_1B223B3DC(v8, v9, v6, v10);
  }

  return sub_1B211187C();
}

uint64_t Database.TraceEvent.expandedDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (v4 < 0)
  {
    v8 = v0[4];
    sub_1B21619D8(&qword_1EB7A2BC8, &qword_1B2260538);
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E63B0];
    *(v9 + 16) = xmmword_1B22546B0;
    sub_1B211463C(v9, v10);
    MEMORY[0x1B2741EB0](8307, 0xE200000000000000);
    if ((v4 & 0x80) != 0)
    {
      v14 = v3(v1);
      if (v14)
      {
        v15 = v14;
        sub_1B22523F0();
        if (qword_1ED85D650 != -1)
        {
          sub_1B2117970();
        }

        v16 = sub_1B2251B80();
        sub_1B2156958(v16, qword_1ED8618E8);
        sub_1B2156990();
        sub_1B2252B80();
        sub_1B214CC54();
        sqlite3_free(v15);
      }
    }

    else
    {
    }

    v17 = sub_1B211187C();
    MEMORY[0x1B2741EB0](v17);
  }

  else if ((v4 & 0x80) != 0)
  {
    v11 = v3(*v0);
    if (v11)
    {
      v12 = v11;
      sub_1B22523F0();
      if (qword_1ED85D650 != -1)
      {
        sub_1B2117970();
      }

      v13 = sub_1B2251B80();
      sub_1B2156958(v13, qword_1ED8618E8);
      sub_1B2156990();
      sub_1B2252B80();
      sub_1B214CC54();
      sqlite3_free(v12);
    }
  }

  else
  {
    v5 = sub_1B211187C();
    sub_1B223B3DC(v5, v6, v3, v7);
  }

  return sub_1B211187C();
}

uint64_t Database.TransactionCompletion.hashValue.getter()
{
  sub_1B2146B30();
  MEMORY[0x1B2742F10](v0 & 1);
  return sub_1B2253470();
}

uint64_t sub_1B2239D38()
{
  v1 = *v0;
  sub_1B2253420();
  Database.TransactionCompletion.hash(into:)(v3, v1);
  return sub_1B2253470();
}

GRDBInternal::Database::TransactionKind_optional __swiftcall Database.TransactionKind.init(rawValue:)(Swift::String rawValue)
{
  sub_1B212D608();
  v2 = sub_1B2252F40();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1B2239DD0()
{
  sub_1B2146B30();
  MEMORY[0x1B2742F10](v0);
  return sub_1B2253470();
}

uint64_t sub_1B2239E3C@<X0>(uint64_t *a1@<X8>)
{
  result = Database.TransactionKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B223A83C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    type metadata accessor for DatabaseFunction();
    v7 = *(v3 + 40);
    sub_1B2253420();
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    sub_1B2252370();
    sub_1B2253450();
    v11 = sub_1B2253470();
    v12 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v3 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        break;
      }

      if (static DatabaseFunction.== infix(_:_:)(*(*(v3 + 48) + 8 * v13), a1))
      {
        v14 = *v1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v1;
        v18 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B22492CC();
          v16 = v18;
        }

        v6 = *(*(v16 + 48) + 8 * v13);
        sub_1B223B074(v13);
        *v1 = v18;
        return v6;
      }

      v11 = v13 + 1;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1B2252C50();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_1B223AB48(v4, a1);

  return v6;
}