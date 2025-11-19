uint64_t Publisher<>.getModels(pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2284DAF10();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = Publisher<>.getSummaries(pluginIdentifier:modelIdentifiers:modelObjectTypes:)(a1, a2, 0, 0, a3, a4);
  v14 = MEMORY[0x277CBCD88];
  sub_2284DF75C(0, &qword_280DE98C8, sub_2284D8E24, MEMORY[0x277CBCD88]);
  sub_2284D9214(0, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
  sub_2284DF7D8(&qword_280DE98D0, &qword_280DE98C8, v14);
  sub_22855CE8C();
  sub_2284DF478(&qword_280DE9BC0, sub_2284DAF10);
  v15 = sub_22855CE6C();

  (*(v10 + 8))(v13, v9);
  v20 = v15;
  v16 = MEMORY[0x277CBCD88];
  sub_2284DFA60(0, &qword_280DE98D8, MEMORY[0x277CBCD88]);
  sub_2284DFB08(&qword_280DE98E0, &qword_280DE98D8, v16);
  v17 = sub_22855CE6C();

  return v17;
}

void sub_2284DAF10()
{
  if (!qword_280DE9BB8)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_2284DF75C(255, &qword_280DE98C8, sub_2284D8E24, MEMORY[0x277CBCD88]);
    sub_2284D9214(255, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
    sub_2284DF7D8(&qword_280DE98D0, &qword_280DE98C8, v0);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9BB8);
    }
  }
}

uint64_t Publisher<>.reuse(summaries:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(255, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  v15[0] = v7;
  v15[1] = a2;
  v15[2] = sub_2284DF4C8(&qword_280DE97D0, &qword_280DE97C8, v6);
  v15[3] = a3;
  v8 = sub_22855CBEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  *(swift_allocObject() + 16) = a1;

  sub_22855CCBC();
  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  sub_22855CF2C();

  swift_getWitnessTable();
  v13 = sub_22855CE6C();
  (*(v9 + 8))(v12, v8);
  return v13;
}

uint64_t sub_2284DB220@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  sub_2284DF75C(0, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  result = sub_22855CE0C();
  *a3 = result;
  return result;
}

uint64_t sub_2284DB2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a3;
  v9[4] = sub_2284AEB88;
  v9[5] = v8;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = sub_2284DF67C;
  v10[5] = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2284DF67C;
  *(v11 + 24) = v9;
  v12 = *(a3 + 40);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();

  os_unfair_lock_lock(v12 + 16);
  sub_228435484(&v12[4], &v15);
  os_unfair_lock_unlock(v12 + 16);
  v13 = v15;
  if (v15)
  {
    v15();
    sub_228416CF8(v13);
  }
}

void sub_2284DB48C(void *a1, unint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v10 = sub_22855C1DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v48 = v13;
    v16 = a1;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v17 = sub_22855CABC();
    __swift_project_value_buffer(v17, qword_280DEEBF0);
    v18 = a1;

    v19 = sub_22855CA8C();
    v20 = sub_22855D68C();

    if (os_log_type_enabled(v19, v20))
    {
      v49 = a5;
      v47 = a4;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v51 = v22;
      *v21 = 134218498;
      if (a2 >> 62)
      {
        v23 = sub_22855DB4C();
      }

      else
      {
        v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 4) = v23;

      *(v21 + 12) = 2080;
      v24 = [*(a3 + 16) transactionUUID];
      sub_22855C1BC();

      v25 = sub_22855C17C();
      v27 = v26;
      (*(v11 + 8))(v15, v48);
      v28 = sub_2283F8938(v25, v27, &v51);

      *(v21 + 14) = v28;
      *(v21 + 22) = 2082;
      v50 = a1;
      v29 = a1;
      sub_228418D44();
      v30 = sub_22855D1CC();
      v32 = sub_2283F8938(v30, v31, &v51);

      *(v21 + 24) = v32;
      _os_log_impl(&dword_2283ED000, v19, v20, "[Transaction] Could not reuse %ld summaries for transaction %s. %{public}s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v22, -1, -1);
      MEMORY[0x22AABAD40](v21, -1, -1);

      a4 = v47;
    }

    else
    {
    }

    v45 = a1;
    a4(a1, 1);
  }

  else
  {
    v33 = v13;
    v49 = a5;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v34 = sub_22855CABC();
    __swift_project_value_buffer(v34, qword_280DEEBF0);

    v35 = sub_22855CA8C();
    v36 = sub_22855D6AC();

    if (os_log_type_enabled(v35, v36))
    {
      v48 = v33;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51 = v38;
      *v37 = 134218242;
      if (a2 >> 62)
      {
        v39 = sub_22855DB4C();
      }

      else
      {
        v39 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v37 + 4) = v39;

      *(v37 + 12) = 2080;
      v40 = [*(a3 + 16) transactionUUID];
      sub_22855C1BC();

      v41 = sub_22855C17C();
      v43 = v42;
      (*(v11 + 8))(v15, v48);
      v44 = sub_2283F8938(v41, v43, &v51);

      *(v37 + 14) = v44;
      _os_log_impl(&dword_2283ED000, v35, v36, "[Transaction] Reusing %ld summaries for transaction %s", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AABAD40](v38, -1, -1);
      MEMORY[0x22AABAD40](v37, -1, -1);
    }

    else
    {
    }

    a4(a3, 0);
  }
}

uint64_t Publisher<>.removeSummaries(_:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a5;
  v10 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE9928, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCD88]);
  v20[2] = v11;
  v20[3] = a4;
  v20[4] = sub_2284DF4C8(&qword_280DE9930, &qword_280DE9928, v10);
  v20[5] = a5;
  v12 = sub_22855CBEC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a1;

  sub_22855CCBC();
  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  sub_22855CF2C();

  swift_getWitnessTable();
  v18 = sub_22855CE6C();
  (*(v13 + 8))(v16, v12);
  return v18;
}

uint64_t sub_2284DBBB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v11 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  sub_22855CE0C();
  sub_2284DF4C8(&qword_280DE97D0, &qword_280DE97C8, v11);
  v15 = sub_22855CE6C();

  *a5 = v15;
  return result;
}

uint64_t sub_2284DBD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = sub_2284AEB88;
  v13[4] = v12;
  v13[5] = a6;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = sub_2284DF668;
  v14[7] = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2284DF668;
  *(v15 + 24) = v13;
  v16 = *(a3 + 40);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  os_unfair_lock_lock(v16 + 16);
  sub_228435484(&v16[4], &v19);
  os_unfair_lock_unlock(v16 + 16);
  v17 = v19;
  if (v19)
  {
    v19();
    sub_228416CF8(v17);
  }
}

void sub_2284DBEB8(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v9 = sub_22855C1DC();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = sub_22855BF2C();
    if ([v14 hk_isObjectNotFoundError])
    {
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v15 = sub_22855CABC();
      __swift_project_value_buffer(v15, qword_280DEEBF0);

      v16 = sub_22855CA8C();
      v17 = sub_22855D6AC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v59 = v56;
        *v18 = 136315138;
        v19 = [*(a2 + 16) transactionUUID];
        sub_22855C1BC();

        v20 = sub_22855C17C();
        v21 = v10;
        v22 = a3;
        v24 = v23;
        (*(v21 + 8))(v13, v9);
        v25 = sub_2283F8938(v20, v24, &v59);
        a3 = v22;

        *(v18 + 4) = v25;
        _os_log_impl(&dword_2283ED000, v16, v17, "[Transaction] Some summaries were not found and could not be removed in transaction %s", v18, 0xCu);
        v26 = v56;
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x22AABAD40](v26, -1, -1);
        MEMORY[0x22AABAD40](v18, -1, -1);
      }

      a3(a2, 0);
    }

    else
    {
      v55 = a3;
      v56 = v9;
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v38 = sub_22855CABC();
      __swift_project_value_buffer(v38, qword_280DEEBF0);

      v39 = v14;
      v40 = sub_22855CA8C();
      v41 = sub_22855D68C();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v59 = v43;
        *v42 = 134349570;
        *(v42 + 4) = *(a5 + 16);

        *(v42 + 12) = 2080;
        v44 = [*(a2 + 16) transactionUUID];
        sub_22855C1BC();

        v45 = sub_22855C17C();
        v47 = v46;
        (*(v10 + 8))(v13, v56);
        v48 = sub_2283F8938(v45, v47, &v59);

        *(v42 + 14) = v48;
        *(v42 + 22) = 2082;
        v58 = v39;
        sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
        v49 = v39;
        v50 = sub_22855D1CC();
        v52 = sub_2283F8938(v50, v51, &v59);

        *(v42 + 24) = v52;
        _os_log_impl(&dword_2283ED000, v40, v41, "[Transaction] Could not remove %{public}ld summaries from transaction %s. %{public}s", v42, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v43, -1, -1);
        MEMORY[0x22AABAD40](v42, -1, -1);
      }

      else
      {
      }

      v53 = v39;
      v55(v39, 1);
    }
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
    v29 = sub_22855D6AC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v56 = v9;
      v32 = v31;
      v59 = v31;
      *v30 = 134349314;
      *(v30 + 4) = *(a5 + 16);

      *(v30 + 12) = 2080;
      v33 = [*(a2 + 16) transactionUUID];
      sub_22855C1BC();

      v34 = sub_22855C17C();
      v36 = v35;
      (*(v10 + 8))(v13, v56);
      v37 = sub_2283F8938(v34, v36, &v59);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_2283ED000, v28, v29, "[Transaction] Removed %{public}ld existing summaries from transaction %s", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AABAD40](v32, -1, -1);
      MEMORY[0x22AABAD40](v30, -1, -1);
    }

    else
    {
    }

    a3(a2, 0);
  }
}

uint64_t Publisher<>.removeAllSummaries(pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE9928, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCD88]);
  v18[2] = v9;
  v18[3] = a3;
  v18[4] = sub_2284DF4C8(&qword_280DE9930, &qword_280DE9928, v8);
  v18[5] = a4;
  v10 = sub_22855CBEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  sub_22855CCBC();
  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  sub_22855CF2C();

  swift_getWitnessTable();
  v16 = sub_22855CE6C();
  (*(v11 + 8))(v14, v10);
  return v16;
}

uint64_t sub_2284DC728@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v9 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  sub_22855CE0C();
  sub_2284DF4C8(&qword_280DE97D0, &qword_280DE97C8, v9);
  v13 = sub_22855CE6C();

  *a4 = v13;
  return result;
}

uint64_t sub_2284DC868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a3;
  v11[5] = sub_2284AEB88;
  v11[6] = v10;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = sub_2284DF5EC;
  v12[6] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2284DF5EC;
  *(v13 + 24) = v11;
  v14 = *(a3 + 40);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();

  os_unfair_lock_lock(v14 + 16);
  sub_228435484(&v14[4], &v17);
  os_unfair_lock_unlock(v14 + 16);
  v15 = v17;
  if (v17)
  {
    v17();
    sub_228416CF8(v15);
  }
}

void sub_2284DCA10(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t *a6)
{
  v12 = sub_22855C1DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v61 = v13;
    v17 = sub_22855BF2C();
    if ([v17 hk_isObjectNotFoundError])
    {
      v60 = a2;
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v18 = sub_22855CABC();
      __swift_project_value_buffer(v18, qword_280DEEBF0);

      v19 = sub_22855CA8C();
      v20 = sub_22855D6AC();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v62 = a6;
        v22 = v21;
        v23 = swift_slowAlloc();
        v59 = a5;
        v24 = v23;
        v64 = v23;
        *v22 = 136446466;
        *(v22 + 4) = sub_2283F8938(v60, a3, &v64);
        *(v22 + 12) = 2080;
        v25 = [*(a4 + 16) transactionUUID];
        sub_22855C1BC();

        v26 = sub_22855C17C();
        v28 = v27;
        (*(v61 + 8))(v16, v12);
        v29 = sub_2283F8938(v26, v28, &v64);

        *(v22 + 14) = v29;
        _os_log_impl(&dword_2283ED000, v19, v20, "[Transaction] No summaries to remove for package %{public}s in transaction %s", v22, 0x16u);
        swift_arrayDestroy();
        v30 = v24;
        a5 = v59;
        MEMORY[0x22AABAD40](v30, -1, -1);
        MEMORY[0x22AABAD40](v22, -1, -1);
      }

      a5(a4, 0);
    }

    else
    {
      v62 = a6;
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v42 = sub_22855CABC();
      __swift_project_value_buffer(v42, qword_280DEEBF0);

      v43 = v17;
      v44 = sub_22855CA8C();
      v45 = sub_22855D68C();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = a2;
        v47 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v64 = v60;
        *v47 = 136446722;
        *(v47 + 4) = sub_2283F8938(v46, a3, &v64);
        *(v47 + 12) = 2080;
        v48 = [*(a4 + 16) transactionUUID];
        sub_22855C1BC();

        v49 = sub_22855C17C();
        v51 = v50;
        (*(v61 + 8))(v16, v12);
        v52 = sub_2283F8938(v49, v51, &v64);

        *(v47 + 14) = v52;
        *(v47 + 22) = 2082;
        v63 = v43;
        sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
        v53 = v43;
        v54 = sub_22855D1CC();
        v56 = sub_2283F8938(v54, v55, &v64);

        *(v47 + 24) = v56;
        _os_log_impl(&dword_2283ED000, v44, v45, "[Transaction] Could not remove all summaries in %{public}s for transaction %s. %{public}s", v47, 0x20u);
        v57 = v60;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v57, -1, -1);
        MEMORY[0x22AABAD40](v47, -1, -1);
      }

      v58 = v43;
      a5(v43, 1);
    }
  }

  else
  {
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v31 = sub_22855CABC();
    __swift_project_value_buffer(v31, qword_280DEEBF0);

    v32 = sub_22855CA8C();
    v33 = sub_22855D6AC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v64 = v62;
      *v34 = 136315138;
      v35 = [*(a4 + 16) transactionUUID];
      sub_22855C1BC();

      v36 = sub_22855C17C();
      v37 = a5;
      v39 = v38;
      (*(v13 + 8))(v16, v12);
      v40 = sub_2283F8938(v36, v39, &v64);
      a5 = v37;

      *(v34 + 4) = v40;
      _os_log_impl(&dword_2283ED000, v32, v33, "[Transaction] Removed all summaries from transaction %s", v34, 0xCu);
      v41 = v62;
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x22AABAD40](v41, -1, -1);
      MEMORY[0x22AABAD40](v34, -1, -1);
    }

    a5(a4, 0);
  }
}

uint64_t Publisher<>.addMetadata(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE9928, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCD88]);
  v15[0] = v7;
  v15[1] = a2;
  v15[2] = sub_2284DF4C8(&qword_280DE9930, &qword_280DE9928, v6);
  v15[3] = a3;
  v8 = sub_22855CBEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  *(swift_allocObject() + 16) = a1;

  sub_22855CCBC();
  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  sub_22855CF2C();

  swift_getWitnessTable();
  v13 = sub_22855CE6C();
  (*(v9 + 8))(v12, v8);
  return v13;
}

uint64_t sub_2284DD2A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  v7 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  sub_22855CE0C();
  sub_2284DF4C8(&qword_280DE97D0, &qword_280DE97C8, v7);
  v11 = sub_22855CE6C();

  *a3 = v11;
  return result;
}

uint64_t sub_2284DD3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = sub_2284AEB88;
  v9[4] = v8;
  v9[5] = a4;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = sub_2284DF584;
  v10[5] = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2284DF584;
  *(v11 + 24) = v9;
  v12 = *(a3 + 40);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  os_unfair_lock_lock(v12 + 16);
  sub_228435484(&v12[4], &v15);
  os_unfair_lock_unlock(v12 + 16);
  v13 = v15;
  if (v15)
  {
    v15();
    sub_228416CF8(v13);
  }
}

void sub_2284DD57C(void *a1, id *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v48 = a3;
  v7 = sub_22855C1DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v13 = sub_22855CABC();
    __swift_project_value_buffer(v13, qword_280DEEBF0);
    v14 = a1;

    v15 = sub_22855CA8C();
    v16 = sub_22855D68C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v47 = a4;
      v19 = v18;
      v50 = v18;
      *v17 = 136315394;
      v20 = [a2[2] transactionUUID];
      sub_22855C1BC();

      v21 = sub_22855C17C();
      v23 = v22;
      (*(v8 + 8))(v11, v7);
      v24 = sub_2283F8938(v21, v23, &v50);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2082;
      v49 = a1;
      v25 = a1;
      sub_228418D44();
      v26 = sub_22855D1CC();
      v28 = sub_2283F8938(v26, v27, &v50);

      *(v17 + 14) = v28;
      _os_log_impl(&dword_2283ED000, v15, v16, "[Transaction] Could not add metadata to transaction %s. %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v19, -1, -1);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v29 = a1;
    v48(a1, 1);
  }

  else
  {
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v30 = sub_22855CABC();
    __swift_project_value_buffer(v30, qword_280DEEBF0);

    v31 = sub_22855CA8C();
    v32 = sub_22855D6AC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v46 = v7;
      v34 = v33;
      v35 = swift_slowAlloc();
      v47 = a4;
      v36 = v35;
      v50 = v35;
      *v34 = 136315395;
      v37 = [a2[2] transactionUUID];
      sub_22855C1BC();

      v38 = sub_22855C17C();
      v40 = v39;
      (*(v8 + 8))(v11, v46);
      v41 = sub_2283F8938(v38, v40, &v50);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2081;
      v42 = sub_22855D0FC();
      v44 = sub_2283F8938(v42, v43, &v50);

      *(v34 + 14) = v44;
      _os_log_impl(&dword_2283ED000, v31, v32, "[Transaction] Transaction %s metadata successfully added: %{private}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v36, -1, -1);
      MEMORY[0x22AABAD40](v34, -1, -1);
    }

    v48(a2, 0);
  }
}

uint64_t Publisher<>.commit(asUrgent:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE9928, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCD88]);
  v15[0] = v7;
  v15[1] = a2;
  v15[2] = sub_2284DF4C8(&qword_280DE9930, &qword_280DE9928, v6);
  v15[3] = a3;
  v8 = sub_22855CBEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  *(swift_allocObject() + 16) = a1;
  sub_22855CCBC();
  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  sub_22855CF2C();

  swift_getWitnessTable();
  v13 = sub_22855CE6C();
  (*(v9 + 8))(v12, v8);
  return v13;
}

uint64_t sub_2284DDC44@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  v7 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  sub_22855CE0C();
  sub_2284DF4C8(&qword_280DE97D0, &qword_280DE97C8, v7);
  v11 = sub_22855CE6C();

  *a3 = v11;
  return result;
}

uint64_t sub_2284DDD74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = sub_2284AEB88;
  *(v9 + 32) = v8;
  *(v9 + 40) = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = sub_2284DF568;
  *(v10 + 40) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2284DF568;
  *(v11 + 24) = v9;
  v12 = *(a3 + 40);
  swift_retain_n();
  swift_retain_n();

  os_unfair_lock_lock(v12 + 16);
  sub_228435484(&v12[4], &v15);
  os_unfair_lock_unlock(v12 + 16);
  v13 = v15;
  if (v15)
  {
    v15();
    sub_228416CF8(v13);
  }
}

