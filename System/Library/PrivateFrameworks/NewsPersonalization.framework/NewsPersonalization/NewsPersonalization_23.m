uint64_t sub_1C6D3A038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1C6D75DE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1C6D3B790(&unk_1EDCE7B10, 255, MEMORY[0x1E6968FB0]);
  v35 = a1;
  v13 = sub_1C6D79500();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1C6D3B790(&unk_1EDCE7B00, 255, MEMORY[0x1E6968FB0]);
      v22 = sub_1C6D79560();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C6C25D64();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1C6D3A4AC(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

unint64_t sub_1C6D3A2E8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1C6D79CD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1C6D7A260();

        sub_1C6D79610();
        v15 = sub_1C6D7A2B0();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1C6D3A4AC(int64_t a1)
{
  v3 = sub_1C6D75DE0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = sub_1C6D79CD0();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v15 = v12;
      v16 = (v14 + 1) & v12;
      v37 = v4[2];
      v38 = v4 + 2;
      v17 = v4[9];
      v35 = (v4 + 1);
      v36 = v9;
      v18 = v17;
      do
      {
        v19 = v18;
        v20 = v18 * v11;
        v37(v7, *(v8 + 48) + v18 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v15;
        v24 = v21;
        v25 = *(v21 + 40);
        sub_1C6D3B790(&unk_1EDCE7B10, 255, MEMORY[0x1E6968FB0]);
        v26 = sub_1C6D79500();
        (*v35)(v7, v3);
        v27 = v26 & v23;
        v15 = v23;
        v16 = v22;
        if (a1 >= v22)
        {
          if (v27 >= v22 && a1 >= v27)
          {
LABEL_16:
            v8 = v24;
            v30 = *(v24 + 48);
            v18 = v19;
            v31 = v19 * a1;
            if (v19 * a1 < v20 || v30 + v19 * a1 >= (v30 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v31 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v27 >= v22 || a1 >= v27)
        {
          goto LABEL_16;
        }

        v8 = v24;
        v18 = v19;
LABEL_5:
        v11 = (v11 + 1) & v15;
        v9 = v36;
      }

      while (((*(v36 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v32 = *(v8 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v34;
    ++*(v8 + 36);
  }
}

uint64_t sub_1C6D3A7B8()
{
  v0 = sub_1C6D78A80();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v80 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v3 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1C6D78630();
  v82 = *(v77 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D75CD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D75DE0();
  v83 = *(v12 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  v21 = [v20 URLsForDirectory:13 inDomains:1];

  v22 = sub_1C6D79780();
  if (*(v22 + 16))
  {
    (*(v83 + 16))(v18, v22 + ((*(v83 + 80) + 32) & ~*(v83 + 80)), v12);

    *&v84 = 0xD000000000000017;
    *(&v84 + 1) = 0x80000001C6DA8F70;
    (*(v8 + 104))(v11, *MEMORY[0x1E6968F70], v7);
    sub_1C6B16CF0();
    sub_1C6D75DD0();
    (*(v8 + 8))(v11, v7);
    v23 = [v19 defaultManager];
    sub_1C6D75DB0();
    v24 = sub_1C6D79570();

    v25 = [v23 fileExistsAtPath_];

    v26 = v83;
    if (v25)
    {
      v73 = v18;
      if (qword_1EDCE7180 != -1)
      {
        goto LABEL_20;
      }

      while (1)
      {
        sub_1C6B1D314();
        v75 = v27;
        v28 = swift_allocObject();
        v74 = xmmword_1C6D7E630;
        *(v28 + 16) = xmmword_1C6D7E630;
        sub_1C6D3B790(&qword_1EDCEA3B0, 255, MEMORY[0x1E6968FB0]);
        v29 = sub_1C6D7A0E0();
        v31 = v30;
        *(v28 + 56) = MEMORY[0x1E69E6158];
        v22 = sub_1C6B2064C();
        *(v28 + 64) = v22;
        *(v28 + 32) = v29;
        *(v28 + 40) = v31;
        sub_1C6D79AC0();
        sub_1C6D78D30();

        v32 = v76;
        v33 = sub_1C6D75E00();
        if (v32)
        {
          v35 = *(v26 + 8);
          v35(v15, v12);
          v35(v73, v12);
          return v22;
        }

        v42 = v34;
        v43 = v33;
        v44 = swift_allocObject();
        *(v44 + 16) = v74;
        v45 = sub_1C6D75E20();
        *(v44 + 56) = MEMORY[0x1E69E6158];
        *(v44 + 64) = v22;
        *(v44 + 32) = v45;
        *(v44 + 40) = v46;
        sub_1C6D79AC0();
        sub_1C6D78D30();

        v47 = sub_1C6D75B10();
        v48 = *(v47 + 48);
        v49 = *(v47 + 52);
        swift_allocObject();
        sub_1C6D75B00();
        sub_1C6B1B49C(0, &qword_1EC1D98C8, &type metadata for AppUserEmbeddingManager.Override, MEMORY[0x1E69E62F8]);
        sub_1C6D3B2F0();
        sub_1C6D75AF0();
        v68 = v43;

        v50 = v84;
        v51 = swift_allocObject();
        *(v51 + 16) = v74;
        v52 = *(v50 + 16);
        v53 = MEMORY[0x1E69E65A8];
        *(v51 + 56) = MEMORY[0x1E69E6530];
        *(v51 + 64) = v53;
        *(v51 + 32) = v52;
        sub_1C6D79AC0();
        sub_1C6D78D30();

        if (!v52)
        {
          break;
        }

        v66 = v42;
        v76 = 0;
        v67 = v15;
        v87 = MEMORY[0x1E69E7CC0];
        sub_1C6B39AC8(0, v52, 0);
        v54 = 0;
        v22 = v87;
        v69 = v82 + 32;
        v15 = (v50 + 64);
        v71 = v50;
        v72 = v12;
        v70 = v52;
        while (v54 < *(v50 + 16))
        {
          *&v74 = v54;
          v75 = v22;
          v55 = *(v15 - 4);
          v56 = *(v15 - 3);
          v57 = *(v15 - 2);
          v58 = *v15;
          v86 = 0;
          v84 = 0u;
          v85 = 0u;
          sub_1C6B1CD10(v56, v57);

          sub_1C6B1CD10(v56, v57);
          sub_1C6D78A70();
          sub_1C6D3B790(&qword_1EDCEA770, 255, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v59 = v78;
          v60 = v76;
          sub_1C6D78BE0();
          v76 = v60;
          if (v60)
          {

            sub_1C6B1C9F0(v68, v66);
            sub_1C6B1C9F0(v56, v57);

            v64 = *(v83 + 8);
            v22 = v72;
            v64(v67, v72);
            v64(v73, v22);

            return v22;
          }

          sub_1C6B1CD10(*v59, *(v59 + 8));
          sub_1C6D3B6DC(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6D78610();
          sub_1C6B1C9F0(v56, v57);

          v22 = v75;
          v87 = v75;
          v62 = *(v75 + 16);
          v61 = *(v75 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_1C6B39AC8(v61 > 1, v62 + 1, 1);
            v22 = v87;
          }

          v54 = v74 + 1;
          *(v22 + 16) = v62 + 1;
          (*(v82 + 32))(v22 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v62, v81, v77);
          v15 += 40;
          v50 = v71;
          v12 = v72;
          v26 = v83;
          if (v70 == v54)
          {

            sub_1C6B1C9F0(v68, v66);
            v65 = *(v26 + 8);
            v65(v67, v12);
            v65(v73, v12);
            return v22;
          }
        }

        __break(1u);
LABEL_20:
        swift_once();
      }

      sub_1C6B1C9F0(v68, v42);
      v63 = *(v26 + 8);
      v63(v15, v12);
      v63(v73, v12);
      return MEMORY[0x1E69E7CC0];
    }

    else
    {
      v22 = sub_1C6D75DB0();
      v38 = v37;
      sub_1C6D3B29C();
      swift_allocError();
      *v39 = v22;
      *(v39 + 8) = v38;
      *(v39 + 16) = 1;
      swift_willThrow();
      v40 = *(v26 + 8);
      v40(v15, v12);
      v40(v18, v12);
    }
  }

  else
  {

    sub_1C6D3B29C();
    swift_allocError();
    *v36 = 0xD00000000000001ELL;
    *(v36 + 8) = 0x80000001C6DA8FF0;
    *(v36 + 16) = 1;
    swift_willThrow();
  }

  return v22;
}

unint64_t sub_1C6D3B29C()
{
  result = qword_1EC1D98B8;
  if (!qword_1EC1D98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D98B8);
  }

  return result;
}

unint64_t sub_1C6D3B2F0()
{
  result = qword_1EC1D98D0;
  if (!qword_1EC1D98D0)
  {
    sub_1C6B1B49C(255, &qword_1EC1D98C8, &type metadata for AppUserEmbeddingManager.Override, MEMORY[0x1E69E62F8]);
    sub_1C6D3B38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D98D0);
  }

  return result;
}

unint64_t sub_1C6D3B38C()
{
  result = qword_1EC1D98D8;
  if (!qword_1EC1D98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D98D8);
  }

  return result;
}

uint64_t sub_1C6D3B3F4(uint64_t a1, uint64_t a2)
{
  sub_1C6B3C1F8();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C6D3B458()
{
  if (!qword_1EDCDFB98)
  {
    sub_1C6B3C1F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB98);
    }
  }
}

uint64_t sub_1C6D3B4C4(uint64_t a1, uint64_t a2)
{
  sub_1C6B1B7C0(0, &qword_1EDCDFB90, sub_1C6D3B458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6D3B544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D3B5AC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C6B1B7C0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D3B618(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6B1B7C0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6D3B674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D3B6DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C6D3B73C()
{
  result = qword_1EDCE2548;
  if (!qword_1EDCE2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2548);
  }

  return result;
}

uint64_t sub_1C6D3B790(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6D3B7D8(uint64_t a1, int a2)
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

uint64_t sub_1C6D3B820(uint64_t result, int a2, int a3)
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

uint64_t sub_1C6D3B894(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C6D7A130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xEF34366573614267 || (sub_1C6D7A130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C6D7A130();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1C6D3B9AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C6D3BC64(0, &qword_1EC1D98E0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D3BC10();
  sub_1C6D7A2D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v21 = sub_1C6D79FE0();
  v24 = 1;
  sub_1C6B1C938();
  sub_1C6D79FF0();
  v13 = v22;
  v12 = v23;
  LOBYTE(v22) = 2;
  v14 = sub_1C6D79FA0();
  v16 = v15;
  v17 = *(v7 + 8);
  v20 = v14;
  v17(v10, v6);
  sub_1C6B1CD10(v13, v12);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1C6B1C9F0(v13, v12);

  v19 = v20;
  *a2 = v21;
  a2[1] = v13;
  a2[2] = v12;
  a2[3] = v19;
  a2[4] = v16;
  return result;
}

unint64_t sub_1C6D3BC10()
{
  result = qword_1EC1D98E8;
  if (!qword_1EC1D98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D98E8);
  }

  return result;
}

void sub_1C6D3BC64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C6D3BC10();
    v7 = a3(a1, &type metadata for AppUserEmbeddingManager.Override.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C6D3BD38()
{
  result = qword_1EC1D9908;
  if (!qword_1EC1D9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9908);
  }

  return result;
}

unint64_t sub_1C6D3BD90()
{
  result = qword_1EC1D9910;
  if (!qword_1EC1D9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9910);
  }

  return result;
}

unint64_t sub_1C6D3BDE8()
{
  result = qword_1EC1D9918;
  if (!qword_1EC1D9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9918);
  }

  return result;
}

uint64_t sub_1C6D3BE60(void *a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1C6B11310(0, &unk_1EDCE7A38, MEMORY[0x1E6996108], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v34 - v5;
  sub_1C6B11310(0, &qword_1EDCE7A48, MEMORY[0x1E69960E8], v2);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v34 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = type metadata accessor for ComputeServiceConfigurationManager();
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = result;
  v34[14] = v15;
  v34[15] = sub_1C6D422DC(qword_1EDCE8C90, type metadata accessor for ComputeServiceConfigurationManager);
  v34[11] = v17;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = type metadata accessor for NewsAppFeatureResolvers();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = result;
  v34[9] = v19;
  v34[10] = sub_1C6D422DC(&qword_1EDCE9FF8, type metadata accessor for NewsAppFeatureResolvers);
  v34[6] = v20;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41FFC(0, &qword_1EDCE7A28, MEMORY[0x1E6996188]);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = type metadata accessor for PackageService();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = result;
  v34[4] = v23;
  v34[5] = sub_1C6D422DC(qword_1EDCE9D20, type metadata accessor for PackageService);
  v34[1] = v24;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = sub_1C6D78640();
  sub_1C6D77FE0();
  v27 = *(v26 - 8);
  result = (*(v27 + 48))(v11, 1, v26);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  (*(v27 + 32))(v13, v11, v26);
  (*(v27 + 56))(v13, 0, 1, v26);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = sub_1C6D786A0();
  sub_1C6D77FE0();
  result = (*(*(v29 - 8) + 48))(v6, 1, v29);
  if (result == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D78730();
  result = sub_1C6D77FD0();
  if (result)
  {
    sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    return sub_1C6D784D0();
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1C6D3C334@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v5 = result;
    a2[3] = &type metadata for NewsRadarAttachmentProvider;
    result = sub_1C6D42288();
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6D3C3C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1C6D78680();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1C6D78670();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D786E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1C6D78700();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (result)
  {
    v20 = [result possiblyUnfetchedAppConfiguration];
    swift_unknownObjectRelease();
    if ([v20 respondsToSelector_])
    {
      v21 = [v20 newsTabiConfiguration];
      swift_unknownObjectRelease();
      v22 = [v21 unloadGraphOnBackgroundConfiguration];

      v23 = [v22 graphIdleDuration];
      v24 = (v23 / 1000);
    }

    else
    {
      swift_unknownObjectRelease();
      v24 = 10.0;
    }

    *v15 = 50;
    (*(v12 + 104))(v15, *MEMORY[0x1E6996110], v11);
    sub_1C6D786F0();
    (*(v7 + 104))(v10, *MEMORY[0x1E69960F0], v25);
    *v6 = v24;
    *(v6 + 8) = 0;
    (*(v26 + 104))(v6, *MEMORY[0x1E69960F8], v27);
    return sub_1C6D78660();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D3C768(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    type metadata accessor for ComputeServiceAdSegmentProvider();
    v4 = swift_allocObject();
    sub_1C6D42238(0, &unk_1EC1D9920, MEMORY[0x1E69E6370], MEMORY[0x1E69D6550]);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    *(v4 + 16) = sub_1C6D78080();
    *(v4 + 24) = v3;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D3C850(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &qword_1EDCE86E0);
  result = sub_1C6D77FE0();
  if (v8)
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
    result = sub_1C6D77FD0();
    if (result)
    {
      v5 = result;
      type metadata accessor for ComputeServiceCohortMembershipService();
      v6 = swift_allocObject();
      sub_1C6B15E34(&v7, v6 + 16);
      *(v6 + 56) = v5;
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6D3C948@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE6F00);
  result = sub_1C6D77FE0();
  if (!v11[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for ComputeServiceMyMagazinesPersonalizationService();
    swift_allocObject();
    result = sub_1C6B78FEC(v11, v7, v9);
    a2[3] = v10;
    a2[4] = &off_1F46733D8;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C6D3CAA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  v5 = v4;
  result = sub_1C6D77FD0();
  if (result)
  {
    a2[3] = v5;
    a2[4] = &protocol witness table for <> ComputeService<A>;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D3CB58(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE6F00);
  result = sub_1C6D77FE0();
  if (!v28[3])
  {
    __break(1u);
    goto LABEL_27;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = result;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v7 = result;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6550, &protocolRef_FCPaidAccessCheckerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = result;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE9100);
  result = sub_1C6D77FE0();
  if (v27[3])
  {
    v11 = type metadata accessor for ComputeServiceScoringService();
    v12 = objc_allocWithZone(v11);
    if (qword_1EDCEA920 != -1)
    {
      swift_once();
    }

    sub_1C6D79A90();
    sub_1C6D78D30();
    sub_1C6B16F28(v28, &v12[OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_articleFeaturesFactory]);
    *&v12[OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_computeService] = v7;

    v13 = [v5 cachedSubscription];
    if (objc_getAssociatedObject(v13, v13 + 1))
    {
      sub_1C6D79C50();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
    v14 = MEMORY[0x1E69E7CA0];
    if (*(&v24 + 1))
    {
      sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v15 = v21;
        v16 = [v21 integerValue];
        if (v16 == -1)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_1C6D42104(&v25, &qword_1EDCE7CC0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C6D42238);
    }

    v15 = 0;
    v16 = 0;
LABEL_17:
    if (objc_getAssociatedObject(v13, ~v16))
    {
      sub_1C6D79C50();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
    if (*(&v24 + 1))
    {
      sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v17 = v21;
        v18 = [v17 integerValue];

        v19 = v18 - 68;
LABEL_25:
        v12[OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_isSubscribed] = (v19 ^ v16) & 1;
        *&v12[OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_paidAccessChecker] = v9;
        sub_1C6B16F28(v27, &v12[OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_userEmbeddingProvider]);
        v22.receiver = v12;
        v22.super_class = v11;
        swift_unknownObjectRetain();
        v20 = objc_msgSendSuper2(&v22, sel_init);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v27);
        __swift_destroy_boxed_opaque_existential_1(v28);
        return v20;
      }
    }

    else
    {
      sub_1C6D42104(&v25, &qword_1EDCE7CC0, v14 + 8, MEMORY[0x1E69E6720], sub_1C6D42238);
    }

LABEL_24:

    v19 = -68;
    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1C6D3D0D8(void *a1)
{
  sub_1C6B10DA0(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1C6D75DE0();
  sub_1C6D77FC0();
  v14 = *(*(v13 - 8) + 48);
  result = v14(v11, 1, v13);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D77FC0();
  result = v14(v9, 1, v13);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D77FC0();
  result = v14(v6, 1, v13);
  if (result != 1)
  {
    sub_1C6D41FFC(0, &qword_1EDCE7A28, MEMORY[0x1E6996188]);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    return sub_1C6D78840();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C6D3D34C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for RecipeFeaturesFactory();
    result = swift_allocObject();
    *(result + 16) = v5;
    a2[3] = v6;
    a2[4] = &off_1F4675DE8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D3D3F0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B15828(0, &unk_1EDCE96E0, type metadata accessor for RecipeUserEventHistorySessionUnarchiver);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
    result = sub_1C6D77FD0();
    if (result)
    {
      v6 = result;
      type metadata accessor for RecipeUserEventHistoryFeaturesFactory();
      v7 = swift_allocObject();
      v8 = sub_1C6B60D60(MEMORY[0x1E69E7CC0]);
      sub_1C6D42164();
      v9 = swift_allocObject();
      *(v9 + 24) = 0;
      *(v9 + 16) = v8;
      v7[4] = v9;
      v7[5] = 0;
      v7[2] = v4;
      v7[3] = v6;
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

uint64_t sub_1C6D3D53C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &unk_1EDCE9290);
  result = sub_1C6D77FE0();
  if (!v54)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE6FF0);
  result = sub_1C6D77FE0();
  if (!v52)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &unk_1EDCDFCE8);
  result = sub_1C6D77FE0();
  if (!v50)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v36 = v8;
  v37 = a2;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeUserEventHistoryFeaturesFactory();
  result = sub_1C6D77FD0();
  if (result)
  {
    v13 = result;
    v14 = v52;
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v35 = &v35;
    v16 = *(*(v14 - 8) + 64);
    MEMORY[0x1EEE9AC00](v15);
    v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v21 = type metadata accessor for RecipeFeaturesFactory();
    v46[3] = v21;
    v46[4] = &off_1F4675DE8;
    v46[0] = v20;
    v22 = type metadata accessor for ComputeServiceRecipeScoringService();
    v23 = swift_allocObject();
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v46, v21);
    v25 = *(*(v21 - 8) + 64);
    MEMORY[0x1EEE9AC00](v24);
    v27 = (&v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v29 = *v27;
    v45[3] = v21;
    v45[4] = &off_1F4675DE8;
    v45[0] = v29;
    v30 = v36;
    v23[2] = v6;
    v23[3] = v30;
    sub_1C6B16F28(v45, (v23 + 4));
    v31 = v54;
    v32 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    (*(v32 + 8))(&v38, v31, v32);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v47[4] = v42;
    v47[5] = v43;
    *v48 = *v44;
    *&v48[14] = *&v44[14];
    v47[0] = v38;
    v47[1] = v39;
    v47[2] = v40;
    v47[3] = v41;
    v33 = *(&v39 + 1);
    sub_1C6B11190(v47);
    v23[9] = v33;
    sub_1C6B15E34(&v49, (v23 + 10));
    v23[15] = v13;
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v46);
    result = __swift_destroy_boxed_opaque_existential_1(v51);
    v34 = v37;
    v37[3] = v22;
    v34[4] = &off_1F4675F70;
    *v34 = v23;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1C6D3D9B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE6FF0);
  result = sub_1C6D77FE0();
  v10 = v28;
  if (v28)
  {
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    v12 = *(*(v10 - 8) + 64);
    MEMORY[0x1EEE9AC00](v11);
    v14 = (v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v17 = type metadata accessor for RecipeFeaturesFactory();
    v26[3] = v17;
    v26[4] = &off_1F4675DE8;
    v26[0] = v16;
    v18 = type metadata accessor for ComputeServiceRecipeDiversificationService();
    v19 = swift_allocObject();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v26, v17);
    v21 = *(*(v17 - 8) + 64);
    MEMORY[0x1EEE9AC00](v20);
    v23 = (v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = *v23;
    v19[7] = v17;
    v19[8] = &off_1F4675DE8;
    v19[3] = v8;
    v19[4] = v25;
    v19[2] = v6;
    __swift_destroy_boxed_opaque_existential_1(v26);
    result = __swift_destroy_boxed_opaque_existential_1(v27);
    a2[3] = v18;
    a2[4] = &off_1F4676010;
    *a2 = v19;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C6D3DC84(void *a1, void *a2)
{
  v60 = a1;
  v70 = *MEMORY[0x1E69E9840];
  sub_1C6D41FFC(0, &qword_1EDCE7A30, MEMORY[0x1E6996180]);
  v58 = *(v3 - 1);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v51 - v5;
  v6 = sub_1C6D75DE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v51 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v51 - v16;
  sub_1C6D3E3E0(a2, &v66);
  v56 = v67;
  v57 = v66;
  v54 = v69;
  v55 = v68;
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C6B11310(0, &qword_1EDCE6678, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  v63 = v19;
  sub_1C6D77FC0();
  v20 = MEMORY[0x1E69E7CC0];
  if (v66)
  {
    v21 = v66;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v66 = MEMORY[0x1E69E7CC0];
  v22 = *(v21 + 2);
  v64 = v21;
  if (v22)
  {
    v51 = a2;
    v23 = 0;
    while (v23 < *(v21 + 2))
    {
      (*(v7 + 16))(v17, &v21[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23], v6);
      sub_1C6D3E7FC(&v65);
      ++v23;
      (*(v7 + 8))(v17, v6);
      sub_1C6B19EF0(v65);
      v21 = v64;
      if (v22 == v23)
      {
        v52 = v66;
        a2 = v51;
        v20 = MEMORY[0x1E69E7CC0];
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C6D77FC0();
  if (v66)
  {
    v25 = v66;
  }

  else
  {
    v25 = v20;
  }

  v66 = v20;
  v26 = v25[2];
  v63 = v25;
  if (v26)
  {
    v27 = 0;
    while (v27 < v25[2])
    {
      (*(v7 + 16))(v15, v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v27, v6);
      sub_1C6D3E7FC(&v65);
      ++v27;
      (*(v7 + 8))(v15, v6);
      sub_1C6B19EF0(v65);
      v25 = v63;
      if (v26 == v27)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_31;
  }

LABEL_17:
  v66 = v57;
  v67 = v56;
  v68 = v55;
  v69 = v54;
  v29 = v58;
  v28 = v59;
  v30 = v53;
  (*(v58 + 104))(v53, *MEMORY[0x1E6996178], v59);
  sub_1C6D78850();

  (*(v29 + 8))(v30, v28);
  if (v22)
  {
    v31 = objc_opt_self();
    v59 = *(v7 + 16);
    v60 = v31;
    v32 = &v64[(*(v7 + 80) + 32) & ~*(v7 + 80)];
    v58 = *(v7 + 72);
    do
    {
      v35 = v61;
      v59(v61, v32, v6);
      v36 = [v60 defaultManager];
      v37 = sub_1C6D75D30();
      (*(v7 + 8))(v35, v6);
      v66 = 0;
      LODWORD(v35) = [v36 removeItemAtURL:v37 error:&v66];

      if (v35)
      {
        v38 = v66;
      }

      else
      {
        v33 = v66;
        v34 = sub_1C6D75CC0();

        swift_willThrow();
      }

      v32 += v58;
      --v22;
    }

    while (v22);
  }

  if (v26)
  {
    v64 = objc_opt_self();
    v41 = *(v7 + 16);
    v39 = v7 + 16;
    v40 = v41;
    v42 = v63 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v43 = *(v39 + 56);
    do
    {
      v46 = v62;
      v40(v62, v42, v6);
      v47 = [v64 defaultManager];
      v48 = sub_1C6D75D30();
      (*(v39 - 8))(v46, v6);
      v66 = 0;
      LODWORD(v46) = [v47 removeItemAtURL:v48 error:&v66];

      if (v46)
      {
        v49 = v66;
      }

      else
      {
        v44 = v66;
        v45 = sub_1C6D75CC0();

        swift_willThrow();
      }

      v42 += v43;
      --v26;
    }

    while (v26);
  }

  sub_1C6B189DC(v57, v56, v55, v54);
  v50 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C6D3E3E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B11310(0, &qword_1EDCE7AF8, sub_1C6B10DA0, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v24 - v6;
  v8 = sub_1C6D75DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10DA0(0);
  v15 = v14;
  sub_1C6D77FC0();
  result = (*(*(v15 - 8) + 48))(v7, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_1C6B19E68(v7, sub_1C6B10DA0);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v17 = sub_1C6D75B10();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1C6D75B00();
    v20 = sub_1C6D75E00();
    v22 = v21;
    sub_1C6B11220();
    sub_1C6D75AF0();
    (*(v9 + 8))(v12, v8);
    sub_1C6B1C9F0(v20, v22);

    v23 = v26;
    *a2 = v24[2];
    *(a2 + 8) = v25;
    *(a2 + 24) = v23;
  }

  return result;
}

uint64_t sub_1C6D3E7FC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v63[6] = *MEMORY[0x1E69E9840];
  sub_1C6B11310(0, &qword_1EDCE63A8, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - v7;
  v9 = sub_1C6D75DE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v47 - v14;
  v15 = [objc_opt_self() defaultManager];
  v16 = sub_1C6D75D30();
  sub_1C6B11310(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  v58 = v17;
  v18 = swift_allocObject();
  v57 = xmmword_1C6D7E630;
  *(v18 + 16) = xmmword_1C6D7E630;
  v19 = *MEMORY[0x1E695DB78];
  *(v18 + 32) = *MEMORY[0x1E695DB78];
  type metadata accessor for URLResourceKey(0);
  v56 = v19;
  v20 = sub_1C6D79760();

  v63[0] = 0;
  v21 = [v15 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:v20 options:4 error:v63];

  v22 = v63[0];
  if (v21)
  {
    v23 = sub_1C6D79780();
    v24 = v22;
  }

  else
  {
    v25 = v63[0];
    v26 = sub_1C6D75CC0();

    swift_willThrow();
    v2 = 0;
    v23 = MEMORY[0x1E69E7CC0];
  }

  v27 = v9;
  v55 = *(v23 + 16);
  if (v55)
  {
    v28 = 0;
    v53 = v10 + 16;
    v48 = (v10 + 32);
    v51 = (v10 + 8);
    v50 = MEMORY[0x1E69E7CC0];
    v54 = v23;
    while (1)
    {
      if (v28 >= *(v23 + 16))
      {
        __break(1u);
      }

      v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v59 = *(v10 + 72);
      v60 = v31;
      (*(v10 + 16))(v62, v23 + v31 + v59 * v28, v27);
      inited = swift_initStackObject();
      *(inited + 16) = v57;
      v33 = v56;
      *(inited + 32) = v56;
      v34 = v33;
      sub_1C6B20798(inited);
      swift_setDeallocating();
      sub_1C6B19E68(inited + 32, type metadata accessor for URLResourceKey);
      sub_1C6D75CE0();
      if (v2)
      {

        v2 = 0;
        v35 = 1;
      }

      else
      {
        v35 = 0;
      }

      v36 = sub_1C6D75CA0();
      v37 = *(v36 - 8);
      (*(v37 + 56))(v8, v35, 1, v36);
      v38 = v61;
      sub_1C6D42070(v8, v61);
      if ((*(v37 + 48))(v38, 1, v36) == 1)
      {
        v29 = MEMORY[0x1E69688C8];
        v30 = MEMORY[0x1E69E6720];
        sub_1C6D42104(v8, &qword_1EDCE63A8, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720], sub_1C6B11310);
        sub_1C6D42104(v61, &qword_1EDCE63A8, v29, v30, sub_1C6B11310);
        v23 = v54;
      }

      else
      {
        v39 = v61;
        v40 = sub_1C6D75C50();
        LODWORD(v52) = v40;
        sub_1C6D42104(v8, &qword_1EDCE63A8, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720], sub_1C6B11310);
        (*(v37 + 8))(v39, v36);
        v23 = v54;
        if (v52 != 2 && (v40 & 1) != 0)
        {
          v52 = *v48;
          v52(v49, v62, v27);
          v41 = v50;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63[0] = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C6B18934(0, v41[2] + 1, 1);
            v41 = v63[0];
          }

          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            sub_1C6B18934(v43 > 1, v44 + 1, 1);
            v41 = v63[0];
          }

          v41[2] = v44 + 1;
          v50 = v41;
          v52(v41 + v60 + v44 * v59, v49, v27);
          goto LABEL_8;
        }
      }

      (*v51)(v62, v27);
LABEL_8:
      if (v55 == ++v28)
      {
        goto LABEL_22;
      }
    }
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_22:

  *v47 = v50;
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6D3EF14(void *a1)
{
  v2 = sub_1C6D780D0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
    result = sub_1C6D77FD0();
    if (result)
    {
      v8 = result;
      type metadata accessor for ComputeServiceRefreshBackgroundWorker();
      v9 = swift_allocObject();
      sub_1C6D422DC(&unk_1EDCE7AA0, MEMORY[0x1E69D67A0]);
      sub_1C6B11310(0, &qword_1EDCE6658, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
      sub_1C6B25098();
      sub_1C6D79CB0();
      sub_1C6D41F94();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_1C6D78020();
      v9[3] = v8;
      v9[4] = v13;
      v9[2] = v6;
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6D3F124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = type metadata accessor for ComputeServiceRetentionTokenVendor();
  result = sub_1C6D77FD0();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    a2[4] = sub_1C6D422DC(&unk_1EDCE03A8, type metadata accessor for ComputeServiceRetentionTokenVendor);
    *a2 = v6;
    v7 = *MEMORY[0x1E69960E0];
    v8 = sub_1C6D78640();
    v9 = *(*(v8 - 8) + 104);

    return v9(a2, v7, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D3F220(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    type metadata accessor for ComputeServiceStartupTask();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 18) = 0;
    *(result + 24) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D3F2EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a4;
  v7 = sub_1C6D75CD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B10DA0(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_1C6D75DE0();
  sub_1C6D77FC0();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v15, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20[2] = a2;
    v20[3] = a3;
    (*(v8 + 104))(v11, *MEMORY[0x1E6968F58], v7);
    sub_1C6B16CF0();
    sub_1C6D75DC0();
    (*(v8 + 8))(v11, v7);
    return (*(v18 + 8))(v15, v17);
  }

  return result;
}

void *sub_1C6D3F520@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FC0();
  if (v11 == 2)
  {
    __break(1u);
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }

    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
    result = sub_1C6D77FD0();
    if (result)
    {
      v7 = [result possiblyUnfetchedAppConfiguration];
      swift_unknownObjectRelease();
      if (([v7 respondsToSelector_] & 1) == 0)
      {
        swift_unknownObjectRelease();
        if (qword_1EDCE7170 == -1)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }

      v8 = [v7 internalPersonalizationRequestsToCollect];
      swift_unknownObjectRelease();
      if (v8)
      {
        v9 = sub_1C6D79780();

        if (*(v9 + 16))
        {
          if (qword_1EDCE7170 != -1)
          {
            swift_once();
          }

          sub_1C6D79AC0();
          sub_1C6D78D30();
          v10 = sub_1C6B1E610(v9);

          goto LABEL_15;
        }
      }

LABEL_13:
      if (qword_1EDCE7170 == -1)
      {
LABEL_14:
        sub_1C6D79AC0();
        result = sub_1C6D78D30();
        v10 = 0;
LABEL_15:
        *a2 = v10;
        return result;
      }

LABEL_16:
      swift_once();
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6D3F7DC()
{
  sub_1C6D771B0();
  sub_1C6D771A0();
  if (qword_1EDCE6168 != -1)
  {
    swift_once();
  }

  sub_1C6D77190();
}

uint64_t sub_1C6D3F864@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69[2] = *MEMORY[0x1E69E9840];
  v66 = sub_1C6D75CD0();
  v4 = *(v66 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C6D75DE0();
  v7 = *(v67 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v67);
  v56 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v64 = v53 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v53 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B11310(0, &qword_1EDCE6678, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  sub_1C6D77FC0();
  v16 = v69[0];
  if (!v69[0])
  {
    __break(1u);
  }

  v17 = *(v69[0] + 16);
  v54 = a2;
  v55 = v7;
  if (v17)
  {
    v68 = MEMORY[0x1E69E7CC0];
    sub_1C6B18934(0, v17, 0);
    v18 = v68;
    v19 = v7 + 16;
    v20 = *(v7 + 16);
    v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v53[1] = v16;
    v61 = v21;
    *&v62 = v20;
    v22 = v16 + v21;
    v60 = *(v19 + 56);
    v59 = *MEMORY[0x1E6968F68];
    v57 = (v4 + 8);
    v58 = (v4 + 104);
    v23 = (v19 - 8);
    v63 = v19;
    v24 = (v19 + 16);
    v25 = v67;
    do
    {
      v26 = v64;
      (v62)(v64, v22, v25);
      strcpy(v69, "configuration");
      HIWORD(v69[1]) = -4864;
      v27 = v14;
      v29 = v65;
      v28 = v66;
      (*v58)(v65, v59, v66);
      sub_1C6B16CF0();
      sub_1C6D75DC0();
      v25 = v67;
      (*v57)(v29, v28);
      (*v23)(v26, v25);
      v68 = v18;
      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1C6B18934(v30 > 1, v31 + 1, 1);
        v25 = v67;
        v18 = v68;
      }

      *(v18 + 16) = v31 + 1;
      v32 = v60;
      (*v24)(v18 + v61 + v31 * v60, v27, v25);
      v22 += v32;
      --v17;
      v14 = v27;
    }

    while (v17);

    v7 = v55;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
    v25 = v67;
  }

  v33 = v56;
  v66 = *(v18 + 16);
  if (!v66)
  {
LABEL_18:

    result = (*(v7 + 56))(v54, 1, 1, v25);
    goto LABEL_21;
  }

  v34 = objc_opt_self();
  v35 = 0;
  v64 = (v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
  v65 = v34;
  v63 = v7 + 16;
  v36 = (v7 + 8);
  v62 = xmmword_1C6D7E630;
  while (1)
  {
    if (v35 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    (*(v7 + 16))(v33, &v64[*(v7 + 72) * v35], v25);
    LOBYTE(v69[0]) = 0;
    v42 = [v65 defaultManager];
    v38 = v25;
    sub_1C6D75DA0();
    v43 = sub_1C6D79570();

    v44 = [v42 fileExistsAtPath:v43 isDirectory:v69];

    if (v44)
    {
      break;
    }

LABEL_12:
    ++v35;
    (*v36)(v33, v38);
    v25 = v38;
    if (v66 == v35)
    {
      goto LABEL_18;
    }
  }

  if (v69[0])
  {
    if (qword_1EDCE66F8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1A610(0, &qword_1EDCEA8A0, &qword_1EDCEA890);
    v37 = swift_allocObject();
    *(v37 + 16) = v62;
    sub_1C6D422DC(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
    v38 = v67;
    v39 = sub_1C6D7A0E0();
    v41 = v40;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1C6B2064C();
    *(v37 + 32) = v39;
    *(v37 + 40) = v41;
    v33 = v56;
    sub_1C6D78D30();

    v7 = v55;
    goto LABEL_12;
  }

  if (qword_1EDCE66F8 == -1)
  {
    goto LABEL_20;
  }

LABEL_23:
  swift_once();
LABEL_20:
  sub_1C6B1A610(0, &qword_1EDCEA8A0, &qword_1EDCEA890);
  v46 = swift_allocObject();
  *(v46 + 16) = v62;
  sub_1C6D422DC(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
  v47 = v67;
  v48 = sub_1C6D7A0E0();
  v50 = v49;
  *(v46 + 56) = MEMORY[0x1E69E6158];
  *(v46 + 64) = sub_1C6B2064C();
  *(v46 + 32) = v48;
  *(v46 + 40) = v50;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v51 = v54;
  (*(v7 + 32))(v54, v33, v47);
  result = (*(v7 + 56))(v51, 0, 1, v47);
LABEL_21:
  v52 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6D40058@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, SEL *a4@<X3>, uint64_t *a5@<X8>)
{
  v27 = a2;
  v28 = a3;
  v30 = sub_1C6D75CD0();
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1C6D75DE0();
  v12 = *(v29 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v18 = result;
    sub_1C6B11310(0, &qword_1EDCE64B0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
    v26 = *(v12 + 72);
    v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C6D7EB10;
    v24[1] = v20 + v19;
    v21 = [v18 privateDataDirectory];
    sub_1C6D795A0();
    v25 = a4;

    sub_1C6D75CF0();

    v31 = v27;
    v32 = v28;
    v22 = v30;
    (*(v8 + 104))(v11, *MEMORY[0x1E6968F58], v30);
    sub_1C6B16CF0();
    sub_1C6D75DC0();
    (*(v8 + 8))(v11, v22);
    (*(v12 + 8))(v15, v29);
    v23 = [v18 *v25];
    sub_1C6D795A0();

    sub_1C6D75D00();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  *a5 = v20;
  return result;
}

id sub_1C6D4038C(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for ComputeServiceConfigurationManager();
    result = sub_1C6D77FD0();
    if (result)
    {
      v6 = result;
      v7 = objc_allocWithZone(type metadata accessor for ComputeServiceUnloaderService());
      return sub_1C6CBF700(v4, v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6D404A0(void *a1, unint64_t *a2, uint64_t a3, void (*a4)(void), void (*a5)(_BYTE *, uint64_t))
{
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, a2);
  result = sub_1C6D77FE0();
  if (v12)
  {
    a4(0);
    v10 = swift_allocObject();
    a5(v11, v10 + 16);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D4059C(void *a1)
{
  sub_1C6B1A610(0, &qword_1EDCE6498, &qword_1EDCE7910);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C6D7EB10;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = type metadata accessor for UserEventsFeatureResolver();
  result = sub_1C6D77FD0();
  if (result)
  {
    v6 = result;
    *(v2 + 56) = v4;
    *(v2 + 64) = sub_1C6D422DC(&qword_1EDCE6FC8, type metadata accessor for UserEventsFeatureResolver);
    *(v2 + 32) = v6;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6D41EEC(0, &qword_1EDCE6C08, type metadata accessor for CurrentTimestampFeatureResolver);
    v9 = v8;
    result = sub_1C6D77FD0();
    if (result)
    {
      v10 = result;
      *(v2 + 96) = v9;
      *(v2 + 104) = sub_1C6D41F50(&qword_1EDCE6C10, &qword_1EDCE6C08, type metadata accessor for CurrentTimestampFeatureResolver);
      *(v2 + 72) = v10;
      type metadata accessor for NewsAppFeatureResolvers();
      result = swift_allocObject();
      *(result + 16) = v2;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6D4075C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleEventFeaturesProvider();
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    v4 = type metadata accessor for UserEventsFeatureResolver();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v7 = swift_allocObject();
    v8 = OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_features;
    v9 = sub_1C6D78810();
    (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
    v10 = v7 + OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_eventHistoryCount;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    *(v7 + 16) = v3;
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D40838()
{
  sub_1C6D41EEC(0, &qword_1EDCE6C08, type metadata accessor for CurrentTimestampFeatureResolver);

  return swift_allocObject();
}

uint64_t sub_1C6D40888()
{
  v0 = sub_1C6D75F80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ComputeServiceRetentionTokenVendor();
  v5 = swift_allocObject();
  sub_1C6D75F70();
  v6 = sub_1C6D75F60();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  *(v5 + 16) = v6;
  *(v5 + 24) = v8;
  return v5;
}

uint64_t sub_1C6D4097C()
{
  type metadata accessor for ArticleFeaturesFactory();

  return swift_allocObject();
}

uint64_t sub_1C6D409B0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleUserEventHistoryFeaturesFactory();
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C69C(0, &qword_1EDCE7E50, 0x1E69B5610);
    v6 = sub_1C6D77FD0();
    type metadata accessor for ArticleEventFeaturesProvider();
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D40A6C(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &qword_1EDCE86E0);
  result = sub_1C6D77FE0();
  if (v15)
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B15828(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver);
    v6 = v5;
    result = sub_1C6D77FD0();
    if (result)
    {
      v7 = result;
      type metadata accessor for ArticleUserEventHistoryFeaturesFactory();
      v8 = swift_allocObject();
      v13[3] = v6;
      v13[4] = &protocol witness table for <> SessionDataProvider<A>;
      v13[0] = v7;
      sub_1C6B16F28(v13, v8 + 16);
      v9 = v15;
      v10 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v11 = *(v10 + 8);

      v12 = v11(v9, v10);

      __swift_destroy_boxed_opaque_existential_1(v13);
      *(v8 + 56) = v12 & 1;
      __swift_destroy_boxed_opaque_existential_1(v14);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6D40BE8(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = type metadata accessor for ComputeServiceStartupTask();
  result = sub_1C6D77FD0();
  if (result)
  {
    v5 = result;
    v6[3] = v3;
    v6[4] = sub_1C6D422DC(&qword_1EDCE18D8, type metadata accessor for ComputeServiceStartupTask);
    v6[0] = v5;
    sub_1C6D780B0();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6D40CB0(void *a1)
{
  v2 = sub_1C6D75CD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D75DE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v14 = result;
    v15 = [result contentDirectory];

    sub_1C6D795A0();
    sub_1C6D75D00();

    v16[0] = 0xD000000000000019;
    v16[1] = 0x80000001C6DA97A0;
    (*(v3 + 104))(v6, *MEMORY[0x1E6968F68], v2);
    sub_1C6B16CF0();
    sub_1C6D75DD0();
    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C6D40F14(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B11310(0, &qword_1EDCE6710, type metadata accessor for FileLog, MEMORY[0x1E69E6720]);
  result = sub_1C6D77FC0();
  if (v7 == 1)
  {
    __break(1u);
  }

  else
  {
    v3 = type metadata accessor for NewsComputationalGraphRequestProcessor();
    v4 = objc_allocWithZone(v3);
    *&v4[qword_1EC1D8F78] = v7;
    v5 = &v4[qword_1EC1D8F80];
    *v5 = 0x676775732D676174;
    *(v5 + 1) = 0xEF736E6F69747365;
    v6.receiver = v4;
    v6.super_class = v3;
    return objc_msgSendSuper2(&v6, sel_init);
  }

  return result;
}

uint64_t sub_1C6D41054@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FileLog.Configuration(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = objc_opt_self();
  v14 = [v13 kilobytes];
  v15 = [v13 megabytes];
  v16 = *(v9 + 28);
  sub_1C6B0C69C(0, &unk_1EDCE7E40, 0x1E696B050);
  sub_1C6D75B80();
  *v12 = v14;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v19 = result;
    v20 = type metadata accessor for FileLog(0);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    v23 = swift_allocObject();
    v24 = OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL;
    v25 = sub_1C6D75DE0();
    (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
    *(v23 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_files) = MEMORY[0x1E69E7CC0];
    *(v23 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_urls) = MEMORY[0x1E69E7CD0];
    *(v23 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_targetDirectoryProcessingStatus) = 0;
    sub_1C6B1EA98(v12, v23 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_configuration);
    v26 = (v23 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectory);
    *v26 = v19;
    v26[1] = a2;
    v26[2] = a3;
    type metadata accessor for FileLog.TargetDirectory(0);
    result = swift_storeEnumTagMultiPayload();
    *a4 = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D412A0()
{
  v0 = sub_1C6D78730();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1C6D78720();
}

uint64_t sub_1C6D412D8(uint64_t *a1, void *a2)
{
  v4 = sub_1C6D78680();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B11310(0, &unk_1EDCE7A38, MEMORY[0x1E6996108], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v48 - v11;
  v13 = sub_1C6D786A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a1;
  v52 = a2;
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v19 = v14;
  sub_1C6D77FE0();
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  (*(v14 + 32))(v17, v12, v13);
  sub_1C6D78690();
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x1E6996100])
  {
    (*(v14 + 8))(v17, v13);
    return (*(v5 + 8))(v8, v4);
  }

  (*(v5 + 8))(v8, v4);
  v21 = v52;
  v22 = v52[4];
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  sub_1C6B11310(0, &qword_1EDCE65D0, sub_1C6B11374, MEMORY[0x1E69E6720]);
  result = sub_1C6D77FC0();
  v23 = v57;
  if (v57 == 1)
  {
    goto LABEL_25;
  }

  if (!v57)
  {
    return (*(v19 + 8))(v17, v13);
  }

  if ((NFInternalBuild() & 1) == 0)
  {
    (*(v19 + 8))(v17, v13);
    return sub_1C6B1EB48(v23);
  }

  v49 = v19;
  v50 = v17;
  if (sub_1C6B1E978(0x2D656C6369747261, 0xEF676E69726F6373, v23))
  {
    v24 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_1C6B11310(0, &qword_1EDCE6710, type metadata accessor for FileLog, MEMORY[0x1E69E6720]);
    result = sub_1C6D77FC0();
    v25 = v57;
    if (v57 != 1)
    {
      v26 = type metadata accessor for NewsComputationalGraphRequestProcessor();
      v27 = objc_allocWithZone(v26);
      *&v27[qword_1EC1D8F78] = v25;
      v28 = &v27[qword_1EC1D8F80];
      *v28 = 0x2D656C6369747261;
      *(v28 + 1) = 0xEF676E69726F6373;
      v53.receiver = v27;
      v53.super_class = v26;
      v29 = objc_msgSendSuper2(&v53, sel_init);
      sub_1C6D78710();

      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_10:
  if ((sub_1C6B1E978(0x676775732D676174, 0xEF736E6F69747365, v23) & 1) == 0)
  {
    goto LABEL_13;
  }

  v30 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_1C6B11310(0, &qword_1EDCE6710, type metadata accessor for FileLog, MEMORY[0x1E69E6720]);
  result = sub_1C6D77FC0();
  v31 = v57;
  if (v57 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v32 = type metadata accessor for NewsComputationalGraphRequestProcessor();
  v33 = objc_allocWithZone(v32);
  *&v33[qword_1EC1D8F78] = v31;
  v34 = &v33[qword_1EC1D8F80];
  *v34 = 0x676775732D676174;
  *(v34 + 1) = 0xEF736E6F69747365;
  v54.receiver = v33;
  v54.super_class = v32;
  v35 = objc_msgSendSuper2(&v54, sel_init);
  sub_1C6D78710();

LABEL_13:
  if (sub_1C6B1E978(0x726F63732D676174, 0xEB00000000676E69, v23))
  {
    v36 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_1C6B11310(0, &qword_1EDCE6710, type metadata accessor for FileLog, MEMORY[0x1E69E6720]);
    result = sub_1C6D77FC0();
    v37 = v57;
    if (v57 != 1)
    {
      v38 = type metadata accessor for NewsComputationalGraphRequestProcessor();
      v39 = objc_allocWithZone(v38);
      *&v39[qword_1EC1D8F78] = v37;
      v40 = &v39[qword_1EC1D8F80];
      *v40 = 0x726F63732D676174;
      *(v40 + 1) = 0xEB00000000676E69;
      v55.receiver = v39;
      v55.super_class = v38;
      v41 = objc_msgSendSuper2(&v55, sel_init);
      sub_1C6D78710();

      goto LABEL_16;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

LABEL_16:
  if (sub_1C6B1E978(0x732D657069636572, 0xEE00676E69726F63, v23))
  {
    v42 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_1C6B11310(0, &qword_1EDCE6710, type metadata accessor for FileLog, MEMORY[0x1E69E6720]);
    result = sub_1C6D77FC0();
    v43 = v57;
    if (v57 != 1)
    {
      sub_1C6B1EB48(v23);
      v44 = type metadata accessor for NewsComputationalGraphRequestProcessor();
      v45 = objc_allocWithZone(v44);
      *&v45[qword_1EC1D8F78] = v43;
      v46 = &v45[qword_1EC1D8F80];
      *v46 = 0x726F63732D676174;
      *(v46 + 1) = 0xEB00000000676E69;
      v56.receiver = v45;
      v56.super_class = v44;
      v47 = objc_msgSendSuper2(&v56, sel_init);
      sub_1C6D78710();

      return (*(v49 + 8))(v50, v13);
    }

    goto LABEL_29;
  }

  (*(v49 + 8))(v50, v13);
  return sub_1C6B1EB48(v23);
}

void *sub_1C6D41B60()
{
  v26 = sub_1C6D78DA0();
  v0 = *(v26 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v3 = (&v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6B10DA0(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D78550();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D75DE0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78490();
  sub_1C6D78540();
  (*(v9 + 8))(v12, v8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_1C6B19E68(v7, sub_1C6B10DA0);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v14 + 32))(v17, v7, v13);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1C6D75DA0();
    *(v19 + 24) = v20;
    *v3 = v19;
    v21 = v26;
    (*(v0 + 104))(v3, *MEMORY[0x1E69D7968], v26);
    v18 = sub_1C6B672C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v23 = v18[2];
    v22 = v18[3];
    if (v23 >= v22 >> 1)
    {
      v18 = sub_1C6B672C4(v22 > 1, v23 + 1, 1, v18);
    }

    (*(v14 + 8))(v17, v13);
    v18[2] = v23 + 1;
    (*(v0 + 32))(v18 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v23, v3, v21);
  }

  return v18;
}

void sub_1C6D41EEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C6B134B8();
    v7 = a3(a1, &type metadata for ComputeServiceConfiguration, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1C6D41F50(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C6D41EEC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C6D41F94()
{
  if (!qword_1EDCE5E18)
  {
    sub_1C6D780E0();
    v0 = sub_1C6D78040();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE5E18);
    }
  }
}

void sub_1C6D41FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Package();
    v7 = sub_1C6B134B8();
    v8 = a3(a1, &type metadata for ComputeServiceConfiguration, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C6D42070(uint64_t a1, uint64_t a2)
{
  sub_1C6B11310(0, &qword_1EDCE63A8, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6D42104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1C6D42164()
{
  if (!qword_1EDCDF778)
  {
    sub_1C6D421CC();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1C6D79D90();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF778);
    }
  }
}

void sub_1C6D421CC()
{
  if (!qword_1EDCDFC50)
  {
    sub_1C6D78810();
    sub_1C6B614F4();
    v0 = sub_1C6D794F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDFC50);
    }
  }
}

void sub_1C6D42238(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C6D42288()
{
  result = qword_1EDCE26D8;
  if (!qword_1EDCE26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE26D8);
  }

  return result;
}

uint64_t sub_1C6D422DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6D42358(uint64_t a1)
{
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v37 = v6;
    v42 = v1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C6B39624(0, v7, 0);
    v41 = v43;
    v9 = a1 + 56;
    v10 = -1 << *(a1 + 32);
    result = sub_1C6D79CC0();
    v11 = result;
    v12 = 0;
    v34 = a1 + 64;
    v35 = v7;
    v36 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v40 = *(a1 + 36);
      v15 = (*(a1 + 48) + 16 * v11);
      v16 = *v15;
      v17 = v15[1];
      MEMORY[0x1EEE9AC00](result);
      *(&v33 - 2) = v18;
      *(&v33 - 1) = v17;
      sub_1C6D5B1C4(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

      v19 = a1;
      v20 = v37;
      v21 = v42;
      sub_1C6D78C30();
      v42 = v21;

      v22 = v41;
      v43 = v41;
      v24 = *(v41 + 16);
      v23 = *(v41 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C6B39624(v23 > 1, v24 + 1, 1);
        v22 = v43;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v41 = v22;
      result = sub_1C6D5B51C(v20, v22 + v25 + *(v38 + 72) * v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      v13 = 1 << *(v19 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      a1 = v19;
      v9 = v36;
      v26 = *(v36 + 8 * v14);
      if ((v26 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      if (v40 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v11 & 0x3F));
      if (v27)
      {
        v13 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v14 << 6;
        v29 = v14 + 1;
        v30 = (v34 + 8 * v14);
        while (v29 < (v13 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1C6B360A8(v11, v40, 0);
            v13 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1C6B360A8(v11, v40, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v35)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_1C6D426DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1C6B39B18(0, v1, 0);
  v2 = v24;
  v4 = -1 << *(a1 + 32);
  v23 = a1 + 64;
  result = sub_1C6D79CC0();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v23 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    result = [*(*(a1 + 56) + 8 * v6) eventCount];
    v13 = *(v24 + 16);
    v12 = *(v24 + 24);
    if (v13 >= v12 >> 1)
    {
      v21 = result;
      sub_1C6B39B18((v12 > 1), v13 + 1, 1);
      result = v21;
    }

    *(v24 + 16) = v13 + 1;
    *(v24 + 8 * v13 + 32) = result;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v14 = *(v23 + 8 * v10);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v22;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v9 = v22;
      v18 = (a1 + 72 + 8 * v10);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1C6B360A8(v6, v11, 0);
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1C6B360A8(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
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

uint64_t sub_1C6D42908(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA56240](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1C6D79E90();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1C6D42A1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

double sub_1C6D42AB0(uint64x2_t *a1, double result)
{
  v2 = a1[1].u64[0];
  if (v2 < 2)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = a1[2].i64[v3];
    v6 = __CFADD__(v4, v5);
    v4 += v5;
    if (v6)
    {
      break;
    }

    if (v2 == ++v3)
    {
      v7 = v4 / v2;
      if (v2 < 4)
      {
        v8 = 0;
        v9 = 0.0;
        goto LABEL_11;
      }

      v8 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      v10 = vdupq_lane_s64(*&v7, 0);
      v11 = a1 + 3;
      v9 = 0.0;
      v12 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = vsubq_f64(vcvtq_f64_u64(v11[-1]), v10);
        v14 = vsubq_f64(vcvtq_f64_u64(*v11), v10);
        v15 = vmulq_f64(v13, v13);
        v16 = vmulq_f64(v14, v14);
        v9 = v9 + v15.f64[0] + v15.f64[1] + v16.f64[0] + v16.f64[1];
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v2 != v8)
      {
LABEL_11:
        v17 = v2 - v8;
        v18 = &a1[2] + v8;
        do
        {
          v19 = *v18++;
          v9 = v9 + (v19 - v7) * (v19 - v7);
          --v17;
        }

        while (v17);
      }

      return sqrt(v9 / (v2 - 1));
    }
  }

  __break(1u);
  return result;
}

uint64_t UserEventHistoryAggregateStoreFactory.__allocating_init(dataProvider:configurationManager:rootDirectory:aggregateStoreMetadataEndpoint:subscriptionController:readingHistory:headlineService:personalizationData:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v71 = a6;
  v72 = a8;
  v75 = a7;
  v76 = a4;
  v70 = a5;
  v77 = a3;
  v78 = a2;
  v79 = a1;
  v73 = sub_1C6D77F80();
  v9 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D75DE0();
  v62 = v11;
  v59 = *(v11 - 8);
  v12 = v59;
  v13 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1E6968FB0];
  sub_1C6B1839C(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v64 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v56 - v19;
  v63 = sub_1C6D79AF0();
  v20 = *(v63 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C6D79AE0();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = sub_1C6D78E80();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = *(v8 + 48);
  v29 = *(v8 + 52);
  v30 = swift_allocObject();
  v31 = *(v12 + 56);
  v66 = v12 + 56;
  v67 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL;
  v65 = v31;
  v31((v30 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL), 1, 1, v11);
  *(v30 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore) = 0;
  v61 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_refreshQueue;
  v60 = sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
  v58 = "eddingPersistenceEnabled";
  sub_1C6D78E50();
  v80 = MEMORY[0x1E69E7CC0];
  sub_1C6D5B1C4(&unk_1EDCE7EB8, MEMORY[0x1E69E8030]);
  v32 = MEMORY[0x1E69E8030];
  sub_1C6B1839C(0, &qword_1EDCE7F30, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1C6B17FD4(&qword_1EDCE7F28, &qword_1EDCE7F30, v32);
  v33 = v59;
  v34 = v64;
  sub_1C6D79CB0();
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8090], v63);
  *(v30 + v61) = sub_1C6D79B20();
  v35 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_sizeFormatter;
  v36 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v36 setAllowedUnits_];
  [v36 setCountStyle_];
  *(v30 + v35) = v36;
  v37 = v62;
  v38 = v78;
  *(v30 + 16) = v79;
  sub_1C6B16F28(v38, v30 + 24);
  sub_1C6D5B3CC(v77, v34, &unk_1EDCEA3A0, v68);
  if ((*(v33 + 48))(v34, 1, v37) == 1)
  {
    v39 = v69;
    v65(v69, 1, 1, v37);
  }

  else
  {
    v40 = v57;
    (*(v33 + 32))(v57, v34, v37);

    v39 = v69;
    sub_1C6D75D50();
    (*(v33 + 8))(v40, v37);
    v65(v39, 0, 1, v37);
  }

  v41 = v67;
  swift_beginAccess();
  v42 = MEMORY[0x1E6968FB0];
  sub_1C6D5D000(v39, v30 + v41, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
  swift_endAccess();
  v43 = v76;
  sub_1C6B16F28(v76, v30 + 64);
  v45 = v70;
  v44 = v71;
  *(v30 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_subscriptionController) = v70;
  *(v30 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_readingHistory) = v44;
  v46 = v75;
  sub_1C6B16F28(v75, v30 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_headlineService);
  v47 = v72;
  *(v30 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_personalizationData) = v72;
  swift_unownedRetainStrong();
  v70 = v45;
  v71 = v44;
  v48 = v47;
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v30;
  v80 = MEMORY[0x1E69E7CC0];
  sub_1C6D5B1C4(&qword_1EDCE7AB0, MEMORY[0x1E69D6420]);
  v49 = MEMORY[0x1E69D6420];
  sub_1C6B1839C(0, &qword_1EDCE6670, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1C6B17FD4(&qword_1EDCE6660, &qword_1EDCE6670, v49);
  sub_1C6D79CB0();
  sub_1C6D5B20C();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_1C6D781B0();

  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v43);
  sub_1C6D5B4AC(v77, &unk_1EDCEA3A0, v42);
  __swift_destroy_boxed_opaque_existential_1(v78);
  v54 = *(v30 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore);
  *(v30 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore) = v53;

  return v30;
}

uint64_t sub_1C6D433E8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C74034(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1C6D5B5E0(v5);
  *a1 = v2;
  return result;
}

void sub_1C6D43454(uint64_t a1)
{
  v2 = v1;
  v71 = a1;
  v3 = MEMORY[0x1E69E6720];
  sub_1C6B1839C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v63[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v63[-v8];
  v67 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v9 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v77 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6B1839C(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, v3);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = &v63[-v13];
  v75 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v14 = *(v75 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v70 = &v63[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v63[-v18];
  sub_1C6B1839C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v3);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v63[-v21];
  v23 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v78 = *(v23 - 8);
  v24 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v74 = &v63[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v3);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v63[-v28];
  v30 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v81 = &v63[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v38 = &v63[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = *(v2 + 16);
  v40 = *(v39 + 16);
  if (v40)
  {
    v80 = v22;
    v41 = 0;
    v42 = v14;
    v43 = v39 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v82 = (v31 + 48);
    v78 += 48;
    v79 = v43;
    v72 = (v42 + 48);
    v73 = v35;
    v68 = v23;
    do
    {
      if (v41 >= *(v39 + 16))
      {
        __break(1u);
        return;
      }

      sub_1C6D5B364(v43 + *(v35 + 72) * v41, v38, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      sub_1C6D5B3CC(v38, v29, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      sub_1C6D5B44C(v38, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      if ((*v82)(v29, 1, v30) == 1)
      {
        sub_1C6D5B4AC(v29, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      }

      else
      {
        v44 = v40;
        v45 = v81;
        sub_1C6D5B51C(v29, v81, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v46 = v80;
        Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v80);
        sub_1C6D5B44C(v45, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        if ((*v78)(v46, 1, v23) == 1)
        {
          sub_1C6D5B4AC(v46, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_11:
          v40 = v44;
          v43 = v79;
          goto LABEL_4;
        }

        v47 = v30;
        v48 = v74;
        sub_1C6D5B51C(v46, v74, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v49 = v76;
        sub_1C6D5B3CC(&v48[*(v23 + 20)], v76, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        sub_1C6D5B44C(v48, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        if ((*v72)(v49, 1, v75) == 1)
        {
          sub_1C6D5B4AC(v49, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v30 = v47;
          v35 = v73;
          goto LABEL_11;
        }

        v50 = v69;
        sub_1C6D5B51C(v49, v69, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        v51 = v50;
        v52 = v70;
        sub_1C6D5B51C(v51, v70, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        sub_1C6D5B51C(v52, v77, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
        v40 = v44;
        if (v71)
        {
          v30 = v47;
          v43 = v79;
          if (v71 == 1)
          {
            v53 = *&v77[*(v67 + 20)];
            v54 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
            swift_beginAccess();
            v55 = v53 + v54;
            v56 = v65;
            sub_1C6D5B3CC(v55, v65, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v57 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
            v64 = (*(*(v57 - 8) + 48))(v56, 1, v57);
            sub_1C6D5B4AC(v56, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            sub_1C6D5B44C(v77, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            v23 = v68;
            v35 = v73;
            if (v64 != 1)
            {
              return;
            }
          }

          else
          {
            sub_1C6D5B44C(v77, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            v23 = v68;
            v35 = v73;
          }
        }

        else
        {
          v58 = *&v77[*(v67 + 20)];
          v59 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
          swift_beginAccess();
          v60 = v58 + v59;
          v61 = v66;
          sub_1C6D5B3CC(v60, v66, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v62 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
          v64 = (*(*(v62 - 8) + 48))(v61, 1, v62);
          sub_1C6D5B4AC(v61, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6D5B44C(v77, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v23 = v68;
          v30 = v47;
          v35 = v73;
          v43 = v79;
          if (v64 != 1)
          {
            return;
          }
        }
      }

LABEL_4:
      ++v41;
    }

    while (v40 != v41);
  }
}

uint64_t sub_1C6D43E04@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v93 = a1;
  v96 = a3;
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = *(v97 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v89 = (&v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v88 = (&v86 - v7);
  v8 = MEMORY[0x1E69E6720];
  sub_1C6B1839C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v92 = &v86 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v86 = &v86 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v86 - v17;
  v18 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B1839C(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, v8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v86 - v23;
  v25 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v95 = &v86 - v31;
  sub_1C6B1839C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v8);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = (&v86 - v34);
  v36 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v86 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v35);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    v41 = &qword_1EDCE52B0;
    v42 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle;
    v43 = v35;
LABEL_5:
    sub_1C6D5B4AC(v43, v41, v42);
    return (*(v97 + 56))(v96, 1, 2, v98);
  }

  sub_1C6D5B51C(v35, v40, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D5B3CC(&v40[*(v36 + 20)], v24, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1C6D5B44C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v41 = &qword_1EDCE5398;
    v42 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata;
    v43 = v24;
    goto LABEL_5;
  }

  v45 = v95;
  sub_1C6D5B51C(v24, v95, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D5B364(v45, v30, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v46 = v94;
  sub_1C6D5B51C(v30, v94, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v48 = v97;
  v47 = v98;
  if (!v93)
  {
    v54 = v97;
    v55 = *(v46 + *(v18 + 20));
    v56 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
    swift_beginAccess();
    v51 = v47;
    v57 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
    v58 = v92;
    sub_1C6D5B3CC(v55 + v56, v92, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v93 = *(v54 + 48);
    v59 = v93(v58, 1, v51);
    sub_1C6D5B4AC(v58, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v59 == 1)
    {
      sub_1C6D5B44C(v95, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      sub_1C6D5B44C(v94, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      return (*(v54 + 56))(v96, 1, 2, v51);
    }

    v66 = v55 + v56;
    v48 = v87;
    sub_1C6D5B3CC(v66, v87, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v67 = v93;
    v68 = v93(v48, 1, v51);
    v62 = v96;
    if (v68 == 1)
    {
      v69 = v89;
      *v89 = xmmword_1C6D7F510;
      v70 = v69 + *(v51 + 20);
      sub_1C6D78A30();
      sub_1C6D5B44C(v95, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v71 = v67(v48, 1, v51);
      v64 = v97;
      if (v71 != 1)
      {
        sub_1C6D5B4AC(v48, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }

LABEL_30:
      result = sub_1C6D5B44C(v94, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v72 = *v69;
      v79 = v69[1];
      v80 = v79 >> 62;
      if ((v79 >> 62) > 1)
      {
        if (v80 != 2)
        {
          if (!v90)
          {
            goto LABEL_47;
          }

          goto LABEL_49;
        }

        v83 = v72 + 16;
        v81 = *(v72 + 16);
        v82 = *(v83 + 8);
        v78 = __OFSUB__(v82, v81);
        v72 = v82 - v81;
        if (v78)
        {
          __break(1u);
LABEL_37:
          v78 = __OFSUB__(HIDWORD(v72), v72);
          LODWORD(v72) = HIDWORD(v72) - v72;
          if (!v78)
          {
            v72 = v72;
            goto LABEL_39;
          }

          __break(1u);
LABEL_52:
          __break(1u);
          return result;
        }
      }

      else if (v80)
      {
        v78 = __OFSUB__(HIDWORD(v72), v72);
        LODWORD(v72) = HIDWORD(v72) - v72;
        if (v78)
        {
          goto LABEL_52;
        }

        v72 = v72;
      }

      else
      {
        v72 = BYTE6(v79);
      }

      if (v90 == v72 / 2)
      {
LABEL_47:
        sub_1C6D5B364(v69, v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v85 = 0;
LABEL_50:
        (*(v64 + 56))(v62, v85, 2, v51);
        return sub_1C6D5B44C(v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }

LABEL_49:
      v85 = 2;
      goto LABEL_50;
    }

LABEL_29:
    sub_1C6D5B44C(v95, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D5B44C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v69 = v89;
    sub_1C6D5B51C(v48, v89, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v64 = v97;
    goto LABEL_30;
  }

  if (v93 == 1)
  {
    v49 = *(v46 + *(v18 + 20));
    v50 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
    swift_beginAccess();
    v51 = v91;
    sub_1C6D5B3CC(v49 + v50, v91, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v52 = *(v48 + 48);
    v53 = v52(v51, 1, v47);
    sub_1C6D5B4AC(v51, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v53 == 1)
    {
      sub_1C6D5B44C(v95, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      sub_1C6D5B44C(v94, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      return (*(v48 + 56))(v96, 1, 2, v98);
    }

    v60 = v49 + v50;
    v61 = v86;
    sub_1C6D5B3CC(v60, v86, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v62 = v98;
    v63 = v52(v61, 1, v98);
    v64 = v96;
    if (v63 == 1)
    {
      v57 = v88;
      *v88 = xmmword_1C6D7F510;
      v65 = v57 + *(v62 + 20);
      sub_1C6D78A30();
      sub_1C6D5B44C(v95, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      if (v52(v61, 1, v62) != 1)
      {
        sub_1C6D5B4AC(v61, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }
    }

    else
    {
      sub_1C6D5B44C(v95, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v57 = v88;
      sub_1C6D5B51C(v61, v88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }

    result = sub_1C6D5B44C(v94, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v72 = *v57;
    v73 = *(v57 + 1);
    v74 = v73 >> 62;
    if ((v73 >> 62) <= 1)
    {
      if (!v74)
      {
        v72 = BYTE6(v73);
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (v74 != 2)
    {
      if (!v90)
      {
        goto LABEL_40;
      }

      goto LABEL_42;
    }

    v77 = v72 + 16;
    v75 = *(v72 + 16);
    v76 = *(v77 + 8);
    v78 = __OFSUB__(v76, v75);
    v72 = v76 - v75;
    if (!v78)
    {
LABEL_39:
      if (v90 == v72 / 2)
      {
LABEL_40:
        sub_1C6D5B364(v57, v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v84 = 0;
LABEL_43:
        (*(v48 + 56))(v64, v84, 2, v62);
        return sub_1C6D5B44C(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }

LABEL_42:
      v84 = 2;
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_1C6D5B44C(v95, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D5B44C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D5B44C(v46, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  return (*(v48 + 56))(v96, 1, 2, v47);
}

uint64_t UserEventHistoryAggregateStoreFactory.init(dataProvider:configurationManager:rootDirectory:aggregateStoreMetadataEndpoint:subscriptionController:readingHistory:headlineService:personalizationData:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v71 = a6;
  v72 = a8;
  v75 = a7;
  v76 = a4;
  v70 = a5;
  v77 = a3;
  v78 = a2;
  v79 = a1;
  v73 = sub_1C6D77F80();
  v10 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D75DE0();
  v62 = v12;
  v61 = *(v12 - 8);
  v13 = v61;
  v14 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1E6968FB0];
  sub_1C6B1839C(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v63 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v56 - v20;
  v64 = sub_1C6D79AF0();
  v21 = *(v64 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C6D79AE0();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = sub_1C6D78E80();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = *(v13 + 56);
  v66 = v13 + 56;
  v67 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL;
  v65 = v30;
  (v30)(v8 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL, 1, 1, v12, v29);
  *(v8 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore) = 0;
  v60 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_refreshQueue;
  v59 = sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
  v58 = "eddingPersistenceEnabled";
  sub_1C6D78E50();
  v80 = MEMORY[0x1E69E7CC0];
  sub_1C6D5B1C4(&unk_1EDCE7EB8, MEMORY[0x1E69E8030]);
  v31 = MEMORY[0x1E69E8030];
  sub_1C6B1839C(0, &qword_1EDCE7F30, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  v32 = v31;
  v33 = v63;
  sub_1C6B17FD4(&qword_1EDCE7F28, &qword_1EDCE7F30, v32);
  sub_1C6D79CB0();
  (*(v21 + 104))(v24, *MEMORY[0x1E69E8090], v64);
  v34 = v61;
  *(v8 + v60) = sub_1C6D79B20();
  v35 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_sizeFormatter;
  v36 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v36 setAllowedUnits_];
  [v36 setCountStyle_];
  *(v9 + v35) = v36;
  v37 = v62;
  v38 = v78;
  *(v9 + 16) = v79;
  sub_1C6B16F28(v38, v9 + 24);
  sub_1C6D5B3CC(v77, v33, &unk_1EDCEA3A0, v68);
  if ((*(v34 + 48))(v33, 1, v37) == 1)
  {
    v39 = v69;
    v65(v69, 1, 1, v37);
  }

  else
  {
    v40 = v57;
    (*(v34 + 32))(v57, v33, v37);

    v39 = v69;
    sub_1C6D75D50();
    (*(v34 + 8))(v40, v37);
    v65(v39, 0, 1, v37);
  }

  v41 = v67;
  swift_beginAccess();
  v42 = MEMORY[0x1E6968FB0];
  sub_1C6D5D000(v39, v9 + v41, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
  swift_endAccess();
  v43 = v76;
  sub_1C6B16F28(v76, v9 + 64);
  v45 = v70;
  v44 = v71;
  *(v9 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_subscriptionController) = v70;
  *(v9 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_readingHistory) = v44;
  v46 = v75;
  sub_1C6B16F28(v75, v9 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_headlineService);
  v47 = v72;
  *(v9 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_personalizationData) = v72;
  swift_unownedRetainStrong();
  v70 = v45;
  v71 = v44;
  v48 = v47;
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v9;
  v80 = MEMORY[0x1E69E7CC0];
  sub_1C6D5B1C4(&qword_1EDCE7AB0, MEMORY[0x1E69D6420]);
  v49 = MEMORY[0x1E69D6420];
  sub_1C6B1839C(0, &qword_1EDCE6670, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1C6B17FD4(&qword_1EDCE6660, &qword_1EDCE6670, v49);
  sub_1C6D79CB0();
  sub_1C6D5B20C();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_1C6D781B0();

  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v43);
  sub_1C6D5B4AC(v77, &unk_1EDCEA3A0, v42);
  __swift_destroy_boxed_opaque_existential_1(v78);
  v54 = *(v9 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore);
  *(v9 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore) = v53;

  return v9;
}

uint64_t sub_1C6D452C4@<X0>(uint64_t *a1@<X8>)
{
  swift_unownedRetainStrong();
  sub_1C6D45308(a1);
}

void sub_1C6D45308(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1C6D45608(0, v33);
  v4 = v33[0];
  v5 = v33[1];
  v6 = v33[2];
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  sub_1C6B1D314();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6D7E630;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v8 = UserEventHistoryAggregateStore.description.getter();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C6B2064C();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v11 = v2[6];
  v12 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v11);
  (*(v12 + 8))(v26, v11, v12);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v18 = v31;
  v17 = v32;
  sub_1C6B16E58(v27, v28, v29, v30, v31, v32);
  sub_1C6B11190(v26);
  if (!v13)
  {
    goto LABEL_6;
  }

  v19 = v16;
  sub_1C6B16EC0(v13, v14, v15, v16, v18, v17);
  v20 = [v19 enablementRequirements];
  if (v20)
  {
    v21 = v20;
    v23 = v4;
    v24 = v5;
    v25 = v6;
    v22 = sub_1C6D45EC8(&v23);

    if ((v22 & 1) == 0)
    {
LABEL_6:

      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }
  }

  else
  {
    sub_1C6D79AC0();
    sub_1C6D78D30();
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
}

NewsPersonalization::UserEventHistoryAggregateStore_optional __swiftcall UserEventHistoryAggregateStoreFactory.userEventHistoryAggregateStore()()
{
  if (*(v0 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore))
  {

    sub_1C6D781A0();
  }

  else
  {
    __break(1u);
  }

  result.value.decayRate = v4;
  result.value.aggregateIdentifierToEvents._rawValue = v2;
  result.value.aggregates._rawValue = v1;
  result.is_nil = v3;
  return result;
}

uint64_t UserEventHistoryAggregateStoreFactory.refreshAggregateStore()()
{
  sub_1C6B1BAAC(0);
  v0 = sub_1C6D78320();

  return v0;
}

void sub_1C6D45608(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1C6B1839C(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v63 - v8;
  v10 = sub_1C6D75DE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1EDCE7498 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  v15 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL;
  swift_beginAccess();
  sub_1C6D5B3CC(v2 + v15, v9, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C6D5B4AC(v9, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
    if (qword_1EDCE7498 == -1)
    {
LABEL_6:
      sub_1C6D79AC0();
      sub_1C6D78D30();
      sub_1C6D5D2C8();
      swift_allocError();
      *v16 = 2;
      swift_willThrow();
      return;
    }

LABEL_28:
    swift_once();
    goto LABEL_6;
  }

  v17 = v2;
  (*(v11 + 32))(v14, v9, v10);
  v18 = [objc_opt_self() defaultManager];
  sub_1C6D75DB0();
  v19 = sub_1C6D79570();

  v20 = [v18 fileExistsAtPath_];

  if (!v20)
  {
    sub_1C6D5D2C8();
    swift_allocError();
    *v34 = 2;
    swift_willThrow();

    (*(v11 + 8))(v14, v10);
    return;
  }

  v67 = v18;
  v21 = sub_1C6D75E00();
  v23 = MEMORY[0x1E69E6158];
  v68 = v3;
  if (v3)
  {
    v65 = 0;
    v24 = MEMORY[0x1E69E6158];
    v66 = a2;
    if (qword_1EDCE7498 != -1)
    {
      swift_once();
    }

    v64 = qword_1EDCE74A0;
    sub_1C6D79AA0();
    sub_1C6B1D314();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C6D7EB10;
    sub_1C6D5B1C4(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
    v26 = sub_1C6D7A0E0();
    v28 = v27;
    *(v25 + 56) = v23;
    v29 = sub_1C6B2064C();
    *(v25 + 64) = v29;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v69 = 0;
    v70 = 0xE000000000000000;
    v30 = v68;
    v71 = v68;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    v31 = v69;
    v32 = v70;
    *(v25 + 96) = v24;
    *(v25 + 104) = v29;
    *(v25 + 72) = v31;
    *(v25 + 80) = v32;
    sub_1C6D78D30();

    v33 = v67;
    sub_1C6D4D8A4(v67);
    (*(v11 + 8))(v14, v10);

    return;
  }

  v35 = v22;
  v65 = v21;
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDCE74A0;
  sub_1C6B1D314();
  v63[0] = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C6D7E630;
  v69 = 0;
  v70 = 0xE000000000000000;
  v39 = *(v17 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_sizeFormatter);
  v40 = v35 >> 62;
  v63[1] = v36;
  v64 = v35;
  if ((v35 >> 62) <= 1)
  {
    if (!v40)
    {
      v41 = BYTE6(v35);
      goto LABEL_24;
    }

LABEL_22:
    if (__OFSUB__(HIDWORD(v65), v65))
    {
      __break(1u);
      return;
    }

    v41 = HIDWORD(v65) - v65;
    goto LABEL_24;
  }

  v41 = 0;
  if (v40 == 2)
  {
    v43 = *(v65 + 16);
    v42 = *(v65 + 24);
    v41 = v42 - v43;
    if (__OFSUB__(v42, v43))
    {
      __break(1u);
      goto LABEL_22;
    }
  }

LABEL_24:
  v44 = [v39 stringFromByteCount_];
  v45 = sub_1C6D795A0();
  v47 = v46;

  MEMORY[0x1CCA55B00](v45, v47);

  v48 = v69;
  v49 = v70;
  *(v38 + 56) = v23;
  v50 = sub_1C6B2064C();
  *(v38 + 64) = v50;
  *(v38 + 32) = v48;
  *(v38 + 40) = v49;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v51 = sub_1C6D75B10();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  sub_1C6D75B00();
  sub_1C6D5D31C();
  v54 = v64;
  v55 = v65;
  v56 = v68;
  sub_1C6D75AF0();
  if (v56)
  {

    LODWORD(v68) = sub_1C6D79AA0();
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1C6D7EB10;
    sub_1C6D5B1C4(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
    v58 = sub_1C6D7A0E0();
    v59 = MEMORY[0x1E69E6158];
    *(v57 + 56) = MEMORY[0x1E69E6158];
    *(v57 + 64) = v50;
    *(v57 + 32) = v58;
    *(v57 + 40) = v60;
    v69 = 0;
    v70 = 0xE000000000000000;
    v71 = v56;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    v61 = v69;
    v62 = v70;
    *(v57 + 96) = v59;
    *(v57 + 104) = v50;
    *(v57 + 72) = v61;
    *(v57 + 80) = v62;
    sub_1C6D78D30();

    sub_1C6D4D8A4(v67);
    (*(v11 + 8))(v14, v10);

    sub_1C6B1C9F0(v65, v64);
  }

  else
  {
    (*(v11 + 8))(v14, v10);

    sub_1C6B1C9F0(v55, v54);
  }
}

uint64_t sub_1C6D45EC8(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1C6D77050();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(v9 + 16);
  if (v10 < [v2 minimumAggregateCount])
  {
    if (qword_1EDCE7498 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C6D7EB10;
    v49 = *(v9 + 16);
    v12 = sub_1C6D7A0E0();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1C6B2064C();
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v49 = [v2 minimumAggregateCount];
    v17 = sub_1C6D7A0E0();
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 72) = v17;
    *(v11 + 80) = v18;
    sub_1C6D79AC0();
LABEL_5:
    sub_1C6D78D30();

    return 0;
  }

  sub_1C6D77030();
  v19 = sub_1C6D76FE0();
  v21 = v20;
  (*(v5 + 8))(v8, v4);
  if (!*(v9 + 16))
  {

    goto LABEL_14;
  }

  v22 = sub_1C6B5DEA8(v19, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_14:
    if (qword_1EDCE7498 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    sub_1C6D78D30();
    return 0;
  }

  v25 = [*(*(v9 + 56) + 8 * v22) eventCount];
  v26 = [v2 minimumEventCount];
  if (v26 >= 1 && v25 < v26)
  {
    if (qword_1EDCE7498 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C6D7EB10;
    v49 = v25;
    v28 = sub_1C6D7A0E0();
    v30 = v29;
    v31 = MEMORY[0x1E69E6158];
    *(v27 + 56) = MEMORY[0x1E69E6158];
    v32 = sub_1C6B2064C();
    *(v27 + 64) = v32;
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    v49 = [v2 minimumEventCount];
    v33 = sub_1C6D7A0E0();
    *(v27 + 96) = v31;
    *(v27 + 104) = v32;
    *(v27 + 72) = v33;
    *(v27 + 80) = v34;
    sub_1C6D79AC0();
    goto LABEL_5;
  }

  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  sub_1C6B1D314();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C6D80210;
  v49 = *(v9 + 16);
  v37 = sub_1C6D7A0E0();
  v39 = v38;
  v40 = MEMORY[0x1E69E6158];
  *(v36 + 56) = MEMORY[0x1E69E6158];
  v41 = sub_1C6B2064C();
  *(v36 + 64) = v41;
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  v49 = [v2 minimumAggregateCount];
  v42 = sub_1C6D7A0E0();
  *(v36 + 96) = v40;
  *(v36 + 104) = v41;
  *(v36 + 72) = v42;
  *(v36 + 80) = v43;
  v49 = v25;
  v44 = sub_1C6D7A0E0();
  *(v36 + 136) = v40;
  *(v36 + 144) = v41;
  *(v36 + 112) = v44;
  *(v36 + 120) = v45;
  v49 = [v2 minimumEventCount];
  v46 = sub_1C6D7A0E0();
  *(v36 + 176) = v40;
  *(v36 + 184) = v41;
  *(v36 + 152) = v46;
  *(v36 + 160) = v47;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  return 1;
}

uint64_t sub_1C6D463FC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v99 = a6;
  sub_1C6B1839C(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v81 - v14;
  v93 = sub_1C6D75F50();
  v97 = *(v93 - 8);
  v16 = *(v97 + 64);
  v17 = MEMORY[0x1EEE9AC00](v93);
  v92 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v96 = v81 - v18;
  v19 = swift_allocObject();
  v94 = a2;
  v95 = a1;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v98 = v19;
  v20 = qword_1EDCE7498;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDCE74A0;
  sub_1C6D79A90();
  sub_1C6B1D314();
  v91 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C6D7E630;
  aBlock[0] = a5;
  v24 = sub_1C6D7A0E0();
  v26 = v25;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1C6B2064C();
  *(v23 + 64) = v27;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  sub_1C6D78D30();

  if (a5 < 1)
  {

    aBlock[0] = MEMORY[0x1E69E7CC0];
    return (v95)(aBlock);
  }

  v28 = [*(*(v99 + 16) + 16) earliestSessionDate];
  if (v28)
  {
    v29 = v28;
    sub_1C6D75F20();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = v93;
  v32 = v97;
  (*(v97 + 56))(v13, v30, 1, v93);
  sub_1C6C35894(v13, v15);
  if ((*(v32 + 48))(v15, 1, v31) == 1)
  {

    sub_1C6D5B4AC(v15, &qword_1EDCEA960, MEMORY[0x1E6969530]);
    sub_1C6D79A90();
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C6D78D30();
    aBlock[0] = v33;
    return (v95)(aBlock);
  }

  v87 = v21;
  v35 = v16;
  v90 = a5;
  v36 = v32 + 32;
  v37 = *(v32 + 32);
  v38 = v96;
  v37(v96, v15, v31);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  v40 = (v39 + 16);
  v89 = *(v99 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_readingHistory);
  v41 = v92;
  v83 = *(v32 + 16);
  v83(v92, v38, v31);
  v81[1] = v32 + 16;
  v42 = *(v32 + 80);
  v43 = (v42 + 24) & ~v42;
  v84 = v35;
  v86 = v42;
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  v85 = v36;
  v82 = v37;
  v37((v44 + v43), v41, v31);
  aBlock[4] = sub_1C6D5D1A8;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6D46FE4;
  aBlock[3] = &block_descriptor_16;
  v45 = _Block_copy(aBlock);
  v88 = v39;

  v46 = [v89 sortedVisitedArticleIDsSatisfying_];
  _Block_release(v45);
  v47 = MEMORY[0x1E69E6158];
  v48 = sub_1C6D79780();

  v49 = sub_1C6B75C84(v90, v48);
  v90 = v50;
  v52 = v51;
  v54 = v53;
  sub_1C6D79A90();
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1C6D807C0;
  swift_beginAccess();
  v56 = *v40;
  v57 = v47;
  v100 = v56;
  v58 = sub_1C6D7A0E0();
  *(v55 + 56) = v47;
  *(v55 + 64) = v27;
  *(v55 + 32) = v58;
  *(v55 + 40) = v59;
  v91 = v54;
  v60 = v54 >> 1;
  if (__OFSUB__(v60, v52))
  {
    __break(1u);
    goto LABEL_25;
  }

  v100 = v60 - v52;
  v61 = sub_1C6D7A0E0();
  *(v55 + 96) = v47;
  *(v55 + 104) = v27;
  *(v55 + 72) = v61;
  *(v55 + 80) = v62;
  sub_1C6D5B1C4(&qword_1EDCE6380, MEMORY[0x1E6969530]);
  v63 = sub_1C6D7A0E0();
  *(v55 + 136) = v47;
  *(v55 + 144) = v27;
  *(v55 + 112) = v63;
  *(v55 + 120) = v64;
  sub_1C6D78D30();

  if (v52 != v60)
  {
    v95 = ~v86;
    v65 = *(v99 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_headlineService + 32);
    __swift_project_boxed_opaque_existential_1((v99 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_headlineService), *(v99 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_headlineService + 24));
    v57 = v91;
    if ((v91 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_16:
      sub_1C6B6E3BC(v49, v90, v52, v57);
      v66 = v93;
      v67 = v96;
      v68 = v82;
      goto LABEL_21;
    }

    sub_1C6D7A190();
    swift_unknownObjectRetain_n();
    v69 = swift_dynamicCastClass();
    if (!v69)
    {
      swift_unknownObjectRelease();
      v69 = MEMORY[0x1E69E7CC0];
    }

    v70 = *(v69 + 16);

    if (v70 == v60 - v52)
    {
      v71 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v66 = v93;
      v67 = v96;
      v68 = v82;
      if (v71)
      {
LABEL_22:
        v72 = [objc_opt_self() defaultCachePolicy];
        v73 = *MEMORY[0x1E69B50B8];
        sub_1C6D79350();

        v74 = v92;
        v83(v92, v67, v66);
        v75 = (v86 + 16) & v95;
        v76 = (v84 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
        v77 = swift_allocObject();
        v68(v77 + v75, v74, v66);
        v78 = (v77 + v76);
        v79 = v98;
        *v78 = sub_1C6C1EB50;
        v78[1] = v79;
        v80 = sub_1C6D78210();
        sub_1C6D782B0();
        swift_unknownObjectRelease();

        (*(v97 + 8))(v67, v66);
      }

LABEL_21:
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

LABEL_25:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v100 = MEMORY[0x1E69E7CC0];
  (v95)(&v100);
  swift_unknownObjectRelease();
  (*(v97 + 8))(v96, v31);
}

BOOL sub_1C6D46D54(void *a1, uint64_t a2)
{
  v4 = sub_1C6D75F50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  swift_beginAccess();
  v12 = *(a2 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_5;
  }

  *(a2 + 16) = v14;
  v15 = [a1 lastVisitedAt];
  if (v15)
  {
    v16 = v15;
    sub_1C6D75F20();

    (*(v5 + 32))(v11, v9, v4);
    sub_1C6D75F10();
    v18 = v17;
    sub_1C6D75F10();
    v20 = v19;
    (*(v5 + 8))(v11, v4);
    return v18 < v20;
  }

  if (qword_1EDCE7498 != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1C6D79A90();
  sub_1C6B1D314();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C6D7E630;
  v26 = 0;
  v27 = 0xE000000000000000;
  v25 = a1;
  sub_1C6B0F7A8(0, &qword_1EDCE6568, &protocolRef_FCReadingHistoryItem);
  sub_1C6D79E60();
  v23 = v26;
  v24 = v27;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1C6B2064C();
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  sub_1C6D78D30();

  return 0;
}

uint64_t sub_1C6D46FE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_1C6D47040(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t))
{
  v3 = *a1;
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  sub_1C6D79A90();
  sub_1C6B1D314();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7EB10;
  if (v3 >> 62)
  {
    sub_1C6D79E90();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = sub_1C6D7A0E0();
  v8 = v7;
  v9 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1C6B2064C();
  *(v4 + 64) = v10;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_1C6D75F50();
  sub_1C6D5B1C4(&qword_1EDCE6380, MEMORY[0x1E6969530]);
  v11 = sub_1C6D7A0E0();
  *(v4 + 96) = v9;
  *(v4 + 104) = v10;
  *(v4 + 72) = v11;
  *(v4 + 80) = v12;
  sub_1C6D78D30();

  return a3(v3);
}

uint64_t sub_1C6D471F0(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  sub_1C6D78D30();
  v23 = v3;
  LOBYTE(v24) = v5;
  sub_1C6D5D150(0, &unk_1EDCE5DB8, &type metadata for StatelessPersonalizationConfiguration, MEMORY[0x1E69D6B18]);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = v2;
  v11 = v1;
  v12 = v4;
  v13 = v3;
  v14 = v6;
  sub_1C6D78300();
  v15 = [v14 featureFlags];
  [v15 readingHistoryItemCountToProcess];

  MEMORY[0x1EEE9AC00](v16);
  sub_1C6B1839C(0, &unk_1EDCE5D50, sub_1C6B1BE60, MEMORY[0x1E69D6B18]);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_1C6D78350();
  v20 = sub_1C6D78210();
  v21 = sub_1C6D781F0();

  return v21;
}

id sub_1C6D47420(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 40);
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  sub_1C6D78D30();
  v10 = [v9 eventConditionalsConfigurations];
  result = [v8 defaultTopicsConfig];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = result;
  v13 = [v7 requiredDimensions];
  v14 = [v7 fittingConfiguration];
  v15 = [v14 embeddingType];

  result = [*(a3 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_subscriptionController) subscribedTagIDs];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = sub_1C6D79780();

  v18 = sub_1C6B1E610(v17);

  sub_1C6D47674(v10, v6, v9, v12, v13, v15, v18, a2, &v26, a4 & 1);

  v19 = v26;
  v20 = v27;
  v21 = v28;
  if ((a4 & 1) == 0)
  {
    sub_1C6D4C430(&v26);
  }

  v26 = v19;
  v27 = v20;
  v28 = v21;
  sub_1C6D5D150(0, &qword_1EDCE5DB0, &type metadata for UserEventHistoryAggregateStore, MEMORY[0x1E69D6B18]);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  return sub_1C6D78300();
}

uint64_t sub_1C6D47674@<X0>(void *a1@<X0>, char *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, char a10)
{
  v11 = v10;
  v725 = a8;
  v724 = a7;
  v664 = a6;
  v654 = a5;
  v729 = a3;
  v728 = a2;
  v727 = a1;
  v617 = a9;
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v596 = (&v594 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v686 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v16 = *(*(v686 - 8) + 64);
  MEMORY[0x1EEE9AC00](v686);
  v685 = &v594 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E6720];
  sub_1C6B1839C(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v681 = &v594 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v680 = &v594 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v605 = &v594 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v624 = &v594 - v27;
  v709 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v721 = *(v709 - 8);
  v28 = *(v721 + 64);
  v29 = MEMORY[0x1EEE9AC00](v709);
  v661 = &v594 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v660 = &v594 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v603 = &v594 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v684 = &v594 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v602 = &v594 - v37;
  sub_1C6B1839C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v18);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v703 = &v594 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v623 = &v594 - v42;
  v707 = sub_1C6D789A0();
  v720 = *(v707 - 8);
  v43 = *(v720 + 64);
  v44 = MEMORY[0x1EEE9AC00](v707);
  v702 = &v594 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v622 = &v594 - v46;
  v716 = sub_1C6D77050();
  v718 = *(v716 - 8);
  v47 = v718[8];
  v48 = MEMORY[0x1EEE9AC00](v716);
  v730 = (&v594 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = MEMORY[0x1EEE9AC00](v48);
  v733 = (&v594 - v51);
  MEMORY[0x1EEE9AC00](v50);
  v640 = &v594 - v52;
  v719 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v722 = *(v719 - 8);
  v53 = v722[8];
  v54 = MEMORY[0x1EEE9AC00](v719);
  v599 = (&v594 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v54);
  v601 = (&v594 - v56);
  v598 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v57 = *(*(v598 - 8) + 64);
  MEMORY[0x1EEE9AC00](v598);
  v625 = &v594 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v600 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v59 = *(*(v600 - 8) + 64);
  MEMORY[0x1EEE9AC00](v600);
  v606 = &v594 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = _s23EmbeddingValidityResultOMa(0);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x1EEE9AC00](v61 - 8);
  v636 = &v594 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v635 = &v594 - v65;
  sub_1C6B1839C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v18);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v66 - 8);
  v597 = &v594 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v697 = &v594 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v701 = &v594 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v621 = &v594 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v628 = (&v594 - v77);
  v78 = MEMORY[0x1EEE9AC00](v76);
  v630 = &v594 - v79;
  MEMORY[0x1EEE9AC00](v78);
  v659 = (&v594 - v80);
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v18);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81 - 8);
  v714 = &v594 - v83;
  v682 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v713 = *(v682 - 8);
  v84 = *(v713 + 8);
  v85 = MEMORY[0x1EEE9AC00](v682);
  v604 = &v594 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x1EEE9AC00](v85);
  v607 = &v594 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v629 = &v594 - v90;
  MEMORY[0x1EEE9AC00](v89);
  v731 = &v594 - v91;
  v620 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v642 = *(v620 - 8);
  v92 = *(v642 + 64);
  v93 = MEMORY[0x1EEE9AC00](v620);
  v715 = &v594 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = MEMORY[0x1EEE9AC00](v93);
  v627 = &v594 - v96;
  MEMORY[0x1EEE9AC00](v95);
  v726 = &v594 - v97;
  v98 = sub_1C6D78A00();
  v615 = *(v98 - 8);
  v616 = v98;
  v99 = *(v615 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v638 = &v594 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1C6D78D60();
  v613 = *(v101 - 8);
  v614 = v101;
  v102 = *(v613 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v594 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1C6D78D90();
  v610 = *(v105 - 8);
  v611 = v105;
  v106 = *(v610 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v594 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  v109 = qword_1EDCE74A0;
  sub_1C6D78D70();
  v609 = v108;
  sub_1C6D78D80();
  sub_1C6D78D40();
  v612 = v104;
  sub_1C6D78D50();
  tf_os_signpost_aggregate_store_generation_begin();
  sub_1C6B1D314();
  v673 = v110;
  v111 = swift_allocObject();
  v666 = xmmword_1C6D7E630;
  *(v111 + 16) = xmmword_1C6D7E630;
  *&v751[0] = 0;
  *(&v751[0] + 1) = 0xE000000000000000;
  v112 = MEMORY[0x1E69E7CC8];
  if (a10)
  {
    v113 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v113 = 0;
  }

  if (a10)
  {
    v114 = 0;
  }

  else
  {
    v114 = 7632239;
  }

  if (a10)
  {
    v115 = 0xE000000000000000;
  }

  else
  {
    v115 = 0xE300000000000000;
  }

  MEMORY[0x1CCA55B00](v114, v115);

  v116 = v751[0];
  *(v111 + 56) = MEMORY[0x1E69E6158];
  v667 = sub_1C6B2064C();
  *(v111 + 64) = v667;
  *(v111 + 32) = v116;
  sub_1C6D79AC0();
  v675 = v109;
  sub_1C6D78D30();

  v117 = swift_allocObject();
  v723 = v117;
  *(v117 + 16) = v112;
  v665 = (v117 + 16);
  v118 = swift_allocObject();
  v650 = v118;
  *(v118 + 16) = v113;
  v710 = v118 + 16;
  v119 = swift_allocObject();
  v637 = v119;
  *(v119 + 16) = 0;
  v618 = (v119 + 16);
  v120 = swift_allocObject();
  v649 = v120;
  *(v120 + 16) = 0;
  v653 = (v120 + 16);
  v121 = swift_allocObject();
  v648 = v121;
  *(v121 + 16) = 0;
  v651 = (v121 + 16);
  v122 = swift_allocObject();
  v647 = v122;
  *(v122 + 16) = 0;
  v631 = (v122 + 16);
  v123 = swift_allocObject();
  v646 = v123;
  *(v123 + 16) = 0;
  v632 = (v123 + 16);
  v124 = swift_allocObject();
  v645 = v124;
  *(v124 + 16) = 0;
  v633 = (v124 + 16);
  v125 = swift_allocObject();
  v644 = v125;
  *(v125 + 16) = 0;
  v634 = (v125 + 16);
  CACurrentMediaTime();
  v126 = v11[6];
  v127 = v11[7];
  v670 = v11;
  __swift_project_boxed_opaque_existential_1(v11 + 3, v126);
  (*(v127 + 8))(&v744, v126, v127);
  v751[4] = v748;
  v751[5] = v749;
  v752[0] = v750[0];
  *(v752 + 14) = *(v750 + 14);
  v751[0] = v744;
  v751[1] = v745;
  v751[2] = v746;
  v751[3] = v747;
  sub_1C6B11190(v751);
  v683 = 0;
  if (LOBYTE(v752[1]) == 1)
  {
    v683 = [objc_allocWithZone(MEMORY[0x1E69B5670]) init];
  }

  v128 = v670[6];
  v129 = v670[7];
  __swift_project_boxed_opaque_existential_1(v670 + 3, v128);
  (*(v129 + 8))(v742, v128, v129);
  v748 = v742[4];
  v749 = v742[5];
  v750[0] = *v743;
  *(v750 + 14) = *&v743[14];
  v744 = v742[0];
  v745 = v742[1];
  v746 = v742[2];
  v747 = v742[3];
  sub_1C6B11190(&v744);
  if (LOBYTE(v750[1]) == 1)
  {
    v130 = [objc_allocWithZone(MEMORY[0x1E69B5668]) init];
  }

  else
  {
    v130 = 0;
  }

  v131 = v729;
  v132 = [v729 featureFlags];
  v133 = [v132 enableSingleLifetimeSeenEventPerArticle];

  v134 = MEMORY[0x1E69E7CD0];
  if (v133)
  {
    v135 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v135 = 0;
  }

  v136 = swift_allocObject();
  v657 = v136;
  *(v136 + 16) = v135;
  v663 = (v136 + 16);
  v137 = [v131 featureFlags];
  v138 = [v137 enableSingleLifetimeSeenEventPerArticle];

  if (v138)
  {
    v139 = v134;
  }

  else
  {
    v139 = 0;
  }

  v140 = swift_allocObject();
  v656 = v140;
  *(v140 + 16) = v139;
  v662 = (v140 + 16);
  v141 = [a4 topicsConfig];
  sub_1C6B0C69C(0, &unk_1EDCEA4F0, 0x1E69B5470);
  v142 = sub_1C6D79780();

  if (v142 >> 62)
  {
    v143 = sub_1C6D79E90();
    v717 = v130;
    if (v143)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v143 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v717 = v130;
    if (v143)
    {
LABEL_25:
      *&v742[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B39B38(0, v143 & ~(v143 >> 63), 0);
      if (v143 < 0)
      {
        goto LABEL_304;
      }

      v144 = 0;
      v145 = *&v742[0];
      v146 = v142;
      v732 = (v142 & 0xC000000000000001);
      *&v734 = v142;
      v147 = v143;
      do
      {
        if (v732)
        {
          v148 = MEMORY[0x1CCA56240](v144, v146);
        }

        else
        {
          v148 = *(v146 + 8 * v144 + 32);
        }

        v149 = v148;
        v150 = [v148 topicID];
        v151 = sub_1C6D795A0();
        v153 = v152;

        *&v742[0] = v145;
        v155 = *(v145 + 16);
        v154 = *(v145 + 24);
        if (v155 >= v154 >> 1)
        {
          sub_1C6B39B38((v154 > 1), v155 + 1, 1);
          v145 = *&v742[0];
        }

        ++v144;
        *(v145 + 16) = v155 + 1;
        v156 = (v145 + 24 * v155);
        v156[4] = v151;
        v156[5] = v153;
        v156[6] = v149;
        v146 = v734;
      }

      while (v147 != v144);

      v130 = v717;
      goto LABEL_36;
    }
  }

  v145 = MEMORY[0x1E69E7CC0];
LABEL_36:
  v157 = MEMORY[0x1E69E7CC8];
  if (*(v145 + 16))
  {
    sub_1C6B61548(0, &unk_1EDCDF660, &unk_1EDCEA4F0, 0x1E69B5470);
    v157 = sub_1C6D79F20();
  }

  *&v742[0] = v157;
  v142 = 0;
  sub_1C6D5C81C(v145, 1, v742);
  v158 = swift_allocObject();

  v643 = v158;
  *(v158 + 16) = *&v742[0];
  v679 = (v158 + 16);
  v159 = swift_allocObject();
  v655 = v159;
  *(v159 + 16) = v724;
  v608 = v159 + 16;

  sub_1C6D79A90();
  v160 = swift_allocObject();
  *(v160 + 16) = v666;
  if (v725 >> 62)
  {
    goto LABEL_293;
  }

  for (i = *((v725 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {
    *&v742[0] = i;
    v162 = sub_1C6D7A0E0();
    v163 = v667;
    *(v160 + 56) = MEMORY[0x1E69E6158];
    *(v160 + 64) = v163;
    *(v160 + 32) = v162;
    *(v160 + 40) = v164;
    sub_1C6D78D30();

    v165 = [v729 eventConditionalsConfigurations];
    v166 = [v165 articleReadEventConditionals];

    [v166 minimumDuration];
    v168 = v167;
    v169 = v167;

    if ((*&v169 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    if (v168 <= -9.22337204e18)
    {
      goto LABEL_295;
    }

    if (v168 >= 9.22337204e18)
    {
      goto LABEL_296;
    }

    v170 = v638;
    v171 = sub_1C6D789D0();
    *&v734 = &v594;
    MEMORY[0x1EEE9AC00](v171);
    v172 = v648;
    v173 = v649;
    *(&v594 - 22) = v649;
    *(&v594 - 21) = v172;
    v174 = v664;
    v175 = v654;
    *(&v594 - 20) = v664;
    *(&v594 - 19) = v175;
    v176 = v644;
    *(&v594 - 18) = v645;
    *(&v594 - 17) = v176;
    v177 = v646;
    *(&v594 - 16) = v647;
    *(&v594 - 15) = v177;
    v178 = v670;
    *(&v594 - 14) = v683;
    *(&v594 - 13) = v178;
    v179 = v656;
    *(&v594 - 12) = v657;
    *(&v594 - 11) = v179;
    v180 = v729;
    *(&v594 - 10) = v727;
    *(&v594 - 9) = v180;
    v181 = v723;
    *(&v594 - 8) = v655;
    *(&v594 - 7) = v181;
    *(&v594 - 6) = v728;
    *(&v594 - 5) = v130;
    v182 = v650;
    v591 = v650;
    v592 = v643;
    v593 = v170;
    sub_1C6D42908(sub_1C6D5CB50, (&v594 - 24), v725);
    v671 = v142;
    v183 = swift_allocObject();
    v183[2] = v637;
    v183[3] = v173;
    v183[4] = v648;
    v183[5] = v174;
    v183[6] = v175;
    v184 = v646;
    v183[7] = v645;
    v183[8] = v176;
    v183[9] = v647;
    v183[10] = v184;
    v183[11] = v683;
    v183[12] = v178;
    v185 = v656;
    v183[13] = v657;
    v183[14] = v185;
    v186 = v729;
    v183[15] = v727;
    v183[16] = v186;
    v187 = v723;
    v183[17] = v655;
    v183[18] = v187;
    v183[19] = v728;
    v183[20] = v130;
    v183[21] = v182;
    v183[22] = v643;
    v639 = v130;
    *&v734 = sel_featureFlags;

    v188 = v178;

    v658 = v727;
    v189 = v729;

    v619 = v728;

    v652 = v683;
    v724 = v189;
    v190 = [v189 v734];
    v191 = [v190 eventLimit];

    v626 = v183;
    if (v191)
    {
      v192 = [v191 integerValue];

      v193 = swift_allocObject();
      *(v193 + 16) = v666;
      v194 = MEMORY[0x1E69E65A8];
      *(v193 + 56) = MEMORY[0x1E69E6530];
      *(v193 + 64) = v194;
      *(v193 + 32) = v192;
      sub_1C6D79AC0();
      sub_1C6D78D30();

      v195 = v188[2];
      v196 = swift_allocObject();
      *(v196 + 16) = 0;
      v197 = swift_allocObject();
      *(v197 + 16) = v196;
      *(v197 + 24) = v192;
      v198 = *(*v195 + 160);

      v198(sub_1C6CDD34C, v197, 1, sub_1C6D5CBAC, v183);
    }

    else
    {
      sub_1C6D79AC0();
      sub_1C6D78D30();
      v199 = *(*v188[2] + 160);

      v199(0, 0, 1, sub_1C6D5CBAC, v183);
    }

    v130 = v710;
    v200 = v716;
    v201 = v718;
    v202 = v653;
    v160 = v642;
    v203 = v726;
    v204 = [v724 featureFlags];
    v205 = [v204 enableSyntheticTagFollowEvents];

    if (v205)
    {
      v206 = v202;
      sub_1C6D79A90();
      v207 = swift_allocObject();
      *(v207 + 16) = v666;
      v208 = v608;
      swift_beginAccess();
      *&v742[0] = *(*v208 + 16);
      v209 = sub_1C6D7A0E0();
      v210 = v667;
      *(v207 + 56) = MEMORY[0x1E69E6158];
      *(v207 + 64) = v210;
      *(v207 + 32) = v209;
      *(v207 + 40) = v211;
      sub_1C6D78D30();

      v212 = *v208;

      v142 = v671;
      v214 = sub_1C6D42358(v213);
      v671 = v142;

      v672 = *(v214 + 16);
      if (v672)
      {
        v215 = (*(v160 + 80) + 32) & ~*(v160 + 80);
        v674 = v214;
        v687 = v215;
        v669 = v214 + v215;
        v202 = v206;
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        v216 = 0;
        v668 = (v713 + 48);
        v732 = v722 + 6;
        v595 = (v721 + 56);
        v201 = v718;
        v722 = v718 + 1;
        v706 = (v720 + 48);
        v678 = (v720 + 32);
        v705 = (v720 + 8);
        v704 = (v721 + 48);
        v729 = v718 + 2;
        v694 = (v718 + 11);
        v693 = *MEMORY[0x1E69E36C0];
        v692 = *MEMORY[0x1E69E36A8];
        v691 = *MEMORY[0x1E69E36B0];
        v689 = *MEMORY[0x1E69E36B8];
        v677 = (v718 + 12);
        v688 = *MEMORY[0x1E69E36C8];
        v217 = v714;
        v218 = v723;
        while (1)
        {
          if (v216 >= *(v674 + 16))
          {
            goto LABEL_289;
          }

          v219 = *(v160 + 72);
          v690 = v216;
          v708 = v219;
          sub_1C6D5B364(v669 + v219 * v216, v203, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
          if (__OFADD__(*v202, 1))
          {
LABEL_290:
            __break(1u);
            goto LABEL_291;
          }

          ++*v202;
          v142 = qword_1EDCE5660;
          sub_1C6D5B3CC(v203, v217, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          if ((*v668)(v217, 1, v682) == 1)
          {
            sub_1C6D5B44C(v203, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
            sub_1C6D5B4AC(v217, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
            goto LABEL_196;
          }

          sub_1C6D5B51C(v217, v731, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          v142 = v659;
          Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v659);
          v725 = *v732;
          v220 = (v725)(v142, 1, v719);
          sub_1C6D5B4AC(v142, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          if (v220 != 1)
          {
            if (__OFADD__(*v651, 1))
            {
              goto LABEL_292;
            }

            ++*v651;
          }

          if (v664)
          {
            if (v664 == 1)
            {
              v142 = v635;
              sub_1C6D43E04(1, v654, v635);
              v221 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
              v222 = (*(*(v221 - 8) + 48))(v142, 2, v221);
              if (!v222)
              {
                if (__OFADD__(*v633, 1))
                {
                  goto LABEL_311;
                }

                ++*v633;
                v227 = v635;
LABEL_71:
                sub_1C6D5B44C(v227, _s23EmbeddingValidityResultOMa);
                goto LABEL_72;
              }

              if (v222 != 1)
              {
                v223 = v634;
                v224 = *v634 + 1;
                if (__OFADD__(*v634, 1))
                {
                  goto LABEL_309;
                }

LABEL_66:
                *v223 = v224;
              }
            }
          }

          else
          {
            v142 = v636;
            sub_1C6D43E04(0, v654, v636);
            v225 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
            v226 = (*(*(v225 - 8) + 48))(v142, 2, v225);
            if (!v226)
            {
              if (__OFADD__(*v631, 1))
              {
                goto LABEL_308;
              }

              ++*v631;
              v227 = v636;
              goto LABEL_71;
            }

            if (v226 != 1)
            {
              v223 = v632;
              v224 = *v632 + 1;
              if (__OFADD__(*v632, 1))
              {
                goto LABEL_310;
              }

              goto LABEL_66;
            }
          }

LABEL_72:
          v228 = v202;
          v229 = v731;
          if (v683)
          {
            sub_1C6D4F618(v731);
          }

          v142 = *v663;
          v230 = *v662;

          sub_1C6D4DB40(v229, v142, v230, v658, v741);

          if (!v741[1])
          {
            v231 = [v724 aggregateModificationConfigurations];
            *&v742[0] = 0;
            BYTE8(v742[0]) = 1;
            v232 = sub_1C6C40FC8(v229, v742);

            v234 = v629;
            v233 = v630;
            v711 = v232;
            if (!v232)
            {
              if (qword_1EDCE9828 != -1)
              {
                swift_once();
              }

              v142 = qword_1EDCE9830;
              sub_1C6D79AA0();
              v250 = swift_allocObject();
              *(v250 + 16) = v666;
              v251 = v731;
              v252 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
              v253 = v667;
              *(v250 + 56) = MEMORY[0x1E69E6158];
              *(v250 + 64) = v253;
              *(v250 + 32) = v252;
              *(v250 + 40) = v254;
              sub_1C6D78D30();

              sub_1C6D5B44C(v251, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
              v203 = v726;
              sub_1C6D5B44C(v726, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
              v217 = v714;
              v160 = v642;
              v218 = v723;
              v255 = v690;
              v202 = v228;
              v201 = v718;
              goto LABEL_197;
            }

            sub_1C6D5B364(v229, v629, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v236 = v625;
            if (EnumCaseMultiPayload)
            {
              sub_1C6D5B44C(v234, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
              v237 = v607;
              sub_1C6D5B364(v229, v607, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
              v238 = swift_getEnumCaseMultiPayload();
              v201 = v718;
              if (v238 == 1)
              {
                sub_1C6D5B51C(v237, v236, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
                v239 = v662;
                swift_beginAccess();
                if (*v239)
                {
                  v240 = v597;
                  sub_1C6D5B3CC(v236 + *(v598 + 20), v597, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  v241 = v719;
                  v242 = v725;
                  v243 = (v725)(v240, 1, v719);
                  v244 = v622;
                  if (v243 == 1)
                  {
                    v245 = v242;
                    v246 = v599;
                    *v599 = 0;
                    v246[1] = 0xE000000000000000;
                    (*v595)(v246 + *(v241 + 20), 1, 1, v709);
                    v247 = v246 + *(v241 + 24);
                    sub_1C6D78A30();
                    v248 = v241;
                    v249 = v246;
                    if (v245(v240, 1, v248) != 1)
                    {
                      sub_1C6D5B4AC(v240, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                    }
                  }

                  else
                  {
                    v249 = v599;
                    sub_1C6D5B51C(v240, v599, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  }

                  v276 = v249;
                  v277 = *v249;
                  v278 = *(v276 + 8);

                  sub_1C6D5B44C(v276, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  sub_1C6B1E6A8(&v738, v277, v278);
                  swift_endAccess();

                  v236 = v625;
                  v273 = v723;
                }

                else
                {
                  swift_endAccess();
                  v273 = v723;
                  v244 = v622;
                }

                sub_1C6D5B44C(v236, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
                v258 = v621;
              }

              else
              {
                sub_1C6D5B44C(v237, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
                v267 = v604;
                sub_1C6D5B364(v229, v604, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
                if (swift_getEnumCaseMultiPayload() == 9)
                {
                  v268 = v596;
                  sub_1C6D5B51C(v267, v596, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
                  v269 = *v268;
                  v270 = v268[1];
                  swift_beginAccess();
                  sub_1C6D39EFC(v269, v270);
                  swift_endAccess();

                  v271 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
                  v272 = v268;
                }

                else
                {
                  v271 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
                  v272 = v267;
                }

                sub_1C6D5B44C(v272, v271);
                v258 = v621;
                v244 = v622;
                v273 = v723;
              }
            }

            else
            {
              v256 = v606;
              sub_1C6D5B51C(v234, v606, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
              v257 = v663;
              swift_beginAccess();
              v258 = v621;
              v201 = v718;
              if (*v257)
              {
                sub_1C6D5B3CC(v256 + *(v600 + 20), v233, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                v259 = v719;
                v260 = v725;
                if ((v725)(v233, 1, v719) == 1)
                {
                  v261 = v233;
                  v262 = v601;
                  *v601 = 0;
                  v262[1] = 0xE000000000000000;
                  (*v595)(v262 + *(v259 + 20), 1, 1, v709);
                  v263 = v262 + *(v259 + 24);
                  sub_1C6D78A30();
                  v264 = v261;
                  v265 = v262;
                  v266 = v260(v264, 1, v259);
                  v244 = v622;
                  if (v266 != 1)
                  {
                    sub_1C6D5B4AC(v630, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  }
                }

                else
                {
                  v265 = v601;
                  sub_1C6D5B51C(v233, v601, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  v244 = v622;
                }

                v274 = *v265;
                v275 = v265[1];

                sub_1C6D5B44C(v265, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                sub_1C6B1E6A8(&v738, v274, v275);
                swift_endAccess();

                v256 = v606;
              }

              else
              {
                swift_endAccess();
                v244 = v622;
              }

              sub_1C6D5B44C(v256, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
              v273 = v723;
            }

            v712 = sub_1C6CCEBD8(sub_1C6D5CFDC, v273, v619);
            v279 = v640;
            sub_1C6D77030();
            v713 = sub_1C6D4F0A0(v279, v273, v717, v724);
            v721 = *v722;
            (v721)(v279, v200);
            v700 = *(v620 + 24);
            v280 = v623;
            sub_1C6D5B3CC(v726 + v700, v623, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
            v281 = *v706;
            v142 = v707;
            v282 = (*v706)(v280, 1, v707);
            v699 = v281;
            if (v282 == 1)
            {
              sub_1C6D78990();
              if (v281(v280, 1, v142) != 1)
              {
                sub_1C6D5B4AC(v280, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
              }
            }

            else
            {
              (*v678)(v244, v280, v142);
            }

            sub_1C6D78970();
            v284 = v283;
            v698 = *v705;
            v698(v244, v142);
            v285 = v284 * 1000.0;
            v286 = v624;
            if (COERCE__INT64(fabs(v284 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_297;
            }

            if (v285 <= -1.0)
            {
              goto LABEL_298;
            }

            if (v285 >= 1.84467441e19)
            {
              goto LABEL_299;
            }

            [v713 setTimestamp_];
            v287 = [v711 baselineModificationData];
            [v724 decayRate];
            v288 = v628;
            Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v628);
            v289 = v719;
            v290 = (v725)(v288, 1, v719);
            if (v290 == 1)
            {
              sub_1C6D5B4AC(v288, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v291 = 0;
              v292 = 0;
            }

            else
            {
              sub_1C6D5B3CC(v288 + *(v289 + 20), v286, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              if ((*v704)(v286, 1, v709) == 1)
              {
                sub_1C6D5B4AC(v286, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                sub_1C6D5B44C(v288, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                v291 = 0;
                v292 = 1;
              }

              else
              {
                v293 = v286;
                v294 = v602;
                sub_1C6D5B51C(v293, v602, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                v295 = v294;
                v296 = v684;
                sub_1C6D5B51C(v295, v684, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                v297 = v685;
                sub_1C6D5B51C(v296, v685, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                v298 = *(v297 + *(v686 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
                swift_beginAccess();
                v291 = *v298;
                v292 = *(v298 + 8);
                sub_1C6D5B44C(v297, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                sub_1C6D5B44C(v628, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              }
            }

            *&v742[0] = v291;
            BYTE8(v742[0]) = v292;
            BYTE9(v742[0]) = v290 == 1;
            Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v258);
            v299 = v719;
            v300 = (v725)(v258, 1, v719);
            if (v300 == 1)
            {
              sub_1C6D5B4AC(v258, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v160 = 0;
              v142 = 0;
            }

            else
            {
              v301 = v605;
              sub_1C6D5B3CC(v258 + *(v299 + 20), v605, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              if ((*v704)(v301, 1, v709) == 1)
              {
                sub_1C6D5B4AC(v301, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                sub_1C6D5B44C(v258, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                v160 = 0;
                v142 = 1;
              }

              else
              {
                v302 = v301;
                v303 = v603;
                sub_1C6D5B51C(v302, v603, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                v304 = v303;
                v305 = v684;
                sub_1C6D5B51C(v304, v684, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                v306 = v685;
                sub_1C6D5B51C(v305, v685, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                v307 = *(v306 + *(v686 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
                swift_beginAccess();
                v160 = *v307;
                v142 = *(v307 + 8);
                sub_1C6D5B44C(v306, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                sub_1C6D5B44C(v258, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              }
            }

            v738 = v160;
            v739 = v142;
            v740 = v300 == 1;
            sub_1C6CE69E0(v731, v742, &v738);
            [v287 clicks];
            v308 = v726;
            v309 = v713;
            if (v310 > 0.0 || ([v287 impressions], v311 > 0.0))
            {
              v142 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
              [v309 impressions];
              [v287 impressions];
              [v287 impressions];
              sub_1C6D798D0();
              v313 = v312;
              [v309 clicks];
              [v287 clicks];
              [v287 impressions];
              sub_1C6D798D0();
              [v309 setClicks_];
              [v309 setImpressions_];
              v314 = [v309 eventCount];
              if (v314 == -1)
              {
                goto LABEL_303;
              }

              [v309 setEventCount_];
            }

            swift_beginAccess();
            v315 = *v130;
            if (*v130)
            {
              v316 = [v309 featureKey];
              if (!v316)
              {
                goto LABEL_317;
              }

              v317 = v316;
              v160 = sub_1C6D795A0();
              v319 = v318;

              if (*(v315 + 16))
              {
                v320 = sub_1C6B5DEA8(v160, v319);
                v160 = v321;

                v322 = MEMORY[0x1E69E7CC0];
                if (v160)
                {
                  v322 = *(*(v315 + 56) + 8 * v320);
                }
              }

              else
              {

                v322 = MEMORY[0x1E69E7CC0];
              }

              swift_endAccess();
              sub_1C6D5B364(v308, v627, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v322 = sub_1C6B666CC(0, v322[2] + 1, 1, v322);
              }

              v218 = v723;
              v323 = v322;
              v142 = v322[2];
              v641 = v323;
              v324 = v323[3];
              if (v142 >= v324 >> 1)
              {
                v641 = sub_1C6B666CC(v324 > 1, v142 + 1, 1, v641);
              }

              v325 = v641;
              v641[2] = v142 + 1;
              sub_1C6D5B51C(v627, v325 + v687 + v142 * v708, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
            }

            else
            {
              swift_endAccess();
              v641 = 0;
              v218 = v723;
            }

            swift_beginAccess();
            if (*v130)
            {
              v326 = [v309 featureKey];
              if (!v326)
              {
                goto LABEL_318;
              }

              v327 = v326;
              v142 = sub_1C6D795A0();
              v329 = v328;

              sub_1C6BC24C0(v330, v142, v329);
              v218 = v723;
            }

            swift_endAccess();
            v217 = v714;
            v696 = *(v712 + 16);
            if (!v696)
            {
LABEL_195:

              sub_1C6D5B44C(v731, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
              v203 = v726;
              sub_1C6D5B44C(v726, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

              v202 = v653;
              v160 = v642;
              goto LABEL_196;
            }

            v331 = 0;
            v695 = v712 + ((*(v201 + 80) + 32) & ~*(v201 + 80));
            while (2)
            {
              if (v331 >= *(v712 + 16))
              {
LABEL_284:
                __break(1u);
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);
LABEL_287:
                __break(1u);
LABEL_288:
                __break(1u);
LABEL_289:
                __break(1u);
                goto LABEL_290;
              }

              v336 = v695 + v201[9] * v331;
              v337 = v733;
              v728 = v201[2];
              (v728)(v733, v336, v200);
              v338 = v724;
              v130 = sub_1C6D4F0A0(v337, v218, v717, v724);
              v339 = v703;
              sub_1C6D5B3CC(v726 + v700, v703, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
              v142 = v707;
              v340 = v699;
              if (v699(v339, 1, v707) == 1)
              {
                v341 = v702;
                sub_1C6D78990();
                v342 = v340(v339, 1, v142);
                v160 = v719;
                v343 = v701;
                if (v342 != 1)
                {
                  sub_1C6D5B4AC(v339, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
                }
              }

              else
              {
                v341 = v702;
                (*v678)(v702, v339, v142);
                v160 = v719;
                v343 = v701;
              }

              sub_1C6D78970();
              v345 = v344;
              v698(v341, v142);
              v346 = v345 * 1000.0;
              if (COERCE__INT64(fabs(v345 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_285;
              }

              if (v346 <= -1.0)
              {
                goto LABEL_286;
              }

              if (v346 >= 1.84467441e19)
              {
                goto LABEL_287;
              }

              *&v734 = v130;
              [v130 setTimestamp_];
              v727 = [v711 aggregateModificationData];
              [v338 decayRate];
              Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v343);
              v347 = v725;
              v348 = (v725)(v343, 1, v160);
              if (v348 == 1)
              {
                sub_1C6D5B4AC(v343, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                v349 = 0;
                LODWORD(v720) = 0;
                v350 = v697;
              }

              else
              {
                v351 = v680;
                sub_1C6D5B3CC(v343 + *(v160 + 20), v680, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                v352 = (*v704)(v351, 1, v709);
                v350 = v697;
                if (v352 == 1)
                {
                  sub_1C6D5B4AC(v351, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  sub_1C6D5B44C(v343, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  v349 = 0;
                  LODWORD(v720) = 1;
                }

                else
                {
                  v353 = v660;
                  sub_1C6D5B51C(v351, v660, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  v354 = v353;
                  v355 = v684;
                  sub_1C6D5B51C(v354, v684, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  v356 = v355;
                  v357 = v685;
                  sub_1C6D5B51C(v356, v685, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                  v358 = *(v357 + *(v686 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
                  swift_beginAccess();
                  v359 = v331;
                  v360 = v348;
                  v361 = *v358;
                  LODWORD(v720) = *(v358 + 8);
                  sub_1C6D5B44C(v357, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                  v362 = v343;
                  v349 = v361;
                  v348 = v360;
                  v331 = v359;
                  v338 = v724;
                  sub_1C6D5B44C(v362, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                }

                v347 = v725;
              }

              Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v350);
              v363 = v347(v350, 1, v160);
              if (v363 == 1)
              {
                sub_1C6D5B4AC(v350, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                v364 = 0;
                v160 = 0;
              }

              else
              {
                v365 = v681;
                sub_1C6D5B3CC(v350 + *(v160 + 20), v681, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                if ((*v704)(v365, 1, v709) == 1)
                {
                  sub_1C6D5B4AC(v365, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  sub_1C6D5B44C(v350, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  v364 = 0;
                  v160 = 1;
                }

                else
                {
                  v676 = v349;
                  v366 = v350;
                  v367 = v661;
                  sub_1C6D5B51C(v365, v661, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  v368 = v367;
                  v369 = v684;
                  sub_1C6D5B51C(v368, v684, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  v370 = v685;
                  sub_1C6D5B51C(v369, v685, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                  v371 = *(v370 + *(v686 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
                  swift_beginAccess();
                  v364 = *v371;
                  v160 = *(v371 + 8);
                  sub_1C6D5B44C(v370, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                  v372 = v366;
                  v349 = v676;
                  sub_1C6D5B44C(v372, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                }
              }

              v373 = [v338 biases];
              Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
              v374 = sub_1C6D79570();

              if (v348 == 1 || (*&v742[0] = v349, BYTE8(v742[0]) = v720, Com_Apple_News_Personalization_FeedType.string.getter(), !v375))
              {
                v376 = 0;
                if (v363 == 1)
                {
                  goto LABEL_168;
                }
              }

              else
              {
                v376 = sub_1C6D79570();

                if (v363 == 1)
                {
LABEL_168:
                  v378 = 0;
                  goto LABEL_169;
                }
              }

              *&v742[0] = v364;
              BYTE8(v742[0]) = v160;
              Com_Apple_News_Personalization_GroupType.string.getter();
              if (!v377)
              {
                goto LABEL_168;
              }

              v378 = sub_1C6D79570();

LABEL_169:
              v379 = v728;
              [v373 biasForEventType:v374 feedType:v376 groupType:v378];

              v380 = v730;
              v200 = v716;
              (v379)(v730, v733, v716);
              v381 = (*v694)(v380, v200);
              if (v381 == v693 || v381 == v692 || v381 == v691 || v381 == v689 || v381 != v688)
              {
                (v721)(v730, v200);
                v391 = 0;
                v201 = v718;
                v393 = v727;
              }

              else
              {
                v382 = v730;
                (*v677)(v730, v200);
                v383 = v382[1];
                v384 = v382[2];
                v385 = v382[3];

                v386 = v679;
                swift_beginAccess();
                v387 = *v386;
                v388 = *(v387 + 16);

                v201 = v718;
                if (v388 && (v389 = sub_1C6B5DEA8(v384, v385), (v390 & 1) != 0))
                {
                  v391 = *(*(v387 + 56) + 8 * v389);
                  v392 = v391;
                }

                else
                {
                  v391 = 0;
                }

                v393 = v727;
                swift_endAccess();
                swift_bridgeObjectRelease_n();
              }

              v142 = v734;
              NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v393, v713, v391);

              v130 = v710;
              swift_beginAccess();
              v394 = *v130;
              if (*v130)
              {
                v395 = [v142 featureKey];
                v396 = v723;
                if (!v395)
                {
                  goto LABEL_314;
                }

                v397 = v395;
                v398 = sub_1C6D795A0();
                v400 = v399;

                if (*(v394 + 16))
                {
                  v401 = sub_1C6B5DEA8(v398, v400);
                  v403 = v402;

                  v142 = MEMORY[0x1E69E7CC0];
                  if (v403)
                  {
                    v142 = *(*(v394 + 56) + 8 * v401);
                  }
                }

                else
                {

                  v142 = MEMORY[0x1E69E7CC0];
                }

                swift_endAccess();
                sub_1C6D5B364(v726, v715, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
                v160 = v396;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v142 = sub_1C6B666CC(0, *(v142 + 16) + 1, 1, v142);
                }

                v405 = *(v142 + 16);
                v404 = *(v142 + 24);
                if (v405 >= v404 >> 1)
                {
                  v142 = sub_1C6B666CC(v404 > 1, v405 + 1, 1, v142);
                }

                *(v142 + 16) = v405 + 1;
                sub_1C6D5B51C(v715, v142 + v687 + v405 * v708, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
                v218 = v160;
              }

              else
              {
                swift_endAccess();
                v142 = 0;
                v218 = v723;
              }

              swift_beginAccess();
              if (*v130)
              {
                v406 = [v734 featureKey];
                if (!v406)
                {
                  goto LABEL_315;
                }

                v332 = v406;
                v160 = sub_1C6D795A0();
                v334 = v333;

                sub_1C6BC24C0(v335, v160, v334);
              }

              ++v331;
              swift_endAccess();

              (v721)(v733, v200);

              v217 = v714;
              if (v696 == v331)
              {
                goto LABEL_195;
              }

              continue;
            }
          }

          sub_1C6D5B44C(v229, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          sub_1C6D5B44C(v203, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
          v217 = v714;
          v218 = v723;
          v202 = v228;
          v201 = v718;
LABEL_196:
          v255 = v690;
LABEL_197:
          v216 = v255 + 1;
          if (v216 == v672)
          {

            if (!v717)
            {
              goto LABEL_206;
            }

            goto LABEL_204;
          }
        }
      }

      v218 = v723;
      v202 = v206;
      v201 = v718;
      if (!v717)
      {
        goto LABEL_206;
      }
    }

    else
    {
      v218 = v723;
      if (!v717)
      {
        goto LABEL_206;
      }
    }

LABEL_204:
    v407 = v639;
    v408 = v640;
    sub_1C6D77030();
    v409 = sub_1C6D4F0A0(v408, v218, v717, v724);
    (v201[1])(v408, v200);
    v142 = [v409 eventCount];

    if ((v142 & 0x8000000000000000) != 0)
    {
      goto LABEL_305;
    }

    [v407 setBaselineStatelessEventCount_];

LABEL_206:
    v130 = v724;
    v410 = [v724 legacyBridgeConfiguration];
    v411 = [v410 priorStatelessAggregatesWithLegacyAggregates];

    if ((v411 & 1) == 0)
    {
      v412 = [v130 legacyBridgeConfiguration];
      v413 = [v412 createStatelessAggregatesWhichOnlyExistInLegacy];

      if (!v413)
      {
        break;
      }
    }

    v414 = swift_allocObject();
    *(v414 + 16) = v666;
    v415 = [v130 legacyBridgeConfiguration];
    v416 = [v415 description];
    v417 = sub_1C6D795A0();
    v419 = v418;

    v420 = v667;
    *(v414 + 56) = MEMORY[0x1E69E6158];
    *(v414 + 64) = v420;
    *(v414 + 32) = v417;
    *(v414 + 40) = v419;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v421 = [v130 legacyBridgeConfiguration];
    LODWORD(v415) = [v421 priorStatelessAggregatesWithLegacyAggregates];

    if (v415)
    {
      sub_1C6D79AC0();
      sub_1C6D78D30();
    }

    v422 = [*(v670 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_personalizationData) allAggregates];
    sub_1C6B0C69C(0, &qword_1EDCEA4D0, 0x1E69B6EE8);
    v423 = sub_1C6D79490();

    v424 = [v130 legacyBridgeConfiguration];
    v425 = [v424 createStatelessAggregatesWhichOnlyExistInLegacy];

    v426 = 0;
    v427 = v665;
    if (v425)
    {

      v426 = sub_1C6B69168(v428);
    }

    v741[0] = v426;
    v738 = 0;
    v737[0] = 0;
    v429 = [v130 legacyBridgeConfiguration];
    LODWORD(v730) = [v429 disablePrioringBaseline];

    swift_beginAccess();
    v430 = *v427;
    sub_1C6B61548(0, &unk_1EDCEA460, &qword_1EDCEA4D0, 0x1E69B6EE8);
    v431 = sub_1C6D79EF0();
    v432 = v431;
    v433 = v430 + 64;
    v434 = 1 << v430[32];
    v435 = -1;
    if (v434 < 64)
    {
      v435 = ~(-1 << v434);
    }

    v160 = v435 & *(v430 + 8);
    v436 = (v434 + 63) >> 6;
    v728 = (v431 + 64);
    v733 = v130;

    v731 = v430;

    v437 = 0;
    v438 = v423;
    v439 = v432;
    *&v734 = v438;
    v729 = v432;
    if (!v160)
    {
LABEL_216:
      v441 = v437;
      v142 = v665;
      while (1)
      {
        v437 = v441 + 1;
        if (__OFADD__(v441, 1))
        {
          __break(1u);
LABEL_283:
          __break(1u);
          goto LABEL_284;
        }

        if (v437 >= v436)
        {
          break;
        }

        v442 = *&v433[8 * v437];
        ++v441;
        if (v442)
        {
          v440 = __clz(__rbit64(v442));
          v160 = (v442 - 1) & v442;
          goto LABEL_221;
        }
      }

      v452 = v733;

      v453 = *v142;
      *v142 = v439;

      v454 = [v452 legacyBridgeConfiguration];
      v142 = [v454 priorStatelessAggregatesWithLegacyAggregates];

      if (v142)
      {
        v142 = swift_allocObject();
        *(v142 + 16) = xmmword_1C6D7EB10;
        v455 = v738;
        v456 = MEMORY[0x1E69E65A8];
        v457 = MEMORY[0x1E69E6530];
        *(v142 + 56) = MEMORY[0x1E69E6530];
        *(v142 + 64) = v456;
        *(v142 + 32) = v455;
        v458 = v737[0];
        *(v142 + 96) = v457;
        *(v142 + 104) = v456;
        *(v142 + 72) = v458;
        sub_1C6D79AC0();
        sub_1C6D78D30();
      }

      if (v741[0])
      {
        v459 = v741[0];
      }

      else
      {
        v459 = MEMORY[0x1E69E7CD0];
      }

      v461 = v459 + 56;
      v460 = *(v459 + 56);
      v732 = v459;
      v462 = 1 << *(v459 + 32);
      v463 = -1;
      if (v462 < 64)
      {
        v463 = ~(-1 << v462);
      }

      v160 = v463 & v460;
      v464 = (v462 + 63) >> 6;
      v727 = v741[0];

      v465 = 0;
      v200 = v716;
      if (!v160)
      {
LABEL_232:
        while (1)
        {
          v466 = v465 + 1;
          if (__OFADD__(v465, 1))
          {
            goto LABEL_283;
          }

          if (v466 >= v464)
          {

            v492 = [v733 legacyBridgeConfiguration];
            v493 = [v492 createStatelessAggregatesWhichOnlyExistInLegacy];

            if (v493)
            {
              v494 = swift_allocObject();
              *(v494 + 16) = v666;
              v495 = v653;
              if (v727)
              {
                v496 = *(v727 + 2);
              }

              else
              {
                v496 = 0;
              }

              v497 = MEMORY[0x1E69E65A8];
              *(v494 + 56) = MEMORY[0x1E69E6530];
              *(v494 + 64) = v497;
              *(v494 + 32) = v496;
              sub_1C6D79AC0();
              sub_1C6D78D30();
            }

            else
            {

              v495 = v653;
            }

            goto LABEL_250;
          }

          v160 = *(v461 + 8 * v466);
          ++v465;
          if (v160)
          {
            v465 = v466;
            goto LABEL_236;
          }
        }
      }

      while (1)
      {
LABEL_236:
        while (1)
        {
          v467 = __clz(__rbit64(v160));
          v160 &= v160 - 1;
          v468 = v732[6] + ((v465 << 10) | (16 * v467));
          v469 = *v468;
          v130 = *(v468 + 8);
          v470 = *(v438 + 16);

          if (v470)
          {
            v471 = sub_1C6B5DEA8(v469, v130);
            if (v472)
            {
              break;
            }
          }

          sub_1C6D79AA0();
          v142 = swift_allocObject();
          *(v142 + 16) = v666;
          v491 = v667;
          *(v142 + 56) = MEMORY[0x1E69E6158];
          *(v142 + 64) = v491;
          *(v142 + 32) = v469;
          *(v142 + 40) = v130;
          v200 = v716;
          sub_1C6D78D30();

          if (!v160)
          {
            goto LABEL_232;
          }
        }

        v729 = v469;
        v730 = v130;
        v473 = *(*(v438 + 56) + 8 * v471);
        v474 = objc_allocWithZone(MEMORY[0x1E69B6EE8]);
        v142 = v473;
        v475 = [v474 init];
        if (!v475)
        {
          break;
        }

        v476 = v475;
        v477 = [v142 featureKey];
        [v476 setFeatureKey_];

        [v476 setEventCount_];
        [v476 setTimestamp_];
        [v142 clicks];
        [v142 impressions];
        v478 = v733;
        v479 = [v733 legacyBridgeConfiguration];
        [v479 legacyDecayRate];

        [v478 decayRate];
        v480 = [v478 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        v731 = v142;
        v481 = v480;
        LODWORD(v728) = [v480 avoidDoubleCountingWhenPrioringWithLegacyAggregates];

        v482 = [v478 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v482 legacyMultiplier];

        v483 = [v478 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v483 legacyMaxLinearImpressionCount];

        v484 = [v478 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v484 statelessMaxLinearImpressionCount];

        v593 = 0;
        sub_1C6D798E0();
        [v476 setClicks_];
        v485 = v731;
        [v731 impressions];
        [v485 impressions];
        v486 = [v478 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v486 legacyDecayRate];

        [v478 decayRate];
        v487 = [v478 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        LODWORD(v728) = [v487 avoidDoubleCountingWhenPrioringWithLegacyAggregates];

        v488 = [v478 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v488 legacyMultiplier];

        v489 = [v478 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v489 legacyMaxLinearImpressionCount];

        v490 = [v478 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v490 statelessMaxLinearImpressionCount];

        v593 = 0;
        sub_1C6D798E0();
        [v476 setImpressions_];
        v130 = v665;
        swift_beginAccess();
        v142 = v476;
        sub_1C6BC214C(v476, v729, v730);
        swift_endAccess();

        v200 = v716;
        v438 = v734;
        if (!v160)
        {
          goto LABEL_232;
        }
      }

LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);

      __break(1u);
      goto LABEL_319;
    }

    while (1)
    {
      v440 = __clz(__rbit64(v160));
      v160 &= v160 - 1;
LABEL_221:
      v130 = v440 | (v437 << 6);
      v443 = *(v731 + 7);
      v444 = (*(v731 + 6) + 16 * v130);
      v445 = v444[1];
      v732 = *v444;
      *&v742[0] = *(v443 + 8 * v130);
      v446 = *&v742[0];

      v447 = v446;
      v142 = v671;
      sub_1C6D5A71C(v742, v741, v730, v733, v734, v737, &v738, v736);
      v671 = v142;

      *&v728[(v130 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v130;
      v439 = v729;
      v448 = (*(v729 + 6) + 16 * v130);
      *v448 = v732;
      v448[1] = v445;
      *(v439[7] + 8 * v130) = v736[0];
      v449 = v439[2];
      v450 = __OFADD__(v449, 1);
      v451 = v449 + 1;
      if (v450)
      {
        break;
      }

      v439[2] = v451;
      v438 = v734;
      if (!v160)
      {
        goto LABEL_216;
      }
    }

LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    ;
  }

  sub_1C6D79AC0();
  v495 = v202;
  sub_1C6D78D30();
LABEL_250:
  v498 = v618;
  v499 = swift_allocObject();
  *(v499 + 16) = xmmword_1C6D807C0;
  swift_beginAccess();
  v741[0] = *v498;
  v500 = sub_1C6D7A0E0();
  v501 = MEMORY[0x1E69E6158];
  v502 = v667;
  *(v499 + 56) = MEMORY[0x1E69E6158];
  *(v499 + 64) = v502;
  *(v499 + 32) = v500;
  *(v499 + 40) = v503;
  swift_beginAccess();
  v738 = *v495;
  v504 = sub_1C6D7A0E0();
  *(v499 + 96) = v501;
  *(v499 + 104) = v502;
  *(v499 + 72) = v504;
  *(v499 + 80) = v505;
  v506 = v665;
  swift_beginAccess();
  v737[0] = *(*v506 + 2);
  v507 = sub_1C6D7A0E0();
  *(v499 + 136) = v501;
  *(v499 + 144) = v502;
  *(v499 + 112) = v507;
  *(v499 + 120) = v508;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v509 = v717;
  if (v717)
  {
    v510 = v639;
    v511 = v640;
    sub_1C6D77030();
    v512 = v723;
    v513 = v724;
    v514 = sub_1C6D4F0A0(v511, v723, v509, v724);
    *&v734 = v718[1];
    (v734)(v511, v200);
    v142 = [v514 timestamp];

    if ((v142 & 0x8000000000000000) != 0)
    {
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
      goto LABEL_312;
    }

    [v510 setBaselineTimestamp_];

    v515 = v510;
    sub_1C6D77030();
    v516 = sub_1C6D4F0A0(v511, v512, v509, v513);
    (v734)(v511, v200);
    v142 = [v516 eventCount];

    if ((v142 & 0x8000000000000000) != 0)
    {
      goto LABEL_307;
    }

    [v515 setBaselineTotalEventCount_];
  }

  v160 = v665;
  v517 = *v665;

  v142 = v671;
  v519 = sub_1C6D426DC(v518);

  v130 = v670[11];
  v520 = v670[12];
  v521 = __swift_project_boxed_opaque_existential_1(v670 + 8, v130);
  sub_1C6D79920();
  if ((*&v522 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_300;
  }

  if (v522 <= -9.22337204e18)
  {
LABEL_301:
    __break(1u);
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
LABEL_304:
    __break(1u);
LABEL_305:
    __break(1u);
    goto LABEL_306;
  }

  if (v522 >= 9.22337204e18)
  {
    goto LABEL_302;
  }

  v523 = *(*v160 + 16);
  v524 = v519[1].u64[0];
  v731 = v142;
  *&v734 = v521;
  v733 = v130;
  v732 = v523;
  if (v524)
  {
    v525 = 0;
    v526 = 0;
    while (1)
    {
      v527 = v519[2].i64[v525];
      v528 = __CFADD__(v526, v527);
      v526 += v527;
      if (v528)
      {
        goto LABEL_288;
      }

      if (v524 == ++v525)
      {
        v529 = v526 / v524;
        goto LABEL_263;
      }
    }
  }

  v529 = 0.0;
LABEL_263:
  v530 = v522;
  v531 = sub_1C6D42AB0(v519, v522);

  v532 = *v653;
  v533 = v651;
  swift_beginAccess();
  v534 = *v533;
  v535 = v631;
  swift_beginAccess();
  v536 = *v535;
  v537 = v632;
  swift_beginAccess();
  v538 = *v537;
  v539 = v633;
  swift_beginAccess();
  v540 = *v539;
  v541 = v634;
  swift_beginAccess();
  (*(v520 + 8))(v530, v732, v532, v534, v536, v538, v540, *v541, v529, v531, v683, v717, v733, v520);
  v542 = v724;
  v543 = [v724 featureFlags];
  v544 = [v543 uniqueAggregateLimit];

  if (!v544)
  {
    goto LABEL_278;
  }

  v545 = [v544 integerValue];

  v546 = v665;
  v547 = *(*v665 + 2);
  v548 = swift_allocObject();
  *(v548 + 16) = xmmword_1C6D7EB10;
  if (v547 > v545)
  {
    v733 = (v547 - v545);
    v734 = xmmword_1C6D7EB10;
    v735 = v545;
    v549 = sub_1C6D7A0E0();
    v550 = MEMORY[0x1E69E6158];
    v551 = v667;
    *(v548 + 56) = MEMORY[0x1E69E6158];
    *(v548 + 64) = v551;
    *(v548 + 32) = v549;
    *(v548 + 40) = v552;
    v735 = v547;
    v553 = sub_1C6D7A0E0();
    *(v548 + 96) = v550;
    *(v548 + 104) = v551;
    *(v548 + 72) = v553;
    *(v548 + 80) = v554;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v555 = *v546;

    v735 = sub_1C6B6E7AC(v556);
    v142 = v731;
    sub_1C6D433E8(&v735);
    if (v142)
    {
LABEL_319:

      __break(1u);
      return result;
    }

    if ((v545 & 0x8000000000000000) == 0)
    {
      v557 = v735;
      if (v735[2] >= v545)
      {
        if (v545)
        {
          v732 = 0;
          v735 = MEMORY[0x1E69E7CC0];
          sub_1C6B39280(0, v545, 0);
          v558 = v735;
          v559 = v557 + 5;
          do
          {
            v561 = *(v559 - 1);
            v560 = *v559;
            v735 = v558;
            v563 = v558[2];
            v562 = v558[3];

            if (v563 >= v562 >> 1)
            {
              sub_1C6B39280((v562 > 1), v563 + 1, 1);
              v558 = v735;
            }

            v558[2] = v563 + 1;
            v564 = &v558[2 * v563];
            v564[4] = v561;
            v564[5] = v560;
            v559 += 3;
            --v545;
          }

          while (v545);

          v546 = v665;
        }

        else
        {

          v558 = MEMORY[0x1E69E7CC0];
        }

        v571 = sub_1C6B1E610(v558);

        v572 = *v546;

        v574 = sub_1C6D5CE1C(v573, v571);

        swift_bridgeObjectRelease_n();
        v575 = *v546;
        *v546 = v574;

        v576 = swift_allocObject();
        *(v576 + 16) = v734;
        v735 = v733;
        v577 = sub_1C6D7A0E0();
        v578 = MEMORY[0x1E69E6158];
        v579 = v667;
        *(v576 + 56) = MEMORY[0x1E69E6158];
        *(v576 + 64) = v579;
        *(v576 + 32) = v577;
        *(v576 + 40) = v580;
        v735 = (*v546)[2];
        v581 = sub_1C6D7A0E0();
        *(v576 + 96) = v578;
        *(v576 + 104) = v579;
        *(v576 + 72) = v581;
        *(v576 + 80) = v582;
        sub_1C6D79AC0();
        sub_1C6D78D30();
        goto LABEL_277;
      }

LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
      goto LABEL_316;
    }

LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v735 = v545;
  v565 = sub_1C6D7A0E0();
  v566 = MEMORY[0x1E69E6158];
  v567 = v667;
  *(v548 + 56) = MEMORY[0x1E69E6158];
  *(v548 + 64) = v567;
  *(v548 + 32) = v565;
  *(v548 + 40) = v568;
  v735 = v547;
  v569 = sub_1C6D7A0E0();
  *(v548 + 96) = v566;
  *(v548 + 104) = v567;
  *(v548 + 72) = v569;
  *(v548 + 80) = v570;
  sub_1C6D79AC0();
  sub_1C6D78D30();
LABEL_277:

  v542 = v724;
LABEL_278:
  v583 = *(v723 + 16);
  swift_beginAccess();
  if (*(v650 + 16))
  {
    v584 = *(v650 + 16);
  }

  else
  {
    v584 = MEMORY[0x1E69E7CC8];
  }

  [v542 decayRate];
  v586 = v585;
  v587 = v612;
  sub_1C6D78D50();
  tf_os_signpost_aggregate_store_generation_end();

  (*(v613 + 8))(v587, v614);
  (*(v610 + 8))(v609, v611);

  v588 = v616;
  v589 = v617;
  *v617 = v583;
  v589[1] = v584;
  v589[2] = v586;
  (*(v615 + 8))(v638, v588);
}

uint64_t sub_1C6D4C430(uint64_t a1)
{
  v2 = v1;
  v177 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6968FB0];
  sub_1C6B1839C(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v154 - v7;
  v9 = sub_1C6D75DE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v167 = v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v169 = v154 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v154 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v154 - v19;
  v21 = *(a1 + 8);
  v171 = *a1;
  v172 = v21;
  v22 = *(a1 + 16);
  v23 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL;
  swift_beginAccess();
  sub_1C6D5B3CC(v2 + v23, v8, &unk_1EDCEA3A0, v4);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C6D5B4AC(v8, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
    if (qword_1EDCE7498 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    result = sub_1C6D78D30();
    goto LABEL_12;
  }

  (*(v10 + 32))(v20, v8, v9);
  v25 = objc_opt_self();
  v26 = [v25 defaultManager];
  sub_1C6D75D80();
  v27 = sub_1C6D75D30();
  v28 = *(v10 + 8);
  v170 = v9;
  v166 = v10 + 8;
  v168 = v28;
  v28(v18, v9);
  v173 = 0;
  v29 = [v26 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:&v173];

  if (!v29)
  {
    v46 = v173;
    v47 = sub_1C6D75CC0();

    swift_willThrow();
    if (qword_1EDCE7498 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1C6D7E630;
    v173 = 0;
    v174 = 0xE000000000000000;
    v176 = v47;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    v49 = v173;
    v50 = v174;
    *(v48 + 56) = MEMORY[0x1E69E6158];
    *(v48 + 64) = sub_1C6B2064C();
    *(v48 + 32) = v49;
    *(v48 + 40) = v50;
    sub_1C6D78D30();

    result = v168(v20, v170);
    goto LABEL_12;
  }

  v162 = v18;
  v164 = v20;
  v163 = v25;
  v30 = qword_1EDCE7498;
  v31 = v173;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDCE74A0;
  sub_1C6B1D314();
  v34 = v33;
  v35 = swift_allocObject();
  v165 = xmmword_1C6D7E630;
  *(v35 + 16) = xmmword_1C6D7E630;
  v36 = v171;
  v37 = v172;
  v173 = v171;
  v174 = v172;
  v175 = v22;
  v38 = UserEventHistoryAggregateStore.description.getter();
  v40 = v39;
  *(v35 + 56) = MEMORY[0x1E69E6158];
  v41 = sub_1C6B2064C();
  *(v35 + 64) = v41;
  *(v35 + 32) = v38;
  *(v35 + 40) = v40;
  sub_1C6D79AC0();
  v42 = v32;
  sub_1C6D78D30();

  v43 = sub_1C6D75B70();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  sub_1C6D75B60();
  v173 = v36;
  v174 = v37;
  v175 = v22;
  sub_1C6D5C7A8();
  v52 = sub_1C6D75B50();
  v54 = v53;
  v157 = v43;
  v55 = v41;
  v158 = v42;

  v160 = v34;
  v56 = swift_allocObject();
  v57 = v56;
  *(v56 + 16) = v165;
  v173 = 0;
  v174 = 0xE000000000000000;
  v58 = *(v2 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_sizeFormatter);
  v59 = v54 >> 62;
  v161 = v52;
  v159 = v54;
  if ((v54 >> 62) <= 1)
  {
    if (!v59)
    {
      v60 = BYTE6(v54);
LABEL_22:
      v61 = MEMORY[0x1E69E6158];
      goto LABEL_23;
    }

LABEL_20:
    if (__OFSUB__(HIDWORD(v52), v52))
    {
      __break(1u);
    }

    v60 = HIDWORD(v52) - v52;
    goto LABEL_22;
  }

  v60 = 0;
  v61 = MEMORY[0x1E69E6158];
  if (v59 == 2)
  {
    v63 = *(v161 + 16);
    v62 = *(v161 + 24);
    v60 = v62 - v63;
    if (__OFSUB__(v62, v63))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

LABEL_23:
  v64 = [v58 stringFromByteCount_];
  v65 = sub_1C6D795A0();
  v67 = v66;

  MEMORY[0x1CCA55B00](v65, v67);

  v68 = v173;
  v69 = v174;
  v57[7] = v61;
  v57[8] = v55;
  v57[4] = v68;
  v57[5] = v69;
  sub_1C6D79AC0();
  v156 = v58;
  sub_1C6D78D30();

  v70 = swift_allocObject();
  *(v70 + 16) = v165;
  v71 = sub_1C6D5B1C4(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
  v72 = sub_1C6D7A0E0();
  *(v70 + 56) = v61;
  *(v70 + 64) = v55;
  *(v70 + 32) = v72;
  *(v70 + 40) = v73;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v74 = v159;
  sub_1C6D75E70();
  v154[1] = v71;
  v155 = v55;
  sub_1C6D77FA0();
  if ((sub_1C6D77F90() & 1) == 0)
  {
    v168(v164, v170);
    result = sub_1C6B1C9F0(v161, v74);
LABEL_12:
    v51 = *MEMORY[0x1E69E9840];
    return result;
  }

  sub_1C6D79AC0();
  sub_1C6D78D30();
  v75 = *(v157 + 48);
  v76 = *(v157 + 52);
  swift_allocObject();
  sub_1C6D75B60();
  type metadata accessor for HumanReadableUserEventHistoryAggregateStore();
  v77 = swift_allocObject();
  v78 = v172;
  v77[2] = v171;
  v77[3] = v78;
  v77[4] = v22;
  v173 = v77;
  sub_1C6D5B1C4(&qword_1EDCDFFB8, type metadata accessor for HumanReadableUserEventHistoryAggregateStore);

  v79 = sub_1C6D75B50();
  v81 = v80;
  v172 = 0;

  result = swift_allocObject();
  v82 = result;
  *(result + 16) = v165;
  v173 = 0;
  v174 = 0xE000000000000000;
  v83 = v81 >> 62;
  v84 = v155;
  v85 = MEMORY[0x1E69E6158];
  if ((v81 >> 62) > 1)
  {
    v87 = 0;
    v86 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
    v88 = &selRef_adSegmentsOutputName;
    if (v83 != 2)
    {
      goto LABEL_36;
    }

    v90 = *(v79 + 16);
    v89 = *(v79 + 24);
    v87 = v89 - v90;
    if (!__OFSUB__(v89, v90))
    {
      goto LABEL_36;
    }

    __break(1u);
  }

  else
  {
    v86 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
    if (!v83)
    {
      v87 = BYTE6(v81);
LABEL_35:
      v88 = &selRef_adSegmentsOutputName;
LABEL_36:
      v157 = v79;
      v171 = v81;
      v91 = [v156 v88[161]];
      v92 = sub_1C6D795A0();
      v94 = v93;

      MEMORY[0x1CCA55B00](v92, v94);

      v95 = v173;
      v96 = v174;
      v82[7] = v85;
      v82[8] = v84;
      v82[4] = v95;
      v82[5] = v96;
      sub_1C6D79AC0();
      sub_1C6D78D30();

      v97 = v162;
      sub_1C6D75D80();
      sub_1C6D75D50();
      v98 = v170;
      v99 = v168;
      v168(v97, v170);
      v100 = v86[77];
      v101 = v163;
      v102 = [v163 v100];
      sub_1C6D75DB0();
      v103 = sub_1C6D79570();

      LODWORD(v91) = [v102 fileExistsAtPath_];

      if (v91)
      {
        sub_1C6D75D80();
        sub_1C6D75D50();
        v99(v97, v98);
        v104 = [v101 defaultManager];
        sub_1C6D75DB0();
        v105 = sub_1C6D79570();

        v106 = [v104 fileExistsAtPath_];

        v107 = v101;
        if (v106)
        {
          v108 = swift_allocObject();
          *(v108 + 16) = v165;
          v109 = sub_1C6D7A0E0();
          v110 = MEMORY[0x1E69E6158];
          v111 = v155;
          *(v108 + 56) = MEMORY[0x1E69E6158];
          *(v108 + 64) = v111;
          *(v108 + 32) = v109;
          *(v108 + 40) = v112;
          sub_1C6D79AC0();
          sub_1C6D78D30();

          v113 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
          v114 = [v107 defaultManager];
          v115 = sub_1C6D75D30();
          v173 = 0;
          v116 = [v114 removeItemAtURL:v115 error:&v173];

          if (v116)
          {
            v117 = v173;
          }

          else
          {
            v120 = v173;
            v121 = sub_1C6D75CC0();

            swift_willThrow();
            sub_1C6D79AA0();
            v122 = swift_allocObject();
            *(v122 + 16) = v165;
            v173 = 0;
            v174 = 0xE000000000000000;
            v176 = v121;
            sub_1C6B10A98(0, &qword_1EDCEA410);
            sub_1C6D79E60();
            v123 = v173;
            v124 = v174;
            *(v122 + 56) = v110;
            *(v122 + 64) = v111;
            *(v122 + 32) = v123;
            *(v122 + 40) = v124;
            v113 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
            sub_1C6D78D30();

            v172 = 0;
          }
        }

        else
        {
          v110 = MEMORY[0x1E69E6158];
          v111 = v155;
          v113 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
        }

        v125 = [v107 v113[77]];
        v126 = sub_1C6D75D30();
        v127 = v167;
        v128 = sub_1C6D75D30();
        v173 = 0;
        v129 = [v125 copyItemAtURL:v126 toURL:v128 error:&v173];

        v130 = v173;
        if (v129)
        {
          v131 = swift_allocObject();
          *(v131 + 16) = v165;
          v132 = v130;
          v118 = v170;
          v133 = sub_1C6D7A0E0();
          *(v131 + 56) = v110;
          *(v131 + 64) = v111;
          *(v131 + 32) = v133;
          *(v131 + 40) = v134;
          sub_1C6D79AC0();
          sub_1C6D78D30();
        }

        else
        {
          v135 = v173;
          v136 = sub_1C6D75CC0();

          swift_willThrow();
          sub_1C6D79AA0();
          v137 = swift_allocObject();
          *(v137 + 16) = v165;
          v173 = 0;
          v174 = 0xE000000000000000;
          v176 = v136;
          sub_1C6B10A98(0, &qword_1EDCEA410);
          sub_1C6D79E60();
          v138 = v173;
          v139 = v174;
          *(v137 + 56) = v110;
          *(v137 + 64) = v111;
          *(v137 + 32) = v138;
          *(v137 + 40) = v139;
          sub_1C6D78D30();

          v172 = 0;
          v118 = v170;
        }

        v168(v127, v118);
        v119 = v169;
      }

      else
      {
        v118 = v98;
        v110 = MEMORY[0x1E69E6158];
        v119 = v169;
      }

      v140 = swift_allocObject();
      *(v140 + 16) = v165;
      v141 = sub_1C6D7A0E0();
      v142 = v155;
      *(v140 + 56) = v110;
      *(v140 + 64) = v142;
      *(v140 + 32) = v141;
      *(v140 + 40) = v143;
      sub_1C6D79AC0();
      sub_1C6D78D30();

      v144 = v157;
      v146 = v171;
      v145 = v172;
      sub_1C6D75E70();
      if (v145)
      {
        v147 = v168;
        v168(v119, v118);
        sub_1C6D79AA0();
        v148 = v146;
        v149 = swift_allocObject();
        *(v149 + 16) = v165;
        v173 = 0;
        v174 = 0xE000000000000000;
        v176 = v145;
        sub_1C6B10A98(0, &qword_1EDCEA410);
        sub_1C6D79E60();
        v150 = v173;
        v151 = v174;
        *(v149 + 56) = v110;
        *(v149 + 64) = v142;
        *(v149 + 32) = v150;
        *(v149 + 40) = v151;
        sub_1C6D78D30();

        sub_1C6B1C9F0(v144, v148);
        sub_1C6B1C9F0(v161, v159);
        result = v147(v164, v118);
      }

      else
      {
        sub_1C6B1C9F0(v144, v146);
        sub_1C6B1C9F0(v161, v159);
        v152 = v119;
        v153 = v168;
        v168(v152, v118);
        result = v153(v164, v118);
      }

      goto LABEL_12;
    }
  }

  if (!__OFSUB__(HIDWORD(v79), v79))
  {
    v87 = HIDWORD(v79) - v79;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

void sub_1C6D4D8A4(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = sub_1C6D75D30();
  v18 = 0;
  LODWORD(a1) = [a1 removeItemAtURL:v2 error:&v18];

  v3 = v18;
  if (a1)
  {
    sub_1C6D5D2C8();
    v4 = swift_allocError();
    *v5 = 2;
    swift_willThrow();
    v6 = v3;
  }

  else
  {
    v7 = v18;
    v4 = sub_1C6D75CC0();

    swift_willThrow();
  }

  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  sub_1C6D79AA0();
  sub_1C6B1D314();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D7EB10;
  sub_1C6D75DE0();
  sub_1C6D5B1C4(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
  v9 = sub_1C6D7A0E0();
  v11 = v10;
  v12 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1C6B2064C();
  *(v8 + 64) = v13;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1C6B10A98(0, &qword_1EDCEA410);
  sub_1C6D79E60();
  v14 = v18;
  v15 = v19;
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 72) = v14;
  *(v8 + 80) = v15;
  sub_1C6D78D30();

  sub_1C6D5D2C8();
  swift_allocError();
  *v16 = 2;
  swift_willThrow();

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C6D4DB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v182 = a4;
  v180 = a3;
  v187 = a2;
  v189 = a5;
  v190 = a1;
  v178 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v5 = *(*(v178 - 8) + 64);
  MEMORY[0x1EEE9AC00](v178);
  v186 = (&v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v176 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v7 = *(*(v176 - 8) + 64);
  MEMORY[0x1EEE9AC00](v176);
  v188 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1C6B1839C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v171 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v179 = &v163 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v169 = &v163 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v177 = &v163 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v185 = &v163 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v168 = &v163 - v22;
  v23 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v183 = *(v23 - 8);
  v184 = v23;
  v24 = *(v183 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v172 = &v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v175 = (&v163 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v170 = &v163 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v174 = (&v163 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v173 = &v163 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v163 - v35;
  sub_1C6B1839C(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v9);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v41 = &v163 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v163 - v42;
  v44 = sub_1C6D78A00();
  v181 = *(v44 - 8);
  v45 = *(v181 + 64);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v163 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v163 - v49;
  v51 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v163 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v163 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D5B364(v190, v58, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 3) < 0x12)
  {
    result = sub_1C6D5B44C(v58, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v61 = v189;
    *v189 = 0;
    v61[1] = 0;
    return result;
  }

  v62 = v187;
  v164 = v36;
  v165 = v48;
  v63 = v185;
  v166 = v41;
  v167 = v44;
  v190 = v54;
  v65 = v183;
  v64 = v184;
  if (!EnumCaseMultiPayload)
  {
    v76 = v188;
    sub_1C6D5B51C(v58, v188, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    if (v62)
    {
      v77 = v64;
      v78 = v62;
      v79 = v177;
      v80 = *(v176 + 20);
      sub_1C6D5B3CC(v76 + v80, v177, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v81 = *(v65 + 48);
      if (v81(v79, 1, v77) == 1)
      {
        v82 = v174;
        *v174 = 0;
        v82[1] = 0xE000000000000000;
        v83 = *(v77 + 20);
        v84 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v84 - 8) + 56))(v82 + v83, 1, 1, v84);
        v85 = v82 + *(v77 + 24);
        sub_1C6D78A30();
        if (v81(v79, 1, v77) != 1)
        {
          sub_1C6D5B4AC(v79, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }
      }

      else
      {
        v82 = v174;
        sub_1C6D5B51C(v79, v174, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      v120 = *v82;
      v121 = v82[1];

      sub_1C6D5B44C(v82, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      LOBYTE(v120) = sub_1C6B1E978(v120, v121, v78);

      v76 = v188;
      if (v120)
      {
        v192 = 0;
        v193 = 0xE000000000000000;
        v122 = v188;
        sub_1C6D79D50();
        MEMORY[0x1CCA55B00](0x20656C6369747241, 0xE800000000000000);
        v123 = v169;
        sub_1C6D5B3CC(v122 + v80, v169, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        if (v81(v123, 1, v77) == 1)
        {
          v124 = v170;
          *v170 = 0;
          *(v124 + 1) = 0xE000000000000000;
          v125 = *(v77 + 20);
          v126 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
          (*(*(v126 - 8) + 56))(&v124[v125], 1, 1, v126);
          v127 = &v124[*(v77 + 24)];
          sub_1C6D78A30();
          v128 = v81(v123, 1, v77);
          v106 = v189;
          if (v128 != 1)
          {
            sub_1C6D5B4AC(v123, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }
        }

        else
        {
          v124 = v170;
          sub_1C6D5B51C(v123, v170, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v106 = v189;
        }

        v155 = *v124;
        v156 = *(v124 + 1);

        sub_1C6D5B44C(v124, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        MEMORY[0x1CCA55B00](v155, v156);

        MEMORY[0x1CCA55B00](0xD000000000000072, 0x80000001C6DA9BD0);
        v151 = v192;
        v152 = v193;
        v153 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
        v154 = v188;
        goto LABEL_49;
      }
    }

    v129 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
    v130 = v76;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v86 = v190;
    sub_1C6D5B51C(v58, v190, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    v187 = *(v51 + 28);
    v188 = v51;
    v87 = v86 + v187;
    v88 = v43;
    sub_1C6D5B3CC(v87, v43, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    v89 = v181;
    v90 = *(v181 + 48);
    v91 = v167;
    v92 = v90(v88, 1, v167);
    v180 = v90;
    if (v92 == 1)
    {
      sub_1C6D789F0();
      if (v90(v88, 1, v91) != 1)
      {
        sub_1C6D5B4AC(v88, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      }
    }

    else
    {
      (*(v89 + 32))(v50, v88, v91);
    }

    v93 = sub_1C6D789E0();
    v186 = *(v89 + 8);
    v186(v50, v91);
    v94 = v93;
    v95 = v182;
    v96 = [v182 articleReadEventConditionals];
    [v96 minimumDuration];
    v98 = v97;

    if (v98 > v94)
    {
      v192 = 0;
      v193 = 0xE000000000000000;
      sub_1C6D79D50();
      MEMORY[0x1CCA55B00](0xD00000000000001BLL, 0x80000001C6DA9C50);
      v99 = v63;
      sub_1C6D5B3CC(&v190[*(v188 + 24)], v63, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v100 = *(v65 + 48);
      if (v100(v63, 1, v64) == 1)
      {
        v101 = v173;
        *v173 = 0;
        *(v101 + 1) = 0xE000000000000000;
        v102 = *(v64 + 20);
        v103 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v103 - 8) + 56))(&v101[v102], 1, 1, v103);
        v104 = &v101[*(v64 + 24)];
        sub_1C6D78A30();
        v105 = v100(v99, 1, v64);
        v106 = v189;
        v107 = v180;
        if (v105 != 1)
        {
          sub_1C6D5B4AC(v99, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }
      }

      else
      {
        v139 = v63;
        v101 = v173;
        sub_1C6D5B51C(v139, v173, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v106 = v189;
        v107 = v180;
      }

      v140 = *v101;
      v141 = *(v101 + 1);

      sub_1C6D5B44C(v101, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      MEMORY[0x1CCA55B00](v140, v141);

      MEMORY[0x1CCA55B00](0xD000000000000013, 0x80000001C6DA9C70);
      v142 = v190;
      v143 = v166;
      sub_1C6D5B3CC(&v190[v187], v166, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      v144 = v167;
      v145 = v107(v143, 1, v167);
      v146 = v165;
      if (v145 == 1)
      {
        sub_1C6D789F0();
        if (v107(v143, 1, v144) != 1)
        {
          sub_1C6D5B4AC(v143, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        }
      }

      else
      {
        (*(v181 + 32))(v165, v143, v144);
      }

      v148 = sub_1C6D789E0();
      v186(v146, v144);
      v191 = v148;
      v149 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v149);

      MEMORY[0x1CCA55B00](0xD000000000000031, 0x80000001C6DA9C90);
      v150 = [v182 articleReadEventConditionals];
      [v150 minimumDuration];

      sub_1C6D79910();
      v151 = v192;
      v152 = v193;
      v153 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
      v154 = v142;
      goto LABEL_49;
    }

    v108 = v190;
    v109 = *(*v190 + 16);
    v110 = [v95 articleReadEventConditionals];
    v111 = [v110 minimumScrollEventCount];

    if (v109 < v111)
    {
      v192 = 0;
      v193 = 0xE000000000000000;
      sub_1C6D79D50();
      MEMORY[0x1CCA55B00](0xD00000000000001BLL, 0x80000001C6DA9C50);
      v112 = v108 + *(v188 + 24);
      v113 = v168;
      sub_1C6D5B3CC(v112, v168, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v114 = *(v65 + 48);
      v115 = v64;
      if (v114(v113, 1, v64) == 1)
      {
        v116 = v164;
        *v164 = 0;
        *(v116 + 1) = 0xE000000000000000;
        v117 = *(v64 + 20);
        v118 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v118 - 8) + 56))(&v116[v117], 1, 1, v118);
        v119 = &v116[*(v115 + 24)];
        sub_1C6D78A30();
        if (v114(v113, 1, v115) != 1)
        {
          sub_1C6D5B4AC(v113, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }
      }

      else
      {
        v116 = v164;
        sub_1C6D5B51C(v113, v164, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      v159 = *v116;
      v160 = *(v116 + 1);

      sub_1C6D5B44C(v116, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      MEMORY[0x1CCA55B00](v159, v160);

      MEMORY[0x1CCA55B00](0xD000000000000017, 0x80000001C6DA9CD0);
      v191 = v109;
      v161 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v161);

      MEMORY[0x1CCA55B00](0xD000000000000030, 0x80000001C6DA9CF0);
      v191 = v111;
      v162 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v162);

      v151 = v192;
      v152 = v193;
      result = sub_1C6D5B44C(v190, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      v106 = v189;
      goto LABEL_50;
    }

    v129 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
    v130 = v108;
LABEL_42:
    result = sub_1C6D5B44C(v130, v129);
    v147 = v189;
    *v189 = 0;
    v147[1] = 0;
    return result;
  }

  v66 = v186;
  sub_1C6D5B51C(v58, v186, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  v67 = v180;
  if (!v180)
  {
    goto LABEL_36;
  }

  v68 = v64;
  v69 = v179;
  v70 = *(v178 + 20);
  sub_1C6D5B3CC(v66 + v70, v179, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v71 = *(v65 + 48);
  if (v71(v69, 1, v68) == 1)
  {
    v72 = v175;
    *v175 = 0;
    v72[1] = 0xE000000000000000;
    v73 = *(v68 + 20);
    v74 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v74 - 8) + 56))(v72 + v73, 1, 1, v74);
    v75 = v72 + *(v68 + 24);
    sub_1C6D78A30();
    if (v71(v69, 1, v68) != 1)
    {
      sub_1C6D5B4AC(v69, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    v72 = v175;
    sub_1C6D5B51C(v69, v175, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v131 = *v72;
  v132 = v72[1];

  sub_1C6D5B44C(v72, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  LOBYTE(v131) = sub_1C6B1E978(v131, v132, v67);

  if ((v131 & 1) == 0)
  {
LABEL_36:
    v129 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
    v130 = v66;
    goto LABEL_42;
  }

  v192 = 0;
  v193 = 0xE000000000000000;
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0x20656C6369747241, 0xE800000000000000);
  v133 = v171;
  sub_1C6D5B3CC(v66 + v70, v171, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (v71(v133, 1, v68) == 1)
  {
    v134 = v172;
    *v172 = 0;
    *(v134 + 1) = 0xE000000000000000;
    v135 = *(v68 + 20);
    v136 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v136 - 8) + 56))(&v134[v135], 1, 1, v136);
    v137 = &v134[*(v68 + 24)];
    sub_1C6D78A30();
    v138 = v71(v133, 1, v68);
    v106 = v189;
    if (v138 != 1)
    {
      sub_1C6D5B4AC(v133, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    v134 = v172;
    sub_1C6D5B51C(v133, v172, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v106 = v189;
  }

  v157 = *v134;
  v158 = *(v134 + 1);

  sub_1C6D5B44C(v134, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  MEMORY[0x1CCA55B00](v157, v158);

  MEMORY[0x1CCA55B00](0xD0000000000000BELL, 0x80000001C6DA9B10);
  v151 = v192;
  v152 = v193;
  v153 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
  v154 = v66;
LABEL_49:
  result = sub_1C6D5B44C(v154, v153);
LABEL_50:
  *v106 = v151;
  v106[1] = v152;
  return result;
}

unint64_t sub_1C6D4EFE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C6D76FE0();
  v5 = v4;
  swift_beginAccess();
  v6 = *(a2 + 16);
  if (!*(v6 + 16))
  {
LABEL_5:

    goto LABEL_6;
  }

  v7 = sub_1C6B5DEA8(v3, v5);
  v9 = v8;

  if (v9)
  {
    v10 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    result = [v10 eventCount];
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  swift_endAccess();
  return 0;
}

char *sub_1C6D4F0A0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v51 = a4;
  v7 = sub_1C6D77050();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v49[-v13];
  v15 = sub_1C6D76FE0();
  v17 = v16;
  swift_beginAccess();
  v18 = *(a2 + 16);
  if (*(v18 + 16))
  {
    v19 = sub_1C6B5DEA8(v15, v17);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);
      swift_endAccess();
      v22 = v21;

      return v22;
    }
  }

  swift_endAccess();
  (*(v8 + 16))(v14, a1, v7);
  v24 = (*(v8 + 88))(v14, v7);
  if (v24 == *MEMORY[0x1E69E36C0] || v24 == *MEMORY[0x1E69E36A8] || v24 == *MEMORY[0x1E69E36B0])
  {
    v25 = v14;
    v26 = *(v8 + 8);
    v26(v25, v7);
    goto LABEL_8;
  }

  if (v24 == *MEMORY[0x1E69E36B8])
  {
    v43 = v14;
    v26 = *(v8 + 8);
    v26(v43, v7);
    if (!a3)
    {
      goto LABEL_8;
    }

    v44 = [a3 aggregateCounts];
    result = [v44 channelTopic];
    if (!__OFADD__(result, 1))
    {
      [v44 setChannelTopic_];
LABEL_27:

      goto LABEL_8;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v24 == *MEMORY[0x1E69E36C8])
  {
    v45 = v14;
    v26 = *(v8 + 8);
    v26(v45, v7);
    if (!a3)
    {
      goto LABEL_8;
    }

    v44 = [a3 aggregateCounts];
    result = [v44 tag];
    if (!__OFADD__(result, 1))
    {
      [v44 setTag_];
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v50 = *MEMORY[0x1E69E36D0];
  v46 = v24;
  v47 = v14;
  v26 = *(v8 + 8);
  v26(v47, v7);
  if (v46 == v50 && a3 != 0)
  {
    v44 = [a3 aggregateCounts];
    result = [v44 group];
    if (!__OFADD__(result, 1))
    {
      [v44 setGroup_];
      goto LABEL_27;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_8:
  result = [objc_allocWithZone(MEMORY[0x1E69B6EE8]) init];
  if (!result)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v27 = result;
  v28 = sub_1C6D79570();
  [v27 setFeatureKey_];

  sub_1C6D77030();
  sub_1C6D5B1C4(&qword_1EDCE6208, MEMORY[0x1E69E36D8]);
  LOBYTE(v28) = sub_1C6D79560();
  v26(v12, v7);
  v29 = v51;
  v30 = [v51 priorsConfiguration];
  v31 = v30;
  if (v28)
  {
    v32 = &selRef_baselineFeaturePrior;
  }

  else
  {
    v32 = &selRef_generalFeaturePrior;
  }

  v33 = [v30 *v32];

  [v33 clicks];
  v35 = v34;

  [v27 setClicks_];
  v36 = [v29 priorsConfiguration];
  v37 = [v36 *v32];

  [v37 impressions];
  v39 = v38;

  [v27 setImpressions_];
  swift_beginAccess();
  v40 = v27;
  v41 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_1C6BC55B8(v40, v15, v17, isUniquelyReferenced_nonNull_native);

  *(a2 + 16) = v52;
  swift_endAccess();
  return v40;
}

char *sub_1C6D4F618(uint64_t a1)
{
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D5B364(a1, v6, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      result = [v1 articleVisitedEventCount];
      v8 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v9 = &selRef_setArticleVisitedEventCount_;
        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_27;
    case 2u:
      result = [v1 articleReadEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
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
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      else
      {
        v9 = &selRef_setArticleReadEventCount_;
LABEL_24:
        [v1 *v9];
        return sub_1C6D5B44C(v6, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      }

      return result;
    case 3u:
      result = [v1 articleSharedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_29;
      }

      v9 = &selRef_setArticleSharedEventCount_;
      goto LABEL_24;
    case 4u:
      result = [v1 articleLikedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_34;
      }

      v9 = &selRef_setArticleLikedEventCount_;
      goto LABEL_24;
    case 5u:
      result = [v1 articleDislikedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_28;
      }

      v9 = &selRef_setArticleDislikedEventCount_;
      goto LABEL_24;
    case 6u:
      result = [v1 articleSavedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_36;
      }

      v9 = &selRef_setArticleSavedEventCount_;
      goto LABEL_24;
    case 7u:
      result = [v1 tagMutedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_31;
      }

      v9 = &selRef_setTagMutedEventCount_;
      goto LABEL_24;
    case 8u:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
      return sub_1C6D5B44C(v6, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    case 9u:
      result = [v1 tagFollowedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_33;
      }

      v9 = &selRef_setTagFollowedEventCount_;
      goto LABEL_24;
    case 0xAu:
      result = [v1 tagUnfollowedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_35;
      }

      v9 = &selRef_setTagUnfollowedEventCount_;
      goto LABEL_24;
    case 0xBu:
      result = [v1 feedViewEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_32;
      }

      v9 = &selRef_setFeedViewEventCount_;
      goto LABEL_24;
    default:
      result = [v1 articleSeenEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_30;
      }

      v9 = &selRef_setArticleSeenEventCount_;
      goto LABEL_24;
  }
}

id sub_1C6D4F8BC(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, size_t a10, uint64_t a11, unint64_t a12, unint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t (**a22)(size_t, uint64_t))
{
  v878 = a8;
  v879 = a6;
  v880 = a7;
  v900 = a5;
  v926 = a4;
  v898 = a3;
  v957 = a2;
  v951 = a22;
  v23 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v835 = (&v833 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v25);
  v836 = (&v833 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v881 = (&v833 - v29);
  v961 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v30 = *(*(v961 - 8) + 64);
  MEMORY[0x1EEE9AC00](v961);
  v960 = &v833 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1E69E6720];
  sub_1C6B1839C(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v905 = &v833 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v904 = &v833 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v853 = &v833 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v852 = &v833 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v906 = &v833 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v971 = (&v833 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v855 = &v833 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v854 = &v833 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v908 = &v833 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v907 = &v833 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v912 = (&v833 - v56);
  MEMORY[0x1EEE9AC00](v55);
  v911 = &v833 - v57;
  v981 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v896 = *(v981 - 8);
  v58 = *(v896 + 64);
  v59 = MEMORY[0x1EEE9AC00](v981);
  v891 = &v833 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v890 = &v833 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v846 = &v833 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v845 = &v833 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v893 = &v833 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v892 = &v833 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v848 = &v833 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v847 = &v833 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v895 = &v833 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v894 = &v833 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v910 = &v833 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v959 = &v833 - v82;
  MEMORY[0x1EEE9AC00](v81);
  v909 = &v833 - v83;
  sub_1C6B1839C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v32);
  v85 = *(*(v84 - 8) + 64);
  v86 = MEMORY[0x1EEE9AC00](v84 - 8);
  v944 = &v833 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x1EEE9AC00](v86);
  v869 = &v833 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v945 = &v833 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v874 = &v833 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v940 = (&v833 - v95);
  MEMORY[0x1EEE9AC00](v94);
  v917 = &v833 - v96;
  v972 = sub_1C6D789A0();
  v921 = *(v972 - 8);
  v97 = *(v921 + 64);
  v98 = MEMORY[0x1EEE9AC00](v972);
  v947 = &v833 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x1EEE9AC00](v98);
  v883 = &v833 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v948 = &v833 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v872 = &v833 - v105;
  v106 = MEMORY[0x1EEE9AC00](v104);
  v942 = (&v833 - v107);
  MEMORY[0x1EEE9AC00](v106);
  v930 = &v833 - v108;
  v988 = sub_1C6D77050();
  v982 = *(v988 - 8);
  v109 = *(v982 + 64);
  v110 = MEMORY[0x1EEE9AC00](v988);
  v967 = &v833 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = MEMORY[0x1EEE9AC00](v110);
  v974 = &v833 - v113;
  v114 = MEMORY[0x1EEE9AC00](v112);
  v968 = &v833 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v976 = &v833 - v117;
  v118 = MEMORY[0x1EEE9AC00](v116);
  v939 = &v833 - v119;
  v120 = MEMORY[0x1EEE9AC00](v118);
  v977 = (&v833 - v121);
  MEMORY[0x1EEE9AC00](v120);
  v885 = &v833 - v122;
  v858 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v123 = *(*(v858 - 8) + 64);
  v124 = MEMORY[0x1EEE9AC00](v858);
  v856 = &v833 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = MEMORY[0x1EEE9AC00](v124);
  v857 = &v833 - v127;
  MEMORY[0x1EEE9AC00](v126);
  v918 = (&v833 - v128);
  v865 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v129 = *(*(v865 - 8) + 64);
  v130 = MEMORY[0x1EEE9AC00](v865);
  v859 = &v833 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = MEMORY[0x1EEE9AC00](v130);
  v860 = &v833 - v133;
  MEMORY[0x1EEE9AC00](v132);
  v919 = &v833 - v134;
  v135 = _s23EmbeddingValidityResultOMa(0);
  v136 = *(*(v135 - 8) + 64);
  v137 = MEMORY[0x1EEE9AC00](v135 - 8);
  v887 = &v833 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = MEMORY[0x1EEE9AC00](v137);
  v875 = &v833 - v140;
  v141 = MEMORY[0x1EEE9AC00](v139);
  v889 = &v833 - v142;
  v143 = MEMORY[0x1EEE9AC00](v141);
  v877 = &v833 - v144;
  v145 = MEMORY[0x1EEE9AC00](v143);
  v962 = &v833 - v146;
  MEMORY[0x1EEE9AC00](v145);
  v949 = &v833 - v147;
  sub_1C6B1839C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v32);
  v149 = *(*(v148 - 8) + 64);
  v150 = MEMORY[0x1EEE9AC00](v148 - 8);
  v837 = &v833 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = MEMORY[0x1EEE9AC00](v150);
  v935 = (&v833 - v153);
  v154 = MEMORY[0x1EEE9AC00](v152);
  v934 = (&v833 - v155);
  v156 = MEMORY[0x1EEE9AC00](v154);
  v866 = (&v833 - v157);
  v158 = MEMORY[0x1EEE9AC00](v156);
  v867 = &v833 - v159;
  v160 = MEMORY[0x1EEE9AC00](v158);
  v842 = &v833 - v161;
  v162 = MEMORY[0x1EEE9AC00](v160);
  v886 = (&v833 - v163);
  v164 = MEMORY[0x1EEE9AC00](v162);
  v840 = &v833 - v165;
  v166 = MEMORY[0x1EEE9AC00](v164);
  v936 = (&v833 - v167);
  v168 = MEMORY[0x1EEE9AC00](v166);
  v937 = (&v833 - v169);
  v170 = MEMORY[0x1EEE9AC00](v168);
  v870 = (&v833 - v171);
  v172 = MEMORY[0x1EEE9AC00](v170);
  v871 = &v833 - v173;
  v174 = MEMORY[0x1EEE9AC00](v172);
  v844 = &v833 - v175;
  v176 = MEMORY[0x1EEE9AC00](v174);
  v888 = (&v833 - v177);
  v178 = MEMORY[0x1EEE9AC00](v176);
  v882 = (&v833 - v179);
  v180 = MEMORY[0x1EEE9AC00](v178);
  v938 = (&v833 - v181);
  v182 = MEMORY[0x1EEE9AC00](v180);
  v941 = &v833 - v183;
  v184 = MEMORY[0x1EEE9AC00](v182);
  v914 = &v833 - v185;
  v186 = MEMORY[0x1EEE9AC00](v184);
  v915 = &v833 - v187;
  v188 = MEMORY[0x1EEE9AC00](v186);
  v973 = &v833 - v189;
  MEMORY[0x1EEE9AC00](v188);
  v950 = (&v833 - v190);
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v32);
  v192 = *(*(v191 - 8) + 64);
  v193 = MEMORY[0x1EEE9AC00](v191 - 8);
  v899 = &v833 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = MEMORY[0x1EEE9AC00](v193);
  v902 = &v833 - v196;
  MEMORY[0x1EEE9AC00](v195);
  v198 = &v833 - v197;
  v199 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v200 = *(v199 - 8);
  v201 = *(v200 + 8);
  v202 = MEMORY[0x1EEE9AC00](v199);
  v849 = &v833 - ((v203 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = MEMORY[0x1EEE9AC00](v202);
  v862 = &v833 - v205;
  v206 = MEMORY[0x1EEE9AC00](v204);
  v868 = &v833 - v207;
  v208 = MEMORY[0x1EEE9AC00](v206);
  v850 = &v833 - v209;
  v210 = MEMORY[0x1EEE9AC00](v208);
  v975 = (&v833 - v211);
  v212 = MEMORY[0x1EEE9AC00](v210);
  v864 = &v833 - v213;
  v214 = MEMORY[0x1EEE9AC00](v212);
  v873 = &v833 - v215;
  v216 = MEMORY[0x1EEE9AC00](v214);
  v916 = (&v833 - v217);
  v218 = MEMORY[0x1EEE9AC00](v216);
  v984 = (&v833 - v219);
  v220 = MEMORY[0x1EEE9AC00](v218);
  v920 = &v833 - v221;
  v222 = MEMORY[0x1EEE9AC00](v220);
  v928 = &v833 - v223;
  MEMORY[0x1EEE9AC00](v222);
  v983 = (&v833 - v224);
  v225 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v966 = *(v225 - 8);
  v226 = *(v966 + 64);
  v227 = MEMORY[0x1EEE9AC00](v225);
  v953 = &v833 - ((v228 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = MEMORY[0x1EEE9AC00](v227);
  v861 = &v833 - v230;
  v231 = MEMORY[0x1EEE9AC00](v229);
  v954 = (&v833 - v232);
  v233 = MEMORY[0x1EEE9AC00](v231);
  v969 = &v833 - v234;
  v235 = MEMORY[0x1EEE9AC00](v233);
  v863 = &v833 - v236;
  v237 = MEMORY[0x1EEE9AC00](v235);
  v955 = &v833 - v238;
  v239 = MEMORY[0x1EEE9AC00](v237);
  v970 = &v833 - v240;
  v241 = MEMORY[0x1EEE9AC00](v239);
  v913 = (&v833 - v242);
  MEMORY[0x1EEE9AC00](v241);
  v244 = &v833 - v243;
  v245 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v978 = *(v245 - 8);
  v246 = *(v978 + 64);
  v247 = MEMORY[0x1EEE9AC00](v245);
  v838 = (&v833 - ((v248 + 15) & 0xFFFFFFFFFFFFFFF0));
  v249 = MEMORY[0x1EEE9AC00](v247);
  v841 = (&v833 - v250);
  v251 = MEMORY[0x1EEE9AC00](v249);
  v839 = (&v833 - v252);
  v253 = MEMORY[0x1EEE9AC00](v251);
  v843 = (&v833 - v254);
  v255 = MEMORY[0x1EEE9AC00](v253);
  v897 = (&v833 - v256);
  v257 = MEMORY[0x1EEE9AC00](v255);
  v903 = (&v833 - v258);
  MEMORY[0x1EEE9AC00](v257);
  v260 = &v833 - v259;
  v261 = *a1;
  swift_getObjectType();
  sub_1C6D71158();
  v989 = v951;
  v956 = v260;
  v990 = v260;
  v262 = sub_1C6D5B1C4(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
  v946 = v225;
  v263 = v987;
  sub_1C6D78C30();
  v264 = v957;
  v265 = v263;
  swift_beginAccess();
  v266 = v264[2];
  v267 = __OFADD__(v266, 1);
  v268 = v266 + 1;
  if (v267)
  {
    goto LABEL_421;
  }

  v901 = v263;
  v884 = a18;
  v980 = a17;
  v958 = a21;
  v979 = a19;
  v986 = a20;
  v987 = a15;
  v851 = a16;
  v924 = a14;
  v933 = a13;
  v923 = a11;
  v929 = a12;
  v925 = a10;
  v876 = a9;
  v952 = v921;
  v264[2] = v268;
  sub_1C6D5B3CC(v244, v198, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v269 = *(v200 + 6);
  v200 = (v200 + 48);
  v943 = v199;
  v931 = v269;
  v270 = v269(v198, 1, v199);
  v985 = v245;
  v932 = v200;
  v922 = v262;
  if (v270 == 1)
  {
    sub_1C6D5B44C(v244, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v271 = sub_1C6D5B4AC(v198, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v200 = v975;
    v244 = v951;
    v265 = v971;
    goto LABEL_137;
  }

  v963 = v244;
  sub_1C6D5B51C(v198, v983, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v272 = v950;
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v950);
  v273 = *(v978 + 48);
  v965 = (v978 + 48);
  v964 = v273;
  v274 = v273(v272, 1, v245);
  sub_1C6D5B4AC(v272, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v265 = v971;
  v262 = v929;
  v244 = v925;
  v275 = v973;
  v198 = v962;
  if (v274 != 1)
  {
    v264 = v898;
    swift_beginAccess();
    v276 = v264[2];
    v267 = __OFADD__(v276, 1);
    v277 = v276 + 1;
    if (v267)
    {
      goto LABEL_424;
    }

    v264[2] = v277;
  }

  if (!v926)
  {
    goto LABEL_14;
  }

  if (v926 != 1)
  {
    goto LABEL_18;
  }

  v198 = v949;
  sub_1C6D43E04(1, v900, v949);
  v278 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v279 = (*(*(v278 - 8) + 48))(v198, 2, v278);
  if (v279)
  {
    if (v279 == 1)
    {
      goto LABEL_18;
    }

    v280 = v880;
    swift_beginAccess();
    v281 = *(v280 + 16);
    v267 = __OFADD__(v281, 1);
    v282 = v281 + 1;
    if (!v267)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_14:
    sub_1C6D43E04(0, v900, v198);
    v283 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    v284 = (*(*(v283 - 8) + 48))(v198, 2, v283);
    if (v284)
    {
      if (v284 == 1)
      {
        goto LABEL_18;
      }

      v280 = v876;
      result = swift_beginAccess();
      v286 = *(v280 + 16);
      v267 = __OFADD__(v286, 1);
      v282 = v286 + 1;
      if (!v267)
      {
LABEL_17:
        *(v280 + 16) = v282;
LABEL_18:
        v287 = v983;
        if (!v244)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_438:
      __break(1u);
LABEL_439:
      __break(1u);
LABEL_440:
      __break(1u);
LABEL_441:
      __break(1u);
LABEL_442:
      __break(1u);
LABEL_443:
      __break(1u);
LABEL_444:
      __break(1u);
LABEL_445:
      __break(1u);
LABEL_446:
      __break(1u);
LABEL_447:
      __break(1u);
LABEL_448:
      __break(1u);
      goto LABEL_449;
    }

    goto LABEL_36;
  }

  v312 = v879;
  swift_beginAccess();
  v313 = *(v312 + 16);
  v267 = __OFADD__(v313, 1);
  v314 = v313 + 1;
  if (!v267)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_36:
  v312 = v878;
  result = swift_beginAccess();
  v315 = *(v312 + 16);
  v267 = __OFADD__(v315, 1);
  v314 = v315 + 1;
  if (v267)
  {
    __break(1u);
    goto LABEL_438;
  }

LABEL_37:
  *(v312 + 16) = v314;
  sub_1C6D5B44C(v198, _s23EmbeddingValidityResultOMa);
  v287 = v983;
  if (v244)
  {
LABEL_19:
    sub_1C6D4F618(v287);
  }

LABEL_20:
  swift_beginAccess();
  v288 = *(v262 + 16);
  v289 = v933;
  swift_beginAccess();
  v290 = *(v289 + 16);

  sub_1C6D4DB40(v287, v288, v290, v924, &v1006);

  if (v1007)
  {

    v291 = v287;
LABEL_22:
    sub_1C6D5B44C(v291, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v271 = sub_1C6D5B44C(v963, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v200 = v975;
    goto LABEL_136;
  }

  v292 = [v987 aggregateModificationConfigurations];
  v1008 = 0;
  v1009 = 1;
  v293 = sub_1C6C40FC8(v287, &v1008);

  v927 = v293;
  if (!v293)
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v307 = swift_allocObject();
    *(v307 + 16) = xmmword_1C6D7E630;
    v308 = v983;
    v309 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
    v311 = v310;
    *(v307 + 56) = MEMORY[0x1E69E6158];
    *(v307 + 64) = sub_1C6B2064C();
    *(v307 + 32) = v309;
    *(v307 + 40) = v311;
    sub_1C6D78D30();

    v291 = v308;
    goto LABEL_22;
  }

  v294 = v928;
  sub_1C6D5B364(v287, v928, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  if (!swift_getEnumCaseMultiPayload())
  {
    v316 = v919;
    sub_1C6D5B51C(v294, v919, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    swift_beginAccess();
    if (*(v262 + 16))
    {
      sub_1C6D5B3CC(v316 + *(v865 + 20), v275, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v317 = v985;
      v318 = v964;
      if (v964(v275, 1, v985) == 1)
      {
        v319 = v903;
        *v903 = 0;
        v319[1] = 0xE000000000000000;
        (*(v896 + 56))(v319 + *(v317 + 20), 1, 1, v981);
        v320 = v319 + *(v317 + 24);
        sub_1C6D78A30();
        if (v318(v275, 1, v317) != 1)
        {
          sub_1C6D5B4AC(v275, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }
      }

      else
      {
        v319 = v903;
        sub_1C6D5B51C(v275, v903, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      v326 = *v319;
      v327 = v319[1];

      sub_1C6D5B44C(v319, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      sub_1C6B1E6A8(&v1003, v326, v327);
      swift_endAccess();
      sub_1C6D5B44C(v919, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    }

    else
    {
      swift_endAccess();
      sub_1C6D5B44C(v316, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    }

    v200 = v975;
    goto LABEL_54;
  }

  sub_1C6D5B44C(v294, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v295 = v920;
  sub_1C6D5B364(v287, v920, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v200 = v975;
  v198 = v930;
  if (EnumCaseMultiPayload == 1)
  {
    v297 = v295;
    v298 = v918;
    sub_1C6D5B51C(v297, v918, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    v299 = v933;
    swift_beginAccess();
    if (*(v299 + 16))
    {
      v300 = v298 + *(v858 + 20);
      v301 = v882;
      sub_1C6D5B3CC(v300, v882, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v302 = v985;
      v303 = v964;
      if (v964(v301, 1, v985) == 1)
      {
        v304 = v896;
        v305 = v897;
        *v897 = 0;
        v305[1] = 0xE000000000000000;
        (*(v304 + 56))(v305 + *(v302 + 20), 1, 1, v981);
        v306 = v305 + *(v302 + 24);
        sub_1C6D78A30();
        if (v303(v301, 1, v302) != 1)
        {
          sub_1C6D5B4AC(v301, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }
      }

      else
      {
        v305 = v897;
        sub_1C6D5B51C(v301, v897, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      v328 = *v305;
      v329 = v305[1];

      sub_1C6D5B44C(v305, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      sub_1C6B1E6A8(&v1003, v328, v329);
      swift_endAccess();
      sub_1C6D5B44C(v918, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);

LABEL_54:
      v198 = v930;
      goto LABEL_55;
    }

    swift_endAccess();
    v325 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
  }

  else
  {
    sub_1C6D5B44C(v295, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v298 = v916;
    sub_1C6D5B364(v287, v916, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v321 = v298;
      v298 = v881;
      sub_1C6D5B51C(v321, v881, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      v322 = *v298;
      v323 = v298[1];
      swift_beginAccess();
      v324 = v323;
      v198 = v930;
      sub_1C6D39EFC(v322, v324);
      swift_endAccess();

      v325 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
    }

    else
    {
      v325 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
    }
  }

  sub_1C6D5B44C(v298, v325);
LABEL_55:
  v330 = v980;
  v928 = sub_1C6CCEBD8(sub_1C6D5D45C, v980, v884);
  v331 = v885;
  sub_1C6D77030();
  v930 = sub_1C6D4F0A0(v331, v330, v979, v987);
  v332 = *(v982 + 8);
  v950 = (v982 + 8);
  v949 = v332;
  v332(v331, v988);
  v920 = *(v946 + 24);
  v333 = v917;
  sub_1C6D5B3CC(v963 + v920, v917, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v334 = v952;
  v335 = v952 + 48;
  v336 = *(v952 + 48);
  v262 = v972;
  v337 = (v336)(v333, 1, v972);
  v919 = v335;
  v918 = v336;
  if (v337 == 1)
  {
    sub_1C6D78990();
    if ((v336)(v333, 1, v262) != 1)
    {
      sub_1C6D5B4AC(v333, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v334 + 32))(v198, v333, v262);
  }

  v264 = v198;
  sub_1C6D78970();
  v339 = v338;
  v340 = *(v334 + 8);
  v244 = v334 + 8;
  v917 = v244;
  v916 = v340;
  (v340)(v198, v262);
  v341 = v339 * 1000.0;
  if (COERCE__INT64(fabs(v339 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_427;
  }

  v262 = v914;
  v198 = v915;
  v264 = v983;
  if (v341 <= -1.0)
  {
    goto LABEL_428;
  }

  if (v341 >= 1.84467441e19)
  {
    goto LABEL_429;
  }

  [v930 setTimestamp_];
  v342 = [v927 baselineModificationData];
  [v987 decayRate];
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v198);
  v343 = v985;
  v344 = v964(v198, 1, v985);
  if (v344 == 1)
  {
    sub_1C6D5B4AC(v198, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v345 = 0;
    v346 = 0;
  }

  else
  {
    v347 = v198 + *(v343 + 20);
    v348 = v911;
    sub_1C6D5B3CC(v347, v911, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v896 + 48))(v348, 1, v981) == 1)
    {
      sub_1C6D5B4AC(v348, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v198, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v345 = 0;
      v346 = 1;
    }

    else
    {
      v349 = v348;
      v350 = v909;
      sub_1C6D5B51C(v349, v909, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v351 = v350;
      v352 = v959;
      sub_1C6D5B51C(v351, v959, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v353 = v262;
      v354 = v960;
      sub_1C6D5B51C(v352, v960, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v355 = *(v354 + *(v961 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
      swift_beginAccess();
      v345 = *v355;
      v346 = *(v355 + 8);
      v356 = v354;
      v262 = v353;
      v264 = v983;
      sub_1C6D5B44C(v356, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      sub_1C6D5B44C(v915, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  v1008 = v345;
  v1009 = v346;
  v1010 = v344 == 1;
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v262);
  v357 = v985;
  v358 = v964(v262, 1, v985);
  if (v358 == 1)
  {
    sub_1C6D5B4AC(v262, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v359 = 0;
    v198 = 0;
  }

  else
  {
    v360 = v262 + *(v357 + 20);
    v361 = v912;
    sub_1C6D5B3CC(v360, v912, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v896 + 48))(v361, 1, v981) == 1)
    {
      sub_1C6D5B4AC(v361, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v262, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v359 = 0;
      v198 = 1;
    }

    else
    {
      v362 = v361;
      v363 = v910;
      sub_1C6D5B51C(v362, v910, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v364 = v363;
      v365 = v959;
      sub_1C6D5B51C(v364, v959, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v973 = v342;
      v366 = v262;
      v367 = v960;
      sub_1C6D5B51C(v365, v960, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v368 = *(v367 + *(v961 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
      swift_beginAccess();
      v359 = *v368;
      v198 = *(v368 + 8);
      v264 = v983;
      sub_1C6D5B44C(v367, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v369 = v366;
      v342 = v973;
      sub_1C6D5B44C(v369, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  v1003 = v359;
  LOBYTE(v1004) = v198;
  BYTE1(v1004) = v358 == 1;
  sub_1C6CE69E0(v264, &v1008, &v1003);
  v262 = v930;
  NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v342, v930, 0);

  v370 = v986;
  swift_beginAccess();
  v371 = v370[2];
  if (v371)
  {
    result = [v262 featureKey];
    if (result)
    {
      v372 = result;
      v373 = sub_1C6D795A0();
      v375 = v374;

      if (*(v371 + 16))
      {
        v376 = sub_1C6B5DEA8(v373, v375);
        v378 = v377;

        if (v378)
        {
          v264 = *(*(v371 + 56) + 8 * v376);

          goto LABEL_80;
        }
      }

      else
      {
      }

      v264 = MEMORY[0x1E69E7CC0];
LABEL_80:
      v244 = v921;
      swift_endAccess();
      v198 = v913;
      sub_1C6D5B364(v963, v913, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v200 = v975;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_81;
      }

      goto LABEL_436;
    }

LABEL_449:
    __break(1u);
LABEL_450:
    __break(1u);
LABEL_451:
    __break(1u);
LABEL_452:
    __break(1u);
LABEL_453:
    __break(1u);
LABEL_454:
    __break(1u);
    return result;
  }

  swift_endAccess();
  v834 = 0;
  v379 = v972;
  v244 = v921;
  while (1)
  {
    v264 = v986;
    swift_beginAccess();
    if (v264[2])
    {
      result = [v262 featureKey];
      if (!result)
      {
        goto LABEL_450;
      }

      v384 = result;
      v385 = sub_1C6D795A0();
      v198 = v386;

      v264 = v986 + 2;
      sub_1C6BC24C0(v387, v385, v198);
      v244 = v921;
    }

    swift_endAccess();
    v915 = *(v928 + 16);
    if (v915)
    {
      v262 = 0;
      v914 = (v928 + ((*(v982 + 80) + 32) & ~*(v982 + 80)));
      v962 = (v982 + 16);
      v882 = (v244 + 32);
      v913 = (v896 + 48);
      v912 = (v982 + 88);
      LODWORD(v911) = *MEMORY[0x1E69E36C0];
      LODWORD(v910) = *MEMORY[0x1E69E36A8];
      LODWORD(v909) = *MEMORY[0x1E69E36B0];
      LODWORD(v903) = *MEMORY[0x1E69E36B8];
      LODWORD(v897) = *MEMORY[0x1E69E36C8];
      v881 = (v982 + 96);
      while (v262 < *(v928 + 16))
      {
        v198 = *(v982 + 16);
        v393 = v977;
        (v198)(v977, &v914[*(v982 + 72) * v262], v988);
        v394 = sub_1C6D4F0A0(v393, v980, v979, v987);
        v395 = v940;
        sub_1C6D5B3CC(v963 + v920, v940, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
        v396 = v918;
        if ((v918)(v395, 1, v379) == 1)
        {
          v265 = v942;
          sub_1C6D78990();
          v397 = (v396)(v395, 1, v379);
          v244 = v985;
          v200 = v941;
          if (v397 != 1)
          {
            sub_1C6D5B4AC(v395, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
          }
        }

        else
        {
          v265 = v942;
          (*v882)(v942, v395, v379);
          v244 = v985;
          v200 = v941;
        }

        v264 = v265;
        sub_1C6D78970();
        v399 = v398;
        (v916)(v265, v379);
        v400 = v399 * 1000.0;
        if (COERCE__INT64(fabs(v399 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_410;
        }

        if (v400 <= -1.0)
        {
          goto LABEL_411;
        }

        if (v400 >= 1.84467441e19)
        {
          goto LABEL_412;
        }

        v973 = v394;
        [v394 setTimestamp_];
        v401 = [v927 aggregateModificationData];
        [v987 decayRate];
        Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v200);
        v402 = v964(v200, 1, v244);
        if (v402 == 1)
        {
          sub_1C6D5B4AC(v200, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v403 = 0;
          v404 = 0;
        }

        else
        {
          v405 = v200 + *(v244 + 20);
          v406 = v907;
          sub_1C6D5B3CC(v405, v907, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          if ((*v913)(v406, 1, v981) == 1)
          {
            sub_1C6D5B4AC(v406, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            sub_1C6D5B44C(v200, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v403 = 0;
            v404 = 1;
          }

          else
          {
            v407 = v894;
            sub_1C6D5B51C(v406, v894, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v408 = v407;
            v409 = v959;
            sub_1C6D5B51C(v408, v959, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v410 = v409;
            v411 = v960;
            sub_1C6D5B51C(v410, v960, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            v412 = *(v411 + *(v961 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
            swift_beginAccess();
            v403 = *v412;
            v404 = *(v412 + 8);
            v413 = v411;
            v379 = v972;
            sub_1C6D5B44C(v413, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            sub_1C6D5B44C(v200, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }
        }

        v1008 = v403;
        v1009 = v404;
        v1010 = v402 == 1;
        v414 = v938;
        Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v938);
        v415 = v985;
        v416 = v964(v414, 1, v985);
        if (v416 == 1)
        {
          sub_1C6D5B4AC(v414, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v417 = 0;
          v418 = 0;
        }

        else
        {
          v419 = v908;
          sub_1C6D5B3CC(v414 + *(v415 + 20), v908, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          if ((*v913)(v419, 1, v981) == 1)
          {
            sub_1C6D5B4AC(v419, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            sub_1C6D5B44C(v414, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v417 = 0;
            v418 = 1;
          }

          else
          {
            v420 = v895;
            sub_1C6D5B51C(v419, v895, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v421 = v420;
            v422 = v959;
            sub_1C6D5B51C(v421, v959, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v423 = v422;
            v424 = v960;
            sub_1C6D5B51C(v423, v960, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            v425 = *(v424 + *(v961 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
            swift_beginAccess();
            v417 = *v425;
            v418 = *(v425 + 8);
            v426 = v424;
            v379 = v972;
            sub_1C6D5B44C(v426, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            sub_1C6D5B44C(v414, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }
        }

        v1003 = v417;
        LOBYTE(v1004) = v418;
        BYTE1(v1004) = v416 == 1;
        sub_1C6CE69E0(v983, &v1008, &v1003);
        v427 = v939;
        v428 = v988;
        (v198)(v939, v977, v988);
        v429 = (*v912)(v427, v428);
        if (v429 == v911 || v429 == v910 || v429 == v909 || v429 == v903 || v429 != v897)
        {
          (v949)(v427, v988);
          v198 = 0;
          v265 = v971;
        }

        else
        {
          (*v881)(v427, v988);
          v430 = v427[1];
          v431 = v427[2];
          v432 = v427[3];

          v433 = v958;
          swift_beginAccess();
          v434 = *(v433 + 16);
          v435 = *(v434 + 16);

          if (v435 && (v436 = sub_1C6B5DEA8(v431, v432), (v437 & 1) != 0))
          {
            v198 = *(*(v434 + 56) + 8 * v436);
            v438 = v198;
          }

          else
          {
            v198 = 0;
          }

          v265 = v971;
          swift_endAccess();
          swift_bridgeObjectRelease_n();
        }

        v439 = v401;
        v440 = v401;
        v392 = v973;
        NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v439, v930, v198);

        v441 = v986;
        swift_beginAccess();
        v442 = v441[2];
        if (v442)
        {
          result = [v392 featureKey];
          if (!result)
          {
            goto LABEL_443;
          }

          v443 = result;
          v444 = sub_1C6D795A0();
          v446 = v445;

          if (*(v442 + 16))
          {
            v447 = sub_1C6B5DEA8(v444, v446);
            v449 = v448;

            v244 = MEMORY[0x1E69E7CC0];
            if (v449)
            {
              v244 = *(*(v442 + 56) + 8 * v447);
            }
          }

          else
          {

            v244 = MEMORY[0x1E69E7CC0];
          }

          swift_endAccess();
          sub_1C6D5B364(v963, v955, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v244 = sub_1C6B666CC(0, *(v244 + 16) + 1, 1, v244);
          }

          v392 = v973;
          v198 = *(v244 + 16);
          v450 = *(v244 + 24);
          if (v198 >= v450 >> 1)
          {
            v244 = sub_1C6B666CC(v450 > 1, v198 + 1, 1, v244);
          }

          *(v244 + 16) = v198 + 1;
          sub_1C6D5B51C(v955, v244 + ((*(v966 + 80) + 32) & ~*(v966 + 80)) + *(v966 + 72) * v198, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        }

        else
        {
          swift_endAccess();
          v244 = 0;
        }

        v264 = v986;
        swift_beginAccess();
        if (v264[2])
        {
          result = [v392 featureKey];
          if (!result)
          {
            goto LABEL_444;
          }

          v388 = result;
          v198 = sub_1C6D795A0();
          v390 = v389;

          v264 = v986 + 2;
          sub_1C6BC24C0(v391, v198, v390);
          v392 = v973;
        }

        ++v262;
        swift_endAccess();

        (v949)(v977, v988);

        v200 = v975;
        if (v915 == v262)
        {
          goto LABEL_135;
        }
      }

      __break(1u);
LABEL_410:
      __break(1u);
LABEL_411:
      __break(1u);
LABEL_412:
      __break(1u);
LABEL_413:
      __break(1u);
LABEL_414:
      __break(1u);
LABEL_415:
      __break(1u);
LABEL_416:
      __break(1u);
LABEL_417:
      __break(1u);
LABEL_418:
      __break(1u);
LABEL_419:
      __break(1u);
LABEL_420:
      __break(1u);
LABEL_421:
      __break(1u);
LABEL_422:
      __break(1u);
LABEL_423:
      __break(1u);
LABEL_424:
      __break(1u);
LABEL_425:
      __break(1u);
LABEL_426:
      __break(1u);
LABEL_427:
      __break(1u);
LABEL_428:
      __break(1u);
LABEL_429:
      __break(1u);
LABEL_430:
      __break(1u);
LABEL_431:
      __break(1u);
LABEL_432:
      __break(1u);
LABEL_433:
      __break(1u);
LABEL_434:
      __break(1u);
      goto LABEL_435;
    }

LABEL_135:

    sub_1C6D5B44C(v983, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6D5B44C(v963, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

LABEL_136:
    v244 = v951;
    v262 = v922;
LABEL_137:
    MEMORY[0x1EEE9AC00](v271);
    v451 = v956;
    *(&v833 - 2) = v244;
    *(&v833 - 1) = v451;
    v198 = v970;
    v452 = v901;
    sub_1C6D78C30();
    v916 = v452;
    v264 = v957;
    swift_beginAccess();
    v453 = v264[2];
    v267 = __OFADD__(v453, 1);
    v454 = v453 + 1;
    if (v267)
    {
      goto LABEL_422;
    }

    v264[2] = v454;
    v455 = v902;
    sub_1C6D5B3CC(v198, v902, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    if (v931(v455, 1, v943) == 1)
    {
      sub_1C6D5B44C(v198, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      v456 = sub_1C6D5B4AC(v455, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_140:
      v262 = v943;
      v265 = v933;
      v457 = v916;
      goto LABEL_273;
    }

    sub_1C6D5B51C(v455, v984, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v458 = v888;
    Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v888);
    v459 = *(v978 + 48);
    v983 = (v978 + 48);
    v977 = v459;
    v460 = v459(v458, 1, v985);
    sub_1C6D5B4AC(v458, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v461 = v972;
    v244 = v925;
    v198 = v889;
    if (v460 != 1)
    {
      v264 = v898;
      swift_beginAccess();
      v462 = v264[2];
      v267 = __OFADD__(v462, 1);
      v463 = v462 + 1;
      if (v267)
      {
        goto LABEL_425;
      }

      v264[2] = v463;
    }

    if (!v926)
    {
      goto LABEL_151;
    }

    if (v926 != 1)
    {
      goto LABEL_155;
    }

    v198 = v877;
    sub_1C6D43E04(1, v900, v877);
    v464 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    v465 = (*(*(v464 - 8) + 48))(v198, 2, v464);
    if (v465)
    {
      if (v465 == 1)
      {
        goto LABEL_155;
      }

      v466 = v880;
      swift_beginAccess();
      v467 = *(v466 + 16);
      v267 = __OFADD__(v467, 1);
      v468 = v467 + 1;
      if (!v267)
      {
        goto LABEL_154;
      }

      __break(1u);
LABEL_151:
      sub_1C6D43E04(0, v900, v198);
      v469 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
      v470 = (*(*(v469 - 8) + 48))(v198, 2, v469);
      if (v470)
      {
        if (v470 != 1)
        {
          v466 = v876;
          result = swift_beginAccess();
          v471 = *(v466 + 16);
          v267 = __OFADD__(v471, 1);
          v468 = v471 + 1;
          if (v267)
          {
            goto LABEL_440;
          }

LABEL_154:
          *(v466 + 16) = v468;
        }

LABEL_155:
        v472 = v984;
        if (!v244)
        {
          goto LABEL_157;
        }

LABEL_156:
        sub_1C6D4F618(v472);
        goto LABEL_157;
      }

      goto LABEL_172;
    }

    v497 = v879;
    swift_beginAccess();
    v498 = *(v497 + 16);
    v267 = __OFADD__(v498, 1);
    v499 = v498 + 1;
    if (!v267)
    {
      goto LABEL_173;
    }

    __break(1u);
LABEL_172:
    v497 = v878;
    result = swift_beginAccess();
    v500 = *(v497 + 16);
    v267 = __OFADD__(v500, 1);
    v499 = v500 + 1;
    if (v267)
    {
      goto LABEL_439;
    }

LABEL_173:
    *(v497 + 16) = v499;
    sub_1C6D5B44C(v198, _s23EmbeddingValidityResultOMa);
    v472 = v984;
    if (v244)
    {
      goto LABEL_156;
    }

LABEL_157:
    v473 = v929;
    swift_beginAccess();
    v474 = *(v473 + 16);
    v475 = v933;
    swift_beginAccess();
    v476 = *(v475 + 16);

    sub_1C6D4DB40(v472, v474, v476, v924, &v1003);

    if (!v1004)
    {
      v477 = [v987 aggregateModificationConfigurations];
      v1006 = 0;
      LOBYTE(v1007) = 1;
      v478 = sub_1C6C40FC8(v472, &v1006);

      v950 = v478;
      if (!v478)
      {
        if (qword_1EDCE9828 != -1)
        {
          swift_once();
        }

        sub_1C6D79AA0();
        sub_1C6B1D314();
        v492 = swift_allocObject();
        *(v492 + 16) = xmmword_1C6D7E630;
        v493 = v984;
        v494 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
        v496 = v495;
        *(v492 + 56) = MEMORY[0x1E69E6158];
        *(v492 + 64) = sub_1C6B2064C();
        *(v492 + 32) = v494;
        *(v492 + 40) = v496;
        sub_1C6D78D30();

        sub_1C6D5B44C(v493, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v456 = sub_1C6D5B44C(v970, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        v244 = v951;
        goto LABEL_140;
      }

      v479 = v873;
      sub_1C6D5B364(v472, v873, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1C6D5B44C(v479, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v480 = v864;
        sub_1C6D5B364(v472, v864, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v481 = v480;
          v482 = v857;
          sub_1C6D5B51C(v481, v857, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
          v483 = v933;
          swift_beginAccess();
          v262 = v874;
          if (!*(v483 + 16))
          {
            swift_endAccess();
            sub_1C6D5B44C(v482, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
            goto LABEL_191;
          }

          v484 = v482 + *(v858 + 20);
          v485 = v840;
          sub_1C6D5B3CC(v484, v840, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v486 = v985;
          v487 = v977;
          if (v977(v485, 1, v985) == 1)
          {
            v488 = v839;
            *v839 = 0;
            v488[1] = 0xE000000000000000;
            (*(v896 + 56))(v488 + *(v486 + 20), 1, 1, v981);
            v489 = v488 + *(v486 + 24);
            sub_1C6D78A30();
            v490 = v486;
            v491 = v488;
            if (v487(v485, 1, v490) != 1)
            {
              sub_1C6D5B4AC(v485, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            }
          }

          else
          {
            v491 = v839;
            sub_1C6D5B51C(v485, v839, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }

          v523 = *v491;
          v524 = v491[1];

          sub_1C6D5B44C(v491, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          sub_1C6B1E6A8(&v1000, v523, v524);
          swift_endAccess();
          v521 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
          v522 = v857;
LABEL_190:
          sub_1C6D5B44C(v522, v521);

LABEL_191:
          v525 = v980;
          v955 = sub_1C6CCEBD8(sub_1C6D5D45C, v980, v884);
          v526 = v885;
          sub_1C6D77030();
          v962 = sub_1C6D4F0A0(v526, v525, v979, v987);
          v527 = *(v982 + 8);
          v964 = (v982 + 8);
          v963 = v527;
          v527(v526, v988);
          v949 = *(v946 + 24);
          sub_1C6D5B3CC(&v970[v949], v262, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
          v528 = v952;
          v529 = (v952 + 48);
          v530 = *(v952 + 48);
          v531 = v530(v262, 1, v461);
          v942 = v529;
          v941 = v530;
          if (v531 == 1)
          {
            v264 = v872;
            sub_1C6D78990();
            v532 = v530(v262, 1, v461);
            v198 = v983;
            if (v532 != 1)
            {
              sub_1C6D5B4AC(v262, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
            }
          }

          else
          {
            v264 = v872;
            (*(v528 + 32))(v872, v262, v461);
            v198 = v983;
          }

          sub_1C6D78970();
          v534 = v533;
          v535 = *(v528 + 8);
          v244 = v528 + 8;
          v940 = v244;
          v939 = v535;
          (v535)(v264, v461);
          v536 = v534 * 1000.0;
          if (COERCE__INT64(fabs(v534 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_430;
          }

          v537 = v871;
          if (v536 <= -1.0)
          {
            goto LABEL_431;
          }

          if (v536 >= 1.84467441e19)
          {
            goto LABEL_432;
          }

          [v962 setTimestamp_];
          v538 = [v950 baselineModificationData];
          [v987 decayRate];
          Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v537);
          v539 = v985;
          v540 = v977(v537, 1, v985);
          if (v540 == 1)
          {
            sub_1C6D5B4AC(v537, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v541 = 0;
            v542 = 0;
          }

          else
          {
            v543 = v537 + *(v539 + 20);
            v544 = v854;
            sub_1C6D5B3CC(v543, v854, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            if ((*(v896 + 48))(v544, 1, v981) == 1)
            {
              sub_1C6D5B4AC(v544, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              sub_1C6D5B44C(v537, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v541 = 0;
              v542 = 1;
            }

            else
            {
              v545 = v544;
              v546 = v847;
              sub_1C6D5B51C(v545, v847, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              v547 = v546;
              v548 = v959;
              sub_1C6D5B51C(v547, v959, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              v262 = v960;
              sub_1C6D5B51C(v548, v960, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
              v549 = *(v262 + *(v961 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
              swift_beginAccess();
              v541 = *v549;
              v542 = *(v549 + 8);
              sub_1C6D5B44C(v262, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
              sub_1C6D5B44C(v537, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            }
          }

          v1006 = v541;
          LOBYTE(v1007) = v542;
          BYTE1(v1007) = v540 == 1;
          v550 = v870;
          Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v870);
          v551 = v985;
          v552 = v977(v550, 1, v985);
          if (v552 == 1)
          {
            sub_1C6D5B4AC(v550, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v553 = 0;
            v554 = 0;
          }

          else
          {
            v555 = v550 + *(v551 + 20);
            v556 = v855;
            sub_1C6D5B3CC(v555, v855, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            if ((*(v896 + 48))(v556, 1, v981) == 1)
            {
              sub_1C6D5B4AC(v556, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              sub_1C6D5B44C(v550, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v553 = 0;
              v554 = 1;
            }

            else
            {
              v557 = v556;
              v558 = v848;
              sub_1C6D5B51C(v557, v848, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              v559 = v558;
              v560 = v959;
              sub_1C6D5B51C(v559, v959, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              v262 = v960;
              sub_1C6D5B51C(v560, v960, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
              v561 = *(v262 + *(v961 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
              swift_beginAccess();
              v553 = *v561;
              v554 = *(v561 + 8);
              sub_1C6D5B44C(v262, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
              sub_1C6D5B44C(v550, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            }
          }

          v1000 = v553;
          v1001 = v554;
          v1002 = v552 == 1;
          sub_1C6CE69E0(v984, &v1006, &v1000);
          v562 = v962;
          NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v538, v962, 0);

          v563 = v986;
          swift_beginAccess();
          v564 = v563[2];
          if (!v564)
          {
            swift_endAccess();
            v912 = 0;
            v572 = v972;
            v198 = v948;
LABEL_221:
            v578 = v986;
            swift_beginAccess();
            if (v578[2])
            {
              result = [v962 featureKey];
              if (!result)
              {
                goto LABEL_452;
              }

              v579 = result;
              v580 = sub_1C6D795A0();
              v582 = v581;

              sub_1C6BC24C0(v583, v580, v582);
              v198 = v948;
            }

            swift_endAccess();
            v264 = v945;
            v938 = *(v955 + 2);
            if (v938)
            {
              v244 = 0;
              v930 = &v955[(*(v982 + 80) + 32) & ~*(v982 + 80)];
              v973 = (v982 + 16);
              v914 = (v921 + 32);
              v920 = v896 + 48;
              v928 = v982 + 88;
              LODWORD(v927) = *MEMORY[0x1E69E36C0];
              LODWORD(v919) = *MEMORY[0x1E69E36A8];
              LODWORD(v918) = *MEMORY[0x1E69E36B0];
              LODWORD(v917) = *MEMORY[0x1E69E36B8];
              LODWORD(v915) = *MEMORY[0x1E69E36C8];
              v913 = (v982 + 96);
              while (v244 < *(v955 + 2))
              {
                v584 = &v930[*(v982 + 72) * v244];
                v585 = v976;
                v965 = *(v982 + 16);
                v965(v976, v584, v988);
                v586 = sub_1C6D4F0A0(v585, v980, v979, v987);
                sub_1C6D5B3CC(&v970[v949], v264, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
                v262 = v942;
                v587 = v941;
                if ((v941)(v264, 1, v572) == 1)
                {
                  sub_1C6D78990();
                  v588 = v587(v264, 1, v572);
                  v200 = v937;
                  if (v588 != 1)
                  {
                    sub_1C6D5B4AC(v264, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
                  }
                }

                else
                {
                  (*v914)(v198, v264, v572);
                  v200 = v937;
                }

                v264 = v198;
                sub_1C6D78970();
                v590 = v589;
                (v939)(v198, v572);
                v591 = v590 * 1000.0;
                if (COERCE__INT64(fabs(v590 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_414;
                }

                if (v591 <= -1.0)
                {
                  goto LABEL_415;
                }

                if (v591 >= 1.84467441e19)
                {
                  goto LABEL_416;
                }

                [v586 setTimestamp_];
                v592 = [v950 aggregateModificationData];
                [v987 decayRate];
                Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v200);
                v593 = v985;
                v594 = v977(v200, 1, v985);
                if (v594 == 1)
                {
                  sub_1C6D5B4AC(v200, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  v595 = 0;
                  v596 = 0;
                }

                else
                {
                  sub_1C6D5B3CC(v200 + *(v593 + 20), v265, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  if ((*v920)(v265, 1, v981) == 1)
                  {
                    sub_1C6D5B4AC(v265, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                    sub_1C6D5B44C(v200, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                    v595 = 0;
                    v596 = 1;
                  }

                  else
                  {
                    v597 = v892;
                    sub_1C6D5B51C(v265, v892, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                    v598 = v597;
                    v599 = v959;
                    sub_1C6D5B51C(v598, v959, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                    v600 = v599;
                    v601 = v960;
                    sub_1C6D5B51C(v600, v960, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                    v602 = *(v601 + *(v961 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
                    swift_beginAccess();
                    v595 = *v602;
                    v596 = *(v602 + 8);
                    v603 = v601;
                    v572 = v972;
                    sub_1C6D5B44C(v603, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                    sub_1C6D5B44C(v200, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  }
                }

                v1006 = v595;
                LOBYTE(v1007) = v596;
                BYTE1(v1007) = v594 == 1;
                v604 = v936;
                Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v936);
                v605 = v985;
                v606 = v977(v604, 1, v985);
                if (v606 == 1)
                {
                  sub_1C6D5B4AC(v604, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  v607 = 0;
                  v608 = 0;
                }

                else
                {
                  v609 = v906;
                  sub_1C6D5B3CC(v604 + *(v605 + 20), v906, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  if ((*v920)(v609, 1, v981) == 1)
                  {
                    sub_1C6D5B4AC(v609, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                    sub_1C6D5B44C(v604, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                    v607 = 0;
                    v608 = 1;
                  }

                  else
                  {
                    v610 = v893;
                    sub_1C6D5B51C(v609, v893, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                    v611 = v610;
                    v612 = v959;
                    sub_1C6D5B51C(v611, v959, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                    v613 = v612;
                    v614 = v960;
                    sub_1C6D5B51C(v613, v960, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                    v615 = *(v614 + *(v961 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
                    swift_beginAccess();
                    v607 = *v615;
                    v608 = *(v615 + 8);
                    v616 = v614;
                    v572 = v972;
                    sub_1C6D5B44C(v616, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                    sub_1C6D5B44C(v604, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  }
                }

                v1000 = v607;
                v1001 = v608;
                v1002 = v606 == 1;
                sub_1C6CE69E0(v984, &v1006, &v1000);
                v262 = v968;
                v617 = v988;
                v965(v968, v976, v988);
                v618 = (*v928)(v262, v617);
                v619 = v586;
                if (v618 == v927 || v618 == v919 || v618 == v918 || v618 == v917 || v618 != v915)
                {
                  v963(v968, v988);
                  v628 = 0;
                  v265 = v971;
                }

                else
                {
                  v620 = v968;
                  (*v913)(v968, v988);
                  v621 = *(v620 + 1);
                  v622 = *(v620 + 2);
                  v262 = *(v620 + 3);

                  v623 = v958;
                  swift_beginAccess();
                  v624 = *(v623 + 16);
                  v625 = *(v624 + 16);

                  if (v625 && (v626 = sub_1C6B5DEA8(v622, v262), (v627 & 1) != 0))
                  {
                    v628 = *(*(v624 + 56) + 8 * v626);
                    v629 = v628;
                  }

                  else
                  {
                    v628 = 0;
                  }

                  v265 = v971;
                  swift_endAccess();
                  swift_bridgeObjectRelease_n();
                }

                NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v592, v962, v628);

                v630 = v986;
                swift_beginAccess();
                v631 = v630[2];
                if (v631)
                {
                  result = [v619 featureKey];
                  if (!result)
                  {
                    goto LABEL_445;
                  }

                  v632 = result;
                  v633 = sub_1C6D795A0();
                  v635 = v634;

                  if (*(v631 + 16))
                  {
                    v636 = sub_1C6B5DEA8(v633, v635);
                    v638 = v637;

                    v639 = MEMORY[0x1E69E7CC0];
                    if (v638)
                    {
                      v639 = *(*(v631 + 56) + 8 * v636);
                    }
                  }

                  else
                  {

                    v639 = MEMORY[0x1E69E7CC0];
                  }

                  swift_endAccess();
                  sub_1C6D5B364(v970, v954, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v639 = sub_1C6B666CC(0, v639[2] + 1, 1, v639);
                  }

                  v262 = v639[2];
                  v640 = v639[3];
                  if (v262 >= v640 >> 1)
                  {
                    v639 = sub_1C6B666CC(v640 > 1, v262 + 1, 1, v639);
                  }

                  v639[2] = v262 + 1;
                  sub_1C6D5B51C(v954, v639 + ((*(v966 + 80) + 32) & ~*(v966 + 80)) + *(v966 + 72) * v262, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
                }

                else
                {
                  swift_endAccess();
                }

                v641 = v986;
                swift_beginAccess();
                if (v641[2])
                {
                  result = [v619 featureKey];
                  if (!result)
                  {
                    goto LABEL_446;
                  }

                  v642 = result;
                  v262 = sub_1C6D795A0();
                  v644 = v643;

                  sub_1C6BC24C0(v645, v262, v644);
                }

                ++v244;
                swift_endAccess();

                v963(v976, v988);

                v200 = v975;
                v264 = v945;
                v198 = v948;
                if (v938 == v244)
                {
                  goto LABEL_271;
                }
              }

              goto LABEL_413;
            }

LABEL_271:

            sub_1C6D5B44C(v984, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
            sub_1C6D5B44C(v970, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

            goto LABEL_272;
          }

          result = [v562 featureKey];
          if (!result)
          {
            goto LABEL_451;
          }

          v565 = result;
          v262 = sub_1C6D795A0();
          v567 = v566;

          v568 = v970;
          if (*(v564 + 16))
          {
            v569 = sub_1C6B5DEA8(v262, v567);
            v262 = v570;

            if (v262)
            {
              v571 = *(*(v564 + 56) + 8 * v569);

LABEL_216:
              v573 = v863;
              swift_endAccess();
              sub_1C6D5B364(v568, v573, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
              v574 = swift_isUniquelyReferenced_nonNull_native();
              v198 = v948;
              if ((v574 & 1) == 0)
              {
                v571 = sub_1C6B666CC(0, v571[2] + 1, 1, v571);
              }

              v576 = v571[2];
              v575 = v571[3];
              v912 = v571;
              if (v576 >= v575 >> 1)
              {
                v912 = sub_1C6B666CC(v575 > 1, v576 + 1, 1, v912);
              }

              v577 = v912;
              v912[2] = v576 + 1;
              sub_1C6D5B51C(v573, v577 + ((*(v966 + 80) + 32) & ~*(v966 + 80)) + *(v966 + 72) * v576, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
              v572 = v972;
              goto LABEL_221;
            }
          }

          else
          {
          }

          v571 = MEMORY[0x1E69E7CC0];
          goto LABEL_216;
        }

        sub_1C6D5B44C(v480, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v502 = v850;
        sub_1C6D5B364(v472, v850, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v513 = v836;
          sub_1C6D5B51C(v502, v836, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
          v514 = *v513;
          v515 = v513[1];
          swift_beginAccess();
          sub_1C6D39EFC(v514, v515);
          swift_endAccess();

          v516 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
          v517 = v513;
LABEL_184:
          sub_1C6D5B44C(v517, v516);
          v262 = v874;
          goto LABEL_191;
        }

        v518 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
      }

      else
      {
        v501 = v479;
        v502 = v860;
        sub_1C6D5B51C(v501, v860, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        v503 = v929;
        swift_beginAccess();
        if (*(v503 + 16))
        {
          v504 = v502 + *(v865 + 20);
          v505 = v844;
          sub_1C6D5B3CC(v504, v844, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v506 = v985;
          v507 = v977;
          v508 = v977(v505, 1, v985);
          v262 = v874;
          if (v508 == 1)
          {
            v509 = v843;
            *v843 = 0;
            v509[1] = 0xE000000000000000;
            (*(v896 + 56))(v509 + *(v506 + 20), 1, 1, v981);
            v510 = v509 + *(v506 + 24);
            sub_1C6D78A30();
            v511 = v506;
            v512 = v509;
            if (v507(v505, 1, v511) != 1)
            {
              sub_1C6D5B4AC(v505, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            }
          }

          else
          {
            v512 = v843;
            sub_1C6D5B51C(v505, v843, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }

          v519 = *v512;
          v520 = v512[1];

          sub_1C6D5B44C(v512, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          sub_1C6B1E6A8(&v1000, v519, v520);
          swift_endAccess();
          v521 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
          v522 = v860;
          goto LABEL_190;
        }

        swift_endAccess();
        v518 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
      }

      v516 = v518;
      v517 = v502;
      goto LABEL_184;
    }

    sub_1C6D5B44C(v472, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v456 = sub_1C6D5B44C(v970, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
LABEL_272:
    v244 = v951;
    v457 = v916;
    v262 = v943;
    v265 = v933;
LABEL_273:
    MEMORY[0x1EEE9AC00](v456);
    v646 = v956;
    *(&v833 - 2) = v244;
    *(&v833 - 1) = v646;
    v244 = v969;
    sub_1C6D78C30();
    v198 = v457;
    v264 = v957;
    swift_beginAccess();
    v647 = v264[2];
    v267 = __OFADD__(v647, 1);
    v648 = v647 + 1;
    if (v267)
    {
      goto LABEL_423;
    }

    v264[2] = v648;
    v649 = v899;
    sub_1C6D5B3CC(v244, v899, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    if (v931(v649, 1, v262) == 1)
    {
      sub_1C6D5B44C(v244, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      sub_1C6D5B4AC(v649, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      return sub_1C6D5B44C(v956, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }

    sub_1C6D5B51C(v649, v200, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v650 = v886;
    Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v886);
    v651 = *(v978 + 48);
    v978 += 48;
    v984 = v651;
    v652 = (v651)(v650, 1, v985);
    sub_1C6D5B4AC(v650, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v653 = v972;
    v244 = v887;
    if (v652 != 1)
    {
      v264 = v898;
      swift_beginAccess();
      v654 = v264[2];
      v267 = __OFADD__(v654, 1);
      v655 = v654 + 1;
      if (v267)
      {
        goto LABEL_426;
      }

      v264[2] = v655;
    }

    if (!v926)
    {
      goto LABEL_286;
    }

    if (v926 != 1)
    {
      goto LABEL_295;
    }

    v244 = v875;
    sub_1C6D43E04(1, v900, v875);
    v656 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    v657 = (*(*(v656 - 8) + 48))(v244, 2, v656);
    if (v657)
    {
      if (v657 == 1)
      {
        goto LABEL_295;
      }

      v658 = v880;
      swift_beginAccess();
      v659 = *(v658 + 16);
      v267 = __OFADD__(v659, 1);
      v660 = v659 + 1;
      if (!v267)
      {
        goto LABEL_289;
      }

      __break(1u);
LABEL_286:
      sub_1C6D43E04(0, v900, v244);
      v661 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
      v662 = (*(*(v661 - 8) + 48))(v244, 2, v661);
      if (v662)
      {
        if (v662 == 1)
        {
          goto LABEL_295;
        }

        v658 = v876;
        result = swift_beginAccess();
        v663 = *(v658 + 16);
        v267 = __OFADD__(v663, 1);
        v660 = v663 + 1;
        if (v267)
        {
          goto LABEL_442;
        }

LABEL_289:
        *(v658 + 16) = v660;
        goto LABEL_295;
      }

LABEL_293:
      v664 = v878;
      result = swift_beginAccess();
      v667 = *(v664 + 16);
      v267 = __OFADD__(v667, 1);
      v666 = v667 + 1;
      if (v267)
      {
        goto LABEL_441;
      }

      goto LABEL_294;
    }

    v664 = v879;
    swift_beginAccess();
    v665 = *(v664 + 16);
    v267 = __OFADD__(v665, 1);
    v666 = v665 + 1;
    if (v267)
    {
      __break(1u);
      goto LABEL_293;
    }

LABEL_294:
    *(v664 + 16) = v666;
    sub_1C6D5B44C(v244, _s23EmbeddingValidityResultOMa);
LABEL_295:
    v941 = v457;
    if (v925)
    {
      sub_1C6D4F618(v200);
    }

    v668 = v929;
    swift_beginAccess();
    v669 = *(v668 + 16);
    swift_beginAccess();
    v670 = *(v265 + 16);

    sub_1C6D4DB40(v200, v669, v670, v924, v1005);

    if (v1005[1])
    {
      goto LABEL_298;
    }

    v671 = [v987 aggregateModificationConfigurations];
    v997 = 0;
    v998 = 1;
    v672 = sub_1C6C40FC8(v200, &v997);

    v965 = v672;
    if (!v672)
    {
      if (qword_1EDCE9828 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1D314();
      v683 = swift_allocObject();
      *(v683 + 16) = xmmword_1C6D7E630;
      v684 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
      v686 = v685;
      *(v683 + 56) = MEMORY[0x1E69E6158];
      *(v683 + 64) = sub_1C6B2064C();
      *(v683 + 32) = v684;
      *(v683 + 40) = v686;
      sub_1C6D78D30();
LABEL_298:

      sub_1C6D5B44C(v200, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      sub_1C6D5B44C(v969, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      return sub_1C6D5B44C(v956, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }

    v673 = v868;
    sub_1C6D5B364(v200, v868, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C6D5B44C(v673, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v674 = v862;
      sub_1C6D5B364(v200, v862, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v675 = swift_getEnumCaseMultiPayload();
      v198 = v883;
      if (v675 == 1)
      {
        v676 = v674;
        v677 = v856;
        sub_1C6D5B51C(v676, v856, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
        swift_beginAccess();
        if (*(v265 + 16))
        {
          v678 = v837;
          sub_1C6D5B3CC(v677 + *(v858 + 20), v837, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v679 = v985;
          v680 = v984;
          if ((v984)(v678, 1, v985) == 1)
          {
            v681 = v838;
            *v838 = 0;
            v681[1] = 0xE000000000000000;
            (*(v896 + 56))(v681 + *(v679 + 20), 1, 1, v981);
            v682 = v681 + *(v679 + 24);
            sub_1C6D78A30();
            if (v680(v678, 1, v679) != 1)
            {
              sub_1C6D5B4AC(v678, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            }
          }

          else
          {
            v681 = v838;
            sub_1C6D5B51C(v678, v838, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }

          v702 = *v681;
          v703 = v681[1];

          sub_1C6D5B44C(v681, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          sub_1C6B1E6A8(&v991, v702, v703);
          swift_endAccess();
          sub_1C6D5B44C(v856, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);

          v198 = v883;
          goto LABEL_324;
        }

        swift_endAccess();
        v699 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
      }

      else
      {
        sub_1C6D5B44C(v674, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v677 = v849;
        sub_1C6D5B364(v200, v849, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v693 = v835;
          sub_1C6D5B51C(v677, v835, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
          v694 = *v693;
          v695 = v693[1];
          swift_beginAccess();
          v696 = v695;
          v198 = v883;
          sub_1C6D39EFC(v694, v696);
          swift_endAccess();

          v697 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
          v698 = v693;
LABEL_319:
          sub_1C6D5B44C(v698, v697);
LABEL_324:
          v265 = v985;
          goto LABEL_325;
        }

        v699 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
      }

LABEL_318:
      v697 = v699;
      v698 = v677;
      goto LABEL_319;
    }

    v687 = v673;
    v677 = v859;
    sub_1C6D5B51C(v687, v859, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    v688 = v929;
    swift_beginAccess();
    v198 = v883;
    if (!*(v688 + 16))
    {
      swift_endAccess();
      v699 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
      goto LABEL_318;
    }

    v689 = v842;
    sub_1C6D5B3CC(v677 + *(v865 + 20), v842, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v265 = v985;
    v690 = v984;
    if ((v984)(v689, 1, v985) == 1)
    {
      v691 = v841;
      *v841 = 0;
      v691[1] = 0xE000000000000000;
      (*(v896 + 56))(v691 + *(v265 + 20), 1, 1, v981);
      v692 = v691 + *(v265 + 24);
      sub_1C6D78A30();
      if (v690(v689, 1, v265) != 1)
      {
        sub_1C6D5B4AC(v689, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v691 = v841;
      sub_1C6D5B51C(v689, v841, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }

    v700 = *v691;
    v701 = v691[1];

    sub_1C6D5B44C(v691, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B1E6A8(&v991, v700, v701);
    swift_endAccess();
    sub_1C6D5B44C(v859, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);

    v198 = v883;
LABEL_325:
    v704 = v980;
    v968 = sub_1C6CCEBD8(sub_1C6D5D45C, v980, v884);
    v705 = v885;
    sub_1C6D77030();
    v970 = sub_1C6D4F0A0(v705, v704, v979, v987);
    v706 = *(v982 + 8);
    v973 = (v982 + 8);
    v971 = v706;
    v706(v705, v988);
    v964 = *(v946 + 24);
    v707 = v869;
    sub_1C6D5B3CC(v964 + v969, v869, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    v708 = v952;
    v262 = v952 + 48;
    v709 = *(v952 + 48);
    v710 = v709(v707, 1, v653);
    v963 = v709;
    if (v710 == 1)
    {
      sub_1C6D78990();
      if (v709(v707, 1, v653) != 1)
      {
        sub_1C6D5B4AC(v707, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      }
    }

    else
    {
      (*(v708 + 32))(v198, v707, v653);
    }

    v264 = v198;
    sub_1C6D78970();
    v712 = v711;
    v713 = *(v708 + 8);
    v244 = v708 + 8;
    v962 = v713;
    (v713)(v198, v653);
    v714 = v712 * 1000.0;
    if (COERCE__INT64(fabs(v712 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_433;
    }

    v715 = v867;
    if (v714 <= -1.0)
    {
      goto LABEL_434;
    }

    v952 = v244;
    if (v714 < 1.84467441e19)
    {
      break;
    }

LABEL_435:
    __break(1u);
LABEL_436:
    v264 = sub_1C6B666CC(0, v264[2] + 1, 1, v264);
LABEL_81:
    v382 = v264[2];
    v381 = v264[3];
    v834 = v264;
    if (v382 >= v381 >> 1)
    {
      v834 = sub_1C6B666CC(v381 > 1, v382 + 1, 1, v834);
    }

    v383 = v834;
    v834[2] = v382 + 1;
    sub_1C6D5B51C(v198, v383 + ((*(v966 + 80) + 32) & ~*(v966 + 80)) + *(v966 + 72) * v382, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v379 = v972;
  }

  [v970 setTimestamp_];
  v716 = [v965 baselineModificationData];
  [v987 decayRate];
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v715);
  v717 = (v984)(v715, 1, v265);
  v976 = v262;
  if (v717 == 1)
  {
    sub_1C6D5B4AC(v715, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v718 = 0;
    v719 = 0;
  }

  else
  {
    v720 = v852;
    sub_1C6D5B3CC(v715 + *(v265 + 20), v852, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v896 + 48))(v720, 1, v981) == 1)
    {
      sub_1C6D5B4AC(v720, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v715, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v718 = 0;
      v719 = 1;
    }

    else
    {
      v721 = v720;
      v722 = v845;
      sub_1C6D5B51C(v721, v845, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v723 = v722;
      v724 = v959;
      sub_1C6D5B51C(v723, v959, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v725 = v960;
      sub_1C6D5B51C(v724, v960, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v726 = *(v725 + *(v961 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
      swift_beginAccess();
      v718 = *v726;
      v719 = *(v726 + 8);
      v727 = v725;
      v262 = v976;
      sub_1C6D5B44C(v727, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      sub_1C6D5B44C(v715, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  v997 = v718;
  v998 = v719;
  v999 = v717 == 1;
  v728 = v866;
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v866);
  v729 = (v984)(v728, 1, v265);
  if (v729 == 1)
  {
    sub_1C6D5B4AC(v728, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v730 = 0;
    v731 = 0;
  }

  else
  {
    v732 = v853;
    sub_1C6D5B3CC(v728 + *(v265 + 20), v853, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v896 + 48))(v732, 1, v981) == 1)
    {
      sub_1C6D5B4AC(v732, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v728, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v730 = 0;
      v731 = 1;
    }

    else
    {
      v733 = v728;
      v734 = v732;
      v735 = v846;
      sub_1C6D5B51C(v734, v846, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v736 = v735;
      v737 = v959;
      sub_1C6D5B51C(v736, v959, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v738 = v960;
      sub_1C6D5B51C(v737, v960, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v739 = *(v738 + *(v961 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
      swift_beginAccess();
      v730 = *v739;
      v731 = *(v739 + 8);
      v740 = v738;
      v262 = v976;
      sub_1C6D5B44C(v740, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      sub_1C6D5B44C(v733, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  v991 = v730;
  v992 = v731;
  v993 = v729 == 1;
  sub_1C6CE69E0(v200, &v997, &v991);
  v741 = v970;
  NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v716, v970, 0);

  v742 = v986;
  swift_beginAccess();
  v743 = v742[2];
  if (v743)
  {
    result = [v741 featureKey];
    if (!result)
    {
      goto LABEL_453;
    }

    v744 = result;
    v745 = sub_1C6D795A0();
    v747 = v746;

    v748 = v969;
    if (*(v743 + 16))
    {
      v749 = sub_1C6B5DEA8(v745, v747);
      v751 = v750;

      if (v751)
      {
        v752 = *(*(v743 + 56) + 8 * v749);

        goto LABEL_350;
      }
    }

    else
    {
    }

    v752 = MEMORY[0x1E69E7CC0];
LABEL_350:
    v244 = v921;
    swift_endAccess();
    v753 = v861;
    sub_1C6D5B364(v748, v861, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v754 = swift_isUniquelyReferenced_nonNull_native();
    v198 = v947;
    if ((v754 & 1) == 0)
    {
      v752 = sub_1C6B666CC(0, v752[2] + 1, 1, v752);
    }

    v756 = v752[2];
    v755 = v752[3];
    v940 = v752;
    if (v756 >= v755 >> 1)
    {
      v940 = sub_1C6B666CC(v755 > 1, v756 + 1, 1, v940);
    }

    v757 = v940;
    v940[2] = v756 + 1;
    sub_1C6D5B51C(v753, v757 + ((*(v966 + 80) + 32) & ~*(v966 + 80)) + *(v966 + 72) * v756, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v262 = v976;
  }

  else
  {
    swift_endAccess();
    v940 = 0;
    v198 = v947;
    v244 = v921;
  }

  v758 = v986;
  swift_beginAccess();
  if (v758[2])
  {
    result = [v741 featureKey];
    if (!result)
    {
      goto LABEL_454;
    }

    v759 = result;
    v760 = sub_1C6D795A0();
    v762 = v761;

    sub_1C6BC24C0(v763, v760, v762);
    v198 = v947;
    v244 = v921;
  }

  swift_endAccess();
  v264 = v944;
  v957 = *(v968 + 2);
  if (v957)
  {
    v265 = 0;
    v955 = &v968[(*(v982 + 80) + 32) & ~*(v982 + 80)];
    v983 = (v982 + 16);
    v943 = (v244 + 32);
    v954 = (v896 + 48);
    v951 = (v982 + 88);
    LODWORD(v950) = *MEMORY[0x1E69E36C0];
    LODWORD(v949) = *MEMORY[0x1E69E36A8];
    LODWORD(v948) = *MEMORY[0x1E69E36B0];
    LODWORD(v946) = *MEMORY[0x1E69E36B8];
    LODWORD(v945) = *MEMORY[0x1E69E36C8];
    v942 = (v982 + 96);
    while (v265 < *(v968 + 2))
    {
      v764 = v200;
      v765 = &v955[*(v982 + 72) * v265];
      v766 = v974;
      v977 = *(v982 + 16);
      v977(v974, v765, v988);
      v767 = sub_1C6D4F0A0(v766, v980, v979, v987);
      sub_1C6D5B3CC(v964 + v969, v264, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v244 = v972;
      v200 = v963;
      if ((v963)(v264, 1, v972) == 1)
      {
        sub_1C6D78990();
        if ((v200)(v264, 1, v244) != 1)
        {
          sub_1C6D5B4AC(v264, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
        }
      }

      else
      {
        (*v943)(v198, v264, v244);
      }

      v264 = v198;
      sub_1C6D78970();
      v769 = v768;
      (v962)(v198, v244);
      v770 = v769 * 1000.0;
      if (COERCE__INT64(fabs(v769 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_418;
      }

      if (v770 <= -1.0)
      {
        goto LABEL_419;
      }

      if (v770 >= 1.84467441e19)
      {
        goto LABEL_420;
      }

      v200 = v764;
      v771 = v767;
      [v767 setTimestamp_];
      v772 = [v965 aggregateModificationData];
      [v987 decayRate];
      v773 = v934;
      Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v934);
      v774 = v985;
      v775 = (v984)(v773, 1, v985);
      if (v775 == 1)
      {
        sub_1C6D5B4AC(v773, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v776 = 0;
        v777 = 0;
      }

      else
      {
        v778 = v773 + *(v774 + 20);
        v779 = v904;
        sub_1C6D5B3CC(v778, v904, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        if ((*v954)(v779, 1, v981) == 1)
        {
          sub_1C6D5B4AC(v779, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          sub_1C6D5B44C(v773, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v776 = 0;
          v777 = 1;
        }

        else
        {
          v780 = v890;
          sub_1C6D5B51C(v779, v890, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v781 = v780;
          v782 = v959;
          sub_1C6D5B51C(v781, v959, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v783 = v782;
          v784 = v960;
          sub_1C6D5B51C(v783, v960, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v785 = *(v784 + *(v961 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
          swift_beginAccess();
          v786 = v773;
          v776 = *v785;
          v777 = *(v785 + 8);
          sub_1C6D5B44C(v784, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v787 = v786;
          v200 = v975;
          sub_1C6D5B44C(v787, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }

        v771 = v767;
      }

      v997 = v776;
      v998 = v777;
      v999 = v775 == 1;
      v788 = v935;
      Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v935);
      v789 = v985;
      v790 = (v984)(v788, 1, v985);
      if (v790 == 1)
      {
        sub_1C6D5B4AC(v788, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v791 = 0;
        v792 = 0;
      }

      else
      {
        v793 = v905;
        sub_1C6D5B3CC(v788 + *(v789 + 20), v905, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        if ((*v954)(v793, 1, v981) == 1)
        {
          sub_1C6D5B4AC(v793, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          sub_1C6D5B44C(v788, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v791 = 0;
          v792 = 1;
        }

        else
        {
          v794 = v793;
          v795 = v891;
          sub_1C6D5B51C(v794, v891, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v796 = v795;
          v797 = v959;
          sub_1C6D5B51C(v796, v959, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v798 = v797;
          v799 = v960;
          sub_1C6D5B51C(v798, v960, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v800 = *(v799 + *(v961 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
          swift_beginAccess();
          v801 = v788;
          v791 = *v800;
          v792 = *(v800 + 8);
          sub_1C6D5B44C(v799, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v802 = v801;
          v200 = v975;
          sub_1C6D5B44C(v802, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }

        v771 = v767;
      }

      v994 = v791;
      v995 = v792;
      v996 = v790 == 1;
      sub_1C6CE69E0(v200, &v997, &v994);
      v244 = v967;
      v803 = v988;
      v977(v967, v974, v988);
      v804 = (*v951)(v244, v803);
      if (v804 == v950 || v804 == v949 || v804 == v948 || v804 == v946 || v804 != v945)
      {
        v971(v967, v988);
        v814 = 0;
      }

      else
      {
        v805 = v967;
        (*v942)(v967, v988);
        v806 = *(v805 + 1);
        v807 = *(v805 + 2);
        v808 = *(v805 + 3);

        v809 = v958;
        swift_beginAccess();
        v810 = *(v809 + 16);
        v811 = *(v810 + 16);

        if (v811 && (v812 = sub_1C6B5DEA8(v807, v808), (v813 & 1) != 0))
        {
          v814 = *(*(v810 + 56) + 8 * v812);
          v815 = v814;
        }

        else
        {
          v814 = 0;
        }

        swift_endAccess();
        swift_bridgeObjectRelease_n();
      }

      NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v772, v970, v814);

      v816 = v986;
      swift_beginAccess();
      v817 = v816[2];
      if (v817)
      {
        result = [v771 featureKey];
        if (!result)
        {
          goto LABEL_447;
        }

        v818 = result;
        v819 = sub_1C6D795A0();
        v821 = v820;

        if (*(v817 + 16))
        {
          v822 = sub_1C6B5DEA8(v819, v821);
          v824 = v823;

          v825 = MEMORY[0x1E69E7CC0];
          if (v824)
          {
            v825 = *(*(v817 + 56) + 8 * v822);
          }
        }

        else
        {

          v825 = MEMORY[0x1E69E7CC0];
        }

        swift_endAccess();
        sub_1C6D5B364(v969, v953, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v825 = sub_1C6B666CC(0, v825[2] + 1, 1, v825);
        }

        v262 = v976;
        v244 = v825[2];
        v826 = v825[3];
        if (v244 >= v826 >> 1)
        {
          v825 = sub_1C6B666CC(v826 > 1, v244 + 1, 1, v825);
        }

        v825[2] = v244 + 1;
        sub_1C6D5B51C(v953, v825 + ((*(v966 + 80) + 32) & ~*(v966 + 80)) + *(v966 + 72) * v244, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      }

      else
      {
        swift_endAccess();
        v262 = v976;
      }

      v827 = v986;
      swift_beginAccess();
      if (v827[2])
      {
        result = [v771 featureKey];
        if (!result)
        {
          goto LABEL_448;
        }

        v828 = result;
        v829 = sub_1C6D795A0();
        v831 = v830;

        sub_1C6BC24C0(v832, v829, v831);
        v262 = v976;
      }

      ++v265;
      swift_endAccess();

      v971(v974, v988);

      v264 = v944;
      v198 = v947;
      if (v957 == v265)
      {
        goto LABEL_407;
      }
    }

    goto LABEL_417;
  }

LABEL_407:

  sub_1C6D5B44C(v200, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6D5B44C(v969, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

  return sub_1C6D5B44C(v956, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t sub_1C6D566D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12[-v8];
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v13 = a2;
  v14 = a3;
  sub_1C6D5B1C4(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  sub_1C6D78C30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_1C6D5D000(v9, a1, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_1C6D5687C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12[-v8];
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v13 = a2;
  v14 = a3;
  sub_1C6D5B1C4(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  sub_1C6D78C30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_1C6D5D000(v9, a1, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_1C6D56A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v22 = a3;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D78A00();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12);
  v17 = a4(0);
  v18 = *(v17 + 24);
  sub_1C6D5B4AC(a1 + v18, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v13 + 32))(a1 + v18, v16, v12);
  (*(v13 + 56))(a1 + v18, 0, 1, v12);
  sub_1C6D5B364(v22, v11, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v19 = *(v17 + 20);
  sub_1C6D5B4AC(a1 + v19, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D5B51C(v11, a1 + v19, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return (*(v8 + 56))(a1 + v19, 0, 1, v7);
}

uint64_t sub_1C6D56C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12[-v8];
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v13 = a2;
  v14 = a3;
  sub_1C6D5B1C4(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
  sub_1C6D78C30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_1C6D5D000(v9, a1, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_1C6D56E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v16 = *(v15 + 28);
  sub_1C6D5B4AC(a1 + v16, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v11 + 32))(a1 + v16, v14, v10);
  (*(v11 + 56))(a1 + v16, 0, 1, v10);
  sub_1C6D5B364(v20, v9, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v17 = *(v15 + 24);
  sub_1C6D5B4AC(a1 + v17, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D5B51C(v9, a1 + v17, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return (*(v6 + 56))(a1 + v17, 0, 1, v5);
}

id sub_1C6D5709C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, int *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23)
{
  v387 = a8;
  v402 = a7;
  v407 = a6;
  v400 = a5;
  v421 = a4;
  v428 = a1;
  v24 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v369 = (&v367 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v432 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v27 = *(*(v432 - 8) + 64);
  MEMORY[0x1EEE9AC00](v432);
  v431 = &v367 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1E69E6720];
  sub_1C6B1839C(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v426 = &v367 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v425 = &v367 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v383 = &v367 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v367 - v38;
  v456 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v476 = *(v456 - 8);
  v40 = *(v476 + 64);
  v41 = MEMORY[0x1EEE9AC00](v456);
  v412 = &v367 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v411 = &v367 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v375 = &v367 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v430 = &v367 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v374 = &v367 - v49;
  v50 = sub_1C6D77050();
  v451 = *(v50 - 8);
  v51 = *(v451 + 64);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v478 = &v367 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v464 = &v367 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v392 = &v367 - v56;
  v57 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v479 = *(v57 - 1);
  v58 = v479[8];
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = (&v367 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v59);
  v63 = (&v367 - v62);
  v371 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v64 = *(*(v371 - 8) + 64);
  MEMORY[0x1EEE9AC00](v371);
  v391 = &v367 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v66 = *(*(v373 - 8) + 64);
  MEMORY[0x1EEE9AC00](v373);
  v381 = &v367 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = _s23EmbeddingValidityResultOMa(0);
  v69 = *(*(v68 - 8) + 64);
  v70 = MEMORY[0x1EEE9AC00](v68 - 8);
  v399 = &v367 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v398 = &v367 - v72;
  sub_1C6B1839C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v29);
  v74 = *(*(v73 - 8) + 64);
  v75 = MEMORY[0x1EEE9AC00](v73 - 8);
  v395 = &v367 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v444 = &v367 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v443 = &v367 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v389 = (&v367 - v82);
  v83 = MEMORY[0x1EEE9AC00](v81);
  v394 = &v367 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v379 = &v367 - v86;
  MEMORY[0x1EEE9AC00](v85);
  v408 = (&v367 - v87);
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v29);
  v89 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88 - 8);
  v419 = &v367 - v90;
  v472 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v475 = *(v472 - 8);
  v91 = *(v475 + 8);
  v92 = MEMORY[0x1EEE9AC00](v472);
  v380 = &v367 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x1EEE9AC00](v92);
  v477 = &v367 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v384 = &v367 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v397 = &v367 - v99;
  MEMORY[0x1EEE9AC00](v98);
  v480 = &v367 - v100;
  v390 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v420 = *(v390 - 8);
  v101 = *(v420 + 64);
  v102 = MEMORY[0x1EEE9AC00](v390);
  v462 = &v367 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = MEMORY[0x1EEE9AC00](v102);
  v396 = &v367 - v105;
  MEMORY[0x1EEE9AC00](v104);
  v474 = (&v367 - v106);
  sub_1C6B1839C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v29);
  v108 = *(*(v107 - 8) + 64);
  v109 = MEMORY[0x1EEE9AC00](v107 - 8);
  v463 = &v367 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = MEMORY[0x1EEE9AC00](v109);
  v393 = &v367 - v112;
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v367 - v113;
  v460 = sub_1C6D789A0();
  v115 = *(v460 - 8);
  v116 = *(v115 + 64);
  v117 = MEMORY[0x1EEE9AC00](v460);
  v442 = &v367 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x1EEE9AC00](v117);
  v403 = &v367 - v120;
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v367 - v121;
  swift_beginAccess();
  v123 = *(a3 + 16);
  v124 = __OFADD__(v123, 1);
  v125 = v123 + 1;
  if (v124)
  {
    goto LABEL_194;
  }

  v372 = v63;
  v370 = v61;
  v465 = v50;
  v382 = v39;
  v473 = v115;
  *(a3 + 16) = v125;
  if (qword_1EDCE7498 != -1)
  {
    goto LABEL_195;
  }

LABEL_3:
  v467 = v57;
  v424 = qword_1EDCE74A0;
  LODWORD(v482) = sub_1C6D79A90();
  sub_1C6B1D314();
  v427 = v126;
  v127 = swift_allocObject();
  v409 = xmmword_1C6D807C0;
  *(v127 + 16) = xmmword_1C6D807C0;
  v128 = v428;
  v130 = *v428;
  v129 = v428[1];
  *(v127 + 56) = MEMORY[0x1E69E6158];
  v433 = sub_1C6B2064C();
  *(v127 + 64) = v433;
  *(v127 + 32) = v130;
  *(v127 + 40) = v129;
  v488 = 0;
  v489 = 0xE000000000000000;
  v131 = type metadata accessor for Com_Apple_News_Personalization_Session();
  sub_1C6D5B3CC(v128 + *(v131 + 36), v114, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v132 = *(v115 + 48);
  v133 = v460;
  v134 = v132(v114, 1, v460);
  v454 = v115 + 48;
  v453 = v132;
  if (v134 == 1)
  {

    sub_1C6D78990();
    if (v132(v114, 1, v133) != 1)
    {
      sub_1C6D5B4AC(v114, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v115 + 32))(v122, v114, v133);
  }

  sub_1C6D79E60();
  v135 = *(v115 + 8);
  v455 = v115 + 8;
  v452 = v135;
  v135(v122, v133);
  v136 = v488;
  v137 = v489;
  v138 = MEMORY[0x1E69E6158];
  v139 = v433;
  *(v127 + 96) = MEMORY[0x1E69E6158];
  *(v127 + 104) = v139;
  *(v127 + 72) = v136;
  *(v127 + 80) = v137;
  v140 = v428[2];
  v488 = *(v140 + 16);
  v141 = sub_1C6D7A0E0();
  *(v127 + 136) = v138;
  *(v127 + 144) = v139;
  *(v127 + 112) = v141;
  *(v127 + 120) = v142;
  sub_1C6D78D30();

  v418 = *(v140 + 16);
  if (!v418)
  {
    return result;
  }

  v388 = a20;
  v450 = a19;
  v423 = a23;
  v449 = a21;
  v144 = a22;
  v481 = a17;
  v367 = a18;
  v406 = a16;
  v57 = a15;
  v405 = a13;
  v115 = a14;
  v415 = a12;
  v114 = a11;
  v434 = (*(v420 + 80) + 32) & ~*(v420 + 80);
  v417 = v140 + v434;
  v145 = v464;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v376 = a9;
  v122 = v145;
  v146 = v474;
  swift_beginAccess();
  v413 = a14;
  swift_beginAccess();
  v410 = a15;
  swift_beginAccess();
  v377 = a10;
  swift_beginAccess();
  v378 = a11;
  swift_beginAccess();
  v147 = 0;
  v416 = (v475 + 12);
  v479 += 6;
  v368 = (v476 + 56);
  v471 = (v451 + 8);
  v429 = (v473 + 32);
  v448 = (v476 + 48);
  v476 = v451 + 16;
  v385 = 0x80000001C6D9E000;
  v386 = 0x80000001C6D9E040;
  v441 = (v451 + 88);
  v440 = *MEMORY[0x1E69E36C0];
  v439 = *MEMORY[0x1E69E36A8];
  v438 = *MEMORY[0x1E69E36B0];
  v436 = *MEMORY[0x1E69E36B8];
  v435 = *MEMORY[0x1E69E36C8];
  v422 = (v451 + 96);
  v414 = xmmword_1C6D7E630;
  v404 = v140;
  v461 = a22;
  while (1)
  {
    if (v147 >= *(v140 + 16))
    {
      goto LABEL_187;
    }

    v149 = *(v420 + 72);
    v437 = v147;
    v457 = v149;
    sub_1C6D5B364(v417 + v149 * v147, v146, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v150 = *(v421 + 16);
    v124 = __OFADD__(v150, 1);
    v151 = v150 + 1;
    if (v124)
    {
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      swift_once();
      goto LABEL_3;
    }

    v114 = v428[5];
    v152 = *(v428 + 48);
    *(v421 + 16) = v151;
    v153 = v146;
    v57 = v146;
    v154 = v419;
    v115 = qword_1EDCE5660;
    sub_1C6D5B3CC(v153, v419, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    if ((*v416)(v154, 1, v472) != 1)
    {
      break;
    }

    sub_1C6D5B44C(v57, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    result = sub_1C6D5B4AC(v154, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v148 = v437;
    v146 = v57;
LABEL_10:
    v147 = v148 + 1;
    if (v147 == v418)
    {
      return result;
    }
  }

  sub_1C6D5B51C(v154, v480, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v155 = v408;
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v408);
  v57 = v467;
  v473 = *v479;
  v156 = (v473)(v155, 1, v467);
  sub_1C6D5B4AC(v155, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v157 = v156 == 1;
  v158 = v415;
  if (!v157)
  {
    v159 = *(v400 + 16);
    v124 = __OFADD__(v159, 1);
    v160 = v159 + 1;
    if (v124)
    {
      goto LABEL_189;
    }

    *(v400 + 16) = v160;
  }

  if (!v407)
  {
    v166 = v399;
    sub_1C6D43E04(0, v402, v399);
    v167 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    result = (*(*(v167 - 8) + 48))(v166, 2, v167);
    if (!result)
    {
      v192 = *(v377 + 16);
      v124 = __OFADD__(v192, 1);
      v193 = v192 + 1;
      v194 = v415;
      if (v124)
      {
        goto LABEL_199;
      }

      *(v377 + 16) = v193;
      sub_1C6D5B44C(v399, _s23EmbeddingValidityResultOMa);
      v169 = v480;
      if (!v194)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    v158 = v415;
    if (result != 1)
    {
      v163 = v378;
      v168 = *(v378 + 16);
      v124 = __OFADD__(v168, 1);
      v165 = v168 + 1;
      if (v124)
      {
        goto LABEL_198;
      }

LABEL_27:
      *(v163 + 16) = v165;
      v169 = v480;
      if (!v158)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_31:
    v169 = v480;
    if (!v158)
    {
LABEL_33:
      v172 = *(v413 + 16);
      v115 = *(v410 + 2);

      sub_1C6D4DB40(v169, v172, v115, v406, v487);

      if (v487[1])
      {

        v173 = v169;
LABEL_35:
        sub_1C6D5B44C(v173, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v146 = v474;
        result = sub_1C6D5B44C(v474, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
LABEL_180:
        v140 = v404;
        v148 = v437;
        goto LABEL_10;
      }

      v174 = [v481 aggregateModificationConfigurations];
      v485 = v114;
      LOBYTE(v486) = v152;
      v175 = sub_1C6C40FC8(v169, &v485);

      v176 = v397;
      v458 = v175;
      if (!v175)
      {
        if (qword_1EDCE9828 != -1)
        {
          swift_once();
        }

        v115 = sub_1C6D79AA0();
        v114 = swift_allocObject();
        *(v114 + 16) = v414;
        v188 = v480;
        v189 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
        v190 = v433;
        *(v114 + 56) = MEMORY[0x1E69E6158];
        *(v114 + 64) = v190;
        *(v114 + 32) = v189;
        *(v114 + 40) = v191;
        sub_1C6D78D30();

        v173 = v188;
        goto LABEL_35;
      }

      sub_1C6D5B364(v169, v397, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v178 = v391;
      v179 = v395;
      if (EnumCaseMultiPayload)
      {
        sub_1C6D5B44C(v176, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v180 = v384;
        sub_1C6D5B364(v169, v384, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1C6D5B51C(v180, v178, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
          v181 = v410;
          swift_beginAccess();
          if (*(v181 + 2))
          {
            sub_1C6D5B3CC(v178 + *(v371 + 20), v179, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v182 = v473;
            if ((v473)(v179, 1, v57) == 1)
            {
              v183 = v179;
              v184 = v370;
              *v370 = 0;
              v184[1] = 0xE000000000000000;
              (*v368)(v184 + v57[5], 1, 1, v456);
              v185 = v184 + v57[6];
              sub_1C6D78A30();
              v186 = v182(v183, 1, v57);
              v57 = v474;
              v187 = v465;
              if (v186 != 1)
              {
                sub_1C6D5B4AC(v395, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              }
            }

            else
            {
              v212 = v179;
              v184 = v370;
              sub_1C6D5B51C(v212, v370, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v57 = v474;
              v187 = v465;
            }

            v213 = *v184;
            v214 = v184[1];

            sub_1C6D5B44C(v184, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            sub_1C6B1E6A8(&v483, v213, v214);
            swift_endAccess();

            v209 = v393;
          }

          else
          {
            swift_endAccess();
            v57 = v474;
            v209 = v393;
            v187 = v465;
          }

          sub_1C6D5B44C(v178, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
          v115 = v394;
        }

        else
        {
          sub_1C6D5B44C(v180, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          v203 = v380;
          sub_1C6D5B364(v169, v380, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          if (swift_getEnumCaseMultiPayload() == 9)
          {
            v204 = v369;
            sub_1C6D5B51C(v203, v369, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
            v205 = *v204;
            v206 = v204[1];
            swift_beginAccess();
            sub_1C6D39EFC(v205, v206);
            swift_endAccess();

            v207 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
            v208 = v204;
          }

          else
          {
            v207 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
            v208 = v203;
          }

          sub_1C6D5B44C(v208, v207);
          v209 = v393;
          v115 = v394;
          v57 = v474;
          v187 = v465;
        }
      }

      else
      {
        v195 = v381;
        sub_1C6D5B51C(v176, v381, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        v196 = v413;
        swift_beginAccess();
        if (*(v196 + 16))
        {
          v197 = v379;
          sub_1C6D5B3CC(v195 + *(v373 + 20), v379, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v198 = v473;
          v199 = (v473)(v197, 1, v57);
          v187 = v465;
          if (v199 == 1)
          {
            v200 = v372;
            *v372 = 0;
            v200[1] = 0xE000000000000000;
            (*v368)(v200 + v57[5], 1, 1, v456);
            v201 = v200 + v57[6];
            sub_1C6D78A30();
            v202 = v198(v197, 1, v57);
            v57 = v474;
            if (v202 != 1)
            {
              sub_1C6D5B4AC(v379, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            }
          }

          else
          {
            v200 = v372;
            sub_1C6D5B51C(v197, v372, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v57 = v474;
          }

          v210 = *v200;
          v211 = v200[1];

          sub_1C6D5B44C(v200, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          sub_1C6B1E6A8(&v483, v210, v211);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v57 = v474;
          v187 = v465;
        }

        sub_1C6D5B44C(v195, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        v209 = v393;
        v115 = v394;
      }

      v215 = v450;
      v459 = sub_1C6CCEBD8(sub_1C6D5D45C, v450, v388);
      v216 = v392;
      sub_1C6D77030();
      v466 = sub_1C6D4F0A0(v216, v215, v449, v481);
      v470 = *v471;
      v470(v216, v187);
      v447 = *(v390 + 24);
      sub_1C6D5B3CC(v57 + v447, v209, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v114 = v460;
      v217 = v453;
      if (v453(v209, 1, v460) == 1)
      {
        sub_1C6D78990();
        if (v217(v209, 1, v114) != 1)
        {
          sub_1C6D5B4AC(v209, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
        }
      }

      else
      {
        (*v429)(v403, v209, v114);
      }

      sub_1C6D78970();
      v219 = v218;
      v452(v403, v114);
      v220 = v219 * 1000.0;
      v221 = v466;
      if (COERCE__INT64(fabs(v219 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_190;
      }

      if (v220 <= -1.0)
      {
        goto LABEL_191;
      }

      if (v220 >= 1.84467441e19)
      {
        goto LABEL_192;
      }

      [v466 setTimestamp_];
      v222 = [v458 baselineModificationData];
      [v481 decayRate];
      Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v115);
      v223 = v467;
      v224 = (v473)(v115, 1, v467);
      if (v224 == 1)
      {
        sub_1C6D5B4AC(v115, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v225 = 0;
        v226 = 0;
      }

      else
      {
        v227 = v115 + v223[5];
        v228 = v115;
        v229 = v382;
        sub_1C6D5B3CC(v227, v382, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        if ((*v448)(v229, 1, v456) == 1)
        {
          sub_1C6D5B4AC(v229, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          sub_1C6D5B44C(v115, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v225 = 0;
          v226 = 1;
        }

        else
        {
          v230 = v229;
          v231 = v374;
          sub_1C6D5B51C(v230, v374, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v232 = v231;
          v233 = v430;
          sub_1C6D5B51C(v232, v430, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v234 = v431;
          sub_1C6D5B51C(v233, v431, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v235 = *(v234 + *(v432 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
          swift_beginAccess();
          v225 = *v235;
          v226 = *(v235 + 8);
          v236 = v234;
          v221 = v466;
          sub_1C6D5B44C(v236, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          sub_1C6D5B44C(v228, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }

        v57 = v474;
        v187 = v465;
      }

      v485 = v225;
      LOBYTE(v486) = v226;
      BYTE1(v486) = v224 == 1;
      v237 = v389;
      Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v389);
      v238 = v467;
      v239 = (v473)(v237, 1, v467);
      if (v239 == 1)
      {
        sub_1C6D5B4AC(v237, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v114 = 0;
        v115 = 0;
      }

      else
      {
        v240 = v237 + v238[5];
        v241 = v383;
        sub_1C6D5B3CC(v240, v383, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        if ((*v448)(v241, 1, v456) == 1)
        {
          sub_1C6D5B4AC(v241, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          sub_1C6D5B44C(v237, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v114 = 0;
          v115 = 1;
        }

        else
        {
          v242 = v237;
          v243 = v241;
          v244 = v375;
          sub_1C6D5B51C(v243, v375, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v245 = v244;
          v246 = v430;
          sub_1C6D5B51C(v245, v430, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v247 = v431;
          sub_1C6D5B51C(v246, v431, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v248 = *(v247 + *(v432 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
          swift_beginAccess();
          v114 = *v248;
          v115 = *(v248 + 8);
          sub_1C6D5B44C(v247, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v249 = v242;
          v187 = v465;
          v57 = v474;
          sub_1C6D5B44C(v249, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }

        v221 = v466;
      }

      v483 = v114;
      LOBYTE(v484) = v115;
      BYTE1(v484) = v239 == 1;
      sub_1C6CE69E0(v480, &v485, &v483);
      [v222 clicks];
      if (v250 > 0.0 || ([v222 impressions], v251 > 0.0))
      {
        v115 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
        [v221 impressions];
        [v222 impressions];
        [v222 impressions];
        sub_1C6D798D0();
        v253 = v252;
        [v221 clicks];
        [v222 clicks];
        [v222 impressions];
        sub_1C6D798D0();
        [v221 setClicks_];
        [v221 setImpressions_];
        v254 = [v221 eventCount];
        if (v254 == -1)
        {
          goto LABEL_193;
        }

        [v221 setEventCount_];
      }

      swift_beginAccess();
      v255 = *(v144 + 16);
      if (v255)
      {
        result = [v221 featureKey];
        if (!result)
        {
          goto LABEL_202;
        }

        v115 = result;
        v114 = sub_1C6D795A0();
        v257 = v256;

        if (*(v255 + 16))
        {
          v115 = sub_1C6B5DEA8(v114, v257);
          v114 = v258;

          v259 = MEMORY[0x1E69E7CC0];
          if (v114)
          {
            v259 = *(*(v255 + 56) + 8 * v115);
          }
        }

        else
        {

          v259 = MEMORY[0x1E69E7CC0];
        }

        swift_endAccess();
        sub_1C6D5B364(v57, v396, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v259 = sub_1C6B666CC(0, v259[2] + 1, 1, v259);
        }

        v260 = v259;
        v261 = v259[2];
        v401 = v260;
        v262 = v260[3];
        if (v261 >= v262 >> 1)
        {
          v401 = sub_1C6B666CC(v262 > 1, v261 + 1, 1, v401);
        }

        v263 = v401;
        v401[2] = v261 + 1;
        sub_1C6D5B51C(v396, v263 + v434 + v261 * v457, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      }

      else
      {
        swift_endAccess();
        v401 = 0;
      }

      v264 = v460;
      swift_beginAccess();
      if (*(v144 + 16))
      {
        result = [v221 featureKey];
        if (!result)
        {
          goto LABEL_203;
        }

        v265 = result;
        v266 = sub_1C6D795A0();
        v115 = v267;

        sub_1C6BC24C0(v268, v266, v115);
        v264 = v460;
      }

      swift_endAccess();
      v146 = v57;
      v57 = v467;
      v446 = *(v459 + 16);
      if (!v446)
      {
LABEL_179:

        sub_1C6D5B44C(v480, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        sub_1C6D5B44C(v146, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

        goto LABEL_180;
      }

      v269 = 0;
      v445 = v459 + ((*(v451 + 80) + 32) & ~*(v451 + 80));
      while (1)
      {
        if (v269 >= *(v459 + 16))
        {
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
          goto LABEL_188;
        }

        v270 = *(v451 + 72);
        v482 = v269;
        v475 = *(v451 + 16);
        (v475)(v122, v445 + v270 * v269, v187);
        v271 = sub_1C6D4F0A0(v122, v450, v449, v481);
        v272 = v146 + v447;
        v273 = v463;
        sub_1C6D5B3CC(v272, v463, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
        v274 = v453;
        if (v453(v273, 1, v264) == 1)
        {
          v115 = v442;
          sub_1C6D78990();
          v275 = v274(v273, 1, v264);
          v276 = v444;
          v277 = v443;
          v122 = v480;
          v114 = v473;
          if (v275 != 1)
          {
            sub_1C6D5B4AC(v463, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
          }
        }

        else
        {
          v115 = v442;
          (*v429)(v442, v273, v264);
          v276 = v444;
          v277 = v443;
          v122 = v480;
          v114 = v473;
        }

        sub_1C6D78970();
        v279 = v278;
        v452(v115, v264);
        v280 = v279 * 1000.0;
        if (COERCE__INT64(fabs(v279 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_183;
        }

        if (v280 <= -1.0)
        {
          goto LABEL_184;
        }

        if (v280 >= 1.84467441e19)
        {
          goto LABEL_185;
        }

        [v271 setTimestamp_];
        v281 = [v458 aggregateModificationData];
        [v481 decayRate];
        Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v277);
        v282 = (v114)(v277, 1, v57);
        if (v282 == 1)
        {
          sub_1C6D5B4AC(v277, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v469 = 0;
          v468 = 0;
        }

        else
        {
          v283 = v425;
          sub_1C6D5B3CC(v277 + v57[5], v425, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          if ((*v448)(v283, 1, v456) == 1)
          {
            sub_1C6D5B4AC(v283, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            sub_1C6D5B44C(v277, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v469 = 0;
            v468 = 1;
          }

          else
          {
            v284 = v411;
            sub_1C6D5B51C(v283, v411, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v285 = v284;
            v286 = v430;
            sub_1C6D5B51C(v285, v430, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v287 = v286;
            v288 = v431;
            sub_1C6D5B51C(v287, v431, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            v289 = *(v288 + *(v432 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
            swift_beginAccess();
            v469 = *v289;
            v468 = *(v289 + 8);
            sub_1C6D5B44C(v288, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            sub_1C6D5B44C(v277, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }

          v114 = v473;
        }

        Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v276);
        v290 = (v114)(v276, 1, v57);
        if (v290 == 1)
        {
          sub_1C6D5B4AC(v276, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v291 = 0;
          v292 = 0;
        }

        else
        {
          v293 = v426;
          sub_1C6D5B3CC(v276 + v57[5], v426, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          if ((*v448)(v293, 1, v456) == 1)
          {
            sub_1C6D5B4AC(v293, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            sub_1C6D5B44C(v276, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v291 = 0;
            v292 = 1;
          }

          else
          {
            v294 = v412;
            sub_1C6D5B51C(v293, v412, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v295 = v294;
            v296 = v430;
            sub_1C6D5B51C(v295, v430, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v297 = v296;
            v298 = v431;
            sub_1C6D5B51C(v297, v431, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            v299 = *(v298 + *(v432 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
            swift_beginAccess();
            v291 = *v299;
            v292 = *(v299 + 8);
            sub_1C6D5B44C(v298, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            sub_1C6D5B44C(v276, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }
        }

        ++v482;
        v114 = [v481 biases];
        sub_1C6D5B364(v480, v477, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        swift_getEnumCaseMultiPayload();
        sub_1C6D5B44C(v477, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v300 = sub_1C6D79570();

        if (v282 == 1 || (v485 = v469, LOBYTE(v486) = v468, Com_Apple_News_Personalization_FeedType.string.getter(), !v301))
        {
          v115 = 0;
          if (v290 == 1)
          {
LABEL_131:
            v303 = 0;
            v122 = v464;
            goto LABEL_133;
          }
        }

        else
        {
          v115 = sub_1C6D79570();

          if (v290 == 1)
          {
            goto LABEL_131;
          }
        }

        v485 = v291;
        LOBYTE(v486) = v292;
        Com_Apple_News_Personalization_GroupType.string.getter();
        v122 = v464;
        if (v302)
        {
          v303 = sub_1C6D79570();
        }

        else
        {
          v303 = 0;
        }

LABEL_133:
        v304 = v475;
        [v114 biasForEventType:v300 feedType:v115 groupType:v303];

        v305 = v478;
        v187 = v465;
        (v304)(v478, v122, v465);
        v306 = (*v441)(v305, v187);
        if (v306 == v440 || v306 == v439 || v306 == v438 || v306 == v436 || v306 != v435)
        {
          v470(v478, v187);
          v57 = 0;
          v144 = v461;
        }

        else
        {
          v307 = v122;
          v308 = v478;
          v309 = v187;
          (*v422)(v478, v187);
          v310 = v308[1];
          v114 = v308[2];
          v115 = v308[3];

          v311 = v423;
          swift_beginAccess();
          v312 = *(v311 + 16);
          v313 = *(v312 + 16);

          if (v313 && (v314 = sub_1C6B5DEA8(v114, v115), (v315 & 1) != 0))
          {
            v57 = *(*(v312 + 56) + 8 * v314);
            v316 = v57;
          }

          else
          {
            v57 = 0;
          }

          v317 = v461;
          v187 = v309;
          swift_endAccess();
          swift_bridgeObjectRelease_n();
          v122 = v307;
          v144 = v317;
        }

        [v281 clicks];
        if (v318 > 0.0 || ([v281 impressions], v319 > 0.0))
        {
          [v271 impressions];
          [v281 impressions];
          [v281 impressions];
          sub_1C6D798D0();
          v321 = v320;
          [v271 clicks];
          [v281 clicks];
          [v281 impressions];
          sub_1C6D798D0();
          v323 = v322;
          if (v57)
          {
            v324 = v57;
            if ([v324 capAtBaseline])
            {
              v475 = v324;
              sub_1C6D79A90();
              v325 = swift_allocObject();
              *(v325 + 16) = v414;
              v485 = 0;
              v486 = 0xE000000000000000;
              v326 = [v271 featureKey];
              if (v326)
              {
                v327 = v326;
                v328 = sub_1C6D795A0();
                v330 = v329;
              }

              else
              {
                v328 = 0;
                v330 = 0;
              }

              v483 = v328;
              v484 = v330;
              v331 = MEMORY[0x1E69E6158];
              sub_1C6D5D150(0, &qword_1EDCE6698, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
              v332 = sub_1C6D795F0();
              MEMORY[0x1CCA55B00](v332);

              v333 = v485;
              v334 = v486;
              v335 = v433;
              *(v325 + 56) = v331;
              *(v325 + 64) = v335;
              *(v325 + 32) = v333;
              *(v325 + 40) = v334;
              sub_1C6D78D30();

              v336 = 0.0;
              if (v321 > 0.0)
              {
                v337 = v323 / v321;
                if (v323 / v321 <= 0.0)
                {
                  v337 = 0.0;
                }

                v336 = 1.0;
                if (v337 <= 1.0)
                {
                  v336 = v337;
                }
              }

              [v466 ctr];
              v115 = v465;
              v122 = v464;
              if (v338 >= v336)
              {
                LODWORD(v469) = sub_1C6D79A90();
                v114 = swift_allocObject();
                *(v114 + 16) = v409;
                v485 = 0;
                v486 = 0xE000000000000000;
                sub_1C6D79910();
                v347 = v485;
                v348 = v486;
                v349 = MEMORY[0x1E69E6158];
                v350 = v433;
                *(v114 + 56) = MEMORY[0x1E69E6158];
                *(v114 + 64) = v350;
                *(v114 + 32) = v347;
                *(v114 + 40) = v348;
                v485 = 0;
                v486 = 0xE000000000000000;
                sub_1C6D79910();
                v351 = v485;
                v352 = v486;
                *(v114 + 96) = v349;
                *(v114 + 104) = v350;
                *(v114 + 72) = v351;
                *(v114 + 80) = v352;
                v485 = 0;
                v486 = 0xE000000000000000;
                sub_1C6D79910();
                v353 = v485;
                v354 = v486;
                *(v114 + 136) = v349;
                *(v114 + 144) = v350;
                *(v114 + 112) = v353;
                *(v114 + 120) = v354;
              }

              else
              {
                v323 = v321 * v338;
                LODWORD(v469) = sub_1C6D79A90();
                v339 = swift_allocObject();
                *(v339 + 16) = v409;
                v485 = 0;
                v486 = 0xE000000000000000;
                sub_1C6D79910();
                v340 = v485;
                v341 = v486;
                v114 = MEMORY[0x1E69E6158];
                v342 = v433;
                *(v339 + 56) = MEMORY[0x1E69E6158];
                *(v339 + 64) = v342;
                *(v339 + 32) = v340;
                *(v339 + 40) = v341;
                v485 = 0;
                v486 = 0xE000000000000000;
                sub_1C6D79910();
                v343 = v485;
                v344 = v486;
                *(v339 + 96) = v114;
                *(v339 + 104) = v342;
                *(v339 + 72) = v343;
                *(v339 + 80) = v344;
                v485 = 0;
                v486 = 0xE000000000000000;
                sub_1C6D79910();
                v345 = v485;
                v346 = v486;
                *(v339 + 136) = v114;
                *(v339 + 144) = v342;
                *(v339 + 112) = v345;
                *(v339 + 120) = v346;
              }

              sub_1C6D78D30();

              v144 = v461;
            }

            else
            {
              v115 = v187;
            }
          }

          else
          {
            v115 = v187;
          }

          [v271 setClicks_];
          [v271 setImpressions_];
          v355 = [v271 eventCount];
          if (v355 == -1)
          {
            goto LABEL_186;
          }

          [v271 setEventCount_];
          v187 = v115;
        }

        swift_beginAccess();
        v356 = *(v144 + 16);
        if (v356)
        {
          result = [v271 featureKey];
          v57 = v467;
          if (!result)
          {
            goto LABEL_201;
          }

          v357 = result;
          v114 = sub_1C6D795A0();
          v359 = v358;

          if (*(v356 + 16))
          {
            v360 = sub_1C6B5DEA8(v114, v359);
            v114 = v361;

            v362 = MEMORY[0x1E69E7CC0];
            if (v114)
            {
              v362 = *(*(v356 + 56) + 8 * v360);
            }
          }

          else
          {

            v362 = MEMORY[0x1E69E7CC0];
          }

          swift_endAccess();
          sub_1C6D5B364(v474, v462, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v362 = sub_1C6B666CC(0, v362[2] + 1, 1, v362);
          }

          v115 = v362[2];
          v363 = v362[3];
          if (v115 >= v363 >> 1)
          {
            v362 = sub_1C6B666CC(v363 > 1, v115 + 1, 1, v362);
          }

          v362[2] = v115 + 1;
          sub_1C6D5B51C(v462, v362 + v434 + v115 * v457, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        }

        else
        {
          swift_endAccess();
          v57 = v467;
        }

        swift_beginAccess();
        if (*(v144 + 16))
        {
          result = [v271 featureKey];
          if (!result)
          {
            goto LABEL_200;
          }

          v364 = result;
          v115 = sub_1C6D795A0();
          v114 = v365;

          sub_1C6BC24C0(v366, v115, v114);
        }

        swift_endAccess();

        v470(v122, v187);

        v269 = v482;
        v264 = v460;
        v221 = v466;
        v146 = v474;
        if (v446 == v482)
        {
          goto LABEL_179;
        }
      }
    }

LABEL_32:
    sub_1C6D4F618(v169);
    goto LABEL_33;
  }

  if (v407 != 1)
  {
    goto LABEL_31;
  }

  v161 = v398;
  sub_1C6D43E04(1, v402, v398);
  v162 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  result = (*(*(v162 - 8) + 48))(v161, 2, v162);
  if (result)
  {
    v158 = v415;
    if (result != 1)
    {
      v163 = v376;
      v164 = *(v376 + 16);
      v124 = __OFADD__(v164, 1);
      v165 = v164 + 1;
      if (v124)
      {
        goto LABEL_197;
      }

      goto LABEL_27;
    }

    goto LABEL_31;
  }

  v170 = *(v387 + 16);
  v124 = __OFADD__(v170, 1);
  v171 = v170 + 1;
  if (!v124)
  {
    *(v387 + 16) = v171;
    sub_1C6D5B44C(v398, _s23EmbeddingValidityResultOMa);
    v158 = v415;
    goto LABEL_31;
  }

  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
  return result;
}

uint64_t sub_1C6D5A574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12[-v8];
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
  v13 = a2;
  v14 = a3;
  sub_1C6D5B1C4(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  sub_1C6D78C30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_1C6D5D000(v9, a1, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
}

void sub_1C6D5A71C(void **a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v9 = v8;
  v82 = a7;
  v84 = a6;
  v85 = a5;
  v15 = sub_1C6D77050();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if (a3)
  {
    v81 = a4;
    v83 = a8;
    a4 = a2;
    v86 = v20;
    v21 = [v20 featureKey];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1C6D795A0();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    sub_1C6D77030();
    v26 = sub_1C6D76FE0();
    v28 = v27;
    v30 = *(v16 + 8);
    v29 = (v16 + 8);
    v30(v19, v15);
    if (v25)
    {
      if (v23 == v26 && v25 == v28)
      {
        goto LABEL_27;
      }

      v32 = sub_1C6D7A130();

      v9 = v8;
      a2 = a4;
      a8 = v83;
      v20 = v86;
      a4 = v81;
      if (v32)
      {
        goto LABEL_28;
      }
    }

    else
    {

      v9 = v8;
      a2 = a4;
      a8 = v83;
      v20 = v86;
      a4 = v81;
    }
  }

  v29 = &selRef_adSegmentsOutputName;
  v33 = [a4 legacyBridgeConfiguration];
  v19 = [v33 priorStatelessAggregatesWithLegacyAggregates];

  if (v19)
  {
    v86 = v20;
    v34 = [v20 featureKey];
    if (!v34)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v35 = v34;
    v20 = sub_1C6D795A0();
    v37 = v36;

    v19 = v85;
    if (!v85[2])
    {
      goto LABEL_32;
    }

    v38 = v20;
    v20 = v85;
    v19 = sub_1C6B5DEA8(v38, v37);
    v40 = v39;

    if ((v40 & 1) == 0)
    {
      goto LABEL_33;
    }

    v29 = *(v20[7] + 8 * v19);
    v41 = [a4 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
    v42 = [v41 allowAllLegacyAggregatesToActAsPriors];

    v19 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
    if ((v42 & 1) != 0 || (v43 = -[SEL eventCount](v29, sel_eventCount), [v86 eventCount] < v43))
    {
      v83 = a8;
      v85 = v9;
      if (__OFADD__(*v82, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      ++*v82;
      v20 = v86;
      [v86 clicks];
      v19 = v29;
      [(SEL *)v29 clicks];
      [(SEL *)v29 impressions];
      v44 = [a4 legacyBridgeConfiguration];
      [v44 legacyDecayRate];

      [v20 impressions];
      [a4 decayRate];
      v45 = [a4 legacyBridgeConfiguration];
      [v45 avoidDoubleCountingWhenPrioringWithLegacyAggregates];
      a8 = a4;

      v46 = [a4 legacyBridgeConfiguration];
      [v46 legacyMultiplier];

      v47 = [a4 legacyBridgeConfiguration];
      [v47 legacyMaxLinearImpressionCount];

      v48 = [a4 legacyBridgeConfiguration];
      [v48 statelessMaxLinearImpressionCount];

      sub_1C6D798E0();
      [v20 setClicks_];
      [v20 impressions];
      [(SEL *)v29 impressions];
      [(SEL *)v29 impressions];
      v49 = [a4 legacyBridgeConfiguration];
      [v49 legacyDecayRate];

      [v20 impressions];
      [a4 decayRate];
      v50 = [a4 legacyBridgeConfiguration];
      a4 = [v50 avoidDoubleCountingWhenPrioringWithLegacyAggregates];

      v51 = [a8 legacyBridgeConfiguration];
      [v51 legacyMultiplier];

      v52 = [a8 legacyBridgeConfiguration];
      [v52 legacyMaxLinearImpressionCount];

      v53 = [a8 legacyBridgeConfiguration];
      [v53 statelessMaxLinearImpressionCount];

      sub_1C6D798E0();
      [v20 setImpressions_];
      v54 = [a8 legacyBridgeConfiguration];
      v55 = [v54 avoidDoubleCountingWhenPrioringWithLegacyAggregates];

      v29 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
      v56 = [v19 eventCount];
      v57 = [v20 eventCount];
      if (v55)
      {
        v42 = v83;
        if (v57 < v56)
        {
          v58 = [v19 eventCount];
          v59 = [v86 eventCount];
          v60 = v58 >= v59;
          v61 = v58 - v59;
          if (!v60)
          {
            __break(1u);
            goto LABEL_24;
          }

LABEL_45:
          v72 = [v86 v29[83]];
          v68 = &v72[v61];
          if (!__CFADD__(v72, v61))
          {
            goto LABEL_46;
          }

          goto LABEL_53;
        }

LABEL_44:
        v61 = 0;
        goto LABEL_45;
      }

LABEL_37:
      v68 = &v56[v57];
      v42 = v83;
      if (!__CFADD__(v57, v56))
      {
LABEL_46:
        v73 = v86;
        [v86 setEventCount_];

        *v42 = v73;
        v74 = *a2;
        v75 = v73;
        if (!v74)
        {
          return;
        }

        v57 = [v75 featureKey];
        if (v57)
        {
          goto LABEL_48;
        }

LABEL_56:
        __break(1u);
        return;
      }

      __break(1u);
    }

    if (__OFADD__(*v84, 1))
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    ++*v84;
    v69 = v86;
    *a8 = v86;
    v70 = *a2;
    v71 = v69;
    if (!v70)
    {
      return;
    }

    v57 = [v71 featureKey];
    if (v57)
    {
      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_24:
  *a8 = v20;
  v62 = *a2;
  v63 = v20;
  if (!v62)
  {
    return;
  }

  v57 = [v63 featureKey];
  if (v57)
  {
LABEL_48:
    v76 = v57;
    v77 = sub_1C6D795A0();
    v79 = v78;

    sub_1C6D39EFC(v77, v79);

    return;
  }

  __break(1u);
LABEL_27:

  a2 = a4;
  a8 = v83;
  v20 = v86;
LABEL_28:
  if (qword_1EDCE7498 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    sub_1C6D79AC0();
    sub_1C6D78D30();
    *a8 = v20;
    v64 = *a2;
    v65 = v20;
    if (!v64)
    {
      break;
    }

    v57 = [v65 featureKey];
    if (v57)
    {
      goto LABEL_48;
    }

    __break(1u);
LABEL_32:

LABEL_33:
    if (!__OFADD__(*v84, 1))
    {
      ++*v84;
      v66 = v86;
      *a8 = v86;
      v56 = *a2;
      v67 = v66;
      if (!v56)
      {
        return;
      }

      v57 = [v67 featureKey];
      if (!v57)
      {
        __break(1u);
        goto LABEL_37;
      }

      goto LABEL_48;
    }

    __break(1u);
LABEL_51:
    swift_once();
  }
}

void *UserEventHistoryAggregateStoreFactory.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  sub_1C6D5B4AC(v0 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_headlineService));
  v2 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore);

  return v0;
}

uint64_t UserEventHistoryAggregateStoreFactory.__deallocating_deinit()
{
  UserEventHistoryAggregateStoreFactory.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6D5B10C()
{
  if (*(*v0 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore))
  {

    sub_1C6D781A0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D5B1C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6D5B20C()
{
  if (!qword_1EDCE7A90)
  {
    sub_1C6D5D150(255, &qword_1EDCE6DA0, &type metadata for UserEventHistoryAggregateStore, MEMORY[0x1E69E6720]);
    v0 = sub_1C6D781C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7A90);
    }
  }
}

uint64_t sub_1C6D5B288@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_unownedRetainStrong();
  sub_1C6D45308(a1);
}

uint64_t sub_1C6D5B364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D5B3CC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B1839C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D5B44C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6D5B4AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B1839C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6D5B51C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D5B5AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, *(a1 + 48));
}

uint64_t sub_1C6D5B5E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C6D7A0C0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C6B3C6B0();
        v5 = sub_1C6D797F0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C6D5B81C(v7, v8, a1, v4);
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
    return sub_1C6D5B6DC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C6D5B6DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 24 * a3);
    v6 = result - a3;
LABEL_5:
    v22 = a3;
    v7 = v4 + 24 * a3;
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    v20 = v6;
    v21 = v5;
    while (1)
    {
      v10 = *(v5 - 2);
      v11 = *(v5 - 1);

      v12 = v8;

      v13 = v11;
      v14 = [v12 eventCount];
      v15 = [v13 eventCount];

      if (v15 >= v14)
      {
LABEL_4:
        a3 = v22 + 1;
        v5 = v21 + 3;
        v6 = v20 - 1;
        if (v22 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v16 = *v5;
      v17 = v5[1];
      v8 = v5[2];
      *v5 = *(v5 - 3);
      v5[2] = *(v5 - 1);
      *(v5 - 2) = v17;
      *(v5 - 1) = v8;
      *(v5 - 3) = v16;
      v5 -= 3;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D5B81C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v116 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v5 = v10;
    v10 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_1C6C73C90(v5);
      v5 = result;
    }

    v104 = *(v5 + 16);
    if (v104 >= 2)
    {
      while (1)
      {
        v105 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v104 - 1);
        v106 = *(v5 + 16 * v104);
        v107 = *(v5 + 16 * (v104 - 1) + 40);
        sub_1C6D5BF60((v105 + 24 * v106), (v105 + 24 * *(v5 + 16 * (v104 - 1) + 32)), v105 + 24 * v107, v10);
        if (v6)
        {
        }

        if (v107 < v106)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1C6C73C90(v5);
        }

        if (v104 - 2 >= *(v5 + 16))
        {
          goto LABEL_115;
        }

        v108 = (v5 + 16 * v104);
        *v108 = v106;
        v108[1] = v107;
        result = sub_1C6C73C04(v7);
        v104 = *(v5 + 16);
        v7 = a3;
        if (v104 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v112 = v10;
      v114 = v6;
      v13 = *v7 + 24 * v12;
      v15 = *(v13 + 8);
      v14 = *(v13 + 16);
      v118 = 24 * v11;
      v16 = *v7 + 24 * v11;
      v18 = *(v16 + 8);
      v17 = *(v16 + 16);

      v19 = v14;

      v20 = v17;
      v123 = [v19 eventCount];
      v121 = [v20 eventCount];

      v110 = v11;
      v21 = v11 + 2;
      v5 = v16 + 64;
      v125 = v8;
      while (v8 != v21)
      {
        v23 = *(v5 - 8);
        v22 = *v5;
        v25 = *(v5 - 32);
        v24 = *(v5 - 24);

        v26 = v22;

        v27 = v24;
        v28 = [v26 eventCount];
        v29 = [v27 eventCount];

        v8 = v125;
        ++v21;
        v5 += 24;
        if (v121 < v123 == v29 >= v28)
        {
          v8 = v21 - 1;
          break;
        }
      }

      v10 = v112;
      v6 = v114;
      v7 = a3;
      v30 = v118;
      v11 = v110;
      if (v121 < v123)
      {
        if (v8 < v110)
        {
          goto LABEL_118;
        }

        if (v110 < v8)
        {
          v31 = 0;
          v32 = 24 * v8;
          v33 = v110;
          do
          {
            if (v33 != v8 + v31 - 1)
            {
              v39 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v34 = (v39 + v30);
              v35 = v39 + v32;
              v36 = *v34;
              v37 = *(v34 + 1);
              v38 = *(v35 - 24);
              v34[2] = *(v35 - 8);
              *v34 = v38;
              *(v35 - 24) = v36;
              *(v35 - 16) = v37;
            }

            ++v33;
            --v31;
            v32 -= 24;
            v30 += 24;
          }

          while (v33 < v8 + v31);
        }
      }
    }

    v40 = v7[1];
    if (v8 < v40)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_117;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v11 + a4 >= v40)
        {
          v41 = v7[1];
        }

        else
        {
          v41 = v11 + a4;
        }

        if (v41 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v8 != v41)
        {
          break;
        }
      }
    }

    v42 = v8;
    if (v8 < v11)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v44 = *(v10 + 2);
    v43 = *(v10 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_1C6B657D0((v43 > 1), v44 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v45;
    v46 = &v10[16 * v44];
    *(v46 + 4) = v11;
    *(v46 + 5) = v42;
    v47 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    v119 = v42;
    if (v44)
    {
      while (1)
      {
        v5 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v48 = *(v10 + 4);
          v49 = *(v10 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_48:
          if (v51)
          {
            goto LABEL_105;
          }

          v64 = &v10[16 * v45];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_108;
          }

          v70 = &v10[16 * v5 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_112;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v5 = v45 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v74 = &v10[16 * v45];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_62:
        if (v69)
        {
          goto LABEL_107;
        }

        v77 = &v10[16 * v5];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_110;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_69:
        v85 = v5 - 1;
        if (v5 - 1 >= v45)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v86 = *&v10[16 * v85 + 32];
        v87 = *&v10[16 * v5 + 40];
        sub_1C6D5BF60((*v7 + 24 * v86), (*v7 + 24 * *&v10[16 * v5 + 32]), *v7 + 24 * v87, v47);
        if (v6)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C6C73C90(v10);
        }

        if (v85 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v88 = &v10[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_1C6C73C04(v5);
        v45 = *(v10 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v10[16 * v45 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_103;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_104;
      }

      v59 = &v10[16 * v45];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_106;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_109;
      }

      if (v63 >= v55)
      {
        v81 = &v10[16 * v5 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v50 < v84)
        {
          v5 = v45 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v119;
    if (v119 >= v8)
    {
      goto LABEL_89;
    }
  }

  v113 = v10;
  v115 = v6;
  v89 = *v7;
  v90 = (*v7 + 24 * v8);
  v111 = v11;
  v91 = v11 - v8;
  v120 = v41;
LABEL_80:
  v124 = v90;
  v126 = v8;
  v92 = v89 + 24 * v8;
  v94 = *(v92 + 8);
  v93 = *(v92 + 16);
  v122 = v91;
  v95 = v91;
  while (1)
  {
    v96 = *(v90 - 2);
    v97 = *(v90 - 1);

    v98 = v93;

    v99 = v97;
    v100 = [v98 eventCount];
    v5 = [v99 eventCount];

    if (v5 >= v100)
    {
LABEL_79:
      v8 = v126 + 1;
      v90 = v124 + 3;
      v42 = v120;
      v91 = v122 - 1;
      if (v126 + 1 != v120)
      {
        goto LABEL_80;
      }

      v10 = v113;
      v6 = v115;
      v7 = a3;
      v11 = v111;
      if (v120 < v111)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v89)
    {
      break;
    }

    v101 = *v90;
    v102 = v90[1];
    v93 = v90[2];
    *v90 = *(v90 - 3);
    v90[2] = *(v90 - 1);
    *(v90 - 2) = v102;
    *(v90 - 1) = v93;
    *(v90 - 3) = v101;
    v90 -= 3;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_1C6D5BF60(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = (__src - __dst) / 24;
  v8 = a3 - __src;
  v9 = (a3 - __src) / 24;
  if (v7 >= v9)
  {
    v26 = __src;
    if (a4 != __src || &__src[24 * v9] <= a4)
    {
      v27 = a4;
      memmove(a4, __src, 24 * v9);
      a4 = v27;
    }

    v12 = &a4[24 * v9];
    v11 = a4;
    if (v8 >= 24 && v26 > v5)
    {
      v50 = v5;
      v46 = a4;
LABEL_23:
      v48 = v26;
      v28 = v4 - 24;
      do
      {
        v29 = v28;
        v30 = (v28 + 24);
        v31 = *(v12 - 2);
        v32 = *(v12 - 1);
        v33 = *(v48 - 2);
        v34 = *(v48 - 1);
        v35 = v12;

        v36 = v32;

        v37 = v34;
        v38 = [v36 eventCount];
        v39 = [v37 eventCount];

        if (v39 < v38)
        {
          v42 = v48 - 24;
          if (v30 != v48)
          {
            v43 = *v42;
            *(v29 + 16) = *(v48 - 1);
            *v29 = v43;
          }

          v11 = v46;
          v12 = v35;
          if (v35 <= v46 || (v26 = v48 - 24, v4 = v29, v42 <= v50))
          {
            v26 = v48 - 24;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        v40 = v35 - 24;
        if (v30 != v35)
        {
          v41 = *v40;
          *(v29 + 16) = *(v35 - 1);
          *v29 = v41;
        }

        v28 = v29 - 24;
        v12 = v40;
        v11 = v46;
      }

      while (v40 > v46);
      v12 = v40;
      v26 = v48;
    }
  }

  else
  {
    v11 = a4;
    if (a4 != __dst || &__dst[24 * v7] <= a4)
    {
      memmove(a4, __dst, 24 * v7);
    }

    v12 = &v11[24 * v7];
    if (v6 >= 24 && __src < v4)
    {
      v13 = __src;
      v47 = v12;
      while (1)
      {
        v49 = v5;
        v15 = *(v13 + 1);
        v14 = *(v13 + 2);
        v17 = *(v11 + 1);
        v16 = *(v11 + 2);

        v18 = v14;

        v19 = v16;
        v20 = [v18 eventCount];
        v21 = [v19 eventCount];

        if (v21 >= v20)
        {
          break;
        }

        v22 = v13;
        v23 = v49;
        v24 = v49 == v13;
        v13 += 24;
        if (!v24)
        {
          goto LABEL_13;
        }

LABEL_14:
        v5 = v23 + 24;
        v12 = v47;
        if (v11 >= v47 || v13 >= v4)
        {
          goto LABEL_16;
        }
      }

      v22 = v11;
      v23 = v49;
      v24 = v49 == v11;
      v11 += 24;
      if (v24)
      {
        goto LABEL_14;
      }

LABEL_13:
      v25 = *v22;
      *(v23 + 2) = *(v22 + 2);
      *v23 = v25;
      goto LABEL_14;
    }

LABEL_16:
    v26 = v5;
  }

LABEL_34:
  v44 = (v12 - v11) / 24;
  if (v26 != v11 || v26 >= &v11[24 * v44])
  {
    memmove(v26, v11, 24 * v44);
  }

  return 1;
}

unint64_t *sub_1C6D5C2C4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C6D5CC00(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1C6D5C360(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1C6B75B9C();
  result = sub_1C6D79F20();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = MEMORY[0x1CCA56710](*(v9 + 40), v17, 4);
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 4 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C6D5C55C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1C6B61548(0, &unk_1EDCEA460, &qword_1EDCEA4D0, 0x1E69B6EE8);
  result = sub_1C6D79F20();
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
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_1C6D7A260();

    v34 = v21;
    sub_1C6D79610();
    result = sub_1C6D7A2B0();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1C6D5C7A8()
{
  result = qword_1EDCE0628;
  if (!qword_1EDCE0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0628);
  }

  return result;
}

void sub_1C6D5C81C(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = a3;
  for (i = (a1 + 48); ; i += 3)
  {
    v26 = *(i - 2);
    v27 = *(i - 1);
    v28 = *i;
    v29 = *v4;

    v30 = v28;
    v31 = sub_1C6B5DEA8(v26, v27);
    v33 = v29[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      break;
    }

    v37 = v32;
    if (v29[3] < v36)
    {
      sub_1C6B728DC(v36, a2 & 1);
      v38 = *v4;
      v31 = sub_1C6B5DEA8(v26, v27);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_20;
      }

LABEL_12:
      v40 = *v4;
      if (v37)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (a2)
    {
      goto LABEL_12;
    }

    v44 = v3;
    v45 = v30;
    v46 = v31;
    sub_1C6B7521C();
    v31 = v46;
    v30 = v45;
    v3 = v44;
    v40 = *v4;
    if (v37)
    {
LABEL_3:
      v50 = v3;
      v48 = v30;
      v51 = v31;
      v7 = qword_1EDCE7498;
      v8 = *(v40[7] + 8 * v31);
      if (v7 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1D314();
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C6D807C0;
      v49 = v8;
      v10 = [v8 topicID];
      v11 = sub_1C6D795A0();
      v13 = v12;

      v14 = MEMORY[0x1E69E6158];
      *(v9 + 56) = MEMORY[0x1E69E6158];
      v15 = sub_1C6B2064C();
      *(v9 + 64) = v15;
      *(v9 + 32) = v11;
      *(v9 + 40) = v13;
      v16 = [v8 description];
      v17 = sub_1C6D795A0();
      v19 = v18;

      *(v9 + 96) = v14;
      *(v9 + 104) = v15;
      *(v9 + 72) = v17;
      *(v9 + 80) = v19;
      v20 = [v48 description];
      v21 = sub_1C6D795A0();
      v23 = v22;

      *(v9 + 136) = MEMORY[0x1E69E6158];
      *(v9 + 144) = v15;
      *(v9 + 112) = v21;
      *(v9 + 120) = v23;
      sub_1C6D78D30();

      v24 = v40[7];
      v25 = *(v24 + 8 * v51);
      *(v24 + 8 * v51) = v49;

      v4 = a3;
      v3 = v50;
      goto LABEL_6;
    }

LABEL_13:
    v40[(v31 >> 6) + 8] |= 1 << v31;
    v41 = (v40[6] + 16 * v31);
    *v41 = v26;
    v41[1] = v27;
    *(v40[7] + 8 * v31) = v30;
    v42 = v40[2];
    v35 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v35)
    {
      goto LABEL_19;
    }

    v40[2] = v43;
LABEL_6:
    a2 = 1;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_1C6D7A1C0();
  __break(1u);
}

void sub_1C6D5CC00(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v33 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    if (*(a4 + 16))
    {
      v15 = (*(a3 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v29 = v14;
      v18 = *(*(a3 + 56) + 8 * v14);
      v19 = *(a4 + 40);
      sub_1C6D7A260();

      v32 = v18;
      sub_1C6D79610();
      v20 = sub_1C6D7A2B0();
      v21 = -1 << *(a4 + 32);
      v22 = v20 & ~v21;
      if ((*(v33 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(a4 + 48) + 16 * v22);
          v25 = *v24 == v17 && v24[1] == v16;
          if (v25 || (sub_1C6D7A130() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v33 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(a1 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_26:
          sub_1C6D5C55C(a1, a2, v30, a3);
          return;
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_1C6D5CE1C(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_1C6D5C2C4(v14, v7, a1, a2);
      MEMORY[0x1CCA57100](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_1C6D5CC00((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1C6D5D000(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B1839C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1C6D5D150(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

BOOL sub_1C6D5D1A8(void *a1)
{
  v3 = *(*(sub_1C6D75F50() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_1C6D46D54(a1, v4);
}

uint64_t sub_1C6D5D21C(unint64_t *a1)
{
  v3 = *(sub_1C6D75F50() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  return sub_1C6D47040(a1, v1 + v4, *v5);
}

unint64_t sub_1C6D5D2C8()
{
  result = qword_1EDCE0160;
  if (!qword_1EDCE0160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0160);
  }

  return result;
}

unint64_t sub_1C6D5D31C()
{
  result = qword_1EDCE0618;
  if (!qword_1EDCE0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0618);
  }

  return result;
}

uint64_t sub_1C6D5D3A8()
{
  v0 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_1C6D5D404()
{
  result = qword_1EC1D9960[0];
  if (!qword_1EC1D9960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC1D9960);
  }

  return result;
}

uint64_t sub_1C6D5D474(id *a1)
{
  v2 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v3 = objc_msgSend(v2, sel_notificationScoringServiceConfigurationJSONData)) != 0)
  {
    v4 = v3;
    v5 = sub_1C6D75E60();
    v7 = v6;

    v8 = sub_1C6D75B10();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6D5D9C4();
    sub_1C6D75AF0();
    if (v1)
    {

      if (qword_1EC1D5A98 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1D314();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1C6D7E630;
      sub_1C6B10A98(0, &qword_1EDCEA410);
      sub_1C6D79E60();
      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 64) = sub_1C6B2064C();
      *(v11 + 32) = 0;
      *(v11 + 40) = 0xE000000000000000;
      sub_1C6D78D30();

      v12 = MEMORY[0x1E69E7CC0];
      sub_1C6B61080(MEMORY[0x1E69E7CC0]);
      sub_1C6B5F1EC(v12);
      sub_1C6D5D974();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1C6D78300();
      sub_1C6B1C9F0(v5, v7);

      return v16;
    }

    else
    {

      if (qword_1EC1D5A98 != -1)
      {
        swift_once();
      }

      sub_1C6B1D314();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1C6D7E630;
      sub_1C6D79E60();
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1C6B2064C();
      *(v22 + 32) = 0;
      *(v22 + 40) = 0xE000000000000000;
      sub_1C6D79AC0();
      sub_1C6D78D30();

      sub_1C6D5D974();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v26 = sub_1C6D78300();
      sub_1C6B1C9F0(v5, v7);
      return v26;
    }
  }

  else
  {
    if (qword_1EC1D5A98 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C6D78D30();
    sub_1C6B61080(v18);
    sub_1C6B5F1EC(v18);
    sub_1C6D5D974();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    return sub_1C6D78300();
  }
}

uint64_t sub_1C6D5D8A4()
{
  v1 = *v0;
  sub_1C6C7F778();
  sub_1C6D783A0();
  v2 = sub_1C6D78210();
  v3 = sub_1C6D782A0();

  return v3;
}

uint64_t sub_1C6D5D938()
{
  v1 = *(v0 + 16);
  swift_getObjectType();
  return sub_1C6D79B50();
}

void sub_1C6D5D974()
{
  if (!qword_1EC1D9978)
  {
    v0 = sub_1C6D78360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D9978);
    }
  }
}

unint64_t sub_1C6D5D9C4()
{
  result = qword_1EC1D9980;
  if (!qword_1EC1D9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9980);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionArticle.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  return sub_1C6D78A30();
}

uint64_t Com_Apple_News_Personalization_SessionArticle.legacy.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D603F8(v1 + *(v7 + 20), v6, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) != 1)
  {
    return sub_1C6D602BC(v6, a1, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  sub_1C6D60388(v6, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D78A30();
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  if (qword_1EDCE41F8 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_1EDCE4200;
}

uint64_t Com_Apple_News_Personalization_SessionArticle.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionArticle.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionArticle.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);

  return sub_1C6D5DDB0(a1, v3);
}

uint64_t sub_1C6D5DDB0(uint64_t a1, uint64_t a2)
{
  sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6D5DE8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D5F804(a1, v7, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v8 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);
  sub_1C6D60388(a2 + v8, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D602BC(v7, a2 + v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  return (*(*(v9 - 8) + 56))(a2 + v8, 0, 1, v9);
}

uint64_t Com_Apple_News_Personalization_SessionArticle.legacy.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);
  sub_1C6D60388(v1 + v3, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D602BC(a1, v1 + v3, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionArticle.legacy.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);
  *(v5 + 12) = v14;
  sub_1C6D603F8(v1 + v14, v9, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6D60388(v9, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D78A30();
    v17 = *(v10 + 20);
    if (qword_1EDCE41F8 != -1)
    {
      swift_once();
    }

    *(v13 + v17) = qword_1EDCE4200;
  }

  else
  {
    sub_1C6D602BC(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  return sub_1C6D5E2D8;
}

void sub_1C6D5E2D8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = *(*a1 + 12);
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6D5F804((*a1)[3], v6, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6D60388(v9 + v5, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D602BC(v6, v9 + v5, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
    sub_1C6D6025C(v7, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  else
  {
    sub_1C6D60388(v9 + v5, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D602BC(v7, v9 + v5, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v2);
}

uint64_t Com_Apple_News_Personalization_SessionArticle.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionArticle.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1C6D5F7A0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v7[*(v8 + 56)];
  sub_1C6D5F804(a1, v7, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D5F804(a2, v9, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v11 = *&v7[v10];
  v12 = *(v9 + v10);
  if (v11 != v12)
  {
    v13 = *&v7[v10];

    v14 = sub_1C6D2D7CC(v11, v12);

    if (!v14)
    {
      goto LABEL_5;
    }
  }

  sub_1C6D78A40();
  sub_1C6D5FE10(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  if (sub_1C6D79560())
  {
    v15 = 1;
  }

  else
  {
LABEL_5:
    v15 = 0;
  }

  sub_1C6D6025C(v9, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D6025C(v7, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  return v15;
}

uint64_t sub_1C6D5E730(uint64_t a1, uint64_t a2)
{
  sub_1C6D5F7A0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 56);
  sub_1C6D5F804(a1, v7, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D5F804(a2, &v7[v9], type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  LOBYTE(a2) = _s19NewsPersonalization010Com_Apple_a1_B29_SessionArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(v7, &v7[v9]);
  sub_1C6D6025C(&v7[v9], type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D6025C(v7, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  return a2 & 1;
}

uint64_t sub_1C6D5E840()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE5310);
  __swift_project_value_buffer(v0, qword_1EDCE5310);
  sub_1C6D60324(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "legacy";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionArticle._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE5308 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionArticle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }

    else if (result == 2)
    {
      sub_1C6D5EB54(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6D5EB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  sub_1C6D60324(0, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata, v10);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v47 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v41 - v27, 1, 1, v4, v26);
  v30 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);
  sub_1C6D603F8(v53 + v30, v14, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v41 = v16;
  v42 = v15;
  v31 = (*(v16 + 48))(v14, 1, v15);
  if (v31 == 1)
  {
    sub_1C6D60388(v14, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v32 = v48;
  }

  else
  {
    sub_1C6D602BC(v14, v21, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v33 = v45;
    sub_1C6D602BC(v21, v45, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D60388(v28, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v34 = v33;
    v35 = v46;
    sub_1C6D602BC(v34, v46, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6D602BC(v35, v28, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v32 = v48;
    (v29)(v28, 0, 1, v48);
  }

  sub_1C6D5FE10(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v36 = v49;
  sub_1C6D78BB0();
  v37 = v47;
  if (v36)
  {
    return sub_1C6D60388(v28, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  sub_1C6D603F8(v28, v47, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  if ((*(v44 + 48))(v37, 1, v32) == 1)
  {
    sub_1C6D60388(v28, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    return sub_1C6D60388(v37, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  else
  {
    v39 = v43;
    sub_1C6D602BC(v37, v43, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    if (v31 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6D60388(v28, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v40 = v53;
    sub_1C6D60388(v53 + v30, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D602BC(v39, v40 + v30, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    return (*(v41 + 56))(v40 + v30, 0, 1, v42);
  }
}

uint64_t Com_Apple_News_Personalization_SessionArticle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1C6D78CC0(), !v4))
  {
    result = sub_1C6D5F1F8(v3, a1, a2, a3);
    if (!v4)
    {
      v12 = v3 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 24);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6D5F1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D603F8(a1 + *(v13 + 20), v8, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    return sub_1C6D60388(v8, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  }

  sub_1C6D602BC(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D5FE10(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D78CF0();
  return sub_1C6D6025C(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
}

uint64_t Com_Apple_News_Personalization_SessionArticle.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D5FE10(&qword_1EC1D9990, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D5F4C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  return sub_1C6D78A30();
}

uint64_t sub_1C6D5F590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D5FE10(&qword_1EC1D99A0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D5F60C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE5308 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D5F6B4(uint64_t a1)
{
  v2 = sub_1C6D5FE10(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D5F720()
{
  sub_1C6D5FE10(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);

  return sub_1C6D78C20();
}

void sub_1C6D5F7A0()
{
  if (!qword_1EC1D9988)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9988);
    }
  }
}

uint64_t sub_1C6D5F804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B15_SessionArticleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  sub_1C6D5F7A0();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v39 - v16;
  sub_1C6D601C8();
  v19 = v18;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_10;
  }

  v39 = v5;
  v40 = v13;
  v41 = v8;
  v42 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v23 = *(v42 + 20);
  v24 = *(v19 + 48);
  sub_1C6D603F8(a1 + v23, v22, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D603F8(a2 + v23, &v22[v24], &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v25 = *(v10 + 48);
  if (v25(v22, 1, v9) == 1)
  {
    if (v25(&v22[v24], 1, v9) == 1)
    {
      sub_1C6D60388(v22, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
LABEL_14:
      v37 = *(v42 + 24);
      sub_1C6D78A40();
      sub_1C6D5FE10(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v26 = sub_1C6D79560();
      return v26 & 1;
    }

    goto LABEL_9;
  }

  sub_1C6D603F8(v22, v17, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  if (v25(&v22[v24], 1, v9) == 1)
  {
    sub_1C6D6025C(v17, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
LABEL_9:
    sub_1C6D6025C(v22, sub_1C6D601C8);
    goto LABEL_10;
  }

  v27 = &v22[v24];
  v28 = v40;
  sub_1C6D602BC(v27, v40, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v29 = v41;
  v30 = &v41[*(v39 + 48)];
  sub_1C6D5F804(v17, v41, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D5F804(v28, v30, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v31 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v32 = *(v29 + v31);
  v33 = *(v30 + v31);
  if (v32 == v33 || (v34 = *(v29 + v31), , , v35 = sub_1C6D2D7CC(v32, v33), , , v35))
  {
    sub_1C6D78A40();
    sub_1C6D5FE10(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    v36 = sub_1C6D79560();
    sub_1C6D6025C(v28, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D6025C(v30, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6D6025C(v29, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6D6025C(v17, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D60388(v22, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if (v36)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_1C6D6025C(v28, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D6025C(v30, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6D6025C(v29, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6D6025C(v17, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D60388(v22, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  }

LABEL_10:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1C6D5FE10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6D5FFA0()
{
  sub_1C6D60324(319, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6D60064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1C6B35080);
}

uint64_t sub_1C6D600BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1C6B3513C);
}

uint64_t sub_1C6D60124(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1C6D601C8()
{
  if (!qword_1EC1D99A8)
  {
    sub_1C6D60324(255, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D99A8);
    }
  }
}

uint64_t sub_1C6D6025C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6D602BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6D60324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6D60388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6D60324(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6D603F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6D60324(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

BOOL FeatureState.isEnabled.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = (*(*(*(a1 + 16) - 8) + 48))(v5, 1);
  if (v6 != 1)
  {
    (*(v2 + 8))(v5, a1);
  }

  return v6 != 1;
}

uint64_t ConfigurationManagerType.fetchArticleEmbeddingsConfigurationIfNeeded(cachedOnly:)()
{
  sub_1C6D783A0();
  v0 = sub_1C6D78210();
  sub_1C6B0C69C(0, &qword_1EDCE6530, 0x1E69B53D0);
  v1 = sub_1C6D782B0();

  return v1;
}

double StatelessPersonalizationConfiguration.init(articleEmbeddingsConfiguration:featureConfiguration:personalizationTreatment:statelessConfiguration:statelessAllowedForExtensions:trainingConfiguration:)@<D0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, void *a6@<X5>, void *a7@<X8>)
{
  v9 = a3;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        if (a6)
        {
          *a7 = a1;
          a7[1] = a2;
          a7[2] = a3;
          a7[3] = a4;
          a7[4] = a5 & 1;
          a7[5] = a6;
          return result;
        }

        sub_1C6B0C69C(0, &qword_1EDCEA8B8, 0x1E69E9BF8);
        v16 = sub_1C6D79BD0();
        sub_1C6D79AC0();
        sub_1C6D78D30();
      }

      else
      {
        sub_1C6D79AB0();
        sub_1C6B0C69C(0, &qword_1EDCEA8B8, 0x1E69E9BF8);
        v15 = sub_1C6D79BD0();
        sub_1C6D78D30();

        v9 = a6;
      }
    }

    else
    {
      sub_1C6D79AB0();
      sub_1C6B0C69C(0, &qword_1EDCEA8B8, 0x1E69E9BF8);
      v14 = sub_1C6D79BD0();
      sub_1C6D78D30();

      v9 = a4;
    }
  }

  else
  {
    sub_1C6D79AB0();
    sub_1C6B0C69C(0, &qword_1EDCEA8B8, 0x1E69E9BF8);
    v13 = sub_1C6D79BD0();
    sub_1C6D78D30();

    v9 = a2;
  }

  result = 0.0;
  *(a7 + 1) = 0u;
  *(a7 + 2) = 0u;
  *a7 = 0u;
  return result;
}

__n128 Configuration.init(articleEmbeddingsScoringState:clientSideEngagementBoostEnabled:fallbackToReverseChronSorting:newsTabiPersonalizationState:personalizationTreatment:statelessPersonalizationState:extensionStatelessPersonalizationState:publisherDampeningConfig:shadowPublisherDampeningConfig:statelessPersonalizationPublisherFavorability:personalizationAnalyticsEnabled:tabiTagScoringEnabled:tabiCohortMembershipsEnabled:aggregatesInXavierEnabled:aggregatesInExtensionsXavierEnabled:tabiScoringInExtensionsEnabled:)@<Q0>(uint64_t *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, char a17)
{
  v17 = *a1;
  v18 = *a4;
  v19 = *a7;
  *a9 = v17;
  *(a9 + 8) = a2;
  *(a9 + 9) = a3;
  *(a9 + 16) = v18;
  *(a9 + 24) = a5;
  v20 = *(a6 + 16);
  *(a9 + 32) = *a6;
  *(a9 + 48) = v20;
  result = *(a6 + 32);
  *(a9 + 64) = result;
  *(a9 + 80) = v19;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  *(a9 + 104) = a11;
  *(a9 + 112) = a12;
  *(a9 + 113) = a13;
  *(a9 + 114) = a14;
  *(a9 + 115) = a15;
  *(a9 + 116) = a16;
  *(a9 + 117) = a17;
  return result;
}

uint64_t FeatureState.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  type metadata accessor for FeatureState.Errors();
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

uint64_t FeatureState.Feature.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1C6D79F50();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t FeatureState.Feature.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_1C6D60B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1C6D60C0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1C6D60C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1C6D60CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1C6D60D58@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return FeatureState.Feature.init(rawValue:)(a1);
}

unint64_t sub_1C6D60D64@<X0>(unint64_t *a1@<X8>)
{
  result = FeatureState.Feature.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id Configuration.articleEmbeddingsScoringState.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id Configuration.newsTabiPersonalizationState.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

id Configuration.statelessPersonalizationState.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1C6B16E58(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C6D60E88(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1C6D61008(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1C6D61234(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C6D6127C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C6D612D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 118))
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

uint64_t sub_1C6D61320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 118) = 1;
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

    *(result + 118) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[*(v8 + 24)];
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked()
{
  result = qword_1EDCE42A8;
  if (!qword_1EDCE42A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked() + 20);
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked() + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6D61730@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[*(v9 + 24)];
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6D618C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked() + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleDisliked.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked() + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    v20 = &v15[*(v10 + 24)];
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventArticleDisliked.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleDisliked.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked() + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6D61E90()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D99B8);
  __swift_project_value_buffer(v0, qword_1EC1D99B8);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "article";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleDisliked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D99B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D62130();
    }
  }

  return result;
}

uint64_t sub_1C6D62130()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D62B7C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.traverse<A>(visitor:)()
{
  result = sub_1C6D6223C(v0);
  if (!v1)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6D6223C(uint64_t a1)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
  sub_1C6B482A8(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B4833C(v5);
  }

  sub_1C6B483C8(v5, v10);
  sub_1C6D62B7C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
  sub_1C6D62B7C(&qword_1EC1D99D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D62518(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D62B7C(&qword_1EC1D99E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D62594@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D99B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D6263C(uint64_t a1)
{
  v2 = sub_1C6D62B7C(&qword_1EC1D83C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D626A8()
{
  sub_1C6D62B7C(&qword_1EC1D83C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B28_SessionEventArticleDislikedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  sub_1C6B49A50();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked() + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6D62B7C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6D62B7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  sub_1C6C44D7C(v1 + *(v7 + 24), v6, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6C44DFC(v6, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen()
{
  result = qword_1EDCE37F0;
  if (!qword_1EDCE37F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  v3 = &a1[v2[5]];
  sub_1C6D78A30();
  v4 = v2[6];
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[7];
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen() + 28);
  sub_1C6C44DFC(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen() + 24);
  sub_1C6C44DFC(v1 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  sub_1C6C44D7C(v0 + *(v6 + 28), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6C44DFC(v5, &qword_1EDCDFD00, v1);
  return v8;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  sub_1C6C44D7C(v1 + *(v8 + 28), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C44DFC(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6D63310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  sub_1C6C44D7C(a1 + *(v8 + 24), v7, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C44DFC(v7, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  return result;
}

uint64_t sub_1C6D634C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen() + 24);
  sub_1C6C44DFC(a2 + v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen() + 24);
  *(v5 + 12) = v16;
  sub_1C6C44D7C(v1 + v16, v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C44DFC(v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6C42988;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.hasMetadata.getter()
{
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  sub_1C6C44D7C(v0 + *(v5 + 24), v4, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6C44DFC(v4, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen() + 24);
  sub_1C6C44DFC(v0 + v1, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1C6D63A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  sub_1C6C44D7C(a1 + *(v9 + 28), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6C44DFC(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6D63BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen() + 28);
  sub_1C6C44DFC(a2 + v10, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen() + 28);
  *(v5 + 12) = v16;
  sub_1C6C44D7C(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C44DFC(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6C43400;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen() + 28);
  sub_1C6C44DFC(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6D6411C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D99F0);
  __swift_project_value_buffer(v0, qword_1EC1D99F0);
  sub_1C6C450C0(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D807C0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  v13 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v13 = "duration";
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D99F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C6D64560();
        break;
      case 2:
        sub_1C6D644AC();
        break;
      case 1:
        sub_1C6D78B50();
        break;
    }
  }

  return result;
}

uint64_t sub_1C6D644AC()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen() + 24);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6D65684(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6D64560()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen() + 28);
  sub_1C6D78A00();
  sub_1C6D65684(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6D646C8(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1C6D648EC(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6D646C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  sub_1C6C44D7C(a1 + *(v14 + 24), v8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6C44DFC(v8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6D65684(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6C02E68(v13);
}

uint64_t sub_1C6D648EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  sub_1C6C44D7C(a1 + *(v15 + 28), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6C44DFC(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6D65684(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  sub_1C6D65684(&qword_1EC1D9A08, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D64C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D65684(&qword_1EC1D9A18, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D64C88@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D99F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D64D30(uint64_t a1)
{
  v2 = sub_1C6D65684(qword_1EDCE3808, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D64D9C()
{
  sub_1C6D65684(qword_1EDCE3808, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B41Storage_CompressedSessionEventArticleSeenV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1C6D78A00();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69AAB70];
  v8 = MEMORY[0x1E69E6720];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = &v52 - v11;
  sub_1C6C45124(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v7);
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v52 - v15;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v52 - v23;
  sub_1C6C45124(0, &qword_1EC1D68C8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v26 = v25;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v52 - v28;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v53 = v13;
  v55 = v4;
  v54 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  v30 = *(v54 + 24);
  v31 = *(v26 + 48);
  v56 = a1;
  sub_1C6C44D7C(a1 + v30, v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v57 = a2;
  sub_1C6C44D7C(a2 + v30, &v29[v31], qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v32 = *(v17 + 48);
  if (v32(v29, 1, v16) != 1)
  {
    sub_1C6C44D7C(v29, v24, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    if (v32(&v29[v31], 1, v16) != 1)
    {
      sub_1C6B3E2B0(&v29[v31], v20);
      v36 = _s19NewsPersonalization010Com_Apple_a1_B45Storage_CompressedSessionEventArticleMetadataV2eeoiySbAC_ACtFZ_0(v24, v20);
      sub_1C6C02E68(v20);
      sub_1C6C02E68(v24);
      sub_1C6C44DFC(v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      if ((v36 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_1C6C02E68(v24);
LABEL_7:
    v33 = &qword_1EC1D68C8;
    v34 = qword_1EDCE2DF8;
    v35 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
LABEL_15:
    sub_1C6C4519C(v29, v33, v34, v35);
    goto LABEL_16;
  }

  if (v32(&v29[v31], 1, v16) != 1)
  {
    goto LABEL_7;
  }

  sub_1C6C44DFC(v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_9:
  v37 = v54;
  v38 = *(v54 + 28);
  v39 = *(v53 + 48);
  v40 = MEMORY[0x1E69AAB70];
  v29 = v60;
  sub_1C6C44D7C(v56 + v38, v60, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6C44D7C(v57 + v38, &v29[v39], &qword_1EDCDFD00, v40);
  v41 = v61;
  v42 = *(v61 + 48);
  v43 = v55;
  if (v42(v29, 1, v55) == 1)
  {
    if (v42(&v29[v39], 1, v43) == 1)
    {
      sub_1C6C44DFC(v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_19:
      v51 = *(v37 + 20);
      sub_1C6D78A40();
      sub_1C6D65684(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v45 = sub_1C6D79560();
      return v45 & 1;
    }

    goto LABEL_14;
  }

  v44 = v59;
  sub_1C6C44D7C(v29, v59, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v42(&v29[v39], 1, v43) == 1)
  {
    (*(v41 + 8))(v44, v43);
LABEL_14:
    v33 = &qword_1EC1D6F60;
    v34 = &qword_1EDCDFD00;
    v35 = MEMORY[0x1E69AAB70];
    goto LABEL_15;
  }

  v47 = &v29[v39];
  v48 = v58;
  (*(v41 + 32))(v58, v47, v43);
  sub_1C6D65684(&qword_1EC1D6F68, MEMORY[0x1E69AAB70]);
  v49 = sub_1C6D79560();
  v50 = *(v41 + 8);
  v50(v48, v43);
  v50(v44, v43);
  sub_1C6C44DFC(v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v49)
  {
    goto LABEL_19;
  }

LABEL_16:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_1C6D65684(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6D656CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v133 = a2;
  v136 = a3;
  v4 = sub_1C6D77430();
  v125 = *(v4 - 8);
  v126 = v4;
  v5 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v124 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1C6D773B0();
  v114 = *(v115 - 8);
  v7 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D773E0();
  v121 = *(v9 - 8);
  v122 = v9;
  v10 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v119 = &v110 - v13;
  v14 = sub_1C6D77EC0();
  v117 = *(v14 - 8);
  v118 = v14;
  v15 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v116 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E6720];
  sub_1C6CFD4FC(0, &qword_1EDCE5FC0, MEMORY[0x1E69B45B8], MEMORY[0x1E69E6720]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v123 = &v110 - v20;
  v130 = sub_1C6D77E80();
  v132 = *(v130 - 8);
  v21 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v112 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CFD308();
  v24 = v23;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v129 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CFD4FC(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18], v17);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v110 - v29;
  sub_1C6CFD4FC(0, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], v17);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v127 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v110 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v128 = &v110 - v38;
  v134 = sub_1C6D77800();
  v131 = *(v134 - 8);
  v39 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v110 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C47418();
  v42 = v41;
  v43 = *(v41 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v110 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1C6D77290();
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47);
  (*(v51 + 16))(&v110 - v50, a1, v47, v49);
  if (swift_dynamicCast())
  {
    (*(v43 + 8))(v46, v42);
    v52 = sub_1C6D77270();
    v53 = v137;
    v54 = sub_1C6D77330();
    v56 = v55;

    if (!v53)
    {
      sub_1C6CFD560(&qword_1EDCE5F50, MEMORY[0x1E69B4778]);
      sub_1C6D75AF0();
      v137 = 0;
      sub_1C6D777C0();
      v58 = sub_1C6D77E60();
      v59 = *(v58 - 8);
      v60 = (*(v59 + 48))(v30, 1, v58);
      v111 = v56;
      v110 = v54;
      if (v60 == 1)
      {
        sub_1C6CFD430(v30, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
        v61 = 1;
        v62 = v128;
      }

      else
      {
        v62 = v128;
        sub_1C6D77E50();
        (*(v59 + 8))(v30, v58);
        v61 = 0;
      }

      v63 = v132;
      v64 = *(v132 + 56);
      v65 = v130;
      v64(v62, v61, 1, v130);
      (*(v63 + 104))(v36, *MEMORY[0x1E69B4B58], v65);
      v64(v36, 0, 1, v65);
      v66 = *(v24 + 48);
      v67 = v129;
      sub_1C6CFD39C(v62, v129);
      sub_1C6CFD39C(v36, v67 + v66);
      v68 = *(v63 + 48);
      if (v68(v67, 1, v65) == 1)
      {
        v69 = MEMORY[0x1E69B4BF0];
        sub_1C6CFD430(v36, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0]);
        sub_1C6CFD430(v62, &qword_1EDCE5E40, v69);
        v70 = v68(v67 + v66, 1, v65);
        v71 = v135;
        v72 = v136;
        if (v70 == 1)
        {
          sub_1C6CFD430(v67, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0]);
          goto LABEL_21;
        }
      }

      else
      {
        v73 = v127;
        sub_1C6CFD39C(v67, v127);
        if (v68(v67 + v66, 1, v65) != 1)
        {
          v82 = v132;
          v83 = v112;
          (*(v132 + 32))(v112, v67 + v66, v65);
          sub_1C6CFD560(&qword_1EDCE5E48, MEMORY[0x1E69B4BF0]);
          v84 = sub_1C6D79560();
          v85 = *(v82 + 8);
          v85(v83, v65);
          v86 = MEMORY[0x1E69B4BF0];
          sub_1C6CFD430(v36, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0]);
          sub_1C6CFD430(v62, &qword_1EDCE5E40, v86);
          v85(v127, v65);
          sub_1C6CFD430(v67, &qword_1EDCE5E40, v86);
          v71 = v135;
          v72 = v136;
          if (v84)
          {
LABEL_21:
            if (qword_1EDCEA6A0 == -1)
            {
              goto LABEL_29;
            }

            goto LABEL_30;
          }

LABEL_15:
          v75 = v123;
          sub_1C6D777B0();
          v76 = sub_1C6D774A0();
          v77 = *(v76 - 8);
          if ((*(v77 + 48))(v75, 1, v76) == 1)
          {
            sub_1C6CFD430(v75, &qword_1EDCE5FC0, MEMORY[0x1E69B45B8]);
          }

          else
          {
            v78 = sub_1C6D77490();
            v79 = v75;
            v81 = v80;
            (*(v77 + 8))(v79, v76);
            if (v78 == 0xD000000000000015 && 0x80000001C6DA75C0 == v81)
            {

              v71 = v135;
            }

            else
            {
              v87 = sub_1C6D7A130();

              v71 = v135;
              if ((v87 & 1) == 0)
              {
                if (qword_1EDCEA6A0 == -1)
                {
LABEL_29:
                  sub_1C6CFD4FC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
                  v103 = swift_allocObject();
                  *(v103 + 16) = xmmword_1C6D7E630;
                  v104 = v124;
                  v105 = v135;
                  sub_1C6D77790();
                  v106 = sub_1C6D77420();
                  v108 = v107;
                  (*(v125 + 8))(v104, v126);
                  *(v103 + 56) = MEMORY[0x1E69E6158];
                  *(v103 + 64) = sub_1C6B2064C();
                  *(v103 + 32) = v106;
                  *(v103 + 40) = v108;
                  sub_1C6D79AC0();
                  sub_1C6D78D30();
                  sub_1C6B1C9F0(v110, v111);

                  (*(v131 + 8))(v105, v134);
                  v109 = sub_1C6D76F90();
                  (*(*(v109 - 8) + 56))(v72, 1, 1, v109);
                  return;
                }

LABEL_30:
                swift_once();
                goto LABEL_29;
              }
            }
          }

          v88 = v116;
          sub_1C6D777D0();
          v89 = v119;
          sub_1C6D77EB0();
          (*(v117 + 8))(v88, v118);
          v91 = v120;
          v90 = v121;
          v92 = v122;
          (*(v121 + 104))(v120, *MEMORY[0x1E69B44C8], v122);
          sub_1C6CFD560(&unk_1EDCE5FE0, MEMORY[0x1E69B4538]);
          LOBYTE(v88) = sub_1C6D79560();
          v93 = *(v90 + 8);
          v93(v91, v92);
          v93(v89, v92);
          if ((v88 & 1) == 0)
          {
            v94 = v134;
            v72[3] = v134;
            v95 = MEMORY[0x1E69B4778];
            v72[4] = sub_1C6CFD560(&qword_1EDCE5F68, MEMORY[0x1E69B4778]);
            v72[5] = sub_1C6CFD560(&qword_1EDCE5F60, v95);
            boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v72);
            v97 = v131;
            (*(v131 + 16))(boxed_opaque_existential_2, v71, v94);
            v98 = v113;
            sub_1C6D777F0();
            v99 = sub_1C6D773A0();
            sub_1C6B1C9F0(v110, v111);
            (*(v114 + 8))(v98, v115);
            (*(v97 + 8))(v71, v94);
            v72[6] = v99;
            v100 = *MEMORY[0x1E69E35F0];
            v101 = sub_1C6D76F90();
            v102 = *(v101 - 8);
            (*(v102 + 104))(v72, v100, v101);
            (*(v102 + 56))(v72, 0, 1, v101);
            return;
          }

          if (qword_1EDCEA6A0 == -1)
          {
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        v74 = MEMORY[0x1E69B4BF0];
        sub_1C6CFD430(v36, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0]);
        sub_1C6CFD430(v62, &qword_1EDCE5E40, v74);
        (*(v132 + 8))(v73, v65);
        v71 = v135;
        v72 = v136;
      }

      sub_1C6CFD4A0(v67);
      goto LABEL_15;
    }
  }

  else
  {
    v57 = sub_1C6D76F90();
    (*(*(v57 - 8) + 56))(v136, 1, 1, v57);
  }
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[*(v8 + 24)];
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited()
{
  result = qword_1EDCE4808;
  if (!qword_1EDCE4808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited() + 20);
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited() + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6D66C10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[*(v9 + 24)];
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6D66DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited() + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventTrackVisited.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited() + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    v20 = &v15[*(v10 + 24)];
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventTrackVisited.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventTrackVisited.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited() + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6D67370()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9A20);
  __swift_project_value_buffer(v0, qword_1EC1D9A20);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "article";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTrackVisited._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5C00 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9A20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D67610();
    }
  }

  return result;
}

uint64_t sub_1C6D67610()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D6805C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.traverse<A>(visitor:)()
{
  result = sub_1C6D6771C(v0);
  if (!v1)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6D6771C(uint64_t a1)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
  sub_1C6B482A8(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B4833C(v5);
  }

  sub_1C6B483C8(v5, v10);
  sub_1C6D6805C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
  sub_1C6D6805C(&qword_1EC1D9A38, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D679F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D6805C(&qword_1EC1D9A50, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D67A74@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5C00 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9A20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D67B1C(uint64_t a1)
{
  v2 = sub_1C6D6805C(&qword_1EC1D83D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D67B88()
{
  sub_1C6D6805C(&qword_1EC1D83D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B25_SessionEventTrackVisitedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  sub_1C6B49A50();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited() + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6D6805C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6D6805C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6D680A4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a2;
  v6 = sub_1C6D77380();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C6D77A10();
  v44 = *(v49 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B90950();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D77290();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  (*(v22 + 16))(&v41 - v21, a1, v18, v20);
  if (swift_dynamicCast())
  {
    (*(v14 + 8))(v17, v13);
    v23 = sub_1C6D77270();
    v24 = sub_1C6D77330();
    v26 = v25;

    if (!v3)
    {
      sub_1C6D68678(&qword_1EDCE5F08, MEMORY[0x1E69B48C0]);
      v27 = v46;
      v28 = v49;
      sub_1C6D75AF0();
      sub_1C6D77A00();
      v30 = sub_1C6D77360();
      v32 = v31;
      (*(v42 + 8))(v9, v43);
      if (v32)
      {
        (*(v44 + 8))(v27, v28);
        sub_1C6B1C9F0(v24, v26);
        *a3 = v30;
        a3[1] = v32;
        v33 = *MEMORY[0x1E69E35E8];
        v34 = sub_1C6D76F90();
        v35 = *(v34 - 8);
        (*(v35 + 104))(a3, v33, v34);
        (*(v35 + 56))(a3, 0, 1, v34);
      }

      else
      {
        v45 = a3;
        if (qword_1EDCE03B8 != -1)
        {
          swift_once();
        }

        v43 = qword_1EDCE03C0;
        sub_1C6D79AA0();
        sub_1C6B1D314();
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1C6D7E630;
        v47 = 0;
        v48 = 0xE000000000000000;
        sub_1C6D79E60();
        v37 = v28;
        v38 = v47;
        v39 = v48;
        *(v36 + 56) = MEMORY[0x1E69E6158];
        *(v36 + 64) = sub_1C6B2064C();
        *(v36 + 32) = v38;
        *(v36 + 40) = v39;
        sub_1C6D78D30();
        sub_1C6B1C9F0(v24, v26);

        (*(v44 + 8))(v27, v37);
        v40 = sub_1C6D76F90();
        (*(*(v40 - 8) + 56))(v45, 1, 1, v40);
      }
    }
  }

  else
  {
    v29 = sub_1C6D76F90();
    (*(*(v29 - 8) + 56))(a3, 1, 1, v29);
  }
}

uint64_t sub_1C6D68678(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FileLog.File.init(data:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t FileLog.log(file:)(uint64_t *a1)
{
  v20 = *v1;
  v3 = sub_1C6D78E30();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C6D78E80();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  if (qword_1EDCE6718 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  v16 = v20;
  v15[6] = v14;
  v15[7] = v16;
  aBlock[4] = sub_1C6D6DBBC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6B20B90;
  aBlock[3] = &block_descriptor_17;
  v17 = _Block_copy(aBlock);

  sub_1C6B1CD10(v11, v12);

  sub_1C6D78E60();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1C6D70320(qword_1EDCE7FD0, MEMORY[0x1E69E7F60]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1C6B10FF4(0, &qword_1EDCE7F60, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1C6D70368(&qword_1EDCE7F58, &qword_1EDCE7F60, v18);
  sub_1C6D79CB0();
  MEMORY[0x1CCA55FE0](0, v10, v6, v17);
  _Block_release(v17);
  (*(v22 + 8))(v6, v3);
  (*(v7 + 8))(v10, v21);
}

void sub_1C6D68A68(void **a1)
{
  v2 = *(sub_1C6D75DE0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C6C74048(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1C6D6E03C(v5);
  *a1 = v3;
}

uint64_t FileLog.File.init(name:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v10 = sub_1C6D75B70();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1C6D75B60();
  v13 = sub_1C6D75B50();
  v15 = v14;

  if (v4)
  {
  }

  else
  {
    *a4 = v13;
    a4[1] = v15;
    a4[2] = a1;
    a4[3] = a2;
  }

  return __swift_destroy_boxed_opaque_existential_1(a3);
}

uint64_t sub_1C6D68BE0@<X0>(uint64_t a1@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = sub_1C6D75CD0();
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D78550();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B10FF4(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v58 - v12;
  v14 = sub_1C6D75DE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v58 - v20;
  v21 = type metadata accessor for FileLog.TargetDirectory(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6D700D4(v64, v24, type metadata accessor for FileLog.TargetDirectory);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v15 + 32))(a1, v24, v14);
    v27 = 0;
    v28 = a1;
    goto LABEL_16;
  }

  v64 = a1;
  v25 = *v24;
  v59 = v24[1];
  v26 = v24[2];
  sub_1C6D78490();
  sub_1C6D78540();
  (*(v6 + 8))(v9, v5);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v58 = v25;
    v29 = v60;
    v66 = v59;
    v67 = v26;
    v31 = v61;
    v30 = v62;
    (*(v61 + 104))(v60, *MEMORY[0x1E6968F58], v62);
    sub_1C6B16CF0();
    sub_1C6D75DC0();
    (*(v31 + 8))(v29, v30);

    v32 = *(v15 + 8);
    v32(v13, v14);
    v62 = v15;
    v33 = *(v15 + 32);
    v34 = v63;
    v33(v63, v18, v14);
    if (sub_1C6D75D10())
    {
      v35 = [objc_opt_self() defaultManager];
      v36 = sub_1C6D75D30();
      v66 = 0;
      v37 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v66];

      if (v37)
      {
        v38 = v66;

        v28 = v64;
        v33(v64, v34, v14);
        v27 = 0;
LABEL_15:
        v15 = v62;
        goto LABEL_16;
      }

      v41 = v14;
      v45 = v66;
      v46 = sub_1C6D75CC0();

      swift_willThrow();
      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      v61 = qword_1EDCE7930;
      LODWORD(v60) = sub_1C6D79AA0();
      sub_1C6B1D314();
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1C6D7EB10;
      sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
      v48 = v63;
      v49 = sub_1C6D7A0E0();
      v51 = v50;
      v52 = MEMORY[0x1E69E6158];
      *(v47 + 56) = MEMORY[0x1E69E6158];
      v53 = sub_1C6B2064C();
      *(v47 + 64) = v53;
      *(v47 + 32) = v49;
      *(v47 + 40) = v51;
      v66 = 0;
      v67 = 0xE000000000000000;
      v65 = v46;
      sub_1C6B10A98(0, &qword_1EDCEA410);
      sub_1C6D79E60();
      v54 = v66;
      v55 = v67;
      *(v47 + 96) = v52;
      *(v47 + 104) = v53;
      *(v47 + 72) = v54;
      *(v47 + 80) = v55;
      v14 = v41;
      sub_1C6D78D30();

      v44 = v48;
    }

    else
    {
      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1D314();
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1C6D7E630;
      sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
      v40 = sub_1C6D7A0E0();
      v41 = v14;
      v43 = v42;
      *(v39 + 56) = MEMORY[0x1E69E6158];
      *(v39 + 64) = sub_1C6B2064C();
      *(v39 + 32) = v40;
      *(v39 + 40) = v43;
      v14 = v41;
      sub_1C6D78D30();

      v44 = v34;
    }

    v32(v44, v41);
    v27 = 1;
    v28 = v64;
    goto LABEL_15;
  }

  sub_1C6D702B0(v13, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
  v27 = 1;
  v28 = v64;
LABEL_16:
  result = (*(v15 + 56))(v28, v27, 1, v14);
  v57 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FileLog.targetDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B10FF4(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL;
  swift_beginAccess();
  sub_1C6B18038(v1 + v7, v6);
  v8 = sub_1C6D75DE0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_1C6D702B0(v6, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
    sub_1C6D68BE0(a1);
    swift_beginAccess();
    sub_1C6D6DBCC(a1, v1 + v7);
    return swift_endAccess();
  }

  else
  {
    (*(v9 + 32))(a1, v6, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }
}

uint64_t sub_1C6D695AC()
{
  v0 = sub_1C6D79AE0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = sub_1C6D79AF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D78E80();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
  sub_1C6D78E50();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8098], v2);
  v11[1] = MEMORY[0x1E69E7CC0];
  sub_1C6D70320(&unk_1EDCE7EB8, MEMORY[0x1E69E8030]);
  v9 = MEMORY[0x1E69E8030];
  sub_1C6B10FF4(0, &qword_1EDCE7F30, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1C6D70368(&qword_1EDCE7F28, &qword_1EDCE7F30, v9);
  sub_1C6D79CB0();
  result = sub_1C6D79B20();
  qword_1EDCE6720 = result;
  return result;
}

uint64_t FileLog.__allocating_init(configuration:targetDirectory:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  FileLog.init(configuration:targetDirectory:)(a1, a2);
  return v7;
}

uint64_t sub_1C6D6989C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v53 = *MEMORY[0x1E69E9840];
  v3 = sub_1C6D75CD0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1C6D75F80();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D75DE0();
  v13 = *(v12 - 8);
  v49 = v12;
  v50 = v13;
  v14 = *(v13 + 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = *(a1 + 24);
  v44 = *(a1 + 16);
  v45 = v20;
  sub_1C6D75D20();
  sub_1C6D75F70();
  v21 = sub_1C6D75F60();
  v23 = v22;
  (*(v8 + 8))(v11, v48);
  v51 = v21;
  v52 = v23;
  v24 = *MEMORY[0x1E6968F58];
  v41 = v4[13];
  v41(v7, v24, v3);
  v43 = sub_1C6B16CF0();
  sub_1C6D75DC0();
  v25 = v4[1];
  v46 = v7;
  v26 = v7;
  v48 = v3;
  v27 = v3;
  v28 = v49;
  v29 = v50;
  v42 = v25;
  v25(v26, v27);

  v30 = *(v29 + 1);
  v30(v16, v28);
  v31 = [objc_opt_self() defaultManager];
  v50 = v19;
  v32 = sub_1C6D75D30();
  v51 = 0;
  LOBYTE(v16) = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:&v51];

  v33 = v51;
  if (v16)
  {
    v51 = v44;
    v52 = v45;
    v34 = v46;
    v35 = v48;
    v41(v46, *MEMORY[0x1E6968F68], v48);
    v36 = v33;

    v37 = v50;
    sub_1C6D75DC0();
    v42(v34, v35);

    result = (v30)(v37, v28);
  }

  else
  {
    v39 = v51;
    sub_1C6D75CC0();

    swift_willThrow();
    result = (v30)(v50, v28);
  }

  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6D69CB4@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  sub_1C6B68CA8();
  v76 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v73 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v62 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v62 - v9;
  sub_1C6B68D1C();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v66 = &v62 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v69 = &v62 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v65 = &v62 - v27;
  v28 = OBJC_IVAR____TtC19NewsPersonalization7FileLog_files;
  swift_beginAccess();
  v67 = v1;
  v29 = *(v1 + v28);
  v30 = *(v29 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  v77 = v12;
  if (v30)
  {
    v63 = v21;
    v64 = v15;
    v79 = MEMORY[0x1E69E7CC0];

    sub_1C6B39B88(0, v30, 0);
    v31 = v79;
    v32 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v62 = v29;
    v33 = v29 + v32;
    v34 = *(v3 + 72);
    v35 = (v12 + 32);
    v71 = (v12 + 16);
    v72 = v34;
    v70 = v18;
    v36 = v74;
    do
    {
      sub_1C6D700D4(v33, v36, sub_1C6B68CA8);
      v37 = v75;
      sub_1C6D700D4(v36, v75, sub_1C6B68CA8);
      v38 = *(v76 + 48);
      v39 = sub_1C6D75DE0();
      v40 = v11;
      v41 = v73;
      (*(*(v39 - 8) + 32))(v73, v37, v39);
      v78 = *v35;
      v78(v41 + v38, &v37[v38], v40);
      (*v71)(v18, v41 + v38, v40);
      sub_1C6D7013C(v41, sub_1C6B68CA8);
      sub_1C6D7013C(v36, sub_1C6B68CA8);
      v79 = v31;
      v43 = *(v31 + 16);
      v42 = *(v31 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1C6B39B88(v42 > 1, v43 + 1, 1);
        v31 = v79;
      }

      *(v31 + 16) = v43 + 1;
      v12 = v77;
      v18 = v70;
      v78(v31 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v77 + 72) * v43, v70, v40);
      v33 += v72;
      --v30;
      v11 = v40;
    }

    while (v30);

    v21 = v63;
    v15 = v64;
  }

  v44 = [objc_opt_self() bytes];
  v45 = sub_1C6B0C69C(0, &unk_1EDCE7E40, 0x1E696B050);
  v46 = v69;
  sub_1C6D75B80();
  v47 = v66;
  v48 = v46;
  v49 = *(v12 + 16);
  v49(v66, v48, v11);
  v50 = *(v31 + 16);
  if (v50)
  {
    v51 = *(v12 + 80);
    v78 = (v12 + 16);
    v52 = v31 + ((v51 + 32) & ~v51);
    v53 = *(v12 + 72);
    v75 = v49;
    v76 = v53;
    v54 = v12;
    v55 = v12 + 8;
    v56 = (v54 + 32);
    v73 = (v55 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v74 = v45;
    v57 = v21;
    do
    {
      (v75)(v57, v52, v11);
      sub_1C6D75B90();
      v58 = *v55;
      (*v55)(v57, v11);
      v58(v47, v11);
      (*v56)(v47, v15, v11);
      v52 += v76;
      --v50;
    }

    while (v50);

    v12 = v77;
  }

  else
  {

    v58 = *(v12 + 8);
  }

  v58(v69, v11);
  v59 = v65;
  (*(v12 + 32))(v65, v47, v11);
  v60 = *(v67 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_configuration);
  sub_1C6D75BB0();
  return (v58)(v59, v11);
}

void sub_1C6D6A2BC(char *a1)
{
  v126 = a1;
  v130 = *MEMORY[0x1E69E9840];
  sub_1C6B68CA8();
  v3 = v2;
  v106 = *(v2 - 8);
  v4 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B68D1C();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D75CA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D75DE0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  if (!*(v1 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_targetDirectoryProcessingStatus))
  {
    v112 = v1;
    v124 = v14;
    *&v125 = v9;
    v116 = v96 - v24;
    v100 = v26;
    v101 = v25;
    v109 = v13;
    v102 = v12;
    v103 = v8;
    v110 = v6;
    v104 = v3;
    v105 = v23;
    v97 = OBJC_IVAR____TtC19NewsPersonalization7FileLog_targetDirectoryProcessingStatus;
    v115 = objc_opt_self();
    v27 = [v115 defaultManager];
    v28 = sub_1C6D75D30();
    sub_1C6B10FF4(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
    v120 = v29;
    v30 = swift_allocObject();
    v111 = xmmword_1C6D7EB10;
    *(v30 + 16) = xmmword_1C6D7EB10;
    v31 = *MEMORY[0x1E695DA98];
    v32 = *MEMORY[0x1E695DB50];
    *(v30 + 32) = *MEMORY[0x1E695DA98];
    *(v30 + 40) = v32;
    type metadata accessor for URLResourceKey(0);
    v33 = v31;
    v119 = v32;
    v34 = sub_1C6D79760();

    v128 = 0;
    v35 = [v27 contentsOfDirectoryAtURL:v28 includingPropertiesForKeys:v34 options:5 error:&v128];

    v36 = v128;
    if (v35)
    {
      v37 = v105;
      v38 = sub_1C6D79780();
      v39 = v36;

      v128 = v38;

      sub_1C6D68A68(&v128);

      v40 = v128[2];
      v41 = v116;
      if (v40)
      {
        v43 = *(v19 + 16);
        v42 = v19 + 16;
        v123 = v43;
        v44 = (*(v42 + 64) + 32) & ~*(v42 + 64);
        v96[1] = v128;
        v45 = v128 + v44;
        v108 = OBJC_IVAR____TtC19NewsPersonalization7FileLog_files;
        v107 = (v124 + 8);
        v99 = (v125 + 32);
        v98 = OBJC_IVAR____TtC19NewsPersonalization7FileLog_urls;
        v118 = (v42 - 8);
        v117 = *(v42 + 56);
        v125 = xmmword_1C6D7E630;
        v114 = v17;
        v113 = v42;
        do
        {
          v126 = v45;
          v123(v41);
          inited = swift_initStackObject();
          *(inited + 16) = v125;
          v49 = v119;
          *(inited + 32) = v119;
          v50 = v49;
          sub_1C6B20798(inited);
          swift_setDeallocating();
          sub_1C6D7013C(inited + 32, type metadata accessor for URLResourceKey);
          sub_1C6D75CE0();

          sub_1C6D75C90();
          LOBYTE(inited) = v51;
          (*v107)(v17, v109);
          if (inited)
          {
            v124 = v40;
            v52 = MEMORY[0x1E69E6158];
            if (qword_1EDCE7928 != -1)
            {
              swift_once();
            }

            v53 = qword_1EDCE7930;
            sub_1C6B1D314();
            v121 = v54;
            v55 = swift_allocObject();
            *(v55 + 16) = v125;
            sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
            v41 = v116;
            v56 = sub_1C6D7A0E0();
            v57 = v37;
            v59 = v58;
            *(v55 + 56) = v52;
            v60 = sub_1C6B2064C();
            *(v55 + 64) = v60;
            *(v55 + 32) = v56;
            *(v55 + 40) = v59;
            sub_1C6D79AC0();
            v122 = v53;
            sub_1C6D78D30();

            v61 = [v115 defaultManager];
            v62 = sub_1C6D75D30();
            v128 = 0;
            LODWORD(v55) = [v61 removeItemAtURL:v62 error:&v128];

            if (v55)
            {
              v46 = *v118;
              v47 = v128;
              v46(v41, v57);
            }

            else
            {
              v63 = v128;
              v64 = sub_1C6D75CC0();

              swift_willThrow();
              sub_1C6D79AA0();
              v65 = swift_allocObject();
              *(v65 + 16) = v111;
              v66 = sub_1C6D7A0E0();
              v67 = MEMORY[0x1E69E6158];
              *(v65 + 56) = MEMORY[0x1E69E6158];
              *(v65 + 64) = v60;
              *(v65 + 32) = v66;
              *(v65 + 40) = v68;
              v128 = 0;
              v129 = 0xE000000000000000;
              v127 = v64;
              sub_1C6B10A98(0, &qword_1EDCEA410);
              sub_1C6D79E60();
              v69 = v128;
              v70 = v129;
              *(v65 + 96) = v67;
              *(v65 + 104) = v60;
              *(v65 + 72) = v69;
              *(v65 + 80) = v70;
              sub_1C6D78D30();

              (*v118)(v41, v57);
            }

            v37 = v57;
            v17 = v114;
            v40 = v124;
          }

          else
          {
            v71 = [objc_opt_self() bytes];
            sub_1C6B0C69C(0, &unk_1EDCE7E40, 0x1E696B050);
            v72 = v102;
            sub_1C6D75B80();
            v73 = *(v104 + 48);
            v74 = v110;
            (v123)(v110, v41, v37);
            (*v99)(v74 + v73, v72, v103);
            v75 = v112;
            v76 = v108;
            swift_beginAccess();
            v77 = *(v75 + v76);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v75 + v76) = v77;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v77 = sub_1C6B672F8(0, v77[2] + 1, 1, v77);
              *(v112 + v108) = v77;
            }

            v80 = v77[2];
            v79 = v77[3];
            if (v80 >= v79 >> 1)
            {
              v77 = sub_1C6B672F8(v79 > 1, v80 + 1, 1, v77);
            }

            v77[2] = v80 + 1;
            sub_1C6B162C8(v110, v77 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v80, sub_1C6B68CA8);
            *(v112 + v108) = v77;
            swift_endAccess();
            v81 = v101;
            v37 = v105;
            (v123)(v101, v41, v105);
            swift_beginAccess();
            v82 = v100;
            sub_1C6C245D4(v100, v81);
            swift_endAccess();
            v83 = *v118;
            (*v118)(v82, v37);
            v83(v41, v37);
          }

          v45 = &v126[v117];
          --v40;
        }

        while (v40);
      }

      v84 = 2;
    }

    else
    {
      v85 = v128;
      v86 = sub_1C6D75CC0();

      swift_willThrow();
      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1D314();
      v87 = swift_allocObject();
      *(v87 + 16) = v111;
      sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
      v88 = sub_1C6D7A0E0();
      v90 = v89;
      v91 = MEMORY[0x1E69E6158];
      *(v87 + 56) = MEMORY[0x1E69E6158];
      v92 = sub_1C6B2064C();
      *(v87 + 64) = v92;
      *(v87 + 32) = v88;
      *(v87 + 40) = v90;
      v128 = 0;
      v129 = 0xE000000000000000;
      v127 = v86;
      sub_1C6B10A98(0, &qword_1EDCEA410);
      sub_1C6D79E60();
      v93 = v128;
      v94 = v129;
      *(v87 + 96) = v91;
      *(v87 + 104) = v92;
      *(v87 + 72) = v93;
      *(v87 + 80) = v94;
      sub_1C6D78D30();

      v84 = 1;
    }

    *(v112 + v97) = v84;
  }

  v95 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C6D6AFA8(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v53 = a2;
  v52 = sub_1C6D75F50();
  v55 = *(v52 - 8);
  v2 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v43 - v5;
  sub_1C6D7019C();
  v54 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6D75CA0();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  sub_1C6B10FF4(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v51 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  sub_1C6B10FF4(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v47 = xmmword_1C6D7E630;
  *(inited + 16) = xmmword_1C6D7E630;
  v23 = *MEMORY[0x1E695DA98];
  *(inited + 32) = *MEMORY[0x1E695DA98];
  v24 = v23;
  sub_1C6B20798(inited);
  swift_setDeallocating();
  sub_1C6D7013C(inited + 32, type metadata accessor for URLResourceKey);
  v25 = v49;
  sub_1C6D75CE0();
  v45 = v10;
  if (v25)
  {

    v26 = v52;
    (*(v55 + 56))(v21, 1, 1, v52);
  }

  else
  {

    sub_1C6D75C80();
    (*(v46 + 8))(v15, v10);
    v26 = v52;
  }

  v27 = swift_initStackObject();
  *(v27 + 16) = v47;
  *(v27 + 32) = v24;
  v28 = v27 + 32;
  sub_1C6B20798(v27);
  swift_setDeallocating();
  sub_1C6D7013C(v28, type metadata accessor for URLResourceKey);
  v29 = v50;
  sub_1C6D75CE0();
  v30 = v51;

  sub_1C6D75C80();
  (*(v46 + 8))(v29, v45);
  v31 = v55;
  v32 = *(v54 + 48);
  v33 = MEMORY[0x1E6969530];
  sub_1C6D70230(v21, v9, &qword_1EDCEA960, MEMORY[0x1E6969530]);
  sub_1C6D70230(v30, &v9[v32], &qword_1EDCEA960, v33);
  v34 = *(v31 + 48);
  v35 = v34(v9, 1, v26);
  v36 = v34(&v9[v32], 1, v26);
  if (v35 == 1)
  {
    if (v36 != 1)
    {
      sub_1C6D702B0(&v9[v32], &qword_1EDCEA960, MEMORY[0x1E6969530]);
    }

    v37 = 0;
  }

  else if (v36 == 1)
  {
    (*(v31 + 8))(v9, v26);
    v37 = 1;
  }

  else
  {
    v38 = *(v31 + 32);
    v39 = v43;
    v38(v43, v9, v26);
    v40 = v44;
    v38(v44, &v9[v32], v26);
    v37 = sub_1C6D75EE0();
    v41 = *(v31 + 8);
    v41(v40, v26);
    v41(v39, v26);
  }

  return v37 & 1;
}

uint64_t sub_1C6D6B5AC(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v292 = a5;
  v294 = a4;
  *&v285 = a3;
  v284 = a2;
  v300 = *MEMORY[0x1E69E9840];
  sub_1C6D6DFD0();
  v273 = v6;
  v256 = *(v6 - 8);
  v7 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v270 = v245 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1C6B10FF4(0, &qword_1EDCE65B8, sub_1C6D6DFD0, MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v272 = v245 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v277 = (v245 - v14);
  v255 = sub_1C6D75FF0();
  v254 = *(v255 - 8);
  v15 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v255);
  v266 = v245 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B10FF4(0, &qword_1EDCE64F8, sub_1C6B68CA8, MEMORY[0x1E69E6BC0]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v258 = v245 - v19;
  sub_1C6B68CA8();
  v282 = v20;
  v269 = *(v20 - 8);
  v21 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v268 = v245 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v267 = v245 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v274 = v245 - v26;
  sub_1C6B68D1C();
  v259 = v27;
  v275 = *(v27 - 8);
  v28 = *(v275 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v265 = v245 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v264 = v245 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v260 = v245 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v276 = v245 - v35;
  v262 = sub_1C6D75CA0();
  v261 = *(v262 - 1);
  v36 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v262);
  v271 = v245 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v281 = sub_1C6D75F80();
  v280 = *(v281 - 8);
  v38 = *(v280 + 8);
  MEMORY[0x1EEE9AC00](v281);
  v279 = v245 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_1C6D75CD0();
  v288 = *(v287 - 8);
  v40 = v288[8];
  MEMORY[0x1EEE9AC00](v287);
  v42 = v245 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B10FF4(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], v9);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v263 = v245 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v278 = v245 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = v245 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = v245 - v52;
  v54 = sub_1C6D75DE0();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v257 = v245 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v283 = v245 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v286 = v245 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v290 = (v245 - v63);
  MEMORY[0x1EEE9AC00](v64);
  v289 = v245 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v293 = v245 - v67;
  v68 = OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL;
  swift_beginAccess();
  sub_1C6B18038(a1 + v68, v50);
  v69 = *(v55 + 48);
  v70 = v69(v50, 1, v54);
  v291 = v55;
  if (v70 == 1)
  {
    sub_1C6D702B0(v50, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
    sub_1C6D68BE0(v53);
    swift_beginAccess();
    v71 = a1;
    sub_1C6D6DBCC(v53, a1 + v68);
    swift_endAccess();
    if (v69(v53, 1, v54) == 1)
    {
      sub_1C6D702B0(v53, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1D314();
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1C6D7E630;
      *(v72 + 56) = MEMORY[0x1E69E6158];
      *(v72 + 64) = sub_1C6B2064C();
      v73 = v292;
      *(v72 + 32) = v294;
      *(v72 + 40) = v73;

      sub_1C6D78D30();

      goto LABEL_20;
    }

    v77 = v54;
    v252 = v69;
    v75 = *(v291 + 32);
    v76 = (v291 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  }

  else
  {
    v252 = v69;
    v71 = a1;
    v75 = *(v55 + 32);
    v75(v53, v50, v54);
    (*(v55 + 56))(v53, 0, 1, v54);
    v76 = (v55 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v77 = v54;
  }

  v78 = v293;
  v251 = v76;
  v75(v293, v53, v77);
  sub_1C6D6A2BC(v78);
  if (*(v71 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_targetDirectoryProcessingStatus) == 2)
  {
    v250 = v75;
    v79 = v292;
    v296 = v294;
    v297 = v292;
    v80 = v288;
    v81 = v287;
    (v288[13])(v42, *MEMORY[0x1E6968F68], v287);
    sub_1C6B16CF0();
    swift_bridgeObjectRetain_n();
    v82 = v290;
    sub_1C6D75DC0();
    (v80[1])(v42, v81);

    v83 = v289;
    sub_1C6D75D60();
    v84 = *(v291 + 8);
    v253 = v77;
    v287 = v291 + 8;
    v288 = v84;
    (v84)(v82, v77);
    v85 = OBJC_IVAR____TtC19NewsPersonalization7FileLog_urls;
    swift_beginAccess();
    v86 = *(v71 + v85);

    v87 = v83;
    v88 = sub_1C6D04560(v83, v86);

    if (v88)
    {

      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1D314();
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1C6D7E630;
      sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
      v90 = v253;
      v91 = sub_1C6D7A0E0();
      v93 = v92;
      *(v89 + 56) = MEMORY[0x1E69E6158];
      *(v89 + 64) = sub_1C6B2064C();
      *(v89 + 32) = v91;
      *(v89 + 40) = v93;
      sub_1C6D78D30();

      v94 = v288;
      (v288)(v87, v90);
      result = v94(v293, v90);
      goto LABEL_20;
    }

    v97 = v71;
    v249 = v85;
    v296 = v284;
    v297 = v285;
    v298 = v294;
    v299 = v79;
    sub_1C6D6989C(&v296, v286);
    sub_1C6D75E70();
    v98 = v293;
    *&v285 = 0;
    v111 = v290;
    sub_1C6D75D80();
    v112 = v279;
    sub_1C6D75F70();
    sub_1C6D75F60();
    (*(v280 + 1))(v112, v281);
    v113 = v278;
    URL.zipForExport(filename:)(v278);

    v114 = v253;
    v115 = v288;
    (v288)(v111, v253);
    v116 = (v252)(v113, 1, v114);
    v117 = v87;
    if (v116 == 1)
    {
      sub_1C6D702B0(v113, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
      v118 = MEMORY[0x1E69E6158];
      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1D314();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_1C6D7E630;
      *(v119 + 56) = v118;
      *(v119 + 64) = sub_1C6B2064C();
      v120 = v292;
      *(v119 + 32) = v294;
      *(v119 + 40) = v120;
      sub_1C6D78D30();

      v121 = v253;
      v115(v286, v253);
      v115(v87, v121);
      result = (v115)(v98, v121);
      goto LABEL_20;
    }

    v250(v283, v113, v114);
    v122 = MEMORY[0x1E69E6158];
    v123 = v114;
    if (qword_1EDCE7928 != -1)
    {
      swift_once();
    }

    v124 = qword_1EDCE7930;
    sub_1C6B1D314();
    v292 = v125;
    v126 = swift_allocObject();
    v281 = xmmword_1C6D7E630;
    *(v126 + 16) = xmmword_1C6D7E630;
    v284 = sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
    v127 = sub_1C6D7A0E0();
    v129 = v128;
    *(v126 + 56) = v122;
    v294 = sub_1C6B2064C();
    *(v126 + 64) = v294;
    *(v126 + 32) = v127;
    *(v126 + 40) = v129;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    sub_1C6B10FF4(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = v281;
    v131 = *MEMORY[0x1E695DB50];
    *(inited + 32) = *MEMORY[0x1E695DB50];
    v132 = v131;
    sub_1C6B20798(inited);
    swift_setDeallocating();
    sub_1C6D7013C(inited + 32, type metadata accessor for URLResourceKey);
    v133 = v271;
    v134 = v285;
    sub_1C6D75CE0();
    if (v134)
    {

LABEL_30:
      sub_1C6D79AA0();
      v138 = swift_allocObject();
      *(v138 + 16) = v281;
      v139 = v283;
      v140 = sub_1C6D7A0E0();
      v141 = v294;
      *(v138 + 56) = MEMORY[0x1E69E6158];
      *(v138 + 64) = v141;
      *(v138 + 32) = v140;
      *(v138 + 40) = v142;
      sub_1C6D78D30();

      v115(v139, v123);
      v115(v286, v123);
      v115(v117, v123);
      result = (v115)(v293, v123);
      goto LABEL_20;
    }

    v135 = sub_1C6D75C90();
    v137 = v136;
    (*(v261 + 8))(v133, v262);
    if (v137)
    {
      goto LABEL_30;
    }

    *&v285 = v135;
    v246 = v97;
    v262 = objc_opt_self();
    v143 = [v262 defaultManager];
    v144 = v283;
    v145 = sub_1C6D75D30();
    v146 = sub_1C6D75D30();
    v296 = 0;
    v147 = [v143 moveItemAtURL:v145 toURL:v146 error:&v296];

    v148 = v296;
    if (v147)
    {
      v149 = objc_opt_self();
      v150 = v148;
      v279 = v149;
      v151 = [v149 bytes];
      v152 = sub_1C6B0C69C(0, &unk_1EDCE7E40, 0x1E696B050);
      v153 = v276;
      v245[2] = v152;
      sub_1C6D75B80();
      v154 = *(v282 + 48);
      v291 = *(v291 + 16);
      v155 = v274;
      (v291)(v274, v117, v123);
      v156 = *(v275 + 32);
      v248 = v275 + 32;
      v280 = v156;
      (v156)(v155 + v154, v153, v259);
      v157 = v246;
      v158 = (v246 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_files);
      swift_beginAccess();
      v159 = v258;
      sub_1C6B162C8(v155, v258, sub_1C6B68CA8);
      v252 = v158;
      sub_1C6D19CFC(0, 0, v159);
      swift_endAccess();
      v160 = v257;
      (v291)(v257, v117, v123);
      swift_beginAccess();
      v161 = v290;
      sub_1C6C245D4(v290, v160);
      swift_endAccess();
      v115(v161, v123);
      sub_1C6D69CB4(v260);
      v162 = swift_allocObject();
      v285 = xmmword_1C6D7EB10;
      *(v162 + 16) = xmmword_1C6D7EB10;
      v163 = sub_1C6D7A0E0();
      v164 = v294;
      *(v162 + 56) = MEMORY[0x1E69E6158];
      *(v162 + 64) = v164;
      *(v162 + 32) = v163;
      *(v162 + 40) = v165;
      v291 = v157 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_configuration;
      v166 = *(v157 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_configuration);
      v167 = v276;
      v258 = v166;
      v168 = v259;
      v169 = v275;
      sub_1C6D75BB0();
      v290 = sub_1C6B68D1C;
      v261 = sub_1C6D70320(&qword_1EDCE7B28, sub_1C6B68D1C);
      v170 = sub_1C6D7A0E0();
      v172 = v171;
      v271 = *(v169 + 8);
      v275 = v169 + 8;
      (v271)(v167, v168);
      *(v162 + 96) = MEMORY[0x1E69E6158];
      *(v162 + 104) = v164;
      *(v162 + 72) = v170;
      *(v162 + 80) = v172;
      sub_1C6D79AC0();
      sub_1C6D78D30();

      LODWORD(v162) = *(type metadata accessor for FileLog.Configuration(0) + 20);
      v173 = v168;
      v174 = v260;
      v245[1] = sub_1C6D70320(&qword_1EDCE7B30, v290);
      if (sub_1C6D79540())
      {
        sub_1C6D75BA0();
        v175 = swift_allocObject();
        *(v175 + 16) = v281;
        v176 = v276;
        sub_1C6D75BB0();
        v177 = sub_1C6D7A0E0();
        v179 = v178;
        (v271)(v176, v173);
        v180 = v294;
        *(v175 + 56) = MEMORY[0x1E69E6158];
        *(v175 + 64) = v180;
        *(v175 + 32) = v177;
        *(v175 + 40) = v179;
        sub_1C6D79AC0();
        *&v281 = v124;
        sub_1C6D78D30();

        v181 = [v279 bytes];
        sub_1C6D75B80();
        sub_1C6D75FE0();
        v182 = *v252;
        v183 = *(*v252 + 16);
        v257 = (v256 + 56);
        v256 += 48;

        v291 = 0;
        v184 = v173;
        v185 = v273;
        v186 = v272;
        v247 = v182;
        while (1)
        {
          if (v183)
          {
            v196 = *(v182 + 16);
            v197 = v291;
            if (v183 == v196)
            {
              v197 = *(v182 + 16);
            }

            v291 = v197 - 1;
            if (__OFSUB__(v197, 1))
            {
              __break(1u);
LABEL_50:
              __break(1u);
            }

            v183 = (v183 - 1);
            if (v183 >= v196)
            {
              goto LABEL_50;
            }

            v198 = *(v185 + 48);
            v199 = v270;
            sub_1C6D700D4(v182 + ((*(v269 + 80) + 32) & ~*(v269 + 80)) + *(v269 + 72) * v183, &v270[v198], sub_1C6B68CA8);
            *v186 = v291;
            sub_1C6B162C8(&v199[v198], v186 + *(v185 + 48), sub_1C6B68CA8);
            v200 = 0;
          }

          else
          {
            v200 = 1;
          }

          (*v257)(v186, v200, 1, v185);
          v201 = v277;
          sub_1C6D70230(v186, v277, &qword_1EDCE65B8, sub_1C6D6DFD0);
          if ((*v256)(v201, 1, v185) == 1)
          {
            break;
          }

          v290 = v183;
          v279 = *v277;
          v202 = v277 + *(v185 + 48);
          v203 = v282;
          v204 = *(v282 + 48);
          v205 = v268;
          v206 = v250;
          v250(v268, v202, v253);
          v207 = v280;
          v280(&v205[v204], &v202[v204], v184);
          v208 = *(v203 + 48);
          v209 = v267;
          v206(v267, v205, v253);
          v207(v209 + v208, &v205[v204], v184);
          v210 = swift_allocObject();
          *(v210 + 16) = v285;
          v211 = sub_1C6D7A0E0();
          v212 = MEMORY[0x1E69E6158];
          v213 = v294;
          *(v210 + 56) = MEMORY[0x1E69E6158];
          *(v210 + 64) = v213;
          *(v210 + 32) = v211;
          *(v210 + 40) = v214;
          v278 = v208;
          v215 = v276;
          sub_1C6D75BB0();
          v216 = sub_1C6D7A0E0();
          v218 = v217;
          v219 = v215;
          v220 = v271;
          (v271)(v219, v184);
          *(v210 + 96) = v212;
          *(v210 + 104) = v213;
          v221 = v253;
          *(v210 + 72) = v216;
          *(v210 + 80) = v218;
          sub_1C6D79AC0();
          sub_1C6D78D30();

          v222 = [v262 defaultManager];
          v223 = v274;
          sub_1C6D700D4(v209, v274, sub_1C6B68CA8);
          v224 = *(v282 + 48);
          v225 = sub_1C6D75D30();
          v220(v223 + v224, v184);
          (v288)(v223, v221);
          v296 = 0;
          LODWORD(v224) = [v222 removeItemAtURL:v225 error:&v296];

          if (v224)
          {
            v226 = v296;
            v227 = v276;
            v228 = v265;
            sub_1C6D75B90();
            v220(v228, v184);
            v280(v228, v227, v184);
            sub_1C6D75FC0();
            swift_beginAccess();
            v229 = v263;
            sub_1C6D3A038(v209, v263);
            swift_endAccess();
            sub_1C6D702B0(v229, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
            LOBYTE(v229) = sub_1C6D79540();
            sub_1C6D7013C(v209, sub_1C6B68CA8);
            v185 = v273;
            v186 = v272;
            v182 = v247;
            v183 = v290;
            if ((v229 & 1) == 0)
            {
              break;
            }
          }

          else
          {
            v187 = v296;
            v188 = sub_1C6D75CC0();

            swift_willThrow();
            sub_1C6D79AA0();
            v189 = swift_allocObject();
            *(v189 + 16) = v285;
            v190 = sub_1C6D7A0E0();
            v191 = MEMORY[0x1E69E6158];
            v192 = v294;
            *(v189 + 56) = MEMORY[0x1E69E6158];
            *(v189 + 64) = v192;
            *(v189 + 32) = v190;
            *(v189 + 40) = v193;
            v296 = 0;
            v297 = 0xE000000000000000;
            v295 = v188;
            sub_1C6B10A98(0, &qword_1EDCEA410);
            sub_1C6D79E60();
            v194 = v296;
            v195 = v297;
            *(v189 + 96) = v191;
            *(v189 + 104) = v192;
            *(v189 + 72) = v194;
            *(v189 + 80) = v195;
            sub_1C6D78D30();

            sub_1C6D7013C(v209, sub_1C6B68CA8);
            v185 = v273;
            v186 = v272;
            v182 = v247;
            v183 = v290;
          }
        }

        swift_beginAccess();
        sub_1C6B10FF4(0, &qword_1EDCDFAF0, sub_1C6B68CA8, MEMORY[0x1E69E62F8]);
        sub_1C6D70368(&qword_1EDCDFAE8, &qword_1EDCDFAF0, sub_1C6B68CA8);
        sub_1C6D70368(&qword_1EDCDFAE0, &qword_1EDCDFAF0, sub_1C6B68CA8);
        sub_1C6D79A60();
        swift_endAccess();
        v232 = swift_allocObject();
        *(v232 + 16) = v285;
        v233 = v276;
        sub_1C6D75BB0();
        v234 = sub_1C6D7A0E0();
        v236 = v235;
        v237 = v271;
        (v271)(v233, v184);
        v238 = MEMORY[0x1E69E6158];
        v239 = v294;
        *(v232 + 56) = MEMORY[0x1E69E6158];
        *(v232 + 64) = v239;
        *(v232 + 32) = v234;
        *(v232 + 40) = v236;
        sub_1C6D69CB4(v233);
        v240 = sub_1C6D7A0E0();
        v242 = v241;
        v237(v233, v184);
        *(v232 + 96) = v238;
        *(v232 + 104) = v239;
        *(v232 + 72) = v240;
        *(v232 + 80) = v242;
        sub_1C6D79AC0();
        sub_1C6D78D30();

        (*(v254 + 8))(v266, v255);
        v237(v265, v184);
        v237(v264, v184);
        v237(v260, v184);
        v243 = v253;
        v244 = v288;
        (v288)(v283, v253);
        v244(v286, v243);
        v244(v289, v243);
        result = (v244)(v293, v243);
      }

      else
      {
        (v271)(v174, v168);
        v115(v283, v123);
        v115(v286, v123);
        v115(v289, v123);
        result = (v115)(v293, v123);
      }
    }

    else
    {
      v230 = v296;
      v231 = sub_1C6D75CC0();

      *&v285 = v231;
      swift_willThrow();
      v115(v144, v123);
      v115(v286, v123);
      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1D314();
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_1C6D7EB10;
      sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
      v100 = sub_1C6D7A0E0();
      v101 = v117;
      v103 = v102;
      v104 = MEMORY[0x1E69E6158];
      *(v99 + 56) = MEMORY[0x1E69E6158];
      v105 = sub_1C6B2064C();
      *(v99 + 64) = v105;
      *(v99 + 32) = v100;
      *(v99 + 40) = v103;
      v296 = 0;
      v297 = 0xE000000000000000;
      v106 = v285;
      v295 = v285;
      sub_1C6B10A98(0, &qword_1EDCEA410);
      sub_1C6D79E60();
      v107 = v296;
      v108 = v297;
      *(v99 + 96) = v104;
      *(v99 + 104) = v105;
      *(v99 + 72) = v107;
      *(v99 + 80) = v108;
      sub_1C6D78D30();

      v109 = v288;
      (v288)(v101, v123);
      result = v109(v293, v123);
    }
  }

  else
  {
    if (qword_1EDCE7928 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1C6D7E630;
    *(v95 + 56) = MEMORY[0x1E69E6158];
    *(v95 + 64) = sub_1C6B2064C();
    v96 = v292;
    *(v95 + 32) = v294;
    *(v95 + 40) = v96;

    sub_1C6D78D30();

    result = (*(v291 + 8))(v78, v77);
  }

LABEL_20:
  v110 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6D6DBCC(uint64_t a1, uint64_t a2)
{
  sub_1C6B10FF4(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t FileLog.deinit()
{
  sub_1C6D7013C(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_configuration, type metadata accessor for FileLog.Configuration);
  sub_1C6D7013C(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectory, type metadata accessor for FileLog.TargetDirectory);
  sub_1C6D702B0(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
  v1 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_files);

  v2 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_urls);

  return v0;
}

uint64_t FileLog.__deallocating_deinit()
{
  sub_1C6D7013C(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_configuration, type metadata accessor for FileLog.Configuration);
  sub_1C6D7013C(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectory, type metadata accessor for FileLog.TargetDirectory);
  sub_1C6D702B0(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
  v1 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_files);

  v2 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_urls);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1C6D6DEA4()
{
  if (!qword_1EDCEA328)
  {
    sub_1C6B37F88();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCEA328);
    }
  }
}

void sub_1C6D6DF0C()
{
  sub_1C6B10C98();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

unint64_t sub_1C6D6DF7C()
{
  result = qword_1EC1D9A70;
  if (!qword_1EC1D9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9A70);
  }

  return result;
}

void sub_1C6D6DFD0()
{
  if (!qword_1EDCE65C0)
  {
    sub_1C6B68CA8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE65C0);
    }
  }
}

void sub_1C6D6E03C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C6D7A0C0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C6D75DE0();
        v6 = sub_1C6D797F0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C6D75DE0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C6D6E448(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C6D6E168(0, v2, 1, a1);
  }
}

void sub_1C6D6E168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = sub_1C6D75DE0();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v48 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v38 = a2;
  if (a3 != a2)
  {
    v51 = &v36 - v16;
    v18 = *a4;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v21 = *(v19 + 56);
    v49 = v20;
    v50 = (v19 - 8);
    v22 = (v18 + v21 * (a3 - 1));
    v44 = -v21;
    v45 = (v19 + 16);
    v23 = a1 - a3;
    v46 = v18;
    v47 = v19;
    v37 = v21;
    v24 = v18 + v21 * a3;
    v25 = v4;
    while (2)
    {
      v41 = v22;
      v42 = a3;
      v39 = v24;
      v40 = v23;
      v26 = v43;
      while (1)
      {
        v27 = v51;
        v28 = v49;
        (v49)(v51, v24, v26, v17);
        v28(v14, v22, v26);
        v29 = sub_1C6D6AFA8(v27, v14);
        v52 = v25;
        if (v25)
        {
          v35 = *v50;
          (*v50)(v14, v26);
          v35(v27, v26);
          return;
        }

        v30 = v29;
        v31 = *v50;
        (*v50)(v14, v26);
        v31(v27, v26);
        if ((v30 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return;
        }

        v32 = *v45;
        v33 = v48;
        (*v45)(v48, v24, v26);
        swift_arrayInitWithTakeFrontToBack();
        v32(v22, v33, v26);
        v22 += v44;
        v24 += v44;
        v34 = __CFADD__(v23++, 1);
        v25 = v52;
        if (v34)
        {
          goto LABEL_11;
        }
      }

      v25 = v52;
LABEL_11:
      a3 = v42 + 1;
      v22 = &v41[v37];
      v23 = v40 - 1;
      v24 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C6D6E448(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v205 = a4;
  v204 = a1;
  v5 = sub_1C6D75F50();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v215 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v214 = &v200 - v10;
  sub_1C6D7019C();
  v226 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v242 = &v200 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_1C6D75CA0();
  v14 = *(v217 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v225 = &v200 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v227 = &v200 - v18;
  sub_1C6B10FF4(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v224 = &v200 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v243 = &v200 - v23;
  v24 = sub_1C6D75DE0();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v206 = &v200 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v218 = &v200 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v228 = &v200 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v245 = &v200 - v32;
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v200 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v202 = &v200 - v38;
  v42.n128_f64[0] = MEMORY[0x1EEE9AC00](v39);
  v201 = &v200 - v43;
  v212 = a3;
  v44 = a3[1];
  v211 = v41;
  if (v44 < 1)
  {
    v46 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v6 = *v204;
    if (*v204)
    {
      v14 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = v244;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_170;
      }

      v193 = v14;
      goto LABEL_136;
    }

    goto LABEL_179;
  }

  v209 = v40;
  v45 = 0;
  v232 = v41 + 16;
  v231 = (v41 + 8);
  v229 = (v41 + 32);
  v223 = *MEMORY[0x1E695DA98];
  v234 = (v6 + 56);
  v216 = (v14 + 8);
  v222 = (v6 + 48);
  v213 = (v6 + 32);
  v219 = (v6 + 8);
  v46 = MEMORY[0x1E69E7CC0];
  v235 = v5;
  v233 = v24;
  while (1)
  {
    v207 = v46;
    v230 = v45;
    if (v45 + 1 >= v44)
    {
      v64 = v45 + 1;
      v65 = v205;
    }

    else
    {
      v47 = v45;
      v210 = v44;
      v48 = *v212;
      v49 = *(v41 + 72);
      v6 = *v212 + v49 * (v45 + 1);
      v50 = *(v41 + 16);
      v51 = v201;
      v50(v201, v6, v24, v42);
      v241 = v48;
      v52 = v48 + v49 * v47;
      v53 = v202;
      (v50)(v202, v52, v24);
      v54 = v244;
      LODWORD(v240) = sub_1C6D6AFA8(v51, v53);
      if (v54)
      {
        v199 = *v231;
        (*v231)(v53, v24);
        v199(v51, v24);
        goto LABEL_147;
      }

      v244 = 0;
      v14 = v24;
      v55 = *v231;
      (*v231)(v53, v14);
      v55(v51, v14);
      v56 = v230 + 2;
      v57 = v241 + v49 * (v230 + 2);
      v58 = v49;
      v241 = v49;
      while (v210 != v56)
      {
        v14 = v233;
        (v50)(v36, v57, v233);
        v59 = v36;
        v60 = v209;
        (v50)(v209, v6, v14);
        v61 = v244;
        v62 = sub_1C6D6AFA8(v59, v60);
        v244 = v61;
        if (v61)
        {
          v55(v60, v14);
          v55(v59, v14);
          goto LABEL_147;
        }

        v63 = v62;
        v55(v60, v14);
        v55(v59, v14);
        ++v56;
        v58 = v241;
        v57 += v241;
        v6 += v241;
        v36 = v59;
        if ((v240 ^ v63))
        {
          v64 = v56 - 1;
          goto LABEL_13;
        }
      }

      v64 = v210;
LABEL_13:
      v41 = v211;
      v65 = v205;
      v5 = v235;
      v66 = v207;
      v24 = v233;
      if (v240)
      {
        if (v64 < v230)
        {
          goto LABEL_173;
        }

        if (v230 < v64)
        {
          v14 = v58 * (v64 - 1);
          v67 = v64 * v58;
          v210 = v64;
          v68 = v230;
          v69 = v230 * v58;
          v203 = v36;
          do
          {
            if (v68 != --v64)
            {
              v71 = *v212;
              if (!*v212)
              {
                goto LABEL_177;
              }

              v6 = v71 + v69;
              v72 = *v229;
              (*v229)(v206, v71 + v69, v233, v66);
              if (v69 < v14 || v6 >= v71 + v67)
              {
                v70 = v233;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v70 = v233;
                if (v69 != v14)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v72((v71 + v14), v206, v70);
              v41 = v211;
              v65 = v205;
              v5 = v235;
              v66 = v207;
              v36 = v203;
              v58 = v241;
            }

            ++v68;
            v14 -= v58;
            v67 -= v58;
            v69 += v58;
          }

          while (v68 < v64);
          v24 = v233;
          v64 = v210;
        }
      }
    }

    v73 = v212[1];
    if (v64 >= v73)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v64, v230))
    {
      goto LABEL_169;
    }

    if (v64 - v230 >= v65)
    {
LABEL_35:
      v6 = v64;
      goto LABEL_36;
    }

    if (__OFADD__(v230, v65))
    {
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      return;
    }

    if (v230 + v65 < v73)
    {
      v73 = v230 + v65;
    }

    if (v73 < v230)
    {
      goto LABEL_172;
    }

    if (v64 == v73)
    {
      goto LABEL_35;
    }

    v208 = v73;
    v203 = v36;
    v239 = *v212;
    v121 = v41;
    sub_1C6B20704();
    v241 = v122;
    v221 = *(v121 + 72);
    v220 = *(v121 + 16);
    v123 = v228;
LABEL_89:
    v210 = v64;
    v125 = v64;
LABEL_90:
    v126 = v125 - 1;
    v127 = v239;
    v128 = v221;
    v237 = v239 + v221 * v125;
    v129 = v220;
    v220(v245);
    v238 = v126;
    v236 = (v127 + v126 * v128);
    v129(v123);
    v130 = v223;
    v247 = v223;
    v6 = sub_1C6D79D30();
    v131 = v6 + 56;
    v132 = v247;
    v133 = *(v6 + 40);
    v240 = v130;
    sub_1C6D795A0();
    sub_1C6D7A260();
    v134 = v132;
    sub_1C6D79610();
    v14 = sub_1C6D7A2B0();

    v135 = -1 << *(v6 + 32);
    v136 = v14 & ~v135;
    v137 = v136 >> 6;
    v138 = *(v6 + 56 + 8 * (v136 >> 6));
    v139 = 1 << v136;
    if (((1 << v136) & v138) == 0)
    {
      goto LABEL_99;
    }

    v140 = ~v135;
LABEL_92:
    v141 = *(*(v6 + 48) + 8 * v136);
    v142 = sub_1C6D795A0();
    v144 = v143;
    v145 = sub_1C6D795A0();
    v14 = v146;
    if (v142 != v145 || v144 != v146)
    {
      break;
    }

LABEL_103:
    v5 = v235;
LABEL_104:
    sub_1C6D7013C(&v247, type metadata accessor for URLResourceKey);
    v151 = v227;
    v152 = v244;
    sub_1C6D75CE0();
    if (v152)
    {

      (*v234)(v243, 1, 1, v5);
    }

    else
    {

      sub_1C6D75C80();
      (*v216)(v151, v217);
    }

    v246 = v240;
    v6 = sub_1C6D79D30();
    v153 = v6 + 56;
    v154 = v246;
    v155 = *(v6 + 40);
    sub_1C6D795A0();
    sub_1C6D7A260();
    v156 = v154;
    sub_1C6D79610();
    v14 = sub_1C6D7A2B0();

    v157 = -1 << *(v6 + 32);
    v158 = v14 & ~v157;
    v159 = v158 >> 6;
    v160 = *(v6 + 56 + 8 * (v158 >> 6));
    v161 = 1 << v158;
    if (((1 << v158) & v160) != 0)
    {
      v244 = v156;
      v162 = ~v157;
      while (1)
      {
        v163 = *(*(v6 + 48) + 8 * v158);
        v164 = sub_1C6D795A0();
        v166 = v165;
        v168 = sub_1C6D795A0();
        v169 = v164;
        v14 = v167;
        if (v169 == v168 && v166 == v167)
        {

          goto LABEL_120;
        }

        v171 = sub_1C6D7A130();

        if (v171)
        {
          break;
        }

        v158 = (v158 + 1) & v162;
        v159 = v158 >> 6;
        v160 = *(v153 + 8 * (v158 >> 6));
        v161 = 1 << v158;
        if (((1 << v158) & v160) == 0)
        {
          v156 = v244;
          goto LABEL_116;
        }
      }

LABEL_120:
      v5 = v235;
      v24 = v233;
    }

    else
    {
LABEL_116:
      *(v153 + 8 * v159) = v161 | v160;
      *(*(v6 + 48) + 8 * v158) = v156;
      v172 = *(v6 + 16);
      v89 = __OFADD__(v172, 1);
      v173 = v172 + 1;
      v5 = v235;
      v24 = v233;
      if (v89)
      {
        goto LABEL_151;
      }

      *(v6 + 16) = v173;
    }

    sub_1C6D7013C(&v246, type metadata accessor for URLResourceKey);
    v174 = v225;
    v123 = v228;
    sub_1C6D75CE0();
    v175 = v224;

    sub_1C6D75C80();
    (*v216)(v174, v217);
    v176 = *(v226 + 48);
    v177 = MEMORY[0x1E6969530];
    v178 = v242;
    sub_1C6D70230(v243, v242, &qword_1EDCEA960, MEMORY[0x1E6969530]);
    sub_1C6D70230(v175, v178 + v176, &qword_1EDCEA960, v177);
    v179 = *v222;
    LODWORD(v177) = (*v222)(v178, 1, v5);
    v180 = v179(v178 + v176, 1, v5);
    v244 = 0;
    if (v177 != 1)
    {
      if (v180 == 1)
      {
        (*v219)(v242, v5);
        v181 = *v231;
        (*v231)(v123, v24);
        v181(v245, v24);
        v182 = v230;
      }

      else
      {
        v183 = *v213;
        v184 = v214;
        v185 = v242;
        (*v213)(v214, v242, v5);
        v186 = v185 + v176;
        v187 = v215;
        v183(v215, v186, v5);
        LOBYTE(v183) = sub_1C6D75EE0();
        v188 = *v219;
        (*v219)(v187, v5);
        v188(v184, v5);
        v14 = *v231;
        (*v231)(v123, v24);
        (v14)(v245, v24);
        v182 = v230;
        if ((v183 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      if (!v239)
      {
        goto LABEL_174;
      }

      v189 = *v229;
      v14 = v218;
      (*v229)(v218, v237, v24);
      v190 = v236;
      swift_arrayInitWithTakeFrontToBack();
      v189(v190, v14, v24);
      v125 = v238;
      if (v238 == v182)
      {
        goto LABEL_88;
      }

      goto LABEL_90;
    }

    if (v180 != 1)
    {
      sub_1C6D702B0(v242 + v176, &qword_1EDCEA960, MEMORY[0x1E6969530]);
    }

    v14 = v231;
    v124 = *v231;
    (*v231)(v123, v24);
    v124(v245, v24);
LABEL_88:
    v64 = v210 + 1;
    if (v210 + 1 != v208)
    {
      goto LABEL_89;
    }

    v36 = v203;
    v6 = v208;
LABEL_36:
    v74 = v230;
    if (v6 < v230)
    {
      goto LABEL_168;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v46 = v207;
    }

    else
    {
      v46 = sub_1C6B657D0(0, *(v207 + 2) + 1, 1, v207);
    }

    v76 = *(v46 + 2);
    v75 = *(v46 + 3);
    v14 = v76 + 1;
    v41 = v211;
    if (v76 >= v75 >> 1)
    {
      v191 = sub_1C6B657D0((v75 > 1), v76 + 1, 1, v46);
      v41 = v211;
      v46 = v191;
    }

    *(v46 + 2) = v14;
    v77 = &v46[16 * v76];
    *(v77 + 4) = v74;
    *(v77 + 5) = v6;
    v208 = v6;
    v6 = *v204;
    if (!*v204)
    {
      goto LABEL_178;
    }

    if (v76)
    {
      while (1)
      {
        v78 = v14 - 1;
        if (v14 >= 4)
        {
          break;
        }

        if (v14 == 3)
        {
          v79 = *(v46 + 4);
          v80 = *(v46 + 5);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_56:
          if (v82)
          {
            goto LABEL_157;
          }

          v95 = &v46[16 * v14];
          v97 = *v95;
          v96 = *(v95 + 1);
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_160;
          }

          v101 = &v46[16 * v78 + 32];
          v103 = *v101;
          v102 = *(v101 + 1);
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_163;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_164;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              v78 = v14 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v105 = &v46[16 * v14];
        v107 = *v105;
        v106 = *(v105 + 1);
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_70:
        if (v100)
        {
          goto LABEL_159;
        }

        v108 = &v46[16 * v78];
        v110 = *(v108 + 4);
        v109 = *(v108 + 5);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_162;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_77:
        v116 = v78 - 1;
        if (v78 - 1 >= v14)
        {
          goto LABEL_152;
        }

        if (!*v212)
        {
          goto LABEL_175;
        }

        v117 = v46;
        v14 = *&v46[16 * v116 + 32];
        v118 = *&v46[16 * v78 + 40];
        v119 = v244;
        sub_1C6D6FA38(*v212 + *(v41 + 72) * v14, *v212 + *(v41 + 72) * *&v46[16 * v78 + 32], *v212 + *(v41 + 72) * v118, v6);
        v244 = v119;
        if (v119)
        {
          goto LABEL_147;
        }

        if (v118 < v14)
        {
          goto LABEL_153;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_1C6C73C90(v117);
        }

        if (v116 >= *(v117 + 2))
        {
          goto LABEL_154;
        }

        v120 = &v117[16 * v116];
        *(v120 + 4) = v14;
        *(v120 + 5) = v118;
        v248 = v117;
        sub_1C6C73C04(v78);
        v46 = v248;
        v14 = *(v248 + 2);
        v41 = v211;
        if (v14 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = &v46[16 * v14 + 32];
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_155;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_156;
      }

      v90 = &v46[16 * v14];
      v92 = *v90;
      v91 = *(v90 + 1);
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_158;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_161;
      }

      if (v94 >= v86)
      {
        v112 = &v46[16 * v78 + 32];
        v114 = *v112;
        v113 = *(v112 + 1);
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_167;
        }

        if (v81 < v115)
        {
          v78 = v14 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v44 = v212[1];
    v45 = v208;
    if (v208 >= v44)
    {
      goto LABEL_133;
    }
  }

  v148 = sub_1C6D7A130();

  if (v148)
  {

    goto LABEL_103;
  }

  v136 = (v136 + 1) & v140;
  v137 = v136 >> 6;
  v138 = *(v131 + 8 * (v136 >> 6));
  v139 = 1 << v136;
  if (((1 << v136) & v138) != 0)
  {
    goto LABEL_92;
  }

  v5 = v235;
LABEL_99:
  *(v131 + 8 * v137) = v139 | v138;
  *(*(v6 + 48) + 8 * v136) = v134;
  v149 = *(v6 + 16);
  v89 = __OFADD__(v149, 1);
  v150 = v149 + 1;
  if (!v89)
  {
    *(v6 + 16) = v150;
    goto LABEL_104;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  v193 = sub_1C6C73C90(v14);
LABEL_136:
  v248 = v193;
  v14 = *(v193 + 2);
  v194 = v211;
  if (v14 >= 2)
  {
    while (*v212)
    {
      v195 = *&v193[16 * v14];
      v196 = v193;
      v197 = *&v193[16 * v14 + 24];
      sub_1C6D6FA38(*v212 + *(v194 + 72) * v195, *v212 + *(v194 + 72) * *&v193[16 * v14 + 16], *v212 + *(v194 + 72) * v197, v6);
      if (v5)
      {
        goto LABEL_147;
      }

      if (v197 < v195)
      {
        goto LABEL_165;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v196 = sub_1C6C73C90(v196);
      }

      if (v14 - 2 >= *(v196 + 2))
      {
        goto LABEL_166;
      }

      v198 = &v196[16 * v14];
      *v198 = v195;
      *(v198 + 1) = v197;
      v248 = v196;
      sub_1C6C73C04(v14 - 1);
      v193 = v248;
      v14 = *(v248 + 2);
      v194 = v211;
      if (v14 <= 1)
      {
        goto LABEL_147;
      }
    }

    goto LABEL_176;
  }

LABEL_147:
}

void sub_1C6D6FA38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v77 = a3;
  v9 = sub_1C6D75DE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](&v62 - v16);
  v20 = &v62 - v19;
  v73 = *(v21 + 72);
  if (!v73)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_66;
  }

  v22 = v77 - a2;
  if (v77 - a2 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_67;
  }

  v23 = (a2 - a1) / v73;
  v80 = a1;
  v79 = a4;
  v75 = v9;
  if (v23 >= v22 / v73)
  {
    v71 = v18;
    v72 = v14;
    v25 = v22 / v73 * v73;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v25;
    if (v25 >= 1)
    {
      v38 = v72;
      v39 = -v73;
      v68 = (v10 + 16);
      v69 = (v10 + 8);
      v40 = v37;
      v74 = a4;
      v65 = a1;
      v66 = -v73;
      do
      {
        v76 = v5;
        v63 = v37;
        v41 = a2;
        v42 = a2 + v39;
        v67 = v42;
        v70 = v41;
        while (1)
        {
          v45 = v77;
          if (v41 <= a1)
          {
            v80 = v41;
            v60 = v63;
LABEL_62:
            v78 = v60;
            goto LABEL_64;
          }

          v64 = v37;
          v73 = v40;
          v46 = v40 + v39;
          v47 = *v68;
          v48 = v75;
          (*v68)(v38, v40 + v39, v75);
          v49 = v42;
          v50 = v39;
          v51 = v71;
          v47(v71, v49, v48);
          v52 = v76;
          v53 = sub_1C6D6AFA8(v38, v51);
          v76 = v52;
          if (v52)
          {
            v61 = *v69;
            (*v69)(v51, v48);
            v61(v38, v48);
            v80 = v70;
            v60 = v64;
            goto LABEL_62;
          }

          v54 = v53;
          v77 = v45 + v50;
          v55 = *v69;
          (*v69)(v51, v48);
          v55(v38, v48);
          if (v54)
          {
            break;
          }

          v37 = v46;
          v56 = v65;
          if (v45 < v73 || v77 >= v73)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v66;
            v42 = v67;
            v43 = v74;
          }

          else
          {
            v39 = v66;
            v42 = v67;
            v43 = v74;
            if (v45 != v73)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v40 = v46;
          v44 = v46 > v43;
          v38 = v72;
          a1 = v56;
          v41 = v70;
          if (!v44)
          {
            a2 = v70;
            goto LABEL_63;
          }
        }

        a1 = v65;
        if (v45 < v70 || v77 >= v70)
        {
          a2 = v67;
          swift_arrayInitWithTakeFrontToBack();
          v58 = v74;
          v5 = v76;
          v37 = v64;
          v39 = v66;
        }

        else
        {
          v57 = v45 == v70;
          v39 = v66;
          a2 = v67;
          v58 = v74;
          v5 = v76;
          v37 = v64;
          if (!v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v72;
        v40 = v73;
      }

      while (v73 > v58);
    }

LABEL_63:
    v80 = a2;
    v78 = v37;
  }

  else
  {
    v24 = v23 * v73;
    v72 = v17;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = a4 + v24;
    v78 = a4 + v24;
    if (v24 >= 1 && a2 < v77)
    {
      v27 = *(v10 + 16);
      v70 = v10 + 16;
      v68 = v27;
      v69 = (v10 + 8);
      while (1)
      {
        v28 = a2;
        v29 = a4;
        v30 = v68;
        (v68)(v20, a2, v9);
        v31 = v20;
        v32 = v72;
        v74 = v29;
        (v30)(v72, v29, v9);
        v33 = sub_1C6D6AFA8(v31, v32);
        if (v5)
        {
          break;
        }

        v34 = v33;
        v76 = 0;
        v35 = *v69;
        (*v69)(v32, v9);
        v35(v31, v9);
        v20 = v31;
        if (v34)
        {
          v36 = v73;
          a2 = v28 + v73;
          if (a1 < v28 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v74;
        }

        else
        {
          v36 = v73;
          a4 = v74 + v73;
          a2 = v28;
          if (a1 < v74 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v79 = a4;
        }

        a1 += v36;
        v80 = a1;
        v5 = v76;
        if (a4 < v71)
        {
          v9 = v75;
          if (a2 < v77)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v59 = *v69;
      (*v69)(v32, v9);
      v59(v31, v9);
    }
  }

LABEL_64:
  sub_1C6C73E04(&v80, &v79, &v78);
}

uint64_t sub_1C6D700D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D7013C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6D7019C()
{
  if (!qword_1EDCEA398)
  {
    sub_1C6B10FF4(255, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCEA398);
    }
  }
}

uint64_t sub_1C6D70230(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B10FF4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D702B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B10FF4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6D70320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6D70368(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C6B10FF4(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6D703C8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for RecommendedTagsService.OutputNames();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a3;
  v35 = a2;
  v17 = a1;
  sub_1C6D784F0();
  if (!v3)
  {
    v37 = v13;
    v33 = 0;
    sub_1C6D78500();
    v18 = v36;

    v19 = [v18 recommendedTagsConfiguration];

    if (!v19)
    {
      sub_1C6D70F58();
      v17 = swift_allocError();
      swift_willThrow();
      v27 = v37;
      goto LABEL_9;
    }

    v20 = &selRef_bundleInputOutputConfiguration;
    if ((a3 & 1) == 0)
    {
      v20 = &selRef_nonBundleInputOutputConfiguration;
    }

    v21 = [v19 *v20];
    v22 = [v21 recommendationsOutputName];
    sub_1C6D795A0();

    sub_1C6D783C0();
    v23 = [v21 recommendationsScoreOutputName];
    sub_1C6D795A0();

    v24 = *(v7 + 20);
    sub_1C6D783C0();

    sub_1C6BB320C();
    v25 = v33;
    v26 = sub_1C6D786C0();
    if (v25)
    {
      v17 = v25;

      sub_1C6D70FAC(v10);
      v27 = v37;
LABEL_9:
      (*(v27 + 8))(v16, v12);
      return v17;
    }

    v28 = v26;
    v29 = sub_1C6D786D0();
    v30 = v37;
    v17 = sub_1C6C1A420(v28, v29);

    sub_1C6D70FAC(v10);
    (*(v30 + 8))(v16, v12);
  }

  return v17;
}

uint64_t type metadata accessor for RecommendedTagsService.OutputNames()
{
  result = qword_1EC1D9A80;
  if (!qword_1EC1D9A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6D70774@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1C6D78810();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v80 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D75F80();
  v82 = *(v12 - 8);
  *&v83 = v12;
  v13 = *(v82 + 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for RecommendedTagsService.OutputNames();
  v16 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1C6D783E0();
  v19 = *(v84 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [*(a1 + 24) recommendedTagsConfiguration];
  if (!v23)
  {
    sub_1C6D70F58();
    swift_allocError();
    return swift_willThrow();
  }

  v76 = a4;
  v77 = v19;
  v78 = v4;
  if (a2)
  {
    v24 = &selRef_bundleInputOutputConfiguration;
  }

  else
  {
    v24 = &selRef_nonBundleInputOutputConfiguration;
  }

  v25 = *v24;
  v79 = a3;
  v26 = v23;
  v27 = [v23 v25];
  v28 = [v27 contextFeatureKey];
  sub_1C6D795A0();

  v85 = v22;
  sub_1C6D783C0();

  v29 = [v26 *v24];
  v30 = [v29 recommendationsOutputName];
  sub_1C6D795A0();

  sub_1C6D783C0();
  v31 = [v29 recommendationsScoreOutputName];
  sub_1C6D795A0();

  v32 = *(v81 + 20);
  v81 = v18;
  v73 = v32;
  sub_1C6D783C0();

  v33 = v79;

  v75 = v26;
  v34 = [v26 contextConfiguration];
  v35 = [v34 maximumTagCount];

  v36 = sub_1C6B75C84(v35, v33);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_1C6D75F70();
  v43 = sub_1C6D75F60();
  v74 = v44;
  (*(v82 + 1))(v15, v83);
  v79 = v43;
  if ((v42 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v45 = v84;
LABEL_7:
    sub_1C6B6E3BC(v36, v38, v40, v42);
    v47 = v46;
LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  sub_1C6D7A190();
  swift_unknownObjectRetain_n();
  v49 = swift_dynamicCastClass();
  v45 = v84;
  if (!v49)
  {
    swift_unknownObjectRelease();
    v49 = MEMORY[0x1E69E7CC0];
  }

  v50 = *(v49 + 16);

  if (__OFSUB__(v42 >> 1, v40))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v50 != (v42 >> 1) - v40)
  {
LABEL_20:
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v47 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v47)
  {
    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

LABEL_16:
  v84 = v36;
  sub_1C6B9656C(v47);
  v52 = v51;

  sub_1C6D71008(0, &qword_1EDCE7D20, sub_1C6B9F304);
  sub_1C6B9F304();
  v54 = v53 - 8;
  v55 = *(*(v53 - 8) + 72);
  v56 = (*(*(v53 - 8) + 80) + 32) & ~*(*(v53 - 8) + 80);
  v57 = swift_allocObject();
  v83 = xmmword_1C6D7E630;
  *(v57 + 16) = xmmword_1C6D7E630;
  v58 = v57 + v56;
  v59 = *(v54 + 56);
  v60 = v77;
  v61 = v77 + 16;
  v62 = *(v77 + 16);
  v62(v58, v85, v45);
  *(v58 + v59) = v52;
  v63 = *MEMORY[0x1E6996130];
  v64 = sub_1C6D78760();
  (*(*(v64 - 8) + 104))(v58 + v59, v63, v64);
  sub_1C6D787D0();
  v82 = "oupingEligibilityPolicy";
  sub_1C6D71008(0, &qword_1EDCE64A0, MEMORY[0x1E6996088]);
  v65 = *(v61 + 56);
  v66 = (*(v61 + 64) + 32) & ~*(v61 + 64);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1C6D7EB10;
  v68 = v67 + v66;
  v69 = v81;
  v62(v68, v81, v45);
  v62(v68 + v65, (v69 + v73), v45);
  sub_1C6C07550(v67);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v70 = v74;

  v71 = v79;
  sub_1C6D78790();
  if (qword_1EC1D5AA0 != -1)
  {
    swift_once();
  }

  sub_1C6D71008(0, &qword_1EDCEA8A0, sub_1C6B47670);
  v72 = swift_allocObject();
  *(v72 + 16) = v83;
  *(v72 + 56) = MEMORY[0x1E69E6158];
  *(v72 + 64) = sub_1C6B2064C();
  *(v72 + 32) = v71;
  *(v72 + 40) = v70;
  sub_1C6D79AC0();
  sub_1C6D78D30();
  swift_unknownObjectRelease();

  sub_1C6D70FAC(v69);
  return (*(v60 + 8))(v85, v45);
}

unint64_t sub_1C6D70F58()
{
  result = qword_1EC1D9A78;
  if (!qword_1EC1D9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9A78);
  }

  return result;
}

uint64_t sub_1C6D70FAC(uint64_t a1)
{
  v2 = type metadata accessor for RecommendedTagsService.OutputNames();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6D71008(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D7A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6D71094()
{
  result = sub_1C6D783E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C6D71104()
{
  result = qword_1EC1D9A90;
  if (!qword_1EC1D9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9A90);
  }

  return result;
}

uint64_t sub_1C6D71158()
{
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D720F4(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78C30();
}

uint64_t sub_1C6D71200()
{
  type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  sub_1C6D720F4(&qword_1EDCE51F0, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  return sub_1C6D78C30();
}

id sub_1C6D712A8(unsigned __int8 *a1, id a2)
{
  if ([a2 respondsToSelector_])
  {
    v4 = [a2 hasAudioTrack];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  if ([a2 respondsToSelector_])
  {
    v5 = [a2 isFeatured];
  }

  else
  {
    v5 = 0;
  }

  a1[1] = v5;
  if ([a2 respondsToSelector_])
  {
    v6 = [a2 isEvergreen];
  }

  else
  {
    v6 = 0;
  }

  a1[2] = v6;
  a1[3] = [a2 isANF];
  a1[4] = [a2 isPaid];
  result = [a2 hasVideo];
  a1[5] = result;
  return result;
}

uint64_t sub_1C6D713B4(uint64_t *a1, void *a2, uint64_t a3)
{
  sub_1C6D72018(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18[-v8];
  v10 = [a2 identifier];
  v11 = sub_1C6D795A0();
  v13 = v12;

  v14 = a1[1];

  *a1 = v11;
  a1[1] = v13;
  type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v19 = a3;
  v20 = a2;
  sub_1C6D720F4(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D78C30();
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return sub_1C6D7206C(v9, a1 + *(v16 + 20), &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
}

void sub_1C6D7159C(uint64_t a1, void *a2)
{
  sub_1C6D72018(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v122 = &v121 - v6;
  v7 = sub_1C6D78A80();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v121 = *(v126 - 8);
  v10 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D72018(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v121 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v133 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a2 publisherID];
  if (v20)
  {
    v123 = v15;
    v21 = v20;
    v22 = sub_1C6D795A0();
    v24 = v23;

    v25 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
    v26 = *(a1 + v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(a1 + v25);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v28 = sub_1C6D2BEA8(v28);
      *(a1 + v25) = v28;
    }

    swift_beginAccess();
    v32 = *(v28 + 4);
    *(v28 + 3) = v22;
    *(v28 + 4) = v24;

    v15 = v123;
  }

  v33 = [a2 topicIDs];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1C6D79780();

    v36 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
    v37 = *(a1 + v36);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(a1 + v36);
    if ((v38 & 1) == 0)
    {
      v40 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      swift_allocObject();
      v39 = sub_1C6D2BEA8(v39);
      *(a1 + v36) = v39;
    }

    swift_beginAccess();
    v43 = *(v39 + 2);
    *(v39 + 2) = v35;
  }

  v44 = [a2 iAdCategories];
  if (v44)
  {
    v45 = v44;
    v46 = sub_1C6D79780();

    v47 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
    v48 = *(a1 + v47);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(a1 + v47);
    if ((v49 & 1) == 0)
    {
      v51 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v52 = *(v51 + 48);
      v53 = *(v51 + 52);
      swift_allocObject();
      v50 = sub_1C6D2BEA8(v50);
      *(a1 + v47) = v50;
    }

    v54 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
    swift_beginAccess();
    v55 = *&v50[v54];
    *&v50[v54] = v46;
  }

  sub_1C6D71200();
  v56 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v57 = *(a1 + v56);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(a1 + v56);
  if ((v58 & 1) == 0)
  {
    v60 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    v59 = sub_1C6D2BEA8(v59);
    *(a1 + v56) = v59;
  }

  sub_1C6BB7E24(v133, v15, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  (*(v17 + 56))(v15, 0, 1, v16);
  v63 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6D7206C(v15, &v59[v63], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  swift_endAccess();
  if (([a2 respondsToSelector_] & 1) == 0)
  {
    v68 = *(a1 + v56);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v67 = 0;
    v65 = v127;
    if (v69)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v64 = [a2 bodyTextLength];
  v65 = v127;
  if (HIDWORD(v64))
  {
    v66 = *(a1 + v56);
    v67 = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_21;
    }

LABEL_20:
    v70 = *(a1 + v56);
    v71 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    *(a1 + v56) = sub_1C6D2BEA8(v70);
    goto LABEL_21;
  }

  v67 = v64;
  v111 = *(a1 + v56);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  v74 = *(a1 + v56);
  v75 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  *(v74 + v75) = v67;
  v76 = *(a1 + v56);
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *(a1 + v56);
  if ((v77 & 1) == 0)
  {
    v79 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    v78 = sub_1C6D2BEA8(v78);
    *(a1 + v56) = v78;
  }

  v82 = &v78[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group];
  swift_beginAccess();
  *v82 = 0;
  v82[8] = 1;
  v83 = *(a1 + v56);
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(a1 + v56);
  if ((v84 & 1) == 0)
  {
    v86 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v87 = *(v86 + 48);
    v88 = *(v86 + 52);
    swift_allocObject();
    v85 = sub_1C6D2BEA8(v85);
    *(a1 + v56) = v85;
  }

  v89 = &v85[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction];
  swift_beginAccess();
  *v89 = 0;
  v89[8] = 1;
  v90 = *(a1 + v56);
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *(a1 + v56);
  if ((v91 & 1) == 0)
  {
    v93 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v94 = *(v93 + 48);
    v95 = *(v93 + 52);
    swift_allocObject();
    v92 = sub_1C6D2BEA8(v92);
    *(a1 + v56) = v92;
  }

  v96 = &v92[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed];
  swift_beginAccess();
  *v96 = 0;
  v96[8] = 1;
  if ([a2 respondsToSelector_])
  {
    v97 = [a2 float16TitleEncoding];
    if (v97)
    {
      v98 = v97;
      v99 = sub_1C6D75E60();
      v101 = v100;

      v131 = v99;
      v132 = v101;
      v130 = 0;
      v128 = 0u;
      v129 = 0u;
      sub_1C6B1CD10(v99, v101);
      sub_1C6D78A70();
      sub_1C6D720F4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6D78C00();
      if (v65)
      {
        sub_1C6D79AA0();
        sub_1C6B1D314();
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_1C6D7EB10;
        v103 = [a2 articleID];
        v104 = sub_1C6D795A0();
        v106 = v105;

        v107 = MEMORY[0x1E69E6158];
        *(v102 + 56) = MEMORY[0x1E69E6158];
        v108 = sub_1C6B2064C();
        *(v102 + 64) = v108;
        *(v102 + 32) = v104;
        *(v102 + 40) = v106;
        *&v128 = 0;
        *(&v128 + 1) = 0xE000000000000000;
        v131 = v65;
        sub_1C6B10A98(0, &qword_1EDCEA410);
        sub_1C6D79E60();
        v109 = v128;
        *(v102 + 96) = v107;
        *(v102 + 104) = v108;
        *(v102 + 72) = v109;
        sub_1C6B1AAB0();
        v110 = sub_1C6D79BD0();
        sub_1C6D78D30();
        sub_1C6B1C9F0(v99, v101);
      }

      else
      {
        v112 = *(a1 + v56);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1C6B1C9F0(v99, v101);
          v113 = *(a1 + v56);
        }

        else
        {
          v114 = *(a1 + v56);
          v115 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
          v116 = *(v115 + 48);
          v117 = *(v115 + 52);
          swift_allocObject();

          v113 = sub_1C6D2BEA8(v118);
          sub_1C6B1C9F0(v99, v101);

          *(a1 + v56) = v113;
        }

        v119 = v122;
        sub_1C6BB7E24(v125, v122, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        (*(v121 + 56))(v119, 0, 1, v126);
        v120 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
        swift_beginAccess();
        sub_1C6D7206C(v119, &v113[v120], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        swift_endAccess();
      }
    }
  }
}

void sub_1C6D72018(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6D7206C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C6D72018(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D720F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0) + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6D72234(uint64_t a1, uint64_t a2)
{
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.legacy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  sub_1C6D746A8(v2, &v13 - v6, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    return sub_1C6D7456C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  }

  sub_1C6D74638(v7, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v10 = a1 + *(v9 + 28);
  result = sub_1C6D78A30();
  v12 = a1 + *(v9 + 32);
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t sub_1C6D7247C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D72C8C(a1, v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D74638(a2, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D7456C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.legacy.setter(uint64_t a1)
{
  sub_1C6D74638(v1, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D7456C(a1, v1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.legacy.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6D746A8(v1, v9, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6D74638(v9, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    v16 = v13 + *(v10 + 28);
    sub_1C6D78A30();
    v17 = v13 + *(v10 + 32);
    *v17 = 0;
    *(v17 + 4) = 1;
  }

  else
  {
    sub_1C6D7456C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  }

  return sub_1C6D72884;
}

void sub_1C6D72884(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1C6D72C8C((*a1)[3], v5, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    sub_1C6D74638(v8, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6D7456C(v5, v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1C6D7450C(v6, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  }

  else
  {
    sub_1C6D74638(**a1, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6D7456C(v6, v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1C6D72C28();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v8 + 56);
  sub_1C6D72C8C(a1, v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D72C8C(a2, v7 + v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  LOBYTE(a2) = _s19NewsPersonalization010Com_Apple_a1_B51Storage_CompressedSessionEventArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(v7, (v7 + v9));
  sub_1C6D7450C(v7 + v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D7450C(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  return a2 & 1;
}

void sub_1C6D72C28()
{
  if (!qword_1EC1D9AB0)
  {
    type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9AB0);
    }
  }
}

uint64_t sub_1C6D72C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D72CF4(uint64_t a1, uint64_t a2)
{
  sub_1C6D72C28();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v8 + 56);
  sub_1C6D72C8C(a1, v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D72C8C(a2, v7 + v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  LOBYTE(a2) = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.== infix(_:_:)(v7, (v7 + v9));
  sub_1C6D7450C(v7 + v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D7450C(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  return a2 & 1;
}

uint64_t sub_1C6D72E04()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9A98);
  __swift_project_value_buffer(v0, qword_1EC1D9A98);
  sub_1C6D745D4(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "legacy";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5C10 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9A98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D730A4(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6D730A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  sub_1C6D745D4(0, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata, v10);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v46 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v40 - v27;
  v43 = v5;
  v29 = *(v5 + 56);
  v47 = v4;
  v29(&v40 - v27, 1, 1, v4, v26);
  sub_1C6D746A8(v52, v14, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v40 = v16;
  v41 = v15;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6D74638(v14, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    v31 = v47;
  }

  else
  {
    sub_1C6D7456C(v14, v21, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    v32 = v44;
    sub_1C6D7456C(v21, v44, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6D74638(v28, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    v33 = v32;
    v34 = v45;
    sub_1C6D7456C(v33, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    sub_1C6D7456C(v34, v28, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    v31 = v47;
    (v29)(v28, 0, 1, v47);
  }

  sub_1C6D74118(qword_1EDCE2BA8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v35 = v48;
  sub_1C6D78BB0();
  v36 = v46;
  if (v35)
  {
    return sub_1C6D74638(v28, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  }

  sub_1C6D746A8(v28, v46, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  if ((*(v43 + 48))(v36, 1, v31) == 1)
  {
    sub_1C6D74638(v28, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    return sub_1C6D74638(v36, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  }

  else
  {
    v38 = v42;
    sub_1C6D7456C(v36, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6D74638(v28, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    v39 = v52;
    sub_1C6D74638(v52, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6D7456C(v38, v39, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    return (*(v40 + 56))(v39, 0, 1, v41);
  }
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6D73704(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = v3 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0) + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6D73704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D746A8(a1, v8, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_1C6D74638(v8, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  }

  sub_1C6D7456C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D74118(qword_1EDCE2BA8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D78CF0();
  return sub_1C6D7450C(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6D74118(&qword_1EC1D9AB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D739C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6D73A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D74118(&qword_1EC1D9AC8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D73AF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5C10 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9A98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D73BA0(uint64_t a1)
{
  v2 = sub_1C6D74118(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D73C0C()
{
  sub_1C6D74118(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B45Storage_CompressedSessionEventArticleMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1C6D72C28();
  v31 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v30 - v14;
  sub_1C6D74478();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 56);
  v32 = a1;
  sub_1C6D746A8(a1, v20, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v33 = a2;
  sub_1C6D746A8(a2, &v20[v21], &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v22 = *(v9 + 48);
  if (v22(v20, 1, v8) == 1)
  {
    if (v22(&v20[v21], 1, v8) == 1)
    {
      sub_1C6D74638(v20, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
LABEL_9:
      v28 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0) + 20);
      sub_1C6D78A40();
      sub_1C6D74118(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v23 = sub_1C6D79560();
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6D746A8(v20, v15, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if (v22(&v20[v21], 1, v8) == 1)
  {
    sub_1C6D7450C(v15, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
LABEL_6:
    sub_1C6D7450C(v20, sub_1C6D74478);
    goto LABEL_7;
  }

  v24 = &v20[v21];
  v25 = v30;
  sub_1C6D7456C(v24, v30, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v26 = *(v31 + 48);
  sub_1C6D72C8C(v15, v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D72C8C(v25, v7 + v26, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v27 = _s19NewsPersonalization010Com_Apple_a1_B51Storage_CompressedSessionEventArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(v7, (v7 + v26));
  sub_1C6D7450C(v25, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D7450C(v7 + v26, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D7450C(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D7450C(v15, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D74638(v20, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if (v27)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1C6D74118(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6D74260()
{
  sub_1C6D745D4(319, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6D74314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1C6B35EE0);
}

uint64_t sub_1C6D7436C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1C6B35F58);
}

uint64_t sub_1C6D743D4(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1C6D74478()
{
  if (!qword_1EC1D9AD0)
  {
    sub_1C6D745D4(255, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9AD0);
    }
  }
}

uint64_t sub_1C6D7450C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6D7456C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6D745D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6D74638(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6D745D4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6D746A8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6D745D4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D74728@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(v4 + 8))(v6, v3, v4);
  if (v7)
  {
    sub_1C6BA012C(v7, a1);
  }

  else
  {
    sub_1C6D74C04();
    sub_1C6D74CA8();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1C6B11190(v6);
}

uint64_t sub_1C6D747F4(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C6D74814, 0, 0);
}

uint64_t sub_1C6D74814()
{
  v1 = v0[33];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v0[34] = (*(v3 + 24))(0, v2, v3);
  v4 = *(MEMORY[0x1E69D6B08] + 4);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_1C6D748F4;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1C6D748F4()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_1C6D74B00;
  }

  else
  {
    v5 = *(v2 + 272);

    v4 = sub_1C6D74A10;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C6D74A10()
{
  v1 = *(v0 + 16);
  *(v0 + 152) = *(v0 + 32);
  v2 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v2;
  *(v0 + 232) = *(v0 + 112);
  *(v0 + 136) = v1;
  v3 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 246) = *(v0 + 126);
  *(v0 + 184) = v3;
  v4 = *(v0 + 152);
  if (v4)
  {
    v5 = *(v0 + 288);
    sub_1C6BA012C(v4, *(v0 + 256));
  }

  else
  {
    sub_1C6D74C04();
    sub_1C6D74CA8();
    swift_allocError();
    swift_willThrow();
  }

  sub_1C6B11190(v0 + 136);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1C6D74B00()
{
  v1 = v0[34];

  v2 = v0[36];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1C6D74B68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6BB6A40;

  return sub_1C6D747F4(a1);
}

void sub_1C6D74C04()
{
  if (!qword_1EC1D9AD8)
  {
    sub_1C6D74C5C();
    v0 = type metadata accessor for FeatureState.Errors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D9AD8);
    }
  }
}

unint64_t sub_1C6D74C5C()
{
  result = qword_1EDCDF870;
  if (!qword_1EDCDF870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCDF870);
  }

  return result;
}

unint64_t sub_1C6D74CA8()
{
  result = qword_1EC1D9AE0;
  if (!qword_1EC1D9AE0)
  {
    sub_1C6D74C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9AE0);
  }

  return result;
}

void sub_1C6D74D00(char a1, id a2, uint64_t a3, void (*a4)(void *), uint64_t a5, void (*a6)(uint64_t))
{
  if (a2)
  {
    v8 = a2;
    if (qword_1EDCE7540 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C6D7EB10;
    sub_1C6D75DE0();
    sub_1C6B1B2E8(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
    v10 = sub_1C6D7A0E0();
    v12 = v11;
    v13 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v14 = sub_1C6B2064C();
    *(v9 + 64) = v14;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    *(v9 + 96) = v13;
    *(v9 + 104) = v14;
    *(v9 + 72) = 0;
    *(v9 + 80) = 0xE000000000000000;
    sub_1C6D78D30();

    type metadata accessor for NewsPersonalizationDataCleanupStartupTask.Errors(0);
    sub_1C6B1B2E8(&qword_1EC1D9AE8, type metadata accessor for NewsPersonalizationDataCleanupStartupTask.Errors);
    v15 = swift_allocError();
    *v16 = a2;
    swift_storeEnumTagMultiPayload();
    v17 = a2;
    a4(v15);
  }

  else if (a1)
  {
    if (qword_1EDCE7540 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C6D7E630;
    sub_1C6D75DE0();
    sub_1C6B1B2E8(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
    v20 = sub_1C6D7A0E0();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1C6B2064C();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    a6(v23);
  }

  else
  {
    if (qword_1EDCE7540 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C6D7E630;
    sub_1C6D75DE0();
    sub_1C6B1B2E8(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
    v25 = sub_1C6D7A0E0();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1C6B2064C();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    sub_1C6D78D30();

    type metadata accessor for NewsPersonalizationDataCleanupStartupTask.Errors(0);
    sub_1C6B1B2E8(&qword_1EC1D9AE8, type metadata accessor for NewsPersonalizationDataCleanupStartupTask.Errors);
    v28 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    a4(v28);
  }
}

uint64_t sub_1C6D75204()
{
  if (qword_1EDCE7540 != -1)
  {
    swift_once();
  }

  sub_1C6D79AA0();
  sub_1C6B1D314();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C6D7E630;
  sub_1C6B10A98(0, &qword_1EDCEA410);
  sub_1C6D79E60();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1C6B2064C();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1C6D78D30();
}

uint64_t sub_1C6D75338()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC19NewsPersonalization41NewsPersonalizationDataCleanupStartupTask_privateDataDirectory;
  v3 = sub_1C6D75DE0();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1C6D75404(char a1, void *a2)
{
  v5 = *(sub_1C6D75DE0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + v8);
  v13 = *(v2 + v8 + 8);

  sub_1C6D74D00(a1, a2, v2 + v6, v10, v11, v12);
}

uint64_t sub_1C6D754C4()
{
  result = sub_1C6B10A98(319, &qword_1EDCEA410);
  if (v1 <= 0x3F)
  {
    result = sub_1C6D75DE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C6D75548(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v6 = sub_1C6D77E40();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C6D77910();
  v37 = *(v42 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D759E0();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D77290();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  (*(v22 + 16))(&v36 - v21, a1, v18, v20);
  if (swift_dynamicCast())
  {
    (*(v14 + 8))(v17, v13);
    v23 = sub_1C6D77270();
    v24 = sub_1C6D77330();
    v26 = v25;

    if (!v3)
    {
      sub_1C6D75A74(&qword_1EC1D9B00, MEMORY[0x1E69B47F8]);
      v27 = v42;
      sub_1C6D75AF0();
      v29 = v38;
      sub_1C6D77900();
      v30 = sub_1C6D77E30();
      v32 = v31;
      sub_1C6B1C9F0(v24, v26);
      (*(v39 + 8))(v29, v40);
      (*(v37 + 8))(v11, v27);
      *a3 = v30;
      a3[1] = v32;
      v33 = *MEMORY[0x1E69E3688];
      v34 = sub_1C6D76F90();
      v35 = *(v34 - 8);
      (*(v35 + 104))(a3, v33, v34);
      (*(v35 + 56))(a3, 0, 1, v34);
    }
  }

  else
  {
    v28 = sub_1C6D76F90();
    (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
  }
}

void sub_1C6D759E0()
{
  if (!qword_1EDCE6088)
  {
    sub_1C6D77920();
    sub_1C6D75A74(&qword_1EDCE5F28, MEMORY[0x1E69B4808]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6088);
    }
  }
}

uint64_t sub_1C6D75A74(unint64_t *a1, void (*a2)(uint64_t))
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