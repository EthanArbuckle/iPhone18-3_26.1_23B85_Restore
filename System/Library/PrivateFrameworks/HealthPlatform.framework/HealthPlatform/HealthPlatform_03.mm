void sub_228431898(id a1@<X1>, unint64_t *a2@<X0>, unint64_t a3@<X3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  if (a1)
  {
    v7 = a1;
    v8 = sub_22855BF2C();
    if (([v8 hk_isObjectNotFoundError] & 1) == 0)
    {
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v38 = sub_22855CABC();
      __swift_project_value_buffer(v38, qword_280DEEBF0);
      v39 = a1;
      v40 = sub_22855CA8C();
      v41 = sub_22855D68C();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = a2;
        v44 = swift_slowAlloc();
        *v42 = 138412290;
        v45 = a1;
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v46;
        *v44 = v46;
        _os_log_impl(&dword_2283ED000, v40, v41, "Failed to warm shared summary cache: %@", v42, 0xCu);
        sub_22841DC98(v44);
        v47 = v44;
        a2 = v43;
        MEMORY[0x22AABAD40](v47, -1, -1);
        MEMORY[0x22AABAD40](v42, -1, -1);
      }

      v48 = a2[5];
      if (v48 > 2)
      {
        v52 = sub_22847C760(MEMORY[0x277D84F90]);
        v53 = *a2;

        *a2 = v52;
        v51 = sub_2284349C8(a2, v8);
      }

      else
      {
        a2[5] = v48 + 1;
        v49 = sub_22847C760(MEMORY[0x277D84F90]);

        v50 = *a2;

        *a2 = v49;
        sub_228434D5C(a2[2]);
        v51 = 0;
        a2[2] = 0;
      }

      goto LABEL_38;
    }
  }

  if (!a3)
  {
    goto LABEL_35;
  }

  if (a3 >> 62)
  {
    goto LABEL_34;
  }

  v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_35:
    if (a4)
    {
      sub_228431DE4();
    }

    v51 = 1;
LABEL_38:
    *a5 = v51;
    return;
  }

  while (v9 >= 1)
  {
    v10 = 0;
    v57 = a2;
    v56 = v9;
    while (1)
    {
      v13 = (a3 & 0xC000000000000001) != 0 ? MEMORY[0x22AAB9D20](v10, a3) : *(a3 + 8 * v10 + 32);
      v14 = v13;
      v15 = [v13 package];
      v16 = sub_22855D1AC();
      v18 = v17;

      v59 = v14;
      v19 = [v14 name];
      v20 = sub_22855D1AC();
      v22 = v21;

      v23 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *a2;
      v60 = *a2;
      v27 = sub_228443C58(v16, v18, v20, v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      a2 = v26;
      if (*(v25 + 24) >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v33 = v60;
          if (v26)
          {
            goto LABEL_9;
          }
        }

        else
        {
          sub_228447E0C();
          v33 = v60;
          if (a2)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        sub_228444708(v30, isUniquelyReferenced_nonNull_native);
        v31 = sub_228443C58(v16, v18, v20, v22);
        if ((a2 & 1) != (v32 & 1))
        {
          goto LABEL_40;
        }

        v27 = v31;
        v33 = v60;
        if (a2)
        {
LABEL_9:
          v11 = v33[7];
          v12 = *(v11 + 8 * v27);
          *(v11 + 8 * v27) = v59;

          goto LABEL_10;
        }
      }

      v33[(v27 >> 6) + 8] |= 1 << v27;
      v34 = (v33[6] + 32 * v27);
      *v34 = v16;
      v34[1] = v18;
      v34[2] = v20;
      v34[3] = v22;
      *(v33[7] + 8 * v27) = v59;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_33;
      }

      v33[2] = v37;
LABEL_10:
      ++v10;
      a2 = v57;
      *v57 = v33;
      if (v56 == v10)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v9 = sub_22855DB4C();
    if (!v9)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_40:
  sub_22855E1BC();
  __break(1u);
}

uint64_t sub_228431D38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
    v6 = sub_22855D3AC();
  }

  v9 = a4;
  v8(v6, a3, a4);
}

void sub_228431DE4()
{
  v1 = [*(v0 + 16) healthStore];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    *(v3 + 24) = v2;
    v4 = objc_allocWithZone(MEMORY[0x277CCD958]);
    aBlock[4] = sub_2284349A0;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22850D278;
    aBlock[3] = &block_descriptor_1;
    v5 = _Block_copy(aBlock);

    v6 = v2;
    v7 = [v4 initWithHandler_];
    _Block_release(v5);

    [v6 executeQuery_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

uint64_t sub_228431F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  os_unfair_lock_lock(v4 + 16);
  sub_2284349A8(&v4[4], &v11);
  os_unfair_lock_unlock(v4 + 16);
  v5 = *(v11 + 16);
  if (v5)
  {
    v6 = (v11 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      v8(v9);

      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

void sub_228432004(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  if (!a1)
  {
    if (a4)
    {
      v20 = *(a3 + 32);
      v22 = (*(a3 + 24))(a4);
      if (v22)
      {
        v23 = v22;
        v24 = objc_allocWithZone(MEMORY[0x277CCD938]);
        v33[4] = sub_228434D30;
        v33[5] = a3;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 1107296256;
        v33[2] = sub_228432ECC;
        v33[3] = &block_descriptor_63;
        v25 = _Block_copy(v33);

        v26 = [v24 initWithTransaction:v23 package:0 resultsHandler:v25];
        _Block_release(v25);

        [a5 executeQuery_];

        v18 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }

      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v32 = sub_22855CABC();
      __swift_project_value_buffer(v32, qword_280DEEBF0);
      v28 = sub_22855CA8C();
      v29 = sub_22855D68C();
      if (!os_log_type_enabled(v28, v29))
      {
LABEL_19:

        v18 = sub_228434B8C(a2);
        goto LABEL_20;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "No fallback transaction selected.";
    }

    else
    {
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v27 = sub_22855CABC();
      __swift_project_value_buffer(v27, qword_280DEEBF0);
      v28 = sub_22855CA8C();
      v29 = sub_22855D68C();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_19;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "No fallback transactions found.";
    }

    _os_log_impl(&dword_2283ED000, v28, v29, v31, v30, 2u);
    MEMORY[0x22AABAD40](v30, -1, -1);
    goto LABEL_19;
  }

  v9 = a1;
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v10 = sub_22855CABC();
  __swift_project_value_buffer(v10, qword_280DEEBF0);
  v11 = a1;
  v12 = sub_22855CA8C();
  v13 = sub_22855D68C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_2283ED000, v12, v13, "Failed to fetch fallback transactions: %@", v14, 0xCu);
    sub_22841DC98(v15);
    MEMORY[0x22AABAD40](v15, -1, -1);
    MEMORY[0x22AABAD40](v14, -1, -1);
  }

  v18 = sub_228434B8C(a2);
LABEL_20:
  *a6 = v18;
}

uint64_t sub_2284323D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 40);
  os_unfair_lock_lock(v5 + 16);
  sub_228434D38(&v5[4], &v12);
  os_unfair_lock_unlock(v5 + 16);
  v6 = *(v12 + 16);
  if (v6)
  {
    v7 = (v12 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;

      v9(v10);

      v7 += 2;
      --v6;
    }

    while (v6);
  }
}

void sub_228432478(id a1@<X1>, uint64_t a2@<X0>, unint64_t a3@<X3>, char a4@<W4>, unint64_t a5@<X8>)
{
  v6 = a5;
  if (a1)
  {
    v7 = a1;
    v8 = a1;
    if (qword_280DEEBE8 == -1)
    {
LABEL_3:
      v9 = sub_22855CABC();
      __swift_project_value_buffer(v9, qword_280DEEBF0);
      v10 = v7;
      v11 = sub_22855CA8C();
      v12 = sub_22855D68C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = a2;
        v15 = swift_slowAlloc();
        *v13 = 138412290;
        v16 = v7;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&dword_2283ED000, v11, v12, "Failed to fetch fallback transactions: %@", v13, 0xCu);
        sub_22841DC98(v15);
        v18 = v15;
        a2 = v14;
        MEMORY[0x22AABAD40](v18, -1, -1);
        MEMORY[0x22AABAD40](v13, -1, -1);
      }

      v19 = sub_228434B8C(a2);
LABEL_33:
      *v6 = v19;
      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_3;
  }

  if (!a3)
  {
    goto LABEL_29;
  }

  v21 = a3;
  if (!(a3 >> 62))
  {
    v22 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_9;
    }

LABEL_29:
    if (a4)
    {
      v19 = sub_228434B8C(a2);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v6 = a5;
    goto LABEL_33;
  }

  v22 = sub_22855DB4C();
  v21 = a3;
  if (!v22)
  {
    goto LABEL_29;
  }

LABEL_9:
  if (v22 >= 1)
  {
    v23 = 0;
    v52 = a2;
    v53 = v21 & 0xC000000000000001;
    v50 = v22;
    v51 = v21;
    while (1)
    {
      v26 = v53 ? MEMORY[0x22AAB9D20](v23) : *(v21 + 8 * v23 + 32);
      v27 = v26;
      v28 = [v26 package];
      v29 = sub_22855D1AC();
      v31 = v30;

      v54 = v27;
      v32 = [v27 name];
      v7 = sub_22855D1AC();
      v34 = v33;

      v35 = *(a2 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *(a2 + 8);
      v6 = sub_228443C58(v29, v31, v7, v34);
      v39 = v37[2];
      v40 = (v38 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        break;
      }

      a2 = v38;
      if (v37[3] >= v41)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228447E0C();
        }
      }

      else
      {
        sub_228444708(v41, isUniquelyReferenced_nonNull_native);
        v42 = sub_228443C58(v29, v31, v7, v34);
        if ((a2 & 1) != (v43 & 1))
        {
          goto LABEL_35;
        }

        v6 = v42;
      }

      if (a2)
      {
        v24 = v37[7];
        v25 = *(v24 + 8 * v6);
        *(v24 + 8 * v6) = v54;
      }

      else
      {
        v37[(v6 >> 6) + 8] |= 1 << v6;
        v44 = (v37[6] + 32 * v6);
        *v44 = v29;
        v44[1] = v31;
        v44[2] = v7;
        v44[3] = v34;
        *(v37[7] + 8 * v6) = v54;
        v45 = v37[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_26;
        }

        v37[2] = v47;
      }

      ++v23;
      v21 = v51;
      a2 = v52;
      *(v52 + 8) = v37;
      if (v50 == v23)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __break(1u);
LABEL_35:
  sub_22855E1BC();
  __break(1u);
}

void sub_228432848(uint64_t a1, void (*a2)(void *), uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = *(a1 + 16);
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      a4(a1);
    }

    else
    {
      a2(v10);
      sub_228434D5C(v10);
    }
  }

  else
  {
    v11 = *(a1 + 24);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_228426518(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_228426518((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[32 * v13];
    *(v14 + 4) = a4;
    *(v14 + 5) = a5;
    *(v14 + 6) = a2;
    *(v14 + 7) = a3;
    *(a1 + 24) = v11;
  }
}

void sub_228432960()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock(v1 + 16);
  sub_228435484(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 16);
  v2 = v3;
  if (v3)
  {
    v3();
    sub_228416CF8(v2);
  }
}

uint64_t sub_2284329DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v11 = *(a1 + 16);
  if (v11 >= 2)
  {
    v18 = swift_allocObject();
    if (v11 == 2)
    {
      *(v18 + 2) = a4;
      *(v18 + 3) = a5;
      *a6 = sub_2284354D8;
      a6[1] = v18;
    }

    else
    {
      *(v18 + 2) = a2;
      *(v18 + 3) = a3;
      *(v18 + 4) = v11;
      *a6 = sub_228435044;
      a6[1] = v18;
      sub_228435074(v11);
    }
  }

  else
  {
    v13 = *(a1 + 32);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22842652C(0, *(v13 + 16) + 1, 1, v13);
      v13 = result;
    }

    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_22842652C((v15 > 1), v16 + 1, 1, v13);
      v13 = result;
    }

    *(v13 + 16) = v16 + 1;
    v17 = (v13 + 32 * v16);
    v17[4] = a4;
    v17[5] = a5;
    v17[6] = a2;
    v17[7] = a3;
    *(a1 + 32) = v13;
    *a6 = 0;
    a6[1] = 0;
  }

  return result;
}

uint64_t CachingSharedSummaryTransactionBuilder.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t CachingSharedSummaryTransactionBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_228432BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_retain_n();

  sub_228432960();
}

uint64_t sub_228432CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  swift_retain_n();

  sub_228432960();
}

uint64_t sub_228432DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  swift_retain_n();

  sub_228432960();
}

uint64_t sub_228432ECC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a3)
  {
    sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
    v7 = sub_22855D3AC();
  }

  v11 = a2;
  v12 = a5;
  v10(v11, v7, a4, a5);
}

uint64_t sub_228432F98(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22851FDE8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_228433014(v6);
  return sub_22855DD2C();
}

void sub_228433014(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22855E10C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
        v6 = sub_22855D40C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_228433408(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_228433128(0, v2, 1, a1);
  }
}

