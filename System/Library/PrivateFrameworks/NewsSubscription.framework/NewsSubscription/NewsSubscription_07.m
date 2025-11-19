uint64_t sub_1D77E4894(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_1D78B6454();
    MEMORY[0x1DA702FF0](0xD00000000000004DLL, 0x80000001D78D5BD0);
    MEMORY[0x1DA702FF0](a3, a4);
    MEMORY[0x1DA702FF0](0xD000000000000010, 0x80000001D78D5C20);
    MEMORY[0x1DA702FF0](a1, a2);
    v9 = 0x200A5D202020200ALL;
    v10 = 0xEC0000007D0A7D20;
  }

  else
  {
    sub_1D78B6454();
    MEMORY[0x1DA702FF0](0xD00000000000004DLL, 0x80000001D78D5BD0);
    MEMORY[0x1DA702FF0](a3, a4);
    v9 = 0xD000000000000014;
    v10 = 0x80000001D78D5C40;
  }

  MEMORY[0x1DA702FF0](v9, v10);
  return 0;
}

uint64_t sub_1D77E49F4()
{
  v1 = v0;
  sub_1D7744248(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v77 - v3;

  v5 = sub_1D78B3F84();

  v6 = *(v5 + 16);

  if (v6)
  {
    v78 = v4;
    v7 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_lastSeenBestOffers;
    swift_beginAccess();
    v83 = v7;
    *(v1 + v7) = MEMORY[0x1E69E7CC8];

    v8 = sub_1D78B3F84();

    v9 = 0;
    v11 = v8 + 64;
    v10 = *(v8 + 64);
    v81 = v1;
    v82 = v8;
    v12 = 1 << *(v8 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v10;
    v15 = (v12 + 63) >> 6;
    v79 = v15;
    v80 = v8 + 64;
    while (v14)
    {
LABEL_12:
      v36 = __clz(__rbit64(v14)) | (v9 << 6);
      v37 = *(v82 + 48) + 24 * v36;
      v38 = *v37;
      v40 = *(v37 + 8);
      v39 = *(v37 + 16);
      v41 = *(v82 + 56) + 168 * v36;
      v43 = *(v41 + 16);
      v42 = *(v41 + 32);
      v87 = *v41;
      v88 = v43;
      v89 = v42;
      v44 = *(v41 + 96);
      v46 = *(v41 + 48);
      v45 = *(v41 + 64);
      v92 = *(v41 + 80);
      v93 = v44;
      v90 = v46;
      v91 = v45;
      v48 = *(v41 + 128);
      v47 = *(v41 + 144);
      v49 = *(v41 + 112);
      v97 = *(v41 + 160);
      v95 = v48;
      v96 = v47;
      v94 = v49;
      v50 = v83;
      swift_beginAccess();
      sub_1D778CEAC(&v87, v85);
      sub_1D778CEAC(&v87, v85);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = *(v1 + v50);
      v52 = v84;
      *(v1 + v50) = 0x8000000000000000;
      v53 = sub_1D777BE68(v38, v40, v39);
      v55 = v52[2];
      v56 = (v54 & 1) == 0;
      v57 = __OFADD__(v55, v56);
      v58 = v55 + v56;
      if (v57)
      {
        goto LABEL_24;
      }

      v59 = v54;
      if (v52[3] >= v58)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v73 = v53;
          sub_1D782F9D8();
          v53 = v73;
        }
      }

      else
      {
        sub_1D782CA00(v58, isUniquelyReferenced_nonNull_native);
        v53 = sub_1D777BE68(v38, v40, v39);
        if ((v59 & 1) != (v60 & 1))
        {
          goto LABEL_26;
        }
      }

      if (v59)
      {
        v16 = v53;

        v17 = v84;
        v18 = v84[7] + 168 * v16;
        v20 = *(v18 + 16);
        v19 = *(v18 + 32);
        v85[0] = *v18;
        v85[1] = v20;
        v85[2] = v19;
        v21 = *(v18 + 96);
        v23 = *(v18 + 48);
        v22 = *(v18 + 64);
        v85[5] = *(v18 + 80);
        v85[6] = v21;
        v85[3] = v23;
        v85[4] = v22;
        v25 = *(v18 + 128);
        v24 = *(v18 + 144);
        v26 = *(v18 + 160);
        v85[7] = *(v18 + 112);
        v86 = v26;
        v85[8] = v25;
        v85[9] = v24;
        v27 = v87;
        v28 = v89;
        *(v18 + 16) = v88;
        *(v18 + 32) = v28;
        *v18 = v27;
        v29 = v90;
        v30 = v91;
        v31 = v93;
        *(v18 + 80) = v92;
        *(v18 + 96) = v31;
        *(v18 + 48) = v29;
        *(v18 + 64) = v30;
        v32 = v94;
        v33 = v95;
        v34 = v96;
        *(v18 + 160) = v97;
        *(v18 + 128) = v33;
        *(v18 + 144) = v34;
        *(v18 + 112) = v32;
        sub_1D778D0B0(v85);
      }

      else
      {
        v17 = v84;
        v84[(v53 >> 6) + 8] |= 1 << v53;
        v61 = v17[6] + 24 * v53;
        *v61 = v38;
        *(v61 + 8) = v40;
        *(v61 + 16) = v39;
        v62 = v17[7] + 168 * v53;
        v64 = v88;
        v63 = v89;
        *v62 = v87;
        *(v62 + 16) = v64;
        *(v62 + 32) = v63;
        v65 = v93;
        v67 = v90;
        v66 = v91;
        *(v62 + 80) = v92;
        *(v62 + 96) = v65;
        *(v62 + 48) = v67;
        *(v62 + 64) = v66;
        v68 = v94;
        v69 = v95;
        v70 = v96;
        *(v62 + 160) = v97;
        *(v62 + 128) = v69;
        *(v62 + 144) = v70;
        *(v62 + 112) = v68;
        v71 = v17[2];
        v57 = __OFADD__(v71, 1);
        v72 = v71 + 1;
        if (v57)
        {
          goto LABEL_25;
        }

        v17[2] = v72;
      }

      v14 &= v14 - 1;
      v1 = v81;
      *(v81 + v83) = v17;
      swift_endAccess();
      sub_1D778D0B0(&v87);
      v15 = v79;
      v11 = v80;
    }

    while (1)
    {
      v35 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v35 >= v15)
      {

        v4 = v78;
        goto LABEL_22;
      }

      v14 = *(v11 + 8 * v35);
      ++v9;
      if (v14)
      {
        v9 = v35;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    result = sub_1D78B6784();
    __break(1u);
  }

  else
  {
LABEL_22:
    sub_1D78B3384();
    v74 = sub_1D78B3394();
    (*(*(v74 - 8) + 56))(v4, 0, 1, v74);
    v75 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_lastSessionEndTime;
    swift_beginAccess();
    sub_1D77E5A94(v4, v1 + v75);
    return swift_endAccess();
  }

  return result;
}

id sub_1D77E4ECC(void *a1)
{
  v3 = sub_1D78B33C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = [a1 isNetworkReachable];
  if (result)
  {
    sub_1D78B33B4();
    v8 = sub_1D78B33A4();
    v10 = v9;
    (*(v4 + 8))(v6, v3);
    v11 = (v1 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_deduperToken);
    *v11 = v8;
    v11[1] = v10;

    if (qword_1EE093E80 != -1)
    {
      swift_once();
    }

    v13[0] = byte_1EE09C310;
    v14 = qword_1EE09C318;
    v15 = unk_1EE09C320;

    sub_1D775A8FC(v13);
  }

  return result;
}

unint64_t sub_1D77E5174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for OfferAction();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1D774FDC0(a4, &unk_1EC9CA418, type metadata accessor for OfferAction, MEMORY[0x1E69E6BC0]);
  }

  if (v17 < 1)
  {
    return sub_1D774FDC0(a4, &unk_1EC9CA418, type metadata accessor for OfferAction, MEMORY[0x1E69E6BC0]);
  }

  result = sub_1D778CF14(a4, v15);
  if (v12 >= v17)
  {
    return sub_1D774FDC0(a4, &unk_1EC9CA418, type metadata accessor for OfferAction, MEMORY[0x1E69E6BC0]);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t _s16NewsSubscription19OfferRefreshContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = OfferPlacement.rawValue.getter();
  v8 = v7;
  if (v6 == OfferPlacement.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_1D78B6724();

    result = 0;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  if (v2)
  {
    if (v4 && (v3 == v5 && v2 == v4 || (sub_1D78B6724() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D77E5418(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1D77E5474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1D77E55A8()
{
  result = qword_1EE094B28;
  if (!qword_1EE094B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094B28);
  }

  return result;
}

void sub_1D77E55FC()
{
  if (!qword_1EE08FB70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE08FB70);
    }
  }
}

uint64_t sub_1D77E567C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77E56E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D775DD6C(a1, a2);
  }

  return a1;
}

void sub_1D77E56F4()
{
  if (!qword_1EC9CA430)
  {
    sub_1D773F004(255, &qword_1EE08FBB8);
    v0 = sub_1D78B5BF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CA430);
    }
  }
}

uint64_t sub_1D77E5878(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D775DEFC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D77E58E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA703220](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D78A6C8C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D77E5980(uint64_t a1, uint64_t a2)
{
  sub_1D7744248(0, qword_1EE094C88, type metadata accessor for OfferAction, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77E5A14(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D775DEFC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D77E5A94(uint64_t a1, uint64_t a2)
{
  sub_1D7744248(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77E5B28()
{
  v1 = v0;
  v2 = sub_1D78B33C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D78B3F94();

  sub_1D78B3F94();

  sub_1D78B3F94();

  v6 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_lastSeenBestOffers;
  swift_beginAccess();
  *(v1 + v6) = MEMORY[0x1E69E7CC8];

  sub_1D78B33B4();
  v7 = sub_1D78B33A4();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = (v1 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_deduperToken);
  *v10 = v7;
  v10[1] = v9;
}

uint64_t sub_1D77E5CB0()
{
  v1 = sub_1D78B33C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D78B33B4();
  v5 = sub_1D78B33A4();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v8 = (v0 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_deduperToken);
  *v8 = v5;
  v8[1] = v7;

  if (qword_1EE093E80 != -1)
  {
    swift_once();
  }

  v11[0] = byte_1EE09C310;
  v12 = qword_1EE09C318;
  v13 = unk_1EE09C320;

  sub_1D775A8FC(v11);
}

uint64_t getEnumTagSinglePayload for OfferManager.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OfferManager.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D77E5F6C()
{
  result = qword_1EC9CA438;
  if (!qword_1EC9CA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA438);
  }

  return result;
}

uint64_t WebSubscriptionExpiredAlert.title.getter()
{
  v1 = *v0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v5 = [v1 name];
  v6 = sub_1D78B5C74();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1D78B5C94();

  return v9;
}

uint64_t WebSubscriptionExpiredAlert.message.getter()
{
  v1 = *v0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCB50;
  v5 = [v1 name];
  v6 = sub_1D78B5C74();
  v8 = v7;

  v9 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D775ABD4();
  *(v4 + 64) = v10;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v11 = [v1 name];
  v12 = sub_1D78B5C74();
  v14 = v13;

  *(v4 + 96) = v9;
  *(v4 + 104) = v10;
  *(v4 + 72) = v12;
  *(v4 + 80) = v14;
  v15 = sub_1D78B5C94();

  return v15;
}

uint64_t WebSubscriptionExpiredAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D77E6384()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77E647C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t dispatch thunk of PostPurchaseOnboardingManagerType.startOnboarding(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))();
}

{
  return (*(a5 + 24))();
}

void sub_1D77E65C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a1;
  v25 = a2;
  v23 = *v3;
  v6 = sub_1D78B3E24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69D6810];
  sub_1D77442AC(0, &qword_1EE08E4D8, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D78BCB50;
  sub_1D78B3DF4();
  sub_1D78B3E14();
  v26 = v11;
  sub_1D77E85CC(&qword_1EE08F240, 255, MEMORY[0x1E69D6810]);
  sub_1D77442AC(0, &unk_1EE08E608, v10, MEMORY[0x1E69E62F8]);
  sub_1D778F8B0();
  sub_1D78B6324();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v14 = v24;
  v13[2] = v25;
  v13[3] = a3;
  v13[4] = v12;
  v13[5] = v14;

  sub_1D78B3964();

  (*(v7 + 8))(v9, v6);

  if (v4[3])
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D774FE1C();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D78BCAB0;
    v16 = sub_1D77E868C(v14);
    v18 = v17;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1D775ABD4();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_1D78B60A4();
    sub_1D78B42C4();

    sub_1D78B3954();
  }

  else
  {
    sub_1D7752C3C();
    sub_1D78B41F4();

    v19 = sub_1D78B4014();
    sub_1D78B4084();

    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    *(v20 + 24) = v14;

    v21 = sub_1D78B4014();
    sub_1D78B4094();

    v22 = sub_1D78B4014();
    sub_1D78B40E4();
  }
}

uint64_t sub_1D77E6A68(void (*a1)(id), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (v6 = sub_1D77E6B14(a4), , !v6))
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  a1(v6);
}

