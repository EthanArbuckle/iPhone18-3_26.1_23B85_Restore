uint64_t sub_1B1A59C30@<X0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E528, &qword_1B1A7EAC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v26 - v10;
  v12 = sub_1B1A51554();
  v13 = *a2;
  *a2 = v12;

  v14 = *a2;
  if (*a2 && (v17 = *(v14 + 2), v15 = v14 + 16, (v16 = v17) != 0))
  {
    v26[1] = a3;
    v18 = &v15[16 * v16];
    v20 = *v18;
    v19 = v18[1];
    v21 = qword_1EDB764F0;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v22, qword_1EDB770A8);
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_1B1A7CEC8();

    strcpy(v27, "last segment: ");
    HIBYTE(v27[1]) = -18;
    MEMORY[0x1B2736400](v20, v19);
    sub_1B1A561C0(v27[0], v27[1], 0xD00000000000005ELL, 0x80000001B1A80C10, 0x655374736574616CLL, 0xEF2928746E656D67);

    sub_1B1A46E9C(a1, v11, type metadata accessor for DataFrameStreamContainer);
    v23 = type metadata accessor for DataFrameStreamContainer();
    (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
    sub_1B1A59F5C(v20, v19, a2, v11, a4);
    sub_1B1A48194(v11, &qword_1EB75E528, &qword_1B1A7EAC0);
  }

  else
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v25, qword_1EDB770A8);
    sub_1B1A561C0(0xD000000000000010, 0x80000001B1A80EF0, 0xD00000000000005ELL, 0x80000001B1A80C10, 0x655374736574616CLL, 0xEF2928746E656D67);
    return sub_1B1A5A800(a2, a4);
  }
}

double sub_1B1A59F5C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v79 = a1;
  v80 = a3;
  v84 = a2;
  v75 = a5;
  v76 = sub_1B1A7C768();
  v6 = *(v76 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1B1A7C808();
  v89 = *(v77 - 8);
  v10 = *(v89 + 64);
  v11 = MEMORY[0x1EEE9AC00](v77);
  v74 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v81 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E528, &qword_1B1A7EAC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v73 - v18;
  v20 = type metadata accessor for DataFrameStreamContainer();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1A47E6C(a4, v19, &qword_1EB75E528, &qword_1B1A7EAC0);
  v25 = *(v21 + 48);
  if (v25(v19, 1, v20) == 1)
  {
    v26 = qword_1EDB770E8;
    v27 = v82;
    swift_beginAccess();
    sub_1B1A46E9C(v27 + v26, v24, type metadata accessor for DataFrameStreamContainer);
    if (v25(v19, 1, v20) != 1)
    {
      sub_1B1A48194(v19, &qword_1EB75E528, &qword_1B1A7EAC0);
    }
  }

  else
  {
    sub_1B1A5F684(v19, v24);
  }

  v28 = *(v20 + 20);
  v85 = v79;
  v86 = v84;

  MEMORY[0x1B2736400](0x746E656D6765732ELL, 0xE800000000000000);
  v29 = v76;
  (*(v6 + 104))(v9, *MEMORY[0x1E6968F70], v76);
  sub_1B1A47F94();
  v82 = v24;
  v30 = v83;
  sub_1B1A7C7F8();
  (*(v6 + 8))(v9, v29);
  v31 = v30;

  v32 = *(v80 + 8);
  v33 = v78;
  if (*(v32 + 16) && (v34 = sub_1B1A47538(v30), (v35 & 1) != 0))
  {
    v36 = *(v32 + 56) + 48 * v34;
    v38 = *v36;
    v37 = *(v36 + 8);
    v39 = *(v36 + 16);
    v40 = *(v36 + 24);
    v41 = *(v36 + 32);
    v42 = *(v36 + 40);
    v43 = *(v89 + 8);

    v43(v31, v77);
    sub_1B1A46F50(v82, type metadata accessor for DataFrameStreamContainer);
    v45 = v75;
    *v75 = v38;
    v45[1] = v37;
    v45[2] = v39;
    v45[3] = v40;
    v45[4] = v41;
    *(v45 + 10) = v42;
  }

  else
  {
    v46 = v89;
    v47 = *(v89 + 16);
    v48 = v81;
    v49 = v77;
    v47(v81, v31, v77);
    v50 = v82;
    v51 = sub_1B1A50430();
    if (v33)
    {
      v52 = *(v46 + 8);
      v52(v48, v49);
      v52(v31, v49);
      sub_1B1A46F50(v50, type metadata accessor for DataFrameStreamContainer);
    }

    else
    {
      v53 = v51;
      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v54, qword_1EDB770A8);
      v85 = 0;
      v86 = 0xE000000000000000;
      sub_1B1A7CEC8();

      v85 = 0xD000000000000011;
      v86 = 0x80000001B1A80E20;
      sub_1B1A4DD9C();
      v55 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v55);

      sub_1B1A561C0(v85, v86, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000024, 0x80000001B1A80E40);

      if (v53 < 0x41)
      {
        sub_1B1A5FCC4();
        swift_allocError();
        *v61 = 0;
        swift_willThrow();
        v62 = *(v89 + 8);

        v62(v81, v49);
        v62(v83, v49);
        sub_1B1A46F50(v82, type metadata accessor for DataFrameStreamContainer);
      }

      else
      {
        v56 = v74;
        v57 = v81;
        v47(v74, v81, v49);
        LOBYTE(v85) = 1;
        type metadata accessor for MemoryMappedRegion();
        swift_allocObject();
        v58 = v84;

        v59 = MemoryMappedRegion.init(filePath:requestedByteSize:minimumByteSize:access:)(v56, v53, 0x440u, &v85);
        v60 = v83;
        v89 = *(v89 + 8);
        v63 = v59;
        (v89)(v57, v49);
        v64 = v58;
        v65 = v63[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E530, &qword_1B1A7EAC8);
        v66 = swift_allocObject();
        *(v66 + 16) = v65;
        type metadata accessor for SegmentOffsetTable();
        v67 = swift_allocObject();
        *(v67 + 16) = v63;
        *&v87 = v79;
        *(&v87 + 1) = v64;
        *v88 = v63;
        *&v88[8] = v66;
        *&v88[16] = v67;
        *&v88[24] = v53;

        sub_1B1A600F4(&v87, &v85);
        v68 = v80;
        v69 = *(v80 + 8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = *(v68 + 8);
        sub_1B1A729AC(&v87, v60, isUniquelyReferenced_nonNull_native);
        *(v68 + 8) = v85;
        (v89)(v60, v49);
        sub_1B1A46F50(v82, type metadata accessor for DataFrameStreamContainer);
        v71 = *v88;
        v72 = v75;
        *v75 = v87;
        *(v72 + 1) = v71;
        result = *&v88[12];
        *(v72 + 28) = *&v88[12];
      }
    }
  }

  return result;
}

uint64_t sub_1B1A5A800@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v47 = a1;
  v48 = a2;
  v3 = sub_1B1A7C808();
  v54 = *(v3 - 8);
  v4 = v54[8];
  v5 = MEMORY[0x1EEE9AC00](v3);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for InternalLogger();
  __swift_project_value_buffer(v12, qword_1EDB770A8);
  sub_1B1A561C0(0, 0xE000000000000000, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD00000000000001ELL, 0x80000001B1A80ED0);
  CFAbsoluteTimeGetCurrent();
  v13 = sub_1B1A7CD68();
  v15 = v14;
  sub_1B1A51338(v13, v14, v11);
  if (v2)
  {
  }

  v43 = v13;
  v44 = v15;
  v17 = v54[2];
  v45 = v3;
  v46 = v9;
  v17(v9, v11);
  v18 = sub_1B1A50430();
  v41 = v17;
  v42 = v11;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1B1A7CEC8();

  v50 = 0xD000000000000011;
  v51 = 0x80000001B1A80E20;
  sub_1B1A4DD9C();
  v19 = v45;
  v20 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v20);

  sub_1B1A561C0(v50, v51, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000024, 0x80000001B1A80E40);

  v21 = v18;
  v22 = v18 >= 0x41;
  v23 = v44;
  if (!v22)
  {
    sub_1B1A5FCC4();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    v28 = v54[1];
    v28(v46, v19);
    v28(v42, v19);
  }

  v24 = v49;
  v25 = v46;
  v41(v49, v46, v19);
  LOBYTE(v50) = 1;
  type metadata accessor for MemoryMappedRegion();
  swift_allocObject();
  v26 = MemoryMappedRegion.init(filePath:requestedByteSize:minimumByteSize:access:)(v24, v21, 0x440u, &v50);
  v29 = v54[1];
  v30 = v26;
  v31 = v45;
  v29(v25, v45);
  v32 = v30[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E530, &qword_1B1A7EAC8);
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  type metadata accessor for SegmentOffsetTable();
  v34 = swift_allocObject();
  *(v34 + 16) = v30;
  *&v52 = v43;
  *(&v52 + 1) = v23;
  *v53 = v30;
  *&v53[8] = v33;
  *&v53[16] = v34;
  *&v53[24] = v21;

  sub_1B1A600F4(&v52, &v50);
  v35 = v47;
  v36 = *(v47 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v35 + 8);
  v38 = v42;
  sub_1B1A729AC(&v52, v42, isUniquelyReferenced_nonNull_native);
  *(v35 + 8) = v50;
  result = (v29)(v38, v31);
  v39 = *v53;
  v40 = v48;
  *v48 = v52;
  v40[1] = v39;
  *(v40 + 28) = *&v53[12];
  return result;
}

void sub_1B1A5ACF0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for InternalLogger();
  __swift_project_value_buffer(v7, qword_1EDB770A8);
  sub_1B1A7CEC8();

  MEMORY[0x1B2736400](a1, a2);
  sub_1B1A561C0(0xD000000000000011, 0x80000001B1A80E90, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000015, 0x80000001B1A80EB0);

  v9 = *(v3 + qword_1EDB770F8);
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock((v9 + 32));
  sub_1B1A60184((v9 + 16), a3);
  os_unfair_lock_unlock((v9 + 32));
}

void sub_1B1A5AE70(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v36 = a3;
  v41 = a4;
  v34 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E528, &qword_1B1A7EAC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for DataFrameStreamContainer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(a2 + v16, v15, type metadata accessor for DataFrameStreamContainer);
  v17 = sub_1B1A51554();
  sub_1B1A46F50(v15, type metadata accessor for DataFrameStreamContainer);
  v18 = *a1;

  *a1 = v17;
  if (v17 && (v21 = *(v17 + 2), v20 = v17 + 16, (v19 = v21) != 0))
  {
    v22 = &v20[16 * v19];
    v24 = *v22;
    v23 = v22[1];
    v25 = *v22 == v36 && v23 == v41;
    if (v25 || (v26 = *v22, v27 = v22[1], (sub_1B1A7CFB8() & 1) != 0))
    {
      swift_beginAccess();
      v28 = v35;
      sub_1B1A51778();
      if (!v28)
      {
        sub_1B1A5B1D4(a2 + v16, a1, v36, v41, &v37);
        if (qword_1EDB767A8 != -1)
        {
          swift_once();
        }

        v30 = qword_1EDB770E0;

        os_unfair_lock_lock(v30 + 6);
        sub_1B1A601A4(&v30[4]);
        os_unfair_lock_unlock(v30 + 6);

        v31 = v40;
        v32 = v34;
        *v34 = v37;
        *(v32 + 1) = v38;
        *(v32 + 3) = v39;
        *(v32 + 10) = v31;
      }

      swift_endAccess();
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);

      sub_1B1A59F5C(v24, v23, a1, v10, v34);
      sub_1B1A48194(v10, &qword_1EB75E528, &qword_1B1A7EAC0);
    }
  }

  else
  {
    sub_1B1A55EFC();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1B1A5B1D4@<X0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E528, &qword_1B1A7EAC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1B1A51554();
  v16 = *a2;
  *a2 = v15;

  v17 = *a2;
  if (!*a2 || (v20 = *(v17 + 2), v18 = v17 + 16, (v19 = v20) == 0))
  {
    sub_1B1A55EFC();
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  v51 = a5;
  v21 = &v18[16 * v19];
  v22 = v21[1];
  v45 = *v21;
  sub_1B1A46E9C(a1, v14, type metadata accessor for DataFrameStreamContainer);
  v23 = type metadata accessor for DataFrameStreamContainer();
  (*(*(v23 - 8) + 56))(v14, 0, 1, v23);

  sub_1B1A59F5C(a3, a4, a2, v14, &v46);
  sub_1B1A48194(v14, &qword_1EB75E528, &qword_1B1A7EAC0);
  if (v5)
  {
  }

  v26 = *(&v47 + 1);
  v44 = v47;
  v27 = v48;
  v28 = v49;
  if (v45 == a3 && v22 == a4)
  {
  }

  else
  {
    v42 = v46;
    v43 = v50;
    v30 = sub_1B1A7CFB8();

    if ((v30 & 1) == 0)
    {
      v31 = v51;
      v32 = v44;
      *v51 = v42;
      v31[1] = v32;
      v31[2] = v26;
      v31[3] = v27;
      v31[4] = v28;
      *(v31 + 10) = v43;
      return result;
    }
  }

  result = sub_1B1A5A800(a2, &v46);
  v33 = v51;
  v34 = *(v27 + 16);
  v35 = *(v34 + 24);
  v36 = *(v34 + 16);
  v37 = __CFADD__(v35, v36);
  v38 = v35 + v36;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    v39 = v48;
    atomic_store(v38, (*(v48 + 16) + 24));

    v40 = v49;
    v41 = v50;
    *v33 = v46;
    *(v33 + 1) = v47;
    v33[3] = v39;
    v33[4] = v40;
    *(v33 + 10) = v41;
  }

  return result;
}

double sub_1B1A5B4C8@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + qword_1EDB770F8);
  os_unfair_lock_lock(v4 + 8);
  sub_1B1A6040C(&v4[4], &v7);
  os_unfair_lock_unlock(v4 + 8);
  if (!v2)
  {
    v6 = v10;
    *a1 = v7;
    *(a1 + 8) = v8;
    result = *&v9;
    *(a1 + 24) = v9;
    *(a1 + 40) = v6;
  }

  return result;
}

void sub_1B1A5B560(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v4 = qword_1EDB770E8;
    swift_beginAccess();
    sub_1B1A51778();
    if (!v2)
    {
      sub_1B1A5B684(v1 + v4, v1, a1);
      if (qword_1EDB767A8 != -1)
      {
        swift_once();
      }

      v5 = qword_1EDB770E0;

      os_unfair_lock_lock(v5 + 6);
      sub_1B1A603F4(&v5[4]);
      os_unfair_lock_unlock(v5 + 6);
    }

    swift_endAccess();
  }
}

void sub_1B1A5B684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + qword_1EDB770F8);
  os_unfair_lock_lock((v5 + 32));
  if (!*(v5 + 16))
  {
    goto LABEL_4;
  }

  v6 = sub_1B1A5F848((v5 + 16), a3);

  v7 = *(*(v5 + 16) + 16);
  if (v7 >= v6)
  {
    sub_1B1A5FB54(v6, v7);
LABEL_4:
    sub_1B1A5BB90(a3, a1, v5 + 16);
    os_unfair_lock_unlock((v5 + 32));
    return;
  }

  __break(1u);
}

uint64_t sub_1B1A5B744(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v27[1] = a3;
  v27[0] = sub_1B1A7C768();
  v5 = *(v27[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v27[0]);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DataFrameStreamContainer();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1B1A7C808();
  v32 = *(v28 - 8);
  v14 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  sub_1B1A46E9C(a2, v13, type metadata accessor for DataFrameStreamContainer);
  v19 = *(v10 + 28);
  v30 = v17;
  v31 = v18;

  MEMORY[0x1B2736400](0x746E656D6765732ELL, 0xE800000000000000);
  v20 = v27[0];
  (*(v5 + 104))(v8, *MEMORY[0x1E6968F70], v27[0]);
  sub_1B1A47F94();
  sub_1B1A7C7F8();
  (*(v5 + 8))(v8, v20);

  sub_1B1A46F50(v13, type metadata accessor for DataFrameStreamContainer);
  sub_1B1A5F574(v16, &v30);
  sub_1B1A60378(v30, v31);
  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for InternalLogger();
  __swift_project_value_buffer(v21, qword_1EDB770A8);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1B1A7CEC8();

  v30 = 0xD000000000000017;
  v31 = 0x80000001B1A81020;
  sub_1B1A4DD9C();
  v22 = v28;
  v23 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v23);

  sub_1B1A561C0(v30, v31, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000016, 0x80000001B1A81040);

  v24 = v29;
  sub_1B1A6FDCC();
  if (v24)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v30 = 0xD00000000000001FLL;
    v31 = 0x80000001B1A81060;
    v25 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v25);

    sub_1B1A561D8(v30, v31, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000016, 0x80000001B1A81040);
  }

  return (*(v32 + 8))(v16, v22);
}