uint64_t sub_2284DDF04(void *a1, char a2, int a3, uint64_t (*a4)(void, void), uint64_t a5, id *a6)
{
  v54 = a3;
  v11 = sub_22855C1DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v53 = a5;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DEEBF0);
    sub_228476E38(a1);

    v17 = sub_22855CA8C();
    v18 = sub_22855D68C();

    sub_228476E44(a1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v52 = a4;
      v20 = v19;
      v21 = swift_slowAlloc();
      v56 = v21;
      *v20 = 136315650;
      v22 = [a6[2] transactionUUID];
      sub_22855C1BC();

      v23 = sub_22855C17C();
      v25 = v24;
      (*(v12 + 8))(v15, v11);
      v26 = sub_2283F8938(v23, v25, &v56);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2082;
      if (v54)
      {
        v27 = 0x6E65677275207361;
      }

      else
      {
        v27 = 0;
      }

      if (v54)
      {
        v28 = 0xE900000000000074;
      }

      else
      {
        v28 = 0xE000000000000000;
      }

      v29 = sub_2283F8938(v27, v28, &v56);

      *(v20 + 14) = v29;
      *(v20 + 22) = 2082;
      v55 = a1;
      v30 = a1;
      sub_228418D44();
      v31 = sub_22855D1CC();
      v33 = sub_2283F8938(v31, v32, &v56);

      *(v20 + 24) = v33;
      _os_log_impl(&dword_2283ED000, v17, v18, "[Transaction] Could not commit transaction %s %{public}s. %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v21, -1, -1);
      v34 = v20;
      a4 = v52;
      MEMORY[0x22AABAD40](v34, -1, -1);
    }

    v35 = a1;
    v36 = 1;
  }

  else
  {
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v37 = sub_22855CABC();
    __swift_project_value_buffer(v37, qword_280DEEBF0);
    v38 = a1;
    v39 = sub_22855CA8C();
    v40 = sub_22855D6AC();
    sub_228476E44(a1);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v55 = v38;
      v56 = v42;
      *v41 = 136446466;
      sub_2283EF310(0, &qword_280DE9280, 0x277CCD940);
      v43 = v38;
      v44 = sub_22855D1CC();
      v46 = sub_2283F8938(v44, v45, &v56);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2082;
      if (v54)
      {
        v47 = 0x6E65677275207361;
      }

      else
      {
        v47 = 0;
      }

      if (v54)
      {
        v48 = 0xE900000000000074;
      }

      else
      {
        v48 = 0xE000000000000000;
      }

      v49 = sub_2283F8938(v47, v48, &v56);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_2283ED000, v39, v40, "[Transaction] Transaction %{public}s successfully committed %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v42, -1, -1);
      MEMORY[0x22AABAD40](v41, -1, -1);
    }

    v35 = a6;
    v36 = 0;
  }

  return a4(v35, v36);
}

uint64_t Publisher<>.discard()(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE9928, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCD88]);
  v13[0] = v5;
  v13[1] = a1;
  v13[2] = sub_2284DF4C8(&qword_280DE9930, &qword_280DE9928, v4);
  v13[3] = a2;
  v6 = sub_22855CBEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  sub_22855CCBC();
  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  sub_22855CF2C();
  swift_getWitnessTable();
  v11 = sub_22855CE6C();
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t sub_2284DE5A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_22855CE0C();
  sub_2284DF4C8(&qword_280DE97D0, &qword_280DE97C8, v4);
  v8 = sub_22855CE6C();

  *a2 = v8;
  return result;
}

uint64_t sub_2284DE6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = sub_2284AE8FC;
  v7[4] = v6;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = sub_2284DF550;
  v8[4] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2284DF550;
  *(v9 + 24) = v7;
  v10 = *(a3 + 40);
  swift_retain_n();
  swift_retain_n();

  os_unfair_lock_lock(v10 + 16);
  sub_228434624(&v10[4], &v13);
  os_unfair_lock_unlock(v10 + 16);
  v11 = v13;
  if (v13)
  {
    v13();
    sub_228416CF8(v11);
  }
}

void sub_2284DE82C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_22855C1DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v14 = sub_22855CABC();
    __swift_project_value_buffer(v14, qword_280DEEBF0);
    v15 = a1;

    v16 = sub_22855CA8C();
    v17 = sub_22855D68C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v44 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v45 = a4;
      v21 = v20;
      v47 = v20;
      *v19 = 136315394;
      v22 = [*(a2 + 16) transactionUUID];
      sub_22855C1BC();

      v23 = sub_22855C17C();
      v25 = v24;
      (*(v9 + 8))(v12, v8);
      v26 = sub_2283F8938(v23, v25, &v47);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2082;
      v46 = a1;
      v27 = a1;
      sub_228418D44();
      v28 = sub_22855D1CC();
      v30 = sub_2283F8938(v28, v29, &v47);

      *(v19 + 14) = v30;
      _os_log_impl(&dword_2283ED000, v16, v17, "[Transaction] Could not discard failed transaction %s. %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v21, -1, -1);
      v31 = v19;
      a3 = v44;
      MEMORY[0x22AABAD40](v31, -1, -1);
    }

    v32 = a1;
    (a3)(a1, 1);
  }

  else
  {
    v45 = a4;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v33 = sub_22855CABC();
    __swift_project_value_buffer(v33, qword_280DEEBF0);

    v34 = sub_22855CA8C();
    v35 = sub_22855D6AC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v47 = v44;
      *v36 = 136315138;
      v37 = [*(a2 + 16) transactionUUID];
      sub_22855C1BC();

      v38 = sub_22855C17C();
      v39 = a3;
      v41 = v40;
      (*(v9 + 8))(v12, v8);
      v42 = sub_2283F8938(v38, v41, &v47);
      a3 = v39;

      *(v36 + 4) = v42;
      _os_log_impl(&dword_2283ED000, v34, v35, "[Transaction] Transaction %s successfully discarded", v36, 0xCu);
      v43 = v44;
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AABAD40](v43, -1, -1);
      MEMORY[0x22AABAD40](v36, -1, -1);
    }

    (a3)(a2, 0);
  }
}

uint64_t sub_2284DEC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a3;
  v9[4] = sub_2284AEB88;
  v9[5] = v8;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = sub_2284DFB60;
  v10[5] = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2284DFB60;
  *(v11 + 24) = v9;
  v12 = *(a3 + 40);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();

  os_unfair_lock_lock(v12 + 16);
  sub_228435484(&v12[4], &v15);
  os_unfair_lock_unlock(v12 + 16);
  v13 = v15;
  if (v15)
  {
    v15();
    sub_228416CF8(v13);
  }
}

void sub_2284DEE38(void *a1, unint64_t a2, uint64_t a3, void (*a4)(unint64_t, void), uint64_t a5)
{
  v10 = sub_22855C1DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v60 = a5;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v32 = sub_22855CABC();
    __swift_project_value_buffer(v32, qword_280DEEBF0);

    v33 = sub_22855CA8C();
    v34 = sub_22855D66C();

    if (!os_log_type_enabled(v33, v34))
    {

LABEL_25:
      a4(a2, 0);
      return;
    }

    v59 = v11;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v62 = v36;
    *v35 = 134218499;
    if (a2 >> 62)
    {
      v37 = sub_22855DB4C();
    }

    else
    {
      v37 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v35 + 4) = v37;

    *(v35 + 12) = 2081;
    if (a2 >> 62)
    {
      v46 = sub_22855DB4C();
      v57 = v36;
      if (v46)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v38 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v57 = v36;
      if (v38)
      {
LABEL_15:
        v58 = a4;
        if ((a2 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x22AAB9D20](0, a2);
        }

        else
        {
          if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v39 = *(a2 + 32);
        }

        v40 = v39;
        v41 = [v39 package];

        v42 = sub_22855D1AC();
        v44 = v43;

        a4 = v58;
        goto LABEL_24;
      }
    }

    v42 = 0;
    v44 = 0;
LABEL_24:
    v61[0] = v42;
    v61[1] = v44;
    sub_2284DF8DC();
    v47 = sub_22855D1BC();
    v49 = sub_2283F8938(v47, v48, &v62);

    *(v35 + 14) = v49;
    *(v35 + 22) = 2080;
    v50 = [*(a3 + 16) transactionUUID];
    sub_22855C1BC();

    sub_2284DF478(&qword_280DECD70, MEMORY[0x277CC95F0]);
    v51 = sub_22855E11C();
    v53 = v52;
    (*(v59 + 8))(v14, v10);
    v54 = sub_2283F8938(v51, v53, &v62);

    *(v35 + 24) = v54;
    _os_log_impl(&dword_2283ED000, v33, v34, "[Transaction] %ld sharable model(s) from %{private}s added to transaction %s", v35, 0x20u);
    v55 = v57;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v55, -1, -1);
    MEMORY[0x22AABAD40](v35, -1, -1);

    goto LABEL_25;
  }

  v59 = v11;
  v15 = a1;
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v16 = sub_22855CABC();
  __swift_project_value_buffer(v16, qword_280DEEBF0);
  v17 = a1;

  v18 = sub_22855CA8C();
  v19 = sub_22855D68C();

  if (os_log_type_enabled(v18, v19))
  {
    v60 = a5;
    v58 = a4;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v61[0] = v21;
    *v20 = 134349570;
    if (a2 >> 62)
    {
      v22 = sub_22855DB4C();
    }

    else
    {
      v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v22;

    *(v20 + 12) = 2080;
    v23 = [*(a3 + 16) transactionUUID];
    sub_22855C1BC();

    v24 = sub_22855C17C();
    v26 = v25;
    (*(v59 + 8))(v14, v10);
    v27 = sub_2283F8938(v24, v26, v61);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    v62 = a1;
    v28 = a1;
    sub_228418D44();
    v29 = sub_22855D1CC();
    v31 = sub_2283F8938(v29, v30, v61);

    *(v20 + 24) = v31;
    _os_log_impl(&dword_2283ED000, v18, v19, "[Transaction] Could not add %{public}ld summaries to transaction %s. %{public}s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v21, -1, -1);
    MEMORY[0x22AABAD40](v20, -1, -1);

    a4 = v58;
  }

  else
  {
  }

  v45 = a1;
  a4(a1, 1);
}

uint64_t sub_2284DF478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2284DF4C8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_2284DF75C(255, a2, type metadata accessor for CachingSharedSummaryTransactionBuilder, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_26Tm_0(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_5Tm_2(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[4]);
  v4 = v2[5];

  return MEMORY[0x2821FE8E8](v2, 48, 7);
}

void sub_2284DF694()
{
  if (!qword_280DE9710)
  {
    v0 = MEMORY[0x277CBCEA8];
    sub_2284DF75C(255, &qword_280DE9798, sub_2284D8E24, MEMORY[0x277CBCEA8]);
    sub_2284DF7D8(&qword_280DE97A0, &qword_280DE9798, v0);
    v1 = sub_22855CE3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9710);
    }
  }
}

void sub_2284DF75C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_228418D44();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2284DF7D8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_2284DF75C(255, a2, sub_2284D8E24, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_120Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_2284DF8DC()
{
  if (!qword_280DEE7D0)
  {
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE7D0);
    }
  }
}

uint64_t sub_2284DF92C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE9798, sub_2284D8E24, MEMORY[0x277CBCEA8]);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  sub_22855CE0C();
  sub_2284DF7D8(&qword_280DE97A0, &qword_280DE9798, v5);
  v9 = sub_22855CE6C();

  return v9;
}

void sub_2284DFA60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_2284D9214(255, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
    v7 = v6;
    v8 = sub_228418D44();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2284DFB08(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_2284DFA60(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_62Tm(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[3]);
  v4 = v2[5];

  return MEMORY[0x2821FE8E8](v2, 48, 7);
}

uint64_t static InputSignalSet.LookupKey.preferredSummaryTransaction.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for PreferredSummaryTransactionInputSignal();
  return sub_22855C61C();
}

uint64_t type metadata accessor for PreferredSummaryTransactionInputSignal()
{
  result = qword_27D840008;
  if (!qword_27D840008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2284DFCE0()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_22855C83C();
  __swift_allocate_value_buffer(v2, qword_27D83FFC8);
  __swift_project_value_buffer(v2, qword_27D83FFC8);
  sub_22855C84C();
  return sub_22855C82C();
}

uint64_t static PreferredSummaryTransactionInputSignal.identityConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D83F008 != -1)
  {
    swift_once();
  }

  v2 = sub_22855C83C();
  v3 = __swift_project_value_buffer(v2, qword_27D83FFC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PreferredSummaryTransactionInputSignal.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_identifier;
  v4 = sub_22855C85C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreferredSummaryTransactionInputSignal.observer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_observer);
  v2 = *(v0 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_observer + 8);
  return swift_unknownObjectRetain();
}

BOOL PreferredSummaryTransactionInputSignal.isIdle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16) == 0;
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t PreferredSummaryTransactionInputSignal.__allocating_init(observer:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();

  return sub_2284E153C(a1, a2, sub_2284EEB70, 0, v7);
}

uint64_t PreferredSummaryTransactionInputSignal.__allocating_init(observer:transactionSelector:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_2284E1704(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v10;
}

uint64_t PreferredSummaryTransactionInputSignal.init(observer:transactionSelector:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_2284E1608(a1, a2, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v14;
}

uint64_t PreferredSummaryTransactionInputSignal.dependencyConfigurations(for:)()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2284E1F1C(0, &qword_280DE8F50, sub_22842DFA0, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228560580;
  *(v2 + 56) = sub_22855C83C();
  *(v2 + 64) = sub_2284E1A58(&qword_280DE9F08, MEMORY[0x277D11C38]);
  __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  sub_22855C84C();
  sub_22855C82C();
  return v2;
}

uint64_t PreferredSummaryTransactionInputSignal.dependencyDidUpdate(anchors:)()
{
  v1 = v0;
  v2 = *v0;
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DE9DF8);
  v4 = sub_22855CA8C();
  v5 = sub_22855D6AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136446210;
    v8 = sub_22855E34C();
    v10 = sub_2283F8938(v8, v9, v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%{public}s] Received anchors from dependencies", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  sub_2284E0470();
  v12 = v11;
  v13 = *(v1 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState);
  MEMORY[0x28223BE20](v11);
  os_unfair_lock_lock((v13 + 24));
  sub_2284E1808((v13 + 16), v15);
  os_unfair_lock_unlock((v13 + 24));
  if (LOBYTE(v15[0]) == 1)
  {
    sub_2284E0990(v12);
  }
}

void sub_2284E0470()
{
  v27 = *v0;
  sub_2284E1F1C(0, &qword_27D840028, sub_2284E1E10, MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v27 - v3;
  v5 = sub_22855C85C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2284E1F1C(0, &qword_27D840030, type metadata accessor for SummaryTransactionInputSignal, MEMORY[0x277D11BC0]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  sub_2284E1E10();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855C84C();
  type metadata accessor for SummaryTransactionInputSignal();
  sub_22855C61C();
  sub_2284E1A58(qword_280DEAC68, type metadata accessor for SummaryTransactionInputSignal);
  sub_22855C81C();
  (*(v9 + 8))(v12, v8);
  if ((*(v15 + 48))(v4, 1, v14) == 1)
  {
    sub_2284E1F80(v4);
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v19 = sub_22855CABC();
    __swift_project_value_buffer(v19, qword_280DE9DF8);
    v20 = sub_22855CA8C();
    v21 = sub_22855D68C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136446210;
      v24 = sub_22855E34C();
      v26 = sub_2283F8938(v24, v25, &v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_2283ED000, v20, v21, "[%{public}s] No transactions anchor received", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AABAD40](v23, -1, -1);
      MEMORY[0x22AABAD40](v22, -1, -1);
    }

    if (MEMORY[0x277D84F90] >> 62)
    {
      if (sub_22855DB4C())
      {
        sub_22845FCB8(MEMORY[0x277D84F90]);
      }
    }
  }

  else
  {
    (*(v15 + 32))(v18, v4, v14);
    sub_22855C8EC();
    (*(v15 + 8))(v18, v14);
  }
}

unint64_t *sub_2284E0914@<X0>(unint64_t *result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*result == 1)
  {
    *a3 = 1;
  }

  else
  {
    if (*result)
    {
      v3 = result;
      sub_228434D9C(*result);
      *v3 = a2;
      *a3 = 0;
    }

    else
    {
      *result = a2;
      *a3 = 0;
    }
  }

  return result;
}

uint64_t sub_2284E0990(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v34 = sub_22855C85C();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v34);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284E1AE8(0);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v13 = sub_22855CABC();
  __swift_project_value_buffer(v13, qword_280DE9DF8);
  v14 = sub_22855CA8C();
  v15 = sub_22855D6AC();
  v16 = os_log_type_enabled(v14, v15);
  v33[1] = v4;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v37 = v18;
    *v17 = 136446210;
    v19 = sub_22855E34C();
    v33[0] = v2;
    v21 = sub_2283F8938(v19, v20, &v37);
    v2 = v33[0];

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2283ED000, v14, v15, "[%{public}s] Updating observer with preferred transaction", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AABAD40](v18, -1, -1);
    MEMORY[0x22AABAD40](v17, -1, -1);
  }

  v22 = *(v2 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector + 24);
  v23 = *(v2 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector), v22);
  v37 = a1;
  v24 = *(v23 + 8);
  sub_2284E1D3C(0);
  v26 = v25;
  v27 = sub_2284E1A58(&qword_27D840020, sub_2284E1D3C);
  v28 = v24(&v37, v26, v27, v22, v23);
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_identifier, v34);
  sub_2284E1B24();
  sub_2284E1A58(&unk_280DE9288, sub_2284E1B24);
  v29 = v28;
  sub_22855C9BC();
  v31 = *(v2 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_observer);
  v30 = *(v2 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_observer + 8);
  swift_getObjectType();
  v37 = v2;
  sub_2284E1A58(&qword_27D840018, type metadata accessor for PreferredSummaryTransactionInputSignal);
  sub_22855C78C();

  return (*(v35 + 8))(v12, v36);
}

unint64_t sub_2284E0DD0@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3 == 1)
  {
    v5 = a2;
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v6 = sub_22855CABC();
    __swift_project_value_buffer(v6, qword_280DE9DF8);
    v7 = sub_22855CA8C();
    v8 = sub_22855D68C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      v11 = sub_22855E34C();
      v13 = sub_2283F8938(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2283ED000, v7, v8, "[%{public}s] Observation started multiple times", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AABAD40](v10, -1, -1);
      MEMORY[0x22AABAD40](v9, -1, -1);
    }

    v4 = 0;
    v3 = 1;
    a2 = v5;
  }

  else
  {
    v4 = v3;
    if (!v3)
    {
      *a1 = 1;
    }
  }

  *a2 = v4;
  return sub_2284E1D2C(v3);
}

Swift::Void __swiftcall PreferredSummaryTransactionInputSignal.stopObservation()()
{
  v1 = v0;
  v2 = *v0;
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DE9DF8);
  v4 = sub_22855CA8C();
  v5 = sub_22855D6AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_22855E34C();
    v10 = sub_2283F8938(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%{public}s] Stopping observation", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  v11 = *(v1 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState);
  os_unfair_lock_lock((v11 + 24));
  sub_228434D9C(*(v11 + 16));
  *(v11 + 16) = 0;

  os_unfair_lock_unlock((v11 + 24));
}

uint64_t PreferredSummaryTransactionInputSignal.deinit()
{
  v1 = OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_identifier;
  v2 = sub_22855C85C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_observer);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector));
  return v0;
}

uint64_t PreferredSummaryTransactionInputSignal.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_identifier;
  v2 = sub_22855C85C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_observer);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2284E1270@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_identifier;
  v5 = sub_22855C85C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2284E12EC()
{
  v1 = (*v0 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_observer);
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_2284E136C()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2284E1F1C(0, &qword_280DE8F50, sub_22842DFA0, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228560580;
  *(v2 + 56) = sub_22855C83C();
  *(v2 + 64) = sub_2284E1A58(&qword_280DE9F08, MEMORY[0x277D11C38]);
  __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  sub_22855C84C();
  sub_22855C82C();
  return v2;
}

uint64_t sub_2284E14D0(uint64_t a1)
{
  v2 = sub_2284E1A58(&qword_27D840018, type metadata accessor for PreferredSummaryTransactionInputSignal);

  return MEMORY[0x28216B080](a1, v2);
}

uint64_t sub_2284E153C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v12 = a3;
  v13 = &type metadata for PreferredSummaryTransactionSelector;
  v14 = &protocol witness table for PreferredSummaryTransactionSelector;
  *(&v12 + 1) = a4;
  sub_22855C84C();
  v8 = OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState;
  sub_2284E200C();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *(a5 + v8) = v9;
  v10 = (a5 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_observer);
  *v10 = a1;
  v10[1] = a2;
  sub_2283FAB3C(&v12, a5 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector);
  return a5;
}

