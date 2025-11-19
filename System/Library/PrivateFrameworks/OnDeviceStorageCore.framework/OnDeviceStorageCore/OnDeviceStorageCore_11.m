uint64_t sub_1DB274898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *v4;
  v36 = a4;
  v8 = sub_1DB2BB364();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v34 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    result = (*(v9 + 8))(v13, v8);
    if (*(v4 + 32) == 1)
    {
      v19 = v4[2];
      v20 = *(v35 + 80);
      v21 = *(v35 + 88);
      sub_1DB2BBAA4();
      v22 = sub_1DB2B995C(34, 0xE100000000000000);
      v24 = v23;

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
      v26 = sub_1DB1688F0(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1DB2BCC40;
      *(v27 + 32) = 0u;
      *(v27 + 48) = 0u;
      *(v27 + 64) = 0;
      swift_beginAccess();
      v28 = *(v19 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + 16) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_1DB158410(0, *(v28 + 2) + 1, 1, v28);
        *(v19 + 16) = v28;
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_1DB158410((v30 > 1), v31 + 1, 1, v28);
      }

      *(v28 + 2) = v31 + 1;
      v32 = &v28[80 * v31];
      v33 = MEMORY[0x1E69E7CC0];
      *(v32 + 4) = v22;
      *(v32 + 5) = v24;
      *(v32 + 6) = v33;
      *(v32 + 7) = v25;
      *(v32 + 8) = v26;
      *(v32 + 9) = 63;
      *(v32 + 10) = 0xE100000000000000;
      *(v32 + 11) = v27;
      *(v32 + 12) = v25;
      *(v32 + 13) = v26;
      *(v19 + 16) = v28;
      return swift_endAccess();
    }
  }

  else
  {
    (*(v14 + 32))(v17, v13, a3);
    sub_1DB273E40(v17, a2, a3, v36);
    return (*(v14 + 8))(v17, a3);
  }

  return result;
}

uint64_t sub_1DB274C40(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v10 = sub_1DB1688F0(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  swift_beginAccess();
  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DB158410(0, *(v11 + 2) + 1, 1, v11);
    *(v3 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1DB158410((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[80 * v14];
  *(v15 + 4) = v6;
  *(v15 + 5) = v8;
  *(v15 + 6) = MEMORY[0x1E69E7CC0];
  *(v15 + 7) = v9;
  *(v15 + 8) = v10;
  *(v15 + 9) = a1;
  v16 = MEMORY[0x1E69E7360];
  *(v15 + 5) = v18;
  *(v15 + 12) = v16;
  *(v15 + 13) = &protocol witness table for Int64;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1DB274EB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DB275168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 80);
  v12 = *(a4 + 88);
  v13 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return a6(a1, a2, a3, v13, a5);
}

uint64_t sub_1DB2751FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return sub_1DB2BB964();
}

uint64_t sub_1DB275468(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return a5(a1 & 0x1FF, a2, v11, a4);
}

uint64_t sub_1DB2754FC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return a5(a1 & 0x1FFFF, a2, v11, a4);
}

uint64_t sub_1DB275590(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return a5(a1 | ((HIDWORD(a1) & 1) << 32), a2, v11, a4);
}

uint64_t sub_1DB27562C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 80);
  v12 = *(a4 + 88);
  v13 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return a6(a1, a2 & 1, a3, v13, a5);
}

uint64_t sub_1DB2756C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a5 + 80);
  v14 = *(a5 + 88);
  v15 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return a7(a1, a2, a3 & 1, a4, v15, a6);
}

uint64_t sub_1DB2757FC()
{
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  v1 = *(v0 + 40);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v0;
  *(v2 + 24) = v3;
  *(v2 + 32) = v1;

  swift_getWitnessTable();
  return sub_1DB2BB8D4();
}

uint64_t sub_1DB2758A4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

__n128 sub_1DB2759D8(__n128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  result = *a1;
  *(v2 + 24) = *a1;
  return result;
}

uint64_t sub_1DB275A1C()
{
  v4 = v0[3];
  v3 = *(*v0 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29140, &unk_1DB2CE790);
  sub_1DB1688F0(&qword_1ECC29148, &qword_1ECC29140, &unk_1DB2CE790);
  v1 = sub_1DB2BB034();

  return v1;
}

uint64_t sub_1DB275B14()
{
  v5 = v0[3];
  v6 = v0[4];
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);

  sub_1DB2BBAA4();
  v3 = sub_1DB28B23C();

  return v3 & 1;
}

uint64_t sub_1DB275BF8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_1DB2BBAA4();
  v5 = sub_1DB2B995C(34, 0xE100000000000000);
  v7 = v6;

  v8 = sub_1DB275DDC(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);

  return v8 & 1;
}

uint64_t sub_1DB275CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  swift_bridgeObjectRetain_n();

  v11 = sub_1DB277034(a1, a2, a3, a4, a5);
  v13 = v12;

  if (v5 || v13)
  {
  }

  else
  {
    sub_1DB1F88FC();
    swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = 0;
    *(v15 + 24) = 3;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1DB275DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  v11 = sub_1DB277694(a1, a2, a3, a4, a5);

  if (v5 || v11 != 2)
  {
  }

  else
  {
    sub_1DB1F88FC();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = 0;
    *(v12 + 24) = 3;
    swift_willThrow();
  }

  return v11 & 1;
}

uint64_t sub_1DB275ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  v11 = sub_1DB277C64(a1, a2, a3, a4, a5);
  v13 = v12;

  if (v5 || (v13 & 1) == 0)
  {
  }

  else
  {
    sub_1DB1F88FC();
    swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 0;
    *(v14 + 24) = 3;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1DB275FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  sub_1DB277C64(a1, a2, a3, a4, a5);
  v12 = v11;

  if (v5 || (v12 & 1) == 0)
  {
  }

  sub_1DB1F88FC();
  swift_allocError();
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = 0;
  *(v13 + 24) = 3;
  return swift_willThrow();
}

uint64_t sub_1DB2760B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  swift_bridgeObjectRetain_n();

  sub_1DB278884(a1, a2, a3, a4, &v14);

  if (v5)
  {
  }

  v12 = v15;
  if (v15 >> 60 == 15)
  {
    sub_1DB2351B8(v14, v15);
    sub_1DB1F88FC();
    swift_allocError();
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = 0;
    *(v13 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    *a5 = v14;
    a5[1] = v12;
  }

  return result;
}

uint64_t sub_1DB2761D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29130, &qword_1DB2CE780);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - v13;
  swift_bridgeObjectRetain_n();

  sub_1DB2782C0(a1, a2, a3, a4, MEMORY[0x1E6969530], sub_1DB2B7BA8, v14);

  if (v5)
  {
  }

  v16 = sub_1DB2BA904();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_1DB1445E0(v14, &qword_1ECC29130, &qword_1DB2CE780);
    sub_1DB1F88FC();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = 0;
    *(v18 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    return (*(v17 + 32))(a5, v14, v16);
  }
}

uint64_t sub_1DB2763E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29138, &qword_1DB2CE788);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - v13;
  swift_bridgeObjectRetain_n();

  sub_1DB2782C0(a1, a2, a3, a4, MEMORY[0x1E69695A8], static UUID.fromDatatypeValue(_:), v14);

  if (v5)
  {
  }

  v16 = sub_1DB2BA944();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_1DB1445E0(v14, &qword_1ECC29138, &qword_1DB2CE788);
    sub_1DB1F88FC();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = 0;
    *(v18 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    return (*(v17 + 32))(a5, v14, v16);
  }
}

uint64_t sub_1DB2765F0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_1DB2BBAA4();
  v5 = sub_1DB2B995C(34, 0xE100000000000000);
  v7 = v6;

  v8 = sub_1DB275ED0(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);

  return v8;
}

uint64_t sub_1DB2766C8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_1DB2BBAA4();
  v5 = sub_1DB2B995C(34, 0xE100000000000000);
  v7 = v6;

  sub_1DB275FBC(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);
}

double sub_1DB2767C4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_1DB2BBAA4();
  v5 = sub_1DB2B995C(34, 0xE100000000000000);
  v7 = v6;

  sub_1DB275FBC(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);
  v9 = v8;

  return v9;
}

uint64_t sub_1DB2768A4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_1DB2BBAA4();
  v5 = sub_1DB2B995C(34, 0xE100000000000000);
  v7 = v6;

  v8 = sub_1DB275CE8(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);

  return v8;
}

uint64_t sub_1DB276984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = a4;
  v84 = a5;
  v85 = a3;
  v86 = *v5;
  v87 = a2;
  v7 = sub_1DB2BADE4();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB2BA944();
  v83 = *(v10 - 8);
  v11 = *(v83 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v74 - v15;
  v17 = sub_1DB2BA904();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v74 - v23;
  if (swift_dynamicCastMetatype())
  {
    v25 = v5[3];
    v26 = v5[4];
    v27 = *(v86 + 80);
    v28 = *(v86 + 88);
    sub_1DB2BBAA4();
    v29 = sub_1DB2B995C(34, 0xE100000000000000);
    v31 = v30;

    v32 = v89;
    sub_1DB2760B4(v29, v31, v25, v26, &v88);
    if (!v32)
    {

      return swift_dynamicCast();
    }

    goto LABEL_6;
  }

  v77 = v16;
  v78 = v24;
  v75 = v22;
  v76 = v18;
  v74 = v14;
  v33 = v86;
  if (swift_dynamicCastMetatype())
  {
    v34 = v5[3];
    v35 = v5[4];
    v36 = *(v33 + 80);
    v37 = *(v33 + 88);
    sub_1DB2BBAA4();
    v38 = sub_1DB2B995C(34, 0xE100000000000000);
    v40 = v39;

    v41 = v78;
    v42 = v89;
    sub_1DB2761D0(v38, v40, v34, v35, v78);
    if (!v42)
    {

      (*(v76 + 32))(v75, v41, v17);
      return swift_dynamicCast();
    }

    goto LABEL_6;
  }

  v44 = v10;
  v45 = swift_dynamicCastMetatype();
  v46 = v5;
  v47 = v5[4];
  v78 = v5[3];
  v48 = *(v33 + 80);
  v49 = *(v33 + 88);
  sub_1DB2BBAA4();
  v50 = sub_1DB2B995C(34, 0xE100000000000000);
  v52 = v51;

  if (v45)
  {
    v53 = v77;
    v54 = v89;
    sub_1DB2763E0(v50, v52, v78, v47, v77);
    if (!v54)
    {

      (*(v83 + 32))(v74, v53, v44);
      return swift_dynamicCast();
    }

LABEL_6:
  }

  v55 = a1;
  v56 = v89;
  sub_1DB277034(v50, v52, MEMORY[0x1E69E7CC0], v78, v47);
  if (v56)
  {
    goto LABEL_6;
  }

  v58 = v57;

  if (!v58)
  {
    v63 = sub_1DB2BB564();
    swift_allocError();
    v65 = v68;
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
    *v65 = v55;
    v70 = v46[2];

    sub_1DB2BB554();
    v67 = MEMORY[0x1E69E6AF8];
    goto LABEL_18;
  }

  v59 = v80;
  sub_1DB2BADD4();
  v60 = sub_1DB2BADA4();
  v62 = v61;

  (*(v81 + 8))(v59, v82);
  if (v62 >> 60 == 15)
  {
    v63 = sub_1DB2BB564();
    swift_allocError();
    v65 = v64;
    v66 = v46[2];

    sub_1DB2BB554();
    v67 = MEMORY[0x1E69E6B00];
LABEL_18:
    (*(*(v63 - 8) + 104))(v65, *v67, v63);
    return swift_willThrow();
  }

  v71 = sub_1DB2BA5C4();
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  sub_1DB2BA5B4();
  sub_1DB2BA5A4();

  return sub_1DB2351B8(v60, v62);
}

uint64_t sub_1DB277034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *(a4 + 16);
  swift_bridgeObjectRetain_n();

  if (v10)
  {
    v11 = sub_1DB141B30(a1, a2);
    if (v12)
    {
      v13 = v11;

      swift_bridgeObjectRelease_n();
      v14 = *(*(a4 + 56) + 8 * v13);
      if ((v14 & 0x8000000000000000) == 0)
      {
        if (v14 < *(a5 + 2))
        {
          sub_1DB1446A4(&a5[40 * v14 + 32], v64, &qword_1ECC26E28, &unk_1DB2C2D70);
          goto LABEL_35;
        }

        goto LABEL_45;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  v15 = sub_1DB27B458(a4, a1, a2);
  v17 = v16;
  v19 = v18;
  v60 = v5;
  v20 = ~v18;

  v61 = a2;
  if (!v20)
  {

    v48 = *(a4 + 16);
    if (v48)
    {
      v49 = sub_1DB1383EC(*(a4 + 16), 0);
      v50 = sub_1DB14A440(v64, v49 + 32, v48, a4);
      v5 = v64[0];
      a5 = v64[2];

      sub_1DB149FCC();
      if (v50 != v48)
      {
        __break(1u);
LABEL_32:

        sub_1DB29A590(&v63, v57, v58, v59 & 1, a4);

        if ((v63 & 0x8000000000000000) == 0)
        {
          if (v63 < *(a5 + 2))
          {
            sub_1DB1446A4(&a5[40 * v63 + 32], v64, &qword_1ECC26E28, &unk_1DB2C2D70);
            sub_1DB27C004(v57, v58, v59);
LABEL_35:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
            if (swift_dynamicCast())
            {
              return v62;
            }

            else
            {
              return 0;
            }
          }

          goto LABEL_47;
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
    }

    v5 = v60;
    v64[0] = v49;
    sub_1DB2A2FBC(v64);
    if (!v60)
    {
      v51 = v64[0];
      sub_1DB1F88FC();
      swift_allocError();
      *v52 = a1;
      *(v52 + 8) = v61;
      *(v52 + 16) = v51;
      *(v52 + 24) = 1;
      return swift_willThrow();
    }

    goto LABEL_49;
  }

  v57 = v15;
  v21 = sub_1DB29FCC4(v15, v17, v19 & 1, a4);
  if (v23)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    MEMORY[0x1E1284A10](v5);

    __break(1u);
    return result;
  }

  v24 = *(a4 + 36);
  if (v24 != v22)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v25 = 1 << *(a4 + 32);
  if (v25 < v21)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v58 = v17;
  v59 = v19;
  v74[0] = v21;
  v74[1] = v22;
  v75 = 0;
  v76 = v25;
  v77 = v24;
  v78 = 0;
  sub_1DB29FBE0(v74, a4, &v65);

  v26 = sub_1DB27B66C(&v65, a1, a2);
  v55 = v27;
  v56 = v26;
  v54 = v28;
  v29 = ~v28;

  v72 = v65;
  v73 = v66;
  sub_1DB1445E0(&v72, &qword_1ECC29120, &qword_1DB2CE768);
  v70 = v67;
  v71 = v68;
  sub_1DB1445E0(&v70, &qword_1ECC29120, &qword_1DB2CE768);
  v79 = v69;
  sub_1DB1445E0(&v79, &qword_1ECC29128, &unk_1DB2CE770);
  if (!v29)
  {
    goto LABEL_32;
  }

  v30 = 1 << *(a4 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a4 + 64);
  v33 = (v30 + 63) >> 6;

  v34 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    while (1)
    {
      v35 = v34;
LABEL_18:
      v36 = (*(a4 + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v32)))));
      v38 = *v36;
      v37 = v36[1];
      v32 &= v32 - 1;
      v64[0] = 46;
      v64[1] = 0xE100000000000000;

      MEMORY[0x1E1283490](a1, a2);
      v39 = sub_1DB2BAF94();

      if (v39)
      {
        v40 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DB138470(0, *(v53 + 16) + 1, 1);
          v40 = v53;
        }

        v42 = *(v40 + 16);
        v41 = *(v40 + 24);
        v43 = v42 + 1;
        if (v42 >= v41 >> 1)
        {
          sub_1DB138470((v41 > 1), v42 + 1, 1);
          v43 = v42 + 1;
          v40 = v53;
        }

        *(v40 + 16) = v43;
        v53 = v40;
        v44 = v40 + 16 * v42;
        *(v44 + 32) = v38;
        *(v44 + 40) = v37;
      }

      else
      {
      }

      v34 = v35;
      a2 = v61;
      if (!v32)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v35 >= v33)
    {
      break;
    }

    v32 = *(a4 + 64 + 8 * v35);
    ++v34;
    if (v32)
    {
      goto LABEL_18;
    }
  }

  v64[0] = v53;

  sub_1DB2A2FBC(v64);
  if (v5)
  {
    goto LABEL_49;
  }

  v45 = v64[0];
  sub_1DB1F88FC();
  swift_allocError();
  *v46 = a1;
  *(v46 + 8) = a2;
  *(v46 + 16) = v45;
  *(v46 + 24) = 2;
  swift_willThrow();
  sub_1DB27C004(v56, v55, v54);
  return sub_1DB27C004(v57, v58, v59);
}

unint64_t sub_1DB277694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + 16);
  swift_bridgeObjectRetain_n();

  if (v10)
  {
    v11 = sub_1DB141B30(a1, a2);
    if (v12)
    {
      v13 = v11;

      swift_bridgeObjectRelease_n();
      return sub_1DB27A860(*(*(a4 + 56) + 8 * v13), a4, a5);
    }
  }

  v15 = sub_1DB27B458(a4, a1, a2);
  v17 = v16;
  v19 = v18;
  v62 = v5;
  v20 = ~v18;

  if (!v20)
  {

    v48 = *(a4 + 16);
    if (v48)
    {
      v49 = sub_1DB1383EC(*(a4 + 16), 0);
      v61 = sub_1DB14A440(v63, v49 + 32, v48, a4);
      v5 = v63[0];

      sub_1DB149FCC();
      if (v61 != v48)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
    }

    v63[0] = v49;
    v5 = v62;
    sub_1DB2A2FBC(v63);
    if (!v62)
    {
      v51 = v63[0];
      sub_1DB1F88FC();
      swift_allocError();
      *v52 = a1;
      *(v52 + 8) = a2;
      *(v52 + 16) = v51;
      *(v52 + 24) = 1;
      return swift_willThrow();
    }

LABEL_41:
    MEMORY[0x1E1284A10](v5);

    __break(1u);
    return result;
  }

  v21 = sub_1DB29FCC4(v15, v17, v19 & 1, a4);
  if (v23)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v24 = *(a4 + 36);
  if (v24 != v22)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v25 = 1 << *(a4 + 32);
  if (v25 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v58 = v17;
  v59 = v15;
  v73[0] = v21;
  v73[1] = v22;
  v74 = 0;
  v75 = v25;
  v76 = v24;
  v77 = 0;
  sub_1DB29FBE0(v73, a4, &v64);

  v26 = sub_1DB27B66C(&v64, a1, a2);
  v56 = v27;
  v57 = v26;
  v55 = v28;
  v29 = ~v28;

  v71 = v64;
  v72 = v65;
  sub_1DB1445E0(&v71, &qword_1ECC29120, &qword_1DB2CE768);
  v69 = v66;
  v70 = v67;
  sub_1DB1445E0(&v69, &qword_1ECC29120, &qword_1DB2CE768);
  v78 = v68;
  sub_1DB1445E0(&v78, &qword_1ECC29128, &unk_1DB2CE770);
  if (v29)
  {
    v53 = v19;
    v30 = 1 << *(a4 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(a4 + 64);
    v33 = (v30 + 63) >> 6;

    v34 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    v35 = v5;
    v60 = a2;
    if (v32)
    {
      while (1)
      {
        v36 = v34;
LABEL_16:
        v37 = (*(a4 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v32)))));
        v38 = *v37;
        v39 = v37[1];
        v32 &= v32 - 1;
        v63[0] = 46;
        v63[1] = 0xE100000000000000;

        MEMORY[0x1E1283490](a1, a2);
        v40 = sub_1DB2BAF94();

        if (v40)
        {
          v41 = v54;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DB138470(0, *(v54 + 16) + 1, 1);
            v41 = v54;
          }

          v43 = *(v41 + 16);
          v42 = *(v41 + 24);
          v44 = v43 + 1;
          if (v43 >= v42 >> 1)
          {
            sub_1DB138470((v42 > 1), v43 + 1, 1);
            v44 = v43 + 1;
            v41 = v54;
          }

          *(v41 + 16) = v44;
          v54 = v41;
          v45 = v41 + 16 * v43;
          *(v45 + 32) = v38;
          *(v45 + 40) = v39;
        }

        else
        {
        }

        v34 = v36;
        a2 = v60;
        v35 = v5;
        if (!v32)
        {
          goto LABEL_13;
        }
      }
    }

    while (1)
    {
LABEL_13:
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v36 >= v33)
      {
        break;
      }

      v32 = *(a4 + 64 + 8 * v36);
      ++v34;
      if (v32)
      {
        goto LABEL_16;
      }
    }

    v63[0] = v54;

    v5 = v35;
    sub_1DB2A2FBC(v63);
    if (v35)
    {
      goto LABEL_41;
    }

    v46 = v63[0];
    sub_1DB1F88FC();
    swift_allocError();
    *v47 = a1;
    *(v47 + 8) = a2;
    *(v47 + 16) = v46;
    *(v47 + 24) = 2;
    swift_willThrow();
    sub_1DB27C004(v57, v56, v55);
    return sub_1DB27C004(v59, v58, v53);
  }

  else
  {

    sub_1DB29A590(v63, v15, v17, v19 & 1, a4);

    v50 = sub_1DB27A860(v63[0], a4, a5);
    result = sub_1DB27C004(v15, v17, v19);
    if (!v5)
    {
      return v50;
    }
  }

  return result;
}

