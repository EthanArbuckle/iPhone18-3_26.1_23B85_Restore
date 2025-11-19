void sub_251C22968(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 8))(v4, v5);
  v6 = sub_251C70EE4();

  sub_251A823B4(a1, v10);
  v7 = swift_allocObject();
  sub_251A7E8D8(v10, v7 + 16);
  aBlock[4] = sub_251C22AA0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251C22AE4;
  aBlock[3] = &block_descriptor_21;
  v8 = _Block_copy(aBlock);

  LOBYTE(v4) = AnalyticsSendEventLazy();
  _Block_release(v8);

  *a2 = v4;
}

uint64_t sub_251C22AA0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return sub_251C225FC(v1, v2);
}

id sub_251C22AE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_251B1B1EC();
    v5 = sub_251C70E44();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251C22B88(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_251C22DB8;
  *(v8 + 24) = v6;
  v9 = *v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_251C22DC4;
  *(v10 + 24) = v8;
  v13[4] = sub_251C22DCC;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_251AD9914;
  v13[3] = &block_descriptor_12_0;
  v11 = _Block_copy(v13);

  [v9 isImproveHealthRecordsAnalyticsSubmissionAllowedWithCompletion_];
  _Block_release(v11);
}

void sub_251C22CF0(char a1, id a2, void (*a3)(uint64_t, void))
{
  if (a1 == 2)
  {
    v5 = a2;
    if (!a2)
    {
      sub_251AC6624();
      v5 = swift_allocError();
      v7 = v6;
      a2 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
    }

    v8 = a2;
  }

  else
  {
    v5 = a1 & 1;
  }

  v9 = a1 == 2;
  a3(v5, v9);

  sub_251C22DD4(v5, v9);
}

void sub_251C22DD4(id a1, char a2)
{
  if (a2)
  {
  }
}

char *sub_251C22DE8()
{
  v1 = [v0 codings];
  sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
  v2 = sub_251C71154();

  v29 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25308D460](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 codingSystem];
      v9 = [objc_opt_self() RxNormCodeSystem];
      v10 = v9;
      if (v8)
      {
        if (v9)
        {
          sub_251A8223C(0, &qword_27F47C6A0, 0x277CCD5D0);
          v11 = sub_251C71534();

          if (v11)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v9)
        {
LABEL_17:
          sub_251C71734();
          v12 = *(v29 + 16);
          sub_251C71774();
          sub_251C71784();
          sub_251C71744();
          goto LABEL_6;
        }
      }

LABEL_6:
      ++v4;
      if (v7 == i)
      {
        v13 = v29;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_24:

  if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      goto LABEL_27;
    }

LABEL_46:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

LABEL_45:
  v14 = sub_251C717F4();
  if (!v14)
  {
    goto LABEL_46;
  }

LABEL_27:
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  do
  {
    v17 = v15;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25308D460](v17, v13);
      }

      else
      {
        if (v17 >= *(v13 + 16))
        {
          goto LABEL_44;
        }

        v18 = *(v13 + 8 * v17 + 32);
      }

      v19 = v18;
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v20 = [v18 code];
      if (v20)
      {
        break;
      }

      ++v17;
      if (v15 == v14)
      {
        goto LABEL_47;
      }
    }

    v21 = v20;
    v22 = sub_251C70F14();
    v24 = v23;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_251C38CCC(0, *(v16 + 2) + 1, 1, v16);
    }

    v26 = *(v16 + 2);
    v25 = *(v16 + 3);
    if (v26 >= v25 >> 1)
    {
      v16 = sub_251C38CCC((v25 > 1), v26 + 1, 1, v16);
    }

    *(v16 + 2) = v26 + 1;
    v27 = &v16[16 * v26];
    *(v27 + 4) = v22;
    *(v27 + 5) = v24;
  }

  while (v15 != v14);
LABEL_47:

  return v16;
}

void sub_251C23144(uint64_t a1@<X8>)
{
  sub_251A7E9FC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_251C23188(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_251A7E9FC();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_251C231C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251AB99F4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_251C23210()
{
  result = qword_27F47C6A8;
  if (!qword_27F47C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C6A8);
  }

  return result;
}

unint64_t sub_251C23268()
{
  result = qword_27F47C6B0;
  if (!qword_27F47C6B0)
  {
    sub_251C232C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C6B0);
  }

  return result;
}

void sub_251C232C0()
{
  if (!qword_27F47C6B8)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C6B8);
    }
  }
}

unint64_t sub_251C23314()
{
  result = qword_27F47C6C0;
  if (!qword_27F47C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C6C0);
  }

  return result;
}

unint64_t sub_251C2336C()
{
  result = qword_27F47C6C8;
  if (!qword_27F47C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C6C8);
  }

  return result;
}

uint64_t sub_251C233C0()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2880);
  __swift_project_value_buffer(v0, qword_27F4A2880);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "NODE_TYPE_X";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "ROOT";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "CATEGORY";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "RECORD";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C235EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F478938 != -1)
  {
    swift_once();
  }

  v2 = sub_251C706D4();
  v3 = __swift_project_value_buffer(v2, qword_27F4A2880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double sub_251C23694@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3 >> 60 == 15)
  {
    sub_251ACFFE4();
    v4 = swift_allocError();
    swift_willThrow();
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v9 = sub_251C70764();
    __swift_project_value_buffer(v9, qword_2813E8130);
    v10 = v4;
    v11 = sub_251C70744();
    v12 = sub_251C713D4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v20 = v14;
      *v13 = 136315138;
      v21 = v4;
      v15 = v4;
      sub_251A82284();
      v16 = sub_251C70F74();
      v18 = sub_251B10780(v16, v17, &v20);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_251A6C000, v11, v12, "Could not retrieve ClinicalSharingGraphMetadata: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x25308E2B0](v14, -1, -1);
      MEMORY[0x25308E2B0](v13, -1, -1);
    }

    else
    {
    }

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v5 = *a1;
    v6 = sub_251C6F9F4();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_251A858C4(v5, v3);
    sub_251C6F9E4();
    sub_251C238F4();
    sub_251C6F9D4();
    sub_251A8596C(v5, v3);

    result = *&v20;
    *a2 = v20;
  }

  return result;
}

unint64_t sub_251C238F4()
{
  result = qword_2813E3788;
  if (!qword_2813E3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E3788);
  }

  return result;
}

uint64_t sub_251C23948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a1;
  v39 = a4;
  v40 = a2;
  v41 = a3;
  v37 = type metadata accessor for PBBlobAuth(0);
  v44 = *(v37 - 8);
  v6 = *(v44 + 64);
  v7 = MEMORY[0x28223BE20](v37);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = type metadata accessor for PBDeleteBlobs(0);
  v36 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v16 = type metadata accessor for PBDeleteBlobsRequest(0);
  v17 = *(v16 + 20);
  v18 = *(v12 + 56);
  v18(a5 + v17, 1, 1, v11);
  v19 = *(v16 + 24);
  v20 = *(v44 + 56);
  v44 += 56;
  v38 = v20;
  v21 = v37;
  v20(a5 + v19, 1, 1, v37);
  sub_251C23DD4(v43, v15, type metadata accessor for PBDeleteBlobs);
  sub_251C23E3C(a5 + v17, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  v22 = v39;
  sub_251C23EEC(v15, a5 + v17, type metadata accessor for PBDeleteBlobs);
  v18(a5 + v17, 0, 1, v36);
  v24 = v40;
  v23 = v41;
  *(v10 + 8) = xmmword_251C745D0;
  v25 = v21;
  v26 = &v10[*(v21 + 28)];
  sub_251C703A4();
  v27 = *(v10 + 1);
  v28 = *(v10 + 2);
  sub_251A858C4(v23, v22);
  sub_251A83028(v27, v28);
  *v10 = v24;
  *(v10 + 1) = v23;
  *(v10 + 2) = v22;
  *(v10 + 3) = 0x6977363532414853;
  *(v10 + 4) = 0xEF41534443456874;
  v29 = v42;
  sub_251C23DD4(v10, v42, type metadata accessor for PBBlobAuth);

  sub_251C23E3C(a5 + v19, qword_2813E7028, type metadata accessor for PBBlobAuth);
  sub_251C23EEC(v29, a5 + v19, type metadata accessor for PBBlobAuth);
  v38(a5 + v19, 0, 1, v25);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v30 = sub_251C70764();
  __swift_project_value_buffer(v30, qword_2813E8130);

  sub_251A858C4(v23, v22);
  v31 = sub_251C70744();
  v32 = sub_251C713C4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = *(v24 + 16);

    sub_251A83028(v23, v22);
    _os_log_impl(&dword_251A6C000, v31, v32, "Generated PBDeleteBlobsRequest containing number of certs: %ld", v33, 0xCu);
    MEMORY[0x25308E2B0](v33, -1, -1);

    sub_251A83028(v23, v22);
  }

  else
  {

    sub_251A83028(v23, v22);

    sub_251A83028(v23, v22);
  }

  sub_251C23F54(v43, type metadata accessor for PBDeleteBlobs);
  return sub_251C23F54(v10, type metadata accessor for PBBlobAuth);
}