uint64_t sub_1B1A5BB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      sub_1B1A5B744(v17, a2, a3);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
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
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1A5BCC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(*a2 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - v11;
  v13 = type metadata accessor for DataFrameStreamContainer();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  if (*a1)
  {
    goto LABEL_5;
  }

  v24 = a3;
  v25 = a4;
  v17 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(a2 + v17, v16, type metadata accessor for DataFrameStreamContainer);
  v18 = &v16[*(v13 + 20)];
  v19 = *&v18[*(type metadata accessor for StorageContainer() + 20)];
  LOBYTE(v18) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0();
  result = sub_1B1A46F50(v16, type metadata accessor for DataFrameStreamContainer);
  v21 = v26;
  if ((v18 & 1) == 0)
  {
    sub_1B1A5761C();
    result = sub_1B1A58460();
  }

  v22 = *v21;
  a3 = v24;
  a4 = v25;
  if (v22)
  {
LABEL_5:
    (*(v9 + 16))(v12, a3, v8);
    sub_1B1A7CCD8();
    result = sub_1B1A7CCA8();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  *a4 = v23;
  return result;
}

void TypedStream.fetchAs<A>(byIdentifier:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v65 = a3;
  v63 = a1;
  v58 = a4;
  v7 = sub_1B1A7C808();
  v62 = *(v7 - 8);
  v8 = *(v62 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B1A7CE18();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v52 - v13;
  v14 = type metadata accessor for DataFrameStreamContainer();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(&v18[v4], v17, type metadata accessor for DataFrameStreamContainer);
  v19 = &v17[*(v14 + 20)];
  v20 = *&v19[*(type metadata accessor for StorageContainer() + 20)];
  LOBYTE(v19) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0();
  v21 = sub_1B1A46F50(v17, type metadata accessor for DataFrameStreamContainer);
  if ((v19 & 1) == 0)
  {
    v64 = a2;
    if (qword_1EDB764F0 == -1)
    {
LABEL_17:
      v39 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v39, qword_1EDB770A8);
      v66 = 0;
      v67 = 0xE000000000000000;
      sub_1B1A7CEC8();

      v66 = 0xD000000000000018;
      v67 = 0x80000001B1A80600;
      sub_1B1A46E9C(&v18[v5], v17, type metadata accessor for DataFrameStreamContainer);
      v40 = v62;
      (*(v62 + 2))(v10, &v17[*(v14 + 20)], v7);
      sub_1B1A46F50(v17, type metadata accessor for DataFrameStreamContainer);
      sub_1B1A4DD9C();
      v41 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v41);

      v40[1](v10, v7);
      sub_1B1A561D8(v66, v67, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000016, 0x80000001B1A80CE0);

      (*(*(v64 - 8) + 56))(v58, 1, 1);
      return;
    }

LABEL_28:
    swift_once();
    goto LABEL_17;
  }

  v17 = *(v4 + qword_1EDB770F8);
  MEMORY[0x1EEE9AC00](v21);
  v22 = v65;
  *(&v52 - 4) = a2;
  *(&v52 - 3) = v22;
  *(&v52 - 2) = v4;
  os_unfair_lock_lock(v17 + 8);
  v23 = v72;
  sub_1B1A5FD3C(v17 + 2, &v66);
  if (v23)
  {
    os_unfair_lock_unlock(v17 + 8);
    __break(1u);
    return;
  }

  v24 = 0;
  v14 = v5;
  os_unfair_lock_unlock(v17 + 8);
  v25 = v66;
  if (!v66)
  {
    goto LABEL_15;
  }

  v26 = *(v66 + 2);
  if (!v26)
  {
    goto LABEL_14;
  }

  v62 = v17;
  v27 = 0;
  v54 = v66 + 40;
  v59 = v26;
  v53 = v26 - 1;
  v64 = a2;
  v60 = v5;
  v61 = v66;
  while (2)
  {
    v18 = &v54[16 * v27];
    v5 = v27;
    while (1)
    {
      if (v5 >= *(v25 + 2))
      {
        __break(1u);
        goto LABEL_28;
      }

      v28 = *(v18 - 1);
      v29 = *v18;
      MEMORY[0x1EEE9AC00](v25);
      v72 = v24;
      *(&v52 - 6) = a2;
      *(&v52 - 5) = v22;
      *(&v52 - 4) = v14;
      *(&v52 - 3) = v30;
      *(&v52 - 2) = v29;

      v31 = v62;
      os_unfair_lock_lock(v62 + 8);
      v32 = v72;
      sub_1B1A5FD5C(&v31[4], &v66);
      if (v32)
      {
        os_unfair_lock_unlock(v31 + 8);

        return;
      }

      v72 = 0;
      os_unfair_lock_unlock(v31 + 8);

      v33 = v66;
      v17 = v67;
      v34 = v68;
      v7 = v69;
      v35 = v70;
      v10 = v71;
      v36 = sub_1B1A68BFC(v63);
      if (v37 != 2)
      {
        break;
      }

      ++v5;

      v18 += 16;
      v14 = v60;
      v24 = v72;
      a2 = v64;
      v22 = v65;
      v25 = v61;
      if (v59 == v5)
      {
        goto LABEL_14;
      }
    }

    v38 = v36;
    if (!v37)
    {

      v66 = v33;
      v67 = v17;
      v68 = v34;
      v69 = v7;
      v70 = v35;
      v71 = v10;
      v42 = v72;
      v43 = DataFrameStreamSegment.frameData(forSegmentIndex:)(v38);
      if (v42)
      {

        return;
      }

      if (v44 >> 60 == 15)
      {

        v45 = *(v64 - 8);
      }

      else
      {
        v46 = v64;
        v47 = v57;
        v48 = v43;
        v49 = v44;
        (*(v65 + 16))();

        sub_1B1A4C400(v48, v49);
        v50 = *(v46 - 8);
        if ((*(v50 + 48))(v47, 1, v46) != 1)
        {
          v51 = v58;
          (*(v50 + 32))(v58, v47, v46);
          (*(v50 + 56))(v51, 0, 1, v46);
          return;
        }

        (*(v55 + 8))(v47, v56);
        v45 = v50;
      }

      (*(v45 + 56))(v58, 1, 1);
      return;
    }

    v27 = v5 + 1;
    v63 = v38;
    v24 = v72;
    a2 = v64;
    v22 = v65;
    v14 = v60;
    v25 = v61;
    if (v53 != v5)
    {
      continue;
    }

    break;
  }

LABEL_14:

LABEL_15:
  (*(*(a2 - 8) + 56))(v58, 1, 1, a2);
}

uint64_t sub_1B1A5C750@<X0>(char **a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = type metadata accessor for DataFrameStreamContainer();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(a2 + v10, v9, type metadata accessor for DataFrameStreamContainer);
  v11 = sub_1B1A51554();
  sub_1B1A46F50(v9, type metadata accessor for DataFrameStreamContainer);
  v12 = *a1;

  *a1 = v11;
  *a3 = v11;
  return result;
}

