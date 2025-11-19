uint64_t sub_1001A378C(uint64_t a1)
{
  v3 = _s11TrackedItemVMa();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v1;
  v9 = sub_1001A39B8(*v1);
  v10 = v9;
  v11 = *(v8 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (v11)
  {
    v24 = v9;
    v25 = a1;
    v26 = v1;
    v27 = &_swiftEmptyArrayStorage;
    sub_1000D3960(0, v11, 0);
    v12 = v27;
    v13 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_1001AB1DC(v13, v7, _s11TrackedItemVMa);
      v15 = *v7;
      v16 = v7[1];

      sub_1001AB244(v7, _s11TrackedItemVMa);
      v27 = v12;
      v18 = v12[2];
      v17 = v12[3];
      if (v18 >= v17 >> 1)
      {
        sub_1000D3960((v17 > 1), v18 + 1, 1);
        v12 = v27;
      }

      v12[2] = v18 + 1;
      v19 = &v12[2 * v18];
      v19[4] = v15;
      v19[5] = v16;
      v13 += v14;
      --v11;
    }

    while (v11);
    a1 = v25;
    v10 = v24;
  }

  v20 = sub_100157794(v12);

  v27 = &_swiftEmptySetSingleton;

  v21 = sub_1001AAD14(a1, &v27, v10, v20);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  sub_1001A30D0(v21);
}

uint64_t sub_1001A39B8(uint64_t a1)
{
  v2 = _s11TrackedItemVMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = sub_100119120(&_swiftEmptyArrayStorage);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v13 = *(v3 + 72);
  while (1)
  {
    v34 = v11;
    sub_1001AB1DC(v12, v9, _s11TrackedItemVMa);
    v15 = *v9;
    v14 = *(v9 + 1);
    v16 = v9[16];
    v17 = v9;
    v18 = v9;
    v19 = v7;
    sub_1001AB1DC(v18, v7, _s11TrackedItemVMa);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v10;
    v21 = sub_100187C98(v15, v14, v16);
    v23 = v10[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v22;
    if (v10[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v21;
        sub_10018B2E0();
        v21 = v32;
      }
    }

    else
    {
      sub_1001894AC(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_100187C98(v15, v14, v16);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_17;
      }
    }

    v7 = v19;
    v10 = v35;
    v9 = v17;
    if (v27)
    {
      sub_1001AB080(v7, v35[7] + v21 * v13);
    }

    else
    {
      v35[(v21 >> 6) + 8] |= 1 << v21;
      v29 = v10[6] + 24 * v21;
      *v29 = v15;
      *(v29 + 8) = v14;
      *(v29 + 16) = v16;
      sub_1001AB0E4(v7, v10[7] + v21 * v13, _s11TrackedItemVMa);
      v30 = v10[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_16;
      }

      v10[2] = v31;
    }

    sub_1001AB244(v17, _s11TrackedItemVMa);
    v12 += v13;
    v11 = v34 - 1;
    if (v34 == 1)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1001C6D68();
  __break(1u);
  return result;
}

uint64_t sub_1001A3C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = _s11TrackedItemVMa();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = *(a1 + 16);

  v16 = sub_1001788CC(&v48, v14, v13, v15);

  if (v16)
  {
    if (*(a2 + 16) && (v17 = sub_100187C98(v14, v13, v15), (v18 & 1) != 0))
    {
      v19 = v46;
      sub_1001AB1DC(*(a2 + 56) + *(v46 + 72) * v17, v12, _s11TrackedItemVMa);
      sub_1001AB0E4(v12, a4, _s11TrackedItemVMa);
      return (*(v19 + 56))(a4, 0, 1, v47);
    }

    else
    {
      if (sub_1000F54C8(v14, v13, a3))
      {
        if (qword_10026EBB8 != -1)
        {
          swift_once();
        }

        v28 = sub_1001C5148();
        sub_100083274(v28, qword_100281898);

        v29 = sub_1001C5128();
        v30 = sub_1001C6598();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v45 = v4;
          v32 = v31;
          v44 = swift_slowAlloc();
          v50 = v44;
          *v32 = 141558530;
          *(v32 + 4) = 1752392040;
          *(v32 + 12) = 2080;
          v48 = 0;
          v49 = 0xE000000000000000;
          if (v15)
          {
            v33._countAndFlagsBits = 65;
          }

          else
          {
            v33._countAndFlagsBits = 66;
          }

          v34 = 1802465122;
          if (v15)
          {
            v34 = 0x6F6F626F69647561;
          }

          v42 = v34;
          v43 = v30;
          if (v15)
          {
            v35 = 0xE90000000000006BLL;
          }

          else
          {
            v35 = 0xE400000000000000;
          }

          v33._object = 0xE100000000000000;
          sub_1001C6138(v33);

          v53._countAndFlagsBits = 46;
          v53._object = 0xE100000000000000;
          sub_1001C6138(v53);
          v54._countAndFlagsBits = v14;
          v54._object = v13;
          sub_1001C6138(v54);
          v36 = sub_1001874E8(v48, v49, &v50);

          *(v32 + 14) = v36;
          *(v32 + 22) = 2082;
          v37 = sub_1001874E8(v42, v35, &v50);

          *(v32 + 24) = v37;
          _os_log_impl(&_mh_execute_header, v29, v43, "[State] Type for item %{mask.hash}s changed to %{public}s", v32, 0x20u);
          swift_arrayDestroy();
        }
      }

      v38 = v47;
      v39 = *(v47 + 24);
      v40 = _s11RecentPriceVMa();
      (*(*(v40 - 8) + 56))(a4 + v39, 1, 1, v40);
      *a4 = v14;
      *(a4 + 8) = v13;
      *(a4 + 16) = v15;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 1;
      (*(v46 + 56))(a4, 0, 1, v38);
    }
  }

  else
  {
    v45 = v4;
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v21 = sub_1001C5148();
    sub_100083274(v21, qword_100281898);

    v22 = sub_1001C5128();
    v23 = sub_1001C6598();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50 = v25;
      *v24 = 141558274;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2080;
      v48 = 0;
      v49 = 0xE000000000000000;
      if (v15)
      {
        v26._countAndFlagsBits = 65;
      }

      else
      {
        v26._countAndFlagsBits = 66;
      }

      v26._object = 0xE100000000000000;
      sub_1001C6138(v26);

      v51._countAndFlagsBits = 46;
      v51._object = 0xE100000000000000;
      sub_1001C6138(v51);
      v52._countAndFlagsBits = v14;
      v52._object = v13;
      sub_1001C6138(v52);
      v27 = sub_1001874E8(v48, v49, &v50);

      *(v24 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "[State] Ignoring duplicate tracked item ID %{mask.hash}s", v24, 0x16u);
      sub_10008E7BC(v25);
    }

    return (*(v46 + 56))(a4, 1, 1, v47);
  }
}

uint64_t sub_1001A4230(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(_s8CardItemVMa() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

void sub_1001A42C4(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5, double a6)
{
  v67 = a5;
  v68 = a3;
  v63 = a1;
  v64 = a2;
  v9 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v66 = v61 - v11;
  v65 = _s11TrackedItemVMa();
  v12 = *(v65 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v65);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v17 = *(*v6 + 16);
  if (v17)
  {
    v18 = 0;
    v62 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v19 = v16 + v62;
    while (v18 < v16[2])
    {
      v20 = *(v12 + 72) * v18;
      sub_1001AB1DC(&v19[v20], v15, _s11TrackedItemVMa);
      v21 = v15[16];
      if (*v15 == v68 && *(v15 + 1) == a4)
      {
        if (v21 == (v67 & 1))
        {
          goto LABEL_12;
        }
      }

      else if ((sub_1001C6D08() & 1) != 0 && ((v21 ^ v67) & 1) == 0)
      {
LABEL_12:
        sub_1001AB244(v15, _s11TrackedItemVMa);
        v23 = qword_10026EBB8;

        v61[1] = v6;
        if (a6 >= 0.0)
        {
          if (v23 == -1)
          {
            goto LABEL_31;
          }

          goto LABEL_47;
        }

        if (v23 != -1)
        {
          goto LABEL_45;
        }

        while (1)
        {
          v24 = sub_1001C5148();
          sub_100083274(v24, qword_100281898);

          v25 = sub_1001C5128();
          v26 = sub_1001C65B8();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            *v27 = 136315138;
            v69 = 0;
            v70 = 0xE000000000000000;
            v71 = v28;
            if (v67)
            {
              v29._countAndFlagsBits = 65;
            }

            else
            {
              v29._countAndFlagsBits = 66;
            }

            v29._object = 0xE100000000000000;
            sub_1001C6138(v29);

            v72._countAndFlagsBits = 46;
            v72._object = 0xE100000000000000;
            sub_1001C6138(v72);
            v73._countAndFlagsBits = v68;
            v73._object = a4;
            sub_1001C6138(v73);
            a4 = sub_1001874E8(v69, v70, &v71);

            *(v27 + 4) = a4;
            _os_log_impl(&_mh_execute_header, v25, v26, "[State] Removing reference price for %s", v27, 0xCu);
            sub_10008E7BC(v28);
          }

          v30 = v66;
          v31 = v62;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_1001AAC60(v16);
          }

          if (v18 >= v16[2])
          {
            __break(1u);
LABEL_47:
            swift_once();
LABEL_31:
            v44 = sub_1001C5148();
            sub_100083274(v44, qword_100281898);
            v45 = v64;

            v46 = sub_1001C5128();
            v47 = sub_1001C65B8();

            v48 = os_log_type_enabled(v46, v47);
            v49 = v63;
            if (v48)
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              *v50 = 136315394;
              v69 = 0;
              v70 = 0xE000000000000000;
              v71 = v51;
              if (v67)
              {
                v52._countAndFlagsBits = 65;
              }

              else
              {
                v52._countAndFlagsBits = 66;
              }

              v67 = v47;
              v52._object = 0xE100000000000000;
              sub_1001C6138(v52);

              v76._countAndFlagsBits = 46;
              v76._object = 0xE100000000000000;
              sub_1001C6138(v76);
              v77._countAndFlagsBits = v68;
              v77._object = a4;
              sub_1001C6138(v77);
              v53 = sub_1001874E8(v69, v70, &v71);

              *(v50 + 4) = v53;
              *(v50 + 12) = 2080;
              v54 = sub_10013B2B8(v49, v45);
              v56 = sub_1001874E8(v54, v55, &v71);

              *(v50 + 14) = v56;
              _os_log_impl(&_mh_execute_header, v46, v67, "[State] Setting reference price for %s → %s", v50, 0x16u);
              swift_arrayDestroy();
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v57 = v16;
            }

            else
            {
              v57 = sub_1001AAC60(v16);
            }

            v31 = v62;
            if (v18 >= *(v57 + 16))
            {
              __break(1u);
              return;
            }

            v58 = (v57 + v62 + v20);
            a4 = *(v58 + 3);
            v16 = *(v58 + 4);
            v59 = *(v58 + 5);
            v58[3] = a6;
            *(v58 + 4) = v49;
            *(v58 + 5) = v45;
            v33 = v57;

            sub_100198C68(a4, v16, v59);
            v30 = v66;
          }

          else
          {
            v32 = (v16 + v31 + v20);
            v33 = v16;
            v34 = v32[3];
            v35 = v32[4];
            v36 = v32[5];
            v32[3] = 0;
            v32[4] = 0;
            v32[5] = 1;
            sub_100198C68(v34, v35, v36);
          }

          v60 = _s11RecentPriceVMa();
          (*(*(v60 - 8) + 56))(v30, 1, 1, v60);
          if (v18 < *(v33 + 16))
          {
            sub_100198C7C(v30, v33 + v31 + *(v65 + 24) + v20);
            sub_1001A30D0(v33);

            return;
          }

          __break(1u);
LABEL_45:
          swift_once();
        }
      }

      sub_1001AB244(v15, _s11TrackedItemVMa);
      if (v17 == ++v18)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_23:
  if (qword_10026EBB8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v37 = sub_1001C5148();
  sub_100083274(v37, qword_100281898);

  v38 = sub_1001C5128();
  v39 = sub_1001C6598();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 141558274;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2080;
    v69 = 0;
    v70 = 0xE000000000000000;
    v71 = v41;
    if (v67)
    {
      v42._countAndFlagsBits = 65;
    }

    else
    {
      v42._countAndFlagsBits = 66;
    }

    v42._object = 0xE100000000000000;
    sub_1001C6138(v42);

    v74._countAndFlagsBits = 46;
    v74._object = 0xE100000000000000;
    sub_1001C6138(v74);
    v75._countAndFlagsBits = v68;
    v75._object = a4;
    sub_1001C6138(v75);
    v43 = sub_1001874E8(v69, v70, &v71);

    *(v40 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v38, v39, "[State] Unable to find item with id: %{mask.hash}s", v40, 0x16u);
    sub_10008E7BC(v41);
  }
}

void *sub_1001A4AB8(char a1, char a2)
{
  v5 = _s11TrackedItemVMa();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  if (a2)
  {
    goto LABEL_4;
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  if (a1 == 1)
  {
LABEL_4:
    v14 = *v2;

    return v14;
  }

  v15 = *v2;
  v16 = *(*v2 + 16);
  if (!v16)
  {
    return &_swiftEmptyArrayStorage;
  }

  v17 = 0;
  v14 = &_swiftEmptyArrayStorage;
  v23 = v16;
  while (v17 < v15[2])
  {
    v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v19 = *(v6 + 72);
    sub_1001AB1DC(v15 + v18 + v19 * v17, v13, _s11TrackedItemVMa);
    if (*(v13 + 5) == 1)
    {
      sub_1001AB0E4(v13, v10, _s11TrackedItemVMa);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000D39E4(0, v14[2] + 1, 1);
        v14 = v24;
      }

      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        sub_1000D39E4(v21 > 1, v22 + 1, 1);
        v14 = v24;
      }

      v14[2] = v22 + 1;
      result = sub_1001AB0E4(v10, v14 + v18 + v22 * v19, _s11TrackedItemVMa);
      v16 = v23;
    }

    else
    {
      result = sub_1001AB244(v13, _s11TrackedItemVMa);
    }

    if (v16 == ++v17)
    {
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A4D08(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v50 = a1;
  v8 = _s14PricingServiceV12FetchedPriceVMa(0);
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v4 + *(_s5StateVMa() + 36));
  v13 = v12[1];
  v14 = *v4;
  if (!v13)
  {
    v49 = a2;

    goto LABEL_9;
  }

  v15 = *v12;
  if (*v12 == a2 && v13 == a3)
  {
    v49 = a2;
  }

  else
  {
    v17 = *v12;
    v18 = v12[1];
    v19 = sub_1001C6D08();

    if ((v19 & 1) == 0)
    {

      if (qword_10026EBB8 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_35;
    }

    v49 = v15;
  }

LABEL_21:
  while (1)
  {
    v48 = v13;
    a2 = v14[2];
    if (!a2)
    {
      return v49;
    }

    v32 = 0;
    while (v32 < v14[2])
    {
      v33 = *(_s11TrackedItemVMa() - 8);
      v34 = *(v33 + 80);
      v35 = *(v33 + 72);
      if (*(a4 + 16))
      {
        a3 = v35 * v32;
        v36 = v14 + ((v34 + 32) & ~v34) + v35 * v32;
        v37 = *(v36 + 16);
        v39 = *v36;
        v38 = *(v36 + 8);

        v40 = sub_100187C98(v39, v38, v37);
        LOBYTE(v39) = v41;

        if (v39)
        {
          sub_1001AB1DC(*(a4 + 56) + *(v51 + 72) * v40, v11, _s14PricingServiceV12FetchedPriceVMa);
          v42 = &v11[*(v52 + 24)];
          v43 = *v42;
          v44 = *(v42 + 1);
          v45 = *(v42 + 2);

          sub_1001AB244(v11, _s14PricingServiceV12FetchedPriceVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1001AAC60(v14);
          }

          if (v32 >= v14[2])
          {
            goto LABEL_33;
          }

          sub_100198DE8(v44, v45, v50, v43);
        }
      }

      if (a2 == ++v32)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_35:
      swift_once();
LABEL_12:
      v49 = a2;
      v20 = sub_1001C5148();
      sub_100083274(v20, qword_100281898);
      v21 = sub_1001C5128();
      v22 = sub_1001C6598();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "[State] Store-front has changed; discarding previous price information", v23, 2u);
      }

      a2 = v14[2];
      if (!a2)
      {
        break;
      }

      v48 = a3;
      a3 = 0;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1001AAC60(v14);
        }

        if (a3 >= v14[2])
        {
          break;
        }

        v24 = a3 + 1;
        v25 = (_s11TrackedItemVMa() - 8);
        v26 = v14 + ((*(*v25 + 80) + 32) & ~*(*v25 + 80)) + *(*v25 + 72) * a3;
        v27 = *(v26 + 3);
        v28 = *(v26 + 4);
        v29 = *(v26 + 5);
        *(v26 + 3) = 0;
        *(v26 + 4) = 0;
        *(v26 + 5) = 1;
        sub_100198C68(v27, v28, v29);
        v30 = v25[8];
        sub_10008875C(&v26[v30], &qword_1002740D8, &qword_1001F82F0);
        v31 = _s11RecentPriceVMa();
        (*(*(v31 - 8) + 56))(&v26[v30], 1, 1, v31);
        a3 = v24;
        if (a2 == v24)
        {
          v13 = v48;
          goto LABEL_21;
        }
      }
    }

LABEL_9:
    v13 = a3;
  }
}

void *sub_1001A51FC(uint64_t a1, uint64_t a2)
{
  v45 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v45);
  v41 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v44 = v39 - v10;
  __chkstk_darwin(v9);
  v43 = v39 - v11;
  v12 = _s4DealVMa();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  v47 = a2;
  v48 = v2;
  v49 = a1;
  v50 = sub_100102E64(sub_1001AB14C, v46, v16);

  sub_1001A7280(&v50);

  v17 = v50;
  v18 = v50[2];
  if (v18)
  {
    v50 = &_swiftEmptyArrayStorage;
    sub_1000D39A0(0, v18, 0);
    v19 = v50;
    v20 = v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v21 = *(v5 + 72);
    v39[1] = v17;
    v40 = v21;
    do
    {
      v22 = v43;
      sub_10009ADF0(v20, v43, &qword_10026F7A8, &unk_1001F2B50);
      v23 = v15;
      v24 = v44;
      sub_10009ADF0(v22, v44, &qword_10026F7A8, &unk_1001F2B50);
      v25 = *(v45 + 48);
      v26 = v24 + v25;
      v27 = sub_100084528(&qword_100274550, &qword_1001F8A00);
      v28 = (v24 + v25 + *(v27 + 48));
      v29 = *v28;
      v30 = v28[1];
      v31 = v41;
      v32 = v41 + v25;
      v33 = v24;
      v15 = v23;
      sub_1001AB0E4(v33, v41, _s4DealVMa);
      v34 = (v32 + *(v27 + 48));
      v35 = sub_1001C4CA8();
      (*(*(v35 - 8) + 32))(v32, v26, v35);
      *v34 = v29;
      v34[1] = v30;
      sub_1001AB1DC(v31, v23, _s4DealVMa);
      sub_10008875C(v31, &qword_10026F7A8, &unk_1001F2B50);
      sub_10008875C(v22, &qword_10026F7A8, &unk_1001F2B50);
      v50 = v19;
      v37 = v19[2];
      v36 = v19[3];
      if (v37 >= v36 >> 1)
      {
        sub_1000D39A0(v36 > 1, v37 + 1, 1);
        v19 = v50;
      }

      v19[2] = v37 + 1;
      sub_1001AB0E4(v23, v19 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v37, _s4DealVMa);
      v20 += v40;
      --v18;
    }

    while (v18);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v19;
}

uint64_t sub_1001A5614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int (*a4)(void, void, void)@<X3>, uint64_t a5@<X8>)
{
  v168 = a3;
  v9 = _s4DealVMa();
  v174 = *(v9 - 8);
  v10 = *(v174 + 64);
  __chkstk_darwin(v9);
  v157 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v153 = (&v151 - v14);
  v15 = sub_1001C4B28();
  v162 = *(v15 - 8);
  v163 = v15;
  v16 = *(v162 + 64);
  __chkstk_darwin(v15);
  v154 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = _s11TrackedItemVMa();
  v18 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v161 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v158 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v166 = &v151 - v25;
  __chkstk_darwin(v24);
  v164 = &v151 - v26;
  v27 = sub_1001C4CA8();
  v176 = *(v27 - 8);
  v177 = v27;
  v28 = *(v176 + 64);
  v29 = __chkstk_darwin(v27);
  v167 = &v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v172 = &v151 - v31;
  v32 = sub_100084528(&qword_100274558, &qword_1001F8A08);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v160 = &v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v173 = &v151 - v37;
  v38 = __chkstk_darwin(v36);
  v155 = &v151 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v151 - v41;
  v43 = __chkstk_darwin(v40);
  v165 = (&v151 - v44);
  __chkstk_darwin(v43);
  v178 = &v151 - v45;
  v46 = sub_100084528(&qword_100274238, &qword_1001F8720);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v50 = &v151 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v48);
  v53 = (&v151 - v52);
  __chkstk_darwin(v51);
  v55 = &v151 - v54;
  v56 = *(a2 + 16);
  v175 = a1;
  v169 = v9;
  if (v56)
  {
    v170 = a4;
    v57 = &v151 - v54;
    v58 = sub_100187C98(*a1, *(a1 + 8), *(a1 + 16));
    if (v59)
    {
      v60 = v58;
      v61 = a5;
      v62 = *(a2 + 56);
      v63 = _s14PricingServiceV12FetchedPriceVMa(0);
      v64 = *(v63 - 8);
      v65 = v62 + *(v64 + 72) * v60;
      a5 = v61;
      v9 = v169;
      v55 = v57;
      sub_1001AB1DC(v65, v57, _s14PricingServiceV12FetchedPriceVMa);
      v66 = (*(v64 + 56))(v57, 0, 1, v63);
    }

    else
    {
      v68 = _s14PricingServiceV12FetchedPriceVMa(0);
      v66 = (*(*(v68 - 8) + 56))(v55, 1, 1, v68);
    }

    a1 = v175;
    a4 = v170;
  }

  else
  {
    v67 = _s14PricingServiceV12FetchedPriceVMa(0);
    v66 = (*(*(v67 - 8) + 56))(v55, 1, 1, v67);
  }

  v69 = *(v168 + 8);
  __chkstk_darwin(v66);
  *(&v151 - 2) = a1;
  v70 = v178;
  v71 = v171;
  sub_1001A6978(sub_1001AB060, v72, v178);
  v159 = v71;
  sub_10009ADF0(v70, v42, &qword_100274558, &qword_1001F8A08);
  v170 = *(v174 + 48);
  v171 = v174 + 48;
  if (v170(v42, 1, v9) == 1)
  {
    sub_10008875C(v42, &qword_100274558, &qword_1001F8A08);
    v156 = *(v176 + 16);
    v156(v172, a4, v177);
  }

  else
  {
    v74 = v176;
    v73 = v177;
    v75 = &v42[*(v9 + 28)];
    v76 = v167;
    v156 = *(v176 + 16);
    v156(v167, v75, v177);
    sub_1001AB244(v42, _s4DealVMa);
    (*(v74 + 32))(v172, v76, v73);
  }

  v77 = v173;
  v173 = v55;
  sub_10009ADF0(v55, v53, &qword_100274238, &qword_1001F8720);
  v78 = _s14PricingServiceV12FetchedPriceVMa(0);
  v79 = *(*(v78 - 8) + 48);
  if (v79(v53, 1, v78) == 1)
  {
    sub_10008875C(v53, &qword_100274238, &qword_1001F8720);
    v80 = v155;
    sub_10009ADF0(v178, v155, &qword_100274558, &qword_1001F8A08);
    if (v170(v80, 1, v9) == 1)
    {
      sub_10008875C(v80, &qword_100274558, &qword_1001F8A08);
      v151 = 0;
      v167 = 0;
      goto LABEL_16;
    }

    v84 = *(v80 + 32);
    v151 = *(v80 + 24);
    v167 = v84;

    v82 = _s4DealVMa;
    v83 = v80;
  }

  else
  {
    v81 = v53[1];
    v151 = *v53;
    v167 = v81;

    v82 = _s14PricingServiceV12FetchedPriceVMa;
    v83 = v53;
  }

  sub_1001AB244(v83, v82);