uint64_t sub_251C23DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C23E3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251C23E98(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251C23E98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251C23EEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C23F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251C23FB4(unint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  return result;
}

char *sub_251C23FD8(int a1)
{
  v2 = MEMORY[0x277D84F90];
  if (a1)
  {
    swift_beginAccess();
    v2 = sub_251C398FC(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_251C398FC((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 1;
    v5[40] = 1;
    swift_endAccess();
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v7 = *(v2 + 2);
  v6 = *(v2 + 3);
  if (v7 >= v6 >> 1)
  {
    v2 = sub_251C398FC((v6 > 1), v7 + 1, 1, v2);
  }

  *(v2 + 2) = v7 + 1;
  v8 = &v2[16 * v7];
  *(v8 + 4) = 2;
  v8[40] = 1;
  swift_endAccess();
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_32:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_251C398FC((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 3;
  v11[40] = 1;
  swift_endAccess();
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_37:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_251C398FC((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 4;
  v14[40] = 1;
  swift_endAccess();
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_42:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_251C398FC((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 5;
  v17[40] = 1;
  swift_endAccess();
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_47:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_251C398FC((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 6;
  v20[40] = 1;
  swift_endAccess();
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_52:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_251C398FC((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 7;
  v23[40] = 1;
  swift_endAccess();
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_57:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_251C398FC((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 8;
  v26[40] = 1;
  swift_endAccess();
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_67;
  }

LABEL_62:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_251C398FC((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 9;
  v29[40] = 1;
  swift_endAccess();
  if ((a1 & 0x200) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

LABEL_67:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_251C398FC((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 10;
  v32[40] = 1;
  swift_endAccess();
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_77;
  }

LABEL_72:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_251C398FC((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 11;
  v35[40] = 1;
  swift_endAccess();
  if ((a1 & 0x800) == 0)
  {
LABEL_13:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_82;
  }

LABEL_77:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_251C398FC((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 12;
  v38[40] = 1;
  swift_endAccess();
  if ((a1 & 0x1000) == 0)
  {
LABEL_14:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_87;
  }

LABEL_82:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_251C398FC((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 13;
  v41[40] = 1;
  swift_endAccess();
  if ((a1 & 0x2000) == 0)
  {
LABEL_15:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_92;
  }

LABEL_87:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_251C398FC((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 14;
  v44[40] = 1;
  swift_endAccess();
  if ((a1 & 0x4000) == 0)
  {
LABEL_16:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_97;
  }

LABEL_92:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_251C398FC((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  *(v47 + 4) = 15;
  v47[40] = 1;
  swift_endAccess();
  if ((a1 & 0x8000) == 0)
  {
LABEL_17:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_102;
  }

LABEL_97:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v49 = *(v2 + 2);
  v48 = *(v2 + 3);
  if (v49 >= v48 >> 1)
  {
    v2 = sub_251C398FC((v48 > 1), v49 + 1, 1, v2);
  }

  *(v2 + 2) = v49 + 1;
  v50 = &v2[16 * v49];
  *(v50 + 4) = 16;
  v50[40] = 1;
  swift_endAccess();
  if ((a1 & 0x10000) == 0)
  {
LABEL_18:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_107;
  }

LABEL_102:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v52 = *(v2 + 2);
  v51 = *(v2 + 3);
  if (v52 >= v51 >> 1)
  {
    v2 = sub_251C398FC((v51 > 1), v52 + 1, 1, v2);
  }

  *(v2 + 2) = v52 + 1;
  v53 = &v2[16 * v52];
  *(v53 + 4) = 17;
  v53[40] = 1;
  swift_endAccess();
  if ((a1 & 0x20000) == 0)
  {
LABEL_19:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_112;
  }

LABEL_107:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v55 = *(v2 + 2);
  v54 = *(v2 + 3);
  if (v55 >= v54 >> 1)
  {
    v2 = sub_251C398FC((v54 > 1), v55 + 1, 1, v2);
  }

  *(v2 + 2) = v55 + 1;
  v56 = &v2[16 * v55];
  *(v56 + 4) = 18;
  v56[40] = 1;
  swift_endAccess();
  if ((a1 & 0x40000) == 0)
  {
LABEL_20:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_117;
  }

LABEL_112:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v58 = *(v2 + 2);
  v57 = *(v2 + 3);
  if (v58 >= v57 >> 1)
  {
    v2 = sub_251C398FC((v57 > 1), v58 + 1, 1, v2);
  }

  *(v2 + 2) = v58 + 1;
  v59 = &v2[16 * v58];
  *(v59 + 4) = 19;
  v59[40] = 1;
  swift_endAccess();
  if ((a1 & 0x80000) == 0)
  {
LABEL_21:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_122;
  }

LABEL_117:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v61 = *(v2 + 2);
  v60 = *(v2 + 3);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_251C398FC((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 2) = v61 + 1;
  v62 = &v2[16 * v61];
  *(v62 + 4) = 20;
  v62[40] = 1;
  swift_endAccess();
  if ((a1 & 0x100000) == 0)
  {
LABEL_22:
    if ((a1 & 0x200000) == 0)
    {
      return v2;
    }

    goto LABEL_127;
  }

LABEL_122:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v64 = *(v2 + 2);
  v63 = *(v2 + 3);
  if (v64 >= v63 >> 1)
  {
    v2 = sub_251C398FC((v63 > 1), v64 + 1, 1, v2);
  }

  *(v2 + 2) = v64 + 1;
  v65 = &v2[16 * v64];
  *(v65 + 4) = 21;
  v65[40] = 1;
  swift_endAccess();
  if ((a1 & 0x200000) != 0)
  {
LABEL_127:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
    }

    v67 = *(v2 + 2);
    v66 = *(v2 + 3);
    if (v67 >= v66 >> 1)
    {
      v2 = sub_251C398FC((v66 > 1), v67 + 1, 1, v2);
    }

    *(v2 + 2) = v67 + 1;
    v68 = &v2[16 * v67];
    *(v68 + 4) = 22;
    v68[40] = 1;
  }

  return v2;
}

uint64_t sub_251C24D54(uint64_t a1, uint64_t a2)
{
  v253 = a2;
  v3 = sub_251C702E4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v246 = (&v233 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v238 = &v233 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v237 = &v233 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v250 = (&v233 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v249 = (&v233 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v248 = (&v233 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v236 = &v233 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v247 = (&v233 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v241 = (&v233 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v245 = (&v233 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v244 = (&v233 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v243 = (&v233 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v235 = &v233 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v242 = (&v233 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = (&v233 - v35);
  v37 = MEMORY[0x28223BE20](v34);
  v240 = (&v233 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = (&v233 - v40);
  v42 = MEMORY[0x28223BE20](v39);
  v239 = (&v233 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v234 = (&v233 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = (&v233 - v47);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = (&v233 - v50);
  MEMORY[0x28223BE20](v49);
  v53 = (&v233 - v52);
  v54 = *MEMORY[0x277CCB8C8];
  v55 = sub_251C264F0();
  v56 = v54;
  v251 = v55;
  v57 = MEMORY[0x25308D1B0](v56);
  *v53 = v57;
  v58 = v4[13];
  v257 = *MEMORY[0x277D112F0];
  v255 = v58;
  v256 = v4 + 13;
  (v58)(v53);
  if (*(a1 + 16))
  {
    v59 = v57;
    v60 = sub_251AC8AFC(v253);
    if (v61)
    {
      v62 = *(*(a1 + 56) + 8 * v60);

      v63 = sub_251C5DBC0(v53, v62);
      v233 = v41;
      v64 = v36;
      v65 = v63;

      v254 = v4[1];
      v254(v53, v3);
      v66 = v65 & 1;
      v36 = v64;
      v41 = v233;
      v252 = v66;
      goto LABEL_6;
    }
  }

  v254 = v4[1];
  v254(v53, v3);
  v252 = 0;
LABEL_6:
  v67 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB8D0]);
  *v51 = v67;
  (v255)(v51, v257, v3);
  v68 = v235;
  if (!*(a1 + 16))
  {
LABEL_12:
    v254(v51, v3);
    goto LABEL_13;
  }

  v69 = v67;
  v70 = sub_251AC8AFC(v253);
  if ((v71 & 1) == 0)
  {

    goto LABEL_12;
  }

  v72 = *(*(a1 + 56) + 8 * v70);

  v73 = sub_251C5DBC0(v51, v72);

  v254(v51, v3);
  v74 = v252;
  v68 = v235;
  if (v73)
  {
    v74 = v252 | 2;
  }

  v252 = v74;
LABEL_13:
  v75 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB8D8]);
  *v48 = v75;
  (v255)(v48, v257, v3);
  if (!*(a1 + 16))
  {
LABEL_19:
    v254(v48, v3);
    goto LABEL_20;
  }

  v76 = v75;
  v77 = sub_251AC8AFC(v253);
  if ((v78 & 1) == 0)
  {

    goto LABEL_19;
  }

  v79 = *(*(a1 + 56) + 8 * v77);

  v80 = sub_251C5DBC0(v48, v79);

  v254(v48, v3);
  v81 = v252;
  if (v80)
  {
    v81 = v252 | 4;
  }

  v252 = v81;
LABEL_20:
  v82 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB908]);
  v83 = v234;
  *v234 = v82;
  (v255)(v83, v257, v3);
  if (!*(a1 + 16))
  {
LABEL_26:
    v254(v83, v3);
    goto LABEL_27;
  }

  v84 = v82;
  v85 = sub_251AC8AFC(v253);
  if ((v86 & 1) == 0)
  {

    goto LABEL_26;
  }

  v87 = *(*(a1 + 56) + 8 * v85);

  v88 = sub_251C5DBC0(v83, v87);

  v254(v83, v3);
  v89 = v252;
  if (v88)
  {
    v89 = v252 | 8;
  }

  v252 = v89;
LABEL_27:
  v90 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB910]);
  *v239 = v90;
  v255();
  if (!*(a1 + 16))
  {
LABEL_33:
    v254(v239, v3);
    goto LABEL_34;
  }

  v91 = v90;
  v92 = sub_251AC8AFC(v253);
  if ((v93 & 1) == 0)
  {

    goto LABEL_33;
  }

  v94 = *(*(a1 + 56) + 8 * v92);

  v95 = v239;
  v96 = sub_251C5DBC0(v239, v94);

  v254(v95, v3);
  v97 = v252;
  if (v96)
  {
    v97 = v252 | 0x10;
  }

  v252 = v97;
LABEL_34:
  v98 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB930]);
  *v41 = v98;
  (v255)(v41, v257, v3);
  if (!*(a1 + 16))
  {
LABEL_40:
    v254(v41, v3);
    goto LABEL_41;
  }

  v99 = v98;
  v100 = sub_251AC8AFC(v253);
  if ((v101 & 1) == 0)
  {

    goto LABEL_40;
  }

  v102 = *(*(a1 + 56) + 8 * v100);

  v103 = sub_251C5DBC0(v41, v102);

  v254(v41, v3);
  v104 = v252;
  if (v103)
  {
    v104 = v252 | 0x20;
  }

  v252 = v104;
LABEL_41:
  v105 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB948]);
  *v240 = v105;
  v255();
  if (!*(a1 + 16))
  {
LABEL_47:
    v254(v240, v3);
    goto LABEL_48;
  }

  v106 = v105;
  v107 = sub_251AC8AFC(v253);
  if ((v108 & 1) == 0)
  {

    goto LABEL_47;
  }

  v109 = *(*(a1 + 56) + 8 * v107);

  v110 = v240;
  v111 = sub_251C5DBC0(v240, v109);

  v254(v110, v3);
  v112 = v252;
  if (v111)
  {
    v112 = v252 | 0x40;
  }

  v252 = v112;
LABEL_48:
  v113 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB998]);
  *v36 = v113;
  (v255)(v36, v257, v3);
  if (!*(a1 + 16))
  {
LABEL_54:
    v254(v36, v3);
    goto LABEL_55;
  }

  v114 = v113;
  v115 = sub_251AC8AFC(v253);
  if ((v116 & 1) == 0)
  {

    goto LABEL_54;
  }

  v117 = *(*(a1 + 56) + 8 * v115);

  v118 = sub_251C5DBC0(v36, v117);

  v254(v36, v3);
  v119 = v252;
  if (v118)
  {
    v119 = v252 | 0x80;
  }

  v252 = v119;
LABEL_55:
  v120 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB9C0]);
  *v242 = v120;
  v255();
  if (!*(a1 + 16))
  {
LABEL_61:
    v254(v242, v3);
    goto LABEL_62;
  }

  v121 = v120;
  v122 = sub_251AC8AFC(v253);
  if ((v123 & 1) == 0)
  {

    goto LABEL_61;
  }

  v124 = *(*(a1 + 56) + 8 * v122);

  v125 = v242;
  v126 = sub_251C5DBC0(v242, v124);

  v254(v125, v3);
  v127 = v252;
  if (v126)
  {
    v127 = v252 | 0x100;
  }

  v252 = v127;
LABEL_62:
  v128 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA18]);
  *v68 = v128;
  (v255)(v68, v257, v3);
  if (!*(a1 + 16))
  {
LABEL_68:
    v254(v68, v3);
    goto LABEL_69;
  }

  v129 = v128;
  v130 = sub_251AC8AFC(v253);
  if ((v131 & 1) == 0)
  {

    goto LABEL_68;
  }

  v132 = *(*(a1 + 56) + 8 * v130);

  v133 = sub_251C5DBC0(v68, v132);

  v254(v68, v3);
  v134 = v252;
  if (v133)
  {
    v134 = v252 | 0x200;
  }

  v252 = v134;
LABEL_69:
  v135 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA38]);
  *v243 = v135;
  v255();
  if (!*(a1 + 16))
  {
LABEL_75:
    v254(v243, v3);
    goto LABEL_76;
  }

  v136 = v135;
  v137 = sub_251AC8AFC(v253);
  if ((v138 & 1) == 0)
  {

    goto LABEL_75;
  }

  v139 = *(*(a1 + 56) + 8 * v137);

  v140 = v243;
  v141 = sub_251C5DBC0(v243, v139);

  v254(v140, v3);
  v142 = v252;
  if (v141)
  {
    v142 = v252 | 0x400;
  }

  v252 = v142;
LABEL_76:
  v143 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA40]);
  *v244 = v143;
  v255();
  if (!*(a1 + 16))
  {
LABEL_82:
    v254(v244, v3);
    goto LABEL_83;
  }

  v144 = v143;
  v145 = sub_251AC8AFC(v253);
  if ((v146 & 1) == 0)
  {

    goto LABEL_82;
  }

  v147 = *(*(a1 + 56) + 8 * v145);

  v148 = v244;
  v149 = sub_251C5DBC0(v244, v147);

  v254(v148, v3);
  v150 = v252;
  if (v149)
  {
    v150 = v252 | 0x800;
  }

  v252 = v150;
LABEL_83:
  v151 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA58]);
  *v245 = v151;
  v255();
  if (!*(a1 + 16))
  {
LABEL_89:
    v254(v245, v3);
    goto LABEL_90;
  }

  v152 = v151;
  v153 = sub_251AC8AFC(v253);
  if ((v154 & 1) == 0)
  {

    goto LABEL_89;
  }

  v155 = *(*(a1 + 56) + 8 * v153);

  v156 = v245;
  v157 = sub_251C5DBC0(v245, v155);

  v254(v156, v3);
  v158 = v252;
  if (v157)
  {
    v158 = v252 | 0x1000;
  }

  v252 = v158;
LABEL_90:
  v159 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBAC8]);
  *v241 = v159;
  v255();
  if (!*(a1 + 16))
  {
LABEL_96:
    v254(v241, v3);
    goto LABEL_97;
  }

  v160 = v159;
  v161 = sub_251AC8AFC(v253);
  if ((v162 & 1) == 0)
  {

    goto LABEL_96;
  }

  v163 = *(*(a1 + 56) + 8 * v161);

  v164 = v241;
  v165 = sub_251C5DBC0(v241, v163);

  v254(v164, v3);
  v166 = v252;
  if (v165)
  {
    v166 = v252 | 0x2000;
  }

  v252 = v166;
LABEL_97:
  v167 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB970]);
  *v247 = v167;
  v255();
  v168 = v236;
  if (!*(a1 + 16))
  {
LABEL_103:
    v254(v247, v3);
    goto LABEL_104;
  }

  v169 = v167;
  v170 = sub_251AC8AFC(v253);
  if ((v171 & 1) == 0)
  {

    goto LABEL_103;
  }

  v172 = *(*(a1 + 56) + 8 * v170);

  v173 = v247;
  v174 = sub_251C5DBC0(v247, v172);

  v175 = v173;
  v168 = v236;
  v254(v175, v3);
  v176 = v252;
  if (v174)
  {
    v176 = v252 | 0x4000;
  }

  v252 = v176;
LABEL_104:
  v177 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBAE8]);
  *v168 = v177;
  (v255)(v168, v257, v3);
  if (!*(a1 + 16))
  {
LABEL_110:
    v254(v168, v3);
    goto LABEL_111;
  }

  v178 = v177;
  v179 = sub_251AC8AFC(v253);
  if ((v180 & 1) == 0)
  {

    goto LABEL_110;
  }

  v181 = *(*(a1 + 56) + 8 * v179);

  v182 = sub_251C5DBC0(v168, v181);

  v254(v168, v3);
  v183 = v252;
  if (v182)
  {
    v183 = v252 | 0x8000;
  }

  v252 = v183;
LABEL_111:
  v184 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA48]);
  *v248 = v184;
  v255();
  v185 = v237;
  if (!*(a1 + 16))
  {
LABEL_117:
    v254(v248, v3);
    goto LABEL_118;
  }

  v186 = v184;
  v187 = sub_251AC8AFC(v253);
  if ((v188 & 1) == 0)
  {

    goto LABEL_117;
  }

  v189 = *(*(a1 + 56) + 8 * v187);

  v190 = v248;
  v191 = sub_251C5DBC0(v248, v189);

  v192 = v190;
  v185 = v237;
  v254(v192, v3);
  v193 = v252;
  if (v191)
  {
    v193 = v252 | 0x10000;
  }

  v252 = v193;
LABEL_118:
  v194 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB928]);
  *v249 = v194;
  v255();
  if (!*(a1 + 16))
  {
LABEL_124:
    v254(v249, v3);
    goto LABEL_125;
  }

  v195 = v194;
  v196 = sub_251AC8AFC(v253);
  if ((v197 & 1) == 0)
  {

    goto LABEL_124;
  }

  v198 = *(*(a1 + 56) + 8 * v196);

  v199 = v249;
  v200 = sub_251C5DBC0(v249, v198);

  v254(v199, v3);
  v201 = v252;
  if (v200)
  {
    v201 = v252 | 0x20000;
  }

  v252 = v201;
LABEL_125:
  v202 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB988]);
  *v250 = v202;
  v255();
  v203 = v238;
  if (!*(a1 + 16))
  {
LABEL_131:
    v254(v250, v3);
    goto LABEL_132;
  }

  v204 = v202;
  v205 = sub_251AC8AFC(v253);
  if ((v206 & 1) == 0)
  {

    goto LABEL_131;
  }

  v207 = *(*(a1 + 56) + 8 * v205);

  v208 = v250;
  v209 = sub_251C5DBC0(v250, v207);

  v210 = v208;
  v203 = v238;
  v254(v210, v3);
  v211 = v252;
  if (v209)
  {
    v211 = v252 | 0x40000;
  }

  v252 = v211;
LABEL_132:
  v212 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB958]);
  *v185 = v212;
  (v255)(v185, v257, v3);
  if (!*(a1 + 16))
  {
LABEL_138:
    v254(v185, v3);
    v218 = v252;
    goto LABEL_139;
  }

  v213 = v212;
  v214 = sub_251AC8AFC(v253);
  if ((v215 & 1) == 0)
  {

    goto LABEL_138;
  }

  v216 = *(*(a1 + 56) + 8 * v214);

  v217 = sub_251C5DBC0(v185, v216);

  v254(v185, v3);
  v218 = v252;
  if (v217)
  {
    v218 = v252 | 0x80000;
  }

LABEL_139:
  v219 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB8F0]);
  *v203 = v219;
  (v255)(v203, v257, v3);
  if (!*(a1 + 16))
  {
LABEL_145:
    v254(v203, v3);
    goto LABEL_146;
  }

  v220 = v219;
  v221 = sub_251AC8AFC(v253);
  if ((v222 & 1) == 0)
  {

    goto LABEL_145;
  }

  v223 = *(*(a1 + 56) + 8 * v221);

  v224 = sub_251C5DBC0(v203, v223);

  v254(v203, v3);
  if (v224)
  {
    v218 |= 0x100000uLL;
  }

LABEL_146:
  v225 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA20]);
  *v246 = v225;
  v255();
  if (!*(a1 + 16))
  {
LABEL_152:
    v254(v246, v3);
    return v218;
  }

  v226 = v225;
  v227 = sub_251AC8AFC(v253);
  if ((v228 & 1) == 0)
  {

    goto LABEL_152;
  }

  v229 = *(*(a1 + 56) + 8 * v227);

  v230 = v246;
  v231 = sub_251C5DBC0(v246, v229);

  v254(v230, v3);
  if (v231)
  {
    return v218 | 0x200000;
  }

  return v218;
}

unint64_t sub_251C264F0()
{
  result = qword_27F479E00;
  if (!qword_27F479E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479E00);
  }

  return result;
}

