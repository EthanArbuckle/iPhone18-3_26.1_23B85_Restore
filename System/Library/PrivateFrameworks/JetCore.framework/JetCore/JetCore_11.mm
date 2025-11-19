void sub_1DB3E1EF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  static MonotonicTime.now.getter(v26);
  tv_sec = v26[0].tv_sec;
  tv_nsec = v26[0].tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v14 = tv_nsec / *&qword_1EE30ED50 + tv_sec - (a3 / *&qword_1EE30ED50 + a2);
  v15 = *(a4 + 16);
  os_unfair_lock_lock(v15 + 6);
  sub_1DB3BB9D4(a1, v14);
  os_unfair_lock_unlock(v15 + 6);
  os_unfair_lock_lock((a5 + 24));
  sub_1DB30C420(a1, v26);
  v16 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = *(v16 + 2);

    v24 = sub_1DB303748(0, v23 + 1, 1, v16);
    v25 = *(a5 + 16);
    *(a5 + 16) = v24;

    v16 = *(a5 + 16);
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1DB303748((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[40 * v19];
  v21 = v26[0];
  v22 = v26[1];
  v20[4].tv_sec = v27;
  v20[2] = v21;
  v20[3] = v22;
  *(a5 + 16) = v16;
  os_unfair_lock_unlock((a5 + 24));
  dispatch_group_leave(a6);
}

void sub_1DB3E2094(uint64_t a1, uint64_t a2, NSObject *a3)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1DB3E2E74((a2 + 16));
  os_unfair_lock_unlock((a2 + 24));
  dispatch_group_leave(a3);
}

id sub_1DB3E20F4(void **a1, void *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB302A34(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1DB302A34((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v6 + 1;
  v4[v6 + 4] = a2;
  *a1 = v4;
  return a2;
}

void sub_1DB3E21A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a1 + 24));
  v8 = *(a1 + 16);

  os_unfair_lock_unlock((a1 + 24));
  v9 = *(v8 + 16);

  if (v9)
  {
    os_unfair_lock_lock((a1 + 24));
    v10 = *(a1 + 16);

    os_unfair_lock_unlock((a1 + 24));
    sub_1DB3516A0();
    v11 = swift_allocError();
    *v12 = v10;
    sub_1DB3DCBD0(v11);
  }

  else
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1DB3E2344((a2 + 16), a3);
    os_unfair_lock_unlock((a2 + 24));
    os_unfair_lock_lock((a2 + 24));
    v13 = *(a2 + 16);

    os_unfair_lock_unlock((a2 + 24));
    v14 = sub_1DB3E25F8(v13);

    swift_beginAccess();
    v16 = *(a4 + 24);
    v15 = *(a4 + 32);
    swift_beginAccess();
    v17 = *(v14 + 32);
    *(v14 + 24) = v16;
    *(v14 + 32) = v15;

    sub_1DB3F8328(v14);
  }
}

__n128 sub_1DB3E2344(char **a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1DB303748(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1DB303748((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[40 * v7];
  v8[2].n128_u64[0] = &type metadata for AsyncObjectGraphMetrics;
  v8[2].n128_u64[1] = v4;
  result = v10;
  v8[3] = v10;
  v8[4].n128_u64[0] = &type metadata for AsyncObjectGraphMetrics;
  *a1 = v5;
  return result;
}

uint64_t sub_1DB3E2440(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DB30C420(v2, v10);
      v4 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v4);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1DB302404(0, *(v3 + 2) + 1, 1, v3);
      }

      v6 = *(v3 + 2);
      v5 = *(v3 + 3);
      if (v6 >= v5 >> 1)
      {
        v3 = sub_1DB302404((v5 > 1), v6 + 1, 1, v3);
      }

      sub_1DB30BF1C(v10);
      *(v3 + 2) = v6 + 1;
      v7 = &v3[16 * v6];
      *(v7 + 4) = 60;
      *(v7 + 5) = 0xE100000000000000;
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB3370CC(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v8 = sub_1DB50A5E0();

  return v8;
}

uint64_t sub_1DB3E25F8(uint64_t a1)
{
  v3 = *v1;
  v8 = v1[2];

  sub_1DB3E08A8(a1);
  swift_beginAccess();
  v6 = v1[3];
  v7 = v1[4];

  MEMORY[0x1E1285C70](1528834848, 0xE400000000000000);
  v4 = sub_1DB3E2440(a1);
  MEMORY[0x1E1285C70](v4);

  MEMORY[0x1E1285C70](93, 0xE100000000000000);
  return (*(v3 + 96))(v6, v7, &v8);
}

uint64_t sub_1DB3E274C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1DB30C4B8(v5, v21, a2, a3);
  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    swift_allocError();
    *v8 = a1;
    v9 = a1;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    v12 = v21[2];
    v11 = v21[3];
    sub_1DB2FEA0C(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = v11;
    v15[4] = a1;
    v16 = *(v14 + 8);

    v17 = a1;
    v16(a5, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

void sub_1DB3E2DE8()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_1DB3E21A8(v0[2], v0[3], v0[4], v0[5]);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB3E2E28(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB3E2F34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DB3E2F68@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  result = (*(v1 + 24))(*(v1 + 40));
  *a1 = result;
  return result;
}

id sub_1DB3E2FCC(id result, char a2)
{
  if (a2 == 3 || a2 == 2)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

id sub_1DB3E2FF0(id result, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
      return result;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return swift_unknownObjectRetain();
    }
  }

  else
  {
  }

  return result;
}

id sub_1DB3E3028(id result, unint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2 || a4 == 3)
    {

      return result;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      sub_1DB30C1AC(result, a2);
      result = a3;

      return result;
    }
  }

  else
  {
  }

  return result;
}

void sub_1DB3E30AC(void *a1, unsigned __int8 a2, void (*a3)(void))
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      a3();
    }
  }

  else
  {
  }
}

id sub_1DB3E30E8(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {

      return result;
    }
  }

  else
  {
    if (!a3)
    {
    }

    if (a3 == 1)
    {
    }
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 ClosureAction.init(actionMetrics:body:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a2;
  a4[1].n128_u64[1] = a3;
  return result;
}

uint64_t ClosureAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 ClosureAction.actionMetrics.setter(__n128 *a1)
{
  v4 = v1->n128_u64[0];
  v3 = v1->n128_i64[1];

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_1DB3E326C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 24);

  *(a2 + 16) = sub_1DB3E3374;
  *(a2 + 24) = v5;
  return result;
}

uint64_t ClosureAction.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ClosureAction.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1DB3E3374()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DB3E339C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_1DB3E33EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 == 1)
  {
    v6 = *(a1 + 32);
    *a3 = v6;
    *(a3 + 8) = 1;

    return v6;
  }

  else
  {
    if (v4)
    {
      sub_1DB32E3B0();
      v9 = swift_allocError();
      *v10 = a1;
      *a3 = v9;
      *(a3 + 8) = 1;
    }

    else
    {
      *a3 = *a2;
      *(a3 + 8) = 0;
    }
  }
}

uint64_t sub_1DB3E3498(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 8))(v6, a1);
  if (EnumCaseMultiPayload == 1)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t _s7JetCore14DaemonResponseO3getxyAA0cD12CodableErrorVYKF@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*(a1 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v9);
  }

  v12 = *v9;
  v13 = v9[1];
  v14 = v9[2];
  v15 = v9[3];
  v16 = v9[4];
  *a2 = *v9;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v16;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  v17[4] = v15;
  v17[5] = v16;
  sub_1DB36562C();
  return swift_willThrowTypedImpl();
}

id sub_1DB3E3700()
{
  if (!v0[1])
  {
    return 0;
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  v6 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1DB50A650();
  *(inited + 40) = v7;
  sub_1DB36562C();
  v8 = sub_1DB50BC80();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB351638(inited + 32);
  v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v11 = sub_1DB50A620();
  v12 = sub_1DB50A490();

  v13 = [v10 initWithDomain:v11 code:v3 userInfo:v12];

  return v13;
}

uint64_t sub_1DB3E3868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45068, &qword_1DB519748);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3E6124();
  sub_1DB50BE40();
  v15 = 0;
  sub_1DB50B860();
  if (!v4)
  {
    v14 = 1;
    sub_1DB50B890();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DB3E39FC()
{
  if (*v0)
  {
    result = 1701080931;
  }

  else
  {
    result = 0x6E69616D6F64;
  }

  *v0;
  return result;
}

uint64_t sub_1DB3E3A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

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

uint64_t sub_1DB3E3B04(uint64_t a1)
{
  v2 = sub_1DB3E6124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3E3B40(uint64_t a1)
{
  v2 = sub_1DB3E6124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB3E3B7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DB3E6178(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t DaemonResponseCodableError.errorDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t DaemonResponseCodableError.errorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t DaemonResponseCodableError.description.getter()
{
  v1 = v0[1];
  if (v0[4])
  {
    v2 = v0[3];
    v3 = v0[4];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  v4 = *v0;
  v5 = v0[2];

  sub_1DB50B320();

  MEMORY[0x1E1285C70](v2, v3);

  MEMORY[0x1E1285C70](34, 0xE100000000000000);
  if (v1)
  {
    sub_1DB50B320();

    MEMORY[0x1E1285C70](v4, v1);
    MEMORY[0x1E1285C70](0x3A65646F63202C22, 0xE900000000000020);
    v6 = sub_1DB50B8F0();
    MEMORY[0x1E1285C70](v6);

    MEMORY[0x1E1285C70](0x6E69616D6F64202CLL, 0xEB0000000022203ALL);
  }

  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return 0xD00000000000002ELL;
}

unint64_t sub_1DB3E3DF0()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x49726F727245736ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1DB3E3E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49726F727245736ELL && a2 == 0xEB000000006F666ELL;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB52D070 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

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

uint64_t sub_1DB3E3F20(uint64_t a1)
{
  v2 = sub_1DB3E4140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3E3F5C(uint64_t a1)
{
  v2 = sub_1DB3E4140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonResponseCodableError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45040, &qword_1DB519050);
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v14[1] = v1[4];
  v14[2] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3E4140();

  sub_1DB50BE40();
  v16 = v7;
  v17 = v8;
  v18 = v10;
  v19 = 0;
  sub_1DB3E4194();
  v12 = v14[3];
  sub_1DB50B830();

  if (!v12)
  {
    LOBYTE(v16) = 1;
    sub_1DB50B800();
  }

  return (*(v15 + 8))(v6, v3);
}

unint64_t sub_1DB3E4140()
{
  result = qword_1EE30CAD8;
  if (!qword_1EE30CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAD8);
  }

  return result;
}

unint64_t sub_1DB3E4194()
{
  result = qword_1EE30CAA8;
  if (!qword_1EE30CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAA8);
  }

  return result;
}

uint64_t DaemonResponseCodableError.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45048, &unk_1DB519058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3E4140();
  sub_1DB50BDF0();
  if (!v2)
  {
    v23 = 0;
    sub_1DB3E4410();
    sub_1DB50B710();
    v11 = v21;
    v18 = v22;
    v19 = v20;
    LOBYTE(v20) = 1;
    v13 = sub_1DB50B6E0();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    v16 = v18;
    *a2 = v19;
    a2[1] = v11;
    a2[2] = v16;
    a2[3] = v13;
    a2[4] = v15;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB3E4410()
{
  result = qword_1ECC45050;
  if (!qword_1ECC45050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45050);
  }

  return result;
}

uint64_t sub_1DB3E4464()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t DaemonResponse.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  swift_getErrorValue();
  v4 = sub_1DB50BC80();
  v6 = v5;

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v4;
  a2[4] = v6;
  type metadata accessor for DaemonResponse();
  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonResponse.init(reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = a1;
  a3[4] = a2;
  type metadata accessor for DaemonResponse();

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonResponse.init(nsError:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_1DB50A650();
  v7 = v6;

  v8 = [a1 code];
  v9 = [a1 localizedDescription];
  v10 = sub_1DB50A650();
  v12 = v11;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v12;
  type metadata accessor for DaemonResponse();

  return swift_storeEnumTagMultiPayload();
}

double DaemonResponse.init<>(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1 & 1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 1;
  return result;
}

uint64_t DaemonResponse.init<>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 1;
  return result;
}

uint64_t sub_1DB3E471C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DB3E4820(char a1)
{
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](a1 & 1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3E4868(char a1)
{
  if (a1)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t sub_1DB3E4898(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DB50BA30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_1DB3E4908(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1DB3E47E8(*a1, *a2);
}

uint64_t sub_1DB3E4920(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1DB3E4820(*v1);
}

uint64_t sub_1DB3E4934(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1DB3E47F8(a1, *v2);
}

uint64_t sub_1DB3E4948(uint64_t a1, void *a2)
{
  sub_1DB50BCF0();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1DB3E47F8(v8, *v2);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3E4994(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1DB3E4868(*v1);
}

uint64_t sub_1DB3E49A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1DB3E471C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1DB3E49DC@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1DB3A5E1C();
  *a2 = result;
  return result;
}

uint64_t sub_1DB3E4A10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB3E4A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB3E4AC4@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1DB34AABC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DB3E4AFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB3E4B50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB3E4BA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB3E4BF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DaemonResponse.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v47 = type metadata accessor for DaemonResponse.SuccessCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1DB50B8C0();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v46 = v40 - v9;
  v48 = *(v4 - 8);
  v10 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v44 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DaemonResponse.FailureCodingKeys();
  v14 = swift_getWitnessTable();
  v40[2] = v13;
  v40[1] = v14;
  v15 = sub_1DB50B8C0();
  v42 = *(v15 - 8);
  v43 = v15;
  v16 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v41 = v40 - v17;
  v18 = *(a2 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v6;
  *&v52 = v4;
  type metadata accessor for DaemonResponse.CodingKeys();
  swift_getWitnessTable();
  v23 = sub_1DB50B8C0();
  v54 = *(v23 - 8);
  v55 = v23;
  v24 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v40 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE40();
  (*(v18 + 16))(v22, v53, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v48;
    v29 = v44;
    v30 = v52;
    (*(v48 + 32))(v44, v22, v52);
    LOBYTE(v56) = 1;
    v31 = v46;
    v32 = v55;
    sub_1DB50B7E0();
    v33 = v50;
    sub_1DB50B8A0();
    (*(v49 + 8))(v31, v33);
    (*(v28 + 8))(v29, v30);
    return (*(v54 + 8))(v26, v32);
  }

  else
  {
    v35 = *(v22 + 4);
    LOBYTE(v56) = 0;
    v36 = *v22;
    v52 = *(v22 + 1);
    v53 = v36;
    v37 = v41;
    v38 = v55;
    sub_1DB50B7E0();
    v56 = v53;
    v57 = v52;
    v58 = v35;
    sub_1DB3E51F4();
    v39 = v43;
    sub_1DB50B8A0();
    (*(v42 + 8))(v37, v39);
    (*(v54 + 8))(v26, v38);
  }
}

unint64_t sub_1DB3E51F4()
{
  result = qword_1EE30CAA0;
  if (!qword_1EE30CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAA0);
  }

  return result;
}

uint64_t DaemonResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a4;
  v7 = type metadata accessor for DaemonResponse.SuccessCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v74 = v7;
  v67 = sub_1DB50B7C0();
  v66 = *(v67 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v75 = &v62 - v9;
  v10 = type metadata accessor for DaemonResponse.FailureCodingKeys();
  v11 = swift_getWitnessTable();
  v71 = v10;
  v70 = v11;
  v65 = sub_1DB50B7C0();
  v64 = *(v65 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v72 = &v62 - v13;
  type metadata accessor for DaemonResponse.CodingKeys();
  v80 = swift_getWitnessTable();
  v14 = sub_1DB50B7C0();
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v62 - v16;
  v68 = a2;
  v69 = a3;
  v18 = type metadata accessor for DaemonResponse();
  v77 = *(v18 - 8);
  v19 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v62 - v26;
  v28 = a1;
  v29 = a1[3];
  v30 = a1[4];
  v87 = v28;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v31 = v81;
  sub_1DB50BDF0();
  if (!v31)
  {
    v81 = v21;
    v63 = v24;
    v80 = v27;
    v32 = v79;
    v33 = v17;
    *&v82 = sub_1DB50B7A0();
    sub_1DB50AA60();
    swift_getWitnessTable();
    *&v85 = sub_1DB50B220();
    *(&v85 + 1) = v34;
    *&v86 = v35;
    *(&v86 + 1) = v36;
    sub_1DB50B210();
    swift_getWitnessTable();
    sub_1DB50AE50();
    v37 = v82;
    if (v82 == 2 || (v62 = v85, v82 = v85, v83 = v86, (sub_1DB50AE70() & 1) == 0))
    {
      v43 = sub_1DB50B3E0();
      swift_allocError();
      v44 = v32;
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
      *v46 = v18;
      sub_1DB50B6B0();
      sub_1DB50B3C0();
      (*(*(v43 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v43);
      swift_willThrow();
      (*(v78 + 8))(v17, v44);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v37)
      {
        LOBYTE(v82) = 1;
        v38 = v75;
        v39 = v17;
        sub_1DB50B6A0();
        v40 = v76;
        v41 = v77;
        v42 = v78;
        v53 = v38;
        v54 = v81;
        v55 = v67;
        sub_1DB50B780();
        (*(v66 + 8))(v53, v55);
        (*(v42 + 8))(v39, v79);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v60 = *(v41 + 32);
        v61 = v80;
        v60(v80, v54, v18);
      }

      else
      {
        LOBYTE(v82) = 0;
        v48 = v72;
        v49 = v33;
        sub_1DB50B6A0();
        v51 = v77;
        v50 = v78;
        sub_1DB3E5A64();
        v52 = v65;
        sub_1DB50B780();
        (*(v64 + 8))(v48, v52);
        (*(v50 + 8))(v49, v32);
        swift_unknownObjectRelease();
        v57 = v84;
        v58 = v83;
        v59 = v63;
        *v63 = v82;
        v59[1] = v58;
        *(v59 + 4) = v57;
        swift_storeEnumTagMultiPayload();
        v60 = *(v51 + 32);
        v61 = v80;
        v60(v80, v59, v18);
        v40 = v76;
      }

      v60(v40, v61, v18);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v87);
}

unint64_t sub_1DB3E5A64()
{
  result = qword_1ECC45058;
  if (!qword_1ECC45058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45058);
  }

  return result;
}

uint64_t sub_1DB3E5AF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DB3E5B54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB3E5BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB3E5C30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 40;
  if (*(v3 + 64) > 0x28uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DB3E5D48(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1DB3E5F24()
{
  result = qword_1ECC45060;
  if (!qword_1ECC45060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45060);
  }

  return result;
}

unint64_t sub_1DB3E6078()
{
  result = qword_1EE30CAC8;
  if (!qword_1EE30CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAC8);
  }

  return result;
}

unint64_t sub_1DB3E60D0()
{
  result = qword_1EE30CAD0;
  if (!qword_1EE30CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAD0);
  }

  return result;
}

unint64_t sub_1DB3E6124()
{
  result = qword_1EE30CAC0;
  if (!qword_1EE30CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAC0);
  }

  return result;
}

uint64_t sub_1DB3E6178(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45070, &unk_1DB519750);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3E6124();
  sub_1DB50BDF0();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_1DB50B740();
    v10[14] = 1;
    sub_1DB50B770();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_1DB3E6364()
{
  result = qword_1ECC45078[0];
  if (!qword_1ECC45078[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC45078);
  }

  return result;
}

unint64_t sub_1DB3E63BC()
{
  result = qword_1EE30CAB0;
  if (!qword_1EE30CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAB0);
  }

  return result;
}

unint64_t sub_1DB3E6414()
{
  result = qword_1EE30CAB8;
  if (!qword_1EE30CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAB8);
  }

  return result;
}

uint64_t sub_1DB3E648C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB3E64FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = sub_1DB50B120();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v10 = *(v5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[2];
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2[1];
  v18 = sub_1DB50AA00();
  v19 = v2[2];
  if (v19 != v18)
  {
    v34 = a2;
    v23 = sub_1DB50A9F0();
    sub_1DB50A9B0();
    if (v23)
    {
      v24 = v38;
      (*(v39 + 16))(v38, v17 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v19, v14);
    }

    else
    {
      v33 = sub_1DB50B380();
      if (v15 != 8)
      {
        goto LABEL_13;
      }

      v40[0] = v33;
      v24 = v38;
      (*(v39 + 16))(v38, v40, v14);
      swift_unknownObjectRelease();
    }

    v25 = v34;
    if (!__OFADD__(v19, 1))
    {
      v2[2] = v19 + 1;
      v26 = *v2;
      v27 = a1[4];
      sub_1DB50A590();
      v28 = v24;
      if ((*(v10 + 48))(v9, 1, v5) != 1)
      {
        v29 = *(v10 + 32);
        v30 = v37;
        v29(v37, v9, v5);
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v32 = *(TupleTypeMetadata2 + 48);
        (*(v39 + 32))(v25, v28, v14);
        v29((v25 + v32), v30, v5);
        return (*(*(TupleTypeMetadata2 - 8) + 56))(v25, 0, 1, TupleTypeMetadata2);
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    (*(v35 + 8))(v9, v36);
    v40[0] = 0;
    v40[1] = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD00000000000002ELL, 0x80000001DB52D0F0);
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](96, 0xE100000000000000);
    result = sub_1DB50B580();
    __break(1u);
    return result;
  }

  v20 = swift_getTupleTypeMetadata2();
  v21 = *(*(v20 - 8) + 56);

  return v21(a2, 1, 1, v20);
}

uint64_t sub_1DB3E69AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v37 = a3;
  v7 = *(a2 + 16);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v12 = sub_1DB50B120();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = *(v11 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v35 = a1;
  v36 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + 8);
  v22 = *(a2 + 32);
  sub_1DB50A590();
  if ((*(v17 + 48))(v16, 1, v11) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v23 = 1;
    v24 = v37;
    return (*(v17 + 56))(v24, v23, 1, v11);
  }

  v25 = v16;
  v26 = *(v17 + 32);
  v26(v36, v25, v11);
  v40 = *(v4 + 16);
  v27 = v7;
  sub_1DB50AA60();
  swift_getWitnessTable();
  v28 = *(v22 + 8);
  v29 = v35;
  sub_1DB50AE80();
  if ((v39 & 1) == 0)
  {
    v30 = v33;
    sub_1DB50AA20();
    v31 = v34;
    (*(v34 + 8))(v30, v27);
    (*(v31 + 16))(v30, v29, v27);
    sub_1DB50AA10();
    v24 = v37;
    v26(v37, v36, v11);
    v23 = 0;
    return (*(v17 + 56))(v24, v23, 1, v11);
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52D0B0);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52D0D0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB3E6D9C(char *a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = sub_1DB50B120();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = *(v6 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v8[2];
  v26 = a1;
  v21(v14, a1, v7, v18);
  if ((*(v15 + 48))(v14, 1, v6) == 1)
  {
    v22 = v8[1];
    v22(v14, v7);
    sub_1DB3E7578(a2, a3, v11);
    (*(*(a3[2] - 8) + 8))(a2);
    v22(v26, v7);
    return (v22)(v11, v7);
  }

  else
  {
    (*(v15 + 32))(v20, v14, v6);
    sub_1DB3E7084(v20, a2, a3, v11);
    (*(*(a3[2] - 8) + 8))(a2);
    v24 = v8[1];
    v24(v26, v7);
    v24(v11, v7);
    return (*(v15 + 8))(v20, v6);
  }
}

uint64_t sub_1DB3E7084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a2;
  v48 = a4;
  v7 = a3[2];
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v43 = sub_1DB50B120();
  v12 = *(v43 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = *(v11 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v45 = &v40 - v25;
  (*(v18 + 16))(v22, a1, v11, v24);
  v41 = a3;
  v26 = a3[4];
  sub_1DB50A540();
  v27 = v44;
  sub_1DB50A4D0();
  if ((*(v18 + 48))(v17, 1, v11) == 1)
  {
    v28 = *(v12 + 8);
    v29 = v17;
    v30 = v43;
    v28(v29, v43);
    v31 = v4[1];
    v32 = sub_1DB50A510();
    if (v32 >= 1 && *v4 < v32)
    {
      v33 = v42;
      sub_1DB3E7944(v41, v42);
      v28(v33, v30);
    }

    (*(v46 + 16))(v47, v27, v7);
    sub_1DB50AA60();
    sub_1DB50AA10();
    v34 = 1;
    v35 = v48;
    return (*(v18 + 56))(v35, v34, 1, v11);
  }

  v43 = *(v18 + 32);
  (v43)(v45, v17, v11);
  v51 = v4[2];
  sub_1DB50AA60();
  swift_getWitnessTable();
  v36 = *(v26 + 8);
  sub_1DB50AE80();
  if ((v50 & 1) == 0)
  {
    v37 = v47;
    sub_1DB50AA20();
    v38 = v46;
    (*(v46 + 8))(v37, v7);
    (*(v38 + 16))(v37, v27, v7);
    sub_1DB50AA10();
    v35 = v48;
    (v43)(v48, v45, v11);
    v34 = 0;
    return (*(v18 + 56))(v35, v34, 1, v11);
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52D0B0);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52D0D0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB3E7578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a3;
  v5 = *(a2 + 16);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = sub_1DB50B120();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = *(v9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 32);
  v31 = v5;
  v21 = v33;
  sub_1DB50A540();
  v32 = a1;
  sub_1DB50A4C0();
  if ((*(v15 + 48))(v14, 1, v9) == 1)
  {
    (*(v11 + 8))(v14, v10);
    v22 = 1;
    v23 = v34;
    return (*(v15 + 56))(v23, v22, 1, v9);
  }

  v28 = *(v15 + 32);
  v28(v19, v14, v9);
  v37 = *(v21 + 16);
  v24 = v31;
  sub_1DB50AA60();
  swift_getWitnessTable();
  v25 = *(v20 + 8);
  sub_1DB50AE80();
  if ((v36 & 1) == 0)
  {
    v26 = v29;
    sub_1DB50AA20();
    (*(v30 + 8))(v26, v24);
    v23 = v34;
    v28(v34, v19, v9);
    v22 = 0;
    return (*(v15 + 56))(v23, v22, 1, v9);
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52D0B0);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52D0D0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB3E7944@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v2 + 16);
  sub_1DB50AA60();
  swift_getWitnessTable();
  if (sub_1DB50AE70())
  {
    return (*(*(a1[3] - 8) + 56))(a2, 1, 1);
  }

  swift_getWitnessTable();
  sub_1DB50AEA0();
  v11 = a1[3];
  v12 = a1[4];
  sub_1DB50A540();
  sub_1DB50A4C0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DB3E7AF8(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  sub_1DB50A540();
  sub_1DB50A530();
  sub_1DB50AA60();
  return sub_1DB50AA50();
}

uint64_t sub_1DB3E7B64(uint64_t a1, uint64_t a2)
{

  return a2;
}

uint64_t sub_1DB3E7BA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 8);
  v4 = *(v2 + 16);
  v6 = sub_1DB3E7B64(a1, v5);
  v8 = v7;
  v10 = v9;

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v10;
  return result;
}

uint64_t sub_1DB3E7C08(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DB4ED3FC(v2, a1, a2);
  v4 = *(v2 + 8);

  v5 = *(v2 + 16);

  return v3;
}

uint64_t sub_1DB3E7C60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t MediaArtwork.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = &_s12_EmptySourceVN;
  v4 = &off_1EECE8048;
  return MediaArtwork.init(_:)(&v2, a1);
}

uint64_t *MediaArtwork.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43508, &qword_1DB5118D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v104 - v9;
  v11 = _s10_URLSourceVMa();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  sub_1DB3171C0(a1, v110);
  v107[0] = v16;

  if ((sub_1DB34BF54(v110, v107) & 1) == 0)
  {

    *(a3 + 72) = &_s12_EmptySourceVN;
    *(a3 + 80) = &off_1EECE8048;
    sub_1DB30BE90(a3 + 48, v110);
    v33 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    *&v106 = (*(*(&v33 + 1) + 24))(v33, *(&v33 + 1));
    v35 = *(&v111 + 1);
    v34 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v36 = (*(v35 + 32))(v34, v35);
    v38 = v37;
    v39 = a1;
    v41 = *(&v111 + 1);
    v40 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v42 = (*(v41 + 40))(v40, v41);
    v43 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v44 = (*(*(&v43 + 1) + 48))(v43, *(&v43 + 1));
    v46 = v45;
    sub_1DB3151CC(v39);
    result = __swift_destroy_boxed_opaque_existential_0(v110);
    *a3 = v106;
    *(a3 + 8) = v36;
LABEL_12:
    *(a3 + 16) = v38 & 1;
    *(a3 + 24) = v42;
    goto LABEL_13;
  }

  sub_1DB3171C0(a1, v110);
  v107[0] = v16;

  sub_1DB34AE0C(v110, v107, v10);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {

    sub_1DB34CA28(v10, v15);
    *(a3 + 72) = v11;
    *(a3 + 80) = &off_1EECE7FA8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a3 + 48));
    sub_1DB3EB58C(v15, boxed_opaque_existential_0);
    sub_1DB30BE90(a3 + 48, v110);
    v49 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    *&v106 = (*(*(&v49 + 1) + 24))(v49, *(&v49 + 1));
    v51 = *(&v111 + 1);
    v50 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v105 = (*(v51 + 32))(v50, v51);
    v38 = v52;
    v53 = a1;
    v55 = *(&v111 + 1);
    v54 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v42 = (*(v55 + 40))(v54, v55);
    v56 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v44 = (*(*(&v56 + 1) + 48))(v56, *(&v56 + 1));
    v46 = v57;
    sub_1DB3151CC(v53);
    sub_1DB3EB5F0(v15);
    result = __swift_destroy_boxed_opaque_existential_0(v110);
    v58 = v105;
    *a3 = v106;
    *(a3 + 8) = v58;
    goto LABEL_12;
  }

  sub_1DB30623C(v10, &qword_1ECC43508, &qword_1DB5118D0);
  JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, v110);
  v17 = JSONObject.string.getter();
  v19 = v18;
  sub_1DB3151CC(v110);
  if (!v19)
  {
    sub_1DB3171C0(a1, v110);
    v107[0] = v16;
    v59 = sub_1DB34C02C(v110, v107);
    if (!v59)
    {
      sub_1DB315178();
      swift_allocError();
      v72 = MEMORY[0x1E69E7CC0];
      *v73 = &type metadata for MediaArtwork;
      v73[1] = v72;
      v73[2] = 0;
      v73[3] = 0;
      goto LABEL_19;
    }

    *(a3 + 72) = &_s20_AppleServicesSourceVN;
    *(a3 + 80) = &off_1EECE7FF8;
    *(a3 + 48) = v59;
    sub_1DB30BE90(a3 + 48, v110);
    *&v106 = v3;
    v60 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v61 = (*(*(&v60 + 1) + 24))(v60, *(&v60 + 1));
    v62 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v63 = (*(*(&v62 + 1) + 32))(v62, *(&v62 + 1));
    v65 = v64;
    v66 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v67 = (*(*(&v66 + 1) + 40))(v66, *(&v66 + 1));
    v68 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v44 = (*(*(&v68 + 1) + 48))(v68, *(&v68 + 1));
    v46 = v69;
    sub_1DB3151CC(a1);
    result = __swift_destroy_boxed_opaque_existential_0(v110);
    *a3 = v61;
    *(a3 + 8) = v63;
    *(a3 + 16) = v65 & 1;
    *(a3 + 24) = v67;
LABEL_13:
    *(a3 + 32) = v44;
    *(a3 + 40) = v46;
    return result;
  }

  v20 = sub_1DB316378(0xD000000000000027, 0x80000001DB52A4A0, v16);
  if (!v20)
  {
LABEL_17:

    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43500, &qword_1DB5118C8) | 0x8000000000000000;
    sub_1DB315178();
    swift_allocError();
    *v71 = v17;
    v71[1] = v19;
    v71[2] = v70;
    v71[3] = 0;
