void *sub_1D7857688(unint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D78B6534())
    {
      for (j = 0; ; ++j)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA703700](j, a1);
        }

        else
        {
          if (j >= *(v4 + 16))
          {
            goto LABEL_19;
          }

          v7 = *(a1 + 8 * j + 32);
        }

        v8 = v7;
        v9 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v10 = [v7 inAppAdamID];
        v11 = [v10 stringValue];

        v12 = sub_1D78B5C74();
        v14 = v13;

        if (v12 == *a2 && v14 == a2[1])
        {

          return v8;
        }

        v16 = sub_1D78B6724();

        if (v16)
        {
          return v8;
        }

        if (v9 == i)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }
  }

  return 0;
}

void sub_1D7857978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 || !a1)
  {
    sub_1D7788D90();
    sub_1D78B5054();
    swift_allocObject();
    v5 = sub_1D78B5004();
    v6 = (a3 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_router);
    v7 = *(a3 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_router + 24);
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v8 + 88))(v5, v7, v8);
  }

  else
  {
    v10 = swift_unknownObjectRetain();
    sub_1D7855FD0(v10, a4);
    v11 = *__swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_inAppSubscriptionStatusChecker), *(a3 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_inAppSubscriptionStatusChecker + 24));
    sub_1D78B41F4();
    sub_1D7788448();
    v12 = sub_1D78B6104();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = 0;

    sub_1D78B4094();

    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = 0;

    v15 = sub_1D78B4014();
    sub_1D78B40D4();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D7857BBC()
{
  v1 = v0;
  sub_1D773F0BC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PurchaseContext();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - v10;
  v12 = sub_1D78B3014();
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v41 = 0x6168436465646461;
  v42 = 0xEF7344496C656E6ELL;
  sub_1D78B63F4();
  if (!*(v13 + 16) || (v14 = sub_1D777BD70(v43), (v15 & 1) == 0))
  {

    sub_1D777BDB4(v43);
LABEL_10:
    v44 = 0u;
    v45 = 0u;
LABEL_11:
    v24 = sub_1D77BFF28;
    v25 = &v44;
    return sub_1D7858F9C(v25, v24);
  }

  sub_1D777BE08(*(v13 + 56) + 32 * v14, &v44);
  sub_1D777BDB4(v43);

  if (!*(&v45 + 1))
  {
    goto LABEL_11;
  }

  sub_1D7782F60();
  result = swift_dynamicCast();
  if (result)
  {
    v36 = v6;
    v37 = v1;
    v17 = 0;
    v19 = v43[0] + 56;
    v18 = *(v43[0] + 56);
    v39 = v43[0];
    v20 = 1 << *(v43[0] + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v18;
    v38 = OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_failedTransactionPurchaseContexts;
    v23 = (v20 + 63) >> 6;
    while (v22)
    {
LABEL_20:
      v27 = v38;
      v28 = (*(v39 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v22)))));
      v29 = v28[1];
      v40 = *v28;
      swift_beginAccess();
      v30 = *(v1 + v27);
      v31 = *(v30 + 16);

      if (v31)
      {
        v32 = sub_1D777BBB4(v40, v29);
        if (v33)
        {
          sub_1D7859018(*(v30 + 56) + *(v36 + 72) * v32, v9, type metadata accessor for PurchaseContext);
          sub_1D777044C(v9, v11);
          swift_endAccess();
          v34 = *(v37 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_webOptinFlowManager + 24);
          v35 = *(v37 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_webOptinFlowManager + 32);
          __swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_webOptinFlowManager), v34);
          (*(v35 + 16))(v11, v34, v35);
          swift_beginAccess();
          sub_1D782B08C(v40, v29, v4);
          swift_endAccess();

          sub_1D7858F9C(v4, sub_1D773F0BC);
          v24 = type metadata accessor for PurchaseContext;
          v25 = v11;
          return sub_1D7858F9C(v25, v24);
        }
      }

      v22 &= v22 - 1;
      swift_endAccess();

      v1 = v37;
    }

    while (1)
    {
      v26 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
      }

      v22 = *(v19 + 8 * v26);
      ++v17;
      if (v22)
      {
        v17 = v26;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1D7858110(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v119 = a4;
  v113 = sub_1D78B3394();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v117 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for PurchaseAdContext();
  MEMORY[0x1EEE9AC00](v111);
  v114 = (&v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = type metadata accessor for PurchaseContext();
  v120 = *(v118 - 8);
  v9 = MEMORY[0x1EEE9AC00](v118);
  v116 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v122 = &v108 - v11;
  sub_1D773F0BC();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v125 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v108 - v15;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D78BCB50;
  v121 = a3;
  sub_1D7859018(a3, v16, sub_1D773F0BC);
  v18 = sub_1D78B5CC4();
  v20 = v19;
  v21 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v22 = sub_1D775ABD4();
  *(v17 + 64) = v22;
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  aBlock = 0;
  v127 = 0xE000000000000000;
  v132 = a2;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  v23 = aBlock;
  v24 = v127;
  *(v17 + 96) = v21;
  *(v17 + 104) = v22;
  *(v17 + 72) = v23;
  *(v17 + 80) = v24;
  sub_1D78B42C4();

  v25 = a2;
  v26 = sub_1D7857388(a2);
  v27 = v26;
  v123 = a2;
  if (a1 == 4)
  {

    v28 = a2 | 0x1000000000000004;
    v29 = a2;
    v30 = v119;
    goto LABEL_12;
  }

  v28 = a2 | 4;
  if (v26 > 2)
  {
    v30 = v119;
    v31 = v125;
    if ((v26 - 3) < 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v30 = v119;
    v31 = v125;
    if (v26)
    {
      if (v26 != 1)
      {
        if (v26 == 2)
        {

          v28 = a2 | 0x1000000000000000;
          v32 = a2;
          goto LABEL_16;
        }

        goto LABEL_13;
      }

LABEL_11:
      swift_getErrorValue();
      v33 = sub_1D78B67B4();
      v35 = v34;
      v129 = &type metadata for PurchaseFailedAlert;
      v130 = sub_1D7859194();
      aBlock = v33;
      v127 = v35;
      sub_1D78B5054();
      swift_allocObject();
      v36 = sub_1D78B5004();
      v37 = *&v124[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_router + 24];
      v38 = *&v124[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_router + 32];
      __swift_project_boxed_opaque_existential_1(&v124[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_router], v37);
      a2 = v123;
      (*(v38 + 88))(v36, v37, v38);

LABEL_12:
      v31 = v125;
      if (v27 == 2)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v78 = a2;
    v28 = a2;
  }

LABEL_13:
  v39 = [v30 tagID];
  if (v39)
  {

    result = [v30 tagID];
    if (!result)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v41 = result;
    v42 = sub_1D78B5C74();
    v44 = v43;

    sub_1D7859018(v121, v16, sub_1D773F0BC);
    swift_beginAccess();
    sub_1D7827DC0(v16, v42, v44);
    swift_endAccess();
    a2 = v123;
  }

LABEL_16:
  v45 = sub_1D78B31B4();
  v46 = [v45 code];
  if (v46 == *MEMORY[0x1E69B4F88])
  {
    v47 = *__swift_project_boxed_opaque_existential_1(&v124[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_inAppSubscriptionStatusChecker], *&v124[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_inAppSubscriptionStatusChecker + 24]);
    sub_1D78B41F4();
    sub_1D7788448();
    v48 = sub_1D78B6104();
    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    *(v49 + 24) = 0;

    sub_1D78B4094();

    a2 = v123;
    v31 = v125;

    v50 = swift_allocObject();
    *(v50 + 16) = v47;
    *(v50 + 24) = 0;

    v51 = sub_1D78B4014();
    sub_1D78B40D4();
  }

  sub_1D7859018(v121, v31, sub_1D773F0BC);
  if ((*(v120 + 48))(v31, 1, v118) == 1)
  {

    v52 = sub_1D773F0BC;
    v53 = v31;
    return sub_1D7858F9C(v53, v52);
  }

  v54 = v28;
  sub_1D777044C(v31, v122);
  if (a1 == 4 || (v55 = *(v122 + 64), v125 = sub_1D7773164(v55), !v56))
  {
LABEL_34:
    if ((v54 >> 59) & 6 | (v54 >> 2) & 1)
    {
      v87 = *&v124[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24];
      v88 = *&v124[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32];
      __swift_project_boxed_opaque_existential_1(&v124[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider], v87);
      (*(v88 + 8))(&aBlock, v87, v88);
      v89 = v129;
      v90 = v130;
      __swift_project_boxed_opaque_existential_1(&aBlock, v129);
      v132 = v54;
      v91 = *(v90 + 8);
      v92 = v123;
      v93 = v123;
      v94 = v122;
      v91(&v132, v122, v89, v90);

      sub_1D78591E8(v132, sub_1D7858FFC);
      sub_1D7858F9C(v94, type metadata accessor for PurchaseContext);
      return __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    v95 = v30;
    v96 = v124;
    v121 = *&v124[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_entitlementService];
    v125 = v45;
    v97 = v54;
    v98 = v116;
    sub_1D7859018(v122, v116, type metadata accessor for PurchaseContext);
    v99 = (*(v120 + 80) + 16) & ~*(v120 + 80);
    v100 = (v115 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
    v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
    v102 = swift_allocObject();
    sub_1D777044C(v98, v102 + v99);
    *(v102 + v100) = v96;
    *(v102 + v101) = v95;
    *(v102 + ((v101 + 15) & 0xFFFFFFFFFFFFFFF8)) = v97;
    v130 = sub_1D7859080;
    v131 = v102;
    aBlock = MEMORY[0x1E69E9820];
    v127 = 1107296256;
    v128 = sub_1D781E048;
    v129 = &block_descriptor_28;
    v103 = _Block_copy(&aBlock);
    v104 = v123;
    v105 = v123;
    v106 = v96;
    v107 = v95;

    [v121 performEntitlementWithIgnoreCache:1 completion:v103];

    _Block_release(v103);
    v52 = type metadata accessor for PurchaseContext;
    v53 = v122;
    return sub_1D7858F9C(v53, v52);
  }

  v57 = v56;
  result = [v30 purchaseID];
  if (!result)
  {
    goto LABEL_39;
  }

  v58 = result;
  v59 = sub_1D78B5C74();
  v61 = v60;

  result = [v30 tagID];
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v62 = result;
  v121 = v61;
  v63 = sub_1D78B5C74();
  v118 = v64;
  v119 = v63;

  v110 = sub_1D77731CC(v55);
  v109 = v65;
  result = [v30 price];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v66 = result;
  v67 = [result stringValue];

  v68 = sub_1D78B5C74();
  v70 = v69;
  result = [v30 purchaseInitiatedTime];
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v71 = result;

  sub_1D78B3364();
  v72 = (v55 + 96);
  v73 = *(v55 + 16) + 1;
  v74 = v114;
  while (--v73)
  {
    v75 = v72 + 10;
    v76 = *v72 >> 60;
    v72 += 10;
    if (v76 == 6)
    {
      v77 = *(v75 - 32);
      goto LABEL_32;
    }
  }

  LOBYTE(v77) = 0;
LABEL_32:
  v79 = v121;
  *v114 = v59;
  v74[1] = v79;
  v80 = v118;
  v74[2] = v119;
  v74[3] = v80;
  v74[4] = v125;
  v74[5] = v57;
  v81 = v109;
  v74[6] = v110;
  v74[7] = v81;
  v74[8] = v68;
  v74[9] = v70;
  v82 = v111;
  (*(v112 + 32))(v74 + *(v111 + 36), v117, v113);
  *(v74 + *(v82 + 40)) = v77 & 1;
  sub_1D774584C(&v124[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager], &aBlock);
  __swift_project_boxed_opaque_existential_1(&aBlock, v129);
  result = [v30 productID];
  if (result)
  {
    v83 = result;
    v84 = sub_1D78B5C74();
    v86 = v85;

    sub_1D77F4A60(v84, v86, v74);

    sub_1D7858F9C(v74, type metadata accessor for PurchaseAdContext);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    goto LABEL_34;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1D7858D94(uint64_t a1)
{
  sub_1D773F0BC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PurchaseContext();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7859018(a1, v5, sub_1D773F0BC);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D7858F9C(v5, sub_1D773F0BC);
  }

  sub_1D777044C(v5, v9);
  v11 = *(v1 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24);
  v12 = *(v1 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider), v11);
  (*(v12 + 8))(v16, v11, v12);
  v13 = v17;
  v14 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v15 = 0x8000000000000004;
  (*(v14 + 8))(&v15, v9, v13, v14);
  sub_1D7858F9C(v9, type metadata accessor for PurchaseContext);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_1D7858F9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7858FFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

uint64_t sub_1D7859018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7859080(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PurchaseContext() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + v9);
  v12 = *(v3 + v10);
  v13 = *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D7857460(a1, a2, a3, (v3 + v8), v11, v12, v13);
}

unint64_t sub_1D7859194()
{
  result = qword_1EC9CAED0;
  if (!qword_1EC9CAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAED0);
  }

  return result;
}

unint64_t sub_1D78591E8(unint64_t result, uint64_t (*a2)(unint64_t))
{
  v2 = (result >> 59) & 6 | (result >> 2) & 1;
  if (v2 <= 1)
  {
    if (!v2)
    {
      return a2(result);
    }

    if (v2 != 1)
    {
      return result;
    }

LABEL_7:
    result &= 0xCFFFFFFFFFFFFFFBLL;
    return a2(result);
  }

  if (v2 == 2 || v2 == 3)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1D7859234(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

uint64_t sub_1D7859268(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D78592B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1D773F0BC();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D78BCAB0;
  sub_1D7859018(a3, v10, sub_1D773F0BC);
  v12 = sub_1D78B5CC4();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D775ABD4();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_1D78B60A4();
  sub_1D78B42C4();

  return sub_1D785673C(a1, a2, a3, a4);
}

uint64_t sub_1D7859480(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PurchaseContext() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

void sub_1D7859518(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PurchaseContext() - 8);
  v8 = *(v3 + 16);
  v9 = (v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80)));

  sub_1D7856214(a1, a2, a3, v8, v9);
}

uint64_t sub_1D78595A4(char a1)
{
  v2 = v1;
  sub_1D773F0BC();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v29 - v9;
  if ((a1 & 1) == 0)
  {
    v11 = sub_1D78B5C74();
    v13 = v12;
    v14 = OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_failedTransactionPurchaseContexts;
    swift_beginAccess();
    v15 = *(v2 + v14);
    if (*(v15 + 16))
    {
      v16 = sub_1D777BBB4(v11, v13);
      v18 = v17;

      if (v18)
      {
        v19 = *(v15 + 56);
        v20 = type metadata accessor for PurchaseContext();
        v21 = *(v20 - 8);
        sub_1D7859018(v19 + *(v21 + 72) * v16, v10, type metadata accessor for PurchaseContext);
        (*(v21 + 56))(v10, 0, 1, v20);
        goto LABEL_7;
      }
    }

    else
    {
    }

    v20 = type metadata accessor for PurchaseContext();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
LABEL_7:
    swift_endAccess();
    type metadata accessor for PurchaseContext();
    v22 = (*(*(v20 - 8) + 48))(v10, 1, v20);
    result = sub_1D7858F9C(v10, sub_1D773F0BC);
    if (v22 != 1)
    {
      v23 = sub_1D78B5C74();
      v25 = v24;
      swift_beginAccess();
      sub_1D782B08C(v23, v25, v7);
      swift_endAccess();

      sub_1D7858F9C(v7, sub_1D773F0BC);
      v26 = (v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_postPurchaseOnboardingManager);
      v27 = *(v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_postPurchaseOnboardingManager + 24);
      v28 = v26[4];
      __swift_project_boxed_opaque_existential_1(v26, v27);
      return (*(v28 + 8))(1, v27, v28);
    }
  }

  return result;
}

BOOL sub_1D7859910(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6968FB0];
  sub_1D785A628(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = [a1 userInterfaceStyle];
  v12 = a2 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel;
  v13 = type metadata accessor for BundlePaywallViewModel(0);
  v14 = 76;
  if (v11 == 2)
  {
    v14 = 80;
    v15 = v10;
  }

  else
  {
    v15 = v8;
  }

  sub_1D785A6D8(v12 + *(v13 + v14), v15, &unk_1EE096460, v4);
  v16 = sub_1D78B3294();
  v17 = (*(*(v16 - 8) + 48))(v15, 1, v16);
  sub_1D785A67C(v15, &unk_1EE096460, v4);
  return v17 != 1;
}

double sub_1D7859A84(uint64_t a1)
{
  v3 = sub_1D78B2FF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 24);
  v8 = *(v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler), v7);
  v9 = (*(v8 + 48))(*(v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel + 16), *(v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel + 24), a1, v7, v8);
  v10 = [v9 string];
  v11 = sub_1D78B5C74();
  v13 = v12;

  v21[0] = v11;
  v21[1] = v13;
  sub_1D78B2FC4();
  sub_1D77BE06C();
  v14 = sub_1D78B62C4();
  v16 = v15;
  (*(v4 + 8))(v6, v3);

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    sub_1D78B6144();
    v19 = v18;
  }

  else
  {

    return 0.0;
  }

  return v19;
}

double sub_1D7859C68(uint64_t a1)
{
  v34 = a1;
  v2 = sub_1D78B2FF4();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1E6968FB0];
  sub_1D785A628(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 24);
  v8 = *(v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 32);
  v32 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler), v7);
  v9 = v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel;
  v10 = sub_1D787443C();
  v12 = v11;
  v13 = *(v9 + 56);
  v31 = *(v9 + 48);
  v14 = *(type metadata accessor for BundlePaywallViewModel(0) + 36);
  v15 = sub_1D78B3294();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6, v9 + v14, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  v17 = (*(v8 + 56))(v10, v12, v34, v31, v13, v6, v7, v8);

  sub_1D785A67C(v6, &unk_1EE096460, v33);
  v18 = [v17 string];
  v19 = sub_1D78B5C74();
  v21 = v20;

  v38 = v19;
  v39 = v21;
  v22 = v35;
  sub_1D78B2FC4();
  sub_1D77BE06C();
  v23 = sub_1D78B62C4();
  v25 = v24;
  (*(v36 + 8))(v22, v37);

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    sub_1D78B6144();
    v28 = v27;
  }

  else
  {

    return 0.0;
  }

  return v28;
}

double sub_1D7859F78(uint64_t a1)
{
  v3 = sub_1D78B2FF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D785A628(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v30 - v8;
  v10 = v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel;
  v11 = type metadata accessor for BundlePaywallViewModel(0);
  v12 = (v10 + *(v11 + 48));
  v13 = v12[1];
  v14 = 0.0;
  if (v13)
  {
    v15 = *v12;
    sub_1D785A6D8(v10 + *(v11 + 56), v9, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
    v16 = type metadata accessor for OffersButtonDestination(0);
    if ((*(*(v16 - 8) + 48))(v9, 1, v16) == 1)
    {
      sub_1D785A67C(v9, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
    }

    else
    {
      sub_1D785A67C(v9, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
      v17 = *(v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 24);
      v18 = *(v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler), v17);
      v19 = (*(v18 + 80))(v15, v13, a1, v17, v18);
      v20 = [v19 string];
      v21 = sub_1D78B5C74();
      v23 = v22;

      v30[0] = v21;
      v30[1] = v23;
      sub_1D78B2FC4();
      sub_1D77BE06C();
      v24 = sub_1D78B62C4();
      v26 = v25;
      (*(v4 + 8))(v6, v3);

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        sub_1D78B6144();
        v14 = v28;
      }
    }
  }

  return v14;
}

double sub_1D785A298(uint64_t a1)
{
  v3 = sub_1D78B2FF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel;
  v8 = (v7 + *(type metadata accessor for BundlePaywallViewModel(0) + 60));
  v9 = v8[1];
  v10 = 0.0;
  if (v9)
  {
    v11 = *v8;
    v12 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = *(v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 24);
      v14 = *(v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler), v13);
      v15 = (*(v14 + 96))(v11, v9, a1, v13, v14);
      v16 = [v15 string];
      v17 = sub_1D78B5C74();
      v19 = v18;

      v26[0] = v17;
      v26[1] = v19;
      sub_1D78B2FC4();
      sub_1D77BE06C();
      v20 = sub_1D78B62C4();
      v22 = v21;
      (*(v4 + 8))(v6, v3);

      v23 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v23 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        sub_1D78B6144();
        v10 = v24;
      }
    }
  }

  return v10;
}