uint64_t sub_251C2653C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v218 = a1;
  v198 = a3;
  v225 = *MEMORY[0x277D85DE8];
  v195 = sub_251C70F64();
  v194 = *(v195 - 8);
  v6 = *(v194 + 64);
  MEMORY[0x28223BE20](v195);
  v197 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251C6F9A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251C6FB44();
  v206 = *(v13 - 8);
  v14 = *(v206 + 64);
  MEMORY[0x28223BE20](v13);
  v201 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C27AE4(0, &qword_2813E7520, MEMORY[0x277CC9260]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v204 = &v179 - v18;
  v205 = sub_251C6FE64();
  v213 = *(v205 - 8);
  v19 = *(v213 + 64);
  v20 = MEMORY[0x28223BE20](v205);
  v199 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v200 = &v179 - v22;
  sub_251C27AE4(0, &qword_27F47C6D0, MEMORY[0x277CC8918]);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v212 = &v179 - v25;
  v216 = sub_251C6FB04();
  v211 = *(v216 - 8);
  v26 = *(v211 + 64);
  MEMORY[0x28223BE20](v216);
  v215 = &v179 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C27AE4(0, &qword_27F47C6D8, MEMORY[0x277CC8958]);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v179 - v30;
  if ([v4 minCompatibleAPIVersion] >= 6)
  {
    if (![v4 enabled])
    {
      sub_251A82AF0();
      swift_allocError();
      *v33 = 0;
      *(v33 + 8) = 0;
      v34 = 8;
      goto LABEL_15;
    }

    v185 = v13;
    v182 = a2;
    v196 = v31;
    v203 = v12;
    v180 = v9;
    v181 = v8;
    v188 = v4;
    v35 = [v4 URL];
    v36 = sub_251C70F14();
    v38 = v37;

    v39 = v218 + 64;
    v40 = 1 << *(v218 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v218 + 64);
    v43 = (v40 + 63) >> 6;

    v44 = 0;
    v214 = v38;
    k = v38;
    v217 = v39;
    if (v42)
    {
      while (1)
      {
        v46 = v44;
LABEL_12:
        v47 = __clz(__rbit64(v42));
        v42 &= v42 - 1;
        v48 = (v46 << 10) | (16 * v47);
        v49 = (*(v218 + 48) + v48);
        v50 = *v49;
        v38 = v49[1];
        v51 = (*(v218 + 56) + v48);
        v53 = *v51;
        v52 = v51[1];
        v223 = v36;
        v224 = k;
        v221 = 31611;
        v222 = 0xE200000000000000;

        MEMORY[0x25308CDA0](v50, v38);
        MEMORY[0x25308CDA0](32125, 0xE200000000000000);
        v219 = v53;
        v220 = v52;
        sub_251AD87E0();
        v36 = sub_251C715A4();
        v55 = v54;

        k = v55;
        v39 = v217;
        if (!v42)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v46 >= v43)
      {
        break;
      }

      v42 = *(v39 + 8 * v46);
      ++v44;
      if (v42)
      {
        v44 = v46;
        goto LABEL_12;
      }
    }

    v57 = v196;
    sub_251C6FB34();

    v58 = [v188 query];
    if (v58)
    {
      v59 = v58;
      sub_251B10CF0();
      v38 = sub_251C71154();

      v60 = *(v206 + 48);
      v183 = (v206 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v184 = v60;
      v61 = v60(v57, 1, v185);
      v42 = v203;
      k = v213;
      if (v61)
      {
      }

      else
      {
        if (v38 >> 62)
        {
          goto LABEL_64;
        }

        for (i = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
        {
          v64 = 0;
          v192 = v38 & 0xC000000000000001;
          v191 = v38 & 0xFFFFFFFFFFFFFF8;
          v190 = v38 + 32;
          v189 = (v211 + 56);
          v210 = (v211 + 32);
          v214 = MEMORY[0x277D84F90];
          v187 = v38;
          v186 = i;
          while (1)
          {
LABEL_24:
            if (v192)
            {
              v66 = MEMORY[0x25308D460](v64, v38);
            }

            else
            {
              if (v64 >= *(v191 + 16))
              {
                goto LABEL_63;
              }

              v66 = *(v190 + 8 * v64);
            }

            v67 = v66;
            if (__OFADD__(v64++, 1))
            {
              break;
            }

            v69 = [v66 literal];
            if (v69)
            {
              v209 = v64;
              v70 = v67;
              v71 = v69;
              v72 = sub_251C70F14();
              v38 = v73;

              v208 = v70;
              v74 = [v70 param];
              v193 = sub_251C70F14();
              v207 = v75;

              v76 = 1 << *(v218 + 32);
              if (v76 < 64)
              {
                v77 = ~(-1 << v76);
              }

              else
              {
                v77 = -1;
              }

              k = v77 & *(v218 + 64);
              v42 = (v76 + 63) >> 6;

              for (j = 0; k; v39 = v217)
              {
                v79 = j;
LABEL_38:
                v80 = __clz(__rbit64(k));
                k &= k - 1;
                v81 = (v79 << 10) | (16 * v80);
                v82 = (*(v218 + 48) + v81);
                v84 = *v82;
                v83 = v82[1];
                v85 = (*(v218 + 56) + v81);
                v87 = *v85;
                v86 = v85[1];
                v223 = v72;
                v224 = v38;
                v221 = 31611;
                v222 = 0xE200000000000000;

                MEMORY[0x25308CDA0](v84, v83);
                MEMORY[0x25308CDA0](32125, 0xE200000000000000);
                v219 = v87;
                v220 = v86;
                sub_251AD87E0();
                v72 = sub_251C715A4();
                v89 = v88;

                v38 = v89;
              }

              while (1)
              {
                v79 = j + 1;
                if (__OFADD__(j, 1))
                {
                  break;
                }

                if (v79 >= v42)
                {
                  goto LABEL_52;
                }

                k = *(v39 + 8 * v79);
                ++j;
                if (k)
                {
                  j = v79;
                  goto LABEL_38;
                }
              }

              __break(1u);
              goto LABEL_60;
            }

            v90 = [v67 variable];
            if (v90)
            {
              v209 = v64;
              v91 = v67;
              v92 = v90;
              v93 = sub_251C70F14();
              v95 = v94;

              v208 = v91;
              v96 = [v91 param];
              v193 = sub_251C70F14();
              v207 = v97;

              v223 = 31611;
              v224 = 0xE200000000000000;
              MEMORY[0x25308CDA0](v93, v95);

              MEMORY[0x25308CDA0](32125, 0xE200000000000000);
              v98 = v223;
              v38 = v224;
              v99 = 1 << *(v218 + 32);
              if (v99 < 64)
              {
                v100 = ~(-1 << v99);
              }

              else
              {
                v100 = -1;
              }

              v42 = v100 & *(v218 + 64);
              v101 = (v99 + 63) >> 6;

              for (k = 0; v42; v39 = v217)
              {
                v102 = k;
LABEL_50:
                v103 = __clz(__rbit64(v42));
                v42 &= v42 - 1;
                v104 = (v102 << 10) | (16 * v103);
                v105 = (*(v218 + 48) + v104);
                v107 = *v105;
                v106 = v105[1];
                v108 = (*(v218 + 56) + v104);
                v110 = *v108;
                v109 = v108[1];
                v223 = v98;
                v224 = v38;
                v221 = 31611;
                v222 = 0xE200000000000000;

                MEMORY[0x25308CDA0](v107, v106);
                MEMORY[0x25308CDA0](32125, 0xE200000000000000);
                v219 = v110;
                v220 = v109;
                sub_251AD87E0();
                v98 = sub_251C715A4();
                v112 = v111;

                v38 = v112;
              }

              while (1)
              {
                v102 = k + 1;
                if (__OFADD__(k, 1))
                {
                  goto LABEL_61;
                }

                if (v102 >= v101)
                {
LABEL_52:

                  v113 = v212;
                  sub_251C6FAF4();

                  v114 = v216;
                  (*v189)(v113, 0, 1, v216);
                  v115 = *v210;
                  (*v210)(v215, v113, v114);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v42 = v203;
                  k = v213;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v214 = sub_251C38F68(0, v214[2] + 1, 1, v214);
                  }

                  v38 = v187;
                  v118 = v214[2];
                  v117 = v214[3];
                  if (v118 >= v117 >> 1)
                  {
                    v214 = sub_251C38F68(v117 > 1, v118 + 1, 1, v214);
                  }

                  v120 = v214;
                  v119 = v215;
                  v214[2] = v118 + 1;
                  v115(v120 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v118, v119, v216);
                  i = v186;
                  v64 = v209;
                  if (v209 != v186)
                  {
                    goto LABEL_24;
                  }

                  goto LABEL_66;
                }

                v42 = *(v39 + 8 * v102);
                ++k;
                if (v42)
                {
                  k = v102;
                  goto LABEL_50;
                }
              }
            }

            v65 = v212;
            (*v189)(v212, 1, 1, v216);
            sub_251C27B38(v65, &qword_27F47C6D0, MEMORY[0x277CC8918]);
            if (v64 == i)
            {
              goto LABEL_66;
            }
          }

LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          ;
        }

        v214 = MEMORY[0x277D84F90];
LABEL_66:

        sub_251C6FB14();
      }

      v62 = v184;
    }

    else
    {
      v62 = *(v206 + 48);
      v42 = v203;
      k = v213;
    }

    v121 = v196;
    v122 = v185;
    if (v62(v196, 1, v185))
    {
      v123 = v204;
      (*(k + 56))(v204, 1, 1, v205);
    }

    else
    {
      v124 = v206;
      v125 = v201;
      (*(v206 + 16))(v201, v121, v122);
      v126 = v204;
      sub_251C6FB24();
      v127 = v122;
      v123 = v126;
      (*(v124 + 8))(v125, v127);
      v128 = v126;
      v129 = v205;
      if ((*(k + 48))(v128, 1, v205) != 1)
      {
        v136 = v200;
        (*(k + 32))(v200, v123, v129);
        (*(k + 16))(v199, v136, v129);
        sub_251C6F954();
        sub_251C6F924();
        v137 = [v188 headers];
        if (v137)
        {
          v138 = v137;
          sub_251B10CF0();
          v139 = sub_251C71154();

          v140 = v218;

          v141 = v202;
          sub_251C27FC0(v139, v42, v140);
          v202 = v141;
        }

        if (v182)
        {
          sub_251C6F994();
          sub_251C6F934();
        }

        v142 = [v188 body];
        if (v142)
        {
          v143 = v142;
          sub_251C70E54();

          v144 = objc_opt_self();
          v145 = sub_251C70E44();

          v223 = 0;
          v146 = [v144 dataWithJSONObject:v145 options:0 error:&v223];

          v147 = v223;
          if (v146)
          {
            v148 = sub_251C6FEE4();
            v150 = v149;

            sub_251C70F54();
            v151 = sub_251C70F34();
            if (v152)
            {
              v153 = v151;
              v154 = v152;
              v214 = v148;
              v215 = v150;
              v155 = 1 << *(v218 + 32);
              v156 = -1;
              if (v155 < 64)
              {
                v156 = ~(-1 << v155);
              }

              v157 = v156 & *(v218 + 64);
              v216 = (v155 + 63) >> 6;

              v158 = 0;
              v212 = v154;
              v159 = v205;
              if (v157)
              {
                while (1)
                {
                  v160 = v158;
LABEL_89:
                  v161 = __clz(__rbit64(v157));
                  v157 &= v157 - 1;
                  v162 = (v160 << 10) | (16 * v161);
                  v163 = (*(v218 + 48) + v162);
                  v164 = *v163;
                  v165 = v163[1];
                  v166 = (*(v218 + 56) + v162);
                  v167 = *v166;
                  v168 = v166[1];
                  v223 = v153;
                  v224 = v154;
                  v221 = 31611;
                  v222 = 0xE200000000000000;

                  MEMORY[0x25308CDA0](v164, v165);
                  MEMORY[0x25308CDA0](32125, 0xE200000000000000);
                  v219 = v167;
                  v220 = v168;
                  sub_251AD87E0();
                  v153 = sub_251C715A4();
                  v154 = v169;

                  v39 = v217;
                  v159 = v205;
                  if (!v157)
                  {
                    goto LABEL_85;
                  }
                }
              }

              while (1)
              {
LABEL_85:
                v160 = v158 + 1;
                if (__OFADD__(v158, 1))
                {
                  __break(1u);
                }

                if (v160 >= v216)
                {
                  break;
                }

                v157 = *(v39 + 8 * v160);
                ++v158;
                if (v157)
                {
                  v158 = v160;
                  goto LABEL_89;
                }
              }

              v170 = v197;
              sub_251C70F54();
              sub_251C70F24();
              v172 = v171;

              (*(v194 + 8))(v170, v195);
              if (v172 >> 60 == 15)
              {
                sub_251A82AF0();
                swift_allocError();
                *v173 = xmmword_251C84430;
                *(v173 + 16) = 8;
                swift_willThrow();
                sub_251A83028(v214, v215);
                (*(v213 + 8))(v200, v159);
                (*(v180 + 8))(v42, v181);
                goto LABEL_72;
              }

              sub_251C6F984();
              v176 = v214;
              v177 = v215;
            }

            else
            {
              v176 = v148;
              v177 = v150;
            }

            sub_251A83028(v176, v177);
          }

          else
          {
            v174 = v147;
            v175 = sub_251C6FD84();

            swift_willThrow();
            v202 = 0;
          }

          k = v213;
        }

        v178 = [v188 method];
        sub_251C70F14();

        sub_251C6F914();
        (*(k + 8))(v200, v205);
        (*(v180 + 32))(v198, v42, v181);
        result = sub_251C27B38(v196, &qword_27F47C6D8, MEMORY[0x277CC8958]);
        goto LABEL_73;
      }
    }

    sub_251C27B38(v123, &qword_2813E7520, MEMORY[0x277CC9260]);
    v130 = [v188 URL];
    v131 = sub_251C70F14();
    v133 = v132;

    sub_251A82AF0();
    swift_allocError();
    *v134 = v131;
    *(v134 + 8) = v133;
    *(v134 + 16) = 0;
    swift_willThrow();
LABEL_72:
    result = sub_251C27B38(v196, &qword_27F47C6D8, MEMORY[0x277CC8958]);
    goto LABEL_73;
  }

  v32 = [v4 minCompatibleAPIVersion];
  sub_251A82AF0();
  swift_allocError();
  *v33 = v32;
  *(v33 + 8) = 0;
  v34 = 1;
LABEL_15:
  *(v33 + 16) = v34;
  result = swift_willThrow();
LABEL_73:
  v135 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_251C27AE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251C27B38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251C27AE4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_251C27B94(uint64_t a1, uint64_t a2)
{
  v4 = [v2 literal];
  v43 = a2;
  if (v4)
  {
    v42 = v2;
    v5 = v4;
    sub_251C70F14();

    v6 = a2 + 64;
    v7 = 1 << *(a2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a2 + 64);
    v10 = (v7 + 63) >> 6;

    for (i = 0; v9; result = )
    {
      v13 = i;
LABEL_10:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = (v13 << 10) | (16 * v14);
      v16 = (*(v43 + 48) + v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = (*(v43 + 56) + v15);
      v20 = *v19;
      v21 = v19[1];

      MEMORY[0x25308CDA0](v18, v17);
      MEMORY[0x25308CDA0](32125, 0xE200000000000000);
      sub_251AD87E0();
      sub_251C715A4();
    }

    while (1)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v9 = *(v6 + 8 * v13);
      ++i;
      if (v9)
      {
        i = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  result = [v2 variable];
  if (result)
  {
    v42 = v2;
    v22 = result;
    v23 = sub_251C70F14();
    v25 = v24;

    MEMORY[0x25308CDA0](v23, v25);

    MEMORY[0x25308CDA0](32125, 0xE200000000000000);
    v26 = a2 + 64;
    v27 = 1 << *(a2 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(a2 + 64);
    v30 = (v27 + 63) >> 6;

    for (j = 0; v29; result = )
    {
      v32 = j;
LABEL_21:
      v33 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v34 = (v32 << 10) | (16 * v33);
      v35 = (*(v43 + 48) + v34);
      v36 = *v35;
      v37 = v35[1];
      v38 = (*(v43 + 56) + v34);
      v40 = *v38;
      v39 = v38[1];

      MEMORY[0x25308CDA0](v36, v37);
      MEMORY[0x25308CDA0](32125, 0xE200000000000000);
      sub_251AD87E0();
      sub_251C715A4();
    }

    while (1)
    {
      v32 = j + 1;
      if (__OFADD__(j, 1))
      {
        goto LABEL_26;
      }

      if (v32 >= v30)
      {
LABEL_23:

        v41 = [v42 param];
        sub_251C70F14();

        sub_251C6F994();
      }

      v29 = *(v26 + 8 * v32);
      ++j;
      if (v29)
      {
        j = v32;
        goto LABEL_21;
      }
    }
  }

  return result;
}

void sub_251C27FC0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25308D460](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_251C27B94(a2, a3);

      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_251C280A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v24 = a1;

  v10 = 0;
  while (v7)
  {
LABEL_29:
    v19 = __clz(__rbit64(v7)) | (v10 << 6);
    v20 = *(*(v24 + 48) + v19);
    v21 = (*(v24 + 56) + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    if (v20 > 5)
    {
      v11 = 0x44494C44746F6F72;
      if (v20 != 10)
      {
        v11 = 0x6574617473;
      }

      v12 = 0xE800000000000000;
      if (v20 != 10)
      {
        v12 = 0xE500000000000000;
      }

      if (v20 == 9)
      {
        v11 = 0x656372756F736572;
        v12 = 0xEA00000000004449;
      }

      v13 = 0x746E6569746170;
      if (v20 != 7)
      {
        v13 = 0x5468736572666572;
      }

      v14 = 0xE700000000000000;
      if (v20 != 7)
      {
        v14 = 0xEC0000006E656B6FLL;
      }

      if (v20 == 6)
      {
        v13 = 0xD000000000000015;
        v14 = 0x8000000251C89BD0;
      }

      v15 = v20 <= 8;
    }

    else
    {
      v11 = 0xD000000000000011;
      if (v20 == 4)
      {
        v11 = 1734431845;
      }

      v12 = 0x8000000251C89BB0;
      v14 = 0xE400000000000000;
      if (v20 == 4)
      {
        v12 = 0xE400000000000000;
      }

      if (v20 == 3)
      {
        v11 = 0xD000000000000015;
        v12 = 0x8000000251C89B90;
      }

      v13 = 0x6553746E65696C63;
      if (v20 == 1)
      {
        v14 = 0xEC00000074657263;
      }

      else
      {
        v13 = 1701080931;
      }

      if (!v20)
      {
        v13 = 0x4449746E65696C63;
        v14 = 0xE800000000000000;
      }

      v15 = v20 <= 2;
    }

    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = v11;
    }

    if (v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = v12;
    }

    v7 &= v7 - 1;

    MEMORY[0x25308CDA0](v16, v17);

    MEMORY[0x25308CDA0](32125, 0xE200000000000000);
    sub_251AD87E0();
    a2 = sub_251C715A4();
  }

  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v8)
    {

      return a2;
    }

    v7 = *(v4 + 8 * v18);
    ++v10;
    if (v7)
    {
      v10 = v18;
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

id sub_251C283DC()
{
  v1 = v0;
  sub_251C291E4(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v40 - v4;
  v6 = type metadata accessor for EUDCCPublicKey();
  v7 = v0 + *(v6 + 28);
  if (*(v7 + 13))
  {
    v8 = v6;
    v9 = *(v7 + 12);
    v10 = sub_251C6FA54();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_251C6FA44();
    v13 = *(v7 + 5);
    v14 = *(v7 + 7);
    v57 = *(v7 + 6);
    v58 = v14;
    v15 = *(v7 + 1);
    v16 = *(v7 + 3);
    v53 = *(v7 + 2);
    v54 = v16;
    v17 = *(v7 + 3);
    v18 = *(v7 + 5);
    v55 = *(v7 + 4);
    v56 = v18;
    v19 = *(v7 + 1);
    v52[0] = *v7;
    v52[1] = v19;
    v20 = *(v7 + 7);
    v49 = v57;
    v50 = v20;
    v45 = v53;
    v46 = v17;
    v47 = v55;
    v48 = v13;
    v59 = *(v7 + 16);
    v51 = *(v7 + 16);
    v43 = v52[0];
    v44 = v15;
    sub_251BC6298(v52, v41);
    sub_251C29790();
    v25 = sub_251C6FA34();
    v27 = v26;
    v41[6] = v49;
    v41[7] = v50;
    v42 = v51;
    v41[2] = v45;
    v41[3] = v46;
    v41[4] = v47;
    v41[5] = v48;
    v41[0] = v43;
    v41[1] = v44;
    sub_251BC62D0(v41);

    v28 = *(v8 + 20);
    sub_251AC553C(v1 + *(v8 + 24), v5);
    v40[1] = *v1;
    v29 = v1[1];
    sub_251A858C4(v25, v27);
    v30 = sub_251C70EE4();
    v31 = sub_251C6FF94();
    v32 = sub_251C70014();
    v33 = *(v32 - 8);
    v34 = 0;
    if ((*(v33 + 48))(v5, 1, v32) != 1)
    {
      v34 = sub_251C6FF94();
      (*(v33 + 8))(v5, v32);
    }

    v35 = objc_allocWithZone(MEMORY[0x277D124A0]);
    v36 = sub_251C70EE4();
    v37 = sub_251C6FEC4();
    sub_251A83028(v25, v27);
    v38 = [v35 initWithKeyID:v30 added:v31 removed:v34 source:v36 jwkData:v37];

    sub_251A83028(v25, v27);
    return v38;
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v21 = sub_251C70764();
    __swift_project_value_buffer(v21, qword_2813E8130);
    v22 = sub_251C70744();
    v23 = sub_251C713B4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      MEMORY[0x25308E2B0](v24, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_251C28964()
{
  if (*v0)
  {
    result = 1937335659;
  }

  else
  {
    result = 118;
  }

  *v0;
  return result;
}

uint64_t sub_251C2898C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 118 && a2 == 0xE100000000000000 || (sub_251C719D4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_251C719D4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_251C28A60(uint64_t a1)
{
  v2 = sub_251C28CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C28A9C(uint64_t a1)
{
  v2 = sub_251C28CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EUDCCPublicKeys.encode(to:)(void *a1)
{
  sub_251C29D00(0, &qword_27F47C6E0, sub_251C28CFC, &type metadata for EUDCCPublicKeys.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v14 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C28CFC();
  sub_251C71B14();
  v18 = 0;
  v11 = v15;
  sub_251C71954();
  if (!v11)
  {
    v16 = v14;
    v17 = 1;
    sub_251C291E4(0, &qword_27F47C6F0, type metadata accessor for EUDCCPublicKey, MEMORY[0x277D83940]);
    sub_251C29000(&qword_27F47C6F8, &qword_27F47C700);
    sub_251C71964();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_251C28CFC()
{
  result = qword_27F47C6E8;
  if (!qword_27F47C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C6E8);
  }

  return result;
}

uint64_t type metadata accessor for EUDCCPublicKey()
{
  result = qword_27F47C740;
  if (!qword_27F47C740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EUDCCPublicKeys.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  sub_251C29D00(0, &qword_27F47C708, sub_251C28CFC, &type metadata for EUDCCPublicKeys.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C28CFC();
  sub_251C71B04();
  if (!v2)
  {
    v11 = v6;
    v12 = v16[0];
    v18 = 0;
    v13 = sub_251C718C4();
    sub_251C291E4(0, &qword_27F47C6F0, type metadata accessor for EUDCCPublicKey, MEMORY[0x277D83940]);
    v17 = 1;
    sub_251C29000(&qword_27F47C710, &qword_27F47C718);
    sub_251C718D4();
    (*(v11 + 8))(v9, v5);
    v15 = v16[1];
    *v12 = v13;
    v12[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_251C29000(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_251C291E4(255, &qword_27F47C6F0, type metadata accessor for EUDCCPublicKey, MEMORY[0x277D83940]);
    sub_251C29D68(a2, type metadata accessor for EUDCCPublicKey);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EUDCCPublicKey.source.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EUDCCPublicKey.added.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EUDCCPublicKey() + 20);
  v4 = sub_251C70014();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EUDCCPublicKey.removed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EUDCCPublicKey() + 24);

  return sub_251AC553C(v3, a1);
}

void sub_251C291E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t EUDCCPublicKey.jwk.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EUDCCPublicKey() + 28);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v24 = *(v3 + 128);
  *(a1 + 128) = *(v3 + 128);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_251BC6298(v17, v16);
}

uint64_t sub_251C292EC()
{
  v1 = 0x656372756F73;
  v2 = 0x6465766F6D6572;
  if (*v0 != 2)
  {
    v2 = 7042922;
  }

  if (*v0)
  {
    v1 = 0x6465646461;
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

uint64_t sub_251C29358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251C2A258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251C29380(uint64_t a1)
{
  v2 = sub_251C2973C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C293BC(uint64_t a1)
{
  v2 = sub_251C2973C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EUDCCPublicKey.encode(to:)(void *a1)
{
  v2 = v1;
  sub_251C29D00(0, &qword_27F47C720, sub_251C2973C, &type metadata for EUDCCPublicKey.CodingKeys, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C2973C();
  sub_251C71B14();
  v11 = *v2;
  v12 = v2[1];
  LOBYTE(v41[0]) = 0;
  v13 = v29;
  sub_251C71934();
  if (v13)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v29 = v6;
  v15 = type metadata accessor for EUDCCPublicKey();
  v16 = v15[5];
  LOBYTE(v41[0]) = 1;
  sub_251C70014();
  sub_251C29D68(&qword_2813E7510, MEMORY[0x277CC9578]);
  sub_251C71964();
  v17 = v15[6];
  v50 = 2;
  sub_251C71924();
  v18 = v2 + v15[7];
  v19 = *(v18 + 5);
  v20 = *(v18 + 7);
  v46 = *(v18 + 6);
  v47 = v20;
  v21 = *(v18 + 1);
  v22 = *(v18 + 3);
  v42 = *(v18 + 2);
  v43 = v22;
  v23 = *(v18 + 3);
  v24 = *(v18 + 5);
  v44 = *(v18 + 4);
  v45 = v24;
  v25 = *(v18 + 1);
  v41[0] = *v18;
  v41[1] = v25;
  v26 = *(v18 + 7);
  v38 = v46;
  v39 = v26;
  v34 = v42;
  v35 = v23;
  v36 = v44;
  v37 = v19;
  v48 = *(v18 + 16);
  v40 = *(v18 + 16);
  v32 = v41[0];
  v33 = v21;
  v49 = 3;
  sub_251BC6298(v41, v30);
  sub_251C29790();
  sub_251C71964();
  v27 = v29;
  v30[6] = v38;
  v30[7] = v39;
  v31 = v40;
  v30[2] = v34;
  v30[3] = v35;
  v30[4] = v36;
  v30[5] = v37;
  v30[0] = v32;
  v30[1] = v33;
  sub_251BC62D0(v30);
  return (*(v27 + 8))(v9, v5);
}

unint64_t sub_251C2973C()
{
  result = qword_27F47C728;
  if (!qword_27F47C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C728);
  }

  return result;
}

unint64_t sub_251C29790()
{
  result = qword_27F47C730;
  if (!qword_27F47C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C730);
  }

  return result;
}

uint64_t EUDCCPublicKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_251C291E4(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = v29 - v5;
  v33 = sub_251C70014();
  v32 = *(v33 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v33);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C29D00(0, &qword_27F47C738, sub_251C2973C, &type metadata for EUDCCPublicKey.CodingKeys, MEMORY[0x277D844C8]);
  v36 = v9;
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - v11;
  v13 = type metadata accessor for EUDCCPublicKey();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C2973C();
  v35 = v12;
  v18 = v37;
  sub_251C71B04();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v32;
  v20 = v33;
  LOBYTE(v38) = 0;
  *v16 = sub_251C718B4();
  v16[1] = v21;
  v37 = v21;
  LOBYTE(v38) = 1;
  v29[1] = sub_251C29D68(&qword_2813E7508, MEMORY[0x277CC9578]);
  sub_251C718D4();
  (*(v19 + 32))(v16 + v13[5], v8, v20);
  LOBYTE(v38) = 2;
  v22 = v31;
  sub_251C718A4();
  sub_251AC55A0(v22, v16 + v13[6]);
  v47 = 3;
  sub_251BC47D0();
  sub_251C718D4();
  (*(v34 + 8))(v35, v36);
  v23 = v16 + v13[7];
  v24 = v45;
  *(v23 + 6) = v44;
  *(v23 + 7) = v24;
  *(v23 + 16) = v46;
  v25 = v41;
  *(v23 + 2) = v40;
  *(v23 + 3) = v25;
  v26 = v43;
  *(v23 + 4) = v42;
  *(v23 + 5) = v26;
  v27 = v39;
  *v23 = v38;
  *(v23 + 1) = v27;
  sub_251C29DB0(v16, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_251C29E14(v16);
}

void sub_251C29D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_251C29D68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251C29DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EUDCCPublicKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C29E14(uint64_t a1)
{
  v2 = type metadata accessor for EUDCCPublicKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C29EA0(uint64_t a1, int a2)
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

uint64_t sub_251C29EE8(uint64_t result, int a2, int a3)
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

void sub_251C29F5C()
{
  sub_251C70014();
  if (v0 <= 0x3F)
  {
    sub_251C291E4(319, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_251C2A04C()
{
  result = qword_27F47C750;
  if (!qword_27F47C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C750);
  }

  return result;
}

unint64_t sub_251C2A0A4()
{
  result = qword_27F47C758;
  if (!qword_27F47C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C758);
  }

  return result;
}

unint64_t sub_251C2A0FC()
{
  result = qword_27F47C760;
  if (!qword_27F47C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C760);
  }

  return result;
}

unint64_t sub_251C2A154()
{
  result = qword_27F47C768;
  if (!qword_27F47C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C768);
  }

  return result;
}

unint64_t sub_251C2A1AC()
{
  result = qword_27F47C770;
  if (!qword_27F47C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C770);
  }

  return result;
}

unint64_t sub_251C2A204()
{
  result = qword_27F47C778;
  if (!qword_27F47C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C778);
  }

  return result;
}

uint64_t sub_251C2A258(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_251C719D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465646461 && a2 == 0xE500000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7042922 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_251C719D4();

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

uint64_t sub_251C2A3B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_251C2A3FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_251C2A45C(uint64_t (*a1)(_BOOL8 *))
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  result = [result getPairedDevices];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = result;
  sub_251A8223C(0, &qword_27F47C808, 0x277D2BCC8);
  v5 = sub_251C71154();

  if (v5 >> 62)
  {
    v6 = sub_251C717F4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v6 != 0;
  v8 = 0;
  return a1(&v7);
}

uint64_t sub_251C2A560@<X0>(uint64_t *a1@<X8>)
{
  result = sub_251C71384();
  *a1 = result;
  return result;
}

uint64_t sub_251C2A58C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_opt_self() predicateForUserDomainConceptsWithTypeIdentifier_];
  v9 = *v4;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4 & 1;
  *(v10 + 40) = a2;
  *(v10 + 48) = v9;
  sub_251C2C330();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  v14 = v9;
  v15 = v8;
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C850, sub_251C2C330);
  sub_251C70A94();

  sub_251BD5134();
  sub_251C2BE00(&qword_27F47BC58, sub_251BD5134);
  v16 = sub_251C70A94();

  return v16;
}

uint64_t sub_251C2A734(uint64_t a1)
{
  v3 = [objc_opt_self() predicateForListUserDomainConceptWithListType_];
  v4 = *v1;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = 1;
  *(v5 + 32) = 0;
  *(v5 + 40) = a1;
  *(v5 + 48) = v4;
  sub_251C2C330();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = v4;
  v10 = v3;
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C850, sub_251C2C330);
  sub_251C70A94();

  sub_251BD5134();
  sub_251C2BE00(&qword_27F47BC58, sub_251BD5134);
  v11 = sub_251C70A94();

  return v11;
}

uint64_t sub_251C2A8D0()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v20[0] = 0;
  v2 = [v1 biologicalSexWithError_];
  if (v2)
  {
    v3 = v2;
    v4 = v20[0];
    v5 = [v3 biologicalSex];

    if (v5 > 3)
    {
      result = 24942;
    }

    else
    {
      result = *&aNotSet_0[8 * v5];
      v7 = qword_251C86F60[v5];
    }
  }

  else
  {
    v8 = v20[0];
    v9 = sub_251C6FD84();

    swift_willThrow();
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v10 = sub_251C70764();
    __swift_project_value_buffer(v10, qword_2813E8130);
    v11 = v9;
    v12 = sub_251C70744();
    v13 = sub_251C713D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_251C71A44();
      v18 = sub_251B10780(v16, v17, v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_251A6C000, v12, v13, "Could not get the biologicalSex. Error: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x25308E2B0](v15, -1, -1);
      MEMORY[0x25308E2B0](v14, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251C2AB20@<X0>(uint64_t a1@<X8>)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = sub_251C6FC94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v8 = *v1;
  v28[0] = 0;
  v9 = [v8 dateOfBirthComponentsWithError_];
  v10 = v28[0];
  if (v9)
  {
    v11 = v9;
    sub_251C6FBD4();
    v12 = v10;

    sub_251C6FBF4();
    result = (*(v4 + 8))(v7, v3);
  }

  else
  {
    v14 = v28[0];
    v15 = sub_251C6FD84();

    swift_willThrow();
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v16 = sub_251C70764();
    __swift_project_value_buffer(v16, qword_2813E8130);
    v17 = v15;
    v18 = sub_251C70744();
    v19 = sub_251C713D4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_251C71A44();
      v24 = sub_251B10780(v22, v23, v28);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_251A6C000, v18, v19, "Could not get the DOB. Error: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x25308E2B0](v21, -1, -1);
      MEMORY[0x25308E2B0](v20, -1, -1);
    }

    else
    {
    }

    v25 = sub_251C70014();
    result = (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251C2AE10()
{
  v1 = sub_251C71334();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_251C71364();
  sub_251C2BE00(&qword_27F47C840, MEMORY[0x277D11378]);
  v7 = sub_251C70A94();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_251C2AF44()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  sub_251C2C2AC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = v1;
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C838, sub_251C2C2AC);
  v6 = sub_251C70A94();

  return v6;
}

uint64_t sub_251C2B028(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;
  sub_251C2C208();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = v5;
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C828, sub_251C2C208);
  v11 = sub_251C70A94();

  return v11;
}

uint64_t sub_251C2B11C(void *a1, uint64_t a2, void *a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  sub_251C2C118();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = v7;
  v13 = a1;
  v14 = a3;
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C818, sub_251C2C118);
  v15 = sub_251C70A94();

  return v15;
}

uint64_t sub_251C2B224()
{
  sub_251C2C0A4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C800, sub_251C2C0A4);
  v3 = sub_251C70A94();

  return v3;
}

uint64_t sub_251C2B2E4()
{
  v1 = sub_251C71304();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_251C71314();
  sub_251C2BE00(&qword_27F47C7F0, MEMORY[0x277D11338]);
  v7 = sub_251C70A94();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_251C2B434()
{
  v1 = sub_251C71324();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_251C71354();
  sub_251C2BE00(&qword_27F47C7E8, MEMORY[0x277D11368]);
  v7 = sub_251C70A94();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_251C2B590()
{
  v1 = sub_251C71344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_251C71374();
  sub_251C2BE00(&qword_27F47C7E0, MEMORY[0x277D11388]);
  v7 = sub_251C70A94();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_251C2B6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = a8;
  v23[1] = a3;
  v23[4] = a6;
  v23[5] = a7;
  v23[2] = a4;
  v23[3] = a5;
  v9 = sub_251C71394();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C2BFE8();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v8;
  sub_251C713A4();
  sub_251A8223C(0, &qword_27F479E28, 0x277CCDA58);
  sub_251C2BE00(&qword_27F47C7D0, MEMORY[0x277D11398]);
  sub_251C70AE4();
  (*(v10 + 8))(v13, v9);
  sub_251C2BE00(&qword_27F47C7D8, sub_251C2BFE8);
  v21 = sub_251C70A94();
  (*(v16 + 8))(v19, v15);
  return v21;
}

uint64_t sub_251C2B95C(void *a1)
{
  sub_251C2BE48();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  sub_251BBC168();
  sub_251C2BE00(&qword_27F47C7A8, sub_251BBC168);
  v11 = v9;
  v12 = a1;
  sub_251C70A74();
  sub_251C2BE00(&qword_27F47C7B0, sub_251C2BE48);
  v13 = sub_251C70A94();
  (*(v5 + 8))(v8, v4);
  v16[1] = v13;
  sub_251C2BF4C();
  sub_251C2BE00(&qword_27F47C7C0, sub_251C2BF4C);
  v14 = sub_251C70A94();

  return v14;
}

uint64_t sub_251C2BB6C()
{
  v1 = *(v0 + 8);
  sub_251C71424();
  sub_251C2BD90();
  sub_251C2BE00(&qword_27F47C798, sub_251C2BD90);
  v2 = sub_251C70A94();

  return v2;
}

uint64_t sub_251C2BC08()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  sub_251C2BCF4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = v1;
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C788, sub_251C2BCF4);
  v6 = sub_251C70A94();

  return v6;
}

void sub_251C2BCF4()
{
  if (!qword_27F47C780)
  {
    sub_251C2BEDC(255, &qword_27F4797E8, &qword_27F4797F0, 0x277D11570, MEMORY[0x277D83940]);
    sub_251A82284();
    v0 = sub_251C70A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C780);
    }
  }
}

void sub_251C2BD90()
{
  if (!qword_27F47C790)
  {
    sub_251AD5648();
    sub_251A82284();
    v0 = sub_251C70A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C790);
    }
  }
}

uint64_t sub_251C2BE00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251C2BE48()
{
  if (!qword_27F47C7A0)
  {
    sub_251BBC168();
    sub_251C2BE00(&qword_27F47C7A8, sub_251BBC168);
    v0 = sub_251C70A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C7A0);
    }
  }
}

void sub_251C2BEDC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_251A8223C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251C2BF4C()
{
  if (!qword_27F47C7B8)
  {
    sub_251C2BEDC(255, &qword_27F47B938, &qword_27F479F70, 0x277CCD1B0, MEMORY[0x277D83D88]);
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C7B8);
    }
  }
}

void sub_251C2BFE8()
{
  if (!qword_27F47C7C8)
  {
    sub_251C71394();
    sub_251A8223C(255, &qword_27F479E28, 0x277CCDA58);
    sub_251C2BE00(&qword_27F47C7D0, MEMORY[0x277D11398]);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C7C8);
    }
  }
}

void sub_251C2C0A4()
{
  if (!qword_27F47C7F8)
  {
    sub_251A82284();
    v0 = sub_251C70A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C7F8);
    }
  }
}

void sub_251C2C118()
{
  if (!qword_27F47C810)
  {
    sub_251C2C1AC(255, &qword_2813E1E38, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    sub_251A82284();
    v0 = sub_251C70A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C810);
    }
  }
}

void sub_251C2C1AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_251C2C208()
{
  if (!qword_27F47C820)
  {
    sub_251C2BEDC(255, &qword_27F47C5F0, &qword_27F479FB8, 0x277D11988, MEMORY[0x277D83940]);
    sub_251A82284();
    v0 = sub_251C70A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C820);
    }
  }
}