uint64_t sub_1B1A5C858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E528, &qword_1B1A7EAC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  v12 = type metadata accessor for DataFrameStreamContainer();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1B1A59F5C(a2, a3, a1, v11, a4);
  return sub_1B1A48194(v11, &qword_1EB75E528, &qword_1B1A7EAC0);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TypedStream.delete(byIdentifier:)(Swift::UInt64 byIdentifier)
{
  v2 = v1;
  v41 = byIdentifier;
  v3 = sub_1B1A7C808();
  v40 = *(v3 - 8);
  v4 = *(v40 + 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DataFrameStreamContainer();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(&v11[v1], v10, type metadata accessor for DataFrameStreamContainer);
  v12 = &v10[*(v7 + 20)];
  v13 = *&v12[*(type metadata accessor for StorageContainer() + 20)];
  v14 = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0();
  sub_1B1A46F50(v10, type metadata accessor for DataFrameStreamContainer);
  if (!v14)
  {
    v16 = v1;
    if (qword_1EDB764F0 != -1)
    {
LABEL_22:
      swift_once();
    }

    v31 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v31, qword_1EDB770A8);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v42 = 0xD000000000000018;
    v43 = 0x80000001B1A80600;
    sub_1B1A46E9C(&v11[v16], v10, type metadata accessor for DataFrameStreamContainer);
    v32 = v40;
    (*(v40 + 2))(v6, &v10[*(v7 + 20)], v3);
    sub_1B1A46F50(v10, type metadata accessor for DataFrameStreamContainer);
    sub_1B1A4DD9C();
    v33 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v33);

    (*(v32 + 1))(v6, v3);
    sub_1B1A561D8(v42, v43, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000015, 0x80000001B1A80D00);

    LOBYTE(v22) = 0;
    return v22 & 1;
  }

  v7 = *(v1 + qword_1EDB770F8);
  os_unfair_lock_lock((v7 + 32));
  v15 = v48;
  sub_1B1A603DC((v7 + 16), &v42);
  if (!v15)
  {
    v16 = 0;
    os_unfair_lock_unlock((v7 + 32));
    v10 = v42;
    if (v42)
    {
      v18 = *(v42 + 2);
      if (v18)
      {
        v19 = 0;
        v36 = v42 + 40;
        v37 = v18;
        v35 = v18 - 1;
        v38 = v7;
        v39 = v1;
        v40 = v42;
        while (2)
        {
          v11 = &v36[16 * v19];
          v3 = v19;
          while (1)
          {
            if (v3 >= *(v10 + 2))
            {
              __break(1u);
              goto LABEL_22;
            }

            v20 = *(v11 - 1);
            v21 = *v11;
            MEMORY[0x1EEE9AC00](v17);
            v22 = (&v35 - 6);
            *(&v35 - 4) = v2;
            *(&v35 - 3) = v23;
            *(&v35 - 2) = v21;

            os_unfair_lock_lock((v7 + 32));
            sub_1B1A6040C(v7 + 16, &v42);
            os_unfair_lock_unlock((v7 + 32));

            if (v16)
            {

              return v22 & 1;
            }

            v48 = 0;
            v24 = v42;
            v6 = v43;
            v25 = v44;
            v26 = v45;
            v27 = v46;
            v28 = v47;
            v29 = sub_1B1A68BFC(v41);
            if (v30 != 2)
            {
              break;
            }

            ++v3;

            v11 += 16;
            v7 = v38;
            v16 = v48;
            v2 = v39;
            v10 = v40;
            if (v37 == v3)
            {
              goto LABEL_14;
            }
          }

          v22 = v29;
          if (!v30)
          {

            v42 = v24;
            v43 = v6;
            v44 = v25;
            v45 = v26;
            v46 = v27;
            v47 = v28;
            LOBYTE(v22) = DataFrameStreamSegment.deleteFrame(index:)(v22);

            return v22 & 1;
          }

          v19 = v3 + 1;
          v41 = v22;
          v16 = v48;
          v7 = v38;
          v2 = v39;
          v10 = v40;
          if (v35 != v3)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:

      LOBYTE(v22) = 0;
    }

    else
    {
      LOBYTE(v22) = 0;
    }

    return v22 & 1;
  }

  os_unfair_lock_unlock((v7 + 32));
  __break(1u);
  return result;
}

void TypedStream.mutate(forIdentifier:_:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = v4;
  v40 = a2;
  v41 = a3;
  v47 = a1;
  v42 = a4;
  v39 = *v4;
  v7 = sub_1B1A7C808();
  v45 = *(v7 - 1);
  v8 = *(v45 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DataFrameStreamContainer();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(&v15[v4], v14, type metadata accessor for DataFrameStreamContainer);
  v16 = &v14[*(v11 + 20)];
  v17 = *&v16[*(type metadata accessor for StorageContainer() + 20)];
  LOBYTE(v16) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0();
  sub_1B1A46F50(v14, type metadata accessor for DataFrameStreamContainer);
  if ((v16 & 1) == 0)
  {
    v54 = v5;
    if (qword_1EDB764F0 != -1)
    {
LABEL_22:
      swift_once();
    }

    v32 = type metadata accessor for InternalLogger();
    v47 = __swift_project_value_buffer(v32, qword_1EDB770A8);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v48 = 0xD000000000000018;
    v49 = 0x80000001B1A80600;
    sub_1B1A46E9C(&v15[v6], v14, type metadata accessor for DataFrameStreamContainer);
    v33 = v45;
    (*(v45 + 2))(v10, &v14[*(v11 + 20)], v7);
    sub_1B1A46F50(v14, type metadata accessor for DataFrameStreamContainer);
    sub_1B1A4DD9C();
    v34 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v34);

    (*(v33 + 1))(v10, v7);
    sub_1B1A561D8(v48, v49, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000018, 0x80000001B1A80D20);
    goto LABEL_17;
  }

  v11 = *(v4 + qword_1EDB770F8);
  os_unfair_lock_lock((v11 + 32));
  sub_1B1A603DC((v11 + 16), &v48);
  if (!v5)
  {
    os_unfair_lock_unlock((v11 + 32));
    v14 = v48;
    if (!v48)
    {
LABEL_18:
      v35 = v42;
      *v42 = 0;
      *(v35 + 8) = 1;
      return;
    }

    v54 = 0;
    v7 = *(v48 + 2);
    if (v7)
    {
      v19 = 0;
      v37 = v7 - 1;
      v38 = v48 + 40;
      v45 = v48;
      v46 = v4;
      v43 = v7;
      v44 = v11;
      while (2)
      {
        v15 = &v38[16 * v19];
        v20 = v19;
        while (1)
        {
          if (v20 >= *(v14 + 2))
          {
            __break(1u);
            goto LABEL_22;
          }

          v21 = *(v15 - 1);
          v22 = *v15;
          MEMORY[0x1EEE9AC00](v18);
          *(&v36 - 4) = v6;
          *(&v36 - 3) = v23;
          *(&v36 - 2) = v22;

          os_unfair_lock_lock((v11 + 32));
          v24 = v54;
          sub_1B1A6040C(v11 + 16, &v48);
          os_unfair_lock_unlock((v11 + 32));

          v54 = v24;
          if (v24)
          {

            return;
          }

          v7 = v48;
          v10 = v49;
          v25 = v50;
          v26 = v51;
          v27 = v52;
          v28 = v53;
          v29 = sub_1B1A68BFC(v47);
          if (v30 != 2)
          {
            break;
          }

          ++v20;

          v15 += 16;
          v7 = v43;
          v11 = v44;
          v14 = v45;
          v6 = v46;
          if (v43 == v20)
          {
            goto LABEL_17;
          }
        }

        v31 = v29;
        if (!v30)
        {

          v48 = v7;
          v49 = v10;
          v50 = v25;
          v51 = v26;
          v52 = v27;
          v53 = v28;
          DataFrameStreamSegment.mutateFrame<A>(frameSegmentIndex:mutate:supersede:)(v31, v40, v41, sub_1B1A5FD80, v46, *(v39 + 80), *(v39 + 88), v42);

          return;
        }

        v19 = v20 + 1;
        v47 = v31;
        v14 = v45;
        v6 = v46;
        v11 = v44;
        if (v37 != v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  os_unfair_lock_unlock((v11 + 32));
  __break(1u);
}

void sub_1B1A5D484(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v42 = a2;
  v43 = a3;
  v48 = a1;
  v41 = *v3;
  v6 = sub_1B1A7C808();
  v46 = *(v6 - 1);
  v7 = *(v46 + 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DataFrameStreamContainer();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(&v14[v3], v13, type metadata accessor for DataFrameStreamContainer);
  v15 = &v13[*(v10 + 20)];
  v16 = *&v15[*(type metadata accessor for StorageContainer() + 20)];
  LOBYTE(v15) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0();
  sub_1B1A46F50(v13, type metadata accessor for DataFrameStreamContainer);
  if ((v15 & 1) == 0)
  {
    v55 = v4;
    if (qword_1EDB764F0 != -1)
    {
LABEL_22:
      swift_once();
    }

    v32 = type metadata accessor for InternalLogger();
    v48 = __swift_project_value_buffer(v32, qword_1EDB770A8);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v49 = 0xD000000000000018;
    v50 = 0x80000001B1A80600;
    sub_1B1A46E9C(&v14[v5], v13, type metadata accessor for DataFrameStreamContainer);
    v33 = v46;
    (*(v46 + 2))(v9, &v13[*(v10 + 20)], v6);
    sub_1B1A46F50(v13, type metadata accessor for DataFrameStreamContainer);
    sub_1B1A4DD9C();
    v34 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v34);

    (*(v33 + 1))(v9, v6);
    sub_1B1A561D8(v49, v50, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD00000000000001CLL, 0x80000001B1A80E70);
    goto LABEL_17;
  }

  v13 = *(v3 + qword_1EDB770F8);
  os_unfair_lock_lock(v13 + 8);
  sub_1B1A603DC(v13 + 2, &v49);
  if (!v4)
  {
    os_unfair_lock_unlock(v13 + 8);
    v6 = v49;
    if (!v49)
    {
LABEL_18:
      v35 = v43;
      *v43 = 0;
      *(v35 + 8) = 1;
      return;
    }

    v55 = 0;
    v18 = *(v49 + 2);
    if (v18)
    {
      v19 = 0;
      v44 = *(v49 + 2);
      v45 = v13;
      v39 = v18 - 1;
      v40 = v49 + 40;
      v46 = v49;
      v47 = v3;
      while (2)
      {
        v14 = &v40[16 * v19];
        v20 = v19;
        while (1)
        {
          if (v20 >= *(v6 + 2))
          {
            __break(1u);
            goto LABEL_22;
          }

          v21 = *(v14 - 1);
          v22 = *v14;
          MEMORY[0x1EEE9AC00](v17);
          *(&v38 - 4) = v5;
          *(&v38 - 3) = v23;
          *(&v38 - 2) = v22;

          os_unfair_lock_lock(v13 + 8);
          v24 = v55;
          sub_1B1A6040C((v13 + 16), &v49);
          os_unfair_lock_unlock(v13 + 8);

          v55 = v24;
          if (v24)
          {

            return;
          }

          v25 = v49;
          v10 = v50;
          v9 = v51;
          v26 = v52;
          v27 = v53;
          v28 = v54;
          v29 = sub_1B1A68BFC(v48);
          if (v30 != 2)
          {
            break;
          }

          ++v20;

          v14 += 16;
          v13 = v45;
          v6 = v46;
          v5 = v47;
          if (v44 == v20)
          {
            goto LABEL_17;
          }
        }

        v31 = v29;
        if (!v30)
        {

          v49 = v25;
          v50 = v10;
          v51 = v9;
          v52 = v26;
          v53 = v27;
          v54 = v28;
          MEMORY[0x1EEE9AC00](v36);
          v37 = v42;
          *(&v38 - 2) = v47;
          *(&v38 - 1) = v37;
          DataFrameStreamSegment.setFrame<A>(frameSegmentIndex:mutated:supersede:)(v31, sub_1B1A60150, (&v38 - 4), *(v41 + 80), *(v41 + 88), v43);

          return;
        }

        v19 = v20 + 1;
        v48 = v31;
        v6 = v46;
        v5 = v47;
        v13 = v45;
        if (v39 != v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  os_unfair_lock_unlock(v13 + 8);
  __break(1u);
}

unint64_t TypedStream.frameCount.getter()
{
  v1 = v0;
  v2 = sub_1B1A7C808();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DataFrameStreamContainer();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(&v0[v11], v10, type metadata accessor for DataFrameStreamContainer);
  v12 = &v10[*(v7 + 20)];
  v13 = *&v12[*(type metadata accessor for StorageContainer() + 20)];
  LOBYTE(v12) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0();
  sub_1B1A46F50(v10, type metadata accessor for DataFrameStreamContainer);
  if (v12)
  {
    v3 = *&v0[qword_1EDB770F8];
    os_unfair_lock_lock((v3 + 32));
    v2 = 0;
    sub_1B1A5FDA4((v3 + 16), &v36);
    os_unfair_lock_unlock((v3 + 32));
    v10 = v36;
    if (!v36)
    {
      v26 = 0;
      v27 = 0;
      goto LABEL_15;
    }

    v32 = v36;
    v33 = v0;
    v15 = 0;
    v1 = v36 + 40;
    v34 = -*(v36 + 2);
    v11 = -1;
    while (1)
    {
      if (v34 + v11 == -1)
      {

        v27 = 0;
        v26 = v15;
        goto LABEL_15;
      }

      if (++v11 >= *(v10 + 2))
      {
        __break(1u);
        goto LABEL_20;
      }

      v16 = *(v1 - 1);
      v17 = *v1;
      MEMORY[0x1EEE9AC00](v14);
      *(&v32 - 4) = v33;
      *(&v32 - 3) = v18;
      *(&v32 - 2) = v17;

      os_unfair_lock_lock((v3 + 32));
      sub_1B1A5FDC0(v3 + 16, &v36);
      os_unfair_lock_unlock((v3 + 32));

      v7 = v38;
      v19 = v39;
      v20 = atomic_load((*(v39 + 16) + 16));
      v21 = atomic_load((*(v19 + 16) + 20));
      v22 = v20 - v21;
      if (v20 < v21)
      {
        break;
      }

      v1 += 16;
      v6 = v37;

      v23 = __CFADD__(v15, v22);
      v15 += v22;
      v10 = v32;
      if (v23)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v34 = v37;
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v29, qword_1EDB770A8);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1B1A7CEC8();
    MEMORY[0x1B2736400](0x466E657474697277, 0xEE003A73656D6172);
    v35 = v20;
    v30 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v30);

    MEMORY[0x1B2736400](0xD000000000000026, 0x80000001B1A80D40);
    v35 = v21;
    v31 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v31);

    sub_1B1A561D8(v36, v37, 0xD000000000000069, 0x80000001B1A80D70, 0x756F43656D617266, 0xEA0000000000746ELL);

    **(v19 + 16) = 2;
  }

  else
  {
LABEL_10:
    if (qword_1EDB764F0 != -1)
    {
LABEL_20:
      swift_once();
    }

    v24 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v24, qword_1EDB770A8);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v36 = 0xD000000000000018;
    v37 = 0x80000001B1A80600;
    sub_1B1A46E9C(&v1[v11], v10, type metadata accessor for DataFrameStreamContainer);
    (*(v3 + 16))(v6, &v10[*(v7 + 20)], v2);
    sub_1B1A46F50(v10, type metadata accessor for DataFrameStreamContainer);
    sub_1B1A4DD9C();
    v25 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v25);

    (*(v3 + 8))(v6, v2);
    sub_1B1A561D8(v36, v37, 0xD00000000000005ELL, 0x80000001B1A80C10, 0x756F43656D617266, 0xEA0000000000746ELL);
  }

  v26 = 0;
  v27 = 1;
LABEL_15:
  LOBYTE(v36) = v27;
  return v26 | (v27 << 32);
}

uint64_t TypedStream.pruner(reversed:)(int a1)
{
  v2 = v1;
  v26 = a1;
  v3 = *v1;
  v31 = sub_1B1A7C808();
  v27 = *(v31 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DataFrameStreamContainer();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(v1 + v11, v10, type metadata accessor for DataFrameStreamContainer);
  v12 = &v10[*(v7 + 20)];
  v13 = *&v12[*(type metadata accessor for StorageContainer() + 20)];
  LOBYTE(v12) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0();
  sub_1B1A46F50(v10, type metadata accessor for DataFrameStreamContainer);
  if (v12)
  {
    v14 = *(v3 + 80);
    v15 = *(v3 + 88);
    type metadata accessor for DataFrameStreamPruner();
    v29 = v3;
    v30 = &off_1F28B0EE8;
    *&v28 = v2;
    v16 = sub_1B1A55658(&v28, v26 & 1, 1);
  }

  else
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v17, qword_1EDB770A8);
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_1B1A7CEC8();

    *&v28 = 0xD000000000000018;
    *(&v28 + 1) = 0x80000001B1A80600;
    sub_1B1A46E9C(v2 + v11, v10, type metadata accessor for DataFrameStreamContainer);
    v18 = *(v7 + 20);
    v19 = v27;
    v20 = v31;
    (*(v27 + 16))(v6, &v10[v18], v31);
    sub_1B1A46F50(v10, type metadata accessor for DataFrameStreamContainer);
    sub_1B1A4DD9C();
    v21 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v21);

    (*(v19 + 8))(v6, v20);
    sub_1B1A561D8(v28, *(&v28 + 1), 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000011, 0x80000001B1A80BD0);

    sub_1B1A55EFC();
    v22 = swift_allocError();
    *v23 = 1;
    v16 = v22;
    swift_willThrow();
  }

  return v16;
}

uint64_t TypedStream.deinit()
{
  sub_1B1A46F50(v0 + qword_1EDB770E8, type metadata accessor for DataFrameStreamContainer);
  v1 = *(v0 + qword_1EDB770F8);

  v2 = *(v0 + qword_1EDB770F0);

  return v0;
}

uint64_t TypedStream.__deallocating_deinit()
{
  TypedStream.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B1A5E4BC(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B1A7D058();
  MEMORY[0x1B2736930](*(a2 + 16));
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = (a2 + 32);
    do
    {
      v9 = *v8++;
      sub_1B1A7D088();
      --v7;
    }

    while (v7);
  }

  result = sub_1B1A7D098();
  v11 = -1 << *(v5 + 32);
  v12 = result & ~v11;
  if ((*(v5 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(a2 + 16);
    while (1)
    {
      v15 = *(*(v5 + 48) + 8 * v12);
      if (*(v15 + 16) == v14)
      {
        break;
      }

LABEL_6:
      v12 = (v12 + 1) & v13;
      if (((*(v5 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!v14 || v15 == a2)
    {
LABEL_14:

      *a1 = *(*(v5 + 48) + 8 * v12);

      return 0;
    }

    else
    {
      v16 = 32;
      v17 = *(a2 + 16);
      while (v17)
      {
        if (*(v15 + v16) != *(a2 + v16))
        {
          goto LABEL_6;
        }

        v16 += 4;
        if (!--v17)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_15:
    v18 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;

    sub_1B1A5EC20(v20, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
    *a1 = a2;
    return 1;
  }

  return result;
}

uint64_t sub_1B1A5E640(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B1A7D058();
  sub_1B1A7CB18();
  v9 = sub_1B1A7D098();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B1A7CFB8() & 1) != 0)
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

    sub_1B1A5EDE4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_1B1A5E790(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB75E550, qword_1B1A7FA40);
  result = sub_1B1A7CE88();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1B1A5EB54(*(*(v3 + 48) + 8 * (v13 | (v7 << 6))), v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      ;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      bzero((v3 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B1A5E8F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E548, &unk_1B1A7EAF0);
  result = sub_1B1A7CE88();
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
      sub_1B1A7D058();
      sub_1B1A7CB18();
      result = sub_1B1A7D098();
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

unint64_t sub_1B1A5EB54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1B1A7D058();
  MEMORY[0x1B2736930](*(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      sub_1B1A7D088();
      --v5;
    }

    while (v5);
  }

  sub_1B1A7D098();
  v8 = -1 << *(a2 + 32);
  result = sub_1B1A7CE68();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1B1A5EC20(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B1A5E790(v5 + 1);
    }

    else
    {
      if (v6 > v5)
      {
        v7 = a2;
        result = sub_1B1A5EF64();
        a2 = v7;
        goto LABEL_22;
      }

      sub_1B1A5F210(v5 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1B1A7D058();
    MEMORY[0x1B2736930](*(v4 + 16));
    v10 = *(v4 + 16);
    if (v10)
    {
      v11 = (v4 + 32);
      do
      {
        v12 = *v11++;
        sub_1B1A7D088();
        --v10;
      }

      while (v10);
    }

    result = sub_1B1A7D098();
    v13 = -1 << *(v8 + 32);
    a2 = result & ~v13;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v14 = ~v13;
      v15 = *(v4 + 16);
      while (1)
      {
        v16 = *(*(v8 + 48) + 8 * a2);
        if (*(v16 + 16) == v15)
        {
          break;
        }

LABEL_13:
        a2 = (a2 + 1) & v14;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (v15 && v16 != v4)
      {
        v17 = (v16 + 32);
        v18 = (v4 + 32);
        v19 = *(v4 + 16);
        while (v19)
        {
          if (*v17 != *v18)
          {
            goto LABEL_13;
          }

          ++v17;
          ++v18;
          if (!--v19)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_21:
      result = sub_1B1A7CFE8();
      __break(1u);
    }
  }

LABEL_22:
  v20 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = v4;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B1A5EDE4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1B1A5E8F4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B1A5F0B4();
      goto LABEL_16;
    }

    sub_1B1A5F33C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B1A7D058();
  sub_1B1A7CB18();
  result = sub_1B1A7D098();
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

      result = sub_1B1A7CFB8();
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
  result = sub_1B1A7CFE8();
  __break(1u);
  return result;
}

void *sub_1B1A5EF64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB75E550, qword_1B1A7FA40);
  v2 = *v0;
  v3 = sub_1B1A7CE78();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1B1A5F0B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E548, &unk_1B1A7EAF0);
  v2 = *v0;
  v3 = sub_1B1A7CE78();
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

unint64_t sub_1B1A5F210(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB75E550, qword_1B1A7FA40);
  result = sub_1B1A7CE88();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1B1A5EB54(v16, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = *(*(v3 + 48) + 8 * (v12 | (v7 << 6)));
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B1A5F33C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E548, &unk_1B1A7EAF0);
  result = sub_1B1A7CE88();
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
      sub_1B1A7D058();

      sub_1B1A7CB18();
      result = sub_1B1A7D098();
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

double sub_1B1A5F574@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1B1A47538(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v17 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B1A731B8();
      v11 = v17;
    }

    v12 = *(v11 + 48);
    v13 = sub_1B1A7C808();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56) + 48 * v8;
    v15 = *(v14 + 40);
    *a2 = *v14;
    *(a2 + 8) = *(v14 + 8);
    *(a2 + 24) = *(v14 + 24);
    *(a2 + 40) = v15;
    sub_1B1A7237C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *(a2 + 28) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B1A5F684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataFrameStreamContainer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1A5F6E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v17 = a1 + 32;
  v5 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_4;
    }

    v6 = (v17 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = *(a2 + 40);
    sub_1B1A7D058();

    sub_1B1A7CB18();
    v10 = sub_1B1A7D098();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if ((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14 == v8 && v14[1] == v7;
    if (v15 || (sub_1B1A7CFB8() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v4;
}

uint64_t sub_1B1A5F848(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_1B1A5F6E8(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return *(v5 + 16);
  }

  v38 = a1;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = a2 + 56;
    while (1)
    {
      while (1)
      {
        v14 = *(v5 + 16);
        if (v9 == v14)
        {
          return v8;
        }

        if (v9 >= v14)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v15 = v5 + 32;
        v16 = (v5 + 32 + 16 * v9);
        if (*(a2 + 16))
        {
          break;
        }

LABEL_21:
        if (v8 != v9)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v26 = *(v5 + 16);
          if (v8 >= v26)
          {
            goto LABEL_37;
          }

          if (v9 >= v26)
          {
            goto LABEL_38;
          }

          v27 = (v15 + 16 * v8);
          v29 = *v27;
          v28 = v27[1];
          v30 = v5;
          v32 = *v16;
          v31 = v16[1];

          v33 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1B1A5F670(v30);
          }

          v34 = v33;
          v35 = v33 + 32;
          v36 = &v35[16 * v8];
          v37 = *(v36 + 1);
          *v36 = v32;
          *(v36 + 1) = v31;
          v5 = v34;

          if (v9 >= *(v5 + 16))
          {
            goto LABEL_39;
          }

          v11 = &v35[16 * v9];
          v12 = *(v11 + 1);
          *v11 = v29;
          *(v11 + 1) = v28;

          *v38 = v5;
        }

        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          goto LABEL_35;
        }

        v13 = __OFADD__(v9++, 1);
        if (v13)
        {
          goto LABEL_34;
        }
      }

      v39 = v5 + 32;
      v40 = v5;
      v18 = *v16;
      v17 = v16[1];
      v19 = *(a2 + 40);
      sub_1B1A7D058();

      sub_1B1A7CB18();
      v20 = sub_1B1A7D098();
      v21 = -1 << *(a2 + 32);
      v22 = v20 & ~v21;
      if (((*(v10 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
LABEL_20:

        v5 = v40;
        v15 = v39;
        goto LABEL_21;
      }

      v23 = ~v21;
      while (1)
      {
        v24 = (*(a2 + 48) + 16 * v22);
        v25 = *v24 == v18 && v24[1] == v17;
        if (v25 || (sub_1B1A7CFB8() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v10 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v5 = v40;
      v13 = __OFADD__(v9++, 1);
      if (v13)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1B1A5FA94(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B1A5FB54(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
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
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1B1A7927C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1B1A5FA94(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1B1A5FC14()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1B1A7CEF8();
  return sub_1B1A7CEE8();
}

unint64_t sub_1B1A5FCC4()
{
  result = qword_1EB75E518;
  if (!qword_1EB75E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E518);
  }

  return result;
}

uint64_t sub_1B1A5FD3C@<X0>(char **a1@<X0>, char **a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1B1A5C750(a1, v2[4], a2);
}

uint64_t sub_1B1A5FD5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1B1A5C858(a1, v2[5], v2[6], a2);
}

uint64_t sub_1B1A5FE30()
{
  result = type metadata accessor for DataFrameStreamContainer();
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

uint64_t sub_1B1A5FF28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B1A5FF70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B1A5FFB8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B1A5FFF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B1A60040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B1A600A0()
{
  result = qword_1EB75E520;
  if (!qword_1EB75E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E520);
  }

  return result;
}

void sub_1B1A60150()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  TypedStream.append(_:)();
}

uint64_t sub_1B1A601DC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B1A5471C;

  return sub_1B1A585D4(a1, v6, v7, v8);
}

uint64_t sub_1B1A602C0(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1B1A582C8(a1, v1[4]);
}

uint64_t sub_1B1A602E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1B1A60378(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B1A60424()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B1A60480(unint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1B1A7C958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v33 - v11;
  v35 = v3;
  v34 = a3;
  if (a3)
  {
    v11 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        goto LABEL_22;
      }

      v11 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v13 = a1 + 1;
LABEL_9:
          v36 = (v13 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v13) >> 3))));
          goto LABEL_10;
        }

LABEL_15:
        v28 = (a1 & 0x3F) << 8;
        v29 = (a1 >> 6) + v28 + 33217;
        v30 = (v28 | (a1 >> 6) & 0x3F) << 8;
        v31 = (a1 >> 18) + ((v30 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v32 = (a1 >> 12) + v30 + 8487393;
        if (v11)
        {
          v13 = v31;
        }

        else
        {
          v13 = v32;
        }

        if (a1 < 0x800)
        {
          v13 = v29;
        }

        goto LABEL_9;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_10:
  v36 = sub_1B1A7CAF8();
  v37 = v14;

  MEMORY[0x1B2736400](46, 0xE100000000000000);
  v15 = v36;
  v16 = v37;
  sub_1B1A7C948();
  v17 = sub_1B1A7C918();
  v19 = v18;
  (*(v7 + 8))(v12, v6);
  v36 = v15;
  v37 = v16;

  MEMORY[0x1B2736400](v17, v19);

  v21 = v36;
  v20 = v37;
  v22 = v35;
  v35[2] = v36;
  v22[3] = v20;

  sub_1B1A7CD98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E560, &qword_1B1A7EB38);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B1A7E110;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1B1A60954();
  *(v23 + 32) = v21;
  *(v23 + 40) = v20;
  sub_1B1A566E4();

  v24 = sub_1B1A7CDF8();
  sub_1B1A7C968();

  sub_1B1A7CAE8();
  v25 = os_transaction_create();

  if (v25)
  {

    v22[4] = v25;
    type metadata accessor for OSActivity();
    v26 = swift_allocObject();
    *(v26 + 32) = 0;
    *(v26 + 24) = 0;
    *(v26 + 16) = sub_1B1A65F20(a1, v34, &dword_1B1A45000);
    swift_beginAccess();
    v27 = swift_unknownObjectRetain();
    os_activity_scope_enter(v27, (v26 + 24));
    swift_endAccess();
    swift_unknownObjectRelease();
    v22[5] = v26;
    return v22;
  }

LABEL_22:
  __break(1u);
  return result;
}

void *OSTransaction.deinit()
{
  v1 = v0;
  sub_1B1A7CD98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E560, &qword_1B1A7EB38);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B1A7E110;
  v3 = v0[2];
  v4 = v1[3];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1B1A60954();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1B1A566E4();

  v5 = sub_1B1A7CDF8();
  sub_1B1A7C968();

  v6 = v1[5];
  swift_beginAccess();
  os_activity_scope_leave((v6 + 24));
  swift_endAccess();

  v7 = v1[4];

  swift_unknownObjectRelease();
  return v1;
}

unint64_t sub_1B1A60954()
{
  result = qword_1EB75E568[0];
  if (!qword_1EB75E568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB75E568);
  }

  return result;
}

uint64_t OSTransaction.__deallocating_deinit()
{
  OSTransaction.deinit();

  return swift_deallocClassInstance();
}

uint64_t static OSTransaction.named(_:block:)(unint64_t a1, uint64_t a2, int a3, void (*a4)(uint64_t))
{
  swift_initStackObject();
  v8 = sub_1B1A60480(a1, a2, a3);
  a4(v8);
}

{
  v8 = swift_allocObject();
  sub_1B1A60480(a1, a2, a3);
  a4(v8);
}

uint64_t sub_1B1A60B34()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  if (qword_1EDB764F0 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v5 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v5, qword_1EDB770A8);
    sub_1B1A7CEC8();

    MEMORY[0x1B2736400](v1, v2);
    sub_1B1A561F0(0xD00000000000001DLL, 0x80000001B1A81130, 0xD000000000000070, 0x80000001B1A81150, 0x2928726961706572, 0xE800000000000000);

    v6 = *(v4 + 16);
    v7 = *(v6 + 32);
    v8 = v7 - 8;
    if (!__OFSUB__(v7, 8))
    {
      break;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 16;
  while (1)
  {
    v14 = atomic_load((*(v6 + 16) + v8 + 4));
    v15 = v14 - 1;
    if ((v14 - 1) > 4u)
    {
      break;
    }

    v6 = *(v4 + 16);
    v16 = *(v6 + 32);
    if (__OFSUB__(v16, v12 - 8))
    {
      goto LABEL_16;
    }

    v17 = v16 - (v12 - 8);
    if (v10 >= *(*(v6 + 16) + v17))
    {
      goto LABEL_13;
    }

    if (v12 == 0x800000008)
    {
      goto LABEL_17;
    }

    if (((0xCu >> v15) & 1) != 0 && __CFADD__(v11++, 1))
    {
      __break(1u);
LABEL_13:
      sub_1B1A7CEC8();
      MEMORY[0x1B2736400](0xD000000000000016, 0x80000001B1A811F0);
      v19 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v19);

      MEMORY[0x1B2736400](0x646E6920726F6620, 0xEC000000203A7865);
      v20 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v20);

      MEMORY[0x1B2736400](0xD000000000000021, 0x80000001B1A81210);
      sub_1B1A561F0(0, 0xE000000000000000, 0xD000000000000070, 0x80000001B1A81150, 0x2928726961706572, 0xE800000000000000);

      break;
    }

    ++v9;
    v10 = *(*(v6 + 16) + v17);
    v13 = __OFSUB__(v16, v12);
    v8 = v16 - v12;
    v12 += 8;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  atomic_store(v9, (*(v3 + 16) + 16));
  atomic_store(v11, (*(v3 + 16) + 20));
  **(v3 + 16) = 0;
  sub_1B1A7CEC8();
  MEMORY[0x1B2736400](0xD00000000000001DLL, 0x80000001B1A811D0);
  MEMORY[0x1B2736400](v1, v2);
  MEMORY[0x1B2736400](0x7277206874697720, 0xEF203A6E65747469);
  v21 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v21);

  MEMORY[0x1B2736400](0x6C656420646E6120, 0xEE00203A64657465);
  v22 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v22);

  sub_1B1A561F0(0, 0xE000000000000000, 0xD000000000000070, 0x80000001B1A81150, 0x2928726961706572, 0xE800000000000000);
}

uint64_t sub_1B1A60F78()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B1A60FE0()
{
  result = qword_1EB75E5F0;
  if (!qword_1EB75E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E5F0);
  }

  return result;
}

uint64_t static SegmentedDataRegion.from<A, B>(tuple:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v39 = a5;
  v40 = a6;
  v41 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v35 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v21 = *(a3 - 8);
  (*(v21 + 16))(&v35 - v19, a1, a3, v18);
  v22 = *(TupleTypeMetadata2 + 48);
  v37 = a4;
  v23 = *(a4 - 8);
  (*(v23 + 16))(&v20[v22], a2, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E5F8, &qword_1B1A7ECD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1A7ECA0;
  v42 = v12;
  v25 = *(v12 + 16);
  v26 = v43;
  v25(v43, v20, TupleTypeMetadata2);
  v36 = *(TupleTypeMetadata2 + 48);
  v27 = v39;
  *(inited + 56) = a3;
  *(inited + 64) = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(v21 + 32))(boxed_opaque_existential_1, v26, a3);
  v29 = v38;
  v25(v38, v20, TupleTypeMetadata2);
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = v37;
  v32 = v40;
  *(inited + 96) = v37;
  *(inited + 104) = v32;
  v33 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(v23 + 32))(v33, &v29[v30], v31);
  (*(v21 + 8))(v29, a3);
  (*(v23 + 8))(&v43[v36], v31);
  SegmentedDataRegion.init(representables:)(inited, v41);
  return (*(v42 + 8))(v20, TupleTypeMetadata2);
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

uint64_t static SegmentedDataRegion.from<A, B, C>(tuple:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t *a9@<X8>, void (*a10)(void, void))
{
  v67 = a8;
  v65 = a7;
  v70 = a3;
  v64 = a2;
  v69 = a9;
  v68 = a10;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = *(TupleTypeMetadata3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v66 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v72 = v56 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v56 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v56 - v25;
  v27 = *(a4 - 8);
  v59 = v27;
  (*(v27 + 16))(v56 - v25, a1, a4, v24);
  v28 = *(TupleTypeMetadata3 + 48);
  v29 = a5;
  v71 = a5;
  v30 = *(a5 - 8);
  (*(v30 + 16))(&v26[v28], v64, v29);
  v31 = *(TupleTypeMetadata3 + 64);
  v60 = a6;
  v62 = *(a6 - 8);
  (*(v62 + 16))(&v26[v31], v70, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E5F8, &qword_1B1A7ECD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1A7ECB0;
  v70 = v15;
  v33 = *(v15 + 16);
  v61 = v22;
  v33(v22, v26, TupleTypeMetadata3);
  v64 = *(TupleTypeMetadata3 + 48);
  v63 = *(TupleTypeMetadata3 + 64);
  v58 = a4;
  v34 = v65;
  *(inited + 56) = a4;
  *(inited + 64) = v34;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(v27 + 32))(boxed_opaque_existential_1, v22, a4);
  v36 = v72;
  v33(v72, v26, TupleTypeMetadata3);
  v37 = *(TupleTypeMetadata3 + 48);
  v65 = *(TupleTypeMetadata3 + 64);
  v38 = v71;
  v39 = v67;
  *(inited + 96) = v71;
  *(inited + 104) = v39;
  v40 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(v30 + 32))(v40, &v36[v37], v38);
  v41 = v66;
  v67 = v26;
  v33(v66, v26, TupleTypeMetadata3);
  v42 = *(TupleTypeMetadata3 + 48);
  v57 = TupleTypeMetadata3;
  v43 = *(TupleTypeMetadata3 + 64);
  v44 = v60;
  v45 = v68;
  *(inited + 136) = v60;
  *(inited + 144) = v45;
  v46 = __swift_allocate_boxed_opaque_existential_1((inited + 112));
  v47 = v62;
  (*(v62 + 32))(v46, &v41[v43], v44);
  v48 = *(v30 + 8);
  v56[1] = v30 + 8;
  v68 = v48;
  v49 = v71;
  v48(&v41[v42], v71);
  v50 = *(v59 + 8);
  v51 = v58;
  v50(v41, v58);
  v52 = *(v47 + 8);
  v53 = v72;
  v52(&v72[v65], v44);
  v50(v53, v51);
  v54 = v61;
  v52(&v61[v63], v44);
  v68(&v54[v64], v49);
  SegmentedDataRegion.init(representables:)(inited, v69);
  return (*(v70 + 8))(v67, v57);
}

uint64_t static SegmentedDataRegion.from<A, B, C, D>(tuple:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, char *a12, void (*a13)(void, void))
{
  v88 = a4;
  v98 = a3;
  v99 = a2;
  v89 = a9;
  v90 = a13;
  v87 = a12;
  v85 = a11;
  v84 = a10;
  v100 = a5;
  v101 = a6;
  v102 = a7;
  v103 = a8;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = *(TupleTypeMetadata - 1);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v86 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v74 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v93 = &v74 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v74 - v27;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v74 - v30;
  v32 = *(a5 - 8);
  v97 = v32;
  (*(v32 + 16))(&v74 - v30, a1, a5, v29);
  v33 = TupleTypeMetadata[12];
  v96 = a6;
  v104 = *(a6 - 8);
  (*(v104 + 16))(&v31[v33], v99, a6);
  v34 = TupleTypeMetadata[16];
  v92 = a7;
  v99 = *(a7 - 8);
  (*(v99 + 16))(&v31[v34], v98, a7);
  v35 = TupleTypeMetadata[20];
  v79 = a8;
  v98 = *(a8 - 8);
  (*(v98 + 16))(&v31[v35], v88, a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E5F8, &qword_1B1A7ECD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1A7ECC0;
  v88 = v19;
  v37 = *(v19 + 16);
  v38 = v94;
  v37(v94, v31, TupleTypeMetadata);
  v83 = TupleTypeMetadata[12];
  v82 = TupleTypeMetadata[16];
  v81 = TupleTypeMetadata[20];
  v91 = a5;
  v39 = v84;
  *(inited + 56) = a5;
  *(inited + 64) = v39;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(v32 + 32))(boxed_opaque_existential_1, v38, a5);
  v41 = v93;
  v37(v93, v31, TupleTypeMetadata);
  v42 = TupleTypeMetadata[12];
  v84 = TupleTypeMetadata[16];
  v80 = TupleTypeMetadata[20];
  v43 = v96;
  v44 = v85;
  *(inited + 96) = v96;
  *(inited + 104) = v44;
  v45 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(v104 + 32))(v45, &v41[v42], v43);
  v46 = v95;
  v37(v95, v31, TupleTypeMetadata);
  v85 = TupleTypeMetadata[12];
  v47 = TupleTypeMetadata[16];
  v78 = TupleTypeMetadata[20];
  v48 = v92;
  v49 = v87;
  *(inited + 136) = v92;
  *(inited + 144) = v49;
  v50 = __swift_allocate_boxed_opaque_existential_1((inited + 112));
  v51 = &v46[v47];
  v52 = v48;
  (*(v99 + 32))(v50, v51, v48);
  v53 = v86;
  v87 = v31;
  v37(v86, v31, TupleTypeMetadata);
  v54 = TupleTypeMetadata[12];
  v55 = TupleTypeMetadata[16];
  v77 = TupleTypeMetadata;
  v56 = TupleTypeMetadata[20];
  v57 = v79;
  v58 = v90;
  *(inited + 176) = v79;
  *(inited + 184) = v58;
  v59 = __swift_allocate_boxed_opaque_existential_1((inited + 152));
  v60 = v98;
  v61 = v57;
  (*(v98 + 32))(v59, &v53[v56], v57);
  v62 = *(v99 + 8);
  v99 += 8;
  v76 = v62;
  v62(&v53[v55], v52);
  v63 = v104 + 8;
  v90 = *(v104 + 8);
  v64 = v96;
  v90(&v53[v54], v96);
  v104 = v63;
  v75 = *(v97 + 8);
  v97 += 8;
  v65 = v91;
  v75(v53, v91);
  v66 = *(v60 + 8);
  v98 = v60 + 8;
  v67 = v95;
  v66(&v95[v78], v61);
  v90(&v67[v85], v64);
  v68 = v75;
  v75(v67, v65);
  v69 = v93;
  v66(&v93[v80], v61);
  v70 = v92;
  v71 = v76;
  v76(&v69[v84], v92);
  v68(v69, v91);
  v72 = v94;
  v66(&v94[v81], v61);
  v71(&v72[v82], v70);
  v90(&v72[v83], v96);
  SegmentedDataRegion.init(representables:)(inited, v89);
  return (*(v88 + 8))(v87, v77);
}

uint64_t SegmentedDataRegion.toTuple<A, B>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v37 = a4;
  v39 = a3;
  v40 = a5;
  v8 = sub_1B1A7CE18();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v38 = *(a2 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B1A7CE18();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v20 = *(a1 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v5;
  v41 = *v5;
  SegmentedDataRegion.subscript.getter(0, a1, v39, v19);
  if ((*(v20 + 48))(v19, 1, a1) == 1)
  {
    (*(v16 + 8))(v19, v15);
LABEL_5:
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v40, 1, 1, TupleTypeMetadata2);
  }

  v26 = *(v20 + 32);
  v26(v24, v19, a1);
  v41 = v25;
  SegmentedDataRegion.subscript.getter(1, a2, v37, v11);
  v27 = v38;
  if ((*(v38 + 48))(v11, 1, a2) == 1)
  {
    (*(v20 + 8))(v24, a1);
    (*(v35 + 8))(v11, v36);
    goto LABEL_5;
  }

  v39 = *(v27 + 32);
  v30 = v34;
  v39(v34, v11, a2);
  v31 = swift_getTupleTypeMetadata2();
  v32 = *(v31 + 48);
  v33 = v40;
  v26(v40, v24, a1);
  v39(&v33[v32], v30, a2);
  return (*(*(v31 - 8) + 56))(v33, 0, 1, v31);
}

uint64_t SegmentedDataRegion.toTuple<A, B, C>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, char *, uint64_t)@<X3>, void (*a5)(char *, char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a6;
  v56 = a5;
  v58 = a4;
  v59 = a7;
  v11 = sub_1B1A7CE18();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v46 - v13;
  v60 = a3;
  v55 = *(a3 - 8);
  v14 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B1A7CE18();
  v49 = *(v17 - 8);
  v50 = v17;
  v18 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v57 = *(a2 - 8);
  v21 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v51 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B1A7CE18();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v46 - v27;
  v29 = *(a1 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *v7;
  v61 = *v7;
  SegmentedDataRegion.subscript.getter(0, a1, v58, v28);
  if ((*(v29 + 48))(v28, 1, a1) == 1)
  {
    (*(v25 + 8))(v28, v24);
  }

  else
  {
    v35 = *(v29 + 32);
    v35(v33, v28, a1);
    v61 = v34;
    SegmentedDataRegion.subscript.getter(1, a2, v56, v20);
    if ((*(v57 + 48))(v20, 1, a2) == 1)
    {
      (*(v29 + 8))(v33, a1);
      v37 = v49;
      v36 = v50;
    }

    else
    {
      v58 = v35;
      v38 = v51;
      v56 = *(v57 + 32);
      v56(v51, v20, a2);
      v61 = v34;
      v20 = v54;
      v39 = v60;
      SegmentedDataRegion.subscript.getter(2, v60, v52, v54);
      v40 = v55;
      if ((*(v55 + 48))(v20, 1, v39) != 1)
      {
        v57 = *(v40 + 32);
        (v57)(v53, v20, v60);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v44 = *(TupleTypeMetadata3 + 48);
        v55 = *(TupleTypeMetadata3 + 64);
        v45 = v59;
        v58(v59, v33, a1);
        v56((v45 + v44), v38, a2);
        (v57)(v45 + v55, v53, v60);
        return (*(*(TupleTypeMetadata3 - 8) + 56))(v45, 0, 1, TupleTypeMetadata3);
      }

      (*(v57 + 8))(v38, a2);
      (*(v29 + 8))(v33, a1);
      v37 = v47;
      v36 = v48;
    }

    (*(v37 + 8))(v20, v36);
  }

  v41 = swift_getTupleTypeMetadata3();
  return (*(*(v41 - 8) + 56))(v59, 1, 1, v41);
}

uint64_t SegmentedDataRegion.toTuple<A, B, C, D>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, char *, uint64_t)@<X5>, void (*a7)(char *, uint64_t, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v63 = a8;
  v70 = a7;
  v73 = a6;
  v76 = a5;
  v78 = a9;
  v60 = sub_1B1A7CE18();
  v59 = *(v60 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v65 = &v59 - v15;
  v79 = a4;
  v72 = *(a4 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1B1A7CE18();
  v61 = *(v62 - 8);
  v19 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v68 = &v59 - v20;
  v77 = a3;
  v69 = *(a3 - 8);
  v21 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v71 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B1A7CE18();
  v66 = *(v24 - 8);
  v67 = v24;
  v25 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v59 - v26;
  v75 = *(a2 - 8);
  v28 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v74 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1B1A7CE18();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v59 - v34;
  v36 = *(a1 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v59 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *v9;
  v80 = *v9;
  SegmentedDataRegion.subscript.getter(0, a1, v76, v35);
  if ((*(v36 + 48))(v35, 1, a1) == 1)
  {
    (*(v32 + 8))(v35, v31);
LABEL_5:
    v44 = v79;
    v45 = v77;
    goto LABEL_6;
  }

  v42 = *(v36 + 32);
  v42(v40, v35, a1);
  v80 = v41;
  SegmentedDataRegion.subscript.getter(1, a2, v73, v27);
  v43 = v75;
  if ((*(v75 + 48))(v27, 1, a2) == 1)
  {
    (*(v36 + 8))(v40, a1);
    (*(v66 + 8))(v27, v67);
    goto LABEL_5;
  }

  v73 = v42;
  v76 = v40;
  v66 = *(v43 + 32);
  v67 = v43 + 32;
  (v66)(v74, v27, a2);
  v80 = v41;
  v48 = v68;
  v45 = v77;
  SegmentedDataRegion.subscript.getter(2, v77, v70, v68);
  v49 = v69;
  v50 = (*(v69 + 48))(v48, 1, v45);
  v44 = v79;
  if (v50 == 1)
  {
    (*(v43 + 8))(v74, a2);
    (*(v36 + 8))(v76, a1);
    (*(v61 + 8))(v48, v62);
  }

  else
  {
    v70 = *(v49 + 32);
    v70(v71, v48, v45);
    v80 = v41;
    v51 = v49;
    v52 = v65;
    SegmentedDataRegion.subscript.getter(3, v44, v63, v65);
    v53 = v72;
    if ((*(v72 + 48))(v52, 1, v44) != 1)
    {
      v54 = *(v53 + 32);
      v72 = v53 + 32;
      v54(v64, v52, v44);
      v80 = a1;
      v81 = a2;
      v82 = v45;
      v83 = v44;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v56 = TupleTypeMetadata[12];
      v57 = TupleTypeMetadata[16];
      v75 = TupleTypeMetadata[20];
      v58 = v78;
      v73(v78, v76, a1);
      (v66)(v58 + v56, v74, a2);
      v70((v58 + v57), v71, v45);
      v54((v58 + v75), v64, v79);
      return (*(*(TupleTypeMetadata - 1) + 56))(v58, 0, 1, TupleTypeMetadata);
    }

    (*(v51 + 8))(v71, v45);
    (*(v75 + 8))(v74, a2);
    (*(v36 + 8))(v76, a1);
    (*(v59 + 8))(v52, v60);
  }

LABEL_6:
  v80 = a1;
  v81 = a2;
  v82 = v45;
  v83 = v44;
  v46 = swift_getTupleTypeMetadata();
  return (*(*(v46 - 8) + 56))(v78, 1, 1, v46);
}

uint64_t DataFrameStreamQuota.init(maxStreamSizeInBytes:maxSegmentAge:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t TypedStream.applyPolicy(quota:)(int *a1)
{
  v2 = sub_1B1A7C908();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32[-v7];
  v9 = *a1;
  v10 = *(a1 + 4);
  v11 = *(a1 + 1);
  v12 = *(a1 + 16);
  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for InternalLogger();
  v14 = __swift_project_value_buffer(v13, qword_1EDB770A8);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1B1A7CEC8();
  v42 = v39;
  v43 = v40;
  MEMORY[0x1B2736400](0xD000000000000010, 0x80000001B1A81240);
  v33 = v9;
  LODWORD(v39) = v9;
  BYTE4(v39) = v10;
  v40 = v11;
  v41 = v12;
  sub_1B1A7CF18();
  v36 = "edStream+Quota.swift";
  v37 = "Applying quota: ";
  v38 = v14;
  sub_1B1A561F0(v42, v43, 0xD000000000000064, 0x80000001B1A81260, 0xD000000000000013, 0x80000001B1A812D0);

  if (v12 & v10)
  {
    return result;
  }

  result = sub_1B1A5992C();
  if (!result)
  {
    return result;
  }

  v16 = result;
  if (v12)
  {

    if (v10)
    {
      return result;
    }
  }

  else
  {
    sub_1B1A7C8F8();
    sub_1B1A7C8D8();
    v17 = v35;
    v18 = *(v34 + 8);
    v19 = v18(v5, v35);
    MEMORY[0x1EEE9AC00](v19);
    *&v32[-16] = v8;
    result = sub_1B1A63C2C(sub_1B1A63DC8, &v32[-32], v16);
    if ((v20 & 1) == 0 && result >= 1)
    {
      if (*(v16 + 16) < result)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v21 = sub_1B1A7A620(v16 + 32, 0, (2 * result) | 1);

      sub_1B1A5B560(v21);
    }

    result = v18(v8, v17);
    if (v10)
    {
      return result;
    }
  }

  result = TypedStream.segmentSize.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  v22 = v33;
  v23 = v33 / result;
  sub_1B1A7CEC8();
  MEMORY[0x1B2736400](0x616572745378616DLL, 0xEF203A657A69536DLL);
  LODWORD(v42) = v22;
  v24 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v24);

  MEMORY[0x1B2736400](0xD000000000000017, 0x80000001B1A812F0);
  LODWORD(v42) = TypedStream.segmentSize.getter();
  v25 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v25);

  MEMORY[0x1B2736400](0xD000000000000019, 0x80000001B1A81310);
  LODWORD(v42) = v23;
  v26 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v26);

  sub_1B1A561F0(v39, v40, 0xD000000000000064, v37 | 0x8000000000000000, 0xD000000000000013, v36 | 0x8000000000000000);

  result = sub_1B1A5992C();
  if (result)
  {
    v27 = *(result + 16);
    v28 = v27 - v23;
    if (v27 > v23)
    {
      v29 = result;
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1B1A7CEC8();

      v39 = 0x676E6974656C6564;
      v40 = 0xE900000000000020;
      v42 = v28;
      v30 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v30);

      MEMORY[0x1B2736400](0x67657320646C6F20, 0xED000073746E656DLL);
      sub_1B1A561F0(v39, v40, 0xD000000000000064, v37 | 0x8000000000000000, 0xD000000000000013, v36 | 0x8000000000000000);

      if ((v28 & 0x8000000000000000) == 0)
      {
        if (*(v29 + 16) >= v28)
        {
          v31 = sub_1B1A7A620(v29 + 32, 0, (2 * v28) | 1);

          sub_1B1A5B560(v31);
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_1B1A639CC(uint64_t *a1)
{
  v2 = sub_1B1A7C908();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  v10 = *a1;
  v11 = a1[1];
  v15[0] = 0;
  if (sub_1B1A63CD0(v10, v11))
  {
    sub_1B1A7C8B8();
    (*(v3 + 32))(v9, v6, v2);
    v12 = sub_1B1A7C8E8();
    (*(v3 + 8))(v9, v2);
  }

  else
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v13, qword_1EDB770A8);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1B1A7CEC8();

    strcpy(v15, "segment name:");
    HIWORD(v15[1]) = -4864;
    MEMORY[0x1B2736400](v10, v11);
    MEMORY[0x1B2736400](0xD000000000000018, 0x80000001B1A81350);
    sub_1B1A561D8(v15[0], v15[1], 0xD000000000000064, 0x80000001B1A81260, 0xD000000000000013, 0x80000001B1A812D0);

    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1B1A63C2C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

BOOL sub_1B1A63CD0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1B1A7CEB8();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t getEnumTagSinglePayload for DataFrameStreamQuota(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataFrameStreamQuota(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

_BYTE *sub_1B1A63E44@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1B1A63EC4(int a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B1A63EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E7688];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B1A63F5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E7678];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B1A63FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E7678];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B1A64038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E7678];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B1A640A8@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1A63EC4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B1A640D4@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1B1A63EDC(*v1);
  *a1 = result;
  return result;
}

uint64_t AnnotatedMessage.init(annotation:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for AnnotatedMessage();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t AnnotatedMessage.write(to:)(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = *(a2 + 24);
  v26 = *(v27 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v10 + 16);
  v25 = v17;
  v16(v15, v17, v9, v13);
  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  v28 = 0;
  PBDataWriterPlaceMark();
  (*(v18 + 16))(a1, v9, v18);
  if (v2)
  {
    result = (*(v10 + 8))(v15, v9);
  }

  else
  {
    PBDataWriterRecallMark();
    (*(v10 + 8))(v15, v9);
    v21 = v26;
    v22 = v27;
    (*(v26 + 16))(v7, v25 + *(a2 + 52), v27);
    v28 = 0;
    PBDataWriterPlaceMark();
    (*(v19 + 16))(a1, v22, v19);
    PBDataWriterRecallMark();
    result = (*(v21 + 8))(v7, v22);
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static AnnotatedMessage.read(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a4;
  v74 = a5;
  v71 = a1;
  v64 = a6;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v57 - v12;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v57 - v19;
  v87 = sub_1B1A7CE18();
  v20 = *(v87 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v67 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  v26 = sub_1B1A7CE18();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v68 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v57 - v32;
  v70 = v14;
  (*(v14 + 56))(&v57 - v32, 1, 1, a2, v31);
  v66 = v8;
  (*(v8 + 56))(v25, 1, 1, a3);
  v76 = a2;
  v77 = a3;
  v78 = v73;
  v79 = v74;
  v80 = v33;
  v81 = v71;
  v82 = v25;
  v83 = a2;
  v69 = a2;
  v84 = a3;
  v85 = v73;
  v86 = v74;
  v34 = type metadata accessor for AnnotatedMessage.Fields();
  WitnessTable = swift_getWitnessTable();
  v36 = v34;
  v37 = v26;
  v38 = v72;
  PBDataReader.readFields<A>(each:)(sub_1B1A65444, v75, v36, WitnessTable);
  v39 = v87;
  if (!v38)
  {
    v40 = v67;
    v58 = a3;
    v72 = v25;
    v60 = v20;
    v41 = *(v27 + 16);
    v42 = v68;
    v71 = v33;
    v41(v68, v33, v26);
    v43 = v69;
    v44 = (*(v70 + 48))(v42, 1, v69);
    v59 = v27;
    if (v44 == 1)
    {
      (*(v27 + 8))(v42, v37);
    }

    else
    {
      v57 = v37;
      v45 = v65;
      v68 = *(v70 + 32);
      (v68)(v65, v42, v43);
      v46 = v60;
      v47 = v40;
      v48 = v87;
      (*(v60 + 16))(v40, v72, v87);
      v49 = v66;
      v50 = v58;
      if ((*(v66 + 48))(v47, 1, v58) != 1)
      {
        v53 = *(v49 + 32);
        v54 = v62;
        v53(v62, v47, v50);
        v55 = v61;
        (v68)(v61, v45, v43);
        v56 = v63;
        v53(v63, v54, v50);
        AnnotatedMessage.init(annotation:payload:)(v55, v56, v43, v50, v64);
        (*(v60 + 8))(v72, v87);
        return (*(v59 + 8))(v71, v57);
      }

      (*(v70 + 8))(v45, v43);
      (*(v46 + 8))(v47, v48);
      v37 = v57;
    }

    sub_1B1A65484();
    swift_allocError();
    *v51 = 0;
    v51[1] = 0;
    swift_willThrow();
    v39 = v87;
    v20 = v60;
    v27 = v59;
    v33 = v71;
    v25 = v72;
  }

  (*(v20 + 8))(v25, v39);
  return (*(v27 + 8))(v33, v37);
}

id sub_1B1A64B2C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v25 = a2;
  v26 = a4;
  v11 = sub_1B1A7CE18();
  v24 = *(v11 - 8);
  v12 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = sub_1B1A7CE18();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - v18;
  if (*a1)
  {
    v20 = v29;
    result = PBDataReader.readSubmessage<A>(ofType:)(a6, a6, v28);
    if (!v20)
    {
      (*(*(a6 - 8) + 56))(v14, 0, 1, a6);
      return (*(v24 + 40))(v26, v14, v11);
    }
  }

  else
  {
    v22 = v29;
    result = PBDataReader.readSubmessage<A>(ofType:)(a5, a5, v27);
    if (!v22)
    {
      (*(*(a5 - 8) + 56))(v19, 0, 1, a5);
      return (*(v16 + 40))(v25, v19, v15);
    }
  }

  return result;
}

uint64_t AnnotatedMessage.AnnotationOnly.write(to:)(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v11, v5, v8);
  v12 = *(a2 + 32);
  v15[0] = 0;
  PBDataWriterPlaceMark();
  (*(v12 + 16))(a1, v5, v12);
  if (!v2)
  {
    PBDataWriterRecallMark();
  }

  result = (*(v6 + 8))(v10, v5);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static AnnotatedMessage.AnnotationOnly.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v39 = a1;
  v36 = a6;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v34 - v14;
  v15 = sub_1B1A7CE18();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - v22;
  v38 = v10;
  (*(v10 + 56))(&v34 - v22, 1, 1, a2, v21);
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = v23;
  v46 = v39;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v24 = type metadata accessor for AnnotatedMessage.Fields();
  WitnessTable = swift_getWitnessTable();
  v26 = v51;
  PBDataReader.readFields<A>(each:)(sub_1B1A654D8, v40, v24, WitnessTable);
  if (v26)
  {
    return (*(v16 + 8))(v23, v15);
  }

  v28 = v37;
  (*(v16 + 16))(v19, v23, v15);
  v29 = v38;
  if ((*(v38 + 48))(v19, 1, a2) == 1)
  {
    v30 = *(v16 + 8);
    v30(v19, v15);
    sub_1B1A65484();
    swift_allocError();
    *v31 = 0;
    v31[1] = 0;
    swift_willThrow();
    return (v30)(v23, v15);
  }

  else
  {
    v32 = *(v29 + 32);
    v32(v28, v19, a2);
    v33 = v35;
    v32(v35, v28, a2);
    v32(v36, v33, a2);
    return (*(v16 + 8))(v23, v15);
  }
}

id sub_1B1A65230(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1B1A7CE18();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  *&v16 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v18 = &v21 - v17;
  if (*a1)
  {
    return [a3 skipValueWithTag:2 type:{2, v16}];
  }

  v20 = v15;
  result = PBDataReader.readSubmessage<A>(ofType:)(a4, a4, a6);
  if (!v6)
  {
    (*(*(a4 - 8) + 56))(v18, 0, 1, a4);
    return (*(v13 + 40))(a2, v18, v20);
  }

  return result;
}

unint64_t sub_1B1A65484()
{
  result = qword_1EB75E600[0];
  if (!qword_1EB75E600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB75E600);
  }

  return result;
}

uint64_t sub_1B1A654FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B1A65588(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1B1A65764(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1B1A65A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1A65A90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_1B1A65BD0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

Swift::Void __swiftcall OSActivity.close()()
{
  swift_beginAccess();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
}

uint64_t sub_1B1A65E50()
{
  qword_1EB75E690 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t OSActivity.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t OSActivity.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

os_activity_t sub_1B1A65F20(char *description, char a2, void *dso)
{
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1EB75E270 == -1)
        {
LABEL_5:
          v4 = dso;
          v5 = qword_1EB75E690;

          return _os_activity_create(v4, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = sub_1B1A7CF28();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1EB75E270 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_1EB75E690, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t sub_1B1A66134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B1A66154, 0, 0);
}

uint64_t sub_1B1A66154()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    type metadata accessor for FirstUnlockObserver();
    sub_1B1A67404();
    v4 = sub_1B1A7CCE8();

    return MEMORY[0x1EEE6DFA0](sub_1B1A6623C, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1B1A6623C()
{
  v1 = *(v0 + 56);
  sub_1B1A66588();

  return MEMORY[0x1EEE6DFA0](sub_1B1A662AC, 0, 0);
}

uint64_t sub_1B1A662D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1B1A675A0(a3, v27 - v11);
  v13 = sub_1B1A7CD18();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B1A67538(v12);
  }

  else
  {
    sub_1B1A7CD08();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B1A7CCE8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B1A7CAE8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E6A0, &qword_1B1A7EF68);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E6A0, &qword_1B1A7EF68);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_1B1A66588()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E540, &qword_1B1A7EAE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - v5;
  if ((*(v0 + 48) & 1) == 0)
  {
    *(v0 + 48) = 1;
    if (qword_1EB75E260 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v7, qword_1EB760C70);
    sub_1B1A561C0(0xD000000000000016, 0x80000001B1A81500, 0xD000000000000058, 0x80000001B1A81520, 0x5574737269466E6FLL, 0xEF29286B636F6C6ELL);
    v8 = *(v0 + 32);
    if (v8)
    {
      v9 = *(**(v8 + 56) + 136);
      v10 = *(v0 + 32);

      atomic_store(1u, v9(v11));

      swift_beginAccess();
      notify_cancel(*(v8 + 48));

      v12 = *(v0 + 32);
    }

    *(v0 + 32) = 0;

    v13 = *(v0 + 40);
    if (v13)
    {
      v14 = *(**(v13 + 56) + 136);
      v15 = *(v0 + 40);

      atomic_store(1u, v14(v16));

      swift_beginAccess();
      notify_cancel(*(v13 + 48));

      v17 = *(v0 + 40);
    }

    *(v0 + 40) = 0;

    v18 = *(v0 + 24);
    v19 = *(v18 + 16);
    if (v19)
    {
      v27 = v0;
      v22 = *(v3 + 16);
      v20 = v3 + 16;
      v21 = v22;
      v23 = v18 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v24 = *(v20 + 56);

      do
      {
        v21(v6, v23, v2);
        sub_1B1A7CCF8();
        (*(v20 - 8))(v6, v2);
        v23 += v24;
        --v19;
      }

      while (v19);

      v1 = v27;
      v25 = *(v27 + 24);
    }

    *(v1 + 24) = MEMORY[0x1E69E7CC0];
  }
}

void sub_1B1A668B0()
{
  if (!v0[4] && !v0[5])
  {
    v1 = v0[2];
    v2 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for DarwinNotificationObserver();
    swift_allocObject();
    v3 = v1;
    v4 = sub_1B1A6B4C0(0xD000000000000025, 0x80000001B1A814A0, v3, sub_1B1A67460, v2);
    v5 = v0[4];
    v0[4] = v4;

    v6 = swift_allocObject();
    v7 = v0;
    swift_weakInit();
    type metadata accessor for DeviceLockStateNotificationObserver();
    swift_allocObject();
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = sub_1B1A6746C;
    v8[4] = v6;
    v9 = v3;
    swift_retain_n();
    v10 = sub_1B1A6B4C0(0xD000000000000024, 0x80000001B1A814D0, v9, sub_1B1A67474, v8);

    if (v10)
    {
    }

    v11 = v7[5];
    v7[5] = v10;
  }
}

uint64_t sub_1B1A66A94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  if (qword_1EDB76A30 != -1)
  {
    swift_once();
  }

  v4 = *(*qword_1EDB77100 + 136);

  LOBYTE(v4) = *v4(v5);

  if ((v4 & 1) == 0)
  {
    result = MKBDeviceUnlockedSinceBoot();
    if (result != 1)
    {
      return result;
    }

    v7 = *(*qword_1EDB77100 + 136);

    *v7(v8) = 1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = sub_1B1A7CD18();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v10;
    sub_1B1A662D4(0, 0, v3, &unk_1B1A7EF78, v11);

    return sub_1B1A67538(v3);
  }

  return result;
}

uint64_t sub_1B1A66CC0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  result = (*(v7 + 8))(v6, v7);
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v9 = sub_1B1A7CD18();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      v10 = swift_allocObject();
      swift_weakInit();
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v10;
      sub_1B1A662D4(0, 0, v5, &unk_1B1A7EF50, v11);

      return sub_1B1A67538(v5);
    }
  }

  return result;
}

uint64_t sub_1B1A66E64()
{
  v1[2] = v0;
  type metadata accessor for FirstUnlockObserver();
  v1[3] = sub_1B1A67404();
  v3 = sub_1B1A7CCE8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B1A66EEC, v3, v2);
}

uint64_t sub_1B1A66EEC()
{
  if (qword_1EDB76A30 != -1)
  {
    swift_once();
  }

  v1 = *(*qword_1EDB77100 + 136);

  LOBYTE(v1) = *v1(v2);

  if (v1)
  {
    goto LABEL_6;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v3 = *(*qword_1EDB77100 + 136);

    *v3(v4) = 1;

LABEL_6:
    v5 = v0[1];

    return v5();
  }

  v8 = v0[2];
  v7 = v0[3];
  sub_1B1A668B0();
  v9 = *(MEMORY[0x1E69E88D0] + 4);
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_1B1A670CC;
  v11 = v0[2];

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B1A670CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1B1A581E8, v4, v3);
}

uint64_t sub_1B1A671EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E540, &qword_1B1A7EAE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - v8;
  (*(v5 + 16))(&v15 - v8, a1, v4, v7);
  v10 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1B1A79388(0, v10[2] + 1, 1, v10);
    *(a2 + 24) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1B1A79388(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v9, v4);
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_1B1A6736C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_1B1A67404()
{
  result = qword_1EB75E698;
  if (!qword_1EB75E698)
  {
    type metadata accessor for FirstUnlockObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E698);
  }

  return result;
}

uint64_t sub_1B1A67484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B1A67A7C;

  return sub_1B1A66134(a1, v4, v5, v6);
}

uint64_t sub_1B1A67538(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1A675A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1A67610(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1B1A67704;

  return v6(v2 + 32);
}

uint64_t sub_1B1A67704()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1B1A67818(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B1A67A7C;

  return sub_1B1A67610(a1, v5);
}

uint64_t sub_1B1A678D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B1A5471C;

  return sub_1B1A67610(a1, v5);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1A679C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B1A5471C;

  return sub_1B1A66134(a1, v4, v5, v6);
}

uint64_t sub_1B1A67A88()
{
  sub_1B1A7D058();
  MEMORY[0x1B2736930](0);
  return sub_1B1A7D098();
}

uint64_t sub_1B1A67AF4()
{
  sub_1B1A7D058();
  MEMORY[0x1B2736930](0);
  return sub_1B1A7D098();
}

uint64_t sub_1B1A67B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53746E656D676573 && a2 == 0xEB00000000657A69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B1A7CFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B1A67BF8(uint64_t a1)
{
  v2 = sub_1B1A680C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1A67C34(uint64_t a1)
{
  v2 = sub_1B1A680C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1A67C70@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E6B0, &qword_1B1A7F0F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1A680C4();
  sub_1B1A7D0A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_1B1A7CF68();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_1B1A67DD0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E6B8, &qword_1B1A7F100);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1A680C4();
  sub_1B1A7D0B8();
  sub_1B1A7CF78();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1B1A67F08()
{
  v1 = *v0;
  v2 = sub_1B1A7C6A8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1B1A7C698();
  sub_1B1A5361C();
  v5 = sub_1B1A7C688();

  return v5;
}

uint64_t sub_1B1A67F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1A7C678();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B1A7C668();
  sub_1B1A53670();
  sub_1B1A7C658();

  if (!v1)
  {
    *a1 = v7;
    *(a1 + 4) = 0;
  }

  return result;
}

unint64_t sub_1B1A68070()
{
  result = qword_1EB75E6A8;
  if (!qword_1EB75E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E6A8);
  }

  return result;
}

unint64_t sub_1B1A680C4()
{
  result = qword_1EDB76548[0];
  if (!qword_1EDB76548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB76548);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataFrameStreamConfiguration.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DataFrameStreamConfiguration.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1B1A68204()
{
  result = qword_1EB75E6C0;
  if (!qword_1EB75E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E6C0);
  }

  return result;
}

unint64_t sub_1B1A6825C()
{
  result = qword_1EDB76538;
  if (!qword_1EDB76538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB76538);
  }

  return result;
}

unint64_t sub_1B1A682B4()
{
  result = qword_1EDB76540;
  if (!qword_1EDB76540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB76540);
  }

  return result;
}