uint64_t sub_1D785A4BC()
{
  sub_1D785A744(v0 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BundlePaywallComponentSizeProvider()
{
  result = qword_1EE090D58;
  if (!qword_1EE090D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D785A584()
{
  result = type metadata accessor for BundlePaywallViewModel(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D785A628(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B62A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D785A67C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D785A628(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D785A6D8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D785A628(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D785A744(uint64_t a1)
{
  v2 = type metadata accessor for BundlePaywallViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AlacartePaywallViewModel()
{
  result = qword_1EE092CC8;
  if (!qword_1EE092CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D785A814()
{
  sub_1D78B3294();
  if (v0 <= 0x3F)
  {
    sub_1D7743258();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SubscribeButtonDestination(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

NewsSubscription::SubscribeButtonTargetType_optional __swiftcall SubscribeButtonTargetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D78B6594();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscribeButtonTargetType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x7465656853736D61;
  if (*v0 != 2)
  {
    v2 = 0x50676E69646E616CLL;
  }

  if (*v0)
  {
    v1 = 0x6573616863727570;
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

unint64_t sub_1D785A9E0()
{
  result = qword_1EC9CAED8;
  if (!qword_1EC9CAED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAED8);
  }

  return result;
}

uint64_t sub_1D785AA34()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D785AB0C()
{
  sub_1D78B5D14();
}

uint64_t sub_1D785ABD0()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

void sub_1D785ACB0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x7465656853736D61;
  if (*v1 != 2)
  {
    v5 = 0x50676E69646E616CLL;
    v4 = 0xEB00000000656761;
  }

  if (*v1)
  {
    v3 = 0x6573616863727570;
    v2 = 0xED00007465656853;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1D785AE04()
{
  result = qword_1EC9CAEE0;
  if (!qword_1EC9CAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAEE0);
  }

  return result;
}

id sub_1D785AE58(char *a1, void *a2)
{
  if (a2)
  {
    v3 = *a1;
    v4 = a2;
    if ([v4 externalOverridesEnabled])
    {
      v5 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      LOBYTE(v28[0]) = v3;
      (*(v5 + 32))(&v38, v28, ObjectType, v5);

      goto LABEL_6;
    }
  }

  sub_1D775F3AC(&v38);
LABEL_6:
  v25 = v46;
  v26 = v47;
  v21 = v42;
  v22 = v43;
  v23 = v44;
  v24 = v45;
  v17 = v38;
  v18 = v39;
  v19 = v40;
  v20 = v41;
  v35 = v46;
  v36 = v47;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v28[0] = v38;
  v28[1] = v39;
  v27 = v48;
  v37 = v48;
  v29 = v40;
  v30 = v41;
  if (sub_1D775F3CC(v28) == 1)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  result = [v7 configuration];
  if (!result)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = result;
  if ([result respondsToSelector_])
  {
    v10 = [v9 paidBundleConfig];
    swift_unknownObjectRelease();
    v11 = [v10 paywallConfigsOfferType];

    if (v11 == 2)
    {
      if (BYTE8(v29) == 1 && *(&v28[0] + 1))
      {
        v12 = *&v28[0];

        sub_1D785CD9C(&v17, sub_1D7814634);
        return v12;
      }

      goto LABEL_21;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  result = [v7 configuration];
  if (!result)
  {
    goto LABEL_25;
  }

  v13 = result;
  if (([result respondsToSelector_] & 1) == 0)
  {
    sub_1D785CD9C(&v17, sub_1D7814634);
    swift_unknownObjectRelease();
    return 0;
  }

  v14 = [v13 paidBundleConfig];
  swift_unknownObjectRelease();
  v15 = [v14 paywallConfigsOfferType];

  if (v15 != 3)
  {
LABEL_21:
    sub_1D785CD9C(&v17, sub_1D7814634);
    return 0;
  }

  v16 = *&v28[0];
  if (*(&v28[0] + 1))
  {
  }

  sub_1D785CD9C(&v17, sub_1D7814634);
  return v16;
}

id sub_1D785B164(char *a1, void *a2)
{
  if (a2)
  {
    v3 = *a1;
    v4 = a2;
    if ([v4 externalOverridesEnabled])
    {
      v5 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      LOBYTE(v28) = v3;
      (*(v5 + 32))(&v39, &v28, ObjectType, v5);

      goto LABEL_6;
    }
  }

  sub_1D775F3AC(&v39);
LABEL_6:
  v25 = v47;
  v26 = v48;
  v21 = v43;
  v22 = v44;
  v23 = v45;
  v24 = v46;
  v17 = v39;
  v18 = v40;
  v19 = v41;
  v20 = v42;
  v36 = v47;
  v37 = v48;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v35 = v46;
  v28 = v39;
  v29 = v40;
  v27 = v49;
  v38 = v49;
  v30 = v41;
  v31 = v42;
  if (sub_1D775F3CC(&v28) == 1)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  result = [v7 configuration];
  if (!result)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = result;
  if ([result respondsToSelector_])
  {
    v10 = [v9 paidBundleConfig];
    swift_unknownObjectRelease();
    v11 = [v10 paywallConfigsOfferType];

    if (v11 == 2)
    {
      if (BYTE8(v30) == 1 && *(&v29 + 1))
      {
        v12 = v29;

        sub_1D785CD9C(&v17, sub_1D7814634);
        return v12;
      }

      goto LABEL_21;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  result = [v7 configuration];
  if (!result)
  {
    goto LABEL_25;
  }

  v13 = result;
  if (([result respondsToSelector_] & 1) == 0)
  {
    sub_1D785CD9C(&v17, sub_1D7814634);
    swift_unknownObjectRelease();
    return 0;
  }

  v14 = [v13 paidBundleConfig];
  swift_unknownObjectRelease();
  v15 = [v14 paywallConfigsOfferType];

  if (v15 != 3)
  {
LABEL_21:
    sub_1D785CD9C(&v17, sub_1D7814634);
    return 0;
  }

  v16 = v29;
  if (*(&v29 + 1))
  {
  }

  sub_1D785CD9C(&v17, sub_1D7814634);
  return v16;
}

id sub_1D785B470(char *a1, void *a2)
{
  if (a2)
  {
    v3 = *a1;
    v4 = a2;
    if ([v4 externalOverridesEnabled])
    {
      v5 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      LOBYTE(v27[0]) = v3;
      (*(v5 + 32))(&v37, v27, ObjectType, v5);

      goto LABEL_6;
    }
  }

  sub_1D775F3AC(&v37);
LABEL_6:
  v24 = v45;
  v25 = v46;
  v20 = v41;
  v21 = v42;
  v22 = v43;
  v23 = v44;
  v16 = v37;
  v17 = v38;
  v18 = v39;
  v19 = v40;
  v34 = v45;
  v35 = v46;
  v30 = v41;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  v27[0] = v37;
  v27[1] = v38;
  v26 = v47;
  v36 = v47;
  v28 = v39;
  v29 = v40;
  if (sub_1D775F3CC(v27) == 1)
  {
LABEL_18:
    v15 = 0;
    return (v15 & 1);
  }

  v7 = *(v2 + 16);
  result = [v7 configuration];
  if (result)
  {
    v9 = result;
    if ([result respondsToSelector_])
    {
      v10 = [v9 paidBundleConfig];
      swift_unknownObjectRelease();
      v11 = [v10 paywallConfigsOfferType];

      if (v11 == 2)
      {
        if (BYTE8(v28) != 1)
        {
LABEL_11:
          sub_1D785CD9C(&v16, sub_1D7814634);
          goto LABEL_18;
        }

LABEL_16:
        v15 = Array<A>.hasBuyAction.getter(v28);
        sub_1D785CD9C(&v16, sub_1D7814634);
        return (v15 & 1);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    result = [v7 configuration];
    if (result)
    {
      v12 = result;
      if (([result respondsToSelector_] & 1) == 0)
      {
        sub_1D785CD9C(&v16, sub_1D7814634);
        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      v13 = [v12 paidBundleConfig];
      swift_unknownObjectRelease();
      v14 = [v13 paywallConfigsOfferType];

      if (v14 != 3)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1D785B70C(char *a1, void *a2)
{
  if (a2)
  {
    v3 = *a1;
    v4 = a2;
    if ([v4 externalOverridesEnabled])
    {
      v5 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      LOBYTE(v19[0]) = v3;
      (*(v5 + 32))(&v29, v19, ObjectType, v5);

      goto LABEL_6;
    }
  }

  sub_1D775F3AC(&v29);
LABEL_6:
  v17[8] = v37;
  v17[9] = v38;
  v17[4] = v33;
  v17[5] = v34;
  v17[6] = v35;
  v17[7] = v36;
  v17[0] = v29;
  v17[1] = v30;
  v17[2] = v31;
  v17[3] = v32;
  v26 = v37;
  v27 = v38;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v25 = v36;
  v19[0] = v29;
  v19[1] = v30;
  v18 = v39;
  v28 = v39;
  v20 = v31;
  v21 = v32;
  if (sub_1D775F3CC(v19) == 1)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  result = [v7 configuration];
  if (result)
  {
    v9 = result;
    if ([result respondsToSelector_])
    {
      v10 = [v9 paidBundleConfig];
      swift_unknownObjectRelease();
      v11 = [v10 paywallConfigsOfferType];

      if (v11 == 2)
      {
        if (BYTE8(v20) == 1)
        {
          v12 = Offer.callToActionLabel()();
          countAndFlagsBits = v12.value._countAndFlagsBits;
          sub_1D785CD9C(v17, sub_1D7814634);
          if (!v12.value._object)
          {
            return 0;
          }

          return countAndFlagsBits;
        }

LABEL_20:
        sub_1D785CD9C(v17, sub_1D7814634);
        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    result = [v7 configuration];
    if (result)
    {
      v14 = result;
      if ([result respondsToSelector_])
      {
        v15 = [v14 paidBundleConfig];
        swift_unknownObjectRelease();
        v16 = [v15 paywallConfigsOfferType];

        if (v16 == 3)
        {
          countAndFlagsBits = Offer.callToActionLabel()().value._countAndFlagsBits;
          sub_1D785CD9C(v17, sub_1D7814634);
          return countAndFlagsBits;
        }

        goto LABEL_20;
      }

      sub_1D785CD9C(v17, sub_1D7814634);
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D785BA48@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v32 = a3;
  v34 = a2;
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B3294();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(v4 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v37[0]) = v13;
  (*(v14 + 32))(v35, v37, ObjectType, v14);
  v44 = v35[8];
  v45 = v35[9];
  v46 = v36;
  v40 = v35[4];
  v41 = v35[5];
  v42 = v35[6];
  v43 = v35[7];
  v37[0] = v35[0];
  v37[1] = v35[1];
  v38 = v35[2];
  v39 = v35[3];
  if (sub_1D775F3CC(v37) == 1)
  {
    goto LABEL_2;
  }

  v20 = v34;
  if (v34 != 2)
  {
    sub_1D785CD9C(v35, sub_1D7814634);
    v25 = type metadata accessor for SubscribeButtonDestination(0);
    v26 = v25;
    if (v20)
    {
      v17 = *(*(v25 - 8) + 56);
      v18 = a4;
      v19 = 1;
LABEL_13:
      v16 = v26;
      return v17(v18, v19, 1, v16);
    }

LABEL_12:
    swift_storeEnumTagMultiPayload();
    v17 = *(*(v26 - 8) + 56);
    v18 = a4;
    v19 = 0;
    goto LABEL_13;
  }

  sub_1D776F538(v32, v9);
  v21 = v33;
  if ((*(v33 + 48))(v9, 1, v10) == 1)
  {
    sub_1D785CD9C(v9, sub_1D776F504);
    v22 = Array<A>.hasBuyAction.getter(v38);
    sub_1D785CD9C(v35, sub_1D7814634);
    if (v22)
    {
      v23 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
      v24 = type metadata accessor for PostPurchaseDestination();
      (*(*(v24 - 8) + 56))(a4 + v23, 1, 1, v24);
LABEL_11:
      v26 = type metadata accessor for SubscribeButtonDestination(0);
      *a4 = 0;
      a4[1] = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v27 = *(v21 + 32);
    v27(v12, v9, v10);
    v28 = Array<A>.hasBuyAction.getter(v38);
    sub_1D785CD9C(v35, sub_1D7814634);
    if (v28)
    {
      v29 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
      v27(a4 + v29, v12, v10);
      v30 = type metadata accessor for PostPurchaseDestination();
      swift_storeEnumTagMultiPayload();
      (*(*(v30 - 8) + 56))(a4 + v29, 0, 1, v30);
      goto LABEL_11;
    }

    (*(v21 + 8))(v12, v10);
  }

LABEL_2:
  v16 = type metadata accessor for SubscribeButtonDestination(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a4;
  v19 = 1;
  return v17(v18, v19, 1, v16);
}

void sub_1D785BEC4(void *a1@<X1>, char *a2@<X8>)
{
  v4 = sub_1D78B3294();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  if (a1)
  {
    v12 = v9;
    v23 = a1;
    v13 = [v23 offersLinkTargetType];
    if (v13 == 2)
    {
LABEL_12:
      v20 = type metadata accessor for OffersButtonDestination(0);
      (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
      v21 = v23;

      return;
    }

    if (v13 == 1)
    {
      v14 = [v23 offersLinkURL];
      if (v14)
      {
        v15 = v14;
        sub_1D78B3254();

        v16 = *(v5 + 32);
        v16(v11, v8, v12);
        v16(a2, v11, v12);
        v17 = type metadata accessor for OffersButtonDestination(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
        return;
      }
    }

    else if (!v13)
    {
      goto LABEL_12;
    }
  }

  v18 = type metadata accessor for OffersButtonDestination(0);
  v19 = *(*(v18 - 8) + 56);

  v19(a2, 1, 1, v18);
}

uint64_t sub_1D785C18C(char *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void, void))
{
  if (*a1 == 13)
  {
    v4 = 4;
  }

  else
  {
    v4 = *a1;
  }

  v5 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v19) = v4;
  (*(v5 + 32))(v17, &v19, ObjectType, v5);
  v27 = v17[8];
  v28 = v17[9];
  v29 = v18;
  v23 = v17[4];
  v24 = v17[5];
  v25 = v17[6];
  v26 = v17[7];
  v19 = v17[0];
  v20 = v17[1];
  v21 = v17[2];
  v22 = v17[3];
  v7 = sub_1D775F3CC(&v19);
  if (v7 == 1)
  {
    return 0;
  }

  v16 = a2(v7, v8, v9, v10, v11, v12, v13, v14, v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25);
  sub_1D785CD9C(v17, sub_1D7814634);
  return v16;
}

BOOL sub_1D785C2CC(char *a1)
{
  if (*a1 == 13)
  {
    v2 = 4;
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v9[0]) = v2;
  (*(v3 + 32))(v7, v9, ObjectType, v3);
  v9[8] = v7[8];
  v9[9] = v7[9];
  v10 = v8;
  v9[4] = v7[4];
  v9[5] = v7[5];
  v9[6] = v7[6];
  v9[7] = v7[7];
  v9[0] = v7[0];
  v9[1] = v7[1];
  v9[2] = v7[2];
  v9[3] = v7[3];
  if (sub_1D775F3CC(v9) == 1)
  {
    return 0;
  }

  else
  {
    v5 = Offer.trialEligible()();
    sub_1D785CD9C(v7, sub_1D7814634);
  }

  return v5;
}

uint64_t sub_1D785C3F0(char *a1)
{
  v2 = 1701736302;
  if (*a1 == 13)
  {
    v3 = 4;
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v10[0]) = v3;
  (*(v4 + 32))(v8, v10, ObjectType, v4);
  v10[8] = v8[8];
  v10[9] = v8[9];
  v11 = v9;
  v10[4] = v8[4];
  v10[5] = v8[5];
  v10[6] = v8[6];
  v10[7] = v8[7];
  v10[0] = v8[0];
  v10[1] = v8[1];
  v10[2] = v8[2];
  v10[3] = v8[3];
  if (sub_1D775F3CC(v10) != 1)
  {
    Offer.upsellScenario()();
    sub_1D785CD9C(v8, sub_1D7814634);
    if (v7 <= 1u)
    {
      if (v7)
      {
        return 0x73676E69766173;
      }
    }

    else if (v7 == 2)
    {
      return 0x6465726563697270;
    }

    else if (v7 == 3)
    {
      return 0x756C617674736562;
    }

    else
    {
      return 0x6974736567677573;
    }
  }

  return v2;
}

uint64_t sub_1D785C5B4@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  if (*a1 == 13)
  {
    v4 = 4;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v2[4];
  ObjectType = swift_getObjectType();
  LOBYTE(v37[0]) = v4;
  (*(v5 + 40))(v35, v37, ObjectType, v5);
  v44 = v35[8];
  v45 = v35[9];
  v46 = v36;
  v40 = v35[4];
  v41 = v35[5];
  v42 = v35[6];
  v43 = v35[7];
  v37[0] = v35[0];
  v37[1] = v35[1];
  v38 = v35[2];
  v39 = v35[3];
  if (sub_1D775F3CC(v37) == 1)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v7 = sub_1D78B4304();
    __swift_project_value_buffer(v7, qword_1EE09C270);
    v8 = sub_1D78B6084();
    v9 = sub_1D78B42E4();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D7739000, v9, v8, "No best offer found. activationEligibility cannot be determined.", v10, 2u);
      MEMORY[0x1DA7043F0](v10, -1, -1);
    }

    goto LABEL_10;
  }

  if (*(&v41 + 1))
  {
    v13 = v46;
    if (v46)
    {
      v14 = qword_1EE0904F0;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = sub_1D78B4304();
      __swift_project_value_buffer(v15, qword_1EE09C270);
      v16 = sub_1D78B6084();

      v17 = sub_1D78B42E4();

      if (os_log_type_enabled(v17, v16))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v34 = v19;
        *v18 = 136315138;
        v20 = MEMORY[0x1DA703160](v13, MEMORY[0x1E69E6158]);
        v22 = sub_1D77AD82C(v20, v21, &v34);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1D7739000, v17, v16, "Configurable Offer found. activationEligibility is configurableOffer(selectors: %s)", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1DA7043F0](v19, -1, -1);
        MEMORY[0x1DA7043F0](v18, -1, -1);
      }

      sub_1D785CD9C(v35, sub_1D7814634);
      *a2 = v13;
      v23 = *MEMORY[0x1E69B67F8];
      v24 = sub_1D78B5B04();
      v25 = *(v24 - 8);
      (*(v25 + 104))(a2, v23, v24);
      return (*(v25 + 56))(a2, 0, 1, v24);
    }

    if (__PAIR128__(0x80000001D78CF0C0, 0xD000000000000019) == v44 || (sub_1D78B6724() & 1) != 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    if (!BYTE8(v38))
    {
      if (*(&v41 + 1))
      {
        if (__PAIR128__(0x80000001D78CF100, 0xD000000000000025) != v44 && (sub_1D78B6724() & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else if (!AMSMarketingItem.isBundleHardwareOffer()())
      {
        goto LABEL_26;
      }

      v28 = v2[8];
      v29 = v2[9];
      __swift_project_boxed_opaque_existential_1(v2 + 5, v28);
      if ((*(v29 + 8))(v28, v29))
      {
        sub_1D785CD9C(v35, sub_1D7814634);
        v26 = MEMORY[0x1E69B67F0];
        goto LABEL_23;
      }

      if (qword_1EE0904F0 != -1)
      {
        swift_once();
      }

      v30 = sub_1D78B4304();
      __swift_project_value_buffer(v30, qword_1EE09C270);
      v31 = sub_1D78B42E4();
      v32 = sub_1D78B60A4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1D7739000, v31, v32, "PaidBundleViaOffer paywalls feature is disabled. Using News+ paywall type.", v33, 2u);
        MEMORY[0x1DA7043F0](v33, -1, -1);
      }
    }

LABEL_26:
    sub_1D785CD9C(v35, sub_1D7814634);
LABEL_10:
    v11 = sub_1D78B5B04();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  if (!AMSMarketingItem.isCIPOffer()())
  {
    goto LABEL_25;
  }

LABEL_22:
  sub_1D785CD9C(v35, sub_1D7814634);
  v26 = MEMORY[0x1E69B6800];
LABEL_23:
  v27 = *v26;
  v24 = sub_1D78B5B04();
  v25 = *(v24 - 8);
  (*(v25 + 104))(a2, v27, v24);
  return (*(v25 + 56))(a2, 0, 1, v24);
}

uint64_t OfferOverrideProvider.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  return v0;
}

uint64_t sub_1D785CD9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D785D07C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D785D0F0(a1, a2);
  }

  return result;
}

uint64_t sub_1D785D0F0(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v4 = type metadata accessor for HideMyEmailSignupDataModel();
  v5 = v4 - 8;
  v41 = *(v4 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v37 = *(a1 + 96);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 80);
  v45 = *(a2 + 64);
  v46 = v16;
  v17 = *(a2 + 48);
  v43 = *(a2 + 32);
  v44 = v17;
  v36 = *(a2 + 104);
  v18 = v36;
  sub_1D7862A64(a2 + *(v5 + 48), &v35 + *(v5 + 48) - v10, type metadata accessor for PurchaseContext);
  v19 = *(a2 + *(v5 + 52));
  *v11 = v12;
  *(v11 + 1) = v13;
  *(v11 + 2) = v14;
  *(v11 + 3) = v15;
  v20 = v44;
  *(v11 + 2) = v43;
  *(v11 + 3) = v20;
  v21 = v46;
  *(v11 + 4) = v45;
  *(v11 + 5) = v21;
  v11[96] = v37;
  *(v11 + 13) = v18;
  *&v11[*(v5 + 52)] = v19;
  v22 = sub_1D7745694(&qword_1EC9CAF98, type metadata accessor for HideMyEmailSignupBlueprintModifierFactory);
  v23 = *(v22 + 40);

  sub_1D7815814(&v43, v42);
  v24 = type metadata accessor for HideMyEmailSignupBlueprintModifierFactory();
  swift_unknownObjectRetain();
  v25 = v19;
  v42[0] = v23(v11, v24, v22);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v39;
  sub_1D7862A64(a2, v39, type metadata accessor for HideMyEmailSignupDataModel);
  v28 = v40;
  sub_1D7862A64(v38, v40, type metadata accessor for HideMyEmailSignupDataModel);
  v29 = *(v41 + 80);
  v30 = (v29 + 24) & ~v29;
  v31 = (v6 + v29 + v30) & ~v29;
  v32 = swift_allocObject();
  *(v32 + 16) = v26;
  sub_1D7862ACC(v27, v32 + v30);
  sub_1D7862ACC(v28, v32 + v31);
  v33 = MEMORY[0x1E69D7A48];
  sub_1D7862BD0(0, &qword_1EC9CAFA0, MEMORY[0x1E69D7A48]);
  sub_1D78627F8(&qword_1EC9CAA78, &qword_1EC9CAFA0, v33);

  sub_1D78B47E4();

  sub_1D786296C(v11);
}

uint64_t sub_1D785D49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v7 = sub_1D7745694(&qword_1EC9CAF98, type metadata accessor for HideMyEmailSignupBlueprintModifierFactory);
    v8 = *(v7 + 48);
    v9 = type metadata accessor for HideMyEmailSignupBlueprintModifierFactory();
    v8(a3, v9, v7);

    if (*(a4 + 96) != *(a3 + 96))
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        v10 = MEMORY[0x1E69D7A48];
        sub_1D7862BD0(0, &qword_1EC9CAFA0, MEMORY[0x1E69D7A48]);
        sub_1D78627F8(&qword_1EC9CAA78, &qword_1EC9CAFA0, v10);
        sub_1D78B47E4();
      }
    }
  }

  return result;
}

uint64_t sub_1D785D664@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D774584C(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  result = sub_1D78B39E4();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for HideMyEmailSignupModule();
    v7 = swift_allocObject();
    result = sub_1D7741E34(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for HideMyEmailSignupModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D785D714()
{
  type metadata accessor for HideMyEmailSignupViewController();
  sub_1D78B3E44();

  sub_1D773CA14(0, &qword_1EE0920E0);
  sub_1D78B3E54();

  sub_1D773CA14(0, &unk_1EE090628);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE090620);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE0920E8);
  sub_1D78B3E54();
  type metadata accessor for HideMyEmailSignupRouter();
  sub_1D78B3824();

  sub_1D773CA14(0, &unk_1EE090D90);
  sub_1D78B3E54();

  sub_1D773CA14(0, qword_1EE0910F8);
  sub_1D78B3E54();

  sub_1D773CA14(0, qword_1EE090F20);
  sub_1D78B3E54();

  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  sub_1D78B3E44();

  type metadata accessor for HideMyEmailSignupBlueprintModifierFactory();
  sub_1D78B3E44();

  sub_1D7861D34();
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D78624AC();
  sub_1D78B3E44();

  sub_1D7861E40();
  sub_1D78B3E44();

  sub_1D7862218();
  sub_1D78B3E44();

  type metadata accessor for HideMyEmailSignupBlueprintLayoutBuilder();
  sub_1D78B3E44();

  sub_1D7862598();
  sub_1D78B3E44();

  sub_1D773F004(0, &qword_1EE08FEE8);
  sub_1D78B3E44();

  sub_1D7861F0C();
  sub_1D78B3E44();

  sub_1D773CA14(0, &unk_1EE090338);
  sub_1D78B3E54();

  sub_1D7862074();
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D7862294();
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D78628A8(0, &qword_1EE090360, MEMORY[0x1E69D8408]);
  sub_1D78B3E44();

  type metadata accessor for HideMyEmailSignupBlueprintViewCellProvider();
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D773CA14(0, qword_1EE090AE0);
  sub_1D78B3E54();

  sub_1D773CA14(0, qword_1EE0907A8);
  sub_1D78B3E54();

  type metadata accessor for HideMyEmailSignupBlueprintViewHeaderFooterProvider();
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D78628A8(0, &unk_1EE0903A0, MEMORY[0x1E69D81A8]);
  sub_1D78B3E44();

  sub_1D78B4834();
  sub_1D78B3E44();

  sub_1D78626EC();
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D78B4B54();
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D773CA14(0, &unk_1EE090328);
  sub_1D78B3E54();
}

uint64_t sub_1D785E064(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0920E0);
  result = sub_1D78B39F4();
  if (!v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE090D90);
  result = sub_1D78B39F4();
  v3 = v13;
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862598();
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095CE0);
  result = sub_1D78B39F4();
  if (v12)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x1EEE9AC00](v6);
    v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v8);
    v10 = sub_1D7862C54(*v8, v3, v4, v5, v11);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v15);
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D785E2A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D77432A8(0, &qword_1EC9CAF78, type metadata accessor for HideMyEmailSignupDataModel, MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v29 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE096350);
  result = sub_1D78B39F4();
  if (!v31)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = type metadata accessor for HideMyEmailSignupDataModel();
  sub_1D78B39F4();
  v12 = *(*(v11 - 8) + 48);
  result = v12(v9, 1, v11);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = *(v9 + 13);
  swift_unknownObjectRetain();
  sub_1D786296C(v9);
  v14 = [v13 theme];
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B39F4();
  result = v12(v7, 1, v11);
  if (result != 1)
  {
    v15 = *&v7[*(v11 + 44)];
    sub_1D786296C(v7);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    MEMORY[0x1EEE9AC00](v16);
    v18 = (v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v21 = type metadata accessor for BaseStyler();
    v29[3] = v21;
    v29[4] = &off_1F5268528;
    v29[0] = v20;
    v22 = type metadata accessor for HideMyEmailSignupStyler();
    v23 = swift_allocObject();
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v29, v21);
    MEMORY[0x1EEE9AC00](v24);
    v26 = (v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = *v26;
    v23[5] = v21;
    v23[6] = &off_1F5268528;
    v23[2] = v28;
    v23[7] = v14;
    v23[8] = v15;
    __swift_destroy_boxed_opaque_existential_1(v29);
    result = __swift_destroy_boxed_opaque_existential_1(v30);
    a2[3] = v22;
    a2[4] = &off_1F526A210;
    *a2 = v23;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D785E6AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0920E0);
  result = sub_1D78B39F4();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EC9CA6C8);
    result = sub_1D78B39F4();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x1EEE9AC00](v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for HideMyEmailSignupStyler();
      v19[3] = v10;
      v19[4] = &off_1F526A210;
      v19[0] = v9;
      v11 = type metadata accessor for HideMyEmailSignupBlueprintHeaderViewRenderer();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x1EEE9AC00](v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[5] = v10;
      v12[6] = &off_1F526A210;
      v12[2] = v17;
      sub_1D7741E34(&v20, (v12 + 7));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v11;
      a2[4] = &off_1F52741E0;
      *a2 = v12;
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

uint64_t sub_1D785E93C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D774584C(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  result = sub_1D78B39E4();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for HideMyEmailSignupRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_1D7741E34(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_1F52712A8;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D785E9F8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for HideMyEmailSignupViewController();
  v2 = sub_1D78B39E4();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D785EA78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE0910F8);
  result = sub_1D78B39F4();
  v5 = v25;
  if (!v25)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0920E8);
  result = sub_1D78B39F4();
  if (!v24)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE091460);
  result = sub_1D78B39F4();
  if (v22)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x1EEE9AC00](v7);
    v9 = (&v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for HideMyEmailSignupRouter();
    v20[3] = v12;
    v20[4] = &off_1F52712A8;
    v20[0] = v11;
    type metadata accessor for HideMyEmailSignupEventHandler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v12);
    MEMORY[0x1EEE9AC00](v14);
    v16 = (&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = sub_1D7862E5C(v5, v6, *v16, v21, v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    *a2 = v18;
    a2[1] = &off_1F52730B0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D785ED60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE090F20);
  result = sub_1D78B39F4();
  v5 = v13;
  if (!v13)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7861D34();
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HideMyEmailSignupBlueprintModifierFactory();
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095B50);
  result = sub_1D78B39F4();
  if (v12)
  {
    sub_1D78629C8();
    v9 = swift_allocObject();
    v9[3] = 0;
    swift_unknownObjectWeakInit();
    v9[6] = v5;
    v9[7] = v6;
    v9[4] = v7;
    v9[5] = v8;
    sub_1D774584C(v11, (v9 + 8));
    swift_allocObject();
    swift_weakInit();
    swift_unknownObjectRetain();

    sub_1D78B3B14();

    __swift_destroy_boxed_opaque_existential_1(v11);
    __swift_destroy_boxed_opaque_existential_1(&v10);
    swift_unknownObjectRelease();

    *a2 = v9;
    a2[1] = &off_1F526D838;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D785EF94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HideMyEmailSignupDataModel();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77432A8(0, &qword_1EC9CAF78, type metadata accessor for HideMyEmailSignupDataModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B39F4();
  result = (*(v5 + 48))(v10, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &unk_1EE095CD0);
    result = sub_1D78B39F4();
    if (v27)
    {
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      MEMORY[0x1EEE9AC00](v12);
      v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14);
      v16 = *v14;
      v17 = type metadata accessor for HideMyEmailService();
      v25[3] = v17;
      v25[4] = &off_1F52703E8;
      v25[0] = v16;
      type metadata accessor for HideMyEmailSignupDataManager();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v25, v17);
      MEMORY[0x1EEE9AC00](v19);
      v21 = (v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = *v21;
      v18[6] = v17;
      v18[7] = &off_1F52703E8;
      v18[3] = v23;
      sub_1D7862A64(v10, v7, type metadata accessor for HideMyEmailSignupDataModel);
      sub_1D77432A8(0, &unk_1EC9CAF80, type metadata accessor for HideMyEmailSignupDataModel, MEMORY[0x1E69D6538]);
      swift_allocObject();
      v24 = sub_1D78B3AE4();
      sub_1D786296C(v10);
      v18[2] = v24;
      __swift_destroy_boxed_opaque_existential_1(v25);
      result = __swift_destroy_boxed_opaque_existential_1(v26);
      *a2 = v18;
      a2[1] = &off_1F5271810;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D785F384()
{
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  swift_allocObject();
  return sub_1D78B4814();
}

void *sub_1D785F3D8()
{
  v0 = type metadata accessor for HideMyEmailSignupBlueprintFactory();
  v9[3] = v0;
  v9[4] = &off_1F526FB70;
  v9[0] = swift_allocObject();
  type metadata accessor for HideMyEmailSignupBlueprintModifierFactory();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v9, v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  v6 = *v4;
  v1[5] = v0;
  v1[6] = &off_1F526FB70;
  v1[2] = v6;
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v1;
}

uint64_t sub_1D785F4F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  result = sub_1D78B39E4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7861E40();
    result = sub_1D78B39E4();
    if (result)
    {
      sub_1D7861D34();
      swift_allocObject();
      return sub_1D78B47C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D785F5EC(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69D8438];
  sub_1D7862BD0(0, &qword_1EC9CAF58, MEMORY[0x1E69D8438]);
  swift_allocObject();
  sub_1D78B4D04();
  sub_1D7862BD0(0, &qword_1EC9CAF60, MEMORY[0x1E69D81B8]);
  swift_allocObject();
  sub_1D78627F8(&qword_1EC9CAF68, &qword_1EC9CAF58, v3);
  sub_1D78B4BE4();
  sub_1D78B47D4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D78624AC();
  result = sub_1D78B39E4();
  if (result)
  {
    swift_allocObject();
    sub_1D7745694(&qword_1EC9CAF70, sub_1D78624AC);
    sub_1D78B4BE4();
    sub_1D78B47D4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D785F7A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862218();
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE090338);
  result = sub_1D78B39B4();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HideMyEmailSignupBlueprintLayoutBuilder();
  result = sub_1D78B39E4();
  if (result)
  {
    sub_1D78624AC();
    swift_allocObject();
    return sub_1D78B4D64();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D785F8E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7861F0C();
  result = sub_1D78B39E4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EC9CAF50);
    result = sub_1D78B39F4();
    if (v3)
    {
      sub_1D7861E40();
      swift_allocObject();
      return sub_1D78B4894();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D785F9E8()
{
  sub_1D7862218();
  swift_allocObject();
  return sub_1D78B4A04();
}

uint64_t sub_1D785FA20(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0920E0);
  result = sub_1D78B39F4();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x1EEE9AC00](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for HideMyEmailSignupStyler();
    v14[3] = v7;
    v14[4] = &off_1F526A210;
    v14[0] = v6;
    type metadata accessor for HideMyEmailSignupBlueprintLayoutBuilder();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x1EEE9AC00](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_1F526A210;
    v8[2] = v13;
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D785FC30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7861F0C();
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE090338);
  result = sub_1D78B39B4();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CAF50);
  result = sub_1D78B39F4();
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78628A8(0, &unk_1EE0903A0, MEMORY[0x1E69D81A8]);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B4834();
  result = sub_1D78B39A4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CAF30);
  result = sub_1D78B39F4();
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CAF38);
  result = sub_1D78B39F4();
  if (v5)
  {
    sub_1D7862598();
    v4 = objc_allocWithZone(v3);
    return sub_1D78B4A64();
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_1D785FF40()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69D88C8]);

  return [v0 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
}

uint64_t sub_1D785FF8C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FEE8);
  result = sub_1D78B39A4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862074();
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862294();
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78628A8(0, &qword_1EE090360, MEMORY[0x1E69D8408]);
  result = sub_1D78B39E4();
  if (result)
  {
    sub_1D7861F0C();
    swift_allocObject();
    return sub_1D78B4944();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7860114@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7861F0C();
  result = sub_1D78B39E4();
  if (result)
  {
    sub_1D78B4954();

    sub_1D78B4CC4();
    swift_allocObject();
    result = sub_1D78B4CB4();
    v4 = MEMORY[0x1E69D8400];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D78601CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862218();
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HideMyEmailSignupBlueprintViewCellProvider();
  sub_1D774584C(a1, v8);
  v4 = swift_allocObject();
  sub_1D7741E34(v8, v4 + 16);
  v5 = sub_1D78B39C4();

  if (v5)
  {
    *&v8[0] = v3;
    sub_1D7862074();
    v7 = objc_allocWithZone(v6);
    return sub_1D78B4C54();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D786034C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773F004(0, &qword_1EE08FEE8);
  result = sub_1D78B39A4();
  if (result)
  {
    v4 = result;
    sub_1D773F004(0, &unk_1EE08FED0);
    sub_1D78B5D24();
    sub_1D78B38E4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D786044C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773CA14(0, &unk_1EE090328);
  result = sub_1D78B39B4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_1D78B4FE4();
    sub_1D78B4C64();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7860520(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862218();
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HideMyEmailSignupBlueprintViewHeaderFooterProvider();
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78628A8(0, &unk_1EE0903A0, MEMORY[0x1E69D81A8]);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CAF30);
  result = sub_1D78B39F4();
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CAF38);
  result = sub_1D78B39F4();
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EC9CAF40);
  result = sub_1D78B39F4();
  if (v5)
  {
    sub_1D7862294();
    v4 = objc_allocWithZone(v3);
    return sub_1D78B4BF4();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D78607AC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D78B4834();
  sub_1D78B39A4();
  sub_1D78B4C04();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D78626EC();
  if (sub_1D78B39E4())
  {
    sub_1D7745694(&qword_1EC9CAF28, sub_1D78626EC);
  }

  return sub_1D78B4C14();
}

uint64_t sub_1D78608B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  result = sub_1D78B39E4();
  if (result)
  {
    sub_1D78628A8(0, &qword_1EE090360, MEMORY[0x1E69D8408]);
    return sub_1D78B4CD4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7860960(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE090AE0);
  result = sub_1D78B39F4();
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, qword_1EE0907A8);
    result = sub_1D78B39F4();
    if (v32)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v26[2] = v26;
      MEMORY[0x1EEE9AC00](v3);
      v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v26[1] = v26;
      MEMORY[0x1EEE9AC00](v7);
      v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v5;
      v12 = *v9;
      v13 = type metadata accessor for HideMyEmailSignupChoiceViewRenderer();
      v30[3] = v13;
      v30[4] = &off_1F526D178;
      v30[0] = v11;
      v14 = type metadata accessor for HideMyEmailSignupAlternateViewRenderer();
      v28 = v14;
      v29 = &off_1F52744A8;
      v27[0] = v12;
      type metadata accessor for HideMyEmailSignupBlueprintViewCellProvider();
      v15 = swift_allocObject();
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v30, v13);
      MEMORY[0x1EEE9AC00](v16);
      v18 = (v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18);
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      MEMORY[0x1EEE9AC00](v20);
      v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v18;
      v25 = *v22;
      v15[5] = v13;
      v15[6] = &off_1F526D178;
      v15[2] = v24;
      v15[10] = v14;
      v15[11] = &off_1F52744A8;
      v15[7] = v25;
      v15[13] = 0;
      swift_unknownObjectWeakInit();
      __swift_destroy_boxed_opaque_existential_1(v27);
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v33);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7860D7C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for HideMyEmailSignupViewController();
  v4 = sub_1D78B39E4();
  v3 = &off_1F52742A8;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 104) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7860E30@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0920E0);
  result = sub_1D78B39F4();
  if (v23)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x1EEE9AC00](v8);
    v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for HideMyEmailSignupStyler();
    v21[3] = v13;
    v21[4] = &off_1F526A210;
    v21[0] = v12;
    v14 = a2(0);
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
    MEMORY[0x1EEE9AC00](v16);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v15[5] = v13;
    v15[6] = &off_1F526A210;
    v15[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a4[3] = v14;
    a4[4] = a3;
    *a4 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7861088(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090620);
  result = sub_1D78B39F4();
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &unk_1EE090628);
    result = sub_1D78B39F4();
    if (v13)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
      MEMORY[0x1EEE9AC00](v3);
      v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v6 + 16))(v5);
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      MEMORY[0x1EEE9AC00](v7);
      v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v10 + 16))(v9);
      v11 = sub_1D7861ABC(*v5, *v9);
      __swift_destroy_boxed_opaque_existential_1(v12);
      __swift_destroy_boxed_opaque_existential_1(v14);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D78612C0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for HideMyEmailSignupViewController();
  v3 = sub_1D78B39E4();
  if (v3)
  {
    v5 = v3;
    swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      *(v2 + OBJC_IVAR____TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider_delegate + 8) = v4;
      swift_unknownObjectWeakAssign();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D7861390(void *a1)
{
  v2 = sub_1D78B4DF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1D78B4E14();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1D78628A8(0, &qword_1EC9CAF20, MEMORY[0x1E69D81A0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  result = sub_1D78B39E4();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x1E69D8198], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x1E69D8518], v2);
    sub_1D78B4E04();
    v14[1] = v13;
    sub_1D78628A8(0, &unk_1EE0903A0, MEMORY[0x1E69D81A8]);
    swift_allocObject();
    return sub_1D78B4BD4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7861638(void *a1)
{
  sub_1D786283C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D78BCB50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78626EC();
  result = sub_1D78B39E4();
  if (result)
  {
    v4 = result;
    v5 = sub_1D7745694(&qword_1EC9CAF18, sub_1D78626EC);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D78B4B54();
    result = sub_1D78B39A4();
    if (result)
    {
      v6 = MEMORY[0x1E69D8038];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_1D78B4834();
      swift_allocObject();
      return sub_1D78B4824();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7861774(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7861F0C();
  result = sub_1D78B39E4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    result = sub_1D78B39E4();
    if (result)
    {
      sub_1D78626EC();
      swift_allocObject();
      return sub_1D78B4DC4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D78618A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7861F0C();
  result = sub_1D78B39E4();
  if (result)
  {
    sub_1D78B4954();

    sub_1D78B4B54();
    swift_allocObject();
    return sub_1D78B4B44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7861960(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7862598();
  v7 = sub_1D78B39E4();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D7745694(a3, sub_1D7862598);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_1D7861A14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862598();
  v4 = v3;
  result = sub_1D78B39E4();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_1D7745694(&qword_1EC9CAEF0, sub_1D7862598);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7861ABC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for HideMyEmailSignupBlueprintHeaderViewRenderer();
  v26[3] = v5;
  v26[4] = &off_1F52741E0;
  v26[0] = a1;
  v24 = v4;
  v25 = &off_1F526CD98;
  v23[0] = a2;
  v6 = type metadata accessor for HideMyEmailSignupBlueprintViewHeaderFooterProvider();
  v7 = objc_allocWithZone(v6);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v26, v5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v22[3] = v5;
  v22[4] = &off_1F52741E0;
  v21[4] = &off_1F526CD98;
  v22[0] = v16;
  v21[3] = v4;
  v21[0] = v17;
  *&v7[OBJC_IVAR____TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1D774584C(v22, &v7[OBJC_IVAR____TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider_headerRenderer]);
  sub_1D774584C(v21, &v7[OBJC_IVAR____TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider_footerRenderer]);
  v20.receiver = v7;
  v20.super_class = v6;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v18;
}

void sub_1D7861D34()
{
  if (!qword_1EE090470)
  {
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7862BD0(255, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    sub_1D7861E40();
    sub_1D78627F8(&unk_1EE090450, &qword_1EE090448, v0);
    sub_1D7745694(&unk_1EE090428, sub_1D7861E40);
    v1 = sub_1D78B4804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE090470);
    }
  }
}

void sub_1D7861E40()
{
  if (!qword_1EE090418)
  {
    sub_1D7861F0C();
    sub_1D77CE118();
    sub_1D77CE220();
    sub_1D7745694(&unk_1EE0903F0, sub_1D7861F0C);
    v0 = sub_1D78B48A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE090418);
    }
  }
}

void sub_1D7861F0C()
{
  if (!qword_1EE0903E0)
  {
    sub_1D773F004(255, &qword_1EE08FEE8);
    sub_1D7862074();
    sub_1D7862294();
    sub_1D78628A8(255, &qword_1EE090360, MEMORY[0x1E69D8408]);
    type metadata accessor for HideMyEmailSignupViewController();
    sub_1D7745694(&qword_1EE090378, sub_1D7862074);
    sub_1D7745694(&unk_1EE090390, sub_1D7862294);
    sub_1D7862438();
    v0 = sub_1D78B4964();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0903E0);
    }
  }
}

void sub_1D7862074()
{
  if (!qword_1EE090370)
  {
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7862BD0(255, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    sub_1D7862218();
    type metadata accessor for HideMyEmailSignupBlueprintViewCellProvider();
    type metadata accessor for HideMyEmailSignupViewController();
    sub_1D78627F8(&unk_1EE090450, &qword_1EE090448, v0);
    sub_1D7745694(&qword_1EE0903D8, sub_1D7862218);
    sub_1D7745694(&qword_1EE0907A0, type metadata accessor for HideMyEmailSignupBlueprintViewCellProvider);
    sub_1D7745694(&unk_1EE0910E8, type metadata accessor for HideMyEmailSignupViewController);
    v1 = sub_1D78B4C74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE090370);
    }
  }
}

void sub_1D7862218()
{
  if (!qword_1EE0903C8)
  {
    sub_1D77CE170();
    sub_1D77CE1C8();
    v0 = sub_1D78B4A14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0903C8);
    }
  }
}

void sub_1D7862294()
{
  if (!qword_1EE090380)
  {
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7862BD0(255, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    sub_1D7862218();
    type metadata accessor for HideMyEmailSignupBlueprintViewHeaderFooterProvider();
    type metadata accessor for HideMyEmailSignupViewController();
    sub_1D78627F8(&unk_1EE090450, &qword_1EE090448, v0);
    sub_1D7745694(&qword_1EE0903D8, sub_1D7862218);
    sub_1D7745694(&qword_1EE090608, type metadata accessor for HideMyEmailSignupBlueprintViewHeaderFooterProvider);
    sub_1D7745694(&unk_1EE0910E8, type metadata accessor for HideMyEmailSignupViewController);
    v1 = sub_1D78B4C24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE090380);
    }
  }
}

unint64_t sub_1D7862438()
{
  result = qword_1EE090368;
  if (!qword_1EE090368)
  {
    sub_1D78628A8(255, &qword_1EE090360, MEMORY[0x1E69D8408]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE090368);
  }

  return result;
}

void sub_1D78624AC()
{
  if (!qword_1EE090350)
  {
    sub_1D7862218();
    type metadata accessor for HideMyEmailSignupBlueprintLayoutBuilder();
    sub_1D7745694(&qword_1EE0903D8, sub_1D7862218);
    sub_1D7745694(qword_1EE090B88, type metadata accessor for HideMyEmailSignupBlueprintLayoutBuilder);
    v0 = sub_1D78B4D74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE090350);
    }
  }
}

void sub_1D7862598()
{
  if (!qword_1EE0903C0)
  {
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7862BD0(255, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    sub_1D7861F0C();
    type metadata accessor for HideMyEmailSignupViewController();
    sub_1D78627F8(&unk_1EE090450, &qword_1EE090448, v0);
    sub_1D7745694(&unk_1EE0903F0, sub_1D7861F0C);
    sub_1D7745694(&unk_1EE0910E8, type metadata accessor for HideMyEmailSignupViewController);
    v1 = sub_1D78B4A84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0903C0);
    }
  }
}

void sub_1D78626EC()
{
  if (!qword_1EC9CAEE8)
  {
    sub_1D7861F0C();
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7862BD0(255, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    sub_1D7745694(&unk_1EE0903F0, sub_1D7861F0C);
    sub_1D78627F8(&unk_1EE090460, &qword_1EE090448, v0);
    v1 = sub_1D78B4DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CAEE8);
    }
  }
}

uint64_t sub_1D78627F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D7862BD0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D786283C()
{
  if (!qword_1EC9CAF08)
  {
    sub_1D773CA14(255, &qword_1EC9CAF10);
    v0 = sub_1D78B66F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CAF08);
    }
  }
}