void sub_251C2C2AC()
{
  if (!qword_27F47C830)
  {
    sub_251A8223C(255, &qword_27F47C508, 0x277D11960);
    sub_251A82284();
    v0 = sub_251C70A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C830);
    }
  }
}

void sub_251C2C330()
{
  if (!qword_27F47C848)
  {
    sub_251C2BEDC(255, &qword_27F47BC40, &qword_27F47BC48, 0x277CCDAF0, MEMORY[0x277D83940]);
    sub_251A82284();
    v0 = sub_251C70A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C848);
    }
  }
}

uint64_t objectdestroy_20Tm_1()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_251C2C438()
{
  result = qword_27F47C858;
  if (!qword_27F47C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C858);
  }

  return result;
}

id sub_251C2C490()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    sub_251C70F14();
    v1 = sub_251C70EE4();
  }

  v2 = *MEMORY[0x277CCC918];
  v3 = sub_251C70F14();
  v5 = v4;
  if (v3 == sub_251C70F14() && v5 == v6)
  {

    goto LABEL_10;
  }

  v8 = sub_251C719D4();
  v9 = v1;

  if (v8)
  {

LABEL_10:
    v10 = [objc_opt_self() kilocalorieUnit];
    return v10;
  }

  v12 = *MEMORY[0x277CCC920];
  v13 = sub_251C70F14();
  v15 = v14;
  if (v13 == sub_251C70F14() && v15 == v16)
  {

    goto LABEL_19;
  }

  v18 = sub_251C719D4();

  if (v18)
  {

LABEL_19:
    v10 = [objc_opt_self() minuteUnit];
    return v10;
  }

  v19 = *MEMORY[0x277CCC978];
  v20 = sub_251C70F14();
  v22 = v21;
  if (v20 == sub_251C70F14() && v22 == v23)
  {
    goto LABEL_22;
  }

  v24 = sub_251C719D4();

  if (v24)
  {
    goto LABEL_24;
  }

  v25 = *MEMORY[0x277CCC980];
  v26 = sub_251C70F14();
  v28 = v27;
  if (v26 == sub_251C70F14() && v28 == v29)
  {
LABEL_22:

LABEL_25:
    v10 = [objc_opt_self() millimeterOfMercuryUnit];
    return v10;
  }

  v30 = sub_251C719D4();

  if (v30)
  {
LABEL_24:

    goto LABEL_25;
  }

  v31 = *MEMORY[0x277CCC990];
  v32 = sub_251C70F14();
  v34 = v33;
  if (v32 == sub_251C70F14() && v34 == v35)
  {

LABEL_34:
    v10 = [objc_opt_self() poundUnit];
    return v10;
  }

  v36 = sub_251C719D4();

  if (v36)
  {

    goto LABEL_34;
  }

  v37 = *MEMORY[0x277CCC998];
  v38 = sub_251C70F14();
  v40 = v39;
  if (v38 == sub_251C70F14() && v40 == v41)
  {
    goto LABEL_40;
  }

  v42 = sub_251C719D4();

  if (v42)
  {
    goto LABEL_61;
  }

  v43 = *MEMORY[0x277CCCBE0];
  v44 = sub_251C70F14();
  v46 = v45;
  if (v44 == sub_251C70F14() && v46 == v47)
  {
    goto LABEL_40;
  }

  v48 = sub_251C719D4();

  if (v48)
  {
    goto LABEL_61;
  }

  v49 = *MEMORY[0x277CCCB90];
  v50 = sub_251C70F14();
  v52 = v51;
  if (v50 == sub_251C70F14() && v52 == v53)
  {
    goto LABEL_80;
  }

  v54 = sub_251C719D4();

  if (v54)
  {
LABEL_46:

LABEL_47:
    v55 = sub_251C70EE4();
    v56 = [objc_opt_self() unitFromString_];

    return v56;
  }

  v57 = *MEMORY[0x277CCCC20];
  v58 = sub_251C70F14();
  v60 = v59;
  if (v58 == sub_251C70F14() && v60 == v61)
  {
    goto LABEL_80;
  }

  v62 = sub_251C719D4();

  if (v62)
  {
    goto LABEL_46;
  }

  v63 = *MEMORY[0x277CCCCB8];
  v64 = sub_251C70F14();
  v66 = v65;
  if (v64 == sub_251C70F14() && v66 == v67)
  {
    goto LABEL_80;
  }

  v68 = sub_251C719D4();

  if (v68)
  {
    goto LABEL_46;
  }

  v69 = *MEMORY[0x277CCCC98];
  v70 = sub_251C70F14();
  v72 = v71;
  if (v70 == sub_251C70F14() && v72 == v73)
  {
    goto LABEL_80;
  }

  v74 = sub_251C719D4();

  if (v74)
  {
    goto LABEL_46;
  }

  v75 = *MEMORY[0x277CCCC70];
  v76 = sub_251C70F14();
  v78 = v77;
  if (v76 == sub_251C70F14() && v78 == v79)
  {
LABEL_40:

LABEL_62:
    v10 = [objc_opt_self() countUnit];
    return v10;
  }

  v80 = sub_251C719D4();

  if (v80)
  {
LABEL_61:

    goto LABEL_62;
  }

  v81 = *MEMORY[0x277CCC970];
  v82 = sub_251C70F14();
  v84 = v83;
  if (v82 == sub_251C70F14() && v84 == v85)
  {
    goto LABEL_80;
  }

  v86 = sub_251C719D4();

  if (v86)
  {
    goto LABEL_46;
  }

  v87 = *MEMORY[0x277CCCC60];
  v88 = sub_251C70F14();
  v90 = v89;
  if (v88 == sub_251C70F14() && v90 == v91)
  {
    goto LABEL_80;
  }

  v92 = sub_251C719D4();

  if (v92)
  {
    goto LABEL_46;
  }

  v93 = *MEMORY[0x277CCCC68];
  v94 = sub_251C70F14();
  v96 = v95;
  if (v94 == sub_251C70F14() && v96 == v97)
  {
    goto LABEL_80;
  }

  v98 = sub_251C719D4();

  if (v98)
  {
    goto LABEL_46;
  }

  v99 = *MEMORY[0x277CCCCC0];
  v100 = sub_251C70F14();
  v102 = v101;
  if (v100 == sub_251C70F14() && v102 == v103)
  {
    goto LABEL_80;
  }

  v104 = sub_251C719D4();

  if (v104)
  {
    goto LABEL_46;
  }

  v105 = *MEMORY[0x277CCCC58];
  v106 = sub_251C70F14();
  v108 = v107;
  if (v106 == sub_251C70F14() && v108 == v109)
  {
LABEL_80:

    goto LABEL_47;
  }

  v110 = sub_251C719D4();

  if (v110)
  {
    goto LABEL_46;
  }

  v111 = *MEMORY[0x277CCCCC8];
  v112 = sub_251C70F14();
  v114 = v113;
  if (v112 == sub_251C70F14() && v114 == v115)
  {

LABEL_87:
    v10 = [objc_opt_self() inchUnit];
    return v10;
  }

  v116 = sub_251C719D4();

  if (v116)
  {

    goto LABEL_87;
  }

  v117 = *MEMORY[0x277CCCCB0];
  v118 = sub_251C70F14();
  v120 = v119;
  if (v118 == sub_251C70F14() && v120 == v121)
  {
    goto LABEL_90;
  }

  v122 = sub_251C719D4();

  if (v122)
  {
    goto LABEL_95;
  }

  v123 = *MEMORY[0x277CCCCA8];
  v124 = sub_251C70F14();
  v126 = v125;
  if (v124 == sub_251C70F14() && v126 == v127)
  {
LABEL_90:

LABEL_96:
    v10 = [objc_opt_self() percentUnit];
    return v10;
  }

  v128 = sub_251C719D4();

  if (v128)
  {
LABEL_95:

    goto LABEL_96;
  }

  v129 = *MEMORY[0x277CCC948];
  v130 = sub_251C70F14();
  v132 = v131;
  v133 = sub_251C70F14();
  v135 = v134;

  if (v130 == v133 && v132 == v135)
  {

    goto LABEL_96;
  }

  v136 = sub_251C719D4();

  if (v136)
  {
    goto LABEL_96;
  }

  return 0;
}