LABEL_19:
    swift_willThrow();
    v74 = a1;
    return sub_1DB3151CC(v74);
  }

  v21 = v20;
  if (!*(v20 + 16) || (v22 = sub_1DB306160(v17, v19), (v23 & 1) == 0))
  {

    goto LABEL_17;
  }

  v24 = v22;
  v104 = a1;

  v25 = *(*(v21 + 56) + 16 * v24);

  v26 = dynamic_cast_existential_2_conditional(v25);
  if (v26)
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
    sub_1DB3171C0(v104, v107);
    v113 = v16;
    v32 = *(v30 + 8);
    *&v111 = v29;
    *(&v111 + 1) = v30;
    v112 = v31;
    __swift_allocate_boxed_opaque_existential_0(v110);
    v32(v107, &v113, v29, v30);
    if (v3)
    {
      sub_1DB3151CC(v104);
      return __swift_deallocate_boxed_opaque_existential_0(v110);
    }

    v80 = v111;
    v81 = v112;
    v82 = __swift_project_boxed_opaque_existential_1(v110, v111);
    *(a3 + 72) = v80;
    *(a3 + 80) = v81;
    v83 = __swift_allocate_boxed_opaque_existential_0((a3 + 48));
    (*(*(v80 - 8) + 16))(v83, v82, v80);
    sub_1DB30BE90(a3 + 48, v107);
    v84 = v108;
    goto LABEL_28;
  }

  v75 = dynamic_cast_existential_2_conditional(v25);
  if (!v75)
  {

    sub_1DB315178();
    swift_allocError();
    v85 = MEMORY[0x1E69E7CC0];
    *v86 = v25;
    v86[1] = v85;
    v86[2] = 0;
    v86[3] = 0;
    swift_willThrow();
    v74 = v104;
    return sub_1DB3151CC(v74);
  }

  v107[0] = v16;
  *&v111 = v75;
  *(&v111 + 1) = v76;
  v112 = v77;
  v78 = v75;
  __swift_allocate_boxed_opaque_existential_0(v110);
  v79 = v104;
  JSONObject.decode<A>(_:using:)(v78, v107);
  if (v3)
  {
    sub_1DB3151CC(v79);

    return __swift_deallocate_boxed_opaque_existential_0(v110);
  }

  v106 = v111;
  v87 = v111;
  v88 = __swift_project_boxed_opaque_existential_1(v110, v111);
  *(a3 + 72) = v106;
  v89 = __swift_allocate_boxed_opaque_existential_0((a3 + 48));
  (*(*(v87 - 8) + 16))(v89, v88, v87);
  sub_1DB30BE90(a3 + 48, v107);
  v84 = v108;
LABEL_28:
  v90 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v84);
  v91 = (*(v90 + 24))(v84, v90);
  v92 = v108;
  v93 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  v94 = (*(v93 + 32))(v92, v93);
  LOBYTE(v93) = v95;
  v96 = v108;
  v97 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  v98 = (*(v97 + 40))(v96, v97);
  v99 = v108;
  v100 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  v101 = (*(v100 + 48))(v99, v100);
  v103 = v102;
  sub_1DB3151CC(v104);
  __swift_destroy_boxed_opaque_existential_0(v107);
  *a3 = v91;
  *(a3 + 8) = v94;
  *(a3 + 16) = v93 & 1;
  *(a3 + 24) = v98;
  *(a3 + 32) = v101;
  *(a3 + 40) = v103;
  return __swift_destroy_boxed_opaque_existential_0(v110);
}

unint64_t sub_1DB3E86F4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  qword_1ECC45198 = sub_1DB315520();
  result = sub_1DB3EB7B4();
  qword_1ECC451A0 = result;
  qword_1ECC45180 = v0;
  return result;
}

uint64_t static MediaArtwork._nullCachedImagesKey.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_1ECC42100 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_1DB30BE90(&qword_1ECC45180, v1);
}

uint64_t MediaArtwork.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB30BE90(a1, v20);
  v4 = v21;
  v5 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v6 = (*(v5 + 24))(v4, v5);
  v7 = v21;
  v8 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v9 = (*(v8 + 32))(v7, v8);
  LOBYTE(v8) = v10;
  v11 = v21;
  v12 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v13 = (*(v12 + 40))(v11, v12);
  v14 = v21;
  v15 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v16 = (*(v15 + 48))(v14, v15);
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_0(v20);
  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  return sub_1DB2FEA0C(a1, a2 + 48);
}

uint64_t MediaArtwork.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = &_s20_AppleServicesSourceVN;
  v5 = &off_1EECE7FF8;
  *&v3 = a1;
  return MediaArtwork.init(_:)(&v3, a2);
}

uint64_t MediaArtwork.init(urlTemplate:sourceImageSize:colors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v9 = &_s20_AppleServicesSourceVN;
  v10 = &off_1EECE7FF8;
  *&v8 = sub_1DB34CAE4(a1, a2, a3, a5, a6);
  return MediaArtwork.init(_:)(&v8, a4);
}

uint64_t MediaArtwork.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = _s10_URLSourceVMa();
  v10 = &off_1EECE7FA8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v8);
  v5 = sub_1DB509CA0();
  v6 = *(v5 - 8);
  (*(v6 + 16))(boxed_opaque_existential_0, a1, v5);
  MediaArtwork.init(_:)(&v8, a2);
  return (*(v6 + 8))(a1, v5);
}

uint64_t MediaArtwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v51 = sub_1DB50B3D0();
  v50 = *(v51 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v49[2] = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC451A8, &qword_1DB5199F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A40, &unk_1DB516260);
  v8 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v49[1] = v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43508, &qword_1DB5118D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v49 - v12;
  v14 = _s10_URLSourceVMa();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30BE90(a1, &v54);
  sub_1DB34BD48(&v54);
  if (v2)
  {

    sub_1DB30BE90(a1, &v54);
    sub_1DB34AAC4(&v54, v13);
    v62 = a1;
    (*(v15 + 56))(v13, 0, 1, v14);
    sub_1DB34CA28(v13, v18);
    *(&v60 + 1) = v14;
    v61 = &off_1EECE7FA8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v59);
    sub_1DB3EB58C(v18, boxed_opaque_existential_0);
    sub_1DB30BE90(&v59, &v54);
    v32 = v55;
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v33 = (*(*(&v32 + 1) + 24))(v32, *(&v32 + 1));
    v34 = v55;
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v35 = (*(*(&v34 + 1) + 32))(v34, *(&v34 + 1));
    v37 = v36;
    v38 = v55;
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v39 = (*(*(&v38 + 1) + 40))(v38, *(&v38 + 1));
    v40 = *(&v55 + 1);
    v41 = v55;
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v42 = (*(v40 + 48))(v41, v40);
    v44 = v43;
    sub_1DB3EB5F0(v18);
    __swift_destroy_boxed_opaque_existential_0(&v54);
    *&v56 = v33;
    *(&v56 + 1) = v35;
    LOBYTE(v57) = v37 & 1;
    *(&v57 + 1) = v39;
    *&v58 = v42;
    *(&v58 + 1) = v44;
    a1 = v62;
  }

  else
  {
    *(&v60 + 1) = &_s12_EmptySourceVN;
    v61 = &off_1EECE8048;
    sub_1DB30BE90(&v59, &v54);
    v19 = v55;
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v20 = (*(*(&v19 + 1) + 24))(v19, *(&v19 + 1));
    v21 = v55;
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v22 = (*(*(&v21 + 1) + 32))(v21, *(&v21 + 1));
    v24 = v23;
    v25 = v55;
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v26 = (*(*(&v25 + 1) + 40))(v25, *(&v25 + 1));
    v27 = v55;
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v28 = (*(*(&v27 + 1) + 48))(v27, *(&v27 + 1));
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_0(&v54);
    *&v56 = v20;
    *(&v56 + 1) = v22;
    LOBYTE(v57) = v24 & 1;
    *(&v57 + 1) = v26;
    *&v58 = v28;
    *(&v58 + 1) = v30;
  }

  v45 = v59;
  v46 = v53;
  *(v53 + 32) = v58;
  *(v46 + 48) = v45;
  *(v46 + 64) = v60;
  *(v46 + 80) = v61;
  v47 = v57;
  *v46 = v56;
  *(v46 + 16) = v47;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MediaArtwork.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1DB50B400();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A60, &unk_1DB5177A0);
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - v11;
  v13 = _s10_URLSourceVMa();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30BE90(v1 + 48, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43500, &qword_1DB5118C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A68, &qword_1DB50F518);
  if (swift_dynamicCast())
  {
    v17 = v53;
    sub_1DB2FEA0C(&v54, v58);
    sub_1DB30BE90(v58, v57);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {

          v30 = a1[4];
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_1DB50BE20();
          __swift_project_boxed_opaque_existential_1(v58, v59);
          __swift_mutable_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
          sub_1DB50BB00();
          __swift_destroy_boxed_opaque_existential_0(&v54);
        }

        else
        {
          v31 = a1[4];
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          v32 = sub_1DB50BE30();
          v33 = sub_1DB31FE80(0xD000000000000027, 0x80000001DB52A4A0, v32);

          if (v33 && (MEMORY[0x1EEE9AC00](v34), *(&v50 - 2) = v58, v35 = v51, sub_1DB305C84(sub_1DB3EB64C, (&v50 - 4), v33), v37 = v36, v51 = v35, , v37))
          {
            v38 = a1[4];
            __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            sub_1DB3053A8();
            sub_1DB50BE40();
            v54 = xmmword_1DB50F500;
            LOBYTE(v55) = 1;
            v39 = v51;
            sub_1DB50B860();

            if (!v39)
            {
              __swift_project_boxed_opaque_existential_1(v58, v59);
              sub_1DB50A5B0();
            }

            (*(v50 + 8))(v12, v9);
          }

          else
          {
            v40 = a1[4];
            __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            sub_1DB50BE00();
            *&v54 = 0;
            *(&v54 + 1) = 0xE000000000000000;
            sub_1DB50B320();

            *&v54 = 0xD000000000000017;
            *(&v54 + 1) = 0x80000001DB529550;
            __swift_project_boxed_opaque_existential_1(v58, v59);
            swift_getDynamicType();
            v41 = sub_1DB50BEE0();
            MEMORY[0x1E1285C70](v41);

            MEMORY[0x1E1285C70](62, 0xE100000000000000);
            v42 = v8;
            sub_1DB50B3C0();
            v43 = sub_1DB50B410();
            swift_allocError();
            v45 = v44;
            v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
            __swift_project_boxed_opaque_existential_1(v58, v59);
            DynamicType = swift_getDynamicType();
            v45[3] = swift_getMetatypeMetadata();
            *v45 = DynamicType;
            v48 = v8;
            v49 = v52;
            (*(v17 + 16))(v45 + v46, v48, v52);
            (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6B30], v43);
            swift_willThrow();
            (*(v17 + 8))(v42, v49);
          }
        }

        goto LABEL_6;
      }

      sub_1DB3EB5F0(v16);
    }

    __swift_destroy_boxed_opaque_existential_0(v57);
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE20();
    __swift_project_boxed_opaque_existential_1(v58, v59);
    __swift_mutable_project_boxed_opaque_existential_1(v57, v57[3]);
    sub_1DB50BB00();
LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(v57);
    return __swift_destroy_boxed_opaque_existential_0(v58);
  }

  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  sub_1DB30623C(&v54, qword_1ECC42A70, &qword_1DB50F520);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE00();
  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52D170);
  __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB52D190);
  sub_1DB50B3C0();
  v21 = sub_1DB50B410();
  swift_allocError();
  v23 = v22;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
  v25 = *(v2 + 72);
  v26 = __swift_project_boxed_opaque_existential_1((v2 + 48), v25);
  v23[3] = v25;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(v25 - 8) + 16))(boxed_opaque_existential_0, v26, v25);
  v28 = v52;
  v29 = v53;
  (*(v53 + 16))(v23 + v24, v8, v52);
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B30], v21);
  swift_willThrow();
  return (*(v29 + 8))(v8, v28);
}

uint64_t MediaArtwork.isEmpty.getter()
{
  sub_1DB30BE90(v0 + 48, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43500, &qword_1DB5118C8);
  return swift_dynamicCast();
}

double MediaArtwork.size.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t MediaArtwork.subscript.getter(uint64_t a1)
{
  v3 = v1[9];
  v4 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

void MediaArtwork.resize(_:croppedTo:)(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_1DB3EB6A4(v4, a2);
  v9 = v4[9];
  v10 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v9);
  if ((*(v10 + 48))(v9, v10) > 0.0)
  {
    v11 = v4[9];
    v12 = v4[10];
    __swift_project_boxed_opaque_existential_1(v4 + 6, v11);
    (*(v12 + 48))(v11, v12);
    if (v13 > 0.0)
    {
      v14 = v4[9];
      v15 = v4[10];
      __swift_project_boxed_opaque_existential_1(v4 + 6, v14);
      v16 = (*(v15 + 48))(v14, v15);
      a3 = sub_1DB3A09EC(a3, a4, v16, v17);
      a4 = v18;
    }
  }

  *(a2 + 32) = a3;
  *(a2 + 40) = a4;

  objc_storeStrong((a2 + 24), a1);
}

void MediaArtwork.format(_:withQuality:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1DB3EB6A4(v4, a4);
  objc_storeStrong(a4, a1);
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
}

uint64_t MediaArtwork.init(_partiallyFrom:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB30BE90(a1, &v12);
  MediaArtwork.init(from:)(&v12, v7);
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v12 = v7[0];
  v13 = v7[1];
  v4 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v4;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  v5 = v13;
  *a2 = v12;
  *(a2 + 16) = v5;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void MediaArtwork._cachedImagesKey(withScale:)(CGFloat a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v1 + 48), v3);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  if (a1 <= 0.0)
  {
    sub_1DB3D66F0("JetCore/MediaArtworkSourceConfiguration.swift", 45, 2, 58, sub_1DB3EB6DC);
  }

  CGAffineTransformMakeScale(&v16, a1, a1);
  v17.width = v9;
  v17.height = v10;
  v11 = CGSizeApplyAffineTransform(v17, &v16);
  *&v16.a = v5;
  v16.b = v6;
  LOBYTE(v16.c) = v7;
  *&v16.d = v8;
  *&v16.tx = v11;
  v12 = *(v4 + 64);
  v13 = v5;
  v14 = v8;
  v12(&v16, v3, v4);
  a = v16.a;
}

uint64_t MediaArtwork._resource(withScale:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>)
{
  v29 = a1;
  v5 = *(v2 + 72);
  v4 = *(v2 + 80);
  v28[2] = __swift_project_boxed_opaque_existential_1((v2 + 48), v5);
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v30 = a2;
  if (a2 <= 0.0)
  {
    sub_1DB3D66F0("JetCore/MediaArtworkSourceConfiguration.swift", 45, 2, 58, sub_1DB3EB80C);
  }

  CGAffineTransformMakeScale(&v31, a2, a2);
  v32.width = v10;
  v32.height = v11;
  v12 = CGSizeApplyAffineTransform(v32, &v31);
  *&v31.a = v7;
  v31.b = v6;
  LOBYTE(v31.c) = v8;
  *&v31.d = v9;
  *&v31.tx = v12;
  v13 = *(v4 + 72);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1DB50B120();
  v28[1] = v28;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v28 - v18;
  v20 = v7;
  v21 = v9;
  v13(&v31, v5, v4);
  a = v31.a;

  v23 = *(AssociatedTypeWitness - 8);
  if ((*(v23 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v16 + 8))(v19, v15);
    v25 = v29;
    *(v29 + 32) = 0;
    *v25 = 0u;
    v25[1] = 0u;
  }

  else
  {
    v26 = v29;
    *(v29 + 24) = AssociatedTypeWitness;
    v26[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
    return (*(v23 + 32))(boxed_opaque_existential_0, v19, AssociatedTypeWitness);
  }

  return result;
}

uint64_t MediaArtwork.init(urlTemplate:sourceImageSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_1DB314218(MEMORY[0x1E69E7CC0]);
  v13 = &_s20_AppleServicesSourceVN;
  v14 = &off_1EECE7FF8;
  *&v12 = sub_1DB34CAE4(a1, a2, v10, a4, a5);
  return MediaArtwork.init(_:)(&v12, a3);
}

uint64_t MediaArtwork.url(withScale:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>)
{
  MediaArtwork._resource(withScale:)(v7, a2);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC451B8, &qword_1DB519A08);
    v3 = sub_1DB509CA0();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    sub_1DB30623C(v7, &qword_1ECC451B0, &qword_1DB519A00);
    v6 = sub_1DB509CA0();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t _s7JetCore12MediaArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v44[0] = *a1;
  v44[1] = v4;
  v45 = v5;
  v46 = v6;
  v47 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v40[0] = *a2;
  v40[1] = v7;
  v41 = v8;
  v42 = v9;
  v43 = *(a2 + 32);
  v10 = v44[0];
  v11 = v6;
  v12 = v40[0];
  v13 = v9;
  LOBYTE(v6) = _s7JetCore31MediaArtworkSourceConfigurationV2eeoiySbAC_ACtFZ_0(v44, v40);
  v14 = v40[0];

  v15 = v44[0];
  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1DB30BE90(a1 + 48, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43500, &qword_1DB5118C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F00, &qword_1DB518680);
  if (!swift_dynamicCast())
  {
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    sub_1DB30623C(v38, &qword_1ECC451C0, &qword_1DB519E10);
LABEL_6:
    v35 = 0;
    return v35 & 1;
  }

  sub_1DB2FEA0C(v38, v44);
  v16 = v46;
  v37[2] = v47;
  v37[1] = __swift_project_boxed_opaque_existential_1(v44, v46);
  v17 = *(a2 + 72);
  v18 = __swift_project_boxed_opaque_existential_1((a2 + 48), v17);
  v37[3] = v37;
  v19 = *(v16 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(v17 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v24);
  (*(v27 + 16))(v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  v28 = sub_1DB50B120();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = v37 - v31;
  v33 = swift_dynamicCast();
  v34 = *(v19 + 56);
  if (v33)
  {
    v34(v32, 0, 1, v16);
    (*(v19 + 32))(v22, v32, v16);
    v35 = sub_1DB50A610();
    (*(v19 + 8))(v22, v16);
  }

  else
  {
    v34(v32, 1, 1, v16);
    (*(v29 + 8))(v32, v28);
    v35 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v44);
  return v35 & 1;
}

uint64_t sub_1DB3EB58C(uint64_t a1, uint64_t a2)
{
  v4 = _s10_URLSourceVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3EB5F0(uint64_t a1)
{
  v2 = _s10_URLSourceVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1DB3EB64C(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1(*(v1 + 16), *(*(v1 + 16) + 24));
  return v2 == swift_getDynamicType();
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DB3EB708(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1DB3EB750(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB3EB7B4()
{
  result = qword_1ECC451C8;
  if (!qword_1ECC451C8)
  {
    sub_1DB315520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC451C8);
  }

  return result;
}

uint64_t XPCJetAsset.fileAsset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(v1 + 48);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;

  return sub_1DB301E24(v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for XPCJetAsset()
{
  result = qword_1EE30DA00;
  if (!qword_1EE30DA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t XPCJetAsset.cacheKey.getter()
{
  v1 = (v0 + *(type metadata accessor for XPCJetAsset() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t XPCJetAsset.init(_:auditToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1DB30BE90(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  if (swift_dynamicCast())
  {
    v32 = v29;
    v27 = a4;
    v28 = a5;
    v12 = type metadata accessor for JetPackAsset(0);
    v13 = v12[5];
    v14 = type metadata accessor for XPCJetAsset();
    sub_1DB3EC864(a1 + v13, a6 + v14[5], type metadata accessor for JetPackAsset.Metadata);
    v15 = a1 + v12[6];
    v25 = *(v15 + 4);
    v26 = *v15;
    v16 = (a1 + v12[7]);
    v17 = v16[1];
    v22 = *v16;
    v23 = *(a1 + v12[9]);
    v24 = *(a1 + v12[8]);
    LOBYTE(v12) = *(a1 + v12[10]);

    sub_1DB3EC8CC(a1, type metadata accessor for JetPackAsset);

    *a6 = v32;
    *(a6 + 8) = v30;
    *(a6 + 16) = a2;
    *(a6 + 24) = a3;
    *(a6 + 32) = v27;
    *(a6 + 40) = v28;
    *(a6 + 48) = 0;
    v19 = a6 + v14[6];
    *v19 = v26;
    *(v19 + 4) = v25;
    v20 = (a6 + v14[7]);
    *v20 = v22;
    v20[1] = v17;
    *(a6 + v14[8]) = v24;
    *(a6 + v14[9]) = v23;
    *(a6 + v14[10]) = v12;
  }

  else
  {
    sub_1DB37C8CC();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    return sub_1DB3EC8CC(a1, type metadata accessor for JetPackAsset);
  }

  return result;
}

uint64_t XPCJetAsset.init(filePath:metadata:cacheID:cacheKey:wasReadFromCache:wasRevalidated:willBeRevalidated:auditToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a11;
  *(a9 + 32) = a12;
  *(a9 + 40) = a13;
  *(a9 + 48) = 0;
  v20 = type metadata accessor for XPCJetAsset();
  result = sub_1DB3EBCDC(a3, a9 + v20[5]);
  v22 = a9 + v20[6];
  *v22 = a4;
  *(v22 + 4) = BYTE4(a4) & 1;
  v23 = (a9 + v20[7]);
  *v23 = a5;
  v23[1] = a6;
  *(a9 + v20[8]) = a7;
  *(a9 + v20[9]) = a8;
  *(a9 + v20[10]) = a10;
  return result;
}

uint64_t sub_1DB3EBCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB3EBD40()
{
  v1 = *v0;
  v2 = 0x65737341656C6966;
  v3 = 0x6C61766552736177;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x79654B6568636163;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x617461646174656DLL;
  if (v1 != 1)
  {
    v5 = 0x44496568636163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB3EBE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB3ECE8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB3EBE6C(uint64_t a1)
{
  v2 = sub_1DB3EC270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3EBEA8(uint64_t a1)
{
  v2 = sub_1DB3EC270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCJetAsset.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC451D0, &qword_1DB519B00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3EC270();
  sub_1DB50BE40();
  v12 = v4[1];
  v14 = v4[2];
  v13 = v4[3];
  v15 = v4[4];
  v16 = v4[5];
  v17 = *(v4 + 48);
  v41 = *v4;
  v42 = v12;
  v43 = v14;
  v44 = v13;
  v45 = v15;
  v46 = v16;
  v47 = v17;
  v48 = 0;

  sub_1DB301E24(v14, v13, v15, v16, v17);
  sub_1DB3EC2C4();
  sub_1DB50B8A0();
  if (v3)
  {
    v18 = v43;
    v19 = v44;
    v20 = v45;
    v21 = v46;
    v22 = v47;

    sub_1DB3013E0(v18, v19, v20, v21, v22);
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v40 = v7;
    v24 = v43;
    v25 = v44;
    v26 = v45;
    v27 = v46;
    v28 = v47;

    sub_1DB3013E0(v24, v25, v26, v27, v28);
    v29 = type metadata accessor for XPCJetAsset();
    v30 = v29[5];
    LOBYTE(v41) = 1;
    type metadata accessor for JetPackAsset.Metadata(0);
    sub_1DB32E68C(&qword_1EE30DBC8);
    sub_1DB50B8A0();
    v31 = (v4 + v29[6]);
    v32 = *v31;
    LOBYTE(v31) = *(v31 + 4);
    LOBYTE(v41) = 2;
    v48 = v31;
    sub_1DB50B840();
    v33 = v40;
    v34 = (v4 + v29[7]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v41) = 3;
    sub_1DB50B860();
    v37 = *(v4 + v29[8]);
    LOBYTE(v41) = 4;
    sub_1DB50B870();
    v38 = *(v4 + v29[9]);
    LOBYTE(v41) = 5;
    sub_1DB50B870();
    v39 = *(v4 + v29[10]);
    LOBYTE(v41) = 6;
    sub_1DB50B870();
    return (*(v33 + 8))(v10, v6);
  }
}

unint64_t sub_1DB3EC270()
{
  result = qword_1EE30DA28[0];
  if (!qword_1EE30DA28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30DA28);
  }

  return result;
}

unint64_t sub_1DB3EC2C4()
{
  result = qword_1EE30CB28;
  if (!qword_1EE30CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CB28);
  }

  return result;
}

uint64_t XPCJetAsset.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for JetPackAsset.Metadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC451D8, &qword_1DB519B08);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for XPCJetAsset();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DB3EC270();
  v34 = v11;
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v35);
  }

  v18 = v32;
  v41 = 0;
  sub_1DB3EC810();
  sub_1DB50B780();
  v19 = v37;
  v20 = v40;
  v21 = v15;
  *v15 = v36;
  *(v15 + 1) = v19;
  v22 = v39;
  *(v15 + 1) = v38;
  *(v15 + 2) = v22;
  v15[48] = v20;
  LOBYTE(v36) = 1;
  sub_1DB32E68C(&qword_1EE30DBC0);
  sub_1DB50B780();
  sub_1DB3EBCDC(v7, &v15[v12[5]]);
  LOBYTE(v36) = 2;
  v23 = v34;
  v24 = sub_1DB50B720();
  v25 = &v15[v12[6]];
  *v25 = v24;
  v25[4] = BYTE4(v24) & 1;
  LOBYTE(v36) = 3;
  v26 = sub_1DB50B740();
  v27 = &v15[v12[7]];
  *v27 = v26;
  v27[1] = v28;
  LOBYTE(v36) = 4;
  v15[v12[8]] = sub_1DB50B750() & 1;
  LOBYTE(v36) = 5;
  v15[v12[9]] = sub_1DB50B750() & 1;
  LOBYTE(v36) = 6;
  v29 = sub_1DB50B750();
  (*(v18 + 8))(v23, v33);
  *(v21 + v12[10]) = v29 & 1;
  sub_1DB3EC864(v21, v31, type metadata accessor for XPCJetAsset);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return sub_1DB3EC8CC(v21, type metadata accessor for XPCJetAsset);
}

unint64_t sub_1DB3EC810()
{
  result = qword_1ECC451E0;
  if (!qword_1ECC451E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC451E0);
  }

  return result;
}

uint64_t sub_1DB3EC864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB3EC8CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t XPCJetAsset.makeJetPackAsset()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v27 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v28 = v5;
  v26 = v1[5];
  v7 = *(v1 + 48);
  v8 = type metadata accessor for XPCJetAsset();
  v9 = (v1 + v8[7]);
  v10 = *v9;
  v11 = v9[1];
  a1[3] = &type metadata for JetPackSandboxExtensionFileStreamSource;
  a1[4] = &protocol witness table for JetPackSandboxExtensionFileStreamSource;
  v12 = swift_allocObject();
  *a1 = v12;
  *(v12 + 40) = &type metadata for JetPackAssetDaemonClient;
  *(v12 + 48) = &off_1F56FDE60;
  *(v12 + 56) = v27;
  *(v12 + 64) = v3;
  *(v12 + 72) = v4;
  *(v12 + 80) = v5;
  v13 = v4;
  *(v12 + 88) = v6;
  *(v12 + 96) = v26;
  v14 = v7;
  *(v12 + 104) = v7;
  *(v12 + 112) = v10;
  *(v12 + 120) = v11;
  v15 = v8[5];
  v16 = type metadata accessor for JetPackAsset(0);
  sub_1DB3EC864(v1 + v15, a1 + v16[5], type metadata accessor for JetPackAsset.Metadata);
  v17 = (v1 + v8[6]);
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 4);
  v19 = *(v1 + v8[8]);
  v20 = *(v1 + v8[9]);
  v21 = *(v1 + v8[10]);
  v22 = a1 + v16[6];
  *v22 = v18;
  v22[4] = v17;
  v23 = (a1 + v16[7]);
  *v23 = v10;
  v23[1] = v11;
  *(a1 + v16[8]) = v19;
  *(a1 + v16[9]) = v20;
  *(a1 + v16[10]) = v21;
  v24 = (a1 + v16[11]);
  *v24 = 0;
  v24[1] = 0;
  swift_bridgeObjectRetain_n();

  return sub_1DB301E24(v13, v28, v6, v26, v14);
}

void sub_1DB3ECB34()
{
  type metadata accessor for JetPackAsset.Metadata(319);
  if (v0 <= 0x3F)
  {
    sub_1DB3ECBE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DB3ECBE4()
{
  if (!qword_1EE30C770)
  {
    v0 = sub_1DB50B120();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE30C770);
    }
  }
}

uint64_t getEnumTagSinglePayload for XPCJetAsset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCJetAsset.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB3ECD88()
{
  result = qword_1ECC451E8;
  if (!qword_1ECC451E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC451E8);
  }

  return result;
}

unint64_t sub_1DB3ECDE0()
{
  result = qword_1EE30DA18;
  if (!qword_1EE30DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DA18);
  }

  return result;
}

unint64_t sub_1DB3ECE38()
{
  result = qword_1EE30DA20;
  if (!qword_1EE30DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DA20);
  }

  return result;
}

uint64_t sub_1DB3ECE8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65737341656C6966 && a2 == 0xE900000000000074;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496568636163 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB52D1E0 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C61766552736177 && a2 == 0xEE00646574616469 || (sub_1DB50BA30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB52D200 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t MetricsFieldExclusionRequest.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;

  sub_1DB330D60(a1, v13);
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB300B14(v6, v12);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v13);
      result = sub_1DB3151CC(a1);
      *a3 = v10;
      a3[1] = v11;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_1DB330DD0(v13);
  }

  sub_1DB315178();
  swift_allocError();
  v8 = MEMORY[0x1E69E7CC0];
  *v9 = &type metadata for MetricsFieldExclusionRequest;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;
  swift_willThrow();
  return sub_1DB3151CC(a1);
}

uint64_t MetricsFieldExclusionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_1DB50BA40();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MetricsFieldExclusionRequest.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1DB50BAC0();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t MetricsFieldExclusionRequest.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void static MetricsFieldExclusionRequest.amsMetricsID.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "amsMetricsID");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static MetricsFieldExclusionRequest.eventVersion.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "eventVersion");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static MetricsFieldExclusionRequest.xpSendMethod.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "xpSendMethod");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_1DB3ED6E0()
{
  result = qword_1ECC451F0;
  if (!qword_1ECC451F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC451F0);
  }

  return result;
}