LABEL_16:
  v85 = v165;
  sub_10009ADF0(v173, v50, &qword_100274238, &qword_1001F8720);
  v86 = v79(v50, 1, v78);
  v87 = v161;
  if (v86 == 1)
  {
    v155 = a5;
    sub_10008875C(v50, &qword_100274238, &qword_1001F8720);
    v88 = v162;
    v89 = v163;
    v90 = *(v162 + 56);
    v90(v166, 1, 1, v163);
    sub_10009ADF0(v178, v77, &qword_100274558, &qword_1001F8A08);
    v91 = v77;
    v92 = v77;
    v93 = v169;
    v94 = v170(v91, 1, v169);
    v95 = v175;
    if (v94 == 1)
    {
      sub_10008875C(v92, &qword_100274558, &qword_1001F8A08);
      v96 = 1;
      v97 = v164;
    }

    else
    {
      v106 = v92 + v93[6];
      v97 = v164;
      (*(v88 + 16))(v164, v106, v89);
      sub_1001AB244(v92, _s4DealVMa);
      v96 = 0;
    }

    v90(v97, v96, 1, v89);
    v107 = v166;
    v108 = (*(v88 + 48))(v166, 1, v89);
    v105 = v155;
    v103 = v97;
    if (v108 != 1)
    {
      sub_10008875C(v107, &unk_10026EF10, &unk_1001F1FA0);
    }
  }

  else
  {
    v88 = v162;
    v98 = v163;
    v99 = a5;
    v100 = v166;
    (*(v162 + 16))(v166, &v50[*(v78 + 20)], v163);
    v101 = v50;
    v89 = v98;
    sub_1001AB244(v101, _s14PricingServiceV12FetchedPriceVMa);
    v102 = *(v88 + 56);
    v102(v100, 0, 1, v98);
    v103 = v164;
    v104 = v100;
    v105 = v99;
    (*(v88 + 32))(v164, v104, v98);
    v102(v103, 0, 1, v98);
    v95 = v175;
  }

  sub_1001AB1DC(v95, v87, _s11TrackedItemVMa);
  v109 = _s5StateVMa();
  v110 = v158;
  if (!v167)
  {
    sub_10008875C(v103, &unk_10026EF10, &unk_1001F1FA0);
    (*(v176 + 8))(v172, v177);
    goto LABEL_40;
  }

  v111 = (v168 + *(v109 + 40));
  v113 = *v111;
  v112 = v111[1];
  sub_10009ADF0(v103, v158, &unk_10026EF10, &unk_1001F1FA0);
  if ((*(v88 + 48))(v110, 1, v89) == 1)
  {

    sub_10008875C(v103, &unk_10026EF10, &unk_1001F1FA0);
    (*(v176 + 8))(v172, v177);
    sub_10008875C(v110, &unk_10026EF10, &unk_1001F1FA0);
LABEL_40:
    sub_1001AB244(v87, _s11TrackedItemVMa);
    v130 = v169;
    (*(v174 + 56))(v85, 1, 1, v169);
    goto LABEL_41;
  }

  v114 = v105;
  v115 = v89;
  v116 = *(v88 + 32);
  v117 = v88;
  v118 = v154;
  v116(v154, v110, v115);
  v119 = *(v87 + 40);
  if (v119 == 1)
  {

    (*(v117 + 8))(v118, v115);
LABEL_33:
    sub_10008875C(v164, &unk_10026EF10, &unk_1001F1FA0);
    (*(v176 + 8))(v172, v177);
    v85 = v165;
    v105 = v114;
    goto LABEL_40;
  }

  if (!v119)
  {

    (*(v162 + 8))(v154, v163);
    goto LABEL_33;
  }

  v155 = v114;
  v120 = v87;
  v121 = *(v87 + 24);
  v122 = *(v120 + 32);
  v123 = v153;
  sub_10009ADF0(v120 + *(v152 + 24), v153, &qword_1002740D8, &qword_1001F82F0);
  v124 = _s11RecentPriceVMa();
  v125 = (*(*(v124 - 8) + 48))(v123, 1, v124);
  v126 = v154;
  v127 = v162;
  if (v125 == 1)
  {

    (*(v127 + 8))(v126, v163);
    sub_10008875C(v164, &unk_10026EF10, &unk_1001F1FA0);
    (*(v176 + 8))(v172, v177);
    sub_10008875C(v123, &qword_1002740D8, &qword_1001F82F0);
LABEL_39:
    v105 = v155;
    v87 = v161;
    v85 = v165;
    goto LABEL_40;
  }

  v128 = *v123;

  sub_1001AB244(v123, _s11RecentPriceVMa);
  v129 = v164;
  if (v121 <= 0.0 || v113 == 0.0 && v112 == 0.0)
  {

    sub_100198C68(*&v121, v122, v119);
    (*(v127 + 8))(v126, v163);
    sub_10008875C(v129, &unk_10026EF10, &unk_1001F1FA0);
LABEL_38:
    (*(v176 + 8))(v172, v177);
    goto LABEL_39;
  }

  if (v128 == 0.0)
  {
    sub_10008875C(v164, &unk_10026EF10, &unk_1001F1FA0);
  }

  else
  {
    v142 = sub_1001982B8();
    v144 = v143;
    sub_10008875C(v129, &unk_10026EF10, &unk_1001F1FA0);
    if (v113 > v142 || v112 > v144)
    {

      sub_100198C68(*&v121, v122, v119);
      (*(v127 + 8))(v154, v163);
      goto LABEL_38;
    }
  }

  v145 = v161;
  v146 = *(v161 + 1);
  v147 = v161[16];
  v148 = v165;
  *v165 = *v161;
  v148[1] = v146;
  *(v148 + 16) = v147;
  v149 = v167;
  v148[3] = v151;
  v148[4] = v149;
  v130 = v169;
  v116(v148 + v169[6], v154, v163);
  v85 = v148;
  (*(v176 + 32))(v148 + v130[7], v172, v177);
  *(v148 + v130[8]) = v121;
  v150 = (v148 + v130[9]);
  *v150 = v122;
  v150[1] = v119;
  (*(v174 + 56))(v148, 0, 1, v130);

  sub_1001AB244(v145, _s11TrackedItemVMa);
  v105 = v155;
LABEL_41:
  v131 = v160;
  sub_10009ADF0(v85, v160, &qword_100274558, &qword_1001F8A08);
  if (v170(v131, 1, v130) == 1)
  {
    sub_10008875C(v85, &qword_100274558, &qword_1001F8A08);
    sub_10008875C(v178, &qword_100274558, &qword_1001F8A08);
    sub_10008875C(v173, &qword_100274238, &qword_1001F8720);
    sub_10008875C(v131, &qword_100274558, &qword_1001F8A08);
    v132 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
    return (*(*(v132 - 8) + 56))(v105, 1, 1, v132);
  }

  else
  {
    v134 = v131;
    v135 = v157;
    sub_1001AB0E4(v134, v157, _s4DealVMa);
    v136 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
    v137 = v105 + *(v136 + 48);
    sub_1001AB1DC(v135, v105, _s4DealVMa);
    v138 = (v137 + *(sub_100084528(&qword_100274550, &qword_1001F8A00) + 48));
    v156(v137, (v135 + v130[7]), v177);
    v139 = sub_1001982B8();
    v141 = v140;
    sub_1001AB244(v135, _s4DealVMa);
    sub_10008875C(v85, &qword_100274558, &qword_1001F8A08);
    sub_10008875C(v178, &qword_100274558, &qword_1001F8A08);
    sub_10008875C(v173, &qword_100274238, &qword_1001F8720);
    *v138 = v139;
    *(v138 + 1) = v141;
    return (*(*(v136 - 8) + 56))(v105, 0, 1, v136);
  }
}

uint64_t sub_1001A6908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1001C6D08();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1001A6978@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = _s4DealVMa();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_1001AB1DC(v13, v11, _s4DealVMa);
      v15 = a1(v11);
      if (v3)
      {
        return sub_1001AB244(v11, _s4DealVMa);
      }

      if (v15)
      {
        break;
      }

      sub_1001AB244(v11, _s4DealVMa);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_1001AB0E4(v11, v19, _s4DealVMa);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_1001A6B44(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_100084528(&qword_100274550, &qword_1001F8A00);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  v20 = sub_1001C4CA8();
  v21 = *(*(v20 - 8) + 16);
  v21(v19, a1, v20);
  v22 = &v19[*(v13 + 56)];
  *v22 = a3;
  v22[1] = a4;
  v21(v17, a2, v20);
  v23 = &v17[*(v13 + 56)];
  *v23 = a5;
  v23[1] = a6;
  sub_1000B6E64(&unk_10026F440);
  if (sub_1001C5FD8())
  {
    sub_10008875C(v19, &qword_100274550, &qword_1001F8A00);
    sub_10008875C(v17, &qword_100274550, &qword_1001F8A00);
    if (a5 == a3)
    {
      v24 = a6 < a4;
    }

    else
    {
      v24 = a5 < a3;
    }
  }

  else
  {
    sub_1000B6E64(&qword_10026F518);
    v24 = sub_1001C5FB8();
    sub_10008875C(v17, &qword_100274550, &qword_1001F8A00);
    sub_10008875C(v19, &qword_100274550, &qword_1001F8A00);
  }

  return v24 & 1;
}

void *sub_1001A6D74(uint64_t a1)
{
  v2 = 0;
  v6 = &_swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v4 = *(_s4DealVMa() - 8);
    sub_1001A6F1C(&v6, (a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v2++));
  }

  return v6;
}

uint64_t sub_1001A6E50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = (a2 + *(_s5StateVMa() + 44));
  if (v5[1])
  {
    v8 = *v5;
    v9 = v5[1];
    v12 = *(v5 + 3);
    v13 = *(v5 + 4);
    v14 = *(v5 + 5);
    v10 = *(v5 + 1);
    v11 = *(v5 + 2);
    return sub_10016B254(*a1, a3);
  }

  else
  {
    v7 = _s21PriceDropNotificationVMa();
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }
}

uint64_t sub_1001A6F1C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = _s4DealVMa();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v31 - v12;
  v14 = *a1;
  v15 = *(*a1 + 16);
  if (v15)
  {
    v16 = v14[v15 + 3];
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v32 = *(v7 + 72);
      sub_1001AB1DC(v16 + v18 + v32 * (v17 - 1), v31 - v12, _s4DealVMa);
      v19 = *(v6 + 28);
      if (sub_1001C4C68())
      {
        v20 = v14[2];
        sub_1001AB1DC(a2, v11, _s4DealVMa);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v20)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v14 = sub_1001AAC38(v14);
          if (v20)
          {
LABEL_6:
            v31[1] = v2;
            if (v20 <= v14[2])
            {
              v3 = v14 + 3;
              a2 = v14[v20 + 3];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v14[v20 + 3] = a2;
              v31[0] = v18;
              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_8:
                v23 = a2[2];
                v22 = a2[3];
                if (v23 >= v22 >> 1)
                {
                  v3[v20] = sub_1000AE084(v22 > 1, v23 + 1, 1, a2);
                }

                sub_1001AB244(v13, _s4DealVMa);
                v24 = v3[v20];
                *(v24 + 16) = v23 + 1;
                result = sub_1001AB0E4(v11, v24 + v31[0] + v23 * v32, _s4DealVMa);
                goto LABEL_17;
              }

LABEL_21:
              a2 = sub_1000AE084(0, a2[2] + 1, 1, a2);
              v3[v20] = a2;
              goto LABEL_8;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_20;
      }

      sub_1001AB244(v13, _s4DealVMa);
    }
  }

  sub_100084528(&qword_10026F780, &qword_1001F13B0);
  v26 = *(v7 + 72);
  v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1001F0670;
  sub_1001AB1DC(a2, v28 + v27, _s4DealVMa);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000ADF50(0, v14[2] + 1, 1, v14);
    v14 = result;
  }

  v30 = v14[2];
  v29 = v14[3];
  if (v30 >= v29 >> 1)
  {
    result = sub_1000ADF50((v29 > 1), v30 + 1, 1, v14);
    v14 = result;
  }

  v14[2] = v30 + 1;
  v14[v30 + 4] = v28;
LABEL_17:
  *a1 = v14;
  return result;
}