id sub_1D77E6B14(uint64_t a1)
{
  result = [*(v1 + 120) configuration];
  if (result)
  {
    v4 = result;
    if ([result respondsToSelector_])
    {
      v5 = [v4 paidBundleConfig];
      swift_unknownObjectRelease();
      v6 = [v5 postPurchaseOnboardingConfigurationsByType];
      if (v6)
      {
        v7 = v6;
        sub_1D773F004(0, &qword_1EE08FBD0);
        sub_1D778FCD4();
        sub_1D778FD3C();
        v8 = sub_1D78B5BC4();

        v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
        v10 = v9;
        if (*(v8 + 16))
        {
          v11 = sub_1D777BC98(v9);
          if (v12)
          {
            v13 = *(*(v8 + 56) + 8 * v11);

            return v13;
          }
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D77E6C88()
{
  sub_1D7754E10();
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D77E6CE8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1D78B3394();
  v61 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77442AC(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v53 - v15;
  v17 = sub_1D77E6B14(a3);
  if (v17)
  {
    v18 = v17;
    if (v17 >> 62)
    {
      if (sub_1D78B6534())
      {
LABEL_4:
        v54 = v11;
        v59 = v16;
        if (qword_1EE08FB98 != -1)
        {
          swift_once();
        }

        v19 = qword_1EE09C268;
        sub_1D774FE1C();
        v56 = v20;
        v21 = swift_allocObject();
        v55 = xmmword_1D78BCAB0;
        *(v21 + 16) = xmmword_1D78BCAB0;
        v22 = sub_1D77E868C(a3);
        v24 = v23;
        *(v21 + 56) = MEMORY[0x1E69E6158];
        v57 = sub_1D775ABD4();
        *(v21 + 64) = v57;
        *(v21 + 32) = v22;
        *(v21 + 40) = v24;
        sub_1D78B60A4();
        v58 = v19;
        sub_1D78B42C4();

        if (qword_1EC9C8678 != -1)
        {
          swift_once();
        }

        type metadata accessor for PostPurchaseOnboardingManager();
        sub_1D77E85CC(&qword_1EC9CA448, v25, type metadata accessor for PostPurchaseOnboardingManager);
        sub_1D78B3574();
        v26 = v62;
        v27 = a2[22];
        v28 = [v27 postPurchaseOnboardingLastShownDate];
        if (v28)
        {
          v29 = v28;
          sub_1D78B3364();

          v30 = 0;
        }

        else
        {
          v30 = 1;
        }

        v31 = v61;
        (*(v61 + 56))(v14, v30, 1, v5);
        v60 = v5;
        v32 = v59;
        sub_1D77E87D8(v14, v59);
        if ((v26 & 1) != 0 || (v33 = *(v31 + 48), v33(v32, 1, v60) == 1))
        {
          a2[3] = v18;

          a2[4] = 0;
          sub_1D77E7354();
          sub_1D78B3384();
          v34 = sub_1D78B3324();
          [v27 setPostPurchaseOnboardingLastShownDate_];

          v35 = swift_allocObject();
          *(v35 + 16) = v55;
          v36 = sub_1D78B32F4();
          v37 = v57;
          *(v35 + 56) = MEMORY[0x1E69E6158];
          *(v35 + 64) = v37;
          *(v35 + 32) = v36;
          *(v35 + 40) = v38;
          sub_1D78B60A4();
          sub_1D78B42C4();

          (*(v31 + 8))(v7, v60);
          return sub_1D7756E78(v32);
        }

        v40 = 7104878;

        v41 = swift_allocObject();
        *(v41 + 16) = v55;
        v42 = v54;
        sub_1D7756DE4(v32, v54);
        v43 = v60;
        if (v33(v42, 1, v60) == 1)
        {
          sub_1D7756E78(v42);
          v44 = v57;
          *(v41 + 56) = MEMORY[0x1E69E6158];
          *(v41 + 64) = v44;
        }

        else
        {
          v45 = sub_1D78B32F4();
          v47 = v46;
          (*(v61 + 8))(v42, v43);
          v48 = v57;
          *(v41 + 56) = MEMORY[0x1E69E6158];
          *(v41 + 64) = v48;
          if (v47)
          {
            v40 = v45;
LABEL_19:
            *(v41 + 32) = v40;
            *(v41 + 40) = v47;
            sub_1D78B60A4();
            sub_1D78B42C4();

            sub_1D78B3954();
            return sub_1D7756E78(v59);
          }
        }

        v47 = 0xE300000000000000;
        goto LABEL_19;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D774FE1C();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1D78BCAB0;
  v50 = sub_1D77E868C(a3);
  v52 = v51;
  *(v49 + 56) = MEMORY[0x1E69E6158];
  *(v49 + 64) = sub_1D775ABD4();
  *(v49 + 32) = v50;
  *(v49 + 40) = v52;
  sub_1D78B42C4();

  return sub_1D78B3954();
}

void sub_1D77E7354()
{
  v3 = v0;
  v4 = v0[3];
  if (!v4)
  {
    sub_1D78B3954();
    return;
  }

  v5 = v3[4];
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v4 + 8 * v5 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_31;
  }

  v6 = MEMORY[0x1DA703700](v5, v4);

LABEL_6:
  v7 = [v6 postPurchaseOnboardingStep];
  v5 = v6;
  v8 = [v5 landingPageArticleID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D78B5C74();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [v5 callToActionText];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D78B5C74();
    v17 = v16;
  }

  else
  {

    v15 = 0;
    v17 = 0;
  }

  swift_beginAccess();
  if (!v3[21])
  {
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = objc_allocWithZone(type metadata accessor for PostPurchaseOnboardingContainerViewController());
    v20 = sub_1D7838C94(sub_1D77E886C, v18);
    v21 = v3[21];
    v3[21] = v20;
  }

  v1 = sub_1D77E7A90(v7, v3, v10, v12, v15, v17, v5);

  if (v1)
  {
    v22 = v3[21];
    if (!v22)
    {
      sub_1D78B3954();
LABEL_26:

      return;
    }

    v2 = v22;
    sub_1D7838A5C(v1);
    v23 = [v2 childViewControllers];
    sub_1D773F004(0, &qword_1EC9CA450);
    v24 = sub_1D78B5EB4();

    if (!(v24 >> 62))
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

      if (v25 == 1)
      {
        v26 = v3[13];
        v27 = v3[14];
        __swift_project_boxed_opaque_existential_1(v3 + 10, v26);
        (*(v27 + 8))(v2, v26, v27);
      }

      goto LABEL_26;
    }

LABEL_31:
    v25 = sub_1D78B6534();
    goto LABEL_19;
  }

  v28 = v3[21];
  if (v28)
  {
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = sub_1D77E8874;
    v30[4] = v3;
    aBlock[4] = sub_1D77E887C;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = &block_descriptor_16;
    v31 = _Block_copy(aBlock);
    v32 = v28;
    swift_retain_n();

    v33.receiver = v32;
    v33.super_class = type metadata accessor for PostPurchaseOnboardingContainerViewController();
    objc_msgSendSuper2(&v33, sel_dismissViewControllerAnimated_completion_, 1, v31);
    _Block_release(v31);
  }

  v3[3] = 0;
}

uint64_t sub_1D77E7760()
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D774FE1C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D775ABD4();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D78B42C4();

  return sub_1D78B3954();
}

unint64_t sub_1D77E7898(uint64_t a1)
{
  result = sub_1D77E6B14(a1);
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_18:

    return 0;
  }

LABEL_17:
  v4 = sub_1D78B6534();
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_4:
  v5 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA703700](v5, v2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if ([v6 postPurchaseOnboardingStep] == 1)
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_18;
    }
  }

  v9 = [v7 landingPageArticleID];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1D78B5C74();

  return v10;
}

uint64_t sub_1D77E79D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = *(v1 + 168);
    *(v1 + 168) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1D78B3954();
  }

  return result;
}

uint64_t sub_1D77E7A90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t a1), void *a6, void *a7)
{
  v57 = a6;
  v13 = sub_1D78B3294();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v23 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v49 = a2;
      sub_1D774584C((a2 + 16), &aBlock);
      v50 = v66;
      v51 = v67;
      __swift_project_boxed_opaque_existential_1(&aBlock, v66);
      v58 = a3;
      v59 = a4;
      v60 = a5;
      v61 = v57;
      swift_beginAccess();
      v52 = a2[21];
      v53 = *(v51 + 3);
      v29 = v52;
      v30 = v53(&v58, v52, v49, &off_1F526BDE8, v50, v51);
      goto LABEL_12;
    }

    if (a1 == 4)
    {
      v31 = &v55 - v21;
      v32 = v22;
      v33 = v20;
      v34 = [a7 deepLinkURL];
      if (v34)
      {
        v35 = v34;
        sub_1D78B3254();

        v36 = *(v32 + 32);
        v36(v31, v19, v33);
        v37 = a2;
        swift_beginAccess();
        v38 = a2[21];
        if (v38)
        {
          v56 = v31;
          swift_endAccess();
          v39 = v33;
          (*(v32 + 16))(v16, v31, v33);
          v40 = (*(v32 + 80) + 24) & ~*(v32 + 80);
          v41 = swift_allocObject();
          *(v41 + 16) = v37;
          v36((v41 + v40), v16, v39);
          v42 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v43 = swift_allocObject();
          v43[2] = v42;
          v43[3] = sub_1D77E8888;
          v43[4] = v41;
          v67 = sub_1D77E89D0;
          v68 = v43;
          aBlock = MEMORY[0x1E69E9820];
          v64 = 1107296256;
          v65 = sub_1D775FB6C;
          v66 = &block_descriptor_29_3;
          v44 = _Block_copy(&aBlock);
          v45 = v38;

          v46 = type metadata accessor for PostPurchaseOnboardingContainerViewController();
          v62.receiver = v45;
          v62.super_class = v46;
          objc_msgSendSuper2(&v62, sel_dismissViewControllerAnimated_completion_, 1, v44);
          _Block_release(v44);

          (*(v32 + 8))(v56, v39);
        }

        else
        {
          (*(v32 + 8))(v31, v33);
          swift_endAccess();
        }
      }

      return 0;
    }
  }

  else if (a1 == 1)
  {
    v47 = a2[19];
    v48 = a2[20];
    __swift_project_boxed_opaque_existential_1(a2 + 16, v47);
    aBlock = a3;
    v64 = a4;
    v65 = a5;
    v66 = v57;
    return (*(v48 + 8))(&aBlock, a2, &off_1F526BDE8, v47, v48);
  }

  else if (a1 == 2)
  {
    v24 = a2;
    sub_1D774584C((a2 + 16), &aBlock);
    v25 = v66;
    v26 = v67;
    __swift_project_boxed_opaque_existential_1(&aBlock, v66);
    v58 = a3;
    v59 = a4;
    v60 = a5;
    v61 = v57;
    swift_beginAccess();
    v27 = a2[21];
    v28 = *(v26 + 2);
    v29 = v27;
    v30 = v28(&v58, v27, v24, &off_1F526BDE8, v25, v26);
LABEL_12:
    v23 = v30;

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  return v23;
}

uint64_t sub_1D77E7F7C(void *a1)
{
  a1[3] = 0;

  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  return sub_1D78B4784();
}

uint64_t sub_1D77E7FD8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 168);
  *(a1 + 168) = 0;

  return sub_1D78B3954();
}

void sub_1D77E8028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 176);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D7757030;
  *(v10 + 24) = v8;
  v12[4] = sub_1D7782BC8;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D77E813C;
  v12[3] = &block_descriptor_38_0;
  v11 = _Block_copy(v12);

  [v9 forceSyncWithCompletion_];
  _Block_release(v11);
}

void sub_1D77E813C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1D77E81B4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  return v0;
}

uint64_t sub_1D77E820C()
{
  sub_1D77E81B4();

  return swift_deallocClassInstance();
}

uint64_t sub_1D77E8250(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_1D77E65C4(a1, sub_1D77E89CC, v2);
}

uint64_t sub_1D77E82CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_1D776AC18(a2);
  sub_1D77E65C4(a1, sub_1D77E88F4, v6);
}

void sub_1D77E83AC()
{
  v1 = v0[4];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_9:
    if (v2 < sub_1D78B6534())
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v0[4] = v2;
  v3 = v0[3];
  if (!v3)
  {
    goto LABEL_10;
  }

  if (v3 >> 62)
  {
    goto LABEL_9;
  }

  if (v2 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:

    sub_1D77E7354();
    return;
  }

LABEL_10:
  swift_beginAccess();
  v4 = v0[21];
  if (v4)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = sub_1D77E8968;
    v6[4] = v0;
    aBlock[4] = sub_1D77E89D0;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = &block_descriptor_53_2;
    v7 = _Block_copy(aBlock);
    v8 = v4;
    swift_retain_n();

    v9.receiver = v8;
    v9.super_class = type metadata accessor for PostPurchaseOnboardingContainerViewController();
    objc_msgSendSuper2(&v9, sel_dismissViewControllerAnimated_completion_, 1, v7);
    _Block_release(v7);
  }
}

uint64_t sub_1D77E856C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 168);
  *(a1 + 168) = 0;

  *(a1 + 24) = 0;

  return sub_1D78B3954();
}

uint64_t sub_1D77E85CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1D77E868C(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 > 4)
  {
    v4 = 0xD000000000000021;
    v5 = 0xD000000000000022;
    if (a1 != 8)
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 == 5)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 <= 6)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (a1 != 4)
    {
      v2 = 0x6E776F6E6B6E75;
    }

    if (a1 == 3)
    {
      v2 = 0xD000000000000016;
    }

    if (a1 == 2)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 2)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D77E87D8(uint64_t a1, uint64_t a2)
{
  sub_1D77442AC(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77E8888()
{
  sub_1D78B3294();
  v1 = *(v0 + 16);

  return sub_1D77E7F7C(v1);
}

uint64_t objectdestroy_40Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D77E8938()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1D77E8A00(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16NewsSubscription23BundlePaywallPlayerView_displayStateCoordinator;
  sub_1D78B5BA4();
  swift_allocObject();
  *&v4[v9] = sub_1D78B5B94();
  v12.receiver = v4;
  v12.super_class = type metadata accessor for BundlePaywallPlayerView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);

  sub_1D78B5B84();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D78B5B74();

  return v10;
}

void sub_1D77E8B40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((sub_1D78B5A74() & 1) != 0 && (sub_1D78B5A64() & 1) == 0)
    {
      v2 = [v1 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() playWithPlaybackKind:0 looping:1];
    }

    else
    {
      v2 = [v1 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() pause];
    }
  }
}

void sub_1D77E8D60(void *a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v6 = [swift_dynamicCastObjCClassUnconditional() player];

  if (v6)
  {
  }

  else
  {
    [a1 setActionAtItemEnd_];
    [a1 setVolume_];
    v4 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setPlayer_];

    v5 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setVideoGravity_];

    sub_1D78B5B84();
  }
}

id sub_1D77E8F00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundlePaywallPlayerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D77E8F70()
{
  result = qword_1EE08FEB8;
  if (!qword_1EE08FEB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FEB8);
  }

  return result;
}

uint64_t sub_1D77E8FBC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a1;
  v45 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    for (i = (a4 + 32); ; i += 8)
    {
      v11 = i[5];
      v12 = i[3];
      v41 = i[4];
      v42 = v11;
      v13 = i[5];
      v14 = i[7];
      v43 = i[6];
      v44 = v14;
      v15 = i[1];
      v38[0] = *i;
      v38[1] = v15;
      v16 = i[3];
      v18 = *i;
      v17 = i[1];
      v39 = i[2];
      v40 = v16;
      v34 = v41;
      v35 = v13;
      v19 = i[7];
      v36 = v43;
      v37 = v19;
      v30 = v18;
      v31 = v17;
      v32 = v39;
      v33 = v12;
      sub_1D77F03C4(v38, &v21);
      a2(&v29, &v45, &v30);
      if (v5)
      {
        break;
      }

      v25 = v34;
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v21 = v30;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      sub_1D77F0420(&v21);

      v8 = v29;
      v45 = v29;
      if (!--v9)
      {
        return v8;
      }
    }

    v25 = v34;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    sub_1D77F0420(&v21);
  }

  return v8;
}

