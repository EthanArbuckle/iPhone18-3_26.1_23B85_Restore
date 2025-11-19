uint64_t sub_10002A444(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009EA68, &unk_10007DA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A508(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009EA68, &unk_10007DA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002A570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = a1;
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v7 = *(v3 + 136);
  v8 = *(v7 + 16);

  if (!v8)
  {
    return v6;
  }

  v10 = 0;
  v11 = v7 + 32;
  while (v10 < *(v7 + 16))
  {
    sub_10001378C(v11, v14);
    v12 = v15;
    v13 = v16;
    sub_10000751C(v14, v15);
    v6 = v5;
    (*(v13 + 24))(v17, v12, v13);
    if (v5)
    {
      sub_1000070A8(v14);

      return v6;
    }

    ++v10;
    result = sub_1000070A8(v14);
    v11 += 40;
    if (v8 == v10)
    {
      return v17[0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002A690(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  v3 = *(type metadata accessor for ServiceEventValue() - 8);
  v2[13] = v3;
  v4 = *(v3 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = *(*(sub_10000712C(&qword_10009E368, &qword_10007D3C0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10002A7C4, v1, 0);
}

uint64_t sub_10002A7C4()
{
  v125 = v0;
  v2 = v0;
  v3 = sub_10003F2A0();
  isUniquelyReferenced_nonNull_native = swift_beginAccess();
  if (*v3 != 1)
  {
    goto LABEL_57;
  }

  v5 = *(v0 + 80);
  v6 = *(v5 + 16);
  v7 = _swiftEmptyArrayStorage;
  v123 = v2;
  if (v6)
  {
    v124 = _swiftEmptyArrayStorage;
    sub_10001276C(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v8 = (v5 + 48);
    do
    {
      v9 = *(v2 + 88);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      v13 = sub_10002A570(v10, v11, v12);
      v15 = v14;
      v17 = v16;

      v124 = v7;
      v1 = v7[2];
      v18 = v7[3];
      v19 = v1 + 1;
      if (v1 >= v18 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_10001276C((v18 > 1), v1 + 1, 1);
        v7 = v124;
      }

      v7[2] = v19;
      v20 = &v7[3 * v1];
      v20[4] = v13;
      v20[5] = v15;
      v20[6] = v17;
      v8 += 3;
      --v6;
      v2 = v123;
    }

    while (v6);
LABEL_60:
    v95 = 0;
    v96 = v7 + 6;
    v21 = _swiftEmptyArrayStorage;
    while (v95 < v7[2])
    {
      v1 = *(v96 - 2);
      v97 = *(v96 - 1);
      v98 = *v96;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_10001276C(0, v21[2] + 1, 1);
        v21 = v124;
      }

      v100 = v21[2];
      v99 = v21[3];
      if (v100 >= v99 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_10001276C((v99 > 1), v100 + 1, 1);
        v21 = v124;
      }

      ++v95;
      v21[2] = v100 + 1;
      v101 = &v21[3 * v100];
      v101[4] = v1;
      v101[5] = v97;
      v101[6] = v98;
      v96 += 3;
      v2 = v123;
      if (v19 == v95)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_72;
  }

  v19 = _swiftEmptyArrayStorage[2];
  v21 = _swiftEmptyArrayStorage;
  if (v19)
  {
    goto LABEL_60;
  }

LABEL_9:
  *(v2 + 144) = v21;
  v22 = *(v2 + 88);

  v23 = *(v22 + 144);
  *(v2 + 152) = v23;
  if (!v23)
  {
    goto LABEL_54;
  }

  v24 = v21[2];
  *(v2 + 160) = v24;
  if (!v24)
  {
    goto LABEL_54;
  }

  *(v2 + 168) = 0;
  v25 = *(v2 + 144);
  v26 = *(v25 + 16);
  v27 = v23;
  if (!v26)
  {
    goto LABEL_53;
  }

  v1 = v2 + 64;
  sub_10002C4AC();
  v28 = 0;
  while (2)
  {
    v29 = *(v25 + 24 * v28 + 48);
    v21 = *(v29 + 16);

    isUniquelyReferenced_nonNull_native = sub_100079D70();
    v30 = 0;
    *v1 = isUniquelyReferenced_nonNull_native;
    v31 = v29 + 64;
    v32 = -1 << *(v29 + 32);
    if (-v32 < 64)
    {
      v33 = ~(-1 << -v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(v29 + 64);
    v35 = (63 - v32) >> 6;
    v122 = v29 + 64;
    v120 = v29;
    v121 = v35;
    while (1)
    {
      if (!v34)
      {
        if (v35 <= v30 + 1)
        {
          v40 = v30 + 1;
        }

        else
        {
          v40 = v35;
        }

        v41 = v40 - 1;
        while (1)
        {
          v39 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v39 >= v35)
          {
            v75 = *(v2 + 128);
            v76 = sub_10000712C(&unk_10009EB70, qword_10007C110);
            (*(*(v76 - 8) + 56))(v75, 1, 1, v76);
            v34 = 0;
            v30 = v41;
            goto LABEL_30;
          }

          v34 = *(v31 + 8 * v39);
          ++v30;
          if (v34)
          {
            v30 = v39;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        v83 = 0;
LABEL_74:
        *(v2 + 184) = v21;
        *(v2 + 192) = v83;
        v102 = __clz(__rbit64(v21)) | (v83 << 6);
        v103 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v102);
        v30 = *v103;
        v62 = v103[1];
        *(v2 + 200) = v62;
        v104 = *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v102);
        *(v2 + 208) = v104;
        v105 = qword_1000A2888;

        v56 = v104;
        if (v105 == -1)
        {
          goto LABEL_75;
        }

        goto LABEL_83;
      }

      v39 = v30;
LABEL_29:
      v42 = *(v2 + 120);
      v43 = *(v2 + 128);
      v44 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v45 = v44 | (v39 << 6);
      v46 = (*(v120 + 48) + 16 * v45);
      v48 = *v46;
      v47 = v46[1];
      sub_10000A908(*(v120 + 56) + *(*(v2 + 104) + 72) * v45, v42);
      v49 = sub_10000712C(&unk_10009EB70, qword_10007C110);
      v50 = *(v49 + 48);
      *v43 = v48;
      v43[1] = v47;
      sub_100012C24(v42, v43 + v50);
      (*(*(v49 - 8) + 56))(v43, 0, 1, v49);

LABEL_30:
      v51 = *(v2 + 136);
      sub_100012C88(*(v2 + 128), v51);
      v52 = sub_10000712C(&unk_10009EB70, qword_10007C110);
      if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
      {
        break;
      }

      v53 = v1;
      v54 = *(v2 + 136);
      v55 = *v54;
      v1 = v54[1];
      sub_100012C24(v54 + *(v52 + 48), *(v2 + 112));
      v56 = sub_10002FC68();
      v57 = *(v2 + 64);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v59 = v2;
      v2 = v58;
      v60 = *(v59 + 64);
      *(v59 + 72) = v60;
      v62 = sub_10000A0FC(v55, v1);
      v63 = *(v60 + 16);
      v64 = (v61 & 1) == 0;
      v65 = v63 + v64;
      if (__OFADD__(v63, v64))
      {
        __break(1u);
        goto LABEL_81;
      }

      v66 = v61;
      if (*(v60 + 24) >= v65)
      {
        if (v2)
        {
          v2 = v123;
          v21 = *(v123 + 112);
          if (v61)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v2 = v123;
          sub_10002C340();
          v21 = *(v123 + 112);
          if (v66)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v67 = v2;
        v2 = v123;
        sub_10002C09C(v65, v67);
        v68 = *(v123 + 72);
        v69 = sub_10000A0FC(v55, v1);
        if ((v66 & 1) != (v70 & 1))
        {

          return sub_10007A6C0();
        }

        v62 = v69;
        v21 = *(v123 + 112);
        if (v66)
        {
LABEL_17:

          v36 = *(v2 + 72);
          v37 = v36[7];
          v38 = *(v37 + 8 * v62);
          *(v37 + 8 * v62) = v56;

          isUniquelyReferenced_nonNull_native = sub_10000A96C(v21);
          goto LABEL_18;
        }
      }

      v36 = *(v2 + 72);
      v36[(v62 >> 6) + 8] |= 1 << v62;
      v71 = (v36[6] + 16 * v62);
      *v71 = v55;
      v71[1] = v1;
      *(v36[7] + 8 * v62) = v56;
      isUniquelyReferenced_nonNull_native = sub_10000A96C(v21);
      v72 = v36[2];
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (v73)
      {
        __break(1u);
LABEL_83:
        swift_once();
LABEL_75:
        v106 = sub_100079BA0();
        sub_1000070F4(v106, qword_1000A6CA0);

        v107 = sub_100079B80();
        v108 = sub_10007A190();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v124 = v110;
          *v109 = 136446210;
          *(v109 + 4) = sub_100006B00(v30, v62, &v124);
          _os_log_impl(&_mh_execute_header, v107, v108, "running TTR rule %{public}s", v109, 0xCu);
          sub_1000070A8(v110);
          v2 = v123;
        }

        v111 = *(v2 + 152);
        v112 = v2;
        v113 = *(v2 + 96);
        v114 = v112[11];
        sub_10002C4F8();
        v115 = swift_task_alloc();
        v112[27] = v115;
        v115[2] = v56;
        v115[3] = v111;
        v115[4] = v1;
        v115[5] = v114;
        v115[6] = v30;
        v115[7] = v62;
        v115[8] = v113;
        v116 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
        v117 = swift_task_alloc();
        v112[28] = v117;
        *v117 = v112;
        v117[1] = sub_10002B248;

        return withCheckedContinuation<A>(isolation:function:_:)();
      }

      v36[2] = v74;
LABEL_18:
      v1 = v53;
      *v53 = v36;
      v35 = v121;
      v31 = v122;
    }

    v77 = *(v2 + 88);

    v78 = *(v77 + 128);
    *(v2 + 176) = v78;
    v79 = *(v78 + 32);
    *(v2 + 232) = v79;
    v80 = -1 << v79;
    if (-(-1 << v79) < 64)
    {
      v81 = ~(-1 << -v80);
    }

    else
    {
      v81 = -1;
    }

    v21 = (v81 & *(v78 + 64));

    if (v21)
    {
      goto LABEL_73;
    }

    v82 = 0;
    while (((63 - v80) >> 6) - 1 != v82)
    {
      v83 = v82 + 1;
      v21 = *(isUniquelyReferenced_nonNull_native + 8 * v82++ + 72);
      if (v21)
      {
        goto LABEL_74;
      }
    }

    v85 = *(v2 + 160);
    v84 = *(v2 + 168);

    v86 = *(v2 + 64);

    if (v84 + 1 == v85)
    {
LABEL_81:
      v118 = *(v2 + 144);
      v119 = *(v2 + 152);

      goto LABEL_55;
    }

    v28 = *(v2 + 168) + 1;
    *(v2 + 168) = v28;
    v25 = *(v2 + 144);
    if (v28 < *(v25 + 16))
    {
      continue;
    }

    break;
  }

LABEL_53:
  __break(1u);
LABEL_54:

LABEL_55:
  swift_beginAccess();
  v87 = off_1000A6CB8;
  if (off_1000A6CB8)
  {

    v87(v88);
    sub_100029F90(v87);
  }

LABEL_57:
  v90 = *(v2 + 128);
  v89 = *(v2 + 136);
  v92 = *(v2 + 112);
  v91 = *(v2 + 120);

  v93 = *(v2 + 8);

  return v93();
}

uint64_t sub_10002B248()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 88);
  v6 = *v0;

  return _swift_task_switch(sub_10002B398, v4, 0);
}

uint64_t sub_10002B398()
{
  v89 = v1;
  v86 = v1 + 8;

  v3 = v1[24];
  v4 = (v1[23] - 1) & v1[23];
  v87 = v1;
  if (v4)
  {
    v5 = v1[22];
    goto LABEL_3;
  }

  v8 = -1;
  while (1)
  {
LABEL_11:
    v22 = __OFADD__(v3++, 1);
    if (v22)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v5 = v1[22];
    if (v3 >= (((1 << *(v1 + 232)) + 63) >> 6))
    {
      break;
    }

    v4 = *(v5 + 8 * v3 + 64);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v0 = v1[20];
  v23 = v1[21];

  v24 = v1[8];

  if (v23 + 1 != v0)
  {
    v25 = v1[21] + 1;
    v1[21] = v25;
    v26 = v1[18];
    if (v25 < *(v26 + 16))
    {
      isUniquelyReferenced_nonNull_native = *(v26 + 24 * v25 + 48);
      v27 = *(isUniquelyReferenced_nonNull_native + 16);
      sub_10002C4AC();

      v28 = sub_100079D70();
      v29 = 0;
      *v86 = v28;
      v83 = isUniquelyReferenced_nonNull_native + 64;
      v84 = isUniquelyReferenced_nonNull_native;
      v30 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
      if (-v30 < 64)
      {
        v31 = ~(-1 << -v30);
      }

      else
      {
        v31 = -1;
      }

      v32 = v31 & *(isUniquelyReferenced_nonNull_native + 64);
      v33 = (63 - v30) >> 6;
      v85 = v33;
      while (2)
      {
        if (!v32)
        {
          if (v33 <= v29 + 1)
          {
            v37 = v29 + 1;
          }

          else
          {
            v37 = v33;
          }

          v8 = v37 - 1;
          while (1)
          {
            v36 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            if (v36 >= v33)
            {
              v66 = v1[16];
              v67 = sub_10000712C(&unk_10009EB70, qword_10007C110);
              (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
              v32 = 0;
              goto LABEL_31;
            }

            v32 = *(v83 + 8 * v36);
            ++v29;
            if (v32)
            {
              goto LABEL_30;
            }
          }

          __break(1u);
          goto LABEL_53;
        }

        v36 = v29;
LABEL_30:
        v38 = v1[15];
        v39 = v1[16];
        v40 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v41 = v40 | (v36 << 6);
        v42 = (*(v84 + 48) + 16 * v41);
        v44 = *v42;
        v43 = v42[1];
        sub_10000A908(*(v84 + 56) + *(v1[13] + 72) * v41, v38);
        isUniquelyReferenced_nonNull_native = sub_10000712C(&unk_10009EB70, qword_10007C110);
        v45 = *(isUniquelyReferenced_nonNull_native + 48);
        *v39 = v44;
        v39[1] = v43;
        sub_100012C24(v38, v39 + v45);
        v1 = v87;
        (*(*(isUniquelyReferenced_nonNull_native - 8) + 56))(v39, 0, 1, isUniquelyReferenced_nonNull_native);

        v8 = v36;
LABEL_31:
        v0 = v1[17];
        sub_100012C88(v1[16], v0);
        v46 = sub_10000712C(&unk_10009EB70, qword_10007C110);
        if ((*(*(v46 - 8) + 48))(v0, 1, v46) == 1)
        {
          v68 = v1[11];

          v69 = *(v68 + 128);
          v1[22] = v69;
          v70 = *(v69 + 32);
          *(v1 + 232) = v70;
          v71 = 1 << v70;
          v8 = -1;
          if (v71 < 64)
          {
            v72 = ~(-1 << v71);
          }

          else
          {
            v72 = -1;
          }

          v4 = v72 & *(v69 + 64);

          v3 = 0;
          if (!v4)
          {
            goto LABEL_11;
          }

LABEL_3:
          v1[23] = v4;
          v1[24] = v3;
          v6 = __clz(__rbit64(v4)) | (v3 << 6);
          v7 = (*(v5 + 48) + 16 * v6);
          v8 = *v7;
          v0 = v7[1];
          v1[25] = v0;
          v9 = *(*(v5 + 56) + 8 * v6);
          v1[26] = v9;
          v10 = qword_1000A2888;

          isUniquelyReferenced_nonNull_native = v9;
          if (v10 == -1)
          {
LABEL_4:
            v11 = sub_100079BA0();
            sub_1000070F4(v11, qword_1000A6CA0);

            v12 = sub_100079B80();
            v13 = sub_10007A190();

            if (os_log_type_enabled(v12, v13))
            {
              v14 = swift_slowAlloc();
              v15 = swift_slowAlloc();
              v88 = v15;
              *v14 = 136446210;
              *(v14 + 4) = sub_100006B00(v8, v0, &v88);
              _os_log_impl(&_mh_execute_header, v12, v13, "running TTR rule %{public}s", v14, 0xCu);
              sub_1000070A8(v15);
            }

            v16 = v87[19];
            v17 = v87[11];
            v18 = v87[12];
            sub_10002C4F8();
            v19 = swift_task_alloc();
            v87[27] = v19;
            v19[2] = isUniquelyReferenced_nonNull_native;
            v19[3] = v16;
            v19[4] = v86;
            v19[5] = v17;
            v19[6] = v8;
            v19[7] = v0;
            v19[8] = v18;
            v20 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
            v21 = swift_task_alloc();
            v87[28] = v21;
            *v21 = v87;
            v21[1] = sub_10002B248;

            return withCheckedContinuation<A>(isolation:function:_:)();
          }

LABEL_62:
          swift_once();
          goto LABEL_4;
        }

        v47 = v8;
        v48 = v1[17];
        v50 = *v48;
        v49 = v48[1];
        sub_100012C24(v48 + *(v46 + 48), v1[14]);
        v51 = sub_10002FC68();
        v52 = v1[8];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v1[8];
        v1[9] = v53;
        v0 = sub_10000A0FC(v50, v49);
        v55 = *(v53 + 16);
        v56 = (v54 & 1) == 0;
        v57 = v55 + v56;
        if (__OFADD__(v55, v56))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v58 = v54;
        if (*(v53 + 24) >= v57)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v1 = v87;
            v62 = v87[14];
            if ((v54 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v1 = v87;
            sub_10002C340();
            v62 = v87[14];
            if ((v58 & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          v1 = v87;
          sub_10002C09C(v57, isUniquelyReferenced_nonNull_native);
          v59 = v87[9];
          v60 = sub_10000A0FC(v50, v49);
          if ((v58 & 1) != (v61 & 1))
          {

            return sub_10007A6C0();
          }

          v0 = v60;
          v62 = v87[14];
          if ((v58 & 1) == 0)
          {
LABEL_39:
            v8 = v1[9];
            *(v8 + 8 * (v0 >> 6) + 64) |= 1 << v0;
            v63 = (*(v8 + 48) + 16 * v0);
            *v63 = v50;
            v63[1] = v49;
            *(*(v8 + 56) + 8 * v0) = v51;
            sub_10000A96C(v62);
            v64 = *(v8 + 16);
            v22 = __OFADD__(v64, 1);
            v65 = v64 + 1;
            if (v22)
            {
              goto LABEL_59;
            }

            *(v8 + 16) = v65;
            goto LABEL_20;
          }
        }

        v8 = v1[9];
        v34 = *(v8 + 56);
        v35 = *(v34 + 8 * v0);
        *(v34 + 8 * v0) = v51;

        sub_10000A96C(v62);
LABEL_20:
        v33 = v85;
        *v86 = v8;
        v29 = v47;
        continue;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_53:
  v73 = v1[18];
  v74 = v1[19];

  swift_beginAccess();
  v75 = off_1000A6CB8;
  if (off_1000A6CB8)
  {

    v75(v76);
    sub_100029F90(v75);
  }

  v78 = v1[16];
  v77 = v1[17];
  v80 = v1[14];
  v79 = v1[15];

  v81 = v1[1];

  return v81();
}

void sub_10002BB90(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v29 = a7;
  v26 = a1;
  v27 = a6;
  v30 = a3;
  v10 = sub_10000712C(&qword_10009EB48, &qword_10007D380);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &isa - v13;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  aBlock[0] = 0;
  sub_10002C4AC();
  sub_100079D40();
  if (aBlock[0])
  {
    v15 = *a4;

    isa = sub_100079D30().super.isa;

    v16 = *(a5 + 112);
    v17 = *(a5 + 120);
    v18 = sub_100079DF0();
    v19 = sub_100079D30().super.isa;

    (*(v11 + 16))(v14, v26, v10);
    v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v21 = swift_allocObject();
    v22 = v29;
    *(v21 + 16) = v27;
    *(v21 + 24) = v22;
    (*(v11 + 32))(v21 + v20, v14, v10);
    *(v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
    aBlock[4] = sub_10002C660;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BE68;
    aBlock[3] = &unk_100096A90;
    v23 = _Block_copy(aBlock);

    v24 = isa;
    [v30 handleEvent:isa sender:v18 ruleConfig:v19 withReplyBlock:v23];
    _Block_release(v23);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002BE68(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10002BEBC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10002BF0C(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007838;

  return v8(a1);
}

unint64_t sub_10002C02C()
{
  v1 = *v0;
  sub_10007A3B0(24);

  sub_100079F00(v1[7]);
  return 0xD000000000000016;
}

uint64_t sub_10002C09C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000712C(&qword_10009EA60, &unk_10007D2C0);
  v39 = a2;
  result = sub_10007A4C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_10002C340()
{
  v1 = v0;
  sub_10000712C(&qword_10009EA60, &unk_10007D2C0);
  v2 = *v0;
  v3 = sub_10007A4B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_10002C4AC()
{
  result = qword_10009EB80;
  if (!qword_10009EB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009EB80);
  }

  return result;
}

unint64_t sub_10002C4F8()
{
  result = qword_10009EA70;
  if (!qword_10009EA70)
  {
    type metadata accessor for BackendLocal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EA70);
  }

  return result;
}

uint64_t sub_10002C584()
{
  v1 = sub_10000712C(&qword_10009EB48, &qword_10007D380);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10002C660(char a1)
{
  v3 = *(*(sub_10000712C(&qword_10009EB48, &qword_10007D380) - 8) + 80);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (qword_1000A2888 != -1)
  {
    swift_once();
  }

  v6 = sub_100079BA0();
  sub_1000070F4(v6, qword_1000A6CA0);

  v7 = sub_100079B80();
  v8 = sub_10007A150();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_100006B00(v5, v4, &v12);
    *(v9 + 12) = 1026;
    *(v9 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "TTR rule %{public}s processed event with status: %{BOOL,public}d", v9, 0x12u);
    sub_1000070A8(v10);
  }

  sub_10000712C(&qword_10009EB48, &qword_10007D380);
  return sub_10007A070();
}

uint64_t sub_10002C830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002C848()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6CD0);
  sub_1000070F4(v0, qword_1000A6CD0);
  return sub_100079B90();
}

void sub_10002C8C4(_xpc_connection_s *a1)
{
  v2 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v37 - v4;
  if (qword_1000A2990 != -1)
  {
    swift_once();
  }

  v6 = sub_100079BA0();
  sub_1000070F4(v6, qword_1000A6CD0);
  v7 = sub_100079B80();
  v8 = sub_10007A190();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "received client connection.", v9, 2u);
  }

  memset(&v37[2], 0, 32);
  xpc_connection_get_audit_token();
  token = *&v37[2];
  v10 = SecTaskCreateWithAuditToken(0, &token);
  if (v10)
  {
    v11 = v10;
    v12 = sub_100079DF0();
    v13 = SecTaskCopyValueForEntitlement(v11, v12, 0);

    if (v13)
    {
      v37[1] = v13;
      swift_unknownObjectRetain_n();
      if (swift_dynamicCast())
      {
        v14 = *token.val;
        v15 = *&token.val[2];

        v16 = sub_100079B80();
        v17 = sub_10007A190();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v37[0] = v15;
          v19 = v18;
          v20 = swift_slowAlloc();
          *token.val = v20;
          *v19 = 136315138;
          *(v19 + 4) = sub_100006B00(v14, v37[0], &token);
          _os_log_impl(&_mh_execute_header, v16, v17, "setting up XPCService for %s.", v19, 0xCu);
          sub_1000070A8(v20);

          v15 = v37[0];
        }

        v21 = dispatch_semaphore_create(0);
        v22 = sub_10007A0A0();
        (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
        v23 = swift_allocObject();
        v23[2] = 0;
        v23[3] = 0;
        v23[4] = v14;
        v23[5] = v15;
        v23[6] = v21;

        v24 = v21;
        sub_100005244(0, 0, v5, &unk_10007D390, v23);

        sub_10007A270();
        v25 = sub_100079B80();
        v26 = sub_10007A190();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "starting client connection.", v27, 2u);
        }

        swift_beginAccess();
        if (qword_1000A6CC8)
        {

          Listener.handle(message:)();

          swift_unknownObjectRelease_n();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v34 = sub_100079B80();
        v35 = sub_10007A170();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "Invalid bundle id. Canceling xpc connection.", v36, 2u);
        }

        xpc_connection_cancel(a1);
        swift_unknownObjectRelease_n();
      }
    }

    else
    {
      v31 = sub_100079B80();
      v32 = sub_10007A170();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Missing bundle id. Canceling xpc connection.", v33, 2u);
      }

      xpc_connection_cancel(a1);
    }
  }

  else
  {
    v28 = sub_100079B80();
    v29 = sub_10007A170();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to extract entitlements. Canceling xpc connection", v30, 2u);
    }

    xpc_connection_cancel(a1);
  }
}

uint64_t sub_10002CECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_10002CEF0, 0, 0);
}

uint64_t sub_10002CEF0()
{
  swift_beginAccess();
  if (qword_1000A6CC8)
  {
    v1 = v0[7];
    sub_10007A280();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[6];
    type metadata accessor for Listener();

    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_10002D018;
    v6 = v0[5];

    return Listener.__allocating_init(mode:clientBundleID:)(1, v6, v4);
  }
}

uint64_t sub_10002D018(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_10002D164, 0, 0);
  }
}

uint64_t sub_10002D164()
{
  qword_1000A6CC8 = v0[9];

  v1 = v0[7];
  sub_10007A280();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10002D1DC()
{
  v0 = swift_unknownObjectRetain();
  sub_10002C8C4(v0);

  return swift_unknownObjectRelease();
}

uint64_t sub_10002D234()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002D27C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_10002CECC(v5, v6, v7, v2, v3, v4);
}

void sub_10002D324()
{
  if (qword_1000A2990 != -1)
  {
    swift_once();
  }

  v0 = sub_100079BA0();
  sub_1000070F4(v0, qword_1000A6CD0);
  v1 = sub_100079B80();
  v2 = sub_10007A190();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "starting CloudTelemetryService XPCService.", v3, 2u);
  }

  xpc_main(sub_10002D1DC);
}

uint64_t sub_10002D410(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  sub_10000751C(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 16);
  sub_1000315EC(v5, sub_1000304DC, 0, isUniquelyReferenced_nonNull_native, &v9);

  *(v2 + 16) = v9;
  return result;
}

uint64_t sub_10002D4BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for ServiceEventValue();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v63 - v12;
  __chkstk_darwin(v11);
  v15 = &v63 - v14;
  sub_10000978C(a1, v77);
  if (swift_dynamicCast())
  {
    v16 = *(&v75 + 1);
    *a2 = v75;
    a2[1] = v16;
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return sub_1000070A8(v77);
  }

  v70 = v15;
  sub_100007670(0, &qword_10009EC80, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v17 = v75;
    if (kCFBooleanTrue)
    {
      v18 = v75 == kCFBooleanTrue;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {

      *a2 = 1;
      goto LABEL_16;
    }

    if (kCFBooleanFalse)
    {
      if (v17 == kCFBooleanFalse)
      {
        *a2 = 0;
        goto LABEL_16;
      }
    }
  }

  if (swift_dynamicCast())
  {
    *a2 = v75;
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    *a2 = v75;
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    *a2 = v75;
    goto LABEL_16;
  }

  sub_10000712C(&qword_10009E290, qword_10007BD90);
  v20 = swift_dynamicCast();
  v67 = v6;
  if (!v20)
  {
    sub_10000712C(&qword_10009EC90, &qword_10007D678);
    if (swift_dynamicCast())
    {
      v63 = a2;
      v64 = v5;
      v56 = v72;
      v57 = sub_100030C68(0, *(v72 + 16), 0, _swiftEmptyArrayStorage);
      v58 = *(v56 + 16);
      if (v58)
      {
        v59 = 0;
        v60 = v56 + 32;
        while (1)
        {
          if (v59 >= *(v56 + 16))
          {
            goto LABEL_67;
          }

          sub_10000978C(v60, &v75);
          sub_10002D4BC(&v75);
          if (v2)
          {
            break;
          }

          sub_1000070A8(&v75);
          v62 = v57[2];
          v61 = v57[3];
          if (v62 >= v61 >> 1)
          {
            v57 = sub_100030C68(v61 > 1, v62 + 1, 1, v57);
          }

          ++v59;
          v57[2] = v62 + 1;
          sub_100012C24(v10, v57 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v62);
          v60 += 32;
          if (v58 == v59)
          {
            goto LABEL_62;
          }
        }

        sub_1000070A8(&v75);
      }

      else
      {
LABEL_62:

        *v63 = v57;
        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      sub_10003287C();
      swift_allocError();
      swift_willThrow();
    }

    return sub_1000070A8(v77);
  }

  v63 = a2;
  v69 = v2;
  v21 = v78;
  v22 = *(v78 + 16);
  v64 = v5;
  v23 = sub_100079D70();
  v24 = 0;
  v26 = v21 + 64;
  v25 = *(v21 + 64);
  v65 = v21;
  v27 = 1 << *(v21 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v25;
  v30 = (v27 + 63) >> 6;
  v68 = v13;
  v66 = v21 + 64;
  while (v29)
  {
    v31 = v24;
LABEL_35:
    v34 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v35 = v34 | (v31 << 6);
    v36 = (*(v65 + 48) + 16 * v35);
    v38 = *v36;
    v37 = v36[1];
    sub_10000978C(*(v65 + 56) + 32 * v35, v71);
    *&v72 = v38;
    *(&v72 + 1) = v37;
    sub_100032BD8(v71, &v73);

    v33 = v31;
LABEL_36:
    v75 = v72;
    v76[0] = v73;
    v76[1] = v74;
    v39 = *(&v72 + 1);
    v40 = v70;
    if (!*(&v72 + 1))
    {

      *v63 = v23;
      swift_storeEnumTagMultiPayload();
      return sub_1000070A8(v77);
    }

    v41 = v75;
    sub_100032BD8(v76, &v72);
    v42 = v69;
    sub_10002D4BC(&v72);
    v69 = v42;
    if (v42)
    {
      sub_1000070A8(&v72);

      return sub_1000070A8(v77);
    }

    sub_100012C24(v40, v68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v23;
    v45 = sub_10000A0FC(v41, v39);
    v46 = v23[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_65;
    }

    v49 = v44;
    if (v23[3] >= v48)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v44)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1000308CC();
        if (v49)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_10003057C(v48, isUniquelyReferenced_nonNull_native);
      v50 = sub_10000A0FC(v41, v39);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_68;
      }

      v45 = v50;
      if (v49)
      {
LABEL_24:

        v23 = *&v71[0];
        sub_100032B04(v68, *(*&v71[0] + 56) + *(v67 + 72) * v45);
        sub_1000070A8(&v72);
        goto LABEL_25;
      }
    }

    v23 = *&v71[0];
    *(*&v71[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
    v52 = (v23[6] + 16 * v45);
    *v52 = v41;
    v52[1] = v39;
    sub_100012C24(v68, v23[7] + *(v67 + 72) * v45);
    sub_1000070A8(&v72);
    v53 = v23[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_66;
    }

    v23[2] = v55;
LABEL_25:
    v24 = v33;
    v26 = v66;
  }

  if (v30 <= v24 + 1)
  {
    v32 = v24 + 1;
  }

  else
  {
    v32 = v30;
  }

  v33 = v32 - 1;
  while (1)
  {
    v31 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v31 >= v30)
    {
      v29 = 0;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      goto LABEL_36;
    }

    v29 = *(v26 + 8 * v31);
    ++v24;
    if (v29)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

uint64_t sub_10002DC6C(uint64_t a1, uint64_t a2)
{
  sub_1000319BC(a2);
  if (v2)
  {
    return v4;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10002DCBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_10003236C(v14, v11, type metadata accessor for ServiceEventValue);
        sub_10003236C(v15, v8, type metadata accessor for ServiceEventValue);
        v17 = sub_100031CFC(v11, v8);
        sub_1000323D4(v8, type metadata accessor for ServiceEventValue);
        sub_1000323D4(v11, type metadata accessor for ServiceEventValue);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_10002DE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v51 - v10;
  v12 = sub_10000712C(&qword_10009E368, &qword_10007D3C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v55 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = a2;
  v54 = (&v51 - v17);
  v18 = 0;
  v52 = a1;
  v19 = *(a1 + 64);
  v51 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  while (v22)
  {
    v56 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v18 << 6);
    v25 = v55;
LABEL_16:
    v30 = (*(v52 + 48) + 16 * v24);
    v31 = *v30;
    v32 = v30[1];
    sub_10003236C(*(v52 + 56) + *(v5 + 72) * v24, v11, type metadata accessor for ServiceEventValue);
    v33 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    v34 = *(v33 + 48);
    *v25 = v31;
    v25[1] = v32;
    sub_100012C24(v11, v25 + v34);
    (*(*(v33 - 8) + 56))(v25, 0, 1, v33);

LABEL_17:
    v35 = v54;
    sub_100032BF0(v25, v54, &qword_10009E368, &qword_10007D3C0);
    v36 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = v11;
    v40 = v5;
    v41 = *(v36 + 48);
    v43 = *v35;
    v42 = v35[1];
    sub_100012C24(v35 + v41, v9);
    v44 = v53;
    v45 = sub_10000A0FC(v43, v42);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      sub_1000323D4(v9, type metadata accessor for ServiceEventValue);
      return 0;
    }

    v48 = *(v44 + 56);
    v5 = v40;
    v11 = v39;
    sub_10003236C(v48 + *(v40 + 72) * v45, v39, type metadata accessor for ServiceEventValue);
    v49 = sub_100031CFC(v39, v9);
    sub_1000323D4(v39, type metadata accessor for ServiceEventValue);
    result = sub_1000323D4(v9, type metadata accessor for ServiceEventValue);
    v22 = v56;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v23 <= v18 + 1)
  {
    v26 = v18 + 1;
  }

  else
  {
    v26 = v23;
  }

  v27 = v26 - 1;
  v25 = v55;
  while (1)
  {
    v28 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v50 = sub_10000712C(&unk_10009EB70, qword_10007C110);
      (*(*(v50 - 8) + 56))(v25, 1, 1, v50);
      v56 = 0;
      v18 = v27;
      goto LABEL_17;
    }

    v29 = *(v51 + 8 * v28);
    ++v18;
    if (v29)
    {
      v56 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v18 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002E2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XPCObject();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ServiceEventValue();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003236C(a1, v7, type metadata accessor for XPCObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1000323D4(a1, type metadata accessor for XPCObject);
        *v12 = *v7;
        goto LABEL_19;
      }

      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload <= 8)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_29;
      }

      sub_1000323D4(a1, type metadata accessor for XPCObject);
      v23 = *(v7 + 1);
      *v12 = *v7;
      *(v12 + 1) = v23;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v21 = 0;
      v22 = 0;
      goto LABEL_20;
    }

LABEL_12:
    sub_1000323D4(a1, type metadata accessor for XPCObject);
    *v12 = *v7;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 9)
  {
    sub_1000323D4(a1, type metadata accessor for XPCObject);
    v24 = sub_100079A70();
    (*(*(v24 - 8) + 32))(v12, v7, v24);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 11)
  {
    if (EnumCaseMultiPayload == 12)
    {
      v14 = *v7;
      v41 = sub_100032434(_swiftEmptyArrayStorage);
      count = xpc_dictionary_get_count(v14);
      sub_10000712C(&unk_10009EB50, &unk_10007D3B0);
      sub_100079D80(count);
      v16 = swift_allocObject();
      *(v16 + 16) = &v41;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_100032608;
      *(v17 + 24) = v16;
      v39 = sub_100032638;
      v40 = v17;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_10002F120;
      v38 = &unk_100096B50;
      v18 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      xpc_dictionary_apply(v14, v18);
      _Block_release(v18);
      swift_unknownObjectRelease_n();
      sub_1000323D4(a1, type metadata accessor for XPCObject);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        *v12 = v41;
        swift_storeEnumTagMultiPayload();
        v21 = 0;
        v22 = sub_100032608;
LABEL_20:
        sub_100012C24(v12, a2);
        (*(v9 + 56))(a2, 0, 1, v8);
        sub_100029F90(v21);
        return sub_100029F90(v22);
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_29:
    sub_1000323D4(a1, type metadata accessor for XPCObject);
    sub_1000323D4(v7, type metadata accessor for XPCObject);
    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  v25 = *v7;
  v26 = xpc_array_get_count(*v7);
  v27 = _swiftEmptyArrayStorage;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v26 > _swiftEmptyArrayStorage[3] >> 1)
  {
    if (_swiftEmptyArrayStorage[2] <= v26)
    {
      v29 = v26;
    }

    else
    {
      v29 = _swiftEmptyArrayStorage[2];
    }

    v27 = sub_100030C68(isUniquelyReferenced_nonNull_native, v29, 0, _swiftEmptyArrayStorage);
  }

  v41 = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = &v41;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10003267C;
  *(v31 + 24) = v30;
  v39 = sub_1000326A0;
  v40 = v31;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_10002ECCC;
  v38 = &unk_100096BC8;
  v32 = _Block_copy(&aBlock);

  xpc_array_apply(v25, v32);
  _Block_release(v32);
  swift_unknownObjectRelease();
  sub_1000323D4(a1, type metadata accessor for XPCObject);
  v33 = swift_isEscapingClosureAtFileLocation();

  if ((v33 & 1) == 0)
  {
    *v12 = v41;
    swift_storeEnumTagMultiPayload();
    v22 = 0;
    v21 = sub_10003267C;
    goto LABEL_20;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10002E9F8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_10007A3E0();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_10007A4A0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_10002EA94(uint64_t a1, void **a2)
{
  v3 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v11, v6);
  v12 = type metadata accessor for XPCObject();
  result = (*(*(v12 - 8) + 48))(v6, 1, v12);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_10002E2D8(v6);
  v14 = type metadata accessor for ServiceEventValue();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v10, 1, v14);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v16 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_100030C68(0, v16[2] + 1, 1, v16);
    *a2 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_100030C68(v18 > 1, v19 + 1, 1, v16);
    *a2 = v16;
  }

  v16[2] = v19 + 1;
  return sub_100012C24(v10, v16 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v19);
}

uint64_t sub_10002ECD4()
{
  v0 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v22 - v2;
  v4 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = type metadata accessor for ServiceEventValue();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100079F10();
  v18 = v17;
  v19 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v19, v3);
  v20 = type metadata accessor for XPCObject();
  result = (*(*(v20 - 8) + 48))(v3, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10002E2D8(v3);
    result = (*(v12 + 48))(v10, 1, v11);
    if (result != 1)
    {
      sub_100012C24(v10, v15);
      sub_10003236C(v15, v8, type metadata accessor for ServiceEventValue);
      (*(v12 + 56))(v8, 0, 1, v11);
      sub_10002EF60(v8, v16, v18);
      return sub_1000323D4(v15, type metadata accessor for ServiceEventValue);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002EF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ServiceEventValue();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1000096C4(a1, &qword_10009FC90, &qword_10007C910);
    sub_100030B10(a2, a3, v10);

    return sub_1000096C4(v10, &qword_10009FC90, &qword_10007C910);
  }

  else
  {
    sub_100012C24(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10003102C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_10002F128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  v7 = v6(a2, a3);
  swift_unknownObjectRelease();
  return v7 & 1;
}

uint64_t sub_10002F188()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10002F1B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_10002F1C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007A5E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002F208(uint64_t a1)
{
  v2 = sub_1000326CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002F244(uint64_t a1)
{
  v2 = sub_1000326CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002F280(void *a1)
{
  v3 = sub_10000712C(&qword_10009E368, &qword_10007D3C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v83 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = (&v73 - v7);
  v78 = sub_10000712C(&qword_10009EB60, qword_10007D3C8);
  v73 = *(v78 - 8);
  v9 = *(v73 + 64);
  __chkstk_darwin(v78);
  v79 = &v73 - v10;
  v11 = sub_100079A70();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ServiceEventValue();
  v80 = *(v16 - 8);
  v17 = *(v80 + 64);
  v18 = __chkstk_darwin(v16);
  v77 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v76 = &v73 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v73 - v23;
  __chkstk_darwin(v22);
  v26 = (&v73 - v25);
  sub_10003236C(v82, &v73 - v25, type metadata accessor for ServiceEventValue);
  v82 = v16;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v33 = *v26;
        v34 = a1[4];
        sub_10000751C(a1, a1[3]);
        sub_10007A7B0();
        sub_100032778(v84, v85);
        sub_10007A680();
      }

      else
      {
        v43 = *v26;
        v44 = a1[4];
        sub_10000751C(a1, a1[3]);
        sub_10007A7B0();
        sub_100032778(v84, v85);
        sub_10007A660();
      }

      return sub_1000070A8(v84);
    }

    if (!EnumCaseMultiPayload)
    {
      v29 = *v26;
      v28 = v26[1];
      v30 = a1[4];
      sub_10000751C(a1, a1[3]);
      sub_10007A7B0();
      sub_100032778(v84, v85);
      sub_10007A640();
LABEL_19:

      return sub_1000070A8(v84);
    }

    v40 = *v26;
    v41 = a1[4];
    sub_10000751C(a1, a1[3]);
    sub_10007A7B0();
    sub_100032778(v84, v85);
    sub_10007A670();
    return sub_1000070A8(v84);
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      (*(v12 + 32))(v15, v26, v11);
      v42 = a1[4];
      sub_10000751C(a1, a1[3]);
      sub_10007A7B0();
      sub_100079A10();
      sub_100032778(v84, v85);
      sub_10007A640();
      (*(v12 + 8))(v15, v11);
      goto LABEL_19;
    }

    v31 = *v26;
    v32 = a1[4];
    sub_10000751C(a1, a1[3]);
    sub_10007A7B0();
    sub_100032778(v84, v85);
    sub_10007A650();
    return sub_1000070A8(v84);
  }

  if (EnumCaseMultiPayload == 6)
  {
    v35 = *v26;
    v36 = a1[4];
    sub_10000751C(a1, a1[3]);
    result = sub_10007A7A0();
    v38 = *(v35 + 16);
    if (!v38)
    {
      goto LABEL_19;
    }

    v39 = 0;
    while (v39 < *(v35 + 16))
    {
      sub_10003236C(v35 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v39, v24, type metadata accessor for ServiceEventValue);
      sub_100032778(v84, v85);
      sub_100032720();
      sub_10007A600();
      if (v1)
      {
        sub_1000323D4(v24, type metadata accessor for ServiceEventValue);
        goto LABEL_19;
      }

      ++v39;
      result = sub_1000323D4(v24, type metadata accessor for ServiceEventValue);
      if (v38 == v39)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_44;
  }

  v45 = *v26;
  v46 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_1000326CC();
  result = sub_10007A7C0();
  v47 = 0;
  v49 = v45 + 64;
  v48 = *(v45 + 64);
  v74 = v8;
  v75 = v45;
  v50 = 1 << *(v45 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v48;
  v53 = (v50 + 63) >> 6;
  v81 = v1;
  if ((v51 & v48) == 0)
  {
LABEL_26:
    if (v53 <= v47 + 1)
    {
      v55 = v47 + 1;
    }

    else
    {
      v55 = v53;
    }

    v56 = v55 - 1;
    while (1)
    {
      v54 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v54 >= v53)
      {
        v72 = sub_10000712C(&unk_10009EB70, qword_10007C110);
        (*(*(v72 - 8) + 56))(v83, 1, 1, v72);
        v52 = 0;
        goto LABEL_34;
      }

      v52 = *(v49 + 8 * v54);
      ++v47;
      if (v52)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  while (1)
  {
    v54 = v47;
LABEL_33:
    v57 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v58 = v57 | (v54 << 6);
    v59 = v76;
    v60 = (*(v75 + 48) + 16 * v58);
    v61 = *v60;
    v62 = v60[1];
    sub_10003236C(*(v75 + 56) + *(v80 + 72) * v58, v76, type metadata accessor for ServiceEventValue);
    v63 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    v64 = *(v63 + 48);
    v65 = v83;
    *v83 = v61;
    v65[1] = v62;
    sub_100012C24(v59, v65 + v64);
    (*(*(v63 - 8) + 56))(v65, 0, 1, v63);

    v56 = v54;
    v8 = v74;
LABEL_34:
    sub_100032BF0(v83, v8, &qword_10009E368, &qword_10007D3C0);
    v66 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    if ((*(*(v66 - 8) + 48))(v8, 1, v66) == 1)
    {

      return (*(v73 + 8))(v79, v78);
    }

    v67 = v56;
    v69 = *v8;
    v68 = v8[1];
    v70 = v77;
    sub_100012C24(v8 + *(v66 + 48), v77);
    v84[0] = v69;
    v84[1] = v68;
    sub_100032720();
    v71 = v81;
    sub_10007A5C0();
    if (v71)
    {
      break;
    }

    result = sub_1000323D4(v70, type metadata accessor for ServiceEventValue);
    v47 = v67;
    v81 = 0;
    if (!v52)
    {
      goto LABEL_26;
    }
  }

  sub_1000323D4(v70, type metadata accessor for ServiceEventValue);
  return (*(v73 + 8))(v79, v78);
}

Class sub_10002FC68()
{
  v1 = sub_10000712C(&qword_10009E368, &qword_10007D3C0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v86 = (&v79 - v6);
  v7 = sub_100079A70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServiceEventValue();
  v85 = *(v12 - 8);
  v13 = *(v85 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v87 = &v79 - v18;
  v19 = __chkstk_darwin(v17);
  v84 = &v79 - v20;
  __chkstk_darwin(v19);
  v22 = &v79 - v21;
  sub_10003236C(v0, &v79 - v21, type metadata accessor for ServiceEventValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        return [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*v22];
      }

      else
      {
        return [objc_allocWithZone(NSNumber) initWithDouble:*v22];
      }
    }

    if (EnumCaseMultiPayload)
    {
      return [objc_allocWithZone(NSNumber) initWithLongLong:*v22];
    }

    v24 = *v22;
    v25 = *(v22 + 1);
    isa = sub_100079DF0();
LABEL_49:
    v78 = isa;

    return v78;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      return [objc_allocWithZone(NSNumber) initWithBool:*v22];
    }

    (*(v8 + 32))(v11, v22, v7);
    v34.super.isa = sub_100079A20().super.isa;
    (*(v8 + 8))(v11, v7);
    return v34.super.isa;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v28 = *v22;
    v88 = _swiftEmptyArrayStorage;
    sub_10002E9F8(*(v28 + 16));
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = v28 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v31 = *(v85 + 72);
      do
      {
        v32 = sub_10003236C(v30, v16, type metadata accessor for ServiceEventValue);
        sub_10002FC68(v32);
        sub_100079FD0();
        if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v33 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10007A000();
        }

        sub_10007A020();
        sub_1000323D4(v16, type metadata accessor for ServiceEventValue);
        v30 += v31;
        --v29;
      }

      while (v29);
    }

    sub_100007670(0, &qword_10009EB80, NSObject_ptr);
    isa = sub_100079FE0().super.isa;
    goto LABEL_49;
  }

  v35 = *v22;
  v36 = *(*v22 + 16);
  v79 = sub_100007670(0, &qword_10009EB80, NSObject_ptr);
  v37 = sub_100079D70();
  v38 = 0;
  v39 = *(v35 + 64);
  v80 = v35 + 64;
  v81 = v35;
  v40 = 1 << *(v35 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v39;
  v43 = (v40 + 63) >> 6;
  v82 = v5;
  v83 = v43;
  while (v42)
  {
    v46 = v38;
LABEL_34:
    v49 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v50 = v49 | (v46 << 6);
    v51 = (*(v81 + 48) + 16 * v50);
    v53 = *v51;
    v52 = v51[1];
    v54 = v84;
    sub_10003236C(*(v81 + 56) + *(v85 + 72) * v50, v84, type metadata accessor for ServiceEventValue);
    v55 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    v56 = *(v55 + 48);
    *v5 = v53;
    v5[1] = v52;
    sub_100012C24(v54, v5 + v56);
    (*(*(v55 - 8) + 56))(v5, 0, 1, v55);

    v48 = v46;
LABEL_35:
    v57 = v86;
    sub_100032BF0(v5, v86, &qword_10009E368, &qword_10007D3C0);
    v58 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
    {

      v34.super.isa = sub_100079D30().super.isa;

      return v34.super.isa;
    }

    v60 = *v57;
    v59 = v57[1];
    v61 = sub_100012C24(v57 + *(v58 + 48), v87);
    v62 = sub_10002FC68(v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v37;
    v65 = sub_10000A0FC(v60, v59);
    v66 = v37[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_53;
    }

    v69 = v64;
    if (v37[3] >= v68)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v64)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_10002C340();
        if (v69)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_10002C09C(v68, isUniquelyReferenced_nonNull_native);
      v70 = sub_10000A0FC(v60, v59);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_55;
      }

      v65 = v70;
      if (v69)
      {
LABEL_23:

        v37 = v88;
        v44 = *(v88 + 56);
        v45 = *(v44 + 8 * v65);
        *(v44 + 8 * v65) = v62;

        sub_1000323D4(v87, type metadata accessor for ServiceEventValue);
        goto LABEL_24;
      }
    }

    v72 = v87;
    v37 = v88;
    *(v88 + 8 * (v65 >> 6) + 64) |= 1 << v65;
    v73 = (v37[6] + 16 * v65);
    *v73 = v60;
    v73[1] = v59;
    *(v37[7] + 8 * v65) = v62;
    sub_1000323D4(v72, type metadata accessor for ServiceEventValue);
    v74 = v37[2];
    v75 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    if (v75)
    {
      goto LABEL_54;
    }

    v37[2] = v76;
LABEL_24:
    v38 = v48;
    v5 = v82;
    v43 = v83;
  }

  if (v43 <= v38 + 1)
  {
    v47 = v38 + 1;
  }

  else
  {
    v47 = v43;
  }

  v48 = v47 - 1;
  while (1)
  {
    v46 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v46 >= v43)
    {
      v77 = sub_10000712C(&unk_10009EB70, qword_10007C110);
      (*(*(v77 - 8) + 56))(v5, 1, 1, v77);
      v42 = 0;
      goto LABEL_35;
    }

    v42 = *(v80 + 8 * v46);
    ++v38;
    if (v42)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

uint64_t sub_1000304DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(sub_10000712C(&unk_10009EB70, qword_10007C110) + 48);
  v5 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
  v7 = *a1;
  v6 = a1[1];
  sub_10003236C(a1 + v4, a2 + *(v5 + 48), type metadata accessor for ServiceEventValue);
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_10003057C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ServiceEventValue();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_10000712C(&qword_10009EC68, &unk_10007E1D0);
  v44 = a2;
  result = sub_10007A4C0();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_100012C24(v31, v45);
      }

      else
      {
        sub_10003236C(v31, v45, type metadata accessor for ServiceEventValue);
      }

      v32 = *(v12 + 40);
      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_100012C24(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void *sub_1000308CC()
{
  v1 = v0;
  v2 = type metadata accessor for ServiceEventValue();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000712C(&qword_10009EC68, &unk_10007E1D0);
  v5 = *v0;
  v6 = sub_10007A4B0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_10003236C(*(v5 + 56) + v27, v31, type metadata accessor for ServiceEventValue);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_100012C24(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_100030B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10000A0FC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000308CC();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for ServiceEventValue();
    v22 = *(v15 - 8);
    sub_100012C24(v14 + *(v22 + 72) * v9, a3);
    sub_100030E40(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ServiceEventValue();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

size_t sub_100030C68(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000712C(&qword_10009EC60, &unk_10007D660);
  v10 = *(type metadata accessor for ServiceEventValue() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ServiceEventValue() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100030E40(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007A2F0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10007A730();

      sub_100079EC0();
      v13 = sub_10007A760();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for ServiceEventValue() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10003102C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000A0FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000308CC();
      goto LABEL_7;
    }

    sub_10003057C(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_10000A0FC(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_10007A6C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for ServiceEventValue() - 8) + 72) * v12;

    return sub_100032B04(a1, v20);
  }

LABEL_13:
  sub_100031190(v12, a2, a3, a1, v18);
}

uint64_t sub_100031190(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ServiceEventValue();
  result = sub_100012C24(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100031228@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000712C(&unk_10009EB70, qword_10007C110);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v6 = &v44 - v5;
  v7 = type metadata accessor for ServiceEventValue();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000712C(&qword_10009E368, &qword_10007D3C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v18 = (&v44 - v17);
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  v44 = v6;
  v49 = v22;
  if (v23)
  {
    v45 = a1;
    v24 = v21;
LABEL_11:
    v28 = (v23 - 1) & v23;
    v29 = __clz(__rbit64(v23)) | (v24 << 6);
    v30 = (*(v19 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    sub_10003236C(*(v19 + 56) + *(v46 + 72) * v29, v10, type metadata accessor for ServiceEventValue);
    v33 = v48;
    v34 = *(v48 + 48);
    *v18 = v32;
    v18[1] = v31;
    v35 = v10;
    v36 = v33;
    sub_100012C24(v35, v18 + v34);
    v37 = v47;
    (*(v47 + 56))(v18, 0, 1, v36);

    v27 = v24;
    v38 = v37;
    a1 = v45;
LABEL_12:
    *v1 = v19;
    v1[1] = v20;
    v1[2] = v49;
    v1[3] = v27;
    v1[4] = v28;
    v39 = v1[5];
    v40 = v1[6];
    sub_100032BF0(v18, v15, &qword_10009E368, &qword_10007D3C0);
    v41 = 1;
    if ((*(v38 + 48))(v15, 1, v36) != 1)
    {
      v42 = v44;
      sub_100032BF0(v15, v44, &unk_10009EB70, qword_10007C110);
      v39(v42);
      sub_1000096C4(v42, &unk_10009EB70, qword_10007C110);
      v41 = 0;
    }

    v43 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
    return (*(*(v43 - 8) + 56))(a1, v41, 1, v43);
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v38 = v47;
        v36 = v48;
        (*(v47 + 56))(&v44 - v17, 1, 1, v48);
        v28 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000315EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for ServiceEventValue();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v48 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v47 - v14;
  v16 = sub_10000712C(&qword_10009EC98, &unk_10007D680);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = (&v47 - v18);
  v20 = -1 << *(a1 + 32);
  v21 = ~v20;
  v22 = *(a1 + 64);
  v23 = -v20;
  v49 = a1;
  v50 = a1 + 64;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v51 = v21;
  v52 = 0;
  v53 = v24 & v22;
  v54 = a2;
  v55 = a3;

  v47 = a3;

  while (1)
  {
    sub_100031228(v19);
    v27 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
    if ((*(*(v27 - 8) + 48))(v19, 1, v27) == 1)
    {
      sub_100032BE8();
    }

    v28 = *(v27 + 48);
    v29 = *v19;
    v30 = v19[1];
    sub_100012C24(v19 + v28, v15);
    v31 = *a5;
    v33 = sub_10000A0FC(v29, v30);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if (a4)
      {
        v41 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1000308CC();
        v41 = *a5;
        if ((v37 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v25 = *(v56 + 72) * v33;
      v26 = v48;
      sub_10003236C(v41[7] + v25, v48, type metadata accessor for ServiceEventValue);
      sub_1000323D4(v15, type metadata accessor for ServiceEventValue);

      sub_100032B04(v26, v41[7] + v25);
      a4 = 1;
    }

    else
    {
      sub_10003057C(v36, a4 & 1);
      v38 = *a5;
      v39 = sub_10000A0FC(v29, v30);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_21;
      }

      v33 = v39;
      v41 = *a5;
      if (v37)
      {
        goto LABEL_5;
      }

LABEL_14:
      v41[(v33 >> 6) + 8] |= 1 << v33;
      v42 = (v41[6] + 16 * v33);
      *v42 = v29;
      v42[1] = v30;
      sub_100012C24(v15, v41[7] + *(v56 + 72) * v33);
      v43 = v41[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_20;
      }

      v41[2] = v45;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ServiceEventValue()
{
  result = qword_1000A2DA0;
  if (!qword_1000A2DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000319BC(uint64_t a1)
{
  v21[0] = a1;
  v1 = type metadata accessor for ServiceEventValue();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100079E70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100079E60();
  v10 = sub_100079E30();
  v12 = v11;

  (*(v6 + 8))(v9, v5);
  if (v12 >> 60 == 15)
  {

    sub_10003287C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v14 = objc_opt_self();
    isa = sub_100079910().super.isa;
    v22 = 0;
    v16 = [v14 JSONObjectWithData:isa options:0 error:&v22];

    v17 = v22;
    if (v16)
    {
      sub_10007A2D0();
      swift_unknownObjectRelease();
      v18 = v21[1];
      sub_10002D4BC(v23, v4);
      if (v18)
      {
        sub_1000070A8(v23);
        sub_1000071C8(v10, v12);
      }

      else if (swift_getEnumCaseMultiPayload() == 7)
      {
        sub_1000070A8(v23);
        sub_1000071C8(v10, v12);
        v20 = *v4;
        return v21[0];
      }

      else
      {

        sub_1000323D4(v4, type metadata accessor for ServiceEventValue);
        sub_10003287C();
        swift_allocError();
        swift_willThrow();
        sub_1000071C8(v10, v12);
        return sub_1000070A8(v23);
      }
    }

    else
    {
      v19 = v17;

      sub_1000797A0();

      swift_willThrow();
      return sub_1000071C8(v10, v12);
    }
  }
}

uint64_t sub_100031CFC(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v3 = sub_100079A70();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  __chkstk_darwin(v3);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServiceEventValue();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v63 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v62 = (&v60 - v11);
  v12 = __chkstk_darwin(v10);
  v64 = &v60 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v60 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = (&v60 - v18);
  v20 = __chkstk_darwin(v17);
  v22 = (&v60 - v21);
  v23 = __chkstk_darwin(v20);
  v25 = (&v60 - v24);
  __chkstk_darwin(v23);
  v27 = (&v60 - v26);
  v28 = sub_10000712C(&qword_10009EC78, &unk_10007E8D0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = &v60 - v31;
  v33 = (&v60 + *(v30 + 56) - v31);
  sub_10003236C(v67, &v60 - v31, type metadata accessor for ServiceEventValue);
  v34 = a2;
  v35 = v33;
  sub_10003236C(v34, v33, type metadata accessor for ServiceEventValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10003236C(v32, v22, type metadata accessor for ServiceEventValue);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v46 = *v22;
LABEL_23:
          v50 = v46 == *v33;
          goto LABEL_28;
        }
      }

      else
      {
        sub_10003236C(v32, v19, type metadata accessor for ServiceEventValue);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v50 = *v19 == *v33;
LABEL_28:
          v45 = v50;
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_10003236C(v32, v27, type metadata accessor for ServiceEventValue);
        v38 = *v27;
        v37 = v27[1];
        if (!swift_getEnumCaseMultiPayload())
        {
          v39 = *v33;
          v40 = v33[1];
          if (v38 == *v35 && v37 == v40)
          {
            v59 = v35[1];
          }

          else
          {
            v42 = v35[1];
            v43 = sub_10007A610();

            if ((v43 & 1) == 0)
            {
              sub_1000323D4(v32, type metadata accessor for ServiceEventValue);
LABEL_38:
              v45 = 0;
              return v45 & 1;
            }
          }

          sub_1000323D4(v32, type metadata accessor for ServiceEventValue);
          v45 = 1;
          return v45 & 1;
        }

        goto LABEL_35;
      }

      sub_10003236C(v32, v25, type metadata accessor for ServiceEventValue);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v46 = *v25;
        goto LABEL_23;
      }
    }

LABEL_37:
    sub_1000096C4(v32, &qword_10009EC78, &unk_10007E8D0);
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v47 = v62;
      sub_10003236C(v32, v62, type metadata accessor for ServiceEventValue);
      v48 = *v47;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v49 = sub_10002DCBC(v48, *v33);
LABEL_33:
        v45 = v49;

LABEL_34:
        sub_1000323D4(v32, type metadata accessor for ServiceEventValue);
        return v45 & 1;
      }
    }

    else
    {
      v56 = v63;
      sub_10003236C(v32, v63, type metadata accessor for ServiceEventValue);
      v57 = *v56;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v49 = sub_10002DE64(v57, *v33);
        goto LABEL_33;
      }
    }

LABEL_35:

    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v51 = v64;
    sub_10003236C(v32, v64, type metadata accessor for ServiceEventValue);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      (*(v65 + 8))(v51, v66);
      goto LABEL_37;
    }

    v52 = v65;
    v53 = v61;
    v54 = v66;
    (*(v65 + 32))(v61, v33, v66);
    v45 = sub_100079A30();
    v55 = *(v52 + 8);
    v55(v53, v54);
    v55(v51, v54);
    goto LABEL_34;
  }

  sub_10003236C(v32, v16, type metadata accessor for ServiceEventValue);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_37;
  }

  v44 = *v16 ^ *v33;
  sub_1000323D4(v32, type metadata accessor for ServiceEventValue);
  v45 = v44 ^ 1;
  return v45 & 1;
}

uint64_t sub_10003236C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000323D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100032434(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000712C(&qword_10009EC68, &unk_10007E1D0);
    v8 = sub_10007A4D0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100032B68(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10000A0FC(*v6, v13);
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
      v19 = type metadata accessor for ServiceEventValue();
      result = sub_100012C24(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100032608()
{
  v1 = *(v0 + 16);
  sub_10002ECD4();
  return 1;
}

uint64_t sub_100032638()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_100032664(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000326A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

unint64_t sub_1000326CC()
{
  result = qword_10009EB68;
  if (!qword_10009EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EB68);
  }

  return result;
}

unint64_t sub_100032720()
{
  result = qword_10009DFA8;
  if (!qword_10009DFA8)
  {
    type metadata accessor for ServiceEventValue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009DFA8);
  }

  return result;
}

uint64_t sub_100032778(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1000327CC()
{
  result = qword_10009EB88;
  if (!qword_10009EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EB88);
  }

  return result;
}

unint64_t sub_100032824()
{
  result = qword_10009EB90;
  if (!qword_10009EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EB90);
  }

  return result;
}

unint64_t sub_10003287C()
{
  result = qword_10009EB98;
  if (!qword_10009EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EB98);
  }

  return result;
}

void sub_100032940()
{
  sub_100079A70();
  if (v0 <= 0x3F)
  {
    sub_1000329FC();
    if (v1 <= 0x3F)
    {
      sub_10000ACA0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1000329FC()
{
  if (!qword_10009EC10[0])
  {
    type metadata accessor for ServiceEventValue();
    v0 = sub_10007A030();
    if (!v1)
    {
      atomic_store(v0, qword_10009EC10);
    }
  }
}

__n128 sub_100032A54(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100032A60(uint64_t a1, int a2)
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

uint64_t sub_100032AA8(uint64_t result, int a2, int a3)
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

uint64_t sub_100032B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100032BD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100032BF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000712C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100032C74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000100083920;
  v5 = 0x69745F7261646172;
  if (a1 == 4)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xEB00000000656C74;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = v5;
  }

  if (a1 == 3)
  {
    v4 = 0x8000000100083900;
  }

  v7 = 0xE300000000000000;
  v8 = 0xD000000000000013;
  if (a1 == 1)
  {
    v8 = 7496054;
  }

  else
  {
    v7 = 0x80000001000838E0;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x7972617262696CLL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0x8000000100083900;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_39;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0x8000000100083920;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xEB00000000656C74;
      if (v9 != 0x69745F7261646172)
      {
LABEL_39:
        v12 = sub_10007A610();
        goto LABEL_40;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE300000000000000;
      if (v9 != 7496054)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0x80000001000838E0;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x7972617262696CLL)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_100032E54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x747069726373;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x63736A5F343662;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0x80000001000838C0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6F6973726576;
    }

    else
    {
      v4 = 0x747069726373;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x63736A5F343662;
  v8 = 0x80000001000838C0;
  if (a2 == 2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v2 = 0x6E6F6973726576;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10007A610();
  }

  return v11 & 1;
}

Swift::Int sub_100032F90()
{
  v1 = *v0;
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

Swift::Int sub_100033054()
{
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

uint64_t sub_100033164()
{
  *v0;
  *v0;
  *v0;
  sub_100079EC0();
}

Swift::Int sub_100033214()
{
  v1 = *v0;
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

Swift::Int sub_1000332D4()
{
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

uint64_t sub_1000333E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003417C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100033410(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x747069726373;
  v4 = 0xE700000000000000;
  v5 = 0x63736A5F343662;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001000838C0;
  }

  if (*v1)
  {
    v3 = 0x6E6F6973726576;
    v2 = 0xE700000000000000;
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

unint64_t sub_100033490()
{
  v1 = 0x747069726373;
  v2 = 0x63736A5F343662;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6E6F6973726576;
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

uint64_t sub_10003350C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003417C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100033540(uint64_t a1)
{
  v2 = sub_100035078();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003357C(uint64_t a1)
{
  v2 = sub_100035078();

  return CodingKey.debugDescription.getter(a1, v2);
}

Class sub_1000335B8()
{
  v1 = v0;
  sub_10002C4AC();
  v2 = sub_100079D70();
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_100079DF0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v27[0] = v2;
  sub_100034004(v5, 0x747069726373, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v7 = [objc_allocWithZone(NSNumber) initWithChar:*(v1 + 16)];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  *&v27[0] = v2;
  sub_100034004(v7, 0x6E6F6973726576, 0xE700000000000000, v8);
  v9 = v1[3];
  v10 = v1[4];
  v11 = sub_100079DF0();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *&v27[0] = v2;
  sub_100034004(v11, 0x63736A5F343662, 0xE700000000000000, v12);
  v13 = v1[5];
  v14 = *(v13 + 16);
  if (v14)
  {
    v26 = _swiftEmptyArrayStorage;
    sub_10007A450();
    v15 = v13 + 32;
    do
    {
      v16 = *(v15 + 16);
      v27[0] = *v15;
      v27[1] = v16;
      v17 = *(v15 + 32);
      v18 = *(v15 + 48);
      v19 = *(v15 + 64);
      v28 = *(v15 + 80);
      v27[3] = v18;
      v27[4] = v19;
      v27[2] = v17;
      sub_1000341C8(v27, v25);
      sub_100033918();
      sub_100034200(v27);
      sub_10007A430();
      v20 = v26[2];
      sub_10007A460();
      sub_10007A470();
      sub_10007A440();
      v15 += 88;
      --v14;
    }

    while (v14);
  }

  isa = sub_100079FE0().super.isa;

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v25[0] = v2;
  sub_100034004(isa, 0xD000000000000012, 0x80000001000838C0, v22);
  v23 = sub_100079D30().super.isa;

  return v23;
}

uint64_t sub_100033820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100034004(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10000A0FC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_10002C340();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_100018E38(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

Class sub_100033918()
{
  v1 = v0;
  sub_10002C4AC();
  sub_100079D70();
  v2 = *v0;
  v3 = v0[1];
  v4 = sub_100079DF0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100034004(v4, 0x7972617262696CLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v6 = v0[2];
  v7 = v0[3];
  v8 = sub_100079DF0();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_100034004(v8, 7496054, 0xE300000000000000, v9);
  if (v0[5])
  {
    v10 = v0[4];
    v11 = sub_100079DF0();
  }

  else
  {
    v11 = 0;
  }

  sub_100033820(v11, 0xD000000000000013, 0x80000001000838E0);
  if (v0[7])
  {
    v12 = v0[6];
    v13 = sub_100079DF0();
  }

  else
  {
    v13 = 0;
  }

  sub_100033820(v13, 0xD000000000000012, 0x8000000100083900);
  v14 = v0[8];
  if (v14)
  {
    v15 = *(v14 + 16);
    sub_10002E9F8(v15);
    if (v15)
    {
      v16 = (v14 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;

        sub_100079DF0();

        sub_100079FD0();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10007A000();
        }

        sub_10007A020();
        v16 += 2;
        --v15;
      }

      while (v15);
    }

    isa = sub_100079FE0().super.isa;

    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_100034004(isa, 0xD000000000000011, 0x8000000100083920, v21);
  }

  if (v1[10])
  {
    v22 = v1[9];
    v23 = sub_100079DF0();
  }

  else
  {
    v23 = 0;
  }

  sub_100033820(v23, 0x69745F7261646172, 0xEB00000000656C74);
  v24 = sub_100079D30().super.isa;

  return v24;
}

double sub_100033BE8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100034230(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100033C40()
{
  *v0;
  *v0;
  *v0;
  sub_100079EC0();
}

uint64_t sub_100033D40@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000344CC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100033D70(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972617262696CLL;
  v5 = 0x8000000100083900;
  v6 = 0x8000000100083920;
  v7 = 0x69745F7261646172;
  if (v2 == 4)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xEB00000000656C74;
  }

  if (v2 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v8 = v7;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v9 = 0xE300000000000000;
  v10 = 0xD000000000000013;
  if (v2 == 1)
  {
    v10 = 7496054;
  }

  else
  {
    v9 = 0x80000001000838E0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v8;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100033E38()
{
  v1 = *v0;
  v2 = 0x7972617262696CLL;
  v3 = 0x69745F7261646172;
  if (v1 == 4)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v3;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 7496054;
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
    return v4;
  }
}

uint64_t sub_100033EFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000344CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100033F30(uint64_t a1)
{
  v2 = sub_100035024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033F6C(uint64_t a1)
{
  v2 = sub_100035024();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100033FA8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100034518(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100034004(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000A0FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10002C09C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000A0FC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_10007A6C0();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10002C340();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_10003417C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100096D90;
  v6._object = a2;
  v4 = sub_10007A4F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100034230@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009ECF0, &qword_10007DA38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_100035078();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(a1);
  }

  v27 = 0;
  v11 = sub_10007A550();
  v13 = v12;
  v14 = v11;
  v26 = 1;
  v23 = sub_10007A580();
  v25 = 2;
  v20 = sub_10007A550();
  v21 = v15;
  sub_10000712C(&qword_10009EA68, &unk_10007DA40);
  v24 = 3;
  sub_100035148();
  sub_10007A570();
  (*(v6 + 8))(v9, v5);
  v16 = v22;
  result = sub_1000070A8(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v23;
  v18 = v21;
  *(a2 + 24) = v20;
  *(a2 + 32) = v18;
  *(a2 + 40) = v16;
  return result;
}

uint64_t sub_1000344CC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100096E10;
  v6._object = a2;
  v4 = sub_10007A4F0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100034518@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009ECE0, &unk_10007DA28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_100035024();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(a1);
  }

  LOBYTE(v43[0]) = 0;
  v11 = sub_10007A550();
  v13 = v12;
  LOBYTE(v43[0]) = 1;
  v34 = sub_10007A550();
  v36 = v14;
  LOBYTE(v43[0]) = 2;
  v15 = sub_10007A500();
  v35 = v16;
  v31 = v15;
  LOBYTE(v43[0]) = 3;
  v33 = 0;
  v30 = sub_10007A500();
  v32 = v17;
  sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  LOBYTE(v37) = 4;
  sub_1000350CC();
  sub_10007A520();
  v29 = v43[0];
  v44 = 5;
  v18 = sub_10007A500();
  v19 = *(v6 + 8);
  v20 = v18;
  v33 = v21;
  v19(v9, v5);
  *&v37 = v11;
  *(&v37 + 1) = v13;
  *&v38 = v34;
  *(&v38 + 1) = v36;
  *&v39 = v31;
  v22 = v35;
  *(&v39 + 1) = v35;
  *&v40 = v30;
  v23 = v32;
  *(&v40 + 1) = v32;
  *&v41 = v29;
  v24 = v33;
  *(&v41 + 1) = v20;
  v42 = v33;
  sub_1000341C8(&v37, v43);
  sub_1000070A8(a1);
  v43[0] = v11;
  v43[1] = v13;
  v43[2] = v34;
  v43[3] = v36;
  v43[4] = v31;
  v43[5] = v22;
  v43[6] = v30;
  v43[7] = v23;
  v43[8] = v29;
  v43[9] = v20;
  v43[10] = v24;
  result = sub_100034200(v43);
  v26 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v26;
  *(a2 + 64) = v41;
  *(a2 + 80) = v42;
  v27 = v38;
  *a2 = v37;
  *(a2 + 16) = v27;
  return result;
}

unint64_t sub_1000349F0()
{
  result = qword_10009ECA0;
  if (!qword_10009ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECA0);
  }

  return result;
}

unint64_t sub_100034A48()
{
  result = qword_10009ECA8;
  if (!qword_10009ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECA8);
  }

  return result;
}

unint64_t sub_100034AA0()
{
  result = qword_10009ECB0;
  if (!qword_10009ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECB0);
  }

  return result;
}

unint64_t sub_100034AF8()
{
  result = qword_10009ECB8;
  if (!qword_10009ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECB8);
  }

  return result;
}

unint64_t sub_100034B50()
{
  result = qword_10009ECC0;
  if (!qword_10009ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECC0);
  }

  return result;
}

unint64_t sub_100034BA8()
{
  result = qword_10009ECC8;
  if (!qword_10009ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECC8);
  }

  return result;
}

__n128 sub_100034BFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100034C10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100034C58(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for StorebagSectionScript.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorebagSectionScript.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100034E04(uint64_t a1, uint64_t a2)
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

uint64_t sub_100034E28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100034E70(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for StorebagSectionScriptRequiredLibraries.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StorebagSectionScriptRequiredLibraries.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100035024()
{
  result = qword_10009ECD0;
  if (!qword_10009ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECD0);
  }

  return result;
}

unint64_t sub_100035078()
{
  result = qword_10009ECD8;
  if (!qword_10009ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECD8);
  }

  return result;
}

unint64_t sub_1000350CC()
{
  result = qword_10009ECE8;
  if (!qword_10009ECE8)
  {
    sub_1000072D8(&qword_10009E130, &qword_10007BCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECE8);
  }

  return result;
}

unint64_t sub_100035148()
{
  result = qword_10009ECF8;
  if (!qword_10009ECF8)
  {
    sub_1000072D8(&qword_10009EA68, &unk_10007DA40);
    sub_1000351CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECF8);
  }

  return result;
}

unint64_t sub_1000351CC()
{
  result = qword_10009ED00;
  if (!qword_10009ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED00);
  }

  return result;
}

uint64_t sub_100035228@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v18 = type metadata accessor for StorebagSectionMaybeShared();
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v17 = (&v17 - v9);
  v10 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_10007A780();
  if (v2)
  {

    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_100035484(v19);
    sub_10001378C(a1, v21);
    sub_10007A110();
    v12 = v18;
    swift_storeEnumTagMultiPayload();
    v13 = *(v4 + 32);
    v14 = v17;
    v13(v17, v8, v12);
  }

  else
  {
    sub_1000354EC(v19, v21);
    sub_10000751C(v21, v21[3]);
    v11 = sub_10007A620();
    v14 = v17;
    v12 = v18;
    *v17 = v11;
    v14[1] = v15;
    swift_storeEnumTagMultiPayload();
    sub_1000070A8(v21);
    v13 = *(v4 + 32);
  }

  v13(v22, v14, v12);
  return sub_1000070A8(a1);
}

uint64_t sub_100035484(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009ED08, &unk_10007DA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000354EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100035504@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return sub_100035228(a1, a3);
}

uint64_t sub_100035530(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  v6 = 0xE600000000000000;
  v7 = 0x6E6F69746361;
  if (a1 != 4)
  {
    v7 = 0x6F697469646E6F63;
    v6 = 0xE90000000000006ELL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 7955819;
  if (a1 != 1)
  {
    v9 = 0x7365756C6176;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1937335659;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x65756C6176)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6E6F69746361)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE90000000000006ELL;
      if (v10 != 0x6F697469646E6F63)
      {
LABEL_34:
        v13 = sub_10007A610();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7955819)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7365756C6176)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1937335659)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

Swift::Int sub_1000356F8()
{
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

uint64_t sub_1000357E8()
{
  *v0;
  *v0;
  *v0;
  sub_100079EC0();
}

Swift::Int sub_1000358C8()
{
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

uint64_t sub_1000359B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000367B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000359E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1937335659;
  v5 = 0xE500000000000000;
  v6 = 0x65756C6176;
  v7 = 0xE600000000000000;
  v8 = 0x6E6F69746361;
  if (v2 != 4)
  {
    v8 = 0x6F697469646E6F63;
    v7 = 0xE90000000000006ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7955819;
  if (v2 != 1)
  {
    v10 = 0x7365756C6176;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100035A8C()
{
  v1 = *v0;
  v2 = 1937335659;
  v3 = 0x65756C6176;
  v4 = 0x6E6F69746361;
  if (v1 != 4)
  {
    v4 = 0x6F697469646E6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 7955819;
  if (v1 != 1)
  {
    v5 = 0x7365756C6176;
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

uint64_t sub_100035B30@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000367B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100035B58(uint64_t a1)
{
  v2 = sub_100036DF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100035B94(uint64_t a1)
{
  v2 = sub_100036DF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100035BD0(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100023040(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 sub_100035CC4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100035E70(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_100035D18()
{
  v1 = 0x6E6F69746361;
  v2 = 0x7365756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6F697469646E6F63;
  }

  if (*v0)
  {
    v1 = 1937335659;
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

uint64_t sub_100035D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100037128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100035DB0(uint64_t a1)
{
  v2 = sub_100036E4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100035DEC(uint64_t a1)
{
  v2 = sub_100036E4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100035E28@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000364A4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100035E70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009ED50, &unk_10007DD58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_100036DF8();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(a1);
  }

  v43 = v6;
  v55 = _swiftEmptyArrayStorage;
  sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  LOBYTE(v44) = 0;
  sub_1000350CC();
  sub_10007A520();
  if (v49[0])
  {
    sub_100035BD0(v49[0]);
  }

  LOBYTE(v44) = 1;
  sub_10007A570();
  sub_100035BD0(v49[0]);
  LOBYTE(v49[0]) = 1;
  v42 = sub_10007A550();
  v12 = v11;
  v41 = a2;
  v40 = 0;
  v13 = v55;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_100023040(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  v16 = v40;
  if (v15 >= v14 >> 1)
  {
    v39 = sub_100023040((v14 > 1), v15 + 1, 1, v13);
    v16 = v40;
    v13 = v39;
  }

  *(v13 + 2) = v15 + 1;
  v17 = &v13[16 * v15];
  *(v17 + 4) = v42;
  *(v17 + 5) = v12;
  v55 = v13;
  v18 = v41;
  v54 = _swiftEmptyArrayStorage;
  LOBYTE(v44) = 2;
  sub_10007A520();
  if (v16)
  {
    (*(v43 + 8))(v9, v5);

    return sub_1000070A8(a1);
  }

  if (v49[0])
  {
    sub_100035BD0(v49[0]);
  }

  LOBYTE(v44) = 3;
  sub_10007A570();
  sub_100035BD0(v49[0]);
  LOBYTE(v49[0]) = 3;
  v20 = sub_10007A550();
  v41 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v54;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_100023040(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_100023040((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[16 * v26];
  *(v27 + 4) = v21;
  *(v27 + 5) = v23;
  v28 = v55;
  LOBYTE(v49[0]) = 4;
  v29 = sub_10007A550();
  v31 = v30;
  v42 = v29;
  v50 = 5;
  sub_100036F24();
  sub_10007A520();
  (*(v43 + 8))(v9, v5);
  v43 = v51;
  v32 = v52;
  v40 = *(&v51 + 1);
  v33 = *(&v52 + 1);
  v34 = v53;
  *&v44 = v28;
  *(&v44 + 1) = v24;
  v35 = v42;
  *&v45 = v42;
  *(&v45 + 1) = v31;
  v46 = v51;
  v47 = v52;
  v48 = v53;
  sub_100036F78(&v44, v49);
  sub_1000070A8(a1);
  v49[0] = v28;
  v49[1] = v24;
  v49[2] = v35;
  v49[3] = v31;
  v49[4] = v43;
  v49[5] = v40;
  v49[6] = v32;
  v49[7] = v33;
  v49[8] = v34;
  result = sub_100036FB0(v49);
  v36 = v47;
  v37 = v41;
  *(v41 + 32) = v46;
  *(v37 + 48) = v36;
  *(v37 + 64) = v48;
  v38 = v45;
  *v37 = v44;
  *(v37 + 16) = v38;
  return result;
}

uint64_t sub_1000364A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009ED30, &unk_10007DD40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_100036E4C();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(a1);
  }

  LOBYTE(v23) = 0;
  v19 = sub_10007A550();
  v20 = a2;
  v21 = v11;
  sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  v22 = 1;
  sub_1000350CC();
  sub_10007A520();
  v18 = v23;
  v22 = 2;
  sub_10007A520();
  v12 = v23;
  sub_10000712C(&qword_10009ED38, &qword_10007DD50);
  v22 = 3;
  sub_100036EA0();
  sub_10007A520();
  (*(v6 + 8))(v9, v5);
  v13 = v23;
  result = sub_1000070A8(a1);
  v15 = v20;
  v16 = v21;
  *v20 = v19;
  v15[1] = v16;
  v15[2] = v18;
  v15[3] = v12;
  v15[4] = v13;
  return result;
}

uint64_t sub_1000367B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000970F8;
  v6._object = a2;
  v4 = sub_10007A4F0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100036808()
{
  result = qword_10009ED10;
  if (!qword_10009ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED10);
  }

  return result;
}

unint64_t sub_100036860()
{
  result = qword_10009ED18;
  if (!qword_10009ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED18);
  }

  return result;
}

unint64_t sub_1000368B8()
{
  result = qword_10009ED20;
  if (!qword_10009ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED20);
  }

  return result;
}

uint64_t sub_100036914(uint64_t a1)
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

uint64_t sub_100036980(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
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

void sub_100036A98(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
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

uint64_t sub_100036C50(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100036C68(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100036C8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100036CD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100036D44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100036D58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100036DA0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100036DF8()
{
  result = qword_10009ED28;
  if (!qword_10009ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED28);
  }

  return result;
}

unint64_t sub_100036E4C()
{
  result = qword_1000A39B0[0];
  if (!qword_1000A39B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A39B0);
  }

  return result;
}

unint64_t sub_100036EA0()
{
  result = qword_10009ED40;
  if (!qword_10009ED40)
  {
    sub_1000072D8(&qword_10009ED38, &qword_10007DD50);
    sub_100036F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED40);
  }

  return result;
}

unint64_t sub_100036F24()
{
  result = qword_10009ED48;
  if (!qword_10009ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED48);
  }

  return result;
}

unint64_t sub_100037024()
{
  result = qword_1000A3AC0[0];
  if (!qword_1000A3AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A3AC0);
  }

  return result;
}

unint64_t sub_10003707C()
{
  result = qword_1000A3BD0;
  if (!qword_1000A3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3BD0);
  }

  return result;
}

unint64_t sub_1000370D4()
{
  result = qword_1000A3BD8[0];
  if (!qword_1000A3BD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A3BD8);
  }

  return result;
}

uint64_t sub_100037128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_10007A610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000 || (sub_10007A610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_10007A610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_10007A610();

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

BOOL sub_10003728C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = ~v2;
  v4 = *a2;
  v5 = v2 - 2;
  v6 = v3 & 1;
  if (v5 >= 5)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5 + 2;
  }

  if ((v4 - 2) >= 5)
  {
    v8 = (v4 & 1) == 0;
  }

  else
  {
    v8 = (v4 - 2) + 2;
  }

  return v7 == v8;
}

uint64_t ServiceSamplingOutcome.rawValue.getter(char a1)
{
  if ((a1 - 2) >= 5u)
  {
    return (a1 & 1) == 0;
  }

  else
  {
    return (a1 - 2) + 2;
  }
}

uint64_t sub_100037300@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s21CloudTelemetryService0C15SamplingOutcomeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10003732C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = ~v2;
  v4 = v2 - 2;
  v5 = v3 & 1;
  if (v4 >= 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4 + 2;
  }

  *a1 = v6;
}

uint64_t _s21CloudTelemetryService0C15SamplingOutcomeO8rawValueACSgSi_tcfC_0(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 7;
  }

  else
  {
    return (0x6050403020001uLL >> (8 * a1));
  }
}

BOOL _s21CloudTelemetryService0C15SamplingOutcomeO1loiySbAC_ACtFZ_0(char a1, char a2)
{
  v2 = (a1 - 2) + 2;
  if ((a1 - 2) >= 5u)
  {
    v2 = (a1 & 1) == 0;
  }

  v3 = (a2 - 2) + 2;
  if ((a2 - 2) >= 5u)
  {
    v3 = (a2 & 1) == 0;
  }

  return v2 < v3;
}

unint64_t sub_10003743C()
{
  result = qword_10009ED58;
  if (!qword_10009ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceSamplingOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
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
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ServiceSamplingOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
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

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000375E8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100037604(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 sub_10003762C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_10003F2A0();
  swift_beginAccess();
  v11 = 0;
  if (*v10 == 1)
  {
    v12 = sub_10003F60C();
    v11 = 5;
    if (!*v12)
    {
      v11 = 1;
    }
  }

  *a5 = v11;
  v13 = *(a3 + 16);
  *(a5 + 8) = *a3;
  *(a5 + 24) = v13;
  result = *(a3 + 32);
  *(a5 + 40) = result;
  *(a5 + 56) = *(a3 + 48);
  *(a5 + 64) = a4 & 1;
  *(a5 + 72) = a1;
  *(a5 + 80) = a2;
  return result;
}

unint64_t sub_1000376DC()
{
  v1 = type metadata accessor for ServiceEventValue();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = (v23 - v6);
  sub_10000712C(&qword_10009ED60, &unk_10007DF60);
  v8 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10007DF40;
  v12 = (v11 + v10);
  v13 = *(v8 + 48);
  *v12 = 0xD00000000000001BLL;
  v12[1] = 0x8000000100083970;
  v25 = *(v0 + 24);
  *(v12 + v13) = v25;
  swift_storeEnumTagMultiPayload();
  v14 = (v12 + v9);
  v15 = *(v8 + 48);
  *v14 = 0xD00000000000001FLL;
  v14[1] = 0x8000000100083990;
  *(v14 + v15) = *v0;
  swift_storeEnumTagMultiPayload();
  v16 = (v12 + 2 * v9);
  v17 = *(v8 + 48);
  *v16 = 0xD000000000000017;
  v16[1] = 0x80000001000839B0;
  v24 = *(v0 + 8);
  *(v16 + v17) = v24;
  swift_storeEnumTagMultiPayload();
  sub_10002423C(&v25, v23);
  sub_10002423C(&v24, v23);
  v18 = sub_100032434(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v0 + 64))
  {
    v19 = *(v0 + 72);
    v20 = *(v0 + 80);
    *v7 = v19;
    v7[1] = v20;
    swift_storeEnumTagMultiPayload();
    sub_100012C24(v7, v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23[0] = v18;
    sub_10003102C(v5, 0xD000000000000010, 0x80000001000839D0, isUniquelyReferenced_nonNull_native);
    return v23[0];
  }

  return v18;
}

void sub_1000379B4()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v1 = v0;
  v2 = MobileGestalt_copy_deviceName_obj();
  if (!v2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = sub_100079E20();
  v6 = v5;

  v7 = MobileGestalt_copy_marketingProductName_obj();
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_100079E20();
  v11 = v10;

  v12 = MobileGestalt_copy_productType_obj();
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  v14 = sub_100079E20();
  v16 = v15;

  v17 = MobileGestalt_copy_productVersion_obj();
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  v41 = sub_100079E20();
  v20 = v19;

  v21 = MobileGestalt_copy_buildVersion_obj();
  if (!v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v21;
  v39 = v20;
  v40 = v14;
  v37 = sub_100079E20();
  v38 = v23;

  v24 = sub_10003F2A0();
  swift_beginAccess();
  v25 = v16;
  v26 = v9;
  v27 = v11;
  if (*v24 != 1)
  {
    v30 = v4;
    v31 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_11;
  }

  v28 = MobileGestalt_copy_serialNumber_obj();
  if (v28)
  {
    v29 = v28;
    v30 = v4;
    v31 = sub_100079E20();
    v33 = v32;

LABEL_11:
    v34 = _s21CloudTelemetryService21AllEventFieldProviderV17getProjectVersionSSyFZ_0();
    v36 = v35;

    qword_1000A3DE8 = v30;
    qword_1000A3DF0 = v6;
    qword_1000A3DF8 = v26;
    qword_1000A3E00 = v27;
    qword_1000A3E08 = v40;
    qword_1000A3E10 = v25;
    qword_1000A3E18 = v41;
    qword_1000A3E20 = v39;
    qword_1000A3E28 = v37;
    qword_1000A3E30 = v38;
    qword_1000A3E38 = v34;
    qword_1000A3E40 = v36;
    qword_1000A3E48 = v31;
    qword_1000A3E50 = v33;
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_100037BE4()
{
  v0 = [objc_opt_self() automatedDeviceGroup];
  if (v0)
  {
    v1 = v0;
    v2 = sub_100079E20();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  qword_1000A3E60 = v2;
  qword_1000A3E68 = v4;
}

void sub_100037C5C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100079DF0();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_100079DF0();
    v4 = [v2 BOOLForKey:v3];
  }

  else
  {
    v4 = 2;
  }

  byte_1000A3E78 = v4;
}

uint64_t sub_100037D28@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1000A3E58 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1000A3E60;
  v3 = qword_1000A3E68;
  a1[3] = &type metadata for AllEventFieldProvider.OSASystemConfigurationFields;
  a1[4] = &off_1000977B8;
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100037DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v17;
  v8[14] = v18;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v9 = sub_100079A00();
  v8[15] = v9;
  v10 = *(v9 - 8);
  v8[16] = v10;
  v11 = *(v10 + 64) + 15;
  v8[17] = swift_task_alloc();
  v12 = sub_100079B10();
  v8[18] = v12;
  v13 = *(v12 - 8);
  v8[19] = v13;
  v14 = *(v13 + 64) + 15;
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_100037EE8, 0, 0);
}

uint64_t sub_100037EE8()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  *(v4 + 96) = *(v3 + 6);
  *(v4 + 64) = v6;
  *(v4 + 80) = v7;
  *(v4 + 48) = v5;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v8 = sub_10003F2A0();
  swift_beginAccess();
  v9 = 0;
  if (*v8 == 1)
  {
    v10 = sub_10003F60C();
    v9 = 5;
    if (!*v10)
    {
      v9 = 1;
    }
  }

  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 136);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v25 = *(v0 + 112);
  v23 = *(v0 + 144);
  v24 = *(v0 + 104);
  v22 = *(v0 + 88);
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  v18 = *(v0 + 40);
  *v18 = v9;
  sub_100079B00();
  sub_1000799F0();
  v19 = sub_100079AF0();
  (*(v15 + 8))(v13, v14);
  (*(v12 + 8))(v11, v23);
  *(v18 + 8) = v19;
  *(v18 + 32) = v17;
  *(v18 + 40) = v16;
  *(v18 + 104) = v22;
  *(v18 + 120) = v24;
  sub_1000354EC(v25, v18 + 128);

  v20 = *(v0 + 8);

  return v20();
}

unint64_t sub_10003806C()
{
  v1 = v0;
  v2 = type metadata accessor for ServiceEventValue();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v64 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = (&v61 - v6);
  sub_10000712C(&qword_10009ED60, &unk_10007DF60);
  v7 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10007DF50;
  v62 = v10;
  v11 = (v10 + v9);
  v12 = (v10 + v9 + *(v7 + 48));
  *v11 = 0x7265646E65735FLL;
  v11[1] = 0xE700000000000000;
  v13 = *(v1 + 48);
  v61 = *(v1 + 56);
  v14 = v61;
  *v12 = v13;
  v12[1] = v14;
  swift_storeEnumTagMultiPayload();
  v15 = (v11 + v8);
  v16 = (v11 + v8 + *(v7 + 48));
  *v15 = 0x7954746E6576655FLL;
  v15[1] = 0xEA00000000006570;
  v17 = *(v1 + 72);
  *v16 = *(v1 + 64);
  v16[1] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = (v11 + 2 * v8);
  v19 = (v18 + *(v7 + 48));
  *v18 = 0x6E6F69737365735FLL;
  v18[1] = 0xEA00000000004449;
  v20 = *(v1 + 24);
  *v19 = *(v1 + 16);
  v19[1] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = (v11 + 3 * v8);
  v22 = *(v7 + 48);
  *v21 = 0x616E7265746E695FLL;
  v21[1] = 0xE90000000000006CLL;
  *(v21 + v22) = *v1;
  swift_storeEnumTagMultiPayload();
  v23 = (v11 + 4 * v8);
  v24 = *(v7 + 48);
  *v23 = 0x6E6F7A656D69745FLL;
  v23[1] = 0xEF74657366664F65;
  *(v23 + v24) = *(v1 + 8);
  swift_storeEnumTagMultiPayload();
  v25 = (v11 + 5 * v8);
  v26 = (v25 + *(v7 + 48));
  *v25 = 0x6449746E65696C63;
  v25[1] = 0xE800000000000000;
  v27 = *(v1 + 40);
  *v26 = *(v1 + 32);
  v26[1] = v27;
  swift_storeEnumTagMultiPayload();
  v28 = v11 + 6 * v8;
  v29 = &v28[*(v7 + 48)];
  strcpy(v28, "_productFamily");
  v28[15] = -18;
  v30 = qword_1000A3DE0;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_1000A3DF0;
  *v29 = qword_1000A3DE8;
  *(v29 + 1) = v31;
  swift_storeEnumTagMultiPayload();
  v32 = (v11 + 7 * v8);
  v33 = (v32 + *(v7 + 48));
  *v32 = 0x656D614E736F5FLL;
  v32[1] = 0xE700000000000000;
  v34 = qword_1000A3E00;
  *v33 = qword_1000A3DF8;
  v33[1] = v34;
  swift_storeEnumTagMultiPayload();
  v35 = (&v11[v8] + *(v7 + 48));
  strcpy(&v11[v8], "_productModel");
  HIWORD(v11[v8 + 1]) = -4864;
  v36 = qword_1000A3E10;
  *v35 = qword_1000A3E08;
  v35[1] = v36;
  swift_storeEnumTagMultiPayload();
  v37 = (v11 + 9 * v8);
  v38 = (v37 + *(v7 + 48));
  *v37 = 0x6973726556736F5FLL;
  v37[1] = 0xEA00000000006E6FLL;
  v39 = qword_1000A3E20;
  *v38 = qword_1000A3E18;
  v38[1] = v39;
  swift_storeEnumTagMultiPayload();
  v40 = (v11 + 10 * v8);
  v41 = (v40 + *(v7 + 48));
  *v40 = 0x646C6975625FLL;
  v40[1] = 0xE600000000000000;
  v42 = qword_1000A3E30;
  *v41 = qword_1000A3E28;
  v41[1] = v42;
  swift_storeEnumTagMultiPayload();
  v43 = (v11 + 11 * v8);
  v44 = (v43 + *(v7 + 48));
  *v43 = 0x5674726F7065725FLL;
  v43[1] = 0xEB00000000737265;
  v45 = qword_1000A3E40;
  *v44 = qword_1000A3E38;
  v44[1] = v45;
  swift_storeEnumTagMultiPayload();

  v46 = sub_100032434(v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (!*(v1 + 104))
  {
    goto LABEL_7;
  }

  v66 = *(v1 + 104);
  v67 = *(v1 + 112);
  v47 = sub_10004E01C(&type metadata for EventAllowFilter, &off_100097C28);
  v48 = sub_1000163E8(0xD000000000000015, 0x80000001000839F0, v47);

  if ((v48 & 1) == 0)
  {
    goto LABEL_7;
  }

  v49 = *(v1 + 152);
  v50 = *(v1 + 160);
  sub_10000751C((v1 + 128), v49);
  v51 = (*(v50 + 8))(v49, v50);
  if (v52)
  {
    v53 = v63;
    *v63 = v51;
    *(v53 + 8) = v52;
    swift_storeEnumTagMultiPayload();
    v54 = v64;
    sub_100012C24(v53, v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v46;
    sub_10003102C(v54, 0xD000000000000015, 0x80000001000839F0, isUniquelyReferenced_nonNull_native);
    v46 = v66;
  }

  else
  {
LABEL_7:
    v53 = v63;
    v54 = v64;
  }

  if (qword_1000A3E70 != -1)
  {
    swift_once();
  }

  if (byte_1000A3E78 != 2)
  {
    *v53 = byte_1000A3E78 & 1;
    swift_storeEnumTagMultiPayload();
    sub_100012C24(v53, v54);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v46;
    sub_10003102C(v54, 0x654465726F74735FLL, 0xEE0065646F4D6F6DLL, v56);
    v46 = v66;
  }

  v57 = sub_10003F2A0();
  swift_beginAccess();
  if (*v57 == 1)
  {
    v58 = qword_1000A3E50;
    *v53 = qword_1000A3E48;
    *(v53 + 8) = v58;
    swift_storeEnumTagMultiPayload();
    sub_100012C24(v53, v54);

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v46;
    sub_10003102C(v54, 0x754E6C6169726553, 0xE90000000000006DLL, v59);
    return v65;
  }

  return v46;
}

unint64_t sub_100038814()
{
  v2 = *v0;
  v1 = v0[1];
  sub_10000712C(&qword_10009ED60, &unk_10007DF60);
  v3 = (sub_10000712C(&qword_10009EC70, &qword_10007D670) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10007B7C0;
  v7 = (v6 + v5);
  v8 = (v7 + v3[14]);
  *v7 = 0x656C61636F4CLL;
  v7[1] = 0xE600000000000000;
  *v8 = v2;
  v8[1] = v1;
  type metadata accessor for ServiceEventValue();
  swift_storeEnumTagMultiPayload();

  v9 = sub_100032434(v6);
  swift_setDeallocating();
  sub_1000096C4(v7, &qword_10009EC70, &qword_10007D670);
  swift_deallocClassInstance();
  return v9;
}

unint64_t sub_10003896C()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_10000712C(&qword_10009ED60, &unk_10007DF60);
  v4 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10007B7D0;
  v8 = (v7 + v6);
  v9 = (v8 + *(v4 + 48));
  *v8 = 0x67616265726F7453;
  v8[1] = 0xEF6E6F6973726556;
  *v9 = v3;
  v9[1] = v2;
  type metadata accessor for ServiceEventValue();
  swift_storeEnumTagMultiPayload();
  v10 = (v8 + v5);
  v11 = *(v4 + 48);
  *v10 = 0xD000000000000013;
  v10[1] = 0x8000000100083A10;
  *(v10 + v11) = v1;
  swift_storeEnumTagMultiPayload();

  v12 = sub_100032434(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v12;
}

uint64_t _s21CloudTelemetryService21AllEventFieldProviderV17getProjectVersionSSyFZ_0()
{
  v0 = 960051513;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 infoDictionary];

  if (v2)
  {
    v3 = sub_100079D50();

    if (*(v3 + 16) && (v4 = sub_10000A0FC(0x656C646E75424643, 0xEF6E6F6973726556), (v5 & 1) != 0))
    {
      sub_10000978C(*(v3 + 56) + 32 * v4, v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
    }
  }

  return v0;
}

uint64_t sub_100038C34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100038C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100038CC8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_100038D2C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100038D44(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_100038D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_100038DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100038E60(uint64_t a1, unsigned int a2)
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

uint64_t sub_100038EBC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100038F3C()
{
  v1 = v0;
  v2 = sub_100079530();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CacheError(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003E9F4(v1, v10, type metadata accessor for CacheError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v6, v10, v2);
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_10007A3B0(42);

      v14 = 0x8000000100083AC0;
      v15 = 0xD000000000000028;
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_10007A3B0(40);

      v14 = 0x8000000100083AF0;
      v15 = 0xD000000000000026;
    }

    v18 = v15;
    v19 = v14;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v3 + 32))(v6, v10, v2);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_10007A3B0(51);
    v21._countAndFlagsBits = 0xD000000000000031;
    v21._object = 0x8000000100083A80;
    sub_100079F00(v21);
LABEL_11:
    sub_100039490(&unk_10009DE10, &type metadata accessor for CocoaError);
    v22._countAndFlagsBits = sub_10007A6D0();
    sub_100079F00(v22);

    v13 = v18;
    (*(v3 + 8))(v6, v2);
    return v13;
  }

  if (EnumCaseMultiPayload != 3)
  {
    return 0x727265206B636F6DLL;
  }

  v12 = *v10;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_10007A3B0(45);

  v18 = 0xD00000000000002BLL;
  v19 = 0x8000000100083A50;
  swift_getErrorValue();
  v20._countAndFlagsBits = sub_10007A6D0();
  sub_100079F00(v20);

  return v18;
}

uint64_t sub_1000392CC()
{
  v0 = sub_100079BA0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003F214();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_100079B80();
  v7 = sub_10007A180();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "mock error", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  type metadata accessor for CacheError(0);
  sub_100039490(&qword_10009ED78, type metadata accessor for CacheError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_100039490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100039544(uint64_t a1, const char *a2, int a3)
{
  v32 = a2;
  v5 = sub_100079530();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100079BA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10003F214();
  v16 = *(v11 + 16);
  v33 = v10;
  v16(v14, v15, v10);
  v17 = *(v6 + 16);
  v35 = v6 + 16;
  v36 = a1;
  v18 = v5;
  v34 = v17;
  v17(v9, a1, v5);
  v19 = sub_100079B80();
  v20 = sub_10007A180();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v29 = v21;
    v30 = swift_slowAlloc();
    v37 = v30;
    *v21 = 136446210;
    sub_100039490(&unk_10009DE10, &type metadata accessor for CocoaError);
    v22 = sub_10007A6D0();
    v31 = a3;
    v24 = v23;
    (*(v6 + 8))(v9, v18);
    v25 = sub_100006B00(v22, v24, &v37);

    v26 = v29;
    *(v29 + 1) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, v32, v26, 0xCu);
    sub_1000070A8(v30);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  (*(v11 + 8))(v14, v33);
  type metadata accessor for CacheError(0);
  sub_100039490(&qword_10009ED78, type metadata accessor for CacheError);
  swift_allocError();
  v34(v27, v36, v18);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1000398DC(uint64_t a1)
{
  v2 = sub_100079BA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003F214();
  (*(v3 + 16))(v6, v7, v2);
  swift_errorRetain();
  v8 = sub_100079B80();
  v9 = sub_10007A180();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = sub_10007A6D0();
    v15 = sub_100006B00(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "unable to access storebag cache (UNKNOWN): %{public}s", v11, 0xCu);
    sub_1000070A8(v12);

    (*(v3 + 8))(v6, v19);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  type metadata accessor for CacheError(0);
  sub_100039490(&qword_10009ED78, type metadata accessor for CacheError);
  swift_allocError();
  *v16 = a1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return swift_errorRetain();
}

uint64_t sub_100039B5C()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6CE8);
  sub_1000070F4(v0, qword_1000A6CE8);
  return sub_100079B90();
}

uint64_t sub_100039BE0()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_100039C18(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_100039CB0()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t sub_100039CE8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t sub_100039D80()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  return swift_unknownObjectRetain();
}

uint64_t sub_100039DB8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
  return swift_unknownObjectRelease();
}

void *sub_100039E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = sub_1000798B0();
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v32);
  v31[0] = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v31 - v14;
  v16 = *(v5 + 48);
  v17 = *(v5 + 52);
  v31[1] = v5;
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v18[16] = 0;
  v18[15] = 0;
  v18[14] = a1;
  swift_beginAccess();
  v18[15] = a2;
  v19 = a4;
  swift_beginAccess();
  v18[16] = a3;
  swift_unknownObjectRetain();
  v31[3] = a2;

  v20 = v31[2];
  sub_1000406E4(a4, 0x67616265726F7473, 0xEA00000000002F73, v15);
  if (v20)
  {
    v23 = v18[14];

    v24 = v18[15];

    v25 = v18[16];
    swift_unknownObjectRelease();
    v26 = v32;
    swift_defaultActor_destroy();

    swift_unknownObjectRelease();
    (*(v10 + 8))(v19, v26);
    v27 = *(*v18 + 48);
    v28 = *(*v18 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v32;
    (*(v10 + 32))(v18 + OBJC_IVAR____TtC21CloudTelemetryService13StorebagCache_storebagCacheURL, v15, v32);
    type metadata accessor for StorebagSource();
    v22 = v31[0];
    (*(v10 + 16))(v31[0], a4, v21);
    v30 = sub_100069B3C(v22);
    (*(v10 + 8))(a4, v32);

    swift_unknownObjectRelease();
    *(v18 + OBJC_IVAR____TtC21CloudTelemetryService13StorebagCache_storebagSource) = v30;
  }

  return v18;
}

uint64_t sub_10003A120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a3;
  v7 = sub_10000712C(&qword_10009ED80, &qword_10007E1E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v40 = &v39 - v9;
  v10 = sub_100079A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CachedStorebag(0);
  v42 = *(v15 - 8);
  v16 = *(v42 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v39 - v21;
  v23 = (*(*v3 + 128))(v20);
  if (*(v23 + 16) && (v24 = sub_10000A0FC(a1, a2), (v25 & 1) != 0))
  {
    v39 = a2;
    sub_10003E9F4(*(v23 + 56) + *(v42 + 72) * v24, v19, type metadata accessor for CachedStorebag);

    sub_10003EABC(v19, v22);
    v26 = *(v15 + 20);
    sub_1000799C0();
    LOBYTE(v26) = sub_100079990();
    (*(v11 + 8))(v14, v10);
    if (v26)
    {
      if (qword_1000A3E80 != -1)
      {
        swift_once();
      }

      v27 = sub_100079BA0();
      sub_1000070F4(v27, qword_1000A6CE8);
      v28 = v39;

      v29 = sub_100079B80();
      v30 = sub_10007A190();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v43[0] = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_100006B00(a1, v39, v43);
        _os_log_impl(&_mh_execute_header, v29, v30, "removing expired storebag %{public}s from memory cache", v31, 0xCu);
        sub_1000070A8(v32);

        v28 = v39;
      }

      v33 = (*(*v4 + 144))(v43);
      v34 = v40;
      sub_10003DCF4(a1, v28, v40);
      sub_1000096C4(v34, &qword_10009ED80, &qword_10007E1E0);
      v33(v43, 0);
      sub_10003EA5C(v22, type metadata accessor for CachedStorebag);
      return (*(v42 + 56))(v41, 1, 1, v15);
    }

    else
    {
      v38 = v41;
      sub_10003EABC(v22, v41);
      return (*(v42 + 56))(v38, 0, 1, v15);
    }
  }

  else
  {

    v36 = v41;
    v37 = *(v42 + 56);

    return v37(v36, 1, 1, v15);
  }
}

BOOL sub_10003A5D0(uint64_t a1, uint64_t a2)
{
  v16[0] = sub_1000798B0();
  v4 = *(v16[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v16[0]);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000712C(&qword_10009ED80, &qword_10007E1E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v16 - v10;
  sub_10003A120(a1, a2, v16 - v10);
  v12 = type metadata accessor for CachedStorebag(0);
  v13 = 1;
  v14 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_1000096C4(v11, &qword_10009ED80, &qword_10007E1E0);
  if (v14 == 1)
  {
    v16[2] = a1;
    v16[3] = a2;

    v17._countAndFlagsBits = 0x7473696C702ELL;
    v17._object = 0xE600000000000000;
    sub_100079F00(v17);
    sub_100079820();

    v13 = sub_100079830();
    (*(v4 + 8))(v7, v16[0]);
  }

  return v13;
}

uint64_t sub_10003A7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  v5 = *(*(sub_10000712C(&qword_10009E008, &qword_10007E1F0) - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v6 = sub_100079750();
  v4[32] = v6;
  v7 = *(v6 - 8);
  v4[33] = v7;
  v8 = *(v7 + 64) + 15;
  v4[34] = swift_task_alloc();
  v9 = sub_100079A00();
  v4[35] = v9;
  v10 = *(v9 - 8);
  v4[36] = v10;
  v11 = *(v10 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v12 = sub_1000798B0();
  v4[40] = v12;
  v13 = *(v12 - 8);
  v4[41] = v13;
  v14 = *(v13 + 64) + 15;
  v4[42] = swift_task_alloc();
  v15 = *(*(sub_10000712C(&qword_10009ED80, &qword_10007E1E0) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v16 = type metadata accessor for CachedStorebag(0);
  v4[45] = v16;
  v17 = *(v16 - 8);
  v4[46] = v17;
  v18 = *(v17 + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();

  return _swift_task_switch(sub_10003AA8C, v3, 0);
}

uint64_t sub_10003AA8C()
{
  v131 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = *(v0 + 240);
  sub_10003A120(*(v0 + 224), *(v0 + 232), v3);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v9 = *(v0 + 384);
    sub_10003EABC(*(v0 + 352), v9);
    v126 = *(v9 + 8);
    v10 = *(v9 + 24);
    v125 = *(v9 + 16);
    v11 = *(v9 + 32);
    v122 = *v9;

    v124 = v10;

    v129 = v11;

    sub_10003EA5C(v9, type metadata accessor for CachedStorebag);
    goto LABEL_4;
  }

  v5 = *(v0 + 336);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  v8 = *(v0 + 224);
  sub_1000096C4(*(v0 + 352), &qword_10009ED80, &qword_10007E1E0);
  v130[0] = v8;
  v130[1] = v6;

  v133._countAndFlagsBits = 0x7473696C702ELL;
  v133._object = 0xE600000000000000;
  sub_100079F00(v133);
  sub_100079820();

  if (sub_100079830())
  {
    v24 = *(v0 + 336);
    v25 = *(v0 + 272);
    sub_10000712C(&qword_10009E010, &unk_10007BA90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10007B7C0;
    *(inited + 32) = NSURLContentModificationDateKey;
    v27 = NSURLContentModificationDateKey;
    sub_100009474(inited);
    swift_setDeallocating();
    sub_10003EA5C(inited + 32, type metadata accessor for URLResourceKey);
    sub_1000797C0();
    v32 = *(v0 + 280);
    v33 = *(v0 + 288);
    v35 = *(v0 + 264);
    v34 = *(v0 + 272);
    v37 = *(v0 + 248);
    v36 = *(v0 + 256);

    sub_100079720();
    (*(v35 + 8))(v34, v36);
    result = (*(v33 + 48))(v37, 1, v32);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v38 = *(v0 + 336);
    (*(*(v0 + 288) + 32))(*(v0 + 312), *(v0 + 248), *(v0 + 280));
    v39 = sub_1000798D0();
    v41 = v40;
    v42 = sub_100046850();
    sub_10004706C(v39, v41, v42, v0 + 56);
    v53 = *(v0 + 304);
    v54 = *(v0 + 312);
    v56 = *(v0 + 288);
    v55 = *(v0 + 296);
    v57 = *(v0 + 280);
    v58 = *(v0 + 64);
    sub_1000799D0();
    sub_1000799C0();
    LOBYTE(v54) = sub_100079990();
    v59 = *(v56 + 8);
    *(v0 + 408) = v59;
    *(v0 + 416) = (v56 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v59(v55, v57);
    if (v54)
    {
      *(v0 + 184) = *(v0 + 56);
      sub_1000096C4(v0 + 184, &qword_10009ED88, &unk_10007E7C0);
      *(v0 + 168) = *(v0 + 72);
      sub_10002A4B4(v0 + 168);
      *(v0 + 192) = *(v0 + 88);
      sub_1000096C4(v0 + 192, &qword_10009ED90, qword_10007E200);
      if (qword_1000A3E80 != -1)
      {
        swift_once();
      }

      v60 = *(v0 + 232);
      v61 = sub_100079BA0();
      sub_1000070F4(v61, qword_1000A6CE8);

      v62 = sub_100079B80();
      v63 = sub_10007A190();

      if (os_log_type_enabled(v62, v63))
      {
        v65 = *(v0 + 224);
        v64 = *(v0 + 232);
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v130[0] = v67;
        *v66 = 136446210;
        *(v66 + 4) = sub_100006B00(v65, v64, v130);
        _os_log_impl(&_mh_execute_header, v62, v63, "removing expired storebag %{public}s", v66, 0xCu);
        sub_1000070A8(v67);
      }

      v68 = *(v0 + 336);
      v69 = [objc_opt_self() defaultManager];
      sub_100079800(v70);
      v72 = v71;
      *(v0 + 208) = 0;
      v73 = [v69 removeItemAtURL:v71 error:v0 + 208];

      v74 = *(v0 + 208);
      if (v73)
      {
        v75 = *(**(v0 + 240) + 232);
        v76 = v74;
        v127 = (v75 + *v75);
        v77 = v75[1];
        v78 = swift_task_alloc();
        *(v0 + 424) = v78;
        *v78 = v0;
        v78[1] = sub_10003C3EC;
        v79 = *(v0 + 232);
        v80 = *(v0 + 240);
        v81 = *(v0 + 224);

        return v127(v0 + 16, v81, v79);
      }

      v109 = *(v0 + 328);
      v128 = *(v0 + 336);
      v111 = *(v0 + 312);
      v110 = *(v0 + 320);
      v112 = *(v0 + 304);
      v113 = v59;
      v114 = *(v0 + 280);
      v115 = v74;
      sub_1000797A0();

      swift_willThrow();
      v113(v112, v114);
      v113(v111, v114);
      (*(v109 + 8))(v128, v110);
      v44 = *(v0 + 376);
      v43 = *(v0 + 384);
      v46 = *(v0 + 344);
      v45 = *(v0 + 352);
      v47 = *(v0 + 336);
      v49 = *(v0 + 304);
      v48 = *(v0 + 312);
      v50 = *(v0 + 296);
      v51 = *(v0 + 272);
      v52 = *(v0 + 248);

      v22 = *(v0 + 8);
      goto LABEL_5;
    }

    v126 = v58;
    v121 = v59;
    v82 = *(v0 + 368);
    v83 = *(v0 + 376);
    v84 = *(v0 + 360);
    v85 = *(v0 + 344);
    v87 = *(v0 + 232);
    v86 = *(v0 + 240);
    v123 = *(v0 + 224);
    v88 = *(v0 + 56);
    v89 = *(v0 + 80);
    v125 = *(v0 + 72);
    v129 = *(v0 + 88);
    (*(*(v0 + 288) + 16))(v83 + *(v84 + 20), *(v0 + 304), *(v0 + 280));
    v90 = *(v0 + 88);
    v91 = *(v0 + 72);
    *v83 = *(v0 + 56);
    *(v83 + 16) = v91;
    *(v83 + 32) = v90;
    sub_10003E9F4(v83, v85, type metadata accessor for CachedStorebag);
    (*(v82 + 56))(v85, 0, 1, v84);
    v92 = *(*v86 + 144);

    v124 = v89;

    v93 = v92(v0 + 136);
    sub_10003C964(v85, v123, v87);
    v93(v0 + 136, 0);
    if (qword_1000A3E80 != -1)
    {
      swift_once();
    }

    v122 = v88;
    v94 = *(v0 + 232);
    v95 = sub_100079BA0();
    sub_1000070F4(v95, qword_1000A6CE8);

    v96 = sub_100079B80();
    v97 = sub_10007A160();

    v98 = os_log_type_enabled(v96, v97);
    v99 = *(v0 + 376);
    v100 = *(v0 + 328);
    v101 = *(v0 + 336);
    v103 = *(v0 + 312);
    v102 = *(v0 + 320);
    v104 = *(v0 + 304);
    v105 = *(v0 + 280);
    if (v98)
    {
      v116 = *(v0 + 232);
      v119 = *(v0 + 304);
      v106 = *(v0 + 224);
      v118 = *(v0 + 312);
      v107 = swift_slowAlloc();
      v117 = v102;
      v108 = swift_slowAlloc();
      v130[0] = v108;
      *v107 = 136446210;
      *(v107 + 4) = sub_100006B00(v106, v116, v130);
      _os_log_impl(&_mh_execute_header, v96, v97, "storing storebag %{public}s in cache", v107, 0xCu);
      sub_1000070A8(v108);

      sub_10003EA5C(v99, type metadata accessor for CachedStorebag);
      v121(v119, v105);
      v121(v118, v105);
      (*(v100 + 8))(v101, v117);
    }

    else
    {

      sub_10003EA5C(v99, type metadata accessor for CachedStorebag);
      v121(v104, v105);
      v121(v103, v105);
      (*(v100 + 8))(v101, v102);
    }

LABEL_4:
    v13 = *(v0 + 376);
    v12 = *(v0 + 384);
    v15 = *(v0 + 344);
    v14 = *(v0 + 352);
    v16 = *(v0 + 336);
    v18 = *(v0 + 304);
    v17 = *(v0 + 312);
    v19 = *(v0 + 296);
    v20 = *(v0 + 272);
    v120 = *(v0 + 248);
    v21 = *(v0 + 216);

    *v21 = v122;
    *(v21 + 8) = v126;
    *(v21 + 16) = v125;
    *(v21 + 24) = v124;
    *(v21 + 32) = v129;
    v22 = *(v0 + 8);
LABEL_5:

    return v22();
  }

  v28 = swift_task_alloc();
  *(v0 + 392) = v28;
  *v28 = v0;
  v28[1] = sub_10003B774;
  v29 = *(v0 + 232);
  v30 = *(v0 + 240);
  v31 = *(v0 + 224);

  return sub_10003CB24(v31, v29);
}

uint64_t sub_10003B774()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_10003C6DC;
  }

  else
  {
    v6 = sub_10003B8CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10003B8CC()
{
  v119 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 336);
  v3 = *(v0 + 272);
  sub_10000712C(&qword_10009E010, &unk_10007BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007B7C0;
  *(inited + 32) = NSURLContentModificationDateKey;
  v5 = NSURLContentModificationDateKey;
  sub_100009474(inited);
  swift_setDeallocating();
  sub_10003EA5C(inited + 32, type metadata accessor for URLResourceKey);
  sub_1000797C0();
  if (v1)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

LABEL_5:
    v19 = *(v0 + 376);
    v18 = *(v0 + 384);
    v21 = *(v0 + 344);
    v20 = *(v0 + 352);
    v22 = *(v0 + 336);
    v24 = *(v0 + 304);
    v23 = *(v0 + 312);
    v25 = *(v0 + 296);
    v26 = *(v0 + 272);
    v27 = *(v0 + 248);

    v28 = *(v0 + 8);
LABEL_6:

    return v28();
  }

  v6 = *(v0 + 280);
  v7 = *(v0 + 288);
  v9 = *(v0 + 264);
  v8 = *(v0 + 272);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);

  sub_100079720();
  (*(v9 + 8))(v8, v10);
  result = (*(v7 + 48))(v11, 1, v6);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v13 = *(v0 + 336);
  (*(*(v0 + 288) + 32))(*(v0 + 312), *(v0 + 248), *(v0 + 280));
  v14 = sub_1000798D0();
  v16 = v15;
  v17 = sub_100046850();
  sub_10004706C(v14, v16, v17, v0 + 56);
  v29 = *(v0 + 304);
  v30 = *(v0 + 312);
  v32 = *(v0 + 288);
  v31 = *(v0 + 296);
  v33 = *(v0 + 280);
  v34 = *(v0 + 64);
  sub_1000799D0();
  sub_1000799C0();
  LOBYTE(v30) = sub_100079990();
  v35 = *(v32 + 8);
  *(v0 + 408) = v35;
  *(v0 + 416) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v31, v33);
  if ((v30 & 1) == 0)
  {
    v114 = v34;
    v116 = v35;
    v59 = *(v0 + 368);
    v58 = *(v0 + 376);
    v60 = *(v0 + 360);
    v61 = *(v0 + 344);
    v62 = *(v0 + 240);
    v105 = *(v0 + 232);
    v107 = *(v0 + 224);
    v63 = *(v0 + 56);
    v64 = *(v0 + 80);
    v112 = *(v0 + 72);
    v65 = *(v0 + 88);
    (*(*(v0 + 288) + 16))(v58 + *(v60 + 20), *(v0 + 304), *(v0 + 280));
    v66 = *(v0 + 88);
    v67 = *(v0 + 72);
    *v58 = *(v0 + 56);
    *(v58 + 16) = v67;
    *(v58 + 32) = v66;
    sub_10003E9F4(v58, v61, type metadata accessor for CachedStorebag);
    (*(v59 + 56))(v61, 0, 1, v60);
    v68 = *(*v62 + 144);

    v109 = v63;

    v111 = v64;

    v110 = v65;

    v69 = v68(v0 + 136);
    sub_10003C964(v61, v107, v105);
    v69(v0 + 136, 0);
    if (qword_1000A3E80 != -1)
    {
      swift_once();
    }

    v70 = *(v0 + 232);
    v71 = sub_100079BA0();
    sub_1000070F4(v71, qword_1000A6CE8);

    v72 = sub_100079B80();
    v73 = sub_10007A160();

    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 376);
    v76 = *(v0 + 328);
    v77 = *(v0 + 336);
    v79 = *(v0 + 312);
    v78 = *(v0 + 320);
    v108 = *(v0 + 304);
    v80 = *(v0 + 280);
    if (v74)
    {
      v106 = *(v0 + 336);
      v103 = *(v0 + 376);
      v81 = *(v0 + 224);
      v82 = *(v0 + 232);
      v104 = *(v0 + 320);
      v83 = swift_slowAlloc();
      v102 = v79;
      v84 = swift_slowAlloc();
      v118[0] = v84;
      *v83 = 136446210;
      *(v83 + 4) = sub_100006B00(v81, v82, v118);
      _os_log_impl(&_mh_execute_header, v72, v73, "storing storebag %{public}s in cache", v83, 0xCu);
      sub_1000070A8(v84);

      sub_10003EA5C(v103, type metadata accessor for CachedStorebag);
      v116(v108, v80);
      v116(v102, v80);
      (*(v76 + 8))(v106, v104);
    }

    else
    {

      sub_10003EA5C(v75, type metadata accessor for CachedStorebag);
      v116(v108, v80);
      v116(v79, v80);
      (*(v76 + 8))(v77, v78);
    }

    v93 = *(v0 + 376);
    v92 = *(v0 + 384);
    v95 = *(v0 + 344);
    v94 = *(v0 + 352);
    v96 = *(v0 + 336);
    v98 = *(v0 + 304);
    v97 = *(v0 + 312);
    v99 = *(v0 + 296);
    v100 = *(v0 + 272);
    v117 = *(v0 + 248);
    v101 = *(v0 + 216);

    *v101 = v109;
    *(v101 + 8) = v114;
    *(v101 + 16) = v112;
    *(v101 + 24) = v111;
    *(v101 + 32) = v110;
    v28 = *(v0 + 8);
    goto LABEL_6;
  }

  *(v0 + 184) = *(v0 + 56);
  sub_1000096C4(v0 + 184, &qword_10009ED88, &unk_10007E7C0);
  *(v0 + 168) = *(v0 + 72);
  sub_10002A4B4(v0 + 168);
  *(v0 + 192) = *(v0 + 88);
  sub_1000096C4(v0 + 192, &qword_10009ED90, qword_10007E200);
  if (qword_1000A3E80 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 232);
  v37 = sub_100079BA0();
  sub_1000070F4(v37, qword_1000A6CE8);

  v38 = sub_100079B80();
  v39 = sub_10007A190();

  if (os_log_type_enabled(v38, v39))
  {
    v41 = *(v0 + 224);
    v40 = *(v0 + 232);
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v118[0] = v43;
    *v42 = 136446210;
    *(v42 + 4) = sub_100006B00(v41, v40, v118);
    _os_log_impl(&_mh_execute_header, v38, v39, "removing expired storebag %{public}s", v42, 0xCu);
    sub_1000070A8(v43);
  }

  v44 = *(v0 + 336);
  v45 = [objc_opt_self() defaultManager];
  sub_100079800(v46);
  v48 = v47;
  *(v0 + 208) = 0;
  v49 = [v45 removeItemAtURL:v47 error:v0 + 208];

  v50 = *(v0 + 208);
  if (!v49)
  {
    v85 = *(v0 + 328);
    v115 = *(v0 + 336);
    v87 = *(v0 + 312);
    v86 = *(v0 + 320);
    v88 = *(v0 + 304);
    v89 = v35;
    v90 = *(v0 + 280);
    v91 = v50;
    sub_1000797A0();

    swift_willThrow();
    v89(v88, v90);
    v89(v87, v90);
    (*(v85 + 8))(v115, v86);
    goto LABEL_5;
  }

  v51 = *(**(v0 + 240) + 232);
  v52 = v50;
  v113 = (v51 + *v51);
  v53 = v51[1];
  v54 = swift_task_alloc();
  *(v0 + 424) = v54;
  *v54 = v0;
  v54[1] = sub_10003C3EC;
  v55 = *(v0 + 232);
  v56 = *(v0 + 240);
  v57 = *(v0 + 224);

  return v113(v0 + 16, v57, v55);
}

uint64_t sub_10003C3EC()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_10003C80C;
  }

  else
  {
    v6 = sub_10003C544;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10003C544()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 280);
  v2(*(v0 + 304), v7);
  v2(v6, v7);
  (*(v4 + 8))(v3, v5);
  v24 = *(v0 + 32);
  v23 = *(v0 + 24);
  v22 = *(v0 + 16);
  v9 = *(v0 + 376);
  v8 = *(v0 + 384);
  v11 = *(v0 + 344);
  v10 = *(v0 + 352);
  v12 = *(v0 + 336);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v15 = *(v0 + 296);
  v16 = *(v0 + 272);
  v20 = *(v0 + 248);
  v17 = *(v0 + 216);
  v21 = *(v0 + 40);

  *v17 = v22;
  *(v17 + 8) = v23;
  *(v17 + 16) = v24;
  *(v17 + 24) = v21;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10003C6DC()
{
  (*(v0[41] + 8))(v0[42], v0[40]);
  v13 = v0[50];
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[37];
  v9 = v0[34];
  v10 = v0[31];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003C80C()
{
  v2 = v0[51];
  v1 = v0[52];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[35];
  v2(v0[38], v7);
  v2(v6, v7);
  (*(v4 + 8))(v3, v5);
  v20 = v0[54];
  v9 = v0[47];
  v8 = v0[48];
  v11 = v0[43];
  v10 = v0[44];
  v12 = v0[42];
  v14 = v0[38];
  v13 = v0[39];
  v15 = v0[37];
  v16 = v0[34];
  v17 = v0[31];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10003C964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000712C(&qword_10009ED80, &qword_10007E1E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CachedStorebag(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1000096C4(a1, &qword_10009ED80, &qword_10007E1E0);
    sub_10003DCF4(a2, a3, v10);

    return sub_1000096C4(v10, &qword_10009ED80, &qword_10007E1E0);
  }

  else
  {
    sub_10003EABC(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10003E5CC(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_10003CB24(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = *(*(sub_10000712C(&qword_10009E000, &qword_10007BA70) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10003CBC4, v2, 0);
}

uint64_t sub_10003CBC4()
{
  v1 = v0[6];
  v2 = *(*v1 + 152);
  v3 = (*v1 + 152) & 0xFFFFFFFFFFFFLL | 0x6560000000000000;
  v0[8] = v2;
  v0[9] = v3;
  v4 = v2();
  if (v4)
  {
    v0[10] = v4;
    v5 = async function pointer to Task.result.getter[1];
    v6 = v4;
    v7 = swift_task_alloc();
    v0[11] = v7;
    v8 = sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    *v7 = v0;
    v7[1] = sub_10003CEC4;

    return Task.result.getter(v0 + 2, v6, &type metadata for ()[8], v8, &protocol self-conformance witness table for Error);
  }

  else
  {
    v10 = v0[6];
    v9 = v0[7];
    v12 = v0[4];
    v11 = v0[5];
    v13 = os_transaction_create();
    (*(*v10 + 184))(v13);
    v14 = sub_10007A0A0();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = sub_100039490(&qword_10009F0A8, type metadata accessor for StorebagCache);
    v16 = swift_allocObject();
    v16[2] = v10;
    v16[3] = v15;
    v16[4] = v10;
    v16[5] = v12;
    v16[6] = v11;
    swift_retain_n();

    v17 = sub_100005244(0, 0, v9, &unk_10007E358, v16);
    v0[12] = v17;
    v18 = *(*v10 + 160);

    v18(v19);
    v20 = async function pointer to Task.value.getter[1];
    v21 = swift_task_alloc();
    v0[13] = v21;
    v22 = sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    *v21 = v0;
    v21[1] = sub_10003D2D8;

    return Task.value.getter(v22, v17, &type metadata for ()[8], v22, &protocol self-conformance witness table for Error);
  }
}