uint64_t _isStructurallyEqual(_:to:with:at:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v90 = a4;
  v89 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC451F8, &unk_1DB519E00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v80 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v80 - v14;
  v16 = sub_1DB50BD90();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v80 - v22;
  sub_1DB300B14(a1, &v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F00, &qword_1DB518680);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C(&v94, &v97);
    v24 = *(&v98 + 1);
    v25 = v99;
    v26 = __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
    v27 = a2[3];
    v28 = __swift_project_boxed_opaque_existential_1(a2, v27);
    v29 = sub_1DB3EE4DC(v26, v28, v24, v27, v25);
LABEL_5:
    v35 = v29;
    __swift_destroy_boxed_opaque_existential_0(&v97);
    return v35;
  }

  *&v96 = 0;
  v94 = 0u;
  v95 = 0u;
  sub_1DB30623C(&v94, &qword_1ECC451C0, &qword_1DB519E10);
  sub_1DB300B14(a1, &v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45200, &qword_1DB519E18);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C(&v94, &v97);
    v30 = *(&v98 + 1);
    v31 = v99;
    v32 = __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
    v33 = a2[3];
    v34 = __swift_project_boxed_opaque_existential_1(a2, v33);
    v29 = sub_1DB3EE770(v32, v34, v30, v33, v31);
    goto LABEL_5;
  }

  *&v96 = 0;
  v94 = 0u;
  v95 = 0u;
  sub_1DB30623C(&v94, &qword_1ECC45208, &qword_1DB519E20);
  if (v90 >= v89)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    return DynamicType == swift_getDynamicType();
  }

  v86 = v13;
  v87 = v17;
  v88 = v16;
  sub_1DB300B14(a1, &v97);
  sub_1DB50BD40();
  sub_1DB300B14(a2, &v97);
  sub_1DB50BD40();
  v37 = sub_1DB50BD50();
  if (v37 != sub_1DB50BD50() || (sub_1DB50BD80(), v38 = sub_1DB50B570(), , sub_1DB50BD80(), v39 = sub_1DB50B570(), , v38 != v39))
  {
LABEL_17:
    v56 = *(v87 + 8);
    v57 = v88;
    v56(v21, v88);
    v56(v23, v57);
    return 0;
  }

  v40 = sub_1DB50BD80();
  v41 = v40[2];
  v85 = v40[3];
  v81 = v40;
  v42 = v40[4];
  v84 = v40[5];
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v82 = v41;
  v80[1] = ObjectType;
  v44 = sub_1DB50B360();
  swift_getObjectType();
  v83 = v42;
  result = sub_1DB50B360();
  if (v44 == result)
  {
    v45 = sub_1DB50B370();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v45 & 1) == 0)
    {
      goto LABEL_14;
    }

    v46 = sub_1DB50BD80();
    v47 = v46[2];
    v85 = v46[3];
    v82 = v46;
    v48 = v46[4];
    v84 = v46[5];
    v49 = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v83 = v47;
    v81 = v49;
    v50 = sub_1DB50B360();
    swift_getObjectType();
    result = sub_1DB50B360();
    if (v50 == result)
    {
      v51 = sub_1DB50B370();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v51)
      {
        goto LABEL_19;
      }

LABEL_14:
      sub_1DB50BD70();
      v52 = sub_1DB50BD60();
      v84 = *(v52 - 8);
      v85 = *(v84 + 48);
      v53 = v85(v15, 1, v52);
      sub_1DB30623C(v15, &qword_1ECC451F8, &unk_1DB519E00);
      if (v53 == 1)
      {
        v54 = a1[3];
        v55 = __swift_project_boxed_opaque_existential_1(a1, v54);
        if (*(*(v54 - 8) + 64))
        {
          MEMORY[0x1EEE9AC00](v55);
          v80[-2] = v23;
          requirementFailure(_:file:line:)(sub_1DB3EF34C, &v80[-4], "JetCore/StructuralEquality.swift", 32, 2, 67);
          goto LABEL_17;
        }

LABEL_19:
        v59 = *(v87 + 8);
        v60 = v88;
        v59(v21, v88);
        v59(v23, v60);
        return 1;
      }

      v61 = v86;
      sub_1DB50BD70();
      if (v85(v61, 1, v52) != 1)
      {
        v62 = v86;
        sub_1DB3EF354(v86, v10);
        v63 = v84;
        if ((*(v84 + 88))(v10, v52) == *MEMORY[0x1E69E7598])
        {
          sub_1DB300B14(a1, &v97);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434F8, &qword_1DB5118C0);
          if (swift_dynamicCast())
          {
            sub_1DB300B14(a2, &v97);
            if (swift_dynamicCast())
            {
              v64 = objc_allocWithZone(MEMORY[0x1E695DF20]);
              v65 = sub_1DB50A490();

              v66 = [v64 initWithDictionary_];

              v62 = v86;
              v67 = sub_1DB50A490();

              v68 = [v66 isEqualToDictionary_];

              v69 = *(v87 + 8);
              v70 = v88;
              v69(v21, v88);
              if ((v68 & 1) == 0)
              {
                goto LABEL_45;
              }

LABEL_42:
              sub_1DB30623C(v62, &qword_1ECC451F8, &unk_1DB519E00);
              v69(v23, v70);
              return 1;
            }

            v69 = *(v87 + 8);
            v79 = v88;
            v69(v21, v88);
            v70 = v79;
          }

          else
          {
            v69 = *(v87 + 8);
            v70 = v88;
            v69(v21, v88);
          }

LABEL_45:
          sub_1DB30623C(v62, &qword_1ECC451F8, &unk_1DB519E00);
          v69(v23, v70);
          return 0;
        }

        (*(v63 + 8))(v10, v52);
      }

      sub_1DB50BD80();
      sub_1DB50BD80();
      sub_1DB50B520();

      v85 = sub_1DB50B520();

      sub_1DB50B630();
      if (*(&v93 + 1))
      {
        while (1)
        {
          v94 = v91;
          v95 = v92;
          v96 = v93;
          sub_1DB50B630();
          if (!*(&v93 + 1))
          {

            sub_1DB30623C(&v94, qword_1ECC45218, &unk_1DB519E30);
            goto LABEL_41;
          }

          v100 = v91;
          v101[0] = v92;
          v101[1] = v93;
          v97 = v94;
          v98 = v95;
          v99 = v96;
          v71 = v94;
          v72 = v91;
          sub_1DB30C200(&v98, &v95);
          v91 = v72;
          sub_1DB30C200(v101, &v92);
          if (*(&v71 + 1))
          {
            if (!*(&v72 + 1) || v71 != v72 && (sub_1DB50BA30() & 1) == 0)
            {
LABEL_38:

              v73 = *(v87 + 8);
              v74 = v21;
              v75 = v88;
              v73(v74, v88);
              sub_1DB30623C(&v91, qword_1ECC45218, &unk_1DB519E30);
              sub_1DB30623C(&v94, qword_1ECC45218, &unk_1DB519E30);
              sub_1DB30623C(v86, &qword_1ECC451F8, &unk_1DB519E00);
              v73(v23, v75);
              return 0;
            }
          }

          else if (*(&v72 + 1))
          {
            goto LABEL_38;
          }

          if ((_isStructurallyEqual(_:to:with:at:)(&v95, &v92, v89, v90 + 1) & 1) == 0)
          {
            break;
          }

          sub_1DB30623C(&v91, qword_1ECC45218, &unk_1DB519E30);
          sub_1DB30623C(&v94, qword_1ECC45218, &unk_1DB519E30);
          sub_1DB50B630();
          if (!*(&v93 + 1))
          {
            goto LABEL_37;
          }
        }

        v76 = *(v87 + 8);
        v77 = v21;
        v78 = v88;
        v76(v77, v88);

        sub_1DB30623C(&v91, qword_1ECC45218, &unk_1DB519E30);
        sub_1DB30623C(&v94, qword_1ECC45218, &unk_1DB519E30);
        sub_1DB30623C(v86, &qword_1ECC451F8, &unk_1DB519E00);
        v76(v23, v78);
        return 0;
      }

LABEL_37:

LABEL_41:
      sub_1DB30623C(&v91, &qword_1ECC45210, &qword_1DB519E28);
      v69 = *(v87 + 8);
      v70 = v88;
      v69(v21, v88);
      v62 = v86;
      goto LABEL_42;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB3EE4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[1] = a5;
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v27 - v12;
  v14 = *(*(a4 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v17, a2, a4);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (v23)
  {
    v24(v13, 0, 1, a3);
    (*(v18 + 32))(v21, v13, a3);
    v25 = sub_1DB50A610();
    (*(v18 + 8))(v21, a3);
  }

  else
  {
    v24(v13, 1, 1, a3);
    (*(v9 + 8))(v13, v8);
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_1DB3EE770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[1] = a1;
  v9 = sub_1DB50B120();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v28 - v13;
  v15 = *(*(a4 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v18, a2, a4);
  v24 = swift_dynamicCast();
  v25 = *(v19 + 56);
  if (v24)
  {
    v25(v14, 0, 1, a3);
    (*(v19 + 32))(v22, v14, a3);
    v26 = (*(a5 + 8))(v22, a3, a5);
    (*(v19 + 8))(v22, a3);
  }

  else
  {
    v25(v14, 1, 1, a3);
    (*(v10 + 8))(v14, v9);
    v26 = 0;
  }

  return v26 & 1;
}

unint64_t sub_1DB3EEA14()
{
  sub_1DB50B320();

  sub_1DB50BD50();
  v0 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](62, 0xE100000000000000);
  return 0xD000000000000021;
}

uint64_t Array<A>._isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = sub_1DB50B120();
  v34 = *(v38 - 8);
  v16 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = sub_1DB50AA00();
  v36 = a1;
  if (v21 != sub_1DB50AA00())
  {
    return 0;
  }

  v39 = a2;
  v22 = sub_1DB50AA60();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1E1285D90](&v40, v22, WitnessTable);
  v39 = v40;
  sub_1DB50B5C0();
  sub_1DB50B590();
  v24 = sub_1DB50B5B0();
  v25 = (v34 + 32);
  v34 = TupleTypeMetadata2 - 8;
  v35 = v24;
  v26 = (v8 + 32);
  v32 = a4 + 8;
  v33 = a4;
  v27 = (v8 + 8);
  while (1)
  {
    v28 = v37;
    sub_1DB50B5A0();
    (*v25)(v20, v28, v38);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v20, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v29 = *v20;
    (*v26)(v14, &v20[*(TupleTypeMetadata2 + 48)], a3);
    sub_1DB50AAB0();
    LOBYTE(v29) = (*(v33 + 8))(v11, a3);
    v30 = *v27;
    (*v27)(v11, a3);
    v30(v14, a3);
    if ((v29 & 1) == 0)
    {

      return 0;
    }
  }

  return 1;
}

uint64_t Optional<A>._isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v3 = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v33 - v10;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v33 - v20;
  v23 = *(v22 + 48);
  v36 = v12;
  v24 = *(v12 + 16);
  v24(&v33 - v20, v37, v3, v19);
  (v24)(&v21[v23], a1, v3);
  v37 = v6;
  v25 = *(v6 + 48);
  if (v25(v21, 1, v5) == 1)
  {
    v26 = 1;
    if (v25(&v21[v23], 1, v5) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v24)(v38, v21, v3);
    if (v25(&v21[v23], 1, v5) != 1)
    {
      v27 = v37;
      v28 = *(v37 + 32);
      v29 = v33;
      v28(v33, v38, v5);
      v30 = v34;
      v28(v34, &v21[v23], v5);
      v26 = (*(v35 + 8))(v30, v5);
      v31 = *(v27 + 8);
      v31(v30, v5);
      v31(v29, v5);
LABEL_8:
      v17 = v36;
      goto LABEL_9;
    }

    (*(v37 + 8))(v38, v5);
  }

  v26 = 0;
  v3 = TupleTypeMetadata2;
LABEL_9:
  (*(v17 + 8))(v21, v3);
  return v26 & 1;
}

uint64_t _EquatableForJetOnly._equatable.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t sub_1DB3EF354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC451F8, &unk_1DB519E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3EF404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 9;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1DB3EF454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = -a2 << 9;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 120) = 0u;
      *(result + 136) = 0u;
      *(result + 152) = 0u;
      *(result + 168) = 0u;
      *(result + 184) = 0u;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 248) = 0u;
      *(result + 392) = 0;
      *(result + 56) = 0u;
      result += 56;
      *(result + 208) = 0u;
      *(result + 224) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 0u;
      *(result + 272) = 0u;
      *(result + 288) = 0u;
      *(result + 304) = 0u;
      *(result + 320) = 0u;
      return result;
    }

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB3EF564(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96) & 1;
  v3 = *(result + 112) & 1;
  v4 = *(result + 128) & 0xFF01;
  v5 = *(result + 144) & 1;
  v6 = *(result + 160) & 1;
  v7 = *(result + 176) & 1;
  v8 = *(result + 192) & 1;
  v9 = *(result + 208) & 1;
  v10 = *(result + 224) & 1;
  v11 = *(result + 240) & 1;
  v12 = *(result + 256) & 1;
  v13 = *(result + 272) & 1;
  v14 = *(result + 288) & 0xFF01;
  v15 = *(result + 304) & 1;
  v16 = *(result + 320) & 1;
  v17 = *(result + 376) | (a2 << 61);
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v2;
  *(result + 112) = v3;
  *(result + 128) = v4;
  *(result + 144) = v5;
  *(result + 160) = v6;
  *(result + 176) = v7;
  *(result + 192) = v8;
  *(result + 208) = v9;
  *(result + 224) = v10;
  *(result + 240) = v11;
  *(result + 256) = v12;
  *(result + 272) = v13;
  *(result + 288) = v14;
  *(result + 304) = v15;
  *(result + 320) = v16;
  *(result + 376) = v17;
  return result;
}

uint64_t sub_1DB3EF668@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1DB3EF8EC(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t NSURLRequestCachePolicy.encode(to:)(void *a1, unint64_t a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  if (a2 <= 2)
  {
    v4 = *&aDefault_1[8 * a2];
    v5 = *&aNoCacheforceCa[8 * a2 + 16];
  }

  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
  sub_1DB3EFBD0();
  sub_1DB50BB00();

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void *sub_1DB3EF79C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DB3EF9C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DB3EF7E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x61632D6563726F66 && a2 == 0xEB00000000656863 || (sub_1DB50BA30() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x65686361632D6F6ELL && a2 == 0xE800000000000000)
  {
    return 1;
  }

  return sub_1DB50BA30() & 1;
}

uint64_t sub_1DB3EF8EC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;

  v4 = JSONObject.string.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_1DB3EF7E4(v4, v5);
    if ((v9 & 1) == 0)
    {
      v10 = v8;
      sub_1DB3151CC(a1);

      return v10;
    }

    type metadata accessor for CachePolicy(0);
    v10 = 0;
    v12 = v11 | 0x8000000000000000;
  }

  else
  {
    v6 = 0;
    v12 = 0x40000001F56F25D8uLL;
    v10 = MEMORY[0x1E69E7CC0];
    v7 = 0xE000000000000000;
  }

  sub_1DB315178();
  swift_allocError();
  *v13 = v6;
  v13[1] = v7;
  v13[2] = v12;
  v13[3] = v10;
  swift_willThrow();
  sub_1DB3151CC(a1);
  return v10;
}

void *sub_1DB3EF9C8(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v5 = sub_1DB50BA40();
    v7 = v6;
    v8 = v5;
    v9 = sub_1DB3EF7E4(v5, v6);
    if ((v10 & 1) == 0)
    {
      v4 = v9;

      __swift_destroy_boxed_opaque_existential_0(v17);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v4;
    }

    v11 = sub_1DB50B3E0();
    swift_allocError();
    v13 = v12;
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    sub_1DB50B320();

    strcpy(v16, "Unknown case ");
    v16[7] = -4864;
    MEMORY[0x1E1285C70](v8, v7);

    v4 = v16;
    MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52D2F0);
    sub_1DB50B3C0();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B00], v11);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

unint64_t sub_1DB3EFBD0()
{
  result = qword_1ECC42FF0;
  if (!qword_1ECC42FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC46C00, &qword_1DB516350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FF0);
  }

  return result;
}

uint64_t JSONTypeCluster.tryToMakeInstance(ofKind:byDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  sub_1DB30C4B8(a2, v19, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v20)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_1DB300B14(v12, v18);
    sub_1DB315520();
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v19);
      v19[0] = v11;
      (*(a5 + 24))(a1, a2, v19, a4, a5);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v14 = *(*(AssociatedTypeWitness - 8) + 56);
      v15 = a6;
      v16 = 0;
      return v14(v15, v16, 1, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    sub_1DB30623C(v19, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 56);
  v15 = a6;
  v16 = 1;
  return v14(v15, v16, 1, AssociatedTypeWitness);
}

uint64_t JSONTypeCluster.makeInstances(ofKind:byDeserializing:using:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[5] = a1;
  v8[6] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return JSONArray.map<A>(_:)(sub_1DB3EFFE8, v8, AssociatedTypeWitness);
}

uint64_t sub_1DB3EFFE8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[6];
  return (*(v4 + 24))(v5, a1, &v8, v3);
}

uint64_t JSONTypeCluster.tryToMakeInstances(ofKind:byDeserializing:using:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[5] = a1;
  v8[6] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return JSONArray.compactMap<A>(_:)(sub_1DB3F03F8, v8, AssociatedTypeWitness);
}

uint64_t sub_1DB3F00C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  sub_1DB30C4B8(a1, v24, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v25)
  {
    sub_1DB30623C(v24, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v13 = __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_1DB300B14(v13, v20);
  sub_1DB315520();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v24);
LABEL_5:
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a6, 1, 1, AssociatedTypeWitness);
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  v24[0] = a3;
  (*(a5 + 24))(a2, a1, v24, a4, a5);
  if (v6)
  {
    sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, a3, v24);
    sub_1DB30C4B8(v24, v20, &qword_1ECC42E48, &qword_1DB50FB90);
    v16 = v21;
    if (v21)
    {
      v17 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v18 = swift_getAssociatedTypeWitness();
      (*(v17 + 8))(v18, v6, v16, v17);

      sub_1DB30623C(v24, &qword_1ECC42E48, &qword_1DB50FB90);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    else
    {
      sub_1DB30623C(v24, &qword_1ECC42E48, &qword_1DB50FB90);

      sub_1DB30623C(v20, &qword_1ECC42E48, &qword_1DB50FB90);
      v18 = swift_getAssociatedTypeWitness();
    }

    return (*(*(v18 - 8) + 56))(a6, 1, 1, v18);
  }

  else
  {
    v19 = swift_getAssociatedTypeWitness();
    return (*(*(v19 - 8) + 56))(a6, 0, 1, v19);
  }
}

uint64_t sub_1DB3F0454(uint64_t a1)
{
  v2 = sub_1DB3F0B34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3F0490(uint64_t a1)
{
  v2 = sub_1DB3F0B34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB3F04E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC452A0, &qword_1DB51A1D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3F0B34();
  sub_1DB50BE40();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1DB3F05F8(uint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  if (!*(v4 + 16))
  {
  }

  v5 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v6 & 1) == 0)
  {
  }

  sub_1DB300B14(*(v4 + 56) + 32 * v5, &v36);

  v7 = MEMORY[0x1E69E6158];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (v39 == 0x6973736572706D69 && v40 == 0xEB00000000736E6FLL)
  {
  }

  else
  {
    v9 = sub_1DB50BA30();

    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 24))(v10, v11);
  if (!*(v12 + 16) || (v13 = sub_1DB306160(0x6973736572706D69, 0xEB00000000736E6FLL), (v14 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_1DB300B14(*(v12 + 56) + 32 * v13, &v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC433A8, &unk_1DB511088);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v17 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    v42 = sub_1DB301BC0(0, 39, 0, MEMORY[0x1E69E7CC0]);
    v19._object = 0x80000001DB52D310;
    v19._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    v41 = v7;
    v39 = 0x6973736572706D69;
    v40 = 0xEB00000000736E6FLL;
    sub_1DB301CDC(&v39, v35);
    v36 = 0u;
    v37 = 0u;
    sub_1DB301D4C(v35, &v36);
    v38 = 0;
    v20 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[40 * v22];
    v24 = v36;
    v25 = v37;
    v23[64] = v38;
    *(v23 + 2) = v24;
    *(v23 + 3) = v25;
    v42 = v20;
    sub_1DB301DBC(&v39);
    v26._countAndFlagsBits = 0x73646C6569662022;
    v26._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(v18 + 32) = v42;
    v27 = sub_1DB50AF40();
    if (os_log_type_enabled(v17, v27))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v28 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v28[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v28 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v30 = swift_allocObject();
      *(v30 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v36 = v18;
      *(&v36 + 1) = sub_1DB31485C;
      *&v37 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v31 = sub_1DB50A5E0();
      v33 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1DB50EE90;
      *(v34 + 56) = v7;
      *(v34 + 64) = sub_1DB31494C();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      sub_1DB50A1E0();
    }
  }

  v15 = *(v39 + 16);

  if (!v15)
  {
    v16 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
    result = __swift_destroy_boxed_opaque_existential_0(a1);
    a1[3] = &type metadata for StandardMetricsFieldsBuilder;
    a1[4] = &protocol witness table for StandardMetricsFieldsBuilder;
    *a1 = v16;
  }

  return result;
}

unint64_t sub_1DB3F0B34()
{
  result = qword_1ECC452A8;
  if (!qword_1ECC452A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC452A8);
  }

  return result;
}

unint64_t sub_1DB3F0B9C()
{
  result = qword_1ECC452B0;
  if (!qword_1ECC452B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC452B0);
  }

  return result;
}