uint64_t sub_1D77E9110()
{
  v1 = v0;
  v2 = sub_1D78B5934();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-v7];
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig;
  memcpy(v24, &v1[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig], 0x298uLL);
  if (sub_1D77EECEC(v24) == 1)
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    memcpy(v21, &v1[v12], sizeof(v21));
    memcpy(v23, &v1[v12], sizeof(v23));
    memcpy(v22, &v1[v12], sizeof(v22));
    sub_1D77EED10(v22, v20);
    sub_1D78B4194();
    v13 = sub_1D78A3DE4(v11);
    sub_1D77EED6C(v21, &qword_1EE094AE8, &type metadata for PaywallConfig);
    sub_1D77EFF78(v11, sub_1D77EECB8);
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v14 = sub_1D78B5924();
  MEMORY[0x1EEE9AC00](v14);
  *&v20[-16] = v1;
  sub_1D78B41F4();
  (*(v3 + 16))(v6, v8, v2);
  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v1;
  (*(v3 + 32))(v16 + v15, v6, v2);
  v17 = v1;
  v18 = sub_1D78B4014();
  sub_1D78B4094();

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D77E9558(__int128 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D77EEEA8(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D78B57A4();
  v7 = *(v59 - 8);
  v8 = MEMORY[0x1EEE9AC00](v59);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v54 - v10;
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D78B3294();
  v58 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D78B5934();
  v17 = *(v61 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v61);
  v54 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v22 = a1[13];
  v90 = a1[12];
  v91 = v22;
  v23 = a1[15];
  v92 = a1[14];
  v93 = v23;
  v24 = a1[9];
  v86 = a1[8];
  v87 = v24;
  v25 = a1[11];
  v88 = a1[10];
  v89 = v25;
  v26 = a1[5];
  v82 = a1[4];
  v83 = v26;
  v27 = a1[7];
  v84 = a1[6];
  v85 = v27;
  v28 = a1[1];
  v78 = *a1;
  v79 = v28;
  v29 = a1[3];
  v80 = a1[2];
  v81 = v29;
  if (qword_1EE08FB98 != -1)
  {
    v60 = *MEMORY[0x1E69B5098];
    v53 = &v54 - v20;
    swift_once();
    v21 = v53;
  }

  v60 = v21;
  sub_1D78B5924();
  if (qword_1EE095590 != -1)
  {
    swift_once();
  }

  if (sub_1D78B35C4())
  {
    if (qword_1EC9C8588 != -1)
    {
      swift_once();
    }

    sub_1D77EFF30(&unk_1EC9CA570, v30, type metadata accessor for PaywallFormatContentService);
    sub_1D78B3574();
    sub_1D78B3274();

    v31 = v58;
    if ((*(v58 + 48))(v13, 1, v14) != 1)
    {
      (*(v31 + 32))(v16, v13, v14);
      v74 = v90;
      v75 = v91;
      v76 = v92;
      v77 = v93;
      v70 = v86;
      v71 = v87;
      v72 = v88;
      v73 = v89;
      v66 = v82;
      v67 = v83;
      v68 = v84;
      v69 = v85;
      v62 = v78;
      v63 = v79;
      v64 = v80;
      v65 = v81;
      v51 = v60;
      v49 = sub_1D77E9D20(v16, v60, &v62);
      (*(v31 + 8))(v16, v14);
      (*(v17 + 8))(v51, v61);
      return v49;
    }

    sub_1D77EFF78(v13, sub_1D776F504);
  }

  v74 = v90;
  v75 = v91;
  v76 = v92;
  v77 = v93;
  v70 = v86;
  v71 = v87;
  v72 = v88;
  v73 = v89;
  v66 = v82;
  v67 = v83;
  v68 = v84;
  v69 = v85;
  v62 = v78;
  v63 = v79;
  v64 = v80;
  v65 = v81;
  sub_1D77EA154(&v62, v6);
  v32 = v59;
  if ((*(v7 + 48))(v6, 1, v59) == 1)
  {
    v33 = sub_1D77EFF78(v6, sub_1D77EEEA8);
    MEMORY[0x1EEE9AC00](v33);
    *(&v54 - 2) = v2;
    sub_1D78B41F4();
    v34 = v54;
    v36 = v60;
    v35 = v61;
    (*(v17 + 16))(v54, v60, v61);
    v37 = (*(v17 + 80) + 280) & ~*(v17 + 80);
    v38 = swift_allocObject();
    v39 = v91;
    *(v38 + 208) = v90;
    *(v38 + 224) = v39;
    v40 = v93;
    *(v38 + 240) = v92;
    *(v38 + 256) = v40;
    v41 = v87;
    *(v38 + 144) = v86;
    *(v38 + 160) = v41;
    v42 = v89;
    *(v38 + 176) = v88;
    *(v38 + 192) = v42;
    v43 = v83;
    *(v38 + 80) = v82;
    *(v38 + 96) = v43;
    v44 = v85;
    *(v38 + 112) = v84;
    *(v38 + 128) = v44;
    v45 = v79;
    *(v38 + 16) = v78;
    *(v38 + 32) = v45;
    v46 = v81;
    *(v38 + 48) = v80;
    *(v38 + 64) = v46;
    *(v38 + 272) = v2;
    (*(v17 + 32))(v38 + v37, v34, v35);
    sub_1D7772AE8(&v78, &v62);
    v47 = v2;
    v48 = sub_1D78B4014();
    v49 = sub_1D78B4084();

    (*(v17 + 8))(v36, v35);
  }

  else
  {
    v50 = v56;
    (*(v7 + 32))(v56, v6, v32);
    (*(v7 + 16))(v55, v50, v32);
    sub_1D77F0108(0, &unk_1EE095260, MEMORY[0x1E69B6118], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v49 = sub_1D78B4104();
    (*(v7 + 8))(v50, v32);
    (*(v17 + 8))(v60, v61);
  }

  return v49;
}

uint64_t sub_1D77E9D20(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v46 = a2;
  v45 = sub_1D78B5934();
  v5 = *(v45 - 8);
  v44 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D78B3294();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = sub_1D78B2F24();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3[13];
  v64 = a3[12];
  v65 = v13;
  v14 = a3[15];
  v66 = a3[14];
  v67 = v14;
  v15 = a3[9];
  v60 = a3[8];
  v61 = v15;
  v16 = a3[11];
  v62 = a3[10];
  v63 = v16;
  v17 = a3[5];
  v56 = a3[4];
  v57 = v17;
  v18 = a3[7];
  v58 = a3[6];
  v59 = v18;
  v19 = a3[1];
  v52 = *a3;
  v53 = v19;
  v20 = a3[3];
  v54 = a3[2];
  v55 = v20;
  v21 = *(v8 + 16);
  v21(&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v42 = v12;
  sub_1D78B2F14();
  v50 = v12;
  sub_1D78B41F4();
  v21(&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v22 = (*(v8 + 80) + 272) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v24 = v65;
  *(v23 + 13) = v64;
  *(v23 + 14) = v24;
  v25 = v67;
  *(v23 + 15) = v66;
  *(v23 + 16) = v25;
  v26 = v61;
  *(v23 + 9) = v60;
  *(v23 + 10) = v26;
  v27 = v63;
  *(v23 + 11) = v62;
  *(v23 + 12) = v27;
  v28 = v57;
  *(v23 + 5) = v56;
  *(v23 + 6) = v28;
  v29 = v59;
  *(v23 + 7) = v58;
  *(v23 + 8) = v29;
  v30 = v53;
  *(v23 + 1) = v52;
  *(v23 + 2) = v30;
  v31 = v55;
  *(v23 + 3) = v54;
  *(v23 + 4) = v31;
  (*(v8 + 32))(&v23[v22], &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_1D7772AE8(&v52, &v51);
  v32 = sub_1D78B4014();
  sub_1D78B4084();

  v33 = v43;
  v34 = v45;
  (*(v5 + 16))(v43, v46, v45);
  v35 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v36 = swift_allocObject();
  v37 = v49;
  *(v36 + 16) = v49;
  (*(v5 + 32))(v36 + v35, v33, v34);
  v38 = v37;
  v39 = sub_1D78B4014();
  sub_1D78B57A4();
  v40 = sub_1D78B4084();

  (*(v47 + 8))(v42, v48);
  return v40;
}

uint64_t sub_1D77EA154@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig;
  memcpy(v38, (v3 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig), sizeof(v38));
  if (sub_1D77EECEC(v38) == 1 || (memcpy(v35, (v3 + v9), sizeof(v35)), memcpy(v36, (v3 + v9), sizeof(v36)), memcpy(v37, (v3 + v9), sizeof(v37)), v10 = a1[13], v34[12] = a1[12], v34[13] = v10, v11 = a1[15], v34[14] = a1[14], v34[15] = v11, v12 = a1[9], v34[8] = a1[8], v34[9] = v12, v13 = a1[11], v34[10] = a1[10], v34[11] = v13, v14 = a1[5], v34[4] = a1[4], v34[5] = v14, v15 = a1[7], v34[6] = a1[6], v34[7] = v15, v16 = a1[1], v34[0] = *a1, v34[1] = v16, v17 = a1[3], v34[2] = a1[2], v34[3] = v17, sub_1D77EED10(v36, &v33), sub_1D78B4194(), v18 = sub_1D78A3554(v34), v20 = v19, sub_1D77EED6C(v35, &qword_1EE094AE8, &type metadata for PaywallConfig), sub_1D77EFF78(v8, sub_1D77EECB8), !v20))
  {
    v29 = sub_1D78B57A4();
    return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
  }

  else
  {
    v21 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatContentCache;
    swift_beginAccess();
    v22 = *(v3 + v21);
    if (*(v22 + 16) && (v23 = sub_1D777BBB4(v18, v20), (v24 & 1) != 0))
    {
      v25 = v23;
      v26 = *(v22 + 56);
      v27 = sub_1D78B57A4();
      v28 = *(v27 - 8);
      (*(v28 + 16))(a2, v26 + *(v28 + 72) * v25, v27);
      (*(v28 + 56))(a2, 0, 1, v27);
    }

    else
    {
      v31 = sub_1D78B57A4();
      (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
    }

    swift_endAccess();
  }
}

uint64_t sub_1D77EA45C(const void *a1, __int128 *a2, void *a3, uint64_t a4)
{
  v52 = a4;
  v54 = a3;
  v53 = sub_1D78B5934();
  v51 = *(v53 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v7 = sub_1D78B5264();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v56, a1, sizeof(v56));
  v14 = a2[13];
  v55[12] = a2[12];
  v55[13] = v14;
  v15 = a2[15];
  v55[14] = a2[14];
  v55[15] = v15;
  v16 = a2[9];
  v55[8] = a2[8];
  v55[9] = v16;
  v17 = a2[11];
  v55[10] = a2[10];
  v55[11] = v17;
  v18 = a2[5];
  v55[4] = a2[4];
  v55[5] = v18;
  v19 = a2[7];
  v55[6] = a2[6];
  v55[7] = v19;
  v20 = a2[1];
  v55[0] = *a2;
  v55[1] = v20;
  v21 = a2[3];
  v55[2] = a2[2];
  v55[3] = v21;
  sub_1D78B4194();
  v22 = sub_1D78A3554(v55);
  v24 = v23;
  sub_1D77EFF78(v13, sub_1D77EECB8);
  if (v24)
  {
    v25 = *MEMORY[0x1E69E7F88];
    v26 = *(v8 + 104);
    v47 = v10;
    v27 = v26(v10, v25, v7);
    v48 = v24;
    MEMORY[0x1EEE9AC00](v27);
    v49 = v22;
    v28 = v54;
    *(&v45 - 4) = v54;
    *(&v45 - 3) = v22;
    *(&v45 - 2) = v29;
    *(&v45 - 1) = 25;
    sub_1D773F004(0, &qword_1EE08FF00);
    sub_1D78B41F4();
    v50 = v8;
    v45 = sub_1D773F004(0, &qword_1EE08FE10);
    v30 = sub_1D78B6134();
    v46 = v7;
    v31 = v30;
    v32 = v51;
    v33 = v53;
    (*(v51 + 16))(&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v52, v53);
    v34 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v28;
    (*(v32 + 32))(v35 + v34, &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v33);
    sub_1D78B57A4();
    v36 = v28;
    sub_1D78B4084();

    v37 = sub_1D78B6104();
    v38 = swift_allocObject();
    v39 = v48;
    v40 = v49;
    v38[2] = v36;
    v38[3] = v40;
    v38[4] = v39;
    v41 = v36;
    v42 = sub_1D78B4084();

    (*(v50 + 8))(v47, v46);
    return v42;
  }

  else
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D78B42C4();
    sub_1D77EEFF4();
    swift_allocError();
    *v44 = 1;
    sub_1D77F0108(0, &unk_1EE095260, MEMORY[0x1E69B6118], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B40F4();
  }
}

uint64_t sub_1D77EAA04(char *a1)
{
  memcpy(v10, &a1[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig], sizeof(v10));
  memcpy(v11, &a1[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig], sizeof(v11));
  v2 = sub_1D77EECEC(v11);
  if (v2 == 1)
  {
    MEMORY[0x1EEE9AC00](v2);
    sub_1D773D21C(0, &qword_1EE08FD20);
    sub_1D78B41F4();
    *(swift_allocObject() + 16) = a1;
    v3 = a1;
    v4 = sub_1D78B4014();
    v5 = sub_1D78B4084();

    return v5;
  }

  else
  {
    memcpy(v8, v11, sizeof(v8));
    sub_1D7756D44(0, &qword_1EE0952B8, &type metadata for PaywallConfig, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    memcpy(v9, v10, sizeof(v9));
    sub_1D77EED10(v9, &v7);
    return sub_1D78B4104();
  }
}

void sub_1D77EABC0(const void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v69 = a4;
  sub_1D77EEEA8(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D78B5934();
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v10;
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v77, a1, sizeof(v77));
  sub_1D78B4194();
  v14 = sub_1D78A3DE4(v13);
  sub_1D77EFF78(v13, sub_1D77EECB8);
  if (*(a2 + 16) <= *(v14 + 16) >> 3)
  {
    v76 = v14;

    sub_1D77EE570(a2);
    v72 = v76;
  }

  else
  {

    v72 = sub_1D77ED2DC(a2, v14);
  }

  v15 = *(v14 + 16);
  v16 = *(a2 + 16);
  v73 = a3;
  v62 = v9;
  if (v15 <= v16 >> 3)
  {
    v76 = a2;

    sub_1D77EE570(v14);

    v71 = v76;
  }

  else
  {

    v71 = sub_1D77ED2DC(v14, a2);
  }

  v18 = 0;
  v19 = *(v72 + 56);
  v61 = v72 + 56;
  v20 = 1 << *(v72 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v63 = v70 + 32;
  v64 = v70 + 16;
  v65 = v23;
  if (v22)
  {
    while (1)
    {
      v24 = v18;
LABEL_15:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v26 = *(*(v72 + 48) + ((v24 << 10) | (16 * v25)) + 8);
      MEMORY[0x1EEE9AC00](v17);
      v27 = v73;
      *(&v60 - 4) = v73;
      *(&v60 - 3) = v28;
      v29 = v69;
      *(&v60 - 2) = v26;
      *(&v60 - 1) = v29;
      v75 = sub_1D78B57A4();

      v74 = sub_1D78B41F4();

      v30 = v70;
      v31 = v66;
      v32 = v68;
      (*(v70 + 16))(v66, v29, v68);
      v33 = (*(v30 + 80) + 24) & ~*(v30 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = v27;
      (*(v30 + 32))(v34 + v33, v31, v32);
      v35 = v27;
      v36 = sub_1D78B4014();
      sub_1D78B4084();

      v23 = v65;
      if (!v22)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v24 >= v23)
    {
      break;
    }

    v22 = *(v61 + 8 * v24);
    ++v18;
    if (v22)
    {
      v18 = v24;
      goto LABEL_15;
    }
  }

  v37 = 0;
  v38 = v71 + 56;
  v39 = 1 << *(v71 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v71 + 56);
  v42 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatContentCache;
  v43 = (v39 + 63) >> 6;
  v44 = v73;
  v75 = v71 + 56;
  while (v41)
  {
LABEL_27:
    v48 = (*(v71 + 48) + ((v37 << 10) | (16 * __clz(__rbit64(v41)))));
    v50 = *v48;
    v49 = v48[1];
    swift_beginAccess();

    v51 = sub_1D777BBB4(v50, v49);
    if (v52)
    {
      v53 = v51;
      v74 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = *&v44[v42];
      v78 = v55;
      *&v44[v42] = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D782FBD8();
        v55 = v78;
      }

      v56 = *(v55 + 56);
      v72 = sub_1D78B57A4();
      v57 = *(v72 - 8);
      v58 = v56 + *(v57 + 72) * v53;
      v59 = v53;
      v46 = v62;
      (*(v57 + 32))(v62, v58, v72);
      sub_1D782DCE8(v59, v55);
      v44 = v73;
      *&v73[v42] = v55;

      (*(v57 + 56))(v46, 0, 1, v72);
      v38 = v75;
    }

    else
    {
      v45 = sub_1D78B57A4();
      v46 = v62;
      (*(*(v45 - 8) + 56))(v62, 1, 1, v45);
      v38 = v75;
    }

    v41 &= v41 - 1;
    swift_endAccess();

    sub_1D77EFF78(v46, sub_1D77EEEA8);
  }

  while (1)
  {
    v47 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v47 >= v43)
    {

      return;
    }

    v41 = *(v38 + 8 * v47);
    ++v37;
    if (v41)
    {
      v37 = v47;
      goto LABEL_27;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1D77EB254(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v29 = a3;
  v31 = a2;
  v27 = sub_1D78B5934();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v9 = sub_1D78B5264();
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = *MEMORY[0x1E69E7FA0];
  v14 = *(v13 + 104);
  v30 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v30, v12);
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v37 = 17;
  sub_1D773F004(0, &qword_1EE08FF00);
  sub_1D78B41F4();
  sub_1D773F004(0, &qword_1EE08FE10);
  v15 = sub_1D78B6134();
  v16 = v27;
  (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v27);
  v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  (*(v7 + 32))(v18 + v17, &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  sub_1D78B57A4();
  v19 = a1;
  sub_1D78B4084();

  v20 = sub_1D78B6104();
  v21 = swift_allocObject();
  v22 = v31;
  v21[2] = v19;
  v21[3] = v22;
  v21[4] = v29;
  v23 = v19;

  v24 = sub_1D78B4084();

  (*(v33 + 8))(v30, v32);
  return v24;
}

uint64_t sub_1D77EB598(id *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  sub_1D77F0108(0, &qword_1EE090308, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v25 - v7;
  v29 = sub_1D78B57D4();
  v28 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PaywallResourceConfigData();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*a1 assetHandle];
  v15 = sub_1D78B6064();
  v17 = v16;

  if (v17 >> 60 == 15)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D78B42C4();
    sub_1D77EEFF4();
    swift_allocError();
    *v18 = 0;
    sub_1D77F0108(0, &unk_1EE095260, MEMORY[0x1E69B6118], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B40F4();
  }

  else
  {
    sub_1D78B5844();
    sub_1D78B5834();
    sub_1D77EFF30(&qword_1EE092748, 255, type metadata accessor for PaywallResourceConfigData);
    sub_1D78B37F4();
    if (v3)
    {
      sub_1D77E56E0(v15, v17);
    }

    else
    {

      v20 = (v27 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService);
      v21 = *(v27 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService + 32);
      v26 = *(v27 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService + 24);
      v27 = v21;
      v25[6] = __swift_project_boxed_opaque_existential_1(v20, v26);
      v22 = sub_1D78B5234();
      (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
      v23 = MEMORY[0x1E69E7CC0];
      v25[5] = sub_1D77EF480(MEMORY[0x1E69E7CC0], sub_1D77EFC54);
      v25[4] = sub_1D77EF480(v23, sub_1D77EFC54);
      v25[3] = sub_1D77EF57C(v23, sub_1D77EFB48);
      v25[2] = sub_1D77EF480(v23, sub_1D77EFA5C);
      sub_1D77EF57C(v23, sub_1D77EFA00);
      sub_1D77EF57C(v23, sub_1D77EF928);
      v25[1] = a3;
      sub_1D77EF678(v23);
      sub_1D78B57C4();
      v24 = sub_1D78B58C4();
      sub_1D77E56E0(v15, v17);
      (*(v28 + 8))(v10, v29);
      sub_1D77EFF78(v13, type metadata accessor for PaywallResourceConfigData);
      return v24;
    }
  }
}

uint64_t sub_1D77EBAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v6 = sub_1D78B57A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77EEEA8(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v7 + 16);
  v13(v12, a1, v6);
  (*(v7 + 56))(v12, 0, 1, v6);
  swift_beginAccess();

  sub_1D7828540(v12, v15, a4);
  swift_endAccess();
  v13(v9, a1, v6);
  sub_1D77F0108(0, &unk_1EE095260, MEMORY[0x1E69B6118], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D77EBCFC()
{
  sub_1D77EFBEC(0, &unk_1EE0951F0, &qword_1EE08FD20, &protocolRef_FCNewsAppConfiguration, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D77EBD8C(id *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v5 = objc_msgSend(v4, sel_paidBundleConfig), v6 = objc_msgSend(v5, sel_flexiblePaywallConfig), v5, v6))
  {
    sub_1D78B5BC4();

    sub_1D78B2F54();
    swift_allocObject();
    sub_1D78B2F44();
    v7 = objc_opt_self();
    v8 = sub_1D78B5BB4();

    v20[0] = 0;
    v9 = [v7 dataWithJSONObject:v8 options:0 error:v20];

    v10 = v20[0];
    if (v9)
    {
      v11 = sub_1D78B32D4();
      v13 = v12;

      sub_1D77EFD20();
      sub_1D78B2F34();

      if (v2)
      {
        return sub_1D775DD6C(v11, v13);
      }

      else
      {
        sub_1D775DD6C(v11, v13);
        memcpy(__dst, __src, sizeof(__dst));
        memcpy(v19, __src, sizeof(v19));
        nullsub_1(v19);
        memcpy(v20, (a2 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig), sizeof(v20));
        memcpy((a2 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig), v19, 0x298uLL);
        sub_1D77EED10(__dst, v17);
        sub_1D77EED6C(v20, &qword_1EE094AE8, &type metadata for PaywallConfig);
        memcpy(v17, __dst, sizeof(v17));
        sub_1D7756D44(0, &qword_1EE0952B8, &type metadata for PaywallConfig, MEMORY[0x1E69D6B18]);
        swift_allocObject();
        return sub_1D78B4104();
      }
    }

    else
    {
      v16 = v10;

      sub_1D78B31C4();

      return swift_willThrow();
    }
  }

  else
  {
    sub_1D77EEFF4();
    swift_allocError();
    *v15 = 1;
    sub_1D7756D44(0, &qword_1EE0952B8, &type metadata for PaywallConfig, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B40F4();
  }
}

void sub_1D77EC0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_configurationManager);
  v12 = swift_allocObject();
  v12[2] = sub_1D7752FB0;
  v12[3] = v10;
  v12[4] = a3;
  v12[5] = a4;
  v14[4] = sub_1D77EFD7C;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D7752E68;
  v14[3] = &block_descriptor_17;
  v13 = _Block_copy(v14);

  [v11 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v13);
}

void sub_1D77EC228(uint64_t a1, id a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t))
{
  if (a1)
  {
    v6 = swift_unknownObjectRetain();
    a3(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    if (a2)
    {
      v8 = a2;
      v9 = a2;
      v10 = v8;
    }

    else
    {
      sub_1D77EEFF4();
      v10 = swift_allocError();
      v8 = v10;
      *v11 = 1;
    }

    a5(v10);
  }
}

uint64_t sub_1D77EC2F4()
{
  v0 = [objc_opt_self() sharedSession];
  v1 = sub_1D78B3FF4();

  return v1;
}

uint64_t sub_1D77EC360(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v60 = a3;
  v4 = sub_1D78B2F24();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B3294();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v49 - v11;
  sub_1D77F00D4(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D78B3124();
  v59 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3814();
  swift_allocObject();
  sub_1D78B3804();
  sub_1D77EFD20();
  v21 = v63;
  sub_1D78B37F4();
  if (v21)
  {

LABEL_3:
    sub_1D77EEFF4();
    swift_allocError();
    *v22 = 1;
    sub_1D7756D44(0, &qword_1EC9CA580, MEMORY[0x1E6969080], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B40F4();
  }

  v50 = v17;
  v24 = v59;

  memcpy(v62, v61, 0x298uLL);
  v25 = a2[13];
  v61[12] = a2[12];
  v61[13] = v25;
  v26 = a2[15];
  v61[14] = a2[14];
  v61[15] = v26;
  v27 = a2[9];
  v61[8] = a2[8];
  v61[9] = v27;
  v28 = a2[11];
  v61[10] = a2[10];
  v61[11] = v28;
  v29 = a2[5];
  v61[4] = a2[4];
  v61[5] = v29;
  v30 = a2[7];
  v61[6] = a2[6];
  v61[7] = v30;
  v31 = a2[1];
  v61[0] = *a2;
  v61[1] = v31;
  v32 = a2[3];
  v61[2] = a2[2];
  v61[3] = v32;
  sub_1D78B4194();
  v33 = sub_1D78A3554(v61);
  v35 = v34;
  sub_1D77F016C(v62);
  sub_1D77EFF78(v20, sub_1D77EECB8);
  if (!v35)
  {
    goto LABEL_3;
  }

  v36 = v14;
  sub_1D78B3094();
  v37 = v14;
  v38 = v15;
  if ((*(v24 + 48))(v37, 1, v15) == 1)
  {

    sub_1D77EFF78(v36, sub_1D77F00D4);
    goto LABEL_3;
  }

  v39 = v50;
  (*(v24 + 32))(v50, v36, v38);
  MEMORY[0x1DA700380](v33, v35);
  v40 = v56;
  sub_1D78B30A4();
  v42 = v57;
  v41 = v58;
  if ((*(v57 + 48))(v40, 1, v58) == 1)
  {
    sub_1D77EFF78(v40, sub_1D776F504);
    sub_1D77EEFF4();
    swift_allocError();
    *v43 = 1;
    sub_1D7756D44(0, &qword_1EC9CA580, MEMORY[0x1E6969080], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v44 = sub_1D78B40F4();
    (*(v24 + 8))(v39, v38);
    return v44;
  }

  else
  {
    v45 = v52;
    (*(v42 + 32))(v52, v40, v41);
    (*(v42 + 16))(v51, v45, v41);
    v46 = v53;
    sub_1D78B2F14();
    v47 = v41;
    v48 = [objc_opt_self() sharedSession];
    v63 = sub_1D78B3FF4();

    (*(v54 + 8))(v46, v55);
    (*(v42 + 8))(v45, v47);
    (*(v24 + 8))(v50, v38);
    return v63;
  }
}

uint64_t sub_1D77ECA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v23 = a2;
  sub_1D77F0108(0, &qword_1EE090308, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  v8 = sub_1D78B57D4();
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PaywallResourceConfigData();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  sub_1D78B3814();
  swift_allocObject();
  sub_1D78B3804();
  sub_1D77EFF30(&qword_1EE092748, 255, type metadata accessor for PaywallResourceConfigData);
  sub_1D78B37F4();

  if (!v3)
  {
    v15 = (v23 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService);
    v17 = *(v23 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService + 24);
    v16 = *(v23 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService + 32);
    v22 = v8;
    v23 = v16;
    v21[4] = __swift_project_boxed_opaque_existential_1(v15, v17);
    v18 = sub_1D78B5234();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    v19 = MEMORY[0x1E69E7CC0];
    v21[3] = sub_1D77EF480(MEMORY[0x1E69E7CC0], sub_1D77EFC54);
    v21[2] = sub_1D77EF480(v19, sub_1D77EFC54);
    v21[1] = sub_1D77EF57C(v19, sub_1D77EFB48);
    sub_1D77EF480(v19, sub_1D77EFA5C);
    sub_1D77EF57C(v19, sub_1D77EFA00);
    sub_1D77EF57C(v19, sub_1D77EF928);
    sub_1D77EF678(v19);
    sub_1D78B57C4();
    v14 = sub_1D78B58C4();
    (*(v24 + 8))(v10, v22);
    sub_1D77EFF78(v13, type metadata accessor for PaywallResourceConfigData);
  }

  return v14;
}

uint64_t sub_1D77ECE30(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_1D78B6814();

    sub_1D78B5D14();
    v11 = sub_1D78B6844();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_1D78B6724() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x1EEE9AC00](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_1D77EDE64(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_1D78B6814();

        sub_1D78B5D14();
        v33 = sub_1D78B6844();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_1D78B6724() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x1E69E7CD0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_1D77ED84C(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x1DA7043F0](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x1DA7043F0](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D77ED2DC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
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
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1D78B6814();

    sub_1D78B5D14();
    v23 = sub_1D78B6844();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1D78B6724() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1D77EDE64(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1D78B6814();

            sub_1D78B5D14();
            v41 = sub_1D78B6844();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1D78B6724() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1D77EDA30(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1DA7043F0](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_1D779D528();
    return v5;
  }

  result = MEMORY[0x1DA7043F0](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D77ED84C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_1D77EDE64(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_1D78B6814();

        sub_1D78B5D14();
        v16 = sub_1D78B6844();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_1D78B6724() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1D77EDA30(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1D77EDE64(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1D78B6814();

        sub_1D78B5D14();
        v19 = sub_1D78B6844();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1D78B6724() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1D77EDC68(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1D77EFD88(0, &unk_1EC9CA560);
  result = sub_1D78B6424();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    result = MEMORY[0x1DA703AA0](*(v9 + 40), v16, 4);
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 4 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D77EDE64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1D77EFD88(0, &unk_1EE08FB58);
  result = sub_1D78B6424();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1D78B6814();

    sub_1D78B5D14();
    result = sub_1D78B6844();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1D77EE094()
{
  v1 = v0;
  sub_1D77EFD88(0, &unk_1EC9CA560);
  v2 = *v0;
  v3 = sub_1D78B6404();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1D77EE1E0()
{
  v1 = v0;
  sub_1D77EFD88(0, &unk_1EE08FB58);
  v2 = *v0;
  v3 = sub_1D78B6404();
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

void *sub_1D77EE348()
{
  v1 = v0;
  v2 = sub_1D78B56F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77EFDD8();
  v6 = *v0;
  v7 = sub_1D78B6404();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1D77EE570(uint64_t result)
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

        sub_1D77EE69C(v12, v13);

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

uint64_t sub_1D77EE69C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D78B6814();
  sub_1D78B5D14();
  v6 = sub_1D78B6844();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D78B6724() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D77EE1E0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1D77EE7D8(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1D77EE7D8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D78B6344();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D78B6814();

        sub_1D78B5D14();
        v10 = sub_1D78B6844();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

id sub_1D77EE99C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatContentCache] = MEMORY[0x1E69E7CC8];
  v10 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig;
  sub_1D77EEC7C(__src);
  memcpy(&v4[v10], __src, 0x298uLL);
  sub_1D774584C(a1, &v4[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService]);
  *&v4[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_configurationManager] = a2;
  sub_1D774584C(a3, &v4[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_resourceService]);
  v25.receiver = v4;
  v25.super_class = ObjectType;
  swift_unknownObjectRetain();
  v11 = objc_msgSendSuper2(&v25, sel_init);
  v12 = [a4 cachedSubscription];
  if (objc_getAssociatedObject(v12, v12 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  v13 = MEMORY[0x1E69E7CA0];
  if (!*(&v22 + 1))
  {
    sub_1D77EED6C(&v23, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_9;
  }

  sub_1D773F004(0, &qword_1EE08FBD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v14 = 0;
    v16 = 0;
    goto LABEL_10;
  }

  v14 = v20;
  v15 = [v20 integerValue];
  if (v15 == -1)
  {

    goto LABEL_21;
  }

  v16 = v15;
LABEL_10:
  if (objc_getAssociatedObject(v12, ~v16))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (*(&v22 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0);
    if (swift_dynamicCast())
    {
      v17 = v20;
      v18 = [v17 integerValue];

      if ((v18 ^ v16))
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_1D77EED6C(&v23, &qword_1EE08F9C0, v13 + 8);
  }

  if ((v16 & 1) == 0)
  {
LABEL_19:
    sub_1D77E9110();
  }

LABEL_21:
  [a4 addObserver_];

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

double sub_1D77EEC7C(uint64_t a1)
{
  bzero(a1, 0x280uLL);
  *(a1 + 640) = 1;
  result = 0.0;
  *(a1 + 648) = 0u;
  return result;
}

uint64_t sub_1D77EECEC(uint64_t a1)
{
  v1 = *(a1 + 640);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_1D77EED6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D7756D44(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D77EEEFC()
{
  sub_1D78B5934();
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService), *(*(v0 + 16) + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService + 24));
  return sub_1D78B58D4();
}

unint64_t sub_1D77EEFF4()
{
  result = qword_1EC9CA4F0;
  if (!qword_1EC9CA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA4F0);
  }

  return result;
}

uint64_t sub_1D77EF048()
{
  v1 = v0;
  sub_1D77EEEA8(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig;
  memcpy(v45, (v1 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig), 0x298uLL);
  result = sub_1D77EECEC(v45);
  if (result == 1)
  {
    v34 = 0;
    v10 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    memcpy(v42, (v1 + v8), sizeof(v42));
    memcpy(v43, (v1 + v8), sizeof(v43));
    memcpy(v44, (v1 + v8), sizeof(v44));
    sub_1D77EED10(v43, &v41);
    sub_1D78B4194();
    v11 = sub_1D78A57B8();
    v12 = sub_1D77EED6C(v42, &qword_1EE094AE8, &type metadata for PaywallConfig);
    MEMORY[0x1EEE9AC00](v12);
    *(&v34 - 2) = v7;
    v10 = sub_1D77E8FBC(MEMORY[0x1E69E7CD0], sub_1D77F03A8, (&v34 - 4), v11);
    v34 = 0;

    result = sub_1D77EFF78(v7, sub_1D77EECB8);
  }

  v13 = 0;
  v14 = v10 + 56;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v10 + 56);
  v18 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatContentCache;
  v19 = (v15 + 63) >> 6;
  v38 = v10 + 56;
  v39 = v4;
  v35 = v1;
  v36 = v10;
  while (v17)
  {
LABEL_14:
    v23 = (*(v10 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v17)))));
    v25 = *v23;
    v24 = v23[1];
    swift_beginAccess();

    v40 = v24;
    v26 = sub_1D777BBB4(v25, v24);
    if (v27)
    {
      v28 = v26;
      v29 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v1 + v18);
      v42[0] = v31;
      *(v1 + v18) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D782FBD8();
        v31 = v42[0];
      }

      v32 = *(v31 + 56);
      v37 = sub_1D78B57A4();
      v33 = *(v37 - 8);
      (*(v33 + 32))(v29, v32 + *(v33 + 72) * v28, v37);
      sub_1D782DCE8(v28, v31);
      v1 = v35;
      *(v35 + v18) = v31;

      v21 = v29;
      (*(v33 + 56))(v29, 0, 1, v37);
      v10 = v36;
    }

    else
    {
      v20 = sub_1D78B57A4();
      v21 = v39;
      (*(*(v20 - 8) + 56))(v39, 1, 1, v20);
    }

    v14 = v38;
    v17 &= v17 - 1;
    swift_endAccess();

    result = sub_1D77EFF78(v21, sub_1D77EEEA8);
  }

  while (1)
  {
    v22 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
    }

    v17 = *(v14 + 8 * v22);
    ++v13;
    if (v17)
    {
      v13 = v22;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D77EF480(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_1D78B6564();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D777BBB4(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D77EF57C(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_1D78B6564();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D777BBB4(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D77EF678(uint64_t a1)
{
  sub_1D77EF85C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1D77EFA7C(0, &qword_1EC9CA4F8, MEMORY[0x1E69B6838]);
    v8 = sub_1D78B6564();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1D77EF8C4(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1D777BBB4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1D78B5B44();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D77EF85C()
{
  if (!qword_1EE0900F0)
  {
    sub_1D78B5B44();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0900F0);
    }
  }
}

uint64_t sub_1D77EF8C4(uint64_t a1, uint64_t a2)
{
  sub_1D77EF85C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D77EF950(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D77F0108(255, a3, a4, MEMORY[0x1E69D6B18]);
    v5 = sub_1D78B6574();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D77EFA7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B6574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D77EFAE0()
{
  if (!qword_1EC9CA538)
  {
    sub_1D773F004(255, &qword_1EC9CA540);
    v0 = sub_1D78B5F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CA538);
    }
  }
}

void sub_1D77EFB68()
{
  if (!qword_1EC9CA550)
  {
    sub_1D77EFBEC(255, &qword_1EE08E5C8, &unk_1EE08E580, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
    v0 = sub_1D78B4184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CA550);
    }
  }
}

void sub_1D77EFBEC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773D21C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D77EFC54()
{
  if (!qword_1EC9CA558)
  {
    sub_1D77EFBEC(255, &qword_1EE08E5C8, &unk_1EE08E580, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
    v0 = sub_1D78B6574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CA558);
    }
  }
}

unint64_t sub_1D77EFD20()
{
  result = qword_1EE094AF0;
  if (!qword_1EE094AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094AF0);
  }

  return result;
}

void sub_1D77EFD88(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D78B6434();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D77EFDD8()
{
  if (!qword_1EE08FB68)
  {
    sub_1D78B56F4();
    sub_1D77EFF30(&unk_1EE0902A0, 255, MEMORY[0x1E69B6000]);
    v0 = sub_1D78B6434();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FB68);
    }
  }
}

uint64_t sub_1D77EFF30(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D77EFF78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D77F0108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_5Tm()
{
  v1 = sub_1D78B5934();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_11Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1D77F0488()
{
  result = qword_1EC9CA588;
  if (!qword_1EC9CA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA588);
  }

  return result;
}

uint64_t sub_1D77F055C()
{
  v0 = sub_1D78B4304();
  __swift_allocate_value_buffer(v0, qword_1EC9CA590);
  __swift_project_value_buffer(v0, qword_1EC9CA590);
  v1 = *MEMORY[0x1E69B5020];
  return sub_1D78B4314();
}

uint64_t sub_1D77F05FC()
{
  v1 = sub_1D78B31D4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1D774040C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D77F0714, 0, 0);
}

uint64_t sub_1D77F0714()
{
  sub_1D77F0E38();
  sub_1D774040C(0, &qword_1EC9CA5A8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D78BCAB0;
  if (qword_1EE0905C0 != -1)
  {
    swift_once();
  }

  v4 = v0[4];
  v5 = v0[2];
  v6 = v0[3];
  (*(v2 + 56))(v0[5], 1, 1, v1);
  (*(v6 + 104))(v4, *MEMORY[0x1E6968F70], v5);

  sub_1D78B3284();

  v7 = v0[1];

  return v7(v3);
}

uint64_t sub_1D77F090C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B43F4();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B4464();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B4414();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D78B4434();
  v10 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D78B43E4();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1D78B4444();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = a1;
  v15[1] = a2;
  (*(v16 + 104))(v15, *MEMORY[0x1E69D6280]);
  v17 = MEMORY[0x1E69D61D0];
  sub_1D774040C(0, &qword_1EC9CA5B0, MEMORY[0x1E69D61D0], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D78BCAB0;

  sub_1D78B43D4();
  v35 = v18;
  sub_1D77F1094();
  sub_1D774040C(0, &qword_1EC9CA5C0, v17, MEMORY[0x1E69E62F8]);
  sub_1D77F10EC();
  sub_1D78B6324();
  (*(v10 + 104))(v22, *MEMORY[0x1E69D6270], v23);
  (*(v25 + 104))(v24, *MEMORY[0x1E69D6260], v26);
  (*(v28 + 104))(v27, *MEMORY[0x1E69D62A0], v29);
  (*(v31 + 104))(v30, *MEMORY[0x1E69D6258], v32);
  sub_1D78B4474();
  swift_allocObject();
  v34 = 0;
  v19 = v33;
  result = sub_1D78B4454();
  if (!v19)
  {
    sub_1D78B4404();
  }

  return result;
}

uint64_t sub_1D77F0E38()
{
  if (qword_1EC9C8488 != -1)
  {
    swift_once();
  }

  v0 = sub_1D78B4304();
  __swift_project_value_buffer(v0, qword_1EC9CA590);
  v1 = sub_1D78B42E4();
  v2 = sub_1D78B60A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D7739000, v1, v2, "Performing checkpoint operation on databases", v3, 2u);
    MEMORY[0x1DA7043F0](v3, -1, -1);
  }

  if (qword_1EE0905C0 != -1)
  {
    swift_once();
  }

  return sub_1D77F090C(qword_1EE0905C8, unk_1EE0905D0);
}

unint64_t sub_1D77F1094()
{
  result = qword_1EC9CA5B8;
  if (!qword_1EC9CA5B8)
  {
    sub_1D78B43E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA5B8);
  }

  return result;
}

unint64_t sub_1D77F10EC()
{
  result = qword_1EC9CA5C8;
  if (!qword_1EC9CA5C8)
  {
    sub_1D774040C(255, &qword_1EC9CA5C0, MEMORY[0x1E69D61D0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA5C8);
  }

  return result;
}

uint64_t sub_1D77F1178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D77F11C0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t SubscriptionOfflineAlert.title.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1D78B5C74();
    v5 = v4;

    if (v3 == 0xD000000000000010 && 0x80000001D78CF0A0 == v5)
    {
    }

    else
    {
      sub_1D78B6724();
    }
  }

  type metadata accessor for Localized();
  v7 = [v0 bundleForClass_];
  v8 = sub_1D78B3134();

  return v8;
}

uint64_t SubscriptionOfflineAlert.message.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1D78B5C74();
    v5 = v4;

    if (v3 == 0xD000000000000010 && 0x80000001D78CF0A0 == v5)
    {
    }

    else
    {
      sub_1D78B6724();
    }
  }

  type metadata accessor for Localized();
  v7 = [v0 bundleForClass_];
  v8 = sub_1D78B3134();

  return v8;
}

uint64_t SubscriptionOfflineAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SubscriptionOfflineAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t SubscriptionOfflineAlert.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D77F1758()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77F1864(void *a1, char a2)
{
  if ([a1 isExplicitContent])
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D774FE1C();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D78BCAB0;
    v5 = [a1 identifier];
    v6 = sub_1D78B5C74();
    v8 = v7;

    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1D775ABD4();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    sub_1D78B60A4();
    sub_1D78B42C4();
    v9 = 0;
  }

  else
  {
    v10 = sub_1D77F1A64(a2 & 1);
    v11 = sub_1D77F1C88(a2 & 1);
    v9 = v10 & (v11 ^ 1);
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D774FE1C();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D78BF690;
    v13 = MEMORY[0x1E69E6370];
    v14 = MEMORY[0x1E69E63A8];
    *(v12 + 56) = MEMORY[0x1E69E6370];
    *(v12 + 64) = v14;
    *(v12 + 32) = v9 & 1;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 72) = v10;
    *(v12 + 136) = v13;
    *(v12 + 144) = v14;
    *(v12 + 112) = v11 & 1;
    sub_1D78B60A4();
    sub_1D78B42C4();
  }

  return v9 & 1;
}

BOOL sub_1D77F1A64(char a1)
{
  v2 = v1;
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BF690;
  v6 = sub_1D775ABD4();
  v7 = v6;
  v8 = 29545;
  if (v3 < v4)
  {
    v8 = 0x746F6E207369;
  }

  v9 = 0xE600000000000000;
  if (v3 >= v4)
  {
    v9 = 0xE200000000000000;
  }

  v10 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = v6;
  *(v5 + 32) = v8;
  *(v5 + 40) = v9;
  v11 = sub_1D78B66E4();
  *(v5 + 96) = v10;
  *(v5 + 104) = v7;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  v13 = sub_1D78B66E4();
  *(v5 + 136) = v10;
  *(v5 + 144) = v7;
  *(v5 + 112) = v13;
  *(v5 + 120) = v14;
  sub_1D78B60A4();
  sub_1D78B42C4();

  if (v3 < v4)
  {
    sub_1D77F1ED4(a1 & 1);
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      v15 = [objc_opt_self() standardUserDefaults];
      v16 = *(v2 + 40);
      v17 = sub_1D78B5C44();
      [v15 setInteger:v16 forKey:v17];

      *(v2 + 40) = 0;
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
  }

  return v3 >= v4;
}

uint64_t sub_1D77F1C88(char a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 56);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BF690;
  v5 = sub_1D775ABD4();
  v6 = v5;
  v7 = 29545;
  if (v2 < v3)
  {
    v7 = 0x746F6E207369;
  }

  v8 = 0xE600000000000000;
  if (v2 >= v3)
  {
    v8 = 0xE200000000000000;
  }

  v9 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = v5;
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  v10 = sub_1D78B66E4();
  *(v4 + 96) = v9;
  *(v4 + 104) = v6;
  *(v4 + 72) = v10;
  *(v4 + 80) = v11;
  v12 = sub_1D78B66E4();
  *(v4 + 136) = v9;
  *(v4 + 144) = v6;
  *(v4 + 112) = v12;
  *(v4 + 120) = v13;
  sub_1D78B60A4();
  sub_1D78B42C4();

  if (v2 >= v3)
  {
    sub_1D78B60A4();
    sub_1D78B42C4();
    return v2 >= v3;
  }

  if (a1)
  {
    return v2 >= v3;
  }

  v15 = *(v1 + 32);
  if (!__OFADD__(v15, 1))
  {
    *(v1 + 32) = v15 + 1;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D78BCAB0;
    v17 = sub_1D78B66E4();
    *(v16 + 56) = v9;
    *(v16 + 64) = v6;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    sub_1D78B60A4();
    sub_1D78B42C4();

    return v2 >= v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77F1ED4(uint64_t result)
{
  if ((result & 1) == 0)
  {
    v2 = *(v1 + 40);
    v3 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      v4 = [objc_opt_self() standardUserDefaults];
      v5 = *(v1 + 40);
      v6 = sub_1D78B5C44();
      [v4 setInteger:v5 forKey:v6];

      *(v1 + 40) = v3;
      if (qword_1EE08FB98 == -1)
      {
LABEL_4:
        sub_1D774FE1C();
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_1D78BCAB0;
        v8 = sub_1D78B66E4();
        v10 = v9;
        *(v7 + 56) = MEMORY[0x1E69E6158];
        *(v7 + 64) = sub_1D775ABD4();
        *(v7 + 32) = v8;
        *(v7 + 40) = v10;
        sub_1D78B60A4();
        sub_1D78B42C4();
      }
    }

    swift_once();
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1D77F2044()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D77F20D8()
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  result = sub_1D78B42C4();
  *(v0 + 32) = 0;
  return result;
}

uint64_t sub_1D77F21B8()
{
  result = sub_1D78B5C44();
  qword_1EE08FDE8 = result;
  return result;
}

id sub_1D77F2238(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void sub_1D77F2298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 16);

  v14 = [v13 refreshForPurchase_];
  v15 = swift_allocObject();
  v15[2] = sub_1D77F2FE4;
  v15[3] = v12;
  v15[4] = a6;
  v15[5] = a3;
  v15[6] = a4;
  v26 = sub_1D77F2F58;
  v27 = v15;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D77CB678;
  v25 = &block_descriptor_18;
  v16 = _Block_copy(&v22);

  v17 = a6;

  v18 = [v14 then_];
  _Block_release(v16);

  if (v18)
  {

    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    v26 = sub_1D77F2F68;
    v27 = v19;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1D7797914;
    v25 = &block_descriptor_26_0;
    v20 = _Block_copy(&v22);

    v21 = [v18 error_];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

double sub_1D77F24E4@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, id)@<X1>, void *a3@<X3>, void (*a4)(void)@<X4>, _OWORD *a5@<X8>)
{
  sub_1D779C6B0(a1, v15);
  if (!v16)
  {
    sub_1D7756B84(v15);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_1D77F2CA8();
    v10 = swift_allocError();
    *v11 = 0;
    a4();

    goto LABEL_6;
  }

  v9 = a3;
  a2(v13, v14, v9);

LABEL_6:
  result = 0.0;
  *a5 = 0u;
  a5[1] = 0u;
  return result;
}

void sub_1D77F25E0(void *a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = a1;
    v4 = a1;
    v5 = v3;
  }

  else
  {
    sub_1D77F2CA8();
    v5 = swift_allocError();
    v3 = v5;
    *v6 = 0;
  }

  a2(v5);
}

void sub_1D77F2660(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 24);

  v12 = sub_1D78B5C44();
  v13 = [v11 purchaseLookUpEntryForTagID_];

  if (v13)
  {
    v14 = [v13 purchaseID];
    if (v14)
    {
      v15 = v14;
      sub_1D78B5C74();

      if ([v13 purchaseValidationState] == 1)
      {
        MEMORY[0x1EEE9AC00](1);
        sub_1D77F2E70();
        sub_1D78B41F4();

        v16 = swift_allocObject();
        *(v16 + 16) = sub_1D77F2CA4;
        *(v16 + 24) = v10;
        v17 = sub_1D78B4014();
        type metadata accessor for ReceiptRefresher();
        sub_1D78B40A4();

        v18 = swift_allocObject();
        *(v18 + 16) = a3;
        *(v18 + 24) = a4;

        v19 = sub_1D78B4014();
        sub_1D78B40D4();

        return;
      }
    }

    else
    {
    }
  }

  sub_1D77F2CA8();
  v20 = swift_allocError();
  *v21 = 1;
  a3();
}

uint64_t sub_1D77F2940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  (*(v5 + 48))(a2, a3, 1, ObjectType, v5);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_1D78B4014();
  v9 = sub_1D78B40D4();

  return v9;
}

uint64_t sub_1D77F2A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D779C73C(0, &qword_1EC9CA5D0, &type metadata for ReceiptRefreshResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D78B4174();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  v7 = sub_1D78B4014();
  v8 = sub_1D78B4094();

  return v8;
}

uint64_t sub_1D77F2B30()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D77F2B78(uint64_t a1, int a2)
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

uint64_t sub_1D77F2BC0(uint64_t result, int a2, int a3)
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

uint64_t sub_1D77F2C10()
{
  sub_1D779C73C(0, &qword_1EC9CA5D0, &type metadata for ReceiptRefreshResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

unint64_t sub_1D77F2CA8()
{
  result = qword_1EC9CA5D8;
  if (!qword_1EC9CA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA5D8);
  }

  return result;
}

uint64_t sub_1D77F2CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D774FE1C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCB50;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D775ABD4();
  *(v5 + 64) = v7;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  sub_1D773C9B8(0, &qword_1EE08F9F0);

  sub_1D78B6504();
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  sub_1D78B42C4();
}

unint64_t sub_1D77F2E70()
{
  result = qword_1EE08FF20;
  if (!qword_1EE08FF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FF20);
  }

  return result;
}

uint64_t sub_1D77F2F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  return v4(v6);
}

unint64_t sub_1D77F2F8C()
{
  result = qword_1EC9CA5E0;
  if (!qword_1EC9CA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA5E0);
  }

  return result;
}

uint64_t sub_1D77F2FEC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D77F3048(uint64_t a1)
{
  v16[1] = a1;
  v1 = sub_1D78B48D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77F3288();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D777246C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D78BCCA0;
  v9 = objc_opt_self();
  v10 = [v9 blackColor];
  v11 = [v10 colorWithAlphaComponent_];

  *(v8 + 32) = v11;
  v12 = [v9 blackColor];
  v13 = [v12 colorWithAlphaComponent_];

  *(v8 + 40) = v13;
  (*(v2 + 104))(v4, *MEMORY[0x1E69D7B60], v1);
  sub_1D78B48C4();
  v14 = sub_1D78B48E4();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  return sub_1D78B4554();
}

void sub_1D77F3288()
{
  if (!qword_1EE090408)
  {
    sub_1D78B48E4();
    v0 = sub_1D78B62A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE090408);
    }
  }
}

uint64_t sub_1D77F32E0()
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D774FE1C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D775ABD4();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D78B42C4();
}

uint64_t sub_1D77F340C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D77F3468(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  sub_1D775F820(a1, a2, ObjectType, v5);
  v7 = sub_1D78B4014();
  v8 = sub_1D78B40D4();

  return v8;
}

void PostPurchaseOnboardingConfiguration.init(config:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 landingPageArticleID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D78B5C74();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a1 callToActionText];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D78B5C74();
    v13 = v12;
  }

  else
  {

    v11 = 0;
    v13 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v13;
}

uint64_t PostPurchaseOnboardingConfiguration.landingPageArticleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PostPurchaseOnboardingConfiguration.callToActionText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

NewsSubscription::PostPurchaseOnboardingConfiguration __swiftcall PostPurchaseOnboardingConfiguration.init(landingPageArticleID:callToActionText:)(Swift::String_optional landingPageArticleID, Swift::String_optional callToActionText)
{
  *v2 = landingPageArticleID;
  v2[1] = callToActionText;
  result.callToActionText = callToActionText;
  result.landingPageArticleID = landingPageArticleID;
  return result;
}

uint64_t sub_1D77F3620(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1D77F367C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D77F3730@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D7740470(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v12 = sub_1D77F3914();
  v14 = v13;
  sub_1D77F3A1C(a1, v12, v13, v11);
  sub_1D776F538(v11, v9);
  v15 = [a1 identifier];
  v16 = sub_1D78B5C74();
  v18 = v17;

  v19 = *(v3 + 16);
  v20 = type metadata accessor for WebAccessAuthenticator();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_webSession] = 0;
  sub_1D776F538(v9, &v21[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_authenticationURL]);
  v22 = &v21[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_callbackURLScheme];
  *v22 = v12;
  v22[1] = v14;
  v23 = &v21[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_tagID];
  *v23 = v16;
  v23[1] = v18;
  *&v21[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_purchaseController] = v19;
  v27.receiver = v21;
  v27.super_class = v20;
  v24 = v19;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  sub_1D77C12C8(v9);
  a2[3] = v20;
  a2[4] = &off_1F52713C0;
  *a2 = v25;
  return sub_1D77C12C8(v11);
}

uint64_t sub_1D77F3914()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0x77656E656C707061;
  }

  v2 = 0x736B636F7473;
  v3 = sub_1D78B5C74();
  v5 = v4;

  if (v3 == 0xD000000000000010 && 0x80000001D78CF0A0 == v5)
  {

    return v2;
  }

  v7 = sub_1D78B6724();

  if ((v7 & 1) == 0)
  {
    return 0x77656E656C707061;
  }

  return v2;
}

uint64_t sub_1D77F3A1C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1D7740470(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  v14 = sub_1D78B3124();
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3944();
  if (sub_1D78B3934())
  {
    if (qword_1EE095468 != -1)
    {
      swift_once();
    }

    type metadata accessor for WebAccessAuthenticatorFactory();
    sub_1D77F3FD4();
    sub_1D78B3574();
    v18 = v43;
    v17 = v44;
    v19 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v19 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_1D78B6454();

      v43 = a2;
      v44 = a3;
      MEMORY[0x1DA702FF0](0xD00000000000001DLL, 0x80000001D78D72D0);
      v39 = MEMORY[0x1E69E6F90];
      sub_1D7740470(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
      v20 = swift_allocObject();
      v40 = xmmword_1D78BCAB0;
      *(v20 + 16) = xmmword_1D78BCAB0;
      v21 = [a1 identifier];
      v22 = sub_1D78B5C74();
      v41 = a4;
      v23 = v22;
      v25 = v24;

      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1D775ABD4();
      *(v20 + 32) = v23;
      *(v20 + 40) = v25;
      sub_1D78B5C94();

      sub_1D78B3114();
      sub_1D78B3104();
      MEMORY[0x1DA700360](v18, v17);
      sub_1D78B30F4();
      MEMORY[0x1DA700380](0x69726F687475612FLL, 0xEA0000000000657ALL);
      sub_1D7740470(0, &qword_1EC9CA5E8, MEMORY[0x1E6968178], v39);
      sub_1D78B3064();
      *(swift_allocObject() + 16) = v40;
      sub_1D78B3034();

      sub_1D78B3084();
      sub_1D78B30A4();
      return (*(v42 + 8))(v16, v14);
    }

    v31 = [a1 authorizationURL];
    if (v31)
    {
      v32 = a4;
      v33 = v31;
      sub_1D78B3254();

      a4 = v32;
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v37 = sub_1D78B3294();
    (*(*(v37 - 8) + 56))(v13, v34, 1, v37);
    v36 = v13;
  }

  else
  {
    v27 = [a1 authorizationURL];
    if (v27)
    {
      v28 = a4;
      v29 = v27;
      sub_1D78B3254();

      a4 = v28;
      v30 = sub_1D78B3294();
      (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
    }

    else
    {
      v35 = sub_1D78B3294();
      (*(*(v35 - 8) + 56))(v11, 1, 1, v35);
    }

    v36 = v11;
  }

  return sub_1D77AE4DC(v36, a4);
}

unint64_t sub_1D77F3FD4()
{
  result = qword_1EE091508[0];
  if (!qword_1EE091508[0])
  {
    type metadata accessor for WebAccessAuthenticatorFactory();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE091508);
  }

  return result;
}

uint64_t sub_1D77F4044@<X0>(uint64_t *a1@<X8>)
{
  sub_1D78B3F24();
  sub_1D77493AC(0);
  swift_allocObject();
  result = sub_1D78B4394();
  *a1 = result;
  return result;
}

void sub_1D77F40D4()
{
  sub_1D7748FBC(0, &qword_1EE0904B8, sub_1D77F6270, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D77F6270(0);
    v4 = v3;
    v5 = *(v3 - 8);
    if ((*(v5 + 48))(v2, 1, v3) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D78B4384();
      (*(v5 + 8))(v2, v4);
      v6 = sub_1D78B4014();
      sub_1D77BD4B8(0, &qword_1EE090010, MEMORY[0x1E69E62F8]);
      sub_1D78B4084();

      v7 = sub_1D78B4014();
      sub_1D77F6290();
      type metadata accessor for PurchaseAdContextEntriesManager();
      sub_1D78B40A4();

      v8 = sub_1D78B4014();
      sub_1D78B40B4();

      v9 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

uint64_t sub_1D77F4394()
{
  sub_1D7748FBC(0, &qword_1EE0904B8, sub_1D77F6270, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  sub_1D78B3F24();
  sub_1D78B43A4();

  sub_1D77F6270(0);
  v4 = v3;
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_1D78B4354();
    (*(v5 + 8))(v2, v4);
    return v7;
  }

  return result;
}

uint64_t sub_1D77F4504(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseAdContext();
  v69 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77F62F8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v62 - v14);
  sub_1D7748FBC(0, &qword_1EE08FF28, sub_1D77F62F8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v62 - v17);
  v19 = *a1;

  sub_1D78B3854();

  v20 = -1 << *(v19 + 32);
  v21 = *(v19 + 64);
  v22 = ~v20;
  v23 = -v20;
  v72 = v19;
  v73 = v19 + 64;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v74 = v22;
  v75 = 0;
  v76 = v24 & v21;
  v77 = 0;

  sub_1D7828C30(v18);
  v67 = *(v9 + 48);
  v68 = v9 + 48;
  if (v67(v18, 1, v8) == 1)
  {
LABEL_5:
    sub_1D779D528();

    sub_1D78B3864();
  }

  sub_1D77F6328(0);
  v27 = v26;
  v65 = v15;
  v66 = v8;
  v63 = v26;
  v64 = v18;
  while (1)
  {
    v30 = *(v8 + 48);
    v31 = v18 + v30;
    v32 = *(v18 + v30);
    v33 = *(v18 + v30 + 8);
    v34 = *(v27 + 48);
    v35 = (v15 + v30);
    *v15 = *v18;
    *v35 = v32;
    v35[1] = v33;
    sub_1D77F63C8(&v31[v34], v35 + v34);
    v36 = v70;
    sub_1D77F6530(v15, v70, sub_1D77F62F8);
    v37 = (v36 + *(v8 + 48));
    v38 = v27;
    v40 = *v37;
    v39 = v37[1];
    v41 = v15;
    v42 = v71;
    sub_1D77F6530(v41, v71, sub_1D77F62F8);
    v43 = v42 + *(v8 + 48);

    v44 = *(v38 + 48);
    swift_beginAccess();
    v45 = a2;
    v46 = v6;
    sub_1D77F63C8(v43 + v44, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v45 + 24);
    v48 = v78;
    v49 = v45;
    *(v45 + 24) = 0x8000000000000000;
    v51 = sub_1D777BBB4(v40, v39);
    v52 = v48[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      break;
    }

    v55 = v50;
    if (v48[3] >= v54)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v50)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1D782F374();
        if (v55)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_1D782C04C(v54, isUniquelyReferenced_nonNull_native);
      v56 = sub_1D777BBB4(v40, v39);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_22;
      }

      v51 = v56;
      if (v55)
      {
LABEL_7:

        v28 = v78;
        v6 = v46;
        sub_1D77F648C(v46, v78[7] + *(v69 + 72) * v51);
        goto LABEL_8;
      }
    }

    v28 = v78;
    v78[(v51 >> 6) + 8] |= 1 << v51;
    v58 = (v28[6] + 16 * v51);
    *v58 = v40;
    v58[1] = v39;
    v6 = v46;
    sub_1D77F63C8(v46, v28[7] + *(v69 + 72) * v51);
    v59 = v28[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_21;
    }

    v28[2] = v61;
LABEL_8:
    v27 = v63;
    v29 = *(v63 + 48);
    a2 = v49;
    *(v49 + 24) = v28;

    swift_endAccess();
    v15 = v65;
    sub_1D77F642C(v65, sub_1D77F62F8);
    sub_1D77F642C(v37 + v29, type metadata accessor for PurchaseAdContext);
    v18 = v64;
    sub_1D7828C30(v64);
    v8 = v66;
    if (v67(v18, 1, v66) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1D78B6784();
  __break(1u);
  return result;
}

uint64_t sub_1D77F4A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v35 = a1;
  v38 = sub_1D78B5254();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B52A4();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PurchaseAdContext();
  v8 = *(v7 - 8);
  v34 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B5264();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7748FBC(0, qword_1EE094360, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;

  sub_1D78B3854();

  sub_1D77F6530(a3, v16, type metadata accessor for PurchaseAdContext);
  (*(v8 + 56))(v16, 0, 1, v7);
  swift_beginAccess();
  v17 = v33;

  v18 = v16;
  v19 = v35;
  sub_1D7828040(v18, v35, v17);
  swift_endAccess();
  sub_1D7788448();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E7F88], v10);
  v31 = sub_1D78B6134();
  (*(v11 + 8))(v13, v10);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v32;
  sub_1D77F6530(a3, v32, type metadata accessor for PurchaseAdContext);
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v19;
  v23[4] = v17;
  sub_1D77F63C8(v21, v23 + v22);
  aBlock[4] = sub_1D77F6598;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_17_1;
  v24 = _Block_copy(aBlock);

  v25 = v36;
  sub_1D78B5274();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1D77490CC(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  v26 = MEMORY[0x1E69E7F60];
  sub_1D7748FBC(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D774162C(&qword_1EE090030, &qword_1EE090040, v26);
  v28 = v37;
  v27 = v38;
  sub_1D78B6324();
  v29 = v31;
  MEMORY[0x1DA7033B0](0, v25, v28, v24);
  _Block_release(v24);

  (*(v41 + 8))(v28, v27);
  (*(v39 + 8))(v25, v40);

  sub_1D78B3864();
}

void sub_1D77F503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7748FBC(0, &qword_1EE0904B8, sub_1D77F6270, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D77F6270(0);
    v11 = v10;
    v12 = *(v10 - 8);
    if ((*(v12 + 48))(v9, 1, v10) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D7748FBC(0, &unk_1EC9CA5F0, sub_1D77F6600, MEMORY[0x1E69E6F90]);
      sub_1D77F6600();
      v14 = v13 - 8;
      v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D78BCAB0;
      v17 = (v16 + v15);
      v18 = *(v14 + 56);
      *v17 = a2;
      v17[1] = a3;
      sub_1D77F6530(a4, v17 + v18, type metadata accessor for PurchaseAdContext);

      sub_1D77FF648(v16);
      swift_setDeallocating();
      sub_1D77F642C(v17, sub_1D77F6600);
      swift_deallocClassInstance();
      sub_1D78B4364();

      (*(v12 + 8))(v9, v11);
      v19 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

uint64_t sub_1D77F5354(uint64_t a1, uint64_t a2)
{
  v24 = sub_1D78B5254();
  v27 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B52A4();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D78B5264();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7748FBC(0, qword_1EE094360, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;

  sub_1D78B3854();

  swift_beginAccess();
  sub_1D782B0E0(a1, a2, v15);
  swift_endAccess();
  sub_1D77F6668(v15);
  sub_1D7788448();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7F88], v9);
  v16 = sub_1D78B6134();
  (*(v10 + 8))(v12, v9);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = sub_1D77F66F4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_24;
  v19 = _Block_copy(aBlock);

  sub_1D78B5274();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D77490CC(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  v20 = MEMORY[0x1E69E7F60];
  sub_1D7748FBC(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D774162C(&qword_1EE090030, &qword_1EE090040, v20);
  v21 = v24;
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v8, v5, v19);
  _Block_release(v19);

  (*(v27 + 8))(v5, v21);
  (*(v25 + 8))(v8, v26);

  sub_1D78B3864();
}

void sub_1D77F5820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7748FBC(0, &qword_1EE0904B8, sub_1D77F6270, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D77F6270(0);
    v9 = v8;
    v10 = *(v8 - 8);
    if ((*(v10 + 48))(v7, 1, v8) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D77BD4B8(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1D78BCAB0;
      *(v11 + 32) = a2;
      *(v11 + 40) = a3;

      sub_1D78B4374();

      (*(v10 + 8))(v7, v9);
      v12 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

uint64_t sub_1D77F5A40()
{
  v16 = sub_1D78B5254();
  v19 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D78B52A4();
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B5264();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D78B3854();

  swift_beginAccess();
  *(v0 + 24) = MEMORY[0x1E69E7CC8];

  sub_1D7788448();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E7F88], v6);
  v10 = sub_1D78B6134();
  (*(v7 + 8))(v9, v6);
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D77F64F0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_10;
  v12 = _Block_copy(aBlock);

  sub_1D78B5274();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D77490CC(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  v13 = MEMORY[0x1E69E7F60];
  sub_1D7748FBC(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D774162C(&qword_1EE090030, &qword_1EE090040, v13);
  v14 = v16;
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v5, v2, v12);
  _Block_release(v12);

  (*(v19 + 8))(v2, v14);
  (*(v17 + 8))(v5, v18);

  sub_1D78B3864();
}

void sub_1D77F5E60()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D77BD4B8(0, &qword_1EE090010, MEMORY[0x1E69E62F8]);
    sub_1D78B41F4();

    v0 = sub_1D78B4014();
    sub_1D78B4084();

    v1 = sub_1D78B4014();
    sub_1D78B40D4();
  }
}

uint64_t sub_1D77F5F90()
{
  sub_1D7748FBC(0, &qword_1EE0904B8, sub_1D77F6270, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  sub_1D78B3F24();
  sub_1D78B43A4();

  sub_1D77F6270(0);
  v4 = v3;
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_1D78B4384();
    (*(v5 + 8))(v2, v4);
    return v7;
  }

  return result;
}

uint64_t sub_1D77F60E8()
{
  sub_1D7748FBC(0, &qword_1EE0904B8, sub_1D77F6270, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  sub_1D78B3F24();
  sub_1D78B43A4();

  sub_1D77F6270(0);
  v4 = v3;
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_1D78B4374();
    (*(v5 + 8))(v2, v4);
    return v7;
  }

  return result;
}

void sub_1D77F6290()
{
  if (!qword_1EE0901A8)
  {
    type metadata accessor for PurchaseAdContext();
    v0 = sub_1D78B5BF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0901A8);
    }
  }
}

void sub_1D77F6358(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D77F63C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseAdContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77F642C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D77F648C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseAdContext();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77F6530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D77F6598()
{
  v1 = *(type metadata accessor for PurchaseAdContext() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1D77F503C(v2, v3, v4, v5);
}

void sub_1D77F6600()
{
  if (!qword_1EE090118)
  {
    type metadata accessor for PurchaseAdContext();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE090118);
    }
  }
}

uint64_t sub_1D77F6668(uint64_t a1)
{
  sub_1D7748FBC(0, qword_1EE094360, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D77F671C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_performingAuthentication;
  if (v4[OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_performingAuthentication])
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v10 = OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_completionHandlers;
    swift_beginAccess();
    v11 = *&v5[v10];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v5[v10] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1D777B378(0, v11[2] + 1, 1, v11);
      *&v5[v10] = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1D777B378((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1D77F7204;
    v15[5] = v9;
    *&v5[v10] = v11;
    swift_endAccess();
  }

  else
  {
    v30 = sub_1D78B60B4();
    v18 = [objc_allocWithZone(MEMORY[0x1E698C7B0]) init];
    sub_1D78B6454();
    MEMORY[0x1DA702FF0](0xD000000000000083, 0x80000001D78D75D0);
    v19 = [a2 debugDescription];
    v20 = sub_1D78B5C74();
    v22 = v21;

    MEMORY[0x1DA702FF0](v20, v22);

    v23 = sub_1D78B5C44();

    [v18 setDebugReason_];

    v5[v8] = 1;
    v24 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithRequest:a2 presentingViewController:v30];
    v25 = [v24 performAuthentication];
    v26 = swift_allocObject();
    v26[2] = a1;
    v26[3] = v5;
    v26[4] = a3;
    v26[5] = a4;
    aBlock[4] = sub_1D77F71F8;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7780F60;
    aBlock[3] = &block_descriptor_20;
    v27 = _Block_copy(aBlock);
    v28 = a1;
    v29 = v5;

    [v25 addFinishBlock_];
    _Block_release(v27);
  }
}

uint64_t sub_1D77F6A44(void *a1, void *a2, void *a3, uint64_t a4, uint64_t (*a5)(void *, void *), uint64_t a6)
{
  v49 = a6;
  v50 = a5;
  v48 = a4;
  v9 = sub_1D78B5254();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D78B52A4();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v44 = a3;
    v45 = v15;
    v46 = v14;
    v47 = v10;
    v18 = a2;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D774FE1C();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D78BCAB0;
    aBlock = 0;
    v52 = 0xE000000000000000;
    v58 = a2;
    sub_1D773C9B8(0, &qword_1EE08F9F0);
    sub_1D78B6504();
    v20 = aBlock;
    v21 = v52;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1D775ABD4();
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    sub_1D78B42C4();

    sub_1D7788448();
    v22 = sub_1D78B6104();
    v23 = swift_allocObject();
    v24 = v44;
    *(v23 + 16) = v44;
    v55 = sub_1D77F7234;
    v56 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1D775FB6C;
    v54 = &block_descriptor_20;
    v25 = _Block_copy(&aBlock);
    v26 = v24;

    sub_1D78B5274();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D77465FC(&qword_1EE090300, MEMORY[0x1E69E7F60]);
    sub_1D77A2AC4();
    sub_1D77465FC(&qword_1EE090030, sub_1D77A2AC4);
    sub_1D78B6324();
    MEMORY[0x1DA7033B0](0, v17, v12, v25);
    _Block_release(v25);

    (*(v47 + 8))(v12, v9);
    (*(v45 + 8))(v17, v46);
    v27 = v48;
  }

  else
  {
    v27 = v48;
    if (a1)
    {
      v34 = [a1 account];
      if (v34)
      {

        if (qword_1EE08FB98 != -1)
        {
          swift_once();
        }

        sub_1D78B60A4();
        sub_1D78B42C4();
        v35 = objc_opt_self();
        v36 = [v35 sharedAccount];
        [v36 reloadiTunesAccount];

        v37 = *__swift_project_boxed_opaque_existential_1((v27 + OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_entitlementsManager), *(v27 + OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_entitlementsManager + 24));
        v38 = [v35 sharedAccount];
        v39 = [v38 isUserSignedIntoiTunes];

        if (v39)
        {
          v40 = *(v37 + 24);
          v41 = swift_allocObject();
          *(v41 + 16) = v37;
          *(v41 + 24) = 1;
          v55 = sub_1D77A2CD4;
          v56 = v41;
          aBlock = MEMORY[0x1E69E9820];
          v52 = 1107296256;
          v53 = sub_1D7781488;
          v54 = &block_descriptor_14_0;
          v42 = _Block_copy(&aBlock);

          [v40 refreshBundleSubscriptionWithCachePolicy:3 hideBundleDetectionUI:0 completion:v42];
          _Block_release(v42);
        }
      }
    }
  }

  *(v27 + OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_performingAuthentication) = 0;
  v28 = OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_completionHandlers;
  swift_beginAccess();
  v29 = *(v27 + v28);
  v30 = *(v29 + 16);
  if (v30)
  {

    v31 = v29 + 40;
    do
    {
      v32 = *(v31 - 8);
      v57 = a2;
      v58 = a1;

      v32(&v58, &v57);

      v31 += 16;
      --v30;
    }

    while (v30);
  }

  *(v27 + v28) = MEMORY[0x1E69E7CC0];

  return v50(a1, a2);
}

uint64_t sub_1D77F725C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D774584C(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  result = sub_1D78B39E4();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SubscriptionOffersModule();
    v7 = swift_allocObject();
    result = sub_1D7741E34(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for SubscriptionOffersModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D77F730C()
{
  type metadata accessor for SubscriptionOffersViewController();
  sub_1D78B3E44();

  sub_1D773CA14(0, &qword_1EC9CA680);
  sub_1D78B3E54();

  sub_1D773CA14(0, &unk_1EC9CA688);
  sub_1D78B3E54();

  sub_1D773CA14(0, &unk_1EE092210);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EC9CA698);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EC9CA6A0);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EC9CA6A8);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EC9CA6B0);
  sub_1D78B3E54();

  sub_1D773CA14(0, &unk_1EC9CA6B8);
  sub_1D78B3E54();
}

uint64_t sub_1D77F75AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D78B39F4();
  if (!v111)
  {
    __break(1u);
    goto LABEL_13;
  }

  v79 = v110;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA680);
  result = sub_1D78B39F4();
  if (!v109)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EC9CA688);
  result = sub_1D78B39F4();
  if (!v106)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v78 = v107;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA6A0);
  result = sub_1D78B39F4();
  if (!v105)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA6A8);
  result = sub_1D78B39F4();
  if (!v103)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA6B0);
  result = sub_1D78B39F4();
  if (!v101)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095800);
  result = sub_1D78B39F4();
  if (!v99[3])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095CE0);
  result = sub_1D78B39F4();
  if (!v98[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v72 = result;
  v73 = v112;
  v74 = v114;
  v75 = v113;
  v76 = v111;
  v77 = v106;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095B50);
  result = sub_1D78B39F4();
  if (v97[3])
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
    v71 = &v61;
    MEMORY[0x1EEE9AC00](v3);
    v5 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
    v70 = &v61;
    MEMORY[0x1EEE9AC00](v7);
    v9 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
    v69 = &v61;
    MEMORY[0x1EEE9AC00](v11);
    v13 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
    v68 = &v61;
    MEMORY[0x1EEE9AC00](v15);
    v17 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v5;
    v20 = *v9;
    v21 = *v13;
    v22 = *v17;
    v62 = type metadata accessor for SubscriptionOffersStyler();
    v95 = v62;
    v96 = &off_1F5272E68;
    v94[0] = v19;
    v23 = type metadata accessor for SubscriptionOffersRenderer();
    v92 = v23;
    v93 = &off_1F526A738;
    v91[0] = v20;
    v24 = type metadata accessor for SubscriptionOffersLayoutAttributesFactory();
    v89 = v24;
    v90 = &off_1F5271E38;
    v88[0] = v21;
    v25 = type metadata accessor for SubscriptionOffersViewModelFactory();
    v86 = v25;
    v87 = &off_1F526B7E8;
    v85[0] = v22;
    v64 = type metadata accessor for SubscriptionOffersViewController();
    v26 = objc_allocWithZone(v64);
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
    v67 = &v61;
    MEMORY[0x1EEE9AC00](v27);
    v29 = (&v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
    v66 = &v61;
    MEMORY[0x1EEE9AC00](v31);
    v33 = (&v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
    v65 = &v61;
    MEMORY[0x1EEE9AC00](v35);
    v37 = (&v61 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
    v63 = &v61;
    MEMORY[0x1EEE9AC00](v39);
    v41 = (&v61 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    v43 = *v29;
    v44 = *v33;
    v45 = *v37;
    v46 = *v41;
    v84[3] = v62;
    v84[4] = &off_1F5272E68;
    v84[0] = v43;
    v83[3] = v23;
    v83[4] = &off_1F526A738;
    v83[0] = v44;
    v82[3] = v24;
    v82[4] = &off_1F5271E38;
    v82[0] = v45;
    v81[3] = v25;
    v81[4] = &off_1F526B7E8;
    v81[0] = v46;
    v47 = OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_coverViewManager;
    sub_1D78B4754();
    swift_allocObject();
    *&v26[v47] = sub_1D78B4744();
    *&v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController____lazy_storage___verificationSpinner] = 0;
    *&v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController____lazy_storage___purchasingSpinner] = 0;
    *&v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_offers] = 0;
    v48 = &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModel];
    *v48 = 0u;
    *(v48 + 1) = 0u;
    *(v48 + 2) = 0u;
    v48[48] = 0;
    *&v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_tag] = 0;
    v49 = &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_routeModel];
    v50 = v76;
    *v49 = v79;
    *(v49 + 1) = v50;
    v51 = v74;
    v52 = v75;
    *(v49 + 2) = v73;
    *(v49 + 3) = v52;
    *(v49 + 4) = v51;
    sub_1D774584C(v84, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_styler]);
    v53 = &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_eventHandler];
    v54 = v78;
    *v53 = v77;
    *(v53 + 1) = v54;
    sub_1D774584C(v83, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_renderer]);
    sub_1D774584C(v82, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_layoutAttributesFactory]);
    sub_1D774584C(v81, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModelFactory]);
    sub_1D774584C(v99, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_purchasingSpinnerViewControllerFactory]);
    sub_1D774584C(v98, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_purchasePresenter]);
    v55 = v72;
    *&v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_purchaseController] = v72;
    sub_1D774584C(v97, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_webOptinFlowManager]);
    v56 = objc_allocWithZone(type metadata accessor for SubscriptionOffersView());
    swift_unknownObjectRetain();
    v57 = v55;
    v58 = [v56 initWithFrame_];
    *&v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_subscriptionOffersView] = v58;
    v80.receiver = v26;
    v80.super_class = v64;
    v59 = objc_msgSendSuper2(&v80, sel_initWithNibName_bundle_, 0, 0);
    *(*&v59[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_eventHandler] + 24) = &off_1F5267C48;
    swift_unknownObjectWeakAssign();
    v60 = v59;

    sub_1D78B4734();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v97);
    __swift_destroy_boxed_opaque_existential_1(v98);
    __swift_destroy_boxed_opaque_existential_1(v99);
    __swift_destroy_boxed_opaque_existential_1(v81);
    __swift_destroy_boxed_opaque_existential_1(v82);
    __swift_destroy_boxed_opaque_existential_1(v83);
    __swift_destroy_boxed_opaque_existential_1(v84);
    __swift_destroy_boxed_opaque_existential_1(v85);
    __swift_destroy_boxed_opaque_existential_1(v88);
    __swift_destroy_boxed_opaque_existential_1(v91);
    __swift_destroy_boxed_opaque_existential_1(v94);
    __swift_destroy_boxed_opaque_existential_1(v100);
    __swift_destroy_boxed_opaque_existential_1(v102);
    __swift_destroy_boxed_opaque_existential_1(v104);
    __swift_destroy_boxed_opaque_existential_1(v108);
    return v60;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D77F81D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095CE8);
  result = sub_1D78B39F4();
  if (v7)
  {
    v4 = type metadata accessor for SubscriptionOffersStyler();
    v5 = swift_allocObject();
    *(v5 + 56) = 0;
    result = sub_1D7741E34(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F5272E68;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D77F828C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D78B33C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA698);
  result = sub_1D78B39F4();
  v9 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE0);
  result = sub_1D78B39F4();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EC9CA6D0);
  result = sub_1D78B39F4();
  if (v16)
  {
    type metadata accessor for SubscriptionOffersEventHandler();
    v11 = swift_allocObject();
    v11[3] = 0;
    swift_unknownObjectWeakInit();
    v11[6] = v9;
    v11[7] = v10;
    sub_1D774584C(v17, (v11 + 8));
    sub_1D774584C(v15, (v11 + 13));
    swift_unknownObjectRetain();
    sub_1D78B33B4();
    v12 = sub_1D78B33A4();
    v14 = v13;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(v17);
    (*(v5 + 8))(v7, v4);
    v11[4] = v12;
    v11[5] = v14;
    *(v11[6] + 24) = &off_1F526E910;
    result = swift_unknownObjectWeakAssign();
    *a2 = v11;
    a2[1] = &off_1F526E980;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D77F8504@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0);
  result = sub_1D78B39E4();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for WebAccessOptInProvider();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F526E250;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D77F859C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FCC0);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D78B39F4();
  if (!v47)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v37 = v46;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EC9CA6B8);
  result = sub_1D78B39F4();
  v6 = v44;
  if (!v44)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v35 = v48;
  v36 = v50;
  v34 = v45;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FE78);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v32 = v49;
  v33 = v47;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FD00);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095910);
  result = sub_1D78B39F4();
  if (!v43)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v31 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095820);
  result = sub_1D78B39F4();
  if (v41)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
    v30 = &v30;
    MEMORY[0x1EEE9AC00](v10);
    v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for WebAccessConversionEventReporter();
    v39[3] = v15;
    v39[4] = &off_1F526CAD0;
    v39[0] = v14;
    type metadata accessor for SubscriptionOffersInteractor();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v39, v15);
    MEMORY[0x1EEE9AC00](v17);
    v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v38[4] = &off_1F526CAD0;
    v38[3] = v15;
    v38[0] = v21;
    *(v16 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v16 + 176) = 0u;
    *(v16 + 192) = 0u;
    *(v16 + 208) = 0;
    *(v16 + 80) = v5;
    *(v16 + 88) = 0;
    v22 = v33;
    *(v16 + 96) = v37;
    *(v16 + 104) = v22;
    v23 = v32;
    *(v16 + 112) = v35;
    *(v16 + 120) = v23;
    *(v16 + 128) = v36;
    v24 = v34;
    *(v16 + 32) = v6;
    *(v16 + 40) = v24;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v9;
    *(v16 + 72) = 0;
    sub_1D774584C(v42, v16 + 136);
    sub_1D774584C(v38, v16 + 216);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v25 = v7;
    v26 = v8;
    swift_unknownObjectRetain();
    v27 = sub_1D780D968();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v28 = *(v16 + 72);
    *(v16 + 72) = v27;

    __swift_destroy_boxed_opaque_existential_1(v39);
    result = __swift_destroy_boxed_opaque_existential_1(v40);
    v29 = v31;
    *v31 = v16;
    v29[1] = &off_1F526D368;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D77F8B28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA680);
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
      v10 = type metadata accessor for SubscriptionOffersStyler();
      v19[3] = v10;
      v19[4] = &off_1F5272E68;
      v19[0] = v9;
      v11 = type metadata accessor for SubscriptionOffersRenderer();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x1EEE9AC00](v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[5] = v10;
      v12[6] = &off_1F5272E68;
      v12[2] = v17;
      sub_1D7741E34(&v20, (v12 + 7));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v11;
      a2[4] = &off_1F526A738;
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

uint64_t sub_1D77F8DB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA680);
  result = sub_1D78B39F4();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for SubscriptionOffersStyler();
    v17[3] = v9;
    v17[4] = &off_1F5272E68;
    v17[0] = v8;
    v10 = type metadata accessor for SubscriptionOffersLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    *(v11 + 88) = v9;
    *(v11 + 96) = &off_1F5272E68;
    *(v11 + 64) = v16;
    *(v11 + 16) = xmmword_1D78C30B0;
    *(v11 + 32) = xmmword_1D78C30C0;
    *(v11 + 48) = xmmword_1D78C30D0;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F5271E38;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D77F9004@<X0>(void *a1@<X8>)
{
  type metadata accessor for SubscriptionSheetSubscribeButtonTextProvider();
  v2 = swift_allocObject();
  v3 = type metadata accessor for SubscriptionOffersViewModelFactory();
  v4 = swift_allocObject();
  result = sub_1D77F9350(v2, v4);
  a1[3] = v3;
  a1[4] = &off_1F526B7E8;
  *a1 = result;
  return result;
}