uint64_t DataFrameStreamSegment.init(name:filePath:byteSize:access:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unsigned __int8 *a5@<X4>, void *a6@<X8>)
{
  v32 = a2;
  v26 = a1;
  v27 = a6;
  v9 = sub_1B1A7C808();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a5;
  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for InternalLogger();
  __swift_project_value_buffer(v14, qword_1EDB770A8);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1B1A7CEC8();

  v30 = 0xD000000000000011;
  v31 = 0x80000001B1A80E20;
  sub_1B1A4DD9C();
  v15 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v15);

  sub_1B1A561C0(v30, v31, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000024, 0x80000001B1A80E40);

  if (a4 < 0x41)
  {
    sub_1B1A5FCC4();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    LOBYTE(v30) = v28;
    type metadata accessor for MemoryMappedRegion();
    swift_allocObject();
    v16 = v29;
    v17 = MemoryMappedRegion.init(filePath:requestedByteSize:minimumByteSize:access:)(v13, a4, 0x440u, &v30);
    if (!v16)
    {
      v18 = v17;
      (*(v10 + 8))(a3, v9);
      v19 = v18[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E530, &qword_1B1A7EAC8);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      type metadata accessor for SegmentOffsetTable();
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      v22 = v27;
      v23 = v32;
      *v27 = v26;
      v22[1] = v23;
      v22[2] = v18;
      v22[3] = v20;
      v22[4] = v21;
      *(v22 + 10) = a4;
    }
  }

  (*(v10 + 8))(a3, v9);
}