void sub_228433128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v44 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v42 = v4;
    v43 = a3;
    v6 = *(v44 + 8 * a3);
    v41 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 package];
      v11 = sub_22855D1AC();
      v13 = v12;

      v14 = [v9 package];
      v15 = sub_22855D1AC();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {
      }

      else
      {
        v19 = sub_22855E15C();

        if (v19)
        {

          goto LABEL_21;
        }
      }

      v20 = [v8 package];
      v21 = sub_22855D1AC();
      v23 = v22;

      v24 = [v9 package];
      v25 = sub_22855D1AC();
      v27 = v26;

      if (v25 == v21 && v27 == v23)
      {
      }

      else
      {
        v28 = sub_22855E15C();

        if (v28)
        {

LABEL_5:
          a3 = v43 + 1;
          v4 = v42 + 8;
          v5 = v41 - 1;
          if (v43 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }
      }

      v29 = [v8 name];
      v30 = sub_22855D1AC();
      v32 = v31;

      v33 = [v9 name];
      v34 = sub_22855D1AC();
      v36 = v35;

      if (v30 == v34 && v32 == v36)
      {

        goto LABEL_5;
      }

      v37 = sub_22855E15C();

      if ((v37 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_21:
      if (!v44)
      {
        __break(1u);
        return;
      }

      v38 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v38;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_228433408(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_129:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_170;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v127 = v4;
LABEL_132:
      v150 = v127;
      v4 = *(v127 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v128 = *&v127[16 * v4];
          v129 = v127;
          v130 = *&v127[16 * v4 + 24];
          sub_228433ED4((*a3 + 8 * v128), (*a3 + 8 * *&v127[16 * v4 + 16]), (*a3 + 8 * v130), v5);
          if (v145)
          {
            goto LABEL_140;
          }

          if (v130 < v128)
          {
            goto LABEL_157;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_22851F230(v129);
          }

          if (v4 - 2 >= *(v129 + 2))
          {
            goto LABEL_158;
          }

          v131 = &v129[16 * v4];
          *v131 = v128;
          *(v131 + 1) = v130;
          v150 = v129;
          sub_22851F1A4(v4 - 1);
          v127 = v150;
          v4 = *(v150 + 2);
          if (v4 <= 1)
          {
            goto LABEL_140;
          }
        }

        goto LABEL_168;
      }

LABEL_140:

      return;
    }

LABEL_164:
    v127 = sub_22851F230(v4);
    goto LABEL_132;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
LABEL_4:
  v9 = v7;
  if (v7 + 1 >= v6)
  {
    v143 = v7 + 1;
    goto LABEL_42;
  }

  v135 = v8;
  v4 = *a3;
  v149 = *(*a3 + 8 * (v7 + 1));
  v148 = *(v4 + 8 * v7);
  v10 = v148;
  v11 = v149;
  v5 = v10;
  v146 = sub_22843127C(&v149, &v148);
  if (v145)
  {

    return;
  }

  v12 = v9 + 2;
  if (v9 + 2 >= v6)
  {
    goto LABEL_32;
  }

  v143 = v9 + 2;
  v132 = v9;
  v4 += 8 * v9 + 16;
  v140 = v6;
  while (1)
  {
    v14 = *(v4 - 8);
    v15 = *v4;
    v16 = v14;
    v17 = [v15 package];
    v18 = sub_22855D1AC();
    v20 = v19;

    v21 = [v16 package];
    v22 = sub_22855D1AC();
    v5 = v23;

    if (v18 == v22 && v20 == v5)
    {
    }

    else
    {
      v25 = sub_22855E15C();

      if (v25)
      {

        if ((v146 & 1) == 0)
        {
          v8 = v135;
          v9 = v132;
          goto LABEL_42;
        }

        goto LABEL_9;
      }
    }

    v26 = [v15 package];
    v27 = sub_22855D1AC();
    v29 = v28;

    v30 = [v16 package];
    v31 = sub_22855D1AC();
    v5 = v32;

    if (v31 != v27)
    {
      goto LABEL_21;
    }

    if (v5 == v29)
    {
    }

    else
    {
LABEL_21:
      v33 = sub_22855E15C();

      if (v33)
      {

        if (v146)
        {
          goto LABEL_27;
        }

        goto LABEL_9;
      }
    }

    v34 = [v15 name];
    v5 = sub_22855D1AC();
    v36 = v35;

    v37 = [v16 name];
    v38 = sub_22855D1AC();
    v40 = v39;

    if (v5 == v38 && v36 == v40)
    {

      if (v146)
      {
LABEL_27:
        v8 = v135;
        v12 = v143;
        v9 = v132;
        goto LABEL_33;
      }

      goto LABEL_9;
    }

    v13 = sub_22855E15C();

    if ((v146 ^ v13))
    {
      break;
    }

LABEL_9:
    v4 += 8;
    if (v140 == ++v143)
    {
      v12 = v140;
      goto LABEL_31;
    }
  }

  v12 = v143;
LABEL_31:
  v9 = v132;
LABEL_32:
  v8 = v135;
  if (v146)
  {
LABEL_33:
    if (v12 < v9)
    {
      goto LABEL_161;
    }

    v143 = v12;
    if (v9 < v12)
    {
      v41 = 8 * v12 - 8;
      v42 = 8 * v9;
      v43 = v9;
      do
      {
        if (v43 != --v12)
        {
          v45 = *a3;
          if (!*a3)
          {
            goto LABEL_167;
          }

          v44 = *(v45 + v42);
          *(v45 + v42) = *(v45 + v41);
          *(v45 + v41) = v44;
        }

        ++v43;
        v41 -= 8;
        v42 += 8;
      }

      while (v43 < v12);
    }
  }

  else
  {
    v143 = v12;
  }

LABEL_42:
  v7 = v143;
  v46 = a3[1];
  if (v143 >= v46)
  {
    goto LABEL_74;
  }

  if (__OFSUB__(v143, v9))
  {
    goto LABEL_160;
  }

  if (v143 - v9 >= a4)
  {
    v7 = v143;
LABEL_74:
    if (v7 < v9)
    {
      goto LABEL_159;
    }

    goto LABEL_75;
  }

  v47 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_162;
  }

  if (v47 >= v46)
  {
    v47 = a3[1];
  }

  if (v47 < v9)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v7 = v143;
  if (v143 == v47)
  {
    goto LABEL_74;
  }

  v136 = v8;
  v147 = *a3;
  v4 = *a3 + 8 * v143 - 8;
  v48 = v143;
  v133 = v9;
  v49 = v9 - v143;
  v138 = v47;
  while (2)
  {
    v144 = v48;
    v50 = *(v147 + 8 * v48);
    v139 = v49;
    v141 = v4;
LABEL_54:
    v51 = *v4;
    v52 = v50;
    v53 = v51;
    v54 = [v52 package];
    v55 = sub_22855D1AC();
    v57 = v56;

    v58 = [v53 package];
    v59 = sub_22855D1AC();
    v5 = v60;

    if (v55 == v59 && v57 == v5)
    {
    }

    else
    {
      v62 = sub_22855E15C();

      if (v62)
      {

        goto LABEL_68;
      }
    }

    v63 = [v52 package];
    v64 = sub_22855D1AC();
    v66 = v65;

    v67 = [v53 package];
    v68 = sub_22855D1AC();
    v5 = v69;

    if (v68 == v64 && v5 == v66)
    {

      break;
    }

    v70 = sub_22855E15C();

    if (v70)
    {

LABEL_52:
      v48 = v144 + 1;
      v4 = v141 + 8;
      v49 = v139 - 1;
      if (v144 + 1 != v138)
      {
        continue;
      }

      v7 = v138;
      v8 = v136;
      v9 = v133;
      if (v138 < v133)
      {
        goto LABEL_159;
      }

LABEL_75:
      v81 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v81;
      }

      else
      {
        v8 = sub_2284263F0(0, *(v81 + 2) + 1, 1, v81);
      }

      v4 = *(v8 + 2);
      v82 = *(v8 + 3);
      v83 = v4 + 1;
      if (v4 >= v82 >> 1)
      {
        v8 = sub_2284263F0((v82 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v83;
      v84 = &v8[16 * v4];
      *(v84 + 4) = v9;
      *(v84 + 5) = v7;
      v85 = *a1;
      if (!*a1)
      {
        goto LABEL_169;
      }

      if (v4)
      {
        while (2)
        {
          v86 = v83 - 1;
          if (v83 >= 4)
          {
            v91 = &v8[16 * v83 + 32];
            v92 = *(v91 - 64);
            v93 = *(v91 - 56);
            v97 = __OFSUB__(v93, v92);
            v94 = v93 - v92;
            if (v97)
            {
              goto LABEL_146;
            }

            v96 = *(v91 - 48);
            v95 = *(v91 - 40);
            v97 = __OFSUB__(v95, v96);
            v89 = v95 - v96;
            v90 = v97;
            if (v97)
            {
              goto LABEL_147;
            }

            v98 = &v8[16 * v83];
            v100 = *v98;
            v99 = *(v98 + 1);
            v97 = __OFSUB__(v99, v100);
            v101 = v99 - v100;
            if (v97)
            {
              goto LABEL_149;
            }

            v97 = __OFADD__(v89, v101);
            v102 = v89 + v101;
            if (v97)
            {
              goto LABEL_152;
            }

            if (v102 >= v94)
            {
              v120 = &v8[16 * v86 + 32];
              v122 = *v120;
              v121 = *(v120 + 1);
              v97 = __OFSUB__(v121, v122);
              v123 = v121 - v122;
              if (v97)
              {
                goto LABEL_156;
              }

              if (v89 < v123)
              {
                v86 = v83 - 2;
              }
            }

            else
            {
LABEL_94:
              if (v90)
              {
                goto LABEL_148;
              }

              v103 = &v8[16 * v83];
              v105 = *v103;
              v104 = *(v103 + 1);
              v106 = __OFSUB__(v104, v105);
              v107 = v104 - v105;
              v108 = v106;
              if (v106)
              {
                goto LABEL_151;
              }

              v109 = &v8[16 * v86 + 32];
              v111 = *v109;
              v110 = *(v109 + 1);
              v97 = __OFSUB__(v110, v111);
              v112 = v110 - v111;
              if (v97)
              {
                goto LABEL_154;
              }

              if (__OFADD__(v107, v112))
              {
                goto LABEL_155;
              }

              if (v107 + v112 < v89)
              {
                goto LABEL_108;
              }

              if (v89 < v112)
              {
                v86 = v83 - 2;
              }
            }
          }

          else
          {
            if (v83 == 3)
            {
              v87 = *(v8 + 4);
              v88 = *(v8 + 5);
              v97 = __OFSUB__(v88, v87);
              v89 = v88 - v87;
              v90 = v97;
              goto LABEL_94;
            }

            v113 = &v8[16 * v83];
            v115 = *v113;
            v114 = *(v113 + 1);
            v97 = __OFSUB__(v114, v115);
            v107 = v114 - v115;
            v108 = v97;
LABEL_108:
            if (v108)
            {
              goto LABEL_150;
            }

            v116 = &v8[16 * v86];
            v118 = *(v116 + 4);
            v117 = *(v116 + 5);
            v97 = __OFSUB__(v117, v118);
            v119 = v117 - v118;
            if (v97)
            {
              goto LABEL_153;
            }

            if (v119 < v107)
            {
              break;
            }
          }

          v4 = v86 - 1;
          if (v86 - 1 >= v83)
          {
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
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
            goto LABEL_163;
          }

          if (!*a3)
          {
            goto LABEL_166;
          }

          v5 = v8;
          v124 = *&v8[16 * v4 + 32];
          v125 = *&v8[16 * v86 + 40];
          sub_228433ED4((*a3 + 8 * v124), (*a3 + 8 * *&v8[16 * v86 + 32]), (*a3 + 8 * v125), v85);
          if (v145)
          {
            goto LABEL_140;
          }

          if (v125 < v124)
          {
            goto LABEL_144;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_22851F230(v5);
          }

          if (v4 >= v5[2])
          {
            goto LABEL_145;
          }

          v126 = &v5[2 * v4];
          v126[4] = v124;
          v126[5] = v125;
          v150 = v5;
          sub_22851F1A4(v86);
          v8 = v150;
          v83 = *(v150 + 2);
          if (v83 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_129;
      }

      goto LABEL_4;
    }

    break;
  }

  v71 = [v52 name];
  v5 = sub_22855D1AC();
  v73 = v72;

  v74 = [v53 name];
  v75 = sub_22855D1AC();
  v77 = v76;

  if (v5 == v75 && v73 == v77)
  {

    goto LABEL_52;
  }

  v78 = sub_22855E15C();

  if ((v78 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_68:
  if (v147)
  {
    v79 = *v4;
    v50 = *(v4 + 8);
    *v4 = v50;
    *(v4 + 8) = v79;
    v4 -= 8;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_52;
    }

    goto LABEL_54;
  }

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
  __break(1u);
}

uint64_t sub_228433ED4(id *__dst, id *__src, id *a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_22843127C(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_22843127C(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_228434270(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_22855DB4C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2284630BC(v3, 0);
  sub_2284AC9F8(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_228434304(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v4 = sub_22855D81C();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855D7BC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_22855CFEC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = MEMORY[0x277D84F90];
  v13 = sub_22847C760(MEMORY[0x277D84F90]);
  v14 = sub_22847C760(v12);
  sub_2284350F4();
  v15 = swift_allocObject();
  *(v15 + 64) = 0;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  *(v15 + 32) = 0;
  *(v15 + 40) = v12;
  *(v15 + 48) = v12;
  *(v15 + 56) = 0;
  v3[5] = v15;
  v21[1] = sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_22855CFDC();
  v27 = v12;
  sub_228435154(&unk_280DED140, MEMORY[0x277D85230]);
  v16 = MEMORY[0x277D85230];
  sub_2283FA2E8(0, &qword_280DED250, MEMORY[0x277D85230]);
  sub_2283F461C(&qword_280DED240, &qword_280DED250, v16);
  sub_22855DA9C();
  (*(v22 + 104))(v7, *MEMORY[0x277D85260], v23);
  v3[6] = sub_22855D84C();
  v17 = v24;
  v18 = v25;
  v3[2] = v24;
  v3[3] = v18;
  v3[4] = v26;
  v19 = v17;

  sub_228431678();
  return v3;
}

uint64_t sub_22843466C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2284346F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 1);
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform38CachingSharedSummaryTransactionBuilderC10CacheStateO(uint64_t *a1)
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

uint64_t sub_2284348FC(uint64_t *a1, int a2)
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

uint64_t sub_228434944(uint64_t result, int a2, int a3)
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

uint64_t sub_2284349C8(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2;
  sub_228434D5C(v4);
  a1[2] = a2;
  v6 = a1[3];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 56);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v8 += 4;

      v10(v5);

      --v7;
    }

    while (v7);
  }

  v12 = MEMORY[0x277D84F90];
  v13 = a1[4];
  a1[3] = MEMORY[0x277D84F90];
  a1[4] = v12;
  v14 = *(v13 + 16);
  if (v14)
  {
    v26 = v12;
    sub_2284273F0(0, v14, 0);
    v15 = v26;
    v16 = (v13 + 56);
    do
    {
      v17 = *(v16 - 3);
      v18 = *v16;
      v19 = swift_allocObject();
      v20 = *(v16 - 1);
      *(v19 + 16) = v17;
      *(v19 + 24) = v20;
      *(v19 + 40) = v18;
      *(v19 + 48) = v5;
      v22 = *(v26 + 16);
      v21 = *(v26 + 24);
      v23 = v5;

      if (v22 >= v21 >> 1)
      {
        sub_2284273F0((v21 > 1), v22 + 1, 1);
      }

      *(v26 + 16) = v22 + 1;
      v24 = v26 + 16 * v22;
      *(v24 + 32) = sub_228434DAC;
      *(v24 + 40) = v19;
      v16 += 4;
      --v14;
    }

    while (v14);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v15;
}

uint64_t sub_228434B8C(uint64_t a1)
{
  sub_228434D5C(*(a1 + 16));
  *(a1 + 16) = 2;
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(a1 + 24);

    v5 = (v2 + 56);
    do
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v8 = *v5;
      v5 += 4;

      v7(a1);

      --v3;
    }

    while (v3);

    v9 = *(a1 + 24);
  }

  v10 = MEMORY[0x277D84F90];
  v11 = *(a1 + 32);
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = v10;
  v12 = *(v11 + 16);
  if (v12)
  {
    v22 = v10;
    sub_2284273F0(0, v12, 0);
    v13 = v22;
    v14 = (v11 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      *(v17 + 24) = v16;
      v18 = *(v22 + 16);
      v19 = *(v22 + 24);

      if (v18 >= v19 >> 1)
      {
        sub_2284273F0((v19 > 1), v18 + 1, 1);
      }

      *(v22 + 16) = v18 + 1;
      v20 = v22 + 16 * v18;
      *(v20 + 32) = sub_2284186F8;
      *(v20 + 40) = v17;
      v14 += 4;
      --v12;
    }

    while (v12);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

void sub_228434D5C(id a1)
{
  if (a1 >= 3)
  {
  }
}

void sub_228434D74(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 48);
  sub_228431898(*(v2 + 16), a1, *(v2 + 32), *(v2 + 40), a2);
}

unint64_t sub_228434D9C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_26Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_228434F14(uint64_t a1, void *a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  sub_22842FBE0(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

void sub_228434F44(uint64_t a1, void *a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  sub_22842F5E8(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

uint64_t sub_228434F70(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_102Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

id sub_228435074(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_108Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2284350F4()
{
  if (!qword_280DE90E8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE90E8);
    }
  }
}

uint64_t sub_228435154(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2284351B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_228435200(uint64_t result, int a2, int a3)
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

uint64_t sub_228435250(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2284352AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_2284352FC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_22843532C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_228435374(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2284353C8()
{
  result = qword_280DEA330;
  if (!qword_280DEA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA330);
  }

  return result;
}

uint64_t PluginStorage.uniqueIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PluginStorage.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *PluginStorage.sourceProfile.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t PluginStorage.data.getter()
{
  v1 = *(v0 + 24);
  sub_22843560C(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_22843560C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22842B3E0(a1, a2);
  }

  return a1;
}

uint64_t PluginStorage.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22842B378(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PluginStorage.pluginIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PluginStorage.pluginIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PluginStorage.init(uniqueIdentifier:sourceProfile:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  a6[5] = 0;
  a6[6] = 0xE000000000000000;
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  result = sub_22842B378(0, 0xF000000000000000);
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t PluginStorage.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22855DC6C();

  MEMORY[0x22AAB92A0](v1, v2);
  MEMORY[0x22AAB92A0](0xD000000000000011, 0x800000022856E1D0);
  v4 = SourceProfile.description.getter(v3);
  MEMORY[0x22AAB92A0](v4);

  return 0xD000000000000011;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_228435870(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2284358B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_228435914(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, unint64_t *a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  a3(0);
  sub_228436158(a4, a5);
  v11 = sub_22855D51C();

  *a6 = v11;
}

void sub_2284359A0(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t), SEL *a8)
{
  v11 = *a1;
  v12 = *a2;
  a5(0);
  sub_228436158(a6, a7);
  v13 = sub_22855D50C();
  [v12 *a8];
}

void sub_228435A3C(id *a1)
{
  v1 = [*a1 dateSubmitted];
  sub_22855C13C();
}

void sub_228435A9C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_22855D1AC();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

void sub_228435AF0(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22855C09C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_228435B54(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = *a1;
    v7 = sub_22855C08C();
  }

  v9 = v7;
  [v6 *a5];
}

void sub_228435BCC(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22855D1AC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_228435C30(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_22855D17C();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_228435CA0@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_22855C13C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_22855C16C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_228435D40(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  sub_22843609C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284360F4(a1, v11);
  v12 = *a2;
  v13 = sub_22855C16C();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_22855C10C();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

void keypath_set_12Tm(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = sub_22855D17C();
  [v8 *a5];
}

void sub_22843609C()
{
  if (!qword_280DEE380)
  {
    sub_22855C16C();
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE380);
    }
  }
}

uint64_t sub_2284360F4(uint64_t a1, uint64_t a2)
{
  sub_22843609C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228436158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Publisher.receive(on:domain:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 24);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = v8;
  v14 = *(a2 + 1);
  v15 = v9;
  return (*(v11 + 8))(v4, &v13, a3, a4, v10, v11);
}

uint64_t Publisher.subscribe(on:domain:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 24);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = v8;
  v14 = *(a2 + 1);
  v15 = v9;
  return (*(v11 + 16))(v4, &v13, a3, a4, v10, v11);
}

uint64_t CountryRetrievalRecord.isoCountryCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CountryRetrievalRecord.isoCountryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CountryRetrievalRecord.retrieved.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CountryRetrievalRecord() + 24);
  v4 = sub_22855C16C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CountryRetrievalRecord()
{
  result = qword_280DEBBD0;
  if (!qword_280DEBBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CountryRetrievalRecord.retrieved.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CountryRetrievalRecord() + 24);
  v4 = sub_22855C16C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CountryRetrievalRecord.init(isoCountryCode:provenance:retrieved:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for CountryRetrievalRecord() + 24);
  v8 = sub_22855C16C();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t _s14HealthPlatform15GenerationPhaseO9hashValueSivg_0()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

uint64_t sub_228436628()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

uint64_t sub_22843666C()
{
  v1 = 0x6E616E65766F7270;
  if (*v0 != 1)
  {
    v1 = 0x6576656972746572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F436F7369;
  }
}

uint64_t sub_2284366DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2284377DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_228436710(uint64_t a1)
{
  v2 = sub_228436978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22843674C(uint64_t a1)
{
  v2 = sub_228436978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CountryRetrievalRecord.encode(to:)(void *a1)
{
  v3 = v1;
  sub_228436D94(0, &qword_280DE9000, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228436978();
  sub_22855E31C();
  v12 = *v3;
  v13 = v3[1];
  v17[15] = 0;
  sub_22855E08C();
  if (!v2)
  {
    v14 = *(type metadata accessor for CountryRetrievalRecord() + 24);
    v17[14] = 2;
    sub_22855C16C();
    sub_2284373B4(&unk_280DECD90, MEMORY[0x277CC9578]);
    sub_22855E0CC();
    v15 = v3[2];
    v17[13] = 1;
    sub_22855E0BC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_228436978()
{
  result = qword_280DEBBF0;
  if (!qword_280DEBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBBF0);
  }

  return result;
}

uint64_t CountryRetrievalRecord.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_22855C16C();
  v27 = *(v29 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228436D94(0, &qword_27D83F4D8, MEMORY[0x277D844C8]);
  v30 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  v11 = type metadata accessor for CountryRetrievalRecord();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228436978();
  sub_22855E30C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v11;
  v25 = a1;
  v17 = v28;
  v16 = v29;
  v33 = 0;
  *v14 = sub_22855DFFC();
  v14[1] = v18;
  v23[2] = v18;
  v32 = 2;
  sub_2284373B4(&qword_27D83F4E0, MEMORY[0x277CC9578]);
  sub_22855E03C();
  (*(v27 + 32))(v14 + *(v24 + 24), v6, v16);
  v31 = 1;
  v23[1] = 0;
  v19 = sub_22855E02C();
  v20 = v25;
  v21 = v19;
  (*(v17 + 8))(v10, v30);
  v14[2] = v21;
  sub_228436DF8(v14, v26);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return sub_228436E5C(v14);
}

void sub_228436D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228436978();
    v7 = a3(a1, &type metadata for CountryRetrievalRecord.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228436DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CountryRetrievalRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228436E5C(uint64_t a1)
{
  v2 = type metadata accessor for CountryRetrievalRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static CountryRetrievalRecord.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22855E15C() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v5 = *(type metadata accessor for CountryRetrievalRecord() + 24);

  return MEMORY[0x28211DA98](a1 + v5, a2 + v5);
}

uint64_t CountryRetrievalRecord.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22855D20C();
  MEMORY[0x22AABA2B0](v0[2]);
  v3 = *(type metadata accessor for CountryRetrievalRecord() + 24);
  sub_22855C16C();
  sub_2284373B4(&qword_27D83F4E8, MEMORY[0x277CC9578]);
  return sub_22855D14C();
}

uint64_t CountryRetrievalRecord.hashValue.getter()
{
  sub_22855E22C();
  v1 = *v0;
  v2 = v0[1];
  sub_22855D20C();
  MEMORY[0x22AABA2B0](v0[2]);
  v3 = *(type metadata accessor for CountryRetrievalRecord() + 24);
  sub_22855C16C();
  sub_2284373B4(&qword_27D83F4E8, MEMORY[0x277CC9578]);
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_2284370A0(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_22855E15C() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v7 = *(a3 + 24);

  return MEMORY[0x28211DA98](a1 + v7, a2 + v7);
}

uint64_t sub_228437164(uint64_t a1)
{
  sub_22855E22C();
  v3 = *v1;
  v4 = v1[1];
  sub_22855D20C();
  MEMORY[0x22AABA2B0](v1[2]);
  v5 = *(a1 + 24);
  sub_22855C16C();
  sub_2284373B4(&qword_27D83F4E8, MEMORY[0x277CC9578]);
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_22843721C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_22855D20C();
  MEMORY[0x22AABA2B0](v2[2]);
  v6 = *(a2 + 24);
  sub_22855C16C();
  sub_2284373B4(&qword_27D83F4E8, MEMORY[0x277CC9578]);
  return sub_22855D14C();
}

uint64_t sub_2284372B8(uint64_t a1, uint64_t a2)
{
  sub_22855E22C();
  v4 = *v2;
  v5 = v2[1];
  sub_22855D20C();
  MEMORY[0x22AABA2B0](v2[2]);
  v6 = *(a2 + 24);
  sub_22855C16C();
  sub_2284373B4(&qword_27D83F4E8, MEMORY[0x277CC9578]);
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_2284373B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228437424()
{
  type metadata accessor for HKOnboardingCompletionCountryCodeProvenance(319);
  if (v0 <= 0x3F)
  {
    sub_22855C16C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2284374B8(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_228437508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_22843755C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for CountryRetrievalRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CountryRetrievalRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2284376D8()
{
  result = qword_27D83F4F8;
  if (!qword_27D83F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F4F8);
  }

  return result;
}

unint64_t sub_228437730()
{
  result = qword_280DEBBE0;
  if (!qword_280DEBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBBE0);
  }

  return result;
}

unint64_t sub_228437788()
{
  result = qword_280DEBBE8;
  if (!qword_280DEBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBBE8);
  }

  return result;
}

uint64_t sub_2284377DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E616E65766F7270 && a2 == 0xEA00000000006563 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576656972746572 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_22855E15C();

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

uint64_t Publisher.handleStartAndIdleEvents(idleTimeInterval:queue:startBlock:idleBlock:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = *(a6 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](a1);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v21, v20);
  (*(v16 + 32))(a7, v19, a6);
  v22 = type metadata accessor for Publishers.HandleStartAndIdleEvents();
  *(a7 + v22[9]) = a8;
  *(a7 + v22[10]) = a1;
  v23 = (a7 + v22[11]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a7 + v22[12]);
  *v24 = a4;
  v24[1] = a5;
  v25 = a1;
}

int *Publishers.HandleStartAndIdleEvents.init(_:idleTimeInterval:queue:startBlock:idleBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  result = type metadata accessor for Publishers.HandleStartAndIdleEvents();
  *(a8 + result[9]) = a9;
  *(a8 + result[10]) = a2;
  v17 = (a8 + result[11]);
  *v17 = a3;
  v17[1] = a4;
  v18 = (a8 + result[12]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t Publishers.HandleStartAndIdleEvents.receive<A>(subscriber:)(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v30 = *(v12 + 24);
  v31 = v13;
  v32 = v14;
  v33 = v30;
  v34 = v15;
  v16 = _s24HandleStartAndIdleEventsV5InnerCMa();
  (*(v8 + 16))(v11, a1, a3);
  v17 = *(v4 + a2[9]);
  v18 = *(v4 + a2[10]);
  v19 = a2[12];
  v20 = (v4 + a2[11]);
  v21 = *v20;
  v22 = v20[1];
  v23 = *(v4 + v19);
  v24 = *(v4 + v19 + 8);
  v25 = *(v16 + 48);
  v26 = *(v16 + 52);
  swift_allocObject();
  v27 = v18;

  v31 = sub_2284382BC(v11, v27, v21, v22, v23, v24, v17);
  swift_getWitnessTable();
  sub_22855CF6C();
}

uint64_t *sub_228437D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  swift_allocObject();
  return sub_2284382BC(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_228437DB4(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

unint64_t sub_228437DEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_2283FA06C();
    if (v4 <= 0x3F)
    {
      result = sub_2283FBB5C();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_228437E94(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_228437FF0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
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

      else if (v13)
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_2284381D0(uint64_t a1)
{
  v1 = *(a1 + 88);
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

uint64_t *sub_2284382BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = *v7;
  v16 = *(*v7 + 152);
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *(v7 + v16) = v17;
  v19 = v7 + *(*v7 + 160);
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 40) = 2;
  *(v7 + *(*v7 + 168)) = 0;
  *(v7 + *(*v7 + 176)) = 1;
  (*(*(*(v15 + 88) - 8) + 32))(v7 + *(*v7 + 112), a1);
  *(v7 + *(*v7 + 128)) = a2;
  *(v7 + *(*v7 + 120)) = a7;
  v20 = (v7 + *(*v7 + 136));
  *v20 = a3;
  v20[1] = a4;
  v21 = (v7 + *(*v7 + 144));
  *v21 = a5;
  v21[1] = a6;
  return v7;
}

uint64_t sub_228438488(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(*v1 + 160);
  swift_beginAccess();
  sub_228439384(v1 + v5, &v17);
  if (v20 == 2 && (v6 = vorrq_s8(v18, v19), !(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v17)))
  {
    sub_2284393E0(&v17);
    sub_2283F9B10(a1, &v17);
    v20 = 0;
    swift_beginAccess();
    sub_228439238(&v17, v1 + v5);
    swift_endAccess();
    v10 = v1;
    sub_22843867C();
    os_unfair_lock_unlock(*(v4 + 16));
    v11 = *(*v1 + 112);
    v19.i64[0] = v3;
    v19.i64[1] = swift_getWitnessTable();
    v17 = v10;
    v12 = *(v3 + 88);
    v13 = *(v3 + 104);

    sub_22855CC5C();
    v14 = __swift_destroy_boxed_opaque_existential_0(&v17);
    v15 = v10 + *(*v10 + 136);
    v16 = *(v15 + 8);
    return (*v15)(v14);
  }

  else
  {
    sub_2284393E0(&v17);
    os_unfair_lock_unlock(*(v4 + 16));
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = *(v7 + 8);
    return sub_22855CC7C();
  }
}

uint64_t sub_22843867C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2;
  v4 = sub_22855D00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v29 - v10;
  v11 = sub_22855CFBC();
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x28223BE20](v11);
  v14 = *(v2 + 168);
  if (*(v1 + v14))
  {
    v15 = *(v1 + v14);

    sub_22855D02C();

    v2 = *v1;
  }

  if (*(v1 + *(v2 + 176)) == 1)
  {
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = *(v3 + 80);
    *(v17 + 24) = *(v3 + 88);
    *(v17 + 40) = *(v3 + 104);
    *(v17 + 48) = v16;
    aBlock[4] = sub_228439294;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_2;
    v29 = _Block_copy(aBlock);
    v32 = MEMORY[0x277D84F90];
    sub_2284392A4();
    sub_2284394C8(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2284392FC();
    v30 = v4;

    sub_22855DA9C();
    v18 = sub_22855D03C();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_22855D01C();

    v22 = *(v1 + v14);
    *(v1 + v14) = v21;

    v23 = *(v1 + *(*v1 + 128));
    sub_22855CFFC();
    v24 = *(v1 + *(*v1 + 120));
    v25 = v31;
    sub_22855D06C();
    v26 = *(v5 + 8);
    v27 = v9;
    v28 = v30;
    v26(v27, v30);
    sub_22855D7DC();

    return (v26)(v25, v28);
  }

  return result;
}

uint64_t sub_228438A48()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228438AA0();
  }

  return result;
}

void sub_228438AA0()
{
  v1 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(*v0 + 176);
  v3 = *(v0 + v2);
  *(v0 + v2) = 0;
  os_unfair_lock_unlock(*(v1 + 16));
  if (v3 == 1)
  {
    v4 = v0 + *(*v0 + 144);
    v5 = *(v4 + 8);
    (*v4)();
  }
}

uint64_t sub_228438B34()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(*(v2 + 16));
  sub_22843867C();
  os_unfair_lock_unlock(*(v2 + 16));
  v3 = *(v1 + 88);
  v4 = *(v1 + 104);
  v5 = v0 + *(*v0 + 112);
  return sub_22855CC6C();
}

void sub_228438BD4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + v2[19]);
  os_unfair_lock_lock(*(v3 + 16));
  v8 = 1;
  v9 = 0u;
  v10 = 0u;
  v11 = 2;
  v4 = *(*v1 + 160);
  swift_beginAccess();
  sub_228439238(&v8, v1 + v4);
  swift_endAccess();
  os_unfair_lock_unlock(*(v3 + 16));
  v5 = v2[11];
  v6 = v2[13];
  v7 = v1 + *(*v1 + 112);
  sub_22855CC4C();
  sub_228438AA0();
}

uint64_t sub_228438CE4()
{
  v1 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(*v0 + 160);
  swift_beginAccess();
  sub_228439384(v0 + v2, &v6);
  *&v5[9] = *&v7[9];
  v4 = v6;
  *v5 = *v7;
  if (v7[24] != 1 && v7[24])
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_2284393E0(&v4);
  }

  else
  {
    sub_2283FAB3C(&v4, v8);
  }

  os_unfair_lock_unlock(*(v1 + 16));
  sub_228439434(v8, &v6);
  if (*&v7[8])
  {
    __swift_project_boxed_opaque_existential_1(&v6, *&v7[8]);
    sub_22855CCDC();
    sub_228439590(v8);
    return __swift_destroy_boxed_opaque_existential_0(&v6);
  }

  else
  {
    sub_228439590(v8);
    return sub_228439590(&v6);
  }
}

uint64_t sub_228438E14()
{
  v1 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(*v0 + 160);
  swift_beginAccess();
  sub_228439384(v0 + v2, v10);
  *&v9[9] = *&v10[25];
  v8 = *v10;
  *v9 = *&v10[16];
  if (v10[40] != 1 && v10[40])
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_2284393E0(&v8);
  }

  else
  {
    sub_2283FAB3C(&v8, v11);
  }

  v3 = *(*v0 + 168);
  if (*(v0 + v3))
  {
    v4 = *(v0 + v3);

    sub_22855D02C();
  }

  *v10 = 1;
  memset(&v10[8], 0, 32);
  v10[40] = 2;
  swift_beginAccess();
  sub_228439238(v10, v0 + v2);
  swift_endAccess();
  os_unfair_lock_unlock(*(v1 + 16));
  sub_228439434(v11, v10);
  if (*&v10[24])
  {
    v5 = *&v10[32];
    __swift_project_boxed_opaque_existential_1(v10, *&v10[24]);
    v6 = *(v5 + 8);
    sub_22855CC7C();
    sub_228439590(v11);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_228439590(v11);
    return sub_228439590(v10);
  }
}

uint64_t sub_228438FB0()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112));

  v1 = *(v0 + *(*v0 + 136) + 8);

  v2 = *(v0 + *(*v0 + 144) + 8);

  v3 = *(v0 + *(*v0 + 152));

  sub_2284393E0(v0 + *(*v0 + 160));
  v4 = *(v0 + *(*v0 + 168));

  return v0;
}

uint64_t sub_2284390D0()
{
  v0 = *sub_228438FB0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228439218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_228439294()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_228438A48();
}

unint64_t sub_2284392A4()
{
  result = qword_280DED2D0;
  if (!qword_280DED2D0)
  {
    sub_22855CFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED2D0);
  }

  return result;
}

unint64_t sub_2284392FC()
{
  result = qword_280DED260;
  if (!qword_280DED260)
  {
    sub_2284394C8(255, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED260);
  }

  return result;
}

uint64_t sub_228439434(uint64_t a1, uint64_t a2)
{
  sub_2284394C8(0, &qword_280DE9878, sub_22843952C, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2284394C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22843952C()
{
  result = qword_280DE9880;
  if (!qword_280DE9880)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE9880);
  }

  return result;
}

uint64_t sub_228439590(uint64_t a1)
{
  sub_2284394C8(0, &qword_280DE9878, sub_22843952C, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PluginFeedItem.HostViewStyle.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_22855DFBC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t PluginFeedItem.HostViewStyle.rawValue.getter()
{
  if (*v0)
  {
    result = 0x656D6F7268436F6ELL;
  }

  else
  {
    result = 0x656D6F726863;
  }

  *v0;
  return result;
}

uint64_t sub_2284396BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656D6F7268436F6ELL;
  }

  else
  {
    v4 = 0x656D6F726863;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x656D6F7268436F6ELL;
  }

  else
  {
    v6 = 0x656D6F726863;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22855E15C();
  }

  return v9 & 1;
}

uint64_t sub_228439760@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22855DFBC();

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

unint64_t sub_2284397C4()
{
  result = qword_27D83F500;
  if (!qword_27D83F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F500);
  }

  return result;
}

uint64_t sub_228439818()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_228439898()
{
  *v0;
  sub_22855D20C();
}

uint64_t sub_228439904()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t _s13HostViewStyleOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s13HostViewStyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

void *static Plugin.findOrCreatePlugin(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228439BBC();
  sub_22840A70C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560580;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_22840A7C8();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_22855D62C();
  v8 = sub_228549A64(a3, v7);

  v9 = sub_22855D17C();
  [v8 setPackage_];

  return v8;
}

unint64_t sub_228439BBC()
{
  result = qword_280DED1E0;
  if (!qword_280DED1E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DED1E0);
  }

  return result;
}

id Plugin.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id Plugin.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for Plugin();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id Plugin.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Plugin();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *static PluginData.findOrCreate(uniqueIdentifier:pluginIdentifier:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228561250;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22840A7C8();
  strcpy((v10 + 32), "plugin.package");
  *(v10 + 47) = -18;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;
  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  *(v10 + 112) = 0xD000000000000010;
  *(v10 + 120) = 0x800000022856DA90;
  *(v10 + 176) = v11;
  *(v10 + 184) = v12;
  *(v10 + 152) = a1;
  *(v10 + 160) = a2;

  v13 = sub_22855D62C();
  v14 = sub_228549C40(a5, v13);
  v15 = sub_22855D17C();
  [v14 setUniqueIdentifier_];

  return v14;
}

unint64_t static PluginData.find(uniqueIdentifier:pluginIdentifier:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228561250;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22840A7C8();
  strcpy((v10 + 32), "plugin.package");
  *(v10 + 47) = -18;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;
  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  *(v10 + 112) = 0xD000000000000010;
  *(v10 + 120) = 0x800000022856DA90;
  *(v10 + 176) = v11;
  *(v10 + 184) = v12;
  *(v10 + 152) = a1;
  *(v10 + 160) = a2;

  v13 = sub_22855D62C();
  v14 = sub_22843B4E8(a5, v13, 1);

  return v14;
}

uint64_t PluginData.__allocating_init(context:uniqueIdentifier:)(void *a1)
{
  v3 = objc_opt_self();
  v4 = sub_22855D17C();
  v5 = [v3 entityForName:v4 inManagedObjectContext:a1];

  if (v5)
  {
    v6 = [objc_allocWithZone(v1) initWithEntity:v5 insertIntoManagedObjectContext:a1];
    v7 = sub_22855D17C();

    [v6 setUniqueIdentifier_];

    return v6;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

unint64_t sub_22843A288(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for DataType();
  v11 = sub_22855D97C();
  v12 = v3;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11 >> 62;
  v38 = v11;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    v35 = v12;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    v42 = __swift_project_value_buffer(v15, qword_280DEEC98);
    v12 = v42;
    v4 = sub_22855CA8C();
    v16 = sub_22855D68C();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2283ED000, v4, v16, "Error: duplicate feed item created...", v17, 2u);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v33 = v5;
    v34 = a1;
    v36 = v10;

    if (!v13)
    {
      v13 = v38;
      v18 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v13 = v38;
    v18 = sub_22855DB4C();
    if (v18)
    {
LABEL_12:
      v5 = 0;
      a1 = v13 & 0xC000000000000001;
      v41 = v13 & 0xFFFFFFFFFFFFFF8;
      v37 = v18;
      do
      {
        if (a1)
        {
          v19 = MEMORY[0x22AAB9D20](v5, v13);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v19 = *(v13 + 8 * v5 + 32);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }
        }

        v20 = v19;
        v12 = v42;
        v21 = sub_22855CA8C();
        v10 = sub_22855D68C();

        if (os_log_type_enabled(v21, v10))
        {
          v22 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v43 = v39;
          *v22 = 134218242;
          *(v22 + 4) = v5;
          *(v22 + 12) = 2080;
          v40 = v4;
          v23 = v20;
          v24 = [v23 description];
          v25 = a1;
          v26 = sub_22855D1AC();
          v28 = v27;

          v29 = v26;
          a1 = v25;
          v30 = sub_2283F8938(v29, v28, &v43);

          *(v22 + 14) = v30;
          v18 = v37;
          _os_log_impl(&dword_2283ED000, v21, v10, "Existing item %ld: %s", v22, 0x16u);
          v12 = v39;
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x22AABAD40](v39, -1, -1);
          v31 = v22;
          v13 = v38;
          MEMORY[0x22AABAD40](v31, -1, -1);

          v4 = v40;
        }

        else
        {
        }

        ++v5;
      }

      while (v4 != v18);
    }

LABEL_23:

    sub_22843C75C(v34, v33 & 1, &qword_27D83F540, type metadata accessor for DataType);
    if (!v35)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v36;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AAB9D20](0, v38);
    goto LABEL_35;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v38 + 32);
LABEL_35:
    v4 = v32;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843A720(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for MeasureIdentifierManagedObject();
  v11 = sub_22855D97C();
  v12 = v3;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11 >> 62;
  v38 = v11;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    v35 = v12;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    v42 = __swift_project_value_buffer(v15, qword_280DEEC98);
    v12 = v42;
    v4 = sub_22855CA8C();
    v16 = sub_22855D68C();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2283ED000, v4, v16, "Error: duplicate feed item created...", v17, 2u);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v33 = v5;
    v34 = a1;
    v36 = v10;

    if (!v13)
    {
      v13 = v38;
      v18 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v13 = v38;
    v18 = sub_22855DB4C();
    if (v18)
    {
LABEL_12:
      v5 = 0;
      a1 = v13 & 0xC000000000000001;
      v41 = v13 & 0xFFFFFFFFFFFFFF8;
      v37 = v18;
      do
      {
        if (a1)
        {
          v19 = MEMORY[0x22AAB9D20](v5, v13);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v19 = *(v13 + 8 * v5 + 32);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }
        }

        v20 = v19;
        v12 = v42;
        v21 = sub_22855CA8C();
        v10 = sub_22855D68C();

        if (os_log_type_enabled(v21, v10))
        {
          v22 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v43 = v39;
          *v22 = 134218242;
          *(v22 + 4) = v5;
          *(v22 + 12) = 2080;
          v40 = v4;
          v23 = v20;
          v24 = [v23 description];
          v25 = a1;
          v26 = sub_22855D1AC();
          v28 = v27;

          v29 = v26;
          a1 = v25;
          v30 = sub_2283F8938(v29, v28, &v43);

          *(v22 + 14) = v30;
          v18 = v37;
          _os_log_impl(&dword_2283ED000, v21, v10, "Existing item %ld: %s", v22, 0x16u);
          v12 = v39;
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x22AABAD40](v39, -1, -1);
          v31 = v22;
          v13 = v38;
          MEMORY[0x22AABAD40](v31, -1, -1);

          v4 = v40;
        }

        else
        {
        }

        ++v5;
      }

      while (v4 != v18);
    }

LABEL_23:

    sub_22843C75C(v34, v33 & 1, &qword_27D83F538, type metadata accessor for MeasureIdentifierManagedObject);
    if (!v35)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v36;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AAB9D20](0, v38);
    goto LABEL_35;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v38 + 32);
LABEL_35:
    v4 = v32;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843ABBC(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for Keyword();
  v11 = sub_22855D97C();
  v12 = v3;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11 >> 62;
  v38 = v11;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    v35 = v12;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    v42 = __swift_project_value_buffer(v15, qword_280DEEC98);
    v12 = v42;
    v4 = sub_22855CA8C();
    v16 = sub_22855D68C();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2283ED000, v4, v16, "Error: duplicate feed item created...", v17, 2u);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v33 = v5;
    v34 = a1;
    v36 = v10;

    if (!v13)
    {
      v13 = v38;
      v18 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v13 = v38;
    v18 = sub_22855DB4C();
    if (v18)
    {
LABEL_12:
      v5 = 0;
      a1 = v13 & 0xC000000000000001;
      v41 = v13 & 0xFFFFFFFFFFFFFF8;
      v37 = v18;
      do
      {
        if (a1)
        {
          v19 = MEMORY[0x22AAB9D20](v5, v13);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v19 = *(v13 + 8 * v5 + 32);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }
        }

        v20 = v19;
        v12 = v42;
        v21 = sub_22855CA8C();
        v10 = sub_22855D68C();

        if (os_log_type_enabled(v21, v10))
        {
          v22 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v43 = v39;
          *v22 = 134218242;
          *(v22 + 4) = v5;
          *(v22 + 12) = 2080;
          v40 = v4;
          v23 = v20;
          v24 = [v23 description];
          v25 = a1;
          v26 = sub_22855D1AC();
          v28 = v27;

          v29 = v26;
          a1 = v25;
          v30 = sub_2283F8938(v29, v28, &v43);

          *(v22 + 14) = v30;
          v18 = v37;
          _os_log_impl(&dword_2283ED000, v21, v10, "Existing item %ld: %s", v22, 0x16u);
          v12 = v39;
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x22AABAD40](v39, -1, -1);
          v31 = v22;
          v13 = v38;
          MEMORY[0x22AABAD40](v31, -1, -1);

          v4 = v40;
        }

        else
        {
        }

        ++v5;
      }

      while (v4 != v18);
    }

LABEL_23:

    sub_22843C75C(v34, v33 & 1, &qword_27D83F530, type metadata accessor for Keyword);
    if (!v35)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v36;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AAB9D20](0, v38);
    goto LABEL_35;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v38 + 32);
LABEL_35:
    v4 = v32;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843B054(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for Plugin();
  v11 = sub_22855D97C();
  v12 = v3;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11 >> 62;
  v38 = v11;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    v35 = v12;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    v42 = __swift_project_value_buffer(v15, qword_280DEEC98);
    v12 = v42;
    v4 = sub_22855CA8C();
    v16 = sub_22855D68C();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2283ED000, v4, v16, "Error: duplicate feed item created...", v17, 2u);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v33 = v5;
    v34 = a1;
    v36 = v10;

    if (!v13)
    {
      v13 = v38;
      v18 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v13 = v38;
    v18 = sub_22855DB4C();
    if (v18)
    {
LABEL_12:
      v5 = 0;
      a1 = v13 & 0xC000000000000001;
      v41 = v13 & 0xFFFFFFFFFFFFFF8;
      v37 = v18;
      do
      {
        if (a1)
        {
          v19 = MEMORY[0x22AAB9D20](v5, v13);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v19 = *(v13 + 8 * v5 + 32);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }
        }

        v20 = v19;
        v12 = v42;
        v21 = sub_22855CA8C();
        v10 = sub_22855D68C();

        if (os_log_type_enabled(v21, v10))
        {
          v22 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v43 = v39;
          *v22 = 134218242;
          *(v22 + 4) = v5;
          *(v22 + 12) = 2080;
          v40 = v4;
          v23 = v20;
          v24 = [v23 description];
          v25 = a1;
          v26 = sub_22855D1AC();
          v28 = v27;

          v29 = v26;
          a1 = v25;
          v30 = sub_2283F8938(v29, v28, &v43);

          *(v22 + 14) = v30;
          v18 = v37;
          _os_log_impl(&dword_2283ED000, v21, v10, "Existing item %ld: %s", v22, 0x16u);
          v12 = v39;
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x22AABAD40](v39, -1, -1);
          v31 = v22;
          v13 = v38;
          MEMORY[0x22AABAD40](v31, -1, -1);

          v4 = v40;
        }

        else
        {
        }

        ++v5;
      }

      while (v4 != v18);
    }

LABEL_23:

    sub_22843C75C(v34, v33 & 1, &qword_27D83F528, type metadata accessor for Plugin);
    if (!v35)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v36;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AAB9D20](0, v38);
    goto LABEL_35;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v38 + 32);