uint64_t sub_251C2D20C()
{
  v1 = [v0 code];
  if (v1 == 118)
  {
    sub_251A82418();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_251C86F80;
    v28 = objc_opt_self();
    v29 = [v28 _quantityWithBeatsPerMinute_];
    v30 = [v28 _quantityWithBeatsPerMinute_];
    v31 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v29 maximum:v30 isMinimumInclusive:1 isMaximumInclusive:0];

    *(v27 + 32) = v31;
    v32 = [v28 _quantityWithBeatsPerMinute_];
    v33 = [v28 _quantityWithBeatsPerMinute_];
    v34 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v32 maximum:v33 isMinimumInclusive:1 isMaximumInclusive:0];

    *(v27 + 40) = v34;
    v35 = [v28 _quantityWithBeatsPerMinute_];
    v36 = [v28 _quantityWithBeatsPerMinute_];
    v37 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v35 maximum:v36 isMinimumInclusive:1 isMaximumInclusive:0];

    *(v27 + 48) = v37;
    v38 = [v28 _quantityWithBeatsPerMinute_];
    v39 = [v28 _quantityWithBeatsPerMinute_];
    v40 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v38 maximum:v39 isMinimumInclusive:1 isMaximumInclusive:0];

    *(v27 + 56) = v40;
    v41 = [v28 _quantityWithBeatsPerMinute_];
    v42 = [v28 _quantityWithBeatsPerMinute_];
    v43 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v41 maximum:v42 isMinimumInclusive:1 isMaximumInclusive:0];

    result = v27;
    *(v27 + 64) = v43;
  }

  else if (v1 == 15)
  {
    v2 = sub_251C70EE4();
    v3 = [objc_opt_self() unitFromString_];

    sub_251A82418();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_251C86F80;
    v5 = objc_opt_self();
    v6 = v3;
    v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
    v8 = [v5 quantityWithUnit:v6 doubleValue:55.0];

    v9 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v7 maximum:v8 isMinimumInclusive:1 isMaximumInclusive:0];
    *(v4 + 32) = v9;
    v10 = v6;
    v11 = [v5 quantityWithUnit:v10 doubleValue:55.0];
    v12 = [v5 quantityWithUnit:v10 doubleValue:70.0];

    v13 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v11 maximum:v12 isMinimumInclusive:1 isMaximumInclusive:0];
    *(v4 + 40) = v13;
    v14 = v10;
    v15 = [v5 quantityWithUnit:v14 doubleValue:70.0];
    v16 = [v5 quantityWithUnit:v14 doubleValue:180.0];

    v17 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v15 maximum:v16 isMinimumInclusive:1 isMaximumInclusive:1];
    *(v4 + 48) = v17;
    v18 = v14;
    v19 = [v5 quantityWithUnit:v18 doubleValue:180.0];
    v20 = [v5 quantityWithUnit:v18 doubleValue:250.0];

    v21 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v19 maximum:v20 isMinimumInclusive:0 isMaximumInclusive:0];
    *(v4 + 56) = v21;
    v22 = v18;
    v23 = [v5 quantityWithUnit:v22 doubleValue:250.0];
    v24 = [v5 quantityWithUnit:v22 doubleValue:1.79769313e308];

    v25 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v23 maximum:v24 isMinimumInclusive:1 isMaximumInclusive:0];
    *(v4 + 64) = v25;

    return v4;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_251C2D814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  sub_251C2F708();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();
  sub_251C2F7A4(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C2D940, 0, 0);
}

uint64_t sub_251C2D940()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = **(v0 + 136);
    v4 = v1 + 32;
    v5 = sub_251C71214();
    v6 = *(v5 - 8);
    v8 = *(v6 + 56);
    v6 += 56;
    v7 = v8;
    v36 = (v6 - 8);
    v37 = v8;
    v38 = v5;
    v35 = (v6 - 48);
    do
    {
      v10 = *(v0 + 152);
      v9 = *(v0 + 160);
      v7(*(v0 + 200), 1, 1, v5);
      sub_251A823B4(v4, v0 + 16);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v10;
      v11[5] = v9;
      sub_251A7E8D8((v0 + 16), (v11 + 6));

      v13 = swift_taskGroup_addPending();
      v14 = *(v0 + 200);
      if (v13)
      {
        v15 = *(v0 + 192);
        sub_251B346F4(v14, v15);
        v16 = (*v36)(v15, 1, v5);
        v17 = *(v0 + 192);
        if (v16 == 1)
        {
          sub_251B34758(*(v0 + 192));
        }

        else
        {
          sub_251C71204();
          (*v35)(v17, v5);
        }

        v18 = v3;
        if (*v12)
        {
          v19 = v11[3];
          v20 = *v12;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v21 = sub_251C711C4();
          v23 = v22;
          swift_unknownObjectRelease();
        }

        else
        {
          v21 = 0;
          v23 = 0;
        }

        sub_251C2F510(0, &qword_27F47C870, MEMORY[0x277D83D88]);

        if (v23 | v21)
        {
          v24 = v0 + 56;
          *(v0 + 56) = 0;
          *(v0 + 64) = 0;
          *(v0 + 72) = v21;
          *(v0 + 80) = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = *(v0 + 200);
        *(v0 + 88) = 1;
        *(v0 + 96) = v24;
        v3 = v18;
        *(v0 + 104) = v18;
        swift_task_create();

        sub_251B34758(v25);
        v7 = v37;
        v5 = v38;
      }

      else
      {
        sub_251B34758(v14);
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v26 = *(v0 + 184);
  v27 = *(v0 + 136);
  v28 = MEMORY[0x277D84F90];
  *(v0 + 112) = MEMORY[0x277D84F90];
  v29 = *v27;
  sub_251C2F510(0, &qword_27F47C870, MEMORY[0x277D83D88]);
  sub_251AA98B0(0, &qword_2813E1C30);
  sub_251C71234();
  *(v0 + 208) = v28;
  v30 = *(MEMORY[0x277D85828] + 4);
  v31 = swift_task_alloc();
  *(v0 + 216) = v31;
  *v31 = v0;
  v31[1] = sub_251C2DCEC;
  v32 = *(v0 + 184);
  v33 = *(v0 + 168);

  return MEMORY[0x2822004E8](v0 + 120, 0, 0, v33, v0 + 128);
}

uint64_t sub_251C2DCEC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 208);

    v5 = sub_251C2DFAC;
  }

  else
  {
    v5 = sub_251C2DE04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251C2DE04()
{
  v1 = v0[15];
  if (v1 == 1)
  {
    v8 = v0[24];
    v9 = v0[25];
    (*(v0[22] + 8))(v0[23], v0[21]);

    v10 = v0[1];
    v11 = v0[26];

    return v10(v11);
  }

  else
  {
    if (v1)
    {
      v2 = v0 + 14;
      v3 = v1;
      MEMORY[0x25308CEE0]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_251C71174();
      }

      sub_251C71194();
      sub_251C2FB30(v1);
      v0[26] = v0[14];
    }

    v4 = *(MEMORY[0x277D85828] + 4);
    v5 = swift_task_alloc();
    v0[27] = v5;
    *v5 = v0;
    v5[1] = sub_251C2DCEC;
    v6 = v0[23];
    v7 = v0[21];

    return MEMORY[0x2822004E8](v0 + 15, 0, 0, v7, v0 + 16);
  }
}

uint64_t sub_251C2DFAC()
{
  v1 = v0[24];
  v2 = v0[25];
  (*(v0[22] + 8))(v0[23], v0[21]);
  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_251C2E048(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_251C2E068, 0, 0);
}

uint64_t sub_251C2E068()
{
  v1 = sub_251BB5890(*(*(v0 + 112) + 8), *(*(v0 + 112) + 16));
  *(v0 + 120) = v1;
  v2 = v1;
  v3 = *(v0 + 104);
  sub_251C2F424(*(v0 + 112), v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 128) = v4;
  v5 = *(v0 + 64);
  *(v4 + 48) = *(v0 + 48);
  *(v4 + 64) = v5;
  v6 = *(v0 + 80);
  v7 = *(v0 + 32);
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v7;
  *(v4 + 80) = v6;
  *(v4 + 88) = v3;
  *(v0 + 88) = v2;
  sub_251C2F510(0, &qword_27F47C870, MEMORY[0x277D83D88]);
  v9 = v8;
  sub_251C2F510(0, &qword_27F47C880, MEMORY[0x277D83940]);
  v11 = v10;
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  v12[2] = v0 + 88;
  v12[3] = &unk_251C86FD8;
  v12[4] = v4;
  v13 = *(MEMORY[0x277D859B8] + 4);
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = sub_251C2E25C;

  return MEMORY[0x282200740](v0 + 96, v9, v11, 0, 0, &unk_251C86FE8, v12, v9);
}

uint64_t sub_251C2E25C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;

  v5 = *(v2 + 136);
  if (v0)
  {

    v6 = nullsub_1;
  }

  else
  {

    v6 = sub_251C2E3A4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_251C2E3A4()
{
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[12];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_251C2E414(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_251C70374();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C2E4D4, 0, 0);
}

uint64_t sub_251C2E4D4()
{
  v16 = v0;
  if ([*(v0 + 64) options])
  {
    *(v0 + 104) = *(*(v0 + 72) + 64);
    sub_251C70344();
    sub_251C3159C(&qword_27F47C860, MEMORY[0x277D122C0]);
    v12 = sub_251C711C4();
    v11 = v13;
    *(v0 + 112) = v12;
    *(v0 + 120) = v13;
    v9 = sub_251C2E740;
    v10 = v12;
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v1 = sub_251C70764();
    __swift_project_value_buffer(v1, qword_2813E8130);
    v2 = sub_251C70744();
    v3 = sub_251C713F4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_251B10780(0xD000000000000026, 0x8000000251C86F80, &v15);
      _os_log_impl(&dword_251A6C000, v2, v3, "%s will not submit analytics, submission not enabled", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x25308E2B0](v5, -1, -1);
      MEMORY[0x25308E2B0](v4, -1, -1);
    }

    *(v0 + 144) = *(*(v0 + 72) + 64);
    sub_251C70344();
    sub_251C3159C(&qword_27F47C860, MEMORY[0x277D122C0]);
    v6 = sub_251C711C4();
    v8 = v7;
    v9 = sub_251C2EBB8;
    v10 = v6;
    v11 = v8;
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_251C2E740()
{
  v1 = v0[13];
  v0[16] = sub_251C70304();
  v0[17] = v2;

  return MEMORY[0x2822009F8](sub_251C2E7AC, 0, 0);
}

uint64_t sub_251C2E7AC()
{
  v26 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);

  v3 = sub_251C70744();
  v4 = sub_251C713B4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  if (v5)
  {
    v7 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    v0[6] = v7;
    v0[7] = v6;
    sub_251C719F4();
    v10 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v11 = sub_251C70F74();
    v13 = sub_251B10780(v11, v12, &v25);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_251A6C000, v3, v4, "Analytics to submit: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[12];
  sub_251C2F7A4(0, &qword_27F47C868, MEMORY[0x277D122E0], MEMORY[0x277D84560]);
  v15 = sub_251C70364();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_251C75800;
  v20 = v19 + v18;
  v21 = *(v16 + 104);
  v21(v20, *MEMORY[0x277D122D0], v15);
  v21(v20 + v17, *MEMORY[0x277D122D8], v15);
  sub_251C70354();

  v22 = v0[14];
  v23 = v0[15];

  return MEMORY[0x2822009F8](sub_251C2EAC0, v22, v23);
}

uint64_t sub_251C2EAC0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_251C70314();

  return MEMORY[0x2822009F8](sub_251C2EB40, 0, 0);
}

uint64_t sub_251C2EB40()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];

  v2 = v0[1];

  return v2();
}

uint64_t sub_251C2EBB8()
{
  v1 = v0[18];
  sub_251C70324();
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_251C2EC20(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v4 = swift_task_alloc();
  v2[28] = v4;
  *v4 = v2;
  v4[1] = sub_251C2ECBC;

  return sub_251C2FB40(a2);
}

uint64_t sub_251C2ECBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_251C2EE08;
  }

  else
  {
    *(v4 + 240) = a1;
    v7 = sub_251C2EDE4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_251C2EE08()
{
  v24 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = sub_251C70764();
  __swift_project_value_buffer(v3, qword_2813E8130);
  sub_251A823B4(v2, v0 + 16);
  v4 = v1;
  v5 = sub_251C70744();
  v6 = sub_251C713D4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 232);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_251B10780(0xD000000000000026, 0x8000000251C86F80, &v23);
    *(v9 + 12) = 2080;
    sub_251A823B4(v0 + 16, v0 + 56);
    sub_251A823B4(v0 + 56, v0 + 96);
    sub_251AA98B0(0, &qword_27F4798E0);
    sub_251C719F4();
    v11 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v12 = sub_251C70F74();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v15 = sub_251B10780(v12, v14, &v23);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    *(v0 + 200) = v8;
    v16 = v8;
    sub_251AA98B0(0, &qword_2813E1C30);
    sub_251C719F4();
    v17 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v18 = sub_251C70F74();
    v20 = sub_251B10780(v18, v19, &v23);

    *(v9 + 24) = v20;
    _os_log_impl(&dword_251A6C000, v5, v6, "%s failed to perform health cards issue request %s: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  **(v0 + 208) = 0;
  v21 = *(v0 + 8);

  return v21();
}

id sub_251C2F138(uint64_t *a1, uint64_t a2, double a3)
{
  v24 = a2;
  v5 = sub_251C6FE64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_251C70014();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v23);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C6FFF4();
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 40))(v15, v16);
  v17 = sub_251C6FDD4();
  (*(v6 + 8))(v9, v5);
  v18 = sub_251C70EE4();
  v19 = sub_251C6FF94();
  sub_251C6FF34();
  v21 = [v14 initWithRequestedURL:v17 resourceType:v18 interactionType:6 responseStatusCode:v24 requestEndTime:v19 requestDuration:0 hadError:v20 - a3 errorCode:0];

  (*(v10 + 8))(v13, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v21;
}

void sub_251C2F390()
{
  v0 = sub_251C70EE4();
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  v1 = sub_251C70E44();
  AnalyticsSendEvent();
}

uint64_t sub_251C2F45C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 88);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_251AF4F78;

  return sub_251C2EC20(a1, a2);
}

void sub_251C2F510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_251A8223C(255, &qword_27F47C878, 0x277D123B8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251C2F580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_251BD1064;

  return sub_251C2D814(a2, v9, a4, a5);
}

uint64_t sub_251C2F638(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_251B14FE8;

  return sub_251C2F580(a1, a2, v6, v7, v8);
}

void sub_251C2F708()
{
  if (!qword_27F47C888)
  {
    sub_251C2F510(255, &qword_27F47C870, MEMORY[0x277D83D88]);
    sub_251AA98B0(255, &qword_2813E1C30);
    v0 = sub_251C71254();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C888);
    }
  }
}

void sub_251C2F7A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251C2F808(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a1;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 32) = v9;
  *v9 = v6;
  v9[1] = sub_251C2F90C;

  return v11(v6 + 16, a6);
}

uint64_t sub_251C2F90C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_251C2FA40;
  }

  else
  {
    v3 = sub_251C2FA20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251C2FA58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_251B14FE8;

  return sub_251C2F808(a1, v4, v5, v6, v7, (v1 + 6));
}