uint64_t sub_1D77F9078@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D00);
  result = sub_1D78B39F4();
  v5 = v21;
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095850);
  result = sub_1D78B39F4();
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = [objc_opt_self() sharedAccount];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095CD0);
  result = sub_1D78B39F4();
  if (v18)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x1EEE9AC00](v8);
    v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v11 + 16))(v10);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    MEMORY[0x1EEE9AC00](v12);
    v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v15 + 16))(v14);
    v16 = sub_1D77F94C8(v5, v6, *v10, v7, *v14);
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    *a2 = v16;
    a2[1] = &off_1F52665E0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D77F9350(uint64_t a1, void *a2)
{
  v16 = type metadata accessor for SubscriptionSheetSubscribeButtonTextProvider();
  v17 = &off_1F526B950;
  *&v15 = a1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_1D78B3134();
  v9 = v8;

  a2[2] = v7;
  a2[3] = v9;
  v10 = [v5 bundleForClass_];
  v11 = sub_1D78B3134();
  v13 = v12;

  a2[4] = v11;
  a2[5] = v13;
  sub_1D7741E34(&v15, (a2 + 6));
  return a2;
}

void *sub_1D77F94C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = type metadata accessor for HideMyEmailSignupConfigProvider();
  v27[3] = v11;
  v27[4] = &off_1F5267FE8;
  v27[0] = a3;
  v25 = v10;
  v26 = &off_1F52703E8;
  v24[0] = a5;
  type metadata accessor for SubscriptionOffersDataManager();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v15;
  v22 = *v19;
  v12[7] = v11;
  v12[8] = &off_1F5267FE8;
  v12[9] = v22;
  v12[3] = a2;
  v12[4] = v21;
  v12[12] = v10;
  v12[13] = &off_1F52703E8;
  v12[2] = a1;
  v12[14] = a4;
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v12;
}