uint64_t sub_2284E1608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a5;
  v18 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  sub_22855C84C();
  v12 = OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState;
  sub_2284E200C();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *(a4 + v12) = v13;
  v14 = (a4 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_observer);
  *v14 = a1;
  v14[1] = a2;
  sub_2283FAB3C(&v16, a4 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector);
  return a4;
}

uint64_t sub_2284E1704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  (*(v11 + 16))(v14, a3, a5);
  return sub_2284E1608(a1, a2, v14, v18, a5, a6);
}

void _s14HealthPlatform38PreferredSummaryTransactionInputSignalC16beginObservation4from14configurationsy0A13Orchestration31SecureCodingOptionalValueAnchorVySo08HKShareddE0CAkG0mN6ObjectAAyHCg_GSg_SayAG21IdentityConfigurationVGtF_0()
{
  v1 = v0;
  v2 = *v0;
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DE9DF8);
  v4 = sub_22855CA8C();
  v5 = sub_22855D6AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_22855E34C();
    v10 = sub_2283F8938(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%{public}s] Starting observation", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  v11 = *(v1 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState);
  os_unfair_lock_lock((v11 + 24));
  sub_2284E0DD0((v11 + 16), &v12);
  os_unfair_lock_unlock((v11 + 24));
  if (v12)
  {
    sub_2284E0990(v12);
  }
}

uint64_t sub_2284E1A58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2284E1B24()
{
  result = qword_280DE9280;
  if (!qword_280DE9280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE9280);
  }

  return result;
}

uint64_t sub_2284E1B78()
{
  result = sub_22855C85C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform38PreferredSummaryTransactionInputSignalC5State33_0BA8518CF65B81333900B765ECC2E16DLLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2284E1C6C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2284E1CC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2284E1D2C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

void sub_2284E1D78(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = sub_2284E1B24();
    v10 = sub_2284E1A58(a3, sub_2284E1B24);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_2284E1E10()
{
  if (!qword_280DE9E50)
  {
    sub_2284E1D3C(255);
    sub_2284E1A58(&qword_280DE9520, sub_2284E1D3C);
    sub_2284E1A58(&qword_280DE9518, sub_2284E1D3C);
    sub_2284E1A58(&unk_280DE9288, sub_2284E1B24);
    v0 = sub_22855C8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9E50);
    }
  }
}

void sub_2284E1F1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2284E1F80(uint64_t a1)
{
  sub_2284E1F1C(0, &qword_27D840028, sub_2284E1E10, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2284E200C()
{
  if (!qword_27D840038)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840038);
    }
  }
}