uint64_t sub_1DB277C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + 16);
  swift_bridgeObjectRetain_n();

  if (v10)
  {
    v11 = sub_1DB141B30(a1, a2);
    if (v12)
    {
      v13 = v11;

      swift_bridgeObjectRelease_n();
      v14 = *(*(a4 + 56) + 8 * v13);
      if ((v14 & 0x8000000000000000) == 0)
      {
        if (v14 < *(a5 + 16))
        {
          sub_1DB1446A4(a5 + 40 * v14 + 32, v65, &qword_1ECC26E28, &unk_1DB2C2D70);
          goto LABEL_35;
        }

        goto LABEL_45;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  v56 = a5;

  v15 = sub_1DB27B458(a4, a1, a2);
  v17 = v16;
  v19 = v18;
  v61 = v5;
  v20 = ~v18;

  v62 = a2;
  if (!v20)
  {

    v48 = *(a4 + 16);
    if (v48)
    {
      v49 = sub_1DB1383EC(*(a4 + 16), 0);
      v50 = sub_1DB14A440(v65, v49 + 32, v48, a4);
      v5 = v65[0];

      sub_1DB149FCC();
      if (v50 != v48)
      {
        __break(1u);
LABEL_32:

        sub_1DB29A590(&v64, v58, v59, v60 & 1, a4);

        if ((v64 & 0x8000000000000000) == 0)
        {
          if (v64 < *(v56 + 16))
          {
            sub_1DB1446A4(v56 + 40 * v64 + 32, v65, &qword_1ECC26E28, &unk_1DB2C2D70);
            sub_1DB27C004(v58, v59, v60);
LABEL_35:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
            if (swift_dynamicCast())
            {
              return v63;
            }

            else
            {
              return 0;
            }
          }

          goto LABEL_47;
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
    }

    v5 = v61;
    v65[0] = v49;
    sub_1DB2A2FBC(v65);
    if (!v61)
    {
      v51 = v65[0];
      sub_1DB1F88FC();
      swift_allocError();
      *v52 = a1;
      *(v52 + 8) = v62;
      *(v52 + 16) = v51;
      *(v52 + 24) = 1;
      return swift_willThrow();
    }

    goto LABEL_49;
  }

  v58 = v15;
  v21 = sub_1DB29FCC4(v15, v17, v19 & 1, a4);
  if (v23)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    MEMORY[0x1E1284A10](v5);

    __break(1u);
    return result;
  }

  v24 = *(a4 + 36);
  if (v24 != v22)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v25 = 1 << *(a4 + 32);
  if (v25 < v21)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v59 = v17;
  v60 = v19;
  v75[0] = v21;
  v75[1] = v22;
  v76 = 0;
  v77 = v25;
  v78 = v24;
  v79 = 0;
  sub_1DB29FBE0(v75, a4, &v66);

  v26 = sub_1DB27B66C(&v66, a1, a2);
  v55 = v27;
  v54 = v28;
  v29 = ~v28;

  v73 = v66;
  v74 = v67;
  sub_1DB1445E0(&v73, &qword_1ECC29120, &qword_1DB2CE768);
  v71 = v68;
  v72 = v69;
  sub_1DB1445E0(&v71, &qword_1ECC29120, &qword_1DB2CE768);
  v80 = v70;
  sub_1DB1445E0(&v80, &qword_1ECC29128, &unk_1DB2CE770);
  if (!v29)
  {
    goto LABEL_32;
  }

  v53 = v26;
  v30 = 1 << *(a4 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a4 + 64);
  v33 = (v30 + 63) >> 6;

  v34 = 0;
  v57 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    while (1)
    {
      v35 = v34;
LABEL_18:
      v36 = (*(a4 + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v32)))));
      v38 = *v36;
      v37 = v36[1];
      v32 &= v32 - 1;
      v65[0] = 46;
      v65[1] = 0xE100000000000000;

      MEMORY[0x1E1283490](a1, a2);
      v39 = sub_1DB2BAF94();

      if (v39)
      {
        v40 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DB138470(0, *(v57 + 16) + 1, 1);
          v40 = v57;
        }

        v42 = *(v40 + 16);
        v41 = *(v40 + 24);
        v43 = v42 + 1;
        if (v42 >= v41 >> 1)
        {
          sub_1DB138470((v41 > 1), v42 + 1, 1);
          v43 = v42 + 1;
          v40 = v57;
        }

        *(v40 + 16) = v43;
        v57 = v40;
        v44 = v40 + 16 * v42;
        *(v44 + 32) = v38;
        *(v44 + 40) = v37;
      }

      else
      {
      }

      v34 = v35;
      a2 = v62;
      if (!v32)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v35 >= v33)
    {
      break;
    }

    v32 = *(a4 + 64 + 8 * v35);
    ++v34;
    if (v32)
    {
      goto LABEL_18;
    }
  }

  v65[0] = v57;

  sub_1DB2A2FBC(v65);
  if (v5)
  {
    goto LABEL_49;
  }

  v45 = v65[0];
  sub_1DB1F88FC();
  swift_allocError();
  *v46 = a1;
  *(v46 + 8) = a2;
  *(v46 + 16) = v45;
  *(v46 + 24) = 2;
  swift_willThrow();
  sub_1DB27C004(v53, v55, v54);
  return sub_1DB27C004(v58, v59, v60);
}

uint64_t sub_1DB2782C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(void)@<X5>, void (*a6)(void, void)@<X6>, uint64_t a7@<X8>)
{
  v13 = *(a3 + 16);
  swift_bridgeObjectRetain_n();

  if (v13)
  {
    v14 = sub_1DB141B30(a1, a2);
    if (v15)
    {
      v16 = v14;

      swift_bridgeObjectRelease_n();
      return sub_1DB27A918(*(*(a3 + 56) + 8 * v16), a4, a5, a6, a7);
    }
  }

  v61 = a5;
  v62 = a6;

  v18 = sub_1DB27B458(a3, a1, a2);
  v20 = v19;
  v22 = v21;
  v23 = ~v21;

  v70 = a1;
  if (v23)
  {

    v24 = sub_1DB29FCC4(v18, v20, v22 & 1, a3);
    if ((v26 & 1) == 0)
    {
      v27 = *(a3 + 36);
      if (v27 == v25)
      {
        v28 = 1 << *(a3 + 32);
        if (v28 >= v24)
        {
          v64 = v18;
          v65 = v20;
          v82[0] = v24;
          v82[1] = v25;
          v83 = 0;
          v84 = v28;
          v85 = v27;
          v86 = 0;
          sub_1DB29FBE0(v82, a3, &v73);

          v29 = sub_1DB27B66C(&v73, a1, a2);
          v66 = v30;
          v31 = v7;
          v60 = v32;
          v33 = ~v32;

          v80 = v73;
          v81 = v74;
          sub_1DB1445E0(&v80, &qword_1ECC29120, &qword_1DB2CE768);
          v78 = v75;
          v79 = v76;
          sub_1DB1445E0(&v78, &qword_1ECC29120, &qword_1DB2CE768);
          v87 = v77;
          sub_1DB1445E0(&v87, &qword_1ECC29128, &unk_1DB2CE770);
          if (v33)
          {
            v59 = v29;
            v69 = a2;
            v34 = 1 << *(a3 + 32);
            v35 = -1;
            if (v34 < 64)
            {
              v35 = ~(-1 << v34);
            }

            v36 = v35 & *(a3 + 64);
            v37 = (v34 + 63) >> 6;

            v38 = 0;
            v63 = MEMORY[0x1E69E7CC0];
            if (v36)
            {
              while (1)
              {
                v39 = v38;
LABEL_16:
                v40 = (*(a3 + 48) + ((v39 << 10) | (16 * __clz(__rbit64(v36)))));
                v42 = *v40;
                v41 = v40[1];
                v36 &= v36 - 1;
                v71[0] = 46;
                v71[1] = 0xE100000000000000;

                MEMORY[0x1E1283490](v70, v69);
                v43 = sub_1DB2BAF94();

                if (v43)
                {
                  v44 = v63;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1DB138470(0, *(v63 + 16) + 1, 1);
                    v44 = v63;
                  }

                  v46 = *(v44 + 16);
                  v45 = *(v44 + 24);
                  v47 = v46 + 1;
                  if (v46 >= v45 >> 1)
                  {
                    sub_1DB138470((v45 > 1), v46 + 1, 1);
                    v47 = v46 + 1;
                    v44 = v63;
                  }

                  *(v44 + 16) = v47;
                  v63 = v44;
                  v48 = v44 + 16 * v46;
                  *(v48 + 32) = v42;
                  *(v48 + 40) = v41;
                }

                else
                {
                }

                v38 = v39;
                v31 = v7;
                if (!v36)
                {
                  goto LABEL_13;
                }
              }
            }

            while (1)
            {
LABEL_13:
              v39 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                __break(1u);
                goto LABEL_36;
              }

              if (v39 >= v37)
              {
                break;
              }

              v36 = *(a3 + 64 + 8 * v39);
              ++v38;
              if (v36)
              {
                goto LABEL_16;
              }
            }

            v71[0] = v63;

            v7 = v31;
            sub_1DB2A2FBC(v71);
            if (v31)
            {
              goto LABEL_39;
            }

            v49 = v71[0];
            sub_1DB1F88FC();
            swift_allocError();
            *v50 = v70;
            *(v50 + 8) = v69;
            *(v50 + 16) = v49;
            *(v50 + 24) = 2;
            swift_willThrow();
            sub_1DB27C004(v59, v66, v60);
            v51 = v64;
            v52 = v65;
            v53 = v22;
            return sub_1DB27C004(v51, v52, v53);
          }

LABEL_30:

          sub_1DB29A590(v71, v64, v65, v22 & 1, a3);

          sub_1DB27A918(v71[0], a4, v61, v62, a7);
          v51 = v64;
          v52 = v65;
          v53 = v22;
          return sub_1DB27C004(v51, v52, v53);
        }
      }

      else
      {
LABEL_36:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v54 = *(a3 + 16);
    if (v54)
    {
      v55 = sub_1DB1383EC(*(a3 + 16), 0);
      v56 = sub_1DB14A440(v71, v55 + 32, v54, a3);
      v22 = v72;

      sub_1DB149FCC();
      if (v56 != v54)
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v55 = MEMORY[0x1E69E7CC0];
    }

    v71[0] = v55;
    sub_1DB2A2FBC(v71);
    if (!v7)
    {
      v57 = v71[0];
      sub_1DB1F88FC();
      swift_allocError();
      *v58 = a1;
      *(v58 + 8) = a2;
      *(v58 + 16) = v57;
      *(v58 + 24) = 1;
      return swift_willThrow();
    }
  }

LABEL_39:
  MEMORY[0x1E1284A10](v7);

  __break(1u);
  return result;
}

unint64_t sub_1DB278884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11 = *(a3 + 16);
  swift_bridgeObjectRetain_n();

  if (v11)
  {
    v12 = sub_1DB141B30(a1, a2);
    if (v13)
    {
      v14 = v12;

      swift_bridgeObjectRelease_n();
      return sub_1DB27AAC4(*(*(a3 + 56) + 8 * v14), a4, a5);
    }
  }

  v63 = a4;

  v16 = sub_1DB27B458(a3, a1, a2);
  v18 = v17;
  v20 = v19;
  v66 = v5;
  v21 = ~v19;

  if (!v21)
  {

    v52 = *(a3 + 16);
    if (v52)
    {
      v53 = sub_1DB1383EC(*(a3 + 16), 0);
      v64 = sub_1DB14A440(v67, v53 + 32, v52, a3);
      v5 = v67[0];

      sub_1DB149FCC();
      if (v64 != v52)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {
      v53 = MEMORY[0x1E69E7CC0];
    }

    v5 = v66;
    v67[0] = v53;
    sub_1DB2A2FBC(v67);
    if (!v66)
    {
      v54 = v67[0];
      sub_1DB1F88FC();
      swift_allocError();
      *v55 = a1;
      *(v55 + 8) = a2;
      *(v55 + 16) = v54;
      *(v55 + 24) = 1;
      return swift_willThrow();
    }

    goto LABEL_40;
  }

  v22 = sub_1DB29FCC4(v16, v18, v20 & 1, a3);
  if (v24)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    MEMORY[0x1E1284A10](v5);

    __break(1u);
    return result;
  }

  v25 = *(a3 + 36);
  if (v25 != v23)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v26 = 1 << *(a3 + 32);
  if (v26 < v22)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v61 = v16;
  v62 = v18;
  v77[0] = v22;
  v77[1] = v23;
  v78 = 0;
  v79 = v26;
  v80 = v25;
  v81 = 0;
  sub_1DB29FBE0(v77, a3, &v68);

  v27 = sub_1DB27B66C(&v68, a1, a2);
  v59 = v28;
  v60 = v27;
  v29 = v5;
  v58 = v30;
  v31 = ~v30;

  v75 = v68;
  v76 = v69;
  sub_1DB1445E0(&v75, &qword_1ECC29120, &qword_1DB2CE768);
  v73 = v70;
  v74 = v71;
  sub_1DB1445E0(&v73, &qword_1ECC29120, &qword_1DB2CE768);
  v82 = v72;
  sub_1DB1445E0(&v82, &qword_1ECC29128, &unk_1DB2CE770);
  if (v31)
  {
    v56 = v20;
    v32 = 1 << *(a3 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(a3 + 64);
    v35 = (v32 + 63) >> 6;

    v36 = 0;
    v57 = MEMORY[0x1E69E7CC0];
    v65 = a2;
    if (v34)
    {
      while (1)
      {
        v37 = v36;
LABEL_16:
        v38 = (*(a3 + 48) + ((v37 << 10) | (16 * __clz(__rbit64(v34)))));
        v40 = *v38;
        v39 = v38[1];
        v34 &= v34 - 1;
        v67[0] = 46;
        v67[1] = 0xE100000000000000;

        MEMORY[0x1E1283490](a1, a2);
        v41 = sub_1DB2BAF94();

        if (v41)
        {
          v42 = v57;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DB138470(0, *(v57 + 16) + 1, 1);
            v42 = v57;
          }

          v44 = *(v42 + 16);
          v43 = *(v42 + 24);
          v45 = v44 + 1;
          if (v44 >= v43 >> 1)
          {
            sub_1DB138470((v43 > 1), v44 + 1, 1);
            v45 = v44 + 1;
            v42 = v57;
          }

          *(v42 + 16) = v45;
          v57 = v42;
          v46 = v42 + 16 * v44;
          *(v46 + 32) = v40;
          *(v46 + 40) = v39;
        }

        else
        {
        }

        v36 = v37;
        v29 = v5;
        a2 = v65;
        if (!v34)
        {
          goto LABEL_13;
        }
      }
    }

    while (1)
    {
LABEL_13:
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v37 >= v35)
      {
        break;
      }

      v34 = *(a3 + 64 + 8 * v37);
      ++v36;
      if (v34)
      {
        goto LABEL_16;
      }
    }

    v67[0] = v57;

    v5 = v29;
    sub_1DB2A2FBC(v67);
    if (v29)
    {
      goto LABEL_40;
    }

    v47 = v67[0];
    sub_1DB1F88FC();
    swift_allocError();
    *v48 = a1;
    *(v48 + 8) = a2;
    *(v48 + 16) = v47;
    *(v48 + 24) = 2;
    swift_willThrow();
    sub_1DB27C004(v60, v59, v58);
    v49 = v61;
    v50 = v62;
    v51 = v56;
  }

  else
  {

    sub_1DB29A590(v67, v61, v18, v20 & 1, a3);

    sub_1DB27AAC4(v67[0], v63, a5);
    v49 = v61;
    v50 = v18;
    v51 = v20;
  }

  return sub_1DB27C004(v49, v50, v51);
}

uint64_t sub_1DB278E40()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 88);
  sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000);
  v8 = v7;

  v9 = sub_1DB277694(v6, v8, MEMORY[0x1E69E7CC0], v2, v3);
  if (v1)
  {
    MEMORY[0x1E1284A10](v1);
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

unint64_t sub_1DB278F30()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 88);
  sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000);
  v8 = v7;

  sub_1DB275FBC(v6, v8, MEMORY[0x1E69E7CC0], v2, v3);
  if (v1)
  {
    MEMORY[0x1E1284A10](v1);

    v10 = 0;
  }

  else
  {
    v11 = v9;

    *&v12 = v11;
    v10 = v12;
  }

  return v10 | ((v1 != 0) << 32);
}

uint64_t sub_1DB279074()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 88);
  sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000);
  v8 = v7;

  v9 = sub_1DB277C64(v6, v8, MEMORY[0x1E69E7CC0], v2, v3);
  if (v1)
  {
    MEMORY[0x1E1284A10](v1);

    return 0;
  }

  else
  {
    v11 = v9;

    return v11;
  }
}

uint64_t sub_1DB279198()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 88);
  sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000);
  v8 = v7;

  v9 = sub_1DB277034(v6, v8, MEMORY[0x1E69E7CC0], v2, v3);
  if (v1)
  {
    MEMORY[0x1E1284A10](v1);

    return 0;
  }

  else
  {
    v11 = v9;

    return v11;
  }
}

uint64_t sub_1DB2792AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v74 = a3;
  v77 = a2;
  v78 = a1;
  v76 = a4;
  v6 = *v4;
  v7 = sub_1DB2BADE4();
  v75 = *(v7 - 8);
  v8 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DB2BA944();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DB2BA904();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_dynamicCastMetatype())
  {
    v19 = v5[3];
    v20 = v5[4];
    v21 = *(v6 + 80);
    v22 = *(v6 + 88);
    sub_1DB2BBAA4();
    v23 = sub_1DB2B995C(34, 0xE100000000000000);
    v25 = v24;

    v26 = v81;
    sub_1DB2760B4(v23, v25, v19, v20, &v80);
    if (!v26)
    {

      v79 = v80;
      v28 = v76;
      v27 = v77;
      v29 = swift_dynamicCast();
      return (*(*(v27 - 8) + 56))(v28, v29 ^ 1u, 1, v27);
    }

    goto LABEL_10;
  }

  v72 = v7;
  v73 = v14;
  v71 = v10;
  v31 = v81;
  if (swift_dynamicCastMetatype())
  {
    v32 = v5[3];
    v33 = v5[4];
    v34 = *(v6 + 80);
    v35 = *(v6 + 88);
    sub_1DB2BBAA4();
    v36 = sub_1DB2B995C(34, 0xE100000000000000);
    v38 = v37;

    v26 = v31;
    sub_1DB2761D0(v36, v38, v32, v33, v18);
    if (!v31)
    {

      v40 = v76;
      v39 = v77;
      v41 = swift_dynamicCast();
      v42 = *(*(v39 - 8) + 56);
      if (v41)
      {
        v43 = v40;
LABEL_16:
        v54 = 0;
        return v42(v43, v54, 1, v39);
      }

      v43 = v40;
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v44 = swift_dynamicCastMetatype();
  v45 = v5[3];
  v70 = v5[4];
  v46 = *(v6 + 80);
  v47 = *(v6 + 88);
  sub_1DB2BBAA4();
  v48 = sub_1DB2B995C(34, 0xE100000000000000);
  v50 = v49;

  if (v44)
  {
    v26 = v31;
    sub_1DB2763E0(v48, v50, v45, v70, v73);
    if (!v31)
    {

      v52 = v76;
      v39 = v77;
      v53 = swift_dynamicCast();
      v42 = *(*(v39 - 8) + 56);
      if (v53)
      {
        v43 = v52;
        goto LABEL_16;
      }

      v43 = v52;
LABEL_21:
      v54 = 1;
      return v42(v43, v54, 1, v39);
    }

LABEL_10:
    MEMORY[0x1E1284A10](v26);

    return (*(*(v77 - 8) + 56))(v76, 1, 1);
  }

  sub_1DB277034(v48, v50, MEMORY[0x1E69E7CC0], v45, v70);
  if (v31)
  {
  }

  else
  {
    v55 = v51;

    if (v55)
    {
      v56 = v71;
      sub_1DB2BADD4();
      v57 = sub_1DB2BADA4();
      v59 = v58;

      (*(v75 + 8))(v56, v72);
      if (v59 >> 60 == 15)
      {
        v60 = sub_1DB2BB564();
        swift_allocError();
        v62 = v61;
        v63 = v5[2];

        sub_1DB2BB554();
        (*(*(v60 - 8) + 104))(v62, *MEMORY[0x1E69E6B00], v60);
        return swift_willThrow();
      }

      else
      {
        v64 = sub_1DB2BA5C4();
        v65 = *(v64 + 48);
        v66 = *(v64 + 52);
        swift_allocObject();
        sub_1DB2BA5B4();
        v68 = v76;
        v67 = v77;
        sub_1DB2BA5A4();
        sub_1DB2351B8(v57, v59);

        return (*(*(v67 - 8) + 56))(v68, 0, 1);
      }
    }

    else
    {
      return (*(*(v77 - 8) + 56))(v76, 1, 1);
    }
  }
}

uint64_t sub_1DB279980()
{
  v1 = sub_1DB2BB564();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 16);

  sub_1DB2BB554();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6B00], v1);
  return swift_willThrow();
}