LABEL_35:
    v4 = v32;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843B4E8(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for PluginData();
  v11 = sub_22855D97C();
  v12 = v3;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11 >> 62;
  v38 = v11;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    v35 = v12;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    v42 = __swift_project_value_buffer(v15, qword_280DEEC98);
    v12 = v42;
    v4 = sub_22855CA8C();
    v16 = sub_22855D68C();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2283ED000, v4, v16, "Error: duplicate feed item created...", v17, 2u);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v33 = v5;
    v34 = a1;
    v36 = v10;

    if (!v13)
    {
      v13 = v38;
      v18 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v13 = v38;
    v18 = sub_22855DB4C();
    if (v18)
    {
LABEL_12:
      v5 = 0;
      a1 = v13 & 0xC000000000000001;
      v41 = v13 & 0xFFFFFFFFFFFFFF8;
      v37 = v18;
      do
      {
        if (a1)
        {
          v19 = MEMORY[0x22AAB9D20](v5, v13);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v19 = *(v13 + 8 * v5 + 32);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }
        }

        v20 = v19;
        v12 = v42;
        v21 = sub_22855CA8C();
        v10 = sub_22855D68C();

        if (os_log_type_enabled(v21, v10))
        {
          v22 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v43 = v39;
          *v22 = 134218242;
          *(v22 + 4) = v5;
          *(v22 + 12) = 2080;
          v40 = v4;
          v23 = v20;
          v24 = [v23 description];
          v25 = a1;
          v26 = sub_22855D1AC();
          v28 = v27;

          v29 = v26;
          a1 = v25;
          v30 = sub_2283F8938(v29, v28, &v43);

          *(v22 + 14) = v30;
          v18 = v37;
          _os_log_impl(&dword_2283ED000, v21, v10, "Existing item %ld: %s", v22, 0x16u);
          v12 = v39;
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x22AABAD40](v39, -1, -1);
          v31 = v22;
          v13 = v38;
          MEMORY[0x22AABAD40](v31, -1, -1);

          v4 = v40;
        }

        else
        {
        }

        ++v5;
      }

      while (v4 != v18);
    }