void sub_2284E206C(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22855DAFC();
    sub_2284E94A8();
    sub_22842D238();
    sub_22855D56C();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_228407958();
      return;
    }

    while (1)
    {
      sub_228483254(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22855DB8C())
      {
        sub_2284E94A8();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_2284E2230(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_228483784(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
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

      return;
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
}

uint64_t sub_2284E2320(uint64_t result, uint64_t a2)
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

    sub_228406318(&v14, v12, v13);
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

uint64_t sub_2284E2424(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_228484DA4(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
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

      return v12;
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

uint64_t PluginIdentifierSet.description.getter(uint64_t a1)
{
  if (a1)
  {
    return sub_22855D52C();
  }

  else
  {
    return 7105633;
  }
}

uint64_t PluginIdentifierSet.union(_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a2)
  {
    if (a1)
    {

      return sub_2284E2320(a1, a2);
    }
  }

  return result;
}

uint64_t static PluginIdentifierSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return sub_22844230C(a1, a2);
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_2284E25AC(uint64_t a1)
{
  v2 = sub_2284E2CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E25E8(uint64_t a1)
{
  v2 = sub_2284E2CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2284E2624()
{
  if (*v0)
  {
    result = 0x696669746E656469;
  }

  else
  {
    result = 7105633;
  }

  *v0;
  return result;
}

uint64_t sub_2284E2660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v5 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
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

uint64_t sub_2284E2740(uint64_t a1)
{
  v2 = sub_2284E2CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E277C(uint64_t a1)
{
  v2 = sub_2284E2CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2284E27C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22855E15C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2284E2844(uint64_t a1)
{
  v2 = sub_2284E2C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E2880(uint64_t a1)
{
  v2 = sub_2284E2C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PluginIdentifierSet.encode(to:)(void *a1, uint64_t a2)
{
  v27 = a2;
  v3 = MEMORY[0x277D84538];
  sub_2284E9440(0, &qword_27D840040, sub_2284E2C50, &type metadata for PluginIdentifierSet.IdentifiersCodingKeys, MEMORY[0x277D84538]);
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  sub_2284E9440(0, &qword_27D840050, sub_2284E2CA4, &type metadata for PluginIdentifierSet.AllCodingKeys, v3);
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  sub_2284E9440(0, &qword_27D840060, sub_2284E2CF8, &type metadata for PluginIdentifierSet.CodingKeys, v3);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v22 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284E2CF8();
  v19 = v27;
  sub_22855E31C();
  if (v19)
  {
    v30 = 1;
    sub_2284E2C50();
    sub_22855E06C();
    v28 = v19;
    sub_22845D390();
    sub_22845D84C(&qword_27D83F780);
    v20 = v26;
    sub_22855E0CC();
    (*(v25 + 8))(v7, v20);
  }

  else
  {
    v29 = 0;
    sub_2284E2CA4();
    sub_22855E06C();
    (*(v23 + 8))(v11, v24);
  }

  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_2284E2C50()
{
  result = qword_27D840048;
  if (!qword_27D840048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840048);
  }

  return result;
}

unint64_t sub_2284E2CA4()
{
  result = qword_27D840058;
  if (!qword_27D840058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840058);
  }

  return result;
}

unint64_t sub_2284E2CF8()
{
  result = qword_27D840068;
  if (!qword_27D840068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840068);
  }

  return result;
}

uint64_t sub_2284E2D64()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2284E2D98()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2284E2DCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_22844230C(v2, v3);
    }

    return 0;
  }

  return !v3;
}

void *sub_2284E2DF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2284E7750(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2284E2E3C()
{
  if (*v0)
  {
    return sub_22855D52C();
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_2284E2E98()
{
  if (*v0)
  {
    result = 0x6D65744964656566;
  }

  else
  {
    result = 0x656C626172616873;
  }

  *v0;
  return result;
}

uint64_t sub_2284E2EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C626172616873 && a2 == 0xEE00736C65646F4DLL;
  if (v6 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D65744964656566 && a2 == 0xE900000000000073)
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

uint64_t sub_2284E2FD0(uint64_t a1)
{
  v2 = sub_2284E7D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E300C(uint64_t a1)
{
  v2 = sub_2284E7D40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2284E3048(uint64_t a1)
{
  v2 = sub_2284E7C98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E3084(uint64_t a1)
{
  v2 = sub_2284E7C98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2284E30C0(uint64_t a1)
{
  v2 = sub_2284E7CEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E30FC(uint64_t a1)
{
  v2 = sub_2284E7CEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerationPhase.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_2284E9440(0, &qword_27D840070, sub_2284E7C98, &type metadata for GenerationPhase.FeedItemsCodingKeys, MEMORY[0x277D84538]);
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v23 - v6;
  sub_2284E9440(0, &qword_27D840080, sub_2284E7CEC, &type metadata for GenerationPhase.SharableModelsCodingKeys, v3);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v24 = &v23 - v9;
  sub_2284E9440(0, &qword_27D840090, sub_2284E7D40, &type metadata for GenerationPhase.CodingKeys, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  v16 = *v1;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284E7D40();
  sub_22855E31C();
  v18 = (v12 + 8);
  if (v16)
  {
    v31 = 1;
    sub_2284E7C98();
    v19 = v27;
    sub_22855E06C();
    v21 = v28;
    v20 = v29;
  }

  else
  {
    v30 = 0;
    sub_2284E7CEC();
    v19 = v24;
    sub_22855E06C();
    v21 = v25;
    v20 = v26;
  }

  (*(v21 + 8))(v19, v20);
  return (*v18)(v15, v11);
}

uint64_t GenerationPhase.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v38 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_2284E9440(0, &qword_27D8400A0, sub_2284E7C98, &type metadata for GenerationPhase.FeedItemsCodingKeys, MEMORY[0x277D844C8]);
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = v32 - v6;
  sub_2284E9440(0, &qword_27D8400A8, sub_2284E7CEC, &type metadata for GenerationPhase.SharableModelsCodingKeys, v3);
  v8 = v7;
  v34 = *(v7 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v32 - v10;
  sub_2284E9440(0, &qword_27D8400B0, sub_2284E7D40, &type metadata for GenerationPhase.CodingKeys, v3);
  v13 = v12;
  v39 = *(v12 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284E7D40();
  v18 = v40;
  sub_22855E30C();
  if (v18)
  {
    goto LABEL_7;
  }

  v33 = v8;
  v40 = a1;
  v19 = v37;
  v20 = v38;
  v21 = v16;
  v22 = sub_22855E04C();
  v23 = v13;
  if (*(v22 + 16) != 1)
  {
    v25 = sub_22855DCEC();
    swift_allocError();
    v27 = v26;
    sub_2284E7D94();
    v29 = *(v28 + 48);
    *v27 = &type metadata for GenerationPhase;
    sub_22855DFDC();
    sub_22855DCCC();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    (*(v39 + 8))(v16, v23);
    swift_unknownObjectRelease();
    a1 = v40;
LABEL_7:
    v30 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v30);
  }

  v32[1] = v22;
  v41 = *(v22 + 32);
  if (v41)
  {
    v43 = 1;
    sub_2284E7C98();
    sub_22855DFCC();
    v24 = v39;
    (*(v35 + 8))(v19, v36);
  }

  else
  {
    v42 = 0;
    sub_2284E7CEC();
    sub_22855DFCC();
    v24 = v39;
    (*(v34 + 8))(v11, v33);
  }

  (*(v24 + 8))(v21, v13);
  swift_unknownObjectRelease();
  *v20 = v41;
  v30 = v40;
  return __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t BackgroundGenerationWorkDescription.pluginIdentifierSetToRun.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t BackgroundGenerationWorkDescription.generationPhases.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_2284E3A50()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_2284E3AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2284E9110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2284E3AD0(uint64_t a1)
{
  v2 = sub_2284E7E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E3B0C(uint64_t a1)
{
  v2 = sub_2284E7E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BackgroundGenerationWorkDescription.encode(to:)(void *a1)
{
  sub_2284E9440(0, &qword_27D8400C0, sub_2284E7E50, &type metadata for BackgroundGenerationWorkDescription.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v13 - v7;
  v9 = *v1;
  v14 = v1[1];
  v13[1] = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284E7E50();

  sub_22855E31C();
  v17 = v9;
  v16 = 0;
  sub_2284E7EA4();
  v11 = v15;
  sub_22855E0CC();
  if (v11)
  {
  }

  else
  {

    v17 = v14;
    v16 = 1;
    sub_2284E9440(0, &qword_27D8400D8, sub_22848CD68, &type metadata for GenerationPhase, MEMORY[0x277D83B48]);
    sub_2284E7FA0(&qword_27D8400E0, sub_2284E7EF8);
    sub_22855E0CC();
    LOBYTE(v17) = 2;
    sub_22855E09C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t BackgroundGenerationWorkDescription.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_2284E9440(0, &qword_27D8400F0, sub_2284E7E50, &type metadata for BackgroundGenerationWorkDescription.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284E7E50();
  sub_22855E30C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = v6;
  v12 = v20;
  v21 = 0;
  sub_2284E7F4C();
  v13 = v5;
  sub_22855E03C();
  v14 = v22;
  sub_2284E9440(0, &qword_27D8400D8, sub_22848CD68, &type metadata for GenerationPhase, MEMORY[0x277D83B48]);
  v21 = 1;
  sub_2284E7FA0(&qword_27D840100, sub_2284E8044);
  sub_22855E03C();
  v19 = v22;
  LOBYTE(v22) = 2;
  v15 = sub_22855E00C();
  (*(v11 + 8))(v9, v13);
  v16 = v19;
  *v12 = v14;
  *(v12 + 8) = v16;
  *(v12 + 16) = v15 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t GenerationWorkRequest.pluginIdentifierSetToRun.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t GenerationWorkRequest.generationPhases.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2284E4250(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 40);

  *(a2 + 32) = sub_2284E9234;
  *(a2 + 40) = v5;
  return result;
}

uint64_t GenerationWorkRequest.makeGenerationWorkBlock.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t GenerationWorkRequest.makeGenerationWorkBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_2284E4348(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 56);

  *(a2 + 48) = sub_2284E94FC;
  *(a2 + 56) = v5;
  return result;
}

uint64_t GenerationWorkRequest.completionBlock.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t GenerationWorkRequest.completionBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_2284E4440(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 72);

  *(a2 + 64) = sub_22849D60C;
  *(a2 + 72) = v5;
  return result;
}

uint64_t GenerationWorkRequest.notStartedCancellationBlock.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t GenerationWorkRequest.notStartedCancellationBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t GenerationWorkRequest.init(environment:pluginIdentifierSetToRun:generationPhases:commitUrgentTransaction:makeGenerationWorkBlock:completionBlock:notStartedCancellationBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result & 1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t sub_2284E455C(uint64_t a1, uint64_t a2, int a3)
{
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 8);
  result = v6(ObjectType, a2);
  if ((result ^ a3))
  {
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0x2074736575716552, 0xED00002068746977);
    if (a3)
    {
      v8 = 0x65746E4972657375;
    }

    else
    {
      v8 = 0x756F72676B636162;
    }

    if (a3)
    {
      v9 = 0xEF65766974636172;
    }

    else
    {
      v9 = 0xEA0000000000646ELL;
    }

    MEMORY[0x22AAB92A0](v8, v9);

    MEMORY[0x22AAB92A0](0xD000000000000021, 0x8000000228571C70);
    v10 = v6(ObjectType, a2);
    v11 = (v10 & 1) == 0;
    if (v10)
    {
      v12 = 0x65746E4972657375;
    }

    else
    {
      v12 = 0x756F72676B636162;
    }

    if (v11)
    {
      v13 = 0xEA0000000000646ELL;
    }

    else
    {
      v13 = 0xEF65766974636172;
    }

    MEMORY[0x22AAB92A0](v12, v13);

    MEMORY[0x22AAB92A0](0x6E6F7269766E6520, 0xEC000000746E656DLL);
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_2284E4738@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[3];
  v89 = a1[2];
  v90 = v4;
  v91 = a1[4];
  v5 = a1[1];
  v87 = *a1;
  v88 = v5;
  v6 = v2[1];
  v7 = v2[3];
  v84 = v2[2];
  v85 = v7;
  v86 = v2[4];
  v8 = v2[1];
  v82 = *v2;
  v83 = v8;
  v77 = v82;
  v78 = v6;
  v9 = *(&v82 + 1);
  v79 = v84;
  v10 = swift_allocObject();
  v11 = v2[3];
  v10[3] = v2[2];
  v10[4] = v11;
  v12 = v2[1];
  v10[1] = *v2;
  v10[2] = v12;
  v13 = a1[2];
  v14 = a1[3];
  v15 = *a1;
  v10[7] = a1[1];
  v10[8] = v13;
  v16 = a1[4];
  v10[9] = v14;
  v10[10] = v16;
  v10[5] = v2[4];
  v10[6] = v15;
  *&v80 = sub_2284E92E8;
  *(&v80 + 1) = v10;
  sub_22842DCDC(&v82, v76);
  sub_22842DCDC(&v82, v76);
  sub_22842DCDC(&v87, v76);

  v17 = swift_allocObject();
  v18 = v85;
  v17[3] = v84;
  v17[4] = v18;
  v19 = v83;
  v17[1] = v82;
  v17[2] = v19;
  v20 = v89;
  v21 = v90;
  v22 = v87;
  v17[7] = v88;
  v17[8] = v20;
  v23 = v91;
  v17[9] = v21;
  v17[10] = v23;
  v17[5] = v86;
  v17[6] = v22;
  *&v81 = sub_2284E93A0;
  *(&v81 + 1) = v17;
  sub_22842DCDC(&v82, v76);
  sub_22842DCDC(&v87, v76);

  v24 = *(&v87 + 1);
  v92[0] = *(&v87 + 1);
  if (v9)
  {
    if (*(&v87 + 1))
    {
      sub_2284E93D8(v92, v76);
      sub_2284E93D8(v92, v76);

      v25 = sub_2284E2320(v24, v9);
      goto LABEL_6;
    }
  }

  else
  {
    sub_2284E93D8(v92, v76);
  }

  v25 = 0;
LABEL_6:
  *(&v77 + 1) = v25;
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v26 = sub_22855CABC();
  __swift_project_value_buffer(v26, qword_280DEEBD0);
  sub_22842DCDC(&v82, v76);
  sub_22842DCDC(&v87, v76);
  v27 = sub_22855CA8C();
  v28 = sub_22855D6AC();
  sub_2284E8384(&v82);
  sub_2284E8384(&v87);
  v29 = &unk_228563000;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v76[0] = v31;
    *v30 = 136446978;
    *(v30 + 4) = sub_2283F8938(0xD000000000000015, 0x8000000228566DA0, v76);
    *(v30 + 12) = 2082;
    if (v9)
    {
      v32 = sub_22855D52C();
      v34 = v33;
    }

    else
    {
      v34 = 0xE300000000000000;
      v32 = 7105633;
    }

    v35 = sub_2283F8938(v32, v34, v76);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2082;
    if (v92[0])
    {
      v36 = sub_22855D52C();
      v38 = v37;
      sub_2284E9410(v92);
    }

    else
    {
      v38 = 0xE300000000000000;
      v36 = 7105633;
    }

    v39 = sub_2283F8938(v36, v38, v76);

    *(v30 + 24) = v39;
    *(v30 + 32) = 2082;
    if (v25)
    {

      v40 = sub_22855D52C();
      v42 = v41;

      v29 = &unk_228563000;
    }

    else
    {
      v42 = 0xE300000000000000;
      v29 = &unk_228563000;
      v40 = 7105633;
    }

    v43 = sub_2283F8938(v40, v42, v76);

    *(v30 + 34) = v43;
    _os_log_impl(&dword_2283ED000, v27, v28, "[%{public}s] Coalesced pluginIdentifierSetToRun %{public}s and %{public}s into %{public}s", v30, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v31, -1, -1);
    MEMORY[0x22AABAD40](v30, -1, -1);
  }

  else
  {
    sub_2284E9410(v92);
  }

  v44 = BYTE8(v83);
  v45 = BYTE8(v83) | BYTE8(v88);
  swift_beginAccess();
  v46 = v45 & 1;
  BYTE8(v78) = v45 & 1;
  sub_22842DCDC(&v82, v76);
  sub_22842DCDC(&v87, v76);
  v47 = sub_22855CA8C();
  v48 = sub_22855D6AC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v76[0] = v50;
    *v49 = v29[461];
    *(v49 + 4) = sub_2283F8938(0xD000000000000015, 0x8000000228566DA0, v76);
    *(v49 + 12) = 1026;
    *(v49 + 14) = v44 & 1;
    sub_2284E8384(&v82);
    *(v49 + 18) = 1026;
    *(v49 + 20) = BYTE8(v88) & 1;
    sub_2284E8384(&v87);
    *(v49 + 24) = 1026;
    *(v49 + 26) = v46;
    _os_log_impl(&dword_2283ED000, v47, v48, "[%{public}s] Coalesced commitUrgentTransaction %{BOOL,public}d and %{BOOL,public}d into %{BOOL,public}d", v49, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AABAD40](v50, -1, -1);
    MEMORY[0x22AABAD40](v49, -1, -1);
  }

  else
  {
    sub_2284E8384(&v87);
    sub_2284E8384(&v82);
  }

  v51 = v83;

  *&v78 = sub_2284E2424(v52, v51);

  sub_22842DCDC(&v82, v76);
  sub_22842DCDC(&v87, v76);
  v53 = sub_22855CA8C();
  v54 = sub_22855D6AC();
  sub_2284E8384(&v82);
  sub_2284E8384(&v87);
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v76[0] = v56;
    *v55 = v29[461];
    *(v55 + 4) = sub_2283F8938(0xD000000000000015, 0x8000000228566DA0, v76);
    *(v55 + 12) = 2082;
    sub_22848CD68();
    v57 = sub_22855D52C();
    v59 = sub_2283F8938(v57, v58, v76);

    *(v55 + 14) = v59;
    *(v55 + 22) = 2082;
    v60 = sub_22855D52C();
    v62 = sub_2283F8938(v60, v61, v76);

    *(v55 + 24) = v62;
    *(v55 + 32) = 2082;

    v63 = sub_22855D52C();
    v65 = v64;

    v66 = sub_2283F8938(v63, v65, v76);

    *(v55 + 34) = v66;
    _os_log_impl(&dword_2283ED000, v53, v54, "[%{public}s] Coalesced generationPhases %{public}s and %{public}s into %{public}s", v55, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v56, -1, -1);
    MEMORY[0x22AABAD40](v55, -1, -1);
  }

  v67 = v79;
  v68 = v80;
  v75[2] = v79;
  v75[3] = v80;
  v69 = v81;
  v75[4] = v81;
  v71 = v77;
  v70 = v78;
  v75[0] = v77;
  v75[1] = v78;
  a2[2] = v79;
  a2[3] = v68;
  a2[4] = v69;
  *a2 = v71;
  a2[1] = v70;
  v76[2] = v67;
  v76[3] = v68;
  v76[0] = v71;
  v76[1] = v70;
  v76[4] = v69;
  sub_22842DCDC(v75, v74);
  return sub_2284E8384(v76);
}

BOOL static GenerationQueue.EnqueueResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

BOOL sub_2284E4F7C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

void sub_2284E4FD4(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 128);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(v1 + 80);
  v12 = *(v1 + 64);
  v13 = v4;
  v6 = *(v1 + 112);
  v14 = *(v1 + 96);
  v5 = v14;
  v15 = v6;
  v7 = *(v1 + 48);
  v11[0] = *(v1 + 32);
  v8 = v11[0];
  v11[1] = v7;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v8;
  a1[1] = v7;
  v9 = *(v3 + 16);
  sub_2284E8098(v11, &v10);
  os_unfair_lock_unlock(v9);
}

uint64_t GenerationQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  GenerationQueue.init()();
  return v0;
}

uint64_t GenerationQueue.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v2 = sub_22855D17C();
  [v1 setName_];

  [v1 setMaxConcurrentOperationCount_];
  *(v0 + 16) = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v4 = sub_22855D17C();
  [v3 setName_];

  [v3 setMaxConcurrentOperationCount_];
  *(v0 + 24) = v3;
  *(v0 + 32) = xmmword_228566A20;
  type metadata accessor for UnfairLock();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  *(v0 + 128) = v5;
  return v0;
}

uint64_t GenerationQueue.deinit()
{
  v1 = *(v0 + 128);
  os_unfair_lock_lock(*(v1 + 16));
  sub_2284E73E8();
  os_unfair_lock_unlock(*(v1 + 16));

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v6 = *(v0 + 96);
  sub_2284E80D0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return v0;
}

uint64_t GenerationQueue.__deallocating_deinit()
{
  os_unfair_lock_lock(*(*(v0 + 128) + 16));
  sub_2284E73E8();
  os_unfair_lock_unlock(*(*(v0 + 128) + 16));

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v6 = *(v0 + 96);
  sub_2284E80D0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v4 = *(v0 + 128);

  return swift_deallocClassInstance();
}

void sub_2284E52FC(__int128 *a1@<X0>, char *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[3];
  v180 = a1[2];
  v181 = v5;
  v182 = a1[4];
  v6 = a1[1];
  v178 = *a1;
  v179 = v6;
  v7 = v2[16];
  v8 = v4;
  os_unfair_lock_lock(*(v7 + 16));
  v9 = [objc_opt_self() sharedBehavior];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 healthAppHiddenOrNotInstalled];

    if (v11)
    {
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v12 = sub_22855CABC();
      __swift_project_value_buffer(v12, qword_280DEEBD0);
      v13 = sub_22855CA8C();
      v14 = sub_22855D6AC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *&v161 = v16;
        *v15 = 136315138;
        *&v172 = v8;
        swift_getMetatypeMetadata();
        v17 = sub_22855D1BC();
        v19 = sub_2283F8938(v17, v18, &v161);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_2283ED000, v13, v14, "[%s] health is not installed or is hidden, exiting generation immediately", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x22AABAD40](v16, -1, -1);
        MEMORY[0x22AABAD40](v15, -1, -1);
      }

      (v182)();
      v20 = 1;
      goto LABEL_54;
    }

    v21 = *(v2 + 5);
    v174 = *(v2 + 4);
    v175 = v21;
    v22 = *(v2 + 7);
    v176 = *(v2 + 6);
    v177 = v22;
    v23 = *(v2 + 3);
    v172 = *(v2 + 2);
    v173 = v23;
    v24 = *(&v172 + 1);
    if (*(&v172 + 1) >> 62)
    {
      if (*(&v172 + 1) >> 62 != 1)
      {
        v65 = v2;
        if (v178)
        {
          if (qword_280DEEBC8 != -1)
          {
            swift_once();
          }

          v66 = sub_22855CABC();
          __swift_project_value_buffer(v66, qword_280DEEBD0);
          v67 = sub_22855CA8C();
          v68 = sub_22855D6AC();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *&v161 = v70;
            *v69 = 136446210;
            v71 = sub_22855E34C();
            v73 = sub_2283F8938(v71, v72, &v161);

            *(v69 + 4) = v73;
            _os_log_impl(&dword_2283ED000, v67, v68, "[%{public}s] Queue is idle, starting foreground generation", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v70);
            MEMORY[0x22AABAD40](v70, -1, -1);
            MEMORY[0x22AABAD40](v69, -1, -1);
          }

          if (qword_280DEC790 != -1)
          {
            swift_once();
          }

          v74 = off_280DEC798;
          os_unfair_lock_lock(off_280DEC798 + 4);
          v75 = *(v74 + 3);

          *(v74 + 3) = MEMORY[0x277D84F98];
          os_unfair_lock_unlock(v74 + 4);
          v163 = v180;
          v164 = v181;
          v165 = v182;
          v161 = v178;
          v162 = v179;
          v76 = (v180)(&v161);
          v78 = v77;
          v163 = v180;
          v164 = v181;
          v165 = v182;
          v161 = v178;
          v162 = v179;
          sub_2284E455C(v76, v77, 1);
          v79 = *(v65 + 5);
          v163 = *(v65 + 4);
          v164 = v79;
          v80 = *(v65 + 7);
          v165 = *(v65 + 6);
          v166 = v80;
          v81 = *(v65 + 3);
          v161 = *(v65 + 2);
          v162 = v81;
          v65[4] = v76;
          v65[5] = v78 & 0xFFFFFFFFFFFFFF8;
          v82 = v76;
          sub_2284E8354(&v161);
          sub_2284E61EC(v82, v78, v181, *(&v181 + 1));

          v20 = 2;
          goto LABEL_54;
        }

        if (qword_280DEEBC8 != -1)
        {
          swift_once();
        }

        v113 = sub_22855CABC();
        __swift_project_value_buffer(v113, qword_280DEEBD0);
        v114 = sub_22855CA8C();
        v115 = sub_22855D6AC();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          *&v161 = v117;
          *v116 = 136446210;
          v118 = sub_22855E34C();
          v120 = sub_2283F8938(v118, v119, &v161);

          *(v116 + 4) = v120;
          _os_log_impl(&dword_2283ED000, v114, v115, "[%{public}s] Queue is idle, starting background generation", v116, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v117);
          MEMORY[0x22AABAD40](v117, -1, -1);
          MEMORY[0x22AABAD40](v116, -1, -1);
        }

        v163 = v180;
        v164 = v181;
        v165 = v182;
        v161 = v178;
        v162 = v179;
        v121 = (v180)(&v161);
        v123 = v122;
        v163 = v180;
        v164 = v181;
        v165 = v182;
        v161 = v178;
        v162 = v179;
        sub_2284E455C(v121, v122, 0);
        v124 = *(v65 + 5);
        v163 = *(v65 + 4);
        v164 = v124;
        v125 = *(v65 + 7);
        v165 = *(v65 + 6);
        v166 = v125;
        v126 = *(v65 + 3);
        v161 = *(v65 + 2);
        v162 = v126;
        v65[4] = v121;
        v65[5] = v123 & 0xFFFFFFFFFFFFFF8 | 0x4000000000000000;
        *(v65 + 3) = 0u;
        *(v65 + 4) = 0u;
        *(v65 + 5) = 0u;
        *(v65 + 6) = 0u;
        *(v65 + 7) = 0u;
        v45 = v121;
        sub_2284E8354(&v161);
        v62 = *(&v181 + 1);
        v61 = v181;
        v63 = v45;
        v64 = v123;
        goto LABEL_47;
      }

      *(&v172 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
      v25 = v174;
      v26 = v172;
      if (!v178)
      {
        v171 = *(v2 + 3);
        v83 = *(v2 + 11);
        v167 = *(v2 + 9);
        v168 = v83;
        v169 = *(v2 + 13);
        v170 = v2[15];
        if (v174)
        {
          v84 = *(v2 + 5);
          v163 = *(v2 + 4);
          v164 = v84;
          v85 = *(v2 + 7);
          v165 = *(v2 + 6);
          v166 = v85;
          v86 = *(v2 + 2);
          v87 = *(v2 + 3);
          v147 = v2;
          *&v161 = v2[4];
          v162 = v87;
          *(&v161 + 1) = *(&v86 + 1) & 0x3FFFFFFFFFFFFFFFLL;
          sub_2284E81F8(&v161, &v155);
          if (qword_280DEEBC8 != -1)
          {
            swift_once();
          }

          v88 = sub_22855CABC();
          __swift_project_value_buffer(v88, qword_280DEEBD0);
          v89 = sub_22855CA8C();
          v90 = sub_22855D6AC();
          if (os_log_type_enabled(v89, v90))
          {
            v145 = v26;
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            *&v155 = v92;
            *v91 = 136446210;
            v93 = sub_22855E34C();
            v95 = sub_2283F8938(v93, v94, &v155);

            *(v91 + 4) = v95;
            _os_log_impl(&dword_2283ED000, v89, v90, "[%{public}s] Queue is running background generation, coalescing background generation request with existing enqueued generation request", v91, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v92);
            MEMORY[0x22AABAD40](v92, -1, -1);
            v96 = v91;
            v26 = v145;
            MEMORY[0x22AABAD40](v96, -1, -1);
          }

          v150 = v25;
          v151 = v167;
          v152 = v168;
          v153 = v169;
          v154 = v170;
          v148[2] = v180;
          v148[3] = v181;
          v148[4] = v182;
          v149 = v171;
          v148[0] = v178;
          v148[1] = v179;
          sub_2284E4738(v148, &v155);
          sub_22842DC5C(&v173);
          v97 = v155;
          v98 = v156;
          v99 = v157;
          v100 = v158;
          v101 = v159;
          v102 = *(v147 + 5);
          v157 = *(v147 + 4);
          v158 = v102;
          v103 = *(v147 + 7);
          v159 = *(v147 + 6);
          v160 = v103;
          v104 = *(v147 + 3);
          v155 = *(v147 + 2);
          v156 = v104;
          v147[4] = v26;
          v147[5] = v24 & 0xFFFFFFFFFFFFFF8 | 0x4000000000000000;
          *(v147 + 3) = v97;
          *(v147 + 4) = v98;
          *(v147 + 5) = v99;
          *(v147 + 6) = v100;
          *(v147 + 7) = v101;
        }

        else
        {
          v127 = *(v2 + 5);
          v163 = *(v2 + 4);
          v164 = v127;
          v128 = *(v2 + 7);
          v165 = *(v2 + 6);
          v166 = v128;
          v129 = *(v2 + 3);
          v130 = v2;
          v161 = *(v2 + 2);
          v162 = v129;
          *(&v161 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
          sub_2284E81F8(&v161, &v155);
          if (qword_280DEEBC8 != -1)
          {
            swift_once();
          }

          v131 = sub_22855CABC();
          __swift_project_value_buffer(v131, qword_280DEEBD0);
          v132 = sub_22855CA8C();
          v133 = sub_22855D6AC();
          if (os_log_type_enabled(v132, v133))
          {
            v146 = v26;
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            *&v155 = v135;
            *v134 = 136446210;
            v136 = sub_22855E34C();
            v138 = sub_2283F8938(v136, v137, &v155);

            *(v134 + 4) = v138;
            _os_log_impl(&dword_2283ED000, v132, v133, "[%{public}s] Queue is running background generation, enqueuing background generation request", v134, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v135);
            MEMORY[0x22AABAD40](v135, -1, -1);
            v139 = v134;
            v26 = v146;
            MEMORY[0x22AABAD40](v139, -1, -1);
          }

          v140 = *(v130 + 5);
          v157 = *(v130 + 4);
          v158 = v140;
          v141 = *(v130 + 7);
          v159 = *(v130 + 6);
          v160 = v141;
          v142 = *(v130 + 3);
          v155 = *(v130 + 2);
          v156 = v142;
          v130[4] = v26;
          v130[5] = v24 & 0xFFFFFFFFFFFFFF8 | 0x4000000000000000;
          v143 = v179;
          *(v130 + 3) = v178;
          *(v130 + 4) = v143;
          v144 = v181;
          *(v130 + 5) = v180;
          *(v130 + 6) = v144;
          *(v130 + 7) = v182;
          sub_22842DCDC(&v178, &v149);
        }

        sub_2284E8354(&v155);
        v20 = 3;
        goto LABEL_54;
      }

      v27 = *(v2 + 5);
      v163 = *(v2 + 4);
      v164 = v27;
      v28 = *(v2 + 7);
      v165 = *(v2 + 6);
      v166 = v28;
      v29 = *(v2 + 3);
      v30 = v2;
      v161 = *(v2 + 2);
      v162 = v29;
      *(&v161 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
      sub_2284E81F8(&v161, &v155);
      sub_22842DC5C(&v173);

      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v31 = sub_22855CABC();
      __swift_project_value_buffer(v31, qword_280DEEBD0);
      v32 = sub_22855CA8C();
      v33 = sub_22855D6AC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v155 = v35;
        *v34 = 136446210;
        v36 = sub_22855E34C();
        v38 = sub_2283F8938(v36, v37, &v155);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_2283ED000, v32, v33, "[%{public}s] Queue is running background generation, cancelling and starting foreground generation", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x22AABAD40](v35, -1, -1);
        MEMORY[0x22AABAD40](v34, -1, -1);
      }

      sub_2284E73E8();
      v157 = v180;
      v158 = v181;
      v159 = v182;
      v155 = v178;
      v156 = v179;
      v39 = (v180)(&v155);
      v41 = v40;
      v157 = v180;
      v158 = v181;
      v159 = v182;
      v155 = v178;
      v156 = v179;
      sub_2284E455C(v39, v40, 1);
      v42 = *(v30 + 5);
      v157 = *(v30 + 4);
      v158 = v42;
      v43 = *(v30 + 7);
      v159 = *(v30 + 6);
      v160 = v43;
      v44 = *(v30 + 3);
      v155 = *(v30 + 2);
      v156 = v44;
      v30[4] = v39;
      v30[5] = v41 & 0xFFFFFFFFFFFFFF8;
      v45 = v39;
      v46 = &v155;
    }

    else
    {
      *(&v172 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
      if (!v178)
      {
        if (qword_280DEEBC8 != -1)
        {
          swift_once();
        }

        v105 = sub_22855CABC();
        __swift_project_value_buffer(v105, qword_280DEEBD0);
        sub_22842DCDC(&v178, &v161);
        v106 = sub_22855CA8C();
        v107 = sub_22855D6AC();
        sub_2284E8384(&v178);
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *&v161 = v109;
          *v108 = 136446466;
          v110 = sub_22855E34C();
          v112 = sub_2283F8938(v110, v111, &v161);

          *(v108 + 4) = v112;
          *(v108 + 12) = 2082;
          *(v108 + 14) = sub_2283F8938(0x756F72676B636162, 0xEA0000000000646ELL, &v161);
          _os_log_impl(&dword_2283ED000, v106, v107, "[%{public}s] Queue is running foreground generation, dropping generation request with environment %{public}s", v108, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AABAD40](v109, -1, -1);
          MEMORY[0x22AABAD40](v108, -1, -1);
        }

        (v182)();
        *a2 = 0;
        goto LABEL_55;
      }

      v47 = v2;
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v48 = sub_22855CABC();
      __swift_project_value_buffer(v48, qword_280DEEBD0);
      v49 = sub_22855CA8C();
      v50 = sub_22855D6AC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v161 = v52;
        *v51 = 136446210;
        v53 = sub_22855E34C();
        v55 = sub_2283F8938(v53, v54, &v161);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_2283ED000, v49, v50, "[%{public}s] Queue is running foreground generation, cancelling and restarting foreground generation", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x22AABAD40](v52, -1, -1);
        MEMORY[0x22AABAD40](v51, -1, -1);
      }

      sub_2284E73E8();
      v163 = v180;
      v164 = v181;
      v165 = v182;
      v161 = v178;
      v162 = v179;
      v56 = (v180)(&v161);
      v41 = v57;
      v163 = v180;
      v164 = v181;
      v165 = v182;
      v161 = v178;
      v162 = v179;
      sub_2284E455C(v56, v57, 1);
      v58 = *(v47 + 5);
      v163 = *(v47 + 4);
      v164 = v58;
      v59 = *(v47 + 7);
      v165 = *(v47 + 6);
      v166 = v59;
      v60 = *(v47 + 3);
      v161 = *(v47 + 2);
      v162 = v60;
      v47[4] = v56;
      v47[5] = v41 & 0xFFFFFFFFFFFFFF8;
      v45 = v56;
      v46 = &v161;
    }

    sub_2284E8354(v46);
    v62 = *(&v181 + 1);
    v61 = v181;
    v63 = v45;
    v64 = v41;
LABEL_47:
    sub_2284E61EC(v63, v64, v61, v62);

    v20 = 2;
LABEL_54:
    *a2 = v20;
LABEL_55:
    os_unfair_lock_unlock(*(v7 + 16));
    return;
  }

  __break(1u);
}

void sub_2284E61EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_assert_owner(*(*(v4 + 128) + 16));
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v4;
  v9[5] = a1;
  v9[6] = a2;
  v14[4] = sub_2284E929C;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_228401F54;
  v14[3] = &block_descriptor_19;
  v10 = _Block_copy(v14);
  v11 = objc_opt_self();

  v12 = a1;
  v13 = [v11 blockOperationWithBlock_];
  _Block_release(v10);

  [v13 addDependency_];
  [*(v4 + 24) addOperation_];
  [*(v4 + 16) addOperation_];
}

void sub_2284E6354(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = v3[16];
  os_unfair_lock_lock(*(v7 + 16));
  v8 = *(v3 + 5);
  v180 = *(v3 + 4);
  v181 = v8;
  v9 = *(v3 + 7);
  v182 = *(v3 + 6);
  v183 = v9;
  v10 = *(v3 + 3);
  v179[0] = *(v3 + 2);
  v179[1] = v10;
  v186 = v180;
  v187 = v8;
  v188 = v182;
  v189 = v9;
  v184 = v179[0];
  v185 = v10;
  if (!(*(&v179[0] + 1) >> 62))
  {
    v163 = a2;
    v37 = *(&v179[0] + 1) & 0x3FFFFFFFFFFFFFFFLL;
    *(&v184 + 1) = *(&v179[0] + 1) & 0x3FFFFFFFFFFFFFFFLL;
    ObjectType = swift_getObjectType();
    v39 = swift_getObjectType();
    v40 = qword_280DEEBC8;
    v41 = *&v179[0];
    if (v184 != a1)
    {
      if (v40 != -1)
      {
        swift_once();
      }

      v42 = sub_22855CABC();
      __swift_project_value_buffer(v42, qword_280DEEBD0);
      v43 = a1;
      sub_2284E8098(v179, &v171);
      v44 = sub_22855CA8C();
      v45 = sub_22855D6AC();

      sub_2284E8354(v179);
      if (os_log_type_enabled(v44, v45))
      {
        v167 = v7;
        v46 = swift_slowAlloc();
        v162 = v39;
        v47 = swift_slowAlloc();
        *&v171 = v47;
        *v46 = 136446722;
        v48 = sub_22855E34C();
        v50 = sub_2283F8938(v48, v49, &v171);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2082;
        v51 = (*(v163 + 8))(ObjectType);
        v52 = (v51 & 1) == 0;
        if (v51)
        {
          v53 = 0x65746E4972657375;
        }

        else
        {
          v53 = 0x756F72676B636162;
        }

        if (v52)
        {
          v54 = 0xEA0000000000646ELL;
        }

        else
        {
          v54 = 0xEF65766974636172;
        }

        v55 = sub_2283F8938(v53, v54, &v171);

        *(v46 + 14) = v55;
        *(v46 + 22) = 2082;
        v56 = (*(v37 + 8))(v162, v37);
        v57 = (v56 & 1) == 0;
        if (v56)
        {
          v58 = 0x65746E4972657375;
        }

        else
        {
          v58 = 0x756F72676B636162;
        }

        if (v57)
        {
          v59 = 0xEA0000000000646ELL;
        }

        else
        {
          v59 = 0xEF65766974636172;
        }

        v60 = sub_2283F8938(v58, v59, &v171);

        *(v46 + 24) = v60;
        _os_log_impl(&dword_2283ED000, v44, v45, "[%{public}s] work with environment %{public}s completed, but active work (environment: %{public}s) is already different, keeping state as foregroundGeneration", v46, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v47, -1, -1);
        v61 = v46;
        v7 = v167;
        MEMORY[0x22AABAD40](v61, -1, -1);
        sub_2284E8354(v179);

        goto LABEL_69;
      }

      v111 = v179;
LABEL_68:
      sub_2284E8354(v111);
      goto LABEL_69;
    }

    log = ObjectType;
    if (v40 != -1)
    {
      swift_once();
    }

    v94 = sub_22855CABC();
    __swift_project_value_buffer(v94, qword_280DEEBD0);
    v95 = a1;
    v96 = sub_22855CA8C();
    v97 = sub_22855D6AC();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v171 = v99;
      *v98 = 136446466;
      v100 = sub_22855E34C();
      v102 = sub_2283F8938(v100, v101, &v171);

      *(v98 + 4) = v102;
      *(v98 + 12) = 2082;
      v103 = (*(v163 + 8))(log, v163);
      v104 = (v103 & 1) == 0;
      if (v103)
      {
        v105 = 0x65746E4972657375;
      }

      else
      {
        v105 = 0x756F72676B636162;
      }

      if (v104)
      {
        v106 = 0xEA0000000000646ELL;
      }

      else
      {
        v106 = 0xEF65766974636172;
      }

      v107 = sub_2283F8938(v105, v106, &v171);

      *(v98 + 14) = v107;
      _os_log_impl(&dword_2283ED000, v96, v97, "[%{public}s] work with environment %{public}s completed, updating state from foregroundGeneration to idle", v98, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v99, -1, -1);
      MEMORY[0x22AABAD40](v98, -1, -1);
    }

    sub_2284E8354(v179);

LABEL_67:
    v108 = *(v3 + 5);
    v173 = *(v3 + 4);
    v174 = v108;
    v109 = *(v3 + 7);
    v175 = *(v3 + 6);
    v176 = v109;
    v110 = *(v3 + 3);
    v171 = *(v3 + 2);
    v172 = v110;
    *(v3 + 2) = xmmword_228566A20;
    *(v3 + 3) = 0u;
    *(v3 + 4) = 0u;
    *(v3 + 5) = 0u;
    *(v3 + 6) = 0u;
    *(v3 + 7) = 0u;
    v111 = &v171;
    goto LABEL_68;
  }

  if (*(&v179[0] + 1) >> 62 != 1)
  {
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v62 = sub_22855CABC();
    __swift_project_value_buffer(v62, qword_280DEEBD0);
    v63 = a1;
    v64 = sub_22855CA8C();
    v65 = sub_22855D6AC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v171 = v67;
      *v66 = 136446466;
      v68 = sub_22855E34C();
      v70 = sub_2283F8938(v68, v69, &v171);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2082;
      v71 = swift_getObjectType();
      v72 = (*(a2 + 8))(v71, a2);
      v73 = (v72 & 1) == 0;
      if (v72)
      {
        v74 = 0x65746E4972657375;
      }

      else
      {
        v74 = 0x756F72676B636162;
      }

      if (v73)
      {
        v75 = 0xEA0000000000646ELL;
      }

      else
      {
        v75 = 0xEF65766974636172;
      }

      v76 = sub_2283F8938(v74, v75, &v171);

      *(v66 + 14) = v76;
      _os_log_impl(&dword_2283ED000, v64, v65, "[%{public}s] work with environment %{public}s completed, but state is already idle", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v67, -1, -1);
      MEMORY[0x22AABAD40](v66, -1, -1);
    }

    goto LABEL_67;
  }

  v166 = v7;
  v11 = v186;
  *(&v184 + 1) = *(&v179[0] + 1) & 0x3FFFFFFFFFFFFFFFLL;
  v12 = v184;
  v13 = v185;
  v178[0] = *(v3 + 49);
  *(v178 + 7) = v3[7];
  v14 = *(&v187 + 1);
  v160 = v187;
  v161 = *(&v186 + 1);
  v15 = *(&v188 + 1);
  v177 = *(v3 + 7);
  v16 = swift_getObjectType();
  if (!v186)
  {
    v77 = v16;
    if (v184 != a1)
    {
      v78 = *(v3 + 5);
      v173 = *(v3 + 4);
      v174 = v78;
      v79 = *(v3 + 7);
      v175 = *(v3 + 6);
      v176 = v79;
      v80 = *(v3 + 3);
      v171 = *(v3 + 2);
      v172 = v80;
      *(&v171 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
      sub_2284E81F8(&v171, v170);

      v7 = v166;
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v81 = sub_22855CABC();
      __swift_project_value_buffer(v81, qword_280DEEBD0);
      v82 = a1;
      v23 = sub_22855CA8C();
      v83 = sub_22855D6AC();

      if (!os_log_type_enabled(v23, v83))
      {
        goto LABEL_55;
      }

      v25 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v170[0] = v84;
      *v25 = 136446466;
      v85 = sub_22855E34C();
      v87 = a2;
      v88 = sub_2283F8938(v85, v86, v170);

      *(v25 + 4) = v88;
      *(v25 + 12) = 2082;
      v89 = (*(v87 + 8))(v77, v87);
      v90 = (v89 & 1) == 0;
      if (v89)
      {
        v91 = 0x65746E4972657375;
      }

      else
      {
        v91 = 0x756F72676B636162;
      }

      if (v90)
      {
        v92 = 0xEA0000000000646ELL;
      }

      else
      {
        v92 = 0xEF65766974636172;
      }

      v93 = sub_2283F8938(v91, v92, v170);

      *(v25 + 14) = v93;
      _os_log_impl(&dword_2283ED000, v23, v83, "[%{public}s] work with environment %{public}s completed, no enqueued background generation, but active work is already different, keeping state as backgroundGeneration(_, nil)", v25, 0x16u);
      swift_arrayDestroy();
      v36 = v84;
      goto LABEL_54;
    }

    v165 = a2;
    v134 = *(v3 + 5);
    v173 = *(v3 + 4);
    v174 = v134;
    v135 = *(v3 + 7);
    v175 = *(v3 + 6);
    v176 = v135;
    v136 = *(v3 + 3);
    v171 = *(v3 + 2);
    v172 = v136;
    *(&v171 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_2284E81F8(&v171, v170);
    v7 = v166;
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v137 = sub_22855CABC();
    __swift_project_value_buffer(v137, qword_280DEEBD0);
    v138 = a1;
    v139 = sub_22855CA8C();
    v140 = sub_22855D6AC();

    if (os_log_type_enabled(v139, v140))
    {
      v158 = v12;
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *&v170[0] = v142;
      *v141 = 136446466;
      v143 = sub_22855E34C();
      v145 = sub_2283F8938(v143, v144, v170);

      *(v141 + 4) = v145;
      *(v141 + 12) = 2082;
      v146 = (*(v165 + 8))(v77);
      v147 = (v146 & 1) == 0;
      if (v146)
      {
        v148 = 0x65746E4972657375;
      }

      else
      {
        v148 = 0x756F72676B636162;
      }

      if (v147)
      {
        v149 = 0xEA0000000000646ELL;
      }

      else
      {
        v149 = 0xEF65766974636172;
      }

      v150 = sub_2283F8938(v148, v149, v170);

      *(v141 + 14) = v150;
      _os_log_impl(&dword_2283ED000, v139, v140, "[%{public}s] work with environment %{public}s completed, no enqueued background generation, updating state to idle", v141, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v142, -1, -1);
      MEMORY[0x22AABAD40](v141, -1, -1);
    }

    else
    {
    }

    v151 = *(v3 + 5);
    v170[2] = *(v3 + 4);
    v170[3] = v151;
    v152 = *(v3 + 7);
    v170[4] = *(v3 + 6);
    v170[5] = v152;
    v153 = *(v3 + 3);
    v170[0] = *(v3 + 2);
    v170[1] = v153;
    *(v3 + 2) = xmmword_228566A20;
    *(v3 + 3) = 0u;
    *(v3 + 4) = 0u;
    *(v3 + 5) = 0u;
    *(v3 + 6) = 0u;
    *(v3 + 7) = 0u;
    v111 = v170;
    goto LABEL_68;
  }

  v159 = v188;
  if (v184 != a1)
  {
    v17 = v16;
    v18 = *(v3 + 5);
    v173 = *(v3 + 4);
    v174 = v18;
    v19 = *(v3 + 7);
    v175 = *(v3 + 6);
    v176 = v19;
    v20 = *(v3 + 3);
    v171 = *(v3 + 2);
    v172 = v20;
    *(&v171 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_2284E81F8(&v171, v170);

    sub_22842DC5C(&v185);
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v21 = sub_22855CABC();
    __swift_project_value_buffer(v21, qword_280DEEBD0);
    v22 = a1;
    v23 = sub_22855CA8C();
    v24 = sub_22855D6AC();

    v7 = v166;
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_55;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v170[0] = v26;
    *v25 = 136446466;
    v27 = sub_22855E34C();
    v29 = a2;
    v30 = sub_2283F8938(v27, v28, v170);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    v31 = (*(v29 + 8))(v17, v29);
    v32 = (v31 & 1) == 0;
    if (v31)
    {
      v33 = 0x65746E4972657375;
    }

    else
    {
      v33 = 0x756F72676B636162;
    }

    if (v32)
    {
      v34 = 0xEA0000000000646ELL;
    }

    else
    {
      v34 = 0xEF65766974636172;
    }

    v35 = sub_2283F8938(v33, v34, v170);

    *(v25 + 14) = v35;
    _os_log_impl(&dword_2283ED000, v23, v24, "[%{public}s] work with environment %{public}s completed, had enqueued background generation request, but activeWork is already different, keeping state as backgroundGeneration(some)", v25, 0x16u);
    swift_arrayDestroy();
    v36 = v26;
LABEL_54:
    MEMORY[0x22AABAD40](v36, -1, -1);
    MEMORY[0x22AABAD40](v25, -1, -1);
LABEL_55:

    goto LABEL_69;
  }

  v154 = v16;
  v164 = a2;
  sub_2284E8098(v179, &v171);
  sub_22842DBD4(&v185, &v171);
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v157 = v12;
  v112 = sub_22855CABC();
  __swift_project_value_buffer(v112, qword_280DEEBD0);
  v113 = a1;
  v114 = sub_22855CA8C();
  v115 = sub_22855D6AC();

  v155 = v15;
  v156 = v14;
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *&v171 = v117;
    *v116 = 136446466;
    v118 = sub_22855E34C();
    loga = v114;
    v120 = v115;
    v121 = sub_2283F8938(v118, v119, &v171);

    *(v116 + 4) = v121;
    *(v116 + 12) = 2082;
    v122 = (*(v164 + 8))(v154);
    v123 = (v122 & 1) == 0;
    if (v122)
    {
      v124 = 0x65746E4972657375;
    }

    else
    {
      v124 = 0x756F72676B636162;
    }

    if (v123)
    {
      v125 = 0xEA0000000000646ELL;
    }

    else
    {
      v125 = 0xEF65766974636172;
    }

    v126 = sub_2283F8938(v124, v125, &v171);

    *(v116 + 14) = v126;
    v114 = loga;
    _os_log_impl(&dword_2283ED000, loga, v120, "[%{public}s] work with environment %{public}s completed, has enqueued background generation request, updating state to backgroundGeneration(nil) and starting enqueued background generation request", v116, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v117, -1, -1);
    MEMORY[0x22AABAD40](v116, -1, -1);
  }

  LOBYTE(v171) = v13;
  *(&v171 + 1) = v178[0];
  *(&v171 + 1) = *(v178 + 7);
  *&v172 = v11;
  *(&v172 + 1) = v161;
  *&v173 = v160;
  *(&v173 + 1) = v156;
  *&v174 = v159;
  *(&v174 + 1) = v155;
  v175 = v177;
  v127 = v160(&v171);
  v129 = v128;
  LOBYTE(v171) = v13;
  *(&v171 + 1) = v178[0];
  *(&v171 + 1) = *(v178 + 7);
  *&v172 = v11;
  *(&v172 + 1) = v161;
  *&v173 = v160;
  *(&v173 + 1) = v156;
  *&v174 = v159;
  *(&v174 + 1) = v155;
  v175 = v177;
  sub_2284E455C(v127, v128, v13 & 1);
  v130 = *(v3 + 5);
  v173 = *(v3 + 4);
  v174 = v130;
  v131 = *(v3 + 7);
  v175 = *(v3 + 6);
  v176 = v131;
  v132 = *(v3 + 3);
  v171 = *(v3 + 2);
  v172 = v132;
  v3[4] = v127;
  v3[5] = v129 & 0xFFFFFFFFFFFFFF8 | 0x4000000000000000;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  v133 = v127;
  sub_2284E8354(&v171);
  sub_2284E61EC(v133, v129, v159, v155);

  sub_22842DC5C(&v185);
  sub_22842DC5C(&v185);
  v7 = v166;
LABEL_69:
  os_unfair_lock_unlock(*(v7 + 16));
}

uint64_t sub_2284E73E8()
{
  v1 = v0;
  v2 = *v0;
  os_unfair_lock_assert_owner(*(v0[16] + 16));
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DEEBD0);
  v4 = sub_22855CA8C();
  v5 = sub_22855D6AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v37 = v7;
    *v6 = 136446210;
    v8 = sub_22855E34C();
    v10 = sub_2283F8938(v8, v9, &v37);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%{public}s] Cancelling all operations", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  [v0[2] cancelAllOperations];
  v11 = *(v0 + 5);
  v39 = *(v0 + 4);
  v40 = v11;
  v12 = *(v0 + 7);
  v41 = *(v0 + 6);
  v42 = v12;
  v13 = *(v0 + 3);
  v37 = *(v0 + 2);
  v38 = v13;
  if (*(&v37 + 1) >> 62 == 1)
  {
    *(&v37 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
    v14 = v37;
    v15 = *(v0 + 5);
    v33 = *(v0 + 4);
    v34 = v15;
    v16 = *(v0 + 7);
    v35 = *(v0 + 6);
    v36 = v16;
    v17 = *(v0 + 3);
    v31 = *(v0 + 2);
    v32 = v17;
    *(&v31 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_2284E81F8(&v31, v30);

    if (v39)
    {
      v18 = v42;
      v19 = sub_22855CA8C();
      v20 = sub_22855D6AC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v30[0] = v22;
        *v21 = 136446210;
        v23 = sub_22855E34C();
        v25 = sub_2283F8938(v23, v24, v30);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_2283ED000, v19, v20, "[%{public}s] Calling notStartedCancellationBlock of enqueued work requests", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x22AABAD40](v22, -1, -1);
        MEMORY[0x22AABAD40](v21, -1, -1);
      }

      v18();
      sub_22842DC5C(&v38);
    }
  }

  v26 = v1[5];
  v33 = v1[4];
  v34 = v26;
  v27 = v1[7];
  v35 = v1[6];
  v36 = v27;
  v28 = v1[3];
  v31 = v1[2];
  v32 = v28;
  v1[2] = xmmword_228566A20;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[6] = 0u;
  v1[7] = 0u;
  return sub_2284E8354(&v31);
}

void sub_2284E7710()
{
  v1 = *(v0 + 128);
  os_unfair_lock_lock(*(v1 + 16));
  sub_2284E73E8();
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

void *sub_2284E7750(uint64_t *a1)
{
  v2 = MEMORY[0x277D844C8];
  sub_2284E9440(0, &qword_27D8401B8, sub_2284E2C50, &type metadata for PluginIdentifierSet.IdentifiersCodingKeys, MEMORY[0x277D844C8]);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = &v34 - v6;
  sub_2284E9440(0, &qword_27D8401C0, sub_2284E2CA4, &type metadata for PluginIdentifierSet.AllCodingKeys, v2);
  v8 = v7;
  v35 = *(v7 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  sub_2284E9440(0, &qword_27D8401C8, sub_2284E2CF8, &type metadata for PluginIdentifierSet.CodingKeys, v2);
  v13 = v12;
  v38 = *(v12 - 8);
  v14 = *(v38 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284E2CF8();
  v19 = v40;
  sub_22855E30C();
  if (v19)
  {
    goto LABEL_7;
  }

  v20 = v11;
  v34 = v8;
  v21 = v38;
  v22 = v39;
  v40 = a1;
  v23 = sub_22855E04C();
  v24 = v13;
  if (*(v23 + 16) != 1)
  {
    v28 = sub_22855DCEC();
    swift_allocError();
    v30 = v29;
    sub_2284E7D94();
    v18 = v16;
    v32 = *(v31 + 48);
    *v30 = &type metadata for PluginIdentifierSet;
    sub_22855DFDC();
    sub_22855DCCC();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    (*(v21 + 8))(v18, v13);
    swift_unknownObjectRelease();
    a1 = v40;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v18;
  }

  v25 = v21;
  if (*(v23 + 32))
  {
    v43 = 1;
    sub_2284E2C50();
    v26 = v22;
    sub_22855DFCC();
    sub_22845D390();
    sub_22845D84C(&qword_27D83F778);
    v27 = v36;
    sub_22855E03C();
    (*(v37 + 8))(v26, v27);
    (*(v25 + 8))(v16, v24);
    swift_unknownObjectRelease();
    v18 = v41;
  }

  else
  {
    v42 = 0;
    sub_2284E2CA4();
    sub_22855DFCC();
    (*(v35 + 8))(v20, v34);
    (*(v21 + 8))(v16, v24);
    swift_unknownObjectRelease();
    v18 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return v18;
}

unint64_t sub_2284E7C98()
{
  result = qword_27D840078;
  if (!qword_27D840078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840078);
  }

  return result;
}

unint64_t sub_2284E7CEC()
{
  result = qword_27D840088;
  if (!qword_27D840088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840088);
  }

  return result;
}

unint64_t sub_2284E7D40()
{
  result = qword_27D840098;
  if (!qword_27D840098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840098);
  }

  return result;
}

void sub_2284E7D94()
{
  if (!qword_27D8400B8)
  {
    sub_2284E7E04();
    sub_22855DCDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8400B8);
    }
  }
}

unint64_t sub_2284E7E04()
{
  result = qword_27D8409E0;
  if (!qword_27D8409E0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27D8409E0);
  }

  return result;
}