unint64_t sub_1DB3F0BF4()
{
  result = qword_1ECC452B8;
  if (!qword_1ECC452B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC452B8);
  }

  return result;
}

uint64_t sub_1DB3F0EF4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1DB50B3D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  if (v12 == *(*a1 + 16))
  {
    sub_1DB324840(0x65756C6176, 0xE500000000000000, 1, a2);

    sub_1DB50B3C0();
    v13 = sub_1DB50B3E0();
    swift_allocError();
    v15 = v14;
    (*(v7 + 16))(v14, v10, v6);
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B00], v13);
    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(v11 + 16))
  {
    v17 = (v11 + 32 * v12);
    v19 = v17[6];
    v18 = v17[7];
    v21 = v17[4];
    v20 = v17[5];
    a1[1] = v12 + 1;

    v22 = MEMORY[0x1E1285BF0](v21, v20, v19, v18);
    v24 = v23;

    *a3 = v22;
    a3[1] = v24;
    return result;
  }

  __break(1u);
  return result;
}

void static PageID.random.getter(uint64_t *a1@<X8>)
{
  v2 = sub_1DB509E00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB509DF0();
  v7 = sub_1DB509DE0();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[4] = v7;
  v14[5] = v9;
  v14[2] = 45;
  v14[3] = 0xE100000000000000;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1DB301E30();
  v10 = sub_1DB50B1A0();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    sub_1DB3D3C0C("JetCore/PageID.swift", 0x14uLL, 2, 0x39uLL);
  }

  *a1 = v10;
  a1[1] = v12;
}

JetCore::PageID __swiftcall PageID.init(with:)(Swift::String with)
{
  v2 = v1;
  sub_1DB301E30();
  v3 = sub_1DB50B1A0();
  v5 = v4;

  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    sub_1DB3D3C0C("JetCore/PageID.swift", 0x14uLL, 2, 0x39uLL);
  }

  *v2 = v3;
  v2[1] = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t PageID.init<A>(id:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1DB50A910();
  MEMORY[0x1E1285C70](a1, a2);

  sub_1DB301E30();
  v10 = sub_1DB50B1A0();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    sub_1DB3D3C0C("JetCore/PageID.swift", 0x14uLL, 2, 0x39uLL);
  }

  result = (*(*(a4 - 8) + 8))(a3, a4);
  *a5 = v10;
  a5[1] = v12;
  return result;
}

uint64_t PageID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1DB50B3D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  v11 = sub_1DB50BA40();
  v31 = v6;
  v28 = 45;
  v29 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v11);
  *(&v26 - 2) = &v28;
  v14 = sub_1DB38C5AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DB3F1A78, (&v26 - 4), v12, v13, &v26);
  v28 = v14;
  v29 = 0;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1DB50BDB0();
  sub_1DB3F0EF4(&v28, v16, v27);
  v18 = v27[0];
  v19 = v27[1];
  v20 = *(v14 + 16);

  if (v29 == v20)
  {
    __swift_destroy_boxed_opaque_existential_0(v30);
    *a2 = v18;
    a2[1] = v19;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v29 >= v20)
  {
    __break(1u);
  }

  else
  {
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    v22 = sub_1DB50B3E0();
    swift_allocError();
    v24 = v23;
    v25 = v31;
    (*(v31 + 16))(v23, v9, v5);
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B00], v22);
    swift_willThrow();
    (*(v25 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v30);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return result;
}

uint64_t PageID.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);

  sub_1DB50BAC0();

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t PageID.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

Swift::Bool __swiftcall PageID.isParent(of:)(JetCore::ShelfID of)
{
  if (*of.parent.value._countAndFlagsBits == *v1 && *(of.parent.value._countAndFlagsBits + 8) == v1[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

Swift::Bool __swiftcall PageID.isParent(of:)(JetCore::ComponentID *of)
{
  if (of->parent.parent.value._countAndFlagsBits == *v1 && of->parent.parent.value._object == *(v1 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

uint64_t static PageID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

uint64_t PageID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DB50A740();
}

uint64_t PageID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50BCF0();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB3F19A0(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);

  sub_1DB50BAC0();

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_1DB3F1A48()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_1DB3F1A9C()
{
  result = qword_1ECC452C0;
  if (!qword_1ECC452C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC452C0);
  }

  return result;
}

uint64_t MediaArtworkSourceConfiguration.quality.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t MediaArtworkSourceConfiguration.quality.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

double MediaArtworkSourceConfiguration.size.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_1DB3F1C14()
{
  sub_1DB50B320();

  v0 = sub_1DB50AD90();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52D3A0);
  return 0x2079616C70736944;
}

BOOL _s7JetCore31MediaArtworkSourceConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v7 = *(a1 + 4);
  v6 = *(a1 + 5);
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 16);
  v11 = *(a2 + 3);
  v13 = a2[4];
  v12 = a2[5];
  v14 = sub_1DB50A650();
  v16 = v15;
  if (v14 != sub_1DB50A650() || v16 != v17)
  {
    v19 = sub_1DB50BA30();

    if ((v19 & 1) == 0)
    {
      return 0;
    }

    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    if (v3 == v9)
    {
      v20 = v10;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!v10)
  {
    return 0;
  }

LABEL_14:
  v21 = sub_1DB50A650();
  v23 = v22;
  if (v21 == sub_1DB50A650() && v23 == v24)
  {

    return v6 == v12 && v7 == v13;
  }

  v25 = sub_1DB50BA30();

  if ((v25 & 1) == 0)
  {
    return 0;
  }

  return v6 == v12 && v7 == v13;
}

uint64_t MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB3F1E80, 0, 0);
}

uint64_t sub_1DB3F1E80()
{
  v9 = v0;
  v1 = v0[5];
  (*(v0[4] + 24))(v8, v0[3]);
  if (v8[0] == 2)
  {
    v2 = v0[5];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];
    *v8 = v0[6];
    (*(v4 + 32))(v5, v8, v3);
  }

  v6 = v0[1];

  return v6();
}

void *MetricsFieldsProvider.addTimeSensitiveMetricsFields(into:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  result = (*(a4 + 24))(&v10, a3, a4);
  if (v10 == 1)
  {
    v9 = v7;
    return (*(a4 + 32))(a1, &v9, a3, a4);
  }

  return result;
}

uint64_t sub_1DB3F2048(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB306AF4;

  return MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(a1, a2, a3, a4);
}

uint64_t MetricsFieldsProviderCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB3F21A8()
{
  result = qword_1ECC452C8;
  if (!qword_1ECC452C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC452C8);
  }

  return result;
}

uint64_t dispatch thunk of MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DB306AF4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1DB3F23A0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB3F23C4, 0, 0);
}

uint64_t sub_1DB3F23C4()
{
  v3 = v0[3];
  SystemInfoMetricsFieldsProvider.addMetricsFields(into:using:)(v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB3F2448(void *a1, uint64_t *a2)
{
  v5 = *v2;
  v4 = *a2;
  return LanguagesMetricFieldProvider.addMetricsFields(into:using:)(a1);
}

uint64_t sub_1DB3F2484(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[3] = a1;
  v3[4] = v4;
  v3[2] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DB3F24B0, 0, 0);
}

uint64_t sub_1DB3F24B0()
{
  v3 = v0[4];
  AppMetricsFieldProvider.addMetricsFields(into:using:)(v0[3]);
  v1 = v0[1];

  return v1();
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.appending(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1;
  v7 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB50F8D0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 48) = countAndFlagsBits;
  *(v8 + 56) = object;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v9 = sub_1DB50A5E0();
  v11 = v10;

  *v5 = v9;
  v5[1] = v11;
  result.rawValue._object = v13;
  result.rawValue._countAndFlagsBits = v12;
  return result;
}

uint64_t PreferenceNamespace.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DB3F2668()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  result = sub_1DB50A5E0();
  qword_1EE30D150 = result;
  unk_1EE30D158 = v1;
  return result;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.init(subsystem:)(Swift::String subsystem)
{
  object = subsystem._object;
  countAndFlagsBits = subsystem._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v6 = sub_1DB50A5E0();
  v8 = v7;

  *v4 = v6;
  v4[1] = v8;
  result.rawValue._object = v10;
  result.rawValue._countAndFlagsBits = v9;
  return result;
}

uint64_t static PreferenceNamespace.jetEngine.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE30D148 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = unk_1EE30D158;
  *a1 = qword_1EE30D150;
  a1[1] = v2;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.init()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v2 = sub_1DB50A5E0();
  *v1 = v2;
  v1[1] = v3;
  result.rawValue._object = v3;
  result.rawValue._countAndFlagsBits = v2;
  return result;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.init(components:)(Swift::OpaquePointer components)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v3 = sub_1DB50A5E0();
  v5 = v4;

  *v2 = v3;
  v2[1] = v5;
  result.rawValue._object = v7;
  result.rawValue._countAndFlagsBits = v6;
  return result;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.init(subsystem:category:)(Swift::String subsystem, Swift::String category)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v5 = subsystem._object;
  v6 = subsystem._countAndFlagsBits;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB50F8D0;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = countAndFlagsBits;
  *(v8 + 56) = object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v9 = sub_1DB50A5E0();
  v11 = v10;

  *v7 = v9;
  v7[1] = v11;
  result.rawValue._object = v13;
  result.rawValue._countAndFlagsBits = v12;
  return result;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.init(subsystem:category:version:)(Swift::String subsystem, Swift::String category, Swift::Int version)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v6 = subsystem._object;
  v7 = subsystem._countAndFlagsBits;
  v8 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB511620;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = countAndFlagsBits;
  *(v9 + 56) = object;
  *(v9 + 64) = sub_1DB50B8F0();
  *(v9 + 72) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v11 = sub_1DB50A5E0();
  v13 = v12;

  *v8 = v11;
  v8[1] = v13;
  result.rawValue._object = v15;
  result.rawValue._countAndFlagsBits = v14;
  return result;
}

uint64_t sub_1DB3F2B34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1DB301E30();
  result = sub_1DB50B1A0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.appending(_:)(Swift::Int a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50F8D0;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;

  *(v6 + 48) = sub_1DB50B8F0();
  *(v6 + 56) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v8 = sub_1DB50A5E0();
  v10 = v9;

  *v3 = v8;
  v3[1] = v10;
  result.rawValue._object = v12;
  result.rawValue._countAndFlagsBits = v11;
  return result;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.appending(_:)(JetCore::PreferenceNamespace a1)
{
  v3 = v1;
  v5 = *a1.rawValue._countAndFlagsBits;
  v4 = *(a1.rawValue._countAndFlagsBits + 8);
  v7 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB50F8D0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 48) = v5;
  *(v8 + 56) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v9 = sub_1DB50A5E0();
  v11 = v10;

  *v3 = v9;
  v3[1] = v11;
  result.rawValue._object = v13;
  result.rawValue._countAndFlagsBits = v12;
  return result;
}

uint64_t static PreferenceNamespace.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

uint64_t sub_1DB3F2DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DB3F2DF8, 0, 0);
}

uint64_t sub_1DB3F2DF8()
{
  (*(*(v0[3] - 8) + 56))(v0[2], 1, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB3F2E88(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DB306AF4;

  return v8(a1);
}

uint64_t sub_1DB3F2FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB3F2DD8(a1, v6, a3);
}

uint64_t sub_1DB3F3044(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB3F2E88(a1, v6, a3);
}

unint64_t MetricsFieldsAggregator.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = sub_1DB313940(MEMORY[0x1E69E7CC0]);
  result = sub_1DB313964(v2);
  a1[1] = result;
  return result;
}

double MetricsFieldsAggregator.init(bag:bundle:)@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  sub_1DB3F541C(&v5, a2, &v6);
  result = *&v6;
  *a3 = v6;
  return result;
}