uint64_t sub_1DB279A40()
{
  v1 = sub_1DB2BB564();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 16);

  sub_1DB2BB554();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6B00], v1);
  return swift_willThrow();
}

uint64_t sub_1DB279B00()
{
  v1 = sub_1DB2BB564();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 16);

  sub_1DB2BB554();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6B00], v1);
  return swift_willThrow();
}

uint64_t sub_1DB279BC0()
{
  v1 = sub_1DB2BB564();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 16);

  sub_1DB2BB554();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6B00], v1);
  return swift_willThrow();
}

void *sub_1DB279C80()
{
  v1 = v0[2];

  v3 = v0[3];
  v2 = v0[4];

  return v0;
}

uint64_t sub_1DB279CB8()
{
  sub_1DB279C80();

  return swift_deallocClassInstance();
}

uint64_t sub_1DB279F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return a4(a1, v9, a3);
}

uint64_t sub_1DB27A068()
{
  v1 = *v0;
  v2 = sub_1DB278F30();
  return v2 | ((HIDWORD(v2) & 1) << 32);
}

uint64_t sub_1DB27A0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  result = a4();
  if (v5)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1DB27A208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return a4(a1, v9, a3) & 0x1FF;
}

uint64_t sub_1DB27A2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return a4(a1, v9, a3) & 0x1FFFF;
}

uint64_t sub_1DB27A340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  v10 = a4(a1, v9, a3);
  return v10 | ((HIDWORD(v10) & 1) << 32);
}

uint64_t sub_1DB27A3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  v10 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  result = a4(a1, v10, a3);
  if (v4)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1DB27A478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  v10 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  result = a4(a1, v10, a3);
  if (v4)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1DB27A598()
{
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();
  v3[2] = MEMORY[0x1E69E7CC0];
  v3[3] = v2;
  v3[4] = v1;

  swift_getWitnessTable();
  return sub_1DB2BB7F4();
}

uint64_t sub_1DB27A650()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1DB27A6D8()
{
  v1 = *v0;
  v2 = sub_1DB2BB564();
  swift_allocError();
  v4 = v3;
  v5 = *(v1 + 32);

  sub_1DB2BB554();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B00], v2);
  return swift_willThrow();
}

uint64_t sub_1DB27A79C()
{
  v1 = *v0;
  v2 = sub_1DB2BB564();
  swift_allocError();
  v4 = v3;
  v5 = *(v1 + 32);

  sub_1DB2BB554();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B00], v2);
  return swift_willThrow();
}