uint64_t PaywallInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*PaywallInteractor.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D77C59A8;
}

uint64_t PaywallInteractor.tracker.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker;
  swift_beginAccess();
  return sub_1D7759064(v1 + v3, a1, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
}

unint64_t sub_1D77F9920()
{
  result = qword_1EE08E958;
  if (!qword_1EE08E958)
  {
    type metadata accessor for DefaultPersonalizedPaywallDataService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E958);
  }

  return result;
}

id PaywallInteractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaywallInteractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PaywallInteractor.requestWebAccessAuthentication(for:)(__int128 *a1)
{
  swift_getObjectType();
  v2 = a1[13];
  v14[12] = a1[12];
  v14[13] = v2;
  v3 = a1[15];
  v14[14] = a1[14];
  v14[15] = v3;
  v4 = a1[9];
  v14[8] = a1[8];
  v14[9] = v4;
  v5 = a1[11];
  v14[10] = a1[10];
  v14[11] = v5;
  v6 = a1[5];
  v14[4] = a1[4];
  v14[5] = v6;
  v7 = a1[7];
  v14[6] = a1[6];
  v14[7] = v7;
  v8 = a1[1];
  v14[0] = *a1;
  v14[1] = v8;
  v9 = a1[3];
  v14[2] = a1[2];
  v14[3] = v9;
  sub_1D77F9D88(v14, &v15);
  if (v16)
  {
    v10 = sub_1D7741E34(&v15, v17);
    MEMORY[0x1EEE9AC00](v10);
    sub_1D78B41F4();
    sub_1D7788448();
    v11 = sub_1D78B6104();
    sub_1D77FDB90(0, &unk_1EC9CA730, MEMORY[0x1E69E6720]);
    sub_1D78B40B4();

    v12 = sub_1D78B6104();
    sub_1D78B40E4();

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1D7759154(&v15, &unk_1EE092220, qword_1EE092230, &protocol descriptor for WebAccessAuthenticatorType);
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    return sub_1D78B42C4();
  }
}