uint64_t sub_1B1A68BFC(unint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = *(v1 + 10);
  v5 = *(v1[3] + 16);
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = v6 + v7;
  if (__CFADD__(v6, v7))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v8 < v6)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = a1 - v6;
  if (a1 < v6)
  {
    return 0;
  }

  if (v8 <= a1)
  {
    return 1;
  }

  result = v9;
  v11 = 8 * v9 + 8;
  v12 = *(v1[4] + 16);
  v13 = *(v12 + 32);
  v14 = __OFSUB__(v13, v11);
  v15 = v13 - v11;
  if (v14)
  {
    goto LABEL_25;
  }

  v16 = atomic_load((*(v12 + 16) + v15 + 4));
  if ((v16 - 1) < 2)
  {
    return result;
  }

  if ((v16 - 3) < 2)
  {
    return 2;
  }

  if (v16 != 5)
  {
    if (qword_1EDB764F0 == -1)
    {
LABEL_15:
      v20 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v20, qword_1EDB770A8);
      sub_1B1A7CEC8();

      v21 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v21);

      sub_1B1A561D8(0xD000000000000022, 0x80000001B1A817A0, 0xD000000000000069, 0x80000001B1A80D70, 0xD00000000000001BLL, 0x80000001B1A817D0);

      return 3;
    }