void sub_1D78628A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E69D7A68];
    sub_1D7862BD0(255, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    v8 = v7;
    v9 = sub_1D78627F8(&unk_1EE090450, &qword_1EE090448, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D786296C(uint64_t a1)
{
  v2 = type metadata accessor for HideMyEmailSignupDataModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D78629C8()
{
  if (!qword_1EC9CAF90)
  {
    type metadata accessor for HideMyEmailSignupBlueprintModifierFactory();
    sub_1D7745694(&qword_1EC9CAF98, type metadata accessor for HideMyEmailSignupBlueprintModifierFactory);
    v0 = type metadata accessor for HideMyEmailSignupInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CAF90);
    }
  }
}

uint64_t sub_1D7862A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7862ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HideMyEmailSignupDataModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7862B30(uint64_t a1)
{
  v3 = *(type metadata accessor for HideMyEmailSignupDataModel() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_1D785D49C(a1, v6, v1 + v5, v7);
}

void sub_1D7862BD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for HideMyEmailSignupSectionDescriptor;
    v8[1] = &type metadata for HideMyEmailSignupModel;
    v8[2] = sub_1D77CE118();
    v8[3] = sub_1D77CE220();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

char *sub_1D7862C54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for HideMyEmailSignupStyler();
  v27[3] = v10;
  v27[4] = &off_1F526A210;
  v27[0] = a1;
  v11 = type metadata accessor for HideMyEmailSignupViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v26[3] = v10;
  v26[4] = &off_1F526A210;
  v26[0] = v17;
  sub_1D774584C(v26, &v12[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_styler]);
  v18 = &v12[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_eventHandler];
  *v18 = a2;
  *(v18 + 1) = a3;
  *&v12[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_blueprintViewController] = a4;
  sub_1D774584C(a5, &v12[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_purchasePresenter]);
  v25.receiver = v12;
  v25.super_class = v11;
  swift_unknownObjectRetain();
  v19 = a4;
  v20 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  *(*&v20[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_eventHandler] + 24) = &off_1F52742B0;
  swift_unknownObjectWeakAssign();
  v21 = *&v20[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_blueprintViewController];
  v22 = v20;
  v23 = v21;
  sub_1D78B4A54();

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v22;
}

void *sub_1D7862E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14[3] = type metadata accessor for HideMyEmailSignupRouter();
  v14[4] = &off_1F52712A8;
  v14[0] = a3;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_1D774584C(v14, (a5 + 6));
  sub_1D774584C(a4, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_1F5273098, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return a5;
}

uint64_t WebAuthenticationNotSubscribedAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t WebAuthenticationNotSubscribedAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t WebAuthenticationNotSubscribedAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t WebAuthenticationNotSubscribedAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D7863228()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D78632F0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t PaywallImageProcessorRequest.__allocating_init(assetHandle:size:scaling:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = sub_1D78639E8(v11, a2, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t PaywallImageProcessorRequest.cacheIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PaywallImageProcessorRequest.scaling.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_scaling;
  v4 = sub_1D78B6214();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallImageProcessorRequest.init(assetHandle:size:scaling:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_1D78637C0(a3, a4, v13, a2, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

uint64_t PaywallImageProcessorRequest.deinit()
{

  v1 = OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_scaling;
  v2 = sub_1D78B6214();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandle);
  return v0;
}

uint64_t PaywallImageProcessorRequest.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_scaling;
  v2 = sub_1D78B6214();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandle);

  return swift_deallocClassInstance();
}

uint64_t sub_1D786378C()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1D78637C0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[3] = a6;
  v19[4] = a7;
  __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a6 - 8) + 32))();
  sub_1D774584C(v19, a5 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandle);
  sub_1D7863C3C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCAB0;
  strcpy((inited + 32), "paywallImage");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_1D774584C(v19, inited + 48);
  v13 = sub_1D77FEC44(inited);
  swift_setDeallocating();
  sub_1D7863C94(inited + 32);
  *(a5 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandles) = v13;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  v14 = OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_scaling;
  v15 = sub_1D78B6214();
  v16 = *(v15 - 8);
  (*(v16 + 16))(a5 + v14, a4, v15);
  v17 = sub_1D78B46A4();
  MEMORY[0x1DA702FF0](v17);

  MEMORY[0x1DA702FF0](14906, 0xE200000000000000);
  type metadata accessor for CGSize(0);
  sub_1D78B6504();
  (*(v16 + 8))(a4, v15);
  *(a5 + 16) = 0;
  *(a5 + 24) = 0xE000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v19);
  return a5;
}

