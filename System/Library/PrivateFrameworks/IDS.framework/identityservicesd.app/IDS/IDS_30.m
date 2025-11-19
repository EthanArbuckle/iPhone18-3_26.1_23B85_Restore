uint64_t sub_1007C2914(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_100936B38();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1007C29FC;

  return sub_1007C8584(v5, v7);
}

uint64_t sub_1007C29FC(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_100935D68();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

void sub_1007C2BB0(double a1, double a2)
{
  v3 = v2;
  v6 = sub_100706B30(&qword_100CB3410);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_100706B30(&qword_100CB6198);
  __chkstk_darwin(v9 - 8);
  v11 = (&v27 - v10);
  if (a1 <= 0.0 || a2 <= 0.0 || a1 >= a2)
  {
    v31 = sub_1009364B8();
    v24 = sub_100936EF8();
    if (os_log_type_enabled(v31, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      *(v25 + 4) = a1;
      *(v25 + 12) = 2048;
      *(v25 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v31, v24, "Invalid metric values: storageRequestReceivedTime=%f, storageMessagesProcessedTime=%f - not reporting", v25, 0x16u);
    }

    v26 = v31;
  }

  else
  {
    sub_10089E200(v33);
    LODWORD(v31) = v33[0];
    v29 = v35;
    v30 = v34;
    v27 = v38;
    v28 = v37;
    v32 = v36;
    *v11 = a1 * 1000.0;
    v12 = enum case for EventValue.double(_:);
    v13 = sub_1009362D8();
    v14 = *(v13 - 8);
    v15 = *(v14 + 104);
    v15(v11, v12, v13);
    v16 = *(v14 + 56);
    v16(v11, 0, 1, v13);
    sub_1007C2FD4(v11, 0);
    *v11 = a2 * 1000.0;
    v15(v11, v12, v13);
    v16(v11, 0, 1, v13);
    sub_1007C2FD4(v11, 1);
    v17 = v32;
    v18 = sub_100936DB8();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v3;
    *(v19 + 40) = v31;
    v20 = v29;
    *(v19 + 48) = v30;
    *(v19 + 56) = v20;
    v21 = v27;
    v22 = v28;
    *(v19 + 64) = v17;
    *(v19 + 72) = v22;
    *(v19 + 80) = v21;
    v23 = v3;
    sub_1007C2188(0, 0, v8, &unk_1009B3478, v19);
  }
}

uint64_t sub_1007C2F4C@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2 * 1000.0;
  v3 = enum case for EventValue.double(_:);
  v4 = sub_1009362D8();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_1007C2FD4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_100706B30(&qword_100CB6198);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1009362D8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100013814(a1, &qword_100CB6198);
    v13 = sub_1007C6F98(a2 & 1);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1007C7E44();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1007C77D4(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100013814(v8, &qword_100CB6198);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_1007C79AC(v12, a2 & 1, v18);
    *v2 = v21;
  }

  return result;
}

void sub_1007C3284(void *a1)
{
  v3 = sub_100706B30(&qword_100CB3410);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  v6 = [a1 metricsDictionary];
  v7 = sub_100936A78();

  v8 = [a1 samplingID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_100936B38();
    v12 = v11;

    if (*(v7 + 16))
    {
      if (v12)
      {
        v13 = sub_10089FE44();
        v15 = *v13;
        v14 = v13[1];
        v40 = v15;
        v41 = v14;

        sub_1009371E8();
        if (!*(v7 + 16) || (v16 = v1, v17 = sub_100718E2C(&v42), (v18 & 1) == 0))
        {

          sub_10071A234(&v42);
          return;
        }

        sub_100012914(*(v7 + 56) + 32 * v17, v44);
        sub_10071A234(&v42);
        if ((swift_dynamicCast() & 1) != 0 && v40 >= 1)
        {
          v19 = sub_1007C3774(v7);

          if (v19)
          {
            v20 = a1;
            v21 = sub_1009364B8();
            v22 = sub_100936F18();

            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              v39 = v19;
              v24 = v23;
              v25 = swift_slowAlloc();
              *v24 = 138412290;
              *(v24 + 4) = v20;
              *v25 = v20;
              v26 = v20;
              _os_log_impl(&_mh_execute_header, v21, v22, "Calling into CloudTelemetry to report sendMetric: %@", v24, 0xCu);
              sub_100013814(v25, &qword_100CB36B0);

              v19 = v39;
            }

            v27 = sub_10089FED0();
            v28 = *v27;
            v29 = v27[1];
            v43 = &type metadata for String;
            *&v42 = v10;
            *(&v42 + 1) = v12;
            sub_100308C74(&v42, v44);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v40 = v19;
            sub_10074340C(v44, v28, v29, isUniquelyReferenced_nonNull_native);

            sub_10089E59C(v40, v45);
            v31 = sub_100936DB8();
            (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
            v32 = swift_allocObject();
            *(v32 + 16) = 0;
            *(v32 + 24) = 0;
            *(v32 + 32) = v16;
            v33 = v45[1];
            *(v32 + 40) = v45[0];
            *(v32 + 56) = v33;
            *(v32 + 72) = v45[2];
            v34 = v16;
            sub_1007C2188(0, 0, v5, &unk_1009B3488, v32);

            return;
          }
        }

        else
        {
        }

        return;
      }

LABEL_13:

      v39 = sub_1009364B8();
      v35 = sub_100936EF8();
      if (os_log_type_enabled(v39, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "Not reporting metrics without samplingID";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v39, v35, v37, v36, 2u);

        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  else if (*(v7 + 16))
  {
    goto LABEL_13;
  }

  v39 = sub_1009364B8();
  v35 = sub_100936EF8();
  if (os_log_type_enabled(v39, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "Not reporting empty outgoing send metrics";
    goto LABEL_18;
  }

LABEL_19:
  v38 = v39;
}

unint64_t sub_1007C3774(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100706B30(&qword_100CBB130);
    v2 = sub_100937438();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_10071A1D8(*(a1 + 48) + 40 * v12, v27);
        sub_100012914(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_10071A1D8(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100012914(v25 + 8, v20);
        sub_100013814(v24, &qword_100CB6238);
        v21 = v18;
        sub_100308C74(v20, v22);
        v13 = v21;
        sub_100308C74(v22, v23);
        sub_100308C74(v23, &v21);
        result = sub_1000136E4(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100012970(v10);
          result = sub_100308C74(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_100308C74(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_100013814(v24, &qword_100CB6238);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1007C3AB8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100706B30(&qword_100CB3410);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  if (!a1)
  {
LABEL_7:
    v26 = sub_1009364B8();
    v20 = sub_100936EF8();
    if (os_log_type_enabled(v26, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v26, v20, "Not reporting empty incoming send metrics", v21, 2u);
    }

    goto LABEL_13;
  }

  v26 = a1;
  if ([v26 count]< 1)
  {

    goto LABEL_7;
  }

  if (a3)
  {
    *&v29 = 0;

    sub_100936A68();
    v10 = v29;
    if (v29)
    {
      v11 = sub_10089FED0();
      v12 = *v11;
      v13 = v11[1];
      v30 = &type metadata for String;
      *&v29 = a2;
      *(&v29 + 1) = a3;
      sub_100308C74(&v29, v28);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v10;
      v15 = v3;
      sub_10074340C(v28, v12, v13, isUniquelyReferenced_nonNull_native);

      sub_10089F404(v27, v31);
      v16 = sub_100936DB8();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 32) = v15;
      v18 = v31[1];
      *(v17 + 40) = v31[0];
      *(v17 + 56) = v18;
      *(v17 + 72) = v31[2];
      v19 = v15;
      sub_1007C2188(0, 0, v9, &unk_1009B34A0, v17);

      return;
    }
  }

  else
  {
    v22 = sub_1009364B8();
    v23 = sub_100936EF8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Not reporting metrics without samplingID", v24, 2u);
    }
  }

LABEL_13:
  v25 = v26;
}

uint64_t sub_1007C3E84(_OWORD *a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  sub_100706B30(&qword_100CB61E0);
  *(v2 + 208) = swift_task_alloc();
  v4 = sub_100936308();
  *(v2 + 216) = v4;
  *(v2 + 224) = *(v4 - 8);
  *(v2 + 232) = swift_task_alloc();
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 48) = a1[2];

  return _swift_task_switch(sub_1007C3F90, 0, 0);
}

uint64_t sub_1007C3F90()
{
  v1 = sub_1007C9344();
  *(v0 + 240) = v1;
  v2 = (*(v1 + 32))(&type metadata for UpToDateTimeMetric, v1);
  *(v0 + 312) = v2;
  v3 = *(v1 + 40);
  *(v0 + 248) = v3;
  *(v0 + 256) = (v1 + 40) & 0xFFFFFFFFFFFFLL | 0x3C86000000000000;
  v4 = v3(&type metadata for UpToDateTimeMetric, v1);
  v21 = v5;
  v22 = v4;
  *(v0 + 264) = v4;
  *(v0 + 272) = v5;
  v6 = sub_1007C5890();
  *(v0 + 280) = v6;
  (*(v1 + 48))(&type metadata for UpToDateTimeMetric, v1);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v10 = [v9 bundleIdentifier];

    if (v10)
    {
      sub_100936B38();
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v2)
  {
    v12 = 0xEA00000000004543;
  }

  else
  {
    v12 = 0xEA00000000003432;
  }

  if (v2)
  {
    v13 = 0x364D4B5936504C59;
  }

  else
  {
    v13 = 0x4B46574D54513336;
  }

  *(v0 + 288) = v8;
  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  v16 = *(v0 + 208);
  v17 = *(v0 + 216);

  sub_1009362F8();
  sub_100936338();
  (*(v14 + 16))(v16, v15, v17);
  (*(v14 + 56))(v16, 0, 1, v17);
  v18 = swift_task_alloc();
  *(v0 + 296) = v18;
  *v18 = v0;
  v18[1] = sub_1007C4224;
  v19 = *(v0 + 208);

  return static Reporter.report(teamID:eventType:event:transportConfiguration:)(v13, v12, v22, v21, v6, v19);
}

uint64_t sub_1007C4224()
{
  v2 = *(*v1 + 208);
  *(*v1 + 304) = v0;

  sub_100013814(v2, &qword_100CB61E0);

  if (v0)
  {

    v3 = sub_1007C4620;
  }

  else
  {
    v3 = sub_1007C43C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007C43C0()
{
  v21 = v0;

  v1 = sub_1009364B8();
  v2 = sub_100936F18();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[34];
  if (v3)
  {
    v5 = v0[33];
    v6 = v0[28];
    v18 = v0[27];
    v19 = v0[29];
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_10001273C(v5, v4, &v20);

    *(v7 + 4) = v8;
    *(v7 + 12) = 2080;
    sub_1009362D8();
    v9 = sub_100936A88();
    v11 = v10;

    v12 = sub_10001273C(v9, v11, &v20);

    *(v7 + 14) = v12;

    _os_log_impl(&_mh_execute_header, v1, v2, "Reported metric %s with fields %s", v7, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v19, v18);
  }

  else
  {
    v14 = v0[28];
    v13 = v0[29];
    v15 = v0[27];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1007C4620()
{
  v18 = v0;
  v1 = *(v0 + 192);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  *(v0 + 112) = *(v1 + 8);
  *(v0 + 176) = *(v1 + 24);
  *(v0 + 128) = *(v1 + 32);
  sub_1007C91EC(v0 + 112, v0 + 144);
  sub_100012D50(v0 + 176, v0 + 184, &qword_100CB6248);
  sub_100012D50(v0 + 128, v0 + 160, &unk_100CBA310);
  v2 = sub_1009364B8();
  v3 = sub_100936EF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 240);
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v10 = v6[1];
    v9 = v6[2];
    *(v0 + 64) = *v6;
    *(v0 + 80) = v10;
    *(v0 + 96) = v9;
    v11 = v4(&type metadata for UpToDateTimeMetric, v5);
    v13 = v12;
    sub_100748428(v0 + 112);
    sub_100013814(v0 + 176, &qword_100CB6248);
    sub_100013814(v0 + 128, &unk_100CBA310);
    v14 = sub_10001273C(v11, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to report metric %s", v7, 0xCu);
    sub_100012970(v8);
  }

  else
  {

    sub_100748428(v0 + 112);
    sub_100013814(v0 + 176, &qword_100CB6248);
    sub_100013814(v0 + 128, &unk_100CBA310);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1007C48C8(_OWORD *a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  sub_100706B30(&qword_100CB61E0);
  *(v2 + 208) = swift_task_alloc();
  v4 = sub_100936308();
  *(v2 + 216) = v4;
  *(v2 + 224) = *(v4 - 8);
  *(v2 + 232) = swift_task_alloc();
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 48) = a1[2];

  return _swift_task_switch(sub_1007C49D4, 0, 0);
}

uint64_t sub_1007C49D4()
{
  v1 = sub_1007C929C();
  *(v0 + 240) = v1;
  v2 = (*(v1 + 32))(&type metadata for E2EOutgoingSendTimeMetric, v1);
  *(v0 + 312) = v2;
  v3 = *(v1 + 40);
  *(v0 + 248) = v3;
  *(v0 + 256) = (v1 + 40) & 0xFFFFFFFFFFFFLL | 0x3C86000000000000;
  v4 = v3(&type metadata for E2EOutgoingSendTimeMetric, v1);
  v21 = v5;
  v22 = v4;
  *(v0 + 264) = v4;
  *(v0 + 272) = v5;
  v6 = sub_1007C5F10();
  *(v0 + 280) = v6;
  (*(v1 + 48))(&type metadata for E2EOutgoingSendTimeMetric, v1);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v10 = [v9 bundleIdentifier];

    if (v10)
    {
      sub_100936B38();
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v2)
  {
    v12 = 0xEA00000000004543;
  }

  else
  {
    v12 = 0xEA00000000003432;
  }

  if (v2)
  {
    v13 = 0x364D4B5936504C59;
  }

  else
  {
    v13 = 0x4B46574D54513336;
  }

  *(v0 + 288) = v8;
  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  v16 = *(v0 + 208);
  v17 = *(v0 + 216);

  sub_1009362F8();
  sub_100936338();
  (*(v14 + 16))(v16, v15, v17);
  (*(v14 + 56))(v16, 0, 1, v17);
  v18 = swift_task_alloc();
  *(v0 + 296) = v18;
  *v18 = v0;
  v18[1] = sub_1007C4C68;
  v19 = *(v0 + 208);

  return static Reporter.report(teamID:eventType:event:transportConfiguration:)(v13, v12, v22, v21, v6, v19);
}

uint64_t sub_1007C4C68()
{
  v2 = *(*v1 + 208);
  *(*v1 + 304) = v0;

  sub_100013814(v2, &qword_100CB61E0);

  if (v0)
  {

    v3 = sub_1007C4E04;
  }

  else
  {
    v3 = sub_1007C9664;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007C4E04()
{
  v18 = v0;
  v1 = *(v0 + 192);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  *(v0 + 112) = *(v1 + 8);
  *(v0 + 176) = *(v1 + 24);
  *(v0 + 128) = *(v1 + 32);
  sub_1007C91EC(v0 + 112, v0 + 144);
  sub_100012D50(v0 + 176, v0 + 184, &qword_100CB6218);
  sub_100012D50(v0 + 128, v0 + 160, &unk_100CBA310);
  v2 = sub_1009364B8();
  v3 = sub_100936EF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 240);
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v10 = v6[1];
    v9 = v6[2];
    *(v0 + 64) = *v6;
    *(v0 + 80) = v10;
    *(v0 + 96) = v9;
    v11 = v4(&type metadata for E2EOutgoingSendTimeMetric, v5);
    v13 = v12;
    sub_100748428(v0 + 112);
    sub_100013814(v0 + 176, &qword_100CB6218);
    sub_100013814(v0 + 128, &unk_100CBA310);
    v14 = sub_10001273C(v11, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to report metric %s", v7, 0xCu);
    sub_100012970(v8);
  }

  else
  {

    sub_100748428(v0 + 112);
    sub_100013814(v0 + 176, &qword_100CB6218);
    sub_100013814(v0 + 128, &unk_100CBA310);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1007C50AC(_OWORD *a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  sub_100706B30(&qword_100CB61E0);
  *(v2 + 208) = swift_task_alloc();
  v4 = sub_100936308();
  *(v2 + 216) = v4;
  *(v2 + 224) = *(v4 - 8);
  *(v2 + 232) = swift_task_alloc();
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 48) = a1[2];

  return _swift_task_switch(sub_1007C51B8, 0, 0);
}

uint64_t sub_1007C51B8()
{
  v1 = sub_1007C9198();
  *(v0 + 240) = v1;
  v2 = (*(v1 + 32))(&type metadata for E2EIncomingSendTimeMetric, v1);
  *(v0 + 312) = v2;
  v3 = *(v1 + 40);
  *(v0 + 248) = v3;
  *(v0 + 256) = (v1 + 40) & 0xFFFFFFFFFFFFLL | 0x3C86000000000000;
  v4 = v3(&type metadata for E2EIncomingSendTimeMetric, v1);
  v21 = v5;
  v22 = v4;
  *(v0 + 264) = v4;
  *(v0 + 272) = v5;
  v6 = sub_1007C6590();
  *(v0 + 280) = v6;
  (*(v1 + 48))(&type metadata for E2EIncomingSendTimeMetric, v1);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v10 = [v9 bundleIdentifier];

    if (v10)
    {
      sub_100936B38();
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v2)
  {
    v12 = 0xEA00000000004543;
  }

  else
  {
    v12 = 0xEA00000000003432;
  }

  if (v2)
  {
    v13 = 0x364D4B5936504C59;
  }

  else
  {
    v13 = 0x4B46574D54513336;
  }

  *(v0 + 288) = v8;
  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  v16 = *(v0 + 208);
  v17 = *(v0 + 216);

  sub_1009362F8();
  sub_100936338();
  (*(v14 + 16))(v16, v15, v17);
  (*(v14 + 56))(v16, 0, 1, v17);
  v18 = swift_task_alloc();
  *(v0 + 296) = v18;
  *v18 = v0;
  v18[1] = sub_1007C544C;
  v19 = *(v0 + 208);

  return static Reporter.report(teamID:eventType:event:transportConfiguration:)(v13, v12, v22, v21, v6, v19);
}

uint64_t sub_1007C544C()
{
  v2 = *(*v1 + 208);
  *(*v1 + 304) = v0;

  sub_100013814(v2, &qword_100CB61E0);

  if (v0)
  {

    v3 = sub_1007C55E8;
  }

  else
  {
    v3 = sub_1007C9664;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007C55E8()
{
  v18 = v0;
  v1 = *(v0 + 192);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  *(v0 + 112) = *(v1 + 8);
  *(v0 + 176) = *(v1 + 24);
  *(v0 + 128) = *(v1 + 32);
  sub_1007C91EC(v0 + 112, v0 + 144);
  sub_100012D50(v0 + 176, v0 + 184, &qword_100CB61F0);
  sub_100012D50(v0 + 128, v0 + 160, &unk_100CBA310);
  v2 = sub_1009364B8();
  v3 = sub_100936EF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 240);
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v10 = v6[1];
    v9 = v6[2];
    *(v0 + 64) = *v6;
    *(v0 + 80) = v10;
    *(v0 + 96) = v9;
    v11 = v4(&type metadata for E2EIncomingSendTimeMetric, v5);
    v13 = v12;
    sub_100748428(v0 + 112);
    sub_100013814(v0 + 176, &qword_100CB61F0);
    sub_100013814(v0 + 128, &unk_100CBA310);
    v14 = sub_10001273C(v11, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to report metric %s", v7, 0xCu);
    sub_100012970(v8);
  }

  else
  {

    sub_100748428(v0 + 112);
    sub_100013814(v0 + 176, &qword_100CB61F0);
    sub_100013814(v0 + 128, &unk_100CBA310);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1007C5890()
{
  v1 = sub_1009362D8();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v78 = &v65 - v7;
  __chkstk_darwin(v6);
  v69 = &v65 - v8;
  v9 = sub_100706B30(&qword_100CB6250);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v65 - v13;
  v14 = v0[1];
  v85 = *v0;
  v86 = v14;
  v87 = v0[2];
  v79 = sub_1007C8398(&_swiftEmptyArrayStorage);
  v15 = sub_1007C9344();
  v16 = (*(v15 + 72))(&type metadata for UpToDateTimeMetric, v15);
  v17 = 0;
  v18 = *(v16 + 64);
  v66 = v16 + 64;
  v70 = v16;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v75 = v2;
  v76 = (v2 + 16);
  v80 = (v2 + 32);
  v73 = v2 + 8;
  v67 = v2 + 40;
  v71 = v22;
  v72 = v12;
  v68 = v5;
  while (v21)
  {
    v24 = v17;
LABEL_15:
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v28 = v27 | (v24 << 6);
    v29 = *(*(v70 + 48) + v28);
    v30 = v75;
    v31 = v69;
    (*(v75 + 16))(v69, *(v70 + 56) + *(v75 + 72) * v28, v1);
    v32 = sub_100706B30(&qword_100CB6258);
    v33 = *(v32 + 48);
    *v12 = v29;
    v34 = v31;
    v35 = v1;
    (*(v30 + 32))(&v12[v33], v34, v1);
    (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
    v77 = v24;
    v26 = v74;
    v5 = v68;
LABEL_16:
    sub_100021E3C(v12, v26, &qword_100CB6250);
    v36 = sub_100706B30(&qword_100CB6258);
    if ((*(*(v36 - 8) + 48))(v26, 1, v36) == 1)
    {

      return v79;
    }

    v37 = *(v36 + 48);
    v84 = *v26;
    v38 = *v80;
    v39 = &v26[v37];
    v40 = v78;
    v41 = v35;
    (*v80)(v78, v39, v35);
    sub_1007C9398();
    sub_100936C98();
    v42 = v82;
    v43 = v83;
    v44 = v5;
    v45 = v40;
    v46 = v41;
    (*v76)(v5, v45, v41);
    v47 = v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v47;
    v50 = sub_1000136E4(v42, v43);
    v51 = *(v47 + 16);
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_31;
    }

    v54 = v49;
    if (*(v47 + 24) >= v53)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v1 = v46;
        if (v49)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1007C7BC4();
        v1 = v46;
        if (v54)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1007C70D0(v53, isUniquelyReferenced_nonNull_native);
      v55 = sub_1000136E4(v42, v43);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_33;
      }

      v50 = v55;
      v1 = v46;
      if (v54)
      {
LABEL_4:

        v79 = v81;
        v23 = v75;
        v5 = v44;
        (*(v75 + 40))(v81[7] + *(v75 + 72) * v50, v44, v1);
        (*(v23 + 8))(v78, v1);
        goto LABEL_5;
      }
    }

    v57 = v81;
    v81[(v50 >> 6) + 8] |= 1 << v50;
    v58 = (v57[6] + 16 * v50);
    *v58 = v42;
    v58[1] = v43;
    v59 = v75;
    v5 = v44;
    v38((v57[7] + *(v75 + 72) * v50), v44, v1);
    (*(v59 + 8))(v78, v1);
    v60 = v57[2];
    v61 = __OFADD__(v60, 1);
    v62 = v60 + 1;
    if (v61)
    {
      goto LABEL_32;
    }

    v79 = v57;
    v57[2] = v62;
LABEL_5:
    v17 = v77;
    v22 = v71;
    v12 = v72;
  }

  if (v22 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v74;
  while (1)
  {
    v24 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
      v77 = v25 - 1;
      v35 = v1;
      v63 = sub_100706B30(&qword_100CB6258);
      (*(*(v63 - 8) + 56))(v12, 1, 1, v63);
      v21 = 0;
      goto LABEL_16;
    }

    v21 = *(v66 + 8 * v24);
    ++v17;
    if (v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1009375D8();
  __break(1u);
  return result;
}

uint64_t sub_1007C5F10()
{
  v1 = sub_1009362D8();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v78 = &v65 - v7;
  __chkstk_darwin(v6);
  v69 = &v65 - v8;
  v9 = sub_100706B30(&qword_100CB6220);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v65 - v13;
  v14 = v0[1];
  v85 = *v0;
  v86 = v14;
  v87 = v0[2];
  v79 = sub_1007C8398(&_swiftEmptyArrayStorage);
  v15 = sub_1007C929C();
  v16 = (*(v15 + 72))(&type metadata for E2EOutgoingSendTimeMetric, v15);
  v17 = 0;
  v18 = *(v16 + 64);
  v66 = v16 + 64;
  v70 = v16;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v75 = v2;
  v76 = (v2 + 16);
  v80 = (v2 + 32);
  v73 = v2 + 8;
  v67 = v2 + 40;
  v71 = v22;
  v72 = v12;
  v68 = v5;
  while (v21)
  {
    v24 = v17;
LABEL_15:
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v28 = v27 | (v24 << 6);
    v29 = *(*(v70 + 48) + v28);
    v30 = v75;
    v31 = v69;
    (*(v75 + 16))(v69, *(v70 + 56) + *(v75 + 72) * v28, v1);
    v32 = sub_100706B30(&qword_100CB6228);
    v33 = *(v32 + 48);
    *v12 = v29;
    v34 = v31;
    v35 = v1;
    (*(v30 + 32))(&v12[v33], v34, v1);
    (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
    v77 = v24;
    v26 = v74;
    v5 = v68;
LABEL_16:
    sub_100021E3C(v12, v26, &qword_100CB6220);
    v36 = sub_100706B30(&qword_100CB6228);
    if ((*(*(v36 - 8) + 48))(v26, 1, v36) == 1)
    {

      return v79;
    }

    v37 = *(v36 + 48);
    v84 = *v26;
    v38 = *v80;
    v39 = &v26[v37];
    v40 = v78;
    v41 = v35;
    (*v80)(v78, v39, v35);
    sub_1007C92F0();
    sub_100936C98();
    v42 = v82;
    v43 = v83;
    v44 = v5;
    v45 = v40;
    v46 = v41;
    (*v76)(v5, v45, v41);
    v47 = v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v47;
    v50 = sub_1000136E4(v42, v43);
    v51 = *(v47 + 16);
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_31;
    }

    v54 = v49;
    if (*(v47 + 24) >= v53)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v1 = v46;
        if (v49)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1007C7BC4();
        v1 = v46;
        if (v54)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1007C70D0(v53, isUniquelyReferenced_nonNull_native);
      v55 = sub_1000136E4(v42, v43);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_33;
      }

      v50 = v55;
      v1 = v46;
      if (v54)
      {
LABEL_4:

        v79 = v81;
        v23 = v75;
        v5 = v44;
        (*(v75 + 40))(v81[7] + *(v75 + 72) * v50, v44, v1);
        (*(v23 + 8))(v78, v1);
        goto LABEL_5;
      }
    }

    v57 = v81;
    v81[(v50 >> 6) + 8] |= 1 << v50;
    v58 = (v57[6] + 16 * v50);
    *v58 = v42;
    v58[1] = v43;
    v59 = v75;
    v5 = v44;
    v38((v57[7] + *(v75 + 72) * v50), v44, v1);
    (*(v59 + 8))(v78, v1);
    v60 = v57[2];
    v61 = __OFADD__(v60, 1);
    v62 = v60 + 1;
    if (v61)
    {
      goto LABEL_32;
    }

    v79 = v57;
    v57[2] = v62;
LABEL_5:
    v17 = v77;
    v22 = v71;
    v12 = v72;
  }

  if (v22 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v74;
  while (1)
  {
    v24 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
      v77 = v25 - 1;
      v35 = v1;
      v63 = sub_100706B30(&qword_100CB6228);
      (*(*(v63 - 8) + 56))(v12, 1, 1, v63);
      v21 = 0;
      goto LABEL_16;
    }

    v21 = *(v66 + 8 * v24);
    ++v17;
    if (v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1009375D8();
  __break(1u);
  return result;
}

uint64_t sub_1007C6590()
{
  v1 = sub_1009362D8();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v78 = &v65 - v7;
  __chkstk_darwin(v6);
  v69 = &v65 - v8;
  v9 = sub_100706B30(&qword_100CB61F8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v65 - v13;
  v14 = v0[1];
  v85 = *v0;
  v86 = v14;
  v87 = v0[2];
  v79 = sub_1007C8398(&_swiftEmptyArrayStorage);
  v15 = sub_1007C9198();
  v16 = (*(v15 + 72))(&type metadata for E2EIncomingSendTimeMetric, v15);
  v17 = 0;
  v18 = *(v16 + 64);
  v66 = v16 + 64;
  v70 = v16;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v75 = v2;
  v76 = (v2 + 16);
  v80 = (v2 + 32);
  v73 = v2 + 8;
  v67 = v2 + 40;
  v71 = v22;
  v72 = v12;
  v68 = v5;
  while (v21)
  {
    v24 = v17;
LABEL_15:
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v28 = v27 | (v24 << 6);
    v29 = *(*(v70 + 48) + v28);
    v30 = v75;
    v31 = v69;
    (*(v75 + 16))(v69, *(v70 + 56) + *(v75 + 72) * v28, v1);
    v32 = sub_100706B30(&qword_100CB6200);
    v33 = *(v32 + 48);
    *v12 = v29;
    v34 = v31;
    v35 = v1;
    (*(v30 + 32))(&v12[v33], v34, v1);
    (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
    v77 = v24;
    v26 = v74;
    v5 = v68;
LABEL_16:
    sub_100021E3C(v12, v26, &qword_100CB61F8);
    v36 = sub_100706B30(&qword_100CB6200);
    if ((*(*(v36 - 8) + 48))(v26, 1, v36) == 1)
    {

      return v79;
    }

    v37 = *(v36 + 48);
    v84 = *v26;
    v38 = *v80;
    v39 = &v26[v37];
    v40 = v78;
    v41 = v35;
    (*v80)(v78, v39, v35);
    sub_1007C9248();
    sub_100936C98();
    v42 = v82;
    v43 = v83;
    v44 = v5;
    v45 = v40;
    v46 = v41;
    (*v76)(v5, v45, v41);
    v47 = v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v47;
    v50 = sub_1000136E4(v42, v43);
    v51 = *(v47 + 16);
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_31;
    }

    v54 = v49;
    if (*(v47 + 24) >= v53)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v1 = v46;
        if (v49)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1007C7BC4();
        v1 = v46;
        if (v54)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1007C70D0(v53, isUniquelyReferenced_nonNull_native);
      v55 = sub_1000136E4(v42, v43);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_33;
      }

      v50 = v55;
      v1 = v46;
      if (v54)
      {
LABEL_4:

        v79 = v81;
        v23 = v75;
        v5 = v44;
        (*(v75 + 40))(v81[7] + *(v75 + 72) * v50, v44, v1);
        (*(v23 + 8))(v78, v1);
        goto LABEL_5;
      }
    }

    v57 = v81;
    v81[(v50 >> 6) + 8] |= 1 << v50;
    v58 = (v57[6] + 16 * v50);
    *v58 = v42;
    v58[1] = v43;
    v59 = v75;
    v5 = v44;
    v38((v57[7] + *(v75 + 72) * v50), v44, v1);
    (*(v59 + 8))(v78, v1);
    v60 = v57[2];
    v61 = __OFADD__(v60, 1);
    v62 = v60 + 1;
    if (v61)
    {
      goto LABEL_32;
    }

    v79 = v57;
    v57[2] = v62;
LABEL_5:
    v17 = v77;
    v22 = v71;
    v12 = v72;
  }

  if (v22 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v74;
  while (1)
  {
    v24 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
      v77 = v25 - 1;
      v35 = v1;
      v63 = sub_100706B30(&qword_100CB6200);
      (*(*(v63 - 8) + 56))(v12, 1, 1, v63);
      v21 = 0;
      goto LABEL_16;
    }

    v21 = *(v66 + 8 * v24);
    ++v17;
    if (v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1009375D8();
  __break(1u);
  return result;
}

id sub_1007C6C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudTelemetryMetricReporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007C6CB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x364D4B5936504C59;
  }

  else
  {
    v3 = 0x4B46574D54513336;
  }

  if (v2)
  {
    v4 = 0xEA00000000003432;
  }

  else
  {
    v4 = 0xEA00000000004543;
  }

  if (*a2)
  {
    v5 = 0x364D4B5936504C59;
  }

  else
  {
    v5 = 0x4B46574D54513336;
  }

  if (*a2)
  {
    v6 = 0xEA00000000004543;
  }

  else
  {
    v6 = 0xEA00000000003432;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100937598();
  }

  return v8 & 1;
}

Swift::Int sub_1007C6D64()
{
  sub_100937668();
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_1007C6DF0()
{
  sub_100936BC8();
}

Swift::Int sub_1007C6E68()
{
  sub_100937668();
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_1007C6EF0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100BE8600;
  v8._object = v3;
  v5 = sub_100937458(v4, v8);

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

void sub_1007C6F50(uint64_t *a1@<X8>)
{
  v2 = 0x4B46574D54513336;
  if (*v1)
  {
    v2 = 0x364D4B5936504C59;
  }

  v3 = 0xEA00000000003432;
  if (*v1)
  {
    v3 = 0xEA00000000004543;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1007C6F98(char a1)
{
  v1 = a1 & 1;
  sub_1007C93EC();
  v2 = sub_100936AC8();
  return sub_1007C7004(v1, v2);
}

unint64_t sub_1007C7004(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1007C9440();
    do
    {
      if (sub_100936B18())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1007C70D0(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1009362D8();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100706B30(&qword_100CB61D0);
  v42 = a2;
  result = sub_100937418();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_100937668();
      sub_100936BC8();
      result = sub_1009376C8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1007C7450(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1009362D8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100706B30(&qword_100CB6268);
  v41 = a2;
  result = sub_100937418();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v40 = v5;
    v42 = (v6 + 32);
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 56);
      v24 = *(*(v8 + 48) + v22);
      v44 = v24;
      v25 = *(v39 + 72);
      v26 = v23 + v25 * v22;
      if (v41)
      {
        (*v42)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      sub_1007C93EC();
      result = sub_100936AC8();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v5 = v40;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v5 = v40;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + v18) = v24;
      result = (*v42)(*(v10 + 56) + v25 * v18, v43, v5);
      ++*(v10 + 16);
      v8 = v38;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

unint64_t sub_1007C77D4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1009370D8() + 1) & ~v5;
    sub_1007C93EC();
    do
    {
      result = sub_100936AC8();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8 || v3 < v9)
        {
          goto LABEL_5;
        }
      }

      else if (v9 < v8 && v3 < v9)
      {
        goto LABEL_5;
      }

      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1009362D8() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1007C79AC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1007C6F98(a2 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1007C7E44();
      goto LABEL_7;
    }

    sub_1007C7450(v13, a3 & 1);
    v24 = sub_1007C6F98(a2 & 1);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1009375D8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1009362D8();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1007C7B14(v10, a2 & 1, a1, v16);
}

uint64_t sub_1007C7B14(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = sub_1009362D8();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

char *sub_1007C7BC4()
{
  v1 = v0;
  v35 = sub_1009362D8();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB61D0);
  v3 = *v0;
  v4 = sub_100937408();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1007C7E44()
{
  v1 = v0;
  v29 = sub_1009362D8();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB6268);
  v3 = *v0;
  v4 = sub_100937408();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_1007C80AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = a5[1];
  *(v5 + 16) = *a5;
  *(v5 + 32) = v6;
  *(v5 + 48) = a5[2];
  v7 = swift_task_alloc();
  *(v5 + 64) = v7;
  *v7 = v5;
  v7[1] = sub_1007C8154;

  return sub_1007C3E84((v5 + 16));
}

uint64_t sub_1007C8154()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1007C8248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = a5[1];
  *(v5 + 16) = *a5;
  *(v5 + 32) = v6;
  *(v5 + 48) = a5[2];
  v7 = swift_task_alloc();
  *(v5 + 64) = v7;
  *v7 = v5;
  v7[1] = sub_1007C965C;

  return sub_1007C48C8((v5 + 16));
}

uint64_t sub_1007C82F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = a5[1];
  *(v5 + 16) = *a5;
  *(v5 + 32) = v6;
  *(v5 + 48) = a5[2];
  v7 = swift_task_alloc();
  *(v5 + 64) = v7;
  *v7 = v5;
  v7[1] = sub_1007C965C;

  return sub_1007C50AC((v5 + 16));
}

unint64_t sub_1007C8398(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB61D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100706B30(&qword_100CB61D0);
    v7 = sub_100937438();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012D50(v9, v5, &qword_100CB61D8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1000136E4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1009362D8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1007C8584(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_100706B30(&qword_100CB61E0);
  v2[6] = swift_task_alloc();
  v3 = sub_1009362E8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1007C8688, 0, 0);
}

uint64_t sub_1007C8688()
{
  v1 = v0[5];
  v20 = v0[6];
  v2 = v0[4];
  sub_100936338();
  v21 = sub_10089DBD4(1);
  v4 = v3;
  v0[11] = v3;
  sub_100706B30(&qword_100CB6280);
  v5 = (sub_100706B30(&qword_100CB61D8) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1009AC700;
  v8 = (v7 + v6);
  v9 = (v8 + v5[14]);
  v10 = sub_10089FED0();
  v11 = *(v10 + 1);
  *v8 = *v10;
  v8[1] = v11;
  *v9 = v2;
  v9[1] = v1;
  v12 = enum case for EventValue.string(_:);
  v13 = sub_1009362D8();
  (*(*(v13 - 8) + 104))(v9, v12, v13);

  v14 = sub_1007C8398(v7);
  v0[12] = v14;
  swift_setDeallocating();
  sub_100013814(v8, &qword_100CB61D8);
  swift_deallocClassInstance();
  v15 = sub_100936308();
  (*(*(v15 - 8) + 56))(v20, 1, 1, v15);
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_1007C8924;
  v17 = v0[10];
  v18 = v0[6];

  return static Reporter.wouldSampleEvent(teamID:eventType:event:transportConfiguration:)(v17, 0x364D4B5936504C59, 0xEA00000000004543, v21, v4, v14, v18);
}

uint64_t sub_1007C8924()
{
  v2 = *(*v1 + 48);
  *(*v1 + 112) = v0;

  sub_100013814(v2, &qword_100CB61E0);

  if (v0)
  {
    v3 = sub_1007C8BD8;
  }

  else
  {
    v3 = sub_1007C8AA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007C8AA4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  *v2 = 1;
  (*(v4 + 104))(v2, enum case for SamplingOutcome.deterministic(_:), v3);
  sub_1007C9494();
  sub_100936C98();
  sub_100936C98();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  v6 = v0[2] == v0[3];

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1007C8BD8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1007C8C54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10072A990;

  return sub_1007C80AC(a1, v4, v5, v6, (v1 + 40));
}

uint64_t sub_1007C8D20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10072A990;

  return sub_1007C8248(a1, v4, v5, v6, (v1 + 40));
}

uint64_t sub_1007C8DEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1007C8E44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10072A990;

  return sub_1007C82F0(a1, v4, v5, v6, (v1 + 40));
}

unint64_t sub_1007C8F14()
{
  result = qword_100CB61A0;
  if (!qword_100CB61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB61A0);
  }

  return result;
}

uint64_t sub_1007C8F70()
{
  result = sub_1009364D8();
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

uint64_t sub_1007C9010()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100724920;

  return sub_1007C2914(v2, v3, v4);
}

uint64_t sub_1007C90C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1007C9104()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10072A990;

  return sub_1007C1E34(v3, v4, v5, v2);
}

unint64_t sub_1007C9198()
{
  result = qword_100CB61E8;
  if (!qword_100CB61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB61E8);
  }

  return result;
}

unint64_t sub_1007C9248()
{
  result = qword_100CB6208;
  if (!qword_100CB6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6208);
  }

  return result;
}

unint64_t sub_1007C929C()
{
  result = qword_100CB6210;
  if (!qword_100CB6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6210);
  }

  return result;
}

unint64_t sub_1007C92F0()
{
  result = qword_100CB6230;
  if (!qword_100CB6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6230);
  }

  return result;
}

unint64_t sub_1007C9344()
{
  result = qword_100CB6240;
  if (!qword_100CB6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6240);
  }

  return result;
}

unint64_t sub_1007C9398()
{
  result = qword_100CB6260;
  if (!qword_100CB6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6260);
  }

  return result;
}

unint64_t sub_1007C93EC()
{
  result = qword_100CB6270;
  if (!qword_100CB6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6270);
  }

  return result;
}

unint64_t sub_1007C9440()
{
  result = qword_100CB6278;
  if (!qword_100CB6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6278);
  }

  return result;
}

unint64_t sub_1007C9494()
{
  result = qword_100CB6288;
  if (!qword_100CB6288)
  {
    sub_1009362E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6288);
  }

  return result;
}

uint64_t sub_1007C94EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10072A990;

  return sub_100724D10(a1, v4);
}

uint64_t sub_1007C95A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100724920;

  return sub_100724D10(a1, v4);
}

unint64_t sub_1007C9668(char a1)
{
  result = 0x6F6B636547;
  switch(a1)
  {
    case 1:
      result = 0x6174536F6B636547;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x72746E6F434D4B4DLL;
      break;
    case 4:
      result = 0x72746E6F434D4B53;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x7369737265504453;
      break;
    case 8:
      result = 0x65686361434D4B4DLL;
      break;
    case 9:
      result = 0x65686361434D4B53;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x73655370756F7247;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
    case 16:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1007C9870(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1007C9668(*a1);
  v5 = v4;
  if (v3 == sub_1007C9668(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100937598();
  }

  return v8 & 1;
}

Swift::Int sub_1007C98F8()
{
  v1 = *v0;
  sub_100937668();
  sub_1007C9668(v1);
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_1007C995C()
{
  sub_1007C9668(*v0);
  sub_100936BC8();
}

Swift::Int sub_1007C99B0()
{
  v1 = *v0;
  sub_100937668();
  sub_1007C9668(v1);
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_1007C9A10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1007C9B24();
  *a1 = result;
  return result;
}

unint64_t sub_1007C9A40@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1007C9668(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1007C9A6C(char a1)
{
  sub_1007C9668(a1);

  return sub_1009364C8();
}

uint64_t sub_1007C9ACC(char a1)
{
  sub_1007C9668(a1);

  return sub_1009364C8();
}

uint64_t sub_1007C9B24()
{
  v0 = sub_1009375A8();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1007C9B7C()
{
  result = qword_100CB6290;
  if (!qword_100CB6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6290);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1007C9D20()
{
  result = qword_100CB2AC0;
  if (!qword_100CB2AC0)
  {
    sub_1007147D0(&unk_100CB3520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2AC0);
  }

  return result;
}

void *sub_1007C9DF0()
{
  v1 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_rootExchangeController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1007C9E98(void *a1)
{
  sub_1007D55C4(a1);
}

void (*sub_1007C9ED0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_rootExchangeController;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1007C9F6C;
}

void sub_1007C9F6C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1007D55C4(v3);

    v3 = *v4;
  }

  else
  {
    sub_1007D55C4(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_1007CA038(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_participantProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1007CA0A4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_participantProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10071E170;
}

uint64_t sub_1007CA18C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_materialProviders;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1007CA244()
{
  v1 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_needsMaterialUpdate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1007CA288(char a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_needsMaterialUpdate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1007CA3BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_100012D50(v2 + v4, a2, &qword_100CB2AA0);
}

uint64_t sub_1007CA42C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1007D5790(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_1007CA4E8()
{
  v1 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_materialGeneration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1007CA52C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_materialGeneration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1007CA5DC()
{
  v1 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_localParticipantID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1007CA620(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_localParticipantID;
  swift_beginAccess();
  *(v2 + v4) = a1;
  (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController)) + 0x100))(a1);
  return (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmController)) + 0x100))(*(v2 + v4));
}

void (*sub_1007CA720(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_localParticipantID;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1007CA7A8;
}

void sub_1007CA7A8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    (*((swift_isaMask & **(v5 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController)) + 0x100))(*(v5 + v4));
    (*((swift_isaMask & **(v5 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmController)) + 0x100))(*(v5 + v4));
  }

  free(v3);
}

BOOL sub_1007CA89C()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_idsdSessionProvider);
  v2 = sub_100936B28();
  v3 = [v1 sessionWithUniqueID:v2];

  if (v3)
  {
    swift_unknownObjectRelease();
  }

  return v3 != 0;
}

id sub_1007CA914()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_idsdSessionProvider);
  v2 = sub_100936B28();
  v3 = [v1 sessionWithUniqueID:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 sessionIsActive];
  swift_unknownObjectRelease();
  return v4;
}

char *sub_1007CA9A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13)
{
  v55 = a6;
  v57 = a1;
  v58 = a7;
  v52 = a4;
  v53 = a5;
  v60 = a10;
  v61 = a8;
  v59 = a9;
  v50 = a3;
  v51 = a13;
  v56 = a11;
  v48 = a2;
  v49 = a12;
  v47 = sub_100936F78();
  v14 = *(v47 - 8);
  __chkstk_darwin(v47);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100936F38();
  __chkstk_darwin(v17);
  v18 = sub_100936528();
  __chkstk_darwin(v18 - 8);
  v19 = objc_allocWithZone(v13);
  sub_1007C9A6C(5);
  v46 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_q;
  sub_100014170(0, &qword_100CB3510);
  sub_100936508();
  v63 = &_swiftEmptyArrayStorage;
  sub_100014B20(&qword_100CB2AB8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100706B30(&unk_100CB3520);
  sub_1007C9D20();
  sub_1009370B8();
  (*(v14 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v47);
  *&v19[v46] = sub_100936F98();
  v20 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_lock;
  sub_100706B30(&unk_100CB3540);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *&v19[v20] = v21;
  *&v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_rootExchangeController] = 0;
  v22 = &v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_participantProvider];
  *&v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_participantProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_materialProviders] = &_swiftEmptyArrayStorage;
  v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_needsMaterialUpdate] = 1;
  v23 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_materialCurrentlySentToAVC;
  v24 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v25 = *(*(v24 - 8) + 56);
  v25(&v19[v23], 1, 1, v24);
  v25(&v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_materialCurrentlySentToFramework], 1, 1, v24);
  *&v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_materialGeneration] = 0;
  *&v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_localParticipantID] = 0;
  v26 = &v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_groupID];
  v27 = v49;
  v28 = v50;
  v29 = v51;
  *v26 = v48;
  v26[1] = v28;
  v30 = &v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_sessionID];
  v31 = v53;
  *v30 = v52;
  v30[1] = v31;
  *&v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController] = v27;
  *&v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmController] = v29;
  sub_100022B2C(v61, &v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_cryptoHandler]);
  *&v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_idsdSessionProvider] = v59;
  v32 = v55;
  *&v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_identityController] = v55;
  swift_beginAccess();
  *(v22 + 1) = v56;
  swift_unknownObjectWeakAssign();
  type metadata accessor for IDSGroupEncryptionKeyMaterialCache2(0);
  v33 = v27;
  v34 = v29;
  swift_unknownObjectRetain();
  v56 = v32;
  v35 = v57;
  *&v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmCache] = sub_100840448(v35, 8);
  v36 = v35;
  *&v19[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmCache] = sub_100840448(v36, 9);
  v62.receiver = v19;
  v62.super_class = v54;
  v37 = objc_msgSendSuper2(&v62, "init");
  v38 = *((swift_isaMask & *v33) + 0xA0);
  v39 = v37;
  v38(v37, &off_100BE8A90);
  v40 = *((swift_isaMask & *v34) + 0xA0);
  v41 = v39;
  v40(v37, &off_100BE8A90);
  v42 = *(**&v41[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmCache] + 136);
  v43 = v41;

  v42(v37, &off_100BE8AD0);

  v44 = *(**&v43[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmCache] + 136);

  v44(v37, &off_100BE8AD0);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_100012970(v61);
  return v43;
}