uint64_t sub_1D77F9D88@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticator;
  swift_beginAccess();
  sub_1D7759064(v3 + v6, &v18, &unk_1EE092220, qword_1EE092230, &protocol descriptor for WebAccessAuthenticatorType);
  v7 = *(&v19 + 1);
  sub_1D7759154(&v18, &unk_1EE092220, qword_1EE092230, &protocol descriptor for WebAccessAuthenticatorType);
  if (!v7)
  {
    v8 = *(v3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticatorFactory + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticatorFactory), *(v3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticatorFactory + 24));
    v9 = a1[13];
    v30 = a1[12];
    v31 = v9;
    v10 = a1[15];
    v32 = a1[14];
    v33 = v10;
    v11 = a1[9];
    v26 = a1[8];
    v27 = v11;
    v12 = a1[11];
    v28 = a1[10];
    v29 = v12;
    v13 = a1[5];
    v22 = a1[4];
    v23 = v13;
    v14 = a1[7];
    v24 = a1[6];
    v25 = v14;
    v15 = a1[1];
    v18 = *a1;
    v19 = v15;
    v16 = a1[3];
    v20 = a1[2];
    v21 = v16;
    PaywallModel.tag.getter();
    (*(v8 + 8))(v34);
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1D7759634(v34, v3 + v6, &unk_1EE092220, qword_1EE092230, &protocol descriptor for WebAccessAuthenticatorType);
    swift_endAccess();
  }

  return sub_1D7759064(v3 + v6, a2, &unk_1EE092220, qword_1EE092230, &protocol descriptor for WebAccessAuthenticatorType);
}