LABEL_26:
    swift_once();
    goto LABEL_15;
  }

  v25 = v1[1];
  v26 = v1[2];
  v27 = v1[3];
  v28 = v1[4];
  v29 = *(v1 + 10);
  v17 = v9;
  v18 = *v1;
  v19 = sub_1B1A69DC0(v17);
  if (!v19)
  {
    return 2;
  }

  v22 = *(*(*(v19 + 32) + 16) + 16);
  if (!v22)
  {

    return 2;
  }

  if (v22 < v6 || v22 >= v8)
  {
    v24 = *(*(*(v19 + 32) + 16) + 16);

    return v24;
  }

  else
  {
    v23 = sub_1B1A68BFC(v22);

    return v23;
  }
}

uint64_t DataFrameStreamSegment.frameData(forSegmentIndex:)(Swift::UInt32 a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v11[0] = *v1;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v12 = v7;
  result = sub_1B1A69DC0(a1);
  if (!v2)
  {
    if (result)
    {
      sub_1B1A4EE44(result, v11);

      return v11[0];
    }

    else
    {
      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v9, qword_1EDB770A8);
      sub_1B1A7CEC8();

      v10 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v10);

      sub_1B1A561D8(0xD000000000000023, 0x80000001B1A81660, 0xD000000000000069, 0x80000001B1A80D70, 0xD00000000000001BLL, 0x80000001B1A81690);

      return 0;
    }
  }

  return result;
}

uint64_t DataFrameStreamSegment.mutateFrame<A>(frameSegmentIndex:mutate:supersede:)@<X0>(Swift::UInt32 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v18 = v8[1];
  v27 = *v8;
  v28[0] = v18;
  *(v28 + 12) = *(v8 + 28);
  result = sub_1B1A69DC0(a1);
  if (!v9)
  {
    v20 = result;
    if (!result)
    {
      goto LABEL_7;
    }

    v24[1] = v24;
    v25 = 0;
    v26 = 1;
    v29 = 0;
    MEMORY[0x1EEE9AC00](result);
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a2;
    v21[5] = a3;
    v21[6] = v20;
    v21[7] = &v29;
    v21[8] = a4;
    v21[9] = a5;
    v21[10] = &v27;
    v22 = a1;
    v23 = &v25;
    sub_1B1A4F008(sub_1B1A6AC3C, v21);

    if (v29 == 1)
    {
      if (v26)
      {
        *a8 = 1;
        *(a8 + 8) = 1;
      }

      else
      {
        *a8 = v25;
        *(a8 + 8) = 0;
      }
    }

    else
    {
LABEL_7:
      *a8 = 0;
      *(a8 + 8) = 1;
    }
  }

  return result;
}

void DataFrameStreamSegment.setFrame<A>(frameSegmentIndex:mutated:supersede:)(Swift::UInt32 a1@<W0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v14 = v6[1];
  v25 = *v6;
  v26[0] = v14;
  *(v26 + 12) = *(v6 + 28);
  v15 = sub_1B1A69DC0(a1);
  if (v7)
  {

LABEL_3:
    *a6 = 0;
    *(a6 + 8) = 1;
    return;
  }

  if (!v15)
  {
    goto LABEL_3;
  }

  v20 = a3;
  v21 = v15;
  v16 = *(a5 + 8);

  v23 = 0;
  v24 = 1;
  v27 = 0;
  v17 = v16(a4, a5);
  v19 = v18;

  sub_1B1A4C414(v17, v19);
  sub_1B1A600F4(&v25, v22);
  sub_1B1A4FA84(v21, v21, v17, v19, &v27, a2, v20, &v25, a1, &v23);
  sub_1B1A6AC88(&v25);
  sub_1B1A4696C(v17, v19);

  sub_1B1A4696C(v17, v19);

  if ((v27 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (v24)
  {
    *a6 = 1;
    *(a6 + 8) = 1;
  }

  else
  {
    *a6 = v23;
    *(a6 + 8) = 0;
  }
}

uint64_t sub_1B1A69684()
{
  v1 = *(v0 + 24);
  v2 = atomic_load((*(v1 + 16) + 16));
  v3 = atomic_load((*(v1 + 16) + 20));
  result = v2 - v3;
  if (v2 < v3)
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v5, qword_1EDB770A8);
    sub_1B1A7CEC8();
    MEMORY[0x1B2736400](0x466E657474697277, 0xEE003A73656D6172);
    v6 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v6);

    MEMORY[0x1B2736400](0xD000000000000026, 0x80000001B1A80D40);
    v7 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v7);

    sub_1B1A561D8(0, 0xE000000000000000, 0xD000000000000069, 0x80000001B1A80D70, 0x756F43656D617266, 0xEA0000000000746ELL);

    **(v1 + 16) = 2;
    sub_1B1A6ABE8();
    swift_allocError();
    *(v8 + 4) = -3;
    *v8 = 0;
    return swift_willThrow();
  }

  return result;
}

void DataFrameStreamSegment.state.getter(_BYTE *a1@<X8>)
{
  v2 = **(*(v1 + 24) + 16);
  if (v2 >= 4)
  {
    LOBYTE(v2) = 1;
  }

  *a1 = v2;
}

Dendrite::SegmentState_optional __swiftcall SegmentState.init(rawValue:)(Dendrite::SegmentState_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = Dendrite_SegmentState_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_1B1A698EC()
{
  v1 = *v0;
  sub_1B1A7D058();
  sub_1B1A7D078();
  return sub_1B1A7D098();
}

uint64_t sub_1B1A69960()
{
  v1 = *v0;
  sub_1B1A7D058();
  sub_1B1A7D078();
  return sub_1B1A7D098();
}

uint64_t DataFrameStreamSegment.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t *(*DataFrameStreamSegment.identifierSeed.modify(void *a1))(unint64_t *result)
{
  v2 = *(v1 + 24);
  a1[1] = v2;
  *a1 = *(*(v2 + 16) + 24);
  return sub_1B1A69A1C;
}

uint64_t sub_1B1A69A30(uint64_t a1)
{
  v19 = *v1;
  v20 = v1[1];
  v18 = *(v1 + 1);
  v21 = v1[4];
  v22 = *(v1 + 10);
  result = sub_1B1A69CB8(a1);
  if (v2)
  {
    return v6 & 1;
  }

  if (v5)
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v7, qword_1EDB770A8);
    sub_1B1A7CEC8();

    v8 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v8);

    sub_1B1A561D8(0xD000000000000023, 0x80000001B1A81660, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000018, 0x80000001B1A81940);

    v6 = 0;
    return v6 & 1;
  }

  v9 = __OFSUB__(v4, result);
  v10 = v4 - result;
  if (v9)
  {
    __break(1u);
    goto LABEL_28;
  }

  v11 = result + v10;
  if (__OFADD__(result, v10))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v11 < result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = *(v18 + 24);
  v13 = *(v18 + 32);
  if (result < v12 || result > v13 || v11 < v12 || v13 < v11)
  {
    if (qword_1EDB764F0 == -1)
    {
LABEL_21:
      v17 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v17, qword_1EDB770A8);
      sub_1B1A561D8(0xD000000000000027, 0x80000001B1A81960, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000018, 0x80000001B1A81940);
      v6 = 0;
      return v6 & 1;
    }