uint64_t sub_1D78639E8(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a1, a6);
  return sub_1D78637C0(a3, a4, v15, a2, v16, a6, a7);
}

uint64_t type metadata accessor for PaywallImageProcessorRequest()
{
  result = qword_1EE091E38;
  if (!qword_1EE091E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7863B54()
{
  result = sub_1D78B6214();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D7863C3C()
{
  if (!qword_1EE08FA48)
  {
    sub_1D776F9A0();
    v0 = sub_1D78B66F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FA48);
    }
  }
}

uint64_t sub_1D7863C94(uint64_t a1)
{
  sub_1D776F9A0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HideMyEmailSignupPrewarmBlueprintModifier()
{
  result = qword_1EC9CAFA8;
  if (!qword_1EC9CAFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7863D68(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  sub_1D7816448(0, &qword_1EC9CAAA0, MEMORY[0x1E69D7ED8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  sub_1D7816448(0, &qword_1EC9CA2A8, MEMORY[0x1E69D87F8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  __swift_project_boxed_opaque_existential_1((v4 + *(a4 + 24)), *(v4 + *(a4 + 24) + 24));
  sub_1D7854B38((v4 + *(a4 + 20)), v16);
  sub_1D77CE118();
  sub_1D77CE220();
  sub_1D78B4A24();
  a2(v11);
  (*(v9 + 8))(v11, v8);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_1D7863F84()
{
  result = qword_1EC9CAFB8;
  if (!qword_1EC9CAFB8)
  {
    type metadata accessor for HideMyEmailSignupPrewarmBlueprintModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAFB8);
  }

  return result;
}

id sub_1D7863FDC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v172 = a3;
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v173 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v175 = *(a2 + 8);
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  v15 = *(a2 + 64);
  v14 = *(a2 + 72);
  v16 = *(a2 + 80);
  [v16 horizontalSizeClass];
  sub_1D78B6054();
  v18 = v11 - v17;
  v166 = v13;
  v170 = v14;
  v171 = v12;
  sub_1D78B6054();
  sub_1D78B37E4();
  if (v18 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v21 = __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  LODWORD(x) = sub_1D7859910(v16, *v21);
  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  v167 = sub_1D7859A84(v16);
  v165 = v22;
  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  v169 = sub_1D7859C68(v16);
  v168 = v23;
  v24 = __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  v25 = *v24;
  v26 = (*v24 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler);
  v28 = v26[3];
  v27 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v28);
  v29 = OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel;
  *&v30 = COERCE_DOUBLE(type metadata accessor for BundlePaywallViewModel(0));
  v31 = v29 + *(v30 + 40);
  v32 = a1;
  v33 = (*(v27 + 64))(*(v25 + v31), *(v25 + v31 + 8), v16, v28, v27);
  sub_1D78B6144();
  v35 = v34;
  v37 = v36;

  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  v163 = sub_1D7859F78(v16);
  v39 = v38;
  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  v40 = sub_1D785A298(v16);
  v42 = v41;
  v176 = v16;
  result = [v16 horizontalSizeClass];
  v44 = *(a1 + 1);
  v45 = *a1 + v44;
  if (__OFADD__(*a1, v44))
  {
    __break(1u);
  }

  else
  {
    v147 = v42;
    v46 = 11.0;
    if (v42 <= 0.0)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = 11.0;
    }

    v148 = v47;
    v48 = v165;
    v143 = v15;
    if (v165 <= 0.0)
    {
      v49 = 0.0;
    }

    else
    {
      v49 = 11.0;
    }

    v146 = v40;
    v50 = v168;
    v174 = v11;
    if (v168 <= 0.0)
    {
      v51 = 0.0;
    }

    else
    {
      v51 = 11.0;
    }

    v157 = v51;
    if (v37 <= 30.0)
    {
      v37 = 30.0;
    }

    if (v37 <= 0.0)
    {
      v52 = 0.0;
    }

    else
    {
      v52 = 11.0;
    }

    v155 = v52;
    v151 = v39;
    if (v39 <= 0.0)
    {
      v46 = 0.0;
    }

    v150 = v46;
    if (v35 + 120.0 > 158.0)
    {
      v53 = v35 + 120.0;
    }

    else
    {
      v53 = 158.0;
    }

    if (LOBYTE(x))
    {
      v54 = 27.0;
    }

    else
    {
      v54 = 0.0;
    }

    if (LOBYTE(x))
    {
      v55 = 109.0;
    }

    else
    {
      v55 = 0.0;
    }

    v56 = (v20 - v55) * 0.5;
    v57 = v45;
    v180 = CGRectIntegral(*(&v54 - 3));
    v58 = v167;
    x = v180.origin.x;
    y = v180.origin.y;
    width = v180.size.width;
    height = v180.size.height;
    v181.origin.y = v49 + CGRectGetMaxY(v180);
    v181.origin.x = (v20 - v58) * 0.5;
    v181.size.width = v58;
    v181.size.height = v48;
    v182 = CGRectIntegral(v181);
    v59 = v169;
    v167 = v182.origin.x;
    v165 = v182.origin.y;
    v159 = v182.size.width;
    v158 = v182.size.height;
    v183.origin.y = v157 + CGRectGetMaxY(v182);
    v183.origin.x = (v20 - v59) * 0.5;
    v183.size.width = v59;
    v183.size.height = v50;
    v184 = CGRectIntegral(v183);
    v169 = v184.origin.x;
    v168 = v184.origin.y;
    v157 = v184.size.width;
    v156 = v184.size.height;
    v185.origin.y = v155 + CGRectGetMaxY(v184);
    v185.origin.x = (v20 - v53) * 0.5;
    v60 = v166;
    v185.size.width = v53;
    v185.size.height = v37;
    v186 = CGRectIntegral(v185);
    v61 = v163;
    v155 = v186.origin.x;
    v154 = v186.origin.y;
    v153 = v186.size.width;
    v152 = v186.size.height;
    v187.origin.y = v150 + CGRectGetMaxY(v186);
    v187.origin.x = (v20 - v61) * 0.5;
    v187.size.width = v61;
    v187.size.height = v151;
    v188 = CGRectIntegral(v187);
    v163 = v188.origin.x;
    v151 = v188.origin.y;
    v150 = v188.size.width;
    v149 = v188.size.height;
    MaxY = CGRectGetMaxY(v188);
    if (a1[*(v30 + 100)])
    {
      v63 = v147;
    }

    else
    {
      v63 = 0.0;
    }

    v64 = v146;
    v65 = v148 + MaxY;
    v66 = (v20 - v146) * 0.5;
    v189 = CGRectIntegral(*(&v63 - 3));
    v148 = v189.origin.x;
    v147 = v189.origin.y;
    v146 = v189.size.width;
    v145 = v189.size.height;
    v67 = CGRectGetMaxY(v189) + 24.0;
    v68 = v171;
    v69 = *&v143;
    sub_1D78B6054();
    v190.origin.x = v68 + (v174 - v70 - v20) * 0.5;
    v190.origin.y = 0.0;
    v190.size.width = v20;
    v190.size.height = v67;
    v191 = CGRectIntegral(v190);
    v170 = v191.size.width;
    v171 = v191.origin.x;
    v71 = v191.origin.y;
    v144 = v191.size.height;
    if (v172 == 0.0)
    {
      v72 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    else
    {
      [*&v172 safeAreaInsets];
    }

    v73 = v175;
    v74 = v69 + v67 + v72;
    v75 = v175 - v74;
    v76 = v175 * 0.333;
    v175 = *&v30;
    if (v73 - v74 >= v73 * 0.333)
    {
      if (v75 > 1000.0)
      {
        v74 = v74 + v75 + -1000.0;
      }

      v76 = v71;
      v172 = v74;
      v77 = v74;
    }

    else
    {
      v172 = v73 + v76 - v75;
      v77 = v73;
    }

    v79 = v5[5];
    v78 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v79);
    v80 = v176;
    *&v143 = COERCE_DOUBLE((*(*(v78 + 8) + 48))(*(v32 + 2), *(v32 + 3), v176, v79));
    v81 = v5[5];
    v140 = v5[6];
    v141 = __swift_project_boxed_opaque_existential_1(v5 + 2, v81);
    v82 = sub_1D787443C();
    v84 = v83;
    v85 = *(v32 + 7);
    v139 = *(v32 + 6);
    v138 = v85;
    v86 = *(*&v175 + 36);
    v87 = sub_1D78B3294();
    v88 = *(v87 - 8);
    v89 = &v32[v86];
    v90 = v173;
    (*(v88 + 16))(v173, v89, v87);
    (*(v88 + 56))(v90, 0, 1, v87);
    v141 = (*(*(v140 + 8) + 56))(v82, v84, v80, v139, v138, v90, v81);

    sub_1D77C12C8(v90);
    v92 = v5[5];
    v91 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v92);
    v93 = v175;
    v140 = (*(*(v91 + 8) + 64))(*&v32[*(*&v175 + 40)], *&v32[*(*&v175 + 40) + 8], v80, v92);
    sub_1D774584C((v5 + 2), &v177);
    v95 = v178;
    v94 = v179;
    __swift_project_boxed_opaque_existential_1(&v177, v178);
    v96 = *(*&v93 + 48);
    v173 = v32;
    v97 = &v32[v96];
    if (*(v97 + 1))
    {
      v98 = *v97;
      v99 = *(v97 + 1);
    }

    else
    {
      v98 = 0;
      v99 = 0xE000000000000000;
    }

    v100 = *(v94 + 8);
    v101 = *(v100 + 80);

    v102 = v101(v98, v99, v176, v95, v100);

    __swift_destroy_boxed_opaque_existential_1(&v177);
    sub_1D774584C((v5 + 2), &v177);
    v103 = v178;
    v104 = v179;
    __swift_project_boxed_opaque_existential_1(&v177, v178);
    v105 = &v173[*(*&v175 + 60)];
    v106 = *(v105 + 1);
    v142 = v67;
    v107 = v20;
    if (v106)
    {
      v108 = *v105;
      v109 = v106;
    }

    else
    {
      v108 = 0;
      v109 = 0xE000000000000000;
    }

    v110 = v73 - v77;
    v111 = v73 - v77 - v60;
    v112 = v60;
    v113 = v76 + v73 - v77;
    v114 = v73;
    v115 = v174;
    v175 = (v107 - v174) * 0.5;
    v116 = *(v104 + 8);
    v117 = *(v116 + 96);

    v118 = v117(v108, v109, v176, v103, v116);

    result = __swift_destroy_boxed_opaque_existential_1(&v177);
    v119 = v170;
    *(a4 + 16) = v171;
    *(a4 + 24) = v76;
    v120 = v144;
    *(a4 + 32) = v119;
    *(a4 + 40) = v120;
    *(a4 + 56) = v113;
    *(a4 + 64) = v115;
    *(a4 + 88) = v112;
    *(a4 + 96) = v115;
    *a4 = v115;
    *(a4 + 8) = v114;
    *(a4 + 48) = 0;
    *(a4 + 72) = v77;
    *(a4 + 80) = 0;
    *(a4 + 104) = v111;
    *(a4 + 112) = 0;
    *(a4 + 120) = v110;
    *(a4 + 128) = v115;
    v121 = v175;
    *(a4 + 136) = v77;
    *(a4 + 144) = v121;
    *(a4 + 152) = 0;
    v122 = v142;
    *(a4 + 160) = v115;
    *(a4 + 168) = v122;
    v123 = v172;
    *(a4 + 176) = v115;
    *(a4 + 184) = v123;
    v124 = y;
    *(a4 + 192) = x;
    *(a4 + 200) = v124;
    v125 = height;
    *(a4 + 208) = width;
    *(a4 + 216) = v125;
    v126 = v165;
    *(a4 + 224) = v167;
    *(a4 + 232) = v126;
    v127 = v158;
    *(a4 + 240) = v159;
    *(a4 + 248) = v127;
    v128 = v168;
    *(a4 + 256) = v169;
    *(a4 + 264) = v128;
    v129 = v156;
    *(a4 + 272) = v157;
    *(a4 + 280) = v129;
    v130 = v154;
    *(a4 + 288) = v155;
    *(a4 + 296) = v130;
    v131 = v152;
    *(a4 + 304) = v153;
    *(a4 + 312) = v131;
    v132 = v151;
    *(a4 + 320) = v163;
    *(a4 + 328) = v132;
    v133 = v149;
    *(a4 + 336) = v150;
    *(a4 + 344) = v133;
    v134 = v147;
    *(a4 + 352) = v148;
    *(a4 + 360) = v134;
    v135 = v145;
    *(a4 + 368) = v146;
    *(a4 + 376) = v135;
    v136 = v141;
    *(a4 + 384) = *&v143;
    *(a4 + 392) = v136;
    *(a4 + 400) = v140;
    *(a4 + 408) = v102;
    *(a4 + 416) = v118;
  }

  return result;
}

uint64_t sub_1D7864AC0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_1D7864B44@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7864C28(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1D7864C28(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D7864C3C()
{
  result = qword_1EC9CAFC0;
  if (!qword_1EC9CAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAFC0);
  }

  return result;
}

unint64_t sub_1D7864CA0()
{
  result = qword_1EE08F218;
  if (!qword_1EE08F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F218);
  }

  return result;
}

char *URLHandlerContext<A>.purchaseTraits.getter()
{
  v112 = sub_1D78B3BA4();
  v1 = *(v112 - 8);
  v2 = MEMORY[0x1EEE9AC00](v112);
  v99 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v105 = &v97 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v110 = &v97 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v114 = &v97 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v108 = &v97 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v107 = &v97 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v97 - v14;
  v16 = sub_1D78B3BD4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v98 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v104 = &v97 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v109 = &v97 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v113 = &v97 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v106 = &v97 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v97 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v97 - v31;
  sub_1D7865674();
  v34 = v33;
  v35 = v0;
  sub_1D78B3D24();
  sub_1D78B3BC4();
  v36 = *(v17 + 8);
  v37 = v32;
  v38 = v1;
  v39 = v16;
  v111 = v17 + 8;
  v36(v37, v16);
  v40 = sub_1D78B3BB4();
  v42 = v41;
  v43 = *(v38 + 8);
  v44 = v15;
  v45 = v112;
  v43(v44, v112);
  v117 = v43;
  v118 = v36;
  v119 = v39;
  v115 = v35;
  v116 = v34;
  if (v42)
  {
    v102 = v42;
    v103 = v40;
    sub_1D78B3D24();
    v46 = v107;
    sub_1D78B3BC4();
    v36(v30, v39);
    v47 = sub_1D78B3BB4();
    v100 = v48;
    v101 = v47;
    v43(v46, v45);
    v49 = v106;
    sub_1D78B3D24();
    v50 = v108;
    sub_1D78B3BC4();
    v36(v49, v39);
    v51 = sub_1D78B3BB4();
    v53 = v52;
    v43(v50, v45);
    v54 = sub_1D777B944(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v56 = *(v54 + 2);
    v55 = *(v54 + 3);
    if (v56 >= v55 >> 1)
    {
      v54 = sub_1D777B944((v55 > 1), v56 + 1, 1, v54);
    }

    *(v54 + 2) = v56 + 1;
    v57 = &v54[80 * v56];
    v58 = v102;
    *(v57 + 4) = v103;
    *(v57 + 5) = v58;
    v59 = v100;
    *(v57 + 6) = v101;
    *(v57 + 7) = v59;
    *(v57 + 8) = v51;
    *(v57 + 9) = v53;
    *(v57 + 12) = 0x7000000000000000;
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  v60 = v113;
  sub_1D78B3D24();
  v61 = v114;
  sub_1D78B3BC4();
  v118(v60, v119);
  v62 = sub_1D78B3BB4();
  v64 = v63;
  v117(v61, v45);
  if (v64)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_1D777B944(0, *(v54 + 2) + 1, 1, v54);
    }

    v66 = *(v54 + 2);
    v65 = *(v54 + 3);
    if (v66 >= v65 >> 1)
    {
      v54 = sub_1D777B944((v65 > 1), v66 + 1, 1, v54);
    }

    *(v54 + 2) = v66 + 1;
    v67 = &v54[80 * v66];
    *(v67 + 4) = v62;
    *(v67 + 5) = v64;
    *(v67 + 6) = 1;
    *(v67 + 12) = 0x6000000000000000;
    v68 = v109;
    sub_1D78B3D24();
    v69 = v110;
    sub_1D78B3BC4();
    v118(v68, v119);
    v70 = sub_1D78B3BB4();
    v72 = v71;
    v73 = v69;
    v74 = v117;
    v117(v73, v45);
    if (v72)
    {
      if (v70 == 1684366694 && v72 == 0xE400000000000000 || (sub_1D78B6724() & 1) != 0)
      {
        v75 = v104;
        sub_1D78B3D24();
        v76 = v105;
        sub_1D78B3BC4();
        v118(v75, v119);
        v77 = sub_1D78B3BB4();
        v79 = v78;
        v74 = v117;
        v117(v76, v45);
        if (v79)
        {

          if (v77 == sub_1D78B5C74() && v79 == v80)
          {
          }

          else
          {
            v90 = sub_1D78B6724();

            if ((v90 & 1) == 0)
            {
              v95 = *(v54 + 2);
              v94 = *(v54 + 3);
              if (v95 >= v94 >> 1)
              {
                v54 = sub_1D777B944((v94 > 1), v95 + 1, 1, v54);
              }

              *(v54 + 2) = v95 + 1;
              v93 = &v54[80 * v95];
              *(v93 + 4) = 7;
              *(v93 + 5) = v77;
              *(v93 + 7) = 0;
              *(v93 + 8) = 0;
              *(v93 + 6) = v79;
              goto LABEL_34;
            }
          }

          v92 = *(v54 + 2);
          v91 = *(v54 + 3);
          if (v92 >= v91 >> 1)
          {
            v54 = sub_1D777B944((v91 > 1), v92 + 1, 1, v54);
          }

          *(v54 + 2) = v92 + 1;
          v93 = &v54[80 * v92];
          *(v93 + 4) = 1;
          *(v93 + 40) = 0u;
          *(v93 + 56) = 0u;
LABEL_34:
          *(v93 + 12) = 0x4000000000000000;
          return v54;
        }
      }

      if (v70 == 0x656C6369747261 && v72 == 0xE700000000000000)
      {
      }

      else
      {
        v81 = sub_1D78B6724();

        if ((v81 & 1) == 0)
        {
          return v54;
        }
      }

      v82 = v98;
      sub_1D78B3D24();
      v83 = v99;
      sub_1D78B3BC4();
      v118(v82, v119);
      v84 = sub_1D78B3BB4();
      v86 = v85;
      v74(v83, v45);
      if (v86)
      {
        v88 = *(v54 + 2);
        v87 = *(v54 + 3);
        if (v88 >= v87 >> 1)
        {
          v54 = sub_1D777B944((v87 > 1), v88 + 1, 1, v54);
        }

        *(v54 + 2) = v88 + 1;
        v89 = &v54[80 * v88];
        *(v89 + 4) = v84;
        *(v89 + 5) = v86;
        *(v89 + 3) = 0u;
        *(v89 + 4) = 0u;
        *(v89 + 5) = 0u;
        *(v89 + 12) = 0;
      }
    }
  }

  return v54;
}

void sub_1D7865674()
{
  if (!qword_1EE08F248)
  {
    sub_1D78B4574();
    v0 = sub_1D78B3D34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08F248);
    }
  }
}

uint64_t URLHandlerContext<A>.postPurchaseDestination.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1D78B3BA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B3BD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7865674();
  sub_1D78B3D24();
  sub_1D78B3BC4();
  (*(v7 + 8))(v9, v6);
  v10 = sub_1D78B3BB4();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  if (!v12)
  {
    goto LABEL_7;
  }

  if (v10 == 0x656C7A7A7570 && v12 == 0xE600000000000000)
  {
  }

  else
  {
    v14 = sub_1D78B6724();

    if ((v14 & 1) == 0)
    {
LABEL_7:
      v15 = type metadata accessor for PostPurchaseDestination();
      return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    }
  }

  *a1 = 2;
  v17 = type metadata accessor for PostPurchaseDestination();
  swift_storeEnumTagMultiPayload();
  return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
}

id sub_1D7865954()
{
  v0 = objc_opt_self();
  v16 = [v0 clearColor];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.909803922 alpha:1.0];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0901960784 alpha:1.0];
  v15 = [v0 ts:v1 dynamicColor:v2 withDarkStyleVariant:?];

  v3 = [v0 blackColor];
  v4 = [v0 whiteColor];
  v5 = [v0 ts:v3 dynamicColor:v4 withDarkStyleVariant:?];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.317647059 alpha:1.0];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0745098 alpha:1.0];
  v8 = [v0 ts:v6 dynamicColor:v7 withDarkStyleVariant:?];

  v9 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.176470588 blue:0.333333333 alpha:1.0];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.176470588 blue:0.333333333 alpha:1.0];
  v11 = [v0 whiteColor];
  v12 = [v0 whiteColor];
  v13 = [v0 ts:v11 dynamicColor:v12 withDarkStyleVariant:?];

  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.0 blue:0.28627451 alpha:1.0];
  *&xmmword_1EE09C2D0 = v16;
  *(&xmmword_1EE09C2D0 + 1) = v15;
  qword_1EE09C2E0 = v5;
  unk_1EE09C2E8 = v8;
  *&xmmword_1EE09C2F0 = v9;
  *(&xmmword_1EE09C2F0 + 1) = v10;
  qword_1EE09C300 = v13;
  unk_1EE09C308 = result;
  return result;
}

