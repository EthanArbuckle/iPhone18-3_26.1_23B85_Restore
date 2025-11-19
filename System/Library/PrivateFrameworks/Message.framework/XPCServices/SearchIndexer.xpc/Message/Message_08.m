uint64_t sub_10008F838(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005CEEA8, &qword_1004E91C0);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = *(v3 + 48) + 16 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v6 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v20 | (v20 << 32));
      result = sub_1004A6F14();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10008FA74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005CEF70, &qword_1004D1E50);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v20);
      result = sub_1004A6F14();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10008FCA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005CEED8, &qword_1004D1DA8);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v17);
      result = sub_1004A6F14();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10008FEC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005CEFE0, &qword_1004D1EC8);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v31 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1004A6E94();
      sub_1004A5834();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1004A6F14();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
      v3 = v31;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v30;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100090120(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005CEF98, &unk_1004D1E80);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_1004A6E94();
      if (v19)
      {
        sub_1004A6EB4(0);
        sub_1004A5834();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1004A6EB4(1uLL);
      }

      result = sub_1004A6F14();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_31;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000903B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005CEF28, &qword_1004D1DF8);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1004A6E94();
      sub_100014CEC(v19, v20);
      sub_1004A4424();
      result = sub_1004A6F14();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000905EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v77 = &v74 - v6;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v74 - v12;
  v14 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v15 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005CEF38, &unk_1004D1E10);
  result = sub_1004A6694();
  v17 = result;
  if (!*(v14 + 16))
  {

LABEL_58:
    *v2 = v17;
    return result;
  }

  v75 = v1;
  v18 = 0;
  v19 = *(v14 + 56);
  v78 = v14 + 56;
  v20 = 1 << *(v14 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v83 = v7;
  v82 = v11;
  v81 = v14;
  v80 = v13;
  v79 = result;
  v84 = v23;
  v85 = result + 56;
  while (1)
  {
    if (v22)
    {
      v25 = __clz(__rbit64(v22));
      v87 = (v22 - 1) & v22;
    }

    else
    {
      v26 = v18;
      do
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_60;
        }

        if (v18 >= v23)
        {

          v2 = v75;
          goto LABEL_58;
        }

        v27 = *(v78 + 8 * v18);
        ++v26;
      }

      while (!v27);
      v25 = __clz(__rbit64(v27));
      v87 = (v27 - 1) & v27;
    }

    v28 = *(*(v14 + 48) + 8 * (v25 | (v18 << 6)));
    v29 = *(v17 + 40);
    sub_1004A6E94();
    v30 = *(*v28 + 96);
    swift_beginAccess();
    v89 = v28;
    sub_100095778(v28 + v30, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_100095778(v13, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v86 = *v11;
      v33 = *(v11 + 2);
      v34 = *(v11 + 2);
      sub_1004A6EB4(3uLL);
      sub_1004A6EB4(v33 | (v33 << 32));
      v35 = v34 + 64;
      v36 = 1 << *(v34 + 32);
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v38 = v37 & *(v34 + 64);
      v39 = (v36 + 63) >> 6;

      v88 = v34;

      v40 = 0;
      v41 = 0;
      if (v38)
      {
        while (1)
        {
          v42 = v41;
LABEL_29:
          v43 = __clz(__rbit64(v38)) | (v42 << 6);
          v44 = *(*(v88 + 48) + 4 * v43);
          v45 = (*(v88 + 56) + 16 * v43);
          v47 = *v45;
          v46 = v45[1];
          sub_100014CEC(*v45, v46);
          if (v46 >> 60 == 15)
          {
            break;
          }

          v38 &= v38 - 1;
          v92 = v97;
          v93 = v98;
          v94 = v99;
          v91 = v96;
          v90 = v95;
          sub_1004A6EE4(v44);
          sub_1004A4424();
          sub_100014D40(v47, v46);
          result = sub_1004A6F14();
          v40 ^= result;
          v41 = v42;
          if (!v38)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        while (1)
        {
LABEL_26:
          v42 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_61;
          }

          if (v42 >= v39)
          {
            break;
          }

          v38 = *(v35 + 8 * v42);
          ++v41;
          if (v38)
          {
            goto LABEL_29;
          }
        }
      }

      sub_1004A6EB4(v40);

      v65 = &v100;
LABEL_46:
      v66 = *(v65 - 32);

      v11 = v82;
      v14 = v81;
      v13 = v80;
      v17 = v79;
    }

    else
    {
      sub_1004A6EB4(1uLL);
    }

LABEL_47:
    sub_1000957E0(v13, type metadata accessor for MoveAndCopyMessages.CommandID);
    result = sub_1004A6F14();
    v67 = -1 << *(v17 + 32);
    v68 = result & ~v67;
    v69 = v68 >> 6;
    if (((-1 << v68) & ~*(v85 + 8 * (v68 >> 6))) == 0)
    {
      v70 = 0;
      v71 = (63 - v67) >> 6;
      while (++v69 != v71 || (v70 & 1) == 0)
      {
        v72 = v69 == v71;
        if (v69 == v71)
        {
          v69 = 0;
        }

        v70 |= v72;
        v73 = *(v85 + 8 * v69);
        if (v73 != -1)
        {
          v24 = __clz(__rbit64(~v73)) + (v69 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_62;
    }

    v24 = __clz(__rbit64((-1 << v68) & ~*(v85 + 8 * (v68 >> 6)))) | v68 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v85 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v17 + 48) + 8 * v24) = v89;
    ++*(v17 + 16);
    v23 = v84;
    v22 = v87;
  }

  if (!EnumCaseMultiPayload)
  {
    v32 = v77;
    sub_100025FDC(v11, v77, &unk_1005D91B0, &unk_1004CF400);
    sub_1004A6EB4(0);

    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_1000956A0();
    sub_1004A5564();
    sub_100025F40(v32, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_47;
  }

  v76 = *v11;
  v48 = *(v11 + 2);
  v49 = *(v11 + 2);
  sub_1004A6EB4(2uLL);
  sub_1004A6EB4(v48 | (v48 << 32));
  v50 = v49 + 64;
  v51 = 1 << *(v49 + 32);
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v53 = v52 & *(v49 + 64);
  v54 = (v51 + 63) >> 6;

  v86 = v49;

  v55 = 0;
  for (i = 0; v53; v55 = result ^ v88)
  {
    v88 = v55;
    v57 = i;
LABEL_41:
    v58 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v59 = v58 | (v57 << 6);
    v60 = *(*(v86 + 48) + 4 * v59);
    v61 = (*(v86 + 56) + 24 * v59);
    v62 = *v61;
    v64 = *(v61 + 1);
    v63 = *(v61 + 2);
    sub_100014CEC(v64, v63);
    v92 = v97;
    v93 = v98;
    v94 = v99;
    v91 = v96;
    v90 = v95;
    sub_1004A6EE4(v60);
    sub_1004A6EB4(v62);
    sub_100014CEC(v64, v63);
    sub_1004A4424();
    sub_100014D40(v64, v63);
    sub_100014D40(v64, v63);
    result = sub_1004A6F14();
  }

  while (1)
  {
    v57 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v57 >= v54)
    {

      sub_1004A6EB4(v55);

      v65 = &v97 + 8;
      goto LABEL_46;
    }

    v53 = *(v50 + 8 * v57);
    ++i;
    if (v53)
    {
      v88 = v55;
      i = v57;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_100090DDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v73 = v72 - v6;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v72 - v13;
  v15 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v16 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005CF0C8, &qword_1004D1FD0);
  result = sub_1004A6694();
  v18 = result;
  if (!*(v15 + 16))
  {

LABEL_59:
    *v2 = v18;
    return result;
  }

  v72[0] = v2;
  v19 = 0;
  v20 = *(v15 + 56);
  v74 = v15 + 56;
  v21 = 1 << *(v15 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v79 = v7;
  v78 = v8;
  v77 = v11;
  v76 = v15;
  v75 = v14;
  v82 = result;
  v80 = v24;
  v81 = result + 56;
  while (1)
  {
    if (v23)
    {
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
    }

    else
    {
      v27 = v19;
      do
      {
        v19 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_61;
        }

        if (v19 >= v24)
        {

          v2 = v72[0];
          goto LABEL_59;
        }

        v28 = *(v74 + 8 * v19);
        ++v27;
      }

      while (!v28);
      v26 = __clz(__rbit64(v28));
      v23 = (v28 - 1) & v28;
    }

    v29 = *(v8 + 72);
    sub_100095778(*(v15 + 48) + v29 * (v26 | (v19 << 6)), v14, type metadata accessor for MoveAndCopyMessages.CommandID);
    v30 = v18[5];
    sub_1004A6E94();
    sub_100095778(v14, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_1004A6EB4(1uLL);
      goto LABEL_48;
    }

    v83 = v29;
    v84 = v23;
    v85 = *v11;
    v33 = *(v11 + 2);
    v34 = *(v11 + 2);
    sub_1004A6EB4(3uLL);
    sub_1004A6EB4(v33 | (v33 << 32));
    v35 = v34 + 64;
    v36 = 1 << *(v34 + 32);
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v38 = v37 & *(v34 + 64);
    v39 = (v36 + 63) >> 6;
    v86 = v34;

    v40 = 0;
    v41 = 0;
    if (v38)
    {
      while (1)
      {
        v42 = v41;
LABEL_29:
        v43 = __clz(__rbit64(v38)) | (v42 << 6);
        v44 = *(*(v86 + 48) + 4 * v43);
        v45 = (*(v86 + 56) + 16 * v43);
        v46 = *v45;
        v47 = v45[1];
        sub_100014CEC(*v45, v47);
        if (v47 >> 60 == 15)
        {
          break;
        }

        v38 &= v38 - 1;
        v89 = v94;
        v90 = v95;
        v91 = v96;
        v87 = v92;
        v88 = v93;
        sub_1004A6EE4(v44);
        sub_1004A4424();
        sub_100014D40(v46, v47);
        result = sub_1004A6F14();
        v40 ^= result;
        v41 = v42;
        if (!v38)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_26:
        v42 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_62;
        }

        if (v42 >= v39)
        {
          break;
        }

        v38 = *(v35 + 8 * v42);
        ++v41;
        if (v38)
        {
          goto LABEL_29;
        }
      }
    }

    sub_1004A6EB4(v40);

LABEL_46:

    v8 = v78;
    v11 = v77;
    v15 = v76;
    v14 = v75;
LABEL_47:
    v23 = v84;
    v29 = v83;
LABEL_48:
    result = sub_1004A6F14();
    v18 = v82;
    v65 = -1 << *(v82 + 32);
    v66 = result & ~v65;
    v67 = v66 >> 6;
    if (((-1 << v66) & ~*(v81 + 8 * (v66 >> 6))) == 0)
    {
      v68 = 0;
      v69 = (63 - v65) >> 6;
      while (++v67 != v69 || (v68 & 1) == 0)
      {
        v70 = v67 == v69;
        if (v67 == v69)
        {
          v67 = 0;
        }

        v68 |= v70;
        v71 = *(v81 + 8 * v67);
        if (v71 != -1)
        {
          v25 = __clz(__rbit64(~v71)) + (v67 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_63;
    }

    v25 = __clz(__rbit64((-1 << v66) & ~*(v81 + 8 * (v66 >> 6)))) | v66 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v81 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = sub_100095988(v14, v18[6] + v25 * v29);
    ++v18[2];
    v24 = v80;
  }

  v83 = v29;
  v84 = v23;
  if (!EnumCaseMultiPayload)
  {
    v32 = v73;
    sub_100025FDC(v11, v73, &unk_1005D91B0, &unk_1004CF400);
    sub_1004A6EB4(0);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_1000956A0();
    sub_1004A5564();
    sub_100025F40(v32, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_47;
  }

  v72[1] = *v11;
  v48 = *(v11 + 2);
  v49 = *(v11 + 2);
  sub_1004A6EB4(2uLL);
  sub_1004A6EB4(v48 | (v48 << 32));
  v50 = v49 + 64;
  v51 = 1 << *(v49 + 32);
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v53 = v52 & *(v49 + 64);
  v54 = (v51 + 63) >> 6;
  v85 = v49;

  v55 = 0;
  for (i = 0; v53; v55 = result ^ v86)
  {
    v86 = v55;
    v57 = i;
LABEL_41:
    v58 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v59 = v58 | (v57 << 6);
    v60 = *(*(v85 + 48) + 4 * v59);
    v61 = (*(v85 + 56) + 24 * v59);
    v62 = *v61;
    v64 = *(v61 + 1);
    v63 = *(v61 + 2);
    sub_100014CEC(v64, v63);
    v89 = v94;
    v90 = v95;
    v91 = v96;
    v87 = v92;
    v88 = v93;
    sub_1004A6EE4(v60);
    sub_1004A6EB4(v62);
    sub_100014CEC(v64, v63);
    sub_1004A4424();
    sub_100014D40(v64, v63);
    sub_100014D40(v64, v63);
    result = sub_1004A6F14();
  }

  while (1)
  {
    v57 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v57 >= v54)
    {

      sub_1004A6EB4(v55);

      goto LABEL_46;
    }

    v53 = *(v50 + 8 * v57);
    ++i;
    if (v53)
    {
      v86 = v55;
      i = v57;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_100091570(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_10000C9C0(a2, a3);
  result = sub_1004A6694();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + 4 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v19);
      result = sub_1004A6F14();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 4 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_100091788(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005CEF68, &qword_1004D1E48);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_100014B90(*(v3 + 48) + 48 * (v17 | (v7 << 6)), v29);
      v20 = *(v6 + 40);
      sub_1004A6E94();
      sub_1004A6664();
      result = sub_1004A6F14();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 48 * v13);
      v15 = v29[0];
      v16 = v29[2];
      v14[1] = v29[1];
      v14[2] = v16;
      *v14 = v15;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *sub_1000919C8(char *a1, int64_t a2, char a3)
{
  result = sub_1001355F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000919E8(char *a1, int64_t a2, char a3)
{
  result = sub_100135700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091A08(char *a1, int64_t a2, char a3)
{
  result = sub_100135828(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091A28(char *a1, int64_t a2, char a3)
{
  result = sub_100135948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091A48(char *a1, int64_t a2, char a3)
{
  result = sub_10013595C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091A68(void *a1, int64_t a2, char a3)
{
  result = sub_100135970(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091A88(void *a1, int64_t a2, char a3)
{
  result = sub_100135AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091AA8(char *a1, int64_t a2, char a3)
{
  result = sub_100135BFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091AC8(char *a1, int64_t a2, char a3)
{
  result = sub_100135C10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091AE8(void *a1, int64_t a2, char a3)
{
  result = sub_100135C24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091B08(void *a1, int64_t a2, char a3)
{
  result = sub_100135C48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091B28(char *a1, int64_t a2, char a3)
{
  result = sub_100135D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091B48(char *a1, int64_t a2, char a3)
{
  result = sub_100135DA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091B68(char *a1, int64_t a2, char a3)
{
  result = sub_100135DB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091B88(char *a1, int64_t a2, char a3)
{
  result = sub_100135DCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091BA8(char *a1, int64_t a2, char a3)
{
  result = sub_100135DE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091BC8(char *a1, int64_t a2, char a3)
{
  result = sub_100135DF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091BE8(char *a1, int64_t a2, char a3)
{
  result = sub_100135E08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091C08(void *a1, int64_t a2, char a3)
{
  result = sub_100135E1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091C28(void *a1, int64_t a2, char a3)
{
  result = sub_100135F64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091C48(char *a1, int64_t a2, char a3)
{
  result = sub_10013619C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100091C68(size_t a1, int64_t a2, char a3)
{
  result = sub_1001362A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100091C88(size_t a1, int64_t a2, char a3)
{
  result = sub_1001362C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091CA8(char *a1, int64_t a2, char a3)
{
  result = sub_1001362EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091CC8(char *a1, int64_t a2, char a3)
{
  result = sub_1001363F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091CE8(void *a1, int64_t a2, char a3)
{
  result = sub_100136404(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091D08(char *a1, int64_t a2, char a3)
{
  result = sub_100136538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091D28(char *a1, int64_t a2, char a3)
{
  result = sub_100136638(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091D48(char *a1, int64_t a2, char a3)
{
  result = sub_10013664C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091D68(char *a1, int64_t a2, char a3)
{
  result = sub_100136660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091D88(char *a1, int64_t a2, char a3)
{
  result = sub_100136674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091DA8(char *a1, int64_t a2, char a3)
{
  result = sub_100136774(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100091DC8(size_t a1, int64_t a2, char a3)
{
  result = sub_100136788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100091DE8(size_t a1, int64_t a2, char a3)
{
  result = sub_1001367AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091E08(char *a1, int64_t a2, char a3)
{
  result = sub_1001367D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091E28(char *a1, int64_t a2, char a3)
{
  result = sub_1001368F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091E48(char *a1, int64_t a2, char a3)
{
  result = sub_1001369F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100091E68(size_t a1, int64_t a2, char a3)
{
  result = sub_100136A08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091E88(char *a1, int64_t a2, char a3)
{
  result = sub_100136A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091EA8(char *a1, int64_t a2, char a3)
{
  result = sub_100136A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091EC8(char *a1, int64_t a2, char a3)
{
  result = sub_100136A54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100091EE8(size_t a1, int64_t a2, char a3)
{
  result = sub_100136A68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091F08(char *a1, int64_t a2, char a3)
{
  result = sub_100136A90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100091F28(size_t a1, int64_t a2, char a3)
{
  result = sub_100136BAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100091F48(size_t a1, int64_t a2, char a3)
{
  result = sub_100136BD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091F68(char *a1, int64_t a2, char a3)
{
  result = sub_100136DE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091F88(char *a1, int64_t a2, char a3)
{
  result = sub_100136DF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091FA8(char *a1, int64_t a2, char a3)
{
  result = sub_100136E08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091FC8(char *a1, int64_t a2, char a3)
{
  result = sub_100136E1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091FE8(char *a1, int64_t a2, char a3)
{
  result = sub_100136E30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092008(char *a1, int64_t a2, char a3)
{
  result = sub_100136F50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092028(char *a1, int64_t a2, char a3)
{
  result = sub_10013705C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092048(char *a1, int64_t a2, char a3)
{
  result = sub_100137160(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092068(char *a1, int64_t a2, char a3)
{
  result = sub_100137174(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092088(char *a1, int64_t a2, char a3)
{
  result = sub_100137280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000920A8(void *a1, int64_t a2, char a3)
{
  result = sub_10013729C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000920C8(void *a1, int64_t a2, char a3)
{
  result = sub_1001373E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000920E8(char *a1, int64_t a2, char a3)
{
  result = sub_100135934(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092108(char *a1, int64_t a2, char a3)
{
  result = sub_100137530(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092128(char *a1, int64_t a2, char a3)
{
  result = sub_100137544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092148(char *a1, int64_t a2, char a3)
{
  result = sub_100137654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100092168(void *a1, int64_t a2, char a3)
{
  result = sub_100137668(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100092188(void *a1, int64_t a2, char a3)
{
  result = sub_10013768C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000921A8(size_t a1, int64_t a2, char a3)
{
  result = sub_1001377F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000921C8(char *a1, int64_t a2, char a3)
{
  result = sub_100137820(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000921E8(size_t a1, int64_t a2, char a3)
{
  result = sub_100137834(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092208(char *a1, int64_t a2, char a3)
{
  result = sub_100137A38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092228(char *a1, int64_t a2, char a3)
{
  result = sub_100137A4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092248(char *a1, int64_t a2, char a3)
{
  result = sub_100137A60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092268(char *a1, int64_t a2, char a3)
{
  result = sub_100137A74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092288(char *a1, int64_t a2, char a3)
{
  result = sub_100137B90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000922A8(void *a1, int64_t a2, char a3)
{
  result = sub_100137C9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000922C8(char *a1, int64_t a2, char a3)
{
  result = sub_100137DE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000922E8(char *a1, int64_t a2, char a3)
{
  result = sub_100137DFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092308(char *a1, int64_t a2, char a3)
{
  result = sub_100137E10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092328(char *a1, int64_t a2, char a3)
{
  result = sub_100137E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092348(char *a1, int64_t a2, char a3)
{
  result = sub_100137F20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092368(char *a1, int64_t a2, char a3)
{
  result = sub_100138024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092388(char *a1, int64_t a2, char a3)
{
  result = sub_100138128(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000923A8(char *a1, int64_t a2, char a3)
{
  result = sub_100138248(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000923C8(char *a1, int64_t a2, char a3)
{
  result = sub_100138370(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000923E8(char *a1, int64_t a2, char a3)
{
  result = sub_100138464(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092408(char *a1, int64_t a2, char a3)
{
  result = sub_100138694(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100092428(void *a1, int64_t a2, char a3)
{
  result = sub_1001387CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092448(char *a1, int64_t a2, char a3)
{
  result = sub_100138914(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092468(char *a1, int64_t a2, char a3)
{
  result = sub_100138A34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100092488(void *a1, int64_t a2, char a3)
{
  result = sub_100138B38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000924A8(char *a1, int64_t a2, char a3)
{
  result = sub_100138C6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000924C8(char *a1, int64_t a2, char a3)
{
  result = sub_100138D88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000924E8(char *a1, int64_t a2, char a3)
{
  result = sub_100138E94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092508(char *a1, int64_t a2, char a3)
{
  result = sub_100138FA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_100092528(__int128 *a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_11:
    v12 = __clz(__rbit64(v9)) | (v5 << 6);
    v13 = *(*(a2 + 48) + 8 * v12);
    v14 = *(a2 + 56) + 12 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v19 = a1[2];
    v20 = a1[3];
    v21 = *(a1 + 8);
    v17 = *a1;
    v18 = a1[1];
    sub_1004A6EB4(v13);
    if (v16)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_1004A6EC4(1u);
      sub_1004A6EE4(v15);
      sub_1004A6EE4(HIDWORD(v15));
    }

    v9 &= v9 - 1;
    v4 ^= sub_1004A6F14();
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      sub_1004A6EB4(v4);
      return;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_100092678(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = *(*(a2 + 48) + 4 * v11);
      v13 = (*(a2 + 56) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      sub_100014CEC(*v13, v15);
      if (v15 >> 60 == 15)
      {
        break;
      }

      v6 &= v6 - 1;
      v19 = a1[2];
      v20 = a1[3];
      v21 = *(a1 + 8);
      v17 = *a1;
      v18 = a1[1];
      sub_1004A6EE4(v12);
      sub_1004A4424();
      sub_100014D40(v14, v15);
      v8 ^= sub_1004A6F14();
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    sub_1004A6EB4(v8);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1000927DC(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  for (i = 0; v6; v8 = sub_1004A6F14() ^ v19)
  {
    v19 = v8;
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = *(*(a2 + 48) + 4 * v12);
    v14 = (*(a2 + 56) + 24 * v12);
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = *(v14 + 2);
    sub_100014CEC(v16, v17);
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];
    sub_1004A6EE4(v13);
    sub_1004A6EB4(v15);
    sub_100014CEC(v16, v17);
    sub_1004A4424();
    sub_100014D40(v16, v17);
    sub_100014D40(v16, v17);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      sub_1004A6EB4(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      v19 = v8;
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10009296C(__int128 *a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_11:
    v11 = __clz(__rbit64(v8)) | (v4 << 6);
    v12 = *(*(a2 + 48) + 4 * v11);
    v13 = *(a2 + 56) + 16 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 9);
    v20 = a1[2];
    v21 = a1[3];
    v22 = *(a1 + 8);
    v18 = *a1;
    v19 = a1[1];
    sub_1004A6EE4(v12);
    if (v15)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_1004A6EC4(1u);
      sub_1004A6EB4(v14);
    }

    v8 &= v8 - 1;
    sub_1004A6EB4(v16);
    v3 ^= sub_1004A6F14();
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      sub_1004A6EB4(v3);
      return;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_100092AB8(__int128 *a1, uint64_t a2)
{
  v4 = a1[3];
  v28 = a1[2];
  v29 = v4;
  v30 = *(a1 + 8);
  v5 = a1[1];
  v26 = *a1;
  v27 = v5;
  sub_1004A6F14();
  v23 = a2;
  v6 = 0;
  v7 = 0;
  v10 = *(a2 + 56);
  v9 = a2 + 56;
  v8 = v10;
  v11 = 1 << *(v9 - 24);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  if ((v12 & v8) != 0)
  {
    do
    {
      v24 = v6;
      v15 = v7;
LABEL_9:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = *(v23 + 48) + 24 * (v16 | (v15 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 20);
      v22 = *(v17 + 22);
      sub_1004A6E94();
      v2 = v2 & 0xFF00000000000000 | v20 | (v21 << 32) | (v22 << 48);
      QuotaRoot.hash(into:)(v25, v18, v19, v2);
      v6 = sub_1004A6F14() ^ v24;
    }

    while (v13);
  }

  while (1)
  {
    v15 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      sub_1004A6EB4(v6);
      return;
    }

    v13 = *(v9 + 8 * v15);
    ++v7;
    if (v13)
    {
      v24 = v6;
      v7 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100092C14(__int128 *a1, uint64_t a2)
{
  v16 = a1[2];
  v17 = a1[3];
  v18 = *(a1 + 8);
  v14 = *a1;
  v15 = a1[1];
  sub_1004A6F14();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= sub_1004A6F14())
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_1004A6E94();
    sub_1004A5834();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_1004A6EB4(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t _s13IMAP2Behavior11FlagEncoderV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[1];
  if (a1[1])
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *a1;
    v6 = *a2;
    v7 = sub_1004A5834();
    v9 = v8;
    if (v7 == sub_1004A5834() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_1004A6D34();

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v13 = a2[3];
  if (a1[3])
  {
    if (!v13)
    {
      return 0;
    }

    v14 = a1[2];
    v15 = a2[2];
    v16 = sub_1004A5834();
    v18 = v17;
    if (v16 == sub_1004A5834() && v18 == v19)
    {
    }

    else
    {
      v20 = sub_1004A6D34();

      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (sub_10010321C(a1[4], a2[4]) & 1) == 0 || (sub_10010321C(a1[5], a2[5]) & 1) == 0 || (sub_10010321C(a1[6], a2[6]) & 1) == 0 || (sub_10010321C(a1[7], a2[7]) & 1) == 0 || (sub_10010321C(a1[8], a2[8]) & 1) == 0 || (sub_10010321C(a1[9], a2[9]) & 1) == 0 || ((*(a1 + 80) ^ *(a2 + 80)))
  {
    return 0;
  }

  v22 = a2[12];
  if (!a1[12])
  {
    return !v22;
  }

  if (!v22)
  {
    return 0;
  }

  v23 = a1[11];
  v24 = a2[11];
  v25 = sub_1004A5834();
  v27 = v26;
  if (v25 != sub_1004A5834() || v27 != v28)
  {
    v29 = sub_1004A6D34();

    return (v29 & 1) != 0;
  }

  return 1;
}

Swift::Int sub_100092FD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptySetSingleton;
  }

  sub_10000C9C0(&qword_1005CEEA8, &qword_1004E91C0);
  v3 = sub_1004A66B4();
  v4 = 0;
  v5 = v3 + 56;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 16 * v4);
    v8 = *v7;
    v9 = *(v7 + 2);
    v10 = *(v3 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(v9 | (v9 << 32));
    result = sub_1004A6F14();
    v12 = -1 << *(v3 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    v15 = *(v5 + 8 * (v13 >> 6));
    v16 = 1 << v13;
    v17 = *(v3 + 48);
    if (((1 << v13) & v15) != 0)
    {
      break;
    }

LABEL_18:
    *(v5 + 8 * v14) = v15 | v16;
    v25 = v17 + 16 * v13;
    *v25 = v8;
    *(v25 + 8) = v9;
    v26 = *(v3 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_23;
    }

    *(v3 + 16) = v28;

LABEL_3:
    if (++v4 == v1)
    {
      return v3;
    }
  }

  v18 = ~v12;
  while (1)
  {
    v19 = (v17 + 16 * v13);
    if ((v19[2] | (v19[2] << 32)) == (v9 | (v9 << 32)))
    {
      v20 = *v19;
      v21 = *(*v19 + 16);
      if (v21 == *(v8 + 16))
      {
        break;
      }
    }

LABEL_6:
    v13 = (v13 + 1) & v18;
    v14 = v13 >> 6;
    v15 = *(v5 + 8 * (v13 >> 6));
    v16 = 1 << v13;
    if ((v15 & (1 << v13)) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v21)
  {
    v22 = v20 == v8;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    goto LABEL_3;
  }

  v23 = (v20 + 32);
  v24 = (v8 + 32);
  while (v21)
  {
    if (*v23 != *v24)
    {
      goto LABEL_6;
    }

    ++v23;
    ++v24;
    if (!--v21)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

Swift::Int sub_100093190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CEED8, &qword_1004D1DA8);
    v3 = sub_1004A66B4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v10);
      result = sub_1004A6F14();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_1000932CC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_10008867C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_10009333C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      sub_100014CEC(v4, *v2);
      sub_100088A40(v5, v4, v3);
      result = sub_100014D40(v5[0], v5[1]);
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

Swift::Int sub_1000933B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CEFE0, &qword_1004D1EC8);
    v3 = sub_1004A66B4();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
LABEL_6:
    v6 = (v28 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = *(v3 + 40);
    sub_1004A6E94();
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    result = sub_1004A6F14();
    v11 = ~(-1 << *(v3 + 32));
    for (i = result & v11; ; i = (i + 1) & v11)
    {
      v13 = *(v5 + 8 * (i >> 6));
      if (((1 << i) & v13) == 0)
      {
        break;
      }

      v14 = (*(v3 + 48) + 16 * i);
      v15 = *v14;
      v16 = v14[1];
      v17 = sub_1004A5834();
      v19 = v18;
      if (v17 == sub_1004A5834() && v19 == v20)
      {

LABEL_4:

LABEL_5:
        if (++v4 == v27)
        {
          return v3;
        }

        goto LABEL_6;
      }

      v22 = sub_1004A6D34();

      if (v22)
      {
        goto LABEL_4;
      }
    }

    *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
    v23 = (*(v3 + 48) + 16 * i);
    *v23 = v8;
    v23[1] = v7;
    v24 = *(v3 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      *(v3 + 16) = v26;
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

__n128 sub_1000935E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v3 = *(a1 + 40), sub_1004A6E94(), sub_1004A6EB4(1uLL), v4 = sub_1004A6F14(), v5 = -1 << *(a1 + 32), v6 = v4 & ~v5, ((*(a1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      v8 = *(*(a1 + 48) + 16 * v6 + 8);
      v9 = v8 == 0;
      if (!v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v9 = 0;
  }

  v10 = Flag.draft.unsafeMutableAddressor();
  v11 = v10;
  v350 = v9;
  if (*(a1 + 16))
  {
    v12 = *v10;
    v13 = *(v10 + 1);
    v14 = *(a1 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v15 = sub_1004A6F14();
    v16 = -1 << *(a1 + 32);
    v17 = v15 & ~v16;
    if ((*(a1 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
    {
      v18 = ~v16;
      do
      {
        v19 = (*(a1 + 48) + 16 * v17);
        if (v19[1])
        {
          v20 = *v19;
          v21 = sub_1004A5834();
          v23 = v22;
          if (v21 == sub_1004A5834() && v23 == v24)
          {

LABEL_23:

            v9 = v350;
LABEL_24:
            v341 = *(v11 + 1);
            v342 = *v11;

            goto LABEL_25;
          }

          v26 = sub_1004A6D34();

          if (v26)
          {
            goto LABEL_23;
          }
        }

        v17 = (v17 + 1) & v18;
      }

      while (((*(a1 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
    }

    v9 = v350;
  }

  if (v9)
  {
    goto LABEL_24;
  }

  v341 = 0;
  v342 = 0;
LABEL_25:
  v27 = Flag.flagged.unsafeMutableAddressor();
  v28 = v27;
  if (*(a1 + 16))
  {
    v29 = *v27;
    v30 = *(v27 + 1);
    v31 = *(a1 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v32 = sub_1004A6F14();
    v33 = -1 << *(a1 + 32);
    v34 = v32 & ~v33;
    if ((*(a1 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
    {
      v35 = ~v33;
      do
      {
        v36 = (*(a1 + 48) + 16 * v34);
        if (v36[1])
        {
          v37 = *v36;
          v38 = sub_1004A5834();
          v40 = v39;
          if (v38 == sub_1004A5834() && v40 == v41)
          {

LABEL_40:

            v9 = v350;
LABEL_41:
            v339 = *(v28 + 1);
            v340 = *v28;

            goto LABEL_42;
          }

          v43 = sub_1004A6D34();

          if (v43)
          {
            goto LABEL_40;
          }
        }

        v34 = (v34 + 1) & v35;
      }

      while (((*(a1 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0);
    }

    v9 = v350;
  }

  if (v9)
  {
    goto LABEL_41;
  }

  v339 = 0;
  v340 = 0;
LABEL_42:
  v44 = Flag.Keyword.forwarded.unsafeMutableAddressor();
  v45 = v44;
  if (*(a1 + 16))
  {
    v46 = *v44;
    v47 = *(v44 + 1);
    v48 = *(a1 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v49 = sub_1004A6F14();
    v50 = -1 << *(a1 + 32);
    v51 = v49 & ~v50;
    if ((*(a1 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
    {
      v52 = ~v50;
      do
      {
        v53 = (*(a1 + 48) + 16 * v51);
        if (v53[1])
        {
          v54 = *v53;
          v55 = sub_1004A5834();
          v57 = v56;
          if (v55 == sub_1004A5834() && v57 == v58)
          {

LABEL_57:

            v9 = v350;
LABEL_58:
            v62 = *v45;
            v61 = *(v45 + 1);

            v63 = sub_10008517C(0, 1, 1, _swiftEmptyArrayStorage);
            v65 = *(v63 + 2);
            v64 = *(v63 + 3);
            v349 = v63;
            if (v65 >= v64 >> 1)
            {
              v349 = sub_10008517C((v64 > 1), v65 + 1, 1, v63);
            }

            *(v349 + 2) = v65 + 1;
            v66 = &v349[16 * v65];
            *(v66 + 4) = v62;
            *(v66 + 5) = v61;
            goto LABEL_61;
          }

          v60 = sub_1004A6D34();

          if (v60)
          {
            goto LABEL_57;
          }
        }

        v51 = (v51 + 1) & v52;
      }

      while (((*(a1 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0);
    }

    v9 = v350;
  }

  if (v9)
  {
    goto LABEL_58;
  }

  v349 = _swiftEmptyArrayStorage;
LABEL_61:
  v67 = Flag.Keyword.unregistered_forwarded.unsafeMutableAddressor();
  v68 = v67;
  if (!*(a1 + 16))
  {
LABEL_92:
    if (v9)
    {
      sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1004CEAA0;
      v106 = *(v68 + 1);
      *(v105 + 32) = *v68;
      *(v105 + 40) = v106;
      v338 = v105;
    }

    else
    {
      v338 = _swiftEmptyArrayStorage;
    }

    goto LABEL_97;
  }

  v69 = *v67;
  v70 = *(v67 + 1);
  v71 = *(a1 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v72 = sub_1004A6F14();
  v73 = a1 + 56;
  v74 = -1 << *(a1 + 32);
  v75 = v72 & ~v74;
  if (((*(a1 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
  {
LABEL_72:

    if (*(a1 + 16))
    {
      goto LABEL_80;
    }

    goto LABEL_91;
  }

  v76 = ~v74;
  while (1)
  {
    v77 = (*(a1 + 48) + 16 * v75);
    if (!v77[1])
    {
      goto LABEL_64;
    }

    v78 = *v77;
    v79 = sub_1004A5834();
    v81 = v80;
    if (v79 == sub_1004A5834() && v81 == v82)
    {
      break;
    }

    v84 = sub_1004A6D34();

    if (v84)
    {
      goto LABEL_75;
    }

LABEL_64:
    v75 = (v75 + 1) & v76;
    if (((*(v73 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
    {
      goto LABEL_72;
    }
  }

LABEL_75:

  v86 = *v68;
  v85 = *(v68 + 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v349 = sub_10008517C(0, *(v349 + 2) + 1, 1, v349);
  }

  v88 = *(v349 + 2);
  v87 = *(v349 + 3);
  if (v88 >= v87 >> 1)
  {
    v349 = sub_10008517C((v87 > 1), v88 + 1, 1, v349);
  }

  *(v349 + 2) = v88 + 1;
  v89 = &v349[16 * v88];
  *(v89 + 4) = v86;
  *(v89 + 5) = v85;
  if (!*(a1 + 16))
  {
    goto LABEL_91;
  }

LABEL_80:
  v90 = *v68;
  v91 = *(v68 + 1);
  v92 = *(a1 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v93 = sub_1004A6F14();
  v94 = -1 << *(a1 + 32);
  v95 = v93 & ~v94;
  if (((*(v73 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
  {
LABEL_90:

LABEL_91:
    v9 = v350;
    goto LABEL_92;
  }

  v96 = ~v94;
  while (1)
  {
    v97 = (*(a1 + 48) + 16 * v95);
    if (!v97[1])
    {
      goto LABEL_82;
    }

    v98 = *v97;
    v99 = sub_1004A5834();
    v101 = v100;
    if (v99 == sub_1004A5834() && v101 == v102)
    {
      break;
    }

    v104 = sub_1004A6D34();

    if (v104)
    {
      goto LABEL_96;
    }

LABEL_82:
    v95 = (v95 + 1) & v96;
    if (((*(v73 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
    {
      goto LABEL_90;
    }
  }

LABEL_96:

  v338 = _swiftEmptyArrayStorage;
  v9 = v350;
LABEL_97:
  v107 = Flag.Keyword.unregistered_redirected.unsafeMutableAddressor();
  v108 = v107;
  if (*(a1 + 16))
  {
    v109 = *v107;
    v110 = *(v107 + 1);
    v111 = *(a1 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v112 = sub_1004A6F14();
    v113 = -1 << *(a1 + 32);
    v114 = v112 & ~v113;
    if ((*(a1 + 56 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114))
    {
      v115 = ~v113;
      do
      {
        v116 = (*(a1 + 48) + 16 * v114);
        if (v116[1])
        {
          v117 = *v116;
          v118 = sub_1004A5834();
          v120 = v119;
          if (v118 == sub_1004A5834() && v120 == v121)
          {

LABEL_112:

            v9 = v350;
LABEL_113:
            sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
            v124 = swift_allocObject();
            *(v124 + 16) = xmmword_1004CEAA0;
            v125 = *(v108 + 1);
            *(v124 + 32) = *v108;
            *(v124 + 40) = v125;
            v337 = v124;

            goto LABEL_114;
          }

          v123 = sub_1004A6D34();

          if (v123)
          {
            goto LABEL_112;
          }
        }

        v114 = (v114 + 1) & v115;
      }

      while (((*(a1 + 56 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114) & 1) != 0);
    }

    v9 = v350;
  }

  if (v9)
  {
    goto LABEL_113;
  }

  v337 = _swiftEmptyArrayStorage;
LABEL_114:
  v126 = Flag.Keyword.junk.unsafeMutableAddressor();
  v127 = v126;
  if (*(a1 + 16))
  {
    v128 = *v126;
    v129 = *(v126 + 1);
    v130 = *(a1 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v131 = sub_1004A6F14();
    v132 = -1 << *(a1 + 32);
    v133 = v131 & ~v132;
    if ((*(a1 + 56 + ((v133 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v133))
    {
      v134 = ~v132;
      do
      {
        v135 = (*(a1 + 48) + 16 * v133);
        if (v135[1])
        {
          v136 = *v135;
          v137 = sub_1004A5834();
          v139 = v138;
          if (v137 == sub_1004A5834() && v139 == v140)
          {

LABEL_129:

            v9 = v350;
LABEL_130:
            v144 = *v127;
            v143 = *(v127 + 1);

            v145 = sub_10008517C(0, 1, 1, _swiftEmptyArrayStorage);
            v147 = *(v145 + 2);
            v146 = *(v145 + 3);
            if (v147 >= v146 >> 1)
            {
              v145 = sub_10008517C((v146 > 1), v147 + 1, 1, v145);
            }

            *(v145 + 2) = v147 + 1;
            v348 = v145;
            v148 = &v145[16 * v147];
            *(v148 + 4) = v144;
            *(v148 + 5) = v143;
            goto LABEL_133;
          }

          v142 = sub_1004A6D34();

          if (v142)
          {
            goto LABEL_129;
          }
        }

        v133 = (v133 + 1) & v134;
      }

      while (((*(a1 + 56 + ((v133 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v133) & 1) != 0);
    }

    v9 = v350;
  }

  if (v9)
  {
    goto LABEL_130;
  }

  v348 = _swiftEmptyArrayStorage;
LABEL_133:
  v149 = Flag.Keyword.unregistered_junk.unsafeMutableAddressor();
  v344 = v149;
  if (!*(a1 + 16))
  {
    goto LABEL_151;
  }

  v150 = *v149;
  v151 = *(v149 + 1);
  v152 = *(a1 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v153 = sub_1004A6F14();
  v154 = -1 << *(a1 + 32);
  v155 = v153 & ~v154;
  if (((*(a1 + 56 + ((v155 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v155) & 1) == 0)
  {
LABEL_144:

    v9 = v350;
    goto LABEL_151;
  }

  v156 = ~v154;
  while (2)
  {
    v157 = (*(a1 + 48) + 16 * v155);
    if (!v157[1])
    {
LABEL_136:
      v155 = (v155 + 1) & v156;
      if (((*(a1 + 56 + ((v155 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v155) & 1) == 0)
      {
        goto LABEL_144;
      }

      continue;
    }

    break;
  }

  v158 = *v157;
  v159 = sub_1004A5834();
  v161 = v160;
  if (v159 != sub_1004A5834() || v161 != v162)
  {
    v164 = sub_1004A6D34();

    if (v164)
    {
      goto LABEL_146;
    }

    goto LABEL_136;
  }

LABEL_146:

  v166 = *v344;
  v165 = *(v344 + 1);

  v9 = v350;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v167 = v348;
  }

  else
  {
    v167 = sub_10008517C(0, *(v348 + 2) + 1, 1, v348);
  }

  v169 = *(v167 + 2);
  v168 = *(v167 + 3);
  if (v169 >= v168 >> 1)
  {
    v167 = sub_10008517C((v168 > 1), v169 + 1, 1, v167);
  }

  *(v167 + 2) = v169 + 1;
  v348 = v167;
  v170 = &v167[16 * v169];
  *(v170 + 4) = v166;
  *(v170 + 5) = v165;
LABEL_151:
  v171 = Flag.Keyword.notJunk.unsafeMutableAddressor();
  v172 = v171;
  if (*(a1 + 16))
  {
    v173 = *v171;
    v174 = *(v171 + 1);
    v175 = *(a1 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v176 = sub_1004A6F14();
    v177 = -1 << *(a1 + 32);
    v178 = v176 & ~v177;
    if ((*(a1 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178))
    {
      v179 = ~v177;
      do
      {
        v180 = (*(a1 + 48) + 16 * v178);
        if (v180[1])
        {
          v181 = *v180;
          v182 = sub_1004A5834();
          v184 = v183;
          if (v182 == sub_1004A5834() && v184 == v185)
          {

LABEL_166:

            v9 = v350;
LABEL_167:
            v189 = *v172;
            v188 = *(v172 + 1);

            v190 = sub_10008517C(0, 1, 1, _swiftEmptyArrayStorage);
            v192 = *(v190 + 2);
            v191 = *(v190 + 3);
            if (v192 >= v191 >> 1)
            {
              v190 = sub_10008517C((v191 > 1), v192 + 1, 1, v190);
            }

            *(v190 + 2) = v192 + 1;
            v347 = v190;
            v193 = &v190[16 * v192];
            *(v193 + 4) = v189;
            *(v193 + 5) = v188;
            goto LABEL_170;
          }

          v187 = sub_1004A6D34();

          if (v187)
          {
            goto LABEL_166;
          }
        }

        v178 = (v178 + 1) & v179;
      }

      while (((*(a1 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178) & 1) != 0);
    }

    v9 = v350;
  }

  if (v9)
  {
    goto LABEL_167;
  }

  v347 = _swiftEmptyArrayStorage;
LABEL_170:
  v194 = Flag.Keyword.unregistered_notJunk.unsafeMutableAddressor();
  v195 = v194;
  if (!*(a1 + 16))
  {
LABEL_200:
    v218 = v344;
    if (v9)
    {
LABEL_201:
      v235 = *v218;
      v234 = *(v218 + 1);

      v236 = sub_10008517C(0, 1, 1, _swiftEmptyArrayStorage);
      v238 = *(v236 + 2);
      v237 = *(v236 + 3);
      if (v238 >= v237 >> 1)
      {
        v236 = sub_10008517C((v237 > 1), v238 + 1, 1, v236);
      }

      *(v236 + 2) = v238 + 1;
      v239 = &v236[16 * v238];
      *(v239 + 4) = v235;
      *(v239 + 5) = v234;
      goto LABEL_208;
    }

LABEL_205:
    v236 = _swiftEmptyArrayStorage;
    goto LABEL_208;
  }

  v196 = *v194;
  v197 = *(v194 + 1);
  v198 = *(a1 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v199 = sub_1004A6F14();
  v200 = a1 + 56;
  v201 = -1 << *(a1 + 32);
  v202 = v199 & ~v201;
  if (((*(a1 + 56 + ((v202 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v202) & 1) == 0)
  {
LABEL_181:

    goto LABEL_188;
  }

  v203 = ~v201;
  while (2)
  {
    v204 = (*(a1 + 48) + 16 * v202);
    if (!v204[1])
    {
LABEL_173:
      v202 = (v202 + 1) & v203;
      if (((*(v200 + ((v202 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v202) & 1) == 0)
      {
        goto LABEL_181;
      }

      continue;
    }

    break;
  }

  v205 = *v204;
  v206 = sub_1004A5834();
  v208 = v207;
  if (v206 != sub_1004A5834() || v208 != v209)
  {
    v211 = sub_1004A6D34();

    if (v211)
    {
      goto LABEL_183;
    }

    goto LABEL_173;
  }

LABEL_183:

  v213 = *v195;
  v212 = *(v195 + 1);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v214 = v347;
  }

  else
  {
    v214 = sub_10008517C(0, *(v347 + 2) + 1, 1, v347);
  }

  v216 = *(v214 + 2);
  v215 = *(v214 + 3);
  if (v216 >= v215 >> 1)
  {
    v214 = sub_10008517C((v215 > 1), v216 + 1, 1, v214);
  }

  *(v214 + 2) = v216 + 1;
  v347 = v214;
  v217 = &v214[16 * v216];
  *(v217 + 4) = v213;
  *(v217 + 5) = v212;
LABEL_188:
  v218 = v344;
  if (!*(a1 + 16))
  {
    v9 = v350;
    if (v350)
    {
      goto LABEL_201;
    }

    goto LABEL_205;
  }

  v219 = *v344;
  v220 = *(v344 + 1);
  v221 = *(a1 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v222 = sub_1004A6F14();
  v223 = -1 << *(a1 + 32);
  v224 = v222 & ~v223;
  if (((*(v200 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224) & 1) == 0)
  {
LABEL_199:

    v9 = v350;
    goto LABEL_200;
  }

  v225 = ~v223;
  while (1)
  {
    v226 = (*(a1 + 48) + 16 * v224);
    if (!v226[1])
    {
      goto LABEL_191;
    }

    v227 = *v226;
    v228 = sub_1004A5834();
    v230 = v229;
    if (v228 == sub_1004A5834() && v230 == v231)
    {
      break;
    }

    v233 = sub_1004A6D34();

    if (v233)
    {
      goto LABEL_207;
    }

LABEL_191:
    v224 = (v224 + 1) & v225;
    if (((*(v200 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224) & 1) == 0)
    {
      goto LABEL_199;
    }
  }

LABEL_207:

  v236 = _swiftEmptyArrayStorage;
  v9 = v350;
LABEL_208:
  v240 = 0xEE0070756E61656CLL;
  if (*(a1 + 16))
  {
    v345 = v236;
    v242 = *v195;
    v241 = *(v195 + 1);
    v243 = *(a1 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v244 = sub_1004A6F14();
    v245 = -1 << *(a1 + 32);
    v246 = v244 & ~v245;
    if ((*(a1 + 56 + ((v246 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v246))
    {
      v247 = ~v245;
      do
      {
        v248 = (*(a1 + 48) + 16 * v246);
        if (v248[1])
        {
          v249 = *v248;
          v250 = sub_1004A5834();
          v252 = v251;
          if (v250 == sub_1004A5834() && v252 == v253)
          {

LABEL_227:

            v9 = v350;
            v236 = v345;
            v240 = 0xEE0070756E61656CLL;
            if (v350)
            {
LABEL_228:
              v261 = 1;
              if (*(a1 + 16))
              {
                goto LABEL_270;
              }

              goto LABEL_284;
            }

            goto LABEL_230;
          }

          v255 = sub_1004A6D34();

          if (v255)
          {
            goto LABEL_227;
          }
        }

        v246 = (v246 + 1) & v247;
      }

      while (((*(a1 + 56 + ((v246 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v246) & 1) != 0);
    }

    v9 = v350;
    v236 = v345;
    v240 = 0xEE0070756E61656CLL;
  }

  if (v9)
  {
    v257 = *v195;
    v256 = *(v195 + 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v236 = sub_10008517C(0, *(v236 + 2) + 1, 1, v236);
    }

    v259 = *(v236 + 2);
    v258 = *(v236 + 3);
    if (v259 >= v258 >> 1)
    {
      v236 = sub_10008517C((v258 > 1), v259 + 1, 1, v236);
    }

    *(v236 + 2) = v259 + 1;
    v260 = &v236[16 * v259];
    *(v260 + 4) = v257;
    *(v260 + 5) = v256;
    goto LABEL_228;
  }

LABEL_230:
  v262 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
  if (!*(a1 + 16))
  {
    v261 = 0;
    goto LABEL_284;
  }

  v263 = *v262;
  v264 = *(v262 + 1);
  v265 = *(a1 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v266 = sub_1004A6F14();
  v267 = a1 + 56;
  v268 = -1 << *(a1 + 32);
  v269 = v266 & ~v268;
  if (((*(a1 + 56 + ((v269 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v269) & 1) == 0)
  {
    goto LABEL_258;
  }

  v270 = ~v268;
  while (1)
  {
    v271 = (*(a1 + 48) + 16 * v269);
    if (!v271[1])
    {
      goto LABEL_233;
    }

    v272 = *v271;
    v273 = sub_1004A5834();
    v275 = v274;
    if (v273 == sub_1004A5834() && v275 == v276)
    {
      break;
    }

    v278 = sub_1004A6D34();

    if (v278)
    {
      goto LABEL_243;
    }

LABEL_233:
    v269 = (v269 + 1) & v270;
    if (((*(v267 + ((v269 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v269) & 1) == 0)
    {
LABEL_267:

      v261 = 0;
      goto LABEL_268;
    }
  }

LABEL_243:

  v279 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v9 = v350;
  if (!*(a1 + 16))
  {
    goto LABEL_283;
  }

  v280 = *v279;
  v281 = *(v279 + 1);
  v282 = *(a1 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v283 = sub_1004A6F14();
  v284 = -1 << *(a1 + 32);
  v285 = v283 & ~v284;
  if (((*(v267 + ((v285 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v285) & 1) == 0)
  {
LABEL_258:

    v261 = 0;
    goto LABEL_269;
  }

  v286 = ~v284;
  while (1)
  {
    v287 = (*(a1 + 48) + 16 * v285);
    if (!v287[1])
    {
      goto LABEL_246;
    }

    v288 = *v287;
    v289 = sub_1004A5834();
    v291 = v290;
    if (v289 == sub_1004A5834() && v291 == v292)
    {
      break;
    }

    v294 = sub_1004A6D34();

    if (v294)
    {
      goto LABEL_255;
    }

LABEL_246:
    v285 = (v285 + 1) & v286;
    if (((*(v267 + ((v285 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v285) & 1) == 0)
    {
      goto LABEL_267;
    }
  }

LABEL_255:

  v295 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
  v9 = v350;
  if (!*(a1 + 16))
  {
LABEL_283:
    v261 = 0;
    v240 = 0xEE0070756E61656CLL;
    goto LABEL_284;
  }

  v296 = *v295;
  v297 = *(v295 + 1);
  v298 = *(a1 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v299 = sub_1004A6F14();
  v300 = -1 << *(a1 + 32);
  v301 = v299 & ~v300;
  if (((*(v267 + ((v301 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v301) & 1) == 0)
  {
    goto LABEL_258;
  }

  v302 = ~v300;
  while (1)
  {
    v303 = (*(a1 + 48) + 16 * v301);
    if (!v303[1])
    {
      goto LABEL_259;
    }

    v304 = *v303;
    v305 = sub_1004A5834();
    v307 = v306;
    if (v305 == sub_1004A5834() && v307 == v308)
    {
      break;
    }

    v310 = sub_1004A6D34();

    if (v310)
    {
      goto LABEL_290;
    }

LABEL_259:
    v301 = (v301 + 1) & v302;
    if (((*(v267 + ((v301 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v301) & 1) == 0)
    {
      goto LABEL_267;
    }
  }

LABEL_290:

  v261 = 1;
LABEL_268:
  v9 = v350;
LABEL_269:
  v240 = 0xEE0070756E61656CLL;
  if (*(a1 + 16))
  {
LABEL_270:
    v311 = *(a1 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v312 = sub_1004A6F14();
    v313 = -1 << *(a1 + 32);
    v314 = v312 & ~v313;
    if ((*(a1 + 56 + ((v314 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v314))
    {
      v346 = v236;
      v315 = ~v313;
      while (1)
      {
        v316 = (*(a1 + 48) + 16 * v314);
        if (v316[1])
        {
          v317 = *v316;
          v318 = sub_1004A5834();
          v320 = v319;
          if (v318 == sub_1004A5834() && v320 == v321)
          {

LABEL_282:

            v324 = v342;
            v325 = a2;
            v327 = v340;
            v326 = v341;
            v329 = v338;
            v328 = v339;
            v330 = v337;
            v332 = v347;
            v331 = v348;
            v236 = v346;
LABEL_286:
            v333 = 0x4364756F6C436924;
            goto LABEL_288;
          }

          v323 = sub_1004A6D34();

          if (v323)
          {
            goto LABEL_282;
          }
        }

        v314 = (v314 + 1) & v315;
        if (((*(a1 + 56 + ((v314 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v314) & 1) == 0)
        {
          v236 = v346;
          break;
        }
      }
    }
  }

LABEL_284:

  if (v9)
  {
    v324 = v342;
    v325 = a2;
    v327 = v340;
    v326 = v341;
    v329 = v338;
    v328 = v339;
    v330 = v337;
    v332 = v347;
    v331 = v348;
    goto LABEL_286;
  }

  v333 = 0;
  v240 = 0;
  v324 = v342;
  v325 = a2;
  v327 = v340;
  v326 = v341;
  v329 = v338;
  v328 = v339;
  v330 = v337;
  v332 = v347;
  v331 = v348;
LABEL_288:
  *&v352 = v324;
  *(&v352 + 1) = v326;
  *&v353 = v327;
  *(&v353 + 1) = v328;
  *&v354 = v349;
  *(&v354 + 1) = v330;
  v355.n128_u64[0] = v329;
  v355.n128_u64[1] = v331;
  *&v356 = v332;
  *(&v356 + 1) = v236;
  LOBYTE(v357) = v261;
  *(&v357 + 1) = v364[0];
  DWORD1(v357) = *(v364 + 3);
  *(&v357 + 1) = v333;
  v358 = v240;
  v359[0] = v324;
  v359[1] = v326;
  v359[2] = v327;
  v359[3] = v328;
  v359[4] = v349;
  v359[5] = v330;
  v359[6] = v329;
  v359[7] = v331;
  v359[8] = v332;
  v359[9] = v236;
  v360 = v261;
  *v361 = v364[0];
  *&v361[3] = *(v364 + 3);
  v362 = v333;
  v363 = v240;
  sub_100095920(&v352, v351);
  sub_100095958(v359);
  v334 = v357;
  *(v325 + 64) = v356;
  *(v325 + 80) = v334;
  *(v325 + 96) = v358;
  v335 = v353;
  *v325 = v352;
  *(v325 + 16) = v335;
  result = v355;
  *(v325 + 32) = v354;
  *(v325 + 48) = result;
  return result;
}

unint64_t sub_1000951DC(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = *(a1 + 40), sub_1004A6E94(), sub_1004A6EB4(1uLL), v3 = sub_1004A6F14(), v4 = -1 << *(a1 + 32), v5 = v3 & ~v4, ((*(a1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(a1 + 48) + 16 * v5 + 8);
      v8 = v7 == 0;
      if (!v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  v9 = Flag.Keyword.forwarded.unsafeMutableAddressor();
  v10 = *v9;
  v11 = v9[1];

  v12 = sub_1000827C4(v10, v11, a1, v8);

  v13 = Flag.Keyword.unregistered_redirected.unsafeMutableAddressor();
  v14 = *v13;
  v15 = v13[1];

  v16 = sub_1000827C4(v14, v15, a1, v8);

  v17 = Flag.Keyword.junk.unsafeMutableAddressor();
  v18 = *v17;
  v19 = v17[1];

  LOBYTE(v18) = sub_1000827C4(v18, v19, a1, v8);

  if (v18)
  {
    v20 = Flag.Keyword.notJunk.unsafeMutableAddressor();
    v21 = *v20;
    v22 = v20[1];

    LOBYTE(v21) = sub_1000827C4(v21, v22, a1, v8);

    if (v21)
    {
      v23 = 0x10000;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
  v25 = *v24;
  v26 = v24[1];

  LOBYTE(v25) = sub_1000827C4(v25, v26, a1, v8);

  if (v25 & 1) != 0 && (v27 = Flag.Keyword.colorBit1.unsafeMutableAddressor(), v28 = *v27, v29 = v27[1], , LOBYTE(v28) = sub_1000827C4(v28, v29, a1, v8), , (v28))
  {
    v30 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
    v31 = *v30;
    v32 = v30[1];

    LOBYTE(v31) = sub_1000827C4(v31, v32, a1, v8);

    if (v31)
    {
      v33 = 0x1000000;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  if (qword_1005CCE50 != -1)
  {
    swift_once();
  }

  v34 = sub_1000827C4(static Flag.Keyword.iCloudCleanup, unk_1005DDF20, a1, v8);
  v35 = &_mh_execute_header;
  if ((v34 & 1) == 0)
  {
    v35 = 0;
  }

  v36 = 256;
  if ((v16 & 1) == 0)
  {
    v36 = 0;
  }

  return v36 & 0xFFFFFFFFFFFFFFFELL | v12 & 1 | v23 | v33 | v35;
}

unint64_t sub_1000954A4()
{
  result = qword_1005CEE70;
  if (!qword_1005CEE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CEE70);
  }

  return result;
}

__n128 sub_1000954F8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100095524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009556C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FlagDecoder(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FlagDecoder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FlagDecoder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000956A0()
{
  result = qword_1005CEF40;
  if (!qword_1005CEF40)
  {
    sub_10000DEFC(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_100095724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CEF40);
  }

  return result;
}

unint64_t sub_100095724()
{
  result = qword_1005CEF48;
  if (!qword_1005CEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CEF48);
  }

  return result;
}

uint64_t sub_100095778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000957E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100095840(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000958B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000958E8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_1000959EC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100095A18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_100095A60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100095ACC()
{
  result = sub_100093190(&off_100598FE0);
  qword_1005DDF28 = result;
  return result;
}

void sub_100095AF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  sub_1000118A4(a1, &v22 - v9);
  sub_1000118A4(a1, v7);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000965C0(v2, v25);
  v11 = sub_1004A4A54();
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v13 = 68159491;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v14;
    *(v13 + 11) = 2082;
    v15 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_10015BA6C(*(v15 + 1), *(v15 + 2), &v24);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    v16 = *(v14 + 12);
    sub_100011908(v7);
    *(v13 + 29) = v16;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v17 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);

    sub_100011908(v10);
    v22 = v17;
    v23 = v15;
    v18 = sub_1004A5824();
    v20 = sub_10015BA6C(v18, v19, &v24);

    *(v13 + 43) = v20;
    *(v13 + 51) = 2048;
    v21 = *(v26 + 16);
    sub_1000965F8(v25);
    *(v13 + 53) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld identifier(s).", v13, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000965F8(v25);
    sub_100011908(v7);

    sub_100011908(v10);
  }
}

void sub_100095DA8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = *(v2 + 112);

  v7 = sub_10015D510(v6, v4);

  if (v7[2])
  {
    v8 = *(v2 + 24);
    v9 = *(v2 + 32);
    sub_1000B67CC(v7, v8, v9);
  }

  else
  {

    v8 = *(v2 + 24);
    v9 = *(v2 + 32);
  }

  __chkstk_darwin(v10);
  if (*(a1 + 192) == 1)
  {
    v12 = *(a1 + 176);
    v11 = *(a1 + 184);
    v15 = *(a1 + 168);
    v13 = v15;

    sub_1000BE940(&v15, v8, v9, 0, sub_100096184);
    sub_100020D58(v13, v12, v11, 1);
    v14 = v15;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v14;
    *(a1 + 192) = 1;
  }
}

uint64_t sub_100095EF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *(type metadata accessor for MailboxSyncState() + 56);

  v5 = *(a1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + v4);
  sub_100096284(v3, sub_10009618C, 0, isUniquelyReferenced_nonNull_native, &v8);

  *(a1 + v4) = v8;
  return result;
}

uint64_t sub_100095F90()
{
  if (qword_1005CCE58 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100096000@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, unint64_t *a3@<X8>)
{
  result = sub_10001FDD0(a1, a2);
  if (result)
  {
    v6 = 0xF000000000000007;
  }

  else
  {
    v7 = swift_allocObject();
    v8 = *(v3 + 32);
    *(v7 + 16) = *(v3 + 24);
    *(v7 + 24) = v8;
    *(v7 + 32) = *(v3 + 40);
    v6 = v7 | 0xA000000000000002;
  }

  *a3 = v6;
  return result;
}

unint64_t sub_1000960B4()
{
  result = qword_1005CF0F8;
  if (!qword_1005CF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF0F8);
  }

  return result;
}

unint64_t sub_100096108(uint64_t a1)
{
  result = sub_100096130();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100096130()
{
  result = qword_1005CF1B0;
  if (!qword_1005CF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF1B0);
  }

  return result;
}

uint64_t sub_10009618C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 33) = v7;
  return sub_100014CEC(v3, v2);
}

unint64_t sub_1000961BC(unint64_t result)
{
  if (((result >> 59) & 0x1E | (result >> 2) & 1) == 0x15 && (*(v1 + 32) | (*(v1 + 32) << 32)) == (*((result & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((result & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    result = sub_1000FFC98(*(v1 + 24), *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10));
    if (result)
    {

      v3 = *(v1 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = *(v1 + 112);
      sub_100096284(v2, sub_10009618C, 0, isUniquelyReferenced_nonNull_native, &v5);

      *(v1 + 112) = v5;
    }
  }

  return result;
}

uint64_t sub_100096284(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v43 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v44 = v10;
  v45 = v6;
  while (1)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v16 = __clz(__rbit64(v13)) | (v14 << 6);
    v17 = *(a1 + 56) + 24 * v16;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    LOBYTE(v17) = *(v17 + 17);
    v51 = *(*(a1 + 48) + 16 * v16);
    v52 = v18;
    v53 = v19;
    v54 = v20;
    v55 = v17;
    sub_100014CEC(v51, *(&v51 + 1));
    a2(&v56, &v51);
    sub_100014D40(v51, *(&v51 + 1));
    v21 = v60;
    if ((v60 & 0xFF00) == 0x200)
    {
LABEL_22:
      sub_100020D08();
    }

    v23 = v56;
    v22 = v57;
    v48 = v58;
    v49 = v59;
    v50 = HIBYTE(v60);
    v24 = *v61;
    v26 = sub_100063DD8(v56, v57);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_24;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((a4 & 1) == 0)
      {
        sub_10013AF64();
      }
    }

    else
    {
      v31 = v61;
      sub_1000C4730(v29, a4 & 1);
      v32 = *v31;
      v33 = sub_100063DD8(v23, v22);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_26;
      }

      v26 = v33;
    }

    v35 = (v13 - 1) & v13;
    v36 = *v61;
    if (v30)
    {
      sub_100014D40(v23, v22);
      v12 = v36[7] + 24 * v26;
      *v12 = v48;
      *(v12 + 8) = v49;
      *(v12 + 16) = v21 & 1;
      *(v12 + 17) = v50;
    }

    else
    {
      v36[(v26 >> 6) + 8] |= 1 << v26;
      v37 = (v36[6] + 16 * v26);
      *v37 = v23;
      v37[1] = v22;
      v38 = v36[7] + 24 * v26;
      *v38 = v48;
      *(v38 + 8) = v49;
      *(v38 + 16) = v21 & 1;
      *(v38 + 17) = v50;
      v39 = v36[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_25;
      }

      v36[2] = v41;
    }

    a4 = 1;
    v11 = v14;
    v10 = v44;
    v6 = v45;
    v9 = v35;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_100096580()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100096640(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t sub_1000966C8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000966E0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10009670C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
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

uint64_t sub_100096754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000967C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Task.Logger(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v10 = &v31[-v9 - 8];
  sub_100019648(a1, &v31[-v9 - 8], type metadata accessor for Task.Logger);
  sub_100019648(a1, v7, type metadata accessor for Task.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10009A228(v2, v32);
  sub_10009A228(v2, v31);
  v11 = sub_1004A4A54();
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 68158722;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = *&v7[*(v4 + 20)];
    sub_10009A1C8(v7, type metadata accessor for Task.Logger);
    *(v13 + 10) = v14;
    *(v13 + 11) = 2082;
    v15 = &v10[*(v4 + 20)];
    v16 = *(v15 + 1);
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);
    v19 = *(v15 + 4);
    v20 = *(v15 + 10);
    sub_100018BD0(*v15, v16, v17, v18);
    sub_10009A1C8(v10, type metadata accessor for Task.Logger);
    if (v18 < 0)
    {
    }

    v21 = sub_10015BA6C(v16, v17, &v30);

    *(v13 + 13) = v21;
    *(v13 + 21) = 2080;
    if (v33)
    {
      v22 = 0x616C696176616E75;
    }

    else
    {
      v22 = 0x6574726F70707573;
    }

    if (v33)
    {
      v23 = 0xEB00000000656C62;
    }

    else
    {
      v23 = 0xE900000000000064;
    }

    sub_10009A260(v32);
    v24 = sub_10015BA6C(v22, v23, &v30);

    *(v13 + 23) = v24;
    *(v13 + 31) = 2080;
    if (v31[113])
    {
      v25 = 256;
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_10010B990(v25 | v31[112]);
    v28 = v27;
    sub_10009A260(v31);
    v29 = sub_10015BA6C(v26, v28, &v30);

    *(v13 + 33) = v29;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx-%{public}s] Created task (NAMESPACE: %s; LIST: %s).", v13, 0x29u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10009A1C8(v7, type metadata accessor for Task.Logger);

    sub_10009A260(v31);
    sub_10009A260(v32);
    sub_10009A1C8(v10, type metadata accessor for Task.Logger);
  }
}

uint64_t sub_100096B38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  if (*(v3 + 80) & 1) != 0 || *(v3 + 88) || (v5 = a1, v6 = a2, v7 = sub_100110C64(1, a1, a2), a1 = v5, a2 = v6, (v7))
  {
    if (sub_100110C64(0, a1, a2))
    {
      v8 = sub_10000C9C0(&qword_1005CF250, &qword_1004D22C8);
      v9 = *(*(v8 - 8) + 56);
      v10 = v8;
      v11 = a3;
      v12 = 1;
      goto LABEL_11;
    }

    if (*(v3 + 113))
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_100096D28(v13 | *(v3 + 112));
    v15 = sub_10000C9C0(&qword_1005CF250, &qword_1004D22C8);
    v16 = &a3[*(v15 + 48)];
    *a3 = 0;
    v17 = ByteBufferAllocator.buffer(string:)(42, 0xE100000000000000, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
    v20 = MailboxName.init(_:)(v17, v19, v18 & 0xFFFFFFFFFFFFFFLL);
    *v16 = 0;
    *(v16 + 2) = 0;
    *(v16 + 2) = v20;
    *(v16 + 6) = v21;
    *(v16 + 4) = v14;
    type metadata accessor for ClientCommand(0);
  }

  else
  {
    v15 = sub_10000C9C0(&qword_1005CF250, &qword_1004D22C8);
    v23 = *(v15 + 48);
    *a3 = 1;
    type metadata accessor for ClientCommand(0);
  }

  swift_storeEnumTagMultiPayload();
  v9 = *(*(v15 - 8) + 56);
  v11 = a3;
  v12 = 0;
  v10 = v15;
LABEL_11:

  return v9(v11, v12, 1, v10);
}

char *sub_100096D28(__int16 a1)
{
  if (!a1)
  {
    result = _swiftEmptyArrayStorage;
    if ((a1 & 0x100) != 0)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a1 == 1)
  {
    result = sub_10008529C(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(result + 2);
    v3 = *(result + 3);
    v5 = v4 + 1;
    if (v4 >= v3 >> 1)
    {
      result = sub_10008529C((v3 > 1), v4 + 1, 1, result);
    }

    v6 = &off_100598700;
  }

  else
  {
    result = sub_10008529C(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(result + 2);
    v7 = *(result + 3);
    v5 = v4 + 1;
    if (v4 >= v7 >> 1)
    {
      result = sub_10008529C((v7 > 1), v4 + 1, 1, result);
    }

    v6 = &off_100598728;
  }

  *(result + 2) = v5;
  v8 = &result[64 * v4];
  *(v8 + 4) = v6;
  *(v8 + 8) = 0;
  if ((a1 & 0x100) == 0)
  {
LABEL_12:
    v9 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v9;
    }

    else
    {
      result = sub_10008529C(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(result + 2);
    v10 = *(result + 3);
    if (v11 >= v10 >> 1)
    {
      result = sub_10008529C((v10 > 1), v11 + 1, 1, result);
    }

    *(result + 2) = v11 + 1;
    v12 = &result[64 * v11];
    *(v12 + 4) = 2;
    *(v12 + 5) = 0;
    *(v12 + 6) = 0;
    *(v12 + 7) = 0;
    *(v12 + 8) = 0x8000000000000000;
    *(v12 + 9) = 0;
    *(v12 + 10) = 0;
    *(v12 + 11) = 0;
  }

  return result;
}

unint64_t sub_100096E9C(char a1, unint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6)
{
  v13 = type metadata accessor for Task.Logger(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v34 - v19;
  if ((a1 & 1) == 0 && !*(*v6 + 16))
  {
    v40 = v18;
    sub_100019648(a6, &v34 - v19, type metadata accessor for Task.Logger);
    sub_100019648(a6, v16, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v21 = sub_1004A4A54();
    v22 = sub_1004A6014();
    if (os_log_type_enabled(v21, v22))
    {
      v38 = v22;
      v39 = v21;
      v23 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v23 = 68158210;
      *(v23 + 4) = 2;
      *(v23 + 8) = 256;
      v24 = v40;
      v35 = *&v16[*(v40 + 20)];
      v36 = type metadata accessor for Task.Logger;
      sub_10009A1C8(v16, type metadata accessor for Task.Logger);
      *(v23 + 10) = v35;
      *(v23 + 11) = 2082;
      v25 = &v20[*(v24 + 20)];
      v26 = *v25;
      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v29 = *(v25 + 4);
      v30 = *(v25 + 10);
      v40 = *(v25 + 1);
      v35 = v29;
      sub_100018BD0(v26, v40, v28, v27);
      sub_10009A1C8(v20, v36);
      if (v27 < 0)
      {
      }

      v31 = sub_10015BA6C(v40, v28, &v41);

      *(v23 + 13) = v31;
      v32 = v39;
      _os_log_impl(&_mh_execute_header, v39, v38, "[%.*hhx-%{public}s] LIST completed, but we didn’t get any mailboxes, notably no INBOX.", v23, 0x15u);
      sub_1000197E0(v37);
    }

    else
    {
      sub_10009A1C8(v16, type metadata accessor for Task.Logger);

      sub_10009A1C8(v20, type metadata accessor for Task.Logger);
    }
  }

  return sub_100010880(a6, a2, a3, a4, a5);
}

uint64_t sub_100097170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 88);
  if (v9)
  {
    v11 = *(v4 + 96);
    v10 = *(v4 + 104);
    sub_100099D88(*(v4 + 88));
    if ((sub_10001DCC0(0, a2, a4) & 1) == 0)
    {
      v14 = swift_allocObject();
      result = 0;
      v14[2] = v9;
      v14[3] = v11;
      v14[4] = v10;
      return result;
    }
  }

  if ((sub_100018FF4(0, a1, a2, a3) & 1) != 0 && (v9 || *(v4 + 80)) && (sub_10001DCC0(1, a2, a4) & 1) == 0)
  {
    *(swift_allocObject() + 16) = *v4;

    return 1;
  }

  else if ((sub_10009A61C(1, a1, a2, a4, sub_10001DCA8) & 1) != 0 && (sub_10001DCC0(2, a2, a4) & 1) == 0 && (v12 = *(v4 + 8), *(v12 + 16)))
  {
    *(swift_allocObject() + 16) = v12;

    return 2;
  }

  else
  {
    return 3;
  }
}

void sub_100097318(NSObject *a1, uint64_t a2)
{
  v3 = v2;
  v230 = 0;
  v243 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(v243[-1].isa + 8);
  __chkstk_darwin(v243);
  v242 = (&v227 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v247 = type metadata accessor for State.Logger();
  v8 = *(*(v247 - 8) + 64);
  __chkstk_darwin(v247);
  v248 = &v227 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for Task.Logger(0);
  v10 = *(*(v246 - 8) + 64);
  __chkstk_darwin(v246);
  v12 = &v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v236 = &v227 - v14;
  __chkstk_darwin(v15);
  *&v233 = &v227 - v16;
  __chkstk_darwin(v17);
  v234 = &v227 - v18;
  __chkstk_darwin(v19);
  v241 = &v227 - v20;
  __chkstk_darwin(v21);
  v245 = &v227 - v22;
  __chkstk_darwin(v23);
  v231 = &v227 - v24;
  __chkstk_darwin(v25);
  v232 = (&v227 - v26);
  __chkstk_darwin(v27);
  v239 = (&v227 - v28);
  __chkstk_darwin(v29);
  v240 = (&v227 - v30);
  __chkstk_darwin(v31);
  v33 = &v227 - v32;
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  v37 = &v227 - v36;
  __chkstk_darwin(v38);
  isa = a1[15].isa;
  v244 = a2;
  v237 = v12;
  v235 = a1;
  if (isa)
  {
    v43 = &v227 - v41;
    v44 = a1;
    v45 = *(isa + 16);
    __chkstk_darwin(v39);
    *&v238 = v46;
    *(&v227 - 2) = v46;
    v47 = v230;
    v48 = sub_100099C08(isa, sub_100098EF8);

    v44[15].isa = v48;
    v49 = v45 - *(v48 + 16);
    v230 = v47;
    if (v49 < 1)
    {
      a2 = v244;
    }

    else
    {
      a2 = v244;
      sub_100019648(v244, v43, type metadata accessor for Task.Logger);
      sub_100019648(a2, v37, type metadata accessor for Task.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v50 = sub_1004A4A54();
      v51 = sub_1004A6034();
      if (os_log_type_enabled(v50, v51))
      {
        LODWORD(v229) = v51;
        v52 = swift_slowAlloc();
        v228 = swift_slowAlloc();
        v263[0].bytes._rawValue = v228;
        *v52 = 68158466;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v53 = v246;
        v54 = *&v37[*(v246 + 20)];
        sub_10009A1C8(v37, type metadata accessor for Task.Logger);
        *(v52 + 10) = v54;
        *(v52 + 11) = 2082;
        v55 = &v43[*(v53 + 20)];
        v56 = *(v55 + 1);
        v57 = *(v55 + 2);
        v58 = *(v55 + 3);
        v59 = *(v55 + 4);
        v60 = *(v55 + 10);
        sub_100018BD0(*v55, v56, v57, v58);
        sub_10009A1C8(v43, type metadata accessor for Task.Logger);
        if (v58 < 0)
        {
        }

        v61 = sub_10015BA6C(v56, v57, v263);

        *(v52 + 13) = v61;
        *(v52 + 21) = 2048;
        *(v52 + 23) = v49;
        _os_log_impl(&_mh_execute_header, v50, v229, "[%.*hhx-%{public}s] Did remove %ld mailbox(es)", v52, 0x1Fu);
        sub_1000197E0(v228);

        a2 = v244;
        v12 = v237;
      }

      else
      {
        sub_10009A1C8(v37, type metadata accessor for Task.Logger);

        sub_10009A1C8(v43, type metadata accessor for Task.Logger);
      }
    }

    v75 = v240;
    v3 = v238;
  }

  else
  {
    v62 = v40;
    sub_100019648(a2, v40, type metadata accessor for Task.Logger);
    sub_100019648(a2, v33, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v63 = sub_1004A4A54();
    v64 = sub_1004A6014();
    if (os_log_type_enabled(v63, v64))
    {
      LODWORD(v229) = v64;
      *&v238 = v3;
      v65 = swift_slowAlloc();
      v228 = swift_slowAlloc();
      v263[0].bytes._rawValue = v228;
      *v65 = 68158210;
      *(v65 + 4) = 2;
      *(v65 + 8) = 256;
      v66 = v246;
      v67 = *&v33[*(v246 + 20)];
      sub_10009A1C8(v33, type metadata accessor for Task.Logger);
      *(v65 + 10) = v67;
      *(v65 + 11) = 2082;
      v68 = v62 + *(v66 + 20);
      v69 = *(v68 + 8);
      v71 = *(v68 + 16);
      v70 = *(v68 + 24);
      v72 = *(v68 + 32);
      v73 = *(v68 + 40);
      sub_100018BD0(*v68, v69, v71, v70);
      sub_10009A1C8(v62, type metadata accessor for Task.Logger);
      if (v70 < 0)
      {
      }

      v74 = sub_10015BA6C(v69, v71, v263);

      *(v65 + 13) = v74;
      _os_log_impl(&_mh_execute_header, v63, v229, "[%.*hhx-%{public}s] Setting empty list of mailboxes.", v65, 0x15u);
      sub_1000197E0(v228);

      a2 = v244;
      v12 = v237;
      v3 = v238;
    }

    else
    {
      sub_10009A1C8(v33, type metadata accessor for Task.Logger);

      sub_10009A1C8(v62, type metadata accessor for Task.Logger);
    }

    v75 = v240;
    v76 = sub_100162334(_swiftEmptyArrayStorage);
    v235[15].isa = v76;
  }

  v77 = v239;
  v78 = v3[11];
  v240 = v3[12];
  v79 = v3[13];
  if (!v78)
  {
    v75 = v232;
    sub_100019648(a2, v232, type metadata accessor for Task.Logger);
    v100 = v231;
    sub_100019648(a2, v231, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v80 = sub_1004A4A54();
    v101 = sub_1004A6034();
    if (os_log_type_enabled(v80, v101))
    {
      LODWORD(v238) = v101;
      v239 = v80;
      v102 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      v263[0].bytes._rawValue = v229;
      *v102 = 68158210;
      *(v102 + 4) = 2;
      *(v102 + 8) = 256;
      v103 = v246;
      v104 = *(v100 + *(v246 + 20));
      sub_10009A1C8(v100, type metadata accessor for Task.Logger);
      *(v102 + 10) = v104;
      *(v102 + 11) = 2082;
      v105 = v75 + *(v103 + 20);
      v106 = *(v105 + 1);
      v108 = *(v105 + 2);
      v107 = *(v105 + 3);
      v109 = *(v105 + 4);
      v110 = *(v105 + 10);
      sub_100018BD0(*v105, v106, v108, v107);
      sub_10009A1C8(v75, type metadata accessor for Task.Logger);
      if (v107 < 0)
      {
      }

      v111 = sub_10015BA6C(v106, v108, v263);

      *(v102 + 13) = v111;
      v112 = v239;
      _os_log_impl(&_mh_execute_header, v239, v238, "[%.*hhx-%{public}s] Server isn't namespaced.", v102, 0x15u);
      sub_1000197E0(v229);

      a2 = v244;
      v12 = v237;
      goto LABEL_28;
    }

    v113 = v100;
LABEL_27:
    sub_10009A1C8(v113, type metadata accessor for Task.Logger);

    sub_10009A1C8(v75, type metadata accessor for Task.Logger);
LABEL_28:
    v99 = v240;
    goto LABEL_29;
  }

  sub_100019648(a2, v75, type metadata accessor for Task.Logger);
  sub_100019648(a2, v77, type metadata accessor for Task.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v80 = sub_1004A4A54();
  v81 = sub_1004A6034();

  if (!os_log_type_enabled(v80, v81))
  {
    v113 = v77;
    goto LABEL_27;
  }

  LODWORD(v238) = v81;
  v239 = v80;
  v82 = swift_slowAlloc();
  v232 = swift_slowAlloc();
  *&v262[0] = v232;
  *v82 = 68158979;
  *(v82 + 4) = 2;
  *(v82 + 8) = 256;
  v83 = v246;
  v84 = *(&v77->isa + *(v246 + 20));
  sub_10009A1C8(v77, type metadata accessor for Task.Logger);
  *(v82 + 10) = v84;
  *(v82 + 11) = 2082;
  v85 = v75 + *(v83 + 20);
  v86 = *(v85 + 1);
  v88 = *(v85 + 2);
  v87 = *(v85 + 3);
  v89 = *(v85 + 4);
  v90 = *(v85 + 10);
  sub_100018BD0(*v85, v86, v88, v87);
  sub_10009A1C8(v75, type metadata accessor for Task.Logger);
  if (v87 < 0)
  {
  }

  v91 = sub_10015BA6C(v86, v88, v262);

  *(v82 + 13) = v91;
  *(v82 + 21) = 2160;
  *(v82 + 23) = 0x786F626C69616DLL;
  *(v82 + 31) = 2085;

  v263[0] = MailboxName.init(_:)(v92);
  v93 = sub_1004A5824();
  v95 = sub_10015BA6C(v93, v94, v262);

  *(v82 + 33) = v95;
  *(v82 + 41) = 2080;

  v96 = v240;
  v97 = sub_10015BA6C(v240, v79, v262);

  *(v82 + 43) = v97;
  v98 = v239;
  _os_log_impl(&_mh_execute_header, v239, v238, "[%.*hhx-%{public}s] Server is namespaced: %{sensitive,mask.mailbox}s (%s)", v82, 0x33u);
  swift_arrayDestroy();

  v99 = v96;
  a2 = v244;
  v12 = v237;
LABEL_29:
  v114 = v235;
  v115 = v235[18].isa;
  v116 = v235[19].isa;
  v117 = v235[20].isa;
  v235[18].isa = v78;
  v114[19].isa = v99;
  v114[20].isa = v79;
  sub_100099D88(v78);
  sub_100099DC8(v115);
  BYTE1(v114[17].isa) = 0;
  v114[16].isa = static MonotonicTime.now()();
  LOBYTE(v114[17].isa) = 0;
  v118 = v245;
  sub_100019648(a2, v245, type metadata accessor for Task.Logger);
  v119 = *(v118 + *(v246 + 20));
  v120 = v248;
  sub_1004A4A64();
  *(v120 + *(v247 + 20)) = v119;
  sub_10009A1C8(v118, type metadata accessor for Task.Logger);
  sub_10012D6A8(v120);
  sub_10009A1C8(v120, type metadata accessor for State.Logger);
  memcpy(v263, v114, 0x108uLL);
  v121 = sub_1000CC724();
  v123 = v121[2].isa;
  if (v123)
  {
    v248 = v123 - 1;
    v124 = 32;
    *&v122 = 68160515;
    v238 = v122;
    v240 = v121;
    while (1)
    {
      v247 = v124;
      v125 = *(&v121[2].isa + v124);
      v262[0] = *(&v121->isa + v124);
      v262[1] = v125;
      v126 = *(&v121[4].isa + v124);
      v127 = *(&v121[6].isa + v124);
      v128 = *(&v121[8].isa + v124);
      LOBYTE(v262[5]) = *(&v121[10].isa + v124);
      v262[3] = v127;
      v262[4] = v128;
      v262[2] = v126;
      v129 = WORD6(v262[0]);
      v130 = *&v262[0];
      v131 = DWORD2(v262[0]);
      v132 = v241;
      sub_100019648(a2, v241, type metadata accessor for Task.Logger);
      v133 = sub_1004A4A74();
      v134 = v242;
      (*(*(v133 - 8) + 16))(v242, v132, v133);
      v135 = v132 + *(v246 + 20);
      v137 = *(v135 + 8);
      v136 = *(v135 + 16);
      v138 = *v135;

      swift_bridgeObjectRetain_n();
      sub_100099E08(v262, v261);

      sub_10009A1C8(v132, type metadata accessor for Task.Logger);
      v139 = v134 + SHIDWORD(v243[2].isa);
      *v139 = v138;
      *(v139 + 8) = v137;
      *(v139 + 16) = v136;
      LODWORD(v245) = v129;
      *(v139 + 24) = v129;
      *(v139 + 32) = v130;
      *(v139 + 40) = v131;

      sub_10009A1C8(v134, type metadata accessor for MailboxTaskLogger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_100099E08(v262, v261);
      sub_100099E08(v262, v261);
      sub_100099E08(v262, v261);
      sub_100099E08(v262, v261);
      sub_100099E08(v262, v261);
      sub_100099E08(v262, v261);
      sub_100099E08(v262, v261);
      sub_100099E08(v262, v261);
      sub_100099E08(v262, v261);
      v140 = sub_1004A4A54();
      v141 = sub_1004A6034();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v254 = v239;
        *v142 = v238;
        *(v142 + 4) = 2;
        *(v142 + 8) = 256;
        *(v142 + 10) = v138;
        *(v142 + 11) = 2082;
        v143 = sub_10015BA6C(v137, v136, &v254);

        *(v142 + 13) = v143;
        *(v142 + 21) = 1040;
        *(v142 + 23) = 2;
        *(v142 + 27) = 512;

        *(v142 + 29) = v245;

        *(v142 + 31) = 2160;
        *(v142 + 33) = 0x786F626C69616DLL;
        *(v142 + 41) = 2085;
        v261[0] = v130;
        LODWORD(v261[1]) = v131;
        v144 = sub_1004A5824();
        v146 = sub_10015BA6C(v144, v145, &v254);

        *(v142 + 43) = v146;
        *(v142 + 51) = 2048;
        sub_100099E64(v262);
        v147 = *&v262[1];
        if (BYTE8(v262[1]))
        {
          v147 = 0;
        }

        *(v142 + 53) = v147;
        sub_100099E64(v262);
        *(v142 + 61) = 1024;
        v148 = static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*&v262[2], DWORD2(v262[2]), 0, 0);
        sub_100099E64(v262);
        *(v142 + 63) = (v148 & 1) == 0;
        sub_100099E64(v262);
        *(v142 + 67) = 2048;
        sub_100099E64(v262);
        v149 = *&v262[3];
        if (BYTE8(v262[3]))
        {
          v149 = 0;
        }

        *(v142 + 69) = v149;
        sub_100099E64(v262);
        *(v142 + 77) = 1024;
        sub_100099E64(v262);
        v150 = HIDWORD(v262[3]);
        if (LOBYTE(v262[4]))
        {
          v150 = 0;
        }

        *(v142 + 79) = v150;
        sub_100099E64(v262);
        *(v142 + 83) = 2048;
        sub_100099E64(v262);
        v151 = *(&v262[4] + 1);
        if (LOBYTE(v262[5]))
        {
          v151 = 0;
        }

        *(v142 + 85) = v151;
        sub_100099E64(v262);
        _os_log_impl(&_mh_execute_header, v140, v141, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] local {highest-mod-seq: %llu, modifications: %{BOOL}d}, remote {count: %ld, next UID: %u, highest-mod-seq: %llu}", v142, 0x5Du);
        swift_arrayDestroy();

        a2 = v244;
      }

      else
      {
        sub_100099E64(v262);
        sub_100099E64(v262);
        sub_100099E64(v262);
        sub_100099E64(v262);
        sub_100099E64(v262);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        sub_100099E64(v262);
        sub_100099E64(v262);
        sub_100099E64(v262);
        sub_100099E64(v262);
        sub_100099E64(v262);
      }

      v121 = v240;
      if (!v248)
      {
        break;
      }

      --v248;
      v124 = v247 + 88;
    }

    v12 = v237;
  }

  else
  {
  }

  v152 = v235;
  memcpy(v262, v235, 0x108uLL);
  v153 = sub_1000CBCD0();
  v154 = v153[2];
  memcpy(v261, v152, sizeof(v261));
  v155 = LOBYTE(v261[3]);
  v156 = BYTE1(v261[3]);
  v157 = v261[4];
  v158 = v261[7];

  v159 = sub_100166D28();
  v160 = v159;
  if (v157 == 3 || v157 == 2)
  {

    LODWORD(v248) = 1;
    v161 = v234;
LABEL_49:
    v162 = v233;
    goto LABEL_50;
  }

  v224 = sub_100166E18(v159);
  if (v156)
  {
    goto LABEL_95;
  }

  if (v157 == 1)
  {
    if (!v155)
    {
LABEL_95:
      v225 = v224 ^ 1;
      goto LABEL_96;
    }

    if (v155 == 1)
    {
      v225 = 1;
LABEL_96:
      LODWORD(v248) = v225;
      goto LABEL_97;
    }
  }

  else if (v157 || (v155 - 1) >= 2)
  {
    goto LABEL_95;
  }

  LODWORD(v248) = 0;
LABEL_97:
  v161 = v234;
  sub_100013AD0(&off_100598658, v158);
  sub_100166E18(v160);
  v226 = sub_100013CF4(v158);

  if (v226)
  {
    goto LABEL_49;
  }

  v162 = v233;
  if (v156)
  {
    sub_100166E18(v160);
  }

LABEL_50:

  sub_100019648(a2, v161, type metadata accessor for Task.Logger);
  sub_100019648(a2, v162, type metadata accessor for Task.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v163 = sub_1004A4A54();
  v164 = sub_1004A6034();
  if (os_log_type_enabled(v163, v164))
  {
    v245 = v154;
    v247 = v153;
    v165 = v162;
    v166 = swift_slowAlloc();
    v243 = swift_slowAlloc();
    v254 = v243;
    *v166 = 68158722;
    *(v166 + 4) = 2;
    *(v166 + 8) = 256;
    v167 = v246;
    v168 = *(v165 + *(v246 + 20));
    sub_10009A1C8(v165, type metadata accessor for Task.Logger);
    *(v166 + 10) = v168;
    *(v166 + 11) = 2082;
    v169 = v161 + *(v167 + 20);
    v170 = *(v169 + 8);
    v172 = *(v169 + 16);
    v171 = *(v169 + 24);
    v173 = *(v169 + 32);
    v174 = *(v169 + 40);
    sub_100018BD0(*v169, v170, v172, v171);
    sub_10009A1C8(v161, type metadata accessor for Task.Logger);
    if (v171 < 0)
    {
    }

    v175 = sub_10015BA6C(v170, v172, &v254);

    *(v166 + 13) = v175;
    *(v166 + 21) = 2048;
    *(v166 + 23) = v245;
    *(v166 + 31) = 2080;
    if (v248)
    {
      v176 = 0xD000000000000014;
    }

    else
    {
      v176 = 0x746C7561666564;
    }

    if (v248)
    {
      v177 = 0x80000001004AA170;
    }

    else
    {
      v177 = 0xE700000000000000;
    }

    v178 = sub_10015BA6C(v176, v177, &v254);

    *(v166 + 33) = v178;
    _os_log_impl(&_mh_execute_header, v163, v164, "[%.*hhx-%{public}s] There are (still) %ld mailbox(es) to sync. Sync behavior: %s.", v166, 0x29u);
    swift_arrayDestroy();

    v12 = v237;
    v153 = v247;
  }

  else
  {
    sub_10009A1C8(v162, type metadata accessor for Task.Logger);

    sub_10009A1C8(v161, type metadata accessor for Task.Logger);
  }

  sub_100099EB8(4, v153, &v254);

  v179 = v254;
  v180 = v256;
  v181 = v257;
  v245 = v258;
  v182 = v259;
  v183 = v260;
  v253 = v256;
  v252 = v259;
  v231 = v255;
  sub_100099FD8(v254, v255, v256);
  v185 = v236;
  if ((v180 & 1) == 0 && (v182 & 1) == 0)
  {
    v186 = v231;
    if (v231 == v245)
    {
      v187 = v231;
      if (v179 == v181)
      {
LABEL_86:
        v223 = v252;
        sub_100020944(v179, v186, v253);
        sub_100020944(v181, v245, v223);

        sub_100020944(v181, v187, 0);
        return;
      }

      v188 = 0;
      v243 = (v183 + 56);
      v232 = (v183 + 64);
      *&v184 = 68158979;
      v233 = v184;
      v189 = v179;
      v234 = v183;
      v235 = v181;
      v241 = v245;
      v242 = v179;
      while (v189 >= v179)
      {
        if (v189 >= v181)
        {
          goto LABEL_103;
        }

        if (v189 < 0)
        {
          goto LABEL_104;
        }

        v190 = 1 << v183[32];
        if (v189 >= v190)
        {
          goto LABEL_104;
        }

        v191 = v189 >> 6;
        v192 = v243[v189 >> 6].isa;
        if (((v192 >> v189) & 1) == 0)
        {
          goto LABEL_105;
        }

        if (*(v183 + 9) != v245)
        {
          goto LABEL_106;
        }

        v193 = v192 & (-2 << (v189 & 0x3F));
        if (v193)
        {
          v190 = __clz(__rbit64(v193)) | v189 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v194 = v191 << 6;
          v195 = v191 + 1;
          v196 = &v232[v191];
          while (v195 < (v190 + 63) >> 6)
          {
            v198 = *v196++;
            v197 = v198;
            v194 += 64;
            ++v195;
            if (v198)
            {
              v190 = __clz(__rbit64(v197)) + v194;
              break;
            }
          }
        }

        v199 = __OFADD__(v188, 1);
        v200 = v188 + 1;
        if (v199)
        {
          goto LABEL_107;
        }

        v248 = v200;
        v201 = *(v183 + 6) + 16 * v189;
        v202 = *v201;
        v203 = *(v201 + 8);
        v204 = v244;
        sub_100019648(v244, v185, type metadata accessor for Task.Logger);
        sub_100019648(v204, v12, type metadata accessor for Task.Logger);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v205 = sub_1004A4A54();
        v206 = v12;
        v207 = sub_1004A6034();

        LODWORD(v247) = v207;
        if (os_log_type_enabled(v205, v207))
        {
          LODWORD(v239) = v203;
          v240 = v205;
          v208 = v185;
          v209 = swift_slowAlloc();
          *&v238 = swift_slowAlloc();
          v251 = v238;
          *v209 = v233;
          *(v209 + 4) = 2;
          *(v209 + 8) = 256;
          v210 = v246;
          v211 = *(v206 + *(v246 + 20));
          sub_10009A1C8(v206, type metadata accessor for Task.Logger);
          *(v209 + 10) = v211;
          *(v209 + 11) = 2082;
          v212 = v208 + *(v210 + 20);
          v213 = *(v212 + 8);
          v215 = *(v212 + 16);
          v214 = *(v212 + 24);
          v216 = *(v212 + 32);
          v217 = *(v212 + 40);
          sub_100018BD0(*v212, v213, v215, v214);
          sub_10009A1C8(v208, type metadata accessor for Task.Logger);
          if (v214 < 0)
          {
          }

          v218 = sub_10015BA6C(v213, v215, &v251);

          *(v209 + 13) = v218;
          *(v209 + 21) = 2048;
          v188 = v248;
          *(v209 + 23) = v248;
          *(v209 + 31) = 2160;
          *(v209 + 33) = 0x786F626C69616DLL;
          *(v209 + 41) = 2085;
          v249 = v202;
          v250 = v239;
          v219 = sub_1004A5824();
          v221 = sub_10015BA6C(v219, v220, &v251);

          *(v209 + 43) = v221;
          v222 = v240;
          _os_log_impl(&_mh_execute_header, v240, v247, "[%.*hhx-%{public}s] [%ld] mailbox to sync: '%{sensitive,mask.mailbox}s'", v209, 0x33u);
          swift_arrayDestroy();

          v185 = v236;
          v12 = v237;
          v183 = v234;
          v181 = v235;
        }

        else
        {
          sub_10009A1C8(v206, type metadata accessor for Task.Logger);

          sub_10009A1C8(v185, type metadata accessor for Task.Logger);
          v188 = v248;
          v12 = v206;
        }

        v189 = v190;
        v187 = v241;
        v179 = v242;
        if (v190 == v181)
        {
          v186 = v231;
          goto LABEL_86;
        }
      }
    }

    else
    {
      __break(1u);
    }

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
  }

  __break(1u);
}

uint64_t sub_100098D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_100097170(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t ServerID.vendor.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

unint64_t sub_100098DD4()
{
  result = qword_1005CF1B8;
  if (!qword_1005CF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF1B8);
  }

  return result;
}

unint64_t sub_100098E28()
{
  result = qword_1005CF1C0;
  if (!qword_1005CF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF1C0);
  }

  return result;
}

unint64_t sub_100098E7C(uint64_t a1)
{
  result = sub_100098EA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100098EA4()
{
  result = qword_1005CF240;
  if (!qword_1005CF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF240);
  }

  return result;
}

uint64_t sub_100098EF8(uint64_t a1, unsigned int a2)
{
  if (*(**(v2 + 16) + 16))
  {
    sub_100063B5C(a1, a2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void *sub_100098F34(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _OWORD *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100099A64(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100098FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = -1 << *(a2 + 32);
  result = sub_1004A6554();
  v8 = 1 << *(a2 + 32);
  if (v8 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a2 + 36);
  v10 = *(a1 + 8);
  if (v9 != v10)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = *(a1 + 32);
  if (v9 != v11)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 24);
  if (v8 < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

unint64_t sub_1000990A8(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_100099FD8(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009920C(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019648(a1, v6, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 10:
      v40 = *v6;
      v41 = *(v6 + 1);
      v42 = *(v6 + 2);
      if (*(*v6 + 16))
      {
        v44 = *(v40 + 64);
        v43 = *(v40 + 72);
        v45 = *(v40 + 80);
        if (v44)
        {
          v57[1] = *(v40 + 88);
          v59 = v41;
          v58 = *(v40 + 56);
          v47 = *(v40 + 32);
          v46 = *(v40 + 40);
          v48 = *(v40 + 48) | (*(v40 + 54) << 48) | (*(v40 + 52) << 32);
          swift_retain_n();
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          v49 = MailboxName.init(_:)(v47, v46, v48);
          v50._countAndFlagsBits = v58;
          v50._object = v44;
          v69 = Namespace.init(prefix:separator:)(v49, v50);
          rawValue = v69.prefix._rawValue;
          countAndFlagsBits = v69.separator._countAndFlagsBits;
          object = v69.separator._object;

          swift_bridgeObjectRelease_n();

LABEL_23:
          v55 = *(v1 + 96);
          v56 = *(v1 + 104);
          result = sub_100099DC8(*(v1 + 88));
          *(v1 + 88) = rawValue;
          *(v1 + 96) = countAndFlagsBits;
          *(v1 + 104) = object;
          return result;
        }

        v54 = *(v40 + 72);
      }

      rawValue = 0;
      countAndFlagsBits = 0;
      object = 0;
      goto LABEL_23;
    case 9:
      v23 = *v6;
      v24 = *(v6 + 2);
      v25 = *(v6 + 6);
      v65 = *(v6 + 5);
      v66 = v25;
      v26 = *(v6 + 8);
      v67 = *(v6 + 7);
      v68 = v26;
      v27 = *(v6 + 2);
      v61 = *(v6 + 1);
      v62 = v27;
      v28 = *(v6 + 4);
      v63 = *(v6 + 3);
      v64 = v28;
      v29 = sub_10010AC1C(v60, v23, v24);
      v31 = v30;
      v32 = *v30;
      sub_10009A0FC(&v61);
      if (v32)
      {
        if (BYTE8(v61) & 1) != 0 || (v63 & 1) != 0 || (BYTE8(v63))
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 1;
        }

        else
        {
          v39 = 0;
          v33 = v61;
          v35 = v64;
          v36 = BYTE8(v64);
          v37 = v66;
          v38 = BYTE8(v66);
          v34 = HIDWORD(v62) | (DWORD1(v63) << 32);
        }

        v31[3] = v33;
        v31[4] = v34;
        v31[5] = v35;
        v31[6] = v36;
        v31[7] = v37;
        *(v31 + 64) = v38;
        *(v31 + 65) = v39;
        (v29)(v60, 0);
      }

      else
      {
        (v29)(v60, 0);
      }

    case 7:
      v9 = *v6;
      v8 = *(v6 + 1);
      v10 = *(v6 + 4);
      v11 = v6[20];
      v12 = *(v6 + 3);
      v13 = *(v6 + 4);
      v14 = *(v6 + 5);
      if (*(v1 + 80) == 1 && !*(v1 + 88))
      {
        v15 = sub_10014A364(v11);
        if (v16)
        {
          v17 = v16;
          v18._countAndFlagsBits = v15;
          v18._object = v17;
          *(v1 + 88) = Namespace.init(prefix:separator:)(_swiftEmptyArrayStorage, v18);
        }
      }

      swift_bridgeObjectRetain_n();

      RemoteMailbox.init(attributes:path:)(v19, v8, v10 | (v11 << 32), &v61);
      v20 = *v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60[0] = *v1;
      sub_10001CA34(&v61, v8, v10, isUniquelyReferenced_nonNull_native);

      swift_bridgeObjectRelease_n();

      *v1 = v60[0];
      break;
    default:
      return sub_10009A1C8(v6, type metadata accessor for UntaggedResponse);
  }

  return result;
}

unint64_t sub_10009965C(unint64_t result)
{
  if (*(v1 + 112) != 2 || ((result >> 59) & 0x1E | (result >> 2) & 1) != 4)
  {
    return result;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);

  v6 = 0;
  v7 = v4 - 1;
  v8 = 32;
  v52 = v3;
  v53 = v4 - 1;
  do
  {
    v9 = *(v3 + v8 + 32);
    v10 = *(v3 + v8 + 48);
    v11 = *(v3 + v8 + 64);
    *&v67[9] = *(v3 + v8 + 73);
    *v67 = v11;
    v12 = *(v3 + v8 + 16);
    v63 = *(v3 + v8);
    v64 = v12;
    v65 = v9;
    v66 = v10;
    v13 = *&v67[16];
    v14 = *(&v11 + 1);
    sub_100099FE4(&v63, &v58);
    if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v14, v13, 0, 0) & 1) == 0 || v67[24] != 1)
    {
      goto LABEL_28;
    }

    v15 = *v54;
    if (!*(*v54 + 16) || (v16 = sub_100063B5C(v64, DWORD2(v64)), (v17 & 1) == 0))
    {
      v56 = 0;
      v55 = 0;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      v25 = 0;
      v23 = 0;
      v24 = 0;
      v22 = 0;
LABEL_16:
      sub_10009A040(&v63);
      *&v58 = 0;
      *(&v58 + 1) = v22;
      *&v59 = v24;
      *(&v59 + 1) = v23;
      *&v60 = v25;
      *(&v60 + 1) = v26;
      *&v61 = v28;
      *(&v61 + 1) = v27;
      LOBYTE(v62) = v55;
      HIBYTE(v62) = v56;
      sub_10009A094(&v58);
LABEL_17:
      v3 = v52;
      v7 = v53;
      if (v53 == v6)
      {
      }

      goto LABEL_29;
    }

    v18 = *(v15 + 56) + 72 * v16;
    v58 = *v18;
    v19 = *(v18 + 64);
    v21 = *(v18 + 32);
    v20 = *(v18 + 48);
    v59 = *(v18 + 16);
    v60 = v21;
    v61 = v20;
    v62 = v19;
    v22 = *(&v58 + 1);
    v49 = v58;
    v23 = *(&v59 + 1);
    v24 = v59;
    v26 = *(&v21 + 1);
    v25 = v21;
    v27 = *(&v20 + 1);
    v28 = v20;
    v55 = v19;
    v56 = HIBYTE(v19);
    sub_100063BD4(&v58, &v57);
    if (!v49)
    {
      goto LABEL_16;
    }

    v58 = __PAIR128__(v22, v49);
    v59 = __PAIR128__(v23, v24);
    v60 = __PAIR128__(v26, v25);
    v61 = __PAIR128__(v27, v28);
    v62 = __PAIR16__(v56, v55);
    sub_10009A094(&v58);
    if (v56)
    {
      sub_10009A040(&v63);
      goto LABEL_17;
    }

    v29 = v28;
    v3 = v52;
    v7 = v53;
    if (v55 & 1) != 0 || (v67[0])
    {
      goto LABEL_28;
    }

    if (((*(&v66 + 1) | v27) & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    if (v27 != *(&v66 + 1))
    {
LABEL_28:
      sub_10009A040(&v63);
      if (v7 == v6)
      {
      }

      goto LABEL_29;
    }

    v30 = v63;
    v31 = v54[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v54[1];
    v32 = v57;
    v33 = sub_100063C84(v30, *(&v30 + 1));
    v35 = v32[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_40;
    }

    if (v32[3] >= v38)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v42 = v57;
        if ((v34 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v51 = v33;
        v44 = v34;
        sub_10013A4A0();
        v45 = v44;
        v33 = v51;
        v42 = v57;
        if ((v45 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v39 = v34;
      sub_1000C3328(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_100063C84(v30, *(&v30 + 1));
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_42;
      }

      v41 = v39;
      v42 = v57;
      if ((v41 & 1) == 0)
      {
LABEL_35:
        v42[(v33 >> 6) + 8] |= 1 << v33;
        *(v42[6] + 16 * v33) = v30;
        v46 = v42[7] + 24 * v33;
        *v46 = 0;
        *(v46 + 4) = 1;
        *(v46 + 8) = v26;
        *(v46 + 16) = v29 & 1;

        sub_10009A040(&v63);
        v47 = v42[2];
        v37 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v37)
        {
          goto LABEL_41;
        }

        v42[2] = v48;
        goto LABEL_37;
      }
    }

    v43 = v42[7] + 24 * v33;
    *v43 = 0;
    *(v43 + 4) = 1;
    *(v43 + 8) = v26;
    *(v43 + 16) = v29 & 1;
    sub_10009A040(&v63);
LABEL_37:
    v54[1] = v42;
    if (v53 == v6)
    {
    }

LABEL_29:
    ++v6;
    v8 += 96;
  }

  while (v6 < *(v3 + 16));
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_100099A64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _OWORD *))
{
  v29 = a4;
  v24 = result;
  v25 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 48) + 16 * v14;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(a3 + 56) + 72 * v14;
    v27[0] = *v18;
    v20 = *(v18 + 32);
    v19 = *(v18 + 48);
    v21 = *(v18 + 16);
    v28 = *(v18 + 64);
    v27[2] = v20;
    v27[3] = v19;
    v27[1] = v21;

    sub_100063BD4(v27, v26);
    LOBYTE(v17) = v29(v16, v17, v27);
    sub_100063C30(v27);

    if (v17)
    {
      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_1000B19E0(v24, a2, v25, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1000B19E0(v24, a2, v25, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100099C08(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _OWORD *))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_100099A64(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_100098F34(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_100099D88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100099DC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100099EB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = -1 << *(a2 + 32);
    v7 = sub_1004A6554();
    v8 = *(a2 + 36);
    v9 = -1 << *(a2 + 32);
    v10 = sub_1000990A8(v7, v8, 0, v4, -v9, *(a2 + 36), 0, a2);
    v12 = v11;
    v14 = v13;
    v15 = v13;
    result = sub_1004A6554();
    if (v15 == 255)
    {
      v16 = -v9;
    }

    else
    {
      v16 = v10;
    }

    if (v15 == 255)
    {
      v17 = v8;
    }

    else
    {
      v17 = v12;
    }

    if (v15 != 255 && (v14 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= result)
      {
        v22[0] = result;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        result = sub_100098FC4(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100099FD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10009A094(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CF248, &qword_1004D22C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009A150()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A188()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009A1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009A290(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v35 = a3;
  v42 = type metadata accessor for TaskHistory.Running(0);
  v34 = *(v42 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v42);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v41 = &v33 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  result = sub_10001F060(a1, a2 & 1, a5);
  v38 = *(result + 16);
  if (!v38)
  {
LABEL_19:
    v32 = 0;
    goto LABEL_20;
  }

  v21 = 0;
  v36 = result + 32;
  v39 = result;
  while (1)
  {
    if (v21 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v22 = *(v40 + 16);
    if (v22)
    {
      break;
    }

LABEL_3:
    ++v21;
    result = v39;
    if (v21 == v38)
    {
      goto LABEL_19;
    }
  }

  v23 = *(v36 + 4 * v21);
  v24 = v40 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v25 = *(v37 + 72);
  while (1)
  {
    sub_100019648(v24, v19, type metadata accessor for TaskHistory.Previous);
    sub_1000196B0(v19, v16, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_10009A1C8(v16, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v24 += v25;
    if (!--v22)
    {
      goto LABEL_3;
    }
  }

  v26 = *(v16 + 2);
  sub_100020EDC(*v16);
  if (v26 != v23)
  {
    goto LABEL_8;
  }

  v27 = *(v35 + 16);
  if (v27)
  {
    v28 = v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v29 = *(v34 + 72);
    do
    {
      v30 = v41;
      sub_100019648(v28, v41, type metadata accessor for TaskHistory.Running);
      sub_1000196B0(v30, v10, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *(v10 + 1);
        sub_100020EDC(*(v10 + 1));
        if (v31 == v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10009A1C8(v10, type metadata accessor for TaskHistory.Running);
      }

      v28 += v29;
      --v27;
    }

    while (v27);
  }

  v32 = 1;
LABEL_20:

  return v32;
}

uint64_t sub_10009A61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, __n128))
{
  v41 = a3;
  v36 = a2;
  v43 = type metadata accessor for TaskHistory.Running(0);
  v35 = *(v43 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v43);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v42 = &v34 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v38 = *(v13 - 8);
  v14 = *(v38 + 64);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v34 - v19;
  result = a5(a1, a4, v18);
  v39 = *(result + 16);
  if (!v39)
  {
LABEL_19:
    v33 = 0;
    goto LABEL_20;
  }

  v22 = 0;
  v37 = result + 32;
  v40 = result;
  while (1)
  {
    if (v22 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v23 = *(v41 + 16);
    if (v23)
    {
      break;
    }

LABEL_3:
    ++v22;
    result = v40;
    if (v22 == v39)
    {
      goto LABEL_19;
    }
  }

  v24 = *(v37 + 4 * v22);
  v25 = v41 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v26 = *(v38 + 72);
  while (1)
  {
    sub_100019648(v25, v20, type metadata accessor for TaskHistory.Previous);
    sub_1000196B0(v20, v16, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_10009A1C8(v16, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v25 += v26;
    if (!--v23)
    {
      goto LABEL_3;
    }
  }

  v27 = *(v16 + 2);
  sub_100020EDC(*v16);
  if (v27 != v24)
  {
    goto LABEL_8;
  }

  v28 = *(v36 + 16);
  if (v28)
  {
    v29 = v36 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v30 = *(v35 + 72);
    do
    {
      v31 = v42;
      sub_100019648(v29, v42, type metadata accessor for TaskHistory.Running);
      sub_1000196B0(v31, v10, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = *(v10 + 1);
        sub_100020EDC(*(v10 + 1));
        if (v32 == v24)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10009A1C8(v10, type metadata accessor for TaskHistory.Running);
      }

      v29 += v30;
      --v28;
    }

    while (v28);
  }

  v33 = 1;
LABEL_20:

  return v33;
}

void *sub_10009A990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v35 = a3;
  v42 = type metadata accessor for TaskHistory.Running(0);
  v34 = *(v42 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v42);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v41 = &v33 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  result = sub_10001FE00(a1, a2, a5);
  v38 = result[2];
  if (!v38)
  {
LABEL_19:
    v32 = 0;
    goto LABEL_20;
  }

  v21 = 0;
  v36 = result + 4;
  v39 = result;
  while (1)
  {
    if (v21 >= result[2])
    {
      __break(1u);
      return result;
    }

    v22 = *(v40 + 16);
    if (v22)
    {
      break;
    }

LABEL_3:
    ++v21;
    result = v39;
    if (v21 == v38)
    {
      goto LABEL_19;
    }
  }

  v23 = *(v36 + v21);
  v24 = v40 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v25 = *(v37 + 72);
  while (1)
  {
    sub_100019648(v24, v19, type metadata accessor for TaskHistory.Previous);
    sub_1000196B0(v19, v16, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_10009A1C8(v16, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v24 += v25;
    if (!--v22)
    {
      goto LABEL_3;
    }
  }

  v26 = *(v16 + 2);
  sub_100020EDC(*v16);
  if (v26 != v23)
  {
    goto LABEL_8;
  }

  v27 = *(v35 + 16);
  if (v27)
  {
    v28 = v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v29 = *(v34 + 72);
    do
    {
      v30 = v41;
      sub_100019648(v28, v41, type metadata accessor for TaskHistory.Running);
      sub_1000196B0(v30, v10, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *(v10 + 1);
        sub_100020EDC(*(v10 + 1));
        if (v31 == v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10009A1C8(v10, type metadata accessor for TaskHistory.Running);
      }

      v28 += v29;
      --v27;
    }

    while (v27);
  }

  v32 = 1;
LABEL_20:

  return v32;
}

uint64_t sub_10009AD04(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v33 = a2;
  v40 = type metadata accessor for TaskHistory.Running(0);
  v32 = *(v40 - 8);
  v6 = *(v32 + 64);
  __chkstk_darwin(v40);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v31 - v10;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  result = sub_1000203BC(a1 & 1, a4);
  v36 = *(result + 16);
  if (!v36)
  {
LABEL_19:
    v30 = 0;
    goto LABEL_20;
  }

  v19 = 0;
  v34 = result + 32;
  v37 = result;
  while (1)
  {
    if (v19 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v20 = *(v38 + 16);
    if (v20)
    {
      break;
    }

LABEL_3:
    ++v19;
    result = v37;
    if (v19 == v36)
    {
      goto LABEL_19;
    }
  }

  v21 = *(v34 + 4 * v19);
  v22 = v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v23 = *(v35 + 72);
  while (1)
  {
    sub_100019648(v22, v17, type metadata accessor for TaskHistory.Previous);
    sub_1000196B0(v17, v14, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_10009A1C8(v14, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v22 += v23;
    if (!--v20)
    {
      goto LABEL_3;
    }
  }

  v24 = *(v14 + 2);
  sub_100020EDC(*v14);
  if (v24 != v21)
  {
    goto LABEL_8;
  }

  v25 = *(v33 + 16);
  if (v25)
  {
    v26 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v27 = *(v32 + 72);
    do
    {
      v28 = v39;
      sub_100019648(v26, v39, type metadata accessor for TaskHistory.Running);
      sub_1000196B0(v28, v8, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = *(v8 + 1);
        sub_100020EDC(*(v8 + 1));
        if (v29 == v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10009A1C8(v8, type metadata accessor for TaskHistory.Running);
      }

      v26 += v27;
      --v25;
    }

    while (v25);
  }

  v30 = 1;
LABEL_20:

  return v30;
}

__n128 sub_10009B0A4(uint64_t a1, __int128 *a2)
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
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_10009B0D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_10009B120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009B19C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + (__clz(__rbit64(v9)) | (v13 << 6)));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10009B290(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9))));
      v15 = *v14;
      LODWORD(v14) = *(v14 + 8);
      v16 = v15;
      v17 = v14;

      a1(&v16);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_10009B3D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return sub_10009D400(v13, v14);
}

uint64_t sub_10009B464(Swift::Int a1)
{
  v3 = type metadata accessor for MailboxSyncState();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = *(v1 + 96);
  if (!v10)
  {
    return sub_100088204(&v16, a1);
  }

  v11 = v10 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v12 = _s13SelectedStateV7WrappedVMa(0);
  sub_10009DEEC(v11 + *(v12 + 20), v7, type metadata accessor for MailboxSyncState);
  sub_10009DAE8(v7, v9, type metadata accessor for MailboxSyncState);
  if (*(v9[19] + 16) != 15 || *(v9[20] + 16))
  {
    sub_10009DF54(v9, type metadata accessor for MailboxSyncState);
    return sub_100088204(&v16, a1);
  }

  v14 = *(v9[21] + 16);
  result = sub_10009DF54(v9, type metadata accessor for MailboxSyncState);
  if (v14)
  {
    return sub_100088204(&v16, a1);
  }

  return result;
}

_DWORD *sub_10009B638@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result & 0xFFFFFF;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int sub_10009B658()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10009B6CC()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  return sub_1004A6F14();
}

uint64_t sub_10009B724(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v61 = a3;
  v62 = a4;
  LODWORD(v66) = a2;
  v60 = _s12LocalMailboxV6LoggerVMa();
  v6 = *(*(v60 - 8) + 64);
  v7 = __chkstk_darwin(v60);
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v63 = &v59 - v10;
  __chkstk_darwin(v9);
  v65 = &v59 - v11;
  v12 = type metadata accessor for PendingPersistenceUpdates();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s13SelectedStateV7WrappedVMa(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for MailboxSyncState();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v4 + 96);
  v76 = v24;
  v25 = *(a1 + 32);
  v78 = *(a1 + 16);
  v79 = v25;
  v80[0] = *(a1 + 48);
  *(v80 + 11) = *(a1 + 59);
  v77 = *a1;
  v26 = *a1;
  if (*a1)
  {
    v71 = *a1;
    v72 = *(a1 + 8);
    v73 = *(a1 + 24);
    v74 = *(a1 + 40);
    *v75 = *(a1 + 56);
    *&v75[15] = *(a1 + 71);
    v27 = v4;
    if (v72 | (v72 << 32)) == (*(v4 + 24) | (*(v4 + 24) << 32)) && (sub_1000FFC98(v26, *(v4 + 16)))
    {
      v28 = v4;
      sub_10000E268(a1, v67, &qword_1005CF260, &qword_1004D2420);
      sub_10000E268(a1, v67, &qword_1005CF260, &qword_1004D2420);

      sub_1000D1464(&v71, v61, v23);
      sub_100025F40(&v76, &qword_1005CF258, &qword_1004D2418);
      v29 = *(v4 + 84);
      v30 = *(v4 + 88);
      *v19 = v66;
      sub_10009DAE8(v23, v19 + *(v16 + 20), type metadata accessor for MailboxSyncState);
      v31 = v19 + *(v16 + 24);
      *v31 = v29;
      v31[4] = v30;
      v32 = _s13SelectedStateV8_StorageCMa(0);
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      v35 = swift_allocObject();
      sub_10009DAE8(v19, v35 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

      *(v28 + 96) = v35;
      return result;
    }

    sub_10000E268(a1, v67, &qword_1005CF260, &qword_1004D2420);

    if (!v24)
    {
      return sub_100025F40(&v76, &qword_1005CF258, &qword_1004D2418);
    }
  }

  else
  {

    v27 = v4;
    if (!v24)
    {
      return sub_100025F40(&v76, &qword_1005CF258, &qword_1004D2418);
    }
  }

  v37 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  if (*(v24 + v37) != v66)
  {
    return sub_100025F40(&v76, &qword_1005CF258, &qword_1004D2418);
  }

  v38 = v24 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  sub_10009DEEC(v38 + *(v16 + 20) + *(v20 + 52), v15, type metadata accessor for PendingPersistenceUpdates);
  v68 = _swiftEmptySetSingleton;
  if (*v15 == 1)
  {
    swift_retain_n();
    sub_100088568(v70, 6);
  }

  else
  {
    swift_retain_n();
  }

  if (v15[1] == 1)
  {
    sub_100088568(v70, 7);
  }

  if (v15[2] == 1)
  {
    sub_100088568(v70, 8);
  }

  v39 = v68;
  sub_10009DF54(v15, type metadata accessor for PendingPersistenceUpdates);
  v40 = v39[2];

  if (v40)
  {
    v41 = v62;
    v42 = v65;
    sub_10009DEEC(v62, v65, _s12LocalMailboxV6LoggerVMa);
    v43 = v63;
    sub_10009DEEC(v41, v63, _s12LocalMailboxV6LoggerVMa);
    v44 = v64;
    sub_10009DEEC(v41, v64, _s12LocalMailboxV6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v45 = sub_1004A4A54();
    v46 = sub_1004A5FF4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v70[0] = v62;
      *v47 = 68158979;
      LODWORD(v61) = v46;
      v48 = v44;
      v49 = v43;
      v66 = v27;
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      v50 = v60;
      v51 = *(v43 + *(v60 + 20));
      sub_10009DF54(v49, _s12LocalMailboxV6LoggerVMa);
      *(v47 + 10) = v51;
      *(v47 + 11) = 1040;
      *(v47 + 13) = 2;
      *(v47 + 17) = 512;
      v52 = *(v48 + *(v50 + 20) + 2);
      sub_10009DF54(v48, _s12LocalMailboxV6LoggerVMa);
      *(v47 + 19) = v52;
      *(v47 + 21) = 2160;
      *(v47 + 23) = 0x786F626C69616DLL;
      *(v47 + 31) = 2085;
      v53 = v42 + *(v50 + 20);
      v54 = *(v53 + 8);
      v55 = *(v53 + 16);

      sub_10009DF54(v42, _s12LocalMailboxV6LoggerVMa);
      v68 = v54;
      v69 = v55;
      v56 = sub_1004A5824();
      v58 = sub_10015BA6C(v56, v57, v70);

      *(v47 + 33) = v58;
      v27 = v66;
      _os_log_impl(&_mh_execute_header, v45, v61, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Mailbox has pending updates while being deselected.", v47, 0x29u);
      sub_1000197E0(v62);
    }

    else
    {
      sub_10009DF54(v44, _s12LocalMailboxV6LoggerVMa);
      sub_10009DF54(v43, _s12LocalMailboxV6LoggerVMa);

      sub_10009DF54(v42, _s12LocalMailboxV6LoggerVMa);
    }

    Set<>.formNonEmpty()();
  }

  sub_100025F40(&v76, &qword_1005CF258, &qword_1004D2418);

  *(v27 + 96) = 0;
  return result;
}

void sub_10009BE74(int a1, uint64_t a2)
{
  v45 = a2;
  v46 = a1;
  v39 = _s19UserInitiatedSearchV5StateOMa(0);
  v5 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v35 - v8;
  v9 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v44 = &v35 - v11;
  v12 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = *(v42 + 64);
  __chkstk_darwin(v12);
  v40 = &v35 - v14;
  v36 = _s19UserInitiatedSearchVMa(0);
  v15 = *(v36 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v36);
  v38 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = (&v35 - v19);
  v21 = *(v2 + 152);
  v41 = (v2 + 152);
  v22 = v21[2];
  if (!v22)
  {
    return;
  }

  v23 = 0;
  while (1)
  {
    if (v23 >= v21[2])
    {
      __break(1u);
LABEL_17:
      v21 = sub_1001398CC(v21);
      goto LABEL_10;
    }

    v3 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v4 = *(v15 + 72) * v23;
    sub_10009DEEC(v21 + v3 + v4, v20, _s19UserInitiatedSearchVMa);
    v24 = *v20;
    sub_10009DF54(v20, _s19UserInitiatedSearchVMa);
    if (v24 == v46)
    {
      break;
    }

    if (v22 == ++v23)
    {
      return;
    }
  }

  v25 = v44;
  sub_10000E268(v45, v44, &qword_1005CD518, &qword_1004CF2F0);
  if ((*(v42 + 48))(v25, 1, v43) == 1)
  {
    sub_100025F40(v25, &qword_1005CD518, &qword_1004CF2F0);
    v26 = v38;
    sub_100169140(v23, v38);
    sub_10009DF54(v26, _s19UserInitiatedSearchVMa);
    return;
  }

  sub_10009DE7C(v25, v40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (v23 >= v21[2])
  {
    __break(1u);
  }

  else
  {
    v27 = v37;
    v28 = v21 + v3 + *(v36 + 20);
    sub_10009DEEC(&v28[v4], v37, _s19UserInitiatedSearchV5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100025F40(v40, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10009DF54(v27, _s19UserInitiatedSearchV5StateOMa);
    }

    else
    {
      sub_10009DF54(v27, _s19UserInitiatedSearchV5StateOMa);
      v29 = v40;
      v30 = v35;
      sub_10000E268(v40, v35, &qword_1005CD1D0, &unk_1004CF2C0);
      MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
      v32 = *(MessagesVMa + 20);
      sub_100016D2C();
      sub_1004A7114();
      sub_100025F40(v29, &qword_1005CD1D0, &unk_1004CF2C0);
      v33 = *(MessagesVMa + 24);
      v34 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      (*(*(v34 - 8) + 56))(v30 + v33, 1, 1, v34);
      swift_storeEnumTagMultiPayload();
      sub_10009DFB4(v30, &v28[v4]);
    }

    *v41 = v21;
  }
}

uint64_t sub_10009C364(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 152);
  v4 = v3[2];
  if (v4)
  {
    v5 = v2;
    v7 = result;
    v8 = *(v2 + 152);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v3 = sub_1001398CC(v3);
    }

    v9 = 0;
    do
    {
      if (v9 >= v3[2])
      {
        __break(1u);
        goto LABEL_9;
      }

      v10 = v9 + 1;
      v11 = *(_s19UserInitiatedSearchVMa(0) - 8);
      v12 = v3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9;
      result = sub_100185010(v7, a2);
      v9 = v10;
    }

    while (v4 != v10);
    *(v5 + 152) = v3;
  }

  return result;
}

uint64_t sub_10009C45C(uint64_t a1)
{
  v2 = v1;
  v44 = _s13SelectedStateV7WrappedVMa(0);
  v4 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v6 = sub_10009D814((v1 + 144), a1);

  v8 = *(*(v2 + 144) + 16);
  if (v8 >= v6)
  {
    sub_100164994(v6, v8);
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    v15 = &off_1005D1000;
    v42 = v2;
    v43 = a1;
    while (v12)
    {
      v16 = v12;
LABEL_13:
      v12 = (v16 - 1) & v16;
      if (*(v2 + 96))
      {
        v18 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v16)))));
        v19 = *v18;
        v20 = v18[1];
        sub_100014CEC(*v18, v20);
        v21 = *(v2 + 96);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(v2 + 96);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = v15[85];
          swift_beginAccess();
          v25 = v24 + v23;
          v26 = v41;
          sub_10009DEEC(v25, v41, _s13SelectedStateV7WrappedVMa);
          v27 = _s13SelectedStateV8_StorageCMa(0);
          v28 = *(v27 + 48);
          v29 = *(v27 + 52);
          v30 = swift_allocObject();
          sub_10009DAE8(v26, v30 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

          *(v2 + 96) = v30;
          v23 = v30;
          v15 = &off_1005D1000;
        }

        v31 = v15[85] + v23;
        swift_beginAccess();
        v32 = &v31[*(v44 + 20)];
        v33 = *(type metadata accessor for MailboxSyncState() + 56);
        v34 = *&v32[v33];
        v35 = sub_100063DD8(v19, v20);
        if (v36)
        {
          v37 = v35;
          v38 = *&v32[v33];
          v39 = swift_isUniquelyReferenced_nonNull_native();
          v40 = *&v32[v33];
          v45 = v40;
          *&v32[v33] = 0x8000000000000000;
          if (!v39)
          {
            sub_10013AF64();
            v40 = v45;
          }

          sub_100014D40(*(*(v40 + 48) + 16 * v37), *(*(v40 + 48) + 16 * v37 + 8));
          sub_10013D538(v37, v40);
          *&v32[v33] = v40;
        }

        swift_endAccess();
        result = sub_100014D40(v19, v20);
        v2 = v42;
        a1 = v43;
        v15 = &off_1005D1000;
      }
    }

    while (1)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v17 >= v13)
      {
      }

      v16 = *(v9 + 8 * v17);
      ++v14;
      if (v16)
      {
        v14 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10009C748(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MailboxSyncState();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a2;
  v24 = v2;
  result = sub_10009B19C(sub_10009DA78, v22, a1);
  v10 = *(v2 + 96);
  if (v10)
  {
    v11 = v10 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v12 = _s13SelectedStateV7WrappedVMa(0);
    result = (v11 + *(v12 + 20));
    if (*(result[19] + 16) == 15 && !*(result[20] + 16) && !*(result[21] + 16))
    {
      v13 = (v11 + *(v12 + 24));
      v14 = *v13;
      v15 = *(v13 + 4);
      sub_10009DEEC(result, v8, type metadata accessor for MailboxSyncState);
      v16 = *(v8 + 4);
      v17 = v8[20];
      v18 = *(v8 + 3);
      v19 = v8[32];
      result = sub_10009DF54(v8, type metadata accessor for MailboxSyncState);
      *(v2 + 104) = v14;
      if (v17 & 1 | (v19 > 1))
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

      *(v2 + 108) = v15;
      if (v17 & 1 | (v19 > 1))
      {
        v21 = 0;
      }

      else
      {
        v21 = v18;
      }

      *(v2 + 112) = v20;
      *(v2 + 120) = v21;
      *(v2 + 128) = v17 & 1 | (v19 > 1);
    }
  }

  return result;
}

uint64_t sub_10009C8DC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = _s13SelectedStateV7WrappedVMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MailboxTaskLogger(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  v16 = *a1;
  sub_10009DEEC(a2, &v44 - v14, type metadata accessor for MailboxTaskLogger);
  sub_10009DEEC(a2, v13, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v17 = sub_1004A4A54();
  v18 = sub_1004A5FF4();
  if (!os_log_type_enabled(v17, v18))
  {
    sub_10009DF54(v13, type metadata accessor for MailboxTaskLogger);

    sub_10009DF54(v15, type metadata accessor for MailboxTaskLogger);
    result = *(a3 + 96);
    if (!result)
    {
      return result;
    }

LABEL_5:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = *(a3 + 96);
      v35 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v36 = v47;
      sub_10009DEEC(v34 + v35, v47, _s13SelectedStateV7WrappedVMa);
      v37 = _s13SelectedStateV8_StorageCMa(0);
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      v40 = swift_allocObject();
      sub_10009DAE8(v36, v40 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);
      *(a3 + 96) = v40;
    }

    v41 = *(a3 + 96) + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v42 = (v41 + *(v6 + 20));
    if (sub_100014D94(v16, v42[20]))
    {
      sub_10013FC9C(v16);
      v43 = v16;
    }

    else
    {
      if ((sub_100014D94(v16, v42[19]) & 1) == 0 || (sub_100014D94(v16, v42[21]) & 1) == 0)
      {
        sub_100088568(&v51, v16);
        return swift_endAccess();
      }

      v43 = v16;
    }

    sub_10013FC9C(v43);
    return swift_endAccess();
  }

  v19 = swift_slowAlloc();
  v46 = v6;
  v20 = v19;
  v45 = swift_slowAlloc();
  v48[0] = v45;
  *v20 = 68159491;
  *(v20 + 4) = 2;
  *(v20 + 8) = 256;
  v21 = *(v9 + 20);
  v44 = v17;
  v22 = &v13[v21];
  *(v20 + 10) = v13[v21];
  *(v20 + 11) = 2082;
  v23 = *(v9 + 20);
  v50 = v18;
  v24 = &v15[v23];
  *(v20 + 13) = sub_10015BA6C(*&v15[v23 + 8], *&v15[v23 + 16], v48);
  *(v20 + 21) = 1040;
  *(v20 + 23) = 2;
  *(v20 + 27) = 512;
  LOWORD(v22) = *(v22 + 12);
  sub_10009DF54(v13, type metadata accessor for MailboxTaskLogger);
  *(v20 + 29) = v22;
  *(v20 + 31) = 2160;
  *(v20 + 33) = 0x786F626C69616DLL;
  *(v20 + 41) = 2085;
  v25 = *(v24 + 4);
  LODWORD(v24) = *(v24 + 10);

  sub_10009DF54(v15, type metadata accessor for MailboxTaskLogger);
  v48[3] = v25;
  v49 = v24;
  v26 = sub_1004A5824();
  v28 = sub_10015BA6C(v26, v27, v48);

  *(v20 + 43) = v28;
  *(v20 + 51) = 2080;
  v29 = sub_100167A8C(v16);
  v31 = sub_10015BA6C(v29, v30, v48);

  *(v20 + 53) = v31;
  v32 = v44;
  _os_log_impl(&_mh_execute_header, v44, v50, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking step %s as complete.", v20, 0x3Du);
  swift_arrayDestroy();

  v6 = v46;

  result = *(a3 + 96);
  if (result)
  {
    goto LABEL_5;
  }

  return result;
}

Swift::Int sub_10009CDB8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  if (v2 == 1)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    sub_1004A6EB4(1uLL);
    sub_1004A6EF4(v1);
  }

  return sub_1004A6F14();
}

void sub_10009CE28()
{
  if (*(v0 + 8) == 1)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v1 = *v0;
    sub_1004A6EB4(1uLL);
    sub_1004A6EF4(v1);
  }
}

Swift::Int sub_10009CE78()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  if (v2 == 1)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    sub_1004A6EB4(1uLL);
    sub_1004A6EF4(v1);
  }

  return sub_1004A6F14();
}

BOOL sub_10009CEE4(_BOOL8 result, uint64_t a2)
{
  if (*(result + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return *a2 == *result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009CF2C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxSyncState();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A4904();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004A4944();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = tracingSignposter.unsafeMutableAddressor();
  (*(v14 + 16))(v17, v18, v13);
  v19 = (a1 << 59) | ((*(v2 + 172) & 0xFFFFFF) << 35) | 0x180;
  sub_1004A4914();
  sub_10000E08C(v2, &v43);
  sub_10000E08C(v2, &v43);
  sub_10000E08C(v2, &v43);
  sub_10000E08C(v2, &v43);
  v20 = sub_1004A4934();
  v41 = sub_1004A6154();
  if (sub_1004A6354())
  {
    v38 = v7;
    v40 = v12;
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v21 = 141558787;
    *(v21 + 4) = 0x786F626C69616DLL;
    *(v21 + 12) = 2085;
    v22 = *(v2 + 24);
    v43 = *(v2 + 16);
    v44 = v22;

    v23 = sub_1004A5824();
    v25 = sub_10015BA6C(v23, v24, &v42);

    *(v21 + 14) = v25;
    *(v21 + 22) = 2048;
    v26 = *(*(v2 + 136) + 16);
    sub_10000E0E8(v2);
    *(v21 + 24) = v26;
    sub_10000E0E8(v2);
    *(v21 + 32) = 1024;
    v27 = *(v2 + 96);
    if (v27)
    {
      v28 = v27 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v29 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
      v37 = v13;
      v30 = v28 + v29;
      v31 = v38;
      sub_10009DEEC(v30, v38, type metadata accessor for MailboxSyncState);
      v32 = sub_100168038(*(v31 + 152));
      v13 = v37;
      sub_10009DF54(v31, type metadata accessor for MailboxSyncState);
    }

    else
    {
      v32 = 0;
    }

    sub_10000E0E8(v2);
    *(v21 + 34) = v32;
    sub_10000E0E8(v2);
    v33 = v40;
    v34 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v41, v34, "LocalMailbox", "Mailbox %{sensitive,mask.mailbox}s syncs: %ld, steps: %u", v21, 0x26u);
    sub_1000197E0(v39);

    (*(v9 + 8))(v33, v8);
  }

  else
  {
    sub_10000E0E8(v2);
    sub_10000E0E8(v2);

    sub_10000E0E8(v2);
    sub_10000E0E8(v2);
    (*(v9 + 8))(v12, v8);
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_10009D3A0(uint64_t result, int a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  if ((result & 0x100000000) != 0)
  {
    if ((a5 & 0x100000000) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  v8 = result;
  result = 0;
  if ((a5 & 0x100000000) == 0 && v8 == a5)
  {
LABEL_6:
    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && a2 == a6)
    {
      if ((a7 | a3) < 0)
      {
        __break(1u);
        return result;
      }

      if (a7 == a3)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_10009D400(uint64_t a1, uint64_t a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v31[-v9];
  v11 = *(a1 + 48);
  v34[2] = *(a1 + 32);
  v34[3] = v11;
  v35[0] = *(a1 + 64);
  *(v35 + 9) = *(a1 + 73);
  v12 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v12;
  v13 = *(a2 + 48);
  v32[2] = *(a2 + 32);
  v32[3] = v13;
  v33[0] = *(a2 + 64);
  *(v33 + 9) = *(a2 + 73);
  v14 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v14;
  if ((static MailboxOfInterest.__derived_struct_equals(_:_:)(v34, v32) & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 96);
  v16 = *(a2 + 96);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    sub_10009DEEC(v15 + v17, v10, _s13SelectedStateV7WrappedVMa);
    v18 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    sub_10009DEEC(v16 + v18, v8, _s13SelectedStateV7WrappedVMa);
    if (*v10 != *v8 || (sub_1000D42EC(v10 + *(v4 + 20), v8 + *(v4 + 20)) & 1) == 0)
    {
LABEL_8:
      sub_10009DF54(v8, _s13SelectedStateV7WrappedVMa);
      sub_10009DF54(v10, _s13SelectedStateV7WrappedVMa);
      return 0;
    }

    v19 = *(v4 + 24);
    v20 = (v10 + v19);
    v21 = *(v10 + v19 + 4);
    v22 = (v8 + v19);
    v23 = *(v8 + v19 + 4);
    if (v21)
    {
      if (!v23)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (*v20 != *v22)
      {
        LOBYTE(v23) = 1;
      }

      if (v23)
      {
        goto LABEL_8;
      }
    }

    sub_10009DF54(v8, _s13SelectedStateV7WrappedVMa);
    sub_10009DF54(v10, _s13SelectedStateV7WrappedVMa);
  }

  else if (v16)
  {
    return 0;
  }

  v25 = *(a1 + 120);
  v26 = *(a2 + 108);
  v27 = *(a2 + 120);
  v28 = *(a2 + 128);
  if (*(a1 + 108))
  {
    if ((*(a2 + 108) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 108) & 1) != 0 || *(a1 + 104) != *(a2 + 104))
    {
      return result;
    }
  }

  if (*(a1 + 128))
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 128) & 1) != 0 || *(a1 + 112) != *(a2 + 112))
    {
      return result;
    }

    if ((v27 | v25) < 0)
    {
      __break(1u);
      return result;
    }

    if (v27 != v25)
    {
      return 0;
    }
  }

  if ((sub_100083308(*(a1 + 136), *(a2 + 136)) & 1) == 0 || (sub_100100A64(*(a1 + 144), *(a2 + 144)) & 1) == 0 || (sub_1001014BC(*(a1 + 152), *(a2 + 152)) & 1) == 0)
  {
    return 0;
  }

  v29 = *(a2 + 160);
  v30 = *(a2 + 168);
  if (!*(a1 + 168))
  {
    result = 0;
    if (*(a2 + 168))
    {
      return result;
    }

    goto LABEL_36;
  }

  if (*(a1 + 168) == 1)
  {
    result = 0;
    if (v30 != 1)
    {
      return result;
    }

LABEL_36:
    if (*(a1 + 160) != v29)
    {
      return result;
    }

    return *(a1 + 172) == *(a2 + 172);
  }

  result = 0;
  if (v30 == 2 && !v29)
  {
    return *(a1 + 172) == *(a2 + 172);
  }

  return result;
}

uint64_t sub_10009D744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 56); ; i += 5)
  {
    v6 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;
    sub_100014CEC(v6, v7);

    v9 = sub_100011E60(v6, v7, a2);
    sub_100014D40(v6, v7);

    if (v9)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_10009D814(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_10009D744(*a1, a2);
  v38 = result;
  if (v2)
  {
    return v38;
  }

  if (v5)
  {
    return *(v3 + 16);
  }

  v6 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v8 = (v3 + 16);
    v7 = *(v3 + 16);
    if (v6 == v7)
    {
      return v38;
    }

    v9 = 40 * result + 104;
    while (v6 < v7)
    {
      v15 = v3 + v9;
      v16 = *(v3 + v9 - 24);
      v17 = *(v3 + v9 - 16);
      v18 = *(v3 + v9 - 8);
      sub_100014CEC(v16, v17);

      v19 = sub_100011E60(v16, v17, a2);
      sub_100014D40(v16, v17);

      if ((v19 & 1) == 0)
      {
        v14 = v38;
        if (v6 != v38)
        {
          if ((v38 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v38 >= *v8)
          {
            goto LABEL_24;
          }

          if (v6 >= *v8)
          {
            goto LABEL_25;
          }

          v20 = 40 * v38;
          v21 = v3 + 32 + 40 * v38;
          v22 = *(v21 + 24);
          v31 = *(v21 + 32);
          v34 = *v21;
          v35 = *(v15 - 32);
          v24 = *(v15 - 24);
          v23 = *(v15 - 16);
          v25 = *(v15 - 8);
          v26 = *(v3 + v9);
          v33 = *(v21 + 8);
          v32 = *(v21 + 16);
          sub_100014CEC(v33, v32);

          sub_100014CEC(v24, v23);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1001398F4(v3);
            v3 = result;
          }

          if (v38 >= *(v3 + 16))
          {
            goto LABEL_26;
          }

          v27 = v3 + v20;
          v28 = *(v3 + v20 + 40);
          v29 = *(v3 + v20 + 48);
          v30 = *(v3 + v20 + 56);
          *(v27 + 32) = v35;
          *(v27 + 40) = v24;
          *(v27 + 48) = v23;
          *(v27 + 56) = v25;
          *(v27 + 64) = v26;
          sub_100014D40(v28, v29);

          if (v6 >= *(v3 + 16))
          {
            goto LABEL_27;
          }

          v10 = (v3 + v9);
          v11 = *(v3 + v9 - 24);
          v12 = *(v3 + v9 - 16);
          v13 = *(v3 + v9 - 8);
          *(v10 - 8) = v34;
          *(v10 - 3) = v33;
          *(v10 - 2) = v32;
          *(v10 - 1) = v22;
          *v10 = v31;
          sub_100014D40(v11, v12);

          *a1 = v3;
          v14 = v38;
        }

        v38 = v14 + 1;
      }

      ++v6;
      v8 = (v3 + 16);
      v7 = *(v3 + 16);
      v9 += 40;
      if (v6 == v7)
      {
        return v38;
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
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10009DAE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s12LocalMailboxV6LoggerVMa()
{
  result = qword_1005CF2C0;
  if (!qword_1005CF2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009DBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A4A74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009DC84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A4A74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009DD40()
{
  result = sub_1004A4A74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10009DDB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009DDD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_10009DE28()
{
  result = qword_1005CF2F8;
  if (!qword_1005CF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF2F8);
  }

  return result;
}

uint64_t sub_10009DE7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009DEEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009DF54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009DFB4(uint64_t a1, uint64_t a2)
{
  v4 = _s19UserInitiatedSearchV5StateOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009E02C()
{
  result = qword_1005CF300;
  if (!qword_1005CF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF300);
  }

  return result;
}

uint64_t sub_10009E080(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v16 = *(a3 + 16);
  v17 = result;
  if (v16)
  {
    v4 = 0;
    v5 = (a3 + 52);
    v6 = _swiftEmptyArrayStorage;
    while (v4 < *(v3 + 16))
    {
      v7 = *(v5 - 5);
      v8 = *(v5 - 12);
      v9 = *(v5 - 1);
      v10 = *v5;
      v19 = v7;
      v20 = v8;
      v21 = v9;
      v22 = v10;
      Mailbox.name.getter(v8, v9, v10);
      v11 = v17(&v19);
      if (v18)
      {
        j__swift_bridgeObjectRelease();

        goto LABEL_15;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v23 = v6;
        if ((result & 1) == 0)
        {
          result = sub_100091A68(0, v6[2] + 1, 1);
          v6 = v23;
        }

        v13 = v6[2];
        v12 = v6[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_100091A68((v12 > 1), v13 + 1, 1);
          v6 = v23;
        }

        v6[2] = v13 + 1;
        v14 = &v6[3 * v13];
        *(v14 + 8) = v7;
        v14[5] = v8;
        *(v14 + 12) = v9;
        *(v14 + 52) = v10;
        v3 = a3;
      }

      else
      {
        result = j__swift_bridgeObjectRelease();
      }

      ++v4;
      v5 += 24;
      if (v16 == v4)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_15:

    return v6;
  }

  return result;
}

uint64_t sub_10009E234(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 48);
    v7 = _swiftEmptyArrayStorage;
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 4);
      v10 = *(v6 - 1);
      v9 = *v6;
      v19 = v8;
      v20 = v10;
      v21 = v9;

      v11 = v18(&v19);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_100091A88(0, v7[2] + 1, 1);
          v7 = v22;
        }

        v13 = v7[2];
        v12 = v7[3];
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_100091A88((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v7 = v22;
        }

        v7[2] = v14;
        v15 = &v7[3 * v13];
        *(v15 + 8) = v8;
        v15[5] = v10;
        v15[6] = v9;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 3;
      if (v17 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_16:

    return v7;
  }

  return result;
}