LABEL_30:
    swift_once();
    goto LABEL_21;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v10)
    {
      bzero((*(v18 + 16) + result), v10);
    }

    v6 = 1;
    return v6 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1A69CB8(uint64_t result)
{
  v3 = v1[2];
  if (*(*(v1[3] + 16) + 16) <= result)
  {
    return 0;
  }

  v16 = *v1;
  v17 = v1[1];
  v18 = v1[2];
  v19 = v1[3];
  v20 = *(v1 + 10);
  v4 = 8 * result + 8;
  v5 = *(v1[4] + 16);
  v6 = *(v5 + 32);
  v7 = __OFSUB__(v6, v4);
  v8 = v6 - v4;
  if (v7)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_1B1A6A794(*(*(v5 + 16) + v8));
  if (v2)
  {
    return result;
  }

  v9 = result + 24;
  if (__OFADD__(result, 24))
  {
    goto LABEL_23;
  }

  if (v9 < result)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = v3[3];
  v11 = v3[4];
  if (result < v10 || result > v11 || v9 < v10 || v11 < v9)
  {
    return 0;
  }

  result = sub_1B1A6BD44(0, 0, 1, *(v3[2] + result + 4));
  v15 = v9 + result;
  if (__OFADD__(v9, result))
  {
    goto LABEL_25;
  }

  result = v9;
  if (v15 < v9)
  {
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1A69DC0(Swift::UInt32 a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 10);
  if (*(*(v1[3] + 16) + 16) <= a1)
  {
    return 0;
  }

  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = *(v1 + 10);
  v8 = 8 * a1 + 8;
  v9 = *(v1[4] + 16);
  v10 = *(v9 + 32);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1B1A6A794(*(*(v9 + 16) + v12));
  if (!v2)
  {
    v14 = result;
    type metadata accessor for DataFrameReader();
    swift_allocObject();

    result = sub_1B1A4E8DC(v15, v14);
    if (!result)
    {
      if (qword_1EDB764F0 == -1)
      {
LABEL_8:
        v16 = type metadata accessor for InternalLogger();
        __swift_project_value_buffer(v16, qword_1EDB770A8);
        sub_1B1A7CEC8();
        MEMORY[0x1B2736400](0xD00000000000002FLL, 0x80000001B1A816E0);
        v17 = sub_1B1A7CF98();
        MEMORY[0x1B2736400](v17);

        MEMORY[0x1B2736400](0xD000000000000011, 0x80000001B1A81710);
        sub_1B1A561D8(0, 0xE000000000000000, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000011, 0x80000001B1A81730);

        DataFrameStreamSegment.deleteFrame(index:)(a1);
        return 0;
      }

LABEL_11:
      swift_once();
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B1A69FF4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t (*a7)(char *), uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v80 = a7;
  v81 = a8;
  v79 = a6;
  v82 = a5;
  v84 = a4;
  v85 = a3;
  v15 = sub_1B1A7CE18();
  v83 = *(v15 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v76 - v17;
  v19 = *(a12 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v76 - v26;
  v28 = v86;
  (*(a13 + 16))(a1, a2, a12, a13, v25);
  if (v28)
  {
    return;
  }

  v77 = a1;
  v78 = v23;
  v86 = v27;
  if ((*(v19 + 48))(v18, 1, a12) == 1)
  {
    (*(v83 + 8))(v18, v15);
    sub_1B1A6B15C();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v29 = v86;
  (*(v19 + 32))(v86, v18, a12);
  (v85)(v29);
  v85 = v19;
  v30 = (*(a13 + 8))(a12, a13);
  v32 = v31;
  v84 = a12;
  v33 = v82;
  v34 = *(v82 + 24);
  v35 = BYTE6(a2);
  v36 = a2 >> 62;
  v37 = v30;
  v38 = v31;
  if ((a2 >> 62) > 1)
  {
    v39 = v77;
    if (v36 != 2)
    {
      goto LABEL_16;
    }

    v42 = *(v77 + 16);
    v41 = *(v77 + 24);
    v40 = v41 - v42;
    if (!__OFSUB__(v41, v42))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    v39 = v77;
    if (!v36)
    {
      v40 = BYTE6(a2);
      goto LABEL_14;
    }
  }

  if (__OFSUB__(HIDWORD(v39), v39))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v40 = HIDWORD(v39) - v39;
LABEL_13:
  if ((v40 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_81;
  }

LABEL_14:
  if (v40)
  {
    bzero(v34, v40);
    v32 = v38;
    v35 = BYTE6(a2);
    v39 = v77;
    v30 = v37;
  }

LABEL_16:
  v43 = v32 >> 62;
  if ((v32 >> 62) <= 1)
  {
    v44 = v29;
    v45 = v80;
    if (!v43)
    {
      v46 = BYTE6(v32);
      goto LABEL_26;
    }

LABEL_23:
    LODWORD(v46) = HIDWORD(v30) - v30;
    if (!__OFSUB__(HIDWORD(v30), v30))
    {
      v46 = v46;
      goto LABEL_26;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v44 = v29;
  v45 = v80;
  if (v43 == 2)
  {
    v48 = *(v30 + 16);
    v47 = *(v30 + 24);
    v49 = __OFSUB__(v47, v48);
    v46 = v47 - v48;
    if (v49)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v46 = 0;
  }

LABEL_26:
  if (v36 <= 1)
  {
    if (!v36)
    {
      v50 = v35;
      goto LABEL_35;
    }

LABEL_33:
    LODWORD(v50) = HIDWORD(v39) - v39;
    if (!__OFSUB__(HIDWORD(v39), v39))
    {
      v50 = v50;
      goto LABEL_35;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v36 != 2)
  {
    if (v46 <= 0)
    {
      goto LABEL_36;
    }

    goto LABEL_40;
  }

  v52 = *(v39 + 16);
  v51 = *(v39 + 24);
  v49 = __OFSUB__(v51, v52);
  v50 = v51 - v52;
  if (v49)
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_35:
  if (v50 >= v46)
  {
LABEL_36:
    if (v43 <= 1)
    {
      if (v43)
      {
        LODWORD(v53) = HIDWORD(v30) - v30;
        if (__OFSUB__(HIDWORD(v30), v30))
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v53 = v53;
      }

      else
      {
        v53 = BYTE6(v32);
      }

      goto LABEL_51;
    }

    if (v43 != 2)
    {
      v53 = 0;
      goto LABEL_51;
    }

    v55 = *(v30 + 16);
    v54 = *(v30 + 24);
    v49 = __OFSUB__(v54, v55);
    v53 = v54 - v55;
    if (!v49)
    {
LABEL_51:
      if (v36 > 1)
      {
        if (v36 != 2)
        {
          if (!v53)
          {
LABEL_79:

            sub_1B1A4C414(v37, v38);
            sub_1B1A6A974(v37, v38, v33, v37, v38, v73);
            sub_1B1A4696C(v37, v38);
            v74 = v84;
            v75 = *(v85 + 8);
            v75(v78, v84);
            v75(v44, v74);
            *v79 = 1;
            return;
          }

          goto LABEL_63;
        }

        v60 = *(v39 + 16);
        v59 = *(v39 + 24);
        v49 = __OFSUB__(v59, v60);
        v58 = v59 - v60;
        if (!v49)
        {
LABEL_60:
          if (v53 == v58)
          {
            goto LABEL_79;
          }

LABEL_63:
          v61 = *(*(v33 + 32) + 16);
          if (v43 <= 1)
          {
            if (!v43)
            {
              LODWORD(v62) = BYTE6(v38);
LABEL_78:
              atomic_store(v62, (v61 + 4));
              goto LABEL_79;
            }

            LODWORD(v62) = HIDWORD(v37) - v37;
            if (__OFSUB__(HIDWORD(v37), v37))
            {
              goto LABEL_88;
            }

            v62 = v62;
            goto LABEL_74;
          }

          if (v43 != 2)
          {
            goto LABEL_77;
          }

          v64 = *(v37 + 16);
          v63 = *(v37 + 24);
          v49 = __OFSUB__(v63, v64);
          v62 = v63 - v64;
          if (!v49)
          {
LABEL_74:
            if ((v62 & 0x8000000000000000) == 0)
            {
              if (!HIDWORD(v62))
              {
                goto LABEL_78;
              }

              __break(1u);
LABEL_77:
              LODWORD(v62) = 0;
              goto LABEL_78;
            }

            goto LABEL_84;
          }

          __break(1u);
LABEL_70:
          v65 = 8 * a10 + 8;
          v66 = *(*(a9 + 32) + 16);
          v67 = *(v66 + 32);
          v49 = __OFSUB__(v67, v65);
          v68 = v67 - v65;
          if (!v49)
          {
            atomic_exchange((*(v66 + 16) + v68 + 4), 5u);
            atomic_fetch_add((*(*(a9 + 24) + 16) + 20), 1u);
            atomic_store(v34, (*(*(v33 + 32) + 16) + 16));
            v70 = v34;
            sub_1B1A4696C(v37, v38);
            v71 = v84;
            v72 = *(v85 + 8);
            v72(v78, v84);
            v72(v86, v71);
            *v79 = 1;
            *a11 = v70;
            *(a11 + 8) = 0;
            return;
          }

          goto LABEL_87;
        }

        __break(1u);
      }

      else if (!v36)
      {
        v58 = v35;
        goto LABEL_60;
      }

      LODWORD(v58) = HIDWORD(v39) - v39;
      if (__OFSUB__(HIDWORD(v39), v39))
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        return;
      }

      v58 = v58;
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_40:
  v34 = v45(v78);
LABEL_45:
  if ((v45 & 1) == 0)
  {
    goto LABEL_70;
  }

  sub_1B1A4696C(v37, v38);
  v56 = v84;
  v57 = *(v85 + 8);
  v57(v78, v84);
  v57(v44, v56);
}

void *sub_1B1A6A6F8(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!__src)
  {
    goto LABEL_17;
  }

  v5 = __src;
  __src = *(a3 + 24);
  v6 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      return memmove(__src, v5, v7);
    }

    v9 = *(a4 + 16);
    v8 = *(a4 + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a5);
    return memmove(__src, v5, v7);
  }

  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v7 = HIDWORD(a4) - a4;
LABEL_12:
    if ((v7 & 0x8000000000000000) == 0)
    {
      return memmove(__src, v5, v7);
    }

    __break(1u);
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return __src;
}

Swift::Void __swiftcall DataFrameStreamSegment.sync()()
{
  v1 = *(v0 + 16);
  v2 = atomic_load((*(*(v0 + 24) + 16) + 8));
  MemoryMappedRegion.sync(used:)(v2);
}

uint64_t sub_1B1A6A794(unsigned int a1)
{
  v3 = *(v1 + 24);
  result = sub_1B1A6BD44(*(*(v1 + 16) + 24), *(*(v1 + 16) + 32), 0, a1);
  if (v2)
  {
    v5 = result;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E458, &qword_1B1A7E390);
    if (swift_dynamicCast())
    {

      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v7, qword_1EDB770A8);
      sub_1B1A7CEC8();

      v8 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v8);

      sub_1B1A561D8(0xD000000000000015, 0x80000001B1A81750, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000024, 0x80000001B1A81770);

      **(v3 + 16) = 3;
      sub_1B1A6ABE8();
      swift_allocError();
      *(v9 + 4) = -5;
      *v9 = 0;
      swift_willThrow();
    }

    return v5;
  }

  return result;
}

uint64_t sub_1B1A6A974@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v28[0] = result;
      LOWORD(v28[1]) = a2;
      BYTE2(v28[1]) = BYTE2(a2);
      BYTE3(v28[1]) = BYTE3(a2);
      BYTE4(v28[1]) = BYTE4(a2);
      BYTE5(v28[1]) = BYTE5(a2);
      v10 = a5 >> 62;
      result = *(a3 + 24);
      if ((a5 >> 62) > 1)
      {
        if (v10 != 2)
        {
LABEL_41:
          v12 = 0;
          goto LABEL_42;
        }

        v25 = *(a4 + 16);
        v11 = *(a4 + 24);
        v12 = v11 - v25;
        if (!__OFSUB__(v11, v25))
        {
          goto LABEL_31;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v10)
      {
        LODWORD(v11) = HIDWORD(a4) - a4;
        if (!__OFSUB__(HIDWORD(a4), a4))
        {
          v12 = v11;
LABEL_31:
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_33;
        }

        goto LABEL_48;
      }

LABEL_28:
      v12 = BYTE6(a5);
      goto LABEL_42;
    }

    v20 = result;
    v21 = (result >> 32) - result;
    if (result >> 32 >= result)
    {
      v29 = a6;
      v15 = sub_1B1A7C6D8();
      if (!v15)
      {
        goto LABEL_19;
      }

      result = sub_1B1A7C708();
      if (!__OFSUB__(v20, result))
      {
        v15 += v20 - result;
LABEL_19:
        v22 = sub_1B1A7C6F8();
        if (v22 >= v21)
        {
          v19 = v21;
        }

        else
        {
          v19 = v22;
        }

        goto LABEL_22;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (v9 == 2)
  {
    v29 = a6;
    v14 = *(result + 16);
    v13 = *(result + 24);
    result = sub_1B1A7C6D8();
    v15 = result;
    if (result)
    {
      result = sub_1B1A7C708();
      if (__OFSUB__(v14, result))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v15 += v14 - result;
    }

    v16 = __OFSUB__(v13, v14);
    v17 = v13 - v14;
    if (!v16)
    {
      v18 = sub_1B1A7C6F8();
      if (v18 >= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

LABEL_22:
      v23 = &v15[v19];
      if (v15)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      sub_1B1A6A6F8(v15, v24, a3, a4, a5);
      goto LABEL_43;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  memset(v28, 0, 14);
  result = *(a3 + 24);
  v11 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (v11)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

LABEL_33:
  v12 = 0;
  if (v11 != 2)
  {
    goto LABEL_42;
  }

  v27 = *(a4 + 16);
  v26 = *(a4 + 24);
  v12 = v26 - v27;
  if (!__OFSUB__(v26, v27))
  {
    goto LABEL_39;
  }

  __break(1u);
LABEL_37:
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v12 = HIDWORD(a4) - a4;
LABEL_39:
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_41;
    }

LABEL_42:
    memcpy(result, v28, v12);
LABEL_43:

    return sub_1B1A4696C(a4, a5);
  }

LABEL_50:
  __break(1u);
  return result;
}

unint64_t sub_1B1A6ABE8()
{
  result = qword_1EB75E6C8;
  if (!qword_1EB75E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E6C8);
  }

  return result;
}

unint64_t sub_1B1A6ACBC()
{
  result = qword_1EB75E6D0;
  if (!qword_1EB75E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E6D0);
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

uint64_t getEnumTagSinglePayload for DataFrameMutationResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataFrameMutationResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B1A6AD74(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1A6AD90(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SegmentState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SegmentState(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B1A6AF2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_1B1A6AF74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataFrameStreamSegmentError.headerCorruptionType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DataFrameStreamSegmentError.headerCorruptionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataFrameStreamSegmentError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 5))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 4);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 6)
  {
    return v4 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataFrameStreamSegmentError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 4) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -5 - a2;
    }
  }

  return result;
}

uint64_t sub_1B1A6B110(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1A6B124(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 4) = -a2;
  }

  return result;
}

unint64_t sub_1B1A6B15C()
{
  result = qword_1EB75E6D8;
  if (!qword_1EB75E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E6D8);
  }

  return result;
}

uint64_t StorageContainer.init(url:protection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B1A7C808();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for StorageContainer();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t StorageContainer.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1A7C808();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id StorageContainer.protection.getter()
{
  v1 = *(v0 + *(type metadata accessor for StorageContainer() + 20));

  return v1;
}

void sub_1B1A6B2F0()
{
  sub_1B1A7C808();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FileProtectionType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B1A6B37C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageContainer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MultiStreamContainer()
{
  result = qword_1EB75E6E0;
  if (!qword_1EB75E6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1A6B454()
{
  result = type metadata accessor for StorageContainer();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1A6B4C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v6 + 48) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E6F0, "PG");
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v6 + 56) = v11;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  v12 = qword_1EB75E260;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for InternalLogger();
  __swift_project_value_buffer(v13, qword_1EB760C70);
  sub_1B1A7CEC8();

  MEMORY[0x1B2736400](a1, a2);
  sub_1B1A561C0(0xD000000000000013, 0x80000001B1A819E0, 0xD00000000000005FLL, 0x80000001B1A81A00, 0xD00000000000001ALL, 0x80000001B1A81A60);

  swift_unownedRetainStrong();

  v14 = a3;
  swift_unownedRetain();

  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v6;
  v25 = sub_1B1A6BD20;
  v26 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1B1A6BCA8;
  v24 = &block_descriptor_0;
  v16 = _Block_copy(&aBlock);

  v17 = sub_1B1A7CAE8();
  swift_beginAccess();
  v18 = notify_register_dispatch((v17 + 32), (v6 + 48), v14, v16);
  swift_endAccess();

  _Block_release(v16);

  if (v18)
  {
    aBlock = 0;
    v22 = 0xE000000000000000;
    sub_1B1A7CEC8();

    aBlock = 0xD000000000000017;
    v22 = 0x80000001B1A81A90;
    MEMORY[0x1B2736400](a1, a2);

    sub_1B1A561D8(aBlock, v22, 0xD00000000000005FLL, 0x80000001B1A81A00, 0xD00000000000001ALL, 0x80000001B1A81A60);

    return 0;
  }

  else
  {
  }

  return v6;
}

uint64_t sub_1B1A6B80C()
{
  state64[4] = *MEMORY[0x1E69E9840];
  state64[0] = 0;
  swift_beginAccess();
  if (notify_get_state(*(v0 + 48), state64))
  {
    if (qword_1EB75E260 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v1, qword_1EB760C70);
    sub_1B1A7CEC8();

    MEMORY[0x1B2736400](*(v0 + 16), *(v0 + 24));
    sub_1B1A561D8(0xD000000000000020, 0x80000001B1A81AF0, 0xD00000000000005FLL, 0x80000001B1A81A00, 0x53746E6572727563, 0xEC00000065746174);

    result = 0;
  }

  else
  {
    result = state64[0];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1A6B984()
{
  v1 = v0;
  v2 = *(**(v0 + 56) + 136);

  LOBYTE(v2) = atomic_load(v2(v3));

  if ((v2 & 1) == 0)
  {
    v5 = sub_1B1A6B80C();
    v7 = v6;
    if (qword_1EB75E260 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v8, qword_1EB760C70);
    sub_1B1A7CEC8();

    MEMORY[0x1B2736400](*(v0 + 16), *(v0 + 24));
    MEMORY[0x1B2736400](0x7473206874697720, 0xED0000203A657461);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E6F8, "ZG");
    v9 = sub_1B1A7CAD8();
    MEMORY[0x1B2736400](v9);

    sub_1B1A561C0(0x6E69796669746F4ELL, 0xEF3A656D616E2067, 0xD00000000000005FLL, 0x80000001B1A81A00, 0xD000000000000014, 0x80000001B1A81AD0);

    v10 = *(v0 + 40);
    return (*(v1 + 32))(v5, v7 & 1);
  }

  return result;
}

uint64_t sub_1B1A6BB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB75E260 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for InternalLogger();
  __swift_project_value_buffer(v5, qword_1EB760C70);
  sub_1B1A7CEC8();

  MEMORY[0x1B2736400](a2, a3);
  sub_1B1A561C0(0xD00000000000001ALL, 0x80000001B1A81AB0, 0xD00000000000005FLL, 0x80000001B1A81A00, 0xD00000000000001ALL, 0x80000001B1A81A60);

  swift_unownedRetainStrong();
  sub_1B1A6B984();
}

uint64_t sub_1B1A6BCA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B1A6BD44(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  v4 = a4;
  if ((a3 & 1) == 0 && (a4 < a1 || a4 >= a2))
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v6, qword_1EDB770A8);
    sub_1B1A7CEC8();

    v7 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v7);

    MEMORY[0x1B2736400](0x206E6920746F6E20, 0xEF203A65676E6172);
    sub_1B1A7CF18();
    MEMORY[0x1B2736400](3943982, 0xE300000000000000);
    sub_1B1A7CF18();
    MEMORY[0x1B2736400](0, 0xE000000000000000);

    sub_1B1A561D8(0xD000000000000012, 0x80000001B1A81B20, 0xD00000000000005CLL, 0x80000001B1A81B40, 0xD000000000000021, 0x80000001B1A81BA0);

    sub_1B1A6C224();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
  }

  return v4;
}