id sub_1D7865BF8()
{
  v0 = objc_opt_self();
  v16 = [v0 clearColor];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.964705882 green:0.964705882 blue:0.964705882 alpha:1.0];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0901960784 alpha:1.0];
  v15 = [v0 ts:v1 dynamicColor:v2 withDarkStyleVariant:?];

  v3 = [v0 blackColor];
  v4 = [v0 whiteColor];
  v5 = [v0 ts:v3 dynamicColor:v4 withDarkStyleVariant:?];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.678431373 green:0.678431373 blue:0.678431373 alpha:1.0];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.678431373 green:0.678431373 blue:0.678431373 alpha:1.0];
  v8 = [v0 ts:v6 dynamicColor:v7 withDarkStyleVariant:?];

  v9 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.176470588 blue:0.333333333 alpha:1.0];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.176470588 blue:0.333333333 alpha:1.0];
  v11 = [v0 whiteColor];
  v12 = [v0 whiteColor];
  v13 = [v0 ts:v11 dynamicColor:v12 withDarkStyleVariant:?];

  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.0 blue:0.28627451 alpha:1.0];
  *&xmmword_1EE09C210 = v16;
  *(&xmmword_1EE09C210 + 1) = v15;
  qword_1EE09C220 = v5;
  unk_1EE09C228 = v8;
  *&xmmword_1EE09C230 = v9;
  *(&xmmword_1EE09C230 + 1) = v10;
  qword_1EE09C240 = v13;
  unk_1EE09C248 = result;
  return result;
}

uint64_t sub_1D7865EF4(uint64_t *a1, int a2)
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

uint64_t sub_1D7865F3C(uint64_t result, int a2, int a3)
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

id sub_1D7865F9C()
{
  v0 = objc_allocWithZone(type metadata accessor for DiagnosticFileProvider());

  return [v0 init];
}

void sub_1D7865FD4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DiagnosticFileProvider();
  v2 = sub_1D78B39E4();
  if (v2)
  {
    sub_1D7866064();
    sub_1D78B3EC4();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D7866064()
{
  result = qword_1EC9CAFC8;
  if (!qword_1EC9CAFC8)
  {
    type metadata accessor for DiagnosticFileProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAFC8);
  }

  return result;
}

unint64_t sub_1D7866148(uint64_t a1)
{
  v13[2] = a1;
  v2 = sub_1D78B5624();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B5504();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_feedItemRenderer + 8);
  v13[0] = swift_getObjectType();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_layoutProvider), *(v1 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_layoutProvider + 24));

  sub_1D78B3AF4();

  v10 = v13[7];

  result = sub_1D78B34E4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v10 + 16))
  {
    (*(v3 + 16))(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * result, v2);

    sub_1D78B54D4();
    (*(v3 + 8))(v5, v2);
    v12 = sub_1D78B54F4();
    (*(v7 + 8))(v9, v6);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D78664D0()
{
  v0 = sub_1D78B58E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B56B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_1D78B5374();
    v10 = (*(v5 + 88))(v7, v4);
    if (v10 == *MEMORY[0x1E69B5F88] || v10 != *MEMORY[0x1E69B5F90])
    {

      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v5 + 96))(v7, v4);
      (*(v1 + 32))(v3, v7, v0);
      sub_1D78666F4(v3);

      return (*(v1 + 8))(v3, v0);
    }
  }

  return result;
}

uint64_t sub_1D78666F4(uint64_t a1)
{
  v3 = sub_1D78B58E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_subscribeButtonDebouncer;
  if (*&v1[OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_subscribeButtonDebouncer] || ((*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3), v7 = (*(v4 + 80) + 24) & ~*(v4 + 80), v8 = swift_allocObject(), *(v8 + 16) = v1, (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3), sub_1D7866F28(), swift_allocObject(), v9 = v1, *&v1[v6] = sub_1D78B50A4(), result = , *&v1[v6]))
  {

    sub_1D78B5094();
  }

  return result;
}

uint64_t sub_1D78669C0(uint64_t a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D78536D0(a2);
    swift_unknownObjectRelease();
  }

  *(a1 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_subscribeButtonDebouncer) = 0;
}

unint64_t sub_1D7866B08(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v18 = sub_1D78B34F4();
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D78B4D24();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1D78B4CF4();
  v19 = *(v8 - 8);
  v20 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D78B5654();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_layoutProvider), *(v2 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_layoutProvider + 24));

  sub_1D78B3AF4();

  v15 = v23;

  result = sub_1D78B34E4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v15 + 16))
  {
    (*(v12 + 16))(v14, v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * result, v11);

    sub_1D78B5634();
    (*(v4 + 16))(v6, a2, v18);
    sub_1D78B34E4();
    sub_1D78B4CE4();
    __swift_project_boxed_opaque_existential_1((v21 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_feedItemSupplementaryRenderer), *(v21 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_feedItemSupplementaryRenderer + 24));
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v17 = sub_1D78B5664();

    (*(v19 + 8))(v10, v20);
    (*(v12 + 8))(v14, v11);

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7866EB4()
{
  v1 = *(sub_1D78B58E4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D78669C0(v2, v3);
}

void sub_1D7866F28()
{
  if (!qword_1EC9CB060)
  {
    v0 = sub_1D78B50B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CB060);
    }
  }
}

uint64_t sub_1D7866F7C()
{
  sub_1D78B35E4();
  swift_allocObject();
  result = sub_1D78B35F4();
  qword_1EC9CB070 = result;
  return result;
}

uint64_t sub_1D7866FEC()
{
  swift_getObjectType();
  if (qword_1EC9C8620 != -1)
  {
    swift_once();
  }

  result = sub_1D78B3544();
  if (v1 != 5)
  {
    if (qword_1EC9C8628 != -1)
    {
      swift_once();
    }

    return sub_1D78B3714();
  }

  return result;
}

