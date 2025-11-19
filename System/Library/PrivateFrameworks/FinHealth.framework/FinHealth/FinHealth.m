id sub_100001610()
{
  v1 = OBJC_IVAR____TtC10finhealthd21PredictedTransactions_upcomingPayments;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100001664(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10finhealthd21PredictedTransactions_upcomingPayments;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PredictedTransactions.__allocating_init(upcomingPayments:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10finhealthd21PredictedTransactions_upcomingPayments] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id PredictedTransactions.init(upcomingPayments:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10finhealthd21PredictedTransactions_upcomingPayments] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PredictedTransactions();
  return objc_msgSendSuper2(&v3, "init");
}

id PredictedTransactions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PredictedTransactions.init()()
{
  v1 = objc_allocWithZone(type metadata accessor for UpcomingPayments());
  *&v0[OBJC_IVAR____TtC10finhealthd21PredictedTransactions_upcomingPayments] = UpcomingPayments.init(accountTypes:transactionTypes:)();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PredictedTransactions();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t PredictedTransactions.save()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_100002E9C(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for PredictedTransaction();
  v1[7] = v6;
  sub_100002E9C(v6);
  v1[8] = v7;
  v9 = *(v8 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v1[11] = v10;
  sub_100002E9C(v10);
  v1[12] = v11;
  v13 = *(v12 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v14 = type metadata accessor for IntermediatePrediction();
  v1[16] = v14;
  sub_100002E9C(v14);
  v1[17] = v15;
  v17 = *(v16 + 64) + 15;
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100001A80, 0, 0);
}

uint64_t sub_100001A80()
{
  v1 = (*((swift_isaMask & **(v0 + 16)) + 0x58))();
  v2 = dispatch thunk of UpcomingPayments.batchPredictions()();
  *(v0 + 152) = v2;

  v3 = type metadata accessor for FinanceStore();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 160) = FinanceStore.init()();
  v6 = *(v2 + 16);
  *(v0 + 168) = v6;
  if (v6)
  {
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v8 + 80);
    *(v0 + 272) = v9;
    *(v0 + 176) = *(v8 + 72);
    v10 = *(v8 + 16);
    *(v0 + 184) = v10;
    *(v0 + 192) = 0;
    v11 = *(v0 + 120);
    v12 = *(v0 + 72);
    v13 = *(v0 + 80);
    v14 = *(v0 + 56);
    v15 = *(v0 + 64);
    v10(v7, *(v0 + 152) + ((v9 + 32) & ~v9), *(v0 + 128));
    *(v0 + 200) = IntermediatePrediction.identifier.getter();
    *(v0 + 208) = v16;
    IntermediatePrediction.predictedTransaction.getter();
    PredictedTransaction.id.getter();
    v17 = *(v15 + 8);
    *(v0 + 216) = v17;
    *(v0 + 224) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18 = sub_100002EDC();
    v17(v18);
    IntermediatePrediction.predictedTransaction.getter();
    *(v0 + 232) = PredictedTransaction.transactionDescription.getter();
    *(v0 + 240) = v19;
    v20 = sub_100002EDC();
    v17(v20);
    IntermediatePrediction.predictedTransaction.getter();
    v21 = IntermediatePrediction.transactionids.getter();
    v22 = sub_100002E1C(v21);
    v23(v22);
    v24 = async function pointer to FinanceStore.save(_:transactionIDs:)[1];
    v25 = swift_task_alloc();
    *(v0 + 256) = v25;
    *v25 = v0;
    v26 = sub_100002DE8(v25);

    return FinanceStore.save(_:transactionIDs:)(v26);
  }

  else
  {

    sub_100002E74();

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_100001CF4()
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 224);
  v5 = *(*v1 + 216);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 264) = v0;

  v5(v6, v7);

  if (v0)
  {
    v8 = sub_1000022AC;
  }

  else
  {
    v8 = sub_100001E90;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100001E90()
{
  v60 = v0;
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[6];
  static Logger.core.getter();
  v8 = sub_100002EE8();
  v9(v8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[30];
  if (v12)
  {
    v51 = v0[26];
    v52 = v0[29];
    v50 = v0[25];
    v53 = v11;
    v14 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    v56 = v0[6];
    v57 = v0[15];
    v54 = v0[4];
    v55 = v0[3];
    v17 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v17 = 136315650;
    sub_100002C9C();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v14, v16);
    v22 = sub_10000272C(v18, v20, &v59);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = v51;
    v24 = sub_10000272C(v50, v51, &v59);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2080;
    v25 = sub_10000272C(v52, v13, &v59);

    *(v17 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v10, v53, "Successfully saved Predicted Transaction uuid %s, internalid %s description %s in FinanceStore\n", v17, 0x20u);
    swift_arrayDestroy();
    sub_100002EFC();
    sub_100002EFC();

    (*(v54 + 8))(v56, v55);
    v21(v57, v16);
  }

  else
  {
    v26 = v0[26];
    v27 = v0[14];
    v58 = v0[15];
    v23 = v0[11];
    v28 = v0[12];
    v20 = v0[6];
    v21 = v0[3];
    v29 = v0[4];

    v30 = *(v28 + 8);
    v30(v27, v23);
    v31 = *(v29 + 8);
    v32 = sub_100002EDC();
    v33(v32);
    v30(v58, v23);
  }

  sub_100002EC8();
  if (v35)
  {
    v36 = v0[19];

    sub_100002E74();

    v37 = v0[1];

    return v37();
  }

  else
  {
    v39 = sub_100002E34(v34);
    v40(v39);
    v0[25] = IntermediatePrediction.identifier.getter();
    v0[26] = v41;
    IntermediatePrediction.predictedTransaction.getter();
    PredictedTransaction.id.getter();
    v42 = sub_100002EAC();
    v20(v42);
    IntermediatePrediction.predictedTransaction.getter();
    v0[29] = PredictedTransaction.transactionDescription.getter();
    v0[30] = v43;
    (v20)(v23, v21);
    IntermediatePrediction.predictedTransaction.getter();
    v44 = IntermediatePrediction.transactionids.getter();
    v45 = sub_100002E1C(v44);
    v46(v45);
    v47 = async function pointer to FinanceStore.save(_:transactionIDs:)[1];
    v48 = swift_task_alloc();
    v0[32] = v48;
    *v48 = v0;
    v49 = sub_100002DE8();

    return FinanceStore.save(_:transactionIDs:)(v49);
  }
}

uint64_t sub_1000022AC()
{
  v62 = v0;
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[5];
  static Logger.core.getter();
  v8 = sub_100002EE8();
  v9(v8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[30];
  if (v12)
  {
    v52 = v0[26];
    v53 = v0[29];
    v51 = v0[25];
    v54 = v11;
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[11];
    v58 = v0[5];
    v59 = v0[15];
    v55 = v0[33];
    v56 = v0[4];
    v57 = v0[3];
    v17 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v17 = 136315650;
    sub_100002C9C();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v22 = *(v15 + 8);
    v21 = v15 + 8;
    v22(v14, v16);
    v23 = sub_10000272C(v18, v20, &v61);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v24 = v52;
    v25 = sub_10000272C(v51, v52, &v61);

    *(v17 + 14) = v25;
    *(v17 + 22) = 2080;
    v26 = sub_10000272C(v53, v13, &v61);

    *(v17 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v10, v54, "Failed to save uuid %s, internalid %s description %s in FinanceStore\n", v17, 0x20u);
    swift_arrayDestroy();
    sub_100002EFC();
    sub_100002EFC();

    (*(v56 + 8))(v58, v57);
    v22(v59, v16);
  }

  else
  {
    v27 = v0[26];
    v60 = v0[15];
    v29 = v0[12];
    v28 = v0[13];
    v24 = v0[11];
    v30 = v0[4];
    v18 = v0[5];
    v21 = v0[3];

    v31 = *(v29 + 8);
    v31(v28, v24);
    v32 = *(v30 + 8);
    v33 = sub_100002EDC();
    v34(v33);
    v31(v60, v24);
  }

  sub_100002EC8();
  if (v36)
  {
    v37 = v0[19];

    sub_100002E74();

    v38 = v0[1];

    return v38();
  }

  else
  {
    v40 = sub_100002E34(v35);
    v41(v40);
    v0[25] = IntermediatePrediction.identifier.getter();
    v0[26] = v42;
    IntermediatePrediction.predictedTransaction.getter();
    PredictedTransaction.id.getter();
    v43 = sub_100002EAC();
    v18(v43);
    IntermediatePrediction.predictedTransaction.getter();
    v0[29] = PredictedTransaction.transactionDescription.getter();
    v0[30] = v44;
    (v18)(v24, v21);
    IntermediatePrediction.predictedTransaction.getter();
    v45 = IntermediatePrediction.transactionids.getter();
    v46 = sub_100002E1C(v45);
    v47(v46);
    v48 = async function pointer to FinanceStore.save(_:transactionIDs:)[1];
    v49 = swift_task_alloc();
    v0[32] = v49;
    *v49 = v0;
    v50 = sub_100002DE8();

    return FinanceStore.save(_:transactionIDs:)(v50);
  }
}

id PredictedTransactions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PredictedTransactions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000272C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000027F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100002D40(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100002CF4(v11);
  return v7;
}

unint64_t sub_1000027F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000028F0(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000028F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000293C(a1, a2);
  sub_100002A54(&off_100014660);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000293C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100002B38(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100002A54(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100002BA8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100002B38(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002D9C(&qword_100018A40, &qword_10000F480);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100002BA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002D9C(&qword_100018A40, &qword_10000F480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100002C9C()
{
  result = qword_1000187E8;
  if (!qword_1000187E8)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000187E8);
  }

  return result;
}

uint64_t sub_100002CF4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002D40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002D9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002DE8(uint64_t a1)
{
  *(a1 + 8) = sub_100001CF4;
  v2 = *(v1 + 160);
  return *(v1 + 72);
}

uint64_t sub_100002E1C(uint64_t a1)
{
  *(v2 + 248) = a1;
  v4 = *(v3 + 8);
  return v1;
}

uint64_t sub_100002E34@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 192) = a1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 120);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 152) + ((*(v1 + 272) + 32) & ~*(v1 + 272)) + *(v1 + 176) * a1;
  return *(v1 + 144);
}

uint64_t sub_100002E74()
{
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v8 = v0[9];
  v7 = v0[10];
  v10 = v0[5];
  v9 = v0[6];
}

uint64_t sub_100002EAC()
{
  *(v0 + 216) = *(v2 + 8);
  *(v0 + 224) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v1;
}

uint64_t sub_100002EFC()
{
}

id sub_100002F48()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

id sub_100002FC8(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100003010()
{
  sub_10000897C();
  v0 = swift_allocObject();
  sub_100003040();
  return v0;
}

void *sub_100003040()
{
  type metadata accessor for FinHealthBackgroundTasks();
  v0[2] = sub_100008DCC();
  v0[3] = [objc_opt_self() sharedInstance];
  v0[4] = [objc_allocWithZone(type metadata accessor for EntityGroups()) init];
  v0[5] = [objc_allocWithZone(type metadata accessor for IncomeInsights()) init];
  v1 = *(*v0[2] + 208);

  v1(v2);

  return v0;
}

uint64_t sub_100003110()
{
  sub_100008818();
  v1[18] = v2;
  v1[19] = v0;
  v3 = type metadata accessor for Logger();
  v1[20] = v3;
  sub_100002E9C(v3);
  v1[21] = v4;
  v6 = *(v5 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v7 = sub_1000087D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000031EC()
{
  sub_100008A1C();
  v1 = v0[26];
  static Logger.core.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_100008924(v3))
  {
    v4 = v0[18];
    v5 = sub_1000089F8();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    sub_100008898();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    sub_100002EFC();
  }

  v11 = v0[26];
  v12 = v0[20];
  v13 = v0[21];
  v14 = v0[19];

  v15 = *(v13 + 8);
  v0[27] = v15;
  v0[28] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16 = sub_100008868();
  v15(v16);
  v17 = *(v14 + 24);
  if ([v17 updateInProgress])
  {
    v18 = v0[23];
    static Logger.core.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    v21 = sub_1000089AC(v20);
    v22 = v0[23];
    v23 = v0[20];
    if (v21)
    {
      *sub_1000089E0() = 0;
      sub_10000898C();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      sub_1000088A8();
    }

    v29 = sub_100008868();
    v15(v29);
    v31 = v0[25];
    v30 = v0[26];
    v33 = v0[23];
    v32 = v0[24];
    v34 = v0[22];

    sub_100008880();

    return v35();
  }

  else
  {
    v0[2] = v0;
    v0[7] = v0 + 35;
    v0[3] = sub_100003488;
    v37 = swift_continuation_init();
    v0[17] = sub_100002D9C(&qword_100018820, &qword_10000F258);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000401C;
    v0[13] = &unk_100014760;
    v0[14] = v37;
    [v17 updateTransactionsWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100003488()
{
  sub_100008818();
  sub_100008834();
  sub_10000880C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_100008874();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100003588()
{
  sub_10000888C();
  sub_10000899C();
  v2 = *(v1 + 160);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 240) = v4;
  *v4 = v0;
  sub_100008840(v4);

  return v6();
}

uint64_t sub_100003674()
{
  sub_10000888C();
  sub_100008834();
  v2 = v1;
  sub_10000880C();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *(v4 + 152);
  v7 = *v0;
  sub_1000087C0();
  *v8 = v7;
  v2[31] = v9;

  v10 = *(*v6 + 152);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v2[32] = v12;
  *v12 = v7;
  v12[1] = sub_100003834;
  v13 = v2[19];

  return v15();
}

uint64_t sub_100003834()
{
  sub_100008818();
  sub_100008834();
  sub_10000880C();
  *v2 = v1;
  v4 = *(v3 + 256);
  *v2 = *v0;
  *(v1 + 264) = v5;

  v6 = sub_1000087D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100003920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100008A28();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[31];
  v26 = v22[25];
  static Logger.core.getter();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v22[31];
    v85 = v22[27];
    v88 = v22[28];
    v30 = v22[25];
    v31 = v22[20];
    v32 = sub_1000089F8();
    swift_slowAlloc();
    sub_100008A10();
    *v32 = 136315138;
    sub_100002D9C(&qword_100018828, &unk_10000F260);
    v33 = Dictionary.description.getter();
    v35 = sub_10000272C(v33, v34, &a11);

    *(v32 + 4) = v35;
    sub_10000898C();
    _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
    sub_1000088C4();
    sub_1000088A8();

    v41 = sub_100008868();
    v85(v41);
  }

  else
  {
    v43 = v22[27];
    v42 = v22[28];
    v44 = v22[25];
    v45 = v22[20];

    v46 = sub_100008868();
    v43(v46);
  }

  v47 = v22[31];
  v48 = v22[24];
  static Logger.core.getter();

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = v22[31];
    v86 = v22[27];
    v89 = v22[28];
    v52 = v22[24];
    v53 = v22[20];
    v54 = sub_1000089F8();
    swift_slowAlloc();
    sub_100008A10();
    *v54 = 136315138;
    sub_100002D9C(&qword_100018828, &unk_10000F260);
    v55 = Dictionary.description.getter();
    v57 = sub_10000272C(v55, v56, &a11);

    *(v54 + 4) = v57;
    sub_10000898C();
    _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
    sub_1000088C4();
    sub_1000088A8();

    v63 = sub_100008868();
    v86(v63);
  }

  else
  {
    v65 = v22[27];
    v64 = v22[28];
    v66 = v22[24];
    v67 = v22[20];

    v68 = sub_100008868();
    v65(v68);
  }

  sub_10000899C();
  v70 = *(v69 + 168);
  v87 = v69 + 168;
  v90 = v70 + *v70;
  v71 = v70[1];
  v72 = swift_task_alloc();
  v22[34] = v72;
  *v72 = v22;
  v72[1] = sub_100003C70;
  v73 = v22[33];
  v74 = v22[31];
  v75 = v22[19];
  sub_1000089C4();

  return v78(v76, v77, v78, v79, v80, v81, v82, v83, v87, v90, a11, a12, a13, a14);
}

uint64_t sub_100003C70()
{
  sub_100008940();
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 248);
  v5 = *v0;
  sub_1000087C0();
  *v6 = v5;

  v7 = v1[26];
  v8 = v1[25];
  v9 = v1[24];
  v10 = v1[23];
  v11 = v1[22];

  v12 = *(v5 + 8);

  return v12();
}

uint64_t sub_100003E2C()
{
  sub_100008A1C();
  v1 = *(v0 + 232);
  v2 = *(v0 + 176);
  swift_willThrow();
  static Logger.core.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 232);
  if (v5)
  {
    v7 = sub_1000089F8();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    sub_10000894C();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_1000071B0(v8, &qword_100018830, &unk_10000F470);
    sub_1000088A8();
    sub_100002EFC();
  }

  else
  {
    v15 = *(v0 + 232);
  }

  v16 = *(v0 + 224);
  (*(v0 + 216))(*(v0 + 176), *(v0 + 160));
  sub_10000899C();
  v18 = *(v17 + 160);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v0 + 240) = v20;
  *v20 = v0;
  sub_100008840(v20);

  return v22();
}

uint64_t sub_10000401C(uint64_t a1, char a2, void *a3)
{
  v5 = sub_10000870C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_1000040B8(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_100004124(v9, a2);
  }
}

uint64_t sub_1000040B8(uint64_t a1, uint64_t a2)
{
  sub_100002D9C(&qword_100018A48, &qword_10000F390);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_1000041CC(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_100004288;

  return sub_100003110();
}

uint64_t sub_100004288()
{
  sub_10000888C();
  sub_100008834();
  v2 = v1;
  sub_10000880C();
  *v3 = v2;
  v5 = v4[4];
  v6 = v4[3];
  v7 = v4[2];
  v8 = *v0;
  sub_1000087C0();
  *v9 = v8;

  if (v6)
  {
    v10 = *(v2 + 24);
    v10[2](v10);
    _Block_release(v10);
  }

  sub_100008880();

  return v11();
}

uint64_t sub_1000043BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D9C(&qword_100018A28, &qword_10000F4B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_100006F3C(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_10000F318;
  v10[5] = v9;
  sub_1000068F8(0, 0, v7, &unk_10000F328, v10);
}

uint64_t sub_1000044CC()
{
  sub_100008818();
  v1 = sub_100008A7C();
  v0[3] = v1;
  sub_100002E9C(v1);
  v0[4] = v2;
  v4 = *(v3 + 64);
  v0[5] = sub_100008A64();
  v5 = sub_1000087D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100004568()
{
  sub_100008940();
  v1 = v0[5];
  static Logger.core.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_100008924(v3))
  {
    *sub_1000089E0() = 0;
    sub_100008898();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100002EFC();
  }

  v10 = v0[4];
  v9 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  v13 = *(v10 + 8);
  v14 = sub_100008868();
  v15(v14);
  v16 = *(v12 + 32);
  sub_1000087E0(&async function pointer to dispatch thunk of EntityGroups.save());
  v28 = v17;
  v18 = swift_task_alloc();
  v0[6] = v18;
  *v18 = v0;
  v26 = sub_100008824(v18, v19, v20, v21, v22, v23, v24, v25, v28);

  return v26();
}

uint64_t sub_100004678()
{
  sub_100008818();
  sub_100008834();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_1000087C0();
  *v5 = v4;

  sub_100008880();

  return v6();
}

uint64_t sub_100004794(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10000483C;

  return sub_1000044CC();
}

uint64_t sub_10000483C()
{
  sub_10000888C();
  sub_100008834();
  v3 = v2;
  sub_10000880C();
  *v4 = v3;
  v6 = v5[4];
  v7 = v5[3];
  v8 = v5[2];
  v9 = *v1;
  sub_1000087C0();
  *v10 = v9;

  if (v0)
  {
    if (v7)
    {
      v11 = *(v3 + 24);
      v12 = _convertErrorToNSError(_:)();

      v13 = v11[2];
      v14 = sub_100008868();
      v15(v14);
      _Block_release(v11);
    }

    else
    {
    }
  }

  else if (v7)
  {
    v16 = *(v3 + 24);
    v16[2](v16, 0);
    _Block_release(v16);
  }

  sub_100008880();

  return v17();
}

uint64_t sub_1000049C0()
{
  sub_100008818();
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  sub_100002E9C(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = sub_100008A64();
  v5 = sub_1000087D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100004A60()
{
  sub_100008A1C();
  v1 = v0[4];
  type metadata accessor for PredictedTransactions();
  v2 = PredictedTransactions.__allocating_init()();
  v0[5] = v2;
  static Logger.core.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (sub_1000089AC(v4))
  {
    *sub_1000089E0() = 0;
    sub_10000894C();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002EFC();
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];

  (*(v11 + 8))(v10, v12);
  v13 = *((swift_isaMask & *v2) + 0x78);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[6] = v15;
  *v15 = v0;
  v15[1] = sub_100004C24;

  return v17();
}

uint64_t sub_100004C24()
{
  sub_100008818();
  sub_100008834();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_1000087C0();
  *v4 = v3;

  v5 = sub_1000087D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100004D08()
{
  sub_100008818();
  v1 = *(v0 + 32);

  sub_100008880();

  return v2();
}

uint64_t sub_100004D88(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1000087BC;

  return sub_1000049C0();
}

uint64_t sub_100004E30()
{
  sub_100008818();
  v1 = sub_100008A7C();
  v0[3] = v1;
  sub_100002E9C(v1);
  v0[4] = v2;
  v4 = *(v3 + 64);
  v0[5] = sub_100008A64();
  v5 = sub_1000087D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100004ECC()
{
  sub_100008940();
  v1 = v0[5];
  static Logger.core.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_100008924(v3))
  {
    *sub_1000089E0() = 0;
    sub_100008898();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100002EFC();
  }

  v10 = v0[4];
  v9 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  v13 = *(v10 + 8);
  v14 = sub_100008868();
  v15(v14);
  v16 = *(v12 + 40);
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.save());
  v28 = v17;
  v18 = swift_task_alloc();
  v0[6] = v18;
  *v18 = v0;
  v26 = sub_100008824(v18, v19, v20, v21, v22, v23, v24, v25, v28);

  return v26();
}

uint64_t sub_100004FFC(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  sub_10000896C();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  return sub_1000043BC(a5, v8);
}

uint64_t sub_100005068(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1000087B8;

  return sub_100004E30();
}

uint64_t sub_100005110()
{
  sub_100008818();
  v1 = sub_100008A7C();
  v0[3] = v1;
  sub_100002E9C(v1);
  v0[4] = v2;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v5 = sub_1000087D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000051C0()
{
  sub_100008818();
  v1 = *(v0[2] + 32);
  v0[7] = dispatch thunk of EntityGroups.computeAndPersistEntityGroups()();
  sub_1000087E0(&async function pointer to dispatch thunk of EntityGroups.save());
  v13 = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v11 = sub_100008824(v3, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t sub_10000525C()
{
  sub_100008818();
  sub_100008834();
  sub_10000880C();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  sub_1000087C0();
  *v7 = v6;
  *(v8 + 72) = v0;

  sub_100008874();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100005358()
{
  sub_100008818();
  v1 = *(*(v0 + 16) + 40);
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.save());
  v13 = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v11 = sub_100008824(v3, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t sub_1000053EC()
{
  sub_100008818();
  sub_100008834();
  v3 = v2;
  sub_10000880C();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_1000087C0();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    sub_100008874();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = *(v7 + 8);
    v15 = v3[7];

    return v14(v15);
  }
}

uint64_t sub_10000551C()
{
  sub_100008A1C();
  v1 = v0[6];
  static Logger.core.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = sub_1000089AC(v3);
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  if (v4)
  {
    *sub_1000089E0() = 0;
    sub_10000895C();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    sub_100002EFC();
  }

  v14 = *(v8 + 8);
  v15 = sub_100008868();
  v16(v15);
  v17 = *(v0[2] + 40);
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.save());
  v29 = v18;
  v19 = swift_task_alloc();
  v0[10] = v19;
  *v19 = v0;
  v27 = sub_100008824(v19, v20, v21, v22, v23, v24, v25, v26, v29);

  return v27();
}

uint64_t sub_100005648()
{
  sub_10000888C();
  v1 = v0[5];
  static Logger.core.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (sub_100008924(v3))
  {
    *sub_1000089E0() = 0;
    sub_100008898();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100002EFC();
  }

  v9 = v0[11];
  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];

  v13 = *(v11 + 8);
  v14 = sub_100008868();
  v15(v14);
  v17 = v0[5];
  v16 = v0[6];

  v18 = v0[1];
  v19 = v0[7];

  return v18(v19);
}

uint64_t sub_100005730()
{
  sub_100008818();
  v1 = sub_100008A7C();
  v0[3] = v1;
  sub_100002E9C(v1);
  v0[4] = v2;
  v4 = *(v3 + 64);
  v0[5] = sub_100008A64();
  v5 = sub_1000087D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000057CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100008A28();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[5];
  v26 = *(v22[2] + 32);
  dispatch thunk of EntityGroups.deleteOutdatedEntityGroupsAndInsights()();
  static Logger.core.getter();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v22[4];
  v31 = v22[5];
  v32 = v22[3];
  if (v29)
  {
    sub_1000089F8();
    sub_100008A44();
    sub_100008A10();
    *v31 = 136315138;
    sub_100002D9C(&qword_100018828, &unk_10000F260);
    v33 = Dictionary.description.getter();
    v35 = sub_10000272C(v33, v34, &a11);

    *(v31 + 4) = v35;
    sub_10000895C();
    _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
    sub_1000088C4();
    sub_100002EFC();

    (*(v30 + 8))(a10, v32);
  }

  else
  {

    (*(v30 + 8))(v31, v32);
  }

  v41 = v22[5];

  v42 = v22[1];
  sub_1000089C4();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100005948()
{
  sub_100008818();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for Logger();
  v1[5] = v4;
  sub_100002E9C(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v8 = sub_1000087D0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100005A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100008A28();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[2];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = sub_100005F0C(v26, v27, v25);

  v29 = v22[8];
  if (v28)
  {
    v30 = v22[3];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = sub_100005F0C(v31, v32, v30);

    if (v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = &_swiftEmptySetSingleton;
    }

    v35 = sub_100005F5C(v34, v28);

    static Logger.core.getter();

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v22[8];
    v41 = v22[5];
    v40 = v22[6];
    if (v38)
    {
      sub_1000089F8();
      sub_100008A44();
      sub_100008A10();
      *v39 = 136315138;
      v42 = Set.description.getter();
      v44 = sub_10000272C(v42, v43, &a11);

      *(v39 + 4) = v44;
      sub_10000895C();
      _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
      sub_1000088C4();
      sub_100002EFC();

      v50 = *(v40 + 8);
      v50(a10, v41);
    }

    else
    {

      v50 = *(v40 + 8);
      v50(v39, v41);
    }

    v22[9] = v50;
    v61 = *(v22[4] + 40);
    v22[10] = sub_100005FB0(v35);
    sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.delete(_:));
    a10 = v62;
    v63 = swift_task_alloc();
    v22[11] = v63;
    *v63 = v22;
    v63[1] = sub_100005C6C;
    sub_1000089C4();
  }

  else
  {
    v51 = v22[7];
    v52 = v22[8];

    sub_100008880();
    sub_1000089C4();
  }

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100005C6C()
{
  sub_100008818();
  sub_100008834();
  v3 = v2;
  sub_10000880C();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_1000087C0();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    sub_100008874();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[10];

    v14 = v3[7];
    v13 = v3[8];

    sub_100008880();

    return v15();
  }
}

uint64_t sub_100005D9C()
{
  sub_100008940();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  static Logger.core.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = sub_1000089F8();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    sub_10000894C();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1000071B0(v9, &qword_100018830, &unk_10000F470);
    sub_1000088A8();
    sub_100002EFC();
  }

  else
  {
    v16 = *(v0 + 96);
  }

  v17 = *(v0 + 48) + 8;
  (*(v0 + 72))(*(v0 + 56), *(v0 + 40));
  v19 = *(v0 + 56);
  v18 = *(v0 + 64);

  sub_100008880();

  return v20();
}

uint64_t sub_100005F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000075B0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void *sub_100005F5C(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100007628(a1);
    return a2;
  }

  else
  {

    return sub_100007754(a1, a2);
  }
}

void *sub_100005FB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_100006DA0(*(a1 + 16), 0);
  v4 = sub_1000085A8(&v6, v3 + 4, v2, a1);
  sub_100008704();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_100006040()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_100006078()
{
  sub_100006040();
  v0 = sub_10000897C();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_1000060A4()
{
  type metadata accessor for FinHealthDaemon();
  v0 = swift_allocObject();
  sub_100003040();
  return v0;
}

id sub_1000060EC()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___FHDaemonProtocol];

  return v0;
}

id sub_100006150()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10finhealthd16FinHealthService_service;
  type metadata accessor for FinHealthDaemon();
  v3 = swift_allocObject();
  sub_100003040();
  *&v1[v2] = v3;
  v4 = OBJC_IVAR____TtC10finhealthd16FinHealthService_interface;
  *&v1[v4] = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___FHDaemonProtocol];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FinHealthService();
  v5 = objc_msgSendSuper2(&v9, "init");
  sub_100006E64();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = sub_100006260();
  [v7 setDelegate:v6];
  [v7 resume];

  return v6;
}

id sub_100006260()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

uint64_t sub_1000062F8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = [objc_allocWithZone(FinHealthEntitlementsChecker) initWithConnection:a2];
  if ([v13 fhPrivateAllAccess] & 1) != 0 || (objc_msgSend(v13, "fhAllAccess"))
  {
    static Logger.core.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (sub_1000089AC(v15))
    {
      v16 = sub_1000089E0();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Accepting new connection.", v16, 2u);
      sub_100002EFC();
    }

    (*(v6 + 8))(v10, v5);
    [a2 setExportedInterface:*(v3 + OBJC_IVAR____TtC10finhealthd16FinHealthService_interface)];
    [a2 setExportedObject:*(v3 + OBJC_IVAR____TtC10finhealthd16FinHealthService_service)];
    [a2 resume];

    return 1;
  }

  else
  {
    static Logger.core.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = sub_1000089E0();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Connection without entitlement attempted to connect. Denying", v20, 2u);
      sub_1000088A8();
    }

    (*(v6 + 8))(v12, v5);
    return 0;
  }
}

id sub_1000065C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinHealthService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006648(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000087B4;

  return v7();
}

uint64_t sub_100006730(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100006818;

  return v8();
}

uint64_t sub_100006818()
{
  sub_100008818();
  sub_100008834();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000087C0();
  *v4 = v3;

  sub_100008880();

  return v5();
}

uint64_t sub_1000068F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D9C(&qword_100018A28, &qword_10000F4B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100007118(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  if (sub_100007188(v12, 1, v13) == 1)
  {
    sub_1000071B0(v12, &qword_100018A28, &qword_10000F4B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000071B0(a3, &qword_100018A28, &qword_10000F4B0);

      return v23;
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

  sub_1000071B0(a3, &qword_100018A28, &qword_10000F4B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100006BC4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006CBC;

  return v7(a1);
}

uint64_t sub_100006CBC()
{
  sub_100008818();
  sub_100008834();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000087C0();
  *v4 = v3;

  sub_100008880();

  return v5();
}

void *sub_100006DA0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002D9C(&qword_100018A30, &qword_10000F378);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

unint64_t sub_100006E64()
{
  result = qword_1000188A8;
  if (!qword_1000188A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000188A8);
  }

  return result;
}

uint64_t sub_100006EAC()
{
  sub_10000888C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1000088F8(v3);
  *v4 = v5;
  v6 = sub_1000087F0(v4);

  return v7(v6);
}

uint64_t sub_100006F68()
{
  sub_100008940();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1000088F8(v5);
  *v6 = v7;
  v6[1] = sub_1000087B4;
  v8 = sub_100008868();

  return v9(v8);
}

uint64_t sub_10000701C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = sub_10000897C();

  return _swift_deallocObject(v3);
}

uint64_t sub_100007054()
{
  sub_100008940();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = sub_1000088F8(v7);
  *v8 = v9;
  v8[1] = sub_1000087B4;

  return sub_100006730(v2, v3, v4, v6);
}

uint64_t sub_100007118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D9C(&qword_100018A28, &qword_10000F4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000071B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D9C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007210()
{
  v1 = *(v0 + 24);

  v2 = sub_10000896C();

  return _swift_deallocObject(v2);
}

uint64_t sub_100007240()
{
  sub_10000888C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1000088F8(v3);
  *v4 = v5;
  v6 = sub_100008904(v4);

  return v7(v6);
}

uint64_t sub_1000072D8()
{
  sub_10000888C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1000088F8(v3);
  *v4 = v5;
  v6 = sub_100008904(v4);

  return v7(v6);
}

uint64_t sub_100007370()
{
  sub_10000888C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1000088F8(v3);
  *v4 = v5;
  v6 = sub_1000087F0(v4);

  return v7(v6);
}

uint64_t sub_100007400()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  v2 = sub_10000896C();

  return _swift_deallocObject(v2);
}

uint64_t sub_100007438()
{
  sub_10000888C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1000088F8(v3);
  *v4 = v5;
  v6 = sub_1000087F0(v4);

  return v7(v6);
}

uint64_t sub_1000074C8()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0);
}

uint64_t sub_100007508()
{
  sub_10000888C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1000088F8(v4);
  *v5 = v6;
  v5[1] = sub_1000087B4;
  v7 = sub_100008868();

  return v8(v7);
}

unint64_t sub_1000075B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000084F4(a1, a2, v6);
}

uint64_t sub_100007628(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100007C2C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_100007754(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v49 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v51 = v12;
    v52 = v7;
    v53 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = v5[5];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v21 = Hasher._finalize()();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v23 = (v5[6] + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v55 = v49;
            v56 = v16;
            v57 = v11;
            v3 = v52;
            v12 = v53;
            v54[0] = v53;
            v54[1] = v52;

            v26 = *(v5 + 32);
            v46 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v46;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v47 = &v45;
              __chkstk_darwin(v25);
              v7 = &v45 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = v5[2];
              v50 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v51;
              while (1)
              {
                v48 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = v5[5];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v36 = Hasher._finalize()();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v52;
                    v12 = v53;
                    v30 = v51;
                    goto LABEL_24;
                  }

                  v38 = (v5[6] + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v50[v7];
                v50[v7] = v41 & ~v8;
                v3 = v52;
                v12 = v53;
                v30 = v51;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v48 - 1;
                if (__OFSUB__(v48, 1))
                {
                  __break(1u);
                }

                if (v48 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_100007FC8(v50, v46, v48, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v43 = swift_slowAlloc();
            v44 = sub_100007F40(v43, v46, v5 + 7, v46, v5, v7, v54);

            v49 = v55;
            v5 = v44;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v52;
        v14 = v53;
        v12 = v51;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_100008704();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

uint64_t sub_100007C2C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000081E4();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_10000833C(v9);
  *v2 = v19;
  return v16;
}

unint64_t *sub_100007D54(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_100007FC8(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_100007F40(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_100007D54(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_100007FC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100002D9C(&qword_100018A38, &unk_10000F380);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_1000081E4()
{
  v1 = v0;
  sub_100002D9C(&qword_100018A38, &unk_10000F380);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

unint64_t sub_10000833C(unint64_t result)
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

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000084F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000085A8(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10000870C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void type metadata accessor for FHInsightUpdateRequestType()
{
  if (!qword_100018A50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100018A50);
    }
  }
}

uint64_t sub_1000087E0@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_1000087F0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100008840(uint64_t result)
{
  *(result + 8) = sub_100003674;
  v2 = *(v1 + 152);
  return result;
}

uint64_t sub_100008880()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1000088A8()
{
}

uint64_t sub_1000088C4()
{
  sub_100002CF4(v0);
}

uint64_t sub_100008904(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

BOOL sub_100008924(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_1000089AC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000089E0()
{

  return swift_slowAlloc();
}

uint64_t sub_1000089F8()
{

  return swift_slowAlloc();
}

uint64_t sub_100008A44()
{

  return swift_slowAlloc();
}

uint64_t sub_100008A64()
{

  return swift_task_alloc();
}

uint64_t sub_100008A7C()
{
  *(v1 + 16) = v0;

  return type metadata accessor for Logger();
}

uint64_t variable initialization expression of FinHealthBackgroundTasks.overnightSync()
{
  v0 = type metadata accessor for FinHealthFeatureFlag.FinHealthFeatures();
  v1 = sub_10000C498(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000C4AC();
  v8 = v7 - v6;
  v9 = sub_10000C630(v3);
  v10(v9);
  v11 = static FinHealthFeatureFlag.isEnabled(_:)();
  (*(v3 + 8))(v8, v0);
  return v11 & 1;
}

id variable initialization expression of FinHealthBackgroundTasks.taskScheduler()
{
  v0 = [objc_opt_self() sharedScheduler];

  return v0;
}

id sub_100008BB4()
{
  sub_10000C658();
  v1 = *(v0 + 40);

  return v1;
}

void sub_100008BEC(uint64_t a1)
{
  sub_10000C63C();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

id sub_100008C6C()
{
  sub_10000C658();
  v1 = *(v0 + 48);

  return v1;
}

void sub_100008CA4(uint64_t a1)
{
  sub_10000C63C();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_100008D54(char a1)
{
  result = sub_10000C63C();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_100008DCC()
{
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = sub_10000C498(v18);
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v0);
  sub_10000C4AC();
  v7 = v6 - v5;
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10000C4AC();
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_10000C4AC();
  sub_100009034();
  static DispatchQoS.unspecified.getter();
  sub_100009078();
  sub_100002D9C(&qword_100018AD0, &qword_10000F3E0);
  sub_1000090D0();
  sub_10000C5D8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v13 = *(v2 + 104);
  v13(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  sub_10000C6C4();
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.unspecified.getter();
  sub_10000C5D8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v13(v7, v12, v18);
  sub_10000C6C4();
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return (*(v17 + 200))(v16, v14);
}

unint64_t sub_100009034()
{
  result = qword_100018AC0;
  if (!qword_100018AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100018AC0);
  }

  return result;
}

unint64_t sub_100009078()
{
  result = qword_100018AC8;
  if (!qword_100018AC8)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018AC8);
  }

  return result;
}

unint64_t sub_1000090D0()
{
  result = qword_100018AD8;
  if (!qword_100018AD8)
  {
    sub_100009134(&qword_100018AD0, &qword_10000F3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018AD8);
  }

  return result;
}

uint64_t sub_100009134(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t FinHealthBackgroundTasks.__allocating_init(processingQueue:overnightQueue:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FinHealthBackgroundTasks.init(processingQueue:overnightQueue:)(a1, a2);
  return v4;
}

uint64_t FinHealthBackgroundTasks.init(processingQueue:overnightQueue:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FinHealthFeatureFlag.FinHealthFeatures();
  v6 = sub_10000C498(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000C4AC();
  v13 = v12 - v11;
  (*(v8 + 104))(v12 - v11, enum case for FinHealthFeatureFlag.FinHealthFeatures.financekitIntegration(_:), v5);
  v14 = static FinHealthFeatureFlag.isEnabled(_:)();
  (*(v8 + 8))(v13, v5);
  *(v2 + 16) = v14 & 1;
  *(v2 + 24) = [objc_opt_self() sharedScheduler];
  *(v2 + 56) = 0;
  *(v2 + 32) = [objc_opt_self() sharedInstance];
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return v2;
}

Swift::Void __swiftcall FinHealthBackgroundTasks.registerAllActivities()()
{
  sub_10000A388();

  sub_100009340();
}

uint64_t sub_100009340()
{
  v3 = type metadata accessor for DASActivities();
  v4 = sub_10000C498(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000C4AC();
  v9 = v0[3];
  v10 = sub_10000C630(v6);
  v11(v10);
  DASActivities.callAsFunction()();
  v12 = sub_10000C600();
  v14 = v13(v12);
  v15 = (*(*v0 + 152))(v14);

  sub_10000C8E8(v1, v2, v15, &unk_10000F490, v0);
}

uint64_t sub_100009490()
{
  sub_100008818();
  v0[18] = v1;
  v2 = type metadata accessor for DASActivities();
  v0[19] = v2;
  sub_100002E9C(v2);
  v0[20] = v3;
  v5 = *(v4 + 64);
  v0[21] = sub_100008A64();
  v6 = type metadata accessor for Logger();
  v0[22] = v6;
  sub_100002E9C(v6);
  v0[23] = v7;
  v9 = *(v8 + 64);
  v0[24] = sub_10000C780();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v10 = sub_1000087D0();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100009598()
{
  v1 = v0[26];
  if (*(v0[18] + 16) != 1)
  {
    v26 = v0[24];
    v25 = v0[25];
    v27 = v0[21];
    v28 = v0[26];

    sub_100008880();
    sub_10000C6E4();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[26];
  static Logger.core.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[26];
  v7 = v0[22];
  v8 = v0[23];
  if (v5)
  {
    v38 = v4;
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[18];
    v12 = v0[19];
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 136315394;
    v14 = sub_10000C630(v10);
    v15(v14);
    DASActivities.callAsFunction()();
    sub_10000C6D8();
    (*(v10 + 8))(v9, v12);
    v16 = sub_10000C5A4();
    sub_10000272C(v16, v17, v18);
    sub_10000C750();
    sub_10000C618();
    v20 = (*(v19 + 152))();
    OS_dispatch_queue.label.getter();
    sub_10000C6D8();

    v21 = sub_10000C5A4();
    sub_10000272C(v21, v22, v23);
    sub_10000C750();
    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v3, v38, "Started running %s on queue %s", v13, 0x16u);
    sub_10000C700();
    sub_100002EFC();
    sub_100002EFC();

    v24 = *(v8 + 8);
    v24(v6, v7);
  }

  else
  {

    v24 = *(v8 + 8);
    v29 = sub_10000C5A4();
    v24(v29, v30);
  }

  v0[27] = v24;
  static Task<>.checkCancellation()();
  v0[28] = 0;
  v33 = *(v0[18] + 32);
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_1000098F0;
  v34 = swift_continuation_init();
  v0[17] = sub_100002D9C(&qword_100018820, &qword_10000F258);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000401C;
  v0[13] = &unk_100014910;
  v0[14] = v34;
  [v33 updateTransactionsWithCompletion:v0 + 10];
  sub_10000C6E4();

  return _swift_continuation_await(v35);
}

uint64_t sub_1000098F0()
{
  sub_100008818();
  sub_100008834();
  sub_10000C4BC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_100008874();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000099EC()
{
  sub_100008940();
  v1 = v0[28];
  static Task<>.checkCancellation()();
  v0[30] = v1;
  if (v1)
  {
    sub_10000C588();

    sub_10000C4EC();
    sub_10000C798();

    __asm { BRAA            X1, X16 }
  }

  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  sub_10000C528(v4);
  sub_10000C798();

  return sub_10000B5B4();
}

uint64_t sub_100009AC0()
{
  sub_100008818();
  sub_100008834();
  sub_10000C4BC();
  *v2 = v1;
  v4 = *(v3 + 248);
  *v2 = *v0;
  *(v1 + 256) = v5;

  v6 = sub_1000087D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100009BA8()
{
  sub_100008940();
  v1 = v0[30];
  static Task<>.checkCancellation()();
  v0[33] = v1;
  if (v1)
  {
    v2 = v0[32];

    sub_10000C588();

    sub_10000C4EC();
    sub_10000C798();

    __asm { BRAA            X1, X16 }
  }

  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  sub_10000C5CC(v5);
  sub_10000C798();

  return sub_10000AB40();
}

uint64_t sub_100009C9C()
{
  sub_100008818();
  sub_100008834();
  sub_10000C4BC();
  *v2 = v1;
  v4 = *(v3 + 272);
  *v2 = *v0;
  *(v1 + 280) = v5;

  v6 = sub_1000087D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100009D84()
{
  sub_100008940();
  v1 = v0[33];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[35];
    v3 = v0[32];

    sub_10000C588();

    sub_10000C4EC();
    sub_10000C798();

    __asm { BRAA            X1, X16 }
  }

  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_100009E90;
  v7 = v0[35];
  v8 = v0[32];
  sub_10000C798();

  return sub_10000BA5C();
}

uint64_t sub_100009E90()
{
  sub_100008818();
  sub_100008834();
  v2 = v1[36];
  v3 = v1[35];
  v4 = v1[32];
  v5 = *v0;
  sub_1000087C0();
  *v6 = v5;

  v7 = sub_1000087D0();

  return _swift_task_switch(v7, v8, v9);
}

void sub_100009FAC()
{
  v1 = v0[25];
  v2 = v0[18];
  static Logger.core.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  v7 = v0[25];
  v8 = v0[22];
  if (v5)
  {
    v32 = v0[27];
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[18];
    v12 = v0[19];
    v31 = v0[23];
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 136315394;
    v14 = sub_10000C630(v10);
    v15(v14);
    DASActivities.callAsFunction()();
    sub_10000C6D8();
    (*(v10 + 8))(v9, v12);
    v16 = sub_10000C5A4();
    sub_10000272C(v16, v17, v18);
    sub_10000C750();
    sub_10000C618();
    v20 = (*(v19 + 152))();
    OS_dispatch_queue.label.getter();
    sub_10000C6D8();

    v21 = sub_10000C5A4();
    sub_10000272C(v21, v22, v23);
    sub_10000C750();
    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v3, v4, "Ended running %s on queue %s", v13, 0x16u);
    sub_10000C700();
    sub_100002EFC();
    sub_100002EFC();

    v32(v7, v8);
  }

  else
  {

    v24 = sub_10000C5A4();
    v6(v24);
  }

  v26 = v0[25];
  v25 = v0[26];
  v27 = v0[24];
  v28 = v0[21];

  sub_100008880();
  sub_10000C6E4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10000A1E8()
{
  sub_100008940();
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  swift_willThrow();
  static Logger.core.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10000C768();
  v4 = sub_10000C738();
  v5 = *(v0 + 232);
  if (v4)
  {
    sub_1000089F8();
    v6 = sub_10000C5B0();
    sub_10000C720(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    sub_10000C6AC(v7);
    sub_10000894C();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_10000C38C(v6);
    sub_1000088A8();
    sub_10000C550();
  }

  else
  {
    v13 = *(v0 + 232);
  }

  v14 = *(v0 + 184) + 8;
  (*(v0 + 216))(*(v0 + 192), *(v0 + 176));
  static Task<>.checkCancellation()();
  *(v0 + 240) = 0;
  v15 = swift_task_alloc();
  *(v0 + 248) = v15;
  *v15 = v0;
  sub_10000C528(v15);

  return sub_10000B5B4();
}

void sub_10000A388()
{
  v3 = type metadata accessor for DASActivities();
  v4 = sub_10000C498(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000C4AC();
  v9 = v0[3];
  v10 = sub_10000C630(v6);
  v11(v10);
  DASActivities.callAsFunction()();
  v12 = sub_10000C600();
  v14 = v13(v12);
  v15 = (*(*v0 + 128))(v14);
  sub_10000C8E8(v1, v2, v15, &unk_10000F498, 0);
}

uint64_t sub_10000A4C8()
{
  sub_100008818();
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  sub_100002E9C(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = sub_10000C780();
  v0[5] = swift_task_alloc();
  v5 = type metadata accessor for FinanceActivities();
  v0[6] = v5;
  sub_100002E9C(v5);
  v0[7] = v6;
  v8 = *(v7 + 64);
  v0[8] = sub_100008A64();
  updated = type metadata accessor for FinanceStore.UpdateFrequency();
  v0[9] = updated;
  sub_100002E9C(updated);
  v0[10] = v10;
  v12 = *(v11 + 64);
  v0[11] = sub_100008A64();
  v13 = sub_1000087D0();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10000A60C()
{
  v42 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v37 = v0[11];
  v39 = v0[9];
  v3 = v0[7];
  v40 = v0[6];
  v4 = type metadata accessor for FinanceStore();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  FinanceStore.init()();
  sub_100002D9C(&qword_100018C28, &unk_10000F4A0);
  v7 = type metadata accessor for FinanceStore.BackgroundDataType();
  sub_10000C498(v7);
  v9 = v8;
  v11 = *(v10 + 72);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10000F3D0;
  (*(v9 + 104))(v13 + v12, enum case for FinanceStore.BackgroundDataType.transactions(_:), v7);
  (*(v1 + 104))(v37, enum case for FinanceStore.UpdateFrequency.immediate(_:), v39);
  v34 = enum case for FinanceActivities.extensionBundleId(_:);
  v35 = *(v3 + 104);
  v35(v2);
  FinanceActivities.callAsFunction()();
  v36 = *(v3 + 8);
  v36(v2, v40);
  FinanceStore.enableBackgroundDelivery(for:frequency:bundleIdentifier:)();
  v14 = v0[5];
  (*(v0[10] + 8))(v0[11], v0[9]);

  static Logger.core.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[8];
    v18 = v0[6];
    v38 = v0[5];
    v19 = v0[3];
    v33 = v0[2];
    v20 = sub_1000089F8();
    v21 = swift_slowAlloc();
    v41 = v21;
    *v20 = 136315138;
    (v35)(v17, v34, v18);
    v22 = FinanceActivities.callAsFunction()();
    v36(v17, v18);
    v23 = sub_10000272C(v22._countAndFlagsBits, v22._object, &v41);

    *(v20 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Successfully registered FH->FK extension with bundleIdentifier: %s", v20, 0xCu);
    sub_100002CF4(v21);
    sub_1000088A8();
    sub_100002EFC();

    (*(v19 + 8))(v38, v33);
  }

  else
  {
    v24 = v0[5];
    v26 = v0[2];
    v25 = v0[3];

    (*(v25 + 8))(v24, v26);
  }

  v27 = v0[11];
  v28 = v0[8];
  v30 = v0[4];
  v29 = v0[5];

  sub_100008880();

  return v31();
}

uint64_t sub_10000AB40()
{
  sub_100008818();
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  sub_100002E9C(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = sub_10000C780();
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v5 = sub_1000087D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10000AC34()
{
  v1 = v0[11];
  static Logger.core.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_100008924(v3))
  {
    v4 = sub_1000089E0();
    sub_10000C5F4(v4);
    sub_10000C4CC(&_mh_execute_header, v5, v6, "Started running computeAndPersistEntityGroups in overnightSync");
    sub_10000C56C();
  }

  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[2];
  v10 = v0[3];

  v11 = *(v10 + 8);
  v0[12] = v11;
  v11(v7, v9);
  v0[13] = [objc_allocWithZone(type metadata accessor for EntityGroups()) init];
  v0[14] = [objc_allocWithZone(type metadata accessor for IncomeInsights()) init];
  v0[15] = dispatch thunk of EntityGroups.computeAndPersistEntityGroups()();
  static Logger.core.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (sub_10000C690(v13))
  {
    *sub_1000089E0() = 0;
    sub_10000894C();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    sub_10000C550();
  }

  v20 = v0[9];
  v19 = v0[10];
  v21 = v0[2];
  v22 = v0[3];

  v11(v19, v21);
  static Logger.core.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (sub_10000C690(v24))
  {
    *sub_1000089E0() = 0;
    sub_10000894C();
    _os_log_impl(v25, v26, v27, v28, v29, 2u);
    sub_10000C550();
  }

  v30 = v0[9];
  v31 = v0[2];
  v32 = v0[3];

  v33 = sub_10000C5A4();
  (v11)(v33);
  sub_1000087E0(&async function pointer to dispatch thunk of EntityGroups.save());
  v37 = v34;
  v35 = swift_task_alloc();
  v0[16] = v35;
  *v35 = v0;
  sub_10000C5CC(v35);

  return v37();
}

uint64_t sub_10000AE6C()
{
  sub_100008818();
  sub_100008834();
  sub_10000C4BC();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_1000087C0();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_100008874();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10000AF64()
{
  sub_100008940();
  v1 = *(v0 + 64);
  static Logger.core.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_100008924(v3))
  {
    v4 = sub_1000089E0();
    sub_10000C5F4(v4);
    sub_10000C4CC(&_mh_execute_header, v5, v6, "Finished running entityGroupsWriter in overnightSync");
    sub_10000C56C();
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 24) + 8;
  (*(v0 + 96))(*(v0 + 64), *(v0 + 16));
  static Logger.core.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (sub_100008924(v10))
  {
    v11 = sub_1000089E0();
    sub_10000C5F4(v11);
    sub_10000C4CC(&_mh_execute_header, v12, v13, "Started running incomeInsightsWriter in overnightSync");
    sub_10000C56C();
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 56);
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);

  v14(v15, v16);
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.save());
  v29 = v18;
  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  *v19 = v0;
  v27 = sub_10000C4FC(v19, v20, v21, v22, v23, v24, v25, v26, v29);

  return v27();
}

uint64_t sub_10000B0AC()
{
  sub_100008818();
  sub_100008834();
  sub_10000C4BC();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  sub_1000087C0();
  *v7 = v6;
  *(v8 + 152) = v0;

  sub_100008874();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10000B1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100008A28();
  v15 = *(v14 + 48);
  static Logger.core.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v18 = sub_100008924(v17);
  v19 = *(v14 + 104);
  if (v18)
  {
    v20 = sub_1000089E0();
    sub_10000C5F4(v20);
    sub_10000C4CC(&_mh_execute_header, v21, v22, "Finished running incomeInsightsWriter in overnightSync");
    sub_10000C56C();
  }

  v23 = *(v14 + 88);
  v24 = *(v14 + 96);
  v26 = *(v14 + 72);
  v25 = *(v14 + 80);
  v28 = *(v14 + 56);
  v27 = *(v14 + 64);
  v29 = *(v14 + 48);
  v30 = *(v14 + 24);
  v42 = *(v14 + 40);
  v43 = *(v14 + 32);
  v31 = *(v14 + 16);

  v24(v29, v31);

  sub_10000C6B8();
  v32 = *(v14 + 120);
  sub_1000089C4();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v43, a12, a13, a14);
}

uint64_t sub_10000B2CC()
{
  sub_100008940();
  v1 = *(v0 + 136);
  v2 = *(v0 + 40);
  static Logger.core.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10000C768();
  v4 = sub_10000C738();
  v5 = *(v0 + 136);
  if (v4)
  {
    sub_1000089F8();
    v6 = sub_10000C5B0();
    sub_10000C720(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    sub_10000C6AC(v7);
    sub_10000894C();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_10000C38C(v6);
    sub_1000088A8();
    sub_10000C550();
  }

  else
  {
    v13 = *(v0 + 136);
  }

  v14 = *(v0 + 56);
  v15 = *(v0 + 24) + 8;
  (*(v0 + 96))(*(v0 + 40), *(v0 + 16));
  static Logger.core.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (sub_100008924(v17))
  {
    v18 = sub_1000089E0();
    sub_10000C5F4(v18);
    sub_10000C4CC(&_mh_execute_header, v19, v20, "Started running incomeInsightsWriter in overnightSync");
    sub_10000C56C();
  }

  v21 = *(v0 + 96);
  v22 = *(v0 + 56);
  v23 = *(v0 + 16);
  v24 = *(v0 + 24);

  v21(v22, v23);
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.save());
  v36 = v25;
  v26 = swift_task_alloc();
  *(v0 + 144) = v26;
  *v26 = v0;
  v34 = sub_10000C4FC(v26, v27, v28, v29, v30, v31, v32, v33, v36);

  return v34();
}

uint64_t sub_10000B474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100008A28();
  v15 = v14[4];
  static Logger.core.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  v18 = sub_10000C690(v17);
  v19 = v14[19];
  v20 = v14[13];
  v21 = v14[14];
  if (v18)
  {
    *sub_1000089E0() = 0;
    sub_10000894C();
    _os_log_impl(v22, v23, v24, v25, v26, 2u);
    sub_10000C550();
  }

  v27 = v14[11];
  v28 = v14[12];
  v30 = v14[9];
  v29 = v14[10];
  v32 = v14[7];
  v31 = v14[8];
  v47 = v14[6];
  v48 = v14[5];
  v33 = v16;
  v34 = v14[3];
  v35 = v14[4];
  v36 = v14[2];

  v28(v35, v36);

  sub_10000C6B8();
  v37 = v14[15];
  sub_1000089C4();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47, v48, a12, a13, a14);
}

uint64_t sub_10000B5B4()
{
  sub_100008818();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_100002E9C(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = sub_10000C780();
  v1[6] = swift_task_alloc();
  v6 = sub_1000087D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10000B664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100008A28();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = [objc_allocWithZone(type metadata accessor for EntityGroups()) init];
  v22[7] = v25;
  if (dispatch thunk of EntityGroups.updateGroupSchema()())
  {
    v26 = v22[6];
    static Logger.core.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (sub_100008924(v28))
    {
      v29 = sub_1000089E0();
      sub_10000C5F4(v29);
      sub_10000C4CC(&_mh_execute_header, v30, v31, "Schema updated -- Clearing all insights");
      sub_10000C56C();
    }

    v32 = v22[6];
    v33 = v22[3];
    v34 = v22[4];

    (*(v34 + 8))(v32, v33);
    v35 = swift_task_alloc();
    v22[8] = v35;
    *v35 = v22;
    sub_10000C5CC(v35);
    sub_1000089C4();

    return sub_10000BF28();
  }

  else
  {
    v38 = v22[5];
    dispatch thunk of EntityGroups.deleteOutdatedEntityGroupsAndInsights()();
    static Logger.core.getter();

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    v41 = os_log_type_enabled(v39, v40);
    v43 = v22[4];
    v42 = v22[5];
    v44 = v22[3];
    if (v41)
    {
      a10 = v22[3];
      v45 = sub_1000089F8();
      v46 = swift_slowAlloc();
      a11 = v46;
      *v45 = 136315138;
      sub_100002D9C(&qword_100018828, &unk_10000F260);
      v47 = Dictionary.description.getter();
      a9 = v42;
      v49 = sub_10000272C(v47, v48, &a11);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v39, v40, "Clearing insights for group ids: %s", v45, 0xCu);
      sub_100002CF4(v46);
      sub_100002EFC();
      sub_100002EFC();

      (*(v43 + 8))(a9, a10);
    }

    else
    {

      (*(v43 + 8))(v42, v44);
    }

    v51 = v22[5];
    v50 = v22[6];

    sub_10000C6B8();
    sub_1000089C4();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_10000B908()
{
  sub_100008818();
  sub_100008834();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_1000087C0();
  *v4 = v3;

  v5 = sub_1000087D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10000B9EC()
{
  sub_100008818();

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  sub_10000C6B8();

  return v3(&_swiftEmptyDictionarySingleton);
}

uint64_t sub_10000BA5C()
{
  sub_100008818();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for Logger();
  v0[4] = v3;
  sub_100002E9C(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = sub_100008A64();
  v7 = sub_1000087D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10000BB00()
{
  sub_100008940();
  v1 = v0[2];
  v2 = [objc_allocWithZone(type metadata accessor for IncomeInsights()) init];
  v0[7] = v2;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = sub_100005F0C(v3, v4, v1);

  if (!v5)
  {

    v16 = v0[6];

    sub_100008880();
    sub_10000C798();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[3];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = sub_100005F0C(v7, v8, v6);

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v11 = sub_100005F5C(v10, v5);

  v12 = sub_100005FB0(v11);
  v0[8] = v12;
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.delete(_:));
  v19 = v13;
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  sub_10000C5CC(v14);

  return v19(v12);
}

uint64_t sub_10000BC8C()
{
  sub_100008818();
  sub_100008834();
  v3 = v2;
  v4 = *(v2 + 72);
  v5 = *v1;
  sub_1000087C0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v7 = *(v3 + 64);
  }

  sub_100008874();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10000BD94()
{
  sub_100008818();

  v1 = *(v0 + 48);

  sub_100008880();

  return v2();
}

uint64_t sub_10000BDF4()
{
  sub_100008940();
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];

  static Logger.core.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10000C768();
  v5 = sub_10000C738();
  v6 = v0[10];
  v7 = v0[7];
  if (v5)
  {
    sub_1000089F8();
    v8 = sub_10000C5B0();
    sub_10000C720(5.7779e-34);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    sub_10000C6AC(v9);
    sub_10000894C();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_10000C38C(v8);
    sub_1000088A8();
    sub_10000C550();
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  v15 = v0[6];

  sub_100008880();

  return v16();
}

uint64_t sub_10000BF28()
{
  sub_100008818();
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  sub_100002E9C(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = sub_100008A64();
  v5 = sub_1000087D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10000BFC8()
{
  sub_100008818();
  *(v0 + 40) = [objc_allocWithZone(type metadata accessor for IncomeInsights()) init];
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.deleteAll());
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  sub_10000C5CC(v2);

  return v4();
}

uint64_t sub_10000C078()
{
  sub_100008818();
  sub_100008834();
  sub_10000C4BC();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_1000087C0();
  *v7 = v6;
  *(v8 + 56) = v0;

  sub_100008874();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10000C170()
{
  sub_100008818();

  v1 = *(v0 + 32);

  sub_100008880();

  return v2();
}

uint64_t sub_10000C1D0()
{
  sub_100008940();
  v1 = v0[7];
  v2 = v0[4];
  static Logger.core.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10000C768();
  v4 = sub_10000C738();
  v5 = v0[7];
  v6 = v0[5];
  if (v4)
  {
    sub_1000089F8();
    v7 = sub_10000C5B0();
    sub_10000C720(5.7779e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_10000C6AC(v8);
    sub_10000894C();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_10000C38C(v7);
    sub_1000088A8();
    sub_10000C550();
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);
  v14 = v0[4];

  sub_100008880();

  return v15();
}

uint64_t FinHealthBackgroundTasks.__deallocating_deinit()
{
  FinHealthBackgroundTasks.deinit();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_10000C38C(uint64_t a1)
{
  v2 = sub_100002D9C(&qword_100018830, &unk_10000F470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C3F4()
{
  sub_100008818();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_10000C5CC(v1);

  return sub_100009490();
}

void sub_10000C4CC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10000C4EC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10000C4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 8) = sub_10000B0AC;
  v10 = *(v9 + 112);
  return a9;
}

uint64_t sub_10000C528(uint64_t result)
{
  *(result + 8) = sub_100009AC0;
  v2 = *(v1 + 144);
  return result;
}

uint64_t sub_10000C550()
{
}

uint64_t sub_10000C56C()
{
}

uint64_t sub_10000C588()
{
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[21];
}

uint64_t sub_10000C5B0()
{

  return swift_slowAlloc();
}

void sub_10000C618()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
  v3 = *v2;
}

uint64_t sub_10000C63C()
{

  return swift_beginAccess();
}

uint64_t sub_10000C658()
{

  return swift_beginAccess();
}

uint64_t sub_10000C674()
{

  return swift_beginAccess();
}

BOOL sub_10000C690(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000C6AC(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_10000C700()
{

  return swift_arrayDestroy();
}

uint64_t sub_10000C720(float a1)
{
  *v1 = a1;

  return swift_errorRetain();
}

BOOL sub_10000C738()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10000C750()
{
}

uint64_t sub_10000C768()
{
}

uint64_t sub_10000C780()
{

  return swift_task_alloc();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FinHealthService();
  qword_100018C40 = PredictedTransactions.__allocating_init()();
  static Logger.core.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Starting FinHealthService", v10, 2u);
  }

  (*(v4 + 8))(v7, v3);
  dispatch_main();
}

uint64_t sub_10000C910(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v9 = sub_100002D9C(&qword_100018A28, &qword_10000F4B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Logger();
  v14 = sub_10000C498(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10000E684();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = sub_1000089F8();
    v34 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10000272C(a2, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v19, v20, "System task with identifier: %s started running.", v22, 0xCu);
    sub_100002CF4(v23);
    sub_100002EFC();
    a1 = v34;
    sub_100002EFC();
  }

  (*(v16 + 8))(v5, v13);
  v24 = type metadata accessor for TaskPriority();
  sub_100006F3C(v12, 1, 1, v24);
  sub_10000E6DC();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v27 = v36;
  v26[4] = v35;
  v26[5] = v27;
  v26[6] = a2;
  v26[7] = a3;
  v26[8] = v25;

  v28 = sub_10000D204(0, 0, v12, &unk_10000F4F8, v26);
  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = v28;
  sub_10000E660(v29);
  sub_10000E6AC(COERCE_DOUBLE(1107296256));
  aBlock[2] = v30;
  aBlock[3] = &unk_100014B68;
  v31 = _Block_copy(aBlock);

  [a1 setExpirationHandler:v31];
  _Block_release(v31);
}

uint64_t sub_10000CC20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[5] = a6;
  v10 = type metadata accessor for Logger();
  v8[8] = v10;
  v11 = *(v10 - 8);
  v8[9] = v11;
  v12 = *(v11 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  v8[12] = v14;
  *v14 = v8;
  v14[1] = sub_10000CD84;

  return v16();
}

uint64_t sub_10000CD84()
{
  sub_100008818();
  sub_100008834();
  v3 = *(v2 + 96);
  v4 = *v1;
  sub_1000087C0();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    v7 = sub_10000CFE4;
  }

  else
  {
    v7 = sub_10000CE88;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000CE88()
{
  v2 = v0[11];
  v3 = v0[6];
  static Logger.core.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  if (v6)
  {
    v11 = v0[5];
    v10 = v0[6];
    sub_1000089F8();
    v12 = sub_10000E70C();
    *(v1 + 4) = sub_10000E748(4.8149e-34, v12, v13, v14, v15, v16, v17, v18, v19, v12);
    sub_10000E728(&_mh_execute_header, v20, v21, "System task with identifier: %s completed successfully.");
    sub_100002CF4(v12);
    sub_100002EFC();
    sub_100002EFC();
  }

  (*(v9 + 8))(v7, v8);
  sub_10000E6E8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    [Strong setTaskCompleted];
  }

  v25 = v0[10];
  v24 = v0[11];

  sub_100008880();

  return v26();
}

uint64_t sub_10000CFE4()
{
  v27 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[6];
  static Logger.core.getter();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  if (v6)
  {
    v25 = v0[10];
    v11 = v0[5];
    v12 = v0[6];
    v24 = v0[8];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_10000272C(v11, v12, &v26);
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "System task with identifier: %s failed with error: %@", v13, 0x16u);
    sub_1000071B0(v14, &qword_100018830, &unk_10000F470);
    sub_100002EFC();
    sub_100002CF4(v15);
    sub_100002EFC();
    sub_100002EFC();

    (*(v9 + 8))(v25, v24);
  }

  else
  {
    v17 = v0[13];

    (*(v9 + 8))(v8, v10);
  }

  sub_10000E6E8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    [Strong setTaskCompleted];
  }

  v21 = v0[10];
  v20 = v0[11];

  sub_100008880();

  return v22();
}

uint64_t sub_10000D204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D9C(&qword_100018A28, &qword_10000F4B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_100007118(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100007188(v12, 1, v13);

  if (v14 == 1)
  {
    sub_1000071B0(v12, &qword_100018A28, &qword_10000F4B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1000071B0(a3, &qword_100018A28, &qword_10000F4B0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000071B0(a3, &qword_100018A28, &qword_10000F4B0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000D4D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_10000D51C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10000D584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10000D5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8;
  v17 = String._bridgeToObjectiveC()();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a4;
  v18[5] = a5;
  v22[4] = a7;
  v22[5] = v18;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10000D51C;
  v22[3] = a8;
  v19 = _Block_copy(v22);

  v20 = [v11 registerForTaskWithIdentifier:v17 usingQueue:a3 launchHandler:v19];
  _Block_release(v19);

  return v20;
}

uint64_t sub_10000D6E4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v9 = sub_100002D9C(&qword_100018A28, &qword_10000F4B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Logger();
  v14 = sub_10000C498(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10000E684();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = sub_1000089F8();
    v36 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10000272C(a2, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v19, v20, "System task with identifier: %s started running.", v22, 0xCu);
    sub_100002CF4(v23);
    sub_100002EFC();
    a1 = v36;
    sub_100002EFC();
  }

  (*(v16 + 8))(v5, v13);
  sub_100002D9C(&qword_100018C30, &qword_10000F4B8);
  sub_10000E6DC();
  v24 = swift_allocObject();
  *(v24 + 20) = 0;
  *(v24 + 16) = 0;
  sub_10000E6DC();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  v27 = type metadata accessor for TaskPriority();
  sub_100006F3C(v12, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v29 = v38;
  v28[4] = v37;
  v28[5] = v29;
  v28[6] = sub_10000DB20;
  v28[7] = v26;
  v28[8] = a2;
  v28[9] = a3;
  v28[10] = v24;
  swift_retain_n();

  v30 = sub_10000D204(0, 0, v12, &unk_10000F4C8, v28);
  v31 = swift_allocObject();
  v31[2] = a2;
  v31[3] = a3;
  v31[4] = v30;
  sub_10000E660(v31);
  sub_10000E6AC(COERCE_DOUBLE(1107296256));
  aBlock[2] = v32;
  aBlock[3] = &unk_100014AA0;
  v33 = _Block_copy(aBlock);

  [a1 setExpirationHandler:v33];
  _Block_release(v33);
}

uint64_t sub_10000DA60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0);
}

uint64_t sub_10000DAAC()
{
  swift_unknownObjectWeakDestroy();
  sub_10000E6DC();

  return _swift_deallocObject(v0);
}

uint64_t sub_10000DAE0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0);
}

uint64_t sub_10000DB20()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_10000E6DC();
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  os_unfair_lock_lock((v2 + 20));
  sub_10000E3BC((v2 + 16));
  os_unfair_lock_unlock((v2 + 20));
}

uint64_t sub_10000DBC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = v20;
  v8[4] = v21;
  v8[2] = a8;
  v12 = type metadata accessor for Logger();
  v8[5] = v12;
  v13 = *(v12 - 8);
  v8[6] = v13;
  v14 = *(v13 + 64) + 15;
  v8[7] = swift_task_alloc();
  v18 = (a4 + *a4);
  v15 = a4[1];
  v16 = swift_task_alloc();
  v8[8] = v16;
  *v16 = v8;
  v16[1] = sub_10000DD40;

  return v18(a6, a7);
}

uint64_t sub_10000DD40()
{
  sub_100008818();
  sub_100008834();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_1000087C0();
  *v4 = v3;

  return _swift_task_switch(sub_10000DE2C, 0, 0);
}

void sub_10000DE2C()
{
  v2 = v0[7];
  v3 = v0[3];
  static Logger.core.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    v10 = v0[2];
    v9 = v0[3];
    sub_1000089F8();
    v11 = sub_10000E70C();
    *(v1 + 4) = sub_10000E748(4.8149e-34, v11, v12, v13, v14, v15, v16, v17, v18, v11);
    sub_10000E728(&_mh_execute_header, v19, v20, "System task with identifier: %s finished running.");
    sub_100002CF4(v11);
    sub_100002EFC();
    sub_100002EFC();

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[4];
  os_unfair_lock_lock((v24 + 20));
  if (*(v24 + 16) == 1)
  {
    v25 = v0[7];
    os_unfair_lock_unlock((v24 + 20));

    sub_100008880();

    v26();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000DFAC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  return _swift_deallocObject(v0);
}

uint64_t sub_10000E004()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];
  v8 = swift_task_alloc();
  v9 = sub_1000088F8(v8);
  *v9 = v10;
  v9[1] = sub_1000087B4;
  sub_10000E6C4();

  return sub_10000DBC8(v11, v12, v13, v14, v15, v16, v17, v5);
}

void sub_10000E0C0(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for Logger();
  v7 = sub_10000C498(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_10000E684();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    sub_1000089F8();
    v14 = sub_10000E70C();
    v15 = v14;
    *v3 = 136315138;
    *(v3 + 4) = sub_10000272C(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v12, v13, "System task with identifier: %s expired. Cancelling concurrency task.", v3, 0xCu);
    sub_100002CF4(v14);
    sub_100002EFC();
    sub_100002EFC();
  }

  (*(v9 + 8))(v2, v6);
  Task.cancel()();
}

uint64_t sub_10000E24C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0);
}

uint64_t sub_10000E284()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1000088F8(v3);
  *v4 = v5;
  v6 = sub_100008904(v4);

  return v7(v6);
}

uint64_t sub_10000E320()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1000088F8(v3);
  *v4 = v5;
  v6 = sub_100008904(v4);

  return v7(v6);
}

void sub_10000E3BC(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [Strong setTaskCompleted];
    }

    *a1 = 1;
  }
}

uint64_t sub_10000E438()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return _swift_deallocObject(v0);
}

uint64_t sub_10000E488()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = sub_1000088F8(v6);
  *v7 = v8;
  v7[1] = sub_100006818;
  sub_10000E6C4();

  return sub_10000CC20(v9, v10, v11, v12, v13, v14, v15, v5);
}

uint64_t sub_10000E530()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0);
}

uint64_t sub_10000E5A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000E5C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_100018C38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100018C38);
    }
  }
}

uint64_t sub_10000E660(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10000E684()
{

  return static Logger.core.getter();
}

uint64_t sub_10000E6E8()
{
  v2 = *(v0 + 56);

  return swift_beginAccess();
}

uint64_t sub_10000E70C()
{

  return swift_slowAlloc();
}

void sub_10000E728(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10000E748(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_10000272C(v11, v10, &a10);
}

Swift::String __swiftcall DASActivities.callAsFunction()()
{
  v0 = DASActivities.callAsFunction()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall FinanceActivities.callAsFunction()()
{
  v0 = FinanceActivities.callAsFunction()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}