unint64_t sub_2284E7E50()
{
  result = qword_27D8400C8;
  if (!qword_27D8400C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8400C8);
  }

  return result;
}

unint64_t sub_2284E7EA4()
{
  result = qword_27D8400D0;
  if (!qword_27D8400D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8400D0);
  }

  return result;
}

unint64_t sub_2284E7EF8()
{
  result = qword_27D8400E8;
  if (!qword_27D8400E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8400E8);
  }

  return result;
}

unint64_t sub_2284E7F4C()
{
  result = qword_27D8400F8;
  if (!qword_27D8400F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8400F8);
  }

  return result;
}

uint64_t sub_2284E7FA0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2284E9440(255, &qword_27D8400D8, sub_22848CD68, &type metadata for GenerationPhase, MEMORY[0x277D83B48]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2284E8044()
{
  result = qword_27D840108;
  if (!qword_27D840108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840108);
  }

  return result;
}

void sub_2284E80D0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 62 == 1)
  {

    sub_2284E8188(a3, a4, a5);
  }

  else if (!(a2 >> 62))
  {
  }
}

uint64_t sub_2284E8188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2284E81F8(uint64_t a1, uint64_t a2)
{
  sub_2284E825C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2284E825C()
{
  if (!qword_280DEC070)
  {
    sub_2284E82F4();
    sub_2283F8898(255, &qword_280DEBC00, &type metadata for GenerationWorkRequest, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DEC070);
    }
  }
}