LABEL_23:

    sub_22843C75C(v34, v33 & 1, &qword_27D83F520, type metadata accessor for PluginData);
    if (!v35)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v36;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AAB9D20](0, v38);
    goto LABEL_35;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v38 + 32);
LABEL_35:
    v4 = v32;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843B984(unint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for Profile();
  v11 = sub_22855D97C();
  v12 = v3;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11;
  v39 = a3;
  v14 = v11 >> 62;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DEEC98);
    v4 = sub_22855CA8C();
    v17 = sub_22855D68C();
    if (os_log_type_enabled(v4, v17))
    {
      v18 = v13;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2283ED000, v4, v17, "Error: duplicate feed item created...", v19, 2u);
      v20 = v19;
      v13 = v18;
      MEMORY[0x22AABAD40](v20, -1, -1);
    }

    v35 = a1;
    v36 = v12;
    v37 = v10;

    if (!v14)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v39;
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v12 = sub_22855DB4C();
    v10 = v39;
    if (v12)
    {
LABEL_12:
      a1 = 0;
      v42 = v13 & 0xFFFFFFFFFFFFFF8;
      v43 = v13 & 0xC000000000000001;
      v38 = v13;
      do
      {
        if (v43)
        {
          v21 = MEMORY[0x22AAB9D20](a1, v13);
          v4 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (a1 >= *(v42 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v21 = *(v13 + 8 * a1 + 32);
          v4 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_22;
          }
        }

        v22 = v21;
        v23 = sub_22855CA8C();
        v14 = sub_22855D68C();

        if (os_log_type_enabled(v23, v14))
        {
          v24 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v44 = v40;
          *v24 = 134218242;
          *(v24 + 4) = a1;
          *(v24 + 12) = 2080;
          v41 = v4;
          v25 = v22;
          v26 = [v25 description];
          v27 = v12;
          v28 = sub_22855D1AC();
          v30 = v29;

          v31 = v28;
          v12 = v27;
          v32 = sub_2283F8938(v31, v30, &v44);

          *(v24 + 14) = v32;
          v10 = v39;
          _os_log_impl(&dword_2283ED000, v23, v14, "Existing item %ld: %s", v24, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x22AABAD40](v40, -1, -1);
          v33 = v24;
          v13 = v38;
          MEMORY[0x22AABAD40](v33, -1, -1);

          v4 = v41;
        }

        else
        {
        }

        ++a1;
      }

      while (v4 != v12);
    }

LABEL_23:

    sub_22843CC28(v35, v10 & 1, type metadata accessor for Profile, &qword_27D83F518, type metadata accessor for Profile);
    if (!v36)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v37;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x22AAB9D20](0, v13);
    goto LABEL_35;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v13 + 32);