uint64_t sub_1DB3F3178(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v95 = a2;
  v5 = a1;
  v81 = *a4;
  v6 = *v4;
  v83 = v4[1];
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
  v78 = v6;
  v79 = v11;
  v77 = result;
  if (v10)
  {
    while (1)
    {
LABEL_8:
      while (1)
      {
        v15 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v16 = (*(v5 + 48) + ((v13 << 10) | (16 * v15)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 16);

        if (v19)
        {
          v20 = sub_1DB314CBC(v17, v18);
          if (v21)
          {
            break;
          }
        }

        if (qword_1ECC42228 != -1)
        {
          swift_once();
        }

        oslog = qword_1ECC466F0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1DB50EE90;
        v26 = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
        {
          *(&v93[0] + 1) = MEMORY[0x1E69E6158];
          *&v92 = 0xD000000000000032;
          *(&v92 + 1) = 0x80000001DB52D460;
          v85 = 0u;
          v86 = 0u;
          sub_1DB301D4C(&v92, &v85);
          LOBYTE(v87) = 0;
          v28 = *(v26 + 2);
          v27 = *(v26 + 3);
          if (v28 >= v27 >> 1)
          {
            v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
          }

          *(v26 + 2) = v28 + 1;
          v29 = &v26[40 * v28];
          v30 = v85;
          v31 = v86;
          v29[64] = v87;
          *(v29 + 2) = v30;
          *(v29 + 3) = v31;
        }

        *(&v93[0] + 1) = &type metadata for MetricsFieldInclusionRequest;
        *&v92 = v17;
        *(&v92 + 1) = v18;
        sub_1DB301CDC(&v92, &v89);
        v85 = 0u;
        v86 = 0u;
        sub_1DB301D4C(&v89, &v85);
        LOBYTE(v87) = 1;
        v33 = *(v26 + 2);
        v32 = *(v26 + 3);
        if (v33 >= v32 >> 1)
        {
          v26 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v26);
        }

        *(v26 + 2) = v33 + 1;
        v34 = &v26[40 * v33];
        v35 = v85;
        v36 = v86;
        v34[64] = v87;
        *(v34 + 2) = v35;
        *(v34 + 3) = v36;
        sub_1DB30623C(&v92, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(&v93[0] + 1) = MEMORY[0x1E69E6158];
        *&v92 = 96;
        *(&v92 + 1) = 0xE100000000000000;
        v85 = 0u;
        v86 = 0u;
        sub_1DB301D4C(&v92, &v85);
        LOBYTE(v87) = 0;
        v38 = *(v26 + 2);
        v37 = *(v26 + 3);
        if (v38 >= v37 >> 1)
        {
          v26 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v26);
        }

        *(v26 + 2) = v38 + 1;
        v39 = &v26[40 * v38];
        v40 = v85;
        v41 = v86;
        v39[64] = v87;
        *(v39 + 2) = v40;
        *(v39 + 3) = v41;
        *(v25 + 32) = v26;
        v42 = sub_1DB50AF20();
        if (os_log_type_enabled(oslog, v42))
        {
          if (qword_1EE30EDD8 != -1)
          {
            swift_once();
          }

          v43 = off_1EE30EDE0;
          os_unfair_lock_lock(off_1EE30EDE0 + 5);
          os_unfair_lock_opaque_low = LOBYTE(v43[4]._os_unfair_lock_opaque);
          os_unfair_lock_unlock(v43 + 5);
          if (os_unfair_lock_opaque_low == 2)
          {
            LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
          }

          v5 = v77;
          v45 = swift_allocObject();
          *(v45 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
          *&v85 = v25;
          *(&v85 + 1) = sub_1DB314CB0;
          *&v86 = v45;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
          sub_1DB314864();
          v46 = sub_1DB50A5E0();
          v48 = v47;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_1DB50EE90;
          *(v49 + 56) = MEMORY[0x1E69E6158];
          *(v49 + 64) = sub_1DB31494C();
          *(v49 + 32) = v46;
          *(v49 + 40) = v48;
          sub_1DB50A1E0();

          v6 = v78;
          v11 = v79;
          if (!v10)
          {
            goto LABEL_4;
          }
        }

        else
        {

          v5 = v77;
          v6 = v78;
          v11 = v79;
          if (!v10)
          {
            goto LABEL_4;
          }
        }
      }

      v22 = v20;

      sub_1DB30BE90(*(v6 + 56) + 40 * v22, &v92);
      sub_1DB30C7A8(&v92, &v85);
      v23 = *(&v86 + 1);
      v24 = v87;
      __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
      *&v92 = v81;
      (*(v24 + 8))(a3, &v92, v23, v24);
      if (v84)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_0(&v85);
      v11 = v79;
      if (!v10)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_4:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        goto LABEL_8;
      }
    }

    v50 = 1 << *(v83 + 32);
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v52 = v51 & *(v83 + 64);
    v53 = (v50 + 63) >> 6;
    v54 = v95 + 7;

    v55 = 0;
    while (v52)
    {
      v58 = v55;
LABEL_48:
      v61 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      v62 = v61 | (v58 << 6);
      v63 = (*(v83 + 48) + 16 * v62);
      v65 = *v63;
      v64 = v63[1];
      sub_1DB30BE90(*(v83 + 56) + 40 * v62, &v89);
      *&v85 = v65;
      *(&v85 + 1) = v64;
      sub_1DB30C7A8(&v89, &v86);

LABEL_49:
      v92 = v85;
      v93[0] = v86;
      v93[1] = v87;
      v94 = v88;
      v66 = *(&v85 + 1);
      if (!*(&v85 + 1))
      {
      }

      v67 = v92;
      sub_1DB30C7A8(v93, &v89);
      if (v95[2] && (v68 = v95[5], v69 = v95, sub_1DB50BCF0(), sub_1DB50A740(), v70 = sub_1DB50BD30(), v71 = -1 << *(v69 + 32), v72 = v70 & ~v71, ((*(v54 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) != 0))
      {
        v73 = ~v71;
        while (1)
        {
          v74 = (v95[6] + 16 * v72);
          v75 = *v74 == v67 && v74[1] == v66;
          if (v75 || (sub_1DB50BA30() & 1) != 0)
          {
            break;
          }

          v72 = (v72 + 1) & v73;
          if (((*(v54 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
LABEL_36:

        v56 = v90;
        v57 = v91;
        __swift_project_boxed_opaque_existential_1(&v89, v90);
        *&v85 = v81;
        (*(v57 + 8))(a3, &v85, v56, v57);
        if (v84)
        {

          v76 = &v89;
          return __swift_destroy_boxed_opaque_existential_0(v76);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(&v89);
    }

    if (v53 <= v55 + 1)
    {
      v59 = v55 + 1;
    }

    else
    {
      v59 = v53;
    }

    v60 = v59 - 1;
    while (1)
    {
      v58 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v58 >= v53)
      {
        v52 = 0;
        v88 = 0;
        v86 = 0u;
        v87 = 0u;
        v55 = v60;
        v85 = 0u;
        goto LABEL_49;
      }

      v52 = *(v83 + 64 + 8 * v58);
      ++v55;
      if (v52)
      {
        v55 = v58;
        goto LABEL_48;
      }
    }

    __break(1u);
  }

  v76 = &v85;
  return __swift_destroy_boxed_opaque_existential_0(v76);
}

uint64_t sub_1DB3F3988(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v5 + 592) = a3;
  *(v5 + 584) = a2;
  *(v5 + 576) = a1;
  *(v5 + 600) = *a4;
  *(v5 + 608) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1DB3F39C0, 0, 0);
}

uint64_t sub_1DB3F39C0()
{
  v1 = v0 + 328;
  v2 = *(v0 + 576);
  v3 = *(v2 + 32);
  *(v0 + 321) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 56);

  v8 = 0;
  if (v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_8:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      return result;
    }

    if (v10 >= (((1 << *(v0 + 321)) + 63) >> 6))
    {
      v43 = *(v0 + 616);
      v44 = *(v0 + 576);

      v45 = *(v43 + 32);
      *(v0 + 322) = v45;
      v46 = 1 << v45;
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      else
      {
        v47 = -1;
      }

      v48 = v47 & *(v43 + 64);

      v49 = 0;
      while (v48)
      {
        v50 = *(v0 + 616);
LABEL_46:
        v55 = __clz(__rbit64(v48));
        v48 &= v48 - 1;
        v56 = v55 | (v49 << 6);
        v57 = (*(v50 + 48) + 16 * v56);
        v58 = *v57;
        v59 = v57[1];
        sub_1DB30BE90(*(v50 + 56) + 40 * v56, v0 + 208);
        *(v0 + 72) = v58;
        *(v0 + 80) = v59;
        sub_1DB30C7A8((v0 + 208), v0 + 88);

LABEL_47:
        *(v0 + 664) = v49;
        *(v0 + 656) = v48;
        v60 = *(v0 + 88);
        *(v0 + 16) = *(v0 + 72);
        *(v0 + 32) = v60;
        *(v0 + 48) = *(v0 + 104);
        *(v0 + 64) = *(v0 + 120);
        v61 = *(v0 + 24);
        if (!v61)
        {
          v87 = *(v0 + 616);

          v88 = *(v0 + 8);

          return v88();
        }

        v62 = *(v0 + 584);
        v63 = *(v0 + 16);
        sub_1DB30C7A8((v0 + 32), v0 + 248);
        if (!*(v62 + 16) || (v64 = *(v0 + 584), v65 = *(v64 + 40), sub_1DB50BCF0(), sub_1DB50A740(), v66 = sub_1DB50BD30(), v67 = -1 << *(v64 + 32), v68 = v66 & ~v67, ((*(v64 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v68) & 1) == 0))
        {
LABEL_59:
          v73 = *(v0 + 600);

          v74 = *(v0 + 272);
          v75 = *(v0 + 280);
          __swift_project_boxed_opaque_existential_1((v0 + 248), v74);
          *(v0 + 568) = v73;
          v76 = *(v75 + 16);
          v89 = (v76 + *v76);
          v77 = v76[1];
          v78 = swift_task_alloc();
          *(v0 + 672) = v78;
          *v78 = v0;
          v78[1] = sub_1DB3F4DAC;
          v79 = *(v0 + 592);
          v80 = v0 + 568;
          goto LABEL_60;
        }

        v69 = ~v67;
        v70 = *(v0 + 584);
        while (1)
        {
          v71 = (*(v70 + 48) + 16 * v68);
          v72 = *v71 == v63 && v71[1] == v61;
          if (v72 || (sub_1DB50BA30() & 1) != 0)
          {
            break;
          }

          v70 = *(v0 + 584);
          v68 = (v68 + 1) & v69;
          if (((*(v70 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v68) & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        result = __swift_destroy_boxed_opaque_existential_0((v0 + 248));
      }

      v51 = ((1 << *(v0 + 322)) + 63) >> 6;
      if (v51 <= (v49 + 1))
      {
        v52 = v49 + 1;
      }

      else
      {
        v52 = ((1 << *(v0 + 322)) + 63) >> 6;
      }

      v53 = v52 - 1;
      while (1)
      {
        v54 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_68;
        }

        if (v54 >= v51)
        {
          v48 = 0;
          *(v0 + 120) = 0;
          *(v0 + 104) = 0u;
          *(v0 + 88) = 0u;
          v49 = v53;
          *(v0 + 72) = 0u;
          goto LABEL_47;
        }

        v50 = *(v0 + 616);
        v48 = *(v50 + 8 * v54 + 64);
        ++v49;
        if (v48)
        {
          v49 = v54;
          goto LABEL_46;
        }
      }
    }

    v9 = *(v0 + 576);
    v6 = *(v9 + 8 * v10 + 56);
    ++v8;
  }

  while (!v6);
  v8 = v10;
  while (1)
  {
    *(v0 + 632) = v8;
    *(v0 + 624) = v6;
    v11 = (*(v9 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(v0 + 608) + 16);

    if (v14)
    {
      v15 = sub_1DB314CBC(v13, v12);
      if (v16)
      {
        break;
      }
    }

    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v17 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    v19 = sub_1DB301BC0(0, 47, 0, MEMORY[0x1E69E7CC0]);
    if (("Replacing provider for request " & 0x2F00000000000000) != 0x2000000000000000)
    {
      *(v0 + 432) = MEMORY[0x1E69E6158];
      *(v0 + 408) = 0xD00000000000002DLL;
      *(v0 + 416) = 0x80000001DB52D430;
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      sub_1DB301D4C(v0 + 408, v0 + 288);
      *(v0 + 320) = 0;
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = *(v0 + 288);
      v24 = *(v0 + 304);
      v22[64] = *(v0 + 320);
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v1 = v0 + 328;
    }

    *(v0 + 464) = &type metadata for MetricsFieldInclusionRequest;
    *(v0 + 440) = v13;
    *(v0 + 448) = v12;
    sub_1DB301CDC(v0 + 440, v0 + 472);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    sub_1DB301D4C(v0 + 472, v1);
    *(v0 + 360) = 1;
    v26 = *(v19 + 2);
    v25 = *(v19 + 3);
    if (v26 >= v25 >> 1)
    {
      v19 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v19);
    }

    *(v19 + 2) = v26 + 1;
    v27 = &v19[40 * v26];
    v28 = *v1;
    v29 = *(v1 + 16);
    v27[64] = *(v1 + 32);
    *(v27 + 2) = v28;
    *(v27 + 3) = v29;
    sub_1DB30623C(v0 + 440, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 528) = MEMORY[0x1E69E6158];
    *(v0 + 504) = 96;
    *(v0 + 512) = 0xE100000000000000;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    sub_1DB301D4C(v0 + 504, v0 + 368);
    *(v0 + 400) = 0;
    v31 = *(v19 + 2);
    v30 = *(v19 + 3);
    if (v31 >= v30 >> 1)
    {
      v19 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v19);
    }

    v6 &= v6 - 1;
    *(v19 + 2) = v31 + 1;
    v32 = &v19[40 * v31];
    v33 = *(v0 + 368);
    v34 = *(v0 + 384);
    v32[64] = *(v0 + 400);
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    *(v18 + 32) = v19;
    v35 = sub_1DB50AF20();
    if (os_log_type_enabled(v17, v35))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v36 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v36[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v36 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v38 = swift_allocObject();
      *(v38 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *(v0 + 536) = v18;
      *(v0 + 544) = sub_1DB314CB0;
      *(v0 + 552) = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v39 = sub_1DB50A5E0();
      v41 = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1DB50EE90;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = sub_1DB31494C();
      *(v42 + 32) = v39;
      *(v42 + 40) = v41;
      sub_1DB50A1E0();

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    v9 = *(v0 + 576);
  }

  v81 = *(v0 + 608);
  v82 = *(v0 + 600);
  v83 = v15;

  sub_1DB30BE90(*(v81 + 56) + 40 * v83, v0 + 168);
  sub_1DB30C7A8((v0 + 168), v0 + 128);
  v74 = *(v0 + 152);
  v75 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1((v0 + 128), v74);
  *(v0 + 560) = v82;
  v84 = *(v75 + 16);
  v89 = (v84 + *v84);
  v85 = v84[1];
  v86 = swift_task_alloc();
  *(v0 + 640) = v86;
  *v86 = v0;
  v86[1] = sub_1DB3F4338;
  v79 = *(v0 + 592);
  v80 = v0 + 560;
LABEL_60:

  return v89(v79, v80, v74, v75);
}

uint64_t sub_1DB3F4338()
{
  v2 = *(*v1 + 640);
  v5 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = sub_1DB3F5240;
  }

  else
  {
    v3 = sub_1DB3F444C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB3F444C()
{
  v1 = v0 + 328;
  result = __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  v3 = (*(v0 + 624) - 1) & *(v0 + 624);
  v4 = *(v0 + 632);
  v5 = "Replacing provider for request " & 0x2F00000000000000;
  if (v3)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_5:
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      return result;
    }

    if (v7 >= (((1 << *(v0 + 321)) + 63) >> 6))
    {
      v40 = *(v0 + 616);
      v41 = *(v0 + 576);

      v42 = *(v40 + 32);
      *(v0 + 322) = v42;
      v43 = 1 << v42;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      else
      {
        v44 = -1;
      }

      v45 = v44 & *(v40 + 64);

      v46 = 0;
      while (v45)
      {
        v47 = *(v0 + 616);
LABEL_43:
        v52 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
        v53 = v52 | (v46 << 6);
        v54 = (*(v47 + 48) + 16 * v53);
        v55 = *v54;
        v56 = v54[1];
        sub_1DB30BE90(*(v47 + 56) + 40 * v53, v0 + 208);
        *(v0 + 72) = v55;
        *(v0 + 80) = v56;
        sub_1DB30C7A8((v0 + 208), v0 + 88);

LABEL_44:
        *(v0 + 664) = v46;
        *(v0 + 656) = v45;
        v57 = *(v0 + 88);
        *(v0 + 16) = *(v0 + 72);
        *(v0 + 32) = v57;
        *(v0 + 48) = *(v0 + 104);
        *(v0 + 64) = *(v0 + 120);
        v58 = *(v0 + 24);
        if (!v58)
        {
          v84 = *(v0 + 616);

          v85 = *(v0 + 8);

          return v85();
        }

        v59 = *(v0 + 584);
        v60 = *(v0 + 16);
        sub_1DB30C7A8((v0 + 32), v0 + 248);
        if (!*(v59 + 16) || (v61 = *(v0 + 584), v62 = *(v61 + 40), sub_1DB50BCF0(), sub_1DB50A740(), v63 = sub_1DB50BD30(), v64 = -1 << *(v61 + 32), v65 = v63 & ~v64, ((*(v61 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v65) & 1) == 0))
        {
LABEL_56:
          v70 = *(v0 + 600);

          v71 = *(v0 + 272);
          v72 = *(v0 + 280);
          __swift_project_boxed_opaque_existential_1((v0 + 248), v71);
          *(v0 + 568) = v70;
          v73 = *(v72 + 16);
          osloga = (v73 + *v73);
          v74 = v73[1];
          v75 = swift_task_alloc();
          *(v0 + 672) = v75;
          *v75 = v0;
          v75[1] = sub_1DB3F4DAC;
          v76 = *(v0 + 592);
          v77 = v0 + 568;
          goto LABEL_57;
        }

        v66 = ~v64;
        v67 = *(v0 + 584);
        while (1)
        {
          v68 = (*(v67 + 48) + 16 * v65);
          v69 = *v68 == v60 && v68[1] == v58;
          if (v69 || (sub_1DB50BA30() & 1) != 0)
          {
            break;
          }

          v67 = *(v0 + 584);
          v65 = (v65 + 1) & v66;
          if (((*(v67 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v65) & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        result = __swift_destroy_boxed_opaque_existential_0((v0 + 248));
      }

      v48 = ((1 << *(v0 + 322)) + 63) >> 6;
      if (v48 <= (v46 + 1))
      {
        v49 = v46 + 1;
      }

      else
      {
        v49 = ((1 << *(v0 + 322)) + 63) >> 6;
      }

      v50 = v49 - 1;
      while (1)
      {
        v51 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_65;
        }

        if (v51 >= v48)
        {
          v45 = 0;
          *(v0 + 120) = 0;
          *(v0 + 104) = 0u;
          *(v0 + 88) = 0u;
          v46 = v50;
          *(v0 + 72) = 0u;
          goto LABEL_44;
        }

        v47 = *(v0 + 616);
        v45 = *(v47 + 8 * v51 + 64);
        ++v46;
        if (v45)
        {
          v46 = v51;
          goto LABEL_43;
        }
      }
    }

    v6 = *(v0 + 576);
    v3 = *(v6 + 8 * v7 + 56);
    ++v4;
  }

  while (!v3);
  v4 = v7;
  while (1)
  {
    *(v0 + 632) = v4;
    *(v0 + 624) = v3;
    v8 = (*(v6 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v3)))));
    v10 = *v8;
    v9 = v8[1];
    v11 = *(*(v0 + 608) + 16);

    if (v11)
    {
      v12 = sub_1DB314CBC(v10, v9);
      if (v13)
      {
        break;
      }
    }

    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    oslog = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DB50EE90;
    v15 = sub_1DB301BC0(0, 47, 0, MEMORY[0x1E69E7CC0]);
    if (v5 != 0x2000000000000000)
    {
      v16 = v5;
      *(v0 + 432) = MEMORY[0x1E69E6158];
      *(v0 + 408) = 0xD00000000000002DLL;
      *(v0 + 416) = 0x80000001DB52D430;
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      sub_1DB301D4C(v0 + 408, v0 + 288);
      *(v0 + 320) = 0;
      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        v15 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v15);
      }

      *(v15 + 2) = v18 + 1;
      v19 = &v15[40 * v18];
      v20 = *(v0 + 288);
      v21 = *(v0 + 304);
      v19[64] = *(v0 + 320);
      *(v19 + 2) = v20;
      *(v19 + 3) = v21;
      v5 = v16;
      v1 = v0 + 328;
    }

    *(v0 + 464) = &type metadata for MetricsFieldInclusionRequest;
    *(v0 + 440) = v10;
    *(v0 + 448) = v9;
    sub_1DB301CDC(v0 + 440, v0 + 472);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    sub_1DB301D4C(v0 + 472, v1);
    *(v0 + 360) = 1;
    v23 = *(v15 + 2);
    v22 = *(v15 + 3);
    if (v23 >= v22 >> 1)
    {
      v15 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v15);
    }

    *(v15 + 2) = v23 + 1;
    v24 = &v15[40 * v23];
    v25 = *v1;
    v26 = *(v1 + 16);
    v24[64] = *(v1 + 32);
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    sub_1DB30623C(v0 + 440, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 528) = MEMORY[0x1E69E6158];
    *(v0 + 504) = 96;
    *(v0 + 512) = 0xE100000000000000;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    sub_1DB301D4C(v0 + 504, v0 + 368);
    *(v0 + 400) = 0;
    v28 = *(v15 + 2);
    v27 = *(v15 + 3);
    if (v28 >= v27 >> 1)
    {
      v15 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v15);
    }

    v3 &= v3 - 1;
    *(v15 + 2) = v28 + 1;
    v29 = &v15[40 * v28];
    v30 = *(v0 + 368);
    v31 = *(v0 + 384);
    v29[64] = *(v0 + 400);
    *(v29 + 2) = v30;
    *(v29 + 3) = v31;
    *(v14 + 32) = v15;
    v32 = sub_1DB50AF20();
    if (os_log_type_enabled(oslog, v32))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v33 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v33[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v33 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v35 = swift_allocObject();
      *(v35 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *(v0 + 536) = v14;
      *(v0 + 544) = sub_1DB314CB0;
      *(v0 + 552) = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v36 = sub_1DB50A5E0();
      v38 = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1DB50EE90;
      *(v39 + 56) = MEMORY[0x1E69E6158];
      *(v39 + 64) = sub_1DB31494C();
      *(v39 + 32) = v36;
      *(v39 + 40) = v38;
      sub_1DB50A1E0();

      if (!v3)
      {
        goto LABEL_5;
      }
    }

    else
    {

      if (!v3)
      {
        goto LABEL_5;
      }
    }

LABEL_4:
    v6 = *(v0 + 576);
  }

  v78 = *(v0 + 608);
  v79 = *(v0 + 600);
  v80 = v12;

  sub_1DB30BE90(*(v78 + 56) + 40 * v80, v0 + 168);
  sub_1DB30C7A8((v0 + 168), v0 + 128);
  v71 = *(v0 + 152);
  v72 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1((v0 + 128), v71);
  *(v0 + 560) = v79;
  v81 = *(v72 + 16);
  osloga = (v81 + *v81);
  v82 = v81[1];
  v83 = swift_task_alloc();
  *(v0 + 640) = v83;
  *v83 = v0;
  v83[1] = sub_1DB3F4338;
  v76 = *(v0 + 592);
  v77 = v0 + 560;
LABEL_57:

  return (osloga)(v76, v77, v71, v72);
}

uint64_t sub_1DB3F4DAC()
{
  v2 = *(*v1 + 672);
  v5 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v3 = sub_1DB3F52AC;
  }

  else
  {
    v3 = sub_1DB3F4EC0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB3F4EC0()
{
  result = __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  while (v3)
  {
    v4 = *(v0 + 616);
LABEL_13:
    v9 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v10 = v9 | (v2 << 6);
    v11 = (*(v4 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_1DB30BE90(*(v4 + 56) + 40 * v10, v0 + 208);
    *(v0 + 72) = v12;
    *(v0 + 80) = v13;
    sub_1DB30C7A8((v0 + 208), v0 + 88);

LABEL_14:
    *(v0 + 664) = v2;
    *(v0 + 656) = v3;
    v14 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v14;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v15 = *(v0 + 24);
    if (!v15)
    {
      v34 = *(v0 + 616);

      v35 = *(v0 + 8);

      return v35();
    }

    v16 = *(v0 + 584);
    v17 = *(v0 + 16);
    sub_1DB30C7A8((v0 + 32), v0 + 248);
    if (!*(v16 + 16) || (v18 = *(v0 + 584), v19 = *(v18 + 40), sub_1DB50BCF0(), sub_1DB50A740(), v20 = sub_1DB50BD30(), v21 = -1 << *(v18 + 32), v22 = v20 & ~v21, ((*(v18 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v22) & 1) == 0))
    {
LABEL_26:
      v27 = *(v0 + 600);

      v28 = *(v0 + 272);
      v29 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 248), v28);
      *(v0 + 568) = v27;
      v30 = *(v29 + 16);
      v36 = (v30 + *v30);
      v31 = v30[1];
      v32 = swift_task_alloc();
      *(v0 + 672) = v32;
      *v32 = v0;
      v32[1] = sub_1DB3F4DAC;
      v33 = *(v0 + 592);

      return v36(v33, v0 + 568, v28, v29);
    }

    v23 = ~v21;
    v24 = *(v0 + 584);
    while (1)
    {
      v25 = (*(v24 + 48) + 16 * v22);
      v26 = *v25 == v17 && v25[1] == v15;
      if (v26 || (sub_1DB50BA30() & 1) != 0)
      {
        break;
      }

      v24 = *(v0 + 584);
      v22 = (v22 + 1) & v23;
      if (((*(v24 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v22) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  }

  v5 = ((1 << *(v0 + 322)) + 63) >> 6;
  if (v5 <= (v2 + 1))
  {
    v6 = v2 + 1;
  }

  else
  {
    v6 = ((1 << *(v0 + 322)) + 63) >> 6;
  }

  v7 = v6 - 1;
  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v3 = 0;
      *(v0 + 120) = 0;
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      v2 = v7;
      *(v0 + 72) = 0u;
      goto LABEL_14;
    }

    v4 = *(v0 + 616);
    v3 = *(v4 + 8 * v8 + 64);
    ++v2;
    if (v3)
    {
      v2 = v8;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB3F5240()
{
  v1 = v0[72];

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v2 = v0[81];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB3F52AC()
{
  v1 = v0[77];

  __swift_destroy_boxed_opaque_existential_0(v0 + 31);
  v2 = v0[85];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB3F5318(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1DB4B765C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1DB3F541C(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = MEMORY[0x1E69E7CC0];
  *a3 = sub_1DB313940(MEMORY[0x1E69E7CC0]);
  a3[1] = sub_1DB313964(v6);
  if (qword_1ECC420E0 != -1)
  {
    swift_once();
  }

  v7 = qword_1ECC67958;
  swift_bridgeObjectRetain_n();
  sub_1DB3F6608(v7, v5, 0x6769666E6F63, 0xE600000000000000);
  swift_unknownObjectRelease();

  v8 = a2;
  sub_1DB3F69F4(v8, 7368801, 0xE300000000000000, a3, &type metadata for AppMetricsFieldProvider, &protocol witness table for AppMetricsFieldProvider, &unk_1F56FA5E8, sub_1DB314CB0);

  v15 = v8;
  sub_1DB3F69F4(v15, 0x6973726556707061, 0xEA00000000006E6FLL, a3, &type metadata for AppVersionFieldProvider, &protocol witness table for AppVersionFieldProvider, &unk_1F56FA5C0, sub_1DB314CB0);

  if (qword_1ECC420D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ECC67950;

  sub_1DB3F6DB8(v10, 0x7372655665736162, 0xEB000000006E6F69, a3, &type metadata for BaseVersionFieldProvider, &protocol witness table for BaseVersionFieldProvider, &unk_1F56FA598, sub_1DB314CB0);
  sub_1DB3F6DB8(v7, 0x7645746E65696C63, 0xED00006449746E65, a3, &type metadata for ClientEventIdFieldProvider, &off_1F56F0DF0, &unk_1F56FA570, sub_1DB314CB0);

  sub_1DB3F7180(0x6D6954746E657665, 0xE900000000000065, a3, &type metadata for EventTimeMetricsFieldProvider, &protocol witness table for EventTimeMetricsFieldProvider, &unk_1F56FA548, sub_1DB314CB0);
  sub_1DB3F7180(0x6E496D6574737973, 0xEA00000000006F66, a3, &type metadata for SystemInfoMetricsFieldsProvider, &protocol witness table for SystemInfoMetricsFieldsProvider, &unk_1F56FA520, sub_1DB314CB0);
  if (qword_1ECC420C8 != -1)
  {
    swift_once();
  }

  v11 = qword_1ECC67940;

  v12 = sub_1DB3F7D20(&unk_1F56F0298, v11);
  sub_1DB3C7208(&unk_1F56F02B8);
  sub_1DB3F6DB8(v12, 0x6175676E614C736FLL, 0xEB00000000736567, a3, &type metadata for LanguagesMetricFieldProvider, &protocol witness table for LanguagesMetricFieldProvider, &unk_1F56FA4F8, sub_1DB314CB0);

  sub_1DB3F6DB8(v7, 0x656E6F7A656D6974, 0xEE0074657366664FLL, a3, &type metadata for TimezoneOffsetFieldProvider, &off_1F5700510, &unk_1F56FA4D0, sub_1DB314CB0);

  v13 = sub_1DB3AD72C(&unk_1F56F02C8);
  sub_1DB3C7208(&unk_1F56F02E8);
  sub_1DB3F6DB8(v13, 0x676E696C706D6173, 0xE800000000000000, a3, &type metadata for XPSamplingFieldsProvider, &protocol witness table for XPSamplingFieldsProvider, &unk_1F56FA4A8, sub_1DB314CB0);

  sub_1DB3F6DB8(v9, 0x654D646E65537078, 0xEC000000646F6874, a3, &type metadata for XpSendMethodFieldProvider, &off_1F57023F8, &unk_1F56FA480, sub_1DB314CB0);

  v14 = sub_1DB313AA8(&unk_1F56F02F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC452D8, &qword_1DB51A6A0);
  swift_arrayDestroy();
  sub_1DB3F7538(v14, 0x726556746E657665, 0xEC0000006E6F6973);
}

uint64_t MetricsFieldsAggregator.addOptOutProvider(_:forRequest:)(void *a1, uint64_t *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1DB3F7914(v6, a2, v2, v4, v5);
}

uint64_t MetricsFieldsAggregator.addOptInProvider(_:forRequest:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  sub_1DB30BE90(a1, &v26);
  sub_1DB381D18(&v26, v3, v2, &v28);
  v4 = *(&v29 + 1);
  result = sub_1DB30623C(&v28, &qword_1ECC452D0, &unk_1DB51A640);
  if (v4)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50EE90;
    v25 = sub_1DB301BC0(0, 33, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001DB52D3E0;
    v8._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v27 = &type metadata for MetricsFieldInclusionRequest;
    *&v26 = v3;
    *(&v26 + 1) = v2;
    sub_1DB301CDC(&v26, v24);
    v28 = 0u;
    v29 = 0u;

    sub_1DB301D4C(v24, &v28);
    v30 = 1;
    v9 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DB301BC0(0, *(v9 + 2) + 1, 1, v9);
      v25 = v9;
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v28;
    v14 = v29;
    v12[64] = v30;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v25 = v9;
    sub_1DB30623C(&v26, &qword_1ECC426B0, &qword_1DB50EEB0);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v7 + 32) = v25;
    v16 = sub_1DB50AF40();
    if (os_log_type_enabled(v6, v16))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v17 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v28 = v7;
      *(&v28 + 1) = sub_1DB31485C;
      *&v29 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v20 = sub_1DB50A5E0();
      v22 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1DB50EE90;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1DB31494C();
      *(v23 + 32) = v20;
      *(v23 + 40) = v22;
      sub_1DB50A1E0();
    }
  }

  return result;
}

uint64_t MetricsFieldsAggregator.addingOptInProvider(_:forRequest:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *v3;
  v9 = v3[1];
  *a3 = v8;
  a3[1] = v9;
  v11[0] = v6;
  v11[1] = v7;

  return MetricsFieldsAggregator.addOptInProvider(_:forRequest:)(a1, v11);
}

Swift::Void __swiftcall MetricsFieldsAggregator.removeOptInProvider(forRequest:)(JetCore::MetricsFieldInclusionRequest forRequest)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1DB314CBC(*forRequest.rawValue._countAndFlagsBits, *(forRequest.rawValue._countAndFlagsBits + 8));
  if (v5)
  {
    v6 = v4;
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DB3120D0();
      v9 = v11;
    }

    v10 = *(*(v9 + 48) + 16 * v6 + 8);

    sub_1DB30C7A8((*(v9 + 56) + 40 * v6), v12);
    sub_1DB314CB8(v6, v9);
    *v2 = v9;
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
  }

  sub_1DB30623C(v12, &qword_1ECC452D0, &unk_1DB51A640);
}

uint64_t MetricsFieldsAggregator.removingOptInProvider(forRequest:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *v2;
  v6 = v2[1];
  *a2 = v5;
  a2[1] = v6;

  sub_1DB30FA70(v3, v4, v8);
  return sub_1DB30623C(v8, &qword_1ECC452D0, &unk_1DB51A640);
}

uint64_t MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v8 = *v3;
  v7 = v3[1];
  *a3 = v8;
  a3[1] = v7;
  v13[0] = v5;
  v13[1] = v6;
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);

  return sub_1DB3F7914(v11, v13, a3, v9, v10);
}

Swift::Void __swiftcall MetricsFieldsAggregator.removeOptOutProvider(forRequest:)(JetCore::MetricsFieldExclusionRequest forRequest)
{
  v2 = v1;
  v3 = *(v1 + 8);
  v4 = sub_1DB314CBC(*forRequest.rawValue._countAndFlagsBits, *(forRequest.rawValue._countAndFlagsBits + 8));
  if (v5)
  {
    v6 = v4;
    v7 = *(v2 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DB3120BC();
    }

    v10 = *(*(v9 + 48) + 16 * v6 + 8);

    sub_1DB30C7A8((*(v9 + 56) + 40 * v6), v11);
    sub_1DB314CB8(v6, v9);
    *(v2 + 8) = v9;
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
  }

  sub_1DB30623C(v11, &qword_1ECC452D0, &unk_1DB51A640);
}

uint64_t MetricsFieldsAggregator.removingOptOutProvider(forRequest:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *v2;
  v6 = v2[1];
  *a2 = v5;
  a2[1] = v6;

  sub_1DB30FA5C(v3, v4, v8);
  return sub_1DB30623C(v8, &qword_1ECC452D0, &unk_1DB51A640);
}

uint64_t sub_1DB3F60D8(void *a1)
{
  v2 = v1;
  v72 = a1[1];
  v73 = *a1;
  v3 = *a1 + 64;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; ; i = v14)
  {
    if (v6)
    {
      v12 = i;
LABEL_15:
      v15 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v16 = v15 | (v12 << 6);
      v17 = (*(v73 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1DB30BE90(*(v73 + 56) + 40 * v16, v74);
      *&v75 = v19;
      *(&v75 + 1) = v18;
      sub_1DB30C7A8(v74, &v76);

      v14 = v12;
    }

    else
    {
      v13 = v7 <= i + 1 ? i + 1 : v7;
      v14 = v13 - 1;
      while (1)
      {
        v12 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
          goto LABEL_57;
        }

        if (v12 >= v7)
        {
          break;
        }

        v6 = *(v3 + 8 * v12);
        ++i;
        if (v6)
        {
          goto LABEL_15;
        }
      }

      v6 = 0;
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
    }

    v79 = v75;
    v80 = v76;
    v81 = v77;
    v82 = v78;
    v20 = *(&v75 + 1);
    if (!*(&v75 + 1))
    {
      break;
    }

    v21 = v79;
    sub_1DB30C7A8(&v80, &v75);
    v22 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v74[0] = *v2;
    v24 = *&v74[0];
    v25 = sub_1DB314CBC(v21, v20);
    v27 = *(v24 + 16);
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_58;
    }

    v31 = v26;
    if (*(v24 + 24) < v30)
    {
      sub_1DB31AC90(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_1DB314CBC(v21, v20);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_62;
      }

LABEL_22:
      if (v31)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v37 = v25;
    sub_1DB3120D0();
    v25 = v37;
    if (v31)
    {
LABEL_4:
      v9 = v25;

      v10 = *&v74[0];
      v11 = (*(*&v74[0] + 56) + 40 * v9);
      __swift_destroy_boxed_opaque_existential_0(v11);
      sub_1DB30C7A8(&v75, v11);
      *v2 = v10;
      continue;
    }

LABEL_23:
    v33 = *&v74[0];
    *(*&v74[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v34 = (v33[6] + 16 * v25);
    *v34 = v21;
    v34[1] = v20;
    sub_1DB30C7A8(&v75, v33[7] + 40 * v25);
    v35 = v33[2];
    v29 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v29)
    {
      goto LABEL_60;
    }

    v33[2] = v36;
    *v2 = v33;
  }

  v38 = 1 << *(v72 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v72 + 64);
  v41 = (v38 + 63) >> 6;

  v42 = 0;
  if (!v40)
  {
    goto LABEL_34;
  }

  do
  {
    while (1)
    {
      v46 = v42;
LABEL_41:
      v49 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v50 = v49 | (v46 << 6);
      v51 = (*(v72 + 48) + 16 * v50);
      v53 = *v51;
      v52 = v51[1];
      sub_1DB30BE90(*(v72 + 56) + 40 * v50, v74);
      *&v75 = v53;
      *(&v75 + 1) = v52;
      sub_1DB30C7A8(v74, &v76);

      v48 = v46;
LABEL_42:
      v79 = v75;
      v80 = v76;
      v81 = v77;
      v82 = v78;
      v54 = *(&v75 + 1);
      if (!*(&v75 + 1))
      {
      }

      v55 = v79;
      sub_1DB30C7A8(&v80, &v75);
      v56 = v2[1];
      v57 = swift_isUniquelyReferenced_nonNull_native();
      *&v74[0] = v2[1];
      v58 = *&v74[0];
      v59 = sub_1DB314CBC(v55, v54);
      v61 = *(v58 + 16);
      v62 = (v60 & 1) == 0;
      v29 = __OFADD__(v61, v62);
      v63 = v61 + v62;
      if (v29)
      {
        goto LABEL_59;
      }

      v64 = v60;
      if (*(v58 + 24) >= v63)
      {
        break;
      }

      sub_1DB31AC7C(v63, v57);
      v59 = sub_1DB314CBC(v55, v54);
      if ((v64 & 1) != (v65 & 1))
      {
        goto LABEL_63;
      }

LABEL_48:
      if ((v64 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_32:
      v43 = v59;

      v44 = *&v74[0];
      v45 = (*(*&v74[0] + 56) + 40 * v43);
      __swift_destroy_boxed_opaque_existential_0(v45);
      sub_1DB30C7A8(&v75, v45);
      v2[1] = v44;
      v42 = v48;
      if (!v40)
      {
        goto LABEL_34;
      }
    }

    if (v57)
    {
      goto LABEL_48;
    }

    v70 = v59;
    sub_1DB3120BC();
    v59 = v70;
    if (v64)
    {
      goto LABEL_32;
    }

LABEL_49:
    v66 = *&v74[0];
    *(*&v74[0] + 8 * (v59 >> 6) + 64) |= 1 << v59;
    v67 = (v66[6] + 16 * v59);
    *v67 = v55;
    v67[1] = v54;
    sub_1DB30C7A8(&v75, v66[7] + 40 * v59);
    v68 = v66[2];
    v29 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (v29)
    {
      goto LABEL_61;
    }

    v66[2] = v69;
    v2[1] = v66;
    v42 = v48;
  }

  while (v40);
LABEL_34:
  if (v41 <= v42 + 1)
  {
    v47 = v42 + 1;
  }

  else
  {
    v47 = v41;
  }

  v48 = v47 - 1;
  while (1)
  {
    v46 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v46 >= v41)
    {
      v40 = 0;
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      goto LABEL_42;
    }

    v40 = *(v72 + 64 + 8 * v46);
    ++v42;
    if (v40)
    {
      goto LABEL_41;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  sub_1DB50BC20();
  __break(1u);
LABEL_63:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t sub_1DB3F6608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[0] = a1;
  v33[3] = &type metadata for ConfigBaseFieldsProvider;
  v33[4] = &off_1F56F4EA8;
  v33[1] = a2;
  sub_1DB30BE90(v33, &v28);

  swift_unknownObjectRetain();
  sub_1DB381BC4(&v28, a3, a4, &v30);
  v6 = *(&v31 + 1);
  sub_1DB30623C(&v30, &qword_1ECC452D0, &unk_1DB51A640);
  if (v6)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v7 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DB50EE90;
    v27 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v9._object = 0x80000001DB52D410;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v29 = &type metadata for MetricsFieldExclusionRequest;
    *&v28 = a3;
    *(&v28 + 1) = a4;
    sub_1DB301CDC(&v28, v26);
    v30 = 0u;
    v31 = 0u;

    sub_1DB301D4C(v26, &v30);
    v32 = 1;
    v10 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DB301BC0(0, *(v10 + 2) + 1, 1, v10);
      v27 = v10;
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[40 * v12];
    v14 = v30;
    v15 = v31;
    v13[64] = v32;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    v27 = v10;
    sub_1DB30623C(&v28, &qword_1ECC426B0, &qword_1DB50EEB0);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v8 + 32) = v27;
    v17 = sub_1DB50AF40();
    if (os_log_type_enabled(v7, v17))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v18 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v18[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v18 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v20 = swift_allocObject();
      *(v20 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v30 = v8;
      *(&v30 + 1) = sub_1DB314CB0;
      *&v31 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v21 = sub_1DB50A5E0();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1DB50EE90;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1DB31494C();
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      sub_1DB50A1E0();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

uint64_t sub_1DB3F69F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40[3] = a5;
  v40[4] = a6;
  v40[0] = a1;
  sub_1DB30BE90(v40, &v35);
  v12 = a1;
  sub_1DB381BC4(&v35, a2, a3, &v37);
  v13 = *(&v38 + 1);
  sub_1DB30623C(&v37, &qword_1ECC452D0, &unk_1DB51A640);
  if (v13)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v14 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB50EE90;
    v34 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v16._object = 0x80000001DB52D410;
    v16._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v36 = &type metadata for MetricsFieldExclusionRequest;
    *&v35 = a2;
    *(&v35 + 1) = a3;
    sub_1DB301CDC(&v35, v33);
    v37 = 0u;
    v38 = 0u;

    sub_1DB301D4C(v33, &v37);
    v39 = 1;
    v17 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1DB301BC0(0, *(v17 + 2) + 1, 1, v17);
      v34 = v17;
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1DB301BC0((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[40 * v19];
    v21 = v37;
    v22 = v38;
    v20[64] = v39;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    v34 = v17;
    sub_1DB30623C(&v35, &qword_1ECC426B0, &qword_1DB50EEB0);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v15 + 32) = v34;
    v24 = sub_1DB50AF40();
    if (os_log_type_enabled(v14, v24))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v25 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v28 = sub_1DB50A5E0();
      v30 = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1DB50EE90;
      *(v31 + 56) = MEMORY[0x1E69E6158];
      *(v31 + 64) = sub_1DB31494C();
      *(v31 + 32) = v28;
      *(v31 + 40) = v30;
      sub_1DB50A1E0();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v40);
}

uint64_t sub_1DB3F6DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38[3] = a5;
  v38[4] = a6;
  v38[0] = a1;
  sub_1DB30BE90(v38, &v33);

  sub_1DB381BC4(&v33, a2, a3, &v35);
  v11 = *(&v36 + 1);
  sub_1DB30623C(&v35, &qword_1ECC452D0, &unk_1DB51A640);
  if (v11)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v12 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DB50EE90;
    v32 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v14._object = 0x80000001DB52D410;
    v14._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v34 = &type metadata for MetricsFieldExclusionRequest;
    *&v33 = a2;
    *(&v33 + 1) = a3;
    sub_1DB301CDC(&v33, v31);
    v35 = 0u;
    v36 = 0u;

    sub_1DB301D4C(v31, &v35);
    v37 = 1;
    v15 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DB301BC0(0, *(v15 + 2) + 1, 1, v15);
      v32 = v15;
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[40 * v17];
    v19 = v35;
    v20 = v36;
    v18[64] = v37;
    *(v18 + 2) = v19;
    *(v18 + 3) = v20;
    v32 = v15;
    sub_1DB30623C(&v33, &qword_1ECC426B0, &qword_1DB50EEB0);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v13 + 32) = v32;
    v22 = sub_1DB50AF40();
    if (os_log_type_enabled(v12, v22))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v23 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v26 = sub_1DB50A5E0();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1DB50EE90;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1DB31494C();
      *(v29 + 32) = v26;
      *(v29 + 40) = v28;
      sub_1DB50A1E0();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v38);
}

uint64_t sub_1DB3F7180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37[3] = a4;
  v37[4] = a5;
  sub_1DB30BE90(v37, &v32);
  sub_1DB381BC4(&v32, a1, a2, &v34);
  v10 = *(&v35 + 1);
  sub_1DB30623C(&v34, &qword_1ECC452D0, &unk_1DB51A640);
  if (v10)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v11 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB50EE90;
    v31 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v13._object = 0x80000001DB52D410;
    v13._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v33 = &type metadata for MetricsFieldExclusionRequest;
    *&v32 = a1;
    *(&v32 + 1) = a2;
    sub_1DB301CDC(&v32, v30);
    v34 = 0u;
    v35 = 0u;

    sub_1DB301D4C(v30, &v34);
    v36 = 1;
    v14 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1DB301BC0(0, *(v14 + 2) + 1, 1, v14);
      v31 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v34;
    v19 = v35;
    v17[64] = v36;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v31 = v14;
    sub_1DB30623C(&v32, &qword_1ECC426B0, &qword_1DB50EEB0);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    *(v12 + 32) = v31;
    v21 = sub_1DB50AF40();
    if (os_log_type_enabled(v11, v21))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v22 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v25 = sub_1DB50A5E0();
      v27 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1DB50EE90;
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 64) = sub_1DB31494C();
      *(v28 + 32) = v25;
      *(v28 + 40) = v27;
      sub_1DB50A1E0();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_1DB3F7538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[3] = &type metadata for EventVersionFieldProvider;
  v32[4] = &off_1F56F47A8;
  v32[0] = a1;
  sub_1DB30BE90(v32, &v27);

  sub_1DB381BC4(&v27, a2, a3, &v29);
  v5 = *(&v30 + 1);
  sub_1DB30623C(&v29, &qword_1ECC452D0, &unk_1DB51A640);
  if (v5)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50EE90;
    v26 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001DB52D410;
    v8._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v28 = &type metadata for MetricsFieldExclusionRequest;
    *&v27 = a2;
    *(&v27 + 1) = a3;
    sub_1DB301CDC(&v27, v25);
    v29 = 0u;
    v30 = 0u;

    sub_1DB301D4C(v25, &v29);
    v31 = 1;
    v9 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DB301BC0(0, *(v9 + 2) + 1, 1, v9);
      v26 = v9;
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v29;
    v14 = v30;
    v12[64] = v31;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v26 = v9;
    sub_1DB30623C(&v27, &qword_1ECC426B0, &qword_1DB50EEB0);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v7 + 32) = v26;
    v16 = sub_1DB50AF40();
    if (os_log_type_enabled(v6, v16))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v17 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v29 = v7;
      *(&v29 + 1) = sub_1DB314CB0;
      *&v30 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v20 = sub_1DB50A5E0();
      v22 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1DB50EE90;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1DB31494C();
      *(v23 + 32) = v20;
      *(v23 + 40) = v22;
      sub_1DB50A1E0();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t sub_1DB3F7914(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38[3] = a4;
  v38[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v10 = *a2;
  v9 = a2[1];
  sub_1DB30BE90(v38, &v33);
  sub_1DB381BC4(&v33, v10, v9, &v35);
  v11 = *(&v36 + 1);
  sub_1DB30623C(&v35, &qword_1ECC452D0, &unk_1DB51A640);
  if (v11)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v12 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DB50EE90;
    v32 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v14._object = 0x80000001DB52D410;
    v14._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v34 = &type metadata for MetricsFieldExclusionRequest;
    *&v33 = v10;
    *(&v33 + 1) = v9;
    sub_1DB301CDC(&v33, v31);
    v35 = 0u;
    v36 = 0u;

    sub_1DB301D4C(v31, &v35);
    v37 = 1;
    v15 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DB301BC0(0, *(v15 + 2) + 1, 1, v15);
      v32 = v15;
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[40 * v17];
    v19 = v35;
    v20 = v36;
    v18[64] = v37;
    *(v18 + 2) = v19;
    *(v18 + 3) = v20;
    v32 = v15;
    sub_1DB30623C(&v33, &qword_1ECC426B0, &qword_1DB50EEB0);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v13 + 32) = v32;
    v22 = sub_1DB50AF40();
    if (os_log_type_enabled(v12, v22))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v23 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v23 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v25 = swift_allocObject();
      *(v25 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v35 = v13;
      *(&v35 + 1) = sub_1DB314CB0;
      *&v36 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v26 = sub_1DB50A5E0();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1DB50EE90;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1DB31494C();
      *(v29 + 32) = v26;
      *(v29 + 40) = v28;
      sub_1DB50A1E0();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v38);
}

uint64_t sub_1DB3F7D20(uint64_t a1, uint64_t a2)
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

      sub_1DB4B765C(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t OS_dispatch_queue.schedule(task:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB50A400();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A440();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1DB3F831C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_11;
  v15 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v17[1] = MEMORY[0x1E69E7CC0];
  sub_1DB357C48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB357CA0();
  sub_1DB50B240();
  MEMORY[0x1E12864B0](0, v13, v8, v15);
  _Block_release(v15);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void NSOperationQueue.schedule(task:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_1DB3F81B4;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DB3330B0;
  v9[3] = &block_descriptor_6;
  v6 = _Block_copy(v9);
  v7 = objc_opt_self();

  v8 = [v7 blockOperationWithBlock_];
  _Block_release(v6);

  [v2 addOperation_];
}

uint64_t sub_1DB3F81B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1DB3F81DC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v10[4] = sub_1DB3F831C;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DB3330B0;
  v10[3] = &block_descriptor_17;
  v7 = _Block_copy(v10);
  v8 = objc_opt_self();

  v9 = [v8 blockOperationWithBlock_];
  _Block_release(v7);

  [v5 addOperation_];
}

void sub_1DB3F8328(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;

    os_unfair_lock_unlock(v2 + 4);
    v4 = v3[2];
    if (v4)
    {
      v16 = v3;
      v5 = (v3 + 4);
      v6 = &unk_1ECC44FC0;
      do
      {
        sub_1DB30C4B8(v5, v24, v6, &unk_1DB50F4E0);
        sub_1DB30C4B8(v24, v21, v6, &unk_1DB50F4E0);
        v7 = v21[0];
        if (v23)
        {
          **(*(v21[0] + 64) + 40) = a1;

          swift_continuation_throwingResume();
          sub_1DB30623C(v24, v6, &unk_1DB50F4E0);
        }

        else
        {
          v8 = v21[1];

          sub_1DB2FEA0C(&v22, v18);
          v10 = v19;
          v9 = v20;
          __swift_project_boxed_opaque_existential_1(v18, v19);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = v6;
          v13 = *(v9 + 8);

          v13(sub_1DB401294, v11, v10, v9);
          v6 = v12;

          sub_1DB30623C(v24, v12, &unk_1DB50F4E0);
          __swift_destroy_boxed_opaque_existential_0(v18);
        }

        v5 += 80;
        --v4;
      }

      while (v4);
      v14 = MEMORY[0x1E69E7D48];
      v15 = v16;
    }

    else
    {
      v14 = MEMORY[0x1E69E7D48];
      v15 = v3;
    }

    sub_1DB400E3C(v15, 0, v14);
  }
}

void sub_1DB3F85C8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v2 + 40) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v2 + 40))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    sub_1DB3E30E8(v4, v5, 0);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
    *(v2 + 40) = 1;

    sub_1DB30C340(v4, v5, 0);
    os_unfair_lock_unlock(v3 + 4);
    v6 = v4[2];
    if (v6)
    {
      v17 = v5;
      v18 = v4;
      v7 = (v4 + 4);
      do
      {
        sub_1DB30C4B8(v7, v27, &qword_1ECC429C0, &qword_1DB518FD0);
        sub_1DB30C4B8(v27, v24, &qword_1ECC429C0, &qword_1DB518FD0);
        v9 = v24[0];
        if (v26)
        {
          v8 = *(*(v24[0] + 64) + 40);
          *v8 = a1;
          v8[1] = a2;

          swift_continuation_throwingResume();
          sub_1DB30623C(v27, &qword_1ECC429C0, &qword_1DB518FD0);
        }

        else
        {
          v10 = v24[1];

          sub_1DB2FEA0C(&v25, v21);
          v12 = v22;
          v11 = v23;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = a1;
          v13[5] = a2;
          v14 = *(v11 + 8);

          v14(sub_1DB4011C4, v13, v12, v11);

          sub_1DB30623C(v27, &qword_1ECC429C0, &qword_1DB518FD0);
          __swift_destroy_boxed_opaque_existential_0(v21);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
      v16 = v17;
      v15 = v18;
    }

    else
    {
      v15 = v4;
      v16 = v5;
    }

    sub_1DB30C340(v15, v16, 0);
  }
}

void sub_1DB3F8874(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v24, &unk_1ECC42BC0, &unk_1DB51A950);
  if (v25 == 3)
  {
    sub_1DB30623C(v24, &unk_1ECC42BC0, &unk_1DB51A950);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1DB300B14(a1, v23);
    v23[32] = 1;
    swift_beginAccess();
    sub_1DB30C2D8(v23, v1 + 24, &unk_1ECC42BC0, &unk_1DB51A950);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1ECC45020;
      do
      {
        sub_1DB30C4B8(v6, v23, v7, &unk_1DB50F700);
        sub_1DB30C4B8(v23, v20, v7, &unk_1DB50F700);
        v8 = v20[0];
        if (v22)
        {
          sub_1DB300B14(a1, v17);
          sub_1DB30C200(v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1DB30623C(v23, v7, &unk_1DB50F700);
        }

        else
        {
          v9 = v20[1];

          sub_1DB2FEA0C(&v21, v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          sub_1DB300B14(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1DB30C200(v16, (v11 + 32));
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1DB400A84, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1DB30623C(v23, v12, &unk_1DB50F700);
          __swift_destroy_boxed_opaque_existential_0(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3F8B6C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    *(v1 + 24) = a1 & 1;
    *(v1 + 32) = 1;

    sub_1DB30C3C4(v5, 0);
    os_unfair_lock_unlock(v3 + 4);
    v15 = v4;
    v6 = v4[2];
    if (v6)
    {
      v7 = (v4 + 4);
      do
      {
        sub_1DB30C4B8(v7, v22, &unk_1ECC44FD0, &qword_1DB50F1D0);
        sub_1DB30C4B8(v22, v19, &unk_1ECC44FD0, &qword_1DB50F1D0);
        v8 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = a1 & 1;
          swift_continuation_throwingResume();
          sub_1DB30623C(v22, &unk_1ECC44FD0, &qword_1DB50F1D0);
        }

        else
        {
          v9 = v19[1];

          sub_1DB2FEA0C(&v20, v16);
          v11 = v17;
          v10 = v18;
          __swift_project_boxed_opaque_existential_1(v16, v17);
          v12 = swift_allocObject();
          *(v12 + 16) = v8;
          *(v12 + 24) = v9;
          *(v12 + 32) = a1 & 1;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1DB40129C, v12, v11, v10);
          a1 = v13;

          sub_1DB30623C(v22, &unk_1ECC44FD0, &qword_1DB50F1D0);
          __swift_destroy_boxed_opaque_existential_0(v16);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1DB30C3C4(v15, 0);
  }
}

void sub_1DB3F8DEC(uint64_t a1)
{
  v3 = type metadata accessor for InMemoryJetPackResourceBundle();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v5;
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BE0, &unk_1DB518FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v31 - v11);
  v13 = v1[2];
  os_unfair_lock_lock(v13 + 4);
  v14 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v14, v12, &unk_1ECC42BE0, &unk_1DB518FC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v12, &unk_1ECC42BE0, &unk_1DB518FC0);
    os_unfair_lock_unlock(v13 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v16 = *v12;
    sub_1DB400F8C(a1, v9, type metadata accessor for InMemoryJetPackResourceBundle);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v9, v1 + v14, &unk_1ECC42BE0, &unk_1DB518FC0);
    swift_endAccess();
    os_unfair_lock_unlock(v13 + 4);
    v17 = *(v16 + 16);
    if (v17)
    {
      v31 = v16;
      v18 = v16 + 32;
      v19 = qword_1ECC453B0;
      v32 = a1;
      do
      {
        sub_1DB30C4B8(v18, v44, v19, &qword_1DB50F720);
        sub_1DB30C4B8(v44, v41, v19, &qword_1DB50F720);
        v21 = v41[0];
        if (v43)
        {
          v20 = v37;
          sub_1DB400F8C(a1, v37, type metadata accessor for InMemoryJetPackResourceBundle);
          sub_1DB30C210(v20, *(*(v21 + 64) + 40), type metadata accessor for InMemoryJetPackResourceBundle);
          swift_continuation_throwingResume();
          sub_1DB30623C(v44, v19, &qword_1DB50F720);
        }

        else
        {
          v22 = v41[1];

          sub_1DB2FEA0C(&v42, v38);
          v23 = v39;
          v35 = v40;
          v36 = __swift_project_boxed_opaque_existential_1(v38, v39);
          v24 = v19;
          v25 = v37;
          sub_1DB400F8C(a1, v37, type metadata accessor for InMemoryJetPackResourceBundle);
          v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v27 = swift_allocObject();
          *(v27 + 16) = v21;
          *(v27 + 24) = v22;
          v28 = v25;
          v19 = v24;
          sub_1DB30C210(v28, v27 + v26, type metadata accessor for InMemoryJetPackResourceBundle);
          v29 = v35;
          v30 = *(v35 + 8);

          v30(sub_1DB4012B0, v27, v23, v29);

          a1 = v32;

          sub_1DB30623C(v44, v19, &qword_1DB50F720);
          __swift_destroy_boxed_opaque_existential_0(v38);
        }

        v18 += 80;
        --v17;
      }

      while (v17);
    }
  }
}

void sub_1DB3F92C0(uint64_t a1)
{
  v3 = type metadata accessor for DiskJetPackResourceBundle();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v5;
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v31 - v11);
  v13 = v1[2];
  os_unfair_lock_lock(v13 + 4);
  v14 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v14, v12, &unk_1ECC42BD0, &unk_1DB518FB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v12, &unk_1ECC42BD0, &unk_1DB518FB0);
    os_unfair_lock_unlock(v13 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v16 = *v12;
    sub_1DB400F8C(a1, v9, type metadata accessor for DiskJetPackResourceBundle);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v9, v1 + v14, &unk_1ECC42BD0, &unk_1DB518FB0);
    swift_endAccess();
    os_unfair_lock_unlock(v13 + 4);
    v17 = *(v16 + 16);
    if (v17)
    {
      v31 = v16;
      v18 = v16 + 32;
      v19 = &unk_1ECC453A0;
      v32 = a1;
      do
      {
        sub_1DB30C4B8(v18, v44, v19, &unk_1DB50F710);
        sub_1DB30C4B8(v44, v41, v19, &unk_1DB50F710);
        v21 = v41[0];
        if (v43)
        {
          v20 = v37;
          sub_1DB400F8C(a1, v37, type metadata accessor for DiskJetPackResourceBundle);
          sub_1DB30C210(v20, *(*(v21 + 64) + 40), type metadata accessor for DiskJetPackResourceBundle);
          swift_continuation_throwingResume();
          sub_1DB30623C(v44, v19, &unk_1DB50F710);
        }

        else
        {
          v22 = v41[1];

          sub_1DB2FEA0C(&v42, v38);
          v23 = v39;
          v35 = v40;
          v36 = __swift_project_boxed_opaque_existential_1(v38, v39);
          v24 = v19;
          v25 = v37;
          sub_1DB400F8C(a1, v37, type metadata accessor for DiskJetPackResourceBundle);
          v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v27 = swift_allocObject();
          *(v27 + 16) = v21;
          *(v27 + 24) = v22;
          v28 = v25;
          v19 = v24;
          sub_1DB30C210(v28, v27 + v26, type metadata accessor for DiskJetPackResourceBundle);
          v29 = v35;
          v30 = *(v35 + 8);

          v30(sub_1DB4012AC, v27, v23, v29);

          a1 = v32;

          sub_1DB30623C(v44, v19, &unk_1DB50F710);
          __swift_destroy_boxed_opaque_existential_0(v38);
        }

        v18 += 80;
        --v17;
      }

      while (v17);
    }
  }
}

void sub_1DB3F9794(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    sub_1DB3E2FF0(v3, 0);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;
    swift_unknownObjectRetain();
    sub_1DB400E3C(v3, 0, MEMORY[0x1E69E7D60]);
    os_unfair_lock_unlock(v2 + 4);
    v14 = v3;
    v4 = v3[2];
    if (v4)
    {
      v5 = (v3 + 4);
      v6 = &unk_1ECC428C0;
      do
      {
        sub_1DB30C4B8(v5, v22, v6, &unk_1DB50F6F0);
        sub_1DB30C4B8(v22, v19, v6, &unk_1DB50F6F0);
        v7 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = a1;
          swift_unknownObjectRetain();
          swift_continuation_throwingResume();
          sub_1DB30623C(v22, v6, &unk_1DB50F6F0);
        }

        else
        {
          v8 = v19[1];

          sub_1DB2FEA0C(&v20, v16);
          v10 = v17;
          v9 = v18;
          __swift_project_boxed_opaque_existential_1(v16, v17);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = v6;
          v13 = *(v9 + 8);
          swift_unknownObjectRetain();

          v13(sub_1DB400AB4, v11, v10, v9);
          v6 = v12;

          sub_1DB30623C(v22, v12, &unk_1DB50F6F0);
          __swift_destroy_boxed_opaque_existential_0(v16);
        }

        v5 += 80;
        --v4;
      }

      while (v4);
    }

    sub_1DB400E3C(v14, 0, MEMORY[0x1E69E7D60]);
  }
}

void sub_1DB3F9A78(uint64_t a1)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45380, &qword_1DB51BBA0);
  v27 = *(v2 - 8);
  v26[2] = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BB0, &unk_1DB50F6C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v26 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v12, v10, &unk_1ECC42BB0, &unk_1DB50F6C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v10, &unk_1ECC42BB0, &unk_1DB50F6C0);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1DB30C4B8(v30, v7, &unk_1ECC45380, &qword_1DB51BBA0);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v7, v1 + v12, &unk_1ECC42BB0, &unk_1DB50F6C0);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v26[1] = v14;
      v16 = v14 + 32;
      do
      {
        sub_1DB30C4B8(v16, v37, &qword_1ECC42870, &unk_1DB518F90);
        sub_1DB30C4B8(v37, v34, &qword_1ECC42870, &unk_1DB518F90);
        v18 = v34[0];
        if (v36)
        {
          v17 = v29;
          sub_1DB30C4B8(v30, v29, &unk_1ECC45380, &qword_1DB51BBA0);
          sub_1DB30C06C(v17, *(*(v18 + 64) + 40), &unk_1ECC45380, &qword_1DB51BBA0);
          swift_continuation_throwingResume();
          sub_1DB30623C(v37, &qword_1ECC42870, &unk_1DB518F90);
        }

        else
        {
          v19 = v34[1];

          sub_1DB2FEA0C(&v35, v31);
          v20 = v32;
          v21 = v33;
          v28 = __swift_project_boxed_opaque_existential_1(v31, v32);
          v22 = v29;
          sub_1DB30C4B8(v30, v29, &unk_1ECC45380, &qword_1DB51BBA0);
          v23 = (*(v27 + 80) + 32) & ~*(v27 + 80);
          v24 = swift_allocObject();
          *(v24 + 16) = v18;
          *(v24 + 24) = v19;
          sub_1DB30C06C(v22, v24 + v23, &unk_1ECC45380, &qword_1DB51BBA0);
          v25 = *(v21 + 8);

          v25(sub_1DB4012A4, v24, v20, v21);

          sub_1DB30623C(v37, &qword_1ECC42870, &unk_1DB518F90);
          __swift_destroy_boxed_opaque_existential_0(v31);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1DB3F9F48(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(v3 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  if (*(v3 + 48) == 3)
  {
    os_unfair_lock_unlock(v5 + 4);
  }

  else if (*(v3 + 48))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 24);
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    sub_1DB3E3028(v6, v7, v8, 0);
    sub_1DB30C1AC(a1, a2);
    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
    *(v3 + 40) = a3;
    *(v3 + 48) = 1;
    v23 = a3;
    v20 = v8;
    v21 = v7;
    sub_1DB30C0D4(v6, v7, v8, 0);
    os_unfair_lock_unlock(v5 + 4);
    v22 = v6;
    v9 = v6[2];
    if (v9)
    {
      v10 = (v6 + 4);
      do
      {
        sub_1DB30C4B8(v10, v32, &qword_1ECC428A0, &unk_1DB50F6E0);
        sub_1DB30C4B8(v32, v29, &qword_1ECC428A0, &unk_1DB50F6E0);
        v13 = v29[0];
        if (v31)
        {
          sub_1DB30C1AC(a1, a2);
          v11 = *(*(v13 + 64) + 40);
          *v11 = a1;
          v11[1] = a2;
          v11[2] = v23;
          v12 = v23;
          swift_continuation_throwingResume();
          sub_1DB30623C(v32, &qword_1ECC428A0, &unk_1DB50F6E0);
        }

        else
        {
          v14 = v29[1];

          sub_1DB2FEA0C(&v30, v26);
          v16 = v27;
          v15 = v28;
          __swift_project_boxed_opaque_existential_1(v26, v27);
          v17 = swift_allocObject();
          v17[2] = v13;
          v17[3] = v14;
          v17[4] = a1;
          v17[5] = a2;
          v17[6] = v23;
          v18 = *(v15 + 8);
          sub_1DB30C1AC(a1, a2);
          v19 = v23;

          v18(sub_1DB4012A8, v17, v16, v15);

          sub_1DB30623C(v32, &qword_1ECC428A0, &unk_1DB50F6E0);
          __swift_destroy_boxed_opaque_existential_0(v26);
        }

        v10 += 80;
        --v9;
      }

      while (v9);
    }

    sub_1DB30C0D4(v22, v21, v20, 0);
  }
}

void sub_1DB3FA280(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  os_unfair_lock_lock(v9 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v9 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v10 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 1;
    v26 = a1;
    os_unfair_lock_unlock(v9 + 4);
    v22 = v10;
    v11 = v10[2];
    if (v11)
    {
      v12 = (v10 + 4);
      v23 = a2;
      v24 = a3;
      do
      {
        sub_1DB30C4B8(v12, v33, a2, a3);
        sub_1DB30C4B8(v33, v30, a2, a3);
        v14 = v30[0];
        if (v32)
        {
          **(*(v30[0] + 64) + 40) = v26;
          v13 = v26;
          swift_continuation_throwingResume();
          sub_1DB30623C(v33, a2, a3);
        }

        else
        {
          v15 = v30[1];

          sub_1DB2FEA0C(&v31, v27);
          v17 = v28;
          v16 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          v18 = swift_allocObject();
          v18[2] = v14;
          v18[3] = v15;
          v18[4] = v26;
          v19 = *(v16 + 8);
          v20 = v26;

          v21 = v16;
          a2 = v23;
          v19(a5, v18, v17, v21);

          a3 = v24;

          sub_1DB30623C(v33, v23, v24);
          __swift_destroy_boxed_opaque_existential_0(v27);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
    }

    sub_1DB30C3E8(v22, 0);
  }
}

void sub_1DB3FA4D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v35, &unk_1ECC45000, &unk_1DB51A930);
  if (v36 == 3)
  {
    sub_1DB30623C(v35, &unk_1ECC45000, &unk_1DB51A930);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v36)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = v35[0];
    sub_1DB400AF8(a1, &v29);
    v34 = 1;
    swift_beginAccess();
    sub_1DB30C2D8(&v29, v1 + 24, &unk_1ECC45000, &unk_1DB51A930);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1ECC42B90;
      do
      {
        sub_1DB30C4B8(v6, v28, v7, &qword_1DB50F290);
        sub_1DB30C4B8(v28, v25, v7, &qword_1DB50F290);
        v12 = v25[0];
        if (v27)
        {
          sub_1DB400AF8(a1, &v29);
          v8 = *(*(v12 + 64) + 40);
          *v8 = v29;
          v10 = v32;
          v9 = v33;
          v11 = v31;
          v8[1] = v30;
          v8[2] = v11;
          v8[3] = v10;
          v8[4] = v9;
          swift_continuation_throwingResume();
          sub_1DB30623C(v28, v7, &qword_1DB50F290);
        }

        else
        {
          v13 = v25[1];

          sub_1DB2FEA0C(&v26, v22);
          v14 = v24;
          v21 = v23;
          __swift_project_boxed_opaque_existential_1(v22, v23);
          sub_1DB400AF8(a1, &v29);
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          *(v15 + 24) = v13;
          v16 = v32;
          *(v15 + 64) = v31;
          *(v15 + 80) = v16;
          *(v15 + 96) = v33;
          v17 = v30;
          *(v15 + 32) = v29;
          *(v15 + 48) = v17;
          v18 = v7;
          v19 = a1;
          v20 = *(v14 + 8);

          v20(sub_1DB401290, v15, v21, v14);
          a1 = v19;
          v7 = v18;

          sub_1DB30623C(v28, v18, &qword_1DB50F290);
          __swift_destroy_boxed_opaque_existential_0(v22);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}