unint64_t sub_2284E82F4()
{
  result = qword_280DEC068;
  if (!qword_280DEC068)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DEC068);
  }

  return result;
}

unint64_t sub_2284E83B8()
{
  result = qword_280DEBF90;
  if (!qword_280DEBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBF90);
  }

  return result;
}

unint64_t sub_2284E8410()
{
  result = qword_27D840110;
  if (!qword_27D840110)
  {
    sub_2283F8898(255, &qword_27D840118, &type metadata for GenerationPhase, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840110);
  }

  return result;
}

unint64_t sub_2284E8490()
{
  result = qword_27D840120;
  if (!qword_27D840120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840120);
  }

  return result;
}

uint64_t sub_2284E8538(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2284E8580(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2284E85EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2284E8634(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerationQueue.EnqueueResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GenerationQueue.EnqueueResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2284E88AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2284E88C0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform21GenerationWorkRequestVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t get_enum_tag_for_layout_string_14HealthPlatform15GenerationQueueC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2284E8940(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 96))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2284E899C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
    }
  }

  return result;
}

uint64_t sub_2284E8A28(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0x8000000000000000;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
  }

  return result;
}

unint64_t sub_2284E8AE4()
{
  result = qword_27D840128;
  if (!qword_27D840128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840128);
  }

  return result;
}

unint64_t sub_2284E8B3C()
{
  result = qword_27D840130;
  if (!qword_27D840130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840130);
  }

  return result;
}

unint64_t sub_2284E8B94()
{
  result = qword_27D840138;
  if (!qword_27D840138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840138);
  }

  return result;
}

unint64_t sub_2284E8BEC()
{
  result = qword_27D840140;
  if (!qword_27D840140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840140);
  }

  return result;
}

unint64_t sub_2284E8C44()
{
  result = qword_27D840148;
  if (!qword_27D840148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840148);
  }

  return result;
}

unint64_t sub_2284E8C9C()
{
  result = qword_27D840150;
  if (!qword_27D840150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840150);
  }

  return result;
}

unint64_t sub_2284E8CF4()
{
  result = qword_27D840158;
  if (!qword_27D840158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840158);
  }

  return result;
}

unint64_t sub_2284E8D4C()
{
  result = qword_27D840160;
  if (!qword_27D840160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840160);
  }

  return result;
}

unint64_t sub_2284E8DA4()
{
  result = qword_27D840168;
  if (!qword_27D840168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840168);
  }

  return result;
}

unint64_t sub_2284E8DFC()
{
  result = qword_27D840170;
  if (!qword_27D840170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840170);
  }

  return result;
}

unint64_t sub_2284E8E54()
{
  result = qword_27D840178;
  if (!qword_27D840178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840178);
  }

  return result;
}

unint64_t sub_2284E8EAC()
{
  result = qword_27D840180;
  if (!qword_27D840180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840180);
  }

  return result;
}

unint64_t sub_2284E8F04()
{
  result = qword_27D840188;
  if (!qword_27D840188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840188);
  }

  return result;
}

unint64_t sub_2284E8F5C()
{
  result = qword_27D840190;
  if (!qword_27D840190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840190);
  }

  return result;
}

unint64_t sub_2284E8FB4()
{
  result = qword_27D840198;
  if (!qword_27D840198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840198);
  }

  return result;
}

unint64_t sub_2284E900C()
{
  result = qword_27D8401A0;
  if (!qword_27D8401A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8401A0);
  }

  return result;
}

unint64_t sub_2284E9064()
{
  result = qword_27D8401A8;
  if (!qword_27D8401A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8401A8);
  }

  return result;
}

unint64_t sub_2284E90BC()
{
  result = qword_27D8401B0;
  if (!qword_27D8401B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8401B0);
  }

  return result;
}

uint64_t sub_2284E9110(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x8000000228571C10 == a2;
  if (v3 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000228571C30 == a2 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000228571C50 == a2)
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

uint64_t sub_2284E9234()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_2284E926C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_2284E929C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  (*(v0 + 16))();
  sub_2284E6354(v3, v4);
}

uint64_t sub_2284E92E8()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = v2();
  v5 = *(v1 + 152);
  return (*(v1 + 144))(v4);
}

uint64_t objectdestroy_89Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_2284E93A0()
{
  v1 = v0;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = v2();
  v5 = *(v1 + 168);
  return (*(v1 + 160))(v4);
}

void sub_2284E9440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2284E94A8()
{
  result = qword_280DED160;
  if (!qword_280DED160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DED160);
  }

  return result;
}