void sub_251C2FB30(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_251C2FB40(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2[39] = a1;
  v2[40] = v1;
  v3 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  v2[41] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v5 = type metadata accessor for HTTPError();
  v2[43] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v7 = *(*(sub_251C70F64() - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v8 = sub_251C70014();
  v2[47] = v8;
  v9 = *(v8 - 8);
  v2[48] = v9;
  v10 = *(v9 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  sub_251C2F7A4(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[51] = swift_task_alloc();
  v13 = sub_251C70074();
  v2[52] = v13;
  v14 = *(v13 - 8);
  v2[53] = v14;
  v15 = *(v14 + 64) + 15;
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v16 = type metadata accessor for WebRequestResponseError(0);
  v2[56] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v18 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_251C2FDDC, 0, 0);
}

uint64_t sub_251C2FDDC()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[55];
  v2 = v0[40];
  sub_251C6FF44();
  v0[60] = v3;
  v4 = [v2[2] accountInformation];
  v0[61] = v4;
  v5 = *v2;
  v6 = [v4 accountIdentifier];
  sub_251C70054();

  v7 = swift_task_alloc();
  v0[62] = v7;
  *v7 = v0;
  v7[1] = sub_251C2FF10;
  v8 = v0[58];
  v9 = v0[55];
  v10 = v0[39];
  v11 = *MEMORY[0x277D85DE8];

  return sub_251C1603C((v0 + 10), v10, v9, (v2 + 3), v8);
}

uint64_t sub_251C2FF10()
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 496);
  v5 = *v1;

  v6 = v2[55];
  v7 = v2[53];
  v8 = v2[52];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);
    v12 = sub_251C30EEC;
  }

  else
  {
    v3[63] = v10;
    v3[64] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);
    v12 = sub_251C300C0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_251C300C0()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 312);
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  v3 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v3;
  sub_251A823B4(v1, v0 + 184);
  v4 = *(v0 + 72);
  if (v4)
  {
    v5 = [v4 statusCode];
  }

  else
  {
    v5 = 200;
  }

  v6 = *(v0 + 480);
  sub_251A8223C(0, &qword_27F47C890, 0x277D12460);
  v7 = sub_251C2F138((v0 + 184), v5, v6);
  *(v0 + 520) = v7;
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  *(v0 + 528) = v9;
  *(v0 + 536) = v8;
  v10 = *(v0 + 488);
  v11 = *(v0 + 320);
  if (v8 >> 60 == 15)
  {
    v12 = [v7 asErrorEndStateWithErrorCode_];
    *(v0 + 568) = v12;
    *(v0 + 576) = [v10 gateway];
    *(v0 + 584) = [objc_allocWithZone(MEMORY[0x277D12468]) initWithEndState_];
    *(v0 + 592) = *(v11 + 64);
    sub_251C70344();
    sub_251C3159C(&qword_27F47C860, MEMORY[0x277D122C0]);
    v13 = sub_251C711C4();
    v15 = sub_251C30CCC;
  }

  else
  {
    v16 = v7;
    sub_251A858C4(v9, v8);
    *(v0 + 544) = [v10 gateway];
    *(v0 + 552) = [objc_allocWithZone(MEMORY[0x277D12468]) initWithEndState_];
    *(v0 + 560) = *(v11 + 64);
    sub_251C70344();
    sub_251C3159C(&qword_27F47C860, MEMORY[0x277D122C0]);
    v13 = sub_251C711C4();
    v15 = sub_251C30354;
  }

  v17 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v15, v13, v14);
}

uint64_t sub_251C30354()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  sub_251C702F4();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_251C303F0, 0, 0);
}

uint64_t sub_251C303F0()
{
  v103 = v0;
  v102[3] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 544);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 488);
  v5 = *(v0 + 432);
  v7 = *(v0 + 408);
  v6 = *(v0 + 416);
  v96 = *(v0 + 400);
  v99 = *(v0 + 392);
  v8 = *(v0 + 312);

  sub_251C716A4();

  v102[0] = 0xD000000000000015;
  v102[1] = 0x8000000251C90C60;
  v9 = [v4 accountIdentifier];
  sub_251C70054();

  sub_251C3159C(&qword_27F479418, MEMORY[0x277CC95F0]);
  v10 = sub_251C719A4();
  MEMORY[0x25308CDA0](v10);

  v3(v5, v6);
  v12 = v8[3];
  v11 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v12);
  (*(v11 + 40))(v12, v11);
  v13 = sub_251C6FE64();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v7, 0, 1, v13);
  v15 = [v4 gateway];
  v16 = [v15 FHIRVersion];

  sub_251C70004();
  sub_251C70004();
  v17 = objc_opt_self();
  [v17 currentOSVersionStruct];
  v100 = v102[2];
  v18 = [v17 currentOSBuild];
  if (!v18)
  {
    __break(1u);
  }

  v19 = v18;
  v97 = v16;
  v20 = [*(v0 + 488) gateway];
  v21 = [v20 country];

  if (!v21)
  {
    sub_251C70F14();
    v21 = sub_251C70EE4();
  }

  v22 = *(v0 + 408);
  sub_251A858C4(*(v0 + 528), *(v0 + 536));
  v23 = sub_251C70EE4();

  v24 = sub_251C6FEC4();
  if ((*(v14 + 48))(v22, 1, v13) == 1)
  {
    v25 = 0;
  }

  else
  {
    v26 = *(v0 + 408);
    v25 = sub_251C6FDD4();
    (*(v14 + 8))(v26, v13);
  }

  v28 = *(v0 + 392);
  v27 = *(v0 + 400);
  v29 = sub_251C6FF94();
  v30 = sub_251C6FF94();
  v31 = objc_opt_self();
  *(v0 + 296) = 0;
  *(v0 + 256) = 0xD000000000000015;
  *(v0 + 264) = 0x8000000251C90C60;
  *(v0 + 272) = v100;
  v32 = [v31 resourceObjectWithStaticIdentifier:v23 data:v24 sourceURL:v25 FHIRVersion:v97 receivedDate:v29 firstSeenDate:v30 extractionHints:0 originVersion:v0 + 256 originBuild:v19 country:v21 error:v0 + 296];

  v33 = *(v0 + 296);
  v34 = *(v0 + 536);
  v35 = *(v0 + 528);
  if (v32)
  {
    v83 = v32;
    v36 = *(v0 + 520);
    v37 = *(v0 + 488);
    v85 = *(v0 + 472);
    v86 = *(v0 + 464);
    v87 = *(v0 + 456);
    v88 = *(v0 + 440);
    v89 = *(v0 + 432);
    v90 = *(v0 + 408);
    v84 = *(v0 + 400);
    v39 = *(v0 + 384);
    v38 = *(v0 + 392);
    v40 = *(v0 + 376);
    v91 = *(v0 + 368);
    v92 = *(v0 + 360);
    v93 = *(v0 + 352);
    v101 = *(v0 + 336);
    v41 = v33;

    sub_251A8596C(v35, v34);
    sub_251A8596C(v35, v34);
    v42 = *(v39 + 8);
    v42(v38, v40);
    v42(v84, v40);
    sub_251A857E0(v0 + 16);

    v43 = *(v0 + 8);
    v44 = *MEMORY[0x277D85DE8];

    return v43(v83);
  }

  else
  {
    v46 = *(v0 + 392);
    v94 = *(v0 + 400);
    v48 = *(v0 + 376);
    v47 = *(v0 + 384);
    v49 = *(v0 + 368);
    v50 = v33;
    sub_251C6FD84();

    swift_willThrow();
    sub_251A8596C(v35, v34);
    v51 = *(v47 + 8);
    v51(v46, v48);
    v51(v94, v48);
    sub_251C70F54();
    v52 = sub_251C70F34();
    v54 = v53;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v55 = sub_251C70764();
    __swift_project_value_buffer(v55, qword_2813E8130);

    v56 = sub_251C70744();
    v57 = sub_251C713D4();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v102[0] = v59;
      *v58 = 136315394;
      *(v0 + 304) = &type metadata for SignedClinicalDataFHIROperationHandler;
      sub_251C315E4();
      v60 = sub_251C70F74();
      v62 = sub_251B10780(v60, v61, v102);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2080;
      *(v0 + 280) = v52;
      *(v0 + 288) = v54;
      sub_251AD56B0();
      sub_251C719F4();
      v63 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v64 = sub_251C70F74();
      v66 = sub_251B10780(v64, v65, v102);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_251A6C000, v56, v57, "%s failed to parse response data to original FHIR resource object, response data string: %s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v59, -1, -1);
      MEMORY[0x25308E2B0](v58, -1, -1);
    }

    else
    {
    }

    v67 = *(v0 + 536);
    v68 = *(v0 + 528);
    v69 = *(v0 + 520);
    v70 = *(v0 + 488);
    swift_willThrow();
    sub_251A8596C(v68, v67);

    sub_251A857E0(v0 + 16);
    v72 = *(v0 + 464);
    v71 = *(v0 + 472);
    v73 = *(v0 + 456);
    v75 = *(v0 + 432);
    v74 = *(v0 + 440);
    v77 = *(v0 + 400);
    v76 = *(v0 + 408);
    v78 = *(v0 + 392);
    v79 = *(v0 + 360);
    v80 = *(v0 + 368);
    v95 = *(v0 + 352);
    v98 = *(v0 + 336);

    v81 = *(v0 + 8);
    v82 = *MEMORY[0x277D85DE8];

    return v81();
  }
}

uint64_t sub_251C30CCC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  sub_251C702F4();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_251C30D68, 0, 0);
}

uint64_t sub_251C30D68()
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 520);
  v4 = *(v0 + 488);

  sub_251C31548();
  swift_allocError();
  *v5 = 0;
  swift_willThrow();

  sub_251A857E0(v0 + 16);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  v8 = *(v0 + 456);
  v10 = *(v0 + 432);
  v9 = *(v0 + 440);
  v12 = *(v0 + 400);
  v11 = *(v0 + 408);
  v13 = *(v0 + 392);
  v14 = *(v0 + 360);
  v15 = *(v0 + 368);
  v19 = *(v0 + 352);
  v20 = *(v0 + 336);

  v16 = *(v0 + 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

uint64_t sub_251C30EEC()
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = v0[59];
  v3 = v0[56];
  v2 = v0[57];
  v5 = v0[41];
  v4 = v0[42];
  sub_251C31480(v0[58], v1, type metadata accessor for WebRequestResponseError);
  sub_251C31480(v1, v2, type metadata accessor for WebRequestResponseError);
  sub_251C31418(v2 + *(v3 + 20), v4, type metadata accessor for WebRequestResponseError.ErrorType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = v0[44];
    v7 = v0[45];
    v8 = v0[43];
    sub_251C31480(v0[42], v7, type metadata accessor for HTTPError);
    sub_251C31480(v7, v6, type metadata accessor for HTTPError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = v0[44];
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *v10;
      goto LABEL_7;
    }

    v12 = type metadata accessor for HTTPError;
  }

  else
  {
    v10 = v0[42];
    v12 = type metadata accessor for WebRequestResponseError.ErrorType;
  }

  sub_251C314E8(v10, v12);
  v11 = 0;
LABEL_7:
  v13 = v0[61];
  v14 = *(v0 + 60);
  v15 = v0[39];
  v16 = v0[40];
  sub_251A8223C(0, &qword_27F47C890, 0x277D12460);
  sub_251A823B4(v15, (v0 + 18));
  v17 = sub_251C2F138(v0 + 18, v11, v14);
  v18 = [v17 asErrorEndStateWithErrorCode_];
  v0[75] = v18;

  v0[76] = [v13 gateway];
  v0[77] = [objc_allocWithZone(MEMORY[0x277D12468]) initWithEndState_];
  v0[78] = *(v16 + 64);
  sub_251C70344();
  sub_251C3159C(&qword_27F47C860, MEMORY[0x277D122C0]);
  v19 = sub_251C711C4();
  v21 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_251C311A4, v19, v20);
}

uint64_t sub_251C311A4()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  sub_251C702F4();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_251C31240, 0, 0);
}

uint64_t sub_251C31240()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 488);
  v5 = *(v0 + 448);
  v4 = *(v0 + 456);

  sub_251C3159C(&qword_27F478E50, type metadata accessor for WebRequestResponseError);
  swift_allocError();
  sub_251C31418(v4, v6, type metadata accessor for WebRequestResponseError);
  swift_willThrow();

  sub_251C314E8(v4, type metadata accessor for WebRequestResponseError);
  v8 = *(v0 + 464);
  v7 = *(v0 + 472);
  v9 = *(v0 + 456);
  v11 = *(v0 + 432);
  v10 = *(v0 + 440);
  v13 = *(v0 + 400);
  v12 = *(v0 + 408);
  v14 = *(v0 + 392);
  v15 = *(v0 + 360);
  v16 = *(v0 + 368);
  v20 = *(v0 + 352);
  v21 = *(v0 + 336);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_251C31418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C31480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C314E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251C31548()
{
  result = qword_27F47C898;
  if (!qword_27F47C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C898);
  }

  return result;
}

uint64_t sub_251C3159C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_251C315E4()
{
  result = qword_27F47C8A0;
  if (!qword_27F47C8A0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F47C8A0);
  }

  return result;
}

unint64_t sub_251C31650()
{
  result = qword_27F47C8A8;
  if (!qword_27F47C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C8A8);
  }

  return result;
}

void sub_251C316B4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_251C70E54();

  *a3 = v5;
}

uint64_t sub_251C31718(uint64_t a1, void *a2)
{
  sub_251C35180();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C35328();
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v66 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C35594();
  v14 = *(v13 - 8);
  v60 = v13;
  v61 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v54 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C35880(0, &qword_27F47C930, type metadata accessor for PBTypedData);
  v62 = v17;
  v64 = *(v17 - 8);
  v18 = *(v64 + 64);
  MEMORY[0x28223BE20](v17);
  v56 = v51 - v19;
  sub_251C35860(0);
  v63 = v20;
  v65 = *(v20 - 8);
  v21 = *(v65 + 64);
  MEMORY[0x28223BE20](v20);
  v59 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *MEMORY[0x277CCCE68];
  sub_251C70F14();
  v24 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v25 = sub_251C70EE4();

  v26 = [v24 initWithKey:v25 ascending:0];

  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_251A82418();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_251C74560;
  *(v27 + 32) = v26;
  v55 = v26;
  v28 = sub_251C2A58C(a2, v27, 0, 1);

  v67 = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  sub_251C369BC(0, &qword_27F47BC38, &qword_27F47BC40, &qword_27F47BC48, 0x277CCDAF0);
  sub_251C35248(0, &qword_27F47C8B8, &qword_27F47C8C0, 0x277D115B8, MEMORY[0x277D83940]);
  sub_251C352B0();

  v30 = a2;
  sub_251C70AA4();

  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *(v31 + 24) = v30;

  v32 = v30;
  sub_251C70964();
  v33 = MEMORY[0x277D83940];
  sub_251C35408(0, &qword_27F47C8D8, sub_251C3546C, MEMORY[0x277D83940]);
  sub_251C35674(0, &qword_27F47C8D0, &qword_27F47C8D8, sub_251C3546C);
  v51[1] = MEMORY[0x277CBCB10];
  sub_251C37174(&qword_27F47C8F0, sub_251C35180);
  sub_251C35518();
  v34 = v52;
  sub_251C70B94();

  (*(v53 + 8))(v8, v34);
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = v32;

  v36 = v32;
  sub_251C70964();
  sub_251C35408(0, &qword_27F47C908, sub_251C35700, v33);
  sub_251C35674(0, &qword_27F47C900, &qword_27F47C908, sub_251C35700);
  sub_251C37174(&qword_27F47C928, sub_251C35328);
  sub_251C357E4();
  v37 = v54;
  v38 = v57;
  v39 = v66;
  sub_251C70B94();

  (*(v58 + 8))(v39, v38);
  v40 = swift_allocObject();
  *(v40 + 16) = a1;
  *(v40 + 24) = v36;
  type metadata accessor for PBTypedData(0);
  sub_251C37174(&qword_27F47C938, sub_251C35594);

  v41 = v36;
  v42 = v56;
  v43 = v60;
  sub_251C70AA4();

  (*(v61 + 8))(v37, v43);
  v44 = swift_allocObject();
  *(v44 + 16) = a1;
  *(v44 + 24) = v41;
  type metadata accessor for ClinicalSharingQueryOutput(0);

  v45 = v41;
  v46 = v59;
  v47 = v62;
  sub_251C70774();

  (*(v64 + 8))(v42, v47);
  sub_251C37174(&qword_27F47C948, sub_251C35860);
  v48 = v63;
  v49 = sub_251C70A94();

  (*(v65 + 8))(v46, v48);
  return v49;
}