LABEL_35:
    v4 = v34;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843BE20(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for Profile();
  v11 = sub_22855D97C();
  v12 = v3;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11 >> 62;
  v38 = v11;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    v35 = v12;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    v42 = __swift_project_value_buffer(v15, qword_280DEEC98);
    v12 = v42;
    v4 = sub_22855CA8C();
    v16 = sub_22855D68C();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2283ED000, v4, v16, "Error: duplicate feed item created...", v17, 2u);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v33 = v5;
    v34 = a1;
    v36 = v10;

    if (!v13)
    {
      v13 = v38;
      v18 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v13 = v38;
    v18 = sub_22855DB4C();
    if (v18)
    {
LABEL_12:
      v5 = 0;
      a1 = v13 & 0xC000000000000001;
      v41 = v13 & 0xFFFFFFFFFFFFFF8;
      v37 = v18;
      do
      {
        if (a1)
        {
          v19 = MEMORY[0x22AAB9D20](v5, v13);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v19 = *(v13 + 8 * v5 + 32);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }
        }

        v20 = v19;
        v12 = v42;
        v21 = sub_22855CA8C();
        v10 = sub_22855D68C();

        if (os_log_type_enabled(v21, v10))
        {
          v22 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v43 = v39;
          *v22 = 134218242;
          *(v22 + 4) = v5;
          *(v22 + 12) = 2080;
          v40 = v4;
          v23 = v20;
          v24 = [v23 description];
          v25 = a1;
          v26 = sub_22855D1AC();
          v28 = v27;

          v29 = v26;
          a1 = v25;
          v30 = sub_2283F8938(v29, v28, &v43);

          *(v22 + 14) = v30;
          v18 = v37;
          _os_log_impl(&dword_2283ED000, v21, v10, "Existing item %ld: %s", v22, 0x16u);
          v12 = v39;
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x22AABAD40](v39, -1, -1);
          v31 = v22;
          v13 = v38;
          MEMORY[0x22AABAD40](v31, -1, -1);

          v4 = v40;
        }

        else
        {
        }

        ++v5;
      }

      while (v4 != v18);
    }

LABEL_23:

    sub_22843C75C(v34, v33 & 1, &qword_27D83F518, type metadata accessor for Profile);
    if (!v35)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v36;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AAB9D20](0, v38);
    goto LABEL_35;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v38 + 32);
LABEL_35:
    v4 = v32;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843C2B8(unint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for FeedSection();
  v11 = sub_22855D97C();
  v12 = v3;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11;
  v39 = a3;
  v14 = v11 >> 62;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DEEC98);
    v4 = sub_22855CA8C();
    v17 = sub_22855D68C();
    if (os_log_type_enabled(v4, v17))
    {
      v18 = v13;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2283ED000, v4, v17, "Error: duplicate feed item created...", v19, 2u);
      v20 = v19;
      v13 = v18;
      MEMORY[0x22AABAD40](v20, -1, -1);
    }

    v35 = a1;
    v36 = v12;
    v37 = v10;

    if (!v14)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v39;
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v12 = sub_22855DB4C();
    v10 = v39;
    if (v12)
    {
LABEL_12:
      a1 = 0;
      v42 = v13 & 0xFFFFFFFFFFFFFF8;
      v43 = v13 & 0xC000000000000001;
      v38 = v13;
      do
      {
        if (v43)
        {
          v21 = MEMORY[0x22AAB9D20](a1, v13);
          v4 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (a1 >= *(v42 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v21 = *(v13 + 8 * a1 + 32);
          v4 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_22;
          }
        }

        v22 = v21;
        v23 = sub_22855CA8C();
        v14 = sub_22855D68C();

        if (os_log_type_enabled(v23, v14))
        {
          v24 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v44 = v40;
          *v24 = 134218242;
          *(v24 + 4) = a1;
          *(v24 + 12) = 2080;
          v41 = v4;
          v25 = v22;
          v26 = [v25 description];
          v27 = v12;
          v28 = sub_22855D1AC();
          v30 = v29;

          v31 = v28;
          v12 = v27;
          v32 = sub_2283F8938(v31, v30, &v44);

          *(v24 + 14) = v32;
          v10 = v39;
          _os_log_impl(&dword_2283ED000, v23, v14, "Existing item %ld: %s", v24, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x22AABAD40](v40, -1, -1);
          v33 = v24;
          v13 = v38;
          MEMORY[0x22AABAD40](v33, -1, -1);

          v4 = v41;
        }

        else
        {
        }

        ++a1;
      }

      while (v4 != v12);
    }

LABEL_23:

    sub_22843CC28(v35, v10 & 1, type metadata accessor for FeedSection, &qword_27D83F510, type metadata accessor for FeedSection);
    if (!v36)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v37;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x22AAB9D20](0, v13);
    goto LABEL_35;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v13 + 32);
LABEL_35:
    v4 = v34;

    return v4;
  }

  __break(1u);
  return result;
}

void sub_22843C75C(void *a1, char a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = [a1 persistentStoreCoordinator];
  if (!v8)
  {
    if (qword_280DEEC90 == -1)
    {
LABEL_11:
      v19 = sub_22855CABC();
      __swift_project_value_buffer(v19, qword_280DEEC98);
      v20 = sub_22855CA8C();
      v21 = sub_22855D69C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2283ED000, v20, v21, "No coordinator, unable to reset cache version", v22, 2u);
        MEMORY[0x22AABAD40](v22, -1, -1);
      }

      goto LABEL_22;
    }

LABEL_25:
    swift_once();
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 persistentStores];
  sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
  v11 = sub_22855D3AC();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_17:

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v24 = sub_22855CABC();
    __swift_project_value_buffer(v24, qword_280DEEC98);
    v25 = sub_22855CA8C();
    v26 = sub_22855D69C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2283ED000, v25, v26, "No persistent stores, unable to reset cache version", v27, 2u);
      MEMORY[0x22AABAD40](v27, -1, -1);
    }

    goto LABEL_22;
  }

  if (!sub_22855DB4C())
  {
    goto LABEL_17;
  }

LABEL_4:
  v31 = a4;
  if ((v11 & 0xC000000000000001) == 0)
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 32);
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_25;
  }

  v12 = MEMORY[0x22AAB9D20](0, v11);
LABEL_7:
  v13 = v12;

  v14 = [v9 metadataForPersistentStore_];
  sub_22855D0EC();

  sub_22845A864(0xD000000000000023, 0x800000022856E7D0, v32);
  sub_22843D15C(v32);
  v15 = sub_22855D0DC();
  [v9 setMetadata:v15 forPersistentStore:v13];

  *&v32[0] = 0;
  v16 = [a1 save_];
  v17 = *&v32[0];
  if ((v16 & 1) == 0)
  {
    v23 = *&v32[0];

    sub_22855BF3C();

    swift_willThrow();
    goto LABEL_22;
  }

  if ((a2 & 1) == 0)
  {
    v18 = *&v32[0];

LABEL_22:
    v28 = *MEMORY[0x277D85DE8];
    return;
  }

  *&v32[0] = 0;
  *(&v32[0] + 1) = 0xE000000000000000;
  v29 = v17;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000018, 0x800000022856E800);
  sub_22843D1B8(0, a3, v31);
  v30 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v30);

  MEMORY[0x22AAB92A0](0xD000000000000039, 0x800000022856E820);
  sub_22855DEDC();
  __break(1u);
}

void sub_22843CC28(void *a1, char a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v34 = *MEMORY[0x277D85DE8];
  a3(0);
  v9 = [a1 persistentStoreCoordinator];
  if (!v9)
  {
    if (qword_280DEEC90 == -1)
    {
LABEL_11:
      v20 = sub_22855CABC();
      __swift_project_value_buffer(v20, qword_280DEEC98);
      v21 = sub_22855CA8C();
      v22 = sub_22855D69C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2283ED000, v21, v22, "No coordinator, unable to reset cache version", v23, 2u);
        MEMORY[0x22AABAD40](v23, -1, -1);
      }

      goto LABEL_22;
    }