uint64_t sub_1D77F9F38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (result)
  {
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(a2, &protocol witness table for PaywallInteractor, v5, v6, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  *a3 = v9 == 0;
  return result;
}

uint64_t sub_1D77FA00C(uint64_t a1, uint64_t a2)
{
  sub_1D78B6094();
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D7758FA8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_1D78B42D4();

  v5 = a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 56))(a2, &protocol witness table for PaywallInteractor, a1, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PaywallInteractor.requestVerifyAccessToken(for:paywallModel:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  swift_getObjectType();
  v4 = a3[13];
  v5 = a3[11];
  v50 = a3[12];
  v51 = v4;
  v6 = a3[13];
  v7 = a3[15];
  v52 = a3[14];
  v53 = v7;
  v8 = a3[9];
  v9 = a3[7];
  v46 = a3[8];
  v47 = v8;
  v10 = a3[9];
  v11 = a3[11];
  v48 = a3[10];
  v49 = v11;
  v12 = a3[5];
  v13 = a3[3];
  v42 = a3[4];
  v43 = v12;
  v14 = a3[5];
  v15 = a3[7];
  v44 = a3[6];
  v45 = v15;
  v16 = a3[1];
  v38 = *a3;
  v39 = v16;
  v17 = a3[3];
  v19 = *a3;
  v18 = a3[1];
  v40 = a3[2];
  v41 = v17;
  v34[12] = v50;
  v34[13] = v6;
  v20 = a3[15];
  v34[14] = v52;
  v34[15] = v20;
  v34[8] = v46;
  v34[9] = v10;
  v34[10] = v48;
  v34[11] = v5;
  v34[4] = v42;
  v34[5] = v14;
  v34[6] = v44;
  v34[7] = v9;
  v34[0] = v19;
  v34[1] = v18;
  v34[2] = v40;
  v34[3] = v13;
  sub_1D77F9D88(v34, &v35);
  if (!v36)
  {
    return sub_1D7759154(&v35, &unk_1EE092220, qword_1EE092230, &protocol descriptor for WebAccessAuthenticatorType);
  }

  v21 = sub_1D7741E34(&v35, v37);
  MEMORY[0x1EEE9AC00](v21);
  sub_1D78B41F4();
  sub_1D7788448();
  v22 = sub_1D78B6104();
  v23 = swift_allocObject();
  v24 = v51;
  v23[13] = v50;
  v23[14] = v24;
  v25 = v53;
  v23[15] = v52;
  v23[16] = v25;
  v26 = v47;
  v23[9] = v46;
  v23[10] = v26;
  v27 = v49;
  v23[11] = v48;
  v23[12] = v27;
  v28 = v43;
  v23[5] = v42;
  v23[6] = v28;
  v29 = v45;
  v23[7] = v44;
  v23[8] = v29;
  v30 = v39;
  v23[1] = v38;
  v23[2] = v30;
  v31 = v41;
  v23[3] = v40;
  v23[4] = v31;
  sub_1D7772AE8(&v38, v34);
  sub_1D78B40B4();

  v32 = sub_1D78B6104();
  sub_1D78B40E4();

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D77FA480(char *a1, uint64_t a2, _OWORD *a3)
{
  v6 = *a1;
  v7 = (a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker);
  if (*a1)
  {
    swift_beginAccess();
    if (v7[3])
    {
      sub_1D774584C(v7, &v38);
      v8 = *(&v39 + 1);
      v9 = v40;
      __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
      v54 = 0uLL;
      v55 = 0;
      (*(v9 + 48))(&v54, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(&v38);
    }
  }

  else
  {
    swift_beginAccess();
    if (v7[3])
    {
      sub_1D774584C(v7, &v38);
      v10 = *(&v39 + 1);
      v11 = v40;
      __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
      v54 = xmmword_1D78C31A0;
      v55 = 0;
      (*(v11 + 48))(&v54, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(&v38);
      v12 = v7[3];
      if (v12)
      {
        v56 = v3;
        v13 = v7[4];
        v14 = __swift_project_boxed_opaque_existential_1(v7, v12);
        v15 = *(v12 - 8);
        MEMORY[0x1EEE9AC00](v14);
        v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v15 + 16))(v17);
        v18 = (*(v13 + 8))(v12, v13);
        (*(v15 + 8))(v17, v12);
        v19 = sub_1D7773164(v18);
        if (v20)
        {
          v21 = v20;
          v37 = v19;
          v22 = a3[13];
          v50 = a3[12];
          v51 = v22;
          v23 = a3[15];
          v52 = a3[14];
          v53 = v23;
          v24 = a3[9];
          v46 = a3[8];
          v47 = v24;
          v25 = a3[11];
          v48 = a3[10];
          v49 = v25;
          v26 = a3[5];
          v42 = a3[4];
          v43 = v26;
          v27 = a3[7];
          v44 = a3[6];
          v45 = v27;
          v28 = a3[1];
          v38 = *a3;
          v39 = v28;
          v29 = a3[3];
          v40 = a3[2];
          v41 = v29;
          v30 = [PaywallModel.tag.getter() identifier];
          swift_unknownObjectRelease();
          v36 = sub_1D78B5C74();

          sub_1D77731CC(v18);

          if (qword_1EE08FB98 != -1)
          {
            swift_once();
          }

          sub_1D7758FA8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1D78BCAB0;
          *(v31 + 56) = MEMORY[0x1E69E6158];
          *(v31 + 64) = sub_1D775ABD4();
          *(v31 + 32) = v37;
          *(v31 + 40) = v21;

          sub_1D78B60A4();
          sub_1D78B42C4();

          sub_1D78B4244();
          sub_1D78B4234();
        }
      }
    }
  }

  v32 = a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = *(v32 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v54) = v6;
    (*(v34 + 48))(a2, &protocol witness table for PaywallInteractor, &v54, *(a3 + 28), ObjectType, v34);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D77FA934(uint64_t a1, uint64_t a2)
{
  sub_1D78B6094();
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D7758FA8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v20 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_1D78B42D4();

  v5 = sub_1D78B31B4();
  [v5 code];

  v6 = a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker;
  swift_beginAccess();
  if (*(v6 + 24))
  {
    sub_1D774584C(v6, v17);
    v7 = v18;
    v8 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v14 = sub_1D78B66E4();
    v15 = v9;
    v16 = 1;
    (*(v8 + 48))(&v14, v7, v8);
    sub_1D77C5618(v14, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  v10 = a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 56))(a2, &protocol witness table for PaywallInteractor, a1, ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PaywallInteractor.requestSubscription(paywallModel:purchaseID:postPurchaseDestination:purchaseSessionID:isDirectBuy:)(__int128 *a1, uint64_t *a2, uint64_t (*a3)(), uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  LODWORD(v112) = a6;
  v110 = a3;
  v111 = a5;
  v109 = a4;
  ObjectType = swift_getObjectType();
  sub_1D77FB750(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v100 - v11;
  v13 = type metadata accessor for PurchaseContext();
  v107 = *(v13 - 8);
  v108 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v101 = v15;
  v102 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v100 - v16;
  v17 = a1[13];
  v143 = a1[12];
  v144 = v17;
  v18 = a1[15];
  v145 = a1[14];
  v146 = v18;
  v19 = a1[9];
  v139 = a1[8];
  v140 = v19;
  v20 = a1[11];
  v141 = a1[10];
  v142 = v20;
  v21 = a1[5];
  v135 = a1[4];
  v136 = v21;
  v22 = a1[7];
  v137 = a1[6];
  v138 = v22;
  v23 = a1[1];
  v131 = *a1;
  v132 = v23;
  v24 = a1[3];
  v133 = a1[2];
  v134 = v24;
  v26 = *a2;
  v25 = a2[1];
  v27 = v6 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_dataManager;
  v28 = *(v6 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_dataManager);
  v29 = *(v27 + 8);
  v30 = swift_getObjectType();
  v31 = a1[12];
  v32 = a1[14];
  v33 = a1[15];
  v128 = a1[13];
  v129 = v32;
  v130 = v33;
  v34 = a1[8];
  v35 = a1[10];
  v36 = a1[11];
  v124 = a1[9];
  v125 = v35;
  v126 = v36;
  v127 = v31;
  v37 = a1[4];
  v38 = a1[6];
  v39 = a1[7];
  v120 = a1[5];
  v121 = v38;
  v122 = v39;
  v123 = v34;
  v40 = a1[1];
  v115 = *a1;
  v116 = v40;
  v41 = a1[3];
  v117 = a1[2];
  v118 = v41;
  v119 = v37;
  v114[0] = v26;
  v114[1] = v25;
  v42 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker;
  swift_beginAccess();
  v43 = v7 + v42;
  v44 = v12;
  sub_1D7759064(v43, v113, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  v45 = *(v29 + 24);
  v104 = v29;
  v46 = v111;
  v47 = v112;
  v111 = v30;
  v112 = v28;
  v45(&v115, v114, v109, v46, v113, v110, v47, v30, v29);
  sub_1D7759154(v113, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  v48 = v107;
  (*(v107 + 56))(v44, 0, 1, v108);
  v49 = v44;
  v50 = v106;
  sub_1D77FDAA8(v49, v106, type metadata accessor for PurchaseContext);
  if (*(v50 + 56) == 1)
  {
    v128 = v144;
    v129 = v145;
    v130 = v146;
    v124 = v140;
    v125 = v141;
    v126 = v142;
    v127 = v143;
    v120 = v136;
    v121 = v137;
    v122 = v138;
    v123 = v139;
    v115 = v131;
    v116 = v132;
    v117 = v133;
    v118 = v134;
    v119 = v135;
    v112 = (*(v104 + 8))(&v115, v111);
    if (v112)
    {
      v51 = [v112 isEnabled];
      if (v51)
      {
        MEMORY[0x1EEE9AC00](v51);
        v52 = v105;
        sub_1D78B41F4();
        v53 = v102;
        v110 = type metadata accessor for PurchaseContext;
        sub_1D77FDA40(v50, v102, type metadata accessor for PurchaseContext);
        v54 = *(v48 + 80);
        v55 = (v54 + 16) & ~v54;
        v109 = v54;
        v111 = v101 + 7;
        v56 = (v101 + 7 + v55) & 0xFFFFFFFFFFFFFFF8;
        v57 = v52;
        v58 = swift_allocObject();
        sub_1D77FDAA8(v53, v58 + v55, type metadata accessor for PurchaseContext);
        v59 = (v58 + v56);
        v60 = v144;
        v59[12] = v143;
        v59[13] = v60;
        v61 = v146;
        v59[14] = v145;
        v59[15] = v61;
        v62 = v140;
        v59[8] = v139;
        v59[9] = v62;
        v63 = v142;
        v59[10] = v141;
        v59[11] = v63;
        v64 = v136;
        v59[4] = v135;
        v59[5] = v64;
        v65 = v138;
        v59[6] = v137;
        v59[7] = v65;
        v66 = v132;
        *v59 = v131;
        v59[1] = v66;
        v67 = v134;
        v59[2] = v133;
        v59[3] = v67;
        sub_1D7772AE8(&v131, &v115);
        v68 = sub_1D78B4014();
        type metadata accessor for HideMyEmailSignupDataModel();
        sub_1D78B40A4();

        sub_1D7788448();
        v69 = v50;
        v70 = sub_1D78B6104();
        *(swift_allocObject() + 16) = v57;
        sub_1D77FB750(0, &qword_1EC9CA740, sub_1D77FBC1C, MEMORY[0x1E69E6720]);
        v71 = v57;
        sub_1D78B40B4();

        v72 = sub_1D78B6104();
        v73 = v69;
        v74 = v102;
        v75 = v110;
        sub_1D77FDA40(v73, v102, v110);
        v76 = (v109 + 24) & ~v109;
        v77 = (v111 + v76) & 0xFFFFFFFFFFFFFFF8;
        v78 = swift_allocObject();
        *(v78 + 16) = v71;
        sub_1D77FDAA8(v74, v78 + v76, v75);
        v79 = (v78 + v77);
        v80 = v144;
        v79[12] = v143;
        v79[13] = v80;
        v81 = v146;
        v79[14] = v145;
        v79[15] = v81;
        v82 = v140;
        v79[8] = v139;
        v79[9] = v82;
        v83 = v142;
        v79[10] = v141;
        v79[11] = v83;
        v84 = v136;
        v79[4] = v135;
        v79[5] = v84;
        v85 = v138;
        v79[6] = v137;
        v79[7] = v85;
        v86 = v132;
        *v79 = v131;
        v79[1] = v86;
        v87 = v134;
        v79[2] = v133;
        v79[3] = v87;
        sub_1D7772AE8(&v131, &v115);
        v88 = v71;
        sub_1D78B40E4();

        v89 = v106;
        return sub_1D7791954(v89);
      }
    }
  }

  sub_1D78B6094();
  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  sub_1D78B42D4();
  v90 = v105;
  v91 = *&v105[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability + 24];
  v92 = *&v105[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability + 32];
  __swift_project_boxed_opaque_existential_1(&v105[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability], v91);
  v93 = (*(v92 + 8))(v91, v92);
  v94 = &v90[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v95 = *(v94 + 1);
    v96 = swift_getObjectType();
    v128 = v144;
    v129 = v145;
    v130 = v146;
    v124 = v140;
    v125 = v141;
    v126 = v142;
    v127 = v143;
    v120 = v136;
    v121 = v137;
    v122 = v138;
    v123 = v139;
    v115 = v131;
    v116 = v132;
    v117 = v133;
    v97 = v145;
    v118 = v134;
    v119 = v135;
    v98 = PaywallModel.purchaseType.getter();
    v114[0] = (v93 & 1) == 0;
    (*(v95 + 8))(v50, v97, v98, v114, v96, v95);
    swift_unknownObjectRelease();
  }

  v89 = v50;
  return sub_1D7791954(v89);
}

void sub_1D77FB750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D77FB7B4(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 72))(a1, &protocol witness table for PaywallInteractor, ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    sub_1D77FDB90(0, &qword_1EE0951C0, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }
}

uint64_t sub_1D77FB8B4(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PurchaseContext() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_dataManager + 8);
  ObjectType = swift_getObjectType();
  v9 = v6[13];
  v18[12] = v6[12];
  v18[13] = v9;
  v10 = v6[15];
  v18[14] = v6[14];
  v18[15] = v10;
  v11 = v6[9];
  v18[8] = v6[8];
  v18[9] = v11;
  v12 = v6[11];
  v18[10] = v6[10];
  v18[11] = v12;
  v13 = v6[5];
  v18[4] = v6[4];
  v18[5] = v13;
  v14 = v6[7];
  v18[6] = v6[6];
  v18[7] = v14;
  v15 = v6[1];
  v18[0] = *v6;
  v18[1] = v15;
  v16 = v6[3];
  v18[2] = v6[2];
  v18[3] = v16;
  return (*(v7 + 16))(v2 + v5, v18, ObjectType, v7);
}

void sub_1D77FB9E0(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for HideMyEmailSignupDataModel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &a2[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    v21 = a4;
    ObjectType = swift_getObjectType();
    (*(v12 + 80))(a3, &protocol witness table for PaywallInteractor, ObjectType, v12);
    swift_unknownObjectRelease();
    sub_1D77FDA40(a1, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HideMyEmailSignupDataModel);
    v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    sub_1D77FDAA8(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for HideMyEmailSignupDataModel);
    v16 = a2;
    v17 = sub_1D78B4014();
    sub_1D77FDB90(0, &unk_1EC9CA730, MEMORY[0x1E69E6720]);
    v18 = sub_1D78B4094();
    a4 = v21;
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  *a4 = v19;
}

void sub_1D77FBC1C()
{
  if (!qword_1EC9CA9B0)
  {
    sub_1D77FDB90(255, &unk_1EC9CA730, MEMORY[0x1E69E6720]);
    v0 = sub_1D78B4184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CA9B0);
    }
  }
}

uint64_t sub_1D77FBC90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 64))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void sub_1D77FBD48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v9 = a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 80))(a3, &protocol witness table for PaywallInteractor, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  *&v39 = a1;
  v12 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v13 = v55;
  if (v55 < 2)
  {
    sub_1D77FDA30(v55);
LABEL_6:
    sub_1D78B6094();
    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    sub_1D7758FA8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D78BCAB0;
    swift_getErrorValue();
    v15 = sub_1D78B67B4();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1D775ABD4();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_1D78B42D4();

    v18 = *(a3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability + 24);
    v19 = *(a3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability + 32);
    __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability), v18);
    v20 = (*(v19 + 8))(v18, v19);
    v21 = a3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v21 + 8);
      v23 = swift_getObjectType();
      v24 = *(a5 + 28);
      v25 = a5[13];
      v51 = a5[12];
      v52 = v25;
      v26 = a5[15];
      v53 = a5[14];
      v54 = v26;
      v27 = a5[9];
      v47 = a5[8];
      v48 = v27;
      v28 = a5[11];
      v49 = a5[10];
      v50 = v28;
      v29 = a5[5];
      v43 = a5[4];
      v44 = v29;
      v30 = a5[7];
      v45 = a5[6];
      v46 = v30;
      v31 = a5[1];
      v39 = *a5;
      v40 = v31;
      v32 = a5[3];
      v41 = a5[2];
      v42 = v32;
      v33 = PaywallModel.purchaseType.getter();
      v38 = (v20 & 1) == 0;
      (*(v22 + 8))(a4, v24, v33, &v38, v23, v22);
      swift_unknownObjectRelease();
    }

    return;
  }

  sub_1D78B6094();
  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  sub_1D7758FA8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D78BCAB0;
  swift_getErrorValue();
  v35 = sub_1D78B67B4();
  v37 = v36;
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = sub_1D775ABD4();
  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  sub_1D78B42D4();

  sub_1D77FDA30(v13);
}