Swift::Int sub_1001A7280(void **a1)
{
  v2 = *(sub_100084528(&qword_10026F7A8, &unk_1001F2B50) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001AACC4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1001A7334(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1001A7334(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1001C6CB8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
        v6 = sub_1001C62D8();
        v6[2] = v5;
      }

      v7 = *(sub_100084528(&qword_10026F7A8, &unk_1001F2B50) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1001A7A24(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_1001A7478(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001A7478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v78 = sub_100084528(&qword_100274550, &qword_1001F8A00);
  v8 = *(*(v78 - 8) + 64);
  v9 = __chkstk_darwin(v78);
  v77 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v76 = &v61[-v11];
  v79 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
  v12 = *(v79 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v79);
  v70 = &v61[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v83 = &v61[-v17];
  v18 = __chkstk_darwin(v16);
  v20 = &v61[-v19];
  v21 = __chkstk_darwin(v18);
  v23 = &v61[-v22];
  result = __chkstk_darwin(v21);
  v26 = &v61[-v25];
  v63 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v28 = sub_1001C4CA8();
    v29 = *(v12 + 72);
    v71 = v28 - 8;
    v72 = v28;
    v30 = v27 + v29 * (a3 - 1);
    v68 = -v29;
    v69 = v27;
    v31 = a1 - a3;
    v62 = v29;
    v32 = v27 + v29 * a3;
    v74 = v23;
    v75 = v20;
    v73 = v26;
LABEL_5:
    v67 = a3;
    v64 = v32;
    v33 = v32;
    v65 = v31;
    v34 = v31;
    v66 = v30;
    while (1)
    {
      v82 = v34;
      v80 = v33;
      sub_10009ADF0(v33, v26, &qword_10026F7A8, &unk_1001F2B50);
      sub_10009ADF0(v30, v23, &qword_10026F7A8, &unk_1001F2B50);
      sub_10009ADF0(v26, v20, &qword_10026F7A8, &unk_1001F2B50);
      v36 = v78;
      v35 = v79;
      v37 = &v20[*(v79 + 48)];
      v38 = &v37[*(v78 + 48)];
      v39 = *v38;
      v40 = v38[1];
      v41 = v83;
      sub_10009ADF0(v23, v83, &qword_10026F7A8, &unk_1001F2B50);
      v42 = &v41[*(v35 + 48)];
      v43 = &v42[*(v36 + 48)];
      v44 = *v43;
      v45 = v43[1];
      v46 = v72;
      v47 = *(v72 - 8);
      v48 = *(v47 + 16);
      v49 = v76;
      v81 = v37;
      v50 = v37;
      v51 = v42;
      v48(v76, v50, v72);
      v52 = (v49 + *(v36 + 48));
      *v52 = v39;
      v52[1] = v40;
      v53 = v77;
      v48(v77, v51, v46);
      v54 = (v53 + *(v36 + 48));
      *v54 = v44;
      v54[1] = v45;
      sub_1000B6E64(&unk_10026F440);
      if (sub_1001C5FD8())
      {
        sub_10008875C(v49, &qword_100274550, &qword_1001F8A00);
        sub_10008875C(v53, &qword_100274550, &qword_1001F8A00);
        if (v44 == v39)
        {
          v55 = v45 < v40;
        }

        else
        {
          v55 = v44 < v39;
        }
      }

      else
      {
        sub_1000B6E64(&qword_10026F518);
        v55 = sub_1001C5FB8();
        sub_10008875C(v53, &qword_100274550, &qword_1001F8A00);
        sub_10008875C(v49, &qword_100274550, &qword_1001F8A00);
      }

      v56 = *(v47 + 8);
      v56(v51, v46);
      sub_1001AB244(v83, _s4DealVMa);
      v56(v81, v46);
      v20 = v75;
      sub_1001AB244(v75, _s4DealVMa);
      v23 = v74;
      sub_10008875C(v74, &qword_10026F7A8, &unk_1001F2B50);
      v26 = v73;
      result = sub_10008875C(v73, &qword_10026F7A8, &unk_1001F2B50);
      v57 = v82;
      v58 = v80;
      if ((v55 & 1) == 0)
      {
LABEL_4:
        a3 = v67 + 1;
        v30 = v66 + v62;
        v31 = v65 - 1;
        v32 = v64 + v62;
        if (v67 + 1 == v63)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v69)
      {
        break;
      }

      v59 = v70;
      sub_1001AB16C(v80, v70);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1001AB16C(v59, v30);
      v30 += v68;
      v33 = v58 + v68;
      v60 = __CFADD__(v57, 1);
      v34 = v57 + 1;
      if (v60)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001A7A24(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v197 = a1;
  v220 = sub_100084528(&qword_100274550, &qword_1001F8A00);
  v8 = *(*(v220 - 8) + 64);
  v9 = __chkstk_darwin(v220);
  v219 = &v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v218 = &v189 - v12;
  v13 = __chkstk_darwin(v11);
  v212 = (&v189 - v14);
  __chkstk_darwin(v13);
  v16 = &v189 - v15;
  v221 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
  v17 = *(v221 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v221);
  v201 = &v189 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v216 = &v189 - v22;
  v23 = __chkstk_darwin(v21);
  v228 = &v189 - v24;
  v25 = __chkstk_darwin(v23);
  v227 = &v189 - v26;
  v27 = __chkstk_darwin(v25);
  v226 = &v189 - v28;
  v29 = __chkstk_darwin(v27);
  v225 = &v189 - v30;
  v31 = __chkstk_darwin(v29);
  v211 = &v189 - v32;
  v33 = __chkstk_darwin(v31);
  v210 = &v189 - v34;
  v35 = __chkstk_darwin(v33);
  v209 = &v189 - v36;
  v37 = __chkstk_darwin(v35);
  v208 = &v189 - v38;
  v39 = __chkstk_darwin(v37);
  v192 = &v189 - v40;
  v41 = __chkstk_darwin(v39);
  v191 = &v189 - v42;
  v43 = __chkstk_darwin(v41);
  v195 = &v189 - v44;
  result = __chkstk_darwin(v43);
  v194 = &v189 - v46;
  v47 = a3[1];
  if (v47 < 1)
  {
    v49 = &_swiftEmptyArrayStorage;
LABEL_104:
    a4 = *v197;
    if (!*v197)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v230 = v49;
      v185 = *(v49 + 2);
      if (v185 >= 2)
      {
        while (*a3)
        {
          v186 = *&v49[16 * v185];
          v187 = *&v49[16 * v185 + 24];
          sub_1001A8BF0(*a3 + *(v17 + 72) * v186, *a3 + *(v17 + 72) * *&v49[16 * v185 + 16], *a3 + *(v17 + 72) * v187, a4);
          if (v5)
          {
          }

          if (v187 < v186)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_1001A97CC(v49);
          }

          if (v185 - 2 >= *(v49 + 2))
          {
            goto LABEL_130;
          }

          v188 = &v49[16 * v185];
          *v188 = v186;
          *(v188 + 1) = v187;
          v230 = v49;
          result = sub_1001A9740(v185 - 1);
          v49 = v230;
          v185 = *(v230 + 2);
          if (v185 <= 1)
          {
          }
        }

        goto LABEL_140;
      }
    }

LABEL_136:
    result = sub_1001A97CC(v49);
    v49 = result;
    goto LABEL_106;
  }

  v48 = 0;
  v49 = &_swiftEmptyArrayStorage;
  v199 = v17;
  v196 = a4;
  v206 = v16;
  v190 = a3;
  while (1)
  {
    v207 = v49;
    if (v48 + 1 >= v47)
    {
      v93 = v48 + 1;
    }

    else
    {
      v213 = v47;
      v193 = v5;
      v214 = *a3;
      v50 = v214;
      v51 = *(v17 + 72);
      v224 = v51;
      v229 = v214 + v51 * (v48 + 1);
      v52 = v194;
      sub_10009ADF0(v229, v194, &qword_10026F7A8, &unk_1001F2B50);
      v53 = v195;
      sub_10009ADF0(v50 + v51 * v48, v195, &qword_10026F7A8, &unk_1001F2B50);
      v54 = v191;
      sub_10009ADF0(v52, v191, &qword_10026F7A8, &unk_1001F2B50);
      v198 = v48;
      v55 = v220;
      v56 = v221;
      v57 = v54 + *(v221 + 48);
      v58 = (v57 + *(v220 + 48));
      v59 = *v58;
      v60 = v58[1];
      v61 = v192;
      sub_10009ADF0(v53, v192, &qword_10026F7A8, &unk_1001F2B50);
      v62 = v61 + *(v56 + 48);
      LODWORD(v223) = sub_1001A6B44(v57, v62, v59, v60, *(v62 + *(v55 + 48)), *(v62 + *(v55 + 48) + 8));
      v63 = sub_1001C4CA8();
      v64 = *(v63 - 8);
      v65 = *(v64 + 8);
      a3 = (v64 + 8);
      v65(v62, v63);
      sub_1001AB244(v61, _s4DealVMa);
      v222 = v65;
      v65(v57, v63);
      sub_1001AB244(v54, _s4DealVMa);
      sub_10008875C(v195, &qword_10026F7A8, &unk_1001F2B50);
      v66 = v229;
      result = sub_10008875C(v194, &qword_10026F7A8, &unk_1001F2B50);
      v217 = a3;
      v215 = (a3 + 1);
      v67 = v198 + 2;
      v68 = v214 + v224 * (v198 + 2);
      while (1)
      {
        v93 = v213;
        if (v213 == v67)
        {
          break;
        }

        v73 = v208;
        sub_10009ADF0(v68, v208, &qword_10026F7A8, &unk_1001F2B50);
        v229 = v66;
        v74 = v209;
        sub_10009ADF0(v66, v209, &qword_10026F7A8, &unk_1001F2B50);
        v75 = v210;
        sub_10009ADF0(v73, v210, &qword_10026F7A8, &unk_1001F2B50);
        v77 = v220;
        v76 = v221;
        v78 = v75 + *(v221 + 48);
        v79 = (v78 + *(v220 + 48));
        v80 = *v79;
        v81 = v79[1];
        v82 = v74;
        v83 = v211;
        sub_10009ADF0(v82, v211, &qword_10026F7A8, &unk_1001F2B50);
        v84 = v83 + *(v76 + 48);
        v85 = (v84 + *(v77 + 48));
        v86 = *v85;
        v87 = v85[1];
        v88 = *v215;
        v89 = v206;
        (*v215)(v206, v78, v63);
        v90 = (v89 + *(v77 + 48));
        *v90 = v80;
        v90[1] = v81;
        v88(v212, v84, v63);
        v91 = *(v77 + 48);
        a3 = v212;
        v92 = (v212 + v91);
        *v92 = v86;
        v92[1] = v87;
        sub_1000B6E64(&unk_10026F440);
        if (sub_1001C5FD8())
        {
          sub_10008875C(v89, &qword_100274550, &qword_1001F8A00);
          sub_10008875C(a3, &qword_100274550, &qword_1001F8A00);
          if (v86 == v80)
          {
            v69 = v87 < v81;
          }

          else
          {
            v69 = v86 < v80;
          }
        }

        else
        {
          sub_1000B6E64(&qword_10026F518);
          v69 = sub_1001C5FB8();
          v70 = a3;
          a3 = &qword_1001F8A00;
          sub_10008875C(v70, &qword_100274550, &qword_1001F8A00);
          sub_10008875C(v89, &qword_100274550, &qword_1001F8A00);
        }

        v71 = v222;
        (v222)(v84, v63);
        sub_1001AB244(v211, _s4DealVMa);
        (v71)(v78, v63);
        sub_1001AB244(v210, _s4DealVMa);
        sub_10008875C(v209, &qword_10026F7A8, &unk_1001F2B50);
        result = sub_10008875C(v208, &qword_10026F7A8, &unk_1001F2B50);
        ++v67;
        v68 += v224;
        v66 = v229 + v224;
        v72 = (v223 & 1) == (v69 & 1);
        v49 = v207;
        if (!v72)
        {
          v93 = v67 - 1;
          break;
        }
      }

      v5 = v193;
      v17 = v199;
      a4 = v196;
      v48 = v198;
      if (v223)
      {
        if (v93 < v198)
        {
          goto LABEL_133;
        }

        a3 = v190;
        if (v198 < v93)
        {
          v94 = v224 * (v93 - 1);
          v95 = v93;
          v96 = v93 * v224;
          v213 = v95;
          v97 = v95;
          v98 = v198;
          v99 = v198 * v224;
          do
          {
            if (v98 != --v97)
            {
              v100 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              sub_1001AB16C(v100 + v99, v201);
              if (v99 < v94 || v100 + v99 >= (v100 + v96))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v99 != v94)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1001AB16C(v201, v100 + v94);
              v17 = v199;
            }

            ++v98;
            v94 -= v224;
            v96 -= v224;
            v99 += v224;
          }

          while (v98 < v97);
          a4 = v196;
          v49 = v207;
          v48 = v198;
          v93 = v213;
        }
      }

      else
      {
        a3 = v190;
      }
    }

    v101 = a3[1];
    if (v93 < v101)
    {
      if (__OFSUB__(v93, v48))
      {
        goto LABEL_132;
      }

      if (v93 - v48 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v93 < v48)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AD9F0(0, *(v49 + 2) + 1, 1, v49);
      v49 = result;
    }

    a4 = *(v49 + 2);
    v140 = *(v49 + 3);
    v141 = a4 + 1;
    if (a4 >= v140 >> 1)
    {
      result = sub_1000AD9F0((v140 > 1), a4 + 1, 1, v49);
      v49 = result;
    }

    *(v49 + 2) = v141;
    v142 = &v49[16 * a4];
    *(v142 + 4) = v48;
    *(v142 + 5) = v93;
    v202 = v93;
    v143 = *v197;
    if (!*v197)
    {
      goto LABEL_141;
    }

    if (a4)
    {
      while (1)
      {
        v144 = v141 - 1;
        if (v141 >= 4)
        {
          break;
        }

        if (v141 == 3)
        {
          v145 = *(v49 + 4);
          v146 = *(v49 + 5);
          v155 = __OFSUB__(v146, v145);
          v147 = v146 - v145;
          v148 = v155;
LABEL_73:
          if (v148)
          {
            goto LABEL_120;
          }

          v161 = &v49[16 * v141];
          v163 = *v161;
          v162 = *(v161 + 1);
          v164 = __OFSUB__(v162, v163);
          v165 = v162 - v163;
          v166 = v164;
          if (v164)
          {
            goto LABEL_123;
          }

          v167 = &v49[16 * v144 + 32];
          v169 = *v167;
          v168 = *(v167 + 1);
          v155 = __OFSUB__(v168, v169);
          v170 = v168 - v169;
          if (v155)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v165, v170))
          {
            goto LABEL_127;
          }

          if (v165 + v170 >= v147)
          {
            if (v147 < v170)
            {
              v144 = v141 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v171 = &v49[16 * v141];
        v173 = *v171;
        v172 = *(v171 + 1);
        v155 = __OFSUB__(v172, v173);
        v165 = v172 - v173;
        v166 = v155;
LABEL_87:
        if (v166)
        {
          goto LABEL_122;
        }

        v174 = &v49[16 * v144];
        v176 = *(v174 + 4);
        v175 = *(v174 + 5);
        v155 = __OFSUB__(v175, v176);
        v177 = v175 - v176;
        if (v155)
        {
          goto LABEL_125;
        }

        if (v177 < v165)
        {
          goto LABEL_3;
        }

LABEL_94:
        a4 = v144 - 1;
        if (v144 - 1 >= v141)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v182 = *&v49[16 * a4 + 32];
        v183 = *&v49[16 * v144 + 40];
        sub_1001A8BF0(*a3 + *(v17 + 72) * v182, *a3 + *(v17 + 72) * *&v49[16 * v144 + 32], *a3 + *(v17 + 72) * v183, v143);
        if (v5)
        {
        }

        if (v183 < v182)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1001A97CC(v49);
        }

        if (a4 >= *(v49 + 2))
        {
          goto LABEL_117;
        }

        v184 = &v49[16 * a4];
        *(v184 + 4) = v182;
        *(v184 + 5) = v183;
        v230 = v49;
        result = sub_1001A9740(v144);
        v49 = v230;
        v141 = *(v230 + 2);
        if (v141 <= 1)
        {
          goto LABEL_3;
        }
      }

      v149 = &v49[16 * v141 + 32];
      v150 = *(v149 - 64);
      v151 = *(v149 - 56);
      v155 = __OFSUB__(v151, v150);
      v152 = v151 - v150;
      if (v155)
      {
        goto LABEL_118;
      }

      v154 = *(v149 - 48);
      v153 = *(v149 - 40);
      v155 = __OFSUB__(v153, v154);
      v147 = v153 - v154;
      v148 = v155;
      if (v155)
      {
        goto LABEL_119;
      }

      v156 = &v49[16 * v141];
      v158 = *v156;
      v157 = *(v156 + 1);
      v155 = __OFSUB__(v157, v158);
      v159 = v157 - v158;
      if (v155)
      {
        goto LABEL_121;
      }

      v155 = __OFADD__(v147, v159);
      v160 = v147 + v159;
      if (v155)
      {
        goto LABEL_124;
      }

      if (v160 >= v152)
      {
        v178 = &v49[16 * v144 + 32];
        v180 = *v178;
        v179 = *(v178 + 1);
        v155 = __OFSUB__(v179, v180);
        v181 = v179 - v180;
        if (v155)
        {
          goto LABEL_128;
        }

        if (v147 < v181)
        {
          v144 = v141 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v47 = a3[1];
    v48 = v202;
    a4 = v196;
    if (v202 >= v47)
    {
      goto LABEL_104;
    }
  }

  if (__OFADD__(v48, a4))
  {
    goto LABEL_134;
  }

  if ((v48 + a4) < v101)
  {
    v101 = v48 + a4;
  }

  if (v101 < v48)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v202 = v101;
  if (v93 == v101)
  {
    goto LABEL_53;
  }

  v193 = v5;
  v102 = *a3;
  v103 = sub_1001C4CA8();
  v104 = *(v17 + 72);
  v229 = v103;
  v217 = (v103 - 8);
  v105 = v102 + v104 * (v93 - 1);
  v214 = -v104;
  v198 = v48;
  v106 = v48 - v93;
  v215 = v102;
  v200 = v104;
  v107 = v102 + v93 * v104;
  a4 = v221;
LABEL_41:
  v213 = v93;
  v203 = v107;
  v204 = v106;
  v108 = v106;
  v205 = v105;
  v109 = v105;
  while (1)
  {
    v222 = v107;
    v223 = v108;
    v110 = v225;
    sub_10009ADF0(v107, v225, &qword_10026F7A8, &unk_1001F2B50);
    v111 = v226;
    sub_10009ADF0(v109, v226, &qword_10026F7A8, &unk_1001F2B50);
    v112 = v110;
    v113 = v227;
    sub_10009ADF0(v112, v227, &qword_10026F7A8, &unk_1001F2B50);
    v114 = v113 + *(a4 + 48);
    v115 = v220;
    v116 = (v114 + *(v220 + 48));
    v117 = *v116;
    v118 = v116[1];
    v119 = v228;
    sub_10009ADF0(v111, v228, &qword_10026F7A8, &unk_1001F2B50);
    v120 = v119 + *(a4 + 48);
    v121 = (v120 + *(v115 + 48));
    v122 = *v121;
    v123 = v121[1];
    v124 = v229;
    v125 = v218;
    v126 = *(v229 - 8);
    v127 = *(v126 + 16);
    v224 = v114;
    v128 = v114;
    v129 = v120;
    v127(v218, v128, v229);
    v130 = (v125 + *(v115 + 48));
    *v130 = v117;
    v130[1] = v118;
    v131 = v219;
    v127(v219, v129, v124);
    v132 = (v131 + *(v115 + 48));
    *v132 = v122;
    v132[1] = v123;
    sub_1000B6E64(&unk_10026F440);
    if (sub_1001C5FD8())
    {
      sub_10008875C(v125, &qword_100274550, &qword_1001F8A00);
      sub_10008875C(v131, &qword_100274550, &qword_1001F8A00);
      if (v122 == v117)
      {
        v133 = v123 < v118;
      }

      else
      {
        v133 = v122 < v117;
      }
    }

    else
    {
      sub_1000B6E64(&qword_10026F518);
      v133 = sub_1001C5FB8();
      sub_10008875C(v131, &qword_100274550, &qword_1001F8A00);
      sub_10008875C(v125, &qword_100274550, &qword_1001F8A00);
    }

    v134 = *(v126 + 8);
    v135 = v229;
    v134(v129, v229);
    sub_1001AB244(v228, _s4DealVMa);
    v134(v224, v135);
    sub_1001AB244(v227, _s4DealVMa);
    sub_10008875C(v226, &qword_10026F7A8, &unk_1001F2B50);
    result = sub_10008875C(v225, &qword_10026F7A8, &unk_1001F2B50);
    if ((v133 & 1) == 0)
    {
      a4 = v221;
LABEL_40:
      v93 = v213 + 1;
      v105 = v205 + v200;
      v106 = v204 - 1;
      v107 = &v203[v200];
      if (v213 + 1 == v202)
      {
        v5 = v193;
        a3 = v190;
        v17 = v199;
        v49 = v207;
        v48 = v198;
        v93 = v202;
        goto LABEL_53;
      }

      goto LABEL_41;
    }

    a4 = v221;
    v136 = v223;
    if (!v215)
    {
      break;
    }

    v137 = v222;
    v138 = v216;
    sub_1001AB16C(v222, v216);
    swift_arrayInitWithTakeFrontToBack();
    sub_1001AB16C(v138, v109);
    v109 += v214;
    v107 = &v137[v214];
    v139 = __CFADD__(v136, 1);
    v108 = v136 + 1;
    if (v139)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_1001A8BF0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v112 = sub_100084528(&qword_100274550, &qword_1001F8A00);
  v8 = *(*(v112 - 8) + 64);
  v9 = __chkstk_darwin(v112);
  v105 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v104 = v103 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v103 - v14;
  __chkstk_darwin(v13);
  v17 = v103 - v16;
  v120 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
  v18 = *(*(v120 - 8) + 64);
  v19 = __chkstk_darwin(v120);
  v111 = v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v110 = v103 - v23;
  v24 = __chkstk_darwin(v22);
  v109 = v103 - v25;
  v26 = __chkstk_darwin(v24);
  v116 = v103 - v27;
  v28 = __chkstk_darwin(v26);
  v115 = v103 - v29;
  v30 = __chkstk_darwin(v28);
  v114 = v103 - v31;
  result = __chkstk_darwin(v30);
  v113 = v103 - v34;
  v36 = *(v35 + 72);
  if (!v36)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_70;
  }

  v37 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_71;
  }

  v38 = (a2 - a1) / v36;
  v123 = a1;
  v122 = a4;
  if (v38 >= v37 / v36)
  {
    v40 = v37 / v36 * v36;
    v108 = v33;
    if (a4 < a2 || a2 + v40 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = a4 + v40;
    if (v40 >= 1)
    {
      v69 = -v36;
      v70 = a4 + v40;
      v117 = a1;
      v118 = a4;
      v116 = v69;
      while (2)
      {
        while (1)
        {
          v103[0] = v68;
          v71 = a2 + v69;
          v119 = a2 + v69;
          v107 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v123 = a2;
              v121 = v103[0];
              goto LABEL_68;
            }

            v114 = a3;
            v115 = v70;
            v106 = v68;
            v113 = v70 + v69;
            v73 = v109;
            sub_10009ADF0(v70 + v69, v109, &qword_10026F7A8, &unk_1001F2B50);
            v74 = v110;
            sub_10009ADF0(v71, v110, &qword_10026F7A8, &unk_1001F2B50);
            v75 = v73;
            v76 = v108;
            sub_10009ADF0(v75, v108, &qword_10026F7A8, &unk_1001F2B50);
            v77 = v120;
            v78 = v76 + *(v120 + 48);
            v79 = v112;
            v80 = (v78 + *(v112 + 48));
            v81 = *v80;
            v82 = v80[1];
            v83 = v74;
            v84 = v111;
            sub_10009ADF0(v83, v111, &qword_10026F7A8, &unk_1001F2B50);
            v85 = v84 + *(v77 + 48);
            v86 = (v85 + *(v79 + 48));
            v87 = *v86;
            v88 = v86[1];
            v89 = sub_1001C4CA8();
            v90 = *(v89 - 8);
            v91 = *(v90 + 16);
            v92 = v104;
            v91(v104, v78, v89);
            v93 = (v92 + *(v79 + 48));
            *v93 = v81;
            v93[1] = v82;
            v94 = v105;
            v91(v105, v85, v89);
            v95 = (v94 + *(v79 + 48));
            *v95 = v87;
            v95[1] = v88;
            sub_1000B6E64(&unk_10026F440);
            if (sub_1001C5FD8())
            {
              sub_10008875C(v92, &qword_100274550, &qword_1001F8A00);
              sub_10008875C(v94, &qword_100274550, &qword_1001F8A00);
              v96 = v87 == v81 ? v88 < v82 : v87 < v81;
            }

            else
            {
              sub_1000B6E64(&qword_10026F518);
              v96 = sub_1001C5FB8();
              sub_10008875C(v94, &qword_100274550, &qword_1001F8A00);
              sub_10008875C(v92, &qword_100274550, &qword_1001F8A00);
            }

            v97 = v114;
            v98 = v114 + v116;
            v99 = *(v90 + 8);
            v99(v85, v89);
            sub_1001AB244(v111, _s4DealVMa);
            v99(v78, v89);
            sub_1001AB244(v108, _s4DealVMa);
            sub_10008875C(v110, &qword_10026F7A8, &unk_1001F2B50);
            sub_10008875C(v109, &qword_10026F7A8, &unk_1001F2B50);
            a1 = v117;
            v100 = v118;
            if (v96)
            {
              break;
            }

            v101 = v113;
            v68 = v113;
            v71 = v119;
            if (v97 < v115 || v98 >= v115)
            {
              a3 = v98;
              swift_arrayInitWithTakeFrontToBack();
              v69 = v116;
            }

            else
            {
              v102 = v97 == v115;
              v69 = v116;
              a3 = v98;
              if (!v102)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v70 = v68;
            v72 = v101 > v100;
            a2 = v107;
            if (!v72)
            {
              goto LABEL_66;
            }
          }

          a2 = v119;
          if (v97 < v107 || v98 >= v107)
          {
            break;
          }

          v102 = v97 == v107;
          v68 = v106;
          v70 = v115;
          v69 = v116;
          a3 = v98;
          if (!v102)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v70 <= v100)
          {
            goto LABEL_66;
          }
        }

        a3 = v98;
        swift_arrayInitWithTakeFrontToBack();
        v68 = v106;
        v70 = v115;
        v69 = v116;
        if (v115 > v100)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v123 = a2;
    v121 = v68;
  }

  else
  {
    v39 = v38 * v36;
    v111 = v15;
    if (a4 < a1 || a1 + v39 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v110 = a4 + v39;
    v121 = a4 + v39;
    if (v39 >= 1 && a2 < a3)
    {
      v106 = v36;
      v107 = a3;
      do
      {
        v117 = a1;
        v119 = a2;
        v42 = v113;
        sub_10009ADF0(a2, v113, &qword_10026F7A8, &unk_1001F2B50);
        v118 = a4;
        v43 = v114;
        sub_10009ADF0(a4, v114, &qword_10026F7A8, &unk_1001F2B50);
        v44 = v115;
        sub_10009ADF0(v42, v115, &qword_10026F7A8, &unk_1001F2B50);
        v45 = v120;
        v46 = v44 + *(v120 + 48);
        v47 = v112;
        v48 = (v46 + *(v112 + 48));
        v49 = *v48;
        v50 = v48[1];
        v51 = v116;
        sub_10009ADF0(v43, v116, &qword_10026F7A8, &unk_1001F2B50);
        v52 = v51 + *(v45 + 48);
        v53 = (v52 + *(v47 + 48));
        v54 = *v53;
        v55 = v53[1];
        v56 = sub_1001C4CA8();
        v57 = *(v56 - 8);
        v58 = *(v57 + 16);
        v58(v17, v46, v56);
        v59 = &v17[*(v47 + 48)];
        *v59 = v49;
        v59[1] = v50;
        v60 = v111;
        v58(v111, v52, v56);
        v61 = (v60 + *(v47 + 48));
        *v61 = v54;
        v61[1] = v55;
        sub_1000B6E64(&unk_10026F440);
        if (sub_1001C5FD8())
        {
          sub_10008875C(v17, &qword_100274550, &qword_1001F8A00);
          sub_10008875C(v60, &qword_100274550, &qword_1001F8A00);
          if (v54 == v49)
          {
            v62 = v55 < v50;
          }

          else
          {
            v62 = v54 < v49;
          }
        }

        else
        {
          sub_1000B6E64(&qword_10026F518);
          v62 = sub_1001C5FB8();
          sub_10008875C(v60, &qword_100274550, &qword_1001F8A00);
          sub_10008875C(v17, &qword_100274550, &qword_1001F8A00);
        }

        v63 = *(v57 + 8);
        v63(v52, v56);
        sub_1001AB244(v116, _s4DealVMa);
        v63(v46, v56);
        sub_1001AB244(v115, _s4DealVMa);
        sub_10008875C(v114, &qword_10026F7A8, &unk_1001F2B50);
        sub_10008875C(v113, &qword_10026F7A8, &unk_1001F2B50);
        v64 = v117;
        a4 = v118;
        v65 = v107;
        if (v62)
        {
          v66 = v106;
          a2 = v119 + v106;
          if (v117 < v119 || v117 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v117 != v119)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v66 = v106;
          v67 = v118 + v106;
          a2 = v119;
          if (v117 < v118 || v117 >= v67)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v117 != v118)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v122 = v67;
          a4 += v66;
        }

        a1 = v64 + v66;
        v123 = a1;
      }

      while (a4 < v110 && a2 < v65);
    }
  }

LABEL_68:
  sub_1001A9934(&v123, &v122, &v121, &qword_10026F7A8, &unk_1001F2B50);
  return 1;
}

uint64_t sub_1001A9740(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001A97CC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1001A9824(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1001A9934(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = sub_100084528(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1001A9A1C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 1);
      v13[0] = *(v7 - 2);
      v13[1] = v9;
      v14 = v8;

      v10 = a1(v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- == 0;
      v7 += 24;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_1001A9AD0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_1001C69F8();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1001C6B38();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void *sub_1001A9BF8(uint64_t a1, unint64_t *a2)
{
  v7 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v9 = a1 + 56;
  v8 = *(a1 + 56);
  v10 = -1 << *(a1 + 32);
  v60 = ~v10;
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = (63 - v10) >> 6;
  v66 = a2 + 7;

  v16 = 0;
  v62 = v9;
  v61 = v13;
  v63 = v14;
  v64 = v7;
  while (1)
  {
    if (!v12)
    {
      v17 = v16;
      do
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_52;
        }

        if (v18 >= v13)
        {
          goto LABEL_49;
        }

        v12 = *(v9 + 8 * v18);
        ++v17;
      }

      while (!v12);
      v16 = v18;
    }

    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v65 = v16;
    v20 = *(v14 + 48) + 24 * (v19 | (v16 << 6));
    v2 = *v20;
    v21 = *(v20 + 8);
    v4 = *(v20 + 16);
    v22 = *(v7 + 40);
    sub_1001C6DF8();

    sub_1001C60E8();
    sub_1001C6E18(v4);
    v23 = sub_1001C6E28();
    v24 = -1 << *(v7 + 32);
    v9 = v23 & ~v24;
    v7 = v9 >> 6;
    v6 = 1 << v9;
    if (((1 << v9) & v66[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v14 = v63;
    v7 = v64;
    v9 = v62;
    v16 = v65;
    v13 = v61;
  }

  v25 = ~v24;
  v3 = v64[6];
  while (1)
  {
    v26 = v3 + 24 * v9;
    v5 = *(v26 + 16);
    v27 = *v26 == v2 && *(v26 + 8) == v21;
    if (v27)
    {
      if (v4 == v5)
      {
        break;
      }

      goto LABEL_16;
    }

    if ((sub_1001C6D08() & 1) != 0 && ((v4 ^ v5) & 1) == 0)
    {
      break;
    }

LABEL_16:
    v9 = (v9 + 1) & v25;
    v7 = v9 >> 6;
    v6 = 1 << v9;
    if ((v66[v9 >> 6] & (1 << v9)) == 0)
    {
      goto LABEL_6;
    }
  }

  v5 = v65;
  v68 = v60;
  v69 = v65;
  v70 = v12;
  v4 = v62;
  v2 = v63;
  v67[0] = v63;
  v67[1] = v62;

  v3 = v64;
  v29 = *(v64 + 32);
  v56 = ((1 << v29) + 63) >> 6;
  v15 = 8 * v56;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v57 = &v54;
    __chkstk_darwin(v28);
    v9 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v9, v66, v30);
    v31 = *(v9 + 8 * v7) & ~v6;
    v59 = v9;
    *(v9 + 8 * v7) = v31;
    v32 = *(v3 + 16) - 1;
    v33 = v61;
LABEL_25:
    v58 = v32;
LABEL_27:
    while (2)
    {
      if (v12)
      {
LABEL_33:
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v65 = v5;
        v37 = *(v2 + 48) + 24 * (v36 | (v5 << 6));
        v6 = *v37;
        v38 = *(v37 + 8);
        v39 = *(v37 + 16);
        v40 = *(v3 + 40);
        sub_1001C6DF8();

        sub_1001C60E8();
        sub_1001C6E18(v39);
        v41 = sub_1001C6E28();
        v42 = -1 << *(v3 + 32);
        v7 = v41 & ~v42;
        v9 = v7 >> 6;
        v43 = 1 << v7;
        if (((1 << v7) & v66[v7 >> 6]) == 0)
        {
LABEL_26:

          v2 = v63;
          v3 = v64;
          v4 = v62;
          v5 = v65;
          v33 = v61;
          continue;
        }

        v44 = ~v42;
        v45 = *(v3 + 48);
        while (1)
        {
          v46 = v45 + 24 * v7;
          v47 = *(v46 + 16);
          if (*v46 == v6 && *(v46 + 8) == v38)
          {
            if (v39 == v47)
            {
              goto LABEL_43;
            }
          }

          else if ((sub_1001C6D08() & 1) != 0 && ((v39 ^ v47) & 1) == 0)
          {
LABEL_43:

            v49 = v59[v9];
            v59[v9] = v49 & ~v43;
            v27 = (v49 & v43) == 0;
            v2 = v63;
            v3 = v64;
            v4 = v62;
            v5 = v65;
            v33 = v61;
            if (!v27)
            {
              v32 = v58 - 1;
              if (__OFSUB__(v58, 1))
              {
                __break(1u);
              }

              if (v58 == 1)
              {

                v7 = &_swiftEmptySetSingleton;
                goto LABEL_49;
              }

              goto LABEL_25;
            }

            goto LABEL_27;
          }

          v7 = (v7 + 1) & v44;
          v9 = v7 >> 6;
          v43 = 1 << v7;
          if ((v66[v7 >> 6] & (1 << v7)) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      break;
    }

    v34 = v5;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v33)
      {
        v7 = sub_100156828(v59, v56, v58, v3);
        goto LABEL_49;
      }

      v12 = *(v4 + 8 * v35);
      ++v34;
      if (v12)
      {
        v5 = v35;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v51 = v15;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v66, v51);
  v53 = v55;
  v7 = sub_1001AA69C(v52, v56, v3, v9, v67);

  if (v53)
  {

    __break(1u);
  }

  else
  {

    v60 = v68;
LABEL_49:
    sub_100005064();
    return v7;
  }

  return result;
}

unint64_t *sub_1001AA1F0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v59[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v50 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v55 = v4;
  v56 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v53 = v5 + 1;
    v11 = *(v2 + 40);
    sub_1001C6DF8();

    sub_1001C60E8();
    v12 = sub_1001C6E28();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v53;
    if (v53 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((sub_1001C6D08() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v56;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v59[1] = v53;

  v22 = *(v2 + 32);
  v51 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v51;
  v24 = v56;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v44 = v23;

  v45 = v44;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v52 = &v49;
    __chkstk_darwin(v21);
    v14 = &v49 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v58 = v7;
    memcpy(v14, v7, v25);
    v57 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v54 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v55;
    v7 = *(v55 + 16);
    v30 = v53;
    while (1)
    {
      v53 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_100156A70(v54, v51, v53, v57);
LABEL_42:

        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v57;
        v34 = *(v57 + 40);
        sub_1001C6DF8();

        sub_1001C60E8();
        v35 = sub_1001C6E28();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v58[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v56;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((sub_1001C6D08() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v58[v37 >> 6]) == 0)
          {
            v29 = v55;
            goto LABEL_37;
          }

          v42 = (*(v57 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v55;
      v31 = v54[v14];
      v54[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v53 - 1;
      v24 = v56;
      if (__OFSUB__(v53, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v53 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v46 = swift_slowAlloc();
  memcpy(v46, v7, v45);
  v47 = v50;
  v48 = sub_1001AA8EC(v46, v51, v2, v14, v59);

  if (!v47)
  {

    return v48;
  }

  __break(1u);
  return result;
}

unint64_t *sub_1001AA69C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v35 = a3 + 56;
  v33 = a5;
LABEL_2:
  v31 = v7;
LABEL_4:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_10:
      v13 = *(*a5 + 48) + 24 * (__clz(__rbit64(v9)) | (v10 << 6));
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      v17 = *(v5 + 40);
      sub_1001C6DF8();

      sub_1001C60E8();
      sub_1001C6E18(v16);
      v18 = sub_1001C6E28();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v35 + 8 * (v20 >> 6))) == 0)
      {
LABEL_3:

        a5 = v33;
        v5 = a3;
        continue;
      }

      v23 = ~v19;
      v24 = *(v5 + 48);
      while (1)
      {
        v25 = v24 + 24 * v20;
        v26 = *(v25 + 16);
        if (*v25 == v15 && *(v25 + 8) == v14)
        {
          if (v16 == v26)
          {
            goto LABEL_20;
          }
        }

        else if ((sub_1001C6D08() & 1) != 0 && ((v16 ^ v26) & 1) == 0)
        {
LABEL_20:

          a5 = v33;
          v28 = v32[v21];
          v32[v21] = v28 & ~v22;
          v5 = a3;
          if ((v28 & v22) != 0)
          {
            v7 = v31 - 1;
            if (__OFSUB__(v31, 1))
            {
LABEL_29:
              __break(1u);
              return result;
            }

            if (v31 == 1)
            {
              return &_swiftEmptySetSingleton;
            }

            goto LABEL_2;
          }

          goto LABEL_4;
        }

        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v35 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (a5[2] + 64) >> 6;
  }

  a5[3] = v29 - 1;
  a5[4] = 0;

  return sub_100156828(v32, a2, v31, v5);
}

unint64_t *sub_1001AA8EC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_100156A70(v28, a2, v27, a3);
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
        v16 = *(a3 + 40);
        sub_1001C6DF8();

        sub_1001C60E8();
        v17 = sub_1001C6E28();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((sub_1001C6D08() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_1001AAAD0(uint64_t result)
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
        v11 = *(v2 + 48) + 24 * (v10 | (v9 << 6));
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);

        sub_10017B81C(v12, v13, v14);

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

void *sub_1001AAD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v30 = a2;
  v7 = sub_100084528(&qword_100274548, &qword_1001F89F8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v29 = _s11TrackedItemVMa();
  v11 = *(*(v29 - 8) + 64);
  v12 = __chkstk_darwin(v29);
  v28 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return &_swiftEmptyArrayStorage;
  }

  v26 = v14;
  v18 = (v14 + 48);
  v19 = (a1 + 48);
  v20 = &_swiftEmptyArrayStorage;
  v27 = a4;
  while (1)
  {
    v21 = *v19;
    v22 = *(v19 - 1);
    v31[0] = *(v19 - 2);
    v31[1] = v22;
    v32 = v21;

    sub_1001A3C7C(v31, v33, a4, v10);
    if (v4)
    {
      break;
    }

    if ((*v18)(v10, 1, v29) == 1)
    {
      sub_10008875C(v10, &qword_100274548, &qword_1001F89F8);
    }

    else
    {
      sub_1001AB0E4(v10, v16, _s11TrackedItemVMa);
      sub_1001AB0E4(v16, v28, _s11TrackedItemVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1000AE1C8(0, v20[2] + 1, 1, v20);
      }

      v24 = v20[2];
      v23 = v20[3];
      if (v24 >= v23 >> 1)
      {
        v20 = sub_1000AE1C8(v23 > 1, v24 + 1, 1, v20);
      }

      v20[2] = v24 + 1;
      sub_1001AB0E4(v28, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, _s11TrackedItemVMa);
      a4 = v27;
    }

    v19 += 24;
    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

unint64_t sub_1001AAFFC()
{
  result = qword_100274540;
  if (!qword_100274540)
  {
    sub_1000885AC(&qword_100274228, &qword_1001F8710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274540);
  }

  return result;
}

uint64_t sub_1001AB080(uint64_t a1, uint64_t a2)
{
  v4 = _s11TrackedItemVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AB0E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001AB16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AB1DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001AB244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001AB2B8()
{
  result = qword_100274560;
  if (!qword_100274560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274560);
  }

  return result;
}

unint64_t ReadingHistoryModel.description.getter()
{
  v0 = type metadata accessor for ReadingHistoryMonth(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v57 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v50 - v6;
  v58 = sub_100084528(&qword_10026F898, &qword_1001F1488);
  v55 = *(v58 - 8);
  v8 = *(v55 + 64);
  __chkstk_darwin(v58);
  v10 = &v50 - v9;
  v11 = sub_100084528(&qword_10026F890, &qword_1001F1480);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v50 - v17;
  __chkstk_darwin(v16);
  v56 = &v50 - v19;
  v20 = sub_100084528(&qword_10026F888, &qword_1001F1478);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v52 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = (&v50 - v26);
  v28 = __chkstk_darwin(v25);
  v30 = (&v50 - v29);
  __chkstk_darwin(v28);
  v53 = (&v50 - v31);
  (*(v4 + 16))(v7, v60, v3);
  sub_1000885F4(&qword_10026F8A0, &unk_10026F470, &unk_1001F5600);
  sub_1001C6218();
  sub_1000885F4(&unk_10026F8A8, &qword_10026F898, &qword_1001F1488);
  v54 = v10;
  sub_1001C6868();
  v32 = v20;
  v33 = *(v21 + 48);
  v34 = v33(v18, 1, v32);
  v59 = v33;
  v60 = v21 + 48;
  if (v34 == 1)
  {
    (*(v55 + 8))(v54, v58);
    sub_10008875C(v18, &qword_10026F890, &qword_1001F1480);
    v35 = v56;
    (*(v21 + 56))(v56, 1, 1, v32);
  }

  else
  {
    v51 = v21;
    sub_10009AE58(v18, v30, &qword_10026F888, &qword_1001F1478);
    v36 = v32;
    v37 = v54;
    v38 = v58;
    sub_1001C6868();
    if (v33(v15, 1, v32) != 1)
    {
      do
      {
        sub_10009AE58(v15, v27, &qword_10026F888, &qword_1001F1478);
        if (*v30 >= *v27)
        {
          sub_10008875C(v27, &qword_10026F888, &qword_1001F1478);
        }

        else
        {
          sub_10008875C(v30, &qword_10026F888, &qword_1001F1478);
          sub_10009AE58(v27, v30, &qword_10026F888, &qword_1001F1478);
        }

        sub_1001C6868();
        v32 = v36;
      }

      while (v59(v15, 1, v36) != 1);
    }

    (*(v55 + 8))(v37, v38);
    sub_10008875C(v15, &qword_10026F890, &qword_1001F1480);
    v35 = v56;
    sub_10009AE58(v30, v56, &qword_10026F888, &qword_1001F1478);
    (*(v51 + 56))(v35, 0, 1, v32);
  }

  v39 = v57;
  v40 = 0xD00000000000001BLL;
  if (v59(v35, 1, v32) == 1)
  {
    sub_10008875C(v35, &qword_10026F890, &qword_1001F1480);
  }

  else
  {
    v41 = v35;
    v42 = v53;
    sub_10009AE58(v41, v53, &qword_10026F888, &qword_1001F1478);
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_1001C69C8(39);

    v62 = 0xD000000000000020;
    v63 = 0x80000001002043D0;
    v61 = *v42;
    v64._countAndFlagsBits = sub_1001C6CC8();
    sub_1001C6138(v64);

    v65._countAndFlagsBits = 8250;
    v65._object = 0xE200000000000000;
    sub_1001C6138(v65);
    v43 = v52;
    sub_10009ADF0(v42, v52, &qword_10026F888, &qword_1001F1478);
    v44 = *(v32 + 48);
    v45 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
    sub_1001C5D88();
    (*(*(v45 - 8) + 8))(v43 + v44, v45);
    v46 = sub_1001B4BF8(7, 0);
    v48 = v47;
    sub_1001BBBAC(v39, type metadata accessor for ReadingHistoryMonth);
    v66._countAndFlagsBits = v46;
    v66._object = v48;
    sub_1001C6138(v66);

    v67._countAndFlagsBits = 62;
    v67._object = 0xE100000000000000;
    sub_1001C6138(v67);
    v40 = v62;
    sub_10008875C(v42, &qword_10026F888, &qword_1001F1478);
  }

  return v40;
}

uint64_t sub_1001ABADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_1001C4D68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v32 - v12;
  v14 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v32 - v16;
  v18 = sub_1001C4948();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  result = __chkstk_darwin(v18);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 100 * a1;
  if ((a1 * 100) >> 64 != (100 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v25 = __OFADD__(v24, a2);
  v26 = v24 + a2;
  if (v25)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v26 > 9999)
  {
    (*(v6 + 56))(v17, 1, 1, v5);
    v31 = sub_1001C4D78();
    (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
    sub_1001C4938();
    sub_1001C4CD8();
    sub_1001C4D18();
    (*(v6 + 8))(v9, v5);
    return (*(v19 + 8))(v23, v18);
  }

  else
  {
    v27 = sub_1001C4CA8();
    v28 = *(*(v27 - 8) + 56);
    v29 = v27;
    v30 = v33;

    return v28(v30, 1, 1, v29);
  }
}

uint64_t sub_1001ABED4@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v2 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v36 = &v33 - v4;
  v5 = sub_1001C4CA8();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  __chkstk_darwin(v5);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_1002748C8, &unk_1001F9610);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  v16 = *(type metadata accessor for ReadingHistoryModel(0) + 20);
  sub_100084528(&qword_10026F830, &qword_1001F0E80);
  sub_1000885F4(&qword_1002748D0, &qword_10026F830, &qword_1001F0E80);
  sub_1001C6448();
  sub_1001C6488();
  sub_1000885F4(&qword_1002748D8, &qword_1002748C8, &unk_1001F9610);
  v17 = sub_1001C5FD8();
  v18 = *(v9 + 8);
  v18(v13, v8);
  v19 = (v18)(v15, v8);
  if (v17)
  {
    v20 = type metadata accessor for ReadingHistory.Streak(0);
    v21 = *(*(v20 - 8) + 56);
    v22 = v38;
  }

  else
  {
    __chkstk_darwin(v19);
    *(&v33 - 2) = v37;
    v23 = sub_1001B26F8(0, sub_1001BD228, (&v33 - 4));
    v24 = v38;
    if (v23 >= 2)
    {
      v25 = v23;
      v39 = v23;
      v26 = v36;
      sub_1001C5BA8();
      v28 = v34;
      v27 = v35;
      if ((*(v34 + 48))(v26, 1, v35) != 1)
      {
        v30 = *(v28 + 32);
        v31 = v33;
        v30(v33, v26, v27);
        v30(v24, v31, v27);
        v32 = type metadata accessor for ReadingHistory.Streak(0);
        *&v24[*(v32 + 20)] = v25;
        return (*(*(v32 - 8) + 56))(v24, 0, 1, v32);
      }

      sub_10008875C(v26, &unk_10026FC70, &unk_1001F1430);
    }

    v20 = type metadata accessor for ReadingHistory.Streak(0);
    v21 = *(*(v20 - 8) + 56);
    v22 = v24;
  }

  return v21(v22, 1, 1, v20);
}

BOOL sub_1001AC330(uint64_t a1, int a2)
{
  v33 = a2;
  v3 = sub_1001C4CA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v15 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v31 - v17;
  ReadingHistoryModel.readingHistoryDay(for:)(&v31 - v17);
  v19 = type metadata accessor for ReadingHistoryDay(0);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    sub_10008875C(v18, &qword_100273DA0, &qword_1001F7E50);
  }

  else
  {
    v20 = sub_1001C5E48();
    v32 = v12;
    v21 = v7;
    v22 = v3;
    v23 = a1;
    v24 = v4;
    v25 = v20;
    v26 = *(v19 + 20);
    sub_100084528(&qword_10026F4E0, &unk_1001F1140);
    sub_1001C56C8();
    v27 = v34;
    sub_1001BBBAC(v18, type metadata accessor for ReadingHistoryDay);
    v28 = v25 < v27;
    v4 = v24;
    a1 = v23;
    v3 = v22;
    v7 = v21;
    v12 = v32;
    if (!v28)
    {
      return 1;
    }
  }

  if (v33)
  {
    sub_1001B70BC(a1, v14);
    sub_10009ADF0(v14, v12, &unk_10026FC70, &unk_1001F1430);
    if ((*(v4 + 48))(v12, 1, v3) == 1)
    {
      sub_10008875C(v14, &unk_10026FC70, &unk_1001F1430);
      sub_10008875C(v12, &unk_10026FC70, &unk_1001F1430);
      return 0;
    }

    (*(v4 + 32))(v7, v12, v3);
    v29 = sub_1001C4C58();
    (*(v4 + 8))(v7, v3);
    sub_10008875C(v14, &unk_10026FC70, &unk_1001F1430);
    return (v29 & 1) != 0;
  }

  return 0;
}

uint64_t sub_1001AC6B4(uint64_t a1, int a2)
{
  v72 = a2;
  v3 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v54 - v5;
  v7 = type metadata accessor for ReadingHistoryDay(0);
  v8 = *(v7 - 8);
  v69 = v7;
  v70 = v8;
  v9 = *(v8 + 8);
  __chkstk_darwin(v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1001C4948();
  v68 = *(v60 - 8);
  v12 = *(v68 + 8);
  __chkstk_darwin(v60);
  v59 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v66 = &v54 - v19;
  v20 = sub_1001C4CA8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v67 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v63 = &v54 - v26;
  __chkstk_darwin(v25);
  v28 = &v54 - v27;
  v55 = sub_1001C4D68();
  v54 = *(v55 - 8);
  v29 = *(v54 + 64);
  __chkstk_darwin(v55);
  v71 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4CD8();
  v31 = *(v21 + 16);
  v21 += 16;
  v31(v28, a1, v20);
  v32 = 0;
  v64 = (v21 + 32);
  v33 = (v21 + 16);
  v34 = (v21 - 8);
  v35 = v6;
  v58 = enum case for Calendar.Component.day(_:);
  v57 = (v68 + 8);
  v68 = v70 + 48;
  v56 = xmmword_1001F0670;
  v70 = v18;
  v61 = v6;
  v65 = v34;
  if (v72)
  {
LABEL_5:
    while (1)
    {
      v36 = v66;
      sub_1001B70BC(v28, v66);
      sub_10009ADF0(v36, v18, &unk_10026FC70, &unk_1001F1430);
      if ((*v64)(v18, 1, v20) == 1)
      {
        break;
      }

      v38 = *v33;
      v39 = v63;
      (*v33)();
      if ((sub_1001C4C58() & 1) == 0)
      {
        v34 = v65;
        (*v65)(v39, v20);
        v37 = v66;
        goto LABEL_14;
      }

      v62 = v38;
      sub_100084528(&qword_100274848, &qword_1001F9590);
      v40 = sub_1001C4D48();
      v41 = *(v40 - 8);
      v42 = *(v41 + 72);
      v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = v56;
      (*(v41 + 104))(v44 + v43, v58, v40);
      sub_1001BCEA0(v44);
      swift_setDeallocating();
      (*(v41 + 8))(v44 + v43, v40);
      swift_deallocClassInstance();
      v45 = v59;
      sub_1001C4CF8();

      v46 = sub_1001C4908();
      LOBYTE(v40) = v47;
      (*v57)(v45, v60);
      sub_10008875C(v66, &unk_10026FC70, &unk_1001F1430);
      v34 = v65;
      result = (*v65)(v28, v20);
      if ((v40 & 1) != 0 || v46 < 1)
      {
        v35 = v61;
        v18 = v70;
      }

      else
      {
        v49 = __OFADD__(v32, v46);
        v32 += v46;
        v35 = v61;
        v18 = v70;
        if (v49)
        {
          goto LABEL_24;
        }
      }

      (v62)(v28, v63, v20);
      if ((v72 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_10008875C(v36, &unk_10026FC70, &unk_1001F1430);
    v37 = v18;
    v34 = v65;
LABEL_14:
    sub_10008875C(v37, &unk_10026FC70, &unk_1001F1430);
    goto LABEL_15;
  }

  while (1)
  {
LABEL_15:
    ReadingHistoryModel.readingHistoryDay(for:)(v35);
    v50 = v69;
    if ((*v68)(v35, 1, v69) == 1)
    {
      (*v34)(v28, v20);
      (*(v54 + 8))(v71, v55);
      sub_10008875C(v35, &qword_100273DA0, &qword_1001F7E50);
      return v32;
    }

    sub_1001BD1C0(v35, v11, type metadata accessor for ReadingHistoryDay);
    v51 = sub_1001C5E48();
    v52 = *(v50 + 20);
    sub_100084528(&qword_10026F4E0, &unk_1001F1140);
    result = sub_1001C56C8();
    if (v51 < v73)
    {
      sub_1001BBBAC(v11, type metadata accessor for ReadingHistoryDay);
      (*v34)(v28, v20);
      (*(v54 + 8))(v71, v55);
      return v32;
    }

    v49 = __OFADD__(v32++, 1);
    if (v49)
    {
      break;
    }

    v53 = v67;
    sub_1001C4BE8();
    sub_1001BBBAC(v11, type metadata accessor for ReadingHistoryDay);
    (*v34)(v28, v20);
    (*v33)(v28, v53, v20);
    v18 = v70;
    if (v72)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1001ACEE4(uint64_t a1)
{
  v215 = sub_100084528(&qword_100274868, &qword_1001F95A0);
  v3 = *(*(v215 - 8) + 64);
  __chkstk_darwin(v215);
  v214 = &v192 - v4;
  v5 = sub_100084528(&qword_100274870, &qword_1001F95A8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v203 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v204 = &v192 - v10;
  v11 = __chkstk_darwin(v9);
  v210 = &v192 - v12;
  __chkstk_darwin(v11);
  v219 = &v192 - v13;
  v209 = sub_100084528(&qword_100274878, &qword_1001F95B0);
  v208 = *(v209 - 8);
  v14 = *(v208 + 64);
  v15 = __chkstk_darwin(v209);
  v207 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v213 = &v192 - v17;
  v206 = sub_100084528(&qword_100274880, &qword_1001F95B8);
  v18 = *(*(v206 - 8) + 64);
  __chkstk_darwin(v206);
  v205 = &v192 - v19;
  v224 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v220 = *(v224 - 8);
  v20 = *(v220 + 64);
  __chkstk_darwin(v224);
  v223 = &v192 - v21;
  v22 = type metadata accessor for ReadingHistoryMonth(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v222 = &v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v218 = (&v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v30 = &v192 - v29;
  v31 = sub_100084528(&qword_100274888, &unk_1001F95C0);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v199 = &v192 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v201 = &v192 - v36;
  __chkstk_darwin(v35);
  v38 = &v192 - v37;
  v39 = sub_100084528(&unk_10026F480, &qword_1001F0E88);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v42 = &v192 - v41;
  v43 = sub_100084528(&qword_100274890, &qword_1001F95D0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v43);
  v198 = &v192 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v200 = &v192 - v49;
  v50 = __chkstk_darwin(v48);
  v52 = &v192 - v51;
  __chkstk_darwin(v50);
  v54 = &v192 - v53;
  v227 = &_swiftEmptySetSingleton;
  type metadata accessor for ReadingHistoryModel(0);
  sub_1001BBB44(&qword_10026F490, type metadata accessor for ReadingHistoryModel);
  v216 = a1;
  v217 = v1;
  sub_1001C5CB8();
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    sub_10008875C(v42, &unk_10026F480, &qword_1001F0E88);
    return &_swiftEmptySetSingleton;
  }

  else
  {
    sub_10009AE58(v42, v54, &qword_100274890, &qword_1001F95D0);
    v202 = v54;
    sub_10009ADF0(v54, v52, &qword_100274890, &qword_1001F95D0);
    v197 = v43;
    v56 = *(v43 + 48);
    sub_10009AE58(v52, v38, &qword_100274888, &unk_1001F95C0);
    v57 = sub_100084528(&qword_100274898, &qword_1001F95D8);
    v58 = *(v57 - 8);
    v59 = *(v58 + 48);
    v195 = v58 + 48;
    v194 = v59;
    v60 = v59(v38, 1, v57);
    v196 = v57;
    v212 = v30;
    v193 = v58;
    if (v60 == 1)
    {
      sub_10008875C(&v52[v56], &qword_10026F8C8, &qword_1001F95E0);
      result = sub_10008875C(v38, &qword_100274888, &unk_1001F95C0);
      v61 = &_swiftEmptySetSingleton;
    }

    else
    {
      v61 = sub_1001C5AD8();
      (*(v58 + 8))(v38, v57);
      result = sub_10008875C(&v52[v56], &qword_10026F8C8, &qword_1001F95E0);
    }

    v62 = 0;
    v225 = 0;
    v63 = v61 + 56;
    v64 = 1 << v61[32];
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & *(v61 + 7);
    v67 = (v64 + 63) >> 6;
    v68 = v220;
    v220 += 8;
    v221 = (v68 + 16);
    v211 = v61;
    v69 = v222;
    if (!v66)
    {
LABEL_10:
      while (1)
      {
        v70 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if (v70 >= v67)
        {

          v78 = v200;
          sub_10009ADF0(v202, v200, &qword_100274890, &qword_1001F95D0);
          v79 = *(v197 + 48);
          v80 = v201;
          sub_10009AE58(v78, v201, &qword_100274888, &unk_1001F95C0);
          v81 = v196;
          if (v194(v80, 1, v196) == 1)
          {
            sub_10008875C(v78 + v79, &qword_10026F8C8, &qword_1001F95E0);
            result = sub_10008875C(v80, &qword_100274888, &unk_1001F95C0);
            v82 = &_swiftEmptySetSingleton;
          }

          else
          {
            v82 = sub_1001C5AE8();
            (*(v193 + 8))(v80, v81);
            result = sub_10008875C(v78 + v79, &qword_10026F8C8, &qword_1001F95E0);
          }

          v83 = 0;
          v84 = 1 << v82[32];
          v85 = -1;
          if (v84 < 64)
          {
            v85 = ~(-1 << v84);
          }

          v86 = v85 & *(v82 + 7);
          for (i = (v84 + 63) >> 6; v86; v83 = v88)
          {
            v88 = v83;
            v89 = v218;
LABEL_27:
            v90 = *(*(v82 + 6) + ((v88 << 9) | (8 * __clz(__rbit64(v86)))));
            v226 = v90;
            sub_100084528(&unk_10026F470, &unk_1001F5600);
            sub_1001C5BA8();
            v91 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
            v92 = *(v91 - 8);
            result = (*(v92 + 48))(v89, 1, v91);
            if (result == 1)
            {
              goto LABEL_105;
            }

            v93 = v89;
            v86 &= v86 - 1;
            v94 = v222;
            sub_1001C5D88();
            (*(v92 + 8))(v93, v91);
            v96 = v223;
            v95 = v224;
            (*v221)(v223, v94, v224);
            sub_1001BBBAC(v94, type metadata accessor for ReadingHistoryMonth);
            v97 = v225;
            sub_1001AE538(v96, &v227, v90);
            v225 = v97;
            result = (*v220)(v96, v95);
          }

          v89 = v218;
          while (1)
          {
            v88 = v83 + 1;
            if (__OFADD__(v83, 1))
            {
              break;
            }

            if (v88 >= i)
            {

              v98 = v202;
              v99 = v198;
              sub_10009ADF0(v202, v198, &qword_100274890, &qword_1001F95D0);
              v100 = *(v197 + 48);
              v101 = v199;
              sub_10009AE58(v99, v199, &qword_100274888, &unk_1001F95C0);
              v102 = v196;
              if (v194(v101, 1, v196) == 1)
              {
                sub_10008875C(v98, &qword_100274890, &qword_1001F95D0);
                sub_10008875C(v99 + v100, &qword_10026F8C8, &qword_1001F95E0);
                v103 = &qword_100274888;
                v104 = &unk_1001F95C0;
                v105 = v101;
LABEL_97:
                sub_10008875C(v105, v103, v104);
                return v227;
              }

              v106 = sub_1001C5AF8();
              (*(v193 + 8))(v101, v102);
              result = sub_10008875C(v99 + v100, &qword_10026F8C8, &qword_1001F95E0);
              v107 = 0;
              v109 = v106 + 64;
              v108 = *(v106 + 64);
              v216 = v106;
              v110 = 1 << *(v106 + 32);
              if (v110 < 64)
              {
                v111 = ~(-1 << v110);
              }

              else
              {
                v111 = -1;
              }

              v112 = v111 & v108;
              v113 = (v110 + 63) >> 6;
              v212 = (v106 + 64);
              v211 = v113;
LABEL_38:
              if (v112)
              {
                v117 = v107;
LABEL_43:
                v223 = v112;
                v217 = v117;
                v118 = __clz(__rbit64(v112)) | (v117 << 6);
                v119 = *(*(v216 + 48) + 8 * v118);
                v120 = &v205[*(v206 + 48)];
                sub_10009ADF0(*(v216 + 56) + *(v208 + 72) * v118, v120, &qword_100274878, &qword_1001F95B0);
                v121 = v209;
                v122 = *(v209 + 48);
                v123 = *(v209 + 64);
                v124 = v213;
                sub_10009AE58(v120, v213, &qword_100274870, &qword_1001F95A8);
                sub_10009AE58(v120 + v122, v124 + v122, &qword_1002748A0, &qword_1001F95E8);
                sub_10009AE58(v120 + v123, v124 + v123, &qword_1002748A0, &qword_1001F95E8);
                v125 = v207;
                sub_10009ADF0(v124, v207, &qword_100274878, &qword_1001F95B0);
                v126 = *(v121 + 48);
                v127 = *(v121 + 64);
                v128 = v219;
                sub_10009AE58(v125, v219, &qword_100274870, &qword_1001F95A8);
                sub_10008875C(v125 + v127, &qword_1002748A0, &qword_1001F95E8);
                sub_10008875C(v125 + v126, &qword_1002748A0, &qword_1001F95E8);
                v129 = v210;
                sub_10009ADF0(v128, v210, &qword_100274870, &qword_1001F95A8);
                v130 = sub_100084528(&qword_1002748A8, &qword_1001F95F0);
                v131 = *(v130 - 8);
                v220 = *(v131 + 6);
                v221 = (v131 + 48);
                v132 = (v220)(v129, 1, v130);
                v222 = v130;
                v218 = v131;
                if (v132 == 1)
                {
                  sub_10008875C(v129, &qword_100274870, &qword_1001F95A8);
                  result = &_swiftEmptySetSingleton;
                }

                else
                {
                  v133 = sub_1001C5AD8();
                  (*(v131 + 1))(v129, v130);
                  result = v133;
                }

                v134 = 0;
                v223 &= v223 - 1;
                v135 = result + 56;
                v136 = 1 << *(result + 32);
                if (v136 < 64)
                {
                  v137 = ~(-1 << v136);
                }

                else
                {
                  v137 = -1;
                }

                v138 = v137 & *(result + 56);
                v139 = v227;
                v140 = (v136 + 63) >> 6;
LABEL_51:
                v142 = v139 + 56;
                v143 = v134;
                v224 = v139;
                if (!v138)
                {
                  goto LABEL_53;
                }

                do
                {
                  v134 = v143;
LABEL_56:
                  v144 = __clz(__rbit64(v138));
                  v138 &= v138 - 1;
                  v145 = result;
                  v146 = *(*(result + 48) + ((v134 << 9) | (8 * v144)));
                  v147 = *(v139 + 40);
                  sub_1001C6DF8();
                  sub_1001C6E08(v119);
                  sub_1001C6E08(v146);
                  v148 = sub_1001C6E28();
                  v139 = v224;
                  v149 = -1 << *(v224 + 32);
                  v150 = v148 & ~v149;
                  if (((*(v142 + ((v150 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v150) & 1) == 0)
                  {
LABEL_50:
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v226 = v139;
                    sub_100179134(v119, v146, v150, isUniquelyReferenced_nonNull_native);
                    v139 = v226;
                    result = v145;
                    goto LABEL_51;
                  }

                  v151 = ~v149;
                  while (1)
                  {
                    v152 = (*(v224 + 48) + 16 * v150);
                    if (*v152 == v119 && v152[1] == v146)
                    {
                      break;
                    }

                    v150 = (v150 + 1) & v151;
                    if (((*(v142 + ((v150 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v150) & 1) == 0)
                    {
                      goto LABEL_50;
                    }
                  }

                  v143 = v134;
                  result = v145;
                }

                while (v138);
                while (1)
                {
LABEL_53:
                  v134 = v143 + 1;
                  if (__OFADD__(v143, 1))
                  {
                    __break(1u);
                    goto LABEL_99;
                  }

                  if (v134 >= v140)
                  {
                    break;
                  }

                  v138 = *(v135 + 8 * v134);
                  ++v143;
                  if (v138)
                  {
                    goto LABEL_56;
                  }
                }

                v227 = v139;

                v153 = v204;
                sub_10009ADF0(v219, v204, &qword_100274870, &qword_1001F95A8);
                v154 = v222;
                if ((v220)(v153, 1, v222) == 1)
                {
                  result = sub_10008875C(v153, &qword_100274870, &qword_1001F95A8);
                  v155 = &_swiftEmptySetSingleton;
                }

                else
                {
                  v155 = sub_1001C5AE8();
                  result = v218[1](v153, v154);
                }

                v156 = 0;
                v157 = 1 << v155[32];
                if (v157 < 64)
                {
                  v158 = ~(-1 << v157);
                }

                else
                {
                  v158 = -1;
                }

                v159 = v158 & *(v155 + 7);
                v160 = (v157 + 63) >> 6;
                v161 = v224;
LABEL_71:
                v163 = v161 + 56;
                v164 = v156;
                if (!v159)
                {
                  goto LABEL_73;
                }

                do
                {
                  v156 = v164;
LABEL_76:
                  v165 = __clz(__rbit64(v159));
                  v159 &= v159 - 1;
                  v166 = *(*(v155 + 6) + ((v156 << 9) | (8 * v165)));
                  v167 = *(v161 + 40);
                  sub_1001C6DF8();
                  sub_1001C6E08(v119);
                  sub_1001C6E08(v166);
                  result = sub_1001C6E28();
                  v168 = -1 << *(v161 + 32);
                  v169 = result & ~v168;
                  if (((*(v163 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169) & 1) == 0)
                  {
LABEL_70:
                    v162 = swift_isUniquelyReferenced_nonNull_native();
                    v226 = v161;
                    result = sub_100179134(v119, v166, v169, v162);
                    v161 = v226;
                    goto LABEL_71;
                  }

                  v170 = ~v168;
                  while (1)
                  {
                    v171 = (*(v161 + 48) + 16 * v169);
                    if (*v171 == v119 && v171[1] == v166)
                    {
                      break;
                    }

                    v169 = (v169 + 1) & v170;
                    if (((*(v163 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169) & 1) == 0)
                    {
                      goto LABEL_70;
                    }
                  }

                  v164 = v156;
                }

                while (v159);
LABEL_73:
                while (1)
                {
                  v156 = v164 + 1;
                  if (__OFADD__(v164, 1))
                  {
                    break;
                  }

                  if (v156 >= v160)
                  {
                    v227 = v161;

                    v172 = v219;
                    v173 = v203;
                    sub_10009ADF0(v219, v203, &qword_100274870, &qword_1001F95A8);
                    v174 = v222;
                    if ((v220)(v173, 1, v222) == 1)
                    {
                      sub_10008875C(v172, &qword_100274870, &qword_1001F95A8);
                      sub_10008875C(v213, &qword_100274878, &qword_1001F95B0);
                      v114 = v173;
                      v115 = &qword_100274870;
                      v116 = &qword_1001F95A8;
LABEL_37:
                      result = sub_10008875C(v114, v115, v116);
                      v107 = v217;
                      v109 = v212;
                      v113 = v211;
                      v112 = v223;
                      goto LABEL_38;
                    }

                    v175 = sub_1001C5AF8();
                    result = v218[1](v173, v174);
                    v176 = 0;
                    v178 = v175 + 64;
                    v177 = *(v175 + 64);
                    v224 = v175;
                    v179 = 1 << *(v175 + 32);
                    if (v179 < 64)
                    {
                      v180 = ~(-1 << v179);
                    }

                    else
                    {
                      v180 = -1;
                    }

                    v181 = v180 & v177;
                    v182 = (v179 + 63) >> 6;
                    if ((v180 & v177) != 0)
                    {
                      do
                      {
                        v183 = v176;
LABEL_93:
                        v184 = __clz(__rbit64(v181));
                        v181 &= v181 - 1;
                        v185 = v184 | (v183 << 6);
                        v186 = *(v224 + 56);
                        v187 = *(*(v224 + 48) + 8 * v185);
                        v188 = (sub_100084528(&qword_1002748B0, &qword_1001F95F8) - 8);
                        v189 = v186 + *(*v188 + 72) * v185;
                        v190 = &v214[*(v215 + 48)];
                        sub_10009ADF0(v189, v190, &qword_1002748B0, &qword_1001F95F8);
                        v191 = v188[14];
                        sub_1001787B0(&v226, v119, v187);
                        result = sub_10008875C(v190 + v191, &qword_1002748A0, &qword_1001F95E8);
                      }

                      while (v181);
                    }

                    while (1)
                    {
                      v183 = v176 + 1;
                      if (__OFADD__(v176, 1))
                      {
                        goto LABEL_102;
                      }

                      if (v183 >= v182)
                      {

                        sub_10008875C(v219, &qword_100274870, &qword_1001F95A8);
                        v114 = v213;
                        v115 = &qword_100274878;
                        v116 = &qword_1001F95B0;
                        goto LABEL_37;
                      }

                      v181 = *(v178 + 8 * v183);
                      ++v176;
                      if (v181)
                      {
                        v176 = v183;
                        goto LABEL_93;
                      }
                    }
                  }

                  v159 = *&v155[8 * v156 + 56];
                  ++v164;
                  if (v159)
                  {
                    goto LABEL_76;
                  }
                }

LABEL_99:
                __break(1u);
                goto LABEL_100;
              }

              while (1)
              {
                v117 = v107 + 1;
                if (__OFADD__(v107, 1))
                {
                  goto LABEL_103;
                }

                if (v117 >= v113)
                {

                  v103 = &qword_100274890;
                  v104 = &qword_1001F95D0;
                  v105 = v202;
                  goto LABEL_97;
                }

                v112 = *(v109 + 8 * v117);
                ++v107;
                if (v112)
                {
                  goto LABEL_43;
                }
              }
            }

            v86 = *&v82[8 * v88 + 56];
            ++v83;
            if (v86)
            {
              goto LABEL_27;
            }
          }

LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v66 = *&v63[8 * v70];
        ++v62;
        if (v66)
        {
          goto LABEL_13;
        }
      }

LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    while (1)
    {
      v70 = v62;
LABEL_13:
      v71 = *(*(v61 + 6) + ((v70 << 9) | (8 * __clz(__rbit64(v66)))));
      v226 = v71;
      sub_100084528(&unk_10026F470, &unk_1001F5600);
      v72 = v212;
      sub_1001C5BA8();
      v73 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
      v74 = *(v73 - 8);
      result = (*(v74 + 48))(v72, 1, v73);
      if (result == 1)
      {
        break;
      }

      v66 &= v66 - 1;
      sub_1001C5D88();
      (*(v74 + 8))(v72, v73);
      v76 = v223;
      v75 = v224;
      (*v221)(v223, v69, v224);
      sub_1001BBBAC(v69, type metadata accessor for ReadingHistoryMonth);
      v77 = v225;
      sub_1001AE538(v76, &v227, v71);
      v225 = v77;
      result = (*v220)(v76, v75);
      v62 = v70;
      v61 = v211;
      if (!v66)
      {
        goto LABEL_10;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AE538(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  v25 = a2;
  v26 = a3;
  v29 = a1;
  v23 = sub_100084528(&qword_1002705A0, &unk_1001F9600);
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v23);
  v6 = (&v23 - v5);
  v7 = sub_100084528(&qword_100272518, &qword_1001F55E8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = sub_100084528(&qword_100272520, &qword_1001F55F0);
  v24 = *(v16 - 8);
  v17 = *(v24 + 64);
  __chkstk_darwin(v16);
  v19 = &v23 - v18;
  (*(v12 + 16))(v15, v29, v11);
  sub_1000885F4(&qword_1002748B8, &qword_100272540, &unk_1001F5610);
  sub_1001C6218();
  sub_1000885F4(&qword_1002748C0, &qword_100272520, &qword_1001F55F0);
  v27 = v19;
  v29 = v16;
  sub_1001C6868();
  v20 = v23;
  v21 = *(v3 + 48);
  if (v21(v10, 1, v23) != 1)
  {
    do
    {
      sub_10009AE58(v10, v6, &qword_1002705A0, &unk_1001F9600);
      sub_1001787B0(v28, v26, *v6);
      sub_10008875C(v6, &qword_1002705A0, &unk_1001F9600);
      sub_1001C6868();
    }

    while (v21(v10, 1, v20) != 1);
  }

  return (*(v24 + 8))(v27, v29);
}

uint64_t ReadingHistoryModel.readingHistoryDay(for:)@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = *(v52 + 64);
  __chkstk_darwin(v1);
  v51 = &v48 - v3;
  v4 = type metadata accessor for ReadingHistoryMonth(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v57 = &v48 - v9;
  v10 = sub_100084528(&unk_10026F8F0, &unk_1001F14C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v50 = &v48 - v12;
  v13 = sub_1001C4D48();
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001C4D68();
  v54 = *(v18 - 8);
  v55 = v18;
  v19 = *(v54 + 64);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4CD8();
  v22 = v14[13];
  v22(v17, enum case for Calendar.Component.year(_:), v13);
  v23 = sub_1001C4D58();
  v24 = v14[1];
  v24(v17, v13);
  v22(v17, enum case for Calendar.Component.month(_:), v13);
  v25 = sub_1001C4D58();
  v24(v17, v13);
  v22(v17, enum case for Calendar.Component.day(_:), v13);
  v26 = v21;
  v27 = sub_1001C4D58();
  result = (v24)(v17, v13);
  v29 = 100 * v23;
  if ((v23 * 100) >> 64 == (100 * v23) >> 63)
  {
    v30 = __OFADD__(v29, v25);
    v31 = v29 + v25;
    if (!v30)
    {
      v58 = v31;
      sub_100084528(&unk_10026F470, &unk_1001F5600);
      v32 = v57;
      sub_1001C5BA8();
      v33 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v32, 1, v33) == 1)
      {
        (*(v54 + 8))(v21, v55);
        v35 = &qword_10026F880;
        v36 = &qword_1001F1470;
        v37 = v32;
      }

      else
      {
        v38 = v49;
        sub_1001C5D88();
        (*(v34 + 8))(v32, v33);
        v39 = v51;
        v40 = v52;
        v41 = v53;
        (*(v52 + 16))(v51, v38, v53);
        sub_1001BBBAC(v38, type metadata accessor for ReadingHistoryMonth);
        v58 = v27;
        v42 = v50;
        sub_1001C5BA8();
        (*(v40 + 8))(v39, v41);
        v43 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
        v44 = *(v43 - 8);
        if ((*(v44 + 48))(v42, 1, v43) != 1)
        {
          v46 = v56;
          sub_1001C5D88();
          (*(v54 + 8))(v26, v55);
          (*(v44 + 8))(v42, v43);
          v45 = 0;
          goto LABEL_9;
        }

        (*(v54 + 8))(v26, v55);
        v35 = &unk_10026F8F0;
        v36 = &unk_1001F14C0;
        v37 = v42;
      }

      sub_10008875C(v37, v35, v36);
      v45 = 1;
      v46 = v56;
LABEL_9:
      v47 = type metadata accessor for ReadingHistoryDay(0);
      return (*(*(v47 - 8) + 56))(v46, v45, 1, v47);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ReadingHistoryModel.setGoal(_:date:)(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - v5;
  v7 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v31 = type metadata accessor for ReadingHistoryMonth(0);
  v12 = *(*(v31 - 8) + 64);
  v13 = __chkstk_darwin(v31);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  v18 = sub_1001C4CA8();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, a2);
  v30 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v21);
  v24 = v23;
  v33[0] = v30;
  sub_100084528(&unk_10026F470, &unk_1001F5600);
  sub_1001C5B88();
  sub_1001C5DB8();
  (*(v8 + 8))(v11, v7);
  v33[4] = v24;
  v33[5] = v29;
  sub_100084528(&qword_100272540, &unk_1001F5610);
  v25 = sub_1001C5B78();
  sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  v26 = sub_1001C5DA8();
  LODWORD(v21) = *(type metadata accessor for ReadingHistoryDay(0) + 20);
  sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  sub_1001C56D8();
  v26(v32, 0);
  v25(v33, 0);
  sub_1001BBADC(v17, v15, type metadata accessor for ReadingHistoryMonth);
  sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth);
  sub_1001C5DC8();
  (*(v8 + 56))(v6, 0, 1, v7);
  v33[0] = v30;
  sub_1001C5BB8();
  return sub_1001BBBAC(v17, type metadata accessor for ReadingHistoryMonth);
}

BOOL static ReadingHistoryModel.DayKey.< infix(_:_:)(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = __OFADD__(v4, a2);
  v6 = v4 + a2;
  if (v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = 100 * a3;
  if ((a3 * 100) >> 64 != (100 * a3) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = __OFADD__(v7, a4);
  v8 = v7 + a4;
  if (!v5)
  {
    return v6 < v8;
  }

LABEL_9:
  __break(1u);
  return result;
}

BOOL sub_1001AF394(uint64_t a1, int a2)
{
  v33 = a2;
  v3 = sub_1001C4CA8();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = sub_1001C5E78();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v30 - v21;
  v23 = a1;
  ReadingHistoryModel.readingHistoryDay(for:)(&v30 - v21);
  v24 = type metadata accessor for ReadingHistoryDay(0);
  if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1)
  {
    sub_10008875C(v22, &qword_100273DA0, &qword_1001F7E50);
  }

  else
  {
    (*(v15 + 16))(v18, v22, v14);
    sub_1001BBBAC(v22, type metadata accessor for ReadingHistoryDay);
    v25 = sub_1001C5E48();
    (*(v15 + 8))(v18, v14);
    if (v25 > 0)
    {
      return 1;
    }
  }

  if (v33)
  {
    sub_1001B70BC(v23, v13);
    sub_10009ADF0(v13, v11, &unk_10026FC70, &unk_1001F1430);
    v27 = v31;
    v26 = v32;
    if ((*(v31 + 48))(v11, 1, v32) == 1)
    {
      sub_10008875C(v13, &unk_10026FC70, &unk_1001F1430);
      sub_10008875C(v11, &unk_10026FC70, &unk_1001F1430);
      return 0;
    }

    (*(v27 + 32))(v6, v11, v26);
    v28 = sub_1001C4C58();
    (*(v27 + 8))(v6, v26);
    sub_10008875C(v13, &unk_10026FC70, &unk_1001F1430);
    return (v28 & 1) != 0;
  }

  return 0;
}

uint64_t ReadingHistoryModel.incrementReadingTime(date:amount:defaultGoal:)(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v31 = a3;
  v33 = a2;
  v4 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v29 - v6;
  v8 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v29 - v11;
  v32 = type metadata accessor for ReadingHistoryMonth(0);
  v13 = *(*(v32 - 8) + 64);
  v14 = __chkstk_darwin(v32);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v29 - v17;
  v19 = sub_1001C4CA8();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, a1);
  v30 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v22);
  v25 = v24;
  v35[0] = v30;
  v29[1] = sub_100084528(&unk_10026F470, &unk_1001F5600);
  sub_1001C5B88();
  sub_1001C5DB8();
  (*(v9 + 8))(v12, v8);
  *(swift_allocObject() + 16) = v31;
  v35[4] = v25;
  sub_100084528(&qword_100272540, &unk_1001F5610);
  v26 = sub_1001C5B78();
  sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  v27 = sub_1001C5DA8();
  sub_1001C5E58(v33);
  v27(v34, 0);
  v26(v35, 0);
  sub_1001BBADC(v18, v16, type metadata accessor for ReadingHistoryMonth);
  sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth);
  sub_1001C5DC8();
  (*(v9 + 56))(v7, 0, 1, v8);
  v35[0] = v30;
  sub_1001C5BB8();
  sub_1001BBBAC(v18, type metadata accessor for ReadingHistoryMonth);
}

uint64_t ReadingHistoryModel.mergeDay(date:day:)(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v4 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v57 = &v47 - v6;
  v49 = sub_1001C5AC8();
  v48 = *(v49 - 8);
  v7 = *(v48 + 64);
  __chkstk_darwin(v49);
  v47 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for ReadingHistoryDay(0);
  v9 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084528(&unk_10026F8F0, &unk_1001F14C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v47 - v15;
  v17 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v47 - v20;
  v55 = type metadata accessor for ReadingHistoryMonth(0);
  v22 = *(*(v55 - 8) + 64);
  v23 = __chkstk_darwin(v55);
  v54 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v47 - v25;
  v27 = sub_1001C4CA8();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, a1);
  v32 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v30);
  v34 = v33;
  v53 = v32;
  v62[0] = v32;
  v52 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v58 = v2;
  sub_1001C5B88();
  sub_1001C5DB8();
  v35 = *(v18 + 8);
  v56 = v17;
  v35(v21, v17);
  v62[0] = v34;
  sub_100084528(&qword_100272540, &unk_1001F5610);
  sub_1001C5BA8();
  v36 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v39 = v38(v16, 1, v36);
  sub_10008875C(v16, &unk_10026F8F0, &unk_1001F14C0);
  if (v39 == 1)
  {
    sub_1001BBADC(v60, v51, type metadata accessor for ReadingHistoryDay);
    sub_1001BBB44(&unk_100273E00, type metadata accessor for ReadingHistoryDay);
    v40 = v50;
    sub_1001C5DC8();
    (*(v37 + 56))(v40, 0, 1, v36);
    v62[0] = v34;
    sub_1001C5BB8();
LABEL_5:
    sub_1001BBADC(v26, v54, type metadata accessor for ReadingHistoryMonth);
    sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth);
    v46 = v57;
    sub_1001C5DC8();
    (*(v18 + 56))(v46, 0, 1, v56);
    v62[0] = v53;
    sub_1001C5BB8();
    return sub_1001BBBAC(v26, type metadata accessor for ReadingHistoryMonth);
  }

  v62[4] = v34;
  v41 = sub_1001C5B98();
  result = v38(v42, 1, v36);
  if (result != 1)
  {
    v44 = sub_1001C5DA8();
    sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);
    v45 = v47;
    sub_1001C58F8();
    (*(v48 + 8))(v45, v49);
    v44(v61, 0);
    v41(v62, 0);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B0290(uint64_t a1)
{
  v2 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - v4;
  v5 = sub_100084528(&unk_10026F8F0, &unk_1001F14C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30 - v7;
  v9 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v31 = type metadata accessor for ReadingHistoryMonth(0);
  v14 = *(*(v31 - 8) + 64);
  v15 = __chkstk_darwin(v31);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  v20 = sub_1001C4CA8();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, a1);
  v30 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v23);
  v26 = v25;
  v33 = v30;
  sub_100084528(&unk_10026F470, &unk_1001F5600);
  sub_1001C5B88();
  sub_1001C5DB8();
  (*(v10 + 8))(v13, v9);
  v27 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  v33 = v26;
  sub_100084528(&qword_100272540, &unk_1001F5610);
  sub_1001C5BB8();
  sub_1001BBADC(v19, v17, type metadata accessor for ReadingHistoryMonth);
  sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth);
  v28 = v32;
  sub_1001C5DC8();
  (*(v10 + 56))(v28, 0, 1, v9);
  v33 = v30;
  sub_1001C5BB8();
  return sub_1001BBBAC(v19, type metadata accessor for ReadingHistoryMonth);
}

uint64_t sub_1001B06A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_100084528(&unk_10026F8F0, &unk_1001F14C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v101 = &v80 - v7;
  v8 = sub_100084528(&qword_100272518, &qword_1001F55E8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v102 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v80 - v12;
  v103 = sub_100084528(&qword_100272520, &qword_1001F55F0);
  v96 = *(v103 - 8);
  v14 = *(v96 + 64);
  __chkstk_darwin(v103);
  v105 = &v80 - v15;
  v16 = sub_100084528(&qword_100272528, &qword_1001F55F8);
  v93 = *(v16 - 8);
  v94 = v16;
  v17 = *(v93 + 64);
  v18 = __chkstk_darwin(v16);
  v92 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = &v80 - v20;
  v21 = type metadata accessor for ReadingHistoryMonth(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v95 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v104 = &v80 - v26;
  __chkstk_darwin(v25);
  v100 = &v80 - v27;
  v28 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v80 - v31;
  v33 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v36 = __chkstk_darwin(v35);
  v38 = &v80 - v37;
  __chkstk_darwin(v36);
  v41 = &v80 - v40;
  v42 = 100 * a1;
  if ((a1 * 100) >> 64 != (100 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_26;
  }

  v43 = __OFADD__(v42, a2);
  v44 = v42 + a2;
  if (v43)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v90 = v39;
  v99 = v32;
  v97 = v44;
  v106 = v44;
  v89 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  sub_1001C5BA8();
  sub_10009ADF0(v41, v38, &qword_10026F880, &qword_1001F1470);
  if ((*(v29 + 48))(v38, 1, v28) != 1)
  {
    v46 = a1;
    v87 = v41;
    v88 = v2;
    v98 = v21;
    v47 = v99;
    (*(v29 + 32))(v99, v38, v28);
    v48 = v100;
    sub_1001C5D88();
    v49 = sub_100084528(&qword_100272540, &unk_1001F5610);
    sub_1000885F4(&qword_100272548, &qword_100272540, &unk_1001F5610);
    v86 = v49;
    if ((sub_1001C6458() & 1) == 0)
    {
      sub_1001BBBAC(v48, type metadata accessor for ReadingHistoryMonth);
      (*(v29 + 8))(v47, v28);
LABEL_23:
      v45 = v87;
      return sub_10008875C(v45, &qword_10026F880, &qword_1001F1470);
    }

    v84 = v29;
    v50 = *(v98 + 24);
    v51 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
    sub_1001C56C8();
    v82 = v106;
    v85 = sub_1001B7990(v46, a2);
    v52 = v48 + *(v98 + 20);
    v83 = v51;
    sub_1001C56C8();
    v81 = v106;
    a1 = sub_1001B7CB8(v46, a2);
    sub_1001C5DB8();
    v53 = v91;
    v54 = v86;
    sub_1001C6448();
    v55 = v92;
    sub_1001C6488();
    v2 = sub_1001C6478();
    v38 = *(v93 + 8);
    v56 = v55;
    v57 = v94;
    (v38)(v56, v94);
    (v38)(v53, v57);
    LOBYTE(v38) = sub_1001C65B8();
    v32 = v54;
    if (qword_10026EBE8 == -1)
    {
LABEL_7:
      v58 = qword_1002711E8;
      v59 = os_log_type_enabled(qword_1002711E8, v38);
      v94 = v28;
      v60 = v82;
      v61 = v81;
      if (v59)
      {
        v62 = swift_slowAlloc();
        *v62 = 134219264;
        *(v62 + 4) = v2;
        *(v62 + 12) = 2048;
        *(v62 + 14) = v97;
        *(v62 + 22) = 2048;
        *(v62 + 24) = v60;
        *(v62 + 32) = 2048;
        *(v62 + 34) = v85;
        *(v62 + 42) = 2048;
        *(v62 + 44) = v61;
        *(v62 + 52) = 2048;
        *(v62 + 54) = a1;
        _os_log_impl(&_mh_execute_header, v58, v38, "summarizeAndPrune: Prune %ld days in %ld - lastDayStreak: (old=%ld, computed=%ld), totalTime: (old=%ld, computed=%ld)", v62, 0x3Eu);
      }

      v63 = v85;
      v64 = v98;
      if (v85 != v60)
      {
        if (v60 > v85)
        {
          v63 = v60;
        }

        v106 = v63;
        v65 = v104 + *(v98 + 24);
        sub_1001C56D8();
      }

      if (a1 != v61)
      {
        if (v61 <= a1)
        {
          v66 = a1;
        }

        else
        {
          v66 = v61;
        }

        v106 = v66;
        v67 = v104 + *(v64 + 20);
        sub_1001C56D8();
      }

      sub_1001C5B48();
      while (1)
      {
        v68 = v102;
        sub_1001C5B08();
        sub_10009AE58(v68, v13, &qword_100272518, &qword_1001F55E8);
        v69 = sub_100084528(&qword_1002705A0, &unk_1001F9600);
        if ((*(*(v69 - 8) + 48))(v13, 1, v69) == 1)
        {
          break;
        }

        v70 = v32;
        v71 = *v13;
        v72 = *(v69 + 48);
        v73 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
        v74 = *(v73 - 8);
        (*(v74 + 56))(v101, 1, 1, v73);
        v106 = v71;
        v32 = v70;
        sub_1001C5BB8();
        (*(v74 + 8))(&v13[v72], v73);
      }

      (*(v96 + 8))(v105, v103);
      v75 = v104;
      sub_1001BBADC(v104, v95, type metadata accessor for ReadingHistoryMonth);
      sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth);
      v76 = v90;
      sub_1001C5DC8();
      v77 = v84;
      v78 = v94;
      (*(v84 + 56))(v76, 0, 1, v94);
      v106 = v97;
      sub_1001C5BB8();
      sub_1001BBBAC(v75, type metadata accessor for ReadingHistoryMonth);
      sub_1001BBBAC(v100, type metadata accessor for ReadingHistoryMonth);
      (*(v77 + 8))(v99, v78);
      goto LABEL_23;
    }

LABEL_27:
    swift_once();
    goto LABEL_7;
  }

  sub_10008875C(v41, &qword_10026F880, &qword_1001F1470);
  v45 = v38;
  return sub_10008875C(v45, &qword_10026F880, &qword_1001F1470);
}

uint64_t sub_1001B1130(uint64_t a1)
{
  v159 = a1;
  v142 = sub_1001C4D48();
  v151 = *(v142 - 8);
  v2 = *(v151 + 64);
  __chkstk_darwin(v142);
  v140 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1001C4CA8();
  v157 = *(v154 - 8);
  v4 = *(v157 + 64);
  v5 = __chkstk_darwin(v154);
  v134 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v136 = &v133 - v8;
  v9 = __chkstk_darwin(v7);
  v138 = &v133 - v10;
  __chkstk_darwin(v9);
  v143 = &v133 - v11;
  v12 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v148 = &v133 - v14;
  v15 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v145 = &v133 - v17;
  v149 = sub_1001C4948();
  v147 = *(v149 - 8);
  v18 = *(v147 + 64);
  __chkstk_darwin(v149);
  v146 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1001C4D68();
  v158 = *(v155 - 8);
  v20 = *(v158 + 64);
  v21 = __chkstk_darwin(v155);
  v150 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v152 = &v133 - v23;
  v24 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v135 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v137 = &v133 - v29;
  v30 = __chkstk_darwin(v28);
  v139 = &v133 - v31;
  v32 = __chkstk_darwin(v30);
  v141 = &v133 - v33;
  v34 = __chkstk_darwin(v32);
  v144 = &v133 - v35;
  __chkstk_darwin(v34);
  v156 = &v133 - v36;
  v171 = sub_100084528(&qword_100272528, &qword_1001F55F8);
  v37 = *(v171 - 1);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v171);
  v174 = &v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v173 = &v133 - v41;
  v170 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v42 = *(v170 - 1);
  v43 = *(v42 + 64);
  __chkstk_darwin(v170);
  v169 = &v133 - v44;
  v45 = type metadata accessor for ReadingHistoryMonth(0);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v172 = (&v133 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  v52 = &v133 - v51;
  v53 = sub_100084528(&qword_10026F890, &qword_1001F1480);
  v54 = *(*(v53 - 8) + 64);
  v55 = __chkstk_darwin(v53 - 8);
  v175 = (&v133 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v55);
  v58 = (&v133 - v57);
  v177 = sub_100084528(&qword_10026F898, &qword_1001F1488);
  v160 = *(v177 - 1);
  v59 = *(v160 + 64);
  __chkstk_darwin(v177);
  v61 = &v133 - v60;
  v161 = &_swiftEmptyArrayStorage;
  v178 = &_swiftEmptyArrayStorage;
  sub_100084528(&unk_10026F470, &unk_1001F5600);
  v176 = v61;
  v153 = v1;
  sub_1001C5B48();
  v167 = (v42 + 16);
  v168 = (v49 + 32);
  v165 = v58;
  v166 = (v37 + 8);
  v163 = (v49 + 8);
  v164 = (v42 + 8);
  v62 = v169;
  v63 = v173;
  while (1)
  {
    v64 = v175;
    sub_1001C5B08();
    sub_10009AE58(v64, v58, &qword_10026F890, &qword_1001F1480);
    v65 = sub_100084528(&qword_10026F888, &qword_1001F1478);
    if ((*(*(v65 - 8) + 48))(v58, 1, v65) == 1)
    {
      break;
    }

    v162 = *v58;
    (*v168)(v52, v58 + *(v65 + 48), v48);
    v66 = v172;
    sub_1001C5D88();
    v67 = v52;
    v68 = v170;
    (*v167)(v62, v66, v170);
    sub_1001BBBAC(v66, type metadata accessor for ReadingHistoryMonth);
    sub_1000885F4(&qword_100272548, &qword_100272540, &unk_1001F5610);
    sub_1001C6448();
    v69 = v48;
    v70 = v174;
    sub_1001C6488();
    sub_1000885F4(&unk_100272550, &qword_100272528, &qword_1001F55F8);
    v71 = v171;
    v72 = sub_1001C5FD8();
    v73 = *v166;
    (*v166)(v70, v71);
    v73(v63, v71);
    (*v164)(v62, v68);
    if (v72)
    {
      (*v163)(v67, v69);
      v48 = v69;
      v52 = v67;
      v58 = v165;
    }

    else
    {
      v74 = v161;
      v75 = v162;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_1000ADD40(0, *(v74 + 2) + 1, 1, v74);
      }

      v48 = v69;
      v52 = v67;
      v58 = v165;
      v77 = *(v74 + 2);
      v76 = *(v74 + 3);
      v161 = v74;
      if (v77 >= v76 >> 1)
      {
        v161 = sub_1000ADD40((v76 > 1), v77 + 1, 1, v161);
      }

      (*v163)(v52, v69);
      v78 = v161;
      *(v161 + 2) = v77 + 1;
      *&v78[8 * v77 + 32] = v75;
      v178 = v78;
    }
  }

  (*(v160 + 8))(v176, v177);
  if (*(v161 + 2) >= 2uLL)
  {
    if (v159 <= 0)
    {
      v82 = sub_1001C6598();
      v79 = v157;
      v80 = v156;
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v83 = qword_1002711E8;
      if (os_log_type_enabled(qword_1002711E8, v82))
      {
        v84 = swift_slowAlloc();
        *v84 = 134217984;
        *(v84 + 4) = v159;
        _os_log_impl(&_mh_execute_header, v83, v82, "summarizeAndPrune: expect monthsToKeep >= 1, got %ld", v84, 0xCu);
      }

      v159 = 1;
    }

    else
    {
      v79 = v157;
      v80 = v156;
    }

    sub_1001B81BC(&v178);
    v85 = *(v178 + 2);
    if (!v85)
    {
    }

    v176 = v178 + 32;
    v177 = v178;
    v86 = *&v178[8 * v85 + 24];
    v87 = v152;
    sub_1001C4CD8();
    v88 = v158;
    v89 = v155;
    (*(v158 + 56))(v145, 1, 1, v155);
    v90 = sub_1001C4D78();
    (*(*(v90 - 8) + 56))(v148, 1, 1, v90);
    v91 = v146;
    sub_1001C4938();
    sub_1001C4918();
    sub_1001C4928();
    sub_1001C4D18();
    (*(v147 + 8))(v91, v149);
    v92 = *(v88 + 8);
    v158 = v88 + 8;
    v92(v87, v89);
    v93 = v144;
    sub_10009ADF0(v80, v144, &unk_10026FC70, &unk_1001F1430);
    v94 = (v79 + 48);
    v95 = *(v79 + 48);
    v96 = v154;
    if ((v95)(v93, 1, v154) == 1)
    {
      sub_10008875C(v80, &unk_10026FC70, &unk_1001F1430);

      v97 = v93;
      return sub_10008875C(v97, &unk_10026FC70, &unk_1001F1430);
    }

    v175 = v92;
    v98 = (v79 + 32);
    v172 = *(v79 + 32);
    v172(v143, v93, v96);
    sub_1001C4CD8();
    v99 = v95;
    v100 = v151;
    v101 = *(v151 + 104);
    v102 = v140;
    LODWORD(v169) = enum case for Calendar.Component.month(_:);
    v103 = v142;
    v173 = v101;
    v174 = (v151 + 104);
    (v101)(v140);
    v104 = v141;
    sub_1001C4D38();
    v105 = *(v100 + 8);
    v151 = v100 + 8;
    v171 = v105;
    (v105)(v102, v103);
    v106 = v104;
    v107 = v104;
    v108 = v139;
    sub_10009ADF0(v107, v139, &unk_10026FC70, &unk_1001F1430);
    v170 = v99;
    if ((v99)(v108, 1, v96) == 1)
    {
      sub_10008875C(v106, &unk_10026FC70, &unk_1001F1430);
      v175(v150, v155);
      (*(v157 + 8))(v143, v154);
      sub_10008875C(v156, &unk_10026FC70, &unk_1001F1430);

      v97 = v108;
      return sub_10008875C(v97, &unk_10026FC70, &unk_1001F1430);
    }

    v109 = v138;
    v110 = v154;
    v167 = v98;
    v172(v138, v108, v154);
    v111 = v152;
    sub_1001C4CD8();
    v112 = v136;
    sub_1001C4BE8();
    v113 = sub_1001AC6B4(v112, 1);
    v114 = *(v157 + 8);
    v157 += 8;
    v168 = v114;
    v114(v112, v110);
    v175(v111, v155);
    v115 = v142;
    (v173)(v102, enum case for Calendar.Component.day(_:), v142);
    v166 = v113;
    if (__OFSUB__(0, v113))
    {
      __break(1u);
    }

    else
    {
      v116 = v102;
      v117 = v137;
      v118 = v109;
      v119 = v116;
      sub_1001C4D38();
      (v171)(v119, v115);
      v120 = v135;
      sub_10009ADF0(v117, v135, &unk_10026FC70, &unk_1001F1430);
      v121 = v110;
      v122 = (v170)(v120, 1, v110);
      v110 = v176;
      if (v122 == 1)
      {
        sub_10008875C(v117, &unk_10026FC70, &unk_1001F1430);
        v123 = v168;
        v168(v118, v121);
        sub_10008875C(v141, &unk_10026FC70, &unk_1001F1430);
        v175(v150, v155);
        v123(v143, v121);
        sub_10008875C(v156, &unk_10026FC70, &unk_1001F1430);

        v97 = v120;
        return sub_10008875C(v97, &unk_10026FC70, &unk_1001F1430);
      }

      v99 = v115;
      v94 = v134;
      v172(v134, v120, v121);
      v98 = v173;
      (v173)(v119, v169, v115);
      v111 = v150;
      v172 = sub_1001C4D58();
      v124 = v171;
      (v171)(v119, v115);
      (v98)(v119, enum case for Calendar.Component.year(_:), v115);
      v113 = sub_1001C4D58();
      v124(v119, v115);
      v125 = 100 * v113;
      if ((v113 * 100) >> 64 == (100 * v113) >> 63)
      {
        v94 = v172 + v125;
        if (!__OFADD__(v125, v172))
        {
          LOBYTE(v113) = sub_1001C65B8();
          v98 = v143;
          v99 = v177;
          if (qword_10026EBE8 == -1)
          {
LABEL_34:
            v126 = qword_1002711E8;
            if (os_log_type_enabled(qword_1002711E8, v113))
            {
              v127 = swift_slowAlloc();
              *v127 = 134218496;
              *(v127 + 4) = v94;
              *(v127 + 12) = 2048;
              *(v127 + 14) = v159;
              *(v127 + 22) = 2048;
              *(v127 + 24) = v166;
              _os_log_impl(&_mh_execute_header, v126, v113, "summarizeAndPrune: About to prune: lastMonthToKeep=%ld, historicalMonthsToKeep: %ld, streakDays=%ld", v127, 0x20u);
            }

            for (i = *(v99 + 2); i; --i)
            {
              v130 = *v110++;
              v129 = v130;
              if (v130 < v94)
              {
                sub_1001B06A4(v129 / 100, v129 % 100);
              }
            }

            v131 = v154;
            v132 = v168;
            v168(v134, v154);
            sub_10008875C(v137, &unk_10026FC70, &unk_1001F1430);
            v132(v138, v131);
            sub_10008875C(v141, &unk_10026FC70, &unk_1001F1430);
            v175(v111, v155);
            v132(v98, v131);
            v97 = v156;
            return sub_10008875C(v97, &unk_10026FC70, &unk_1001F1430);
          }

LABEL_45:
          swift_once();
          goto LABEL_34;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  return sub_1001C5118();
}

uint64_t sub_1001B26F8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3)
{
  v26 = a2;
  v29 = a3;
  v5 = sub_100084528(&qword_10026F858, &unk_1001F8AA0);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = sub_100084528(&qword_10026F860, &unk_1001F1460);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  v32 = sub_100084528(&qword_10026F868, &unk_1001F9620);
  v28 = *(v32 - 8);
  v19 = *(v28 + 64);
  __chkstk_darwin(v32);
  v21 = &v26 - v20;
  v34 = a1;
  (*(v15 + 16))(v18, v27, v14);
  sub_1000885F4(&qword_10026F870, &qword_10026F830, &qword_1001F0E80);
  sub_1001C6218();
  sub_1000885F4(&qword_10026F878, &qword_10026F868, &unk_1001F9620);
  v27 = v21;
  sub_1001C6868();
  v22 = *(v31 + 48);
  v31 += 48;
  if (v22(v13, 1, v30) == 1)
  {
    v23 = v27;
  }

  else
  {
    sub_10009AE58(v13, v9, &qword_10026F858, &unk_1001F8AA0);
    v24 = v26;
    v26(&v33, &v34, v9);
    if (v3)
    {
      v23 = v27;
      sub_10008875C(v9, &qword_10026F858, &unk_1001F8AA0);
    }

    else
    {
      v23 = v27;
      while (1)
      {
        sub_10008875C(v9, &qword_10026F858, &unk_1001F8AA0);
        a1 = v33;
        v34 = v33;
        sub_1001C6868();
        if (v22(v13, 1, v30) == 1)
        {
          break;
        }

        sub_10009AE58(v13, v9, &qword_10026F858, &unk_1001F8AA0);
        v24(&v33, &v34, v9);
      }
    }
  }

  (*(v28 + 8))(v23, v32);
  return a1;
}

uint64_t ReadingHistoryDay.description.getter()
{
  sub_1001C5E48();
  v2 = sub_1001C6CC8();
  v3._countAndFlagsBits = 47;
  v3._object = 0xE100000000000000;
  sub_1001C6138(v3);
  v0 = *(type metadata accessor for ReadingHistoryDay(0) + 20);
  sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  sub_1001C56C8();
  v4._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v4);

  return v2;
}

uint64_t sub_1001B2C50()
{
  static ReadingHistoryDay.fields = 0x54676E6964616572;
  unk_100281A30 = 0xEB00000000656D69;
  qword_100281A38 = swift_getKeyPath();
  unk_100281A40 = 0x47676E6964616572;
  qword_100281A48 = 0xEB000000006C616FLL;
  result = swift_getKeyPath();
  qword_100281A50 = result;
  return result;
}

uint64_t *ReadingHistoryDay.fields.unsafeMutableAddressor()
{
  if (qword_10026EC90 != -1)
  {
    swift_once();
  }

  return &static ReadingHistoryDay.fields;
}

uint64_t static ReadingHistoryDay.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_10026EC90 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_100281A30;
  v3 = qword_100281A38;
  v2 = unk_100281A40;
  v4 = qword_100281A48;
  v5 = qword_100281A50;
  *a1 = static ReadingHistoryDay.fields;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t ReadingHistoryDay.init()@<X0>(uint64_t a1@<X8>)
{
  _s14bookdatastored17ReadingHistoryDayV11readingTime9Coherence9CRCounterVvpfi_0();
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v3 = *(v2 + 20);
  result = sub_1001C56F8();
  *(a1 + *(v2 + 24)) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t ReadingHistoryDay.init(defaultGoal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  _s14bookdatastored17ReadingHistoryDayV11readingTime9Coherence9CRCounterVvpfi_0();
  v9 = type metadata accessor for ReadingHistoryDay(0);
  v10 = *(v9 + 20);
  v13 = 0;
  sub_1001C56F8();
  *(a2 + *(v9 + 24)) = &_swiftEmptyDictionarySingleton;
  v13 = a1;
  sub_1001C56F8();
  return (*(v5 + 40))(a2 + v10, v8, v4);
}

uint64_t sub_1001B2F84(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return static CRStruct_2.fieldKeys.getter(a1, v2);
}

uint64_t sub_1001B2FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s14bookdatastored17ReadingHistoryDayV11readingTime9Coherence9CRCounterVvpfi_0();
  v4 = *(a1 + 20);
  result = sub_1001C56F8();
  *(a2 + *(a1 + 24)) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1001B3054(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_1002745A8, type metadata accessor for ReadingHistoryDay);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1001B30C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1001B313C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1001B31C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.apply(_:)(a1, a2, v4);
}

uint64_t sub_1001B323C()
{
  sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return sub_1001C5948();
}

uint64_t sub_1001B32B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1001B334C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1001B33C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1001B3444(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1001B34C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1001B354C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1001B35E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1001B365C()
{
  sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.needToFinalizeTimestamps()();
}

uint64_t sub_1001B36C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1001B3744()
{
  sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return sub_1001C58F8();
}

uint64_t sub_1001B37C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1001B3954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&unk_100273E00, type metadata accessor for ReadingHistoryDay);

  return static CRDT.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001B3AD0(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);

  return CRStruct_2.minEncodingVersion.getter(a1, v2);
}

uint64_t ReadingHistoryMonth.additionalFields.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReadingHistoryMonth(0) + 28));
}

uint64_t ReadingHistoryMonth.additionalFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingHistoryMonth(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001B3C0C()
{
  static ReadingHistoryMonth.fields = 1937334628;
  unk_100281A60 = 0xE400000000000000;
  qword_100281A68 = swift_getKeyPath();
  unk_100281A70 = 0x6D69546C61746F74;
  qword_100281A78 = 0xE900000000000065;
  qword_100281A80 = swift_getKeyPath();
  qword_100281A88 = 0xD000000000000014;
  qword_100281A90 = 0x8000000100204440;
  result = swift_getKeyPath();
  qword_100281A98 = result;
  return result;
}

uint64_t *ReadingHistoryMonth.fields.unsafeMutableAddressor()
{
  if (qword_10026EC98 != -1)
  {
    swift_once();
  }

  return &static ReadingHistoryMonth.fields;
}

uint64_t static ReadingHistoryMonth.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_10026EC98 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = unk_100281A60;
  v3 = qword_100281A68;
  v2 = unk_100281A70;
  v4 = qword_100281A78;
  v5 = qword_100281A80;
  v6 = qword_100281A88;
  v7 = qword_100281A90;
  v8 = qword_100281A98;
  *a1 = static ReadingHistoryMonth.fields;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v8;
}

uint64_t ReadingHistoryMonth.init()@<X0>(uint64_t a1@<X8>)
{
  sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  sub_1000885F4(&qword_10026ED20, &qword_10026ED18, &unk_1001F06E0);
  sub_1000885F4(&qword_10026ED28, &qword_10026ED18, &unk_1001F06E0);
  sub_1001C5B58();
  v2 = type metadata accessor for ReadingHistoryMonth(0);
  v3 = v2[5];
  sub_1001C56F8();
  v4 = v2[6];
  result = sub_1001C56F8();
  *(a1 + v2[7]) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1001B3EFC(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return static CRStruct_3.fieldKeys.getter(a1, v2);
}

uint64_t sub_1001B3F74(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*sub_1001B3FAC(uint64_t a1, uint64_t a2))()
{
  result = MarkedAsFinishedMechanism.rawValue.getter;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1001B3FD0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  sub_1000885F4(&qword_10026ED20, &qword_10026ED18, &unk_1001F06E0);
  sub_1000885F4(&qword_10026ED28, &qword_10026ED18, &unk_1001F06E0);
  sub_1001C5B58();
  v4 = a1[5];
  sub_1001C56F8();
  v5 = a1[6];
  result = sub_1001C56F8();
  *(a2 + a1[7]) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1001B4100(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_1002745F0, type metadata accessor for ReadingHistoryMonth);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1001B416C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1001B41E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1001B426C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.apply(_:)(a1, a2, v4);
}

uint64_t sub_1001B42E8()
{
  sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return sub_1001C5A78();
}

uint64_t sub_1001B4364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1001B43F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1001B4474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1001B44F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1001B4574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1001B45F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1001B468C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1001B4708()
{
  sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.needToFinalizeTimestamps()();
}

uint64_t sub_1001B4774(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1001B47F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.merge(_:)(a1, a2, v4);
}

uint64_t sub_1001B4874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.merge(_:)(a1, a2, v4);
}

uint64_t sub_1001B4A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth);

  return static CRDT.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001B4B7C(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth);

  return CRStruct_3.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1001B4BF8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v72) = a2;
  v79 = a1;
  v78 = type metadata accessor for ReadingHistoryDay(0);
  v4 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v77 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&qword_1002705A0, &unk_1001F9600);
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  v8 = __chkstk_darwin(v6);
  v74 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v73 = (&v67 - v10);
  v11 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v71 = &v67 - v14;
  v15 = sub_100084528(&qword_100272528, &qword_1001F55F8);
  v69 = *(v15 - 8);
  v70 = v15;
  v16 = *(v69 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v67 - v20;
  sub_100084528(&qword_10026F7B0, &unk_1001F13E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1001F0CF0;
  v23 = type metadata accessor for ReadingHistoryMonth(0);
  v24 = *(v23 + 24);
  v25 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  sub_1001C56C8();
  if (v84 < 0)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    v84 = 0x6D69546C61746F74;
    v85 = 0xEA00000000003D65;
    v26 = v2 + *(v23 + 20);
    sub_1001C56C8();
    v86 = v82;
    v87._countAndFlagsBits = sub_1001C6CC8();
    sub_1001C6138(v87);

    v88._countAndFlagsBits = 8236;
    v88._object = 0xE200000000000000;
    sub_1001C6138(v88);
    v27 = v84;
    v28 = v85;
  }

  *(v22 + 32) = v27;
  *(v22 + 40) = v28;
  sub_1001C56C8();
  v29 = 0xE000000000000000;
  if (v84 < 0)
  {
    v30 = 0;
  }

  else
  {
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_1001C69C8(25);

    v84 = 0xD000000000000015;
    v85 = 0x8000000100204490;
    sub_1001C56C8();
    v86 = v82;
    v89._countAndFlagsBits = sub_1001C6CC8();
    sub_1001C6138(v89);

    v90._countAndFlagsBits = 8236;
    v90._object = 0xE200000000000000;
    sub_1001C6138(v90);
    v30 = v84;
    v29 = v85;
  }

  *(v22 + 48) = v30;
  *(v22 + 56) = v29;
  v31 = v79;
  if (v72)
  {
    goto LABEL_10;
  }

  sub_1000885F4(&qword_100272548, &qword_100272540, &unk_1001F5610);
  sub_1001C6448();
  sub_1001C6488();
  v32 = sub_1001C6478();
  v33 = *(v69 + 8);
  v34 = v19;
  v35 = v70;
  v33(v34, v70);
  v33(v21, v35);
  v36 = v32 <= v79;
  v31 = v79;
  if (v36)
  {
LABEL_10:
    v38 = 0;
    v37 = 0xE000000000000000;
  }

  else
  {
    v37 = 0xA400000000000000;
    v38 = 548375522;
  }

  *(v22 + 64) = v38;
  *(v22 + 72) = v37;
  (*(v12 + 16))(v71, v3, v11);
  sub_1000885F4(&qword_1002748B8, &qword_100272540, &unk_1001F5610);
  v84 = sub_1001C6228();
  sub_1001B82F4(&v84, &qword_1002705A0, &unk_1001F9600, sub_1001AAC88, sub_1001A97F8);
  if (v72)
  {
    v39 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v39 = v31;
  }

  v40 = sub_1001B5534(v39, v84);
  v72 = v42;
  v79 = v43 >> 1;
  v44 = (v43 >> 1) - v41;
  if (__OFSUB__(v43 >> 1, v41))
  {
    goto LABEL_28;
  }

  if (v44)
  {
    v45 = v41;
    v69 = v40;
    v86 = &_swiftEmptyArrayStorage;
    sub_1000D3898(0, v44 & ~(v44 >> 63), 0);
    if (v44 < 0)
    {
LABEL_29:
      __break(1u);

      __break(1u);
      return result;
    }

    v68 = v22;
    v46 = v86;
    v47 = v79;
    if (v45 > v79)
    {
      v47 = v45;
    }

    v70 = v25;
    v71 = v47;
    while (v71 != v45)
    {
      v48 = v73;
      sub_10009ADF0(v72 + *(v75 + 72) * v45, v73, &qword_1002705A0, &unk_1001F9600);
      v84 = 35;
      v85 = 0xE100000000000000;
      v82 = *v48;
      v91._countAndFlagsBits = sub_1001C6CC8();
      sub_1001C6138(v91);

      v92._countAndFlagsBits = 61;
      v92._object = 0xE100000000000000;
      sub_1001C6138(v92);
      v49 = v74;
      sub_10009ADF0(v48, v74, &qword_1002705A0, &unk_1001F9600);
      v50 = *(v76 + 48);
      v51 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
      v52 = v77;
      sub_1001C5D88();
      (*(*(v51 - 8) + 8))(v49 + v50, v51);
      v81 = sub_1001C5E48();
      v82 = sub_1001C6CC8();
      v83 = v53;
      v93._countAndFlagsBits = 47;
      v93._object = 0xE100000000000000;
      sub_1001C6138(v93);
      v54 = v52 + *(v78 + 20);
      sub_1001C56C8();
      v80 = v81;
      v94._countAndFlagsBits = sub_1001C6CC8();
      sub_1001C6138(v94);

      v56 = v82;
      v55 = v83;
      sub_1001BBBAC(v52, type metadata accessor for ReadingHistoryDay);
      v95._countAndFlagsBits = v56;
      v95._object = v55;
      sub_1001C6138(v95);

      v57 = v84;
      v58 = v85;
      sub_10008875C(v48, &qword_1002705A0, &unk_1001F9600);
      v86 = v46;
      v60 = v46[2];
      v59 = v46[3];
      if (v60 >= v59 >> 1)
      {
        sub_1000D3898((v59 > 1), v60 + 1, 1);
        v46 = v86;
      }

      v46[2] = v60 + 1;
      v61 = &v46[2 * v60];
      v61[4] = v57;
      v61[5] = v58;
      if (v79 == ++v45)
      {
        swift_unknownObjectRelease();
        v22 = v68;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  swift_unknownObjectRelease();
  v46 = &_swiftEmptyArrayStorage;
LABEL_26:
  v84 = v46;
  sub_100084528(&unk_10026FED0, &unk_1001F1450);
  sub_1000885F4(&qword_10026F850, &unk_10026FED0, &unk_1001F1450);
  v62 = sub_1001C5FA8();
  v64 = v63;

  *(v22 + 80) = v62;
  *(v22 + 88) = v64;
  v84 = v22;
  v65 = sub_1001C5FA8();

  return v65;
}

uint64_t sub_1001B5534(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = *(sub_100084528(&qword_1002705A0, &unk_1001F9600) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1001B55F8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));
}

uint64_t sub_1001B564C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1001B56D8()
{
  static ReadingHistoryModel.fields = 0x7368746E6F6DLL;
  *algn_100281AA8 = 0xE600000000000000;
  qword_100281AB0 = swift_getKeyPath();
  strcpy(byte_100281AB8, "streakRecords");
  HIWORD(qword_100281AC0) = -4864;
  result = swift_getKeyPath();
  qword_100281AC8 = result;
  return result;
}

uint64_t *ReadingHistoryModel.fields.unsafeMutableAddressor()
{
  if (qword_10026ECA0 != -1)
  {
    swift_once();
  }

  return &static ReadingHistoryModel.fields;
}

uint64_t static ReadingHistoryModel.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_10026ECA0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_100281AA8;
  v3 = qword_100281AB0;
  v2 = *byte_100281AB8;
  v4 = qword_100281AC0;
  v5 = qword_100281AC8;
  *a1 = static ReadingHistoryModel.fields;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t ReadingHistoryModel.init()@<X0>(uint64_t a1@<X8>)
{
  sub_100084528(&unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490);
  sub_1001C5B58();
  v2 = type metadata accessor for ReadingHistoryModel(0);
  v3 = *(v2 + 20);
  sub_1001C4CA8();
  sub_1001BBB44(&unk_10026F440, &type metadata accessor for Date);
  result = sub_1001C5B58();
  *(a1 + *(v2 + 24)) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1001B59B0(uint64_t a1)
{
  v2 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return static CRStruct_2.fieldKeys.getter(a1, v2);
}

uint64_t sub_1001B5A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100084528(&unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490);
  sub_1001C5B58();
  v4 = *(a1 + 20);
  sub_1001C4CA8();
  sub_1001BBB44(&unk_10026F440, &type metadata accessor for Date);
  result = sub_1001C5B58();
  *(a2 + *(a1 + 24)) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1001B5B7C(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_10026F490, type metadata accessor for ReadingHistoryModel);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1001B5BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1001B5C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1001B5CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.apply(_:)(a1, a2, v4);
}

uint64_t sub_1001B5D64()
{
  sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return sub_1001C5948();
}

uint64_t sub_1001B5DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1001B5E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1001B5EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1001B5F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1001B5FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1001B6074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1001B6108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1001B6184()
{
  sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.needToFinalizeTimestamps()();
}

uint64_t sub_1001B61F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1001B626C()
{
  sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return sub_1001C58F8();
}

uint64_t sub_1001B62F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1001B647C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&qword_10026F460, type metadata accessor for ReadingHistoryModel);

  return static CRDT.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001B65F8(uint64_t a1)
{
  v2 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel);

  return CRStruct_2.minEncodingVersion.getter(a1, v2);
}

Swift::Int __swiftcall ReadingHistoryModel.readingTimeToday()()
{
  v0 = sub_1001C5E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C4CA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v17 - v12;
  sub_1001C4C98();
  ReadingHistoryModel.readingHistoryDay(for:)(v13);
  (*(v6 + 8))(v9, v5);
  v14 = type metadata accessor for ReadingHistoryDay(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    sub_10008875C(v13, &qword_100273DA0, &qword_1001F7E50);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v4, v13, v0);
    sub_1001BBBAC(v13, type metadata accessor for ReadingHistoryDay);
    v16 = sub_1001C5E48();
    (*(v1 + 8))(v4, v0);
    return v16;
  }
}

uint64_t ReadingHistoryModel.readingHistoryMonth(year:month:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6 - 8);
  v10 = v18 - v9;
  v11 = 100 * a1;
  if ((a1 * 100) >> 64 != (100 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = __OFADD__(v11, a2);
  v13 = v11 + a2;
  if (v12)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v18[1] = v13;
  sub_100084528(&unk_10026F470, &unk_1001F5600);
  sub_1001C5BA8();
  v14 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_10008875C(v10, &qword_10026F880, &qword_1001F1470);
    v16 = 1;
  }

  else
  {
    sub_1001C5D88();
    (*(v15 + 8))(v10, v14);
    v16 = 0;
  }

  v17 = type metadata accessor for ReadingHistoryMonth(0);
  return (*(*(v17 - 8) + 56))(a3, v16, 1, v17);
}

uint64_t sub_1001B6AA8(uint64_t a1)
{
  v2 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ReadingHistoryDay(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14bookdatastored17ReadingHistoryDayV11readingTime9Coherence9CRCounterVvpfi_0();
  v11 = *(v7 + 20);
  v14 = 0;
  sub_1001C56F8();
  *&v10[*(v7 + 24)] = &_swiftEmptyDictionarySingleton;
  v14 = a1;
  sub_1001C56F8();
  (*(v3 + 40))(&v10[v11], v6, v2);
  sub_1001BBB44(&unk_100273E00, type metadata accessor for ReadingHistoryDay);
  return sub_1001C5DC8();
}

uint64_t sub_1001B6C80()
{
  v0 = type metadata accessor for ReadingHistoryDay(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14bookdatastored17ReadingHistoryDayV11readingTime9Coherence9CRCounterVvpfi_0();
  v4 = *(v0 + 20);
  v6[1] = 0;
  sub_1001C56F8();
  *&v3[*(v0 + 24)] = &_swiftEmptyDictionarySingleton;
  sub_1001BBB44(&unk_100273E00, type metadata accessor for ReadingHistoryDay);
  return sub_1001C5DC8();
}

uint64_t sub_1001B6D80()
{
  v0 = type metadata accessor for ReadingHistoryMonth(0);
  v1 = *(*(v0 - 1) + 64);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  sub_1000885F4(&qword_10026ED20, &qword_10026ED18, &unk_1001F06E0);
  sub_1000885F4(&qword_10026ED28, &qword_10026ED18, &unk_1001F06E0);
  sub_1001C5B58();
  v4 = v0[5];
  v8 = 0;
  sub_1001C56F8();
  v5 = v0[6];
  v8 = -1;
  sub_1001C56F8();
  *&v3[v0[7]] = &_swiftEmptyDictionarySingleton;
  sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth);
  return sub_1001C5DC8();
}

uint64_t sub_1001B6F48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_100084528(&qword_10026F858, &unk_1001F8AA0);
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6);
  v10 = &v14 - v9;
  v11 = *a1;
  if (*a1 < *a2)
  {
    v12 = *(v6 + 48);
    v13 = sub_1001C4CA8();
    sub_1001BBB44(&qword_10026F518, &type metadata accessor for Date);
    result = sub_1001C5FC8();
    if ((result & 1) == 0)
    {
      sub_10009ADF0(a2, v10, &qword_10026F858, &unk_1001F8AA0);
      v11 = *v10;
      result = (*(*(v13 - 8) + 8))(&v10[*(v6 + 48)], v13);
    }
  }

  *a3 = v11;
  return result;
}

uint64_t sub_1001B70BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v86 = sub_1001C4CA8();
  v84 = *(v86 - 8);
  v3 = *(v84 + 64);
  __chkstk_darwin(v86);
  v64 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v71 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v67 = &v64 - v10;
  __chkstk_darwin(v9);
  v72 = &v64 - v11;
  v12 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = *(v78 + 64);
  __chkstk_darwin(v12);
  v77 = &v64 - v14;
  v15 = sub_1001C4D48();
  v16 = *(v15 - 8);
  v17 = v16[8];
  __chkstk_darwin(v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001C4D68();
  v21 = *(v20 - 8);
  v87 = v20;
  v88 = v21;
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v80 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v64 - v25;
  v27 = sub_100084528(&qword_100274840, &qword_1001F9588);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v82 = (&v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v32 = &v64 - v31;
  sub_1001C4CD8();
  v33 = v16[13];
  v66 = enum case for Calendar.Component.year(_:);
  v33(v19);
  v81 = sub_1001C4D58();
  v34 = v16[1];
  v34(v19, v15);
  v65 = enum case for Calendar.Component.month(_:);
  v73 = v33;
  v74 = v16 + 13;
  v33(v19);
  v35 = a1;
  v36 = v82;
  v68 = v35;
  v37 = sub_1001C4D58();
  v75 = v19;
  v76 = v34;
  v69 = v15;
  v70 = v16 + 1;
  v34(v19, v15);
  ReadingHistoryModel.readingHistoryMonth(year:month:)(v81, v37, v32);
  v38 = *(v88 + 8);
  v39 = v26;
  v88 += 8;
  v38(v26, v87);
  sub_10009ADF0(v32, v36, &qword_100274840, &qword_1001F9588);
  v40 = type metadata accessor for ReadingHistoryMonth(0);
  if ((*(*(v40 - 8) + 48))(v36, 1, v40) == 1)
  {
    sub_10008875C(v36, &qword_100274840, &qword_1001F9588);
LABEL_6:
    sub_10008875C(v32, &qword_100274840, &qword_1001F9588);
    return (*(v84 + 56))(v85, 1, 1, v86);
  }

  v41 = *(v40 + 24);
  v42 = v77;
  v43 = v78;
  v44 = v79;
  (*(v78 + 16))(v77, v36 + v41, v79);
  sub_1001BBBAC(v36, type metadata accessor for ReadingHistoryMonth);
  sub_1001C56C8();
  (*(v43 + 8))(v42, v44);
  if (v89 < 0)
  {
    goto LABEL_6;
  }

  v81 = v89;
  v83 = v32;
  sub_1001C4CD8();
  v45 = v39;
  sub_1001C4CD8();
  v46 = v75;
  v47 = v69;
  v48 = v73;
  (v73)(v75, v65, v69);
  v49 = sub_1001C4D58();
  v50 = v76;
  v76(v46, v47);
  (v48)(v46, v66, v47);
  v51 = sub_1001C4D58();
  v50(v46, v47);
  v52 = v67;
  sub_1001B9998(v51, v49, v67);
  v82 = v38;
  v38(v45, v87);
  v53 = v84;
  v54 = *(v84 + 48);
  v55 = v86;
  if (v54(v52, 1, v86) == 1)
  {
    sub_10008875C(v52, &unk_10026FC70, &unk_1001F1430);
    v56 = 1;
    v57 = v72;
  }

  else
  {
    v57 = v72;
    sub_1001C4BE8();
    (*(v53 + 8))(v52, v55);
    v56 = 0;
  }

  v59 = *(v53 + 56);
  v59(v57, v56, 1, v55);
  v60 = v71;
  sub_10009ADF0(v57, v71, &unk_10026FC70, &unk_1001F1430);
  if (v54(v60, 1, v55) == 1)
  {
    sub_10008875C(v57, &unk_10026FC70, &unk_1001F1430);
    v82(v80, v87);
    sub_10008875C(v83, &qword_100274840, &qword_1001F9588);
    sub_10008875C(v60, &unk_10026FC70, &unk_1001F1430);
    return (v59)(v85, 1, 1, v55);
  }

  else
  {
    v61 = v64;
    (*(v53 + 32))(v64, v60, v55);
    v62 = v75;
    (v73)(v75, enum case for Calendar.Component.day(_:), v47);
    v63 = v80;
    sub_1001C4D38();
    v76(v62, v47);
    (*(v53 + 8))(v61, v55);
    sub_10008875C(v57, &unk_10026FC70, &unk_1001F1430);
    v82(v63, v87);
    return sub_10008875C(v83, &qword_100274840, &qword_1001F9588);
  }
}

uint64_t sub_1001B7990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v28 = &v28 - v9;
  v10 = sub_1001C4D68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v28 - v20;
  sub_1001C4CD8();
  sub_1001B9998(a1, a2, v21);
  v22 = *(v11 + 8);
  v30 = v10;
  v22(v14, v10);
  sub_10009ADF0(v21, v19, &unk_10026FC70, &unk_1001F1430);
  if ((*(v5 + 48))(v19, 1, v4) == 1)
  {
    sub_10008875C(v21, &unk_10026FC70, &unk_1001F1430);
    v23 = 0;
    v21 = v19;
  }

  else
  {
    v24 = v28;
    (*(v5 + 32))(v28, v19, v4);
    sub_1001C4CD8();
    v25 = v29;
    sub_1001C4BE8();
    v23 = sub_1001AC6B4(v25, 1);
    v26 = *(v5 + 8);
    v26(v25, v4);
    v22(v14, v30);
    v26(v24, v4);
  }

  sub_10008875C(v21, &unk_10026FC70, &unk_1001F1430);
  return v23;
}

uint64_t sub_1001B7CB8(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = type metadata accessor for ReadingHistoryDay(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = sub_100084528(&qword_100272518, &qword_1001F55E8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v45 = sub_100084528(&qword_100272520, &qword_1001F55F0);
  v39 = *(v45 - 8);
  v18 = *(v39 + 64);
  __chkstk_darwin(v45);
  v20 = &v38 - v19;
  v42 = type metadata accessor for ReadingHistoryMonth(0);
  v21 = *(v42 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v42);
  v41 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100084528(&qword_100274840, &qword_1001F9588);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v38 - v29;
  ReadingHistoryModel.readingHistoryMonth(year:month:)(a1, v43, &v38 - v29);
  sub_10009ADF0(v30, v28, &qword_100274840, &qword_1001F9588);
  if ((*(v21 + 48))(v28, 1, v42) == 1)
  {
    sub_10008875C(v30, &qword_100274840, &qword_1001F9588);
    v31 = 0;
  }

  else
  {
    v44 = v30;
    sub_1001BD1C0(v28, v41, type metadata accessor for ReadingHistoryMonth);
    sub_100084528(&qword_100272540, &unk_1001F5610);
    sub_1001C5B48();
    v31 = 0;
    v32 = (v40 + 32);
    v33 = (v40 + 8);
    while (1)
    {
      sub_1001C5B08();
      sub_10009AE58(v15, v17, &qword_100272518, &qword_1001F55E8);
      v34 = sub_100084528(&qword_1002705A0, &unk_1001F9600);
      if ((*(*(v34 - 8) + 48))(v17, 1, v34) == 1)
      {
        break;
      }

      (*v32)(v10, &v17[*(v34 + 48)], v7);
      sub_1001C5D88();
      v35 = sub_1001C5E48();
      sub_1001BBBAC(v6, type metadata accessor for ReadingHistoryDay);
      (*v33)(v10, v7);
      v36 = __OFADD__(v31, v35);
      v31 += v35;
      if (v36)
      {
        __break(1u);
        break;
      }
    }

    (*(v39 + 8))(v20, v45);
    sub_1001BBBAC(v41, type metadata accessor for ReadingHistoryMonth);
    v28 = v44;
  }

  sub_10008875C(v28, &qword_100274840, &qword_1001F9588);
  return v31;
}

Swift::Int sub_1001B81BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001AAC24(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1001C6CB8(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1001C62D8();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1001BA2A4(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_1001B82F4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(uint64_t *, unint64_t *, unint64_t *))
{
  v10 = *(sub_100084528(a2, a3) - 8);
  v11 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = a4(v11);
  }

  v12 = *(v11 + 16);
  v14[0] = v11 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v14[1] = v12;
  result = sub_1001B9EFC(v14, a2, a3, a5);
  *a1 = v11;
  return result;
}

Swift::Bool __swiftcall ReadingHistoryModel.DayKey.isTheDayBefore(_:)(bookdatastored::ReadingHistoryModel::DayKey a1)
{
  v55 = v1;
  v56 = v2;
  day = a1.day;
  yearMonth = a1.yearMonth;
  v3 = sub_1001C4D68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v13 = sub_1001C4CA8();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v48 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v49 = &v46 - v19;
  __chkstk_darwin(v18);
  v57 = &v46 - v20;
  v21 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v46 - v23;
  v25 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v46 - v27;
  v29 = sub_1001C4948();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v4;
  v53 = v3;
  (*(v4 + 56))(v28, 1, 1, v3);
  v34 = sub_1001C4D78();
  (*(*(v34 - 8) + 56))(v24, 1, 1, v34);
  sub_1001C4938();
  sub_1001ABADC(v55, v56, v12);
  v35 = v14[6];
  if (v35(v12, 1, v13) == 1)
  {
    (*(v30 + 8))(v33, v29);
LABEL_5:
    sub_10008875C(v12, &unk_10026FC70, &unk_1001F1430);
    return 0;
  }

  v55 = v29;
  v56 = v14;
  v36 = v14[4];
  v37 = v51;
  v36(v57, v12, v13);
  sub_1001C4CD8();
  v12 = v54;
  sub_1001C4D28();
  (*(v52 + 8))(v37, v53);
  if (v35(v12, 1, v13) == 1)
  {
    (v56[1])(v57, v13);
    (*(v30 + 8))(v33, v55);
    goto LABEL_5;
  }

  v39 = v49;
  v36(v49, v12, v13);
  v40 = v56;
  v41 = v48;
  (v56[2])(v48, v39, v13);
  v42 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v41);
  v44 = v43;
  v45 = *(v40 + 8);
  v45(v39, v13);
  v45(v57, v13);
  (*(v30 + 8))(v33, v55);
  if (v42 == yearMonth)
  {
    return v44 == day;
  }

  return 0;
}

Swift::Int ReadingHistoryModel.DayKey.hashValue.getter(Swift::UInt a1, Swift::UInt a2)
{
  sub_1001C6DF8();
  sub_1001C6E08(a1);
  sub_1001C6E08(a2);
  return sub_1001C6E28();
}

uint64_t *sub_1001B8A60(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *result;
  if ((*result * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a2[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 < v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1001B8AC4(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = a2[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *result;
  if ((*result * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 >= v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1001B8B28(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *result;
  if ((*result * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a2[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 >= v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1001B8B8C(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = a2[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *result;
  if ((*result * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 < v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

Swift::Int sub_1001B8BF0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1001C6DF8();
  sub_1001C6E08(v1);
  sub_1001C6E08(v2);
  return sub_1001C6E28();
}

void sub_1001B8C4C()
{
  v1 = v0[1];
  sub_1001C6E08(*v0);
  sub_1001C6E08(v1);
}

Swift::Int sub_1001B8C88()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1001C6DF8();
  sub_1001C6E08(v1);
  sub_1001C6E08(v2);
  return sub_1001C6E28();
}

uint64_t ReadingHistoryModel.debugDescription.getter()
{
  v104 = sub_100084528(&qword_10026F858, &unk_1001F8AA0);
  v108 = *(v104 - 8);
  v1 = *(v108 + 64);
  v2 = __chkstk_darwin(v104);
  v103 = v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v102 = (v88 - v4);
  v5 = type metadata accessor for ReadingHistoryMonth(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v107 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_100084528(&qword_10026F888, &qword_1001F1478);
  v109 = *(v106 - 8);
  v8 = v109[8];
  v9 = __chkstk_darwin(v106);
  v105._object = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v105._countAndFlagsBits = v88 - v11;
  v100 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  v98 = *(v100 - 8);
  v12 = *(v98 + 64);
  __chkstk_darwin(v100);
  v99 = v88 - v13;
  v14 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v88 - v17;
  v19 = sub_100084528(&qword_100274568, &unk_1001F8AB0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v88 - v25;
  v27 = sub_1000885F4(&qword_100274570, &unk_10026F470, &unk_1001F5600);
  sub_1001C6448();
  v28 = v0;
  v93 = v27;
  sub_1001C6488();
  sub_1000885F4(&qword_100274578, &qword_100274568, &unk_1001F8AB0);
  v29 = sub_1001C5FD8();
  v30 = *(v20 + 8);
  v95 = v24;
  v30(v24, v19);
  v94 = v26;
  v96 = v20 + 8;
  v97 = v19;
  v92 = v30;
  v30(v26, v19);
  if (v29)
  {
    return 0xD00000000000001BLL;
  }

  (*(v15 + 16))(v18, v28, v14);
  sub_1000885F4(&qword_10026F8A0, &unk_10026F470, &unk_1001F5600);
  v111 = sub_1001C6228();
  v32 = 0;
  sub_1001B82F4(&v111, &qword_10026F888, &qword_1001F1478, sub_1001AAD00, sub_1001A9920);
  v33 = v28;
  v90 = v14;
  v34 = v111;
  v35 = *(v111 + 16);
  v91 = v28;
  if (v35)
  {
    v89 = 0;
    v113 = _swiftEmptyArrayStorage;
    sub_1000D3898(0, v35, 0);
    v36 = v113;
    v37 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v88[1] = v34;
    v38 = v34 + v37;
    v101 = v109[9];
    do
    {
      v109 = v36;
      countAndFlagsBits = v105._countAndFlagsBits;
      sub_10009ADF0(v38, v105._countAndFlagsBits, &qword_10026F888, &qword_1001F1478);
      v111 = 0x2068746E6F4DLL;
      v112 = 0xE600000000000000;
      v110 = *countAndFlagsBits;
      v114._countAndFlagsBits = sub_1001C6CC8();
      sub_1001C6138(v114);

      v115._countAndFlagsBits = 8250;
      v115._object = 0xE200000000000000;
      sub_1001C6138(v115);
      object = v105._object;
      sub_10009ADF0(countAndFlagsBits, v105._object, &qword_10026F888, &qword_1001F1478);
      v41 = *(v106 + 48);
      v42 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
      v43 = v107;
      sub_1001C5D88();
      (*(*(v42 - 8) + 8))(&object[v41], v42);
      v44 = sub_1001B4BF8(0, 1);
      v46 = v45;
      sub_1001BBBAC(v43, type metadata accessor for ReadingHistoryMonth);
      v116._countAndFlagsBits = v44;
      v116._object = v46;
      sub_1001C6138(v116);

      v117._countAndFlagsBits = 10;
      v117._object = 0xE100000000000000;
      sub_1001C6138(v117);
      v48 = v111;
      v47 = v112;
      v49 = countAndFlagsBits;
      v36 = v109;
      sub_10008875C(v49, &qword_10026F888, &qword_1001F1478);
      v113 = v36;
      v51 = v36[2];
      v50 = v36[3];
      if (v51 >= v50 >> 1)
      {
        sub_1000D3898((v50 > 1), v51 + 1, 1);
        v36 = v113;
      }

      v36[2] = v51 + 1;
      v52 = &v36[2 * v51];
      v52[4] = v48;
      v52[5] = v47;
      v38 += v101;
      --v35;
    }

    while (v35);

    v33 = v91;
    v32 = v89;
  }

  else
  {

    v36 = _swiftEmptyArrayStorage;
  }

  v111 = v36;
  v53 = sub_100084528(&unk_10026FED0, &unk_1001F1450);
  v54 = sub_1000885F4(&qword_10026F850, &unk_10026FED0, &unk_1001F1450);
  v55 = sub_1001C5FA8();
  v57 = v56;

  v58 = type metadata accessor for ReadingHistoryModel(0);
  (*(v98 + 16))(v99, v33 + *(v58 + 20), v100);
  sub_1000885F4(&qword_10026F870, &qword_10026F830, &qword_1001F0E80);
  v111 = sub_1001C6228();
  sub_1001B82F4(&v111, &qword_10026F858, &unk_1001F8AA0, sub_1001AACEC, sub_1001A990C);
  if (v32)
  {
    goto LABEL_21;
  }

  v100 = v54;
  v101 = v53;
  v105._countAndFlagsBits = v55;
  v105._object = v57;
  v59 = v111;
  v60 = *(v111 + 16);
  if (v60)
  {
    v113 = _swiftEmptyArrayStorage;
    sub_1000D3898(0, v60, 0);
    v61 = 0;
    v62 = v113;
    v63 = *(v108 + 80);
    v106 = v60;
    v107 = (v59 + ((v63 + 32) & ~v63));
    v109 = v59;
    while (v61 < *(v59 + 16))
    {
      v64 = v102;
      sub_10009ADF0(&v107[*(v108 + 72) * v61], v102, &qword_10026F858, &unk_1001F8AA0);
      v65 = [objc_allocWithZone(NSISO8601DateFormatter) init];
      [v65 setFormatOptions:275];
      v110 = *v64;
      v111 = sub_1001C6CC8();
      v112 = v66;
      v118._countAndFlagsBits = 0x203A7961642DLL;
      v118._object = 0xE600000000000000;
      sub_1001C6138(v118);
      v67 = v103;
      sub_10009ADF0(v64, v103, &qword_10026F858, &unk_1001F8AA0);
      v68 = *(v104 + 48);
      isa = sub_1001C4C38().super.isa;
      v70 = sub_1001C4CA8();
      (*(*(v70 - 8) + 8))(v67 + v68, v70);
      v71 = [v65 stringFromDate:isa];

      v72 = sub_1001C6018();
      v74 = v73;

      v119._countAndFlagsBits = v72;
      v119._object = v74;
      sub_1001C6138(v119);

      v75 = v111;
      v76 = v112;
      sub_10008875C(v64, &qword_10026F858, &unk_1001F8AA0);
      v113 = v62;
      v78 = v62[2];
      v77 = v62[3];
      if (v78 >= v77 >> 1)
      {
        sub_1000D3898((v77 > 1), v78 + 1, 1);
        v62 = v113;
      }

      ++v61;
      v62[2] = v78 + 1;
      v79 = &v62[2 * v78];
      v79[4] = v75;
      v79[5] = v76;
      v59 = v109;
      if (v106 == v61)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:

    __break(1u);
    return result;
  }

  v62 = _swiftEmptyArrayStorage;
LABEL_19:
  v111 = v62;
  v80 = sub_1001C5FA8();
  v82 = v81;

  v111 = 0;
  v112 = 0xE000000000000000;
  sub_1001C69C8(56);
  v120._countAndFlagsBits = 0xD00000000000001DLL;
  v120._object = 0x8000000100204400;
  sub_1001C6138(v120);
  v83 = v94;
  sub_1001C6448();
  v84 = v95;
  sub_1001C6488();
  v85 = sub_1001C6478();
  v86 = v97;
  v87 = v92;
  v92(v84, v97);
  v87(v83, v86);
  v113 = v85;
  v121._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v121);

  v122._countAndFlagsBits = 10;
  v122._object = 0xE100000000000000;
  sub_1001C6138(v122);
  sub_1001C6138(v105);

  v123._object = 0x8000000100204420;
  v123._countAndFlagsBits = 0xD000000000000011;
  sub_1001C6138(v123);
  v124._countAndFlagsBits = v80;
  v124._object = v82;
  sub_1001C6138(v124);

  v125._countAndFlagsBits = 4065885;
  v125._object = 0xE300000000000000;
  sub_1001C6138(v125);
  return v111;
}

uint64_t sub_1001B9998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v3 = sub_1001C4D48();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  __chkstk_darwin(v3);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v37 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v37 - v12;
  v14 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v37 - v16;
  v18 = sub_1001C4948();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v37 - v28;
  v30 = sub_1001C4D68();
  (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
  v31 = sub_1001C4D78();
  (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
  sub_1001C4938();
  sub_1001C4918();
  sub_1001C4928();
  sub_1001C4D18();
  (*(v19 + 8))(v22, v18);
  sub_10009ADF0(v29, v27, &unk_10026FC70, &unk_1001F1430);
  if ((*(v7 + 48))(v27, 1, v6) == 1)
  {
    sub_10008875C(v29, &unk_10026FC70, &unk_1001F1430);
    sub_10008875C(v27, &unk_10026FC70, &unk_1001F1430);
    return (*(v7 + 56))(v43, 1, 1, v6);
  }

  else
  {
    v33 = v37;
    (*(v7 + 32))(v37, v27, v6);
    v35 = v38;
    v34 = v39;
    v36 = v40;
    (*(v39 + 104))(v38, enum case for Calendar.Component.month(_:), v40);
    sub_1001C4D38();
    (*(v34 + 8))(v35, v36);
    (*(v7 + 8))(v33, v6);
    return sub_10008875C(v29, &unk_10026FC70, &unk_1001F1430);
  }
}

Swift::Int sub_1001B9EFC(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t *, unint64_t *, unint64_t *))
{
  v8 = a1[1];
  result = sub_1001C6CB8(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100084528(a2, a3);
        v12 = sub_1001C62D8();
        v12[2] = v11;
      }

      v13 = *(sub_100084528(a2, a3) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      sub_1001BA7F0(v14, v15, a1, v10, a2, a3, a4);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_1001BA060(0, v8, 1, a1, a2, a3);
  }

  return result;
}

uint64_t sub_1001BA060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v42 = sub_100084528(a5, a6);
  v12 = *(*(v42 - 8) + 64);
  v13 = __chkstk_darwin(v42);
  v41 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = (&v32 - v16);
  result = __chkstk_darwin(v15);
  v21 = (&v32 - v20);
  v34 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v39 = -v23;
    v40 = v22;
    v25 = a1 - a3;
    v33 = v23;
    v26 = v22 + v23 * a3;
LABEL_5:
    v37 = v24;
    v38 = a3;
    v35 = v26;
    v36 = v25;
    v27 = v25;
    while (1)
    {
      sub_10009ADF0(v26, v21, a5, a6);
      sub_10009ADF0(v24, v17, a5, a6);
      v28 = *v21;
      v29 = *v17;
      sub_10008875C(v17, a5, a6);
      result = sub_10008875C(v21, a5, a6);
      if (v28 >= v29)
      {
LABEL_4:
        a3 = v38 + 1;
        v24 = v37 + v33;
        v25 = v36 - 1;
        v26 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v30 = v41;
      sub_10009AE58(v26, v41, a5, a6);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10009AE58(v30, v24, a5, a6);
      v24 += v39;
      v26 += v39;
      if (__CFADD__(v27++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001BA2A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1001A97CC(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1001BB13C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AD9F0(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1000AD9F0((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = (v8 + 4);
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_1001BB13C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1001BA7F0(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t *, unint64_t *, unint64_t *))
{
  v119 = a7;
  v9 = a6;
  v10 = v8;
  v114 = a1;
  v126 = a5;
  v129 = sub_100084528(a5, a6);
  v122 = *(v129 - 8);
  v13 = *(v122 + 64);
  v14 = __chkstk_darwin(v129);
  v117 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v128 = (&v110 - v17);
  v18 = __chkstk_darwin(v16);
  v131 = (&v110 - v19);
  result = __chkstk_darwin(v18);
  v130 = (&v110 - v21);
  v22 = a3[1];
  v124 = a3;
  v132 = v9;
  if (v22 < 1)
  {
    v24 = &_swiftEmptyArrayStorage;
LABEL_98:
    a4 = *v114;
    if (!*v114)
    {
      goto LABEL_138;
    }

    v7 = v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v7;
    }

    else
    {
LABEL_132:
      result = sub_1001A97CC(v7);
    }

    v133 = result;
    v7 = *(result + 16);
    if (v7 >= 2)
    {
      v104 = v119;
      while (1)
      {
        v105 = *a3;
        if (!*a3)
        {
          goto LABEL_136;
        }

        a3 = (v7 - 1);
        v106 = *(result + 16 * v7);
        v107 = result;
        v108 = *(result + 16 * (v7 - 1) + 40);
        sub_1001BB330(v105 + *(v122 + 72) * v106, v105 + *(v122 + 72) * *(result + 16 * (v7 - 1) + 32), v105 + *(v122 + 72) * v108, a4, v126, v132, v104);
        if (v10)
        {
        }

        if (v108 < v106)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1001A97CC(v107);
        }

        if (v7 - 2 >= *(v107 + 2))
        {
          goto LABEL_126;
        }

        v109 = &v107[16 * v7];
        *v109 = v106;
        *(v109 + 1) = v108;
        v133 = v107;
        sub_1001A9740(a3);
        result = v133;
        v7 = *(v133 + 16);
        a3 = v124;
        if (v7 <= 1)
        {
        }
      }
    }
  }

  v23 = 0;
  v24 = &_swiftEmptyArrayStorage;
  v113 = a4;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    v118 = v24;
    if (v23 + 1 >= v22)
    {
      v35 = v23 + 1;
    }

    else
    {
      v125 = v22;
      v112 = v10;
      v27 = v23;
      v28 = *a3;
      v29 = *(v122 + 72);
      v30 = *a3 + v29 * v26;
      a3 = v130;
      v31 = v126;
      sub_10009ADF0(v30, v130, v126, v9);
      v7 = v131;
      sub_10009ADF0(v28 + v29 * v27, v131, v31, v9);
      v32 = *a3;
      v120 = *v7;
      v121 = v32;
      sub_10008875C(v7, v31, v9);
      result = sub_10008875C(a3, v31, v9);
      v111 = v27;
      v33 = v27 + 2;
      v123 = v29;
      v34 = v28 + v29 * (v27 + 2);
      while (1)
      {
        v35 = v125;
        if (v125 == v33)
        {
          break;
        }

        LODWORD(v127) = v121 < v120;
        v36 = v130;
        v37 = v126;
        v38 = v132;
        sub_10009ADF0(v34, v130, v126, v132);
        a3 = v131;
        sub_10009ADF0(v30, v131, v37, v38);
        v39 = *v36;
        v7 = *a3;
        sub_10008875C(a3, v37, v38);
        result = sub_10008875C(v36, v37, v38);
        ++v33;
        v34 += v123;
        v30 += v123;
        if (((v127 ^ (v39 >= v7)) & 1) == 0)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v10 = v112;
      a4 = v113;
      v9 = v132;
      v25 = v111;
      if (v121 >= v120)
      {
        goto LABEL_23;
      }

      if (v35 < v111)
      {
        goto LABEL_129;
      }

      if (v111 >= v35)
      {
LABEL_23:
        a3 = v124;
      }

      else
      {
        v7 = v123 * (v35 - 1);
        v40 = v35 * v123;
        v41 = v35;
        v42 = v35;
        v43 = v111;
        v44 = v111 * v123;
        v45 = v126;
        do
        {
          if (v43 != --v42)
          {
            v46 = *v124;
            if (!*v124)
            {
              goto LABEL_135;
            }

            sub_10009AE58(v46 + v44, v117, v45, v132);
            if (v44 < v7 || v46 + v44 >= (v46 + v40))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v44 != v7)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10009AE58(v117, v46 + v7, v45, v132);
          }

          ++v43;
          v7 -= v123;
          v40 -= v123;
          v44 += v123;
        }

        while (v43 < v42);
        v10 = v112;
        a4 = v113;
        a3 = v124;
        v9 = v132;
        v25 = v111;
        v35 = v41;
      }
    }

    v47 = a3[1];
    if (v35 < v47)
    {
      if (__OFSUB__(v35, v25))
      {
        goto LABEL_128;
      }

      if (v35 - v25 < a4)
      {
        if (__OFADD__(v25, a4))
        {
          goto LABEL_130;
        }

        if ((v25 + a4) >= v47)
        {
          v48 = a3[1];
        }

        else
        {
          v48 = v25 + a4;
        }

        if (v48 < v25)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v35 != v48)
        {
          break;
        }
      }
    }

    v23 = v35;
    if (v35 < v25)
    {
      goto LABEL_127;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v24 = v118;
    }

    else
    {
      result = sub_1000AD9F0(0, *(v118 + 2) + 1, 1, v118);
      v24 = result;
    }

    v7 = *(v24 + 2);
    v49 = *(v24 + 3);
    a4 = v7 + 1;
    if (v7 >= v49 >> 1)
    {
      result = sub_1000AD9F0((v49 > 1), v7 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = a4;
    v50 = &v24[16 * v7];
    *(v50 + 4) = v25;
    *(v50 + 5) = v23;
    if (!*v114)
    {
      goto LABEL_137;
    }

    if (v7)
    {
      a3 = *v114;
      while (1)
      {
        v51 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v52 = *(v24 + 4);
          v53 = *(v24 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_55:
          if (v55)
          {
            goto LABEL_116;
          }

          v68 = &v24[16 * a4];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_119;
          }

          v74 = &v24[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_123;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = a4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v78 = &v24[16 * a4];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_69:
        if (v73)
        {
          goto LABEL_118;
        }

        v81 = &v24[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_76:
        v7 = v51 - 1;
        if (v51 - 1 >= a4)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (!*v124)
        {
          goto LABEL_134;
        }

        v89 = v24;
        a4 = *&v24[16 * v7 + 32];
        v90 = *&v24[16 * v51 + 40];
        sub_1001BB330(*v124 + *(v122 + 72) * a4, *v124 + *(v122 + 72) * *&v24[16 * v51 + 32], *v124 + *(v122 + 72) * v90, a3, v126, v132, v119);
        if (v10)
        {
        }

        if (v90 < a4)
        {
          goto LABEL_112;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v91 = v89;
        }

        else
        {
          v91 = sub_1001A97CC(v89);
        }

        v9 = v132;
        if (v7 >= *(v91 + 2))
        {
          goto LABEL_113;
        }

        v92 = &v91[16 * v7];
        *(v92 + 4) = a4;
        *(v92 + 5) = v90;
        v133 = v91;
        v7 = &v133;
        result = sub_1001A9740(v51);
        v24 = v133;
        a4 = *(v133 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v24[16 * a4 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_114;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_115;
      }

      v63 = &v24[16 * a4];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_117;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_120;
      }

      if (v67 >= v59)
      {
        v85 = &v24[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_124;
        }

        if (v54 < v88)
        {
          v51 = a4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    a3 = v124;
    v22 = v124[1];
    a4 = v113;
    if (v23 >= v22)
    {
      goto LABEL_98;
    }
  }

  v112 = v10;
  v93 = *a3;
  v94 = *(v122 + 72);
  v95 = *a3 + v94 * (v35 - 1);
  v96 = -v94;
  v111 = v25;
  v7 = v25 - v35;
  v127 = v93;
  v115 = v94;
  v116 = v48;
  a4 = v93 + v35 * v94;
LABEL_88:
  v125 = v35;
  v120 = a4;
  v121 = v7;
  v123 = v95;
  v97 = v95;
  v98 = v126;
  while (1)
  {
    v99 = v130;
    sub_10009ADF0(a4, v130, v98, v9);
    v100 = v131;
    sub_10009ADF0(v97, v131, v98, v132);
    a3 = *v99;
    v101 = *v100;
    v102 = v100;
    v9 = v132;
    sub_10008875C(v102, v98, v132);
    result = sub_10008875C(v99, v98, v9);
    if (a3 >= v101)
    {
LABEL_87:
      v35 = v125 + 1;
      v23 = v116;
      v95 = v123 + v115;
      v7 = v121 - 1;
      a4 = v120 + v115;
      if (v125 + 1 != v116)
      {
        goto LABEL_88;
      }

      v10 = v112;
      v25 = v111;
      if (v116 < v111)
      {
        goto LABEL_127;
      }

      goto LABEL_35;
    }

    if (!v127)
    {
      break;
    }

    a3 = v128;
    sub_10009AE58(a4, v128, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    sub_10009AE58(a3, v97, v98, v9);
    v97 += v96;
    a4 += v96;
    if (__CFADD__(v7++, 1))
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
  return result;
}

uint64_t sub_1001BB13C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1001BB330(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t *, unint64_t *, unint64_t *))
{
  v46 = a7;
  v57 = a5;
  v58 = a6;
  v54 = sub_100084528(a5, a6);
  v11 = *(*(v54 - 8) + 64);
  v12 = __chkstk_darwin(v54);
  v56 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v12);
  v55 = (&v44 - v15);
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_63;
  }

  v19 = (a2 - a1) / v17;
  v61 = a1;
  v60 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = a2;
    v32 = a4 + v21;
    if (v21 >= 1)
    {
      v33 = -v17;
      v34 = a4 + v21;
      v48 = v33;
      v49 = a1;
      while (2)
      {
        while (1)
        {
          v45 = v32;
          v35 = v50;
          v50 += v33;
          v51 = v35;
          while (1)
          {
            if (v35 <= a1)
            {
              v61 = v35;
              v59 = v45;
              goto LABEL_60;
            }

            v36 = a3;
            v47 = v32;
            a3 += v33;
            v37 = v34 + v33;
            v38 = v34 + v33;
            v39 = v55;
            v41 = v57;
            v40 = v58;
            sub_10009ADF0(v38, v55, v57, v58);
            v42 = v56;
            sub_10009ADF0(v50, v56, v41, v40);
            v43 = *v39;
            v52 = *v42;
            v53 = v43;
            sub_10008875C(v42, v41, v40);
            sub_10008875C(v39, v41, v40);
            if (v53 < v52)
            {
              break;
            }

            v32 = v37;
            if (v36 < v34 || a3 >= v34)
            {
              swift_arrayInitWithTakeFrontToBack();
              v33 = v48;
              a1 = v49;
            }

            else
            {
              v33 = v48;
              a1 = v49;
              if (v36 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v37;
            v35 = v51;
            if (v37 <= a4)
            {
              v50 = v51;
              goto LABEL_59;
            }
          }

          if (v36 < v51 || a3 >= v51)
          {
            break;
          }

          v33 = v48;
          a1 = v49;
          v32 = v47;
          if (v36 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= a4)
          {
            goto LABEL_59;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v33 = v48;
        a1 = v49;
        v32 = v47;
        if (v34 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v61 = v50;
    v59 = v32;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v20;
    v59 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v51 = v17;
      v52 = a3;
      do
      {
        v23 = v55;
        v25 = v57;
        v24 = v58;
        sub_10009ADF0(a2, v55, v57, v58);
        v26 = v56;
        sub_10009ADF0(a4, v56, v25, v24);
        v27 = *v23;
        v28 = *v26;
        sub_10008875C(v26, v25, v24);
        sub_10008875C(v23, v25, v24);
        if (v27 >= v28)
        {
          v29 = v51;
          v31 = a4 + v51;
          if (a1 < a4 || a1 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v52;
          }

          else
          {
            v30 = v52;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v60 = v31;
          a4 += v29;
        }

        else
        {
          v29 = v51;
          if (a1 < a2 || a1 >= a2 + v51)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v29;
            v30 = v52;
          }

          else
          {
            v30 = v52;
            if (a1 == a2)
            {
              a2 += v51;
            }

            else
            {
              swift_arrayInitWithTakeBackToFront();
              a2 += v29;
            }
          }
        }

        a1 += v29;
        v61 = a1;
      }

      while (a4 < v53 && a2 < v30);
    }
  }

LABEL_60:
  v46(&v61, &v60, &v59);
  return 1;
}

uint64_t _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(uint64_t a1)
{
  v2 = sub_1001C4D48();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C4D68();
  v20 = *(v7 - 8);
  v21 = v7;
  v8 = *(v20 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4CD8();
  v11 = v3[13];
  v11(v6, enum case for Calendar.Component.year(_:), v2);
  v12 = sub_1001C4D58();
  v13 = v3[1];
  v13(v6, v2);
  v11(v6, enum case for Calendar.Component.month(_:), v2);
  v14 = sub_1001C4D58();
  result = (v13)(v6, v2);
  v16 = 100 * v12;
  if ((v12 * 100) >> 64 == (100 * v12) >> 63)
  {
    v17 = __OFADD__(v16, v14);
    v18 = v16 + v14;
    if (!v17)
    {
      v11(v6, enum case for Calendar.Component.day(_:), v2);
      sub_1001C4D58();
      v19 = sub_1001C4CA8();
      (*(*(v19 - 8) + 8))(a1, v19);
      v13(v6, v2);
      (*(v20 + 8))(v10, v21);
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BBADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BBB44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001BBBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001BC3D4()
{
  result = qword_100274650;
  if (!qword_100274650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274650);
  }

  return result;
}

void sub_1001BC47C()
{
  if (!qword_1002746C0)
  {
    v0 = sub_1001C56E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002746C0);
    }
  }
}

void sub_1001BC4FC()
{
  sub_1001BC598();
  if (v0 <= 0x3F)
  {
    sub_1001BC47C();
    if (v1 <= 0x3F)
    {
      sub_100169C74();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001BC598()
{
  if (!qword_100274760)
  {
    sub_1000885AC(&qword_10026ED18, &unk_1001F06E0);
    sub_1000885F4(&qword_10026ED20, &qword_10026ED18, &unk_1001F06E0);
    sub_1000885F4(&qword_10026ED28, &qword_10026ED18, &unk_1001F06E0);
    v0 = sub_1001C5B68();
    if (!v1)
    {
      atomic_store(v0, &qword_100274760);
    }
  }
}

void sub_1001BC6EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  a4(319);
  if (v6 <= 0x3F)
  {
    a5(319);
    if (v7 <= 0x3F)
    {
      sub_100169C74();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001BC794()
{
  if (!qword_100274800)
  {
    sub_1000885AC(&unk_10026ED30, &unk_1001F1490);
    sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490);
    sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490);
    v0 = sub_1001C5B68();
    if (!v1)
    {
      atomic_store(v0, &qword_100274800);
    }
  }
}

void sub_1001BC894()
{
  if (!qword_100274808)
  {
    sub_1001C4CA8();
    sub_1001BBB44(&unk_10026F440, &type metadata accessor for Date);
    v0 = sub_1001C5B68();
    if (!v1)
    {
      atomic_store(v0, &qword_100274808);
    }
  }
}

uint64_t sub_1001BC968(uint64_t a1)
{
  v2 = sub_1001C4D68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v34 - v12;
  v14 = sub_1001C4948();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v34 - v20;
  v22 = sub_1001C4CA8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  __chkstk_darwin(v25);
  v28 = &v34 - v27;
  if (a1 <= 9999)
  {
    (*(v23 + 56))(v21, 1, 1, v22);
LABEL_4:
    sub_10008875C(v21, &unk_10026FC70, &unk_1001F1430);
    return 0;
  }

  v35 = v26;
  v36 = v2;
  (*(v3 + 56))(v13, 1, 1, v2);
  v29 = sub_1001C4D78();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  sub_1001C4938();
  v30 = v39;
  sub_1001C4CD8();
  sub_1001C4D18();
  (*(v3 + 8))(v30, v36);
  (*(v37 + 8))(v17, v38);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    goto LABEL_4;
  }

  (*(v23 + 32))(v28, v21, v22);
  v32 = v35;
  (*(v23 + 16))(v35, v28, v22);
  v33 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v32);
  (*(v23 + 8))(v28, v22);
  return v33;
}

void *sub_1001BCEA0(uint64_t a1)
{
  v2 = sub_1001C4D48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100084528(&qword_100274850, &qword_1001F9598);
    v10 = sub_1001C69A8();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1001BBB44(&qword_100274858, &type metadata accessor for Calendar.Component);
      v18 = sub_1001C5F88();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1001BBB44(&qword_100274860, &type metadata accessor for Calendar.Component);
          v25 = sub_1001C5FD8();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1001BD1C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1001BD2E0(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "TMP DIR ERROR: _set_user_dir_suffix Failed: %s", &v4, 0xCu);
}

void sub_1001BD374()
{
  sub_10000CE28();
  sub_10000CE1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001BD424()
{
  sub_10000CE28();
  sub_10000CE1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001BD460()
{
  sub_10000CE28();
  sub_10000CE1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001BD49C()
{
  sub_10000CE28();
  sub_10000CE1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001BDCB8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSUbiquityManager: Could not determine file extension for %@", &v2, 0xCu);
}

void sub_1001BDD80(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSWidgetTimelineController - Error: %@", &v2, 0xCu);
}

void sub_1001BDDF8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error creating FRC for BookWidgetInfo: %@", &v2, 0xCu);
}

void sub_1001BDE70(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching updated list of WidgetInfos: %@", &v2, 0xCu);
}

void sub_1001BDEE8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "_isServiceEnabled(%{public}@): TCC returned a NULL array!", &v2, 0xCu);
}

void sub_1001BDF60(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "_isServiceDisabled(%{public}@): TCC returned a NULL array!", &v2, 0xCu);
}

void sub_1001BDFD8(uint64_t a1, char a2, os_log_t log)
{
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ to %{public}@.", &v4, 0x16u);
}

void sub_1001BE408(uint64_t a1)
{
  v1 = [*(a1 + 32) configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001BE4B0(uint64_t a1)
{
  v1 = [*(a1 + 32) configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001BE558(uint64_t a1)
{
  v1 = [*(a1 + 32) configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AE8();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
}

void sub_1001BE604(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BCCloudKitController - CURRENT ACCOUNT STATUS %ld", &v3, 0xCu);
}

void sub_1001BE758(id *a1, uint64_t a2)
{
  v3 = [*a1 configuration];
  v4 = [v3 containerIdentifier];
  v5 = *(a2 + 40);
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1001BE814(void *a1, NSObject *a2)
{
  v3 = [a1 configuration];
  v4 = [v3 containerIdentifier];
  sub_10000DB30();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "_updateAccountCacheWithTimeout(%{public}@)", v5, 0xCu);
}

void sub_1001BE94C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 48) configuration];
  v6 = [v5 containerIdentifier];
  v7 = *(*(*a2 + 8) + 24);
  sub_10000DB30();
  v10 = 1024;
  v11 = v8;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "(%{public}@) _updateAccountCacheWithTimeout hasChanged:%{BOOL}d ", v9, 0x12u);
}

void sub_1001BEA1C(uint64_t a1, uint64_t *a2)
{
  v4 = [*(a1 + 40) configuration];
  v9 = [v4 containerIdentifier];
  [*(a1 + 48) currentStatus];
  v10 = *a2;
  sub_100022AE8();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x20u);
}

void sub_1001BEAFC(uint64_t a1)
{
  v2 = [*(a1 + 40) configuration];
  v7 = [v2 containerIdentifier];
  [*(a1 + 48) currentStatus];
  sub_100022AE8();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
}

void sub_1001BEBC4(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001BEC68(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001BED0C(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001BEDB0(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AE8();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
}

void sub_1001BEF14(void *a1)
{
  v1 = [a1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001BF008(void *a1)
{
  v1 = [a1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001BF0AC(void *a1, NSObject *a2)
{
  v3 = [a1 attachedToContainer];
  v4 = @"NO";
  if (v3)
  {
    v4 = @"YES";
  }

  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BCCloudKitDatabaseController - fetchRecordForRecordID attached: %@", &v5, 0xCu);
}

void sub_1001BF288(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "BCCloudKitDatabaseController modifySubscriptionsOperation: %@, id: %@", buf, 0x16u);
}

void sub_1001BF630(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100031140();
  sub_100031120(&_mh_execute_header, v2, v3, "Error deleting zones (%{public}@): (%{public}@)");
}

void sub_1001BF6A0(void *a1)
{
  v1 = [a1 containerIdentifier];
  sub_10003110C();
  sub_100022AD8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001BF73C(void *a1)
{
  v1 = [a1 containerIdentifier];
  sub_10003110C();
  sub_100022AD8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001BF844(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100031140();
  sub_100031120(&_mh_execute_header, v4, v5, "BCCloudKitDatabaseController - Attempt to remove observer %p that is not observing recordType %{public}@.");
}

void sub_1001BF8B8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 48);
  v3 = *a2;
  sub_100031140();
  sub_100031120(&_mh_execute_header, v4, v5, "BCCloudKitDatabaseController - Attempt to remove observer %p that is not observing recordType %{public}@.");
}

void sub_1001BF99C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 40);
  sub_100031140();
  sub_100031120(&_mh_execute_header, v4, v5, "BCCloudKitDatabaseController - Invalid parameter combination BCCloudKitDatabaseZoneObserver observer=%p recordType=%{public}@");
}

void sub_1001BFB74(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[Notification] Received CKNotification %@, subscriptionID: %@", &v3, 0x16u);
}

void sub_1001BFC40(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "monitorServiceNotifications: Client not found for connection %{public}@", &v2, 0xCu);
}

void sub_1001BFCB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ([v5 count])
    {
      v9 = [v5 lastObject];
      [v5 removeLastObject];
      sub_100039F38();
      v10[1] = 3221225472;
      v10[2] = sub_100038F18;
      v10[3] = &unk_100240D68;
      v12 = v6;
      v10[4] = a1;
      v10[5] = v9;
      v11 = v5;
      sub_1001BFDCC(a1, v9, v10);
    }

    else
    {
      v7 = objc_retainBlock(v6);
      v8 = v7;
      if (v7)
      {
        (*(v7 + 2))(v7, 0);
      }
    }
  }
}

void sub_1001BFDCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 adamID];
    sub_100039F38();
    v8[1] = 3221225472;
    v8[2] = sub_10003901C;
    v8[3] = &unk_10023FEB0;
    v9 = v5;
    v10 = v6;
    [BDSServiceCenter fetchIsAssetID:v7 inCollectionID:@"Want_To_Read_Collection_ID" completion:v8];
  }
}

void sub_1001C0150(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 assetID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BCAssetDetail %@ Mismatch assetID from record assetID %@", &v6, 0x16u);
}

void sub_1001C0200(void *a1, NSObject *a2)
{
  v3 = [a1 assetID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BCAssetDetail %@ No Record supplied", &v4, 0xCu);
}

void sub_1001C0300(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[BCCloudKitTransactionManager] Creating syncToCKTransaction %@", &v2, 0xCu);
}

void sub_1001C0378(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = objc_retainBlock(*a1);
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[BCCloudKitTransactionManager] registering completion %@ for syncToCKTransaction %@", &v6, 0x16u);
}

void sub_1001C0428(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create rawHistoryToken from data error: %@", &v1, 0xCu);
}

void sub_1001C04A8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error unarchiving persistent history token: %{public}@", &v2, 0xCu);
}

void sub_1001C0520(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSAutomaticPinningListUpdater encountered error: %@, and we were not cancelled.", &v2, 0xCu);
}

void sub_1001C0598(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSAutomaticPinningListUpdater encountered error: %@, but we were already cancelled.", &v2, 0xCu);
}

void sub_1001C0668(void *a1, void *a2)
{
  [a1 establishedSalt];
  v3 = [a2 ckSystemFields];
  sub_100022AD8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x18u);
}

void sub_1001C0730(void *a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v9 = [a1 identifier];
  sub_100022AD8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1001C07FC(void *a1)
{
  v6 = [a1 identifier];
  sub_100022AD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001C0A60(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSWidgetCenterManager - relevance donation failed due to %@", &v2, 0xCu);
}

void sub_1001C0AD8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to create persistent stores on the coordinator:%@", &v3, 0xCu);
}

void sub_1001C0B54(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = [a2 domain];
  v7 = 138543874;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  v11 = 1024;
  v12 = [a2 code];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error %{public}@: %{public}@ %d", &v7, 0x1Cu);
}

void sub_1001C0D58()
{
  sub_10000DB30();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "BCCloudDataManager error: %{public}@, at: %{public}@", v2, 0x16u);
}

void sub_1001C0E10(void *a1)
{
  v1 = [a1 entityName];
  sub_10000DB30();
  sub_100022AE8();
  sub_100052210(v2, v3, v4, v5, v6);
}

void sub_1001C0E9C(void *a1)
{
  v1 = [a1 identifier];
  sub_1000521F8();
  sub_100022AE8();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);
}

void sub_1001C0F3C(void *a1)
{
  v1 = [a1 identifier];
  sub_1000521F8();
  sub_100022AE8();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);
}

void sub_1001C0FDC(void *a1, id *a2)
{
  v3 = [a1 entityName];
  v8 = [*a2 debugDescription];
  sub_100022AE8();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);
}

void sub_1001C1104(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  sub_1000521F8();
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "BCCloudDataManager %{public}@ resolveConflictsForRecords: Encountered duplicates: %d", v4, 0x12u);
}

void sub_1001C1184(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = 138543362;
  v5 = v3;
  sub_100052210(&_mh_execute_header, a2, a3, "BCCloudDataManager #recordChange failedRecordIDs:%{public}@", &v4);
}

void sub_1001C11F8(uint64_t a1)
{
  v1 = [*(a1 + 32) entityName];
  sub_10000DB30();
  sub_100022AE8();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

void sub_1001C128C(id *a1)
{
  v1 = [*a1 entityName];
  sub_10000DB30();
  sub_100022AE8();
  sub_100052210(v2, v3, v4, v5, v6);
}

void sub_1001C1318(uint64_t a1)
{
  v1 = [*(a1 + 40) entityName];
  sub_10000DB30();
  sub_100022AE8();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

void sub_1001C13AC(void *a1)
{
  v1 = [a1 entityName];
  sub_10000DB30();
  sub_100022AE8();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_1001C143C()
{
  sub_10000DB30();
  sub_10000CE1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001C152C()
{
  sub_10000DB30();
  sub_10000CE1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001C1618(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = @"Didn't";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Trying to update bitrate for mediaItem. %@ find streamInf. Error: %@", &v2, 0x16u);
}

void sub_1001C1774(void *a1)
{
  v1 = [a1 assetID];
  sub_10000DB30();
  sub_100058588(&_mh_execute_header, v2, v3, "found readingNow member for assetID: %@ in media library", v4, v5, v6, v7, v8);
}

void sub_1001C17F8(void *a1)
{
  v1 = [a1 assetID];
  sub_10000DB30();
  sub_100058588(&_mh_execute_header, v2, v3, "found readingNow member for assetID: %@ jalisco DB", v4, v5, v6, v7, v8);
}

void sub_1001C19D4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#dissociateCloudData Change Token Controller error: %@", &v2, 0xCu);
}

void sub_1001C1A4C()
{
  sub_10005A278();
  v2 = [*(v1 + 32) zoneName];
  [v0 count];
  sub_10005A258(&_mh_execute_header, v3, v4, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ we should never have more than 1 record. We have %lu@) records.", v5, v6, v7, v8, 2u);
}

void sub_1001C1AF4()
{
  sub_10005A278();
  v2 = [*(v1 + 32) zoneName];
  v9 = *v0;
  sub_10005A258(&_mh_execute_header, v3, v4, "<%@ BCCloudChangeTokenController - No change yet we tried updating %@", v5, v6, v7, v8, 2u);
}

void sub_1001C1B98()
{
  sub_10005A278();
  v1 = [*(v0 + 40) zoneName];
  sub_10005A240();
  sub_10005A258(&_mh_execute_header, v2, v3, "BCCloudChangeTokenController - Error deleting cloud tokens: %@ with server change token: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1001C1C28()
{
  sub_10005A278();
  v1 = [*(v0 + 32) zoneName];
  sub_10005A240();
  sub_10005A258(&_mh_execute_header, v2, v3, "BCCloudChangeTokenController - #recordChange Error saving MOC zone: %@ with server change token: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1001C1CB8()
{
  sub_10005A278();
  v1 = [*(v0 + 40) zoneName];
  sub_10005A240();
  sub_10005A258(&_mh_execute_header, v2, v3, "BCCloudChangeTokenController - #recordChange Error fetching from MOC zone: %@ with server change token: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1001C1D48(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error unarchiving server change token: %{public}@", &v2, 0xCu);
}

void sub_1001C1E3C(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BDSSyncEngineSaltManager: Error retrieving record salt: %@ serverRecord:%@.. Trying to recover", &v5, 0x16u);
}

void sub_1001C22D8(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 assetID];
  v7 = [a1 debugDescription];
  v8 = [a2 assetID];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "BCReadingNowDetail configured: %@ %@ from readingNowDetail:%@", &v9, 0x20u);
}

void sub_1001C23BC(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 assetID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BCReadingNowDetail %@ Mismatch assetID from record assetID %@", &v6, 0x16u);
}

void sub_1001C246C(void *a1, void *a2)
{
  v4 = [a1 assetID];
  v5 = [a2 recordID];
  v6 = [v5 recordName];
  v7 = [a1 debugDescription];
  sub_100062800();
  sub_100062820(&_mh_execute_header, v8, v9, "Assuming cloudAssetType %@ Resolving: from record: %@ %@", v10, v11, v12, v13, v14);
}

void sub_1001C2540(void *a1, void *a2)
{
  v4 = [a1 assetID];
  v5 = [a2 recordID];
  v6 = [v5 recordName];
  v7 = [a1 debugDescription];
  sub_100062800();
  sub_100062820(&_mh_execute_header, v8, v9, "BCReadingNowDetail %@ Resolving: Identical properties from record: %@ %@", v10, v11, v12, v13, v14);
}

void sub_1001C2614(void *a1, NSObject *a2)
{
  v3 = [a1 assetID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BCReadingNowDetail %@ No Record supplied", &v4, 0xCu);
}

void sub_1001C2758(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error trying to find WidgetInfos that need relationships updated: %@", &v2, 0xCu);
}

void sub_1001C2848(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 assetReviewID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BCAssetReview %@ Mismatch assetReviewID from record assetReviewID %@", &v6, 0x16u);
}

void sub_1001C28F8(void *a1, NSObject *a2)
{
  v3 = [a1 assetReviewID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BCAssetReview %@ No Record supplied", &v4, 0xCu);
}

void sub_1001C29F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSMediaLibraryUtils No daap item found for %@", &v2, 0xCu);
}

void sub_1001C2A70(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSMediaLibraryUtils No collections for %@", &v2, 0xCu);
}

void sub_1001C2C2C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 key];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BCSecureUserDatum %@ Mismatch key from record key %@", &v6, 0x16u);
}

void sub_1001C2CDC(void *a1, NSObject *a2)
{
  v3 = [a1 key];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BCSecureUserDatum %@ No Record supplied", &v4, 0xCu);
}

void sub_1001C2EAC(uint64_t *a1)
{
  v1 = *a1;
  sub_10006D558();
  sub_100031120(&_mh_execute_header, v2, v3, "WidgetInfoManager unable to find widgetInfo matching %@ error:%@");
}

void sub_1001C30D0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 32) bu_prettyDescription];
  v7 = [*(a1 + 40) bu_prettyDescription];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to fetch store assets with, audiobookAssetIDs: %@, bookAssetIDs: %@, error: %@", &v8, 0x20u);
}

void sub_1001C31A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10006D558();
  sub_100031120(&_mh_execute_header, v2, v3, "Failed to fetch store assets with, assetIDs: %@, error: %@");
}

void sub_1001C3210(uint64_t *a1)
{
  v1 = *a1;
  sub_10006D558();
  sub_100031120(&_mh_execute_header, v2, v3, "Could not delete BookWidgetInfo's with assetIDs: %@. Error: %@");
}

void sub_1001C32B0(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 storeID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BCStoreItem %@ Mismatch storeID from record storeID %@", &v6, 0x16u);
}

void sub_1001C3360(void *a1, NSObject *a2)
{
  v3 = [a1 storeID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BCStoreItem %@ No Record supplied", &v4, 0xCu);
}

void sub_1001C34D8(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 startTimestampString];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BDSSecureEngagementData %@ Mismatch key from record key %@", &v6, 0x16u);
}

void sub_1001C3588(void *a1, NSObject *a2)
{
  v3 = [a1 startTimestampString];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSSecureEngagementData %@ No Record supplied", &v4, 0xCu);
}

void sub_1001C3874(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error trying to write updated assetDetail for assetID: %@ error: %@", &v4, 0x16u);
}

void sub_1001C3970(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Updated assetDetail for assetID %@", &v3, 0xCu);
}

void sub_1001C39EC(void *a1, NSObject *a2)
{
  v3 = [a1 assetID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSNBController No media items for %@", &v4, 0xCu);
}

void sub_1001C3A84(uint64_t a1, NSObject *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = [*(a1 + 40) count];
  v6 = 134218240;
  v7 = v4;
  v8 = 2048;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BDSNBController Updating from assetDetails: updated (%lu) removed (%lu)", &v6, 0x16u);
}

void sub_1001C3B94(void *a1, uint64_t a2, NSObject *a3)
{
  v5[0] = 67109378;
  v5[1] = [a1 processIdentifier];
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Refusing connection to pid %d. (appIdentifier: %@)", v5, 0x12u);
}

void sub_1001C3C78(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412802;
  v5 = v3;
  v6 = 1024;
  v7 = 0;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 5b. dissociateCloudDataFromSyncWithCompletion %{BOOL}d ERROR:%@", &v4, 0x1Cu);
}

void sub_1001C3D24(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BCCloudCollectionsManager collectionDetailManagerInstancecompleted enableCloudSync %{BOOL}d", v3, 8u);
}

void sub_1001C3DA0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BCCloudCollectionsManager collectionMemberManagerInstance completed enableCloudSync %{BOOL}d", v3, 8u);
}

void sub_1001C3EA4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BCCloudCollectionDetailManager could not resolve conflicts for records %@. Error: %@", &v4, 0x16u);
}

void sub_1001C3F74(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BCCloudCollectionMemberManager could not resolve conflicts for records %@. Error: %@", &v4, 0x16u);
}

void sub_1001C4078(void *a1)
{
  v6 = [a1 collectionID];
  sub_100022AD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1001C4120(void *a1)
{
  v6 = [a1 collectionID];
  sub_100022AD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001C424C(void *a1)
{
  v6 = [a1 collectionID];
  sub_100022AD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001C4310(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 collectionMemberID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BCCollectionMember %@ Mismatch assetID from record collectionMemberID %@", &v6, 0x16u);
}

void sub_1001C4638(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) allKeys];
  sub_10000DB30();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error adding storeItems for storeIDs: %@", v4, 0xCu);
}