uint64_t sub_1007CAFE4()
{
  v1 = v0;
  v2 = sub_1009364B8();
  v3 = sub_100936F18();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10001273C(0xD000000000000016, 0x8000000100B02650, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: reseting keys", v4, 0xCu);
    sub_100012970(v5);
  }

  v6 = (*(**(v1 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmCache) + 296))();
  return (*(**(v1 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmCache) + 296))(v6);
}

uint64_t sub_1007CB168()
{
  v1 = v0;
  v2 = sub_1009364B8();
  v3 = sub_100936F18();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10001273C(0xD000000000000013, 0x8000000100B02670, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100012970(v5);
  }

  v6 = (*((swift_isaMask & **(v1 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmController)) + 0x190))();
  return (*((swift_isaMask & **(v1 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController)) + 0x190))(v6);
}

uint64_t sub_1007CB304()
{
  v1 = (*(**(v0 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmCache) + 336))();
  v2 = (*(**(v0 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmCache) + 336))(v1);
  v3 = (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController)) + 0x1F8))(v2);
  return (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmController)) + 0x1F8))(v3);
}

void *sub_1007CB448(int a1, void *a2, uint64_t a3, unint64_t a4, void *a5, unint64_t a6, int a7, void *a8, void *a9, unsigned __int8 a10, unint64_t a11, unsigned __int8 a12, unsigned __int8 a13)
{
  v90 = a7;
  v95 = a13;
  v96 = a1;
  v88 = a12;
  v86 = a10;
  v93 = a8;
  v94 = a9;
  v19 = sub_1009360A8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 16);
  v91 = a2;
  v85 = v24;
  v23(v22, a2);
  sub_100715738(a3, a4);
  sub_100715738(a5, a6);
  v25 = v93;
  v89 = v13;
  v26 = a4;
  v27 = sub_1009364B8();
  v28 = sub_100936F18();
  v92 = a3;
  sub_1007156D8(a3, v26);
  v93 = a5;
  v29 = a6;
  sub_1007156D8(a5, a6);
  v84 = v25;

  v82 = v28;
  v30 = os_log_type_enabled(v27, v28);
  v87 = a11;
  v31 = HIDWORD(a11) & 1;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v79 = v27;
    v33 = v32;
    v77 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v99[0] = v81;
    *v33 = 136317698;
    *(v33 + 4) = sub_10001273C(0xD00000000000007ALL, 0x8000000100B02690, v99);
    *(v33 + 12) = 2080;
    v80 = v96 & 1;
    LOBYTE(v97) = v96 & 1;
    v34 = sub_100936B88();
    v83 = HIDWORD(a11) & 1;
    v36 = v26;
    v37 = sub_10001273C(v34, v35, v99);

    *(v33 + 14) = v37;
    *(v33 + 22) = 2080;
    sub_100014B20(&qword_100CB2DA8, &type metadata accessor for UUID);
    v38 = v85;
    v39 = sub_100937548();
    v41 = v40;
    (*(v20 + 8))(v22, v38);
    v42 = sub_10001273C(v39, v41, v99);
    v26 = v36;
    v43 = v94;

    *(v33 + 24) = v42;
    *(v33 + 32) = 2080;
    v44 = sub_100935E08();
    v46 = sub_10001273C(v44, v45, v99);

    *(v33 + 34) = v46;
    *(v33 + 42) = 2080;
    v78 = v29;
    v47 = sub_100935E08();
    v49 = sub_10001273C(v47, v48, v99);

    *(v33 + 44) = v49;
    *(v33 + 52) = 2080;
    LOBYTE(v97) = v90;
    v50 = sub_100936B88();
    v52 = sub_10001273C(v50, v51, v99);

    *(v33 + 54) = v52;
    *(v33 + 62) = 2112;
    v53 = v84;
    *(v33 + 64) = v84;
    v54 = v77;
    *v77 = v53;
    *(v33 + 72) = 2080;
    v97 = v43;
    v98 = v86 & 1;
    v55 = v53;
    sub_100706B30(&qword_100CB3A90);
    v56 = sub_100936B88();
    v58 = sub_10001273C(v56, v57, v99);

    *(v33 + 74) = v58;
    *(v33 + 82) = 2080;
    v59 = v87;
    LODWORD(v97) = v87;
    BYTE4(v97) = v83;
    sub_100706B30(&qword_100CB9D10);
    v60 = sub_100936B88();
    v31 = sub_10001273C(v60, v61, v99);

    *(v33 + 84) = v31;
    LOBYTE(v31) = v83;
    *(v33 + 92) = 1024;
    *(v33 + 94) = v88 & 1;
    *(v33 + 98) = 256;
    *(v33 + 100) = v95;
    v62 = v79;
    _os_log_impl(&_mh_execute_header, v79, v82, "%s: kind: %s; ki: %s; ks: %s; wrappedKM: %s; wrapMode: %s; forPushToken: %@; participantID: %s; generationCounter: %s; isFromSender: %{BOOL}d; shortKILength: %hhu.", v33, 0x65u);
    sub_100013814(v54, &qword_100CB36B0);

    swift_arrayDestroy();

    v29 = v78;
    v63 = v59;
  }

  else
  {

    (*(v20 + 8))(v22, v85);
    v63 = v87;
    v53 = v84;
  }

  v64 = &OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmCache;
  if ((v96 & 1) == 0)
  {
    v64 = &OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmCache;
  }

  v65 = *(v89 + *v64);
  v66 = *(v89 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_lock);
  v67 = __chkstk_darwin(v63);
  *(&v77 - 112) = v68;
  *(&v77 - 13) = v70;
  *(&v77 - 12) = v69;
  *(&v77 - 11) = v29;
  *(&v77 - 80) = v71 & 1;
  *(&v77 - 9) = v53;
  *(&v77 - 64) = v72;
  *(&v77 - 7) = v91;
  *(&v77 - 6) = v73;
  *(&v77 - 5) = v26;
  *(&v77 - 8) = v67;
  *(&v77 - 28) = v31;
  *(&v77 - 27) = v95;
  *(&v77 - 3) = v94;
  *(&v77 - 16) = v74 & 1;
  *(&v77 - 1) = v65;
  __chkstk_darwin(v67);
  *(&v77 - 2) = sub_1007D584C;
  *(&v77 - 1) = v75;

  os_unfair_lock_lock(v66 + 4);
  sub_100733200(&v97);
  os_unfair_lock_unlock(v66 + 4);

  return v97;
}