void sub_1D77FC174(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PurchaseContext() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D77FBD48(a1, a2, v7, v2 + v6, v8);
}

uint64_t PaywallInteractor.requestAMSSheet(with:purchaseSessionID:paywallModel:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = v4;
  v47[0] = a3;
  sub_1D77FB750(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v47 - v10;
  v12 = type metadata accessor for PurchaseContext();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[9];
  v74 = a1[8];
  v75 = v15;
  v76 = *(a1 + 20);
  v16 = a1[5];
  v70 = a1[4];
  v71 = v16;
  v17 = a1[7];
  v72 = a1[6];
  v73 = v17;
  v18 = a1[1];
  v66 = *a1;
  v67 = v18;
  v19 = a1[3];
  v68 = a1[2];
  v69 = v19;
  v20 = a4[13];
  v89 = a4[12];
  v90 = v20;
  v21 = a4[15];
  v91 = a4[14];
  v92 = v21;
  v22 = a4[9];
  v85 = a4[8];
  v86 = v22;
  v23 = a4[11];
  v87 = a4[10];
  v88 = v23;
  v24 = a4[5];
  v81 = a4[4];
  v82 = v24;
  v25 = a4[7];
  v83 = a4[6];
  v84 = v25;
  v26 = a4[1];
  v77 = *a4;
  v78 = v26;
  v27 = a4[3];
  v79 = a4[2];
  v80 = v27;
  v28 = *(v4 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_dataManager + 8);
  ObjectType = swift_getObjectType();
  v30 = a4[12];
  v31 = a4[14];
  v32 = a4[15];
  v63 = a4[13];
  v64 = v31;
  v65 = v32;
  v33 = a4[8];
  v34 = a4[10];
  v35 = a4[11];
  v59 = a4[9];
  v60 = v34;
  v61 = v35;
  v62 = v30;
  v36 = a4[4];
  v37 = a4[6];
  v38 = a4[7];
  v55 = a4[5];
  v56 = v37;
  v57 = v38;
  v58 = v33;
  v39 = a4[1];
  v50 = *a4;
  v51 = v39;
  v40 = a4[3];
  v52 = a4[2];
  v53 = v40;
  v54 = v36;
  v49[0] = 0;
  v49[1] = 0;
  v41 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker;
  swift_beginAccess();
  sub_1D7759064(v5 + v41, v48, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  v42 = type metadata accessor for PostPurchaseDestination();
  (*(*(v42 - 8) + 56))(v11, 1, 1, v42);
  (*(v28 + 24))(&v50, v49, a2, v47[0], v48, v11, 0, ObjectType, v28);
  sub_1D77FC830(v11, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
  sub_1D7759154(v48, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  v43 = v5 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v44 = *(v43 + 8);
    v45 = swift_getObjectType();
    v57 = v73;
    v58 = v74;
    v59 = v75;
    v53 = v69;
    v54 = v70;
    v55 = v71;
    v56 = v72;
    v50 = v66;
    v51 = v67;
    *&v60 = v76;
    v52 = v68;
    (*(v44 + 16))(&v50, v14, v45, v44);
    swift_unknownObjectRelease();
  }

  return sub_1D7791954(v14);
}

uint64_t sub_1D77FC830(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D77FB750(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PaywallInteractor.requestAMSSheet(with:purchaseSessionID:paywallModel:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = v4;
  v43 = a1;
  v44 = a3;
  sub_1D77FB750(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for PurchaseContext();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a4[13];
  v75 = a4[12];
  v76 = v14;
  v15 = a4[15];
  v77 = a4[14];
  v78 = v15;
  v16 = a4[9];
  v71 = a4[8];
  v72 = v16;
  v17 = a4[11];
  v73 = a4[10];
  v74 = v17;
  v18 = a4[5];
  v67 = a4[4];
  v68 = v18;
  v19 = a4[7];
  v69 = a4[6];
  v70 = v19;
  v20 = a4[1];
  v63 = *a4;
  v64 = v20;
  v21 = a4[3];
  v65 = a4[2];
  v66 = v21;
  v22 = *(v4 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_dataManager + 8);
  ObjectType = swift_getObjectType();
  v24 = a4[12];
  v25 = a4[14];
  v26 = a4[15];
  v60 = a4[13];
  v61 = v25;
  v62 = v26;
  v27 = a4[8];
  v28 = a4[10];
  v29 = a4[11];
  v56 = a4[9];
  v57 = v28;
  v58 = v29;
  v59 = v24;
  v30 = a4[4];
  v31 = a4[6];
  v32 = a4[7];
  v52 = a4[5];
  v53 = v31;
  v54 = v32;
  v55 = v27;
  v33 = a4[1];
  v47 = *a4;
  v48 = v33;
  v34 = a4[3];
  v49 = a4[2];
  v50 = v34;
  v51 = v30;
  v46[0] = 0;
  v46[1] = 0;
  v35 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker;
  swift_beginAccess();
  sub_1D7759064(v5 + v35, v45, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  v36 = type metadata accessor for PostPurchaseDestination();
  (*(*(v36 - 8) + 56))(v10, 1, 1, v36);
  (*(v22 + 24))(&v47, v46, a2, v44, v45, v10, 0, ObjectType, v22);
  v37 = v43;
  sub_1D77FC830(v10, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
  sub_1D7759154(v45, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  v38 = v5 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(v38 + 8);
    v40 = swift_getObjectType();
    v60 = v76;
    v61 = v77;
    v62 = v78;
    v56 = v72;
    v57 = v73;
    v58 = v74;
    v59 = v75;
    v52 = v68;
    v53 = v69;
    v54 = v70;
    v55 = v71;
    v47 = v63;
    v48 = v64;
    v49 = v65;
    v50 = v66;
    v51 = v67;
    (*(v39 + 24))(v37, v13, &v47, v40, v39);
    swift_unknownObjectRelease();
  }

  return sub_1D7791954(v13);
}

uint64_t PaywallInteractor.requestTopChannelsClause(paywallModel:)()
{
  sub_1D77FD188(0);
  sub_1D78B41F4();
  v0 = sub_1D78B4014();
  v1 = sub_1D78B4134();

  return v1;
}

uint64_t sub_1D77FCF70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B4274();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B4254();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  sub_1D77FD1BC(a1, (&v17 - v13));
  (*(v9 + 16))(v12, v14, v8);
  sub_1D78B4264();
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_personalizedPaywallDataService), *(a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_personalizedPaywallDataService + 24));
  v15 = sub_1D78B4284();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v14, v8);
  return v15;
}

uint64_t sub_1D77FD1BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 > 2)
  {
    if (v5 - 4 >= 5)
    {
      v6 = [swift_unknownObjectRetain() identifier];
      v7 = sub_1D78B5C74();
      v9 = v8;

      sub_1D77CA6AC(v3, v4, 3u);
      *a2 = v7;
LABEL_7:
      a2[1] = v9;
      v13 = MEMORY[0x1E69B69F0];
      goto LABEL_9;
    }

LABEL_8:
    v13 = MEMORY[0x1E69B69F8];
    goto LABEL_9;
  }

  if (*(a1 + 16))
  {
    if (v5 == 1)
    {
      v10 = [objc_msgSend(v3 sourceChannel)];
      swift_unknownObjectRelease();
      v11 = sub_1D78B5C74();
      v9 = v12;

      sub_1D77CA6AC(v3, v4, 1u);
      *a2 = v11;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  swift_unknownObjectRetain();
  *a2 = v3;
  v13 = MEMORY[0x1E69B6A00];
LABEL_9:
  v14 = *v13;
  v15 = sub_1D78B4254();
  v16 = *(*(v15 - 8) + 104);

  return v16(a2, v14, v15);
}

uint64_t sub_1D77FD33C(uint64_t a1)
{
  sub_1D77FD188(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D7758FA8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCAB0;
  v10 = 0;
  v11 = 0xE000000000000000;
  v12 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  v6 = v10;
  v7 = v11;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D775ABD4();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_1D78B42C4();

  v8 = sub_1D78B42B4();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1D77FB750(0, &unk_1EE095278, sub_1D77FD188, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t (*sub_1D77FD5CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D77CB388;
}

uint64_t sub_1D77FD680()
{
  sub_1D77FD188(0);
  sub_1D78B41F4();
  v0 = sub_1D78B4014();
  v1 = sub_1D78B4134();

  return v1;
}