uint64_t DiskHealthExperienceStore.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_2284E9548()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_228454EC4((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_2284E959C()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_2284ECB08((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

id sub_2284E95F0()
{
  v0 = sub_228400874();
  v1 = [v0 persistentStoreCoordinator];

  return v1;
}

uint64_t sub_2284E9634(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_2284E9640(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_228400874();
  return sub_2284E9688;
}

void sub_2284E9688(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
}

id sub_2284E9698()
{
  v0 = sub_228400874();
  v1 = [v0 newBackgroundContext];

  [v1 setAutomaticallyMergesChangesFromParent_];
  v2 = [objc_allocWithZone(MEMORY[0x277CBE460]) initWithMergeType_];
  [v1 setMergePolicy_];

  return v1;
}

void sub_2284E9720()
{
  v1 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);
  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2283ED000, v3, v4, "deleteAllObjects - removeAllFeedItemNotifications", v5, 2u);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  sub_2284E9E64();
  v6 = v1[4];
  os_unfair_lock_lock((v6 + 24));
  sub_2284EDA2C((v6 + 16), &v9);
  os_unfair_lock_unlock((v6 + 24));
  v7 = v9;
  v8 = (*(*v1 + 120))();
  sub_2284E98E4(v7, v8);
}

void sub_2284E9884()
{
  sub_2284E9720();
  sub_22855DEDC();
  __break(1u);
}

id sub_2284E98E4(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_18:
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = sub_22855DB4C();
  }

  else
  {
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = 0;
  v20 = &v27;
  while (v24 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAB9D20](v3, a1);
    }

    else
    {
      if (v3 >= *(v21 + 16))
      {
        goto LABEL_16;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    result = [v5 name];
    if (!result)
    {
      goto LABEL_20;
    }

    v8 = result;
    v9 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

    [v9 setIncludesPropertyValues_];
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = v9;
    v10[4] = v23;
    v11 = a2;
    v12 = v9;

    sub_228416CF8(v4);
    v13 = swift_allocObject();
    v4 = sub_2284ED8D0;
    *(v13 + 16) = sub_2284ED8D0;
    *(v13 + 24) = v10;
    v29 = sub_228466000;
    v30 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_228417B68;
    v28 = &block_descriptor_40;
    v14 = _Block_copy(&aBlock);

    [v11 performBlockAndWait_];

    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    ++v3;
    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_17;
    }
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v23;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2284ED8DC;
  *(v17 + 24) = v16;
  v29 = sub_228492FA4;
  v30 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_228417B68;
  v28 = &block_descriptor_50;
  v18 = _Block_copy(&aBlock);
  v19 = a2;

  [v19 performBlockAndWait_];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  sub_228416CF8(v4);

  if ((v18 & 1) == 0)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_2284E9CC0()
{
  v1 = *v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);
  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_22855E34C();
    v9 = sub_2283F8938(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "%s destroyPersistentContainerDescription", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  sub_2284E9E64();
  v10 = sub_2283F64E4();
  sub_22854EEE0();
}

uint64_t sub_2284E9E64()
{
  v1 = v0;
  v2 = *(v0 + 32);
  os_unfair_lock_lock((v2 + 24));
  sub_2284EB538((v2 + 16), &v10);
  os_unfair_lock_unlock((v2 + 24));
  v3 = *(v10 + 16);
  if (v3)
  {
    v4 = (v10 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 8);
      swift_unknownObjectRetain();
      v8(v1, ObjectType, v6);
      swift_unknownObjectRelease();
      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_2284E9F40(char *a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22855C06C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v27 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v27 - v11;
  v13 = *a1;
  v35 = 0;
  v36[0] = 0;
  v14 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  type metadata accessor for StorageLocations();
  static StorageLocations.homeMobileDirectory.getter();
  sub_22855BFCC();
  v15 = *(v3 + 8);
  v15(v7, v2);
  sub_22855BFCC();
  v15(v10, v2);
  v16 = sub_22855BFBC();
  v15(v12, v2);
  v17 = v27[1];
  v18 = swift_allocObject();
  *(v18 + 16) = v36;
  *(v18 + 24) = v17;
  *(v18 + 32) = v13;
  *(v18 + 40) = &v35;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2284ECB88;
  *(v19 + 24) = v18;
  v32 = sub_22845D554;
  v33 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_2284EB734;
  v31 = &block_descriptor_20;
  v20 = _Block_copy(&aBlock);

  aBlock = 0;
  [v14 coordinateWritingItemAtURL:v16 options:8 error:&aBlock byAccessor:v20];
  _Block_release(v20);

  v21 = aBlock;
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  if (v35)
  {
    swift_willThrow();

    v22 = v36[0];

LABEL_7:
    v23 = *MEMORY[0x277D85DE8];
    return v21;
  }

  if (v21)
  {
    aBlock = 0;
    v29 = 0xE000000000000000;
    sub_22855DC6C();
    v34 = v17;
    type metadata accessor for DiskHealthExperienceStore();
    sub_22855DDDC();
    MEMORY[0x22AAB92A0](0xD000000000000020, 0x8000000228571DF0);
    v34 = v21;
    sub_2284ECBEC(0, &unk_27D8401D0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277D83D88]);
    v25 = v21;
    v26 = sub_22855D1BC();
    MEMORY[0x22AAB92A0](v26);
  }

  else
  {
    v21 = v36[0];
    if (v36[0])
    {

      goto LABEL_7;
    }

    aBlock = 0;
    v29 = 0xE000000000000000;
    sub_22855DC6C();
    v34 = v17;
    type metadata accessor for DiskHealthExperienceStore();
    sub_22855DDDC();
    MEMORY[0x22AAB92A0](0xD000000000000048, 0x8000000228571DA0);
  }

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

void sub_2284EA450()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_2284ECC54((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_2284EA4A4()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_2284ECC70((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t DiskHealthExperienceStore.State.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

uint64_t sub_2284EA580()
{
  sub_2283F4798(v0 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_overrideStoreLocation, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2283F1380);
  v1 = *(v0 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_mergeChangesCancellable);

  v2 = *(v0 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_observers);

  v3 = *(v0 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_allEntities);

  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t DiskHealthExperienceStore.__allocating_init(overrideStoreLocation:observeExternalChanges:)(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  DiskHealthExperienceStore.init(overrideStoreLocation:observeExternalChanges:)(a1, a2);
  return v4;
}

id sub_2284EA6DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_sharedBackgroundContext;
  v5 = *(*a1 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_sharedBackgroundContext);
  if (v5)
  {
    v6 = *(*a1 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_sharedBackgroundContext);
  }

  else
  {
    v7 = sub_228400874();
    v8 = [v7 newBackgroundContext];

    [v8 setAutomaticallyMergesChangesFromParent_];
    v9 = [objc_allocWithZone(MEMORY[0x277CBE460]) initWithMergeType_];
    [v8 setMergePolicy_];

    v10 = *(v3 + v4);
    *(v3 + v4) = v8;
    v6 = v8;

    v5 = 0;
  }

  *a2 = v6;
  return v5;
}

uint64_t sub_2284EA7C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_allEntities;
  v5 = *(*a1 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_allEntities);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = sub_228400874();
    v8 = [v7 managedObjectModel];

    v9 = [v8 entities];
    sub_2283EF310(0, &qword_27D840278, 0x277CBE408);
    v6 = sub_22855D3AC();

    v10 = *(v3 + v4);
    *(v3 + v4) = v6;
  }

  *a2 = v6;
}

uint64_t sub_2284EA8B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2284EA910();
  }

  return result;
}

void sub_2284EA910()
{
  v1 = v0;
  if (qword_280DEEC90 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);

  v3 = sub_22855CA8C();
  v4 = sub_22855D66C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    v7 = DiskHealthExperienceStore.debugDescription.getter();
    v9 = sub_2283F8938(v7, v8, aBlock);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "%s mergeExternalChanges() starting", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v10 = sub_228400874();
  v11 = [v10 newBackgroundContext];

  v12 = *(*v1 + 112);
  v13 = *v1 + 112;
  v14 = MEMORY[0x277D84F68];
  v45 = v1;
  do
  {

    v15 = sub_22855CA8C();
    v16 = sub_22855D66C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      v19 = DiskHealthExperienceStore.debugDescription.getter();
      v21 = v11;
      v22 = v13;
      v23 = v12;
      v24 = v14;
      v25 = sub_2283F8938(v19, v20, aBlock);

      *(v17 + 4) = v25;
      v14 = v24;
      v12 = v23;
      v13 = v22;
      v11 = v21;
      v1 = v45;
      _os_log_impl(&dword_2283ED000, v15, v16, "%s mergeExternalChangesUsing(tempMoc:) merging", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AABAD40](v18, -1, -1);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v26 = v12();
    sub_2283F88E8(0, &qword_280DED000, v14 + 8, MEMORY[0x277D84560]);
    v27 = swift_allocObject();
    if (v26)
    {
      *(v27 + 16) = xmmword_228563E50;
      *(v27 + 32) = (*(*v1 + 120))();
      v28 = sub_228400874();
      v29 = [v28 viewContext];

      *(v27 + 40) = v29;
    }

    else
    {
      *(v27 + 16) = xmmword_228560690;
      *(v27 + 32) = (*(*v1 + 120))();
    }

    v47 = 0;
    v30 = swift_allocObject();
    v30[2] = v1;
    v30[3] = v11;
    v30[4] = v27;
    v30[5] = &v47;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_2284ED8F4;
    *(v31 + 24) = v30;
    aBlock[4] = sub_228492FA4;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228417B68;
    aBlock[3] = &block_descriptor_82_0;
    v32 = _Block_copy(aBlock);

    v33 = v11;

    [v33 performBlockAndWait_];
    _Block_release(v32);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if (v32)
    {
      __break(1u);
      goto LABEL_18;
    }

    v34 = v47;
  }

  while (v34 == 1);
  if (v34)
  {

    sub_2284ED900(v34);
    v35 = sub_22855CA8C();
    v36 = sub_22855D69C();

    sub_2284ED910(v34);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v37 = 136315394;
      v40 = DiskHealthExperienceStore.debugDescription.getter();
      v42 = sub_2283F8938(v40, v41, aBlock);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2112;
      v43 = v34;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v44;
      *v38 = v44;
      _os_log_impl(&dword_2283ED000, v35, v36, "%s mergeExternalChanges() abandoning merge after too many errors: %@", v37, 0x16u);
      sub_22841DC98(v38);
      MEMORY[0x22AABAD40](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AABAD40](v39, -1, -1);
      MEMORY[0x22AABAD40](v37, -1, -1);

      sub_2284ED910(v34);
    }

    else
    {

      sub_2284ED910(v34);
    }
  }

  else
  {
  }
}

uint64_t sub_2284EB0DC(void *a1)
{
  sub_22846618C();
  v2 = sub_22855D97C();
  v3 = v2;
  if (v2 >> 62)
  {
    sub_2283EF310(0, &unk_27D840268, 0x277CBE438);

    v12 = sub_22855DEFC();
    swift_bridgeObjectRelease_n();
    v3 = v12;
  }

  else
  {
    v4 = v2 & 0xFFFFFFFFFFFFFF8;

    sub_22855E16C();
    sub_2283EF310(0, &unk_27D840268, 0x277CBE438);
    if (swift_dynamicCastMetatype() || (v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v10 = (v4 + 32);
      while (1)
      {
        v11 = *v10;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v10;
        if (!--v9)
        {
          goto LABEL_3;
        }
      }

      v3 = v4 | 1;
    }
  }

  if (v3 >> 62)
  {
    v5 = sub_22855DB4C();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    sub_22855DC6C();
    type metadata accessor for DiskHealthExperienceStore();
    sub_22855DDDC();
    MEMORY[0x22AAB92A0](0xD000000000000063, 0x80000002285720A0);
    sub_2283F9B94(0, &qword_280DECFE0);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
    return result;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x22AAB9D20](i, v3);
    }

    else
    {
      v7 = *(v3 + 8 * i + 32);
    }

    v8 = v7;
    [a1 deleteObject_];
  }

LABEL_20:
}

id sub_2284EB3B0(void *a1)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [a1 save_];
  v2 = v6[0];
  if (v1)
  {
    v3 = *MEMORY[0x277D85DE8];

    return v2;
  }

  else
  {
    v5 = v6[0];
    sub_22855BF3C();

    swift_willThrow();
    v6[0] = 0;
    v6[1] = 0xE000000000000000;
    sub_22855DC6C();
    type metadata accessor for DiskHealthExperienceStore();
    sub_22855DDDC();
    MEMORY[0x22AAB92A0](0xD000000000000059, 0x8000000228572040);
    sub_2283F9B94(0, &qword_280DECFE0);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_2284EB538@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *(v5 + 16);

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = (v5 + 40 + 16 * v8);
  while (1)
  {
    if (v6 == v8)
    {

      *a2 = v9;
      return result;
    }

    if (v8 >= *(v5 + 16))
    {
      break;
    }

    ++v8;
    v11 = v10 + 2;
    v13 = *(v10 - 1);
    v12 = *v10;

    v13(&v19, v14);

    v10 = v11;
    if (v19)
    {
      v18 = v19;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228426B00(0, v9[2] + 1, 1, v9);
        v9 = result;
      }

      v16 = v9[2];
      v15 = v9[3];
      v17 = v18;
      if (v16 >= v15 >> 1)
      {
        result = sub_228426B00((v15 > 1), v16 + 1, 1, v9);
        v17 = v18;
        v9 = result;
      }

      v9[2] = v16 + 1;
      *&v9[2 * v16 + 4] = v17;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2284EB6A0(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = a4;
  v5 = sub_2283F25F8(&v8, 1);
  v6 = *a2;
  *a2 = v5;

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2284EB734(uint64_t a1)
{
  v2 = sub_22855C06C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_22855C00C();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

id sub_2284EB818(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [a1 save_];
  v2 = v6[0];
  if (v1)
  {
    v3 = *MEMORY[0x277D85DE8];

    return v2;
  }

  else
  {
    v5 = v6[0];
    sub_22855BF3C();

    swift_willThrow();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

unint64_t sub_2284EB90C()
{
  v1 = [v0 userInfo];
  v2 = sub_22855D0EC();

  v3 = *MEMORY[0x277CBE2C8];
  v4 = sub_22855D1AC();
  if (!*(v2 + 16))
  {

    goto LABEL_6;
  }

  v6 = sub_2283F6D18(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_2283F6E48(*(v2 + 56) + 32 * v6, v14);

  sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v11 = 0;
    v10 = 1;
    return v11 | (v10 << 32);
  }

  v9 = [v13 intValue];

  v10 = 0;
  v11 = v9;
  return v11 | (v10 << 32);
}

void sub_2284EBA5C(void *a1)
{
  v1 = [a1 viewContext];
  [v1 setAutomaticallyMergesChangesFromParent_];
}

uint64_t sub_2284EBAB4(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_observers;
  swift_beginAccess();
  v8 = *(v6 + v7);
  v9 = *(v8 + 16);

  if (v9)
  {
    v10 = 0;
    v11 = (v8 + 40);
    while (v10 < *(v8 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      v13(v20, v14);

      v3 = v20[0];
      if (v20[0])
      {
        swift_unknownObjectRelease();
        if (v3 == a2)
        {
        }
      }

      ++v10;
      v11 += 2;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_8:

  v3 = swift_allocObject();
  *(v3 + 24) = a3;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  a2 = *(v6 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + v7) = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_13:
    a2 = sub_228426C4C(0, a2[2] + 1, 1, a2);
    *(v6 + v7) = a2;
  }

  v18 = a2[2];
  v17 = a2[3];
  if (v18 >= v17 >> 1)
  {
    a2 = sub_228426C4C((v17 > 1), v18 + 1, 1, a2);
  }

  a2[2] = v18 + 1;
  v19 = &a2[2 * v18];
  v19[4] = sub_2284ED884;
  v19[5] = v3;
  *(v6 + v7) = a2;
  swift_endAccess();
}

uint64_t sub_2284EBC94(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_observers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v6 = sub_2284ED6DC((v4 + v5), a2);
  if (!v2)
  {
    v7 = v6;
    swift_unknownObjectRelease();
    v8 = *(*(v4 + v5) + 16);
    if (v8 >= v7)
    {
      sub_2284FD2DC(v7, v8);
      return swift_endAccess();
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t DiskHealthExperienceStore.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_2284EBE30()
{
  v0 = sub_22855C06C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v5 = sub_22855CABC();
  __swift_project_value_buffer(v5, qword_280DEEC98);
  v14 = sub_22855CA8C();
  v6 = sub_22855D68C();
  if (os_log_type_enabled(v14, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    sub_2283F6EA4();
    sub_2283F2298(&qword_27D83FC20, MEMORY[0x277CC9260]);
    v9 = sub_22855E11C();
    v11 = v10;
    (*(v1 + 8))(v4, v0);
    v12 = sub_2283F8938(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2283ED000, v14, v6, "Store cache file has been deleted! Store File URL: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AABAD40](v8, -1, -1);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  else
  {
    v13 = v14;
  }
}

void sub_2284EC124(uint64_t a1, void *a2, unint64_t a3, void **a4)
{
  v8 = MEMORY[0x22AABA4B0]();
  sub_2284EC358(a1, a2, a3, a4, &v10);
  objc_autoreleasePoolPop(v8);
  v9 = *(a1 + 32);
  os_unfair_lock_lock((v9 + 24));
  *(*(v9 + 16) + 16) = 0;
  os_unfair_lock_unlock((v9 + 24));
}

void sub_2284EC358(uint64_t a1, void *a2, unint64_t a3, void **a4, uint64_t *a5)
{
  v69 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  os_unfair_lock_lock((v8 + 24));
  v58 = v8 + 16;
  v9 = *(*(v8 + 16) + 24);
  v59 = v8;
  os_unfair_lock_unlock((v8 + 24));
  v10 = [objc_opt_self() fetchHistoryAfterToken_];
  [v10 setFetchLimit_];
  v11 = [objc_opt_self() fetchRequest];
  if (v11)
  {
    v12 = v11;
    v61 = a2;
    sub_22840A70C();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_228560570;
    *(v13 + 56) = MEMORY[0x277D837D0];
    v14 = sub_22840A7C8();
    *(v13 + 64) = v14;
    *(v13 + 32) = 0x4449656C646E7562;
    *(v13 + 40) = 0xE800000000000000;
    v15 = [objc_opt_self() mainBundle];
    v16 = [v15 bundleIdentifier];

    if (v16)
    {
      v56 = a1;
      v17 = a5;
      v18 = v10;
      v19 = sub_22855D1AC();
      v21 = v20;

      v22 = (v13 + 72);
      *(v13 + 96) = MEMORY[0x277D837D0];
      *(v13 + 104) = v14;
      if (v21)
      {
        *v22 = v19;
        v10 = v18;
        a5 = v17;
LABEL_8:
        *(v13 + 80) = v21;
        sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
        v23 = sub_22855D62C();
        [v12 setPredicate_];

        [v10 setFetchRequest_];
        a2 = v61;
        goto LABEL_9;
      }

      v10 = v18;
      a5 = v17;
    }

    else
    {
      v22 = (v13 + 72);
      *(v13 + 96) = MEMORY[0x277D837D0];
      *(v13 + 104) = v14;
    }

    *v22 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_8;
  }

LABEL_9:
  *&v68[0] = 0;
  v24 = [a2 executeRequest:v10 error:{v68, v56}];
  v25 = *&v68[0];
  if (!v24)
  {
    v30 = *&v68[0];
    v31 = sub_22855BF3C();

    swift_willThrow();
    v32 = v9;
LABEL_33:

    *a5 = v31;
LABEL_34:
    v54 = *MEMORY[0x277D85DE8];
    return;
  }

  v26 = v24;
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    v55 = v25;

    *&v68[0] = 0;
    *(&v68[0] + 1) = 0xE000000000000000;
    sub_22855DC6C();
    type metadata accessor for DiskHealthExperienceStore();
    sub_22855DDDC();
    MEMORY[0x22AAB92A0](0xD000000000000030, 0x80000002285722B0);
    v35 = sub_22855DEDC();
    __break(1u);
    goto LABEL_37;
  }

  v28 = v27;
  v29 = v25;
  if ([v28 result])
  {
    sub_22855DA7C();
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  v68[0] = v66;
  v68[1] = v67;
  if (!*(&v67 + 1))
  {
    v64 = v10;
    sub_2283F4798(v68, &qword_280DECFD0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2283F88E8);
LABEL_27:
    v62 = v9;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v38 = sub_22855CABC();
    __swift_project_value_buffer(v38, qword_280DEEC98);
    v32 = v26;

    v39 = sub_22855CA8C();
    v40 = sub_22855D68C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v68[0] = v42;
      *v41 = 136315650;
      v43 = DiskHealthExperienceStore.debugDescription.getter();
      v45 = a5;
      v46 = sub_2283F8938(v43, v44, v68);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2048;
      v47 = [v28 resultType];

      *(v41 + 14) = v47;
      *(v41 + 22) = 2080;
      v32 = v32;
      v48 = [v28 description];
      v49 = sub_22855D1AC();
      v51 = v50;

      v52 = v49;
      a5 = v45;
      v53 = sub_2283F8938(v52, v51, v68);

      *(v41 + 24) = v53;
      _os_log_impl(&dword_2283ED000, v39, v40, "%s could not get transactions from result of type %ld: %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v42, -1, -1);
      MEMORY[0x22AABAD40](v41, -1, -1);
    }

    else
    {
    }

    sub_2284ED920();
    v31 = swift_allocError();
    swift_willThrow();

    v10 = v64;
    goto LABEL_33;
  }

  sub_2284ECBEC(0, &qword_280DED238, &qword_280DED0D0, 0x277CBE4C8, MEMORY[0x277D83940]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = v10;
    goto LABEL_27;
  }

  v33 = sub_22842C344(v65, a3);
  if (!v33)
  {
LABEL_20:
    if (v65 >> 62)
    {
      v36 = sub_22855DB4C();
    }

    else
    {
      v36 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v36 == 50)
    {
      v37 = *a4;
      *a4 = 1;
      sub_2284ED910(v37);
    }

    goto LABEL_34;
  }

  v34 = v33;
  MEMORY[0x28223BE20](v33);
  os_unfair_lock_lock(v59 + 6);
  sub_2284ED974(v58);
  v35 = v59 + 6;
  if (!v63)
  {
    os_unfair_lock_unlock(v35);

    goto LABEL_20;
  }

LABEL_37:
  os_unfair_lock_unlock(v35);
  __break(1u);
}

uint64_t sub_2284ECB2C(uint64_t a1)
{
  v2 = type metadata accessor for FileMonitorPublisher();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2284ECB98()
{
  result = qword_27D8401E0;
  if (!qword_27D8401E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8401E0);
  }

  return result;
}

void sub_2284ECBEC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2283EF310(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2284ECC90()
{
  result = qword_27D8401F0;
  if (!qword_27D8401F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8401F0);
  }

  return result;
}

uint64_t sub_2284ED03C(void *a1)
{
  v44 = sub_22855C29C();
  v2 = *(v44 - 8);
  isa = v2[8].isa;
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 persistentStoreCoordinator];
  v6 = [v5 persistentStores];

  sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
  v7 = sub_22855D3AC();

  if (v7 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v9 = 0;
    v39 = "or failed with: ";
    v40 = "tity for Profile";
    v42 = v7 & 0xC000000000000001;
    v36 = v7 & 0xFFFFFFFFFFFFFF8;
    v38 = v2 + 1;
    v10 = MEMORY[0x277D84F70];
    v41 = v7;
    v37 = i;
    while (1)
    {
      if (v42)
      {
        v11 = MEMORY[0x22AAB9D20](v9, v7);
      }

      else
      {
        if (v9 >= *(v36 + 16))
        {
          goto LABEL_17;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v45 = v9 + 1;
      v13 = v10;
      v14 = [a1 persistentStoreCoordinator];
      v15 = [v14 metadataForPersistentStore_];

      v16 = MEMORY[0x277D837D0];
      v17 = sub_22855D0EC();

      if (qword_280DEE228 != -1)
      {
        swift_once();
      }

      v48 = v16;
      aBlock = xmmword_280DEE230;
      sub_228400400(&aBlock, v52);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v17;
      sub_22845AC64(v52, 0xD000000000000023, v40 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
      v19 = v51;
      v20 = v43;
      sub_22855C25C();
      v21 = sub_2283F79F8();
      v23 = v22;
      (v38->isa)(v20, v44);
      v48 = v16;
      *&aBlock = v21;
      *(&aBlock + 1) = v23;
      sub_228400400(&aBlock, v52);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v19;
      sub_22845AC64(v52, 0xD000000000000022, v39 | 0x8000000000000000, v24);
      v25 = [a1 persistentStoreCoordinator];
      v10 = v13;
      v26 = sub_22855D0DC();

      [v25 setMetadata:v26 forPersistentStore:v12];

      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v27 = sub_22855CABC();
      __swift_project_value_buffer(v27, qword_280DEEC98);
      v2 = sub_22855CA8C();
      v28 = sub_22855D6AC();
      if (os_log_type_enabled(v2, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2283ED000, v2, v28, "Saved new store version and localization for database.", v29, 2u);
        MEMORY[0x22AABAD40](v29, -1, -1);
      }

      ++v9;
      v7 = v41;
      if (v45 == v37)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  v30 = [a1 newBackgroundContext];
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_2284ED8E4;
  *(v32 + 24) = v31;
  v49 = sub_228492FA4;
  v50 = v32;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v47 = sub_228417B68;
  v48 = &block_descriptor_66;
  v33 = _Block_copy(&aBlock);
  v34 = v30;

  [v34 performBlockAndWait_];

  _Block_release(v33);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2284ED610(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v7 = *i;

    v6(&v11, v8);
    v9 = v11;

    if (v9)
    {
      swift_unknownObjectRelease();
      if (v9 == a2)
      {
        break;
      }
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_2284ED6DC(uint64_t *a1, uint64_t a2)
{
  v24 = a1;
  v4 = *a1;
  result = sub_2284ED610(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return v4[2];
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = v4 + 2;
    v9 = v4[2];
    if (v8 == v9)
    {
      return v7;
    }

    v11 = 2 * result;
    while (v8 < v9)
    {
      v13 = &v4[v11];
      v14 = v4[v11 + 6];
      v15 = v4[v11 + 7];

      v14(&v23, v16);
      v17 = v23;

      if (!v17 || (result = swift_unknownObjectRelease(), v17 != a2))
      {
        if (v8 != v7)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v7 >= *v10)
          {
            goto LABEL_24;
          }

          if (v8 >= *v10)
          {
            goto LABEL_25;
          }

          v19 = v13[6];
          v18 = v13[7];
          v22 = *&v4[2 * v7 + 4];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_22847C59C(v4);
          }

          v20 = &v4[2 * v7];
          v21 = v20[5];
          v20[4] = v19;
          v20[5] = v18;

          if (v8 >= v4[2])
          {
            goto LABEL_26;
          }

          v12 = v4[v11 + 7];
          *&v4[v11 + 6] = v22;

          *v24 = v4;
        }

        ++v7;
      }

      ++v8;
      v10 = v4 + 2;
      v9 = v4[2];
      v11 += 2;
      if (v8 == v9)
      {
        return v7;
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

  __break(1u);
  return result;
}

uint64_t sub_2284ED884@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 24);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2284ED8D0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_2284EB0DC(*(v0 + 16));
}

id sub_2284ED900(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_2284ED910(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_2284ED920()
{
  result = qword_27D840280;
  if (!qword_27D840280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840280);
  }

  return result;
}

id sub_2284ED974(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(*a1 + 24);
  *(*a1 + 24) = v2;

  return v2;
}

unint64_t sub_2284ED9C4()
{
  result = qword_27D840288;
  if (!qword_27D840288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840288);
  }

  return result;
}

id sub_2284EDB7C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_2284EDDA0(a1, a2, a3, a4, a5);
  if (!v5 && !result)
  {
    v10 = objc_opt_self();
    (*(a5 + 16))(a4, a5);
    v11 = sub_22855D17C();

    v12 = [v10 insertNewObjectForEntityForName:v11 inManagedObjectContext:a1];

    return swift_dynamicCastUnknownClassUnconditional();
  }

  return result;
}

uint64_t sub_2284EDC48()
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_2284EDCBC()
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_2284EDD10@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22855DFBC();

  *a2 = v5 != 0;
  return result;
}

id sub_2284EDDA0(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  sub_2283EF310(0, &qword_280DED1D0, 0x277CBE428);
  (*(a5 + 16))(a4, a5);
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = sub_2284EE848();
  [v12 setPredicate_];
  v13 = sub_22855D97C();
  if (!v6)
  {
    v26 = v5;
    v15 = v13;
    if (sub_22855D44C() <= 1)
    {
      v29 = v15;
      sub_22855D47C();
      swift_getWitnessTable();
      sub_22855D5CC();

      v12 = v28;

      return v12;
    }

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v25 = a1;
    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DEEC98);
    v17 = sub_22855CA8C();
    v18 = sub_22855D68C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2283ED000, v17, v18, "Error: duplicate feed item created...", v19, 2u);
      MEMORY[0x22AABAD40](v19, -1, -1);
    }

    v20 = sub_22855D47C();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x22AAB9350](&v29, v20, WitnessTable);

    v24[1] = v24;
    v28 = v29;
    v23 = MEMORY[0x28223BE20](v22);
    MEMORY[0x28223BE20](v23);
    sub_22855DF0C();
    swift_getWitnessTable();
    sub_22855D32C();

    sub_2284EE340(v25, v27 & 1);
    sub_22843D108();
    swift_allocError();
    swift_willThrow();
  }

  return v12;
}

void sub_2284EE178(uint64_t a1, void *a2)
{
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v4 = sub_22855CABC();
  __swift_project_value_buffer(v4, qword_280DEEC98);
  v5 = a2;
  oslog = sub_22855CA8C();
  v6 = sub_22855D68C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 134218242;
    *(v7 + 4) = a1;
    *(v7 + 12) = 2080;
    swift_getWitnessTable();
    v9 = sub_22855E11C();
    v11 = sub_2283F8938(v9, v10, &v13);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_2283ED000, oslog, v6, "Existing item %ld: %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AABAD40](v8, -1, -1);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  else
  {
  }
}

void sub_2284EE340(void *a1, char a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [a1 persistentStoreCoordinator];
  if (!v4)
  {
    if (qword_280DEEC90 == -1)
    {
LABEL_11:
      v15 = sub_22855CABC();
      __swift_project_value_buffer(v15, qword_280DEEC98);
      v16 = sub_22855CA8C();
      v17 = sub_22855D69C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2283ED000, v16, v17, "No coordinator, unable to reset cache version", v18, 2u);
        MEMORY[0x22AABAD40](v18, -1, -1);
      }

      goto LABEL_21;
    }

LABEL_24:
    swift_once();
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v4 persistentStores];
  sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
  v7 = sub_22855D3AC();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_16:

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v20 = sub_22855CABC();
    __swift_project_value_buffer(v20, qword_280DEEC98);
    v21 = sub_22855CA8C();
    v22 = sub_22855D69C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2283ED000, v21, v22, "No persistent stores, unable to reset cache version", v23, 2u);
      MEMORY[0x22AABAD40](v23, -1, -1);
    }

    goto LABEL_21;
  }

  if (!sub_22855DB4C())
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) == 0)
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v7 + 32);
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_24;
  }

  v8 = MEMORY[0x22AAB9D20](0, v7);
LABEL_7:
  v9 = v8;

  v10 = [v5 metadataForPersistentStore_];
  sub_22855D0EC();

  sub_22845A864(0xD000000000000023, 0x800000022856E7D0, v27);
  sub_22843D15C(v27);
  v11 = sub_22855D0DC();
  [v5 setMetadata:v11 forPersistentStore:v9];

  *&v27[0] = 0;
  v12 = [a1 save_];
  v13 = *&v27[0];
  if (!v12)
  {
    v19 = *&v27[0];

    sub_22855BF3C();

    swift_willThrow();
    goto LABEL_21;
  }

  if ((a2 & 1) == 0)
  {
    v14 = *&v27[0];

LABEL_21:
    v24 = *MEMORY[0x277D85DE8];
    return;
  }

  *&v27[0] = 0;
  *(&v27[0] + 1) = 0xE000000000000000;
  v25 = v13;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000018, 0x800000022856E800);
  swift_getMetatypeMetadata();
  v26 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v26);

  MEMORY[0x22AAB92A0](0xD000000000000039, 0x800000022856E820);
  sub_22855DEDC();
  __break(1u);
}

void sub_2284EE808(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_2284EE178(a1, a2);
}

uint64_t sub_2284EE810(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1, a1[1]);
}

id sub_2284EE848()
{
  v1 = sub_22855D17C();

  v2 = [v0 initWithEntityName_];

  return v2;
}

unint64_t sub_2284EE8B4()
{
  result = qword_27D840290;
  if (!qword_27D840290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840290);
  }

  return result;
}

uint64_t PreferredSummaryTransactionSelector.init(currentDateProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id PreferredSummaryTransactionSelector.selectTransaction<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22855C16C();
  v11 = *(v26 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v26);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  v16 = *(v3 + 8);
  (*v3)(v13);
  v18 = *(v7 + 16);
  v25 = a1;
  v18(v10, a1, a2);
  v27 = v15;
  v19 = *(a3 + 8);
  v20 = sub_22855D2FC();
  if (v20 >> 62)
  {
    v22 = v20;
    v23 = sub_22855DB4C();
    v20 = v22;
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_5:

    v28 = v17;
    v29 = v16;
    v21 = sub_2284EF140(v25, a2, a3);
    goto LABEL_6;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = sub_2284EED74(v20, v17, v16);

LABEL_6:
  (*(v11 + 8))(v15, v26);
  return v21;
}

uint64_t PreferredSummaryTransactionSelector.currentDateProvider.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

BOOL sub_2284EEB74(uint64_t *a1)
{
  sub_2284EFAC4(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_22855C16C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  HKSharedSummaryTransaction.dateCommitted.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2284EFB18(v5, &qword_280DEE380, MEMORY[0x277CC9578]);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_22855C0EC();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    return v14 <= 259200.0;
  }
}

id sub_2284EED74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = v7;
  if (!v7)
  {
    return 0;
  }

  while (1)
  {
    v9 = a1 & 0xC000000000000001;
    if (v8 == 1)
    {
      if (v9)
      {
        return MEMORY[0x22AAB9D20](0, a1);
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return *(a1 + 32);
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      swift_once();
      goto LABEL_13;
    }

    if (v9)
    {
      swift_retain_n();
      v11 = MEMORY[0x22AAB9D20](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v10 = *(a1 + 32);
      swift_retain_n();
      v11 = v10;
    }

    v12 = v11;
    if (v7 == 1)
    {
      break;
    }

    v27 = 1;
    while (1)
    {
      if (v9)
      {
        v28 = MEMORY[0x22AAB9D20](v27, a1);
      }

      else
      {
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v27 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v28 = *(a1 + 8 * v27 + 32);
      }

      v3 = v28;
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v32[0] = a2;
      v32[1] = a3;
      if (sub_2284EF470(v12, v28))
      {

        v12 = v3;
        ++v27;
        if (v29 == v7)
        {
          goto LABEL_12;
        }
      }

      else
      {

        ++v27;
        if (v29 == v7)
        {
          goto LABEL_11;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    if (a1 < 0)
    {
      v3 = a1;
    }

    else
    {
      v3 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v30 = sub_22855DB4C();
    if (!v30)
    {
      return 0;
    }

    v7 = v30;
    v8 = sub_22855DB4C();
  }

LABEL_11:
  v3 = v12;
LABEL_12:

  if (qword_280DEEC90 != -1)
  {
    goto LABEL_42;
  }

LABEL_13:
  v13 = sub_22855CABC();
  __swift_project_value_buffer(v13, qword_280DEEC98);
  v14 = v3;
  v15 = sub_22855CA8C();
  v16 = sub_22855D6AC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32[0] = v18;
    *v17 = 136315394;
    sub_2284EFAC4(0, &qword_280DE9278, sub_2284E1B24);
    v19 = v14;
    v20 = sub_22855D1CC();
    v22 = sub_2283F8938(v20, v21, v32);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = [v19 metadata];
    sub_22855D0EC();

    sub_2284EFAC4(0, &qword_280DE96C8, sub_2284AD42C);
    v24 = sub_22855D1BC();
    v26 = sub_2283F8938(v24, v25, v32);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_2283ED000, v15, v16, "[Transaction] Selecting transaction %s. Transaction metadata: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v18, -1, -1);
    MEMORY[0x22AABAD40](v17, -1, -1);
  }

  return v3;
}

id sub_2284EF140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v5 = v3[1];
  v7 = 0;
  if ((sub_22855D5AC() & 1) == 0)
  {
    if (sub_22855D59C() == 1)
    {
      sub_22855D5CC();
      return v25;
    }

    else
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v5;
      MEMORY[0x28223BE20](v8);
      v9 = *(a3 + 8);

      sub_22855D2EC();

      v7 = v25;
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v10 = sub_22855CABC();
      __swift_project_value_buffer(v10, qword_280DEEC98);
      v11 = v25;
      v12 = sub_22855CA8C();
      v13 = sub_22855D6AC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v25 = v15;
        *v14 = 136315394;
        sub_2284EFAC4(0, &qword_280DE9278, sub_2284E1B24);
        v16 = v11;
        v17 = sub_22855D1CC();
        v19 = sub_2283F8938(v17, v18, &v25);

        *(v14 + 4) = v19;
        *(v14 + 12) = 2080;
        if (v7)
        {
          v20 = [v16 metadata];
          sub_22855D0EC();
        }

        sub_2284EFAC4(0, &qword_280DE96C8, sub_2284AD42C);
        v21 = sub_22855D1BC();
        v23 = sub_2283F8938(v21, v22, &v25);

        *(v14 + 14) = v23;
        _os_log_impl(&dword_2283ED000, v12, v13, "[Transaction] Selecting transaction %s. Transaction metadata: %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v15, -1, -1);
        MEMORY[0x22AABAD40](v14, -1, -1);
      }
    }
  }

  return v7;
}

uint64_t sub_2284EF470(void *a1, void *a2)
{
  v60 = a2;
  sub_2284EFAC4(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - v8;
  v10 = sub_22855C16C();
  v59 = *(v10 - 8);
  v11 = v59[8];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  sub_2284EFAC4(0, &qword_280DECD58, MEMORY[0x277CC9788]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v57 - v19;
  v21 = HKSharedSummaryTransaction.bundleVersion.getter();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v58 = v14;
    v25 = v7;
    v26 = a1;
    v27 = HKSharedSummaryTransaction.bundleVersion.getter();
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      if ((v23 != v27 || v24 != v28) && (sub_22855E15C() & 1) == 0)
      {
        v63 = v23;
        v64 = v24;
        v61 = v29;
        v62 = v30;
        v54 = sub_22855C29C();
        (*(*(v54 - 8) + 56))(v20, 1, 1, v54);
        sub_2283F79A4();
        v55 = sub_22855DA6C();
        sub_2284EFB18(v20, &qword_280DECD58, MEMORY[0x277CC9788]);

        LOBYTE(v36) = v55 == -1;
        return v36 & 1;
      }
    }

    a1 = v26;
    v7 = v25;
    v14 = v58;
  }

  v31 = HKSharedSummaryTransaction.hasPairedDeviceData.getter();
  if (v31 == 2 || (v35 = v31, v36 = HKSharedSummaryTransaction.hasPairedDeviceData.getter(), v36 == 2) || ((v36 ^ v35) & 1) == 0)
  {
    HKSharedSummaryTransaction.dateCommitted.getter(v9);
    v32 = v59;
    v33 = v59[6];
    v34 = v33(v9, 1, v10);
    v57 = a1;
    if (v34 == 1)
    {
      sub_22855C0DC();
      if (v33(v9, 1, v10) != 1)
      {
        sub_2284EFB18(v9, &qword_280DEE380, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      (v32[4])(v16, v9, v10);
    }

    sub_22855C0CC();
    v38 = v37;
    v39 = v59;
    v40 = v59[1];
    v40(v16, v10);
    v41 = round(v38 / 259200.0);
    HKSharedSummaryTransaction.dateCommitted.getter(v7);
    if (v33(v7, 1, v10) == 1)
    {
      sub_22855C0DC();
      if (v33(v7, 1, v10) != 1)
      {
        sub_2284EFB18(v7, &qword_280DEE380, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      (v39[4])(v14, v7, v10);
    }

    sub_22855C0CC();
    v43 = v42;
    v40(v14, v10);
    v44 = round(v43 / 259200.0);
    if (v41 == v44)
    {
      v45 = [v57 sourceDeviceIdentifier];
      v46 = sub_22855D1AC();
      v48 = v47;

      v49 = [v60 sourceDeviceIdentifier];
      v50 = sub_22855D1AC();
      v52 = v51;

      if (v46 == v50 && v48 == v52)
      {

        LOBYTE(v36) = 0;
      }

      else
      {
        v53 = sub_22855E15C();

        LOBYTE(v36) = v53;
      }
    }

    else
    {
      LOBYTE(v36) = v41 < v44;
    }
  }

  return v36 & 1;
}

uint64_t sub_2284EFA90(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2) & 1;
}

void sub_2284EFAC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2284EFB18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2284EFAC4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id FeedItem.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id FeedItem.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FeedItem();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id FeedItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static InputSignalSet.LookupKey.medicalIDUpdate.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for MedicalIDChangesInputSignal();
  return sub_22855C61C();
}

uint64_t static MedicalIDChangesInputSignal.identityConfiguration.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  return sub_22855C82C();
}

uint64_t MedicalIDChangesInputSignal.observer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_observer);
  v2 = *(v0 + OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_observer + 8);
  return swift_unknownObjectRetain();
}

uint64_t sub_2284EFE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, void *, void *, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v16 = a7(a1, a3, a4, a5, a6, v7, ObjectType, a2);
  swift_unknownObjectRelease();

  return v16;
}

void sub_2284EFF20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_medicalIDStore);
    v5 = Strong;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    aBlock[4] = sub_2284F1238;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22842F0A4;
    aBlock[3] = &block_descriptor_14;
    v7 = _Block_copy(aBlock);
    v8 = v4;
    v9 = v5;

    [v8 fetchMedicalIDDataWithCompletion_];
    _Block_release(v7);
  }
}

uint64_t sub_2284F0044(void *a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v43 = a4;
  v41 = a1;
  v8 = sub_22855C85C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2284F1048();
  v11 = v10;
  v42 = *(v10 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v40 = v11;
    v15 = a2;
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DE9DF8);
    v17 = a2;
    v18 = sub_22855CA8C();
    v19 = sub_22855D6AC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = a5;
      v22 = v21;
      v23 = swift_slowAlloc();
      v39 = a3;
      v24 = v23;
      v44 = v23;
      *v20 = 136315394;
      v25 = sub_22855E34C();
      v27 = sub_2283F8938(v25, v26, &v44);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2112;
      v28 = a2;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v29;
      *v22 = v29;
      _os_log_impl(&dword_2283ED000, v18, v19, v38, v20, 0x16u);
      sub_22841DC98(v22);
      MEMORY[0x22AABAD40](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v30 = v24;
      a3 = v39;
      MEMORY[0x22AABAD40](v30, -1, -1);
      MEMORY[0x22AABAD40](v20, -1, -1);
    }

    else
    {
    }

    v11 = v40;
  }

  v31 = a3;
  v33 = *(a3 + OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_observer);
  v32 = *(a3 + OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_observer + 8);
  swift_getObjectType();
  sub_22855C84C();
  sub_2283EF310(0, &qword_280DE9408, 0x277CCDDF0);
  sub_2284F10BC();
  v34 = v41;
  sub_22855C9BC();
  v44 = v31;
  sub_2284F0FB4(&qword_280DEAE78, v35, type metadata accessor for MedicalIDChangesInputSignal);
  sub_22855C78C();
  return (*(v42 + 8))(v14, v11);
}

uint64_t MedicalIDChangesInputSignal.description.getter()
{
  v0 = sub_22855C85C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855C84C();
  sub_2284F0FB4(&qword_280DE9E98, 255, MEMORY[0x277D11C40]);
  v5 = sub_22855E11C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id MedicalIDChangesInputSignal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicalIDChangesInputSignal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2284F07F8()
{
  v1 = (*v0 + OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_observer);
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

id sub_2284F0884(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v44 = a8;
  v45 = a3;
  v41 = a5;
  v42 = a4;
  v40 = a2;
  v43 = a1;
  ObjectType = swift_getObjectType();
  v39 = sub_22855D81C();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v39);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22855D7BC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_22855CFEC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_protectedState;
  sub_2284F125C();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *&a6[v17] = v18;
  v38 = OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_observerQueue;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_22855CFDC();
  v48 = MEMORY[0x277D84F90];
  sub_2284F0FB4(&unk_280DED140, 255, MEMORY[0x277D85230]);
  sub_2284F12BC();
  sub_2284F0FB4(&qword_280DED240, 255, sub_2284F12BC);
  v19 = v40;
  v20 = v41;
  sub_22855DA9C();
  (*(v9 + 104))(v12, *MEMORY[0x277D85260], v39);
  v21 = v38;
  v22 = v42;
  *&a6[v21] = sub_22855D84C();
  v23 = &a6[OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_context];
  v24 = v44;
  *v23 = v43;
  *(v23 + 1) = v24;
  v25 = &a6[OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_observer];
  v26 = v45;
  *v25 = v19;
  *(v25 + 1) = v26;
  *&a6[OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_healthStore] = v22;
  if (v20)
  {
    swift_unknownObjectRetain();
    v27 = v22;
    v28 = v20;
  }

  else
  {
    v29 = objc_allocWithZone(MEMORY[0x277CCD5E8]);
    swift_unknownObjectRetain();
    v28 = [v29 initWithHealthStore_];
  }

  *&a6[OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_medicalIDStore] = v28;
  v30 = *MEMORY[0x277CCE4B0];
  v31 = *&a6[v21];
  v32 = sub_22855C4AC();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = v20;
  v36 = v31;
  *&a6[OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_observerToken] = sub_22855C48C();
  v47.receiver = a6;
  v47.super_class = ObjectType;
  return objc_msgSendSuper2(&v47, sel_init);
}

id sub_2284F0C40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, Class a6, uint64_t a7, uint64_t a8)
{
  v15 = objc_allocWithZone(a6);

  return sub_2284F0884(a1, a2, a3, a4, a5, v15, a7, a8);
}

void _s14HealthPlatform27MedicalIDChangesInputSignalC16beginObservation4from14configurationsy0A13Orchestration31SecureCodingOptionalValueAnchorVySo16_HKMedicalIDDataCAkG0lM6ObjectAAyHCg_GSg_SayAG21IdentityConfigurationVGtF_0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_observerToken];
  sub_22855C49C();
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v4 = sub_22855CABC();
  __swift_project_value_buffer(v4, qword_280DEEBF0);
  v5 = sub_22855CA8C();
  v6 = sub_22855D6AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315138;
    v9 = sub_22855E34C();
    v11 = sub_2283F8938(v9, v10, v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2283ED000, v5, v6, "[%s] Beginning Observation", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AABAD40](v8, -1, -1);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = ObjectType;

  sub_22855C46C();

  v14 = *&v1[OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_medicalIDStore];
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = ObjectType;
  v18[4] = sub_2284F1214;
  v18[5] = v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_22842F0A4;
  v18[3] = &block_descriptor_21;
  v16 = _Block_copy(v18);
  v17 = v1;

  [v14 fetchMedicalIDDataWithCompletion_];
  _Block_release(v16);
}