unint64_t sub_1DB27A860(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = v3;
  v8 = v4;
  sub_1DB1446A4(a3 + 40 * result + 32, v6, &qword_1ECC26E28, &unk_1DB2C2D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  if (swift_dynamicCast())
  {
    return v5 != 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1DB27A918@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(void, void)@<X4>, uint64_t a5@<X8>)
{
  v10 = a3(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = v17 - v14;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_1DB1446A4(a2 + 40 * a1 + 32, v18, &qword_1ECC26E28, &unk_1DB2C2D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  if (swift_dynamicCast())
  {
    a4(v17[1], v17[2]);

    if (v5)
    {
      return result;
    }

    (*(v11 + 32))(a5, v15, v10);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v11 + 56))(a5, v16, 1, v10);
}

unint64_t sub_1DB27AAC4@<X0>(unint64_t result@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1DB1446A4(a2 + 40 * result + 32, v7, &qword_1ECC26E28, &unk_1DB2C2D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  if (swift_dynamicCast())
  {
    v4 = sub_1DB2B942C(v8);
    v6 = v5;
  }

  else
  {
    v8 = 0;

    v4 = 0;
    v6 = 0xF000000000000000;
  }

  *a3 = v4;
  a3[1] = v6;
  return result;
}

uint64_t sub_1DB27ABD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DB27ACF8(char a1)
{
  v3 = sub_1DB2BB584();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758) + 48);
  *(v5 + 24) = MEMORY[0x1E69E7230];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_1DB2BB554();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1DB27ADE4(__int16 a1)
{
  v3 = sub_1DB2BB584();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758) + 48);
  *(v5 + 24) = MEMORY[0x1E69E7290];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_1DB2BB554();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1DB27AED0(int a1)
{
  v3 = sub_1DB2BB584();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758) + 48);
  *(v5 + 24) = MEMORY[0x1E69E72F0];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_1DB2BB554();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1DB27AFBC(uint64_t a1)
{
  v3 = sub_1DB2BB584();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758) + 48);
  v5[3] = MEMORY[0x1E69E6810];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_1DB2BB554();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1DB27B0A8(char a1)
{
  v3 = sub_1DB2BB584();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758) + 48);
  *(v5 + 24) = MEMORY[0x1E69E7508];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_1DB2BB554();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1DB27B194(__int16 a1)
{
  v3 = sub_1DB2BB584();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758) + 48);
  *(v5 + 24) = MEMORY[0x1E69E75F8];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_1DB2BB554();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1DB27B280(int a1)
{
  v3 = sub_1DB2BB584();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758) + 48);
  *(v5 + 24) = MEMORY[0x1E69E7668];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_1DB2BB554();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1DB27B36C(uint64_t a1)
{
  v3 = sub_1DB2BB584();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758) + 48);
  v5[3] = MEMORY[0x1E69E76D8];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_1DB2BB554();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1DB27B458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1DB2BB464();
  v7 = 1 << *(a1 + 32);
  if (result == v7)
  {
    return 0;
  }

  else
  {
    v8 = result;
    while ((v8 & 0x8000000000000000) == 0 && v8 < v7)
    {
      v10 = v8 >> 6;
      if ((*(v4 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      v11 = *(a1 + 36);
      v12 = (*(a1 + 48) + 16 * v8);
      v14 = *v12;
      v13 = v12[1];

      MEMORY[0x1E1283490](a2, a3);
      LOBYTE(v14) = sub_1DB2BAF94();

      if (v14)
      {
        return v8;
      }

      v9 = 1 << *(a1 + 32);
      if (v8 >= v9)
      {
        goto LABEL_22;
      }

      v15 = *(v4 + 8 * v10);
      if ((v15 & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v16 = v15 & (-2 << (v8 & 0x3F));
      if (v16)
      {
        v9 = __clz(__rbit64(v16)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v10 << 6;
        v18 = v10 + 1;
        v19 = (a1 + 72 + 8 * v10);
        while (v18 < (v9 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_1DB25CF78(v8, v11, 0);
            v9 = __clz(__rbit64(v20)) + v17;
            goto LABEL_5;
          }
        }

        result = sub_1DB25CF78(v8, v11, 0);
      }

LABEL_5:
      v7 = 1 << *(a1 + 32);
      v8 = v9;
      if (v9 == v7)
      {
        return 0;
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
  }

  return result;
}

uint64_t sub_1DB27B66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v29 = *(a1 + 32);
  v6 = *(a1 + 40);
  v27 = *a1;
  result = sub_1DB27C01C(*a1, v3, v4);
  if (v4 & 1) != 0 || (v6)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v8 = v29;
  if (v3 != v29)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v9 = v27;
  while (v9 != v5)
  {
    if (v9 < v27)
    {
      goto LABEL_27;
    }

    if (v9 >= v5)
    {
      goto LABEL_28;
    }

    if (v9 < 0)
    {
      goto LABEL_29;
    }

    v11 = *(a1 + 48);
    if (v9 >= 1 << *(v11 + 32))
    {
      goto LABEL_29;
    }

    v12 = v9 >> 6;
    if ((*(v11 + 64 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_30;
    }

    if (*(v11 + 36) != v8)
    {
      goto LABEL_31;
    }

    v28 = v3;
    v13 = v5;
    v14 = (*(v11 + 48) + 16 * v9);
    v16 = *v14;
    v15 = v14[1];

    MEMORY[0x1E1283490](a2, a3);
    LOBYTE(v16) = sub_1DB2BAF94();

    if (v16)
    {
      return v9;
    }

    v10 = 1 << *(v11 + 32);
    if (v9 >= v10)
    {
      goto LABEL_32;
    }

    v17 = *(v11 + 64 + 8 * v12);
    if ((v17 & (1 << v9)) == 0)
    {
      goto LABEL_33;
    }

    v8 = v29;
    if (*(v11 + 36) != v29)
    {
      goto LABEL_34;
    }

    v18 = v17 & (-2 << (v9 & 0x3F));
    if (v18)
    {
      v10 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v5 = v13;
    }

    else
    {
      v19 = v12 << 6;
      v20 = v12 + 1;
      v21 = (v11 + 8 * v12 + 72);
      v5 = v13;
      while (v20 < (v10 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1DB25CF78(v9, v28, 0);
          v8 = v29;
          v10 = __clz(__rbit64(v22)) + v19;
          goto LABEL_6;
        }
      }

      result = sub_1DB25CF78(v9, v28, 0);
      v8 = v29;
    }

LABEL_6:
    v3 = *(v11 + 36);
    v9 = v10;
    if (v3 != v8)
    {
      goto LABEL_26;
    }
  }

  return 0;
}

uint64_t sub_1DB27B8E4()
{
  v1 = sub_1DB2BB564();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
  *v3 = MEMORY[0x1E69E7230];
  v5 = *(v0 + 16);

  sub_1DB2BB554();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1DB27B9C8()
{
  v1 = sub_1DB2BB564();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
  *v3 = MEMORY[0x1E69E7290];
  v5 = *(v0 + 16);

  sub_1DB2BB554();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1DB27BAAC()
{
  v1 = sub_1DB2BB564();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
  *v3 = MEMORY[0x1E69E72F0];
  v5 = *(v0 + 16);

  sub_1DB2BB554();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1DB27BB90()
{
  v1 = sub_1DB2BB564();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
  *v3 = MEMORY[0x1E69E6810];
  v5 = *(v0 + 16);

  sub_1DB2BB554();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1DB27BC74()
{
  v1 = sub_1DB2BB564();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
  *v3 = MEMORY[0x1E69E7508];
  v5 = *(v0 + 16);

  sub_1DB2BB554();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1DB27BD58()
{
  v1 = sub_1DB2BB564();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
  *v3 = MEMORY[0x1E69E75F8];
  v5 = *(v0 + 16);

  sub_1DB2BB554();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1DB27BE3C()
{
  v1 = sub_1DB2BB564();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
  *v3 = MEMORY[0x1E69E7668];
  v5 = *(v0 + 16);

  sub_1DB2BB554();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1DB27BF20()
{
  v1 = sub_1DB2BB564();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
  *v3 = MEMORY[0x1E69E76D8];
  v5 = *(v0 + 16);

  sub_1DB2BB554();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1DB27C004(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DB25CF78(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1DB27C01C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DB27C028(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];

  return sub_1DB2BBAB4();
}

uint64_t sub_1DB27C0E4(uint64_t a1)
{
  v2 = sub_1DB27C9C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB27C120(uint64_t a1)
{
  v2 = sub_1DB27C9C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB27C15C()
{
  v1 = 0x7972616E6962;
  v2 = 0x6D69727472;
  if (*v0 != 2)
  {
    v2 = 0x6D6F74737563;
  }

  if (*v0)
  {
    v1 = 0x657361636F6ELL;
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

uint64_t sub_1DB27C1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB27D97C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB27C1EC(uint64_t a1)
{
  v2 = sub_1DB27C874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB27C228(uint64_t a1)
{
  v2 = sub_1DB27C874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB27C264(uint64_t a1)
{
  v2 = sub_1DB27C8C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB27C2A0(uint64_t a1)
{
  v2 = sub_1DB27C8C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB27C2DC(uint64_t a1)
{
  v2 = sub_1DB27C970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB27C318(uint64_t a1)
{
  v2 = sub_1DB27C970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB27C354(uint64_t a1)
{
  v2 = sub_1DB27C91C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB27C390(uint64_t a1)
{
  v2 = sub_1DB27C91C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Collation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29168, &qword_1DB2CE7E0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29170, &qword_1DB2CE7E8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29178, &qword_1DB2CE7F0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29180, &qword_1DB2CE7F8);
  v30 = *(v13 - 8);
  v14 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29188, &qword_1DB2CE800);
  v39 = *(v17 - 8);
  v40 = v17;
  v18 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v29 - v19;
  v21 = v1[1];
  v29[1] = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB27C874();
  sub_1DB2BBA94();
  switch(v21)
  {
    case 0:
      v41 = 0;
      sub_1DB27C9C4();
      v24 = v40;
      sub_1DB2BB804();
      (*(v30 + 8))(v16, v13);
      return (*(v39 + 8))(v20, v24);
    case 1:
      v42 = 1;
      sub_1DB27C970();
      v24 = v40;
      sub_1DB2BB804();
      (*(v31 + 8))(v12, v32);
      return (*(v39 + 8))(v20, v24);
    case 2:
      v43 = 2;
      sub_1DB27C91C();
      v23 = v33;
      v24 = v40;
      sub_1DB2BB804();
      (*(v34 + 8))(v23, v35);
      return (*(v39 + 8))(v20, v24);
  }

  v44 = 3;
  sub_1DB27C8C8();
  v26 = v36;
  v27 = v40;
  sub_1DB2BB804();
  v28 = v38;
  sub_1DB2BB864();
  (*(v37 + 8))(v26, v28);
  return (*(v39 + 8))(v20, v27);
}

unint64_t sub_1DB27C874()
{
  result = qword_1ECC29190;
  if (!qword_1ECC29190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29190);
  }

  return result;
}

unint64_t sub_1DB27C8C8()
{
  result = qword_1ECC29198;
  if (!qword_1ECC29198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29198);
  }

  return result;
}

unint64_t sub_1DB27C91C()
{
  result = qword_1ECC291A0;
  if (!qword_1ECC291A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291A0);
  }

  return result;
}

unint64_t sub_1DB27C970()
{
  result = qword_1ECC291A8;
  if (!qword_1ECC291A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291A8);
  }

  return result;
}

unint64_t sub_1DB27C9C4()
{
  result = qword_1ECC291B0;
  if (!qword_1ECC291B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291B0);
  }

  return result;
}

uint64_t Collation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC291B8, &qword_1DB2CE808);
  v51 = *(v55 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v44 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC291C0, &qword_1DB2CE810);
  v46 = *(v49 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v44 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC291C8, &qword_1DB2CE818);
  v48 = *(v50 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC291D0, &qword_1DB2CE820);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC291D8, &unk_1DB2CE828);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1DB27C874();
  v21 = v56;
  sub_1DB2BBA84();
  if (!v21)
  {
    v22 = v13;
    v44 = v10;
    v45 = 0;
    v23 = v9;
    v24 = v52;
    v25 = v53;
    v56 = v15;
    v26 = v54;
    v27 = sub_1DB2BB7D4();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1DB14B1E8();
    if (v29 == 4 || v60 != v61 >> 1)
    {
      v34 = sub_1DB2BB564();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
      *v36 = &type metadata for Collation;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
LABEL_9:
      (*(v56 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v57);
    }

    if (v29 <= 1u)
    {
      if (v29)
      {
        v62 = 1;
        sub_1DB27C970();
        v41 = v45;
        sub_1DB2BB704();
        if (!v41)
        {
          (*(v48 + 8))(v23, v50);
          (*(v56 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = 1;
          v33 = v26;
          goto LABEL_21;
        }
      }

      else
      {
        v62 = 0;
        sub_1DB27C9C4();
        v30 = v45;
        sub_1DB2BB704();
        if (!v30)
        {
          (*(v47 + 8))(v22, v44);
          (*(v56 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = 0;
          v33 = v26;
LABEL_21:
          *v33 = v31;
          v33[1] = v32;
          return __swift_destroy_boxed_opaque_existential_1(v57);
        }
      }

      goto LABEL_9;
    }

    v33 = v26;
    v39 = v56;
    if (v29 == 2)
    {
      v62 = 2;
      sub_1DB27C91C();
      v40 = v45;
      sub_1DB2BB704();
      if (!v40)
      {
        (*(v46 + 8))(v24, v49);
        v33 = v26;
        (*(v39 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v31 = 0;
        v32 = 2;
        goto LABEL_21;
      }

      (*(v39 + 8))(v18, v14);
      goto LABEL_10;
    }

    v62 = 3;
    sub_1DB27C8C8();
    v42 = v45;
    sub_1DB2BB704();
    if (!v42)
    {
      v31 = sub_1DB2BB774();
      v32 = v43;
      (*(v51 + 8))(v25, v55);
      (*(v39 + 8))(v18, v14);
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    (*(v39 + 8))(v18, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t Collation.expression.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xE600000000000000;
      result = 0x455341434F4ELL;
    }

    else if (v2 == 2)
    {
      v3 = 0xE500000000000000;
      result = 0x4D49525452;
    }

    else
    {
      v5 = *v1;
      v6 = a1;
      result = sub_1DB2B995C(34, 0xE100000000000000);
      a1 = v6;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    result = 0x5952414E4942;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t Collation.description.getter()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      return 0x5952414E4942;
    case 1:
      return 0x455341434F4ELL;
    case 2:
      return 0x4D49525452;
  }

  v3 = *v0;
  return sub_1DB2B995C(34, 0xE100000000000000);
}

uint64_t sub_1DB27D298@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xE600000000000000;
      result = 0x455341434F4ELL;
    }

    else if (v2 == 2)
    {
      v3 = 0xE500000000000000;
      result = 0x4D49525452;
    }

    else
    {
      v5 = *v1;
      v6 = a1;
      result = sub_1DB2B995C(34, 0xE100000000000000);
      a1 = v6;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    result = 0x5952414E4942;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB27D330()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      return 0x5952414E4942;
    case 1:
      return 0x455341434F4ELL;
    case 2:
      return 0x4D49525452;
  }

  v3 = *v0;
  return sub_1DB2B995C(34, 0xE100000000000000);
}

unint64_t sub_1DB27D3B4(uint64_t a1)
{
  *(a1 + 8) = sub_1DB165B9C();
  result = sub_1DB27D3E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DB27D3E4()
{
  result = qword_1ECC291E0;
  if (!qword_1ECC291E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore9CollationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB27D450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB27D4AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1DB27D560()
{
  result = qword_1ECC291E8;
  if (!qword_1ECC291E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291E8);
  }

  return result;
}

unint64_t sub_1DB27D5B8()
{
  result = qword_1ECC291F0;
  if (!qword_1ECC291F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291F0);
  }

  return result;
}

unint64_t sub_1DB27D610()
{
  result = qword_1ECC291F8;
  if (!qword_1ECC291F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291F8);
  }

  return result;
}

unint64_t sub_1DB27D668()
{
  result = qword_1ECC29200;
  if (!qword_1ECC29200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29200);
  }

  return result;
}

unint64_t sub_1DB27D6C0()
{
  result = qword_1ECC29208;
  if (!qword_1ECC29208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29208);
  }

  return result;
}

unint64_t sub_1DB27D718()
{
  result = qword_1ECC29210;
  if (!qword_1ECC29210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29210);
  }

  return result;
}

unint64_t sub_1DB27D770()
{
  result = qword_1ECC29218;
  if (!qword_1ECC29218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29218);
  }

  return result;
}

unint64_t sub_1DB27D7C8()
{
  result = qword_1ECC29220;
  if (!qword_1ECC29220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29220);
  }

  return result;
}

unint64_t sub_1DB27D820()
{
  result = qword_1ECC29228;
  if (!qword_1ECC29228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29228);
  }

  return result;
}

unint64_t sub_1DB27D878()
{
  result = qword_1ECC29230;
  if (!qword_1ECC29230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29230);
  }

  return result;
}

unint64_t sub_1DB27D8D0()
{
  result = qword_1ECC29238;
  if (!qword_1ECC29238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29238);
  }

  return result;
}

unint64_t sub_1DB27D928()
{
  result = qword_1ECC29240;
  if (!qword_1ECC29240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29240);
  }

  return result;
}

uint64_t sub_1DB27D97C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616E6962 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657361636F6ELL && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69727472 && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DB27DAD0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1DB2BB1F4();
  if (!v26)
  {
    return sub_1DB2BB0F4();
  }

  v48 = v26;
  v52 = sub_1DB2BB654();
  v39 = sub_1DB2BB664();
  sub_1DB2BB604();
  result = sub_1DB2BB1E4();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1DB2BB234();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1DB2BB644();
      result = sub_1DB2BB204();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB27DEF0(char a1)
{
  result = 7561825;
  switch(a1)
  {
    case 1:
      result = 0x646E756F72;
      break;
    case 2:
      result = 0x6D6F646E6172;
      break;
    case 3:
      result = 0x6C626D6F646E6172;
      break;
    case 4:
      result = 0x626F6C626F72657ALL;
      break;
    case 5:
      result = 0x6874676E656CLL;
      break;
    case 6:
      result = 0x7265776F6CLL;
      break;
    case 7:
      result = 0x7265707075;
      break;
    case 8:
      result = 0x6D6972746CLL;
      break;
    case 9:
      result = 0x6D69727472;
      break;
    case 10:
      result = 1835627124;
      break;
    case 11:
      result = 0x6563616C706572;
      break;
    case 12:
      result = 0x727473627573;
      break;
    case 13:
      result = 1162561868;
      break;
    case 14:
      result = 20041;
      break;
    case 15:
      result = 1112493127;
      break;
    case 16:
      result = 0x484354414DLL;
      break;
    case 17:
      result = 0x505845474552;
      break;
    case 18:
      result = 0x4554414C4C4F43;
      break;
    case 19:
      result = 0x6C6C756E6669;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DB27E0A4@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = sub_1DB27DEF0(a2);
  sub_1DB2B9D5C(a1, v5, v6, a3);
}

uint64_t sub_1DB27E110@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = sub_1DB27DEF0(a2);
  v7 = v6;
  sub_1DB2B9A70(a1, v9);
  sub_1DB2B9D5C(v9, v5, v7, a3);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t ExpressionType<>.absoluteValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 8);
  v9[3] = a1;
  v9[4] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v3, a1);
  swift_getAssociatedTypeWitness();
  sub_1DB27E0A4(v9, 0, a3);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

{
  v6 = *(a2 + 8);
  v9[3] = a1;
  v9[4] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v3, a1);
  swift_getAssociatedTypeWitness();
  sub_1DB27E0A4(v9, 0, a3);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t ExpressionType<>.round(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  if (a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BCC40;
    *(inited + 56) = a3;
    *(inited + 64) = *(a4 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, v4, a3);
    sub_1DB2B9A70(inited, v14);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1DB2BD5A0;
    *(v11 + 56) = a3;
    *(v11 + 64) = *(a4 + 8);
    v12 = __swift_allocate_boxed_opaque_existential_0((v11 + 32));
    (*(*(a3 - 8) + 16))(v12, v4, a3);
    *(v11 + 96) = MEMORY[0x1E69E6530];
    *(v11 + 104) = &protocol witness table for Int;
    *(v11 + 72) = a1;
    sub_1DB2B9A70(v11, v14);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  sub_1DB203564(v14, 0x646E756F72, 0xE500000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

{
  if (a2)
  {
    v7 = *(a4 + 8);
    v13[3] = a3;
    v13[4] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, v4, a3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = a3;
    *(inited + 64) = *(a4 + 8);
    v11 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(*(a3 - 8) + 16))(v11, v4, a3);
    *(inited + 96) = MEMORY[0x1E69E6530];
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = a1;
    sub_1DB2B9A70(inited, v13);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  sub_1DB203564(v13, 0x646E756F72, 0xE500000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static ExpressionType<>.random()@<X0>(void *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = MEMORY[0x1E69E7CC0];

  return sub_1DB27E110(v2, 2, a1);
}

uint64_t sub_1DB27E6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DB2B9A70(MEMORY[0x1E69E7CC0], v8);
  sub_1DB203564(v8, a4, a5);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t ExpressionType<>.length.getter(uint64_t a1, uint64_t a2)
{
  return sub_1DB27EDD0(a1, a2, 0x6874676E656CLL, 0xE600000000000000, sub_1DB203564);
}

{
  return sub_1DB27EDD0(a1, a2, 0x6874676E656CLL, 0xE600000000000000, sub_1DB203564);
}

uint64_t ExpressionType<>.lowercaseString.getter(uint64_t a1, uint64_t a2)
{
  return sub_1DB27EDD0(a1, a2, 0x7265776F6CLL, 0xE500000000000000, sub_1DB203564);
}

{
  return sub_1DB27EDD0(a1, a2, 0x7265776F6CLL, 0xE500000000000000, sub_1DB203564);
}

uint64_t ExpressionType<>.uppercaseString.getter(uint64_t a1, uint64_t a2)
{
  return sub_1DB27EDD0(a1, a2, 0x7265707075, 0xE500000000000000, sub_1DB203564);
}

{
  return sub_1DB27EDD0(a1, a2, 0x7265707075, 0xE500000000000000, sub_1DB203564);
}

void *ExpressionType<>.like(_:escape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  return sub_1DB27EE90(a1, a2, a3, a4, a5, a6, sub_1DB2B57D4, a7);
}

{
  return sub_1DB27EE90(a1, a2, a3, a4, a5, a6, sub_1DB2B594C, a7);
}

uint64_t ExpressionType<>.like(_:escape:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  return sub_1DB27F134(a1, a2, a3, a4, a5, sub_1DB2B57D4, a6);
}

{
  return sub_1DB27F134(a1, a2, a3, a4, a5, sub_1DB2B594C, a6);
}

uint64_t ExpressionType<>.glob(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DB27F5A8(a1, a2, a3, a4, 1112493127, 0xE400000000000000, sub_1DB2B57D4);
}

{
  return sub_1DB27F5A8(a1, a2, a3, a4, 1112493127, 0xE400000000000000, sub_1DB2B594C);
}

uint64_t ExpressionType<>.regexp(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DB27F5A8(a1, a2, a3, a4, 0x505845474552, 0xE600000000000000, sub_1DB2B57D4);
}

{
  return sub_1DB27F5A8(a1, a2, a3, a4, 0x505845474552, 0xE600000000000000, sub_1DB2B594C);
}

uint64_t ExpressionType<>.collate(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  return sub_1DB27F720(a1, a2, a3, sub_1DB2B597C);
}

{
  return sub_1DB27F720(a1, a2, a3, sub_1DB2B59AC);
}

uint64_t ExpressionType<>.ltrim(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1DB27E908(a1, a2, a3, 0x6D6972746CLL, 0xE500000000000000, sub_1DB203564);
}

{
  return sub_1DB27E908(a1, a2, a3, 0x6D6972746CLL, 0xE500000000000000, sub_1DB203564);
}

uint64_t ExpressionType<>.rtrim(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1DB27E908(a1, a2, a3, 0x6D69727472, 0xE500000000000000, sub_1DB203564);
}

{
  return sub_1DB27E908(a1, a2, a3, 0x6D69727472, 0xE500000000000000, sub_1DB203564);
}

uint64_t sub_1DB27E908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t))
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = a2;
    *(inited + 64) = *(a3 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v6, a2);
    v20[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29250, &qword_1DB2CED98);
    sub_1DB1688F0(&qword_1ECC29258, &qword_1ECC29250, &qword_1DB2CED98);
    v15 = sub_1DB2BAFE4();
    *(inited + 96) = MEMORY[0x1E69E6158];
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = v15;
    *(inited + 80) = v16;
    sub_1DB2B9A70(inited, v20);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    v17 = *(a3 + 8);
    v20[3] = a2;
    v20[4] = v17;
    v18 = __swift_allocate_boxed_opaque_existential_0(v20);
    (*(*(a2 - 8) + 16))(v18, v6, a2);
  }

  a6(v20, a4, a5);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t ExpressionType<>.trim(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = a2;
    *(inited + 64) = *(a3 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v4, a2);
    v15[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29250, &qword_1DB2CED98);
    sub_1DB1688F0(&qword_1ECC29258, &qword_1ECC29250, &qword_1DB2CED98);
    v10 = sub_1DB2BAFE4();
    *(inited + 96) = MEMORY[0x1E69E6158];
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = v10;
    *(inited + 80) = v11;
    sub_1DB2B9A70(inited, v15);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1DB2BCC40;
    *(v12 + 56) = a2;
    *(v12 + 64) = *(a3 + 8);
    v13 = __swift_allocate_boxed_opaque_existential_0((v12 + 32));
    (*(*(a2 - 8) + 16))(v13, v4, a2);
    sub_1DB2B9A70(v12, v15);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v12 + 32));
  }

  sub_1DB203564(v15, 1835627124, 0xE400000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

{
  return sub_1DB27E908(a1, a2, a3, 1835627124, 0xE400000000000000, sub_1DB203564);
}

uint64_t ExpressionType<>.replace(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB27F908(a1, a2, a3, a4, a5, a6, sub_1DB203564);
}

{
  return sub_1DB27F908(a1, a2, a3, a4, a5, a6, sub_1DB203564);
}

uint64_t ExpressionType<>.substring(_:length:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  return sub_1DB27FA94(a1, a2, a3, a4, a5, sub_1DB203564);
}

{
  return sub_1DB27FA94(a1, a2, a3, a4, a5, sub_1DB203564);
}

uint64_t ExpressionType<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DB27FCC0(a1, a2, a3, a4, ExpressionType<>.substring(_:length:));
}

{
  return sub_1DB27FCC0(a1, a2, a3, a4, ExpressionType<>.substring(_:length:));
}

uint64_t sub_1DB27EDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t))
{
  v10 = *(a2 + 8);
  v13[3] = a1;
  v13[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v5, a1);
  a5(v13, a3, a4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void *sub_1DB27EE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t, unint64_t)@<X6>, void *a8@<X8>)
{
  if (a4)
  {

    sub_1DB2BB4F4();

    v26[0] = 40;
    v26[1] = 0xE100000000000000;
    v15 = (*(a6 + 32))(a5, a6);
    MEMORY[0x1E1283490](v15);

    MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D7600);
    v16 = (*(a6 + 40))(a5, a6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    inited = swift_initStackObject();
    v18 = MEMORY[0x1E69E6158];
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = v18;
    *(inited + 64) = &protocol witness table for String;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 96) = v18;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = a3;
    *(inited + 80) = a4;

    result = sub_1DB141510(inited);
    *a8 = 40;
    a8[1] = 0xE100000000000000;
    a8[2] = v16;
  }

  else
  {
    v21 = *(a6 + 8);
    v26[3] = a5;
    v26[4] = v21;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, v8, a5);
    v25[3] = MEMORY[0x1E69E6158];
    v25[4] = &protocol witness table for String;
    v25[0] = a1;
    v25[1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(v26, v23 + 32);
    sub_1DB164980(v25, v23 + 72);

    a7(v23, 1, 1162561868, 0xE400000000000000);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v25);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return result;
}

uint64_t sub_1DB27F134@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, unint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  if (a3)
  {
    v16 = *(a5 + 8);
    v45 = a4;
    v46 = v16;
    v17 = __swift_allocate_boxed_opaque_existential_0(&v43);
    (*(*(a4 - 8) + 16))(v17, v8, a4);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    v38 = v12;
    v39 = v11;
    v42 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
    v40 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(&v43, inited + 32);
    sub_1DB164980(&v38, inited + 72);
    v35[0] = 32;
    v35[1] = 0xE100000000000000;

    MEMORY[0x1E1283490](1162561868, 0xE400000000000000);
    MEMORY[0x1E1283490](32, 0xE100000000000000);
    sub_1DB2B9A70(inited, v35);

    v19 = v36;
    v20 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v20 + 24))(v34, v19, v20);
    v22 = v34[0];
    v21 = v34[1];
    v23 = v34[2];
    __swift_destroy_boxed_opaque_existential_1(v35);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(&v38);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    v43 = 40;
    v44 = 0xE100000000000000;

    MEMORY[0x1E1283490](v22, v21);

    MEMORY[0x1E1283490](0x2045504143534520, 0xEA0000000000293FLL);
    v24 = v43;
    v25 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v26 = swift_initStackObject();
    v27 = MEMORY[0x1E69E6158];
    *(v26 + 16) = xmmword_1DB2BCC40;
    *(v26 + 56) = v27;
    *(v26 + 64) = &protocol witness table for String;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    v43 = v23;

    sub_1DB141510(v26);

    v29 = v43;
    *a7 = v24;
    a7[1] = v25;
    a7[2] = v29;
  }

  else
  {
    v31 = *(a5 + 8);
    v45 = a4;
    v46 = v31;
    v32 = __swift_allocate_boxed_opaque_existential_0(&v43);
    (*(*(a4 - 8) + 16))(v32, v8, a4);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    v38 = v12;
    v39 = v11;
    v42 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
    v40 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(&v43, v33 + 32);
    sub_1DB164980(&v38, v33 + 72);

    a6(v33, 1, 1162561868, 0xE400000000000000);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(&v38);
    return __swift_destroy_boxed_opaque_existential_1(&v43);
  }

  return result;
}

uint64_t sub_1DB27F5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *(a4 + 8);
  v19[3] = a3;
  v19[4] = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, v7, a3);
  v18[3] = MEMORY[0x1E69E6158];
  v18[4] = &protocol witness table for String;
  v18[0] = a1;
  v18[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v19, inited + 32);
  sub_1DB164980(v18, inited + 72);

  a7(inited, 1, a5, a6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1DB27F720(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a3 + 8);
  v14[3] = a2;
  v14[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v4, a2);
  v13[3] = &type metadata for Collation;
  v13[4] = sub_1DB280C98();
  v13[0] = v7;
  v13[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v14, inited + 32);
  sub_1DB164980(v13, inited + 72);
  sub_1DB280CEC(v7, v8);
  a4(inited, 1, 0x4554414C4C4F43, 0xE700000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1DB27F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t, unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD590;
  *(inited + 56) = a5;
  *(inited + 64) = *(a6 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, v7, a5);
  v17 = MEMORY[0x1E69E6158];
  *(inited + 96) = MEMORY[0x1E69E6158];
  *(inited + 104) = &protocol witness table for String;
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  *(inited + 136) = v17;
  *(inited + 144) = &protocol witness table for String;
  *(inited + 112) = a3;
  *(inited + 120) = a4;

  sub_1DB2B9A70(inited, v19);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  a7(v19, 0x6563616C706572, 0xE700000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1DB27FA94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  if (a3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = a4;
    *(inited + 64) = *(a5 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, v6, a4);
    *(inited + 96) = MEMORY[0x1E69E6530];
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = a1;
    sub_1DB2B9A70(inited, v19);
  }

  else
  {
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1DB2BD590;
    *(v15 + 56) = a4;
    *(v15 + 64) = *(a5 + 8);
    v16 = __swift_allocate_boxed_opaque_existential_0((v15 + 32));
    (*(*(a4 - 8) + 16))(v16, v6, a4);
    v17 = MEMORY[0x1E69E6530];
    *(v15 + 96) = MEMORY[0x1E69E6530];
    *(v15 + 104) = &protocol witness table for Int;
    *(v15 + 72) = a1;
    *(v15 + 136) = v17;
    *(v15 + 144) = &protocol witness table for Int;
    *(v15 + 112) = a2;
    sub_1DB2B9A70(v15, v19);
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  a6(v19, 0x727473627573, 0xE600000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1DB27FCC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v5 = __OFSUB__(a2, result);
  v6 = a2 - result;
  if (!v5)
  {
    return a5(result, v6, 0, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t Collection<>.contains(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = sub_1DB2BB1F4();
  v39[0] = sub_1DB280D00(0x3F, 0xE100000000000000, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
  v12 = sub_1DB2BAD24();
  v14 = v13;

  v15 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  v39[3] = type metadata accessor for Expression();
  v39[0] = v8;
  v39[1] = v9;
  v39[4] = swift_getWitnessTable();
  v39[2] = v10;
  v34 = 40;
  v35 = 0xE100000000000000;

  MEMORY[0x1E1283490](v12, v14);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v31 = a2;
  v32 = a3;
  v33 = a4;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = KeyPath;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = sub_1DB280D9C;
  v30 = v17;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v20 = sub_1DB27DAD0(sub_1DB280DA4, v25, a2, v18, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], v19);

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v21 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  v34 = 40;
  v35 = 0xE100000000000000;
  v38 = v21;
  v36 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v39, inited + 32);
  sub_1DB164980(&v34, inited + 72);
  sub_1DB2B57D4(inited, 1, 20041, 0xE200000000000000, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(&v34);
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = sub_1DB2BB1F4();
  v39[0] = sub_1DB280D00(0x3F, 0xE100000000000000, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
  v12 = sub_1DB2BAD24();
  v14 = v13;

  v15 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  sub_1DB2BB364();
  v39[3] = type metadata accessor for Expression();
  v39[0] = v8;
  v39[1] = v9;
  v39[4] = swift_getWitnessTable();
  v39[2] = v10;
  v34 = 40;
  v35 = 0xE100000000000000;

  MEMORY[0x1E1283490](v12, v14);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v31 = a2;
  v32 = a3;
  v33 = a4;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = KeyPath;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = sub_1DB280E04;
  v30 = v17;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v20 = sub_1DB27DAD0(sub_1DB280DEC, v25, a2, v18, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], v19);

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v21 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  v34 = 40;
  v35 = 0xE100000000000000;
  v38 = v21;
  v36 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v39, inited + 32);
  sub_1DB164980(&v34, inited + 72);
  sub_1DB2B594C(inited, 1, 20041, 0xE200000000000000, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(&v34);
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_1DB28001C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v15 - v11;
  a2(a1);
  a4[3] = AssociatedTypeWitness;
  a4[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  return (*(v9 + 32))(boxed_opaque_existential_0, v12, AssociatedTypeWitness);
}

uint64_t String.like(_:escape:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  if (a3)
  {
    v12 = MEMORY[0x1E69E6158];
    v36 = MEMORY[0x1E69E6158];
    v37 = &protocol witness table for String;
    v34 = a4;
    v35 = a5;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    v29 = v8;
    v30 = v7;
    v33 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
    v31 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(&v34, inited + 32);
    sub_1DB164980(&v29, inited + 72);
    v26[0] = 32;
    v26[1] = 0xE100000000000000;

    MEMORY[0x1E1283490](1162561868, 0xE400000000000000);
    MEMORY[0x1E1283490](32, 0xE100000000000000);
    sub_1DB2B9A70(inited, v26);

    v14 = v27;
    v15 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v15 + 24))(v25, v14, v15);
    v17 = v25[0];
    v16 = v25[1];
    v18 = v25[2];
    __swift_destroy_boxed_opaque_existential_1(v26);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(&v29);
    __swift_destroy_boxed_opaque_existential_1(&v34);
    v34 = 40;
    v35 = 0xE100000000000000;

    MEMORY[0x1E1283490](v17, v16);

    MEMORY[0x1E1283490](0x2045504143534520, 0xEA0000000000293FLL);
    v19 = v34;
    v20 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_1DB2BCC40;
    *(v21 + 56) = v12;
    *(v21 + 64) = &protocol witness table for String;
    *(v21 + 32) = a2;
    *(v21 + 40) = a3;
    v34 = v18;

    sub_1DB141510(v21);

    v23 = v34;
    *a6 = v19;
    a6[1] = v20;
    a6[2] = v23;
  }

  else
  {
    v36 = MEMORY[0x1E69E6158];
    v37 = &protocol witness table for String;
    v34 = a4;
    v35 = a5;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    v29 = v8;
    v30 = v7;
    v33 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
    v31 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(&v34, v24 + 32);
    sub_1DB164980(&v29, v24 + 72);

    sub_1DB2B57D4(v24, 1, 1162561868, 0xE400000000000000, a6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(&v29);
    return __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  return result;
}

uint64_t ?? infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB2BB364();
  *(inited + 56) = type metadata accessor for Expression();
  WitnessTable = swift_getWitnessTable();
  *(inited + 32) = v10;
  *(inited + 64) = WitnessTable;
  *(inited + 40) = v9;
  *(inited + 48) = v11;
  *(inited + 96) = a3;
  *(inited + 104) = *(a4 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 72));
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);

  sub_1DB27E110(inited, 19, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

uint64_t ?? infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB2BB364();
  *(inited + 56) = type metadata accessor for Expression();
  *(inited + 64) = swift_getWitnessTable();
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 96) = type metadata accessor for Expression();
  *(inited + 104) = swift_getWitnessTable();
  *(inited + 72) = v7;
  *(inited + 80) = v6;
  *(inited + 88) = v8;

  sub_1DB27E110(inited, 19, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB2BB364();
  v10 = type metadata accessor for Expression();
  *(inited + 56) = v10;
  WitnessTable = swift_getWitnessTable();
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  *(inited + 96) = v10;
  *(inited + 104) = WitnessTable;
  *(inited + 64) = WitnessTable;
  *(inited + 72) = v6;
  *(inited + 80) = v7;
  *(inited + 88) = v8;

  sub_1DB27E110(inited, 19, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

unint64_t sub_1DB280C98()
{
  result = qword_1ECC29248;
  if (!qword_1ECC29248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29248);
  }

  return result;
}

uint64_t sub_1DB280CEC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void *sub_1DB280D00(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1DB2BB104();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1DB280DBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 48);
  return sub_1DB28001C(a1, *(v2 + 40), *(v2 + 24), a2);
}

uint64_t sub_1DB280E0C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t (*Connection.createFunction<A>(_:deterministic:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a4;
  v14[5] = a5;

  v15 = sub_1DB2811F4(a1, a2, 0, a3, sub_1DB2811C4, v14, a6, a7);
  v17 = v16;

  if (!v20)
  {
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = v15;
    v19[5] = v17;
    return sub_1DB281304;
  }

  return result;
}

{
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a4;
  v14[5] = a5;

  v15 = sub_1DB281444(a1, a2, 0, a3, sub_1DB284E40, v14, a6, a7);
  v17 = v16;

  if (!v20)
  {
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = v15;
    v19[5] = v17;
    return sub_1DB284E70;
  }

  return result;
}

uint64_t sub_1DB2811C4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t (*sub_1DB2811F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a5;
  v16[5] = a6;

  Connection.createFunction(_:argumentCount:deterministic:_:)(a1, a2, a3, 0, a4, sub_1DB284DB0, v16);

  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = a2;

  return sub_1DB284DBC;
}

uint64_t sub_1DB281304()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1(MEMORY[0x1E69E7CC0]);
}

uint64_t (*sub_1DB281444(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a5;
  v16[5] = a6;

  Connection.createFunction(_:argumentCount:deterministic:_:)(a1, a2, a3, 0, a4, sub_1DB284D98, v16);

  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = a2;

  return sub_1DB284DA4;
}

uint64_t (*Connection.createFunction<A, B>(_:deterministic:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_1DB2811F4(a1, a2, 1, a3, sub_1DB28168C, v16, a6, a8);
  v19 = v18;

  if (!v23)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = v17;
    v21[7] = v19;
    return sub_1DB2816A4;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_1DB2811F4(a1, a2, 1, a3, sub_1DB2817F4, v16, a6, a8);
  v19 = v18;

  if (!v23)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = v17;
    v21[7] = v19;
    return sub_1DB281878;
  }

  return result;
}

uint64_t (*Connection.createFunction<A, B>(_:deterministic:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_1DB281444(a1, a2, 1, a3, sub_1DB284DC8, v16, a6, a8);
  v19 = v18;

  if (!v23)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = v17;
    v21[7] = v19;
    return sub_1DB284E38;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_1DB281444(a1, a2, 1, a3, sub_1DB281F38, v16, a6, a8);
  v19 = v18;

  if (!v23)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = v17;
    v21[7] = v19;
    return sub_1DB284E3C;
  }

  return result;
}

uint64_t sub_1DB2819F4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](a1);
  v13 = &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(result + 16))
  {
    result = sub_1DB2BA144(result + 32, a5, v11, &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (!v5)
    {
      a2(v13);
      return (*(v8 + 8))(v13, a5);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB281AF4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1DB2819F4(a1, *(v1 + 48), *(v1 + 56), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1DB281B18(uint64_t *a1, void (*a2)(uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB2BCC40;
  *(v6 + 56) = type metadata accessor for Expression();
  *(v6 + 64) = swift_getWitnessTable();
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v5;

  a2(v6);
}

uint64_t sub_1DB281D38@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, void (*a10)(char *, char *))
{
  v32 = a6;
  v17 = sub_1DB2BB364();
  v18 = *(*(v17 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = v27 - v21;
  if (*(a1 + 16))
  {
    v27[0] = v20;
    v27[1] = a8;
    v28 = result;
    v29 = a3;
    v30 = a2;
    v23 = swift_allocObject();
    v31 = v27;
    *(v23 + 16) = a5;
    *(v23 + 24) = a7;
    v24 = MEMORY[0x1EEE9AC00](v23);
    v27[-6] = a4;
    v27[-5] = a5;
    v27[-4] = v32;
    v27[-3] = a7;
    v27[-2] = a9;
    v27[-1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
    v26 = v33;
    sub_1DB280E0C(a10, &v27[-8], v25, a5, &v34, v22);

    if (!v26)
    {
      v30(v22);
      return (*(v27[0] + 8))(v22, v28);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB281F80(uint64_t *a1, void (*a2)(uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB2BCC40;
  sub_1DB2BB364();
  *(v6 + 56) = type metadata accessor for Expression();
  *(v6 + 64) = swift_getWitnessTable();
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v5;

  a2(v6);
}

uint64_t (*Connection.createFunction<A, B, C>(_:deterministic:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))(uint64_t a1, uint64_t a2)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB2811F4(a1, a2, 2, a3, sub_1DB2821B0, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB2821C8;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB2811F4(a1, a2, 2, a3, sub_1DB28231C, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB2823C4;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB2811F4(a1, a2, 2, a3, sub_1DB282554, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB2825B0;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB2811F4(a1, a2, 2, a3, sub_1DB282F68, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB282FD0;
  }

  return result;
}

uint64_t (*Connection.createFunction<A, B, C>(_:deterministic:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))(uint64_t, uint64_t)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB281444(a1, a2, 2, a3, sub_1DB284DE0, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB284DF8;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB281444(a1, a2, 2, a3, sub_1DB2833F8, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB284DFC;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB281444(a1, a2, 2, a3, sub_1DB2839C8, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB284E00;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB281444(a1, a2, 2, a3, sub_1DB284088, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB284E04;
  }

  return result;
}

uint64_t sub_1DB282704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(*(a6 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  result = MEMORY[0x1EEE9AC00](v14);
  v25 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(result + 16);
  if (!v26)
  {
    __break(1u);
    goto LABEL_9;
  }

  v29 = v24;
  v28 = v21;
  result = sub_1DB2BA144(a1 + 32, a5, v22, &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v9)
  {
    return result;
  }

  if (v26 == 1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1DB2BA144(a1 + 72, a6, a9, v16);
  v28(v25, v16);
  (*(v29 + 8))(v16, a6);
  return (*(v18 + 8))(v25, a5);
}

uint64_t sub_1DB282910(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BD5A0;
  *(v9 + 56) = type metadata accessor for Expression();
  *(v9 + 64) = swift_getWitnessTable();
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v9 + 96) = type metadata accessor for Expression();
  *(v9 + 104) = swift_getWitnessTable();
  *(v9 + 72) = v6;
  *(v9 + 80) = v7;
  *(v9 + 88) = v8;

  a3(v9);
}

uint64_t sub_1DB282B8C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v57 = a7;
  v58 = a8;
  v59 = a4;
  v16 = sub_1DB2BB364();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v42 - v19;
  v20 = sub_1DB2BB364();
  v21 = *(*(v20 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = &v42 - v24;
  if (!*(a1 + 16))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v53 = *(a1 + 16);
  v50 = v23;
  v51 = result;
  v45 = v17;
  v46 = a9;
  v47 = v16;
  v48 = a3;
  v49 = a2;
  v26 = swift_allocObject();
  v55 = &v42;
  v27 = v58;
  *(v26 + 16) = a5;
  *(v26 + 24) = v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  *(&v42 - 8) = v59;
  *(&v42 - 7) = a5;
  v29 = v57;
  *(&v42 - 6) = a6;
  *(&v42 - 5) = v29;
  *(&v42 - 4) = v30;
  *(&v42 - 3) = a10;
  v52 = a10;
  *(&v42 - 2) = sub_1DB284E58;
  *(&v42 - 1) = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
  v33 = v56;
  sub_1DB280E0C(sub_1DB284E08, (&v42 - 10), v32, a5, &v60, v25);

  if (!v33)
  {
    v43 = v25;
    v44 = v32;
    v56 = v31;
    v34 = v59;
    v35 = v52;
    if (v53 != 1)
    {
      v36 = swift_allocObject();
      *(v36 + 16) = a6;
      *(v36 + 24) = v35;
      v37 = MEMORY[0x1EEE9AC00](v36);
      *(&v42 - 8) = v34;
      *(&v42 - 7) = a5;
      v39 = v57;
      v38 = v58;
      *(&v42 - 6) = a6;
      *(&v42 - 5) = v39;
      *(&v42 - 4) = v38;
      *(&v42 - 3) = v35;
      *(&v42 - 2) = sub_1DB284E58;
      *(&v42 - 1) = v37;
      v40 = v54;
      sub_1DB280E0C(sub_1DB284E08, (&v42 - 10), v44, a6, &v60, v54);

      v41 = v43;
      v49(v43, v40);
      (*(v45 + 8))(v40, v47);
      return (*(v50 + 8))(v41, v51);
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DB283124@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(char *, char *))
{
  v47 = a7;
  v46 = a4;
  v20 = *(a6 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v43 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DB2BB364();
  v24 = *(*(v23 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v23);
  v28 = v36 - v27;
  v29 = *(a1 + 16);
  if (!v29)
  {
    __break(1u);
    goto LABEL_7;
  }

  v41 = result;
  v42 = v29;
  v39 = a2;
  v40 = v26;
  v36[1] = a9;
  v37 = v20;
  v38 = a3;
  v44 = a13;
  v30 = swift_allocObject();
  v45 = v36;
  *(v30 + 16) = a5;
  *(v30 + 24) = a8;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v32 = v47;
  v36[-8] = v46;
  v36[-7] = a5;
  v36[-6] = a6;
  v36[-5] = v32;
  v36[-4] = a8;
  v36[-3] = a10;
  v36[-2] = a12;
  v36[-1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
  v34 = v48;
  sub_1DB280E0C(v44, &v36[-10], v33, a5, &v49, v28);

  if (v34)
  {
    return result;
  }

  if (v42 == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v35 = v43;
  sub_1DB2BA144(a1 + 72, a6, a10, v43);
  v39(v28, v35);
  (*(v37 + 8))(v35, a6);
  return (*(v40 + 8))(v28, v41);
}

uint64_t sub_1DB283454(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BD5A0;
  sub_1DB2BB364();
  *(v9 + 56) = type metadata accessor for Expression();
  *(v9 + 64) = swift_getWitnessTable();
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v9 + 96) = type metadata accessor for Expression();
  *(v9 + 104) = swift_getWitnessTable();
  *(v9 + 72) = v6;
  *(v9 + 80) = v7;
  *(v9 + 88) = v8;

  a3(v9);
}

uint64_t sub_1DB2836DC@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(char *, char *))
{
  v45 = a4;
  v46 = a7;
  v43 = a9;
  v20 = sub_1DB2BB364();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v47 = &v36 - v23;
  v24 = *(*(a5 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v22);
  v29 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  if (!v30)
  {
    __break(1u);
    goto LABEL_7;
  }

  v44 = v28;
  v41 = v27;
  v42 = result;
  result = sub_1DB2BA144(a1 + 32, a5, a8, &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v13)
  {
    return result;
  }

  if (v30 == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v36 = a3;
  v37 = a2;
  v38 = a12;
  v39 = a13;
  v31 = swift_allocObject();
  v40 = &v36;
  *(v31 + 16) = a6;
  *(v31 + 24) = a10;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v33 = v46;
  *(&v36 - 8) = v45;
  *(&v36 - 7) = a5;
  *(&v36 - 6) = a6;
  *(&v36 - 5) = v33;
  *(&v36 - 4) = a8;
  *(&v36 - 3) = a10;
  *(&v36 - 2) = v38;
  *(&v36 - 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
  v35 = v47;
  sub_1DB280E0C(v39, (&v36 - 10), v34, a6, &v48, v47);

  v37(v29, v35);
  (*(v41 + 8))(v35, v42);
  return (*(v44 + 8))(v29, a5);
}

uint64_t sub_1DB283A24(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BD5A0;
  *(v9 + 56) = type metadata accessor for Expression();
  *(v9 + 64) = swift_getWitnessTable();
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  sub_1DB2BB364();
  *(v9 + 96) = type metadata accessor for Expression();
  *(v9 + 104) = swift_getWitnessTable();
  *(v9 + 72) = v6;
  *(v9 + 80) = v7;
  *(v9 + 88) = v8;

  a3(v9);
}

uint64_t sub_1DB283CAC@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v57 = a7;
  v58 = a8;
  v59 = a4;
  v16 = sub_1DB2BB364();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v42 - v19;
  v20 = sub_1DB2BB364();
  v21 = *(*(v20 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = &v42 - v24;
  if (!*(a1 + 16))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v53 = *(a1 + 16);
  v50 = v23;
  v51 = result;
  v45 = v17;
  v46 = a9;
  v47 = v16;
  v48 = a3;
  v49 = a2;
  v26 = swift_allocObject();
  v55 = &v42;
  v27 = v58;
  *(v26 + 16) = a5;
  *(v26 + 24) = v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  *(&v42 - 8) = v59;
  *(&v42 - 7) = a5;
  v29 = v57;
  *(&v42 - 6) = a6;
  *(&v42 - 5) = v29;
  *(&v42 - 4) = v30;
  *(&v42 - 3) = a10;
  v52 = a10;
  *(&v42 - 2) = sub_1DB284CDC;
  *(&v42 - 1) = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
  v33 = v56;
  sub_1DB280E0C(sub_1DB284E08, (&v42 - 10), v32, a5, &v60, v25);

  if (!v33)
  {
    v43 = v25;
    v44 = v32;
    v56 = v31;
    v34 = v59;
    v35 = v52;
    if (v53 != 1)
    {
      v36 = swift_allocObject();
      *(v36 + 16) = a6;
      *(v36 + 24) = v35;
      v37 = MEMORY[0x1EEE9AC00](v36);
      *(&v42 - 8) = v34;
      *(&v42 - 7) = a5;
      v39 = v57;
      v38 = v58;
      *(&v42 - 6) = a6;
      *(&v42 - 5) = v39;
      *(&v42 - 4) = v38;
      *(&v42 - 3) = v35;
      *(&v42 - 2) = sub_1DB284E58;
      *(&v42 - 1) = v37;
      v40 = v54;
      sub_1DB280E0C(sub_1DB284CF8, (&v42 - 10), v44, a6, &v60, v54);

      v41 = v43;
      v49(v43, v40);
      (*(v45 + 8))(v40, v47);
      return (*(v50 + 8))(v41, v51);
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DB2840B4(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BD5A0;
  sub_1DB2BB364();
  *(v9 + 56) = type metadata accessor for Expression();
  *(v9 + 64) = swift_getWitnessTable();
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  sub_1DB2BB364();
  *(v9 + 96) = type metadata accessor for Expression();
  *(v9 + 104) = swift_getWitnessTable();
  *(v9 + 72) = v6;
  *(v9 + 80) = v7;
  *(v9 + 88) = v8;

  a3(v9);
}

uint64_t (*Connection.createFunction<A, B, C, D>(_:deterministic:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13))(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a10;
  v17[7] = a11;
  v17[8] = a12;
  v17[9] = a13;
  v17[10] = a4;
  v17[11] = a5;

  v18 = a6;
  v19 = sub_1DB2811F4(a1, a2, 3, a3, sub_1DB28460C, v17, a6, a10);
  v21 = v20;

  if (!v28)
  {
    v23 = swift_allocObject();
    v23[2] = v18;
    v23[3] = a7;
    v23[4] = a8;
    v23[5] = a9;
    v23[6] = a10;
    v23[7] = a11;
    v23[8] = a12;
    v23[9] = a13;
    v23[10] = v19;
    v23[11] = v21;
    return sub_1DB2847DC;
  }

  return result;
}

uint64_t sub_1DB284370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = a7;
  v15 = *(*(a7 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  result = MEMORY[0x1EEE9AC00](v21);
  v34 = v38 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(result + 16);
  if (!v35)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v38[1] = v33;
  v39 = v31;
  v41 = v28;
  v42 = v32;
  v40 = v29;
  result = sub_1DB2BA144(a1 + 32, a5, a9, v38 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v11)
  {
    return result;
  }

  if (v35 == 1)
  {
    goto LABEL_8;
  }

  result = sub_1DB2BA144(a1 + 72, a6, a10, v23);
  if (v35 < 3)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v36 = a1 + 112;
  v37 = v43;
  sub_1DB2BA144(v36, v43, a11, v18);
  v41(v34, v23, v18);
  (*(v39 + 8))(v18, v37);
  (*(v42 + 8))(v23, a6);
  return (*(v25 + 8))(v34, a5);
}

uint64_t sub_1DB28464C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a2[1];
  v13 = *a2;
  v8 = a2[2];
  v9 = a3[1];
  v14 = *a3;
  v10 = a3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB2BD590;
  *(v11 + 56) = type metadata accessor for Expression();
  *(v11 + 64) = swift_getWitnessTable();
  *(v11 + 32) = v4;
  *(v11 + 40) = v5;
  *(v11 + 48) = v6;
  *(v11 + 96) = type metadata accessor for Expression();
  *(v11 + 104) = swift_getWitnessTable();
  *(v11 + 72) = v13;
  *(v11 + 80) = v7;
  *(v11 + 88) = v8;
  *(v11 + 136) = type metadata accessor for Expression();
  *(v11 + 144) = swift_getWitnessTable();
  *(v11 + 112) = v14;
  *(v11 + 120) = v9;
  *(v11 + 128) = v10;

  a4(v11);
}

uint64_t sub_1DB2847DC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 88);
  v11 = *(v3 + 72);
  v9 = *(v3 + 40);
  v10 = *(v3 + 56);
  return sub_1DB28464C(a1, a2, a3, *(v3 + 80));
}

uint64_t sub_1DB28481C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  v13 = *(a3 + 56);
  a4[3] = swift_getAssociatedTypeWitness();
  a4[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(a4);
  v13(a2, a3);
  return (*(v7 + 8))(v11, a2);
}

uint64_t sub_1DB28498C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1DB2B995C(34, 0xE100000000000000);
  v6 = v5;
  sub_1DB2B9A70(a1, v8);
  sub_1DB2B9D5C(v8, v4, v6, a2);

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DB284A24@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1DB2BB364();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  a2(a1);
  v15 = *(a3 - 8);
  if ((*(v15 + 48))(v14, 1, a3) == 1)
  {
    result = (*(v11 + 8))(v14, v10);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    v17 = *(a4 + 56);
    *(a5 + 24) = swift_getAssociatedTypeWitness();
    *(a5 + 32) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0(a5);
    v17(a3, a4);
    return (*(v15 + 8))(v14, a3);
  }

  return result;
}

uint64_t sub_1DB284C38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1DB2B995C(34, 0xE100000000000000);
  v6 = v5;
  sub_1DB2B9A70(a1, v8);
  sub_1DB2BB364();
  sub_1DB2B9D5C(v8, v4, v6, a2);

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DB284D10(uint64_t a1, void *a2)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1DB284D60(uint64_t a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1DB284DA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_1DB284C38(a1, a2);
}

uint64_t sub_1DB284DB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[5];
  return sub_1DB28481C(a1, v2[2], v2[3], a2);
}

uint64_t sub_1DB284DBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_1DB28498C(a1, a2);
}

uint64_t static DateFunctions.date(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    sub_1DB280D00(0x3F, 0xE100000000000000, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB138A00();
    v8 = sub_1DB2BAD24();
    v10 = v9;

    MEMORY[0x1E1283490](v8, v10);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v12 = 0x202C3F2865746164;
    v11 = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BCC40;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v17 = inited;

    sub_1DB1413F4(v14);
    v15 = sub_1DB20F850(v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB2BCC40;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = &protocol witness table for String;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v11 = 0xE700000000000000;
    v12 = 0x293F2865746164;
  }

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v15;
  return result;
}

uint64_t static DateFunctions.time(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    sub_1DB280D00(0x3F, 0xE100000000000000, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB138A00();
    v8 = sub_1DB2BAD24();
    v10 = v9;

    MEMORY[0x1E1283490](v8, v10);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v12 = 0x202C3F28656D6974;
    v11 = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BCC40;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v17 = inited;

    sub_1DB1413F4(v14);
    v15 = sub_1DB20F850(v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB2BCC40;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = &protocol witness table for String;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v11 = 0xE700000000000000;
    v12 = 0x293F28656D6974;
  }

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v15;
  return result;
}

uint64_t static DateFunctions.datetime(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    sub_1DB280D00(0x3F, 0xE100000000000000, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB138A00();
    v8 = sub_1DB2BAD24();
    v10 = v9;

    strcpy(v17, "datetime(?, ");
    BYTE5(v17[1]) = 0;
    HIWORD(v17[1]) = -5120;
    MEMORY[0x1E1283490](v8, v10);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v12 = v17[0];
    v11 = v17[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BCC40;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v17[0] = inited;

    sub_1DB1413F4(v14);
    v15 = sub_1DB20F850(v17[0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB2BCC40;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = &protocol witness table for String;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v11 = 0xEB00000000293F28;
    v12 = 0x656D697465746164;
  }

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v15;
  return result;
}

uint64_t static DateFunctions.julianday(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    sub_1DB280D00(0x3F, 0xE100000000000000, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB138A00();
    v8 = sub_1DB2BAD24();
    v10 = v9;

    strcpy(v17, "julianday(?, ");
    HIWORD(v17[1]) = -4864;
    MEMORY[0x1E1283490](v8, v10);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v12 = v17[0];
    v11 = v17[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BCC40;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v17[0] = inited;

    sub_1DB1413F4(v14);
    v15 = sub_1DB20F850(v17[0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB2BCC40;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = &protocol witness table for String;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v11 = 0xEC000000293F2879;
    v12 = 0x61646E61696C756ALL;
  }

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v15;
  return result;
}

uint64_t static DateFunctions.strftime(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(a5 + 16);
  if (v11)
  {
    sub_1DB280D00(0x3F, 0xE100000000000000, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB138A00();
    v12 = sub_1DB2BAD24();
    v14 = v13;

    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v12, v14);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v15 = 0xEF202C3F202C3F28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = a3;
    *(inited + 56) = a4;
    v21 = inited;

    sub_1DB1413F4(v17);
    v18 = sub_1DB20F850(v21);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB2BD5A0;
    v20 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = &protocol witness table for String;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    *(v18 + 96) = v20;
    *(v18 + 104) = &protocol witness table for String;
    *(v18 + 72) = a3;
    *(v18 + 80) = a4;

    v15 = 0xEE00293F202C3F28;
  }

  *a6 = 0x656D697466727473;
  a6[1] = v15;
  a6[2] = v18;
  return result;
}

uint64_t sub_1DB285830(void (*a1)(uint64_t, uint64_t, void))
{
  type metadata accessor for DateFunctions();
  if (qword_1ECC26C50 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECC29568;
  v3 = sub_1DB2BA8C4();
  v4 = [v2 stringFromDate_];

  v5 = sub_1DB2BAD94();
  v7 = v6;

  a1(v5, v7, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1DB285970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];

  MEMORY[0x1E1283490](v5, v6);
  result = MEMORY[0x1E1283490](41, 0xE100000000000000);
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v7;
  return result;
}

uint64_t Expression<A>.timestamp.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](v3, v4);
  result = MEMORY[0x1E1283490](0x544E492053412029, 0xED00002952454745);
  *a1 = 0xD000000000000015;
  a1[1] = 0x80000001DB2D7620;
  a1[2] = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB285AE4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DB2BA904();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 16) = xmmword_1DB2BCC40;
  *(v9 + 56) = v10;
  *(v9 + 64) = &protocol witness table for String;
  if (qword_1ECC26C50 != -1)
  {
    swift_once();
  }

  v11 = qword_1ECC29568;
  v12 = sub_1DB2BA8C4();
  v13 = [v11 stringFromDate_];

  v14 = sub_1DB2BAD94();
  v16 = v15;

  *(v9 + 32) = v14;
  *(v9 + 40) = v16;
  result = (*(v5 + 8))(v8, v4);
  *a1 = 63;
  a1[1] = 0xE100000000000000;
  a1[2] = v9;
  return result;
}

uint64_t sub_1DB285CA4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB2BCC40;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = &protocol witness table for String;
  *(v11 + 32) = a2();
  *(v11 + 40) = v12;
  result = (*(v7 + 8))(v10, v6);
  *a3 = 63;
  a3[1] = 0xE100000000000000;
  a3[2] = v11;
  return result;
}

uint64_t sub_1DB285DFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB2BCC40;
  *(v4 + 56) = &type metadata for Blob;
  *(v4 + 64) = sub_1DB138CA8();
  *(v4 + 32) = a1;

  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

double sub_1DB285E88@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1DB2BCC40;
  *(v4 + 56) = MEMORY[0x1E69E7360];
  *(v4 + 64) = &protocol witness table for Int64;
  *(v4 + 32) = a1;
  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

double sub_1DB285F00@<D0>(void *a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1DB2BCC40;
  *(v4 + 56) = MEMORY[0x1E69E63B0];
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a2;
  *a1 = 63;
  a1[1] = 0xE100000000000000;
  a1[2] = v4;
  return result;
}

double sub_1DB285F80@<D0>(char a1@<W0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v4 = swift_allocObject();
  *&result = 1;
  v6 = MEMORY[0x1E69E7360];
  *(v4 + 16) = xmmword_1DB2BCC40;
  *(v4 + 56) = v6;
  *(v4 + 64) = &protocol witness table for Int64;
  *(v4 + 32) = a1 & 1;
  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

uint64_t sub_1DB285FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB2BCC40;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = &protocol witness table for String;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *a3 = 63;
  a3[1] = 0xE100000000000000;
  a3[2] = v6;
}

uint64_t sub_1DB286094@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB2BCC40;
  *(v6 + 56) = &type metadata for Blob;
  *(v6 + 64) = sub_1DB138CA8();
  sub_1DB226094(a1, a2);
  result = sub_1DB2B8F38(a1, a2, a1, a2, (v6 + 32));
  *a3 = 63;
  a3[1] = 0xE100000000000000;
  a3[2] = v6;
  return result;
}

uint64_t Value.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Expression();
  (*(v7 + 16))(v10, v3, a1);
  WitnessTable = swift_getWitnessTable();
  ExpressionType<>.init(value:)(v10, v11, WitnessTable, a2);
  v18[0] = v18[3];
  v18[1] = v18[4];
  v18[2] = v18[5];
  v13 = (*(WitnessTable + 32))(v11, WitnessTable);
  v15 = v14;
  v16 = (*(WitnessTable + 40))(v11, WitnessTable);
  *a3 = v13;
  a3[1] = v15;
  a3[2] = v16;
}

uint64_t Expression.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1DB286324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB2BAA34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v64 - v10;
  if (qword_1EE13F6D8 != -1)
  {
LABEL_61:
    swift_once();
  }

  v12 = sub_1DB2BAA64();
  __swift_project_value_buffer(v12, qword_1EE14C880);
  sub_1DB2BAA24();
  v13 = sub_1DB2BAA44();
  v14 = sub_1DB2BB2F4();
  if (sub_1DB2BB314())
  {
    v15 = swift_slowAlloc();
    v69 = a2;
    v16 = v15;
    *v15 = 0;
    v17 = sub_1DB2BAA14();
    _os_signpost_emit_with_name_impl(&dword_1DB132000, v13, v14, v17, "asSQL", "", v16, 2u);
    a2 = v69;
    MEMORY[0x1E1284BF0](v16, -1, -1);
  }

  (*(v5 + 16))(v9, v11, v4);
  v18 = sub_1DB2BAAA4();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v64[1] = sub_1DB2BAA94();
  (*(v5 + 8))(v11, v4);
  v86 = 0;
  v87 = 0xE000000000000000;
  (*(a2 + 24))(&v81, a1, a2);
  v4 = v81;
  v5 = v82;
  v21 = v83;
  if ((v82 & 0x2000000000000000) != 0)
  {
    v11 = (HIBYTE(v82) & 0xF);
  }

  else
  {
    v11 = (v81 & 0xFFFFFFFFFFFFLL);
  }

  v65 = v83;
  if (v11)
  {
    v69 = v82 & 0xFFFFFFFFFFFFFFLL;
    v68 = (v82 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v67 = v83 + 32;

    v22 = 0;
    a1 = 0;
    v9 = 0;
    v23 = &qword_1ECC26E28;
    v66 = v4;
    while (1)
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v26 = sub_1DB2BB4E4();
        a2 = v27;
        if (v26 != 63)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v81 = v4;
          v82 = v69;
          v25 = &v81 + v9;
        }

        else
        {
          v24 = v68;
          if ((v4 & 0x1000000000000000) == 0)
          {
            v24 = sub_1DB2BB5B4();
          }

          v25 = &v9[v24];
        }

        v28 = *v25;
        if ((*v25 & 0x80000000) == 0)
        {
LABEL_20:
          a2 = 1;
          if (v28 != 63)
          {
            goto LABEL_9;
          }

          goto LABEL_21;
        }

        v34 = (__clz(v28 ^ 0xFF) - 24);
        if (v34 > 2)
        {
          if (v34 == 3)
          {
            a2 = 3;
            if ((((v28 & 0xF) << 12) | ((v25[1] & 0x3F) << 6) | v25[2] & 0x3F) != 0x3F)
            {
              goto LABEL_9;
            }
          }

          else
          {
            a2 = 4;
            if ((((v28 & 0xF) << 18) | ((v25[1] & 0x3F) << 12) | ((v25[2] & 0x3F) << 6) | v25[3] & 0x3F) != 0x3F)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
          if (v34 == 1)
          {
            goto LABEL_20;
          }

          a2 = 2;
          if ((v25[1] & 0x3F | ((v28 & 0x1F) << 6)) != 0x3F)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_21:
      if (v22 < *(v21 + 16))
      {
        if (v22 < 0)
        {
          goto LABEL_60;
        }

        sub_1DB1446A4(v67 + 40 * v22, &v81, v23, &unk_1DB2C2D70);
        sub_1DB1446A4(&v81, &v76, v23, &unk_1DB2C2D70);
        if (v77)
        {
          sub_1DB1355D0(&v76, &v78);
          sub_1DB164980(&v78, &v76);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
          v29 = v23;
          if (swift_dynamicCast())
          {
            v73 = 10104;
            v74 = 0xE200000000000000;
            v70 = v71;
            countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
            MEMORY[0x1E1283490](countAndFlagsBits);
            v21 = v65;

            MEMORY[0x1E1283490](39, 0xE100000000000000);

            v31 = v73;
            v32 = v74;
            __swift_destroy_boxed_opaque_existential_1(&v78);
            __swift_destroy_boxed_opaque_existential_1(&v76);
          }

          else
          {
            if (swift_dynamicCast())
            {
              v31 = sub_1DB2B995C(39, 0xE100000000000000);
              v32 = v35;

              __swift_destroy_boxed_opaque_existential_1(&v78);
              v36 = &v76;
            }

            else
            {
              sub_1DB1355D0(&v76, &v73);
              v71 = 0;
              v72 = 0xE000000000000000;
              __swift_project_boxed_opaque_existential_1(&v73, v75);
              sub_1DB2BB914();
              v31 = v71;
              v32 = v72;
              __swift_destroy_boxed_opaque_existential_1(&v78);
              v36 = &v73;
            }

            __swift_destroy_boxed_opaque_existential_1(v36);
            v21 = v65;
          }
        }

        else
        {
          sub_1DB1445E0(&v76, v23, &unk_1DB2C2D70);
          v29 = v23;
          v32 = 0xE400000000000000;
          v31 = 1280070990;
        }

        sub_1DB1445E0(&v81, v29, &unk_1DB2C2D70);
        v81 = v31;
        v82 = v32;
        sub_1DB2BAE54();

        ++v22;
        v23 = v29;
        v4 = v66;
        goto LABEL_10;
      }

      v33 = __OFADD__(a1++, 1);
      if (v33)
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

LABEL_9:
      sub_1DB2BAE64();
LABEL_10:
      v9 += a2;
      if (v9 >= v11)
      {

        if (a1 < 1)
        {
          goto LABEL_46;
        }

        v81 = 0;
        v82 = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000024, 0x80000001DB2D4740);
        *&v78 = a1;
        v37 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v37);

        MEMORY[0x1E1283490](0xD000000000000019, 0x80000001DB2D4770);
        v38 = *(v21 + 16);
        v33 = __OFADD__(v38, a1);
        v39 = v38 + a1;
        if (!v33)
        {
          *&v78 = v39;
          v40 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v40);

          MEMORY[0x1E1283490](0x6C6175746361202CLL, 0xEA0000000000203ALL);
          *&v78 = *(v21 + 16);
          v41 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v41);

          MEMORY[0x1E1283490](46, 0xE100000000000000);
          sub_1DB15B09C(v81, v82);

          goto LABEL_46;
        }

        __break(1u);
LABEL_64:
        swift_once();
LABEL_48:
        sub_1DB2BBAF4();
        v42 = v84;
        v43 = v85;
        __swift_project_boxed_opaque_existential_1(&v81, v84);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1DB2BCC40;
        v71 = sub_1DB156674(0, 76, 0, MEMORY[0x1E69E7CC0]);
        v45._countAndFlagsBits = 0xD00000000000003FLL;
        v45._object = 0x80000001DB2D4700;
        LogMessage.StringInterpolation.appendLiteral(_:)(v45);
        v46 = MEMORY[0x1E69E6530];
        v77 = MEMORY[0x1E69E6530];
        *&v76 = v22;
        sub_1DB1446A4(&v76, &v73, &qword_1ECC26F30, &unk_1DB2BFA90);
        v78 = 0u;
        v79 = 0u;
        sub_1DB156864(&v73, &v78);
        v80 = 0;
        v47 = v71;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_1DB156674(0, *(v47 + 2) + 1, 1, v47);
        }

        v49 = *(v47 + 2);
        v48 = *(v47 + 3);
        if (v49 >= v48 >> 1)
        {
          v47 = sub_1DB156674((v48 > 1), v49 + 1, 1, v47);
        }

        *(v47 + 2) = v49 + 1;
        v50 = &v47[40 * v49];
        v51 = v78;
        v52 = v79;
        v50[64] = v80;
        *(v50 + 2) = v51;
        *(v50 + 3) = v52;
        v71 = v47;
        sub_1DB1445E0(&v76, &qword_1ECC26F30, &unk_1DB2BFA90);
        v53._countAndFlagsBits = 0x7365756C6176202CLL;
        v53._object = 0xEA0000000000203ALL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v53);
        v54 = *(v65 + 16);
        v77 = v46;
        *&v76 = v54;
        sub_1DB1446A4(&v76, &v73, &qword_1ECC26F30, &unk_1DB2BFA90);
        v78 = 0u;
        v79 = 0u;
        sub_1DB156864(&v73, &v78);
        v80 = 0;
        v55 = v71;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_1DB156674(0, *(v55 + 2) + 1, 1, v55);
          v71 = v55;
        }

        v57 = *(v55 + 2);
        v56 = *(v55 + 3);
        if (v57 >= v56 >> 1)
        {
          v55 = sub_1DB156674((v56 > 1), v57 + 1, 1, v55);
        }

        *(v55 + 2) = v57 + 1;
        v58 = &v55[40 * v57];
        v60 = v78;
        v59 = v79;
        v58[64] = v80;
        *(v58 + 2) = v60;
        *(v58 + 3) = v59;
        v71 = v55;
        sub_1DB1445E0(&v76, &qword_1ECC26F30, &unk_1DB2BFA90);
        v61._countAndFlagsBits = 46;
        v61._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v61);
        *(v44 + 32) = v71;
        Logger.warning(_:)(v44, v42, v43);

        __swift_destroy_boxed_opaque_existential_1(&v81);
        goto LABEL_58;
      }
    }
  }

  v22 = 0;
LABEL_46:
  if (v22 < *(v21 + 16))
  {
    if (qword_1EE13F2E0 != -1)
    {
      goto LABEL_64;
    }

    goto LABEL_48;
  }

LABEL_58:
  v62 = v86;
  sub_1DB2875A0("asSQL", 5, 2);

  return v62;
}

uint64_t ExpressionType.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DB2B995C(34, 0xE100000000000000);
  v8 = v7;

  v9 = *(a4 + 48);
  v10 = MEMORY[0x1E69E7CC0];

  return v9(v6, v8, v10, a3, a4);
}

uint64_t ExpressionType.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 32))(a3, a5);
  v12 = v11;
  v13 = (*(a5 + 40))(a3, a5);
  (*(a4 + 48))(v10, v12, v13, a2, a4);
  v14 = *(*(a3 - 8) + 8);

  return v14(a1, a3);
}

uint64_t static ExpressionType<>.null.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1DB2BB364();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v14 - v11;
  (*(*(AssociatedTypeWitness - 8) + 56))(&v14 - v11, 1, 1, AssociatedTypeWitness);
  return ExpressionType<>.init(value:)(v12, a1, a2, a3, a4);
}

uint64_t ExpressionType<>.init(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB2BCC40;
  v9 = *(a4 + 56);
  swift_getAssociatedTypeWitness();
  *(v8 + 56) = swift_getAssociatedTypeWitness();
  *(v8 + 64) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0((v8 + 32));
  v10 = swift_checkMetadataState();
  v9(v10, a4);
  (*(a3 + 48))(63, 0xE100000000000000, v8, a2, a3);
  v11 = *(*(v10 - 8) + 8);

  return v11(a1, v10);
}

uint64_t Expression.template.getter()
{
  v0 = sub_1DB288124();

  return v0;
}

uint64_t Expression.template.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Expression.bindings.getter()
{
  sub_1DB243A08();
}

uint64_t Expression.bindings.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1DB2873F4()
{
  v0 = sub_1DB288124();

  return v0;
}

uint64_t sub_1DB28742C()
{
  sub_1DB243A08();
}

uint64_t sub_1DB287458@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return ExpressionType.expression.getter(a1, WitnessTable, a2);
}

uint64_t ExpressionType.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = (*(a2 + 32))();
  v8 = v7;
  result = (*(a2 + 40))(a1, a2);
  *a3 = v6;
  a3[1] = v8;
  a3[2] = result;
  return result;
}

uint64_t sub_1DB287534(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ExpressionType.description.getter(a1, WitnessTable);
}

uint64_t sub_1DB2875A0(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = sub_1DB2BAA74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB2BAA34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE13F6D8 != -1)
  {
    swift_once();
  }

  v14 = sub_1DB2BAA64();
  __swift_project_value_buffer(v14, qword_1EE14C880);
  v15 = sub_1DB2BAA44();
  sub_1DB2BAA84();
  v20 = sub_1DB2BB2E4();
  result = sub_1DB2BB314();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_1DB2BAAB4();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1DB2BAA14();
      _os_signpost_emit_with_name_impl(&dword_1DB132000, v15, v20, v19, a1, v17, v18, 2u);
      MEMORY[0x1E1284BF0](v18, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DB28789C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  *(inited + 56) = a1;
  *(inited + 64) = *(a2 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v8, a1);
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 104) = sub_1DB219960();
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  sub_1DB2B9A70(inited, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

uint64_t ExpressionType<>.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22 = a4;
  v23 = a5;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1DB2BB364();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB2BCC40;
  (*(v10 + 16))(v13, a1, v9);
  v15 = *(AssociatedTypeWitness - 8);
  if ((*(v15 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v13, v9);
    *(v14 + 64) = 0;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
  }

  else
  {
    v19 = a3;
    v20 = a2;
    v16 = v22;
    v18 = *(v22 + 56);
    v21 = a1;
    *(v14 + 56) = swift_getAssociatedTypeWitness();
    *(v14 + 64) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0((v14 + 32));
    v18(AssociatedTypeWitness, v16);
    a3 = v19;
    a2 = v20;
    a1 = v21;
    (*(v15 + 8))(v13, AssociatedTypeWitness);
  }

  (*(a3 + 48))(63, 0xE100000000000000, v14, a2, a3);
  return (*(v10 + 8))(a1, v9);
}

uint64_t sub_1DB287CA0()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13E878 = result;
  unk_1EE13E880 = v1;
  qword_1EE13E888 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t rowid.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE13E870 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1EE13E880;
  v2 = qword_1EE13E888;
  *a1 = qword_1EE13E878;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t cast<A, B>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];

  MEMORY[0x1E1283490](v7, v8);
  MEMORY[0x1E1283490](542327072, 0xE400000000000000);
  v10 = (*(a3 + 40))(a2, a3);
  MEMORY[0x1E1283490](v10);

  result = MEMORY[0x1E1283490](41, 0xE100000000000000);
  *a4 = 0x282054534143;
  a4[1] = 0xE600000000000000;
  a4[2] = v9;
  return result;
}

{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];

  MEMORY[0x1E1283490](v7, v8);
  MEMORY[0x1E1283490](542327072, 0xE400000000000000);
  v10 = (*(a3 + 40))(a2, a3);
  MEMORY[0x1E1283490](v10);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  result = sub_1DB2BB364();
  *a4 = 0x282054534143;
  a4[1] = 0xE600000000000000;
  a4[2] = v9;
  return result;
}

uint64_t sub_1DB287F38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return ExpressionType.expression.getter(a1, WitnessTable, a2);
}

uint64_t sub_1DB287FA0@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (*(v1 + 106))
  {
    v14 = *(v1 + 56);
    v15 = *(v1 + 72);
    v16 = *(v1 + 88);
    v17 = *(v1 + 104);
    v12 = *(v1 + 24);
    v13 = *(v1 + 40);
    v9 = *v1;
    v10 = *(v1 + 8);
    v11 = *(v1 + 16);
    result = sub_1DB1F43B8();
    v4 = result;
    v3 = v7;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = *(v1 + 8);
  }

  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  return result;
}

uint64_t sub_1DB288054@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_1DB288124()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_1DB288184(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DB288234()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB2882B0(char a1)
{
  result = 43;
  switch(a1)
  {
    case 1:
      result = 45;
      break;
    case 2:
      result = 21071;
      break;
    case 3:
      result = 4476481;
      break;
    case 4:
      result = 542396238;
      break;
    case 5:
      result = 42;
      break;
    case 6:
      result = 47;
      break;
    case 7:
      result = 37;
      break;
    case 8:
      result = 15420;
      break;
    case 9:
      result = 15934;
      break;
    case 10:
      result = 38;
      break;
    case 11:
      result = 124;
      break;
    case 12:
      result = 126;
      break;
    case 13:
      result = 61;
      break;
    case 14:
      result = 15649;
      break;
    case 15:
      result = 62;
      break;
    case 16:
      result = 60;
      break;
    case 17:
      result = 15678;
      break;
    case 18:
      result = 15676;
      break;
    case 19:
      result = 31868;
      break;
    case 20:
      result = 21321;
      break;
    case 21:
      result = 0x544F4E205349;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DB2883C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = sub_1DB2882B0(a4);
  sub_1DB2BA060(a1, a2, a3, v9, v10, a5);
}

uint64_t sub_1DB288444@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = sub_1DB2882B0(a2);
  sub_1DB2B9D5C(a1, v5, v6, a3);
}

uint64_t sub_1DB2884B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  if (v7)
  {
    v36 = MEMORY[0x1E69E7CC0];

    sub_1DB138470(0, v7, 0);
    v8 = v36;
    v9 = a1 + 64;
    v10 = -1 << *(a1 + 32);
    result = sub_1DB2BB464();
    v12 = result;
    v13 = 0;
    v31 = v7;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v32 = v13;
      v33 = *(a1 + 36);
      v16 = (*(a1 + 48) + 16 * v12);
      v34 = *v16;
      v35 = v16[1];
      sub_1DB143508();
      result = sub_1DB2BB3D4();
      v17 = result;
      v19 = v18;
      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      v22 = v8;
      if (v21 >= v20 >> 1)
      {
        result = sub_1DB138470((v20 > 1), v21 + 1, 1);
        v22 = v8;
      }

      *(v22 + 16) = v21 + 1;
      v23 = v22 + 16 * v21;
      *(v23 + 32) = v17;
      *(v23 + 40) = v19;
      v14 = 1 << *(a1 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v9 = a1 + 64;
      v24 = *(a1 + 64 + 8 * v15);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      v8 = v22;
      if (v33 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v15 << 6;
        v27 = v15 + 1;
        v28 = (a1 + 72 + 8 * v15);
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1DB25CF78(v12, v33, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_1DB25CF78(v12, v33, 0);
      }

LABEL_4:
      v13 = v32 + 1;
      v12 = v14;
      if (v32 + 1 == v31)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

double Insert.clauses.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1DB1446A4(v1, v8, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v10)
  {
    v3 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v3;
    *(a1 + 128) = v9;
    v4 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v4;
    v5 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v5;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
  }

  else
  {
    sub_1DB1445E0(v8, &qword_1ECC27CC8, &unk_1DB2C3860);
    *&v6 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0;
  }

  return *&v6;
}

__n128 sub_1DB288840@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  *(a2 + 136) = 1;
  return result;
}

OnDeviceStorageCore::QueryClauses::SelectClause __swiftcall QueryClauses.SelectClause.init(distinct:columns:)(Swift::Bool distinct, Swift::OpaquePointer columns)
{
  *v2 = distinct;
  *(v2 + 8) = columns;
  result.columns = columns;
  result.distinct = distinct;
  return result;
}

void __swiftcall QueryClauses.FromClause.init(name:alias:database:)(OnDeviceStorageCore::QueryClauses::FromClause *__return_ptr retstr, Swift::String name, Swift::String_optional alias, Swift::String_optional database)
{
  retstr->name = name;
  retstr->alias = alias;
  retstr->database = database;
}

uint64_t QueryClauses.JoinClause.init(type:query:condition:)@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v5 = (a4 + 48);
  sub_1DB1355D0(a2, (a4 + 8));

  return sub_1DB1355D0(a3, v5);
}

__n128 QueryClauses.GroupClause.init(by:having:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u64[0];
  *a3 = a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  return result;
}

uint64_t Insert.template.getter()
{
  sub_1DB1446A4(v0, v5, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v7)
  {
    v3[6] = v5[6];
    v3[7] = v5[7];
    v4 = v6;
    v3[2] = v5[2];
    v3[3] = v5[3];
    v3[4] = v5[4];
    v3[5] = v5[5];
    v3[0] = v5[0];
    v3[1] = v5[1];
    v1 = sub_1DB1F4E58();
    sub_1DB1F7130(v3);
  }

  else
  {
    v1 = *&v5[0];
  }

  return v1;
}

uint64_t Insert.bindings.getter()
{
  sub_1DB1446A4(v0, v3, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v4)
  {
    sub_1DB1445E0(v3, &qword_1ECC27CC8, &unk_1DB2C3860);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v1 = v3[2];
  }

  return v1;
}

uint64_t Insert.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 136) = 0;
  return result;
}

uint64_t OnConflict.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4543414C504552;
  v3 = 0x54524F4241;
  v4 = 1279869254;
  if (v1 != 3)
  {
    v4 = 0x45524F4E4749;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4B4341424C4C4F52;
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

uint64_t sub_1DB288AD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v22 = a2;
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_1DB164AE0(v8, v20);
      v10 = v6(v20);
      if (v3)
      {
        sub_1DB164B3C(v20);

        goto LABEL_15;
      }

      if (v10)
      {
        v17 = v20[2];
        v18 = v20[3];
        v19 = v20[4];
        v15 = v20[0];
        v16 = v20[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        v21 = v9;
        if ((result & 1) == 0)
        {
          result = sub_1DB138680(0, *(v9 + 16) + 1, 1);
          v9 = v21;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_1DB138680((v11 > 1), v12 + 1, 1);
          v9 = v21;
        }

        *(v9 + 16) = v12 + 1;
        v13 = (v9 + 80 * v12);
        v13[2] = v15;
        v13[5] = v18;
        v13[6] = v19;
        v13[3] = v16;
        v13[4] = v17;
        v6 = v14;
      }

      else
      {
        result = sub_1DB164B3C(v20);
      }

      ++v7;
      v8 += 80;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t Update.clauses.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 106);
  if (v3)
  {
    v4 = v1[1];
    v24 = *v1;
    v25 = v4;
    v5 = v1[3];
    v26 = v1[2];
    v27 = v5;
    v6 = *(v1 + 90);
    v7 = v1[5];
    v28 = v1[4];
    *v29 = v7;
    *&v29[10] = v6;
    v30 = v3;
    v21 = v24;
    v22 = v25;
    v19 = v26;
    v20 = v27;
    v17 = v28;
    v18 = *v29;
    v8 = v6 >> 48;
    v9 = HIWORD(v6);
    result = sub_1DB201A00(&v24, v23);
    v12 = v17;
    v11 = v18;
    v14 = v19;
    v13 = v20;
    v15 = v21;
    v16 = v22;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v14 = 0uLL;
    v13 = 0uLL;
    v12 = 0uLL;
    v11 = 0uLL;
  }

  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v14;
  *(a1 + 48) = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v11;
  *(a1 + 96) = v8;
  *(a1 + 104) = v9;
  return result;
}

uint64_t sub_1DB288D3C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  (*(a3 + 16))(v31, a2, a3);
  v6 = v31[5];
  v7 = v31[7];

  sub_1DB17181C(v31);
  if (v6)
  {
    if (a1)
    {
      v30 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB2BD590;
      v29 = sub_1DB2B995C(34, 0xE100000000000000);
      v10 = v9;
      v11 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v12 = swift_initStackObject();
        *(v12 + 16) = xmmword_1DB2BD5A0;
        v28 = v10;
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(v12 + 56) = v13;
        v11 = MEMORY[0x1E69E7CC0];
        v14 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
        *(v12 + 64) = v14;
        *(v12 + 32) = sub_1DB2B995C(34, 0xE100000000000000);
        *(v12 + 40) = v15;
        *(v12 + 48) = v11;
        *(v12 + 96) = v13;
        *(v12 + 104) = v14;
        *(v12 + 72) = v29;
        *(v12 + 80) = v28;
        *(v12 + 88) = v11;
        sub_1DB2B9A70(v12, (inited + 32));
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
        swift_arrayDestroy();
      }

      else
      {
        *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(inited + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
        *(inited + 32) = v29;
        *(inited + 40) = v10;
        *(inited + 48) = v11;
      }

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 96) = v25;
      v26 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 104) = v26;
      *(inited + 72) = 21313;
      *(inited + 80) = 0xE200000000000000;
      *(inited + 88) = v11;
      *(inited + 136) = v25;
      *(inited + 144) = v26;
      *(inited + 112) = sub_1DB2B995C(34, 0xE100000000000000);
      *(inited + 120) = v27;
      *(inited + 128) = v11;
      sub_1DB2B9A70(inited, v30);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
    }
  }

  else
  {
  }

  v16 = sub_1DB2B995C(34, 0xE100000000000000);
  v18 = v17;

  if (!v7)
  {
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    a4[4] = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);

    *a4 = v16;
    a4[1] = v18;
    a4[2] = MEMORY[0x1E69E7CC0];
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1DB2BD5A0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v19 + 56) = v20;
  v21 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  *(v19 + 64) = v21;
  *(v19 + 32) = sub_1DB2B995C(34, 0xE100000000000000);
  v22 = MEMORY[0x1E69E7CC0];
  *(v19 + 40) = v23;
  *(v19 + 48) = v22;
  *(v19 + 96) = v20;
  *(v19 + 104) = v21;
  *(v19 + 72) = v16;
  *(v19 + 80) = v18;
  *(v19 + 88) = v22;
  sub_1DB2B9A70(v19, a4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
}

uint64_t QueryType.filter(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[1];
  v8 = a1[2];
  v10[0] = *a1;
  v10[1] = v7;
  v10[2] = v8;

  QueryType.filter(_:)(v10, a2, a3, a4);
}

{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  (*(a3 + 16))(v25, a2, a3);
  v10 = v26;
  v11 = v27;
  v12 = v28;
  sub_1DB1757B0(v26, v27);
  sub_1DB17181C(v25);
  if (v11)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v21[0] = v10;
    v21[1] = v11;
    v23 = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
    v21[2] = v12;
    v20[3] = v22;
    v20[4] = v23;
    v20[0] = v8;
    v20[1] = v7;
    v20[2] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(v21, inited + 32);
    sub_1DB164980(v20, inited + 72);
    sub_1DB1757B0(v10, v11);

    sub_1DB2B594C(inited, 1, 4476481, 0xE300000000000000, v24);
    sub_1DB1718E4(v10, v11);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v8 = v24[0];
    v7 = v24[1];
    v9 = v24[2];
  }

  else
  {
  }

  v14 = (*(a3 + 32))(v21, a2, a3);
  v16 = v15[9];
  v17 = v15[10];
  v18 = v15[11];
  v15[9] = v8;
  v15[10] = v7;
  v15[11] = v9;
  sub_1DB1718E4(v16, v17);
  return v14(v21, 0);
}

void Connection.prepareRowIterator(_:bindings:)(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  sub_1DB2972D4(a1, a2);
}

{
  Connection.prepareRowIterator(_:bindings:)(a1, a2);
}

uint64_t Row.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *v4;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v5;
  return Row.get<A>(_:)(&v7, a2, a3, a4);
}

{
  v5 = *v4;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v5;
  return Row.get<A>(_:)(&v7, a2, a3, a4);
}

void RowIterator.map<A>(_:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v54 = a1;
  v55 = a2;
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v10 = v3[1];
  v53[1] = v12;
  v71 = sub_1DB2BACA4();
  v13 = sub_1DB143044();
  v58 = v10;
  v59 = v13;
  v61 = 0x80000001DB2D1D60;
  v56 = v11;
  v57 = v9;
  while (1)
  {
    v14 = *(v11 + 24);
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((v70 & 1) != 0 || v69 != v14)
    {
      v16 = *(v14 + 120);
      sub_1DB2BB2C4();
      if (v6)
      {
        goto LABEL_60;
      }

      if (v67 != 1)
      {
        return;
      }
    }

    else
    {
      v15 = *(v11 + 16);
      os_unfair_lock_lock((v15 + 24));
      sub_1DB14A424((v15 + 16), &v69);
      os_unfair_lock_unlock((v15 + 24));
      if (v6)
      {
        goto LABEL_60;
      }

      if ((v69 & 1) == 0)
      {
        return;
      }
    }

    v60 = 0;
    Statement.row.getter(&v69);
    v18 = v69;
    v17 = v70;
    swift_retain_n();
    v63 = v18;
    v64 = v17;
    if (v17 >= 1)
    {
      break;
    }

    v20 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    v23 = v5;
LABEL_52:

    v48 = v21[3];
    v49 = v58;
    v11 = v56;
    if (v48 >= 2)
    {
      v50 = v48 >> 1;
      v47 = __OFSUB__(v50, v20);
      v51 = v50 - v20;
      if (v47)
      {
        goto LABEL_64;
      }

      v21[2] = v51;
    }

    v5 = v23;

    v69 = v49;
    v70 = v21;

    v52 = v60;
    v54(&v69);
    v6 = v52;
    if (v52)
    {

LABEL_60:

      return;
    }

    sub_1DB2BB154();
    sub_1DB2BB134();
  }

  v19 = 0;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v22 = (MEMORY[0x1E69E7CC0] + 32);
  v23 = v5;
  while (1)
  {
    os_unfair_lock_lock((v18 + 24));
    if (v19 == 0x80000000)
    {
      break;
    }

    v24 = sqlite3_column_type(*(v18 + 16), v19);
    os_unfair_lock_unlock((v18 + 24));
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        os_unfair_lock_lock((v18 + 24));
        if (!sqlite3_column_text(*(v18 + 16), v19))
        {
          goto LABEL_65;
        }

        v30 = COERCE_DOUBLE(sub_1DB2BAF14());
        v23 = v36;
        os_unfair_lock_unlock((v18 + 24));
        v33 = MEMORY[0x1E69E6158];
        v34 = &protocol witness table for String;
        v35 = v21;
        if (v20)
        {
          goto LABEL_48;
        }

        goto LABEL_38;
      }

      if (v24 != 5)
      {
        if (v24 == 4)
        {
          v65 = sub_1DB138CA8();
          os_unfair_lock_lock((v18 + 24));
          v25 = *(v18 + 16);
          v26 = sqlite3_column_blob(v25, v19);
          if (v26 && (v27 = v26, (v28 = sqlite3_column_bytes(v25, v19)) != 0))
          {
            v29 = v28;
            if (v28 <= 0)
            {
              v30 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v30 = COERCE_DOUBLE(swift_allocObject());
              v31 = _swift_stdlib_malloc_size(*&v30);
              *(*&v30 + 16) = v29;
              *(*&v30 + 24) = 2 * v31 - 64;
            }

            memcpy((*&v30 + 32), v27, v29);
          }

          else
          {
            v30 = MEMORY[0x1E69E7CC0];
          }

          v18 = v63;
          os_unfair_lock_unlock(v63 + 6);
          v33 = &type metadata for Blob;
          v34 = v65;
          v35 = v21;
          if (v20)
          {
            goto LABEL_48;
          }

          goto LABEL_38;
        }

LABEL_31:
        v67 = 0;
        v68 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v67 = 0xD000000000000019;
        v68 = v61;
        v66 = v24;
        v37 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v37);
        v18 = v63;

        sub_1DB15B09C(v67, v68);
      }

      v30 = 0.0;
      v23 = 0;
      v33 = 0;
      v34 = 0;
      v35 = v21;
      if (v20)
      {
        goto LABEL_48;
      }

      goto LABEL_38;
    }

    if (v24 == 1)
    {
      os_unfair_lock_lock((v18 + 24));
      v30 = COERCE_DOUBLE(sqlite3_column_int64(*(v18 + 16), v19));
      os_unfair_lock_unlock((v18 + 24));
      v33 = MEMORY[0x1E69E7360];
      v34 = &protocol witness table for Int64;
      v35 = v21;
      if (v20)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v24 != 2)
      {
        goto LABEL_31;
      }

      os_unfair_lock_lock((v18 + 24));
      v32 = sqlite3_column_double(*(v18 + 16), v19);
      os_unfair_lock_unlock((v18 + 24));
      v30 = v32;
      v33 = MEMORY[0x1E69E63B0];
      v34 = &protocol witness table for Double;
      v35 = v21;
      if (v20)
      {
        goto LABEL_48;
      }
    }

LABEL_38:
    v38 = v35[3];
    if (((v38 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_63;
    }

    v65 = v34;
    v62 = v23;
    v39 = v38 & 0xFFFFFFFFFFFFFFFELL;
    if (v39 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = v39;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v35 = swift_allocObject();
    v41 = _swift_stdlib_malloc_size(v35) - 32;
    v42 = v21;
    v43 = v41 / 40;
    v35[2] = v40;
    v35[3] = 2 * (v41 / 40);
    v44 = (v35 + 4);
    v45 = v21[3] >> 1;
    if (v21[2])
    {
      v46 = v21 + 4;
      if (v35 != v21 || v44 >= v46 + 40 * v45)
      {
        memmove(v35 + 4, v46, 40 * v45);
        v42 = v21;
      }

      v42[2] = 0;
    }

    v22 = (v44 + 40 * v45);
    v20 = (v43 & 0x7FFFFFFFFFFFFFFFLL) - v45;

    v23 = v62;
    v18 = v63;
    v34 = v65;
LABEL_48:
    v47 = __OFSUB__(v20--, 1);
    if (v47)
    {
      goto LABEL_62;
    }

    v21 = v35;
    ++v19;
    *v22 = v30;
    *(v22 + 1) = v23;
    v22[2] = 0.0;
    *(v22 + 3) = v33;
    *(v22 + 4) = v34;
    v22 += 5;
    if (v64 == v19)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t QueryType.where(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];

  v11[0] = v8;
  v11[1] = v7;
  v11[2] = v9;
  QueryType.filter(_:)(v11, a2, a3, a4);
}

uint64_t Connection.prepare(_:)(void *a1)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(*(v3 + 8) + 24))(v11, v4);
  v5 = v11[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v6);
  if (v1)
  {
  }

  else
  {
    v8 = sub_1DB255E8C(v5);

    v9 = sub_1DB29611C(a1);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29260, &unk_1DB2CEF10);
    result = swift_allocObject();
    *(result + 16) = sub_1DB2A03AC;
    *(result + 24) = v10;
  }

  return result;
}

void RowIterator.compactMap<A>(_:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v74 = a1;
  v75 = a2;
  v68 = sub_1DB2BB364();
  v7 = *(v68 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v68);
  v11 = &v62 - v10;
  v12 = *(a3 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v62 - v16;
  v17 = *v3;
  v72 = v3[1];
  v88 = sub_1DB2BACA4();
  v76 = sub_1DB143044();
  v78 = 0x80000001DB2D1D60;
  v69 = (v12 + 6);
  v65 = (v12 + 4);
  v64 = (v12 + 2);
  v63 = (v12 + 1);
  v62 = (v7 + 8);
  v18 = v17;
  v70 = v17;
  v71 = a3;
  v73 = v11;
  while (1)
  {
    v19 = *(v18 + 24);
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((v87 & 1) != 0 || v86 != v19)
    {
      v21 = *(v19 + 120);
      sub_1DB2BB2C4();
      if (v5)
      {
        goto LABEL_65;
      }

      if (v84 != 1)
      {
        return;
      }
    }

    else
    {
      v20 = *(v18 + 16);
      os_unfair_lock_lock((v20 + 24));
      sub_1DB256240((v20 + 16), &v86);
      os_unfair_lock_unlock((v20 + 24));
      if (v5)
      {
        goto LABEL_65;
      }

      if ((v86 & 1) == 0)
      {
        return;
      }
    }

    v77 = 0;
    Statement.row.getter(&v86);
    v23 = v86;
    v22 = v87;
    swift_retain_n();
    v81 = v22;
    if (v22 >= 1)
    {
      break;
    }

    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    v28 = v12;
LABEL_56:

    v55 = v26[3];
    if (v55 >= 2)
    {
      v56 = v55 >> 1;
      v54 = __OFSUB__(v56, v25);
      v57 = v56 - v25;
      if (v54)
      {
        goto LABEL_69;
      }

      v26[2] = v57;
    }

    v12 = v28;

    v86 = v72;
    v87 = v26;

    v58 = v73;
    v59 = v77;
    v74(&v86);
    v5 = v59;
    if (v59)
    {

LABEL_65:

      return;
    }

    v60 = v71;
    if ((*v69)(v58, 1, v71) == 1)
    {
      (*v62)(v58, v68);
    }

    else
    {
      v61 = v66;
      (*v65)(v66, v58, v60);
      (*v64)(v67, v61, v60);
      sub_1DB2BB154();
      sub_1DB2BB134();
      (*v63)(v61, v60);
    }

    v18 = v70;
  }

  v24 = 0;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = (MEMORY[0x1E69E7CC0] + 32);
  v28 = v12;
  while (1)
  {
    os_unfair_lock_lock((v23 + 24));
    if (v24 == 0x80000000)
    {
      break;
    }

    v29 = sqlite3_column_type(*(v23 + 16), v24);
    os_unfair_lock_unlock((v23 + 24));
    if (v29 > 2)
    {
      if (v29 == 3)
      {
        os_unfair_lock_lock((v23 + 24));
        if (!sqlite3_column_text(*(v23 + 16), v24))
        {
          goto LABEL_70;
        }

        *&v41 = COERCE_DOUBLE(sub_1DB2BAF14());
        v28 = v42;
        os_unfair_lock_unlock((v23 + 24));
        v38 = *&v41;
        v39 = MEMORY[0x1E69E6158];
        v40 = &protocol witness table for String;
        if (v25)
        {
          goto LABEL_52;
        }

        goto LABEL_42;
      }

      if (v29 != 5)
      {
        if (v29 == 4)
        {
          v80 = v26;
          v82 = sub_1DB138CA8();
          os_unfair_lock_lock((v23 + 24));
          v30 = *(v23 + 16);
          v31 = sqlite3_column_blob(v30, v24);
          if (v31)
          {
            v32 = v31;
            v33 = sqlite3_column_bytes(v30, v24);
            if (v33)
            {
              v34 = v33;
              if (v33 <= 0)
              {
                v35 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
                v35 = swift_allocObject();
                v36 = _swift_stdlib_malloc_size(v35);
                v35[2] = v34;
                v35[3] = 2 * v36 - 64;
              }

              v45 = *&v35;
              memcpy(v35 + 4, v32, v34);
            }

            else
            {
              v45 = MEMORY[0x1E69E7CC0];
            }

            v40 = v82;
            v26 = v80;
          }

          else
          {
            v45 = MEMORY[0x1E69E7CC0];
            v26 = v80;
            v40 = v82;
          }

          os_unfair_lock_unlock((v23 + 24));
          v39 = &type metadata for Blob;
          v38 = v45;
          if (v25)
          {
            goto LABEL_52;
          }

          goto LABEL_42;
        }

LABEL_33:
        v84 = 0;
        v85 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v84 = 0xD000000000000019;
        v85 = v78;
        v83 = v29;
        v44 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v44);

        sub_1DB15B09C(v84, v85);
      }

      v38 = 0.0;
      v28 = 0;
      v39 = 0;
      v40 = 0;
      if (v25)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    if (v29 == 1)
    {
      os_unfair_lock_lock((v23 + 24));
      *&v43 = COERCE_DOUBLE(sqlite3_column_int64(*(v23 + 16), v24));
      os_unfair_lock_unlock((v23 + 24));
      v38 = *&v43;
      v39 = MEMORY[0x1E69E7360];
      v40 = &protocol witness table for Int64;
      if (v25)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v29 != 2)
      {
        goto LABEL_33;
      }

      os_unfair_lock_lock((v23 + 24));
      v37 = sqlite3_column_double(*(v23 + 16), v24);
      os_unfair_lock_unlock((v23 + 24));
      v38 = v37;
      v39 = MEMORY[0x1E69E63B0];
      v40 = &protocol witness table for Double;
      if (v25)
      {
        goto LABEL_52;
      }
    }

LABEL_42:
    v46 = v26[3];
    if (((v46 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_68;
    }

    v79 = v38;
    v80 = v28;
    v82 = v40;
    v47 = v46 & 0xFFFFFFFFFFFFFFFELL;
    if (v47 <= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = v47;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v49 = swift_allocObject();
    v50 = (_swift_stdlib_malloc_size(v49) - 32) / 40;
    v49[2] = v48;
    v49[3] = 2 * v50;
    v51 = (v49 + 4);
    v52 = v26[3] >> 1;
    if (v26[2])
    {
      v53 = v26 + 4;
      if (v49 != v26 || v51 >= v53 + 40 * v52)
      {
        memmove(v49 + 4, v53, 40 * v52);
      }

      v26[2] = 0;
    }

    v27 = (v51 + 40 * v52);
    v25 = (v50 & 0x7FFFFFFFFFFFFFFFLL) - v52;

    v26 = v49;
    v38 = v79;
    v28 = v80;
    v40 = v82;
LABEL_52:
    v54 = __OFSUB__(v25--, 1);
    if (v54)
    {
      goto LABEL_67;
    }

    ++v24;
    *v27 = v38;
    *(v27 + 1) = v28;
    v27[2] = 0.0;
    *(v27 + 3) = v39;
    *(v27 + 4) = v40;
    v27 += 5;
    if (v81 == v24)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

double QueryType.insert(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB2BCC40;
  *(v8 + 32) = a1;
  v9 = *(a3 + 16);

  v9(v20, a2, a3);
  v10 = v20[3];
  v11 = v20[5];
  v18 = v20[4];
  v19 = v20[2];
  v12 = v20[7];
  v17 = v20[6];

  sub_1DB17181C(v20);
  v9(v21, a2, a3);
  v13 = v22;
  v14 = v23;
  v15 = v24;
  sub_1DB1757B0(v22, v23);
  sub_1DB17181C(v21);
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 96) = 0u;
  *a4 = v19;
  *(a4 + 8) = v10;
  *(a4 + 16) = v18;
  *(a4 + 24) = v11;
  *(a4 + 32) = v17;
  *(a4 + 40) = v12;
  *(a4 + 48) = 5;
  *(a4 + 56) = 0;
  *(a4 + 64) = v8;
  *(a4 + 72) = v13;
  *(a4 + 80) = v14;
  *(a4 + 88) = v15;
  sub_1DB1445E0(a4 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 136) = 1;
  return result;
}

double QueryType.upsert(_:onConflictOf:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a2;
  v46 = a2;

  v8 = sub_1DB288AD0(sub_1DB208758, v45, a1);
  v9 = *(v8 + 16);
  if (v9)
  {
    v37 = v6;
    v38 = a1;
    v40 = a4;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1DB138680(0, v9, 0);
    v10 = v56;
    v11 = v8 + 32;
    do
    {
      sub_1DB164AE0(v11, v47);
      sub_1DB164980(v47, v53);
      v12 = sub_1DB2B995C(34, 0xE100000000000000);
      v14 = v13;
      sub_1DB164980(v53, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1DB2BD5A0;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(v15 + 56) = v16;
      v17 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
      *(v15 + 64) = v17;
      *(v15 + 32) = v12;
      *(v15 + 40) = v14;
      *(v15 + 48) = MEMORY[0x1E69E7CC0];
      v19 = v54;
      v18 = v55;
      __swift_project_boxed_opaque_existential_1(v53, v54);
      v20 = *(v18 + 24);
      *(v15 + 96) = v16;
      *(v15 + 104) = v17;
      v20(v19, v18);
      sub_1DB2B9A70(v15, v49 + 1);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1DB164B3C(v47);
      __swift_destroy_boxed_opaque_existential_1(v53);
      v56 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DB138680((v21 > 1), v22 + 1, 1);
        v10 = v56;
      }

      *(v10 + 16) = v22 + 1;
      v23 = (v10 + 80 * v22);
      v23[2] = v48[0];
      v24 = v48[1];
      v25 = v49[0];
      v26 = v50;
      v23[5] = v49[1];
      v23[6] = v26;
      v23[3] = v24;
      v23[4] = v25;
      v11 += 80;
      --v9;
    }

    while (v9);

    a1 = v38;
    a4 = v40;
    v6 = v37;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DB2BCC40;
  *(v27 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(v6, v28 + 32);
  *(v28 + 72) = v10;
  *(v28 + 80) = 0;
  *(v28 + 88) = 0;
  *(v28 + 96) = 0;
  v29 = *(a4 + 16);

  v29(v47, a3, a4);
  v30 = v47[3];
  v44 = v47[2];
  v31 = v47[5];
  v32 = v47[7];
  v39 = v47[6];
  v41 = v47[4];

  sub_1DB17181C(v47);
  v29(v48, a3, a4);
  v33 = *(&v50 + 1);
  v34 = v51;
  v35 = v52;
  sub_1DB1757B0(*(&v50 + 1), v51);
  sub_1DB17181C(v48);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v44;
  *(a5 + 8) = v30;
  *(a5 + 16) = v41;
  *(a5 + 24) = v31;
  *(a5 + 32) = v39;
  *(a5 + 40) = v32;
  *(a5 + 48) = 5;
  *(a5 + 56) = v28;
  *(a5 + 64) = v27;
  *(a5 + 72) = v33;
  *(a5 + 80) = v34;
  *(a5 + 88) = v35;
  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DB2BCC40;
  *(v22 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v10 = swift_allocObject();
  v10[1] = xmmword_1DB2BCC40;
  sub_1DB164980(a2, (v10 + 2));
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  v11 = *(a4 + 16);

  v11(v23, a3, a4);
  v12 = v23[3];
  v13 = v23[5];
  v20 = v23[4];
  v21 = v23[2];
  v14 = v23[7];
  v19 = v23[6];

  sub_1DB17181C(v23);
  v11(v24, a3, a4);
  v15 = v25;
  v16 = v26;
  v17 = v27;
  sub_1DB1757B0(v25, v26);
  sub_1DB17181C(v24);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v21;
  *(a5 + 8) = v12;
  *(a5 + 16) = v20;
  *(a5 + 24) = v13;
  *(a5 + 32) = v19;
  *(a5 + 40) = v14;
  *(a5 + 48) = 5;
  *(a5 + 56) = v10;
  *(a5 + 64) = v22;
  *(a5 + 72) = v15;
  *(a5 + 80) = v16;
  *(a5 + 88) = v17;
  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

double QueryType.upsert(_:onConflict:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  *(v9 + 32) = a1;
  v10 = *(a4 + 16);

  v10(v22, a3, a4);
  v11 = v22[3];
  v12 = v22[5];
  v19 = v22[4];
  v20 = v22[2];
  v13 = v22[7];
  v18 = v22[6];

  sub_1DB17181C(v22);
  v10(v23, a3, a4);
  v14 = v24;
  v15 = v25;
  v16 = v26;
  sub_1DB1757B0(v24, v25);
  sub_1DB17181C(v23);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v20;
  *(a5 + 8) = v11;
  *(a5 + 16) = v19;
  *(a5 + 24) = v12;
  *(a5 + 32) = v18;
  *(a5 + 40) = v13;
  *(a5 + 48) = 5;
  *(a5 + 56) = a2;
  *(a5 + 64) = v9;
  *(a5 + 72) = v14;
  *(a5 + 80) = v15;
  *(a5 + 88) = v16;

  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

uint64_t QueryType.update(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v7(v22, a2, a3);
  v19 = v22[4];
  v20 = v22[2];
  v15 = v22[5];
  v16 = v22[3];
  v17 = v22[7];
  v18 = v22[6];

  sub_1DB17181C(v22);
  v7(v23, a2, a3);
  v8 = v24;
  v9 = v25;
  v10 = v26;
  sub_1DB1757B0(v24, v25);
  sub_1DB17181C(v23);
  v7(v27, a2, a3);
  v11 = v27[16];

  sub_1DB17181C(v27);
  v7(v28, a2, a3);
  sub_1DB17181C(v28);
  v12 = v30;
  v13 = v31;
  v32 = 1;
  *a4 = v20;
  *(a4 + 8) = v16;
  *(a4 + 16) = v19;
  *(a4 + 24) = v15;
  *(a4 + 32) = v18;
  *(a4 + 40) = v17;
  *(a4 + 48) = a1;
  *(a4 + 56) = v8;
  *(a4 + 64) = v9;
  *(a4 + 72) = v10;
  *(a4 + 80) = v11;
  *(a4 + 88) = v29;
  *(a4 + 104) = v12;
  *(a4 + 105) = v13;
  *(a4 + 106) = 1;
}

uint64_t QueryType.namespace<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = type metadata accessor for Expression();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB292510(0, a2, a4, inited + 32);
  *(inited + 96) = v9;
  *(inited + 104) = swift_getWitnessTable();
  *(inited + 72) = v7;
  *(inited + 80) = v6;
  *(inited + 88) = v8;

  sub_1DB2B9A70(inited, v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v11 = v22;
  v12 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v12 + 24))(&v19, v11, v12);
  v17 = v19;
  v18 = v20;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1DB1688F0(&qword_1EE13EF48, &qword_1ECC26D98, &unk_1DB2BCF00);
  ExpressionType.init<A>(_:)(&v17, v9, v13, WitnessTable, v15);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1DB28B23C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = sub_1DB2B995C(34, 0xE100000000000000);
  if (!*(v2 + 16))
  {

    return 0;
  }

  v6 = sub_1DB141B30(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v10 = *(*(v2 + 56) + 8 * v6);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(v3 + 16))
  {
    sub_1DB1446A4(v3 + 40 * v10 + 32, v12, &qword_1ECC26E28, &unk_1DB2C2D70);
    v11 = v13 != 0;
    sub_1DB1445E0(v12, &qword_1ECC26E28, &unk_1DB2C2D70);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t Row.get<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v27 = a3;
  v7 = sub_1DB2BB364();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v34 = *v4;
  v14 = type metadata accessor for Expression();
  v28 = v12;
  v29 = v11;
  v30 = v13;
  v15 = type metadata accessor for Expression();

  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  ExpressionType.init<A>(_:)(&v28, v14, v15, WitnessTable, v17);
  v28 = v31;
  v29 = v32;
  v30 = v33;
  v18 = v35;
  Row.get<A>(_:)(&v28, a2, v27, v10);

  if (!v18)
  {
    v21 = v25;
    v20 = v26;
    v22 = *(a2 - 8);
    if ((*(v22 + 48))(v10, 1, a2) == 1)
    {
      (*(v21 + 8))(v10, v7);
      sub_1DB1F88FC();
      swift_allocError();
      *v23 = v12;
      *(v23 + 8) = v11;
      *(v23 + 16) = 0;
      *(v23 + 24) = 3;
      swift_willThrow();
    }

    else
    {
      return (*(v22 + 32))(v20, v10, a2);
    }
  }

  return result;
}

{
  v6 = v5;
  v11 = *a1;
  v10 = a1[1];
  v82 = a1[2];
  v12 = *v4;
  v13 = v4[1];
  v14 = *(*v4 + 16);
  swift_bridgeObjectRetain_n();

  if (v14)
  {
    v15 = sub_1DB141B30(v11, v10);
    if (v16)
    {
      v17 = v15;

      swift_bridgeObjectRelease_n();
      return sub_1DB299CB4(*(*(v12 + 56) + 8 * v17), v13, a2, a3, a4);
    }
  }

  v80 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v65 = a2;
  v66 = a3;
  v67 = v11;
  v68 = v10;
  v69 = v82;
  v19 = sub_1DB29A0E0(sub_1DB2A2FD4, &v64, v12);
  if (v21 == 0xFF)
  {

    v57 = *(v12 + 16);
    if (v57)
    {
      v81 = v5;
      v58 = sub_1DB1383EC(v57, 0);
      v82 = sub_1DB14A440(v83, v58 + 32, v57, v12);
      v5 = v83[0];

      sub_1DB149FCC();
      if (v82 != v57)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v6 = v81;
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC0];
    }

    v83[0] = v58;
    v5 = v6;
    sub_1DB148C3C(v83);
    if (!v6)
    {
      v62 = v83[0];
      sub_1DB1F88FC();
      swift_allocError();
      *v63 = v11;
      *(v63 + 8) = v10;
      *(v63 + 16) = v62;
      *(v63 + 24) = 1;
      return swift_willThrow();
    }

    goto LABEL_40;
  }

  v22 = v21;
  v79 = a4;
  v23 = v19;
  v24 = v20;

  v76 = v23;
  v77 = v24;
  v25 = sub_1DB29FCC4(v23, v24, v22 & 1, v12);
  if (v27)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    MEMORY[0x1E1284A10](v5);

    __break(1u);
    return result;
  }

  v28 = *(v12 + 36);
  if (v28 != v26)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v29 = 1 << *(v12 + 32);
  if (v29 < v25)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v75 = v22;
  v93[0] = v25;
  v93[1] = v26;
  v94 = 0;
  v95 = v29;
  v96 = v28;
  v97 = 0;
  sub_1DB29FBE0(v93, v12, &v84);

  MEMORY[0x1EEE9AC00](v30);
  v65 = a2;
  v66 = a3;
  v67 = v11;
  v68 = v10;
  v69 = v82;
  v74 = sub_1DB29A320(sub_1DB2A03B4);
  v73 = v31;
  v81 = v5;
  v32 = a2;
  v72 = v33;
  v34 = ~v33;
  v91 = v84;
  v92 = v85;
  sub_1DB1445E0(&v91, &qword_1ECC29120, &qword_1DB2CE768);
  v89 = v86;
  v90 = v87;
  sub_1DB1445E0(&v89, &qword_1ECC29120, &qword_1DB2CE768);
  v98 = v88;
  sub_1DB1445E0(&v98, &qword_1ECC29128, &unk_1DB2CE770);
  if (v34)
  {
    v78 = v32;
    v79 = a3;
    v80 = v11;
    v35 = 1 << *(v12 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v12 + 64);
    v38 = (v35 + 63) >> 6;

    v39 = 0;
    v40 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v41 = v81;
    v42 = v39;
    if (!v37)
    {
      goto LABEL_14;
    }

    do
    {
      v39 = v42;
LABEL_17:
      v43 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v44 = (*(v12 + 48) + ((v39 << 10) | (16 * v43)));
      v46 = *v44;
      v45 = v44[1];

      if (sub_1DB29A06C(v46, v45, v80, v10))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83[0] = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DB138470(0, *(v40 + 2) + 1, 1);
          v40 = v83[0];
        }

        v49 = *(v40 + 2);
        v48 = *(v40 + 3);
        v50 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          v71 = v49 + 1;
          v70 = v49;
          sub_1DB138470((v48 > 1), v49 + 1, 1);
          v50 = v71;
          v49 = v70;
          v40 = v83[0];
        }

        *(v40 + 2) = v50;
        v51 = &v40[16 * v49];
        *(v51 + 4) = v46;
        *(v51 + 5) = v45;
        goto LABEL_12;
      }

      v42 = v39;
      v41 = v81;
    }

    while (v37);
    while (1)
    {
LABEL_14:
      v39 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v39 >= v38)
      {
        break;
      }

      v37 = *(v12 + 64 + 8 * v39);
      ++v42;
      if (v37)
      {
        goto LABEL_17;
      }
    }

    v83[0] = v40;

    v5 = v41;
    sub_1DB148C3C(v83);
    if (v41)
    {
      goto LABEL_40;
    }

    v52 = v83[0];
    sub_1DB1F88FC();
    swift_allocError();
    *v53 = v80;
    *(v53 + 8) = v10;
    *(v53 + 16) = v52;
    *(v53 + 24) = 2;
    swift_willThrow();
    sub_1DB27C004(v74, v73, v72);
    v54 = v76;
    v55 = v77;
    v56 = v75;
  }

  else
  {

    v59 = v75;
    v60 = v76;
    v61 = v77;
    sub_1DB29A590(v83, v76, v77, v75 & 1, v12);

    sub_1DB299CB4(v83[0], v80, v32, a3, v79);
    v54 = v60;
    v55 = v61;
    v56 = v59;
  }

  return sub_1DB27C004(v54, v55, v56);
}

uint64_t sub_1DB28BCB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1DB1446A4(v1, &v11, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v20)
  {
    v9[6] = v17;
    v9[7] = v18;
    v10 = v19;
    v9[2] = v13;
    v9[3] = v14;
    v9[4] = v15;
    v9[5] = v16;
    v9[0] = v11;
    v9[1] = v12;
    v4 = sub_1DB1F4E58();
    v6 = v5;
    sub_1DB1F7130(v9);
  }

  else
  {
    v6 = *(&v11 + 1);
    v4 = v11;
  }

  sub_1DB1446A4(v2, &v11, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v20)
  {
    result = sub_1DB1445E0(&v11, &qword_1ECC27CC8, &unk_1DB2C3860);
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = v12;
  }

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  return result;
}