LABEL_25:
    swift_once();
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v9 persistentStores];
  sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
  v12 = sub_22855D3AC();

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_17:

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v25 = sub_22855CABC();
    __swift_project_value_buffer(v25, qword_280DEEC98);
    v26 = sub_22855CA8C();
    v27 = sub_22855D69C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2283ED000, v26, v27, "No persistent stores, unable to reset cache version", v28, 2u);
      MEMORY[0x22AABAD40](v28, -1, -1);
    }

    goto LABEL_22;
  }

  if (!sub_22855DB4C())
  {
    goto LABEL_17;
  }

LABEL_4:
  v32 = a5;
  if ((v12 & 0xC000000000000001) == 0)
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 32);
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_25;
  }

  v13 = MEMORY[0x22AAB9D20](0, v12);
LABEL_7:
  v14 = v13;

  v15 = [v10 metadataForPersistentStore_];
  sub_22855D0EC();

  sub_22845A864(0xD000000000000023, 0x800000022856E7D0, v33);
  sub_22843D15C(v33);
  v16 = sub_22855D0DC();
  [v10 setMetadata:v16 forPersistentStore:v14];

  *&v33[0] = 0;
  v17 = [a1 save_];
  v18 = *&v33[0];
  if ((v17 & 1) == 0)
  {
    v24 = *&v33[0];

    sub_22855BF3C();

    swift_willThrow();
    goto LABEL_22;
  }

  if ((a2 & 1) == 0)
  {
    v19 = *&v33[0];

LABEL_22:
    v29 = *MEMORY[0x277D85DE8];
    return;
  }

  *&v33[0] = 0;
  *(&v33[0] + 1) = 0xE000000000000000;
  v30 = v18;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000018, 0x800000022856E800);
  sub_22843D1B8(0, a4, v32);
  v31 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v31);

  MEMORY[0x22AAB92A0](0xD000000000000039, 0x800000022856E820);
  sub_22855DEDC();
  __break(1u);
}

unint64_t sub_22843D108()
{
  result = qword_27D83F508;
  if (!qword_27D83F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F508);
  }

  return result;
}

uint64_t sub_22843D15C(uint64_t a1)
{
  sub_228400E48();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22843D1B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t Publisher<>.collectAndReduceOutput()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = sub_22855CBDC();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  v17[1] = swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  v9 = sub_22855CB6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  sub_22855CF1C();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v18;
  sub_22855CE8C();

  (*(v19 + 8))(v8, v5);
  swift_getWitnessTable();
  v15 = sub_22855CE6C();
  (*(v10 + 8))(v13, v9);
  return v15;
}

uint64_t sub_22843D468(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v15[-v11];
  v13 = *a1;
  sub_22855D60C();
  v20 = v13;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = AssociatedTypeWitness;
  sub_22855D47C();
  swift_getWitnessTable();
  sub_22855D31C();
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_22843D5F4()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  swift_getAssociatedTypeWitness();
  return sub_22855D5FC();
}

uint64_t LegacyUserInterfaceKind.legacyUserInterface(className:)(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 0;
  }

  return a1;
}

uint64_t sub_22843D70C()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855E25C();
  return sub_22855E27C();
}

uint64_t sub_22843D780()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855E25C();
  return sub_22855E27C();
}

uint64_t sub_22843D7C4@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14HealthPlatform23LegacyUserInterfaceKindO8rawValueACSgs5Int16V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s14HealthPlatform23LegacyUserInterfaceKindO8rawValueACSgs5Int16V_tcfC_0(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

unint64_t sub_22843D814()
{
  result = qword_27D83F548;
  if (!qword_27D83F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F548);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LegacyUserInterfaceKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LegacyUserInterfaceKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Subscribers.SubscriptionStatus.upstream.getter@<X0>(uint64_t a1@<X8>)
{
  sub_228439384(v1, v4);
  if (v5 == 1 || !v5)
  {
    return sub_2283FAB3C(v4, a1);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return sub_2284393E0(v4);
}

BOOL Subscribers.SubscriptionStatus.isActive.getter()
{
  sub_228439384(v0, v3);
  v1 = v3[40] < 2u;
  sub_2284393E0(v3);
  return v1;
}

uint64_t get_enum_tag_for_layout_string_7Combine11SubscribersO14HealthPlatformE18SubscriptionStatusO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
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

uint64_t sub_22843DA98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22843DAD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_22843DB20(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

id static OrchestrationAnchor.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22843DBE8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 encodedAnchorSet];
  v4 = sub_22855C09C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void keypath_setTm(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v7 = *a2;
  v8 = a5(*a1, a1[1]);
  [v7 *a6];
}

void sub_22843DCB4(uint64_t a1)
{
  v1 = a1;
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v36 = MEMORY[0x277D84F90];
    sub_2284272C0(0, v2 & ~(v2 >> 63), 0);
    v31 = v36;
    if (v30)
    {
      v3 = sub_22855DDEC();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_22855DAAC();
      v4 = *(v1 + 36);
    }

    v33 = v3;
    v34 = v4;
    v35 = v30 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v2;
      v29 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }

        v15 = v33;
        v14 = v34;
        v16 = v35;
        sub_22844A90C(v33, v34, v35, v1);
        v18 = v17;
        v19 = [v17 sensitiveLoggingIdentifier];
        v20 = sub_22855D1AC();
        v22 = v21;

        v23 = v31;
        v36 = v31;
        v25 = *(v31 + 16);
        v24 = *(v31 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_2284272C0((v24 > 1), v25 + 1, 1);
          v23 = v36;
        }

        *(v23 + 16) = v25 + 1;
        v26 = v23 + 16 * v25;
        *(v26 + 32) = v20;
        *(v26 + 40) = v22;
        v31 = v23;
        if (v30)
        {
          v1 = v29;
          if (!v16)
          {
            goto LABEL_26;
          }

          if (sub_22855DE2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v28;
          v13 = v6 + 1;
          sub_22844C3AC();
          v27 = sub_22855D10C();
          sub_22855DECC();
          v27(v32, 0);
        }

        else
        {
          v1 = v29;
          sub_228534A1C(v15, v14, v16, v29);
          v8 = v7;
          v10 = v9;
          v12 = v11;
          sub_228416CB8(v15, v14, v16);
          v33 = v8;
          v34 = v10;
          v35 = v12 & 1;
          v2 = v28;
          v13 = v6 + 1;
        }

        ++v6;
        if (v13 == v2)
        {
          sub_228416CB8(v33, v34, v35);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t static InputSignalSet.LookupKey.databaseChangesQuery.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for DatabaseChangesQueryInputSignal();
  return sub_22855C61C();
}

void *DatabaseChangesQueryInputSignal.__allocating_init(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();

  return sub_22844AA9C(a1, a3, a4, a5, v5, ObjectType, a2);
}

void *DatabaseChangesQueryInputSignal.__allocating_init(context:observer:healthStore:changesObserver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  v16 = sub_22844AC90(a1, a2, a3, a4, a5, v15, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a6);
  return v16;
}

void *DatabaseChangesQueryInputSignal.init(context:observer:healthStore:changesObserver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  v16 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_22844A814(a1, a2, a3, a4, a5, v18, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a6);
  return v20;
}

uint64_t DatabaseChangesQueryInputSignal.Anchor.init(anchor:lastUpdateAnchors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DatabaseChangesQueryInputSignal.observer.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return swift_unknownObjectRetain();
}

uint64_t sub_22843E2B0(uint64_t a1)
{
  v2 = v1;
  v4 = v2[10];
  v5 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v4);
  v6 = v2[12];
  os_unfair_lock_lock((v6 + 32));
  v7 = *(v6 + 16);
  v8 = v7;
  os_unfair_lock_unlock((v6 + 32));
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = *(v5 + 8);

  v11(v12, v7, sub_22844C340, v10, v4, v5);
}

void sub_22843E3D4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v8 = sub_22855C85C();
  v90 = *(v8 - 8);
  v91 = v8;
  v9 = *(v90 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855CABC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v84 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (a3)
    {
      v25 = *(Strong + 24);
      v26 = *(Strong + 32);
      swift_getObjectType();
      v27 = a3;
      sub_22855C59C();
      v28 = a3;

      v29 = sub_22855CA8C();
      v30 = sub_22855D68C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v89 = v12;
        v87 = v32;
        v88 = swift_slowAlloc();
        v94 = v88;
        *v31 = 136315394;
        sub_22855C84C();
        sub_22840A300(&qword_280DE9E98, 255, MEMORY[0x277D11C40]);
        LODWORD(v86) = v30;
        v33 = v91;
        v34 = sub_22855E11C();
        v35 = v13;
        v37 = v36;
        (*(v90 + 8))(v11, v33);
        v38 = sub_2283F8938(v34, v37, &v94);

        *(v31 + 4) = v38;
        *(v31 + 12) = 2112;
        v39 = a3;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v40;
        v41 = v87;
        *v87 = v40;
        _os_log_impl(&dword_2283ED000, v29, v86, "[%s] Query failed: %@; attempting to restart query.", v31, 0x16u);
        sub_22841DC98(v41);
        MEMORY[0x22AABAD40](v41, -1, -1);
        v42 = v88;
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x22AABAD40](v42, -1, -1);
        MEMORY[0x22AABAD40](v31, -1, -1);

        (*(v35 + 8))(v22, v89);
      }

      else
      {

        (*(v13 + 8))(v22, v12);
      }

      if (qword_27D83F018 != -1)
      {
        swift_once();
      }

      v62 = swift_allocObject();
      v63 = v92;
      *(v62 + 16) = v24;
      *(v62 + 24) = v63;

      sub_228506C84(sub_22844C3A4, v62);
    }

    else
    {
      v92 = a1;
      v88 = a2;
      if (a2)
      {
        sub_22843DCB4(a2);
        v44 = v43;
        v87 = 0;
        v45 = v24[3];
        v46 = v24[4];
        swift_getObjectType();
        sub_22855C59C();

        v47 = sub_22855CA8C();
        v48 = sub_22855D6AC();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v86 = v13;
          v50 = v49;
          v85 = swift_slowAlloc();
          v94 = v85;
          *v50 = 136315394;
          sub_22855C84C();
          sub_22840A300(&qword_280DE9E98, 255, MEMORY[0x277D11C40]);
          v51 = v91;
          v52 = sub_22855E11C();
          v89 = v12;
          v54 = v53;
          (*(v90 + 8))(v11, v51);
          v55 = sub_2283F8938(v52, v54, &v94);

          *(v50 + 4) = v55;
          *(v50 + 12) = 2080;
          v56 = MEMORY[0x22AAB9430](v44, MEMORY[0x277D837D0]);
          v58 = v57;

          v59 = sub_2283F8938(v56, v58, &v94);

          *(v50 + 14) = v59;
          _os_log_impl(&dword_2283ED000, v47, v48, "[%s] Types changed: %s", v50, 0x16u);
          v60 = v85;
          swift_arrayDestroy();
          MEMORY[0x22AABAD40](v60, -1, -1);
          MEMORY[0x22AABAD40](v50, -1, -1);

          v61 = (*(v86 + 8))(v17, v89);
        }

        else
        {

          v61 = (*(v13 + 8))(v17, v12);
        }
      }

      else
      {
        v64 = *(Strong + 24);
        v65 = *(Strong + 32);
        swift_getObjectType();
        sub_22855C59C();

        v66 = sub_22855CA8C();
        v67 = sub_22855D6AC();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v89 = v12;
          v87 = v69;
          v94 = v69;
          *v68 = 136315138;
          sub_22855C84C();
          sub_22840A300(&qword_280DE9E98, 255, MEMORY[0x277D11C40]);
          v70 = v91;
          v71 = sub_22855E11C();
          v72 = v13;
          v74 = v73;
          (*(v90 + 8))(v11, v70);
          v75 = sub_2283F8938(v71, v74, &v94);

          *(v68 + 4) = v75;
          _os_log_impl(&dword_2283ED000, v66, v67, "[%s] Initial update; no changed types (empty database?)", v68, 0xCu);
          v76 = v87;
          __swift_destroy_boxed_opaque_existential_0(v87);
          MEMORY[0x22AABAD40](v76, -1, -1);
          MEMORY[0x22AABAD40](v68, -1, -1);

          v61 = (*(v72 + 8))(v20, v89);
        }

        else
        {

          v61 = (*(v13 + 8))(v20, v12);
        }
      }

      v77 = v24[12];
      MEMORY[0x28223BE20](v61);
      v78 = v92;
      *(&v84 - 2) = v88;
      *(&v84 - 1) = v78;

      os_unfair_lock_lock((v77 + 32));
      sub_22844C348((v77 + 16), &v94);
      os_unfair_lock_unlock((v77 + 32));

      v80 = v94;
      v79 = v95;
      v81 = v24[5];
      v82 = v24[6];
      swift_getObjectType();
      v94 = v80;
      v95 = v79;
      v93 = v24;
      type metadata accessor for DatabaseChangesQueryInputSignal();
      sub_22840A300(&qword_280DEAA08, v83, type metadata accessor for DatabaseChangesQueryInputSignal);
      sub_22855C78C();
    }
  }
}

uint64_t sub_22843ED80(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855C85C();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855CABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  swift_getObjectType();
  sub_22855C59C();

  v15 = sub_22855CA8C();
  v16 = sub_22855D6AC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v9;
    v18 = v17;
    v28 = swift_slowAlloc();
    v32 = v28;
    *v18 = 136315138;
    sub_22855C84C();
    sub_22840A300(&qword_280DE9E98, 255, MEMORY[0x277D11C40]);
    v19 = v31;
    v20 = sub_22855E11C();
    v27 = v8;
    v21 = a2;
    v23 = v22;
    (*(v30 + 8))(v7, v19);
    v24 = sub_2283F8938(v20, v23, &v32);
    a2 = v21;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_2283ED000, v15, v16, "[%s] Device unlocked; retrying.", v18, 0xCu);
    v25 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AABAD40](v25, -1, -1);
    MEMORY[0x22AABAD40](v18, -1, -1);

    (*(v29 + 8))(v12, v27);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  return sub_22843E2B0(a2);
}

uint64_t sub_22843F090@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  v8 = a1[1];

  if (!a2 || !a3)
  {
LABEL_33:
    *v6 = a3;
    v6[1] = v8;
    *a4 = a3;
    a4[1] = v8;
    v38 = a3;
  }

  v41 = v6;
  v42 = a4;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = sub_22855DDFC() | 0x8000000000000000;
  }

  else
  {
    v13 = -1 << *(a2 + 32);
    v10 = ~v13;
    v9 = a2 + 64;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(a2 + 64);
    v12 = a2;
  }

  swift_bridgeObjectRetain_n();
  v45 = v12;
  v46 = a3;
  v16 = 0;
  v40 = v10;
  v17 = (v10 + 64) >> 6;
  v43 = v9;
  v44 = v17;
  while ((v12 & 0x8000000000000000) != 0)
  {
    if (!sub_22855DEBC() || (sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8), swift_dynamicCast(), v22 = v48, v20 = v16, v21 = v11, !v48))
    {
LABEL_32:
      sub_228407958();

      v6 = v41;
      a4 = v42;
      goto LABEL_33;
    }