uint64_t static SettingActions.resetOverrideEntitlement.getter()
{
  if (qword_1EC9C84A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D7867148(uint64_t a1, uint64_t a2)
{
  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_1D78B60A4();
  sub_1D78B42C4();

  MEMORY[0x1EEE9AC00](v5);
  sub_1D78724F4(0, &qword_1EC9CB1C8, &type metadata for HideMyEmailProxyModel, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D78B4174();
  v6 = sub_1D78B4014();
  v7 = sub_1D78B4164();

  return v7;
}

uint64_t sub_1D7867328(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v65 = a6;
  v66 = a7;
  v61 = a1;
  v62 = a2;
  v10 = sub_1D78B5264();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D78B2F74();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1D78B3294();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v53 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  v23 = objc_opt_self();
  v57 = a5;
  v24 = [v23 CAPIBaseURLForConfiguration_];
  swift_unknownObjectRelease();
  if (v24)
  {
    v63 = a4;
    v64 = a3;
    sub_1D78B3254();

    sub_1D78B3234();
    v25 = *(v14 + 8);
    v25(v17, v13);
    (*(v14 + 32))(v22, v20, v13);
    aBlock = v65;
    v68 = v66;
    sub_1D78B2FB4();
    swift_allocObject();
    sub_1D78B2FA4();
    sub_1D78B2F64();
    sub_1D78B2F84();
    sub_1D7871AB4();
    v26 = v13;
    v29 = sub_1D78B2F94();
    v31 = v30;

    v66 = *(v57 + 2);
    v65 = sub_1D78B3214();
    sub_1D786FB88();
    sub_1D78724F4(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v32 = sub_1D78B5BB4();

    v55 = *MEMORY[0x1E69B5698];
    v54 = sub_1D78B32B4();
    v56 = v31;
    v33 = *MEMORY[0x1E69B5680];
    v34 = *MEMORY[0x1E696A9C8];
    sub_1D7788448();
    v35 = *MEMORY[0x1E69E7F88];
    v57 = v25;
    v37 = v58;
    v36 = v59;
    v38 = v60;
    (*(v59 + 104))(v58, v35, v60);
    v39 = v33;
    v40 = sub_1D78B6134();
    (*(v36 + 8))(v37, v38);
    v41 = swift_allocObject();
    v42 = v63;
    v41[2] = v64;
    v41[3] = v42;
    v43 = v62;
    v41[4] = v61;
    v41[5] = v43;
    v71 = sub_1D7871B48;
    v72 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1D786839C;
    v70 = &block_descriptor_84;
    v44 = _Block_copy(&aBlock);
    v64 = v26;

    LODWORD(v52) = 0;
    v45 = v65;
    v46 = v32;
    v47 = v32;
    v48 = v55;
    v49 = v54;
    LODWORD(v50) = v34;
    [v66 performAuthenticatedHTTPRequestWithURL:v65 valuesByHTTPHeaderField:v47 method:v55 data:v54 contentType:v39 priority:1 reauthenticateIfNeeded:v50 networkEventType:v52 callbackQueue:v40 completion:v44];
    sub_1D775DD6C(v29, v56);
    _Block_release(v44);

    return v57(v22, v64);
  }

  else
  {
    sub_1D78714C8();
    v27 = swift_allocError();
    *v28 = 0;
    a3();

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();

    return sub_1D78B42C4();
  }
}

void sub_1D7867A34(uint64_t a1, unint64_t a2, void *a3, id a4, void (*a5)(void), uint64_t a6, void (*a7)(_OWORD *))
{
  if (a4)
  {
    v8 = a4;
    v9 = a4;
    if (qword_1EC9C8448 == -1)
    {
LABEL_3:
      sub_1D78B6094();
      sub_1D774FE1C();
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1D78BCAB0;
      *&v66 = v8;
      v11 = v8;
      sub_1D773C9B8(0, &qword_1EE08F9F0);
      v12 = sub_1D78B5CC4();
      v14 = v13;
      *(v10 + 56) = MEMORY[0x1E69E6158];
      *(v10 + 64) = sub_1D775ABD4();
      *(v10 + 32) = v12;
      *(v10 + 40) = v14;
      sub_1D78B42C4();

      a5(v8);
LABEL_4:

      return;
    }

LABEL_34:
    swift_once();
    goto LABEL_3;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D78B42C4();
    sub_1D78714C8();
    v8 = swift_allocError();
    *v15 = 1;
    (a5)();

    goto LABEL_4;
  }

  sub_1D78B3814();
  swift_allocObject();
  sub_1D78715AC(a1, a2);
  sub_1D78B3804();
  type metadata accessor for ProxyEmailGenerationResponse();
  sub_1D78728BC(&qword_1EC9CB1E0, 255, type metadata accessor for ProxyEmailGenerationResponse);
  v61 = a1;
  v62 = a2;
  v8 = 0;
  sub_1D78B37F4();

  v22 = *(v66 + 16);
  if (v22)
  {
    v58 = v66;
    v59 = a5;
    v23 = *(v22 + 16);

    v64 = v23;
    if (v23)
    {
      v25 = 0;
      a5 = (v24 + 72);
      v63 = v24;
      while (v25 < *(v24 + 16))
      {
        v26 = *(a5 - 40);
        v28 = *(a5 - 4);
        v27 = *(a5 - 3);
        v29 = *(a5 - 2);
        v30 = *(a5 - 1);
        v31 = *a5;
        v32 = qword_1EC9C8448;

        if (v32 != -1)
        {
          swift_once();
        }

        ++v25;
        sub_1D774FE1C();
        v8 = swift_allocObject();
        *(v8 + 1) = xmmword_1D78BCAB0;
        LOBYTE(v66) = v26;
        *(&v66 + 1) = v28;
        *&v67 = v27;
        *(&v67 + 1) = v29;
        *&v68 = v30;
        BYTE8(v68) = v31;
        v33 = sub_1D78681A0();
        v35 = v34;
        *(v8 + 7) = MEMORY[0x1E69E6158];
        *(v8 + 8) = sub_1D775ABD4();
        *(v8 + 4) = v33;
        *(v8 + 5) = v35;
        sub_1D78B60A4();
        sub_1D78B42C4();

        a5 = (a5 + 48);
        v24 = v63;
        if (v64 == v25)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_26:

    v41 = *(v58 + 24);
    if (!v41)
    {
      sub_1D78714C8();
      v8 = swift_allocError();
      *v42 = 1;
      v59();
      sub_1D77E56E0(v61, v62);

      goto LABEL_4;
    }

    goto LABEL_29;
  }

  v41 = *(v66 + 24);
  if (v41)
  {
LABEL_29:
    v43 = qword_1EC9C8448;

    if (v43 != -1)
    {
      swift_once();
    }

    sub_1D774FE1C();
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1D78BCB50;
    v46 = v41[2];
    v45 = v41[3];
    v47 = MEMORY[0x1E69E6158];
    *(v44 + 56) = MEMORY[0x1E69E6158];
    v48 = sub_1D775ABD4();
    *(v44 + 64) = v48;
    *(v44 + 32) = v46;
    *(v44 + 40) = v45;
    v49 = v41[6];
    v50 = v41[7];
    *(v44 + 96) = v47;
    *(v44 + 104) = v48;
    *(v44 + 72) = v49;
    *(v44 + 80) = v50;

    sub_1D78B60A4();
    sub_1D78B42C4();

    v51 = v41[7];
    v52 = v41[2];
    v53 = v41[3];
    v54 = v41[4];
    v55 = v41[5];
    v57 = v41[8];
    v56 = v41[9];
    *&v66 = v41[6];
    *(&v66 + 1) = v51;
    *&v67 = v52;
    *(&v67 + 1) = v53;
    *&v68 = v54;
    *(&v68 + 1) = v55;
    *&v69 = v57;
    *(&v69 + 1) = v56;
    v65[0] = v66;
    v65[1] = v67;
    v65[2] = v68;
    v65[3] = v69;

    a7(v65);
    sub_1D77E56E0(v61, v62);

    sub_1D7871B54(&v66);
    return;
  }

  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D774FE1C();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D78BCAB0;
  v20 = a3;
  if (a3)
  {
    v21 = [a3 statusCode];
    v20 = a3;
  }

  else
  {
    v21 = 0;
  }

  *&v66 = v21;
  BYTE8(v66) = v20 == 0;
  sub_1D78724F4(0, &qword_1EC9CB1E8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  v36 = sub_1D78B5CC4();
  v38 = v37;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1D775ABD4();
  *(v19 + 32) = v36;
  *(v19 + 40) = v38;
  sub_1D78B42C4();

  sub_1D78714C8();
  v39 = swift_allocError();
  *v40 = 2;
  (a5)();

  sub_1D77E56E0(v61, v62);
}

uint64_t sub_1D78681A0()
{

  sub_1D78B6454();

  v0 = MEMORY[0x1E69E6720];
  sub_1D78724F4(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v1 = sub_1D78B5CC4();
  MEMORY[0x1DA702FF0](v1);

  MEMORY[0x1DA702FF0](0x203A65707974202CLL, 0xE800000000000000);
  sub_1D78724F4(0, &qword_1EC9CB100, &type metadata for Diagnosis.Type, v0);
  v2 = sub_1D78B5CC4();
  MEMORY[0x1DA702FF0](v2);

  MEMORY[0x1DA702FF0](0x67617373656D202CLL, 0xEB00000000203A65);
  v3 = sub_1D78B5CC4();
  MEMORY[0x1DA702FF0](v3);

  MEMORY[0x1DA702FF0](0x6F6765746163202CLL, 0xEC000000203A7972);
  sub_1D78724F4(0, &unk_1EC9CB108, &type metadata for Diagnosis.Category, v0);
  v4 = sub_1D78B5CC4();
  MEMORY[0x1DA702FF0](v4);

  MEMORY[0x1DA702FF0](46, 0xE100000000000000);
  return 540697705;
}

uint64_t sub_1D786839C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1D78B32D4();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1D77E56E0(v6, v10);
}

double sub_1D7868464@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC9C86F0 != -1)
  {
    swift_once();
  }

  sub_1D78728BC(&qword_1EC9CB1D0, v6, type metadata accessor for HideMyEmailService);
  sub_1D78B3574();
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69D6D00])
  {
    goto LABEL_4;
  }

  if (v9 != *MEMORY[0x1E69D6D08])
  {
    if (v9 != *MEMORY[0x1E69D6D10])
    {
      swift_willThrow();
      (*(v5 + 8))(v8, v4);
      goto LABEL_5;
    }

LABEL_4:
    swift_willThrow();
LABEL_5:
    v10 = a1;
    return result;
  }

  *a2 = 0xD000000000000014;
  *(a2 + 8) = 0x80000001D78DD480;
  *(a2 + 16) = 0xD00000000000002FLL;
  *(a2 + 24) = 0x80000001D78DD4A0;
  *(a2 + 32) = 0x6F632E656C707061;
  *(a2 + 40) = 0xE90000000000006DLL;
  result = 1.50810747e161;
  *(a2 + 48) = xmmword_1D78C7D70;
  return result;
}

void sub_1D78686C8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v65 = a7;
  v66 = a8;
  v64 = a6;
  v68 = a3;
  v69 = a4;
  v63 = a12;
  v62 = a11;
  v61 = a10;
  v60 = a9;
  v15 = sub_1D78B5264();
  v57 = *(v15 - 8);
  v58 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D78B2F74();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v67 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1D78B3294();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v55 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v55 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v30 = objc_opt_self();
  v55 = a5;
  v31 = *(a5 + 24);

  v32 = [v30 CAPIBaseURLForConfiguration_];
  swift_unknownObjectRelease();
  if (v32)
  {
    v59 = v29;
    sub_1D78B3254();

    sub_1D78B3234();
    v33 = *(v20 + 8);
    v33(v23, v19);
    (*(v20 + 32))(v28, v26, v19);
    sub_1D7868EC0(v64, v65, v66, v60, v61, v62, v63, v83);
    v80 = v83[10];
    v81 = v83[11];
    v82 = v84;
    v76 = v83[6];
    v77 = v83[7];
    v78 = v83[8];
    v79 = v83[9];
    v72 = v83[2];
    v73 = v83[3];
    v74 = v83[4];
    v75 = v83[5];
    v70 = v83[0];
    v71 = v83[1];
    sub_1D78B2FB4();
    swift_allocObject();
    sub_1D78B2FA4();
    sub_1D78B2F64();
    sub_1D78B2F84();
    sub_1D787151C();
    v34 = sub_1D78B2F94();
    v60 = v37;
    v61 = v34;

    v64 = *(v55 + 16);
    v63 = sub_1D78B3214();
    sub_1D786FB88();
    v65 = v28;
    v66 = v19;
    v67 = v33;
    sub_1D78724F4(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v62 = sub_1D78B5BB4();

    v38 = *MEMORY[0x1E69B5698];
    v39 = sub_1D78B32B4();
    v40 = *MEMORY[0x1E69B5680];
    v41 = *MEMORY[0x1E696A9C8];
    sub_1D7788448();
    v42 = v56;
    v43 = v57;
    v44 = v58;
    (*(v57 + 104))(v56, *MEMORY[0x1E69E7F88], v58);
    v45 = v40;
    v46 = sub_1D78B6134();
    (*(v43 + 8))(v42, v44);
    v47 = swift_allocObject();
    v48 = v69;
    v47[2] = v68;
    v47[3] = v48;
    v49 = v59;
    v47[4] = sub_1D77AE39C;
    v47[5] = v49;
    *&v72 = sub_1D78715A0;
    *(&v72 + 1) = v47;
    *&v70 = MEMORY[0x1E69E9820];
    *(&v70 + 1) = 1107296256;
    *&v71 = sub_1D786839C;
    *(&v71 + 1) = &block_descriptor_29;
    v50 = _Block_copy(&v70);

    LODWORD(v54) = 0;
    v51 = v63;
    v52 = v62;
    LODWORD(v53) = v41;
    [v64 performAuthenticatedHTTPRequestWithURL:v63 valuesByHTTPHeaderField:v62 method:v38 data:v39 contentType:v45 priority:1 reauthenticateIfNeeded:v53 networkEventType:v54 callbackQueue:v46 completion:v50];
    sub_1D775DD6C(v61, v60);
    _Block_release(v50);

    sub_1D7871570(v83);
    v67(v65, v66);
  }

  else
  {

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D78B42C4();
    sub_1D78714C8();
    v35 = swift_allocError();
    *v36 = 0;
    v68();
  }
}

uint64_t sub_1D7868EC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v87 = a6;
  v88 = a7;
  v89 = a5;
  v90 = a3;
  v85 = a2;
  v86 = a4;
  v91 = a1[1];
  v10 = sub_1D78B3444();
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v79 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v76 - v13;
  v14 = MEMORY[0x1E69E6720];
  sub_1D7871654(0, &qword_1EC9CB118, MEMORY[0x1E6969610], MEMORY[0x1E69E6720]);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v81 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v76 - v18;
  v19 = sub_1D78B3464();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v76 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v76 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v76 - v30;
  sub_1D7871654(0, &qword_1EC9CB120, MEMORY[0x1E6969680], v14);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v76 - v36;
  v84 = *a1;
  if (a1[6])
  {

    sub_1D78B3424();
    sub_1D78B3414();
    v38 = *(v20 + 8);
    v79 = v19;
    v38(v31, v19);
    v39 = sub_1D78B3404();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v37, 1, v39) == 1)
    {
      sub_1D7871744(v37, &qword_1EC9CB120, MEMORY[0x1E6969680], MEMORY[0x1E69E6720], sub_1D7871654);
      v81 = 0;
      v41 = 0;
    }

    else
    {
      v81 = sub_1D78B33D4();
      v41 = v49;
      (*(v40 + 8))(v37, v39);
    }

    sub_1D78B3424();
    v50 = v78;
    sub_1D78B3454();
    v38(v29, v79);
    v51 = v80;
    sub_1D78B3434();
    (*(v82 + 8))(v50, v83);
    v52 = sub_1D78B33E4();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      sub_1D7871744(v51, &qword_1EC9CB118, MEMORY[0x1E6969610], MEMORY[0x1E69E6720], sub_1D7871654);
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v54 = sub_1D78B33D4();
      v55 = v64;
      (*(v53 + 8))(v51, v52);
    }

    v65 = 0;
    v66 = 1;
    v48 = v81;
    v63 = v91;
  }

  else
  {
    v42 = a1[3];
    v80 = a1[2];
    v43 = a1[4];
    v76 = a1[5];
    v77 = v43;

    v78 = v42;

    sub_1D78B3424();
    sub_1D78B3414();
    v44 = *(v20 + 8);
    v45 = v19;
    v44(v26, v19);
    v46 = sub_1D78B3404();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v35, 1, v46) == 1)
    {
      sub_1D7871744(v35, &qword_1EC9CB120, MEMORY[0x1E6969680], MEMORY[0x1E69E6720], sub_1D7871654);
      v48 = 0;
      v41 = 0;
    }

    else
    {
      v56 = sub_1D78B33D4();
      v41 = v57;
      (*(v47 + 8))(v35, v46);
      v48 = v56;
    }

    sub_1D78B3424();
    v58 = v79;
    sub_1D78B3454();
    v44(v23, v45);
    v59 = v81;
    sub_1D78B3434();
    (*(v82 + 8))(v58, v83);
    v60 = sub_1D78B33E4();
    v61 = *(v60 - 8);
    v62 = (*(v61 + 48))(v59, 1, v60);
    v63 = v91;
    if (v62 == 1)
    {
      sub_1D7871744(v59, &qword_1EC9CB118, MEMORY[0x1E6969610], MEMORY[0x1E69E6720], sub_1D7871654);
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v54 = sub_1D78B33D4();
      v55 = v67;
      (*(v61 + 8))(v59, v60);
    }

    type metadata accessor for ProxyEmailRequestInfo();
    v65 = swift_allocObject();
    v66 = 0;
    v68 = v77;
    v69 = v78;
    v65[2] = v80;
    v65[3] = v69;
    v65[4] = v68;
    v65[5] = v76;
  }

  v70 = v84;
  v72 = v89;
  v71 = v90;
  *a8 = v85;
  *(a8 + 8) = v71;
  *(a8 + 16) = v70;
  *(a8 + 24) = v63;
  v73 = v87;
  *(a8 + 32) = v86;
  *(a8 + 40) = v72;
  v74 = v88;
  *(a8 + 48) = v73;
  *(a8 + 56) = v74;
  *(a8 + 64) = v66;
  *(a8 + 72) = v48;
  *(a8 + 80) = v41;
  *(a8 + 88) = v54;
  *(a8 + 96) = v55;
  *(a8 + 104) = 3;
  *(a8 + 112) = v65;
  *(a8 + 120) = 0u;
  *(a8 + 136) = 0u;
  *(a8 + 152) = 0u;
  *(a8 + 168) = 0u;
  *(a8 + 184) = 0u;
}