uint64_t sub_251C31F88@<X0>(unint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_251B15148(*a1);
  if (result)
  {
    *a3 = result;
  }

  else
  {
    sub_251C716A4();

    v6 = [a2 description];
    v7 = sub_251C70F14();
    v9 = v8;

    MEMORY[0x25308CDA0](v7, v9);

    result = sub_251C717E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_251C32080(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a2;
  v35 = a3;
  sub_251C36BD8();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C36D08();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C36DC0();
  v17 = *(v16 - 8);
  v36 = v16;
  v37 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C36F34(0);
  v22 = *(v21 - 8);
  v38 = v21;
  v39 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_251C35248(0, &qword_27F47C8B8, &qword_27F47C8C0, 0x277D115B8, MEMORY[0x277D83940]);
  sub_251C36C84();
  sub_251C710D4();
  sub_251A82284();
  sub_251C708E4();
  (*(v6 + 8))(v9, v5);
  v26 = swift_allocObject();
  v27 = v35;
  *(v26 + 16) = v34;
  *(v26 + 24) = v27;

  v28 = v27;
  sub_251C70964();
  sub_251C3546C();
  sub_251C3704C(0, &qword_27F47C9E8, sub_251C3546C, MEMORY[0x277CBCD88]);
  sub_251C37174(&qword_27F47C9F8, sub_251C36D08);
  sub_251C36EAC();
  sub_251C70B94();

  (*(v12 + 8))(v15, v11);
  sub_251C37174(&qword_27F47CA08, sub_251C36DC0);
  v29 = v36;
  sub_251C70B64();
  (*(v37 + 8))(v20, v29);
  sub_251C37174(&qword_27F47CA10, sub_251C36F34);
  v30 = v38;
  v31 = sub_251C70A94();
  (*(v39 + 8))(v25, v30);
  return v31;
}

uint64_t sub_251C32518(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a2;
  v35 = a3;
  sub_251C3658C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C366C4();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C36780();
  v17 = *(v16 - 8);
  v36 = v16;
  v37 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C368F4(0);
  v22 = *(v21 - 8);
  v38 = v21;
  v39 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_251C35408(0, &qword_27F47C8D8, sub_251C3546C, MEMORY[0x277D83940]);
  sub_251C3663C();
  sub_251C710D4();
  sub_251A82284();
  sub_251C708E4();
  (*(v6 + 8))(v9, v5);
  v26 = swift_allocObject();
  v27 = v35;
  *(v26 + 16) = v34;
  *(v26 + 24) = v27;

  v28 = v27;
  sub_251C70964();
  sub_251C35700();
  sub_251C3704C(0, &qword_27F47C970, sub_251C35700, MEMORY[0x277CBCD88]);
  sub_251C37174(&qword_27F47C980, sub_251C366C4);
  sub_251C3686C();
  sub_251C70B94();

  (*(v12 + 8))(v15, v11);
  sub_251C37174(&qword_27F47C990, sub_251C36780);
  v29 = v36;
  sub_251C70B64();
  (*(v37 + 8))(v20, v29);
  sub_251C37174(&qword_27F47C998, sub_251C368F4);
  v30 = v38;
  v31 = sub_251C70A94();
  (*(v39 + 8))(v25, v30);
  return v31;
}

uint64_t sub_251C329B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PBMedicationTracking(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C35408(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v70 = &v59 - v15;
  v16 = type metadata accessor for PBDateRange(0);
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x28223BE20](v16);
  v69 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PBTypedData(0);
  v73 = *(v19 - 8);
  v20 = *(v73 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PBMedicationTrackings(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v26 = MEMORY[0x28223BE20](v25);
  v29 = *(a1 + 16);
  if (v29)
  {
    v61 = v26;
    v62 = v28;
    v63 = v16;
    v64 = v22;
    v72 = (&v59 - v27);
    v65 = a2;
    v66 = a3;
    v67 = v19;
    v68 = a4;
    v74 = MEMORY[0x277D84F90];
    sub_251C0BE5C(0, v29, 0);
    v30 = v74;
    v31 = (a1 + 48);
    do
    {
      v33 = *(v31 - 2);
      v32 = *(v31 - 1);
      v34 = *v31;
      v35 = *v31;
      v36 = v33;
      v37 = v32;
      sub_251C340CC(v36, v32, v34, v12);

      v74 = v30;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_251C0BE5C(v38 > 1, v39 + 1, 1);
        v30 = v74;
      }

      v31 += 3;
      *(v30 + 16) = v39 + 1;
      sub_251C36480(v12, v30 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v39, type metadata accessor for PBMedicationTracking);
      --v29;
    }

    while (v29);
    v40 = v72;
    v41 = v72 + *(v61 + 20);
    sub_251C703A4();
    *v40 = v30;
    v42 = v64;
    *v64 = 0;
    *(v42 + 8) = 1;
    v43 = v67;
    v44 = *(v67 + 20);
    v45 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v46 = *(v45 - 8);
    v60 = *(v46 + 56);
    v61 = v46 + 56;
    v60(v42 + v44, 1, 1, v45);
    v47 = v42 + *(v43 + 24);
    sub_251C703A4();
    v48 = *(v43 + 28);
    v49 = *(v71 + 56);
    v50 = v63;
    v49(v42 + v48, 1, 1, v63);
    v51 = sub_251C6FAE4();
    v52 = v70;
    (*(*(v51 - 8) + 56))(v70, 1, 1, v51);
    v53 = v69;
    sub_251BFC468(5, 1, v52, v65);
    sub_251C36410(v52, &qword_27F478D90, MEMORY[0x277CC88A8]);
    sub_251C36410(v42 + v48, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251C36480(v53, v42 + v48, type metadata accessor for PBDateRange);
    v49(v42 + v48, 0, 1, v50);
    *v42 = 127;
    *(v42 + 8) = 1;
    v54 = v72;
    v55 = v62;
    sub_251C363A8(v72, v62, type metadata accessor for PBMedicationTrackings);
    sub_251C36410(v42 + v44, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251C36480(v55, v42 + v44, type metadata accessor for PBMedicationTrackings);
    swift_storeEnumTagMultiPayload();
    v60(v42 + v44, 0, 1, v45);
    v56 = v68;
    sub_251C36480(v42, v68, type metadata accessor for PBTypedData);
    (*(v73 + 56))(v56, 0, 1, v43);
    return sub_251C364E8(v54);
  }

  else
  {
    v58 = *(v73 + 56);

    return v58(a4, 1, 1, v19);
  }
}

uint64_t sub_251C33028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a2 + 56);
  (*(v7 + 104))(v10, *MEMORY[0x277D112F8], v6);
  v19 = v10;
  v12 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v18, v11);
  (*(v7 + 8))(v10, v6);
  if (*(v12 + 16))
  {
    sub_251C363A8(a1, a3, type metadata accessor for PBTypedData);
    v13 = sub_251BFAE40(v12);

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a3 + *(Output + 20)) = v13;
    v15 = (a3 + *(Output + 24));
    *v15 = 0;
    v15[1] = 0;
    return (*(*(Output - 8) + 56))(a3, 0, 1, Output);
  }

  else
  {
    v17 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }
}

void sub_251C33234(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a2;
  sub_251C35408(0, &qword_27F47CA18, sub_251C3546C, MEMORY[0x277CBCE78]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v58 - v9;
  sub_251C3704C(0, &qword_27F47CA20, sub_251C3546C, MEMORY[0x277CBCF38]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v58 - v15;
  sub_251C370C8();
  v61 = *(v17 - 8);
  v62 = v17;
  v18 = *(v61 + 64);
  MEMORY[0x28223BE20](v17);
  v60 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = [*a1 firstOntologyCoding];
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21;
  v23 = [v21 code];

  if (!v23)
  {
    goto LABEL_66;
  }

  v58 = a3;
  v24 = sub_251C70F14();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  v28 = v24 & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v26) & 0xF;
  }

  else
  {
    v29 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    a3 = v58;
    goto LABEL_66;
  }

  if ((v26 & 0x1000000000000000) != 0)
  {
    v63 = 0;
    v32 = sub_251C359A8(v24, v26, 10);
    v50 = v57;
LABEL_65:

    a3 = v58;
    if ((v50 & 1) == 0)
    {
      v53 = [objc_allocWithZone(MEMORY[0x277CCD1D0]) initWithRawIdentifier_];
      __swift_project_boxed_opaque_existential_1((v59 + 16), *(v59 + 40));
      v64 = off_2863FD788(v53);
      *(swift_allocObject() + 16) = v20;
      sub_251C2BF4C();
      sub_251C3546C();
      sub_251C37174(&qword_27F47C7C0, sub_251C2BF4C);
      v54 = v20;
      v55 = v60;
      a3 = v58;
      sub_251C70AE4();

      sub_251C37174(&qword_27F47CA38, sub_251C370C8);
      v56 = v62;
      v52 = sub_251C70A94();

      (*(v61 + 8))(v55, v56);
      goto LABEL_67;
    }

LABEL_66:
    v64 = v20;
    v65 = 0;
    sub_251C3546C();
    v51 = v20;
    sub_251C70A24();
    sub_251A82284();
    sub_251C709F4();
    (*(v7 + 8))(v10, v6);
    sub_251C371BC();
    v52 = sub_251C70A94();
    (*(v13 + 8))(v16, v12);
LABEL_67:
    *a3 = v52;
    return;
  }

  if ((v26 & 0x2000000000000000) == 0)
  {
    if ((v24 & 0x1000000000000000) != 0)
    {
      v30 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v30 = sub_251C71724();
    }

    v31 = *v30;
    if (v31 == 43)
    {
      if (v28 >= 1)
      {
        v27 = v28 - 1;
        if (v28 != 1)
        {
          v32 = 0;
          if (v30)
          {
            v39 = v30 + 1;
            while (1)
            {
              v40 = *v39 - 48;
              if (v40 > 9)
              {
                goto LABEL_63;
              }

              v41 = 10 * v32;
              if ((v32 * 10) >> 64 != (10 * v32) >> 63)
              {
                goto LABEL_63;
              }

              v32 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_63;
              }

              ++v39;
              if (!--v27)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_74;
    }

    if (v31 != 45)
    {
      if (v28)
      {
        v32 = 0;
        if (v30)
        {
          while (1)
          {
            v45 = *v30 - 48;
            if (v45 > 9)
            {
              goto LABEL_63;
            }

            v46 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_63;
            }

            v32 = v46 + v45;
            if (__OFADD__(v46, v45))
            {
              goto LABEL_63;
            }

            ++v30;
            if (!--v28)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v32 = 0;
      LOBYTE(v27) = 1;
      goto LABEL_64;
    }

    if (v28 >= 1)
    {
      v27 = v28 - 1;
      if (v28 != 1)
      {
        v32 = 0;
        if (v30)
        {
          v33 = v30 + 1;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              goto LABEL_63;
            }

            v35 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_63;
            }

            v32 = v35 - v34;
            if (__OFSUB__(v35, v34))
            {
              goto LABEL_63;
            }

            ++v33;
            if (!--v27)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v27) = 0;
LABEL_64:
        v63 = v27;
        v50 = v27;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v64 = v24;
  v65 = v26 & 0xFFFFFFFFFFFFFFLL;
  if (v24 != 43)
  {
    if (v24 != 45)
    {
      if (v27)
      {
        v32 = 0;
        v47 = &v64;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v49 + v48;
          if (__OFADD__(v49, v48))
          {
            break;
          }

          v47 = (v47 + 1);
          if (!--v27)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v27)
    {
      if (--v27)
      {
        v32 = 0;
        v36 = &v64 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v38 - v37;
          if (__OFSUB__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v27)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if (v27)
  {
    if (--v27)
    {
      v32 = 0;
      v42 = &v64 + 1;
      while (1)
      {
        v43 = *v42 - 48;
        if (v43 > 9)
        {
          break;
        }

        v44 = 10 * v32;
        if ((v32 * 10) >> 64 != (10 * v32) >> 63)
        {
          break;
        }

        v32 = v44 + v43;
        if (__OFADD__(v44, v43))
        {
          break;
        }

        ++v42;
        if (!--v27)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_75:
  __break(1u);
}

uint64_t sub_251C3398C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a3;
  sub_251C36938();
  v40 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C36A4C();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C36B24();
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v38 = *(a1 + 8);
  v39 = v38;
  v19 = v18;
  v20 = [v19 semanticIdentifier];
  v21 = [v20 stringValue];

  if (!v21)
  {
    sub_251C70F14();
    v21 = sub_251C70EE4();
  }

  v22 = [objc_opt_self() predicateForMedicationDoseEventWithMedicationIdentifier_];

  sub_251A8223C(0, &qword_27F478D50, 0x277CCD8D8);
  v23 = [swift_getObjCClassFromMetadata() medicationDoseEventType];
  v24 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v23 predicate:v22];

  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  sub_251A82418();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251C74560;
  *(v25 + 32) = v24;
  v37 = v24;
  sub_251AFCF70();
  v26 = off_2863FD750();

  v47 = v26;
  v46 = MEMORY[0x277D84F90];
  sub_251C369BC(0, &qword_27F478D60, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
  sub_251AF2A20();
  sub_251C70AD4();

  sub_251C35248(0, &qword_27F47C918, &qword_27F479700, 0x277CCD650, MEMORY[0x277D83D88]);
  sub_251C37174(&qword_27F47C9B0, sub_251C36938);
  v27 = v40;
  sub_251C70AE4();
  (*(v6 + 8))(v9, v27);
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 16) = v19;
  *(v28 + 24) = v29;
  sub_251C35700();
  v30 = v19;
  v31 = v39;
  v32 = v42;
  sub_251C707F4();

  (*(v41 + 8))(v13, v32);
  sub_251C37174(&qword_27F47C9C0, sub_251C36B24);
  v33 = v44;
  v34 = sub_251C70A94();

  result = (*(v43 + 8))(v17, v33);
  *v45 = v34;
  return result;
}

void sub_251C33F08(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_251B15154(*a1);
  if (!v3)
  {
    if (qword_2813E26F8 == -1)
    {
LABEL_9:
      v7 = sub_251C70764();
      __swift_project_value_buffer(v7, qword_2813E8130);
      v8 = sub_251C70744();
      v9 = sub_251C713D4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_251A6C000, v8, v9, "[ClinicalSharingMedicationTrackingQuery] Invalid sample type for samples of HKMedicationDoseEvent", v10, 2u);
        MEMORY[0x25308E2B0](v10, -1, -1);
      }

      goto LABEL_14;
    }

LABEL_18:
    swift_once();
    goto LABEL_9;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v11 = v3;
  v12 = sub_251C717F4();
  v3 = v11;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25308D460](0);
    goto LABEL_7;
  }

  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(v3 + 32);
LABEL_7:
  v6 = v5;

LABEL_15:
  *a2 = v6;
}

id sub_251C34078@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  *a4 = a2;
  a4[1] = a3;
  a4[2] = v5;
  v6 = v5;
  v7 = a2;

  return a3;
}

uint64_t sub_251C340CC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v231 = a3;
  v233 = a2;
  v235 = sub_251C70014();
  v232 = *(v235 - 8);
  v6 = *(v232 + 64);
  MEMORY[0x28223BE20](v235);
  v234 = &v228 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251C70074();
  v229 = *(v8 - 8);
  v230 = v8;
  v9 = *(v229 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v228 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v12 = *(type metadata accessor for PBMedicationTracking(0) + 20);
  if (qword_27F478818 != -1)
  {
    swift_once();
  }

  *(a4 + v12) = qword_27F47AC10;
  KeyPath = swift_getKeyPath();
  v236 = *MEMORY[0x277CCCE40];
  v14 = sub_251C70F14();
  v16 = v15;

  v17 = sub_251AF310C(KeyPath, v14, v16);
  v19 = v18;

  if (v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  if (!v19)
  {
    v19 = 0xE000000000000000;
  }

  v21 = *(a4 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(a4 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v23 = sub_251B9234C(v23);
    *(a4 + v12) = v23;
  }

  swift_beginAccess();
  v24 = *(v23 + 72);
  *(v23 + 64) = v20;
  *(v23 + 72) = v19;

  v25 = swift_getKeyPath();
  v26 = sub_251C70F14();
  v28 = sub_251AF310C(v25, v26, v27);
  v30 = v29;

  if (v30)
  {
    v31 = v28;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  v33 = *(a4 + v12);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(a4 + v12);
  if ((v34 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v35 = sub_251B9234C(v35);
    *(a4 + v12) = v35;
  }

  swift_beginAccess();
  v36 = *(v35 + 40);
  *(v35 + 32) = v31;
  *(v35 + 40) = v32;

  v37 = swift_getKeyPath();
  v38 = sub_251C70F14();
  v40 = sub_251AF310C(v37, v38, v39);
  v42 = v41;

  if (v42)
  {
    v43 = v40;
  }

  else
  {
    v43 = 0;
  }

  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  v45 = *(a4 + v12);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(a4 + v12);
  if ((v46 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v47 = sub_251B9234C(v47);
    *(a4 + v12) = v47;
  }

  swift_beginAccess();
  v48 = *(v47 + 56);
  *(v47 + 48) = v43;
  *(v47 + 56) = v44;

  v237 = a1;
  v49 = [a1 semanticIdentifier];
  v50 = [v49 stringValue];
  v51 = sub_251C70F14();
  v53 = v52;

  v243 = v51;
  v244 = v53;
  v54 = *MEMORY[0x277CCCE50];
  v241 = sub_251C70F14();
  v242 = v55;
  v239 = 124;
  v240 = 0xE100000000000000;
  sub_251AD87E0();
  v56 = sub_251C715A4();
  v58 = v57;

  v59 = *(a4 + v12);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(a4 + v12);
  v62 = v12;
  if ((v60 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v61 = sub_251B9234C(v61);
    *(a4 + v12) = v61;
  }

  swift_beginAccess();
  v63 = *(v61 + 24);
  *(v61 + 16) = v56;
  *(v61 + 24) = v58;

  v64 = v237;
  v65 = [v237 UUID];
  sub_251C70054();

  v66 = sub_251C70024();
  v68 = v67;
  (*(v229 + 8))(v11, v230);
  v69 = *(a4 + v12);
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *(a4 + v12);
  if ((v70 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v71 = sub_251B9234C(v71);
    *(a4 + v12) = v71;
  }

  swift_beginAccess();
  v72 = *(v71 + 248);
  *(v71 + 240) = v66;
  *(v71 + 248) = v68;

  v73 = [v64 freeTextMedicationStrengthQuantity];
  if (v73)
  {
    v74 = v73;
    [v73 _value];
    v75 = sub_251C71264();
    v77 = v76;
    v78 = *(a4 + v12);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(a4 + v12);
    if ((v79 & 1) == 0)
    {
      type metadata accessor for PBMedicationTracking._StorageClass();
      swift_allocObject();
      v80 = sub_251B9234C(v80);
      *(a4 + v12) = v80;
    }

    swift_beginAccess();
    v81 = *(v80 + 120);
    *(v80 + 112) = v75;
    *(v80 + 120) = v77;

    v82 = [v74 _unit];
    v83 = [v82 unitString];

    v84 = sub_251C70F14();
    v86 = v85;

    v87 = *(a4 + v12);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v88 = *(a4 + v12);
    }

    else
    {
      v89 = *(a4 + v12);
      type metadata accessor for PBMedicationTracking._StorageClass();
      swift_allocObject();

      v88 = sub_251B9234C(v90);

      *(a4 + v12) = v88;
    }

    swift_beginAccess();
    v91 = *(v88 + 312);
    *(v88 + 304) = v84;
    *(v88 + 312) = v86;
  }

  v92 = swift_getKeyPath();
  v93 = sub_251C70F14();
  v95 = sub_251AF310C(v92, v93, v94);
  v97 = v96;

  if (v97)
  {
    v98 = v95;
  }

  else
  {
    v98 = 0;
  }

  v99 = 0xE000000000000000;
  if (!v97)
  {
    v97 = 0xE000000000000000;
  }

  v100 = *(a4 + v62);
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *(a4 + v62);
  if ((v101 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v102 = sub_251B9234C(v102);
    *(a4 + v62) = v102;
  }

  swift_beginAccess();
  v103 = *(v102 + 136);
  *(v102 + 128) = v98;
  *(v102 + 136) = v97;

  v104 = swift_getKeyPath();
  v105 = sub_251AF310C(v104, 0x53552D6E65, 0xE500000000000000);
  v107 = v106;

  if (v107)
  {
    v108 = v105;
  }

  else
  {
    v108 = 0;
  }

  if (v107)
  {
    v99 = v107;
  }

  v109 = *(a4 + v62);
  v110 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *(a4 + v62);
  if ((v110 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v111 = sub_251B9234C(v111);
    *(a4 + v62) = v111;
  }

  swift_beginAccess();
  v112 = *(v111 + 152);
  *(v111 + 144) = v108;
  *(v111 + 152) = v99;

  v113 = swift_getKeyPath();
  v114 = sub_251AF310C(v113, 0x53552D6E65, 0xE500000000000000);
  v116 = v115;

  if (v116)
  {
    v117 = v114;
  }

  else
  {
    v117 = 0;
  }

  if (!v116)
  {
    v116 = 0xE000000000000000;
  }

  v118 = *(a4 + v62);
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *(a4 + v62);
  if ((v119 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v120 = sub_251B9234C(v120);
    *(a4 + v62) = v120;
  }

  v236 = v62;
  swift_beginAccess();
  v121 = *(v120 + 168);
  *(v120 + 160) = v117;
  *(v120 + 168) = v116;

  v122 = [v237 unlocalizedQuantifiedUnitStrengthPreferredDisplayString];
  if (v122)
  {
    v123 = v122;
    v124 = sub_251C70F14();
    v126 = v125;
  }

  else
  {
    v124 = 0;
    v126 = 0xE000000000000000;
  }

  v127 = v236;
  v128 = *(a4 + v236);
  v129 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *(a4 + v127);
  if ((v129 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v130 = sub_251B9234C(v130);
    *(a4 + v127) = v130;
  }

  v131 = 1;
  swift_beginAccess();
  v132 = *(v130 + 184);
  *(v130 + 176) = v124;
  *(v130 + 184) = v126;

  v133 = [v237 freeTextMedicationFormCode];
  if (v133)
  {
    v134 = v133;
    v135 = [v133 longLongValue];

    v136 = sub_251C4E1C8(v135);
    v131 = v137;
  }

  else
  {
    v136 = 0;
  }

  v138 = v236;
  v139 = *(a4 + v236);
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *(a4 + v138);
  if ((v140 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v141 = sub_251B9234C(v141);
    *(a4 + v138) = v141;
  }

  swift_beginAccess();
  *(v141 + 96) = v136;
  *(v141 + 104) = v131 & 1;
  v142 = [v237 freeTextMedicationName];
  if (v142)
  {
    v143 = v142;
    v144 = sub_251C70F14();
    v146 = v145;
  }

  else
  {
    v144 = 0;
    v146 = 0xE000000000000000;
  }

  v147 = *(a4 + v138);
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *(a4 + v138);
  if ((v148 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v149 = sub_251B9234C(v149);
    *(a4 + v138) = v149;
  }

  swift_beginAccess();
  v150 = *(v149 + 280);
  *(v149 + 272) = v144;
  *(v149 + 280) = v146;

  v151 = [v237 creationDate];
  v152 = v234;
  sub_251C6FFE4();

  if (qword_27F478930 != -1)
  {
    swift_once();
  }

  v153 = qword_27F4A2878;
  v154 = sub_251C6FF94();
  v155 = [v153 stringFromDate_];

  v156 = sub_251C70F14();
  v158 = v157;

  v159 = v152;
  v160 = *(v232 + 8);
  v160(v159, v235);
  v161 = v236;
  v162 = *(a4 + v236);
  v163 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *(a4 + v161);
  if ((v163 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v164 = sub_251B9234C(v164);
    *(a4 + v161) = v164;
  }

  swift_beginAccess();
  v165 = *(v164 + 200);
  *(v164 + 192) = v156;
  *(v164 + 200) = v158;

  if (v231)
  {
    v166 = v231;
    v167 = [v166 startDate];
    v168 = v234;
    sub_251C6FFE4();

    v169 = sub_251C6FF94();
    v170 = [v153 stringFromDate_];

    v171 = sub_251C70F14();
    v173 = v172;

    v160(v168, v235);
    v174 = v236;
    v175 = *(a4 + v236);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v176 = *(a4 + v174);
    }

    else
    {
      v177 = *(a4 + v174);
      type metadata accessor for PBMedicationTracking._StorageClass();
      swift_allocObject();

      v176 = sub_251B9234C(v178);

      *(a4 + v174) = v176;
    }

    swift_beginAccess();
    v179 = *(v176 + 216);
    *(v176 + 208) = v171;
    *(v176 + 216) = v173;
  }

  v180 = v236;
  if (!v233)
  {
    goto LABEL_110;
  }

  v181 = v233;
  v182 = [v181 RxNormCoding];
  if (v182 && (v183 = v182, v184 = [v182 code], v183, v184))
  {
    v185 = sub_251C70F14();
    v187 = v186;
  }

  else
  {
    v185 = 0;
    v187 = 0xE000000000000000;
  }

  v188 = *(a4 + v180);
  v189 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *(a4 + v180);
  if ((v189 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v190 = sub_251B9234C(v190);
    *(a4 + v180) = v190;
  }

  swift_beginAccess();
  v191 = *(v190 + 88);
  *(v190 + 80) = v185;
  *(v190 + 88) = v187;

  v192 = sub_251C48234();
  if (v192 && (v193 = v192, v194 = [v192 RxNormCoding], v193, v194) && (v195 = objc_msgSend(v194, sel_code), v194, v195))
  {
    v196 = sub_251C70F14();
    v198 = v197;
  }

  else
  {
    v196 = 0;
    v198 = 0xE000000000000000;
  }

  v199 = *(a4 + v180);
  v200 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *(a4 + v180);
  if ((v200 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v201 = sub_251B9234C(v201);
    *(a4 + v180) = v201;
  }

  swift_beginAccess();
  v202 = *(v201 + 232);
  *(v201 + 224) = v196;
  *(v201 + 232) = v198;

  v203 = sub_251C4833C(0x3F5uLL);
  if (v203)
  {
    v204 = v203;
    v205 = v203 & 0xFFFFFFFFFFFFFF8;
    if (v203 >> 62)
    {
      result = sub_251C717F4();
      if (result)
      {
        goto LABEL_99;
      }
    }

    else
    {
      result = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_99:
        if ((v204 & 0xC000000000000001) != 0)
        {
          v207 = MEMORY[0x25308D460](0, v204);
        }

        else
        {
          if (!*(v205 + 16))
          {
            __break(1u);
            return result;
          }

          v207 = *(v204 + 32);
        }

        v208 = v207;

        v209 = [v208 identifier];
        v210 = [v209 rawIdentifier];

        v238 = v210;
        v211 = sub_251C719A4();
        v213 = v212;
        v214 = *(a4 + v180);
        if (swift_isUniquelyReferenced_nonNull_native())
        {

          v215 = *(a4 + v180);
        }

        else
        {
          v216 = *(a4 + v236);
          type metadata accessor for PBMedicationTracking._StorageClass();
          swift_allocObject();

          v215 = sub_251B9234C(v217);
          v180 = v236;

          *(a4 + v180) = v215;
        }

        swift_beginAccess();
        v218 = *(v215 + 296);
        *(v215 + 288) = v211;
        *(v215 + 296) = v213;
        goto LABEL_109;
      }
    }

LABEL_109:

    goto LABEL_110;
  }

LABEL_110:
  v219 = [v237 freeTextMedicationLoggingUnitCode];
  if (v219)
  {
    v220 = v219;
    v221 = [v219 longLongValue];

    v222 = sub_251BE8FC0(v221);
    v224 = v223;
  }

  else
  {
    v222 = 0;
    v224 = 1;
  }

  v225 = *(a4 + v180);
  v226 = swift_isUniquelyReferenced_nonNull_native();
  v227 = *(a4 + v180);
  if ((v226 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v227 = sub_251B9234C(v227);
    *(a4 + v180) = v227;
  }

  result = swift_beginAccess();
  *(v227 + 256) = v222;
  *(v227 + 264) = v224 & 1;
  return result;
}

void sub_251C35180()
{
  if (!qword_27F47C8B0)
  {
    sub_251C369BC(255, &qword_27F47BC38, &qword_27F47BC40, &qword_27F47BC48, 0x277CCDAF0);
    sub_251C35248(255, &qword_27F47C8B8, &qword_27F47C8C0, 0x277D115B8, MEMORY[0x277D83940]);
    sub_251C352B0();
    v0 = sub_251C70784();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C8B0);
    }
  }
}

void sub_251C35248(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_251A8223C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_251C352B0()
{
  result = qword_27F47BC58;
  if (!qword_27F47BC58)
  {
    sub_251C369BC(255, &qword_27F47BC38, &qword_27F47BC40, &qword_27F47BC48, 0x277CCDAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BC58);
  }

  return result;
}

void sub_251C35328()
{
  if (!qword_27F47C8C8)
  {
    sub_251C35674(255, &qword_27F47C8D0, &qword_27F47C8D8, sub_251C3546C);
    sub_251C35180();
    sub_251C35518();
    sub_251C37174(&qword_27F47C8F0, sub_251C35180);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C8C8);
    }
  }
}

void sub_251C35408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251C3546C()
{
  if (!qword_27F47C8E0)
  {
    sub_251A8223C(255, &qword_27F47C8C0, 0x277D115B8);
    sub_251C35248(255, &qword_27F47B938, &qword_27F479F70, 0x277CCD1B0, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47C8E0);
    }
  }
}

unint64_t sub_251C35518()
{
  result = qword_27F47C8E8;
  if (!qword_27F47C8E8)
  {
    sub_251C35674(255, &qword_27F47C8D0, &qword_27F47C8D8, sub_251C3546C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C8E8);
  }

  return result;
}

void sub_251C35594()
{
  if (!qword_27F47C8F8)
  {
    sub_251C35674(255, &qword_27F47C900, &qword_27F47C908, sub_251C35700);
    sub_251C35328();
    sub_251C357E4();
    sub_251C37174(&qword_27F47C928, sub_251C35328);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C8F8);
    }
  }
}

void sub_251C35674(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251C35408(255, a3, a4, MEMORY[0x277D83940]);
    sub_251A82284();
    v5 = sub_251C70974();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251C35700()
{
  if (!qword_27F47C910)
  {
    sub_251A8223C(255, &qword_27F47C8C0, 0x277D115B8);
    v0 = MEMORY[0x277D83D88];
    sub_251C35248(255, &qword_27F47B938, &qword_27F479F70, 0x277CCD1B0, MEMORY[0x277D83D88]);
    sub_251C35248(255, &qword_27F47C918, &qword_27F479700, 0x277CCD650, v0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F47C910);
    }
  }
}

unint64_t sub_251C357E4()
{
  result = qword_27F47C920;
  if (!qword_27F47C920)
  {
    sub_251C35674(255, &qword_27F47C900, &qword_27F47C908, sub_251C35700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C920);
  }

  return result;
}

void sub_251C35880(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251C35594();
    a3(255);
    sub_251C37174(&qword_27F47C938, sub_251C35594);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251C35934@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251C32080(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_251C35964@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251C32518(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

unsigned __int8 *sub_251C359A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_251C71094();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_251C35F34();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_251C71724();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_251C35F34()
{
  v0 = sub_251C710A4();
  v4 = sub_251C35FB4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_251C35FB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_251C70FA4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_251C71584();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_251C6CBEC(v9, 0);
  v12 = sub_251C3610C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_251C70FA4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_251C71724();
LABEL_4:

  return sub_251C70FA4();
}

unint64_t sub_251C3610C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_251C3632C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_251C71044();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_251C71724();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_251C3632C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_251C71024();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_251C3632C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_251C71054();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25308CDE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_251C363A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C36410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C35408(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251C36480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C364E8(uint64_t a1)
{
  v2 = type metadata accessor for PBMedicationTrackings(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251C3658C()
{
  if (!qword_27F47C950)
  {
    sub_251C35408(255, &qword_27F47C8D8, sub_251C3546C, MEMORY[0x277D83940]);
    sub_251C3663C();
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C950);
    }
  }
}

unint64_t sub_251C3663C()
{
  result = qword_27F47C958;
  if (!qword_27F47C958)
  {
    sub_251C35408(255, &qword_27F47C8D8, sub_251C3546C, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C958);
  }

  return result;
}

void sub_251C366C4()
{
  if (!qword_27F47C960)
  {
    sub_251C35408(255, &qword_27F47C8D8, sub_251C3546C, MEMORY[0x277D83940]);
    sub_251A82284();
    sub_251C3663C();
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C960);
    }
  }
}

void sub_251C36780()
{
  if (!qword_27F47C968)
  {
    sub_251C3704C(255, &qword_27F47C970, sub_251C35700, MEMORY[0x277CBCD88]);
    sub_251C366C4();
    sub_251C3686C();
    sub_251C37174(&qword_27F47C980, sub_251C366C4);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C968);
    }
  }
}

unint64_t sub_251C3686C()
{
  result = qword_27F47C978;
  if (!qword_27F47C978)
  {
    sub_251C3704C(255, &qword_27F47C970, sub_251C35700, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C978);
  }

  return result;
}

void sub_251C36938()
{
  if (!qword_27F47C9A0)
  {
    sub_251C369BC(255, &qword_27F478D60, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
    sub_251AF2A20();
    v0 = sub_251C707C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C9A0);
    }
  }
}

void sub_251C369BC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_251C35248(255, a3, a4, a5, MEMORY[0x277D83940]);
    sub_251A82284();
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251C36A4C()
{
  if (!qword_27F47C9A8)
  {
    sub_251C36938();
    sub_251C35248(255, &qword_27F47C918, &qword_27F479700, 0x277CCD650, MEMORY[0x277D83D88]);
    sub_251C37174(&qword_27F47C9B0, sub_251C36938);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C9A8);
    }
  }
}

void sub_251C36B24()
{
  if (!qword_27F47C9B8)
  {
    sub_251C36938();
    sub_251C35700();
    sub_251C37174(&qword_27F47C9B0, sub_251C36938);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C9B8);
    }
  }
}

void sub_251C36BD8()
{
  if (!qword_27F47C9C8)
  {
    sub_251C35248(255, &qword_27F47C8B8, &qword_27F47C8C0, 0x277D115B8, MEMORY[0x277D83940]);
    sub_251C36C84();
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C9C8);
    }
  }
}

unint64_t sub_251C36C84()
{
  result = qword_27F47C9D0;
  if (!qword_27F47C9D0)
  {
    sub_251C35248(255, &qword_27F47C8B8, &qword_27F47C8C0, 0x277D115B8, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C9D0);
  }

  return result;
}

void sub_251C36D08()
{
  if (!qword_27F47C9D8)
  {
    sub_251C35248(255, &qword_27F47C8B8, &qword_27F47C8C0, 0x277D115B8, MEMORY[0x277D83940]);
    sub_251A82284();
    sub_251C36C84();
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C9D8);
    }
  }
}

void sub_251C36DC0()
{
  if (!qword_27F47C9E0)
  {
    sub_251C3704C(255, &qword_27F47C9E8, sub_251C3546C, MEMORY[0x277CBCD88]);
    sub_251C36D08();
    sub_251C36EAC();
    sub_251C37174(&qword_27F47C9F8, sub_251C36D08);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C9E0);
    }
  }
}

unint64_t sub_251C36EAC()
{
  result = qword_27F47C9F0;
  if (!qword_27F47C9F0)
  {
    sub_251C3704C(255, &qword_27F47C9E8, sub_251C3546C, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C9F0);
  }

  return result;
}

void sub_251C36F70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_251C37174(a4, a5);
    v8 = sub_251C708C4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroyTm_11()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_251C3704C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_251A82284();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251C370C8()
{
  if (!qword_27F47CA28)
  {
    sub_251C2BF4C();
    sub_251C3546C();
    sub_251C37174(&qword_27F47C7C0, sub_251C2BF4C);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CA28);
    }
  }
}

uint64_t sub_251C37174(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_251C371BC()
{
  result = qword_27F47CA30;
  if (!qword_27F47CA30)
  {
    sub_251C3704C(255, &qword_27F47CA20, sub_251C3546C, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CA30);
  }

  return result;
}

id sub_251C37244@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 16);
  v3 = *a1;
  *a2 = v6;
  a2[1] = v3;
  v4 = v3;

  return v6;
}

uint64_t sub_251C37288@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_251AF3A84();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  if (a1)
  {
    sub_251C6FE54();
    v11 = sub_251C6FE64();
    v12 = *(v11 - 8);
    result = (*(v12 + 48))(v8, 1, v11);
    if (result != 1)
    {
      return (*(v12 + 32))(a2, v8, v11);
    }

    __break(1u);
    goto LABEL_8;
  }

  sub_251C6FE54();
  v14 = sub_251C6FE64();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v10, 1, v14);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return (*(v15 + 32))(a2, v10, v14);
}