LABEL_21:
    v47 = v21;
    v23 = v22;
    v24 = [v22 code];
    v25 = [v46 _rowid];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v8;
    v28 = sub_228443CF8(v24);
    v29 = v8[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_35;
    }

    v32 = v27;
    if (v8[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v27)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_228447F84();
        if (v32)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_2284449D4(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_228443CF8(v24);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_37;
      }

      v28 = v33;
      if (v32)
      {
LABEL_10:
        *(v8[7] + 8 * v28) = v25;

        goto LABEL_11;
      }
    }

    v8[(v28 >> 6) + 8] |= 1 << v28;
    *(v8[6] + 8 * v28) = v24;
    *(v8[7] + 8 * v28) = v25;

    v35 = v8[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_36;
    }

    v8[2] = v37;
LABEL_11:
    v16 = v20;
    v11 = v47;
    v9 = v43;
    v17 = v44;
    v12 = v45;
  }

  v18 = v16;
  v19 = v11;
  v20 = v16;
  if (v11)
  {
LABEL_17:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v12 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_32;
    }

    v19 = *(v9 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for _HKDataTypeCode(0);
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

id sub_22843F3D8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if (*a1)
  {
    [*(a2 + 24) stopQuery_];
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = objc_allocWithZone(MEMORY[0x277CCDD70]);
  sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);

  v14 = sub_22855D39C();
  v18[4] = sub_22844B760;
  v18[5] = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_228443588;
  v18[3] = &block_descriptor_3;
  v15 = _Block_copy(v18);
  v16 = [v13 initWithTypes:v14 anchor:a4 resultsHandler:v15];

  _Block_release(v15);

  *a1 = v16;
  return [*(a2 + 24) executeQuery_];
}

uint64_t sub_22843F564()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_22843F5A4()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_22844B73C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_22843F604()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_22844B6E8((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

id DatabaseChangesQueryInputSignal.Anchor.anchor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

unint64_t static DatabaseChangesQueryInputSignal.Anchor.== infix(_:_:)(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_2283EFEB0(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  result = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return [v2 isEqual_];
  }

  return result;
}

unint64_t sub_22843F734(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

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
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_228443AB4(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22843F83C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855BE1C();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v49 - v9;
  sub_2283F0D04(0, &qword_27D83F588, sub_22844BC8C, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v54 = (&v49 - v14);
  v55 = v15;
  v53 = v8;
  v16 = 0;
  v51 = a1;
  v17 = *(a1 + 64);
  v50 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v56 = v60 + 16;
  v57 = (v60 + 32);
  v52 = (v60 + 8);
  while (1)
  {
    v22 = v55;
    if (!v20)
    {
      break;
    }

    v58 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = *(*(v51 + 48) + 8 * v23);
    v30 = v59;
    v29 = v60;
    (*(v60 + 16))(v59, *(v51 + 56) + *(v60 + 72) * v23, v4);
    sub_22844BC8C();
    v32 = v31;
    v33 = *(v31 + 48);
    *v22 = v28;
    (*(v29 + 32))(&v22[v33], v30, v4);
    (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
    v34 = v28;
LABEL_17:
    v35 = v22;
    v36 = v54;
    sub_228409DC8(v35, v54, &qword_27D83F588, sub_22844BC8C);
    sub_22844BC8C();
    v37 = (*(*(v32 - 8) + 48))(v36, 1, v32);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *v36;
    v40 = v53;
    (*v57)(v53, v36 + *(v32 + 48), v4);
    v41 = sub_228443B74(v39);
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      (*v52)(v40, v4);
      return 0;
    }

    v45 = v59;
    v44 = v60;
    (*(v60 + 16))(v59, *(a2 + 56) + *(v60 + 72) * v41, v4);
    sub_22840A300(&qword_27D83F598, 255, MEMORY[0x277CC88A8]);
    v46 = sub_22855D16C();
    v47 = *(v44 + 8);
    v47(v45, v4);
    result = (v47)(v40, v4);
    v20 = v58;
    if ((v46 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      sub_22844BC8C();
      v32 = v48;
      (*(*(v48 - 8) + 56))(v22, 1, 1, v48);
      v58 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v50 + 8 * v26);
    ++v16;
    if (v27)
    {
      v58 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22843FD30(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!v3)
    {
      if (a1 == a2)
      {
LABEL_34:
        LOBYTE(a1) = 1;
      }

      else
      {
        if (*(a1 + 16) == *(a2 + 16))
        {
          v7 = a2;
          v8 = 0;
          v9 = 1 << *(a1 + 32);
          v10 = -1;
          if (v9 < 64)
          {
            v10 = ~(-1 << v9);
          }

          v11 = v10 & *(a1 + 64);
          v12 = (v9 + 63) >> 6;
          while (v11)
          {
            v13 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
LABEL_31:
            v16 = v13 | (v8 << 6);
            v17 = *(*(v2 + 56) + 8 * v16);
            v18 = *(*(v2 + 48) + 8 * v16);
            v19 = v17;
            v20 = sub_228443B74(v18);
            v22 = v21;

            if ((v22 & 1) == 0)
            {

              goto LABEL_36;
            }

            sub_2283EF310(0, &qword_280DE93E8, 0x277CCD8E0);
            v23 = *(*(v7 + 56) + 8 * v20);
            v24 = sub_22855D9AC();

            a1 = 0;
            if ((v24 & 1) == 0)
            {
              return a1 & 1;
            }
          }

          v14 = v8;
          while (1)
          {
            v8 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v8 >= v12)
            {
              goto LABEL_34;
            }

            v15 = *(v2 + 64 + 8 * v8);
            ++v14;
            if (v15)
            {
              v13 = __clz(__rbit64(v15));
              v11 = (v15 - 1) & v15;
              goto LABEL_31;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](a1, a2);
        }

LABEL_36:
        LOBYTE(a1) = 0;
      }

      return a1 & 1;
    }

    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = v2;
LABEL_17:
    sub_2283F0F8C(v5, a2, &qword_280DE93E8, 0x277CCD8E0);
    return a1 & 1;
  }

  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v4 = a1;
  }

  if (!v3)
  {
    v5 = v4;
    goto LABEL_17;
  }

  if (a2 < 0)
  {
    a1 = a2;
  }

  else
  {
    a1 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  a2 = v4;

  return MEMORY[0x2821FCF40](a1, a2);
}

BOOL sub_22843FF48(uint64_t a1, uint64_t a2)
{
  v59[3] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
LABEL_73:
    v20 = 1;
    goto LABEL_76;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_75;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v57 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          goto LABEL_73;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v57 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_22842B3E0(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        goto LABEL_76;
      }

      v21 = sub_2283F6D18(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_22842B38C(v32, v33);
      v3 = a1;
      v8 = v57;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v59, 0, 14);
        sub_22842B3E0(v26, v25);
        goto LABEL_64;
      }

      v52 = *(v26 + 24);
      v54 = *(v26 + 16);
      sub_22842B3E0(v26, v25);
      v40 = sub_22855BEBC();
      if (v40)
      {
        v41 = v40;
        v42 = sub_22855BEDC();
        v43 = v54;
        if (__OFSUB__(v54, v42))
        {
          goto LABEL_84;
        }

        v51 = v54 - v42 + v41;
      }

      else
      {
        v51 = 0;
        v43 = v54;
      }

      if (__OFSUB__(v52, v43))
      {
        goto LABEL_83;
      }

      sub_22855BECC();
      v48 = v51;
LABEL_70:
      sub_2284436A8(v48, v19, v18, v59);
      sub_22842B38C(v26, v25);
      sub_22842B38C(v19, v18);
      v47 = v59[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_22842B3E0(v26, v25);
      v44 = sub_22855BEBC();
      if (v44)
      {
        v53 = v44;
        v45 = sub_22855BEDC();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v53;
      }

      else
      {
        v46 = 0;
      }

      sub_22855BECC();
      v48 = v46;
      goto LABEL_70;
    }

    v59[0] = v26;
    LOWORD(v59[1]) = v25;
    BYTE2(v59[1]) = BYTE2(v25);
    BYTE3(v59[1]) = BYTE3(v25);
    BYTE4(v59[1]) = BYTE4(v25);
    BYTE5(v59[1]) = BYTE5(v25);
    sub_22842B3E0(v26, v25);
LABEL_64:
    sub_2284436A8(v59, v19, v18, &v58);
    sub_22842B38C(v26, v25);
    sub_22842B38C(v19, v18);
    v47 = v58;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v57;
    if ((v47 & 1) == 0)
    {
      goto LABEL_76;
    }
  }

LABEL_74:
  sub_22842B38C(v19, v18);
LABEL_75:
  v20 = 0;
LABEL_76:
  v49 = *MEMORY[0x277D85DE8];
  return v20;
}

void DatabaseChangesQueryInputSignal.Anchor.hasDifference(from:for:)(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *v2;
  v38 = *(v2 + 8);
  if (*v2)
  {
    v6 = *a1;
    if (!v3 || v6 == 0)
    {
      v9 = 0;
    }

    else
    {
      v41 = *a1;
      sub_2283EF310(0, &qword_280DE94D0, 0x277CCD840);
      v8 = v6;
      v9 = sub_22855E14C();
    }

    v10 = [v5 isEqual_];
    swift_unknownObjectRelease();
    if (v10)
    {
      return;
    }
  }

  v39 = v3;
  if ((v4 & 0xC000000000000001) != 0)
  {

    sub_22855DAFC();
    sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
    sub_22844B928(&qword_280DE94F0, &qword_280DE94F8, 0x277CCD8D8);
    sub_22855D56C();
    v4 = v41;
    v11 = v42;
    v12 = v43;
    v13 = v44;
    v14 = v45;
  }

  else
  {
    v15 = -1 << *(v4 + 32);
    v11 = (v4 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v4 + 56);

    v13 = 0;
  }

  v18 = v38;
  v37 = v12;
  v19 = (v12 + 64) >> 6;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_22855DB8C())
      {
        goto LABEL_38;
      }

      sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
      swift_dynamicCast();
      v23 = v40;
      v22 = v14;
      if (!v40)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    v20 = v13;
    v21 = v14;
    if (!v14)
    {
      break;
    }

LABEL_23:
    v22 = (v21 - 1) & v21;
    v23 = *(*(v4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v23)
    {
      goto LABEL_38;
    }

LABEL_27:
    v24 = v23;
    v25 = [v24 code];
    if (*(v18 + 16) && (v26 = sub_228443CF8(v25), (v27 & 1) != 0))
    {
      v28 = 0;
      v29 = *(*(v18 + 56) + 8 * v26);
      v30 = v39;
      if (!v39)
      {
        goto LABEL_16;
      }

LABEL_32:
      v31 = [v24 code];

      v32 = *(v30 + 16);
      v14 = v22;
      if (!v32)
      {
        goto LABEL_17;
      }

      v33 = sub_228443CF8(v31);
      if ((v34 & 1) == 0)
      {
        goto LABEL_17;
      }

      v35 = *(*(v39 + 56) + 8 * v33);

      if (v29 == v35)
      {
        v36 = v28;
      }

      else
      {
        v36 = 1;
      }

      v18 = v38;
      if (v36)
      {
LABEL_38:
        sub_228407958();
        return;
      }
    }

    else
    {
      v29 = 0;
      v28 = 1;
      v30 = v39;
      if (v39)
      {
        goto LABEL_32;
      }

LABEL_16:

      v14 = v22;
LABEL_17:

      v18 = v38;
      if ((v28 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v19)
    {
      goto LABEL_38;
    }

    v21 = *&v11[8 * v13];
    ++v20;
    if (v21)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t DatabaseChangesQueryInputSignal.Anchor.merged(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = *(v2 + 8);
  if (*a1)
  {
    v7 = *(a1 + 8);
    if (v6)
    {
      v8 = v4;
      v9 = v6;
      v10 = [v9 _rowid];
      v11 = [v8 _rowid];

      if (v10 >= v11)
      {
        v12 = v8;
      }

      else
      {
        v12 = v9;
      }

      if (v10 < v11)
      {
        v13 = v6;
      }

      else
      {
        v5 = v7;
        v13 = v4;
      }

      v14 = v12;

      *a2 = v13;
      a2[1] = v5;
      return result;
    }

    *a2 = v4;
    a2[1] = v7;
    v17 = v4;
  }

  else
  {
    *a2 = v6;
    a2[1] = v5;
    v16 = v6;
  }
}

unint64_t sub_22844088C()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x726F68636E61;
  }

  *v0;
  return result;
}

uint64_t sub_2284408C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v6 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022856E990 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

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

uint64_t sub_2284409A8(uint64_t a1)
{
  v2 = sub_22844ADBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284409E4(uint64_t a1)
{
  v2 = sub_22844ADBC();

  return MEMORY[0x2821FE720](a1, v2);
}

void DatabaseChangesQueryInputSignal.Anchor.init(from:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22844AEC4(0, &unk_280DE9028, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v50 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22844ADBC();
  sub_22855E30C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v62 = 0;
    sub_22844AE10();
    sub_22855DFEC();
    v12 = v60;
    v13 = v61;
    v56 = v61;
    if (v61 >> 60 == 15)
    {
      v54 = 0;
      v55 = v60;
    }

    else
    {
      v53 = a2;
      sub_2283EF310(0, &unk_280DEEB40, 0x277CCAAC8);
      sub_2283EF310(0, &qword_280DE94D0, 0x277CCD840);
      sub_22842B3E0(v12, v13);
      v54 = sub_22855D78C();
      v55 = v12;
      sub_22842B378(v12, v56);
      a2 = v53;
    }

    sub_22844AE64();
    v62 = 1;
    sub_22844AF28(&qword_280DE96B0);
    sub_22855E03C();
    v52 = 0;
    v53 = a2;
    v50 = v7;
    v51 = v6;
    v14 = v60 + 64;
    v15 = 1 << *(v60 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v60 + 64);
    v18 = (v15 + 63) >> 6;
    v59 = v60;

    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    v58 = v10;
    if (v17)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v21 >= v18)
      {
        break;
      }

      v17 = *(v14 + 8 * v21);
      ++v19;
      if (v17)
      {
        v19 = v21;
        do
        {
LABEL_13:
          v22 = (v19 << 9) | (8 * __clz(__rbit64(v17)));
          v23 = *(*(v59 + 48) + v22);
          v24 = *(*(v59 + 56) + v22);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_228426664(0, *(v20 + 2) + 1, 1, v20);
          }

          v26 = *(v20 + 2);
          v25 = *(v20 + 3);
          v27 = v20;
          if (v26 >= v25 >> 1)
          {
            v27 = sub_228426664((v25 > 1), v26 + 1, 1, v20);
          }

          v17 &= v17 - 1;
          *(v27 + 2) = v26 + 1;
          v20 = v27;
          v28 = &v27[16 * v26];
          *(v28 + 4) = v23;
          *(v28 + 5) = v24;
          v10 = v58;
        }

        while (v17);
      }
    }

    v57 = *(v20 + 2);
    if (!v57)
    {
      v31 = MEMORY[0x277D84F98];
LABEL_34:

      sub_22842B378(v55, v56);
      (*(v50 + 8))(v10, v51);
      v47 = v53;
      v48 = v54;
      *v53 = v54;
      v47[1] = v31;
      v49 = v48;

      __swift_destroy_boxed_opaque_existential_0(a1);

      return;
    }

    v29 = 0;
    v30 = (v20 + 40);
    v31 = MEMORY[0x277D84F98];
    while (v29 < *(v20 + 2))
    {
      v32 = a1;
      v33 = v20;
      v34 = *(v30 - 1);
      v59 = *v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v31;
      v37 = sub_228443CF8(v34);
      v38 = v31[2];
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_37;
      }

      v41 = v36;
      if (v31[3] >= v40)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228447F84();
        }
      }

      else
      {
        sub_2284449D4(v40, isUniquelyReferenced_nonNull_native);
        v42 = sub_228443CF8(v34);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_39;
        }

        v37 = v42;
      }

      v20 = v33;
      v31 = v60;
      a1 = v32;
      if (v41)
      {
        *(*(v60 + 56) + 8 * v37) = v59;
      }

      else
      {
        *(v60 + 8 * (v37 >> 6) + 64) |= 1 << v37;
        *(v31[6] + 8 * v37) = v34;
        *(v31[7] + 8 * v37) = v59;
        v44 = v31[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_38;
        }

        v31[2] = v46;
      }

      ++v29;
      v30 += 2;
      v10 = v58;
      if (v57 == v29)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    type metadata accessor for _HKDataTypeCode(0);
    sub_22855E1BC();
    __break(1u);
  }
}