Dendrite::MemoryAlignment_optional __swiftcall MemoryAlignment.init(rawValue:)(Dendrite::MemoryAlignment_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value)
  {
    if (rawValue.value == 8)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    if (rawValue.value == 4)
    {
      value = Dendrite_MemoryAlignment_fourByte;
    }

    else
    {
      value = v3;
    }
  }

  *v1 = value;
  return rawValue;
}

unint64_t sub_1B1A6BFAC()
{
  result = qword_1EB75E700;
  if (!qword_1EB75E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E700);
  }

  return result;
}

uint64_t sub_1B1A6C000()
{
  v1 = *v0;
  sub_1B1A7D058();
  sub_1B1A7D078();
  return sub_1B1A7D098();
}

uint64_t sub_1B1A6C078()
{
  v1 = *v0;
  sub_1B1A7D058();
  sub_1B1A7D078();
  return sub_1B1A7D098();
}

uint64_t getEnumTagSinglePayload for MemoryAlignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MemoryAlignment(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B1A6C224()
{
  result = qword_1EB75E708;
  if (!qword_1EB75E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E708);
  }

  return result;
}

unint64_t sub_1B1A6C28C()
{
  result = qword_1EB75E710;
  if (!qword_1EB75E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E710);
  }

  return result;
}

uint64_t DataRepresentableError.hashValue.getter()
{
  sub_1B1A7D058();
  MEMORY[0x1B2736930](0);
  return sub_1B1A7D098();
}

uint64_t UUID.serialize()()
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = sub_1B1A7C938();
  v11 = v0;
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  result = sub_1B1A46AEC(&v10, 16);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static UUID.deserialize(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_22;
      }

      v9 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_28;
      }

      v10 = sub_1B1A7C6D8();
      if (!v10)
      {
        goto LABEL_33;
      }

      v11 = v10;
      v12 = sub_1B1A7C708();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_30;
      }

      v13 = (v9 - v12 + v11);
      a1 = sub_1B1A7C6F8();
      if (v13)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_27;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v15 = *(a1 + 16);
    v16 = sub_1B1A7C6D8();
    if (!v16)
    {
      goto LABEL_31;
    }

    v17 = v16;
    v18 = sub_1B1A7C708();
    if (!__OFSUB__(v15, v18))
    {
      v13 = (v15 - v18 + v17);
      sub_1B1A7C6F8();
      if (!v13)
      {
        goto LABEL_32;
      }

LABEL_21:
      v19 = v13[7];
      v20 = v13[6];
      v21 = v13[5];
      v22 = v13[4];
      v23 = v13[3];
      v24 = v13[2];
      v25 = v13[1];
      v26 = *v13;
      v30 = *(v13 + 1);
LABEL_22:
      sub_1B1A7C928();
      v14 = 0;
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    sub_1B1A7C6F8();
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_1B1A7C6F8();
    __break(1u);
    return result;
  }

  if (v4 != 2)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v8 == 16)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 1;
LABEL_23:
  v27 = sub_1B1A7C958();
  v28 = *(*(v27 - 8) + 56);

  return v28(a3, v14, 1, v27);
}

uint64_t String.serialize()()
{
  v0 = sub_1B1A7CAC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1A7CAB8();
  v5 = sub_1B1A7CA98();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    sub_1B1A6B15C();
    swift_allocError();
    swift_willThrow();
  }

  return v5;
}

uint64_t static String.deserialize(data:)()
{
  v0 = sub_1B1A7CAC8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B1A7CAB8();
  sub_1B1A6CAF0();
  return sub_1B1A7CAA8();
}

uint64_t sub_1B1A6C85C()
{
  v1 = sub_1B1A7CAC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  sub_1B1A7CAB8();
  v8 = sub_1B1A7CA98();
  v10 = v9;
  (*(v2 + 8))(v5, v1);
  if (v10 >> 60 == 15)
  {
    sub_1B1A6B15C();
    swift_allocError();
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_1B1A6C988@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B1A7CAC8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B1A7CAB8();
  sub_1B1A6CAF0();
  result = sub_1B1A7CAA8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1B1A6CA80()
{
  v1 = *v0;
  sub_1B1A4C414(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1B1A6CAC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_1B1A4C414(a1, a2);
}

unint64_t sub_1B1A6CAF0()
{
  result = qword_1EB75E718;
  if (!qword_1EB75E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E718);
  }

  return result;
}

unint64_t sub_1B1A6CB48()
{
  result = qword_1EB75E720;
  if (!qword_1EB75E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E720);
  }

  return result;
}

uint64_t SegmentedDataRegion.init(representables:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result;
  v20 = *(result + 16);
  if (v20)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v3 + 16))
    {
      sub_1B1A4E37C(v5, v17);
      v7 = v18;
      v8 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v9 = (*(v8 + 8))(v7, v8);
      if (v2)
      {
        __swift_destroy_boxed_opaque_existential_1(v17);
      }

      v11 = v9;
      v12 = v10;
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B1A79578(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1B1A79578((v13 > 1), v14 + 1, 1, v6);
        v6 = result;
      }

      ++v4;
      *(v6 + 16) = v14 + 1;
      v15 = v6 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v5 += 40;
      if (v20 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_12:

    *a2 = v6;
  }

  return result;
}

uint64_t SegmentedDataRegion.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 < 0 || *(*v4 + 16) <= a1)
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v12, qword_1EDB770A8);
    sub_1B1A7CEC8();

    v13 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v13);

    sub_1B1A561D8(0xD000000000000014, 0x80000001B1A81BD0, 0xD000000000000066, 0x80000001B1A81BF0, 0x7069726373627573, 0xED0000293A5F2874);

    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  else
  {
    v7 = *v4 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = *(a3 + 16);
    sub_1B1A4C414(v8, v9);
    v10(v8, v9, a2, a3);

    return sub_1B1A4696C(v8, v9);
  }
}

uint64_t SegmentedDataRegion.serialize()()
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v41 = xmmword_1B1A7F810;
  v2 = *(v1 + 16);
  if (!v2)
  {
    v34 = 0;
    v35 = 0xC000000000000000;
    goto LABEL_49;
  }

  v3 = (v1 + 40);
  do
  {
    v7 = *(v3 - 1);
    v6 = *v3;
    v8 = *v3 >> 62;
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_16;
      }

      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      v11 = v9 - v10;
      if (__OFSUB__(v9, v10))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_16;
      }

      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_54;
      }

      v11 = HIDWORD(v7) - v7;
    }

    sub_1B1A4C414(*(v3 - 1), *v3);
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
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
    }

    if (HIDWORD(v11))
    {
      goto LABEL_51;
    }

LABEL_16:
    sub_1B1A7C8A8();
    sub_1B1A7C8A8();
    v13 = BYTE14(v41);
    v12 = v41;
    v14 = *(&v41 + 1) >> 62;
    if ((*(&v41 + 1) >> 62) <= 1)
    {
      if (v14)
      {
        if (__OFSUB__(DWORD1(v41), v41))
        {
          goto LABEL_56;
        }

        v15 = DWORD1(v41) - v41;
      }

      else
      {
        v15 = BYTE14(v41);
      }

      v18 = NSRoundUpToMultipleOfPageSize(v15);
      if (v15 >= v18)
      {
        goto LABEL_3;
      }

LABEL_27:
      if (v14 == 2)
      {
        v23 = *(v12 + 16);
        v22 = *(v12 + 24);
        v24 = __OFSUB__(v22, v23);
        v21 = v22 - v23;
        if (v24)
        {
          goto LABEL_60;
        }
      }

      else if (v14 == 1)
      {
        LODWORD(v21) = HIDWORD(v12) - v12;
        if (__OFSUB__(HIDWORD(v12), v12))
        {
          goto LABEL_59;
        }

        v21 = v21;
      }

      else
      {
        v21 = v13;
      }

      goto LABEL_37;
    }

    if (v14 == 2)
    {
      v17 = *(v41 + 16);
      v16 = *(v41 + 24);
      if (__OFSUB__(v16, v17))
      {
        goto LABEL_55;
      }

      v18 = NSRoundUpToMultipleOfPageSize(v16 - v17);
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (__OFSUB__(v19, v20))
      {
        goto LABEL_57;
      }

      if (v19 - v20 >= v18)
      {
LABEL_3:
        v4 = v7;
        v5 = v6;
        goto LABEL_4;
      }

      goto LABEL_27;
    }

    v18 = NSRoundUpToMultipleOfPageSize(0);
    if (v18 <= 0)
    {
      goto LABEL_3;
    }

    v21 = 0;
LABEL_37:
    v25 = v18 - v21;
    if (__OFSUB__(v18, v21))
    {
      goto LABEL_52;
    }

    if (v25)
    {
      if (v25 <= 14)
      {
        if (v25 < 0)
        {
          goto LABEL_58;
        }

        v30 = 0;
        v31 = v38 & 0xF00000000000000 | (v25 << 48);
        v38 = v31;
      }

      else
      {
        v26 = sub_1B1A7C728();
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        swift_allocObject();
        v29 = sub_1B1A7C6E8();
        if (v25 >= 0x7FFFFFFF)
        {
          sub_1B1A7C868();
          v30 = swift_allocObject();
          *(v30 + 16) = 0;
          *(v30 + 24) = v25;
          v31 = v29 | 0x8000000000000000;
        }

        else
        {
          v30 = v25 << 32;
          v31 = v29 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v30 = 0;
      v31 = 0xC000000000000000;
    }

    v39 = v30;
    v40 = v31;
    sub_1B1A6DAF0(&v39, 0);
    v32 = v39;
    v33 = v40;
    sub_1B1A7C8A8();
    sub_1B1A4696C(v7, v6);
    v4 = v32;
    v5 = v33;
LABEL_4:
    sub_1B1A4696C(v4, v5);
    v3 += 2;
    --v2;
  }

  while (v2);
  v35 = *(&v41 + 1);
  v34 = v41;
LABEL_49:
  sub_1B1A4C414(v34, v35);
  sub_1B1A4696C(v34, v35);
  v36 = *MEMORY[0x1E69E9840];
  return v34;
}

uint64_t static SegmentedDataRegion.deserialize(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v8 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  sub_1B1A4C414(a1, a2);
  sub_1B1A6D8EC(a1, a2, &v8, a1, a2, &v7, a3);
}

uint64_t sub_1B1A6D4C0@<X0>(uint64_t result@<X0>, int64_t *a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, char **a5@<X5>, char **a6@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    *a6 = 0;
    return result;
  }

  v8 = result;
  v9 = a4 >> 62;
  v10 = __OFSUB__(HIDWORD(a3), a3);
  v39 = v10;
  v38 = HIDWORD(a3) - a3;
  v42 = BYTE6(a4);
  while (1)
  {
    v11 = *a2;
    if (v9 <= 1)
    {
      v12 = v42;
      if (v9)
      {
        v12 = v38;
        if (v39)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_12;
    }

    if (v9 == 2)
    {
      v14 = *(a3 + 16);
      v13 = *(a3 + 24);
      v15 = __OFSUB__(v13, v14);
      v12 = v13 - v14;
      if (v15)
      {
        goto LABEL_50;
      }

LABEL_12:
      if (v11 >= v12)
      {
        goto LABEL_45;
      }

      goto LABEL_15;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_15:
    v16 = v11 + 4;
    if (__OFADD__(v11, 4))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v17 = *(v8 + v11);
    *a2 = v16;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v20 = *(a3 + 16);
        v19 = *(a3 + 24);
        v15 = __OFSUB__(v19, v20);
        v18 = v19 - v20;
        if (v15)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = v42;
      if (v9)
      {
        v18 = v38;
        if (v39)
        {
          goto LABEL_52;
        }
      }
    }

    if (__OFADD__(v16, v17))
    {
      goto LABEL_47;
    }

    if (v18 < (v16 + v17))
    {
      break;
    }

    if (v17)
    {
      if (v17 <= 0xE)
      {
        memset(__dst, 0, sizeof(__dst));
        v44 = v17;
        memcpy(__dst, (v8 + v16), v17);
        v26 = *__dst;
        v27 = v41 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v44 << 16)) << 32);
        v41 = v27;
      }

      else
      {
        v21 = sub_1B1A7C728();
        v22 = *(v21 + 48);
        v23 = *(v21 + 52);
        swift_allocObject();
        v24 = sub_1B1A7C6C8();
        v25 = v24;
        if (v17 >= 0x7FFFFFFF)
        {
          sub_1B1A7C868();
          v26 = swift_allocObject();
          *(v26 + 16) = 0;
          *(v26 + 24) = v17;
          v27 = v25 | 0x8000000000000000;
        }

        else
        {
          v26 = v17 << 32;
          v27 = v24 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v26 = 0;
      v27 = 0xC000000000000000;
    }

    v28 = *a2 + v17;
    if (__OFADD__(*a2, v17))
    {
      goto LABEL_48;
    }

    *a2 = v28;
    v29 = NSRoundUpToMultipleOfPageSize(v28);
    if (*a2 < v29)
    {
      *a2 = v29;
    }

    v30 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = sub_1B1A79578(0, *(v30 + 2) + 1, 1, v30);
      *a5 = v30;
    }

    v33 = *(v30 + 2);
    v32 = *(v30 + 3);
    if (v33 >= v32 >> 1)
    {
      v30 = sub_1B1A79578((v32 > 1), v33 + 1, 1, v30);
      *a5 = v30;
    }

    *(v30 + 2) = v33 + 1;
    v34 = &v30[16 * v33];
    *(v34 + 4) = v26;
    *(v34 + 5) = v27;
  }

  if (qword_1EDB764F0 == -1)
  {
    goto LABEL_44;
  }

LABEL_53:
  swift_once();
LABEL_44:
  v35 = type metadata accessor for InternalLogger();
  __swift_project_value_buffer(v35, qword_1EDB770A8);
  sub_1B1A561D8(0xD00000000000003ELL, 0x80000001B1A81C80, 0xD000000000000066, 0x80000001B1A81BF0, 0xD000000000000012, 0x80000001B1A81CC0);
LABEL_45:
  *a6 = *a5;

  v36 = *MEMORY[0x1E69E9840];
  return result;
}