uint64_t sub_251C3745C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7972726163;
  }

  else
  {
    v4 = 1685025392;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7972726163;
  }

  else
  {
    v6 = 1685025392;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_251C719D4();
  }

  return v9 & 1;
}

uint64_t sub_251C374F8()
{
  v1 = *v0;
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251C37570()
{
  *v0;
  sub_251C70FB4();
}

uint64_t sub_251C375D4()
{
  v1 = *v0;
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251C37648@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_251C71854();

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

void sub_251C376A8(uint64_t *a1@<X8>)
{
  v2 = 1685025392;
  if (*v1)
  {
    v2 = 0x7972726163;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_251C37700()
{
  result = qword_27F47CA40;
  if (!qword_27F47CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CA40);
  }

  return result;
}

uint64_t sub_251C3778C()
{
  if (*v0)
  {
    result = 0x73726575737369;
  }

  else
  {
    result = 118;
  }

  *v0;
  return result;
}

uint64_t sub_251C377BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 118 && a2 == 0xE100000000000000 || (sub_251C719D4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73726575737369 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_251C719D4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_251C37890(uint64_t a1)
{
  v2 = sub_251C37AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C378CC(uint64_t a1)
{
  v2 = sub_251C37AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VHRDirectory.encode(to:)(void *a1)
{
  sub_251C37D98(0, &qword_27F47CA48, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v13 - v8;
  v10 = *v1;
  v13[0] = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C37AE0();
  sub_251C71B14();
  v15 = 0;
  sub_251C71954();
  if (!v2)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_251C37B34();
    sub_251C37DFC(&qword_27F47CA60, &qword_27F47CA68);
    sub_251C71964();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_251C37AE0()
{
  result = qword_27F47CA50;
  if (!qword_27F47CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CA50);
  }

  return result;
}

void sub_251C37B34()
{
  if (!qword_27F47CA58)
  {
    type metadata accessor for VHRDirectoryIssuer();
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CA58);
    }
  }
}

uint64_t VHRDirectory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251C37D98(0, &qword_27F47CA70, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C37AE0();
  sub_251C71B04();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_251C718C4();
    sub_251C37B34();
    v16 = 1;
    sub_251C37DFC(&qword_27F47CA78, &qword_27F47CA80);
    sub_251C718D4();
    (*(v7 + 8))(v10, v6);
    v14 = v15[1];
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_251C37D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251C37AE0();
    v7 = a3(a1, &type metadata for VHRDirectory.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251C37DFC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_251C37B34();
    sub_251C37E78(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251C37E78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VHRDirectoryIssuer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251C37F10()
{
  result = qword_27F47CA88;
  if (!qword_27F47CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CA88);
  }

  return result;
}

unint64_t sub_251C37F68()
{
  result = qword_27F47CA90;
  if (!qword_27F47CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CA90);
  }

  return result;
}

unint64_t sub_251C37FC0()
{
  result = qword_27F47CA98;
  if (!qword_27F47CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CA98);
  }

  return result;
}