void sub_1007CBAC4(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v168 = a8;
  v156 = a7;
  v154 = a6;
  LODWORD(v158) = a5;
  v165 = a4;
  v170 = a3;
  v171 = a9;
  LODWORD(v169) = a1;
  v17 = sub_100936038();
  __chkstk_darwin(v17 - 8);
  v162 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1009360A8();
  v166 = *(v19 - 8);
  v167 = v19;
  v20 = __chkstk_darwin(v19);
  v153 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v157 = &v151 - v23;
  __chkstk_darwin(v22);
  v161 = &v151 - v24;
  v163 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  __chkstk_darwin(v163);
  v26 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100706B30(&qword_100CB3250);
  v28 = __chkstk_darwin(v27 - 8);
  v159 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v151 - v31;
  __chkstk_darwin(v30);
  v34 = &v151 - v33;
  v35 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v155 = &v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v41 = &v151 - v40;
  v42 = a2;
  v43 = *(a2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_identityController);
  (*((swift_isaMask & *v43) + 0x130))(v39);
  v44 = *(v36 + 48);
  if (v44(v34, 1, v35) == 1)
  {
    v45 = v171;
    sub_100013814(v34, &qword_100CB3250);
    v46 = sub_1009364B8();
    v47 = sub_100936F18();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v173[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_10001273C(0xD00000000000007ALL, 0x8000000100B02690, v173);
      _os_log_impl(&_mh_execute_header, v46, v47, "%s: have no local identity", v48, 0xCu);
      sub_100012970(v49);
    }

    goto LABEL_39;
  }

  v151 = v26;
  LODWORD(v160) = v169 != 2;
  v50 = sub_1007D5C3C(v34, v41, type metadata accessor for IDSGroupEncryptionFullIdentity);
  (*((swift_isaMask & *v43) + 0xC0))(v50);
  v164 = v42;
  v51 = (v42 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_cryptoHandler);
  v52 = v32;
  v53 = *(v42 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_cryptoHandler + 24);
  v54 = *(v42 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_cryptoHandler + 32);
  sub_1000226D4((v42 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_cryptoHandler), v53);
  v55 = *(v35 + 20);
  v152 = v41;
  v56 = *&v41[v55];
  v57 = v165;
  v58 = (*(v54 + 16))(v170, v165, v56, v160, v53, v54);
  v60 = v59;
  if (v61)
  {
    v160 = v58;
    v62 = v159;
    sub_100012D50(v52, v159, &qword_100CB3250);
    if (v44(v62, 1, v35) == 1)
    {
      sub_100013814(v62, &qword_100CB3250);
      v45 = v171;
      goto LABEL_21;
    }

    v105 = v52;
    v106 = v57;
    v107 = v169 != 2;
    v108 = v155;
    sub_1007D5C3C(v62, v155, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v109 = v60;
    v110 = v51[3];
    v111 = v51[4];
    sub_1000226D4(v51, v110);
    v63 = (*(v111 + 16))(v170, v106, *(v108 + *(v35 + 20)), v107, v110, v111);
    v60 = v112;
    v114 = v113;
    sub_1007156CC(v160, v109, 1);
    sub_1007D5CA4(v108, type metadata accessor for IDSGroupEncryptionFullIdentity);
    if (v114)
    {
      v160 = v63;
      v45 = v171;
      v52 = v105;
LABEL_21:
      v115 = sub_1009364B8();
      v116 = sub_100936F18();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v173[0] = v118;
        *v117 = 136315138;
        *(v117 + 4) = sub_10001273C(0xD00000000000007ALL, 0x8000000100B02690, v173);
        _os_log_impl(&_mh_execute_header, v115, v116, "%s: could not decrypt", v117, 0xCu);
        sub_100012970(v118);
      }

      if (v158)
      {
        if (!(*((swift_isaMask & *v164) + 0x108))())
        {
LABEL_29:
          sub_1007156CC(v160, v60, 1);
          sub_100013814(v52, &qword_100CB3250);
LABEL_34:
          v135 = v152;
LABEL_38:
          sub_1007D5CA4(v135, type metadata accessor for IDSGroupEncryptionFullIdentity);
LABEL_39:
          v128 = 0;
LABEL_40:
          *v45 = v128;
          return;
        }

        v120 = v119;
        ObjectType = swift_getObjectType();
        v122 = (*(v120 + 32))(v154, ObjectType, v120);
        swift_unknownObjectRelease();
        if (v122)
        {
          v123 = sub_1009364B8();
          v124 = sub_100936F18();
          if (os_log_type_enabled(v123, v124))
          {
            v125 = swift_slowAlloc();
            v126 = swift_slowAlloc();
            v173[0] = v126;
            *v125 = 136315138;
            *(v125 + 4) = sub_10001273C(0xD00000000000007ALL, 0x8000000100B02690, v173);
            _os_log_impl(&_mh_execute_header, v123, v124, "%s: because we could not decrypt, and this key belongs to the sender, kicking off key recovery for sender", v125, 0xCu);
            sub_100012970(v126);
          }

          (*((swift_isaMask & *v122) + 0x118))(v156 & 1, *(v164 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_sessionID), *(v164 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_sessionID + 8));
          goto LABEL_29;
        }
      }

      sub_100013814(v52, &qword_100CB3250);
      sub_1007156CC(v160, v60, 1);
      goto LABEL_34;
    }

    v170 = v105;
    v58 = v63;
  }

  else
  {
    v170 = v52;
    v63 = v58;
  }

  sub_100715738(v58, v60);
  LODWORD(v160) = a15;
  v169 = a14;
  LODWORD(v165) = a13;
  v64 = a12;
  v65 = v161;
  v158 = *(v166 + 16);
  v159 = v166 + 16;
  v158(v161, v168, v167);
  v66 = v162;
  sub_100936028();
  v67 = v164;
  v68 = *(v164 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_groupID);
  v69 = *(v164 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_groupID + 8);
  if ((a12 & &_mh_execute_header) != 0)
  {
    v64 = 0;
  }

  sub_100715738(a10, a11);
  sub_100715738(v63, v60);
  v150 = v160 & 1;
  v149 = v64;
  v160 = v63;
  v70 = v60;
  v71 = v60;
  v72 = v151;
  sub_10074A4F8(0, v65, a10, a11, v63, v71, v66, v68, v151, v69, v149, 0, v165, v169, v150);
  v73 = sub_100749BD8();
  v74 = v163;
  v75 = &v72[*(v163 + 52)];
  v76 = *v75;
  v77 = v75[8];
  v78 = (*((swift_isaMask & **(v67 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController)) + 0xF8))(v73);
  if ((v77 & 1) == 0 && v76 == v78)
  {
    v79 = v157;
    v80 = v167;
    v158(v157, v168, v167);
    v81 = sub_1009364B8();
    v82 = sub_100936F18();
    v83 = os_log_type_enabled(v81, v82);
    v84 = v170;
    if (v83)
    {
      v85 = swift_slowAlloc();
      v173[0] = swift_slowAlloc();
      *v85 = 136315394;
      *(v85 + 4) = sub_10001273C(0xD00000000000007ALL, 0x8000000100B02690, v173);
      *(v85 + 12) = 2080;
      sub_100014B20(&qword_100CB2DA8, &type metadata accessor for UUID);
      v86 = sub_100937548();
      v87 = v79;
      v89 = v88;
      (*(v166 + 8))(v87, v80);
      v90 = sub_10001273C(v86, v89, v173);

      *(v85 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v81, v82, "%s: ignore receiving our own ki: %s", v85, 0x16u);
      swift_arrayDestroy();

      v91 = v160;
      sub_1007156D8(v160, v70);
      sub_1007156CC(v91, v70, 0);
    }

    else
    {

      v136 = v160;
      sub_1007156D8(v160, v70);
      sub_1007156CC(v136, v70, 0);
      (*(v166 + 8))(v79, v80);
    }

    sub_1007D5CA4(v72, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v137 = v84;
LABEL_37:
    sub_100013814(v137, &qword_100CB3250);
    v45 = v171;
    v135 = v152;
    goto LABEL_38;
  }

  v92 = (*(*a16 + 232))(v72);
  v93 = v170;
  if (v92 & 1) != 0 && ((*(*a16 + 280))(v168))
  {
    v170 = v93;
    v94 = v153;
    v95 = v167;
    v158(v153, v168, v167);
    v96 = sub_1009364B8();
    v97 = sub_100936F18();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v173[0] = swift_slowAlloc();
      *v98 = 136315394;
      *(v98 + 4) = sub_10001273C(0xD00000000000007ALL, 0x8000000100B02690, v173);
      *(v98 + 12) = 2080;
      sub_100014B20(&qword_100CB2DA8, &type metadata accessor for UUID);
      v99 = sub_100937548();
      v100 = v94;
      v102 = v101;
      (*(v166 + 8))(v100, v95);
      v103 = sub_10001273C(v99, v102, v173);

      *(v98 + 14) = v103;
      _os_log_impl(&_mh_execute_header, v96, v97, "%s: ignore cached ki: %s", v98, 0x16u);
      swift_arrayDestroy();

      v104 = v160;
      sub_1007156D8(v160, v70);
      sub_1007156CC(v104, v70, 0);
    }

    else
    {

      v148 = v160;
      sub_1007156D8(v160, v70);
      sub_1007156CC(v148, v70, 0);
      (*(v166 + 8))(v94, v95);
    }

    sub_1007D5CA4(v72, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v137 = v170;
    goto LABEL_37;
  }

  (*(*a16 + 264))(v72);
  sub_100749640();
  v128 = v127;
  v129 = v156 & 1;
  LOBYTE(v173[0]) = v156 & 1;
  v172 = 0;
  sub_100798574();
  v130 = sub_100936B18();
  v45 = v171;
  if (v130)
  {
    v131 = *(v164 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_idsdSessionProvider);
    v132 = sub_100936B28();
    v133 = [v131 sessionWithUniqueID:v132];

    v134 = v70;
    if (!v133)
    {
LABEL_47:
      v146 = v151;
      (*(*a16 + 272))(&v151[*(v74 + 20)]);
      v147 = v160;
      sub_1007156D8(v160, v134);
      sub_1007156CC(v147, v134, 0);
      sub_1007D5CA4(v146, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100013814(v93, &qword_100CB3250);
      sub_1007D5CA4(v152, type metadata accessor for IDSGroupEncryptionFullIdentity);
      goto LABEL_40;
    }

    [v133 recvKeyMaterial:v128];
LABEL_46:
    swift_unknownObjectRelease();
    goto LABEL_47;
  }

  LOBYTE(v173[0]) = v129;
  v172 = 1;
  v134 = v70;
  if ((sub_100936B18() & 1) == 0)
  {
    goto LABEL_47;
  }

  v138 = *(v164 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_idsdSessionProvider);
  v139 = sub_100936B28();
  v140 = [v138 sessionWithUniqueID:v139];

  if (!v140)
  {
    goto LABEL_47;
  }

  sub_100706B30(&qword_100CB6298);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_1009AC700;
  v142 = [v128 dictionaryRepresentation];
  if (v142)
  {
    v143 = v142;
    v144 = sub_100936A78();

    *(v141 + 32) = v144;
    sub_100706B30(&qword_100CB62A0);
    isa = sub_100936CD8().super.isa;

    [v140 recvStableKeyMaterialForFrameworkCache:isa];

    v74 = v163;
    goto LABEL_46;
  }

  __break(1u);
}

void sub_1007CCD78(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmCache) == a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_idsdSessionProvider);
    v4 = sub_100936B28();
    v5 = [v3 sessionWithUniqueID:v4];

    if (v5)
    {
      sub_1009360A8();
      isa = sub_100936CD8().super.isa;
      [v5 invalidateKeyMaterialByKeyIndexes:isa];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1007CCE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100706B30(&qword_100CB2AA0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v53[-v12];
  v14 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v61 = &v53[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  __chkstk_darwin(v18);
  v21 = &v53[-v20];
  if (*(v4 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmCache) == a1)
  {
    v59 = v19;
    v22 = *(v4 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_idsdSessionProvider);
    v23 = sub_100936B28();
    v60 = a3;
    v24 = v23;
    v25 = [v22 sessionWithUniqueID:v23];

    v26 = v60;
    v58 = v25;
    if (v25)
    {
      sub_100012D50(a4, v13, &qword_100CB2AA0);
      v27 = *(v15 + 48);
      if (v27(v13, 1, v14) == 1)
      {
        sub_100013814(v13, &qword_100CB2AA0);
        v28 = v58;
      }

      else
      {
        v57 = v4;
        sub_1007D5C3C(v13, v21, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        sub_100749640();
        v30 = v29;
        v31 = [v29 dictionaryRepresentation];

        if (v31)
        {
          v32 = sub_100936A78();

          v33 = sub_1009364B8();
          v34 = sub_100936F18();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v56 = v27;
            v36 = v35;
            v55 = swift_slowAlloc();
            v62 = v55;
            *v36 = 136315394;
            *(v36 + 4) = sub_10001273C(0xD00000000000004ELL, 0x8000000100B02710, &v62);
            *(v36 + 12) = 2080;
            v37 = sub_100936A88();
            v54 = v34;
            v39 = sub_10001273C(v37, v38, &v62);

            *(v36 + 14) = v39;
            _os_log_impl(&_mh_execute_header, v33, v54, "%s: sending new SKM to IDSDSession: %s", v36, 0x16u);
            swift_arrayDestroy();

            v27 = v56;
          }

          sub_100706B30(&qword_100CB6298);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1009AC700;
          *(v40 + 32) = v32;
          sub_100706B30(&qword_100CB62A0);
          isa = sub_100936CD8().super.isa;

          v28 = v58;
          [v58 recvStableKeyMaterialForFrameworkCache:isa];

          (*(*a1 + 272))(&v21[*(v14 + 20)]);
          sub_1007D5CA4(v21, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        }

        else
        {
          sub_1007D5CA4(v21, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v28 = v58;
        }

        v26 = v60;
      }

      sub_100012D50(v26, v11, &qword_100CB2AA0);
      if (v27(v11, 1, v14) == 1)
      {
        swift_unknownObjectRelease();
        sub_100013814(v11, &qword_100CB2AA0);
      }

      else
      {
        v42 = v59;
        sub_1007D5C3C(v11, v59, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v43 = v61;
        sub_1007D5BD4(v42, v61, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v44 = sub_1009364B8();
        v45 = sub_100936F18();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v46 = 136315394;
          *(v46 + 4) = sub_10001273C(0xD00000000000004ELL, 0x8000000100B02710, &v62);
          *(v46 + 12) = 2080;
          sub_1009360A8();
          sub_100014B20(&qword_100CB2DA8, &type metadata accessor for UUID);
          v47 = sub_100937548();
          v49 = v48;
          sub_1007D5CA4(v43, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v50 = sub_10001273C(v47, v49, &v62);

          *(v46 + 14) = v50;
          _os_log_impl(&_mh_execute_header, v44, v45, "%s: has outdated SKI %s", v46, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_1007D5CA4(v43, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        }

        v51 = v59;
        v52 = sub_100936058().super.isa;
        [v28 hasOutdatedSKI:v52];
        swift_unknownObjectRelease();

        sub_1007D5CA4(v51, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      }
    }
  }
}

void sub_1007CD61C(void *a1, char a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v8 = sub_1009364B8();
  v9 = sub_100936F18();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315906;
    *(v10 + 4) = sub_10001273C(0xD000000000000035, 0x8000000100B02760, &v18);
    *(v10 + 12) = 2048;
    *(v10 + 14) = *&v7[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID];

    *(v10 + 22) = 1024;
    *(v10 + 24) = a2 & 1;
    *(v10 + 28) = 1024;
    *(v10 + 30) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: forParticipant: %llu; forMKM: %{BOOL}d; forSKM: %{BOOL}d", v10, 0x22u);
    sub_100012970(v11);
  }

  else
  {
  }

  v12 = (*((swift_isaMask & *v4) + 0xF0))();
  if (!v12)
  {
    oslog = sub_1009364B8();
    v14 = sub_100936F18();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10001273C(0xD000000000000035, 0x8000000100B02760, &v18);
      _os_log_impl(&_mh_execute_header, oslog, v14, "%s: no exchange controllers", v15, 0xCu);
      sub_100012970(v16);
    }

    goto LABEL_11;
  }

  v13 = v12;
  oslog = v12;
  if (a2)
  {
    (*((swift_isaMask & v12->isa) + 0x108))(v7, 0);
    v13 = oslog;
  }

  if (a3)
  {
    (*((swift_isaMask & v13->isa) + 0x108))(v7, 1);
LABEL_11:

    return;
  }
}

void sub_1007CD9E0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v33 = a1;
  sub_1007D5BD4(a1, &v31 - v12, type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest);
  v14 = a2;
  v15 = sub_1009364B8();
  v16 = sub_100936F18();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = a3;
    v18 = v17;
    v34 = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_10001273C(0xD000000000000031, 0x8000000100AFF940, &v34);
    *(v18 + 12) = 2080;
    sub_1007D5BD4(v13, v11, type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest);
    v19 = sub_100936B88();
    v21 = v20;
    sub_1007D5CA4(v13, type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest);
    v22 = sub_10001273C(v19, v21, &v34);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2048;
    v23 = *&v14[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID];

    *(v18 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s: keyRecoveryRequest: %s; forParticipant: %llu", v18, 0x20u);
    swift_arrayDestroy();

    a3 = v32;
  }

  else
  {

    v24 = sub_1007D5CA4(v13, type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest);
  }

  v25 = (*((swift_isaMask & *v4) + 0xF0))(v24);
  if (v25)
  {
    v26 = v25;
    (*((swift_isaMask & *v25) + 0xF0))(v33, v14, a3);
  }

  else
  {
    v27 = sub_1009364B8();
    v28 = sub_100936F18();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10001273C(0xD000000000000031, 0x8000000100AFF940, &v34);
      _os_log_impl(&_mh_execute_header, v27, v28, "%s: no exchange controllers", v29, 0xCu);
      sub_100012970(v30);
    }
  }
}

void *sub_1007CDDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v185 = a4;
  v182 = a1;
  v194 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer();
  v8 = __chkstk_darwin(v194);
  v192 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v191 = &v179 - v10;
  v11 = sub_100706B30(&unk_100CB6040);
  v12 = __chkstk_darwin(v11 - 8);
  v189 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v193 = &v179 - v14;
  v197 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v198 = *(v197 - 8);
  v15 = __chkstk_darwin(v197);
  v186 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v190 = &v179 - v18;
  __chkstk_darwin(v17);
  v195 = &v179 - v19;
  v20 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v20 - 8);
  v196 = (&v179 - v21);
  v200 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v205 = *(v200 - 8);
  v22 = __chkstk_darwin(v200);
  v187 = (&v179 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __chkstk_darwin(v22);
  v181 = &v179 - v25;
  v26 = __chkstk_darwin(v24);
  v180 = &v179 - v27;
  v28 = __chkstk_darwin(v26);
  v188 = (&v179 - v29);
  v30 = __chkstk_darwin(v28);
  v32 = &v179 - v31;
  v33 = __chkstk_darwin(v30);
  v203 = &v179 - v34;
  v211 = &_swiftEmptySetSingleton;
  v207 = v4;
  v35 = *(v4 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController);
  v36 = (*((swift_isaMask & *v35) + 0x1F0))(v33);
  v37 = (*((swift_isaMask & *v35) + 0x1D8))(v36);
  v38 = v37 + 56;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 56);
  v206 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_l;
  j = (v39 + 63) >> 6;
  v202 = "ialSet(forGroupID:)";
  v204 = v37;

  v43 = 0;
  *&v44 = 136315394;
  v201 = v44;
  v184 = a3;
  v183 = a2;
  if (v41)
  {
    while (1)
    {
      v45 = v43;
LABEL_8:
      v46 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v47 = v203;
      sub_1007D5BD4(*(v204 + 48) + *(v205 + 72) * (v46 | (v45 << 6)), v203, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_1007D5C3C(v47, v32, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      i = sub_1009364B8();
      v48 = sub_100936F18();
      if (os_log_type_enabled(i, v48))
      {
        v49 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v217[0] = v199;
        *v49 = v201;
        *(v49 + 4) = sub_10001273C(0xD000000000000027, v202 | 0x8000000000000000, v217);
        *(v49 + 12) = 2080;
        v50 = sub_100936048();
        v52 = v51;
        sub_1007D5CA4(v32, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v53 = sub_10001273C(v50, v52, v217);

        *(v49 + 14) = v53;
        _os_log_impl(&_mh_execute_header, i, v48, "%s: including MKM with MKI: %s", v49, 0x16u);
        swift_arrayDestroy();

        v43 = v45;
        if (!v41)
        {
          goto LABEL_5;
        }
      }

      else
      {

        sub_1007D5CA4(v32, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v43 = v45;
        if (!v41)
        {
          goto LABEL_5;
        }
      }
    }
  }

  while (1)
  {
LABEL_5:
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v45 >= j)
    {
      break;
    }

    v41 = *(v38 + 8 * v45);
    ++v43;
    if (v41)
    {
      goto LABEL_8;
    }
  }

  v210 = &_swiftEmptySetSingleton;
  j = v207;
  v55 = v196;
  (*((swift_isaMask & **(v207 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmController)) + 0x118))(v54);
  if ((*(v205 + 48))(v55, 1, v200) == 1)
  {
    v56 = sub_100013814(v55, &qword_100CB2AA0);
  }

  else
  {
    v57 = v188;
    sub_1007D5C3C(v55, v188, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v58 = v181;
    sub_1007D5BD4(v57, v181, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v59 = v180;
    sub_1007139D8(v180, v58);
    sub_1007D5CA4(v59, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v60 = v187;
    sub_1007D5BD4(v57, v187, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v61 = sub_1009364B8();
    v62 = sub_100936F18();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v217[0] = swift_slowAlloc();
      *v63 = v201;
      *(v63 + 4) = sub_10001273C(0xD000000000000027, v202 | 0x8000000000000000, v217);
      *(v63 + 12) = 2080;
      v64 = sub_100936048();
      v66 = v65;
      sub_1007D5CA4(v60, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v67 = sub_10001273C(v64, v66, v217);

      *(v63 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v61, v62, "%s: including SKM with SKI: %s", v63, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1007D5CA4(v60, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    }

    v56 = sub_1007D5CA4(v57, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  }

  i = *((swift_isaMask & *j) + 0x108);
  v68 = (i)(v56);
  if (v68)
  {
    v70 = v69;
    ObjectType = swift_getObjectType();
    v72 = (*(v70 + 16))(ObjectType, v70);
    v68 = swift_unknownObjectRelease();
    goto LABEL_23;
  }

  if (!(&_swiftEmptyArrayStorage >> 62))
  {
    goto LABEL_22;
  }

LABEL_90:
  v68 = sub_1009373F8();
  if (!v68)
  {
LABEL_22:
    v72 = &_swiftEmptySetSingleton;
    goto LABEL_23;
  }

  sub_100729B20(&_swiftEmptyArrayStorage);
  v72 = v68;
LABEL_23:
  if ((i)(v68))
  {
    v74 = v73;
    v75 = swift_getObjectType();
    v76 = (*(v74 + 24))(v75, v74);
    swift_unknownObjectRelease();
  }

  else if (&_swiftEmptyArrayStorage >> 62 && sub_1009373F8())
  {
    sub_100729B20(&_swiftEmptyArrayStorage);
    v76 = v178;
  }

  else
  {
    v76 = &_swiftEmptySetSingleton;
  }

  v77 = sub_1009364B8();
  v78 = sub_100936F18();

  LODWORD(v205) = v78;
  v79 = os_log_type_enabled(v77, v78);
  v203 = v76;
  if (v79)
  {
    v80 = swift_slowAlloc();
    v200 = swift_slowAlloc();
    v217[0] = v200;
    *v80 = 136315650;
    *(v80 + 4) = sub_10001273C(0xD000000000000027, v202 | 0x8000000000000000, v217);
    *(v80 + 12) = 2080;
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    sub_100014B20(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
    v81 = sub_100936E28();
    v83 = v72;
    v84 = sub_10001273C(v81, v82, v217);

    *(v80 + 14) = v84;
    *(v80 + 22) = 2080;
    j = v207;
    v85 = sub_100936E28();
    v87 = sub_10001273C(v85, v86, v217);

    *(v80 + 24) = v87;
    v72 = v83;
    _os_log_impl(&_mh_execute_header, v77, v205, "%s: computing for standard participants: %s; lightweight participants: %s", v80, 0x20u);
    swift_arrayDestroy();
  }

  v88 = v198;
  if ((v72 & 0xC000000000000001) != 0)
  {
    sub_100937118();
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    sub_100014B20(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
    sub_100936E58();
    v72 = v212;
    v89 = v213;
    v90 = v214;
    v91 = v215;
    v92 = v216;
  }

  else
  {
    v91 = 0;
    v93 = -1 << *(v72 + 32);
    v89 = v72 + 56;
    v90 = ~v93;
    v94 = -v93;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    else
    {
      v95 = -1;
    }

    v92 = v95 & *(v72 + 56);
  }

  v181 = v90;
  v96 = (v90 + 64) >> 6;
  v196 = (v88 + 48);
  v200 = v72;
  v199 = v89;
  v198 = v96;
  v97 = v192;
  while ((v72 & 0x8000000000000000) == 0)
  {
    v98 = v91;
    v99 = v92;
    for (i = v91; !v99; ++v98)
    {
      i = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        goto LABEL_88;
      }

      if (i >= v96)
      {
        goto LABEL_56;
      }

      v99 = *(v89 + 8 * i);
    }

    v100 = (v99 - 1) & v99;
    v101 = *(*(v72 + 48) + ((i << 9) | (8 * __clz(__rbit64(v99)))));
    if (!v101)
    {
      goto LABEL_56;
    }

LABEL_48:
    v205 = v100;
    v103 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID;
    v104 = *(v101 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID);
    v105 = *((swift_isaMask & *j) + 0x198);
    if (v104 == v105())
    {
      v106 = v101;
      v107 = sub_1009364B8();
      v108 = sub_100936F18();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v217[0] = v111;
        *v109 = v201;
        *(v109 + 4) = sub_10001273C(0xD000000000000027, v202 | 0x8000000000000000, v217);
        *(v109 + 12) = 2112;
        *(v109 + 14) = v106;
        *v110 = v101;
        v112 = v106;
        v113 = v108;
        v114 = v107;
        v115 = "%s: skipping standard localParticipant %@";
LABEL_54:
        _os_log_impl(&_mh_execute_header, v114, v113, v115, v109, 0x16u);
        sub_100013814(v110, &qword_100CB36B0);

        sub_100012970(v111);

        j = v207;

        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v116 = v193;
    (*((swift_isaMask & *v101) + 0x108))();
    if ((*v196)(v116, 1, v197) == 1)
    {
      sub_100013814(v116, &unk_100CB6040);
      v106 = v101;
      v107 = sub_1009364B8();
      v117 = sub_100936F18();

      if (os_log_type_enabled(v107, v117))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v217[0] = v111;
        *v109 = v201;
        *(v109 + 4) = sub_10001273C(0xD000000000000027, v202 | 0x8000000000000000, v217);
        *(v109 + 12) = 2112;
        *(v109 + 14) = v106;
        *v110 = v101;
        v112 = v106;
        v113 = v117;
        v114 = v107;
        v115 = "%s: Cannot generate desired material for %@: don't have standard participant's public key";
        goto LABEL_54;
      }

LABEL_36:

LABEL_37:
      goto LABEL_38;
    }

    v118 = v195;
    sub_1007D5C3C(v116, v195, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v188 = type metadata accessor for IDSGroupEncryptionPublicIdentity;
    v119 = v190;
    sub_1007D5BD4(v118, v190, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v120 = *(v101 + v103);
    v121 = v204;

    v123 = (v105)(v122);
    sub_10089BF50(0, v121, v119, v120, v123, v97);
    swift_storeEnumTagMultiPayload();
    v124 = v191;
    sub_100727F64(v191, v97);
    v187 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer;
    sub_1007D5CA4(v124, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    v125 = v210;
    sub_1007D5BD4(v195, v119, v188);
    v126 = *(v101 + v103);

    v128 = (v105)(v127);
    v129 = v119;
    j = v207;
    sub_10089BF50(1, v125, v129, v126, v128, v97);
    swift_storeEnumTagMultiPayload();
    sub_100727F64(v124, v97);

    sub_1007D5CA4(v124, v187);
    sub_1007D5CA4(v195, type metadata accessor for IDSGroupEncryptionPublicIdentity);
LABEL_38:
    v91 = i;
    v92 = v205;
    v72 = v200;
    v89 = v199;
    v96 = v198;
  }

  v102 = sub_100937198();
  if (v102)
  {
    v209 = v102;
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    swift_dynamicCast();
    v101 = v217[0];
    i = v91;
    v100 = v92;
    if (v217[0])
    {
      goto LABEL_48;
    }
  }

LABEL_56:

  sub_100308C6C();
  v130 = v203;
  if ((v203 & 0xC000000000000001) != 0)
  {
    sub_100937118();
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    sub_100014B20(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
    sub_100936E58();
    v130 = v217[0];
    v131 = v217[1];
    v132 = v217[2];
    i = v217[3];
    v133 = v217[4];
  }

  else
  {
    i = 0;
    v134 = -1 << *(v203 + 32);
    v131 = v203 + 56;
    v132 = ~v134;
    v135 = -v134;
    if (v135 < 64)
    {
      v136 = ~(-1 << v135);
    }

    else
    {
      v136 = -1;
    }

    v133 = v136 & *(v203 + 56);
  }

  v200 = v132;
  v137 = (v132 + 64) >> 6;
  v203 = v130;
  v204 = v131;
  while (2)
  {
    if ((v130 & 0x8000000000000000) == 0)
    {
      v138 = i;
      v139 = v133;
      for (j = i; !v139; ++v138)
      {
        j = v138 + 1;
        if (__OFADD__(v138, 1))
        {
          goto LABEL_89;
        }

        if (j >= v137)
        {
          goto LABEL_83;
        }

        v139 = *(v131 + 8 * j);
      }

      v140 = (v139 - 1) & v139;
      v141 = *(*(v130 + 48) + ((j << 9) | (8 * __clz(__rbit64(v139)))));
      if (!v141)
      {
        goto LABEL_83;
      }

LABEL_75:
      v205 = v140;
      v143 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID;
      v144 = *(v141 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID);
      v145 = *((swift_isaMask & *v207) + 0x198);
      if (v144 == v145())
      {
        v146 = v141;
        v147 = sub_1009364B8();
        v148 = sub_100936F18();

        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v209 = v151;
          *v149 = v201;
          *(v149 + 4) = sub_10001273C(0xD000000000000027, v202 | 0x8000000000000000, &v209);
          *(v149 + 12) = 2112;
          *(v149 + 14) = v146;
          *v150 = v141;
          v152 = v146;
          v153 = v148;
          v154 = v147;
          v155 = "%s: skipping lightweight localParticipant %@";
          goto LABEL_81;
        }

LABEL_63:

        goto LABEL_64;
      }

      v156 = v189;
      (*((swift_isaMask & *v141) + 0x108))();
      if ((*v196)(v156, 1, v197) == 1)
      {
        sub_100013814(v156, &unk_100CB6040);
        v146 = v141;
        v147 = sub_1009364B8();
        v157 = sub_100936F18();

        if (!os_log_type_enabled(v147, v157))
        {
          goto LABEL_63;
        }

        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v209 = v151;
        *v149 = v201;
        *(v149 + 4) = sub_10001273C(0xD000000000000027, v202 | 0x8000000000000000, &v209);
        *(v149 + 12) = 2112;
        *(v149 + 14) = v146;
        *v150 = v141;
        v152 = v146;
        v153 = v157;
        v154 = v147;
        v155 = "%s: Cannot generate desired material for %@: don't have lightweight participant's public key";
LABEL_81:
        _os_log_impl(&_mh_execute_header, v154, v153, v155, v149, 0x16u);
        sub_100013814(v150, &qword_100CB36B0);

        sub_100012970(v151);
        v131 = v204;

LABEL_64:
      }

      else
      {
        v158 = v186;
        sub_1007D5C3C(v156, v186, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        v159 = v210;
        v160 = v190;
        sub_1007D5BD4(v158, v190, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        v161 = *(v141 + v143);

        v163 = (v145)(v162);
        v164 = v192;
        sub_10089BF50(1, v159, v160, v161, v163, v192);
        swift_storeEnumTagMultiPayload();
        v165 = v191;
        sub_100727F64(v191, v164);

        sub_1007D5CA4(v165, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        v166 = v158;
        v131 = v204;
        sub_1007D5CA4(v166, type metadata accessor for IDSGroupEncryptionPublicIdentity);
      }

      i = j;
      v133 = v205;
      v130 = v203;
      continue;
    }

    break;
  }

  v142 = sub_100937198();
  if (v142)
  {
    v208 = v142;
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    swift_dynamicCast();
    v141 = v209;
    j = i;
    v140 = v133;
    if (v209)
    {
      goto LABEL_75;
    }
  }

LABEL_83:

  v167 = sub_100308C6C();
  v205 = (*((swift_isaMask & *v207) + 0x120))(v167);
  v168 = *(v205 + 16);
  v169 = v184;
  v170 = v183;
  v171 = v182;
  v172 = v185;
  if (v168)
  {
    v173 = (v205 + 40);
    do
    {
      v174 = *v173;
      v175 = swift_getObjectType();
      v206 = *(v174 + 8);
      v207 = v175;
      swift_unknownObjectRetain();
      v176 = v206(v171, v170, v169, v172, v207, v174);
      sub_1007CF774(v176);
      swift_unknownObjectRelease();
      v173 += 2;
      --v168;
    }

    while (v168);
  }

  return v211;
}

uint64_t sub_1007CF774(uint64_t a1)
{
  v2 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - v8;
  result = __chkstk_darwin(v7);
  v12 = &v20 - v11;
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  for (i = (v14 + 63) >> 6; v16; result = sub_1007D5CA4(v9, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer))
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_1007D5BD4(*(a1 + 48) + *(v3 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    sub_1007D5C3C(v12, v6, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    sub_100727F64(v9, v6);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= i)
    {
    }

    v16 = *(a1 + 56 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1007CF960(uint64_t a1)
{
  v2 = v1;
  if (!(*((swift_isaMask & *v1) + 0x108))())
  {
    return &_swiftEmptySetSingleton;
  }

  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 32))(a1, ObjectType, v5);
  v8 = swift_unknownObjectRelease();
  if (!v7)
  {
    return &_swiftEmptySetSingleton;
  }

  v9 = (*((swift_isaMask & *v7) + 0xB0))(v8);

  if (!v9)
  {
    return &_swiftEmptySetSingleton;
  }

  if ((*((swift_isaMask & *v9) + 0x80))())
  {
    v10 = &_swiftEmptySetSingleton;
  }

  else
  {
    v12 = sub_1009364B8();
    v13 = sub_100936F18();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10001273C(0xD000000000000024, 0x8000000100B027A0, &v16);
      _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
      sub_100012970(v15);
    }

    v10 = (*(**(v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmCache) + 320))(a1);
  }

  return v10;
}

void sub_1007CFBC0()
{
  v1 = v0;
  v2 = sub_1009364B8();
  v3 = sub_100936F18();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10001273C(0xD000000000000018, 0x8000000100B027D0, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100012970(v5);
  }

  v6 = (*((swift_isaMask & *v1) + 0xF0))();
  if (v6)
  {
    oslog = v6;
    v7 = (*((swift_isaMask & v6->isa) + 0xD8))();
    v8 = (*((swift_isaMask & *v1) + 0x258))(v7);
    (*((swift_isaMask & *v1) + 0x268))(v8);
  }

  else
  {
    oslog = sub_1009364B8();
    v9 = sub_100936F18();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10001273C(0xD000000000000018, 0x8000000100B027D0, &v13);
      _os_log_impl(&_mh_execute_header, oslog, v9, "%s: no exchange controllers", v10, 0xCu);
      sub_100012970(v11);
    }
  }
}

uint64_t sub_1007CFE98()
{
  v1 = v0;
  v2 = sub_1009364B8();
  v3 = sub_100936F18();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10001273C(0xD000000000000017, 0x8000000100B027F0, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100012970(v5);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_lock);
  v8 = __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  os_unfair_lock_lock(v6 + 4);
  sub_10072FFE8();
  os_unfair_lock_unlock(v6 + 4);
  v9 = (*(**(v1 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmCache) + 288))();
  return (*(**(v1 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmCache) + 288))(v9);
}

uint64_t sub_1007D00AC(void *a1)
{
  v2 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  (*((swift_isaMask & *a1) + 0x158))(v4);
  v6(v4, 1, 1, v5);
  (*((swift_isaMask & *a1) + 0x170))(v4);
  return (*((swift_isaMask & *a1) + 0x188))(0);
}

uint64_t sub_1007D0260()
{
  v1 = v0;
  v2 = sub_1009364B8();
  v3 = sub_100936F18();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10001273C(0xD00000000000002DLL, 0x8000000100B02810, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100012970(v5);
  }

  v6 = *((swift_isaMask & *v1) + 0x218);

  return v6();
}

void sub_1007D03B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1009364B8();
  v5 = sub_100936F18();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10001273C(0xD000000000000028, 0x8000000100B02840, &v8);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_100012970(v7);
  }

  if (*(v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmCache) == a1)
  {

    sub_1007D219C();
  }
}

void sub_1007D04F8(uint64_t a1)
{
  v2 = v1;

  v4 = sub_1009364B8();
  v5 = sub_100936F18();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10001273C(0xD000000000000017, 0x8000000100AFEAE0, &v13);
    *(v6 + 12) = 2080;
    type metadata accessor for IDSGroupEncryptionControllerMember();
    sub_100014B20(&qword_100CB2AC8, type metadata accessor for IDSGroupEncryptionControllerMember);
    v7 = sub_100936E28();
    v9 = sub_10001273C(v7, v8, &v13);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: members %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController)) + 0x140))(a1);
  (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmController)) + 0x140))(a1);
  (*(**(v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmCache) + 304))(a1);
  v10 = (*(**(v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmCache) + 304))(a1);
  v11 = (*((swift_isaMask & *v2) + 0xF0))(v10);
  if (v11)
  {
    v12 = v11;
    (*((swift_isaMask & *v11) + 0xF8))(a1);
  }
}

uint64_t sub_1007D0868(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1009364B8();
  v5 = sub_100936F18();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10001273C(0xD000000000000019, 0x8000000100AFFCC0, &v13);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_100012970(v7);
  }

  v8 = (*((swift_isaMask & *v2) + 0xF0))();
  if (v8)
  {
    v9 = v8;
    (*((swift_isaMask & *v8) + 0x100))(a1);
  }

  v10 = (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController)) + 0x160))();
  (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmController)) + 0x160))(v10);
  v11 = *((swift_isaMask & *v2) + 0x218);

  return v11();
}

uint64_t sub_1007D0AC8()
{
  v1 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - v2;
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController)) + 0x118))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100013814(v3, &qword_100CB2AA0);
    v9 = sub_1009364B8();
    v10 = sub_100936F18();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10001273C(0xD000000000000020, 0x8000000100B02C60, &v27);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s: no current material", v11, 0xCu);
      sub_100012970(v12);
    }
  }

  else
  {
    v13 = sub_1007D5C3C(v3, v8, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v14 = (*((swift_isaMask & *v0) + 0xF0))(v13);
    if (v14)
    {
      v15 = *(v0 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_lock);
      v16 = __chkstk_darwin(v14);
      *(&v26 - 4) = v0;
      *(&v26 - 3) = v8;
      *(&v26 - 2) = v16;
      v17 = __chkstk_darwin(v16);
      *(&v26 - 2) = sub_1007D5B08;
      *(&v26 - 1) = v18;
      v19 = v17;
      os_unfair_lock_lock(v15 + 4);
      sub_1007D5B28(&v27);
      os_unfair_lock_unlock(v15 + 4);

      v20 = v27;
      sub_1007D5CA4(v8, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      return v20;
    }

    v22 = sub_1009364B8();
    v23 = sub_100936F18();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10001273C(0xD000000000000020, 0x8000000100B02C60, &v27);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: no exchange controllers", v24, 0xCu);
      sub_100012970(v25);
    }

    sub_1007D5CA4(v8, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  }

  return 0;
}

void sub_1007D0F34(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v96 = a3;
  v99 = a4;
  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v97 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v95 = &v89 - v11;
  __chkstk_darwin(v10);
  v93 = &v89 - v12;
  v13 = sub_100706B30(&qword_100CB62D0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v89 - v15;
  v17 = sub_100706B30(&qword_100CB2AA0);
  v18 = __chkstk_darwin(v17 - 8);
  v92 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v98 = &v89 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v89 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v89 - v26;
  v28 = *((swift_isaMask & *a1) + 0x150);
  v101 = a1;
  v28(v25);
  v100 = a2;
  sub_1007D5BD4(a2, v24, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v90 = *(v7 + 56);
  v91 = v7 + 56;
  v90(v24, 0, 1, v6);
  v29 = *(v14 + 56);
  sub_100012D50(v27, v16, &qword_100CB2AA0);
  v30 = v6;
  sub_100012D50(v24, &v16[v29], &qword_100CB2AA0);
  v31 = *(v7 + 48);
  v32 = v31(v16, 1, v30);
  v94 = v30;
  if (v32 == 1)
  {
    sub_100013814(v24, &qword_100CB2AA0);
    sub_100013814(v27, &qword_100CB2AA0);
    if (v31(&v16[v29], 1, v30) == 1)
    {
      sub_100013814(v16, &qword_100CB2AA0);
LABEL_10:
      v50 = v95;
      sub_1007D5BD4(v100, v95, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v51 = sub_1009364B8();
      v52 = sub_100936F18();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *v53 = 136315394;
        *(v53 + 4) = sub_10001273C(0xD000000000000020, 0x8000000100B02C60, &v103);
        *(v53 + 12) = 2080;
        sub_100014B20(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v54 = sub_100937548();
        v56 = v55;
        sub_1007D5CA4(v50, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v57 = sub_10001273C(v54, v56, &v103);

        *(v53 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v51, v52, "%s: already sent %s", v53, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1007D5CA4(v50, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      }

      v64 = 0;
      goto LABEL_34;
    }

    goto LABEL_6;
  }

  sub_100012D50(v16, v98, &qword_100CB2AA0);
  if (v31(&v16[v29], 1, v30) == 1)
  {
    sub_100013814(v24, &qword_100CB2AA0);
    sub_100013814(v27, &qword_100CB2AA0);
    sub_1007D5CA4(v98, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
LABEL_6:
    v33 = sub_100013814(v16, &qword_100CB62D0);
    v34 = v101;
    goto LABEL_7;
  }

  v47 = v93;
  sub_1007D5C3C(&v16[v29], v93, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  sub_100014B20(&qword_100CB2D88, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v48 = v98;
  v49 = sub_100936B18();
  sub_1007D5CA4(v47, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  sub_100013814(v24, &qword_100CB2AA0);
  sub_100013814(v27, &qword_100CB2AA0);
  sub_1007D5CA4(v48, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v33 = sub_100013814(v16, &qword_100CB2AA0);
  v34 = v101;
  if (v49)
  {
    goto LABEL_10;
  }

LABEL_7:
  v35 = *(v34 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController);
  v36 = *((swift_isaMask & *v34) + 0x180);
  v95 = (swift_isaMask & *v34) + 384;
  v37 = (v36)(v33);
  v38 = (*((swift_isaMask & *v35) + 0x170))(v37);
  v39 = (*((swift_isaMask & *v96) + 0xE8))(v100);
  v40 = (*((swift_isaMask & *v34) + 0x108))();
  v42 = v102;
  if (v40)
  {
    v43 = v41;
    ObjectType = swift_getObjectType();
    v45 = (*(v43 + 8))(ObjectType, v43);
    swift_unknownObjectRelease();
    v46 = sub_1007D1D90(v45);
  }

  else
  {
    v46 = &_swiftEmptyArrayStorage;
  }

  v58 = sub_1007478B8(v46);

  v59 = sub_1007D20A8(v39, v58);
  if ((v59 & 0xC000000000000001) == 0)
  {
    v62 = *(v59 + 16);

    if (v62)
    {
      goto LABEL_15;
    }

LABEL_18:

    v63 = 1;
    goto LABEL_23;
  }

  v60 = sub_100937158();

  if (!v60)
  {
    goto LABEL_18;
  }

LABEL_15:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v61 = sub_100937158();
  }

  else
  {
    v61 = *(v39 + 16);
  }

  v63 = v61 > 0;
LABEL_23:
  LODWORD(v98) = v63;
  v65 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_l;
  v66 = v34;
  v96 = v65;
  v67 = sub_1009364B8();
  v68 = sub_100936F18();
  v69 = os_log_type_enabled(v67, v68);
  LODWORD(v93) = v38;
  if (v69)
  {
    v70 = swift_slowAlloc();
    v102 = v42;
    v71 = v70;
    v72 = swift_slowAlloc();
    v103 = v72;
    *v71 = 136316162;
    *(v71 + 4) = sub_10001273C(0xD000000000000020, 0x8000000100B02C60, &v103);
    *(v71 + 12) = 1024;
    *(v71 + 14) = v38 & 1;
    *(v71 + 18) = 2048;
    *(v71 + 20) = v36();
    *(v71 + 28) = 2048;
    *(v71 + 30) = (*((swift_isaMask & *v35) + 0x128))();

    *(v71 + 38) = 1024;
    *(v71 + 40) = v98;
    _os_log_impl(&_mh_execute_header, v67, v68, "%s: hasHardRollOccurred:%{BOOL}d (%llu < %llu) hasSentToAnyone:%{BOOL}d", v71, 0x2Cu);
    sub_100012970(v72);
  }

  else
  {
  }

  v73 = v97;
  v74 = *(v66 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_idsdSessionProvider);
  v75 = sub_100936B28();
  v76 = [v74 sessionWithUniqueID:v75];

  if (!v76)
  {
    goto LABEL_33;
  }

  v77 = (*((swift_isaMask & *v35) + 0x1E0))();
  if (!v77)
  {
    swift_unknownObjectRelease();
LABEL_33:
    v64 = 0;
    goto LABEL_34;
  }

  v78 = v77;
  if (((v93 | v98) & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_33;
  }

  sub_1007D5BD4(v100, v73, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v79 = sub_1009364B8();
  v80 = sub_100936F18();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v103 = v102;
    *v81 = 136315394;
    *(v81 + 4) = sub_10001273C(0xD000000000000020, 0x8000000100B02C60, &v103);
    *(v81 + 12) = 2080;
    sub_100014B20(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    LODWORD(v98) = v80;
    v82 = sub_100937548();
    v84 = v83;
    sub_1007D5CA4(v73, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v85 = sub_10001273C(v82, v84, &v103);

    *(v81 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v79, v98, "%s: sending to avc %s", v81, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1007D5CA4(v73, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  }

  v86 = [v76 recvKeyMaterial:v78];
  v87 = (*((swift_isaMask & *v35) + 0x128))(v86);
  (*((swift_isaMask & *v66) + 0x188))(v87);
  v88 = v92;
  sub_1007D5BD4(v100, v92, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v64 = 1;
  v90(v88, 0, 1, v94);
  (*((swift_isaMask & *v66) + 0x158))(v88);
  swift_unknownObjectRelease();

LABEL_34:
  *v99 = v64;
}

void *sub_1007D1D90(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_100937158();
    result = &_swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v29 = &_swiftEmptyArrayStorage;
    sub_1009372B8();
    result = sub_100937108();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v29 = &_swiftEmptyArrayStorage;
  sub_1009372B8();
  result = sub_1009370C8();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_1007D53C4(v26, v27, v28, a1);
    v13 = v12;
    v14 = *&v12[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken];

    sub_100937298();
    sub_1009372C8();
    sub_1009372D8();
    result = sub_1009372A8();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_100937128())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_100706B30(&qword_100CB62D8);
      v7 = sub_100936E48();
      sub_1009371B8();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1000152C8(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1000152C8(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_1000152C8(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

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
  return result;
}

void *sub_1007D20A8(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_100937158();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1007D438C(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_100937158() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_100937158();
  v2 = sub_10073035C(v5, v6);
LABEL_10:

  return sub_1007D45AC(a1, v2);
}

void sub_1007D219C()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1009364B8();
  v7 = sub_100936F18();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10001273C(0xD000000000000021, 0x8000000100B02C90, &v26);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_100012970(v9);
  }

  v10 = *(v1 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_idsdSessionProvider);
  v11 = sub_100936B28();
  v12 = [v10 sessionWithUniqueID:v11];

  if (v12)
  {
    v13 = (*(**(v1 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmCache) + 208))();
    v14 = v13;
    v15 = 0;
    v16 = 1 << *(v13 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v13 + 56;
    v19 = v17 & *(v13 + 56);
    v20 = (v16 + 63) >> 6;
    while (v19)
    {
      v21 = v15;
LABEL_12:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      sub_1007D5BD4(*(v14 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v5, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100749640();
      v24 = v23;
      sub_1007D5CA4(v5, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      [v12 recvKeyMaterial:v24];
    }

    while (1)
    {
      v21 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v21 >= v20)
      {

        swift_unknownObjectRelease();
        return;
      }

      v19 = *(v18 + 8 * v21);
      ++v15;
      if (v19)
      {
        v15 = v21;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1007D249C()
{
  sub_1007D219C();

  return sub_1007D0AC8();
}

void sub_1007D2500()
{
  v1 = v0;
  v2 = sub_100706B30(&qword_100CB2AA0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v47 - v6;
  v8 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  isa = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_idsdSessionProvider);
  v16 = sub_100936B28();
  v17 = [v15 sessionWithUniqueID:v16];

  if (v17)
  {
    v51 = v8;
    v52 = v5;
    v49 = isa;
    v50 = v17;
    v53 = v7;
    v18 = *(v1 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmCache);
    v19 = (*(*v18 + 208))();
    v20 = v19;
    v21 = v19 + 56;
    v22 = 1 << *(v19 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v19 + 56);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    v54 = &_swiftEmptyArrayStorage;
    if (!v24)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v27 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        sub_1007D5BD4(*(v20 + 48) + v9[9].isa * (v27 | (v26 << 6)), v14, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        sub_100749640();
        isa = v28;
        sub_1007D5CA4(v14, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v18 = [isa dictionaryRepresentation];

        if (v18)
        {
          break;
        }

        if (!v24)
        {
          goto LABEL_7;
        }
      }

      v48 = sub_100936A78();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1007D4258(0, v54[2].isa + 1, 1, v54);
      }

      isa = v54[2].isa;
      v30 = v54[3].isa;
      v18 = (isa + 1);
      if (isa >= v30 >> 1)
      {
        v54 = sub_1007D4258((v30 > 1), isa + 1, 1, v54);
      }

      v31 = v54;
      v54[2].isa = v18;
      v31[isa + 4].isa = v48;
    }

    while (v24);
    while (1)
    {
LABEL_7:
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v29 >= v25)
      {
        break;
      }

      v24 = *(v21 + 8 * v29);
      ++v26;
      if (v24)
      {
        v26 = v29;
        goto LABEL_5;
      }
    }

    v33 = *(v1 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_lock);
    v34 = __chkstk_darwin(v32);
    *(&v47 - 2) = v1;
    __chkstk_darwin(v34);
    *(&v47 - 2) = sub_1007D5904;
    *(&v47 - 1) = v35;
    os_unfair_lock_lock(v33 + 4);
    v24 = v53;
    sub_10072FFE8();
    os_unfair_lock_unlock(v33 + 4);
    v36 = v52;
    sub_100012D50(v24, v52, &qword_100CB2AA0);
    if ((v9[6].isa)(v36, 1, v51) == 1)
    {

      sub_100013814(v36, &qword_100CB2AA0);
      if (!v54[2].isa)
      {
        sub_100013814(v24, &qword_100CB2AA0);

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_27;
    }

    isa = v49;
    sub_1007D5C3C(v36, v49, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_100749640();
    v41 = v40;
    v42 = [v40 dictionaryRepresentation];

    v9 = v54;
    if (v42)
    {

      v18 = sub_100936A78();

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_24:
        v44 = v9[2].isa;
        v43 = v9[3].isa;
        if (v44 >= v43 >> 1)
        {
          v9 = sub_1007D4258((v43 > 1), v44 + 1, 1, v9);
        }

        sub_1007D5CA4(isa, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v9[2].isa = (v44 + 1);
        v9[v44 + 4].isa = v18;
LABEL_27:
        sub_100706B30(&qword_100CB62A0);
        v45 = sub_100936CD8().super.isa;

        [v50 recvStableKeyMaterialForFrameworkCache:v45];
        swift_unknownObjectRelease();

        sub_100013814(v24, &qword_100CB2AA0);
        return;
      }

LABEL_32:
      v9 = sub_1007D4258(0, v9[2].isa + 1, 1, v9);
      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
    v54 = sub_1009364B8();
    v37 = sub_100936EF8();
    if (os_log_type_enabled(v54, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v55 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_10001273C(0xD000000000000026, 0x8000000100B02870, &v55);
      _os_log_impl(&_mh_execute_header, v54, v37, "%s: no ids session", v38, 0xCu);
      sub_100012970(v39);
    }

    else
    {
      v46 = v54;
    }
  }
}

uint64_t sub_1007D2C34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = sub_100706B30(&qword_100CB62D0);
  __chkstk_darwin(v49);
  v50 = &v42 - v3;
  v4 = sub_100706B30(&qword_100CB2AA0);
  v5 = __chkstk_darwin(v4 - 8);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v47 = &v42 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v42 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v42 - v13;
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v46 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v42 - v22;
  (*((swift_isaMask & **(a1 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmController)) + 0x118))(v21);
  v24 = *(v18 + 48);
  if (v24(v16, 1, v17) == 1)
  {
    sub_100013814(v16, &qword_100CB2AA0);
    return (*(v18 + 56))(v51, 1, 1, v17);
  }

  v26 = sub_1007D5C3C(v16, v23, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v27 = *((swift_isaMask & *a1) + 0x168);
  v43 = a1;
  v44 = v24;
  v27(v26);
  v45 = v23;
  sub_1007D5BD4(v23, v11, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v30 = *(v18 + 56);
  v28 = v18 + 56;
  v29 = v30;
  v30(v11, 0, 1, v17);
  v31 = v50;
  v32 = *(v49 + 48);
  sub_100012D50(v14, v50, &qword_100CB2AA0);
  v33 = v44;
  sub_100012D50(v11, v31 + v32, &qword_100CB2AA0);
  if (v33(v31, 1, v17) != 1)
  {
    v42 = v11;
    v49 = v28;
    v36 = v47;
    sub_100012D50(v31, v47, &qword_100CB2AA0);
    if (v33(v31 + v32, 1, v17) != 1)
    {
      v40 = v46;
      sub_1007D5C3C(v31 + v32, v46, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100014B20(&qword_100CB2D88, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v41 = sub_100936B18();
      sub_1007D5CA4(v40, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100013814(v42, &qword_100CB2AA0);
      sub_100013814(v14, &qword_100CB2AA0);
      sub_1007D5CA4(v36, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100013814(v31, &qword_100CB2AA0);
      v37 = v43;
      v35 = v45;
      if (v41)
      {
        goto LABEL_11;
      }

LABEL_9:
      v38 = v48;
      sub_1007D5BD4(v35, v48, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v29(v38, 0, 1, v17);
      (*((swift_isaMask & *v37) + 0x170))(v38);
      v39 = v51;
      sub_1007D5C3C(v35, v51, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      return (v29)(v39, 0, 1, v17);
    }

    sub_100013814(v42, &qword_100CB2AA0);
    sub_100013814(v14, &qword_100CB2AA0);
    sub_1007D5CA4(v36, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v35 = v45;
LABEL_8:
    sub_100013814(v31, &qword_100CB62D0);
    v37 = v43;
    goto LABEL_9;
  }

  sub_100013814(v11, &qword_100CB2AA0);
  sub_100013814(v14, &qword_100CB2AA0);
  v34 = v33(v31 + v32, 1, v17);
  v35 = v45;
  if (v34 != 1)
  {
    goto LABEL_8;
  }

  sub_100013814(v31, &qword_100CB2AA0);
LABEL_11:
  sub_1007D5CA4(v35, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  return (v29)(v51, 1, 1, v17);
}

uint64_t sub_1007D3328(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_lock);
  os_unfair_lock_lock(v8 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v8 + 4);

  v9 = sub_1009364B8();
  v10 = sub_100936F18();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10001273C(a2, a3, &v33);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s    ", v11, 0xCu);
    sub_100012970(v12);
  }

  v13 = sub_1009364B8();
  v14 = sub_100936F18();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10001273C(a2, a3, &v33);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s    MKM Controller", v15, 0xCu);
    sub_100012970(v16);
  }

  v17 = *(v4 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController);
  v33 = a2;
  v34 = a3;

  v35._countAndFlagsBits = 538976288;
  v35._object = 0xE400000000000000;
  sub_100936C08(v35);
  (*((swift_isaMask & *v17) + 0x200))(a1, v33, v34);

  v18 = sub_1009364B8();
  v19 = sub_100936F18();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10001273C(a2, a3, &v33);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s    ", v20, 0xCu);
    sub_100012970(v21);
  }

  v22 = sub_1009364B8();
  v23 = sub_100936F18();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_10001273C(a2, a3, &v33);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s    SKM Controller", v24, 0xCu);
    sub_100012970(v25);
  }

  v26 = *(v4 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_skmController);
  v33 = a2;
  v34 = a3;

  v36._countAndFlagsBits = 538976288;
  v36._object = 0xE400000000000000;
  sub_100936C08(v36);
  (*((swift_isaMask & *v26) + 0x200))(a1, v33, v34);

  v27 = sub_1009364B8();
  v28 = sub_100936F18();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_10001273C(a2, a3, &v33);
    _os_log_impl(&_mh_execute_header, v27, v28, "%s    ", v29, 0xCu);
    sub_100012970(v30);
  }

  result = (*((swift_isaMask & *v4) + 0xF0))();
  if (result)
  {
    v32 = result;
    v33 = a2;
    v34 = a3;

    v37._countAndFlagsBits = 538976288;
    v37._object = 0xE400000000000000;
    sub_100936C08(v37);
    (*((swift_isaMask & *v32) + 0x118))(a1, v33, v34);
  }

  return result;
}

void sub_1007D3954(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v25 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v25);

  v7 = a4;
  v8 = sub_1009364B8();
  v9 = sub_100936F18();

  v26 = a2;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = a2;
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10001273C(v10, a3, &v28);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10001273C(*&v7[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_sessionID], *&v7[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_sessionID + 8], &v28);
    _os_log_impl(&_mh_execute_header, v8, v9, "%sSession %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v7;
  v13 = sub_1009364B8();
  v14 = sub_100936F18();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315394;
    v17 = sub_10001273C(v26, a3, &v28);
    *(v15 + 4) = v17;
    *(v15 + 12) = 1024;
    *(v15 + 14) = (*((swift_isaMask & *v12) + 0x138))(v17) & 1;

    _os_log_impl(&_mh_execute_header, v13, v14, "%s    needsMaterialUpdate: %{BOOL}d", v15, 0x12u);
    sub_100012970(v16);
  }

  else
  {
  }

  v18 = v12;
  v27 = sub_1009364B8();
  v19 = sub_100936F18();

  if (os_log_type_enabled(v27, v19))
  {
    v20 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v20 = 136315394;
    v21 = sub_10001273C(v26, a3, &v28);
    *(v20 + 4) = v21;
    *(v20 + 12) = 2080;
    (*((swift_isaMask & *v18) + 0x150))(v21);
    v22 = sub_100936B88();
    v24 = sub_10001273C(v22, v23, &v28);

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v27, v19, "%s    materialCurrentlySentToAVC: %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

id sub_1007D3E14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSGroupEncryptionControllerGroupSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1007D4258(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100706B30(&qword_100CB6298);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100706B30(&qword_100CB62A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1007D438C(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_100937158())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100937118();
    sub_100014170(0, &qword_100CB34A0);
    sub_1007D5B6C();
    sub_100936E58();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
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

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_100308C6C();
      return;
    }

    while (1)
    {
      v16 = sub_1007D4C2C(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_100937198())
      {
        sub_100014170(0, &qword_100CB34A0);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *sub_1007D45AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100937118();
    sub_100014170(0, &qword_100CB34A0);
    sub_1007D5B6C();
    sub_100936E58();
    v4 = v78;
    v6 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v73 = v4;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v64 = v7;
  v13 = (v7 + 64) >> 6;
  v70 = v3 + 7;
  v77 = v9;
  v67 = v6;
  v68 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_100937198();
      if (!v21)
      {
        goto LABEL_62;
      }

      v71 = v21;
      sub_100014170(0, &qword_100CB34A0);
      swift_dynamicCast();
      v19 = v72;
      v17 = v8;
      v2 = v9;
      if (!v72)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v73 = v4;
      v74 = v6;
      v75 = v64;
      v76 = v17;
      v77 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = v19;
    v23 = sub_100937028(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v67;
    v4 = v68;
  }

  v25 = ~v24;
  v26 = sub_100014170(0, &qword_100CB34A0);
  v27 = *(v3[6] + 8 * v8);
  v69 = v26;
  while (1)
  {
    v28 = sub_100937038();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v30 = *(v3 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v61;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v62 = &v60;
    __chkstk_darwin(v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = v3[2];
    v63 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v67;
    v35 = v68;
    v37 = i;
LABEL_33:
    v65 = v4;
    while (v35 < 0)
    {
      v38 = sub_100937198();
      if (!v38)
      {
        goto LABEL_61;
      }

      v71 = v38;
      swift_dynamicCast();
      v39 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = sub_100937028(v3[5]);
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v70[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(v45[6] + 8 * v47);
          v51 = sub_100937038();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v70[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v63[v48];
        v63[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
        if (!v53)
        {
          v4 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v41;
      v17 = v41;
      v77 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_1007D5068(v63, v61, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= v17 + 1)
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v55 = v5;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_1007D4DC4(v57, v61, v3, v8, &v73);
  v59 = v58;

  v3 = v59;
LABEL_62:
  sub_100308C6C();
  return v3;
}

uint64_t sub_1007D4C2C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_1009371A8();

    if (v5)
    {
      v6 = sub_1007D525C();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_100014170(0, &qword_100CB34A0);
  v9 = sub_100937028(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_100937038();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100731C8C();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_100745034(v11);
  result = v17;
  *v8 = v18;
  return result;
}

void sub_1007D4DC4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_100937198())
          {
            goto LABEL_29;
          }

          sub_100014170(0, &qword_100CB34A0);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_1007D5068(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_100937028(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_100014170(0, &qword_100CB34A0);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_100937038();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_100937038();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1007D5068(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100706B30(&unk_100CB3680);
  result = sub_100937228();
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
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_100937028(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
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

uint64_t sub_1007D525C()
{
  v1 = v0;

  v2 = sub_100937158();
  v3 = swift_unknownObjectRetain();
  v4 = sub_10073035C(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_100937028(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_100014170(0, &qword_100CB34A0);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = sub_100937038();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_100745034(v8);
  result = sub_100937038();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1007D53C4(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_100937178();
      type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    if (sub_100937138() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_100937148();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_100937028(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_100937038();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_1007D55C4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_rootExchangeController;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 && (v6 = *((swift_isaMask & *v5) + 0xC0), v7 = v5, v6(0, 0), v7, (v8 = *&v2[v4]) != 0))
  {
    v9 = *((swift_isaMask & *v8) + 0xA8);
    v10 = v8;
    v9(0, 0);

    v11 = *&v2[v4];
  }

  else
  {
    v11 = 0;
  }

  *&v2[v4] = a1;
  v12 = a1;

  v13 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_rootExchangeController;
  swift_beginAccess();
  v14 = *&v2[v13];
  if (v14)
  {
    v15 = *((swift_isaMask & *v14) + 0xC0);
    v16 = v14;
    v17 = v2;
    v15(v2, &off_100BE8AF8);

    v18 = *&v2[v13];
    if (v18)
    {
      v19 = *((swift_isaMask & *v18) + 0xA8);
      v20 = v17;
      v21 = v18;
      v19(v2, &off_100BE8AB0);
    }
  }
}

uint64_t sub_1007D5790(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB2AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for IDSGroupEncryptionControllerGroupSession()
{
  result = qword_100CC6C20;
  if (!qword_100CC6C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007D5968()
{
  sub_1009364D8();
  if (v0 <= 0x3F)
  {
    sub_1007D5AB0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1007D5AB0()
{
  if (!qword_100CB2B60)
  {
    type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    v0 = sub_100937058();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB2B60);
    }
  }
}

void *sub_1007D5B28@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_1007D5B6C()
{
  result = qword_100CBA5A0;
  if (!qword_100CBA5A0)
  {
    sub_100014170(255, &qword_100CB34A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA5A0);
  }

  return result;
}

uint64_t sub_1007D5BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007D5C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007D5CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007D5D08()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1007D5D88()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1007D5DE8(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1007D5E80;
}

void sub_1007D5E80(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_1007D5FBC()
{
  v1 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100706B30(&qword_100CB3250);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0x130))(v5);
  v8 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_100013814(v7, &qword_100CB3250);
    return 0;
  }

  else
  {
    sub_1007DE914(v7, v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_1007BE0C4(v7, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v10 = v3[1];
    sub_1007BE0C4(v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    return v10;
  }
}

BOOL sub_1007D61CC()
{
  v1 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100706B30(&qword_100CB3250);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0x130))(v5);
  v8 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_100013814(v7, &qword_100CB3250);
    return 0;
  }

  else
  {
    sub_1007DE914(v7, v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_1007BE0C4(v7, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v10 = v3[*(v1 + 32)];
    sub_1007BE0C4(v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    return v10 > 1;
  }
}

id sub_1007D6540()
{
  v1 = sub_100706B30(&qword_100CB3250);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0x130))(v2);
  v5 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_100013814(v4, &qword_100CB3250);
    return 0;
  }

  else
  {
    v7 = *&v4[*(v5 + 20)];
    sub_1007BE0C4(v4, type metadata accessor for IDSGroupEncryptionFullIdentity);
    return v7;
  }
}

id sub_1007D66E0()
{
  v1 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100706B30(&qword_100CB3250);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0x130))(v5);
  v8 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_100013814(v7, &qword_100CB3250);
    return 0;
  }

  else
  {
    sub_1007DE914(v7, v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_1007BE0C4(v7, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v10 = *&v3[*(v1 + 28)];
    sub_1007BE0C4(v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    return v10;
  }
}

uint64_t sub_1007D6B10()
{
  v1 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100706B30(&qword_100CB3250);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0x130))(v5);
  v8 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_100013814(v7, &qword_100CB3250);
    return 0;
  }

  else
  {
    sub_1007DE914(v7, v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_1007BE0C4(v7, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v10 = sub_10089CD2C();
    sub_1007BE0C4(v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    return v10;
  }
}

id sub_1007D6D3C()
{
  v1 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100706B30(&qword_100CB3250);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0xC0))(v6);
  if ((*(v2 + 48))(v8, 1, v1))
  {
    sub_100013814(v8, &qword_100CB3250);
    return 0;
  }

  else
  {
    sub_1007DE914(v8, v4, type metadata accessor for IDSGroupEncryptionFullIdentity);
    sub_100013814(v8, &qword_100CB3250);
    v10 = *&v4[*(v1 + 20)];
    sub_1007BE0C4(v4, type metadata accessor for IDSGroupEncryptionFullIdentity);
    return v10;
  }
}

id sub_1007D6F60()
{
  v1 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100706B30(&qword_100CB3250);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v14 - v10;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0xC0))(v9);
  if ((*(v5 + 48))(v11, 1, v4))
  {
    sub_100013814(v11, &qword_100CB3250);
    return 0;
  }

  else
  {
    sub_1007DE914(v11, v7, type metadata accessor for IDSGroupEncryptionFullIdentity);
    sub_100013814(v11, &qword_100CB3250);
    sub_1007DE914(v7, v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_1007BE0C4(v7, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v13 = *&v3[*(v1 + 28)];
    sub_1007BE0C4(v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    return v13;
  }
}

uint64_t sub_1007D7254()
{
  v1 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100706B30(&qword_100CB3250);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v14 - v10;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0xC0))(v9);
  if ((*(v5 + 48))(v11, 1, v4))
  {
    sub_100013814(v11, &qword_100CB3250);
    return 0;
  }

  else
  {
    sub_1007DE914(v11, v7, type metadata accessor for IDSGroupEncryptionFullIdentity);
    sub_100013814(v11, &qword_100CB3250);
    sub_1007DE914(v7, v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_1007BE0C4(v7, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v13 = sub_10089CD2C();
    sub_1007BE0C4(v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    return v13;
  }
}

unint64_t sub_1007D7588()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_publicIdentitiesLock);

  os_unfair_lock_lock((v1 + 24));
  sub_1007D75EC((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_1007D75EC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v73 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v72 = &v68 - v7;
  v8 = sub_100706B30(&qword_100CB63E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v68 - v12);
  v76 = sub_1007DE97C(&_swiftEmptyArrayStorage);
  v14 = *a1 + 64;
  v15 = 1 << *(*a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(*a1 + 64);
  v18 = (v15 + 63) >> 6;
  v74 = *a1;

  v19 = 0;
  v75 = v11;
  v71 = v13;
LABEL_4:
  while (2)
  {
    v20 = v19;
    if (v17)
    {
      while (1)
      {
        v21 = v20;
LABEL_13:
        v24 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v25 = v24 | (v21 << 6);
        v26 = *(*(v74 + 48) + 8 * v25);
        v27 = v72;
        sub_1007DE914(*(v74 + 56) + *(v73 + 72) * v25, v72, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        v28 = sub_100706B30(&qword_100CB63E8);
        v29 = *(v28 + 48);
        v30 = v75;
        *v75 = v26;
        sub_1007DFC7C(v27, v30 + v29);
        (*(*(v28 - 8) + 56))(v30, 0, 1, v28);
        v31 = v26;
        v23 = v21;
        v32 = v30;
        v13 = v71;
LABEL_14:
        sub_1007E0188(v32, v13);
        v33 = sub_100706B30(&qword_100CB63E8);
        if ((*(*(v33 - 8) + 48))(v13, 1, v33) == 1)
        {

          *v70 = v76;
          return result;
        }

        v20 = v23;
        v34 = *v13;
        sub_1007DFC7C(v13 + *(v33 + 48), v6);
        v35 = v6;
        v36 = sub_10089CD2C();
        if (v37 >> 60 != 15)
        {
          break;
        }

        v38 = sub_1007DBB60(v34);
        if (v39)
        {
          v52 = v38;
          v53 = v76;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v53;
          v77 = v53;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1007DD438();
            v55 = v77;
          }

          v56 = v52;
          v57 = *(*(v55 + 48) + 8 * v52);
          v58 = v55;

          sub_1007156D8(*(*(v58 + 56) + 16 * v56), *(*(v58 + 56) + 16 * v56 + 8));
          v76 = v58;
          sub_1007DC8A8(v56, v58);

          v6 = v35;
          sub_1007BE0C4(v35, type metadata accessor for IDSGroupEncryptionPublicIdentity);
          v19 = v20;
          goto LABEL_4;
        }

        sub_1007BE0C4(v6, type metadata accessor for IDSGroupEncryptionPublicIdentity);

        if (!v17)
        {
          goto LABEL_6;
        }
      }

      v42 = v36;
      v43 = v37;
      v44 = v76;
      LODWORD(v69) = swift_isUniquelyReferenced_nonNull_native();
      v77 = v44;
      v46 = sub_1007DBB60(v34);
      v47 = *(v44 + 16);
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_35;
      }

      if (*(v44 + 24) >= v49)
      {
        if ((v69 & 1) == 0)
        {
          v69 = v46;
          LODWORD(v76) = v45;
          sub_1007DD438();
          LOBYTE(v45) = v76;
          v46 = v69;
        }
      }

      else
      {
        LODWORD(v76) = v45;
        sub_1007DBDCC(v49, v69);
        v50 = sub_1007DBB60(v34);
        v51 = v45 & 1;
        LOBYTE(v45) = v76;
        if ((v76 & 1) != v51)
        {
          goto LABEL_37;
        }

        v46 = v50;
      }

      v59 = v77;
      v76 = v77;
      if (v45)
      {
        v60 = (*(v77 + 56) + 16 * v46);
        v61 = *v60;
        v62 = v60[1];
        *v60 = v42;
        v60[1] = v43;
        sub_1007156D8(v61, v62);

        v6 = v35;
        sub_1007BE0C4(v35, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        v19 = v20;
        continue;
      }

      *(v77 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      *(*(v59 + 48) + 8 * v46) = v34;
      v63 = (*(v59 + 56) + 16 * v46);
      *v63 = v42;
      v63[1] = v43;
      v6 = v35;
      sub_1007BE0C4(v35, type metadata accessor for IDSGroupEncryptionPublicIdentity);
      v64 = *(v76 + 16);
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (!v65)
      {
        *(v76 + 16) = v66;
        v19 = v20;
        continue;
      }
    }

    else
    {
LABEL_6:
      if (v18 <= v20 + 1)
      {
        v22 = v20 + 1;
      }

      else
      {
        v22 = v18;
      }

      v23 = v22 - 1;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v18)
        {
          v40 = sub_100706B30(&qword_100CB63E8);
          v41 = v75;
          (*(*(v40 - 8) + 56))(v75, 1, 1, v40);
          v32 = v41;
          v17 = 0;
          goto LABEL_14;
        }

        v17 = *(v14 + 8 * v21);
        ++v20;
        if (v17)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_37:
  sub_100014170(0, &qword_100CB34A0);
  result = sub_1009375D8();
  __break(1u);
  return result;
}

uint64_t sub_1007D7C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1007DD0C8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1000136E4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1007DD71C();
        v14 = v16;
      }

      result = sub_1007DCBE4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1007D7D00(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 == 2)
  {
    v6 = sub_1000136E4(a2, a3);
    v8 = v7;

    if (v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1007DD5B4();
        v11 = v15;
      }

      result = sub_1007DCA34(v6, v11);
      *v4 = v11;
    }
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_1007DCF5C(a1 & 1, a2, a3, v14);

    *v4 = v16;
  }

  return result;
}

void sub_1007D7DEC(uint64_t a1, void *a2)
{
  v5 = sub_100706B30(&unk_100CB6040);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_100013814(a1, &unk_100CB6040);
    sub_1007DBC78(a2, v7);

    sub_100013814(v7, &unk_100CB6040);
  }

  else
  {
    sub_1007DFC7C(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1007DD240(v10, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v14;
  }
}

id sub_1007D7F90(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v36 = a1;
  v39 = a4;
  v40 = a5;
  v37 = a2;
  v38 = a3;
  v34 = sub_100936F78();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100936F38();
  __chkstk_darwin(v9);
  v10 = sub_100936528();
  __chkstk_darwin(v10 - 8);
  v11 = objc_allocWithZone(v5);
  sub_1009364C8();
  v33 = OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_q;
  v12 = sub_100014170(0, &qword_100CB3510);
  v32[1] = &unk_1009B3920;
  v32[2] = v12;
  sub_100936508();
  v42 = &_swiftEmptyArrayStorage;
  sub_100014B68(&qword_100CB2AB8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100706B30(&unk_100CB3520);
  sub_10071499C(&qword_100CB2AC0, &unk_100CB3520);
  sub_1009370B8();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  *&v11[v33] = sub_100936F98();
  v13 = OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_groupsLock;
  v14 = sub_1007DE558(&_swiftEmptyArrayStorage);
  v15 = sub_1007DE65C(&_swiftEmptyArrayStorage);
  sub_100706B30(&qword_100CB62E0);
  v16 = swift_allocObject();
  *(v16 + 32) = 0;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  *&v11[v13] = v16;
  v17 = OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_publicIdentitiesLock;
  v18 = sub_1007DE758(&_swiftEmptyArrayStorage);
  sub_100706B30(&qword_100CB62E8);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  *&v11[v17] = v19;
  v20 = &v11[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_remoteParticipantsListeners];
  *v20 = 0;
  *(v20 + 1) = &_swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v21 = v37;
  v22 = v38;
  *&v11[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_config] = v37;
  *&v11[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_sessionProvider] = v22;
  v24 = v39;
  v23 = v40;
  *&v11[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController] = v39;
  *&v11[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_pushHandler] = v23;
  v25 = type metadata accessor for IDSGroupEncryptionDefaultCryptoHandler();
  v26 = v21;
  swift_unknownObjectRetain();
  v27 = v24;
  swift_unknownObjectRetain();
  v28 = StewieProvisioningEventTracing.__allocating_init()();
  v29 = &v11[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_cryptoHandler];
  *(v29 + 3) = v25;
  *(v29 + 4) = &off_100BE9B28;
  *v29 = v28;
  v41.receiver = v11;
  v41.super_class = v35;
  v30 = objc_msgSendSuper2(&v41, "init");
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v30;
}

id sub_1007D84B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a1;
  v35 = a6;
  v36 = a5;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v29 = sub_100936F78();
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100936F38();
  __chkstk_darwin(v10);
  v11 = sub_100936528();
  __chkstk_darwin(v11 - 8);
  v12 = objc_allocWithZone(v6);
  sub_1009364C8();
  v28 = OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_q;
  v13 = sub_100014170(0, &qword_100CB3510);
  v27[0] = &unk_1009B3920;
  v27[1] = v13;
  sub_100936508();
  v38 = &_swiftEmptyArrayStorage;
  sub_100014B68(&qword_100CB2AB8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100706B30(&unk_100CB3520);
  sub_10071499C(&qword_100CB2AC0, &unk_100CB3520);
  sub_1009370B8();
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  *&v12[v28] = sub_100936F98();
  v14 = OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_groupsLock;
  v15 = sub_1007DE558(&_swiftEmptyArrayStorage);
  v16 = sub_1007DE65C(&_swiftEmptyArrayStorage);
  sub_100706B30(&qword_100CB62E0);
  v17 = swift_allocObject();
  *(v17 + 32) = 0;
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  *&v12[v14] = v17;
  v18 = OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_publicIdentitiesLock;
  v19 = sub_1007DE758(&_swiftEmptyArrayStorage);
  sub_100706B30(&qword_100CB62E8);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v19;
  *&v12[v18] = v20;
  v21 = &v12[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_remoteParticipantsListeners];
  *v21 = 0;
  *(v21 + 1) = &_swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v22 = v33;
  *&v12[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_config] = v32;
  *&v12[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_sessionProvider] = v22;
  v23 = v35;
  *&v12[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController] = v34;
  *&v12[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_pushHandler] = v23;
  v24 = v36;
  sub_100022B2C(v36, &v12[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_cryptoHandler]);
  v37.receiver = v12;
  v37.super_class = v30;
  v25 = objc_msgSendSuper2(&v37, "init");
  swift_unknownObjectRelease();
  sub_100012970(v24);
  return v25;
}

uint64_t sub_1007D88E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_groupsLock);

  os_unfair_lock_lock((v1 + 32));
  sub_1007DEEFC((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 32));
  v2 = v4;

  return v2;
}

unint64_t sub_1007D8A14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_1000136E4(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    type metadata accessor for IDSGroupEncryptionControllerGroup();
    v14 = *&a4[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_config];
    v15 = *&a4[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController];
    v16 = *&a4[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_pushHandler];
    sub_100022B2C(&a4[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_cryptoHandler], v24);
    v17 = *&a4[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_sessionProvider];

    v18 = v14;
    v19 = v15;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v20 = sub_100806EF0(a4, &off_100BE8B90, a2, a3, v18, v19, v16, v24, v17);

    v13 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *a1;
    sub_1007DD0C8(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *a1 = v24[0];
  }

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v24[0] = a1[1];
  result = sub_1007DCF5C(0, a2, a3, v22);
  a1[1] = v24[0];
  *a5 = v13;
  return result;
}

uint64_t sub_1007D8BC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_publicIdentitiesLock);

  os_unfair_lock_lock((v3 + 24));
  sub_1007DEF2C((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

id sub_1007D8C34(void *a1)
{
  v3 = sub_100936038();
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [a1 wrapMode];
  result = [a1 fromID];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  v12 = [objc_allocWithZone(IDSURI) initWithPrefixedURI:result];

  result = [a1 pushToken];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  result = [a1 expirationDate];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = result;
  sub_100935FE8();

  result = [a1 publicIdentity];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_10089CED8(v12, v13, v5, result, v15, v8);
  v17 = *(v1 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_publicIdentitiesLock);
  __chkstk_darwin(v16);
  *&v19[-16] = a1;
  *&v19[-8] = v8;

  os_unfair_lock_lock(v17 + 6);
  sub_1007DF05C(&v17[4]);
  os_unfair_lock_unlock(v17 + 6);

  (*((swift_isaMask & *v1) + 0x1A0))(v18);
  return sub_1007BE0C4(v8, type metadata accessor for IDSGroupEncryptionPublicIdentity);
}

void sub_1007D8EC4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_100706B30(&unk_100CB6040);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = [a2 pushToken];
  if (v8)
  {
    v9 = v8;
    sub_1007DE914(a3, v7, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v10 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    sub_1007D7DEC(v7, v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_1007D9044(void *a1, uint64_t a2, unint64_t a3, void *a4, void *a5, uint64_t a6, unint64_t a7, _BYTE *a8, uint64_t a9)
{
  v126 = a8;
  v128 = a7;
  v15 = sub_100706B30(&unk_100CB6040);
  __chkstk_darwin(v15 - 8);
  v115 = &v104[-v16];
  v118 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v114 = *(v118 - 8);
  v17 = __chkstk_darwin(v118);
  v123 = &v104[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v108 = &v104[-v19];
  v20 = sub_100936038();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v117 = &v104[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v121 = &v104[-v25];
  __chkstk_darwin(v24);
  v27 = &v104[-v26];
  v28 = *(a1 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_groupsLock);
  v109 = a2;
  v129 = a2;
  v130 = a3;
  v119 = a3;

  os_unfair_lock_lock(v28 + 8);
  sub_1007E0074(&v28[4], v132);
  v116 = 0;
  os_unfair_lock_unlock(v28 + 8);
  v29 = v132[0];

  v124 = v21;
  v125 = a1;
  v127 = v29;
  if (!v29)
  {
    goto LABEL_7;
  }

  v122 = v20;
  v120 = a5;
  v30 = [a4 URIByAddingPushToken:a5];
  v31 = v30;
  if (!v30)
  {
    v31 = a4;
  }

  v32 = *((swift_isaMask & *v127) + 0x2B8);
  v33 = v127;
  v34 = v30;
  v35 = v32(v31);

  if (v35 || (v36 = v33, v35 = v32(a4), v36, v35))
  {

    v21 = v124;
    a1 = v125;
    v20 = v122;
    a5 = v120;
LABEL_7:
    v122 = a9;
    v37 = OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_l;
    v38 = *(v21 + 16);
    v112 = v21 + 16;
    v111 = v38;
    v38(v27, v126, v20);
    v39 = v128;
    sub_100715738(a6, v128);
    v40 = a5;
    v110 = v37;
    v41 = sub_1009364B8();
    v42 = sub_100936F18();
    sub_1007156D8(a6, v39);

    v43 = os_log_type_enabled(v41, v42);
    v120 = v40;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = v21;
      v46 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v132[0] = v106;
      *v44 = 136315906;
      v47 = sub_100935E08();
      v105 = v42;
      v49 = sub_10001273C(v47, v48, v132);
      v107 = a4;
      v50 = v49;

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      sub_100014B68(&qword_100CB3A88, &type metadata accessor for Date);
      v51 = sub_100937548();
      v53 = v52;
      v54 = v45;
      v39 = v128;
      v113 = *(v54 + 8);
      v113(v27, v20);
      v55 = sub_10001273C(v51, v53, v132);

      *(v44 + 14) = v55;
      *(v44 + 22) = 2112;
      *(v44 + 24) = v40;
      *v46 = v40;
      *(v44 + 32) = 2080;
      v131 = v122;
      type metadata accessor for IDSRealTimeEncryptionKMWrapMode(0);
      v56 = v40;
      v57 = sub_100936B88();
      v59 = sub_10001273C(v57, v58, v132);

      *(v44 + 34) = v59;
      a4 = v107;
      _os_log_impl(&_mh_execute_header, v41, v105, "receive(publicKey): public key: %s serverDate:%s pushToken: %@ wrapMode: %s", v44, 0x2Au);
      sub_100013814(v46, &qword_100CB36B0);

      swift_arrayDestroy();

      a1 = v125;
    }

    else
    {

      v113 = *(v21 + 8);
      v113(v27, v20);
    }

    v60 = *(a1 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_cryptoHandler + 24);
    v61 = *(a1 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_cryptoHandler + 32);
    sub_1000226D4((a1 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_cryptoHandler), v60);
    v62 = (*(v61 + 56))(a6, v39, v60, v61);
    v63 = v62;
    if (v64)
    {
      sub_1007E00E0(v62, 1);
      v65 = a4;
      v66 = v119;

      v67 = sub_1009364B8();
      v68 = sub_100936EF8();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v132[0] = v71;
        *v69 = 136315394;
        *(v69 + 4) = sub_10001273C(v109, v66, v132);
        *(v69 + 12) = 2112;
        *(v69 + 14) = v65;
        *v70 = v65;
        v72 = v65;
        _os_log_impl(&_mh_execute_header, v67, v68, "Couldn't create the public identity for the group %s, fromID: %@", v69, 0x16u);
        sub_100013814(v70, &qword_100CB36B0);

        sub_100012970(v71);
      }

      return;
    }

    v73 = a6;
    v74 = v121;
    sub_100935F48();
    v75 = v115;
    v76 = v120;
    (*((swift_isaMask & *a1) + 0x158))(v120);
    if ((*(v114 + 48))(v75, 1, v118) == 1)
    {
      sub_100013814(v75, &unk_100CB6040);
      v77 = v122;
      v78 = v111;
LABEL_28:
      v95 = v117;
      v78(v117, v74, v20);
      v96 = a4;
      v97 = v76;
      sub_1007E00EC(v63, 0);
      if (v77 == 1)
      {
        v98 = 2;
      }

      else
      {
        v98 = 1;
      }

      v99 = v123;
      v100 = sub_10089CED8(a4, v97, v95, v63, v98, v123);
      v101 = *(a1 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_publicIdentitiesLock);
      __chkstk_darwin(v100);
      *&v104[-16] = v97;
      *&v104[-8] = v99;

      os_unfair_lock_lock(v101 + 6);
      sub_1007E00F8(&v101[4]);
      os_unfair_lock_unlock(v101 + 6);

      if (v127)
      {
        v103 = v127;
        (*((swift_isaMask & *v127) + 0x390))(v102);

        sub_1007E00E0(v63, 0);
        v113(v74, v20);
      }

      else
      {
        v113(v74, v20);
        sub_1007E00E0(v63, 0);
      }

      sub_1007BE0C4(v123, type metadata accessor for IDSGroupEncryptionPublicIdentity);
      return;
    }

    v79 = v108;
    sub_1007DFC7C(v75, v108);
    v81 = sub_10089CD2C();
    v82 = v80;
    if (v39 >> 60 == 15)
    {
      v83 = v73;
      if (v80 >> 60 == 15)
      {
        sub_100715738(v73, v39);
        sub_10001C370(v73, v39);
LABEL_26:
        v74 = v121;
        v113(v121, v20);
        v78 = v111;
        v111(v74, &v79[*(v118 + 24)], v20);
        sub_1007BE0C4(v79, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        v77 = v122;
        goto LABEL_27;
      }
    }

    else
    {
      v83 = v73;
      if (v80 >> 60 != 15)
      {
        sub_100715738(v73, v39);
        sub_1007483B0(v81, v82);
        v94 = sub_10071CAE8(v73, v39, v81, v82);
        sub_10001C370(v81, v82);
        sub_10001C370(v81, v82);
        sub_10001C370(v83, v39);
        if (v94)
        {
          goto LABEL_26;
        }

LABEL_21:
        sub_1007BE0C4(v79, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        v74 = v121;
        v77 = v122;
        v78 = v111;
LABEL_27:
        v76 = v120;
        goto LABEL_28;
      }
    }

    sub_100715738(v83, v39);
    sub_10001C370(v83, v39);
    sub_10001C370(v81, v82);
    goto LABEL_21;
  }

  v84 = v34;
  v85 = a4;
  v86 = v119;

  v87 = sub_1009364B8();
  v88 = sub_100936F18();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v132[0] = v91;
    *v89 = 136315650;
    *(v89 + 4) = sub_10001273C(v109, v86, v132);
    *(v89 + 12) = 2112;
    *(v89 + 14) = v85;
    *(v89 + 22) = 2112;
    *(v89 + 24) = v84;
    *v90 = v85;
    v90[1] = v30;
    v92 = v84;
    v93 = v85;
    _os_log_impl(&_mh_execute_header, v87, v88, "receive(publicKey): We'll drop this pre-key message for group %s since %@ and %@ is not in this group!", v89, 0x20u);
    sub_100706B30(&qword_100CB36B0);
    swift_arrayDestroy();

    sub_100012970(v91);
  }

  else
  {
  }
}

void sub_1007D9D94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_100706B30(&unk_100CB6040);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_1007DE914(a3, &v9 - v6, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  v8 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_1007D7DEC(v7, a2);
}

uint64_t sub_1007DA034()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_publicIdentitiesLock);

  os_unfair_lock_lock((v1 + 24));
  sub_1007DF480((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_1007DA0AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v17 - v12;
  v14 = *a1;
  if (*(v14 + 16) && (result = sub_1007DBB60(a2), (v15 & 1) != 0))
  {
    sub_1007DE914(*(v14 + 56) + *(v7 + 72) * result, v10, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_1007DFC7C(v10, v13);
    v16 = sub_10089CF74();
    result = sub_1007BE0C4(v13, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  }

  else
  {
    v16 = 0;
  }

  *a3 = v16;
  return result;
}

uint64_t sub_1007DA2A4(uint64_t a1, unint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_1009364F8();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v40 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100936528();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1009364E8();
  v11 = *(v34 - 8);
  __chkstk_darwin(v34);
  v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_100936558();
  v36 = *(v37 - 8);
  v14 = __chkstk_darwin(v37);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v35 = v33 - v17;
  v18 = *&v3[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_groupsLock];
  v44 = a1;
  v45 = a2;

  os_unfair_lock_lock(v18 + 8);
  sub_1007DF4AC(&v18[4]);
  os_unfair_lock_unlock(v18 + 8);

  v19 = sub_1009364B8();
  v20 = sub_100936F18();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v21 = 136315650;
    *(v21 + 4) = sub_10001273C(0xD00000000000001ALL, 0x8000000100B02D50, aBlock);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_10001273C(a1, a2, aBlock);
    *(v21 + 22) = 2048;
    *(v21 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s: scheduling cleaning up for group %s after %f seconds.", v21, 0x20u);
    swift_arrayDestroy();
  }

  v22 = *&v4[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_q];
  result = sub_100936538();
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a3 < 9.22337204e18)
  {
    *v13 = a3;
    v24 = v34;
    (*(v11 + 104))(v13, enum case for DispatchTimeInterval.seconds(_:), v34);
    v25 = v35;
    v33[1] = v22;
    sub_100936548();
    (*(v11 + 8))(v13, v24);
    v36 = *(v36 + 8);
    v26 = v37;
    (v36)(v16, v37);
    v27 = swift_allocObject();
    v27[2] = v4;
    v27[3] = a1;
    v27[4] = a2;
    aBlock[4] = sub_1007DF518;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BE8B40;
    v28 = _Block_copy(aBlock);

    v29 = v4;
    v30 = v38;
    sub_100936508();
    v46 = &_swiftEmptyArrayStorage;
    sub_100014B68(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550);
    sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
    v31 = v40;
    v32 = v43;
    sub_1009370B8();
    sub_100936F48();
    _Block_release(v28);
    (*(v42 + 8))(v31, v32);
    (*(v39 + 8))(v30, v41);
    (v36)(v25, v26);
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_1007DA9E4()
{
  v1 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100706B30(&qword_100CB3250);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0x130))(v5);
  v8 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_100013814(v7, &qword_100CB3250);
    return 0;
  }

  else
  {
    sub_1007DE914(v7, v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_1007BE0C4(v7, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v10 = sub_10089CF74();
    sub_1007BE0C4(v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    return v10;
  }
}

id sub_1007DAC04()
{
  v1 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100706B30(&qword_100CB3250);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v14 - v10;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0xC0))(v9);
  if ((*(v5 + 48))(v11, 1, v4))
  {
    sub_100013814(v11, &qword_100CB3250);
    return 0;
  }

  else
  {
    sub_1007DE914(v11, v7, type metadata accessor for IDSGroupEncryptionFullIdentity);
    sub_100013814(v11, &qword_100CB3250);
    sub_1007DE914(v7, v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_1007BE0C4(v7, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v13 = sub_10089CF74();
    sub_1007BE0C4(v3, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    return v13;
  }
}

id sub_1007DAFEC()
{
  v1 = sub_100706B30(&qword_100CB3250);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0x130))(v2);
  v5 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_100013814(v4, &qword_100CB3250);
    return 0;
  }

  else
  {
    v7 = sub_10089D2E8();
    sub_1007BE0C4(v4, type metadata accessor for IDSGroupEncryptionFullIdentity);
    return v7;
  }
}

id sub_1007DB184()
{
  v1 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100706B30(&qword_100CB3250);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0xC0))(v6);
  if ((*(v2 + 48))(v8, 1, v1))
  {
    sub_100013814(v8, &qword_100CB3250);
    return 0;
  }

  else
  {
    sub_1007DE914(v8, v4, type metadata accessor for IDSGroupEncryptionFullIdentity);
    sub_100013814(v8, &qword_100CB3250);
    v10 = sub_10089D2E8();
    sub_1007BE0C4(v4, type metadata accessor for IDSGroupEncryptionFullIdentity);
    return v10;
  }
}

uint64_t sub_1007DB360()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_publicIdentitiesLock);

  os_unfair_lock_lock((v1 + 24));
  sub_1007DDAAC(*(v1 + 16));
  v3 = v2;

  *(v1 + 16) = v3;
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1007DB3E0()
{
  (*((swift_isaMask & *v0) + 0x1A0))();
  v1 = (v0 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_remoteParticipantsListeners);
  os_unfair_lock_lock(v1);
  v2 = *&v1[2]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v1);
  if (v2 >> 62)
  {
    v3 = sub_1009373F8();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_100937268();
    }

    else
    {
      v5 = *(v2 + 8 * v4 + 32);
    }

    ++v4;
    v6 = *(v5 + 16);

    v6(v7);
  }

  while (v3 != v4);
LABEL_10:
}

void sub_1007DB528(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_sessionProvider);
  v4 = sub_100936B28();
  v5 = [v3 sessionWithUniqueID:v4];

  if (v5)
  {
    [v5 recvKeyMaterial:a1];

    swift_unknownObjectRelease();
  }
}

id sub_1007DB5FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSGroupEncryptionController2();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_1007DB858(uint64_t a1, uint64_t a2))()
{
  v3 = v2;
  type metadata accessor for IDSGroupEncryptionController2.RemoteParticipantsListener();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = &v3[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_remoteParticipantsListeners];

  os_unfair_lock_lock(v7);

  sub_100936CC8();
  if (*((*&v7[2]._os_unfair_lock_opaque & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v7[2]._os_unfair_lock_opaque & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100936D18();
  }

  sub_100936D38();
  os_unfair_lock_unlock(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v6;
  v9 = v3;
  return sub_1007DF5B4;
}

void *sub_1007DB960()
{
  v1 = (*((swift_isaMask & **v0) + 0x148))();
  v2 = (*((swift_isaMask & *v1) + 0x270))();

  v3 = sub_1007DE388(v2);

  return v3;
}

unint64_t sub_1007DBB60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100937028(*(v2 + 40));

  return sub_1007DBBA4(a1, v4);
}

unint64_t sub_1007DBBA4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100014170(0, &qword_100CB34A0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100937038();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1007DBC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1007DBB60(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1007DD888();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v18 = *(v11 - 8);
    sub_1007DFC7C(v10 + *(v18 + 72) * v7, a2);
    sub_1007DCD94(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1007DBDCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB63F0);
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v20;
        sub_100715738(v31, *(&v31 + 1));
      }

      result = sub_100937028(*(v7 + 40));
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1007DC044(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB63D0);
  v34 = a2;
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100937668();
      sub_100936BC8();
      result = sub_1009376C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}