uint64_t DatabaseChangesQueryInputSignal.Anchor.encode(to:)(void *a1)
{
  v77[2] = *MEMORY[0x277D85DE8];
  sub_22844AEC4(0, &unk_280DE8FD8, MEMORY[0x277D84538]);
  v5 = v4;
  v71 = *(v4 - 8);
  v6 = *(v71 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v66 - v7;
  v9 = *v1;
  v75 = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22844ADBC();
  v11 = v9;
  v72 = v8;
  sub_22855E31C();
  if (!v9)
  {
    goto LABEL_7;
  }

  v12 = objc_opt_self();
  v77[0] = 0;
  v13 = [v12 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v77];
  v14 = v77[0];
  if (!v13)
  {
    v20 = v14;
    sub_22855BF3C();

    swift_willThrow();
    result = (*(v71 + 8))(v72, v5);
    goto LABEL_42;
  }

  v15 = sub_22855C09C();
  v17 = v16;

  v77[0] = v15;
  v77[1] = v17;
  v76 = 0;
  sub_22844AF8C();
  v18 = v72;
  sub_22855E0CC();
  if (!v2)
  {

    sub_22842B38C(v15, v17);
LABEL_7:
    v70 = v2;
    v21 = *(v75 + 16);
    v22 = MEMORY[0x277D84F90];
    v69 = v5;
    if (v21)
    {
      v77[0] = MEMORY[0x277D84F90];
      v74 = v21;
      sub_228427410(0, v21, 0);
      v22 = v77[0];
      v23 = v75 + 64;
      v24 = -1 << *(v75 + 32);
      v25 = sub_22855DAAC();
      v26 = v74;
      v27 = v75;
      v28 = 0;
      v73 = v75 + 72;
      while ((v25 & 0x8000000000000000) == 0 && v25 < 1 << *(v27 + 32))
      {
        v30 = v25 >> 6;
        v31 = 1 << v25;
        if ((*(v23 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
        {
          goto LABEL_44;
        }

        v32 = *(*(v27 + 48) + 8 * v25);
        v33 = *(*(v27 + 56) + 8 * v25);
        v34 = *(v27 + 36);
        v77[0] = v22;
        v36 = v22[2];
        v35 = v22[3];
        if (v36 >= v35 >> 1)
        {
          v67 = v34;
          v68 = v25;
          sub_228427410((v35 > 1), v36 + 1, 1);
          v26 = v74;
          v27 = v75;
          v34 = v67;
          v25 = v68;
          v22 = v77[0];
        }

        v22[2] = v36 + 1;
        v37 = v22;
        v38 = &v22[2 * v36];
        v38[4] = v32;
        v38[5] = v33;
        v29 = 1 << *(v27 + 32);
        if (v25 >= v29)
        {
          goto LABEL_45;
        }

        v39 = *(v23 + 8 * v30);
        if ((v39 & v31) == 0)
        {
          goto LABEL_46;
        }

        if (v34 != *(v27 + 36))
        {
          goto LABEL_47;
        }

        v40 = v39 & (-2 << (v25 & 0x3F));
        if (v40)
        {
          v29 = __clz(__rbit64(v40)) | v25 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v41 = v30 << 6;
          v42 = v30 + 1;
          v43 = (v73 + 8 * v30);
          while (v42 < (v29 + 63) >> 6)
          {
            v45 = *v43++;
            v44 = v45;
            v41 += 64;
            ++v42;
            if (v45)
            {
              sub_228416CB8(v25, v34, 0);
              v26 = v74;
              v27 = v75;
              v29 = __clz(__rbit64(v44)) + v41;
              goto LABEL_10;
            }
          }

          sub_228416CB8(v25, v34, 0);
          v26 = v74;
          v27 = v75;
        }

LABEL_10:
        ++v28;
        v25 = v29;
        v22 = v37;
        if (v28 == v26)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }

LABEL_25:
    v75 = v22[2];
    if (!v75)
    {
      v48 = MEMORY[0x277D84F98];
LABEL_41:

      v77[0] = v48;
      v76 = 1;
      sub_22844AE64();
      sub_22844AF28(&qword_280DE96B8);
      v63 = v69;
      v64 = v72;
      sub_22855E0CC();
      (*(v71 + 8))(v64, v63);

      goto LABEL_42;
    }

    v46 = 0;
    v47 = v22 + 5;
    v48 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v46 >= v22[2])
      {
        goto LABEL_48;
      }

      v50 = *(v47 - 1);
      v49 = *v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77[0] = v48;
      v52 = sub_228443D60(v50);
      v54 = v48[2];
      v55 = (v53 & 1) == 0;
      v56 = __OFADD__(v54, v55);
      v57 = v54 + v55;
      if (v56)
      {
        goto LABEL_49;
      }

      v58 = v53;
      if (v48[3] < v57)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }

      v62 = v52;
      sub_2284480C4();
      v52 = v62;
      v48 = v77[0];
      if (v58)
      {
LABEL_27:
        *(v48[7] + 8 * v52) = v49;
        goto LABEL_28;
      }

LABEL_36:
      v48[(v52 >> 6) + 8] |= 1 << v52;
      *(v48[6] + 8 * v52) = v50;
      *(v48[7] + 8 * v52) = v49;
      v60 = v48[2];
      v56 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v56)
      {
        goto LABEL_50;
      }

      v48[2] = v61;
LABEL_28:
      ++v46;
      v47 += 2;
      if (v75 == v46)
      {
        goto LABEL_41;
      }
    }

    sub_228444C48(v57, isUniquelyReferenced_nonNull_native);
    v52 = sub_228443D60(v50);
    if ((v58 & 1) != (v59 & 1))
    {
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }

LABEL_35:
    v48 = v77[0];
    if (v58)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

  (*(v71 + 8))(v18, v5);

  result = sub_22842B38C(v15, v17);
LABEL_42:
  v65 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DatabaseChangesQueryInputSignal.Configuration.types.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_22844171C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v26 = v8;
  v27 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v28 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      v14 = *(a2 + 40);
      sub_22855D1AC();
      sub_22855E22C();
      v29 = v13;
      sub_22855D20C();
      v15 = sub_22855E27C();

      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v18 = ~v16;
      while (1)
      {
        v19 = *(*(a2 + 48) + 8 * v17);
        v20 = sub_22855D1AC();
        v22 = v21;
        if (v20 == sub_22855D1AC() && v22 == v23)
        {

          goto LABEL_24;
        }

        v25 = sub_22855E15C();

        if (v25)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v26;
      result = v27;
      v7 = v28;
      if (!v28)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228441950(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v29 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v30 = v8;
  v31 = result;
  if (v7)
  {
LABEL_7:
    v10 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
    goto LABEL_13;
  }

LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v29 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v32 = (v12 - 1) & v12;
LABEL_13:
      v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
      v14 = *(a2 + 40);
      sub_22855E22C();
      ContentKind.rawValue.getter();
      sub_22855D20C();

      v15 = sub_22855E27C();
      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }

      v18 = ~v16;
      while (2)
      {
        v19 = 0xE500000000000000;
        v20 = 0x7472656C61;
        switch(*(*(a2 + 48) + v17))
        {
          case 1:
            break;
          case 2:
            v19 = 0xE300000000000000;
            v20 = 7368801;
            break;
          case 3:
            v19 = 0xE700000000000000;
            v20 = 0x656C6369747261;
            break;
          case 4:
            v19 = 0xE800000000000000;
            v20 = 0x79726F6765746163;
            break;
          case 5:
            v19 = 0xE400000000000000;
            v20 = 1635017060;
            break;
          case 6:
            v20 = 0x67676F4C61746164;
            v19 = 0xEB00000000676E69;
            break;
          case 7:
            v20 = 0x6D6D755361746164;
            v19 = 0xEB00000000797261;
            break;
          case 8:
            v20 = 0xD000000000000010;
            v19 = 0x800000022856CF30;
            break;
          case 9:
            v20 = 0xD000000000000010;
            v19 = 0x800000022856CF50;
            break;
          case 0xA:
            v20 = 0xD000000000000010;
            v19 = 0x800000022856CF70;
            break;
          case 0xB:
            v20 = 0x5365727574616566;
            v19 = 0xED00007375746174;
            break;
          case 0xC:
            v19 = 0xE900000000000074;
            v20 = 0x6867696C68676968;
            break;
          case 0xD:
            v20 = 0x6867696C68676968;
            v19 = 0xEF68637261655374;
            break;
          case 0xE:
            v20 = 0x697461676976616ELL;
            v19 = 0xEA00000000006E6FLL;
            break;
          case 0xF:
            v19 = 0xE600000000000000;
            v20 = 0x617461446F6ELL;
            break;
          case 0x10:
            v20 = 0x726568746FLL;
            break;
          case 0x11:
            v20 = 0x6D726F6674616C70;
            v19 = 0xED00007472656C41;
            break;
          case 0x12:
            v20 = 0x6F69746F6D6F7270;
            v19 = 0xE90000000000006ELL;
            break;
          case 0x13:
            v19 = 0xE600000000000000;
            v20 = 0x74706D6F7270;
            break;
          case 0x14:
            v19 = 0xE700000000000000;
            v20 = 0x656C69666F7270;
            break;
          case 0x15:
            v20 = 0x6E6F6974616C6572;
            v19 = 0xEC00000070696873;
            break;
          case 0x16:
            v19 = 0xE800000000000000;
            v20 = 0x73676E6974746573;
            break;
          case 0x17:
            v19 = 0xE600000000000000;
            v20 = 0x657461647075;
            break;
          case 0x18:
            v19 = 0xE700000000000000;
            v20 = 0x72616265646973;
            break;
          default:
            v20 = 0xD000000000000011;
            v19 = 0x800000022856CEE0;
            break;
        }

        v21 = 0xE500000000000000;
        v22 = 0x7472656C61;
        switch(v13)
        {
          case 1:
            goto LABEL_86;
          case 2:
            v21 = 0xE300000000000000;
            if (v20 != 7368801)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 3:
            v21 = 0xE700000000000000;
            v25 = 0x6C6369747261;
            goto LABEL_66;
          case 4:
            v21 = 0xE800000000000000;
            if (v20 != 0x79726F6765746163)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 5:
            v21 = 0xE400000000000000;
            if (v20 != 1635017060)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 6:
            v26 = 0x67676F4C61746164;
            v27 = 6778473;
            goto LABEL_75;
          case 7:
            v26 = 0x6D6D755361746164;
            v27 = 7959137;
LABEL_75:
            v21 = v27 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v20 != v26)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 8:
            v21 = 0x800000022856CF30;
            if (v20 != 0xD000000000000010)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 9:
            v21 = 0x800000022856CF50;
            if (v20 != 0xD000000000000010)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 10:
            v21 = 0x800000022856CF70;
            if (v20 != 0xD000000000000010)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 11:
            v23 = 0x5365727574616566;
            v24 = 0x7375746174;
            goto LABEL_63;
          case 12:
            v21 = 0xE900000000000074;
            if (v20 != 0x6867696C68676968)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 13:
            v21 = 0xEF68637261655374;
            if (v20 != 0x6867696C68676968)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 14:
            v21 = 0xEA00000000006E6FLL;
            if (v20 != 0x697461676976616ELL)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 15:
            v21 = 0xE600000000000000;
            if (v20 != 0x617461446F6ELL)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 16:
            if (v20 != 0x726568746FLL)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 17:
            v23 = 0x6D726F6674616C70;
            v24 = 0x7472656C41;
LABEL_63:
            v21 = v24 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v20 != v23)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 18:
            v21 = 0xE90000000000006ELL;
            if (v20 != 0x6F69746F6D6F7270)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 19:
            v21 = 0xE600000000000000;
            v22 = 0x74706D6F7270;
LABEL_86:
            if (v20 == v22)
            {
              goto LABEL_87;
            }

            goto LABEL_88;
          case 20:
            v21 = 0xE700000000000000;
            v25 = 0x6C69666F7270;
LABEL_66:
            if (v20 != (v25 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 21:
            v21 = 0xEC00000070696873;
            if (v20 != 0x6E6F6974616C6572)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 22:
            v21 = 0xE800000000000000;
            if (v20 != 0x73676E6974746573)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 23:
            v21 = 0xE600000000000000;
            if (v20 != 0x657461647075)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 24:
            v21 = 0xE700000000000000;
            if (v20 != 0x72616265646973)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          default:
            v21 = 0x800000022856CEE0;
            if (v20 != 0xD000000000000011)
            {
              goto LABEL_88;
            }

LABEL_87:
            if (v19 != v21)
            {
LABEL_88:
              v28 = sub_22855E15C();

              if (v28)
              {
                goto LABEL_94;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                return 0;
              }

              continue;
            }

LABEL_94:
            v8 = v30;
            v3 = v31;
            v7 = v32;
            if (!v32)
            {
              goto LABEL_8;
            }

            goto LABEL_7;
        }
      }
    }
  }

  __break(1u);
  return result;
}