void sub_1D7869720(void *a1, unint64_t a2, int a3, id a4, void (*a5)(void), uint64_t a6, void (*a7)(void))
{
  if (a4)
  {
    v8 = a4;
    v9 = a4;
    (a5)(v8);
    if (qword_1EC9C8448 == -1)
    {
LABEL_3:
      sub_1D78B6094();
      sub_1D774FE1C();
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1D78BCAB0;
      v11 = v8;
      sub_1D773C9B8(0, &qword_1EE08F9F0);
      v12 = sub_1D78B5CC4();
      v14 = v13;
      *(v10 + 56) = MEMORY[0x1E69E6158];
      *(v10 + 64) = sub_1D775ABD4();
      *(v10 + 32) = v12;
      *(v10 + 40) = v14;
      sub_1D78B42C4();

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_3;
  }

  if (a2 >> 60 == 15)
  {
    sub_1D78714C8();
    v15 = swift_allocError();
    *v16 = 1;
    a5();

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();

    sub_1D78B42C4();
  }

  else
  {
    v8 = a1;
    sub_1D78B3814();
    swift_allocObject();
    sub_1D78715AC(v8, a2);
    sub_1D78B3804();
    sub_1D7871600();
    v27 = v8;
    sub_1D78B37F4();

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    sub_1D774FE1C();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E6370];
    *(v18 + 16) = xmmword_1D78BCAB0;
    v20 = MEMORY[0x1E69E63A8];
    *(v18 + 56) = v19;
    *(v18 + 64) = v20;
    *(v18 + 32) = v29;
    sub_1D78B60A4();
    sub_1D78B42C4();

    if (v30)
    {
      v28 = *(v30 + 16);
      if (v28)
      {
        v21 = 0;
        v22 = v30 + 72;
        while (v21 < *(v30 + 16))
        {
          ++v21;
          v8 = swift_allocObject();
          *(v8 + 1) = xmmword_1D78BCAB0;

          v23 = sub_1D78681A0();
          v25 = v24;
          *(v8 + 7) = MEMORY[0x1E69E6158];
          *(v8 + 8) = sub_1D775ABD4();
          *(v8 + 4) = v23;
          *(v8 + 5) = v25;
          sub_1D78B60A4();
          sub_1D78B42C4();

          v22 += 48;
          if (v28 == v21)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_20;
      }

LABEL_17:
    }

    a7(v29);
    sub_1D77E56E0(v27, a2);
  }
}

uint64_t sub_1D7869CA4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7869CE4(uint64_t a1, uint64_t a2)
{
  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_1D78B60A4();
  sub_1D78B42C4();

  MEMORY[0x1EEE9AC00](v5);
  sub_1D78724F4(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D7869E80(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v131 = a3;
  v132 = a4;
  v10 = sub_1D78B5264();
  v97 = *(v10 - 8);
  v98 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D78B2F74();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v130 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D78B3444();
  v127 = *(v14 - 8);
  v128 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v126 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D7871654(0, &qword_1EC9CB118, MEMORY[0x1E6969610], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v129 = &v94 - v18;
  v19 = sub_1D78B3464();
  v123 = *(v19 - 8);
  v124 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v125 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v94 - v22;
  sub_1D7871654(0, &qword_1EC9CB120, MEMORY[0x1E6969680], v16);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v122 = &v94 - v24;
  v25 = sub_1D78B3294();
  v120 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v94 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v94 - v32;
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = a2;
  v35 = objc_opt_self();
  v95 = a5;
  v36 = *(a5 + 24);

  v37 = [v35 CAPIBaseURLForConfiguration_];
  swift_unknownObjectRelease();
  if (v37)
  {
    v118 = v34;
    sub_1D78B3254();

    sub_1D78B3234();
    v38 = v120;
    v116 = *(v120 + 8);
    v117 = v120 + 8;
    v116(v28, v25);
    v39 = *(v38 + 32);
    v119 = v33;
    v120 = v25;
    v39(v33, v31, v25);
    v40 = *a6;
    v41 = a6[1];
    v42 = a6[3];
    v110 = a6[2];
    v111 = v40;
    v43 = a6[4];
    v44 = a6[5];
    v45 = a6[7];
    v108 = a6[6];
    v109 = v43;
    v46 = a6[9];
    v107 = a6[8];
    v47 = a6[10];
    v48 = a6[11];
    v49 = a6[17];
    v101 = a6[16];
    v102 = v47;
    v50 = a6[14];
    v51 = a6[15];
    v52 = a6[12];
    v53 = a6[13];
    v99 = v52;
    v100 = v50;
    v105 = v49;

    v104 = v51;

    v103 = v53;

    v115 = v41;

    v114 = v42;

    v113 = v44;

    v112 = v45;

    v106 = v48;

    v54 = v121;
    sub_1D78B3424();
    v55 = v122;
    sub_1D78B3414();
    v56 = v124;
    v57 = *(v123 + 8);
    v57(v54, v124);
    v58 = sub_1D78B3404();
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v55, 1, v58) == 1)
    {
      sub_1D7871744(v55, &qword_1EC9CB120, MEMORY[0x1E6969680], MEMORY[0x1E69E6720], sub_1D7871654);
      v123 = 0;
      v60 = 0;
    }

    else
    {
      v123 = sub_1D78B33D4();
      v60 = v63;
      (*(v59 + 8))(v55, v58);
    }

    v64 = v125;
    sub_1D78B3424();
    v65 = v126;
    sub_1D78B3454();
    v57(v64, v56);
    v66 = v129;
    sub_1D78B3434();
    (v127)[1](v65, v128);
    v67 = sub_1D78B33E4();
    v68 = *(v67 - 8);
    if ((*(v68 + 48))(v66, 1, v67) == 1)
    {
      sub_1D7871744(v66, &qword_1EC9CB118, MEMORY[0x1E6969610], MEMORY[0x1E69E6720], sub_1D7871654);
      v69 = 0;
      v70 = 0;
    }

    else
    {
      v69 = sub_1D78B33D4();
      v71 = v66;
      v70 = v72;
      (*(v68 + 8))(v71, v67);
    }

    *&v146 = v102;
    *(&v146 + 1) = v106;
    *&v147 = v101;
    *(&v147 + 1) = v105;
    *&v148 = v100;
    *(&v148 + 1) = v104;
    *&v149 = v99;
    *(&v149 + 1) = v103;
    LOBYTE(v150) = 2;
    *(&v150 + 1) = v123;
    *&v151 = v60;
    *(&v151 + 1) = v69;
    *&v152 = v70;
    BYTE8(v152) = 2;
    *&v153 = 0;
    *(&v153 + 1) = v111;
    *&v154 = v115;
    *(&v154 + 1) = v110;
    *&v155 = v114;
    *(&v155 + 1) = v109;
    *&v156 = v113;
    *(&v156 + 1) = v108;
    *&v157 = v112;
    *(&v157 + 1) = v107;
    v158 = v46;
    v143 = v156;
    v144 = v157;
    v145 = v46;
    v139 = v152;
    v140 = v153;
    v141 = v154;
    v142 = v155;
    v135 = v148;
    v136 = v149;
    v137 = v150;
    v138 = v151;
    v133 = v146;
    v134 = v147;
    sub_1D78B2FB4();
    swift_allocObject();
    sub_1D78B2FA4();
    sub_1D78B2F64();
    sub_1D78B2F84();
    sub_1D787151C();
    v73 = sub_1D78B2F94();
    v75 = v74;
    v76 = v73;

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    v130 = *(v95 + 16);
    v129 = sub_1D78B3214();
    sub_1D786FB88();
    sub_1D78724F4(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v128 = sub_1D78B5BB4();

    v127 = *MEMORY[0x1E69B5698];
    v77 = sub_1D78B32B4();
    v78 = *MEMORY[0x1E69B5680];
    v79 = *MEMORY[0x1E696A9C8];
    sub_1D7788448();
    v81 = v96;
    v80 = v97;
    v82 = v98;
    (*(v97 + 104))(v96, *MEMORY[0x1E69E7F88], v98);
    v83 = v78;
    v84 = sub_1D78B6134();
    (*(v80 + 8))(v81, v82);
    v85 = swift_allocObject();
    v86 = v118;
    v85[2] = sub_1D7782A58;
    v85[3] = v86;
    v87 = v132;
    v85[4] = v131;
    v85[5] = v87;
    *&v135 = sub_1D78717AC;
    *(&v135 + 1) = v85;
    *&v133 = MEMORY[0x1E69E9820];
    *(&v133 + 1) = 1107296256;
    *&v134 = sub_1D786839C;
    *(&v134 + 1) = &block_descriptor_78;
    v88 = _Block_copy(&v133);

    LODWORD(v93) = 0;
    v89 = v129;
    v91 = v127;
    v90 = v128;
    LODWORD(v92) = v79;
    [v130 performAuthenticatedHTTPRequestWithURL:v129 valuesByHTTPHeaderField:v128 method:v127 data:v77 contentType:v83 priority:1 reauthenticateIfNeeded:v92 networkEventType:v93 callbackQueue:v84 completion:v88];
    sub_1D775DD6C(v76, v75);
    _Block_release(v88);

    sub_1D7871570(&v146);
    v116(v119, v120);
  }

  else
  {

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D78B42C4();
    sub_1D78714C8();
    v61 = swift_allocError();
    *v62 = 0;
    v131();
  }
}

void sub_1D786AC1C(uint64_t a1, unint64_t a2, id a3, id a4, void (*a5)(uint64_t), uint64_t a6, void (*a7)(void))
{
  if (a4)
  {
    v10 = a4;
    v11 = sub_1D78B31B4();
    v12 = [v11 userInfo];
    v13 = MEMORY[0x1E69E6158];
    v14 = sub_1D78B5BC4();

    if (*(v14 + 16) && (v15 = sub_1D777BBB4(0xD00000000000001DLL, 0x80000001D78DD3D0), (v16 & 1) != 0))
    {
      sub_1D777BE08(*(v14 + 56) + 32 * v15, &v73);

      if (swift_dynamicCast() & 1) != 0 && (v72)
      {
        a5(1);
LABEL_9:
        if (qword_1EC9C8448 != -1)
        {
          swift_once();
        }

        sub_1D78B6094();
        sub_1D774FE1C();
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1D78BCAB0;
        v73 = a4;
        v18 = a4;
        sub_1D773C9B8(0, &qword_1EE08F9F0);
        v19 = sub_1D78B5CC4();
        v21 = v20;
        *(v17 + 56) = v13;
        *(v17 + 64) = sub_1D775ABD4();
        *(v17 + 32) = v19;
        *(v17 + 40) = v21;
        sub_1D78B42C4();

        v22 = a4;
        goto LABEL_12;
      }
    }

    else
    {
    }

    a7(a4);
    goto LABEL_9;
  }

  if (!a3)
  {
    sub_1D78714C8();
    v30 = swift_allocError();
    *v31 = 4;
    (a7)();

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
LABEL_21:

    sub_1D78B42C4();
    return;
  }

  v23 = [a3 statusCode];
  if (qword_1EC9C8448 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v24 = qword_1EC9D9DF0;
    sub_1D774FE1C();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E6530];
    *(v25 + 16) = xmmword_1D78BCAB0;
    v27 = MEMORY[0x1E69E65A8];
    *(v25 + 56) = v26;
    *(v25 + 64) = v27;
    *(v25 + 32) = v23;
    sub_1D78B60A4();
    sub_1D78B42C4();

    if ((v23 - 200) > 0x63)
    {
      if (v23 == 401)
      {
LABEL_25:
        v32 = 1;
LABEL_43:
        a5(v32);
        return;
      }

      if ((v23 - 400) < 0x1D || (v23 - 430) <= 0x45)
      {
        if (a2 >> 60 != 15)
        {
          sub_1D78B3814();
          swift_allocObject();
          sub_1D78715AC(a1, a2);
          sub_1D78B3804();
          sub_1D7871600();
          sub_1D78B37F4();

          v49 = v74;
          if (!v74)
          {
            sub_1D77E56E0(a1, a2);
            v32 = 2;
            goto LABEL_43;
          }

          v66 = a5;
          v69 = *(v74 + 2);
          if (v69)
          {
            v50 = 0;
            v51 = v74 + 72;
            v68 = v74;
            while (v50 < *(v49 + 2))
            {
              v52 = v24;
              ++v50;
              v53 = *v51;
              v55 = *(v51 - 2);
              v54 = *(v51 - 1);
              v57 = *(v51 - 4);
              v56 = *(v51 - 3);
              v58 = *(v51 - 40);
              v59 = swift_allocObject();
              *(v59 + 16) = xmmword_1D78BCAB0;
              LOBYTE(v73) = v58;
              v74 = v57;
              v75 = v56;
              v76 = v55;
              v77 = v54;
              v78 = v53;

              v60 = sub_1D78681A0();
              v62 = v61;
              *(v59 + 56) = MEMORY[0x1E69E6158];
              *(v59 + 64) = sub_1D775ABD4();
              *(v59 + 32) = v60;
              *(v59 + 40) = v62;
              sub_1D78B60A4();
              v24 = v52;
              sub_1D78B42C4();

              v51 += 48;
              v49 = v68;
              if (v69 == v50)
              {
                goto LABEL_50;
              }
            }

            __break(1u);
            return;
          }

LABEL_50:
          sub_1D77E56E0(a1, a2);

          a5 = v66;
        }
      }

      else if (v23 > 499 || v23 == 429)
      {
        goto LABEL_25;
      }

      v32 = 2;
      goto LABEL_43;
    }

    if (a2 >> 60 == 15)
    {
      sub_1D78714C8();
      v28 = swift_allocError();
      *v29 = 1;
      (a7)();

      sub_1D78B6094();
      goto LABEL_21;
    }

    sub_1D78B3814();
    swift_allocObject();
    sub_1D78715AC(a1, a2);
    sub_1D78B3804();
    sub_1D7871600();
    sub_1D78B37F4();

    v33 = v73;
    v34 = v74;
    v23 = swift_allocObject();
    v35 = MEMORY[0x1E69E6370];
    *(v23 + 16) = xmmword_1D78BCAB0;
    v36 = MEMORY[0x1E69E63A8];
    *(v23 + 56) = v35;
    *(v23 + 64) = v36;
    *(v23 + 32) = v33;
    sub_1D78B60A4();
    sub_1D78B42C4();

    if (!v34)
    {
      goto LABEL_40;
    }

    v63 = v33;
    v64 = a7;
    v65 = a5;
    v67 = *(v34 + 2);
    if (!v67)
    {
      break;
    }

    a7 = 0;
    v37 = v34 + 72;
    while (a7 < *(v34 + 2))
    {
      a7 = (a7 + 1);
      v38 = *v37;
      v39 = *(v37 - 2);
      v40 = *(v37 - 1);
      v41 = v34;
      a5 = *(v37 - 4);
      v42 = *(v37 - 3);
      v43 = *(v37 - 40);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1D78BCAB0;
      LOBYTE(v73) = v43;
      v74 = a5;
      v75 = v42;
      v76 = v39;
      v77 = v40;
      v78 = v38;

      v23 = sub_1D78681A0();
      v46 = v45;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = sub_1D775ABD4();
      *(v44 + 32) = v23;
      *(v44 + 40) = v46;
      sub_1D78B60A4();
      sub_1D78B42C4();

      v34 = v41;

      v37 += 48;
      if (v67 == a7)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

LABEL_39:

  a5 = v65;
  a7 = v64;
  v33 = v63;
LABEL_40:
  if (v33)
  {
    sub_1D78B60A4();
    sub_1D78B42C4();
    a5(0);
    sub_1D77E56E0(a1, a2);
    return;
  }

  sub_1D78B6094();
  sub_1D78B42C4();
  sub_1D78714C8();
  v47 = swift_allocError();
  *v48 = 3;
  (a7)();
  sub_1D77E56E0(a1, a2);
  v22 = v47;
LABEL_12:
}

uint64_t sub_1D786B608(uint64_t a1)
{
  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D78BCAB0;
  v4 = *(a1 + 80);
  v3 = *(a1 + 88);
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D775ABD4();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  sub_1D78B60A4();
  sub_1D78B42C4();

  MEMORY[0x1EEE9AC00](v5);
  sub_1D78724F4(0, &qword_1EC9CB128, &type metadata for SIWACredentialServiceResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D786B790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D78B6724();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D786B820(uint64_t a1)
{
  v2 = sub_1D7872758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786B85C(uint64_t a1)
{
  v2 = sub_1D7872758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D786B898@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1D78727AC(0, &qword_1EC9CB2C8, sub_1D7872758, &type metadata for ProxyEmailGenerationRequest.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7872758();
  sub_1D78B6874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = sub_1D78B65E4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t sub_1D786BA48(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB2B8, sub_1D7872758, &type metadata for ProxyEmailGenerationRequest.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7872758();
  sub_1D78B6884();
  sub_1D78B6684();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D786BBB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1279346002;
  }

  else
  {
    v3 = 0x59584F5250;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1279346002;
  }

  else
  {
    v5 = 0x59584F5250;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D78B6724();
  }

  return v8 & 1;
}

uint64_t sub_1D786BC4C()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D786BCC4()
{
  sub_1D78B5D14();
}

uint64_t sub_1D786BD28()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

void sub_1D786BDA8(uint64_t *a1@<X8>)
{
  v2 = 1279346002;
  if (!*v1)
  {
    v2 = 0x59584F5250;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D786BE8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 4541768;
  if (v2 != 1)
  {
    v4 = 1096239443;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x4D455F4552414853;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB000000004C4941;
  }

  v7 = 0xE300000000000000;
  v8 = 4541768;
  if (*a2 != 1)
  {
    v8 = 1096239443;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x4D455F4552414853;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB000000004C4941;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D78B6724();
  }

  return v11 & 1;
}

uint64_t sub_1D786BF74()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D786C010()
{
  sub_1D78B5D14();
}

uint64_t sub_1D786C098()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D786C130@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D786FF98();
  *a1 = result;
  return result;
}

void sub_1D786C160(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000004C4941;
  v4 = 0xE300000000000000;
  v5 = 4541768;
  if (v2 != 1)
  {
    v5 = 1096239443;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4D455F4552414853;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D786C268(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7079546E6974706FLL;
    v6 = 0x616D4579786F7270;
    if (a1 != 8)
    {
      v6 = 0x6F666E4961776973;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7972746E756F63;
    if (a1 != 5)
    {
      v7 = 0x65676175676E616CLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x496C656E6E616863;
    v2 = 0x6573616863727570;
    v3 = 0x6449706169;
    if (a1 != 3)
    {
      v3 = 0x7079546C69616D65;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6C69616D65;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D786C3B0(void *a1)
{
  v2 = v1;
  sub_1D78727AC(0, &qword_1EC9CB270, sub_1D7872370, &type metadata for PublisherWebAccessOptInRequest.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7872370();
  sub_1D78B6884();
  LOBYTE(v17) = 0;
  v9 = v15[1];
  sub_1D78B6684();
  if (!v9)
  {
    LOBYTE(v17) = 1;
    sub_1D78B6654();
    LOBYTE(v17) = 2;
    sub_1D78B6684();
    LOBYTE(v17) = 3;
    sub_1D78B6684();
    LOBYTE(v17) = *(v2 + 64);
    LOBYTE(v16[0]) = 4;
    sub_1D78723C4();
    sub_1D78B6664();
    LOBYTE(v17) = 5;
    sub_1D78B6654();
    LOBYTE(v17) = 6;
    sub_1D78B6654();
    LOBYTE(v17) = *(v2 + 104);
    LOBYTE(v16[0]) = 7;
    sub_1D7872418();
    sub_1D78B6664();
    *&v17 = *(v2 + 112);
    LOBYTE(v16[0]) = 8;
    type metadata accessor for ProxyEmailRequestInfo();
    sub_1D78728BC(&qword_1EC9CB290, 255, type metadata accessor for ProxyEmailRequestInfo);
    sub_1D78B6664();
    v11 = *(v2 + 136);
    v12 = *(v2 + 168);
    v22[2] = *(v2 + 152);
    v22[3] = v12;
    v22[4] = *(v2 + 184);
    v22[0] = *(v2 + 120);
    v22[1] = v11;
    v13 = *(v2 + 136);
    v14 = *(v2 + 168);
    v19 = *(v2 + 152);
    v20 = v14;
    v21 = *(v2 + 184);
    v17 = *(v2 + 120);
    v18 = v13;
    v23 = 9;
    sub_1D787246C(v22, v16);
    sub_1D7872544();
    sub_1D78B6664();
    v16[2] = v19;
    v16[3] = v20;
    v16[4] = v21;
    v16[0] = v17;
    v16[1] = v18;
    sub_1D7871744(v16, &qword_1EC9CB298, &type metadata for SignInWithAppleInfo, MEMORY[0x1E69E6720], sub_1D78724F4);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D786C7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D786FFE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D786C7E4(uint64_t a1)
{
  v2 = sub_1D7872370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786C820(uint64_t a1)
{
  v2 = sub_1D7872370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D786C85C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7870328(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11;
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1D786C944(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB190, sub_1D7871908, &type metadata for SignInWithAppleInfo.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7871908();
  sub_1D78B6884();
  v14 = 0;
  sub_1D78B6684();
  if (!v1)
  {
    v13 = 1;
    sub_1D78B6684();
    v12 = 2;
    sub_1D78B6684();
    v11 = 3;
    sub_1D78B6654();
    v10 = 4;
    sub_1D78B6654();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D786CB30(void *a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a3;
  sub_1D78727AC(0, &qword_1EC9CB2D0, sub_1D7872598, &type metadata for PublisherWebAccessOptInResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7872598();
  sub_1D78B6884();
  v13 = 0;
  sub_1D78B6694();
  if (!v3)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_1D78724F4(0, &qword_1EC9CB140, &type metadata for Diagnosis, MEMORY[0x1E69E62F8]);
    sub_1D78719C4(&qword_1EC9CB1B0, sub_1D7871A54);
    sub_1D78B6664();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1D786CD40()
{
  v1 = *v0;
  v2 = 0x797469746E656469;
  v3 = 0x6E65644972657375;
  v4 = 0x614E796C696D6166;
  if (v1 != 3)
  {
    v4 = 0x6D614E6E65766967;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1D786CE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7870B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D786CE28(uint64_t a1)
{
  v2 = sub_1D7871908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786CE64(uint64_t a1)
{
  v2 = sub_1D7871908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D786CEA0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7870CDC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1D786CF04()
{
  if (*v0)
  {
    return 0x74736F6E67616964;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_1D786CF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D78B6724() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736F6E67616964 && a2 == 0xEB00000000736369)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D78B6724();

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

uint64_t sub_1D786D020(uint64_t a1)
{
  v2 = sub_1D7872598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786D05C(uint64_t a1)
{
  v2 = sub_1D7872598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D786D098@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D78710E4(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

NewsSubscription::Diagnosis::Category_optional __swiftcall Diagnosis.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D78B6594();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Diagnosis.Category.rawValue.getter()
{
  v1 = 0x524556524553;
  if (*v0 != 1)
  {
    v1 = 0x4E574F4E4B4E55;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x54534555514552;
  }
}

uint64_t sub_1D786D1A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x524556524553;
  if (v2 != 1)
  {
    v4 = 0x4E574F4E4B4E55;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x54534555514552;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x524556524553;
  if (*a2 != 1)
  {
    v8 = 0x4E574F4E4B4E55;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x54534555514552;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D78B6724();
  }

  return v11 & 1;
}

uint64_t sub_1D786D29C()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D786D33C()
{
  sub_1D78B5D14();
}

uint64_t sub_1D786D3C8()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

void sub_1D786D470(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x524556524553;
  if (v2 != 1)
  {
    v5 = 0x4E574F4E4B4E55;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x54534555514552;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

NewsSubscription::Diagnosis::Type_optional __swiftcall Diagnosis.Type.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D78B6594();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t Diagnosis.Type.rawValue.getter()
{
  if (*v0)
  {
    return 0x524F525245;
  }

  else
  {
    return 0x474E494E524157;
  }
}

uint64_t sub_1D786D618(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x524F525245;
  }

  else
  {
    v3 = 0x474E494E524157;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x524F525245;
  }

  else
  {
    v5 = 0x474E494E524157;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D78B6724();
  }

  return v8 & 1;
}

uint64_t sub_1D786D6BC()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D786D73C()
{
  sub_1D78B5D14();
}

uint64_t sub_1D786D7A8()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D786D830@<X0>(char *a1@<X8>)
{
  v2 = sub_1D78B6594();

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

void sub_1D786D88C(uint64_t *a1@<X8>)
{
  v2 = 0x474E494E524157;
  if (*v1)
  {
    v2 = 0x524F525245;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Diagnosis.id.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Diagnosis.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Diagnosis.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Diagnosis.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_1D786DAF8()
{
  v1 = 0x79726F6765746163;
  v2 = 0x6567617373656DLL;
  if (*v0 != 2)
  {
    v2 = 1701869940;
  }

  if (*v0)
  {
    v1 = 25705;
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

uint64_t sub_1D786DB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7871334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D786DB88(uint64_t a1)
{
  v2 = sub_1D786DE28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786DBC4(uint64_t a1)
{
  v2 = sub_1D786DE28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Diagnosis.encode(to:)(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB080, sub_1D786DE28, &type metadata for Diagnosis.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v17 = *(v1 + 2);
  v18 = v9;
  v10 = *(v1 + 3);
  v15 = *(v1 + 4);
  v16 = v10;
  HIDWORD(v14) = v1[40];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D786DE28();
  sub_1D78B6884();
  v25 = v8;
  v24 = 0;
  sub_1D786DE7C();
  v11 = v19;
  sub_1D78B6664();
  if (!v11)
  {
    v12 = BYTE4(v14);
    v23 = 1;
    sub_1D78B6654();
    v22 = 2;
    sub_1D78B6654();
    v21 = v12;
    v20 = 3;
    sub_1D786DED0();
    sub_1D78B6664();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D786DE28()
{
  result = qword_1EC9CB088;
  if (!qword_1EC9CB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB088);
  }

  return result;
}

unint64_t sub_1D786DE7C()
{
  result = qword_1EC9CB090;
  if (!qword_1EC9CB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB090);
  }

  return result;
}

unint64_t sub_1D786DED0()
{
  result = qword_1EC9CB098;
  if (!qword_1EC9CB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB098);
  }

  return result;
}

uint64_t Diagnosis.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v26 = a2;
  sub_1D78727AC(0, &qword_1EC9CB0A0, sub_1D786DE28, &type metadata for Diagnosis.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D786DE28();
  sub_1D78B6874();
  if (!v2)
  {
    v9 = v6;
    v31 = 0;
    sub_1D786E224();
    v10 = v5;
    sub_1D78B65C4();
    v11 = v32;
    v30 = 1;
    v12 = sub_1D78B65A4();
    v15 = v14;
    v25 = v12;
    v29 = 2;
    v16 = sub_1D78B65A4();
    v18 = v17;
    v24 = v16;
    v27 = 3;
    sub_1D786E278();
    sub_1D78B65C4();
    (*(v9 + 8))(v8, v10);
    v19 = v28;
    v20 = v11;
    v21 = v26;
    *v26 = v20;
    v22 = v24;
    *(v21 + 1) = v25;
    *(v21 + 2) = v15;
    *(v21 + 3) = v22;
    *(v21 + 4) = v18;
    v21[40] = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D786E224()
{
  result = qword_1EC9CB0A8;
  if (!qword_1EC9CB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0A8);
  }

  return result;
}

unint64_t sub_1D786E278()
{
  result = qword_1EC9CB0B0;
  if (!qword_1EC9CB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0B0);
  }

  return result;
}

unint64_t sub_1D786E2D0()
{
  result = qword_1EC9CB0B8;
  if (!qword_1EC9CB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0B8);
  }

  return result;
}

unint64_t sub_1D786E328()
{
  result = qword_1EC9CB0C0;
  if (!qword_1EC9CB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0C0);
  }

  return result;
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

uint64_t sub_1D786E3C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D786E41C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D786E4AC()
{
  if (*v0)
  {
    return 0x616D4579786F7270;
  }

  else
  {
    return 0x74736F6E67616964;
  }
}

uint64_t sub_1D786E4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736F6E67616964 && a2 == 0xEB00000000736369;
  if (v6 || (sub_1D78B6724() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616D4579786F7270 && a2 == 0xEE006F666E496C69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D78B6724();

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

uint64_t sub_1D786E5E4(uint64_t a1)
{
  v2 = sub_1D78717B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786E620(uint64_t a1)
{
  v2 = sub_1D78717B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D786E65C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D786E6C0(void *a1)
{
  v3 = v1;
  sub_1D78727AC(0, &qword_1EC9CB1A8, sub_1D78717B8, &type metadata for ProxyEmailGenerationResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78717B8();
  sub_1D78B6884();
  v13 = *(v3 + 16);
  v12 = 0;
  sub_1D78724F4(0, &qword_1EC9CB140, &type metadata for Diagnosis, MEMORY[0x1E69E62F8]);
  sub_1D78719C4(&qword_1EC9CB1B0, sub_1D7871A54);
  sub_1D78B6664();
  if (!v2)
  {
    v13 = *(v3 + 24);
    v12 = 1;
    type metadata accessor for ProxyEmailResponseInfo();
    sub_1D78728BC(&qword_1EC9CB1C0, 255, type metadata accessor for ProxyEmailResponseInfo);
    sub_1D78B6664();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D786E920(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB130, sub_1D78717B8, &type metadata for ProxyEmailGenerationResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v12 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v8 = a1[3];
  v13 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1D78717B8();
  sub_1D78B6874();
  if (!v2)
  {
    sub_1D78724F4(0, &qword_1EC9CB140, &type metadata for Diagnosis, MEMORY[0x1E69E62F8]);
    v14 = 0;
    sub_1D78719C4(&qword_1EC9CB148, sub_1D787180C);
    v9 = v12;
    sub_1D78B65C4();
    *(v1 + 16) = v15;

    type metadata accessor for ProxyEmailResponseInfo();
    v14 = 1;
    sub_1D78728BC(&qword_1EC9CB158, 255, type metadata accessor for ProxyEmailResponseInfo);
    sub_1D78B65C4();
    (*(v5 + 8))(v7, v9);
    *(v1 + 24) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v1;
}

uint64_t sub_1D786EC60()
{
  v1 = 0x616D4579786F7270;
  v2 = 0x4564726177726F66;
  if (*v0 != 2)
  {
    v2 = 0x64496D616574;
  }

  if (*v0)
  {
    v1 = 0x64496E69616D6F64;
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

uint64_t sub_1D786ECE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D78725EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D786ED0C(uint64_t a1)
{
  v2 = sub_1D7871860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786ED48(uint64_t a1)
{
  v2 = sub_1D7871860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D786ED84()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D786EDF8(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB1A0, sub_1D7871860, &type metadata for ProxyEmailResponseInfo.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7871860();
  sub_1D78B6884();
  v13 = 0;

  sub_1D78B6684();
  if (v1)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v12 = 1;

    sub_1D78B6684();

    v11 = 2;

    sub_1D78B6684();

    v10 = 3;

    sub_1D78B6654();
    (*(v5 + 8))(v7, v4);
  }
}

void *sub_1D786F05C(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB160, sub_1D7871860, &type metadata for ProxyEmailResponseInfo.CodingKeys, MEMORY[0x1E69E6F48]);
  v18 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v1[8] = 0;
  v1[9] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7871860();
  sub_1D78B6874();
  if (v2)
  {

    type metadata accessor for ProxyEmailResponseInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v5;
    v22 = 0;
    v9 = v18;
    v1[2] = sub_1D78B65E4();
    v1[3] = v10;
    v21 = 1;
    v1[4] = sub_1D78B65E4();
    v1[5] = v11;
    v20 = 2;
    v1[6] = sub_1D78B65E4();
    v1[7] = v13;
    v19 = 3;
    v14 = sub_1D78B65A4();
    v16 = v15;
    (*(v8 + 8))(v7, v9);
    v1[8] = v14;
    v1[9] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1D786F390()
{
  if (*v0)
  {
    return 0x64496D616574;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1D786F3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D78B6724() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64496D616574 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D78B6724();

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

uint64_t sub_1D786F490(uint64_t a1)
{
  v2 = sub_1D78718B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786F4CC(uint64_t a1)
{
  v2 = sub_1D78718B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D786F508()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D786F56C(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB198, sub_1D78718B4, &type metadata for ProxyEmailRequestInfo.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78718B4();
  sub_1D78B6884();
  v11 = 0;

  sub_1D78B6684();
  if (!v1)
  {

    v10 = 1;

    sub_1D78B6654();
  }

  (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D786F774()
{
  result = qword_1EC9CB0D0;
  if (!qword_1EC9CB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0D0);
  }

  return result;
}

void *sub_1D786F7C8(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB170, sub_1D78718B4, &type metadata for ProxyEmailRequestInfo.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v1[4] = 0;
  v1[5] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78718B4();
  sub_1D78B6874();
  if (v2)
  {

    type metadata accessor for ProxyEmailRequestInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v15;
    v17 = 0;
    v1[2] = sub_1D78B65E4();
    v1[3] = v10;
    v16 = 1;
    v11 = sub_1D78B65A4();
    v13 = v12;
    (*(v8 + 8))(v7, v5);
    v1[4] = v11;
    v1[5] = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1D786FA40@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2(0);
  swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_1D786FADC()
{
  result = qword_1EC9CB0D8;
  if (!qword_1EC9CB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0D8);
  }

  return result;
}

unint64_t sub_1D786FB34()
{
  result = qword_1EC9CB0E0;
  if (!qword_1EC9CB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0E0);
  }

  return result;
}

unint64_t sub_1D786FB88()
{
  v32[0] = sub_1D78B33C4();
  v0 = *(v32[0] - 8);
  MEMORY[0x1EEE9AC00](v32[0]);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7871654(0, &qword_1EE08FA40, sub_1D78716B8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78C0D80;
  *(inited + 32) = 0x414E2D5050412D58;
  v32[1] = inited + 32;
  *(inited + 40) = 0xEA0000000000454DLL;
  sub_1D78724F4(0, &qword_1EE08FA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v33 = xmmword_1D78BCAB0;
  *(v4 + 16) = xmmword_1D78BCAB0;
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = sub_1D78B5C74();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  *(inited + 48) = v4;
  strcpy((inited + 56), "X-DEVICE-NAME");
  *(inited + 70) = -4864;
  v10 = swift_allocObject();
  *(v10 + 16) = v33;
  v11 = objc_opt_self();
  v12 = [v11 currentDevice];
  v13 = [v12 model];

  v14 = sub_1D78B5C74();
  v16 = v15;

  *(v10 + 32) = v14;
  *(v10 + 40) = v16;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001D78DD000;
  v17 = swift_allocObject();
  *(v17 + 16) = v33;
  v18 = [v11 currentDevice];
  v19 = [v18 systemVersion];

  v20 = sub_1D78B5C74();
  v22 = v21;

  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  *(inited + 96) = v17;
  strcpy((inited + 104), "X-REQUEST-ID");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v23 = swift_allocObject();
  *(v23 + 16) = v33;
  sub_1D78B33B4();
  v24 = sub_1D78B33A4();
  v26 = v25;
  (*(v0 + 8))(v2, v32[0]);
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  *(inited + 120) = v23;
  *(inited + 128) = sub_1D78B5C74();
  *(inited + 136) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v33;
  *(v28 + 32) = sub_1D78B5C74();
  *(v28 + 40) = v29;
  *(inited + 144) = v28;
  v30 = sub_1D77FFB84(inited);
  swift_setDeallocating();
  sub_1D78716B8();
  swift_arrayDestroy();
  return v30;
}

uint64_t sub_1D786FF98()
{
  v0 = sub_1D78B6594();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D786FFE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000064 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEF74706965636552 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449706169 && a2 == 0xE500000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7079546C69616D65 && a2 == 0xE900000000000065 || (sub_1D78B6724() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7079546E6974706FLL && a2 == 0xE900000000000065 || (sub_1D78B6724() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x616D4579786F7270 && a2 == 0xEE006F666E496C69 || (sub_1D78B6724() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F666E4961776973 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v5 = sub_1D78B6724();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1D7870328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D78727AC(0, &qword_1EC9CB2D8, sub_1D7872370, &type metadata for PublisherWebAccessOptInRequest.CodingKeys, MEMORY[0x1E69E6F48]);
  v63 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - v7;
  v9 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D7872370();
  sub_1D78B6874();
  if (v2)
  {
    v113 = v2;
    __swift_destroy_boxed_opaque_existential_1(v64);
LABEL_4:

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    return sub_1D7871744(&v79, &unk_1EC9CB298, &type metadata for SignInWithAppleInfo, MEMORY[0x1E69E6720], sub_1D78724F4);
  }

  v62 = v6;
  LOBYTE(v79) = 0;
  v10 = v63;
  v12 = sub_1D78B65E4();
  v61 = v13;
  LOBYTE(v79) = 1;
  v14 = sub_1D78B65A4();
  v15 = v62;
  v16 = v14;
  v60 = v17;
  LOBYTE(v79) = 2;
  *&v59 = sub_1D78B65E4();
  *(&v59 + 1) = v18;
  LOBYTE(v79) = 3;
  v19 = sub_1D78B65E4();
  v113 = 0;
  v21 = v20;
  v58 = v19;
  LOBYTE(v66) = 4;
  sub_1D7872814();
  v22 = v113;
  sub_1D78B65C4();
  if (v22)
  {
    v113 = v22;
    (*(v15 + 8))(v8, v10);
    __swift_destroy_boxed_opaque_existential_1(v64);
LABEL_8:

    goto LABEL_4;
  }

  v57 = v16;
  v56 = v79;
  LOBYTE(v79) = 5;
  v23 = sub_1D78B65A4();
  v25 = v24;
  v54 = v12;
  v55 = v23;
  LOBYTE(v79) = 6;
  v26 = sub_1D78B65A4();
  v113 = 0;
  v28 = v27;
  v53 = v26;
  LOBYTE(v66) = 7;
  sub_1D7872868();
  v29 = v113;
  sub_1D78B65C4();
  v113 = v29;
  if (v29 || (v52 = v79, type metadata accessor for ProxyEmailRequestInfo(), LOBYTE(v66) = 8, sub_1D78728BC(&qword_1EC9CB2F0, 255, type metadata accessor for ProxyEmailRequestInfo), v30 = v113, sub_1D78B65C4(), (v113 = v30) != 0))
  {
    (*(v15 + 8))(v8, v10);
    __swift_destroy_boxed_opaque_existential_1(v64);
    goto LABEL_8;
  }

  v31 = v79;
  v100 = 9;
  sub_1D7872904();
  v32 = v113;
  sub_1D78B65C4();
  v113 = v32;
  if (v32)
  {
    (*(v62 + 8))(v8, v63);
    __swift_destroy_boxed_opaque_existential_1(v64);
    goto LABEL_8;
  }

  (*(v62 + 8))(v8, v63);
  v62 = v102;
  v63 = v101;
  v50 = v104;
  v51 = v103;
  v48 = v106;
  v49 = v105;
  v46 = v108;
  v47 = v107;
  v44 = v110;
  v45 = v109;
  memset(v65, 0, 80);
  sub_1D7871744(v65, &unk_1EC9CB298, &type metadata for SignInWithAppleInfo, MEMORY[0x1E69E6720], sub_1D78724F4);
  v33 = v54;
  v34 = v60;
  *&v66 = v54;
  *(&v66 + 1) = v61;
  *&v67 = v57;
  *(&v67 + 1) = v60;
  v35 = *(&v59 + 1);
  v68 = v59;
  *&v69 = v58;
  *(&v69 + 1) = v21;
  LOBYTE(v70) = v56;
  *(&v70 + 1) = v112[0];
  DWORD1(v70) = *(v112 + 3);
  *(&v70 + 1) = v55;
  *&v71 = v25;
  *(&v71 + 1) = v53;
  *&v72 = v28;
  BYTE8(v72) = v52;
  *(&v72 + 9) = *v111;
  HIDWORD(v72) = *&v111[3];
  *&v73 = v31;
  *(&v73 + 1) = v63;
  *&v74 = v62;
  *(&v74 + 1) = v51;
  *&v75 = v50;
  *(&v75 + 1) = v49;
  *&v76 = v48;
  *(&v76 + 1) = v47;
  *&v77 = v46;
  *(&v77 + 1) = v45;
  v78 = v44;
  sub_1D7872958(&v66, &v79);
  __swift_destroy_boxed_opaque_existential_1(v64);
  *&v79 = v33;
  *(&v79 + 1) = v61;
  *&v80 = v57;
  *(&v80 + 1) = v34;
  *&v81 = v59;
  *(&v81 + 1) = v35;
  *&v82 = v58;
  *(&v82 + 1) = v21;
  LOBYTE(v83) = v56;
  *(&v83 + 1) = v112[0];
  DWORD1(v83) = *(v112 + 3);
  *(&v83 + 1) = v55;
  v84 = v25;
  v85 = v53;
  v86 = v28;
  v87 = v52;
  *&v88[3] = *&v111[3];
  *v88 = *v111;
  v89 = v31;
  v90 = v63;
  v91 = v62;
  v92 = v51;
  v93 = v50;
  v94 = v49;
  v95 = v48;
  v96 = v47;
  v97 = v46;
  v98 = v45;
  v99 = v44;
  result = sub_1D7871570(&v79);
  v36 = v75;
  v37 = v77;
  *(a2 + 160) = v76;
  *(a2 + 176) = v37;
  v38 = v71;
  v39 = v73;
  v40 = v74;
  *(a2 + 96) = v72;
  *(a2 + 112) = v39;
  *(a2 + 128) = v40;
  *(a2 + 144) = v36;
  v41 = v69;
  v42 = v70;
  *(a2 + 32) = v68;
  *(a2 + 48) = v41;
  *(a2 + 192) = v78;
  *(a2 + 64) = v42;
  *(a2 + 80) = v38;
  v43 = v67;
  *a2 = v66;
  *(a2 + 16) = v43;
  return result;
}

uint64_t sub_1D7870B00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001D78DD6F0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E656469 && a2 == 0xED00006E656B6F54 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D78B6724();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D7870CDC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v37 = a2;
  sub_1D78727AC(0, &qword_1EC9CB180, sub_1D7871908, &type metadata for SignInWithAppleInfo.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7871908();
  sub_1D78B6874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  LOBYTE(v43[0]) = 0;
  v10 = v5;
  v11 = sub_1D78B65E4();
  v13 = v12;
  LOBYTE(v43[0]) = 1;
  v14 = sub_1D78B65E4();
  v36 = v15;
  v34 = v14;
  LOBYTE(v43[0]) = 2;
  v33 = sub_1D78B65E4();
  v35 = v16;
  LOBYTE(v43[0]) = 3;
  *&v32 = sub_1D78B65A4();
  *(&v32 + 1) = v17;
  v44 = 4;
  v18 = sub_1D78B65A4();
  v19 = *(v9 + 8);
  v20 = v18;
  v31 = v21;
  v19(v8, v10);
  *&v38 = v11;
  *(&v38 + 1) = v13;
  v22 = v34;
  v23 = v36;
  *&v39 = v34;
  *(&v39 + 1) = v36;
  *&v40 = v33;
  *(&v40 + 1) = v35;
  v24 = *(&v32 + 1);
  v41 = v32;
  v25 = v31;
  *&v42 = v20;
  *(&v42 + 1) = v31;
  sub_1D787195C(&v38, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v43[0] = v11;
  v43[1] = v13;
  v43[2] = v22;
  v43[3] = v23;
  v43[4] = v33;
  v43[5] = v35;
  v43[6] = v32;
  v43[7] = v24;
  v43[8] = v20;
  v43[9] = v25;
  result = sub_1D7871994(v43);
  v27 = v41;
  v28 = v37;
  v37[2] = v40;
  v28[3] = v27;
  v28[4] = v42;
  v29 = v39;
  *v28 = v38;
  v28[1] = v29;
  return result;
}

uint64_t sub_1D78710E4(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB2A8, sub_1D7872598, &type metadata for PublisherWebAccessOptInResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1D7872598();
  sub_1D78B6874();
  if (!v1)
  {
    v10[31] = 0;
    LOBYTE(v8) = sub_1D78B65F4();
    sub_1D78724F4(0, &qword_1EC9CB140, &type metadata for Diagnosis, MEMORY[0x1E69E62F8]);
    v10[30] = 1;
    sub_1D78719C4(&qword_1EC9CB148, sub_1D787180C);
    sub_1D78B65C4();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8 & 1;
}

uint64_t sub_1D7871334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D78B6724();

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

unint64_t sub_1D78714C8()
{
  result = qword_1EC9CB0E8;
  if (!qword_1EC9CB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0E8);
  }

  return result;
}

unint64_t sub_1D787151C()
{
  result = qword_1EC9CB0F0;
  if (!qword_1EC9CB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0F0);
  }

  return result;
}

uint64_t sub_1D78715AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1D7871600()
{
  result = qword_1EC9CB0F8;
  if (!qword_1EC9CB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0F8);
  }

  return result;
}

void sub_1D7871654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D78716B8()
{
  if (!qword_1EE0900E8)
  {
    sub_1D78724F4(255, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0900E8);
    }
  }
}

uint64_t sub_1D7871744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D78717B8()
{
  result = qword_1EC9CB138;
  if (!qword_1EC9CB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB138);
  }

  return result;
}

unint64_t sub_1D787180C()
{
  result = qword_1EC9CB150;
  if (!qword_1EC9CB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB150);
  }

  return result;
}

unint64_t sub_1D7871860()
{
  result = qword_1EC9CB168;
  if (!qword_1EC9CB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB168);
  }

  return result;
}

unint64_t sub_1D78718B4()
{
  result = qword_1EC9CB178;
  if (!qword_1EC9CB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB178);
  }

  return result;
}

unint64_t sub_1D7871908()
{
  result = qword_1EC9CB188;
  if (!qword_1EC9CB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB188);
  }

  return result;
}

uint64_t sub_1D78719C4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D78724F4(255, &qword_1EC9CB140, &type metadata for Diagnosis, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7871A54()
{
  result = qword_1EC9CB1B8;
  if (!qword_1EC9CB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB1B8);
  }

  return result;
}

unint64_t sub_1D7871AB4()
{
  result = qword_1EC9CB1D8;
  if (!qword_1EC9CB1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB1D8);
  }

  return result;
}

uint64_t objectdestroy_68Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1D7871BA8()
{
  result = qword_1EC9CB1F0;
  if (!qword_1EC9CB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB1F0);
  }

  return result;
}

unint64_t sub_1D7871BFC()
{
  result = qword_1EC9CB1F8;
  if (!qword_1EC9CB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB1F8);
  }

  return result;
}

uint64_t sub_1D7871CB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1D7871D0C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription19SignInWithAppleInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1D7871DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_1D7871E10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}