uint64_t sub_2284F0FB4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2284F1048()
{
  if (!qword_280DE9E38)
  {
    sub_2283EF310(255, &qword_280DE9408, 0x277CCDDF0);
    sub_2284F10BC();
    v0 = sub_22855C9CC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9E38);
    }
  }
}

unint64_t sub_2284F10BC()
{
  result = qword_280DE9410;
  if (!qword_280DE9410)
  {
    sub_2283EF310(255, &qword_280DE9408, 0x277CCDDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9410);
  }

  return result;
}

uint64_t sub_2284F1150(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2284F11AC(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2284F125C()
{
  if (!qword_280DE9138)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9138);
    }
  }
}

void sub_2284F12BC()
{
  if (!qword_280DED250)
  {
    sub_22855D7BC();
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED250);
    }
  }
}

uint64_t static FeedItemPredicate.itemWithIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  sub_2284F13B0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v5 = sub_22845FFC8(inited);
  swift_setDeallocating();
  sub_2284F1618(inited + 32);
  return v5;
}

void sub_2284F13B0()
{
  if (!qword_280DEE7A0)
  {
    v0 = sub_22855E12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE7A0);
    }
  }
}

uint64_t _s14HealthPlatform17FeedItemPredicateO2eeoiySbAC_ACtFZ_0(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5, void *a6, void *a7, char a8)
{
  if (!a4)
  {
    if (a8)
    {
      return 0;
    }

    v12 = a6;
    if ((sub_22844230C(a1, a5) & 1) == 0)
    {
      return 0;
    }

    if (a2 == 1)
    {
      if (v12 == 1)
      {
        return v12;
      }

      return 0;
    }

    if (v12 == 1)
    {
      return 0;
    }

    if (a2)
    {
      if (!v12)
      {
        return 0;
      }

LABEL_33:
      sub_2284185F4();
      v18 = v12;
      v19 = sub_22855D9AC();
      sub_228451F7C(v12);
      return (v19 & 1) != 0;
    }

    return !v12;
  }

  if (a4 == 1)
  {
    if (a8 != 1)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v8 = a3;
      v9 = a7;
      v10 = sub_22855E15C();
      a3 = v8;
      a7 = v9;
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    if (a3 == 1)
    {
      return a7 == 1;
    }

    if (a7 != 1)
    {
      if (a3)
      {
        if (!a7)
        {
          return 0;
        }

        v12 = a7;
        goto LABEL_33;
      }

      if (!a7)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a8 != 2)
  {
    return 0;
  }

  if (a1 != 1)
  {
    if (a5 == 1)
    {
      v13 = 1;
    }

    else
    {
      if (!a1)
      {
        if (a5)
        {
          return 0;
        }

        sub_2284506A4(0);
        return 1;
      }

      if (a5)
      {
        v15 = a7;
        sub_2284185F4();
        sub_2284506A4(a5);
        v17 = sub_22855D9AC();
        sub_228451F14(a5, a6, v15, 2);
        return (v17 & 1) != 0;
      }

      v13 = 0;
    }

    sub_2284506A4(v13);
    return 0;
  }

  if (a5 != 1)
  {
    return 0;
  }

  v12 = 1;
  sub_2284506A4(1);
  return v12;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform13SourceProfileOSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2284F169C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_2284F16E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t (*MockHealthPlatformOrchestrationContext.feedItemStorageHandler.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__feedItemStorageHandler;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_22855C94C();
  (*(v3 + 8))(v6, v2);
  *(swift_allocObject() + 16) = v9;
  return sub_2284F1B30;
}

unint64_t sub_2284F18B4()
{
  result = qword_27D8402D8;
  if (!qword_27D8402D8)
  {
    sub_22842BFBC(255, &qword_27D8402E0);
    sub_22842BFBC(255, &qword_280DE9E30);
    sub_2283EF310(255, &qword_280DED1E0, 0x277CCAC30);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D8402D8);
  }

  return result;
}

void *sub_2284F1968@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MockFeedItemStorage();
  result = swift_allocObject();
  result[2] = sub_22851D830;
  result[3] = 0;
  result[4] = sub_22851D830;
  result[5] = 0;
  result[6] = sub_22851D830;
  result[7] = 0;
  result[8] = sub_22851CC04;
  result[9] = 0;
  a1[3] = v2;
  a1[4] = &protocol witness table for MockFeedItemStorage;
  *a1 = result;
  return result;
}