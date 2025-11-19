uint64_t sub_100281684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 1000000000)
  {
    v10 = a1;
    v11 = v3 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
    v12 = *(v11 + 16);
    if (v12 == 255)
    {
      LOBYTE(v14) = 0;
      v16 = v10;
    }

    else
    {
      v4 = *v11;
      v13 = *(v11 + 8);
      IndexingDiagnostics.unindexed.getter();
      v14 = sub_1004A5924();
      result = sub_10027FF08(v4, v13, v12);
      v16 = v10 - v14;
      if (__OFSUB__(v10, v14))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    v17 = (v16 * 5) >> 64;
    v18 = 5 * v16;
    if (v17 != v18 >> 63)
    {
      __break(1u);
LABEL_30:
      result = sub_1002743C8(0, *(v5 + 16) + 1, 1, v5);
      v5 = result;
LABEL_19:
      v27 = *(v5 + 16);
      v26 = *(v5 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        result = sub_1002743C8((v26 > 1), v27 + 1, 1, v5);
        v28 = v27 + 1;
        v5 = result;
      }

      *(v5 + 16) = v28;
      v29 = v5 + 56 * v27;
      *(v29 + 32) = a3;
      *(v29 + 40) = a2;
      *(v29 + 48) = v10;
      *(v29 + 56) = v12;
      *(v29 + 64) = v14;
      *(v29 + 72) = v4;
      *(v29 + 80) = v30;
      *(v3 + v6) = v5;
      return result;
    }

    v9 = v18 & ~(v18 >> 63);
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1002764DC(a2, v31);
  sub_1002788DC(a2, v9, a3, v32);
  v37 = v32[4];
  v38 = v32[5];
  v39 = v32[6];
  v40 = v32[7];
  v33 = v32[0];
  v34 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  result = sub_10027971C(&v33);
  if (result == 1)
  {
    return result;
  }

  v19 = type metadata accessor for IndexableMessageInfo(0);
  v4 = v3 + *(v19 + 60);
  v10 = *v4;
  a2 = *(v4 + 8);
  LODWORD(a3) = *(v4 + 16);
  v31[6] = v39;
  v31[7] = v40;
  v31[4] = v37;
  v31[5] = v38;
  v31[0] = v33;
  v31[1] = v34;
  v31[2] = v35;
  v31[3] = v36;
  v20 = sub_100279920(v31);
  result = sub_100279590(v31);
  if (v20)
  {
    if (v20 == 1)
    {
      v22 = *result;
      v21 = *(result + 8);
      if (a3 != 255)
      {
        if (a3)
        {

          v41._countAndFlagsBits = v22;
          v41._object = v21;
          sub_1004A5994(v41);
          sub_100025F40(v32, &qword_1005D6610, &unk_1004EC260);
          result = sub_10027FF08(v10, a2, a3);
          *v4 = v10;
          *(v4 + 8) = a2;
LABEL_25:
          *(v4 + 16) = 1;
          return result;
        }

        result = sub_10027FF08(v10, a2, a3);
      }

      *v4 = v22;
      *(v4 + 8) = v21;
      goto LABEL_25;
    }

    a3 = *(result + 8);
    a2 = *(result + 16);
    v10 = *(result + 24);
    v12 = *(result + 32);
    LOBYTE(v14) = *(result + 40);
    v4 = sub_10026D408(*(result + 72));
    v30 = v25;
    sub_10026E678(a3, a2, v10, v12, v14);
    sub_100025F40(v32, &qword_1005D6610, &unk_1004EC260);
    v6 = *(v19 + 64);
    v5 = *(v3 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_15:
  v24 = *result;
  v23 = *(result + 8);
  if (a3 == 255)
  {
    *v4 = v24;
    *(v4 + 8) = v23;
  }

  else
  {
    if (a3)
    {
      return sub_100025F40(v32, &qword_1005D6610, &unk_1004EC260);
    }

    v42._countAndFlagsBits = 2570;
    v42._object = 0xE200000000000000;
    sub_1004A5994(v42);

    v43._countAndFlagsBits = v24;
    v43._object = v23;
    sub_1004A5994(v43);
    sub_100025F40(v32, &qword_1005D6610, &unk_1004EC260);

    result = sub_10027FF08(v10, a2, a3);
    *v4 = v10;
    *(v4 + 8) = a2;
  }

  *(v4 + 16) = 0;
  return result;
}

void sub_100281A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, void *a8)
{
  *a6 = 1;
  if (((1 << (*(a1 + 32) >> 59)) & 0x1343F1) == 0)
  {

    sub_100283B1C(a1, v12);
    sub_10027D114(a1, a8, v10);
    if (v11 != 255)
    {
      v12[2] = v10[2];
      v12[3] = v10[3];
      v12[4] = v10[4];
      v12[5] = v10[5];
      v12[0] = v10[0];
      v12[1] = v10[1];
      v13 = v11;
      sub_100281B10(v12);
      sub_100025F40(v10, &qword_1005D6760, &unk_1004EDA60);
    }
  }
}

void sub_100281B10(uint64_t a1)
{
  v3 = *(a1 + 8);
  v62 = *a1;
  v4 = sub_1004A44E4();
  *&v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  __chkstk_darwin(v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v59 - v13;
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  __chkstk_darwin(v18);
  v20 = &v59 - v19;
  switch(*(a1 + 96))
  {
    case 1:
      v21 = v62;
      v22 = *(type metadata accessor for IndexableMessageInfo(0) + 56);
      if (v21)
      {
        *(v1 + v22) = 1;
      }

      else
      {
        *(v1 + v22) = 0;
      }

      break;
    case 2:
      v23 = *v1;
      v24 = v62;

      *v1 = v24;
      break;
    case 3:
      v40 = v1[1];
      v41 = v62;

      v1[1] = v41;
      break;
    case 0xA:
      v59 = v3;
      sub_1002853A0(v62, v3, v14);
      v47 = *(v61 + 48);
      v48 = v47(v14, 1, v4);
      v60 = v47;
      if (v48 == 1)
      {
        sub_10028408C(v17);
        if (v47(v14, 1, v4) != 1)
        {
          sub_100025F40(v14, &qword_1005D0F20, &qword_1004E9390);
        }
      }

      else
      {
        v55 = v61;
        (*(v61 + 32))(v17, v14, v4);
        (*(v55 + 56))(v17, 0, 1, v4);
      }

      sub_10000E268(v17, v11, &qword_1005D0F20, &qword_1004E9390);
      v56 = 1;
      if (v60(v11, 1, v4) != 1)
      {
        v57 = v61;
        (*(v61 + 32))(v7, v11, v4);
        sub_1004A4464();
        sub_1004A4454();
        (*(v57 + 8))(v7, v4);
        v56 = 0;
      }

      sub_100025F40(v17, &qword_1005D0F20, &qword_1004E9390);
      (*(v61 + 56))(v20, v56, 1, v4);
      v58 = type metadata accessor for IndexableMessageInfo(0);
      sub_10027F8A8(v20, v1 + *(v58 + 24), &qword_1005D0F20, &qword_1004E9390);
      break;
    case 0xB:
      v25 = *(a1 + 48);
      v64 = *(a1 + 32);
      v65 = v25;
      v26 = *(a1 + 80);
      v66 = *(a1 + 64);
      v67 = v26;
      v27 = v1 + *(type metadata accessor for IndexableMessageInfo(0) + 28);
      v28 = *(v27 + 3);
      v68[2] = *(v27 + 2);
      v68[3] = v28;
      v29 = *(v27 + 5);
      v68[4] = *(v27 + 4);
      v68[5] = v29;
      v30 = *(v27 + 1);
      v68[0] = *v27;
      v68[1] = v30;
      v31 = v62;
      v69[0] = v62;
      v69[1] = v3;
      v32 = *(a1 + 32);
      v61 = *(a1 + 16);
      v70 = *(a1 + 16);
      v71 = v32;
      v33 = *(a1 + 48);
      v34 = *(a1 + 64);
      v35 = *(a1 + 80);
      v75 = *(a1 + 96);
      v74 = v35;
      v73 = v34;
      v72 = v33;
      sub_100275568(v69, &v63);
      sub_100025F40(v68, &qword_1005D6668, &qword_1004EBFA8);
      *v27 = v31;
      *(v27 + 1) = v3;
      v36 = v64;
      v37 = v65;
      *(v27 + 1) = v61;
      *(v27 + 2) = v36;
      v38 = v66;
      v39 = v67;
      *(v27 + 3) = v37;
      *(v27 + 4) = v38;
      *(v27 + 5) = v39;
      break;
    case 0xC:
      v54 = *(type metadata accessor for IndexableMessageInfo.InfoAndListID(0) + 20);

      sub_100282104(v69, v62, v3);

      break;
    case 0xD:
      v42 = (v1 + *(type metadata accessor for IndexableMessageInfo(0) + 32));
      v43 = v42[1];

      *v42 = v62;
      v42[1] = v3;
      break;
    case 0xF:
      *(v1 + *(type metadata accessor for IndexableMessageInfo(0) + 44)) = v62;
      break;
    case 0x12:
      sub_100283B78(a1, v69);
      v49 = sub_1002A9F18();
      v51 = v50;
      v52 = (v1 + *(type metadata accessor for IndexableMessageInfo(0) + 36));
      v53 = v52[1];

      *v52 = v49;
      v52[1] = v51;
      break;
    case 0x13:
      v44 = *(type metadata accessor for IndexableMessageInfo(0) + 40);
      v45 = *(v1 + v44);
      v46 = v62;

      *(v1 + v44) = v46;
      break;
    default:
      return;
  }
}

uint64_t sub_100282104(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v9 = sub_1004A6F14();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1002824B4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100282254(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D6768, &qword_1004EC270);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1002824B4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100282254(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100282634();
      goto LABEL_16;
    }

    sub_100282790(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  result = sub_1004A6F14();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1004A6D34();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

void *sub_100282634()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D6768, &qword_1004EC270);
  v2 = *v0;
  v3 = sub_1004A6684();
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

uint64_t sub_100282790(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D6768, &qword_1004EC270);
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

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
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

uint64_t sub_1002829C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t _s9IMAP2MIME20IndexableMessageInfoV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v81 - v11;
  v13 = sub_10000C9C0(&qword_1005D6770, &qword_1004EC278);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v81 - v15;
  if ((sub_10026B608(*a1, *a2) & 1) == 0 || (sub_10026B608(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_44;
  }

  v17 = type metadata accessor for IndexableMessageInfo(0);
  v96 = a2;
  v18 = *(v17 + 24);
  v19 = *(v13 + 48);
  v94 = v17;
  v95 = a1;
  sub_10000E268(a1 + v18, v16, &qword_1005D0F20, &qword_1004E9390);
  v20 = v96 + v18;
  v21 = v96;
  sub_10000E268(v20, &v16[v19], &qword_1005D0F20, &qword_1004E9390);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v19], 1, v4) == 1)
    {
      sub_100025F40(v16, &qword_1005D0F20, &qword_1004E9390);
      goto LABEL_10;
    }

LABEL_8:
    v23 = &qword_1005D6770;
    v24 = &qword_1004EC278;
    v25 = v16;
LABEL_43:
    sub_100025F40(v25, v23, v24);
    goto LABEL_44;
  }

  sub_10000E268(v16, v12, &qword_1005D0F20, &qword_1004E9390);
  if (v22(&v16[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v16[v19], v4);
  sub_100283BD4();
  v26 = sub_1004A5724();
  v27 = *(v5 + 8);
  v27(v8, v4);
  v27(v12, v4);
  sub_100025F40(v16, &qword_1005D0F20, &qword_1004E9390);
  if ((v26 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_10:
  v28 = v94;
  v29 = (v95 + v94[7]);
  v30 = v29[3];
  v119 = v29[2];
  v120 = v30;
  v31 = v29[5];
  v121 = v29[4];
  v122 = v31;
  v32 = v29[1];
  v118[0] = *v29;
  v118[1] = v32;
  v33 = (v21 + v94[7]);
  v34 = v33[3];
  v123[2] = v33[2];
  v123[3] = v34;
  v35 = v33[5];
  v123[4] = v33[4];
  v123[5] = v35;
  v36 = v33[1];
  v123[0] = *v33;
  v123[1] = v36;
  v37 = v118[0];
  v38 = v32;
  v93 = *(&v122 + 1);
  v39 = *(&v36 + 1);
  if (!*(&v32 + 1))
  {
    if (!*(&v36 + 1))
    {
      v105 = v118[0];
      v106 = v32;
      v107 = v119;
      v108 = v120;
      v109 = v121;
      v110 = __PAIR128__(v93, v122);
      sub_10000E268(v118, &v97, &qword_1005D6668, &qword_1004EBFA8);
      sub_10000E268(v123, &v97, &qword_1005D6668, &qword_1004EBFA8);
      v54 = &v105;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (!*(&v36 + 1))
  {
LABEL_22:
    v105 = v118[0];
    v106 = v32;
    v107 = v119;
    v108 = v120;
    v109 = v121;
    *&v110 = v122;
    *(&v110 + 1) = v93;
    v111 = *v33;
    v112 = *(v33 + 2);
    v113 = *(&v36 + 1);
    v55 = v33[2];
    v56 = v33[3];
    v57 = v33[5];
    v116 = v33[4];
    v117 = v57;
    v114 = v55;
    v115 = v56;
    sub_10000E268(v118, &v97, &qword_1005D6668, &qword_1004EBFA8);
    sub_10000E268(v123, &v97, &qword_1005D6668, &qword_1004EBFA8);
    v23 = &unk_1005D6778;
    v24 = &unk_1004EC280;
    v25 = &v105;
    goto LABEL_43;
  }

  v89 = *(&v120 + 1);
  v105 = *v33;
  v40 = *(v33 + 2);
  *&v106 = v40;
  *(&v106 + 1) = *(&v36 + 1);
  v41 = v33[3];
  v107 = v33[2];
  v108 = v41;
  v42 = v33[5];
  v109 = v33[4];
  v110 = v42;
  v44 = *(&v107 + 1);
  v43 = v107;
  v46 = *(&v108 + 1);
  v45 = v108;
  v88 = v122;
  v90 = v121;
  v92 = v120;
  v91 = v119;
  if (!*(&v118[0] + 1))
  {
    v84 = *(&v42 + 1);
    v85 = v42;
    v86 = *(&v109 + 1);
    v87 = v109;
    if (!*(&v105 + 1))
    {
      goto LABEL_16;
    }

LABEL_24:
    sub_10000E268(v118, &v97, &qword_1005D6668, &qword_1004EBFA8);
    sub_10000E268(v123, &v97, &qword_1005D6668, &qword_1004EBFA8);
    sub_100025F40(&v105, &qword_1005D6668, &qword_1004EBFA8);
    v97 = v37;
    v98 = v38;
    v99 = v91;
    v100 = v92;
    v101 = v89;
LABEL_42:
    v102 = v90;
    v103 = v88;
    v104 = v93;
    v25 = &v97;
    v23 = &qword_1005D6668;
    v24 = &qword_1004EBFA8;
    goto LABEL_43;
  }

  if (!*(&v105 + 1))
  {
    goto LABEL_24;
  }

  v84 = *(&v42 + 1);
  v85 = v42;
  v86 = *(&v109 + 1);
  v87 = v109;
  if (v118[0] != v105)
  {
    v82 = v108;
    v83 = v107;
    v81 = *(&v108 + 1);
    v47 = sub_1004A6D34();
    v46 = v81;
    v45 = v82;
    v43 = v83;
    if ((v47 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_16:
  if (v38 != __PAIR128__(v39, v40))
  {
    v83 = v43;
    v48 = v44;
    v49 = v45;
    v50 = v46;
    v51 = sub_1004A6D34();
    v46 = v50;
    v45 = v49;
    v44 = v48;
    v43 = v83;
    if ((v51 & 1) == 0)
    {
      sub_10000E268(v118, &v97, &qword_1005D6668, &qword_1004EBFA8);
      sub_10000E268(v123, &v97, &qword_1005D6668, &qword_1004EBFA8);
      v52 = v89;
      goto LABEL_41;
    }
  }

  v52 = v89;
  if ((sub_10027F698(v91, *(&v91 + 1), v92, v89, v43, v44, v45, v46) & 1) == 0)
  {
    sub_10000E268(v118, &v97, &qword_1005D6668, &qword_1004EBFA8);
    sub_10000E268(v123, &v97, &qword_1005D6668, &qword_1004EBFA8);
LABEL_41:
    sub_100025F40(&v105, &qword_1005D6668, &qword_1004EBFA8);
    v97 = v37;
    v98 = v38;
    v99 = v91;
    v100 = v92;
    v101 = v52;
    goto LABEL_42;
  }

  v53 = v88;
  LODWORD(v87) = sub_10027F698(v90, *(&v90 + 1), v88, v93, v87, v86, v85, v84);
  sub_10000E268(v118, &v97, &qword_1005D6668, &qword_1004EBFA8);
  sub_10000E268(v123, &v97, &qword_1005D6668, &qword_1004EBFA8);
  sub_100025F40(&v105, &qword_1005D6668, &qword_1004EBFA8);
  if ((v87 & 1) == 0)
  {
    v97 = v37;
    v98 = v38;
    v99 = v91;
    v100 = v92;
    v101 = v89;
    v102 = v90;
    v103 = v53;
    v104 = v93;
    v23 = &qword_1005D6668;
    v24 = &qword_1004EBFA8;
    v25 = &v97;
    goto LABEL_43;
  }

  v97 = v37;
  v98 = v38;
  v99 = v91;
  v100 = v92;
  v101 = v89;
  v102 = v90;
  v103 = v53;
  v104 = v93;
  v54 = &v97;
LABEL_26:
  sub_100025F40(v54, &qword_1005D6668, &qword_1004EBFA8);
  v58 = v28[8];
  v59 = v95;
  v60 = (v95 + v58);
  v61 = *(v95 + v58 + 8);
  v62 = (v21 + v58);
  v63 = v62[1];
  if (v61)
  {
    if (!v63 || (*v60 != *v62 || v61 != v63) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v63)
  {
    goto LABEL_44;
  }

  v64 = v28[9];
  v65 = (v59 + v64);
  v66 = *(v59 + v64 + 8);
  v67 = (v21 + v64);
  v68 = v67[1];
  if (v66)
  {
    if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v68)
  {
    goto LABEL_44;
  }

  if (sub_10026B608(*(v59 + v28[10]), *(v21 + v28[10])))
  {
    v71 = v28[11];
    v72 = v59 + v71;
    v73 = *(v59 + v71 + 1);
    v74 = v21 + v71;
    v75 = *(v21 + v71 + 1);
    if (v73)
    {
      if (!v75)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (*v72 != *v74)
      {
        LOBYTE(v75) = 1;
      }

      if (v75)
      {
        goto LABEL_44;
      }
    }

    if (*(v59 + v28[12]) != *(v21 + v28[12]) || *(v59 + v28[13]) != *(v21 + v28[13]) || *(v59 + v28[14]) != *(v21 + v28[14]))
    {
      goto LABEL_44;
    }

    v76 = v28[15];
    v77 = (v59 + v76);
    v78 = *(v59 + v76 + 16);
    v79 = (v21 + v76);
    v80 = *(v21 + v76 + 16);
    if (v78 == 255)
    {
      if (v80 == 255)
      {
LABEL_69:
        v69 = sub_10026BA9C(*(v95 + v94[16]), *(v96 + v94[16]));
        return v69 & 1;
      }
    }

    else if (v80 != 255)
    {
      if (v78)
      {
        if ((v80 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if (v80)
      {
        goto LABEL_44;
      }

      if (*v77 == *v79 && v77[1] == v79[1] || (sub_1004A6D34() & 1) != 0)
      {
        goto LABEL_69;
      }
    }
  }

LABEL_44:
  v69 = 0;
  return v69 & 1;
}

uint64_t sub_100283378(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002833E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexableMessageInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028344C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexableMessageInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002834B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100283524(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1002835F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002836A4()
{
  sub_1002838E8(319, &qword_1005D66E0, &type metadata for EmailAddress, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100283890();
    if (v1 <= 0x3F)
    {
      sub_1002838E8(319, &qword_1005D66E8, &type metadata for EmailAddress, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1002838E8(319, &qword_1005D3AA0, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1002838E8(319, &qword_1005D66F0, &type metadata for Header.Priority, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1002838E8(319, &qword_1005D66F8, &type metadata for IndexableMessageInfo.Content, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1002838E8(319, &unk_1005D6700, &type metadata for IndexableMessageInfo.Attachment, &type metadata accessor for Array);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100283890()
{
  if (!qword_1005D28A8)
  {
    sub_1004A44E4();
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D28A8);
    }
  }
}

void sub_1002838E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100283954(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1002839B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_100283A40()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100283A78(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  sub_100281684(v3, a1, v4);
  return 2;
}

uint64_t sub_100283AC0()
{
  if (v0[2])
  {

    v1 = v0[10];

    v2 = v0[19];
  }

  return _swift_deallocObject(v0, 201, 7);
}

unint64_t sub_100283BD4()
{
  result = qword_1005D6780;
  if (!qword_1005D6780)
  {
    sub_1004A44E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6780);
  }

  return result;
}

uint64_t sub_100283C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexableMessageInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100283D10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100283DC8()
{
  type metadata accessor for IndexableMessageInfo(319);
  if (v0 <= 0x3F)
  {
    sub_100283E4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100283E4C()
{
  if (!qword_1005D67F0)
  {
    sub_100283EA8();
    v0 = sub_1004A5DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D67F0);
    }
  }
}

unint64_t sub_100283EA8()
{
  result = qword_1005D67F8;
  if (!qword_1005D67F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D67F8);
  }

  return result;
}

uint64_t InternetMessageDate.parse()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14[-v8];
  sub_1002853A0(a1, a2, &v14[-v8]);
  v10 = sub_1004A44E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) == 1)
  {
    sub_10028408C(a3);
    result = v12(v9, 1, v10);
    if (result != 1)
    {
      return sub_100025F40(v9, &qword_1005D0F20, &qword_1004E9390);
    }
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  return result;
}

uint64_t sub_10028408C@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v1 = sub_1004A44E4();
  v2 = *(v1 - 8);
  v43 = v1;
  v44 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v37 - v6;
  __chkstk_darwin(v7);
  v41 = &v37 - v8;
  __chkstk_darwin(v9);
  v40 = &v37 - v10;
  v11 = 22;
  v12 = &off_1005AA920;
  do
  {
    v13 = *(v12 - 1);
    v14 = *v12;

    v15 = sub_100285840();
    v16 = sub_1004A5734();

    [v15 setDateFormat:v16];

    [v15 setLenient:0];
    v17 = sub_1004A5734();
    v18 = [v15 dateFromString:v17];

    if (v18)
    {
      v31 = v41;
      sub_1004A44C4();

      v32 = *(v44 + 32);
      v33 = v40;
LABEL_12:
      v34 = v31;
      v35 = v43;
      v32(v33, v34, v43);
      v36 = v42;
      v32(v42, v33, v35);
      return (*(v44 + 56))(v36, 0, 1, v35);
    }

    v12 += 2;
    --v11;
  }

  while (v11);
  v19 = &off_1005AA920;
  v20 = 22;
  do
  {
    v22 = *(v19 - 1);
    v21 = *v19;

    v23 = sub_100285840();
    v24 = sub_1004A5734();

    [v23 setDateFormat:v24];

    [v23 setLenient:1];
    v25 = sub_1004A5734();
    v26 = [v23 dateFromString:v25];

    if (v26)
    {
      v31 = v39;
      sub_1004A44C4();

      v32 = *(v44 + 32);
      v33 = v38;
      goto LABEL_12;
    }

    v19 += 2;
    --v20;
  }

  while (v20);
  v27 = v43;
  v28 = *(v44 + 56);
  v29 = v42;

  return v28(v29, 1, 1, v27);
}

uint64_t InternetMessageDate.init(from:calendar:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002844B4(a2);
  v5 = sub_1004A45B4();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_1004A44E4();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v4;
}

uint64_t sub_1002844B4(uint64_t a1)
{
  v2 = sub_1004A5C64();
  *(v2 + 16) = 80;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  sub_1002845D4(a1, &v6);
  sub_100284C10(v2 + 32, &v6, 0x50uLL, &v5);
  if (v5 && *(v2 + 16) >= v5)
  {
    v3 = sub_1004A59C4();

    return v3;
  }

  else
  {
    result = sub_1004A69A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002845D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v3 = sub_10000C9C0(&qword_1005D6830, &qword_1004EC2C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v58 = &v51 - v5;
  v6 = sub_1004A4694();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  __chkstk_darwin(v6);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A41B4();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  __chkstk_darwin(v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C9C0(&qword_1005D6838, &qword_1004EC2C8);
  v13 = sub_1004A45A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004EC2A0;
  v18 = *(v14 + 104);
  v18(v17 + v16, enum case for Calendar.Component.second(_:), v13);
  v18(v17 + v16 + v15, enum case for Calendar.Component.minute(_:), v13);
  v18(v17 + v16 + 2 * v15, enum case for Calendar.Component.hour(_:), v13);
  v18(v17 + v16 + 3 * v15, enum case for Calendar.Component.day(_:), v13);
  v18(v17 + v16 + 4 * v15, enum case for Calendar.Component.month(_:), v13);
  v18(v17 + v16 + 5 * v15, enum case for Calendar.Component.year(_:), v13);
  v18(v17 + v16 + 6 * v15, enum case for Calendar.Component.weekday(_:), v13);
  v18(v17 + v16 + 7 * v15, enum case for Calendar.Component.timeZone(_:), v13);
  sub_100285C08(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1004A4574();

  result = sub_1004A4174();
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = result;
  }

  if (v21 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v21 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = sub_1004A4164();
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = result;
  }

  if (v23 < 0xFFFFFFFF80000000)
  {
    goto LABEL_44;
  }

  if (v23 > 0x7FFFFFFF)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = sub_1004A4134();
  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = result;
  }

  if (v25 < 0xFFFFFFFF80000000)
  {
    goto LABEL_46;
  }

  if (v25 > 0x7FFFFFFF)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  result = sub_1004A4124();
  if (v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = result;
  }

  if (v27 < 0xFFFFFFFF80000000)
  {
    goto LABEL_48;
  }

  if (v27 > 0x7FFFFFFF)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  result = sub_1004A4154();
  if (v28)
  {
    v29 = 1;
  }

  else
  {
    v29 = result;
  }

  if (v29 < 0xFFFFFFFF80000000)
  {
    goto LABEL_50;
  }

  if (v29 > 0x7FFFFFFF)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v30 = v29 - 1;
  if (__OFSUB__(v29, 1))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  result = sub_1004A4144();
  v32 = 100;
  if ((v31 & 1) == 0)
  {
    v32 = result;
  }

  if (v32 < 0xFFFFFFFF80000000)
  {
    goto LABEL_53;
  }

  if (v32 > 0x7FFFFFFF)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v33 = v32 - 1900;
  if (__OFSUB__(v32, 1900))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = sub_1004A4184();
  if (v34)
  {
    v35 = 1;
  }

  else
  {
    v35 = result;
  }

  if (v35 < 0xFFFFFFFF80000000)
  {
    goto LABEL_56;
  }

  if (v35 > 0x7FFFFFFF)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
LABEL_58:
    __break(1u);
    return result;
  }

  v53 = v37;
  LODWORD(v59) = v33;
  v38 = v58;
  sub_1004A41A4();
  v39 = v38;
  v40 = v56;
  v41 = v38;
  v42 = v57;
  if ((*(v56 + 48))(v41, 1, v57) == 1)
  {
    (*(v54 + 8))(v12, v55);
    result = sub_100025F40(v39, &qword_1005D6830, &qword_1004EC2C0);
    v43 = 0;
  }

  else
  {
    v44 = *(v40 + 32);
    v51 = v27;
    v45 = v25;
    v46 = v23;
    v47 = v30;
    v48 = v21;
    v21 = v52;
    v44(v52, v39, v42);
    v43 = sub_1004A4664();
    v49 = v21;
    LODWORD(v21) = v48;
    v30 = v47;
    LODWORD(v23) = v46;
    LODWORD(v25) = v45;
    LODWORD(v27) = v51;
    (*(v40 + 8))(v49, v42);
    result = (*(v54 + 8))(v12, v55);
  }

  *a2 = v21;
  *(a2 + 4) = v23;
  *(a2 + 8) = v25;
  *(a2 + 12) = v27;
  v50 = v59;
  *(a2 + 16) = v30;
  *(a2 + 20) = v50;
  *(a2 + 24) = v53;
  *(a2 + 28) = 0xFFFFFFFF00000000;
  *(a2 + 36) = 0;
  *(a2 + 40) = v43;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_100284C10@<X0>(uint64_t result@<X0>, tm *a2@<X2>, size_t a3@<X1>, uint64_t *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v6 = result;
  if (qword_1005D6250 != -1)
  {
    swift_once();
  }

  result = strftime_l(v6, a3, "%a, %d %b %Y %H:%M:%S %z", a2, qword_1005D6828);
  if (!result)
  {
    goto LABEL_11;
  }

  v8 = result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
  }

  else
  {
    v9 = a2->tm_gmtoff / 60 % 60 + 100 * (a2->tm_gmtoff / 3600);
    sub_10000C9C0(&qword_1005D4038, &qword_1004DFEA8);
    result = swift_allocObject();
    *(result + 16) = xmmword_1004CEAA0;
    *(result + 56) = &type metadata for Int32;
    *(result + 64) = &protocol witness table for Int32;
    if (v9 >= 0xFFFFFFFF80000000)
    {
      if (v9 <= 0x7FFFFFFF)
      {
        *(result + 32) = v9;
        v10 = sub_1004A4B94();

        v11 = v8 + v10;
        if (!__OFADD__(v8, v10))
        {
          goto LABEL_12;
        }

        __break(1u);
LABEL_11:
        v11 = 0;
LABEL_12:
        *a4 = v11;
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

locale_t sub_100284DB8()
{
  result = newlocale(63, 0, 0);
  if (result)
  {
    qword_1005D6828 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100284DEC@<X0>(const char *a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v37 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v3 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v5 = &v36 - v4;
  v6 = sub_1004A44E4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  __chkstk_darwin(v12);
  v47 = (v14 + 56);
  v42 = (v14 + 8);
  v43 = (v14 + 32);
  v45 = (v14 + 48);
  v15 = 13;
  v16 = &off_1005AA830;
  v44 = a1;
  v46 = &v36 - v17;
  while (1)
  {
    v18 = *(v16 - 1);
    v19 = *v16;
    __chkstk_darwin(v13);
    *(&v36 - 4) = a1;
    *(&v36 - 3) = v18;
    *(&v36 - 2) = v19;
    if ((v19 & 0x1000000000000000) != 0)
    {
      goto LABEL_27;
    }

    if ((v19 & 0x2000000000000000) != 0)
    {
      *v52 = v18;
      v53 = v19 & 0xFFFFFFFFFFFFFFLL;
      memset(&v54, 0, sizeof(v54));

      v23 = strptime_l(a1, v52, &v54, 0);
      if (!v23)
      {
LABEL_17:
        v22 = 1;
LABEL_23:
        (*v47)(v5, v22, 1, v6);

        a1 = v44;
        goto LABEL_24;
      }

      v24 = v23;
      v41 = &v36;
      v25 = v11;
      mktime(&v54);
      v26 = v40;
      sub_1004A4494();
      if (*v24)
      {
        v50 = v18;
        v51 = v19;
        v48 = 31269;
        v49 = 0xE200000000000000;
        sub_1001C2190();
        if ((sub_1004A6464() & 1) == 0 || (sub_100285668() & 1) == 0)
        {
          (*v42)(v40, v6);
          v22 = 1;
LABEL_22:
          v11 = v25;
          goto LABEL_23;
        }

        (*v43)(v5, v40, v6);
      }

      else
      {
        (*v43)(v5, v26, v6);
      }

      v22 = 0;
      goto LABEL_22;
    }

    if ((v18 & 0x1000000000000000) != 0)
    {
      memset(&v54, 0, sizeof(v54));

      v20 = strptime_l(a1, ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32), &v54, 0);
      if (v20)
      {
        v21 = v20;
        mktime(&v54);
        sub_1004A4494();
        if (!*v21 || (*v52 = v18, v53 = v19, v50 = 31269, v51 = 0xE200000000000000, sub_1001C2190(), (sub_1004A6464() & 1) != 0) && (sub_100285668() & 1) != 0)
        {
          (*v43)(v5, v11, v6);
          v22 = 0;
        }

        else
        {
          (*v42)(v11, v6);
          v22 = 1;
        }

        goto LABEL_23;
      }

      goto LABEL_17;
    }

LABEL_27:

    v31 = v39;
    sub_1004A66E4();
    v39 = v31;

LABEL_24:
    v27 = (*v45)(v5, 1, v6);
    v28 = v46;
    if (v27 != 1)
    {
      break;
    }

    v13 = sub_100025F40(v5, &qword_1005D0F20, &qword_1004E9390);
LABEL_3:
    v16 += 2;
    if (!--v15)
    {
      v32 = 1;
      v33 = v38;
      return (*v47)(v33, v32, 1, v6);
    }
  }

  v29 = *v43;
  (*v43)(v46, v5, v6);
  sub_1004A4464();
  if (v30 <= -900000000.0)
  {
    v13 = (*v42)(v28, v6);
    goto LABEL_3;
  }

  v34 = v38;
  v29(v38, v28, v6);
  v33 = v34;
  v32 = 0;
  return (*v47)(v33, v32, 1, v6);
}

uint64_t sub_1002853A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v3 = v5;
    return sub_100284DEC(v3, a3);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
    return sub_1004A66E4();
  }

  v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_100284DEC(v3, a3);
}

uint64_t sub_100285454@<X0>(const char *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1004A44E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v20, 0, sizeof(v20));
  v15 = strptime_l(a2, a1, &v20, 0);
  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = v15;
  mktime(&v20);
  sub_1004A4494();
  if (*v16)
  {
    v19[2] = a3;
    v19[3] = a4;
    v19[0] = 31269;
    v19[1] = 0xE200000000000000;
    sub_1001C2190();
    if ((sub_1004A6464() & 1) == 0 || (sub_100285668() & 1) == 0)
    {
      (*(v11 + 8))(v14, v10);
LABEL_7:
      v17 = 1;
      return (*(v11 + 56))(a5, v17, 1, v10);
    }
  }

  (*(v11 + 32))(a5, v14, v10);
  v17 = 0;
  return (*(v11 + 56))(a5, v17, 1, v10);
}

id sub_100285668()
{
  v0 = sub_1004A4064();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A59B4();
  v5 = objc_allocWithZone(NSScanner);
  v6 = sub_1004A5734();

  v7 = [v5 initWithString:v6];

  v16._countAndFlagsBits = 40;
  v16._object = 0xE100000000000000;
  sub_1004A6344(v16);

  v17._countAndFlagsBits = 40;
  v17._object = 0xE100000000000000;
  sub_1004A6324(v17);
  if (!v8)
  {
    goto LABEL_5;
  }

  sub_1004A4034();
  sub_1004A6334();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v4, v0);
  if (!v10)
  {
    goto LABEL_5;
  }

  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  sub_1004A6324(v18);
  if (v12)
  {

    sub_1004A4044();
    sub_1004A6334();

    v11(v4, v0);
    v13 = [v7 isAtEnd];

    return v13;
  }

  else
  {
LABEL_5:

    return 0;
  }
}

id sub_100285840()
{
  v0 = sub_10000C9C0(&qword_1005D6830, &qword_1004EC2C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v24 - v2;
  v4 = sub_1004A4544();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10019A8E4(0, &qword_1005D6858, NSString_ptr);
  v9 = sub_1004A6314();
  v10 = objc_opt_self();
  v11 = [v10 currentThread];
  v12 = [v11 threadDictionary];

  v13 = v9;
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (*(&v26 + 1))
  {
    sub_10019A8E4(0, &qword_1005D6860, NSDateFormatter_ptr);
    if (swift_dynamicCast())
    {

      return v24[1];
    }
  }

  else
  {
    sub_100025F40(v27, &qword_1005D4768, &unk_1004F5B20);
  }

  v15 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1004A4524();
  isa = sub_1004A4534().super.isa;
  (*(v5 + 8))(v8, v4);
  [v15 setLocale:isa];

  sub_1004A4674();
  v17 = sub_1004A4694();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v3, 1, v17) != 1)
  {
    v19 = sub_1004A4684().super.isa;
    (*(v18 + 8))(v3, v17);
  }

  [v15 setTimeZone:v19];

  v20 = [v10 currentThread];
  v21 = [v20 threadDictionary];

  v22 = v13;
  [v21 setObject:v15 forKeyedSubscript:v22];

  return v15;
}

void *sub_100285C08(uint64_t a1)
{
  v2 = sub_1004A45A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10000C9C0(&qword_1005D6840, &unk_1004EC2D0);
    v10 = sub_1004A66B4();
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
      sub_100285F00(&qword_1005D6848);
      v18 = sub_1004A5554();
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
          sub_100285F00(&qword_1005D6850);
          v25 = sub_1004A5724();
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

  return _swiftEmptySetSingleton;
}

uint64_t sub_100285F00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1004A45A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Message.streamWithConvertedLineEndings(input:output:ensureTrailingNewline:_:)(unsigned int a1, int a2, char a3, void (*a4)(uint64_t, char *), uint64_t a5)
{
  v11 = sub_1004A5384();
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Message.Data(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = a1;
  v47 = a2;
  v57[16] = a1;
  v57[17] = a2;
  v19 = a3;
  v57[18] = a3;
  v48 = a4;
  v49 = a5;
  v58 = a4;
  v59 = a5;
  result = Message.isEmpty.getter();
  if ((result & 1) == 0)
  {
    sub_100286984(v5, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v50;
      v22 = (*(v50 + 32))(v14, v18, v11);
      __chkstk_darwin(v22);
      *(&v45 - 4) = v14;
      *(&v45 - 3) = sub_100286360;
      v44 = v57;
      sub_1004A5314();
      return (*(v21 + 8))(v14, v11);
    }

    v24 = *v18;
    v23 = v18[1];
    v25 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v25 != 2)
      {
        return sub_100014D40(v24, v23);
      }

      v33 = *(v24 + 16);
      v34 = *(v24 + 24);
      v35 = sub_1004A40D4();
      if (v35)
      {
        v36 = sub_1004A4104();
        if (__OFSUB__(v33, v36))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
        }

        v35 += v33 - v36;
      }

      v37 = __OFSUB__(v34, v33);
      v38 = v34 - v33;
      if (v37)
      {
        goto LABEL_38;
      }

      v39 = sub_1004A40F4();
      if (v39 >= v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = v39;
      }

      if (v35)
      {
        v26 = v40;
      }

      else
      {
        v26 = 0;
      }

      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      __break(1u);
    }

    else if (!v25)
    {
      v51 = *v18;
      v52 = v23;
      v53 = BYTE2(v23);
      v54 = BYTE3(v23);
      v26 = BYTE6(v23);
      v55 = BYTE4(v23);
      v56 = BYTE5(v23);
      v44 = &v51 + BYTE6(v23);
      v27 = a3 & 1;
      v28 = &v51;
      v29 = v46;
      v30 = v47;
      v31 = v48;
      v32 = v49;
LABEL_34:
      sub_1002863C4(v29, v30, v27, v31, v32, 0, v26, v28, v44);
      return sub_100014D40(v24, v23);
    }

    if (v24 >> 32 >= v24)
    {
      v35 = sub_1004A40D4();
      if (v35)
      {
        v41 = sub_1004A4104();
        if (__OFSUB__(v24, v41))
        {
          goto LABEL_41;
        }

        v35 += v24 - v41;
      }

      v42 = sub_1004A40F4();
      if (v42 >= (v24 >> 32) - v24)
      {
        v40 = (v24 >> 32) - v24;
      }

      else
      {
        v40 = v42;
      }

      if (v35)
      {
        v26 = v40;
      }

      else
      {
        v26 = 0;
      }

      if ((v26 & 0x8000000000000000) == 0)
      {
LABEL_31:
        v43 = v40 + v35;
        if (!v35)
        {
          v43 = 0;
        }

        v44 = v43;
        v27 = v19 & 1;
        v29 = v46;
        v30 = v47;
        v31 = v48;
        v32 = v49;
        v28 = v35;
        goto LABEL_34;
      }

      goto LABEL_39;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  return result;
}

char *sub_100286360(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return sub_1002863C4(*(v2 + 16), *(v2 + 17), *(v2 + 18), *(v2 + 24), *(v2 + 32), 0, v3, result, a2);
  }

  __break(1u);
  return result;
}

char *sub_1002863C4(char *result, char a2, char a3, void (*a4)(uint64_t, char *), uint64_t a5, char *a6, char *a7, uint64_t a8, uint64_t a9)
{
  if (a6 == a7)
  {
    return result;
  }

  v11 = a6;
  v15 = result;
  if (!a2)
  {
    return sub_100286B80(v15, a3 & 1, v11, a7, a8, a9, a4, a5, "\r\n", "");
  }

  if (a2 != 1)
  {
    v45 = 10;
    while (1)
    {
      if (v15 > 1u)
      {
        if (v15 == 2)
        {
          if (!a8)
          {
            goto LABEL_115;
          }

          v36 = &v11[a8];
          result = memchr(&v11[a8], 10, a7 - v11);
          if (!result)
          {
            goto LABEL_115;
          }

          v37 = result - v36;
          if (result - v36 < 0)
          {
            goto LABEL_115;
          }

          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_130;
          }

          if (a7 - v11 < v38)
          {
            goto LABEL_115;
          }

          v34 = &v11[v37];
          if (__OFADD__(v37, v11))
          {
            goto LABEL_138;
          }

          v35 = &v11[v38];
          if (__OFADD__(v38, v11))
          {
            goto LABEL_148;
          }

          if (v38 < v37 || v35 < v34)
          {
            goto LABEL_156;
          }
        }

        else
        {
          if (!a8)
          {
            goto LABEL_115;
          }

          v42 = &v11[a8];
          result = memchr(&v11[a8], 10, a7 - v11);
          if (!result)
          {
            goto LABEL_115;
          }

          v43 = result - v42;
          if (result - v42 < 0)
          {
            goto LABEL_115;
          }

          v44 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_134;
          }

          if (a7 - v11 < v44)
          {
            goto LABEL_115;
          }

          v34 = &v11[v43];
          if (__OFADD__(v43, v11))
          {
            goto LABEL_136;
          }

          v35 = &v11[v44];
          if (__OFADD__(v44, v11))
          {
            goto LABEL_146;
          }

          if (v44 < v43 || v35 < v34)
          {
            goto LABEL_154;
          }

          if (v11 < v34)
          {
            if (v34 > a7)
            {
              goto LABEL_160;
            }

            if (v34[a8 - 1] == 13)
            {
              --v34;
            }
          }
        }
      }

      else if (v15)
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v39 = &v11[a8];
        result = memchr(&v11[a8], 13, a7 - v11);
        if (!result)
        {
          goto LABEL_115;
        }

        v40 = result - v39;
        if (result - v39 < 0)
        {
          goto LABEL_115;
        }

        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_132;
        }

        if (a7 - v11 < v41)
        {
          goto LABEL_115;
        }

        v34 = &v11[v40];
        if (__OFADD__(v40, v11))
        {
          goto LABEL_140;
        }

        v35 = &v11[v41];
        if (__OFADD__(v41, v11))
        {
          goto LABEL_144;
        }

        if (v41 < v40 || v35 < v34)
        {
          goto LABEL_152;
        }
      }

      else
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v31 = &v11[a8];
        result = memmem(&v11[a8], a7 - v11, "\r\n", 2uLL);
        if (!result)
        {
          goto LABEL_115;
        }

        v32 = result - v31;
        if (result - v31 < 0)
        {
          goto LABEL_115;
        }

        v33 = v32 + 2;
        if (__OFADD__(v32, 2))
        {
          goto LABEL_128;
        }

        if (a7 - v11 < v33)
        {
          goto LABEL_115;
        }

        v34 = &v11[v32];
        if (__OFADD__(v32, v11))
        {
          goto LABEL_142;
        }

        v35 = &v11[v33];
        if (__OFADD__(v33, v11))
        {
          goto LABEL_150;
        }

        if (v33 < v32 || v35 < v34)
        {
          goto LABEL_158;
        }
      }

      if (v34 < v11)
      {
        goto LABEL_122;
      }

      if (v34 > a7)
      {
        goto LABEL_124;
      }

      if (v34 != v11)
      {
        a4(&v11[a8], &v34[a8]);
      }

      result = (a4)(&v45, &v46);
      if (v35 > a7)
      {
        goto LABEL_126;
      }

      v30 = v35 < v11;
      v11 = v35;
      if (v30)
      {
        __break(1u);
LABEL_115:
        if (a7 != v11)
        {
          if (a8)
          {
            result = (a4)(&v11[a8], &a7[a8]);
          }

          if (a3)
          {
            return (a4)(&v45, &v46);
          }
        }

        return result;
      }
    }
  }

  v45 = 13;
  do
  {
    if (v15 > 1u)
    {
      if (v15 == 2)
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v21 = &v11[a8];
        result = memchr(&v11[a8], 10, a7 - v11);
        if (!result)
        {
          goto LABEL_115;
        }

        v22 = result - v21;
        if (result - v21 < 0)
        {
          goto LABEL_115;
        }

        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_129;
        }

        if (a7 - v11 < v23)
        {
          goto LABEL_115;
        }

        v19 = &v11[v22];
        if (__OFADD__(v22, v11))
        {
          goto LABEL_137;
        }

        v20 = &v11[v23];
        if (__OFADD__(v23, v11))
        {
          goto LABEL_147;
        }

        if (v23 < v22 || v20 < v19)
        {
          goto LABEL_155;
        }
      }

      else
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v27 = &v11[a8];
        result = memchr(&v11[a8], 10, a7 - v11);
        if (!result)
        {
          goto LABEL_115;
        }

        v28 = result - v27;
        if (result - v27 < 0)
        {
          goto LABEL_115;
        }

        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_133;
        }

        if (a7 - v11 < v29)
        {
          goto LABEL_115;
        }

        v19 = &v11[v28];
        if (__OFADD__(v28, v11))
        {
          goto LABEL_135;
        }

        v20 = &v11[v29];
        if (__OFADD__(v29, v11))
        {
          goto LABEL_145;
        }

        if (v29 < v28 || v20 < v19)
        {
          goto LABEL_153;
        }

        if (v11 < v19)
        {
          if (v19 > a7)
          {
            goto LABEL_159;
          }

          if (v19[a8 - 1] == 13)
          {
            --v19;
          }
        }
      }
    }

    else if (v15)
    {
      if (!a8)
      {
        goto LABEL_115;
      }

      v24 = &v11[a8];
      result = memchr(&v11[a8], 13, a7 - v11);
      if (!result)
      {
        goto LABEL_115;
      }

      v25 = result - v24;
      if (result - v24 < 0)
      {
        goto LABEL_115;
      }

      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_131;
      }

      if (a7 - v11 < v26)
      {
        goto LABEL_115;
      }

      v19 = &v11[v25];
      if (__OFADD__(v25, v11))
      {
        goto LABEL_139;
      }

      v20 = &v11[v26];
      if (__OFADD__(v26, v11))
      {
        goto LABEL_143;
      }

      if (v26 < v25 || v20 < v19)
      {
        goto LABEL_151;
      }
    }

    else
    {
      if (!a8)
      {
        goto LABEL_115;
      }

      v16 = &v11[a8];
      result = memmem(&v11[a8], a7 - v11, "\r\n", 2uLL);
      if (!result)
      {
        goto LABEL_115;
      }

      v17 = result - v16;
      if (result - v16 < 0)
      {
        goto LABEL_115;
      }

      v18 = v17 + 2;
      if (__OFADD__(v17, 2))
      {
        goto LABEL_127;
      }

      if (a7 - v11 < v18)
      {
        goto LABEL_115;
      }

      v19 = &v11[v17];
      if (__OFADD__(v17, v11))
      {
        goto LABEL_141;
      }

      v20 = &v11[v18];
      if (__OFADD__(v18, v11))
      {
        goto LABEL_149;
      }

      if (v18 < v17 || v20 < v19)
      {
        goto LABEL_157;
      }
    }

    if (v19 < v11)
    {
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
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
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
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
    }

    if (v19 > a7)
    {
      goto LABEL_123;
    }

    if (v19 != v11)
    {
      a4(&v11[a8], &v19[a8]);
    }

    result = (a4)(&v45, &v46);
    if (v20 > a7)
    {
      goto LABEL_125;
    }

    v30 = v20 < v11;
    v11 = v20;
  }

  while (!v30);
  __break(1u);
  return sub_100286B80(v15, a3 & 1, v11, a7, a8, a9, a4, a5, "\r\n", "");
}

uint64_t sub_100286984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message.Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100286A4C(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  v6 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  return v3(a1, a1 + v6);
}

unint64_t sub_100286AB4()
{
  result = qword_1005D6868;
  if (!qword_1005D6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6868);
  }

  return result;
}

unint64_t sub_100286B0C()
{
  result = qword_1005D6870;
  if (!qword_1005D6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6870);
  }

  return result;
}

char *sub_100286B80(char *result, char a2, char *a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, char *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3 != a4)
  {
    v13 = a3;
    v14 = result;
    do
    {
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          if (!a5)
          {
            goto LABEL_57;
          }

          v20 = a5 + v13;
          result = memchr((a5 + v13), 10, &a4[-v13]);
          if (!result)
          {
            goto LABEL_57;
          }

          v21 = &result[-v20];
          if (&result[-v20] < 0)
          {
            goto LABEL_57;
          }

          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_67;
          }

          if (&a4[-v13] < v22)
          {
            goto LABEL_57;
          }

          v18 = &v21[v13];
          if (__OFADD__(v21, v13))
          {
            goto LABEL_71;
          }

          v19 = &v22[v13];
          if (__OFADD__(v22, v13))
          {
            goto LABEL_76;
          }

          if (v22 < v21 || v19 < v18)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (!a5)
          {
            goto LABEL_57;
          }

          v26 = a5 + v13;
          result = memchr((a5 + v13), 10, &a4[-v13]);
          if (!result)
          {
            goto LABEL_57;
          }

          v27 = &result[-v26];
          if (&result[-v26] < 0)
          {
            goto LABEL_57;
          }

          v28 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_69;
          }

          if (&a4[-v13] < v28)
          {
            goto LABEL_57;
          }

          v18 = &v27[v13];
          if (__OFADD__(v27, v13))
          {
            goto LABEL_70;
          }

          v19 = &v28[v13];
          if (__OFADD__(v28, v13))
          {
            goto LABEL_75;
          }

          if (v28 < v27 || v19 < v18)
          {
            goto LABEL_79;
          }

          if (v13 < v18)
          {
            if (v18 > a4)
            {
              goto LABEL_82;
            }

            if (v18[a5 - 1] == 13)
            {
              --v18;
            }
          }
        }
      }

      else if (v14)
      {
        if (!a5)
        {
          goto LABEL_57;
        }

        v23 = a5 + v13;
        result = memchr((a5 + v13), 13, &a4[-v13]);
        if (!result)
        {
          goto LABEL_57;
        }

        v24 = &result[-v23];
        if (&result[-v23] < 0)
        {
          goto LABEL_57;
        }

        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_68;
        }

        if (&a4[-v13] < v25)
        {
          goto LABEL_57;
        }

        v18 = &v24[v13];
        if (__OFADD__(v24, v13))
        {
          goto LABEL_72;
        }

        v19 = &v25[v13];
        if (__OFADD__(v25, v13))
        {
          goto LABEL_74;
        }

        if (v25 < v24 || v19 < v18)
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (!a5)
        {
          goto LABEL_57;
        }

        v15 = a5 + v13;
        result = memmem((a5 + v13), &a4[-v13], "\r\n", 2uLL);
        if (!result)
        {
          goto LABEL_57;
        }

        v16 = &result[-v15];
        if (&result[-v15] < 0)
        {
          goto LABEL_57;
        }

        v17 = v16 + 2;
        if (__OFADD__(v16, 2))
        {
          goto LABEL_66;
        }

        if (&a4[-v13] < v17)
        {
          goto LABEL_57;
        }

        v18 = &v16[v13];
        if (__OFADD__(v16, v13))
        {
          goto LABEL_73;
        }

        v19 = &v17[v13];
        if (__OFADD__(v17, v13))
        {
          goto LABEL_77;
        }

        if (v17 < v16 || v19 < v18)
        {
          goto LABEL_81;
        }
      }

      if (v18 < v13)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        return result;
      }

      if (v18 > a4)
      {
        goto LABEL_64;
      }

      if (v18 != v13)
      {
        a7(a5 + v13, &v18[a5]);
      }

      result = (a7)(a9, a10);
      if (v19 > a4)
      {
        goto LABEL_65;
      }

      v29 = v19 < v13;
      v13 = v19;
    }

    while (!v29);
    __break(1u);
LABEL_57:
    if (a4 != v13)
    {
      if (a5)
      {
        result = (a7)(a5 + v13, &a4[a5]);
      }

      if (a2)
      {
        return (a7)(a9, a10);
      }
    }
  }

  return result;
}

uint64_t static ListID.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t sub_100286ECC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2 - result;
  }

  else
  {
    v2 = 0;
  }

  if (v2 < 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = 0;
  v5 = v2 - 1;
  while (1)
  {
LABEL_6:
    if (v4 == v2)
    {
LABEL_15:
      v9 = 1;
      v7 = v2;
      if (v2 < v4)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
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
        __break(1u);
        goto LABEL_63;
      }
    }

    else
    {
      v6 = v2 <= v4 ? v4 : v2;
      v7 = v4;
      while (1)
      {
        if (v6 == v7)
        {
          __break(1u);
          goto LABEL_55;
        }

        v8 = *(result + v7);
        if (v8 == 60 || v8 == 34)
        {
          break;
        }

        if (v2 == ++v7)
        {
          goto LABEL_15;
        }
      }

      v9 = 0;
      if (v7 < v4)
      {
        goto LABEL_55;
      }
    }

    if (v2 < v7)
    {
      goto LABEL_56;
    }

    if (v9)
    {
      return 0;
    }

    if (v7 >= v2)
    {
      goto LABEL_57;
    }

    v10 = *(result + v7);
    if (v10 != 34)
    {
      break;
    }

    v4 = v2;
    v11 = v7;
    if (v7 + 1 != v2)
    {
      while (1)
      {
        if (v5 == v11)
        {
          __break(1u);
          goto LABEL_51;
        }

        if (*(result + 1 + v11) == 34)
        {
          break;
        }

        if (v5 == ++v11)
        {
          v4 = v2;
          goto LABEL_6;
        }
      }

      if (v11 < v7)
      {
        goto LABEL_60;
      }

      v4 = v11 + 2;
    }
  }

  if (v10 != 60)
  {
    return 0;
  }

  v12 = v7 + 1;
  v13 = v7 + 1;
  while (1)
  {
    if (v2 == v13)
    {
      goto LABEL_38;
    }

    if (*(result + v13) == 62)
    {
      break;
    }

    if (__OFADD__(v13, 1))
    {
      goto LABEL_58;
    }

    if (v2 < v13 + 1)
    {
      goto LABEL_59;
    }

    v14 = v13 + 1 <= v13;
    ++v13;
    if (v14)
    {
      __break(1u);
LABEL_38:
      v15 = v2;
      goto LABEL_40;
    }
  }

  v15 = v13;
LABEL_40:
  if (v15 <= v7)
  {
    goto LABEL_64;
  }

  result = 0;
  if (v12 != v15 && v2 != v13)
  {
    if (v15 >= v2)
    {
      goto LABEL_65;
    }

    if (*(v3 + v15) == 62)
    {
      while (v12 < v15)
      {
        if (v12 >= v2)
        {
          goto LABEL_62;
        }

        if (*(v3 + v12) - 127 < 0xFFFFFFA2)
        {
LABEL_51:

          return 0;
        }

        ++v12;
        v16._countAndFlagsBits = sub_1004A58E4();
        sub_1004A5984(v16);

        if (v15 == v12)
        {
          return 0;
        }
      }

      goto LABEL_61;
    }

    return 0;
  }

  return result;
}

Swift::Int ListID.hashValue.getter()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

unint64_t sub_10028716C()
{
  result = qword_1005D6878;
  if (!qword_1005D6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6878);
  }

  return result;
}

char *sub_1002871D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isStackAllocationSafe = a2 - a1;
  if (!isStackAllocationSafe)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = a4 - a3;
  if (!a3)
  {
    v10 = 0;
  }

  v11 = a1;
  while (1)
  {
    if (v11 >= a2)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (a1 < 0 || v11 >= v10)
    {
      goto LABEL_25;
    }

    v12 = *(a3 + v11);
    if (v12 == 13 || v12 == 10)
    {
      break;
    }

    if (a2 == ++v11)
    {
      if (!a3)
      {
        return _swiftEmptyArrayStorage;
      }

      result = sub_10015BEAC(isStackAllocationSafe, 0);
      v14 = a2 - a1;
      if (a2 <= a1)
      {
        __break(1u);
        return result;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = result;
        memmove(result + 32, (a3 + a1), v14);
        return v15;
      }

LABEL_31:
      __break(1u);
    }
  }

  if (v10 < a2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a2 - a1 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (a2 - a1 < 1025)
  {
LABEL_21:
    __chkstk_darwin(isStackAllocationSafe);
    result = sub_100288504(&v19 - v16, a1, a2, a3);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

LABEL_27:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_21;
  }

  v17 = swift_slowAlloc();
  v18 = sub_100288504(v17, a1, a2, a3);

  if (!v4)
  {
    return v18;
  }

  return result;
}

void sub_1002873B8(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == isStackAllocationSafe)
  {
LABEL_13:
    if (a3)
    {
      v12 = (a3 + a2);
    }

    else
    {
      v12 = 0;
    }

    if (a3)
    {
      v13 = (a3 + isStackAllocationSafe);
    }

    else
    {
      v13 = 0;
    }

    sub_100269CE4(v13, v12, &v17);
    return;
  }

  v8 = a4 - a3;
  if (!a3)
  {
    v8 = 0;
  }

  v9 = isStackAllocationSafe;
  while (1)
  {
    if (v9 >= a2)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (isStackAllocationSafe < 0 || v9 >= v8)
    {
      goto LABEL_27;
    }

    v10 = *(a3 + v9);
    if (v10 == 13 || v10 == 10)
    {
      break;
    }

    if (a2 == ++v9)
    {
      goto LABEL_13;
    }
  }

  if (v8 < a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 - isStackAllocationSafe < 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v7 = isStackAllocationSafe;
  v5 = a2;
  v4 = a3;
  if (a2 - isStackAllocationSafe >= 1025)
  {
LABEL_29:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      goto LABEL_23;
    }

    v15 = swift_slowAlloc();
    sub_1002885B8(v15, v7, v5, v4);
LABEL_32:

    return;
  }

LABEL_23:
  __chkstk_darwin(isStackAllocationSafe);
  sub_1002885B8(&v16 - v14, v7, v5, v4);
  if (v6)
  {
    swift_willThrow();
  }
}

uint64_t sub_100287598(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a2 == isStackAllocationSafe)
  {
LABEL_13:
    if (a3)
    {
      v16 = a3 + a2;
    }

    else
    {
      v16 = 0;
    }

    if (a3)
    {
      v17 = a3 + isStackAllocationSafe;
    }

    else
    {
      v17 = 0;
    }

    return a5(v17, v16);
  }

  v12 = a4 - a3;
  if (!a3)
  {
    v12 = 0;
  }

  v13 = isStackAllocationSafe;
  while (1)
  {
    if (v13 >= a2)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (isStackAllocationSafe < 0 || v13 >= v12)
    {
      goto LABEL_27;
    }

    v14 = *(a3 + v13);
    if (v14 == 13 || v14 == 10)
    {
      break;
    }

    if (a2 == ++v13)
    {
      goto LABEL_13;
    }
  }

  if (v12 < a2)
  {
    goto LABEL_28;
  }

  v11 = a2 - isStackAllocationSafe;
  if (a2 - isStackAllocationSafe < 0)
  {
    __break(1u);
  }

  v10 = isStackAllocationSafe;
  v9 = a2;
  v7 = a4;
  v8 = a3;
  v5 = a5;
  if (v11 < 1025)
  {
    goto LABEL_23;
  }

LABEL_29:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v20 = swift_slowAlloc();
    sub_10028815C(v20, v20 + v11, v10, v9, v8, v7, v5);
  }

LABEL_23:
  __chkstk_darwin(isStackAllocationSafe);
  result = sub_10028815C(&v21 - v19, &v21 + v11 - v19, v10, v9, v8, v7, v5);
  if (v6)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100287784(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  LODWORD(v5) = result;
  if (result <= 1u)
  {
    if (result)
    {
      goto LABEL_20;
    }

    v6 = v1[3] - v4;
    if (!v4)
    {
      v6 = 0;
    }

    if ((v2 & 0x8000000000000000) != 0 || v6 < v2)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if ((v3 & 0x8000000000000000) != 0 || v6 < v3)
    {
      goto LABEL_46;
    }

    if ((v3 - v2) < 2)
    {
      return 0;
    }

    if (v3 <= v2)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (*(v4 + v2) != 13)
    {
      return 0;
    }

    v5 = v2 + 1;
    if (v2 + 1 >= v3)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v4 = *(v4 + v5);
    if (v4 != 10)
    {
      return 0;
    }

    v2 += 2;
    if (v3 >= v2)
    {
      goto LABEL_42;
    }

    __break(1u);
  }

  if (v5 == 2)
  {
    if (v3 == v2)
    {
      return 0;
    }

    if (v3 <= v2)
    {
      __break(1u);
LABEL_20:
      if (v3 != v2)
      {
        if (v3 > v2)
        {
          if (*(v4 + v2) == 13)
          {
            goto LABEL_41;
          }

          return 0;
        }

        goto LABEL_49;
      }

      return 0;
    }

LABEL_40:
    if (*(v4 + v2) == 10)
    {
LABEL_41:
      ++v2;
      goto LABEL_42;
    }

    return 0;
  }

  v7 = v1[3] - v4;
  if (!v4)
  {
    v7 = 0;
  }

  if ((v2 & 0x8000000000000000) != 0 || v7 < v2)
  {
    goto LABEL_45;
  }

  if ((v3 & 0x8000000000000000) != 0 || v7 < v3)
  {
    goto LABEL_47;
  }

  if ((v3 - v2) < 2)
  {
    if (v3 - v2 != 1)
    {
      return 0;
    }

LABEL_39:
    if (v3 > v2)
    {
      goto LABEL_40;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v3 <= v2)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (*(v4 + v2) != 13)
  {
    goto LABEL_39;
  }

  if (v2 + 1 < v3)
  {
    if (*(v4 + v2 + 1) != 10)
    {
      goto LABEL_39;
    }

    v2 += 2;
    if (v3 < v2)
    {
      __break(1u);
      goto LABEL_39;
    }

LABEL_42:
    *v1 = v2;
    return 1;
  }

LABEL_53:
  __break(1u);
  return result;
}

char *sub_100287910(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return sub_100287A58("\r\n", 2uLL, a2, a3, a4);
    }

    v6 = 13;
    return sub_100287B04(v6, a2, a3, a4);
  }

  v6 = 10;
  if (v4 == 2)
  {
    return sub_100287B04(v6, a2, a3, a4);
  }

  result = sub_100287B04(0xAu, a2, a3, a4);
  if ((v11 & 1) == 0 && result > a2)
  {
    if (result > a3)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (result[a4 - 1] == 13)
    {
      if (v10 >= (result - 1))
      {
        return --result;
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1002879E4(unsigned __int8 a1)
{
  result = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *v1;
  if (*v1 != v4)
  {
    if (v4 <= result)
    {
      v8 = *v1;
    }

    else
    {
      v8 = v1[1];
    }

    v7 = *v1;
    while (1)
    {
      if (v8 == v7)
      {
        __break(1u);
        goto LABEL_14;
      }

      if (*(v5 + v7) == a1)
      {
        break;
      }

      *v1 = ++v7;
      v1[1] = v4;
      v1[2] = v5;
      if (v4 == v7)
      {
        v7 = v4;
        break;
      }
    }

    if (v7 >= result)
    {
      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_11:
  if (v4 < v7)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

char *sub_100287A58(void *__little, size_t __little_len, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  v7 = a5 + a3;
  v8 = a4 - a3;
  result = memmem((a5 + a3), a4 - a3, __little, __little_len);
  if (!result)
  {
    return result;
  }

  v10 = &result[-v7];
  if (&result[-v7] < 0)
  {
    return 0;
  }

  v11 = &v10[__little_len];
  if (__OFADD__(v10, __little_len))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < v11)
  {
    return 0;
  }

  result = &v10[a3];
  if (__OFADD__(v10, a3))
  {
    goto LABEL_14;
  }

  if (__OFADD__(v11, a3))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v11 < v10 || &v11[a3] < result)
  {
    goto LABEL_16;
  }

  return result;
}

char *sub_100287B04(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a4 + a2;
  v6 = a3 - a2;
  result = memchr((a4 + a2), a1, a3 - a2);
  if (!result)
  {
    return result;
  }

  v8 = &result[-v5];
  if (&result[-v5] < 0)
  {
    return 0;
  }

  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 < v9)
  {
    return 0;
  }

  result = &v8[a2];
  if (__OFADD__(v8, a2))
  {
    goto LABEL_14;
  }

  if (__OFADD__(v9, a2))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v9 < v8 || &v9[a2] < result)
  {
    goto LABEL_16;
  }

  return result;
}

char *sub_100287BA8(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v7 = "\r\n\r\n";
      v8 = 4;
      return sub_100287A58(v7, v8, a2, a3, a4);
    }

    v7 = "\r\r";
LABEL_7:
    v8 = 2;
    return sub_100287A58(v7, v8, a2, a3, a4);
  }

  if (a1 == 2)
  {
    v7 = "\n\n";
    goto LABEL_7;
  }

  if (!a4)
  {
    return 0;
  }

  v10 = a4 + a2;
  v11 = a3 - a2;
  result = memchr((a4 + a2), 10, a3 - a2);
  if (!result)
  {
    return result;
  }

  v13 = &result[-v10];
  if (&result[-v10] < 0)
  {
    return 0;
  }

  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v11 < v14)
  {
    return 0;
  }

  v15 = &v13[a2];
  if (__OFADD__(v13, a2))
  {
    goto LABEL_48;
  }

  v16 = &v14[a2];
  if (__OFADD__(v14, a2))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v14 < v13 || v16 < v15)
  {
    goto LABEL_50;
  }

  if (v15 > a2)
  {
    if (v15 > a3)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (*(a4 + v15 - 1) == 13)
    {
      --v15;
    }
  }

  if (v16 > a3)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v16 < a2)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    if (v12 >= result && v12 <= a3)
    {
      if (v12 >= v16)
      {
        return result;
      }

LABEL_54:
      __break(1u);
      return result;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  while (1)
  {
    v17 = v15;
    v18 = a4 + v16;
    result = memchr((a4 + v16), 10, a3 - v16);
    if (!result)
    {
      return result;
    }

    v19 = &result[-v18];
    if (&result[-v18] < 0)
    {
      return 0;
    }

    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      goto LABEL_47;
    }

    if (a3 - v16 < v20)
    {
      return 0;
    }

    v15 = &v19[v16];
    if (__OFADD__(v19, v16))
    {
      goto LABEL_48;
    }

    v12 = v20 + v16;
    if (__OFADD__(v20, v16))
    {
      goto LABEL_49;
    }

    if (v20 < v19 || v12 < v15)
    {
      goto LABEL_50;
    }

    result = v17;
    if (v16 < v15)
    {
      if (v15 > a3)
      {
        goto LABEL_52;
      }

      if (*(a4 + v15 - 1) == 13)
      {
        --v15;
      }
    }

    if (v16 == v15)
    {
      goto LABEL_43;
    }

    if (v12 > a3)
    {
      goto LABEL_51;
    }

    v21 = v12 < v16;
    v16 += v20;
    if (v21)
    {
      goto LABEL_42;
    }
  }
}

void sub_100287DA8()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 != v2)
  {
    v3 = v0[2];
    if (v2 <= v1)
    {
      v4 = *v0;
    }

    else
    {
      v4 = v0[1];
    }

    while (v4 != v1)
    {
      v5 = *(v3 + v1);
      v6 = v5 > 0x20;
      v7 = (1 << v5) & 0x100002600;
      if (!v6 && v7 != 0)
      {
        *v0 = ++v1;
        v0[1] = v2;
        if (v2 != v1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_100287E04(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = 0uLL;
  if (*v1 == v3)
  {
LABEL_13:
    v2 = 0;
    v7 = 0;
    v13 = 1;
LABEL_17:
    *a1 = v2;
    *(a1 + 8) = v7;
    *(a1 + 16) = v4;
    *(a1 + 32) = v13;
    return;
  }

  v5 = *(v1 + 1);
  v6 = v1[2];
  v7 = *v1;
  do
  {
    if (v7 >= v3)
    {
      __break(1u);
      goto LABEL_19;
    }

    v8 = *(v6 + v7);
    if ((v8 - 127) < 0xFFFFFFA2)
    {
      goto LABEL_12;
    }

    v9 = v8 - 34;
    v10 = v9 > 0x3B;
    v11 = (1 << v9) & 0xE0000007F0024C1;
    if (!v10 && v11 != 0)
    {
      goto LABEL_12;
    }

    *v1 = ++v7;
    v1[1] = v3;
    v1[2] = v6;
  }

  while (v3 != v7);
  v7 = v3;
LABEL_12:
  if (v2 == v7)
  {
    goto LABEL_13;
  }

  if (v7 < v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 >= v7)
  {
    v13 = 0;
    v4 = v5;
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_100287EC4(unsigned __int8 a1, unsigned __int8 a2)
{
  result = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = *v2;
  if (*v2 != v6)
  {
    if (v6 <= result)
    {
      v10 = *v2;
    }

    else
    {
      v10 = v2[1];
    }

    v9 = *v2;
    while (1)
    {
      if (v10 == v9)
      {
        __break(1u);
        goto LABEL_17;
      }

      if (*(v7 + v9) == a1 && (result >= v9 || *(v7 + v9 - 1) != a2))
      {
        break;
      }

      *v2 = ++v9;
      v2[1] = v6;
      v2[2] = v7;
      if (v6 == v9)
      {
        v9 = v6;
        break;
      }
    }

    if (v9 >= result)
    {
      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_14:
  if (v6 < v9)
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_100287F60(uint64_t result)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  if (result <= 1u)
  {
    if (!result)
    {
      v6 = v5 - v4;
      if (!v4)
      {
        v6 = 0;
      }

      if ((v3 & 0x8000000000000000) == 0 && v6 >= v3)
      {
        if ((v2 & 0x8000000000000000) == 0 && v6 >= v2)
        {
          if (v2 - v3 >= 2)
          {
            v7 = v2 - 2;
            if (v2 - 2 >= v3)
            {
              if (*(v4 + v7) == 13 && *(v4 + v2 - 1) == 10)
              {
                goto LABEL_49;
              }

              return 0;
            }

            goto LABEL_63;
          }

          return 0;
        }

        goto LABEL_57;
      }

      __break(1u);
LABEL_56:
      __break(1u);
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
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v2 == v3)
    {
      return 0;
    }

    v7 = v2 - 1;
    if (__OFSUB__(v2, 1))
    {
      goto LABEL_60;
    }

    v10 = v5 - v4;
    if (!v4)
    {
      v10 = 0;
    }

    v11 = v7 >= v2 || v7 < v3;
    if (v11 || v7 < 0 || v7 >= v10)
    {
      goto LABEL_62;
    }

    if (*(v4 + v7) != 13)
    {
      return 0;
    }

LABEL_49:
    v1[1] = v7;
    return 1;
  }

  if (result == 2)
  {
    if (v2 == v3)
    {
      return 0;
    }

    v7 = v2 - 1;
    if (__OFSUB__(v2, 1))
    {
      goto LABEL_59;
    }

    v8 = v5 - v4;
    if (!v4)
    {
      v8 = 0;
    }

    v9 = v7 >= v2 || v7 < v3;
    if (v9 || v7 < 0 || v7 >= v8)
    {
      goto LABEL_61;
    }

    if (*(v4 + v7) != 10)
    {
      return 0;
    }

    goto LABEL_49;
  }

  v12 = v5 - v4;
  if (!v4)
  {
    v12 = 0;
  }

  if (v3 < 0 || v12 < v3)
  {
    goto LABEL_56;
  }

  if (v2 < 0 || v12 < v2)
  {
    goto LABEL_58;
  }

  if (v2 - v3 < 2)
  {
LABEL_50:
    result = sub_1002A8574(*v1, v1[1], v1[2], v1[3]);
    if ((result & 0x1FF) == 0xA)
    {
      if (v2 > v3)
      {
        *v1 = v3;
        v1[1] = v2 - 1;
        v1[2] = v4;
        v1[3] = v5;
        return 1;
      }

      goto LABEL_65;
    }

    return 0;
  }

  v7 = v2 - 2;
  if (v2 - 2 >= v3)
  {
    if (*(v4 + v7) == 13 && *(v4 + v2 - 1) == 10)
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_10028815C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v7 = 0;
  v8 = a4 - a3;
  if (a4 <= a3)
  {
LABEL_11:
    v14 = 0;
    v15 = 0;
    if (!result)
    {
      return a7(v15, v14);
    }

    goto LABEL_15;
  }

  v9 = (a5 + a3);
  do
  {
    v11 = *v9++;
    v10 = v11;
    if (v11 != 13 && v10 != 10)
    {
      *(result + v7) = v10;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    --v8;
  }

  while (v8);
  if (result)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_15:
      v14 = v7 + result;
      v15 = result;
      return a7(v15, v14);
    }

    __break(1u);
  }

  else if ((v7 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = 0;
    return a7(v15, v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002881FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

void *sub_100288230(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr))
{
  v6 = 0;
  v7 = a3 - a2;
  if (a3 <= a2)
  {
    goto LABEL_12;
  }

  v8 = (a4 + a2);
  while (1)
  {
    v10 = *v8++;
    v9 = v10;
    if (v10 != 13 && v9 != 10)
    {
      *(result + v6) = v9;
      if (__OFADD__(v6++, 1))
      {
        break;
      }
    }

    if (!--v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_12:
    result = a5(&var1);
    if (!v5)
    {
      return var1;
    }
  }

  return result;
}

void *sub_1002882B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *(*a5)(_BYTE *__return_ptr, uint64_t, uint64_t))
{
  if (a2 == a1)
  {
LABEL_13:
    if (a3)
    {
      v10 = a3 + a2;
    }

    else
    {
      v10 = 0;
    }

    if (a3)
    {
      v11 = a3 + a1;
    }

    else
    {
      v11 = 0;
    }

    result = a5(&v27[7], v11, v10);
    if (!v5)
    {
      return v27[7];
    }
  }

  else
  {
    v6 = a4 - a3;
    if (!a3)
    {
      v6 = 0;
    }

    v7 = a1;
    while (1)
    {
      if (v7 >= a2)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (a1 < 0 || v7 >= v6)
      {
        goto LABEL_39;
      }

      v8 = *(a3 + v7);
      if (v8 == 13 || v8 == 10)
      {
        break;
      }

      if (a2 == ++v7)
      {
        goto LABEL_13;
      }
    }

    if (v6 < a2)
    {
      goto LABEL_41;
    }

    if (a2 - a1 < 0)
    {
      __break(1u);
    }

    if (a2 - a1 >= 1025)
    {
      goto LABEL_42;
    }

    do
    {
      v13 = __chkstk_darwin(a1);
      v15 = &v27[-v14];
      v16 = 0;
      while (1)
      {
        v17 = *(a3 + a1);
        if (v17 != 13 && v17 != 10)
        {
          v15[v16] = v17;
          if (__OFADD__(v16++, 1))
          {
            break;
          }
        }

        if (++a1 >= a2)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_33:
      if ((v16 & 0x8000000000000000) == 0)
      {
        (a5)(&v27[6], v15, &v15[v16], v13);
        if (v5)
        {
          return swift_willThrow();
        }

        else
        {
          return v27[6];
        }
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v20 = a1;
      v21 = a2;
      v22 = a5;
      v23 = a3;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      a1 = v20;
    }

    while ((isStackAllocationSafe & 1) != 0);
    v25 = swift_slowAlloc();
    v26 = sub_100288230(v25, v20, v21, v23, v22);

    if (!v5)
    {
      return v26;
    }
  }

  return result;
}

char *sub_100288504(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - a2;
  if (a3 <= a2)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = 0;
  v6 = (a4 + a2);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    if (v8 != 13 && v7 != 10)
    {
      result[v5] = v7;
      if (__OFADD__(v5++, 1))
      {
        break;
      }
    }

    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (!result)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    return _swiftEmptyArrayStorage;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v11 = result;
      v12 = sub_10015BEAC(v5, 0);
      memmove(v12 + 32, v11, v5);
      return v12;
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1002885B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3 - a2;
  if (a3 <= a2)
  {
    goto LABEL_12;
  }

  v6 = (a4 + a2);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    if (v8 != 13 && v7 != 10)
    {
      a1[v4] = v7;
      if (__OFADD__(v4++, 1))
      {
        break;
      }
    }

    if (!--v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_12:
    v11 = &a1[v4];
    if (a1)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    sub_100269CE4(a1, v12, &v13);
  }
}

uint64_t MediaType.init(type:subtype:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1004A5814();
  v12 = v10;
  if ((v11 != 0x72617069746C756DLL || v10 != 0xE900000000000074) && (sub_1004A6D34() & 1) == 0)
  {
    if (v11 == 0x746163696C707061 && v12 == 0xEB000000006E6F69 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 1;
    }

    else if (v11 == 0x6F69647561 && v12 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 2;
    }

    else if (v11 == 0x6567616D69 && v12 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 3;
    }

    else if (v11 == 0x6567617373656DLL && v12 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 4;
    }

    else if (v11 == 1954047348 && v12 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 5;
    }

    else if (v11 == 0x6F65646976 && v12 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 6;
    }

    else if (v11 == 1953394534 && v12 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 7;
    }

    else if (v11 == 0x656C706D617865 && v12 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 8;
    }

    else
    {
      if (v11 == 0x6C65646F6DLL && v12 == 0xE500000000000000)
      {
      }

      else
      {
        v18 = sub_1004A6D34();

        if ((v18 & 1) == 0)
        {
          v17 = 10;
          goto LABEL_19;
        }
      }

      v17 = 9;
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    a2 = 0;
    v17 = 0;
    a1 = a3;
    a3 = 0;
    goto LABEL_19;
  }

  v15 = sub_1004A5814();
  v16 = v14;
  if ((v15 != 0x646578696DLL || v14 != 0xE500000000000000) && (sub_1004A6D34() & 1) == 0)
  {
    if (v15 == 0x747365676964 && v16 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 2;
      goto LABEL_19;
    }

    if (v15 == 0x74616E7265746C61 && v16 == 0xEB00000000657669 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 3;
      goto LABEL_19;
    }

    if (v15 == 0x646574616C6572 && v16 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 4;
      goto LABEL_19;
    }

    if (v15 == 0x74726F706572 && v16 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 5;
      goto LABEL_19;
    }

    if (v15 == 0x64656E676973 && v16 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 6;
      goto LABEL_19;
    }

    if (v15 == 0x6574707972636E65 && v16 == 0xE900000000000064 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 7;
      goto LABEL_19;
    }

    if (v15 == 0x7461642D6D726F66 && v16 == 0xE900000000000061 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 8;
      goto LABEL_19;
    }

    if (v15 == 0x2D646578696D2D78 && v16 == 0xEF6563616C706572 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 9;
      goto LABEL_19;
    }

    if (v15 == 0x676E617265747962 && v16 == 0xE900000000000065)
    {

LABEL_86:

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 10;
      goto LABEL_19;
    }

    v19 = sub_1004A6D34();

    if (v19)
    {
      goto LABEL_86;
    }

    v17 = 0;
LABEL_14:
    a1 = a3;
    a2 = a4;
    a3 = 0;
    a4 = 0;
    goto LABEL_19;
  }

  a1 = 0;
  a3 = 0;
  a4 = 0;
  v17 = 0;
  a2 = 1;
LABEL_19:
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v17;
  return result;
}

uint64_t sub_100288E48(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x74616E7265746C61;
    v7 = 0x676E617265747962;
    v8 = 0x747365676964;
    if (a1 != 3)
    {
      v8 = 0x6574707972636E65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x756F64656C707061;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x646574616C6572;
    v2 = 0x74726F706572;
    if (a1 != 9)
    {
      v2 = 0x64656E676973;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7461642D6D726F66;
    v4 = 0x646578696DLL;
    if (a1 != 6)
    {
      v4 = 0x2D646578696D2D78;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100288FC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_100289074@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10028B90C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1002890A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100288E48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002890D0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1953394534;
    v6 = 0x656C706D617865;
    if (a1 != 8)
    {
      v6 = 0x6C65646F6DLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1954047348;
    if (a1 != 5)
    {
      v7 = 0x6F65646976;
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
    v1 = 0x72617069746C756DLL;
    v2 = 0x6F69647561;
    v3 = 0x6567616D69;
    if (a1 != 3)
    {
      v3 = 0x6567617373656DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746163696C707061;
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

uint64_t sub_10028920C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1004A6D34();
  }

  return v12 & 1;
}

Swift::Int sub_1002892B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1004A6E94();
  a3(v5);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10028933C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1002893AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1004A6E94();
  a4(v6);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_100289414@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10028B958(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100289444@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002890D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static MediaType.uniformType(filename:mimeType:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v52 = a3;
  v5 = sub_10000C9C0(&qword_1005D6880, &qword_1004EC500);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v51 = sub_1004A4874();
  v11 = *(v51 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v51);
  v47 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v53 = &v45 - v16;
  __chkstk_darwin(v15);
  v48 = &v45 - v17;
  v18 = sub_1004A5734();
  v19 = [v18 pathExtension];

  sub_1004A5764();
  v46 = sub_1004A5814();
  v50 = v20;

  v21 = sub_1004A5734();
  v22 = [v21 pathExtension];

  sub_1004A5764();
  v23 = sub_1004A5814();
  v25 = v24;

  v54 = a1;
  if ((a1 != 0x746163696C707061 || a2 != 0xEF70697A2F6E6F69) && (sub_1004A6D34() & 1) == 0)
  {
    goto LABEL_16;
  }

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26 || v23 == 7367034 && v25 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {
    v27 = sub_1004A5734();
    v28 = [v27 stringByDeletingPathExtension];

    v29 = v51;
    if (!v28)
    {
      sub_1004A5764();
      v28 = sub_1004A5734();
    }

    v30 = [v28 pathExtension];

    sub_1004A5764();
    v23 = sub_1004A5814();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v25 = v32;
    }

    else
    {
      v23 = 7367034;

      v25 = 0xE300000000000000;
    }
  }

  else
  {
LABEL_16:
    v29 = v51;
  }

  v34 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v34 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {

    goto LABEL_24;
  }

  String.declaredUTTypeFromExtension.getter(v10);
  if ((*(v11 + 48))(v10, 1, v29) == 1)
  {

    sub_10028B4FC(v10);
LABEL_24:

    sub_1004A4824();
    v35 = v49;
    sub_1004A47D4();
    if ((*(v11 + 48))(v35, 1, v29) == 1)
    {

      sub_10028B4FC(v35);
      return (*(v11 + 56))(v52, 1, 1, v29);
    }

    v36 = *(v11 + 32);
    v37 = v47;
    v36(v47, v35, v29);
    v38 = sub_1004A4864();

    if (v38)
    {
      (*(v11 + 8))(v37, v29);
      return (*(v11 + 56))(v52, 1, 1, v29);
    }

    v44 = v52;
    v36(v52, v37, v29);
    return (*(v11 + 56))(v44, 0, 1, v29);
  }

  v51 = a2;
  v40 = *(v11 + 32);
  v40(v48, v10, v29);
  v41 = v53;
  sub_1004A4854();
  v42 = sub_1004A4844();
  v43 = *(v11 + 8);
  v43(v41, v29);
  if ((v42 & 1) == 0 && (v23 != v46 || v25 != v50) && (sub_1004A6D34() & 1) == 0)
  {
    if ((sub_1004A6D34() & 1) == 0)
    {
      String.declaredUTTypeFromExtension.getter(v52);

      return (v43)(v48, v29);
    }

    v43(v48, v29);

    goto LABEL_24;
  }

  v44 = v52;
  v40(v52, v48, v29);
  return (*(v11 + 56))(v44, 0, 1, v29);
}

uint64_t String.declaredUTTypeFromExtension.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_10000C9C0(&qword_1005D6880, &qword_1004EC500);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_1004A4874();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;

  sub_1004A4824();
  sub_1004A4804();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10028B4FC(v5);
LABEL_5:

    sub_1004A4834();
    return sub_1004A4804();
  }

  v12 = *(v7 + 32);
  v12(v11, v5, v6);
  if (sub_1004A4864())
  {
    (*(v7 + 8))(v11, v6);
    goto LABEL_5;
  }

  v12(a1, v11, v6);
  return (*(v7 + 56))(a1, 0, 1, v6);
}

uint64_t MediaType.description.getter()
{
  sub_100270CA4(v0, v2);
  v3._countAndFlagsBits = v0;
  return _sSS9IMAP2MIMEEySSAA9MediaTypeOcfC_0(v3);
}

uint64_t sub_100289D3C()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  sub_100270CA4(v4, v3);
  v6._countAndFlagsBits = v4;
  return _sSS9IMAP2MIMEEySSAA9MediaTypeOcfC_0(v6);
}

uint64_t MediaType.Multipart.description.getter(uint64_t a1, uint64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          return 0x2D646578696D2D78;
        case 10:
          return 0x676E617265747962;
        case 11:
          return 0x756F64656C707061;
      }

      goto LABEL_26;
    }

    if (a2 == 6)
    {
      return 0x64656E676973;
    }

    else if (a2 == 7)
    {
      return 0x6574707972636E65;
    }

    else
    {
      return 0x7461642D6D726F66;
    }
  }

  else
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0:
          sub_10026E848(a1, 0);
          return 0;
        case 1:
          return 0x646578696DLL;
        case 2:
          return 0x747365676964;
      }

LABEL_26:
      sub_10026E754(a1, a2);
      return a1;
    }

    if (a2 == 3)
    {
      return 0x74616E7265746C61;
    }

    else if (a2 == 4)
    {
      return 0x646574616C6572;
    }

    else
    {
      return 0x74726F706572;
    }
  }
}

uint64_t sub_100289F60()
{
  v1 = *v0;
  v2 = v0[1];
  sub_10026E754(v1, v2);

  return _sSS9IMAP2MIMEEySSAA9MediaTypeO9MultipartOcfC_0(v1, v2);
}

uint64_t sub_100289FA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027031C(0, a1, a2);
  v5 = sub_10027031C(1, a1, a2);
  v6 = sub_10027031C(2, a1, a2);
  v7 = sub_10027031C(3, a1, a2);
  if (v4 == 109 && v5 == 117 && v6 == 108 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_6;
  }

  if (v4 == 105)
  {
    if (v5 == 109 && v6 == 97 && v7 == 103)
    {
      v8 = a1;
      v9 = a2;
      v10 = 3;
      goto LABEL_6;
    }

LABEL_28:
    v12 = v5 == 101;
    goto LABEL_29;
  }

  if (v4 == 97)
  {
    if (v5 == 117)
    {
      if (v6 == 100 && v7 == 105)
      {
        v8 = a1;
        v9 = a2;
        v10 = 2;
        goto LABEL_6;
      }
    }

    else if (v5 == 112 && v6 == 112 && v7 == 108)
    {
      v8 = a1;
      v9 = a2;
      v10 = 1;
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  v12 = v5 == 101;
  if (v4 == 109 && v5 == 101 && v6 == 115 && v7 == 115)
  {
    v8 = a1;
    v9 = a2;
    v10 = 4;
    goto LABEL_6;
  }

LABEL_29:
  if (v4 > 0x73u)
  {
    if (v4 == 118)
    {
      if (v5 != 105 || v6 != 100 || v7 != 101)
      {
        return 10;
      }

      v8 = a1;
      v9 = a2;
      v10 = 6;
      goto LABEL_6;
    }

    if (v4 == 116)
    {
      if (v6 != 120)
      {
        v12 = 0;
      }

      if (!v12 || v7 != 116)
      {
        return 10;
      }

      v8 = a1;
      v9 = a2;
      v10 = 5;
      goto LABEL_6;
    }

    goto LABEL_43;
  }

  if (v4 == 101)
  {
    if (v5 != 120 || v6 != 97 || v7 != 109)
    {
      return 10;
    }

    v8 = a1;
    v9 = a2;
    v10 = 8;
    goto LABEL_6;
  }

  if (v4 != 102)
  {
LABEL_43:
    if (v4 != 109 || v5 != 111 || v6 != 100 || v7 != 101)
    {
      return 10;
    }

    v8 = a1;
    v9 = a2;
    v10 = 9;
LABEL_6:
    result = sub_10026ECB8(v8, v9, v10);
    if (result != 10)
    {
      return result;
    }

    return 10;
  }

  if (v5 == 111 && v6 == 110 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 7;
    goto LABEL_6;
  }

  return 10;
}

uint64_t sub_10028A2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027031C(0, a1, a2);
  v5 = sub_10027031C(1, a1, a2);
  v6 = sub_10027031C(2, a1, a2);
  v7 = sub_10027031C(3, a1, a2);
  if (v4 == 100)
  {
    if (v5 == 105 && v6 == 103 && v7 == 101)
    {
      v8 = a1;
      v9 = a2;
      v10 = 3;
      goto LABEL_16;
    }
  }

  else if (v4 == 109 && v5 == 105 && v6 == 120 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 6;
    goto LABEL_16;
  }

  if (v4 == 97 && v5 == 108 && v6 == 116 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_16;
  }

  if (v4 > 0x71u)
  {
    switch(v4)
    {
      case 'x':
        if (v5 != 45 || v6 != 109 || v7 != 105)
        {
          return 11;
        }

        v8 = a1;
        v9 = a2;
        v10 = 7;
        goto LABEL_16;
      case 's':
        if (v5 != 105 || v6 != 103 || v7 != 110)
        {
          return 11;
        }

        v8 = a1;
        v9 = a2;
        v10 = 10;
        goto LABEL_16;
      case 'r':
        if (v5 != 101)
        {
          return 11;
        }

        if (v6 == 112)
        {
          if (v7 != 111)
          {
            return 11;
          }

          v8 = a1;
          v9 = a2;
          v10 = 9;
        }

        else
        {
          if (v6 != 108 || v7 != 97)
          {
            return 11;
          }

          v8 = a1;
          v9 = a2;
          v10 = 8;
        }

LABEL_16:
        result = sub_10026EB84(v8, v9, v10);
        if (result != 11)
        {
          return result;
        }

        return 11;
    }

LABEL_43:
    if (v4 != 97 || v5 != 112 || v6 != 112 || v7 != 108)
    {
      return 11;
    }

    v8 = a1;
    v9 = a2;
    v10 = 1;
    goto LABEL_16;
  }

  if (v4 == 98)
  {
    if (v5 != 121 || v6 != 116 || v7 != 101)
    {
      return 11;
    }

    v8 = a1;
    v9 = a2;
    v10 = 2;
    goto LABEL_16;
  }

  if (v4 == 101)
  {
    if (v5 != 110 || v6 != 99 || v7 != 114)
    {
      return 11;
    }

    v8 = a1;
    v9 = a2;
    v10 = 4;
    goto LABEL_16;
  }

  if (v4 != 102)
  {
    goto LABEL_43;
  }

  if (v5 == 111 && v6 == 114 && v7 == 109)
  {
    v8 = a1;
    v9 = a2;
    v10 = 5;
    goto LABEL_16;
  }

  return 11;
}

uint64_t sub_10028A5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  result = sub_100289FA4(a1, a2);
  if (result <= 4u)
  {
    if (result <= 1u)
    {
      if (result)
      {
        v19 = 0;
        v18 = a5 & 1;
        v14 = 16;
        goto LABEL_42;
      }

      if ((a5 & 1) == 0)
      {
        result = sub_10028A2A8(a3, a4);
        if (result <= 5u)
        {
          if (result > 2u)
          {
            if (result == 3)
            {
              a4 = 0;
              v18 = 0;
              v19 = 0;
              v14 = 0;
              a3 = 3;
            }

            else
            {
              a4 = 0;
              v18 = 0;
              v19 = 0;
              v14 = 0;
              if (result == 4)
              {
                a3 = 4;
              }

              else
              {
                a3 = 5;
              }
            }
          }

          else if (result)
          {
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
            if (result == 1)
            {
              a3 = 1;
            }

            else
            {
              a3 = 2;
            }
          }

          else
          {
            a3 = 0;
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
          }

          goto LABEL_42;
        }

        if (result <= 8u)
        {
          if (result == 6)
          {
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
            a3 = result;
          }

          else
          {
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
            if (result == 7)
            {
              a3 = 7;
            }

            else
            {
              a3 = 8;
            }
          }

          goto LABEL_42;
        }

        if (result == 9)
        {
          a4 = 0;
          v18 = 0;
          v19 = 0;
          v14 = 0;
          a3 = 9;
          goto LABEL_42;
        }

        if (result == 10)
        {
          a4 = 0;
          v18 = 0;
          v19 = 0;
          v14 = 0;
          a3 = 10;
          goto LABEL_42;
        }
      }

      v19 = 0;
      v14 = 0;
      v18 = (a5 | 0x80u) & 0x81;
      goto LABEL_42;
    }

    v13 = a5 & 1;
    v14 = 32;
    v15 = v13;
    if (result == 3)
    {
      v16 = 48;
    }

    else
    {
      v15 = a5 & 1;
      v16 = 64;
    }

    v17 = result == 2;
    goto LABEL_12;
  }

  v13 = a5 & 1;
  if (result <= 7u)
  {
    v14 = 80;
    v15 = a5 & 1;
    if (result == 6)
    {
      v16 = 96;
    }

    else
    {
      v15 = a5 & 1;
      v16 = 112;
    }

    v17 = result == 5;
LABEL_12:
    if (v17)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    v19 = 0;
    if (!v17)
    {
      v14 = v16;
    }

    goto LABEL_42;
  }

  v20 = a5 & 1;
  if (result == 9)
  {
    v21 = a3;
  }

  else
  {
    v21 = a1;
  }

  if (result == 9)
  {
    v22 = a4;
  }

  else
  {
    v22 = a2;
  }

  if (result == 9)
  {
    v23 = 0;
  }

  else
  {
    v20 = a3;
    v23 = a4;
  }

  if (result == 9)
  {
    v24 = -112;
  }

  else
  {
    v24 = a5 & 1 | 0xA0;
  }

  if (result == 8)
  {
    v18 = a5 & 1;
  }

  else
  {
    a3 = v21;
    a4 = v22;
    v18 = v20;
  }

  if (result == 8)
  {
    v19 = 0;
  }

  else
  {
    v19 = v23;
  }

  if (result == 8)
  {
    v14 = 0x80;
  }

  else
  {
    v14 = v24;
  }

LABEL_42:
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = v18;
  *(a6 + 24) = v19;
  *(a6 + 32) = v14;
  return result;
}

uint64_t sub_10028A894@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 - result;
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_59;
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_35:
      if (v4)
      {
        v17 = 0;
        v16 = 0;
        v15 = 0;
        v14 = 1;
        v5 = v3;
LABEL_42:
        v23 = v5 + result;
        if (result)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = v17 + v16;
        if (v17)
        {
          v26 = v14;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = v17 + v15;
        }

        if (v26)
        {
          v28 = 0;
        }

        else
        {
          v28 = v25;
        }

        v29 = a3;
        result = sub_10028A5C8(result, v24, v27, v28, v14, v32);
        a3 = v29;
        v12 = v32[0];
        v30 = v32[1];
        v31 = v33;
        goto LABEL_56;
      }

      v12 = 0uLL;
      goto LABEL_55;
    }

    v6 = *(result + v5);
    if ((v6 - 127) <= 0xFFFFFFA1)
    {
      goto LABEL_18;
    }

    v7 = v6 - 34;
    v8 = v7 > 0x3B;
    v9 = (1 << v7) & 0xE0000007F0024C1;
    if (!v8 && v9 != 0)
    {
      goto LABEL_18;
    }

    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v4 < v5 + 1)
    {
      goto LABEL_58;
    }

    v11 = v5 + 1 <= v5;
    ++v5;
    if (v11)
    {
      __break(1u);
LABEL_18:
      v12 = 0uLL;
      if (!v5)
      {
        goto LABEL_55;
      }

      if (v5 >= v4)
      {
        goto LABEL_60;
      }

      v13 = *(result + v5);
      v14 = v13 != 47;
      if (v13 == 47)
      {
        v16 = v5 + 1;
        v15 = v5 + 1;
        v3 = 1;
        while (v4 != v16)
        {
          v19 = *(result + v16);
          if ((v19 - 127) < 0xFFFFFFA2)
          {
            goto LABEL_39;
          }

          v20 = v19 - 34;
          v8 = v20 > 0x3B;
          v21 = (1 << v20) & 0xE0000007F0024C1;
          if (!v8 && v21 != 0)
          {
            goto LABEL_39;
          }

          if (__OFADD__(v16, 1))
          {
            goto LABEL_61;
          }

          if (v4 < ++v16)
          {
            goto LABEL_62;
          }

          if (__OFSUB__(v16, v16 - 1))
          {
            __break(1u);
            goto LABEL_35;
          }
        }

        v16 = v4;
LABEL_39:
        if (v16 - 1 == v5)
        {
          goto LABEL_55;
        }

        v17 = result;
        v18 = v16;
        if (v16 <= v5)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v5;
      }

      if (v18 == v4)
      {
        goto LABEL_42;
      }

LABEL_55:
      v31 = -2;
      v30 = 0uLL;
LABEL_56:
      *a3 = v12;
      *(a3 + 16) = v30;
      *(a3 + 32) = v31;
      return result;
    }
  }

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
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_10028AA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = v7 >> 4;
  if (v7 >> 4 <= 4)
  {
    if (v8)
    {
LABEL_10:
      if (v6)
      {
LABEL_11:
        result = 0;
        v11 = 0;
        goto LABEL_14;
      }

LABEL_13:
      result = sub_10027C548(v4, v5);
      goto LABEL_14;
    }

    v18 = v4;
    if ((v6 & 0x80) != 0)
    {
      if (v6)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    result = 0;
    v15 = 0;
    v17 = 0;
    v11 = qword_1004EC8F8[v18];
  }

  else
  {
    if (v7 >> 4 <= 9)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 24);
    result = sub_10027C548(v4, v5);
    if (v7)
    {
LABEL_14:
      v15 = 0;
      v17 = 0;
      goto LABEL_15;
    }

    v12 = result;
    v13 = v6;
    v14 = v11;
    v15 = sub_10027C548(v13, v9);
    result = v12;
    v17 = v16;
    v11 = v14;
  }

LABEL_15:
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = v8;
  return result;
}

uint64_t _s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 32);
  if (v6 > 4)
  {
    if (*(a1 + 32) > 7u)
    {
      if (v6 == 8)
      {
        if (*(a2 + 32) != 8)
        {
          return 0;
        }
      }

      else
      {
        if (v6 != 9)
        {
          if (*(a2 + 32) != 10)
          {
            return 0;
          }

          v9 = a1[2];
          v8 = a1[3];
          v11 = *(a2 + 16);
          v10 = *(a2 + 24);
          if ((v4 != *a2 || v5 != *(a2 + 8)) && (sub_1004A6D34() & 1) == 0)
          {
            return 0;
          }

          if (v8)
          {
            if (v10)
            {
              if (v9 == v11 && v8 == v10)
              {
                return 1;
              }

              return (sub_1004A6D34() & 1) != 0;
            }
          }

          else if (!v10)
          {
            return 1;
          }

          return 0;
        }

        if (*(a2 + 32) != 9)
        {
          return 0;
        }
      }
    }

    else if (v6 == 5)
    {
      if (*(a2 + 32) != 5)
      {
        return 0;
      }
    }

    else if (v6 == 6)
    {
      if (*(a2 + 32) != 6)
      {
        return 0;
      }
    }

    else if (*(a2 + 32) != 7)
    {
      return 0;
    }

LABEL_35:
    v7 = *(a2 + 8);
    if (v5)
    {
      if (v7)
      {
        if (v4 == *a2)
        {
          goto LABEL_38;
        }

        return (sub_1004A6D34() & 1) != 0;
      }

      return 0;
    }

    return !v7;
  }

  if (*(a1 + 32) > 1u)
  {
    if (v6 == 2)
    {
      if (*(a2 + 32) != 2)
      {
        return 0;
      }
    }

    else if (v6 == 3)
    {
      if (*(a2 + 32) != 3)
      {
        return 0;
      }
    }

    else if (*(a2 + 32) != 4)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (*(a1 + 32))
  {
    if (*(a2 + 32) != 1)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v7 = *(a2 + 8);
  if (v5 <= 5)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v7 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if (v7 != 5)
      {
        return 0;
      }

      return 1;
    }

    if (v5 == 1)
    {
      return v7 == 1;
    }

    if (v5 == 2)
    {
      return v7 == 2;
    }

LABEL_80:
    if ((v7 - 1) < 0xB)
    {
      return 0;
    }

    if (v5)
    {
      if (v7)
      {
        if (v4 == *a2)
        {
LABEL_38:
          if (v5 == v7)
          {
            return 1;
          }
        }

        return (sub_1004A6D34() & 1) != 0;
      }

      return 0;
    }

    return !v7;
  }

  if (v5 > 8)
  {
    switch(v5)
    {
      case 9:
        return v7 == 9;
      case 10:
        return v7 == 10;
      case 11:
        return v7 == 11;
    }

    goto LABEL_80;
  }

  if (v5 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v5 == 7)
  {
    if (v7 != 7)
    {
      return 0;
    }
  }

  else if (v7 != 8)
  {
    return 0;
  }

  return 1;
}

BOOL _s9IMAP2MIME9MediaTypeO9MultipartO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a2 == 4)
      {
        if (a4 == 4)
        {
          return 1;
        }
      }

      else if (a4 == 5)
      {
        return 1;
      }

      return 0;
    }

    if (a2 == 1)
    {
      return a4 == 1;
    }

    if (a2 == 2)
    {
      return a4 == 2;
    }
  }

  else
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        if (a4 == 6)
        {
          return 1;
        }
      }

      else if (a2 == 7)
      {
        if (a4 == 7)
        {
          return 1;
        }
      }

      else if (a4 == 8)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 9:
        return a4 == 9;
      case 10:
        return a4 == 10;
      case 11:
        return a4 == 11;
    }
  }

  if ((a4 - 1) < 0xB)
  {
    return 0;
  }

  if (a2)
  {
    if (!a4)
    {
      return 0;
    }

    return a1 == a3 && a2 == a4 || (sub_1004A6D34() & 1) != 0;
  }

  else
  {
    return !a4;
  }
}

uint64_t _sSS9IMAP2MIMEEySSAA9MediaTypeO9MultipartOcfC_0(uint64_t result, uint64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          return 0x2D646578696D2D78;
        case 10:
          return 0x676E617265747962;
        case 11:
          return 0x756F64656C707061;
      }
    }

    else if (a2 == 6)
    {
      return 0x64656E676973;
    }

    else if (a2 == 7)
    {
      return 0x6574707972636E65;
    }

    else
    {
      return 0x7461642D6D726F66;
    }
  }

  else if (a2 > 2)
  {
    if (a2 == 3)
    {
      return 0x74616E7265746C61;
    }

    else if (a2 == 4)
    {
      return 0x646574616C6572;
    }

    else
    {
      return 0x74726F706572;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return 0x646578696DLL;
    }

    else if (a2 == 2)
    {
      return 0x747365676964;
    }
  }

  else
  {
    sub_10026E848(result, a2);
    return 0;
  }

  return result;
}

uint64_t _sSS9IMAP2MIMEEySSAA9MediaTypeOcfC_0(Swift::String a1)
{
  a1._object = *(a1._countAndFlagsBits + 8);
  v1 = *(a1._countAndFlagsBits + 32);
  if (v1 > 4)
  {
    if (*(a1._countAndFlagsBits + 32) <= 7u)
    {
      if (v1 == 5)
      {
        if (!a1._object)
        {
          sub_100279734(a1._countAndFlagsBits);
          return 1954047348;
        }

        v8 = 1954047348;
      }

      else
      {
        if (v1 == 6)
        {
          if (a1._object)
          {
            v2 = 1701079414;
LABEL_21:
            v3 = v2 & 0xFFFF0000FFFFFFFFLL | 0x2F6F00000000;
            goto LABEL_34;
          }

          sub_100279734(a1._countAndFlagsBits);
          return 0x6F65646976;
        }

        if (!a1._object)
        {
          sub_100279734(a1._countAndFlagsBits);
          return 1953394534;
        }

        v8 = 1953394534;
      }

      v3 = v8 & 0xFFFF0000FFFFFFFFLL | 0x2F00000000;
      goto LABEL_34;
    }

    if (v1 != 8)
    {
      if (v1 != 9)
      {
        v12 = *(a1._countAndFlagsBits + 24);
        if (v12)
        {
          v13 = *(a1._countAndFlagsBits + 16);
          v18 = *a1._countAndFlagsBits;
          v19 = *(a1._countAndFlagsBits + 8);
          countAndFlagsBits = a1._countAndFlagsBits;

          v21._countAndFlagsBits = 47;
          v21._object = 0xE100000000000000;
          sub_1004A5994(v21);
          v22._countAndFlagsBits = v13;
          v22._object = v12;
          sub_1004A5994(v22);
          v7 = countAndFlagsBits;
          goto LABEL_35;
        }

        v15 = *a1._countAndFlagsBits;
        v16 = a1._countAndFlagsBits;
        v17 = *(a1._countAndFlagsBits + 8);

        sub_100279734(v16);
        return v15;
      }

      if (!a1._object)
      {
        sub_100279734(a1._countAndFlagsBits);
        return 0x6C65646F6DLL;
      }

      v3 = 0x2F6C65646F6DLL;
LABEL_34:
      v18 = v3;
      v10 = a1._countAndFlagsBits;
      a1._countAndFlagsBits = *a1._countAndFlagsBits;
      sub_1004A5994(a1);
      v7 = v10;
      goto LABEL_35;
    }

    if (!a1._object)
    {
      sub_100279734(a1._countAndFlagsBits);
      return 0x656C706D617865;
    }

    v9 = 0x6C706D617865;
    goto LABEL_28;
  }

  if (*(a1._countAndFlagsBits + 32) <= 1u)
  {
    if (*(a1._countAndFlagsBits + 32))
    {
      if (a1._object)
      {
        v3 = 0x746163696C707061;
        goto LABEL_34;
      }

      sub_100279734(a1._countAndFlagsBits);
      return 0x746163696C707061;
    }

    else
    {
      if (a1._object)
      {
        v18 = 0x72617069746C756DLL;
        v4 = *a1._countAndFlagsBits;
        v5 = a1._countAndFlagsBits;
        v6 = *(a1._countAndFlagsBits + 8);
        sub_10026E754(*a1._countAndFlagsBits, a1._object);
        v20._countAndFlagsBits = _sSS9IMAP2MIMEEySSAA9MediaTypeO9MultipartOcfC_0(v4, v6);
        sub_1004A5994(v20);

        v7 = v5;
LABEL_35:
        sub_100279734(v7);
        return v18;
      }

      sub_100279734(a1._countAndFlagsBits);
      return 0x72617069746C756DLL;
    }
  }

  if (v1 != 2)
  {
    if (v1 == 3)
    {
      if (!a1._object)
      {
        sub_100279734(a1._countAndFlagsBits);
        return 0x6567616D69;
      }

      v3 = 0x2F6567616D69;
      goto LABEL_34;
    }

    if (!a1._object)
    {
      sub_100279734(a1._countAndFlagsBits);
      return 0x6567617373656DLL;
    }

    v9 = 0x67617373656DLL;
LABEL_28:
    v3 = v9 & 0xFFFFFFFFFFFFLL | 0x2F65000000000000;
    goto LABEL_34;
  }

  if (a1._object)
  {
    v2 = 1768191329;
    goto LABEL_21;
  }

  sub_100279734(a1._countAndFlagsBits);
  return 0x6F69647561;
}

uint64_t sub_10028B4FC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D6880, &qword_1004EC500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10028B564(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 33))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10028B5AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10028B60C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 0xC)
  {
    return (v3 - 11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028B66C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *sub_10028B6BC(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeMediaType.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnsafeMediaType.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10028B860()
{
  result = qword_1005D6888;
  if (!qword_1005D6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6888);
  }

  return result;
}

unint64_t sub_10028B8B8()
{
  result = qword_1005D6890;
  if (!qword_1005D6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6890);
  }

  return result;
}

uint64_t sub_10028B90C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AB378;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10028B958(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AB4A0;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for UnsafeMediaType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 33))
  {
    return (*a1 + 118);
  }

  v3 = ((*(a1 + 32) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 32) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for UnsafeMediaType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 118;
    *(result + 8) = 0;
    if (a3 >= 0x76)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeMediaType.Multipart(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for UnsafeMediaType.Multipart(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_10028BB78@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char **a7@<X8>)
{
  v83 = a7;
  v13 = sub_1004A5384();
  v81 = *(v13 - 8);
  v82 = v13;
  v14 = *(v81 + 64);
  __chkstk_darwin(v13);
  v80 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Message.Data(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v85) = a2;
  v87[16] = a2;
  v88 = a3;
  v89 = a4;
  v20 = a5;
  v90 = a5;
  v91 = a6;
  v84 = a6;
  v86[2] = sub_10029555C;
  v86[3] = v87;
  swift_retain_n();
  v21 = Message.isEmpty.getter();
  if (v21)
  {
    v83 = &v80;
    v118 = 0;
    __chkstk_darwin(v21);
    *(&v80 - 48) = 0;
    *(&v80 - 5) = a3;
    *(&v80 - 4) = a4;
    *(&v80 - 3) = &v118;
    *(&v80 - 2) = a5;
    v22 = a5;
    *(&v80 - 1) = v84;
    v23 = a4;
    v24 = swift_allocObject();
    v81 = a3;
    v25 = v24 + 1;
    sub_100276450(&v119);
    v26 = v128;
    v24[9] = v127;
    v24[10] = v26;
    v24[11] = v129[0];
    *(v24 + 185) = *(v129 + 9);
    v27 = v124;
    v24[5] = v123;
    v24[6] = v27;
    v28 = v126;
    v24[7] = v125;
    v24[8] = v28;
    v29 = v120;
    v24[1] = v119;
    v24[2] = v29;
    v30 = v122;
    v24[3] = v121;
    v24[4] = v30;
    v31 = swift_allocObject();
    v82 = &v80;
    *(v31 + 16) = 2;
    __chkstk_darwin(v31);
    *(&v80 - 4) = v24;
    *(&v80 - 3) = v32;
    *(&v80 - 2) = sub_100277394;
    *(&v80 - 1) = (&v80 - 8);
    __chkstk_darwin(v32);
    *(&v80 - 4) = (v24 + 1);
    *(&v80 - 3) = UInt32.init(_:);
    *(&v80 - 2) = 0;
    v131 = _swiftEmptyArrayStorage;
    v132 = v85;
    v134 = 0;
    v135 = 0;
    v133 = 0;

    v33 = v136;
    sub_100295F74(sub_100277378, (&v80 - 6), sub_100277390, (&v80 - 6), 0, 0);
    if (v33)
    {
    }

    else
    {
      v85 = v22;
      v136 = v31;
      swift_beginAccess();
      if (*(v31 + 16) != 2)
      {
        goto LABEL_11;
      }

      swift_beginAccess();
      v44 = v24[10];
      v45 = v24[8];
      v104 = v24[9];
      v105 = v44;
      v46 = v24[10];
      v106[0] = v24[11];
      *(v106 + 9) = *(v24 + 185);
      v47 = v24[6];
      v48 = v24[4];
      v100 = v24[5];
      v101 = v47;
      v49 = v24[6];
      v50 = v24[8];
      v102 = v24[7];
      v103 = v50;
      v51 = v24[2];
      v96 = *v25;
      v97 = v51;
      v52 = v24[4];
      v54 = *v25;
      v53 = v24[2];
      v98 = v24[3];
      v99 = v52;
      v115 = v104;
      v116 = v46;
      v117[0] = v24[11];
      *(v117 + 9) = *(v24 + 185);
      v111 = v100;
      v112 = v49;
      v113 = v102;
      v114 = v45;
      v107 = v54;
      v108 = v53;
      v109 = v98;
      v110 = v48;
      if (sub_100021348(&v107) != 1)
      {
        v129[10] = v115;
        v129[11] = v116;
        v130[0] = v117[0];
        *(v130 + 9) = *(v117 + 9);
        v129[6] = v111;
        v129[7] = v112;
        v129[8] = v113;
        v129[9] = v114;
        v129[2] = v107;
        v129[3] = v108;
        v129[4] = v109;
        v129[5] = v110;
        v94[8] = v104;
        v94[9] = v105;
        v95[0] = v106[0];
        *(v95 + 9) = *(v106 + 9);
        v94[4] = v100;
        v94[5] = v101;
        v94[6] = v102;
        v94[7] = v103;
        v94[0] = v96;
        v94[1] = v97;
        v94[2] = v98;
        v94[3] = v99;
        sub_1002764DC(v94, v92);
        v65 = sub_1002770A0(0, v81, v23);
        if (v66)
        {
          v67 = (v85)(v65);

          v118 = v67 & 1;
        }

        else
        {
          v67 = v118;
        }

        sub_100025F40(&v96, &qword_1005D65E0, &unk_1004EB070);
        if (v67)
        {
          v68 = 0;
        }

        else
        {
          v68 = 2;
        }

        *(v136 + 16) = v68;
        v69 = v24[10];
        v92[8] = v24[9];
        v92[9] = v69;
        v93[0] = v24[11];
        *(v93 + 9) = *(v24 + 185);
        v70 = v24[6];
        v92[4] = v24[5];
        v92[5] = v70;
        v71 = v24[8];
        v92[6] = v24[7];
        v92[7] = v71;
        v72 = v24[2];
        v92[0] = *v25;
        v92[1] = v72;
        v73 = v24[4];
        v92[2] = v24[3];
        v92[3] = v73;
        v74 = v128;
        v24[9] = v127;
        v24[10] = v74;
        v24[11] = v129[0];
        *(v24 + 185) = *(v129 + 9);
        v75 = v124;
        v24[5] = v123;
        v24[6] = v75;
        v76 = v126;
        v24[7] = v125;
        v24[8] = v76;
        v77 = v120;
        *v25 = v119;
        v24[2] = v77;
        v78 = v122;
        v24[3] = v121;
        v24[4] = v78;
        sub_100025F40(v92, &qword_1005D65E0, &unk_1004EB070);
      }

      else
      {
LABEL_11:
        swift_beginAccess();
        v55 = v24[10];
        v115 = v24[9];
        v116 = v55;
        v117[0] = v24[11];
        *(v117 + 9) = *(v24 + 185);
        v56 = v24[6];
        v111 = v24[5];
        v112 = v56;
        v57 = v24[8];
        v113 = v24[7];
        v114 = v57;
        v58 = v24[2];
        v107 = *v25;
        v108 = v58;
        v59 = v24[4];
        v109 = v24[3];
        v110 = v59;
        v60 = v128;
        v24[9] = v127;
        v24[10] = v60;
        v24[11] = v129[0];
        *(v24 + 185) = *(v129 + 9);
        v61 = v124;
        v24[5] = v123;
        v24[6] = v61;
        v62 = v126;
        v24[7] = v125;
        v24[8] = v62;
        v63 = v120;
        *v25 = v119;
        v24[2] = v63;
        v64 = v122;
        v24[3] = v121;
        v24[4] = v64;
        sub_100025F40(&v107, &qword_1005D65E0, &unk_1004EB070);
      }
    }

    goto LABEL_21;
  }

  v34 = v85;
  v35 = a4;
  sub_100286984(a1, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v41 = *v19;
    v42 = v19[1];

    v43 = v136;
    sub_10028EE70(v41, v42, v34, a3, v35, v20, v84);
    sub_100014D40(v41, v42);
    if (v43)
    {
    }

    goto LABEL_21;
  }

  v36 = v80;
  v37 = v81;
  v38 = v82;
  v39 = (*(v81 + 32))(v80, v19, v82);
  __chkstk_darwin(v39);
  *(&v80 - 4) = v36;
  *(&v80 - 3) = sub_1002955F4;
  *(&v80 - 2) = v86;
  v40 = v136;
  sub_1004A5314();
  if (!v40)
  {
    (*(v37 + 8))(v36, v38);
LABEL_21:
  }

  (*(v37 + 8))(v36, v38);
}

uint64_t sub_10028C3BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char **a7@<X8>)
{
  v83 = a7;
  v13 = sub_1004A5384();
  v81 = *(v13 - 8);
  v82 = v13;
  v14 = *(v81 + 64);
  __chkstk_darwin(v13);
  v80 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Message.Data(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v85) = a2;
  v87[16] = a2;
  v88 = a3;
  v89 = a4;
  v20 = a5;
  v90 = a5;
  v91 = a6;
  v84 = a6;
  v86[2] = sub_100295530;
  v86[3] = v87;
  swift_retain_n();
  v21 = Message.isEmpty.getter();
  if (v21)
  {
    v83 = &v80;
    v118 = 0;
    __chkstk_darwin(v21);
    *(&v80 - 48) = 1;
    *(&v80 - 5) = a3;
    *(&v80 - 4) = a4;
    *(&v80 - 3) = &v118;
    *(&v80 - 2) = a5;
    v22 = a5;
    *(&v80 - 1) = v84;
    v23 = a4;
    v24 = swift_allocObject();
    v81 = a3;
    v25 = v24 + 1;
    sub_100276450(&v119);
    v26 = v128;
    v24[9] = v127;
    v24[10] = v26;
    v24[11] = v129[0];
    *(v24 + 185) = *(v129 + 9);
    v27 = v124;
    v24[5] = v123;
    v24[6] = v27;
    v28 = v126;
    v24[7] = v125;
    v24[8] = v28;
    v29 = v120;
    v24[1] = v119;
    v24[2] = v29;
    v30 = v122;
    v24[3] = v121;
    v24[4] = v30;
    v31 = swift_allocObject();
    v82 = &v80;
    *(v31 + 16) = 2;
    __chkstk_darwin(v31);
    *(&v80 - 4) = v24;
    *(&v80 - 3) = v32;
    *(&v80 - 2) = sub_1002772B0;
    *(&v80 - 1) = (&v80 - 8);
    __chkstk_darwin(v32);
    *(&v80 - 4) = (v24 + 1);
    *(&v80 - 3) = UInt32.init(_:);
    *(&v80 - 2) = 0;
    v131 = _swiftEmptyArrayStorage;
    v132 = v85;
    v134 = 0;
    v135 = 0;
    v133 = 0;

    v33 = v136;
    sub_100295F74(sub_100277378, (&v80 - 6), sub_100277390, (&v80 - 6), 0, 0);
    if (v33)
    {
    }

    else
    {
      v85 = v22;
      v136 = v31;
      swift_beginAccess();
      if (*(v31 + 16) != 2)
      {
        goto LABEL_11;
      }

      swift_beginAccess();
      v44 = v24[10];
      v45 = v24[8];
      v104 = v24[9];
      v105 = v44;
      v46 = v24[10];
      v106[0] = v24[11];
      *(v106 + 9) = *(v24 + 185);
      v47 = v24[6];
      v48 = v24[4];
      v100 = v24[5];
      v101 = v47;
      v49 = v24[6];
      v50 = v24[8];
      v102 = v24[7];
      v103 = v50;
      v51 = v24[2];
      v96 = *v25;
      v97 = v51;
      v52 = v24[4];
      v54 = *v25;
      v53 = v24[2];
      v98 = v24[3];
      v99 = v52;
      v115 = v104;
      v116 = v46;
      v117[0] = v24[11];
      *(v117 + 9) = *(v24 + 185);
      v111 = v100;
      v112 = v49;
      v113 = v102;
      v114 = v45;
      v107 = v54;
      v108 = v53;
      v109 = v98;
      v110 = v48;
      if (sub_100021348(&v107) != 1)
      {
        v129[10] = v115;
        v129[11] = v116;
        v130[0] = v117[0];
        *(v130 + 9) = *(v117 + 9);
        v129[6] = v111;
        v129[7] = v112;
        v129[8] = v113;
        v129[9] = v114;
        v129[2] = v107;
        v129[3] = v108;
        v129[4] = v109;
        v129[5] = v110;
        v94[8] = v104;
        v94[9] = v105;
        v95[0] = v106[0];
        *(v95 + 9) = *(v106 + 9);
        v94[4] = v100;
        v94[5] = v101;
        v94[6] = v102;
        v94[7] = v103;
        v94[0] = v96;
        v94[1] = v97;
        v94[2] = v98;
        v94[3] = v99;
        sub_1002764DC(v94, v92);
        v65 = sub_1002770A0(1, v81, v23);
        if (v66)
        {
          v67 = (v85)(v65);

          v118 = v67 & 1;
        }

        else
        {
          v67 = v118;
        }

        sub_100025F40(&v96, &qword_1005D65E0, &unk_1004EB070);
        if (v67)
        {
          v68 = 0;
        }

        else
        {
          v68 = 2;
        }

        *(v136 + 16) = v68;
        v69 = v24[10];
        v92[8] = v24[9];
        v92[9] = v69;
        v93[0] = v24[11];
        *(v93 + 9) = *(v24 + 185);
        v70 = v24[6];
        v92[4] = v24[5];
        v92[5] = v70;
        v71 = v24[8];
        v92[6] = v24[7];
        v92[7] = v71;
        v72 = v24[2];
        v92[0] = *v25;
        v92[1] = v72;
        v73 = v24[4];
        v92[2] = v24[3];
        v92[3] = v73;
        v74 = v128;
        v24[9] = v127;
        v24[10] = v74;
        v24[11] = v129[0];
        *(v24 + 185) = *(v129 + 9);
        v75 = v124;
        v24[5] = v123;
        v24[6] = v75;
        v76 = v126;
        v24[7] = v125;
        v24[8] = v76;
        v77 = v120;
        *v25 = v119;
        v24[2] = v77;
        v78 = v122;
        v24[3] = v121;
        v24[4] = v78;
        sub_100025F40(v92, &qword_1005D65E0, &unk_1004EB070);
      }

      else
      {
LABEL_11:
        swift_beginAccess();
        v55 = v24[10];
        v115 = v24[9];
        v116 = v55;
        v117[0] = v24[11];
        *(v117 + 9) = *(v24 + 185);
        v56 = v24[6];
        v111 = v24[5];
        v112 = v56;
        v57 = v24[8];
        v113 = v24[7];
        v114 = v57;
        v58 = v24[2];
        v107 = *v25;
        v108 = v58;
        v59 = v24[4];
        v109 = v24[3];
        v110 = v59;
        v60 = v128;
        v24[9] = v127;
        v24[10] = v60;
        v24[11] = v129[0];
        *(v24 + 185) = *(v129 + 9);
        v61 = v124;
        v24[5] = v123;
        v24[6] = v61;
        v62 = v126;
        v24[7] = v125;
        v24[8] = v62;
        v63 = v120;
        *v25 = v119;
        v24[2] = v63;
        v64 = v122;
        v24[3] = v121;
        v24[4] = v64;
        sub_100025F40(&v107, &qword_1005D65E0, &unk_1004EB070);
      }
    }

    goto LABEL_21;
  }

  v34 = v85;
  v35 = a4;
  sub_100286984(a1, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v41 = *v19;
    v42 = v19[1];

    v43 = v136;
    sub_100290568(v41, v42, v34, a3, v35, v20, v84);
    sub_100014D40(v41, v42);
    if (v43)
    {
    }

    goto LABEL_21;
  }

  v36 = v80;
  v37 = v81;
  v38 = v82;
  v39 = (*(v81 + 32))(v80, v19, v82);
  __chkstk_darwin(v39);
  *(&v80 - 4) = v36;
  *(&v80 - 3) = sub_1002955F4;
  *(&v80 - 2) = v86;
  v40 = v136;
  sub_1004A5314();
  if (!v40)
  {
    (*(v37 + 8))(v36, v38);
LABEL_21:
  }

  (*(v37 + 8))(v36, v38);
}

uint64_t sub_10028CC04@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, void (*a5)(__int128 *)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v85 = a7;
  v13 = sub_1004A5384();
  v83 = *(v13 - 8);
  v84 = v13;
  v14 = *(v83 + 64);
  __chkstk_darwin(v13);
  v82 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Message.Data(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a2 & 1;
  v90[16] = v20;
  v87 = a6;
  v88 = a3;
  v91 = a3;
  v92 = a4;
  v86 = a5;
  v93 = a5;
  v94 = a6;
  v89[2] = sub_1002953FC;
  v89[3] = v90;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    v21 = sub_100297350(0, 0, 0, 0);
    v22 = sub_1002975B0(_swiftEmptyArrayStorage, v21);
    if (v22)
    {
      v24 = v22;
      v25 = v23;
      *&v118 = sub_100257570(_swiftEmptyArrayStorage);
      sub_100297A70(v24, v25, v20, &v118, v21);

      v26 = v118;
    }

    else
    {

      v26 = sub_100257570(_swiftEmptyArrayStorage);
    }

    v36 = v86;
    v35 = v87;
    v37 = swift_allocObject();
    v85 = &v81;
    *(v37 + 16) = v26;
    __chkstk_darwin(v37);
    *(&v81 - 4) = v88;
    *(&v81 - 3) = a4;
    *(&v81 - 2) = v36;
    *(&v81 - 1) = v35;
    v38 = swift_allocObject();
    v39 = v38 + 1;
    sub_100276450(&v118);
    v40 = v127;
    v38[9] = v126;
    v38[10] = v40;
    v38[11] = v128[0];
    *(v38 + 185) = *(v128 + 9);
    v41 = v123;
    v38[5] = v122;
    v38[6] = v41;
    v42 = v125;
    v38[7] = v124;
    v38[8] = v42;
    v43 = v119;
    v38[1] = v118;
    v38[2] = v43;
    v44 = v121;
    v38[3] = v120;
    v38[4] = v44;
    v45 = swift_allocObject();
    v84 = &v81;
    *(v45 + 16) = 2;
    __chkstk_darwin(v45);
    *(&v81 - 4) = v38;
    *(&v81 - 3) = v46;
    *(&v81 - 2) = sub_1002798A4;
    *(&v81 - 1) = (&v81 - 6);
    __chkstk_darwin(v46);
    *(&v81 - 4) = (v38 + 1);
    *(&v81 - 3) = UInt32.init(_:);
    *(&v81 - 2) = 0;
    v141 = _swiftEmptyArrayStorage;
    v142 = 3;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v47 = v146;
    sub_100295F74(sub_100277324, v48, sub_100277344, (&v81 - 6), sub_10027989C, v37);
    if (v47)
    {
    }

    else
    {
      swift_beginAccess();
      if (*(v45 + 16) != 2)
      {
        goto LABEL_14;
      }

      swift_beginAccess();
      v49 = v38[10];
      v50 = v38[8];
      v104 = v38[9];
      v105 = v49;
      v51 = v38[10];
      v106[0] = v38[11];
      *(v106 + 9) = *(v38 + 185);
      v52 = v38[6];
      v53 = v38[4];
      v100 = v38[5];
      v101 = v52;
      v54 = v38[6];
      v55 = v38[8];
      v102 = v38[7];
      v103 = v55;
      v56 = v38[2];
      v97[0] = *v39;
      v97[1] = v56;
      v57 = v38[4];
      v59 = *v39;
      v58 = v38[2];
      v98 = v38[3];
      v99 = v57;
      v115 = v104;
      v116 = v51;
      v117[0] = v38[11];
      *(v117 + 9) = *(v38 + 185);
      v111 = v100;
      v112 = v54;
      v113 = v102;
      v114 = v50;
      v107 = v59;
      v108 = v58;
      v109 = v98;
      v110 = v53;
      if (sub_100021348(&v107) != 1)
      {
        v146 = v37;
        v139[8] = v115;
        v139[9] = v116;
        v140[0] = v117[0];
        *(v140 + 9) = *(v117 + 9);
        v139[4] = v111;
        v139[5] = v112;
        v139[6] = v113;
        v139[7] = v114;
        v139[0] = v107;
        v139[1] = v108;
        v139[2] = v109;
        v139[3] = v110;
        sub_1002954C0(v97, v95);

        sub_1002954C0(v97, v95);
        sub_1002788DC(v139, v88, a4, v129);
        v134 = v129[4];
        v135 = v129[5];
        v136 = v129[6];
        v137 = v129[7];
        v130 = v129[0];
        v131 = v129[1];
        v132 = v129[2];
        v133 = v129[3];
        if (sub_10027971C(&v130) != 1)
        {
          v138[4] = v134;
          v138[5] = v135;
          v138[6] = v136;
          v138[7] = v137;
          v138[0] = v130;
          v138[1] = v131;
          v138[2] = v132;
          v138[3] = v133;
          v86(v138);
          sub_100025F40(v129, &qword_1005D6610, &unk_1004EC260);
        }

        sub_100025F40(v97, &qword_1005D65E0, &unk_1004EB070);
        *(v45 + 16) = 2;
        v70 = v38[10];
        v95[8] = v38[9];
        v95[9] = v70;
        v96[0] = v38[11];
        *(v96 + 9) = *(v38 + 185);
        v71 = v38[6];
        v95[4] = v38[5];
        v95[5] = v71;
        v72 = v38[8];
        v95[6] = v38[7];
        v95[7] = v72;
        v73 = v38[2];
        v95[0] = *v39;
        v95[1] = v73;
        v74 = v38[4];
        v95[2] = v38[3];
        v95[3] = v74;
        v75 = v127;
        v38[9] = v126;
        v38[10] = v75;
        v38[11] = v128[0];
        *(v38 + 185) = *(v128 + 9);
        v76 = v123;
        v38[5] = v122;
        v38[6] = v76;
        v77 = v125;
        v38[7] = v124;
        v38[8] = v77;
        v78 = v119;
        *v39 = v118;
        v38[2] = v78;
        v79 = v121;
        v38[3] = v120;
        v38[4] = v79;
        sub_100025F40(v95, &qword_1005D65E0, &unk_1004EB070);
      }

      else
      {
LABEL_14:
        swift_beginAccess();
        v60 = v38[10];
        v115 = v38[9];
        v116 = v60;
        v117[0] = v38[11];
        *(v117 + 9) = *(v38 + 185);
        v61 = v38[6];
        v111 = v38[5];
        v112 = v61;
        v62 = v38[8];
        v113 = v38[7];
        v114 = v62;
        v63 = v38[2];
        v107 = *v39;
        v108 = v63;
        v64 = v38[4];
        v109 = v38[3];
        v110 = v64;
        v65 = v127;
        v38[9] = v126;
        v38[10] = v65;
        v38[11] = v128[0];
        *(v38 + 185) = *(v128 + 9);
        v66 = v123;
        v38[5] = v122;
        v38[6] = v66;
        v67 = v125;
        v38[7] = v124;
        v38[8] = v67;
        v68 = v119;
        *v39 = v118;
        v38[2] = v68;
        v69 = v121;
        v38[3] = v120;
        v38[4] = v69;
        sub_100025F40(&v107, &qword_1005D65E0, &unk_1004EB070);
      }
    }

    goto LABEL_20;
  }

  sub_100286984(a1, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v32 = *v19;
    v33 = v19[1];

    v34 = v146;
    sub_100291C70(v32, v33, v20, v88, a4, v86, v87);
    sub_100014D40(v32, v33);
    if (v34)
    {
    }

    goto LABEL_20;
  }

  v27 = v82;
  v28 = v83;
  v29 = v84;
  v30 = (*(v83 + 32))(v82, v19, v84);
  __chkstk_darwin(v30);
  *(&v81 - 4) = v27;
  *(&v81 - 3) = sub_1002955F4;
  *(&v81 - 2) = v89;
  v31 = v146;
  sub_1004A5314();
  if (!v31)
  {
    (*(v28 + 8))(v27, v29);
LABEL_20:
  }

  (*(v28 + 8))(v27, v29);
}

uint64_t sub_10028D4F8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, char *)@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a7;
  v50 = a8;
  v14 = sub_1004A5384();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  __chkstk_darwin(v14);
  v46 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Message.Data(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = a2;
  v55[16] = a2;
  v53 = a3;
  v56 = a3;
  v57 = a4;
  v21 = a5;
  v87 = a4;
  v22 = a6;
  v23 = v51;
  v58 = a5;
  v59 = v22;
  v60 = v51;
  v54[2] = sub_10029538C;
  v54[3] = v55;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    v24 = v52;
    sub_10027B720(3u, 0, 0, 0, 0, v23, &v62);
    if (!v24)
    {
      v25 = v69;
      *&v71 = v62;
      BYTE8(v71) = v63;
      v72 = v64;
      v73 = v65;
      *&v74 = v66;
      WORD4(v74) = v67;
      v75 = v68;
      sub_10027A644();
      v85[2] = v73;
      v85[3] = v74;
      v86 = v75;
      v85[0] = v71;
      v85[1] = v72;
      sub_100279E40(3u, v49, v21, v22);
      sub_10027B6BC(v85);
      v32 = *(v25 + 16);
      if (v32)
      {
        v52 = 0;
        v33 = v32 - 1;
        v50 = v25;
        for (i = (v25 + 56); ; i += 88)
        {
          v35 = *(i - 2);
          v36 = *(i - 1);
          v37 = *i;
          v38 = *(i + 1);
          v39 = *(i + 2);
          v40 = *(i + 3);
          v41 = *(i + 4);
          v42 = *(i + 6);
          v43 = *(i + 7);
          v44 = i[40];
          v76[0] = *(i - 3);
          v76[1] = v35;
          v76[2] = v36;
          v77 = v37;
          v78 = v38;
          v79 = v39;
          v80 = v40;
          v81 = v41;
          v82 = v44;
          v83 = v42;
          v84 = v43;
          v62 = v76[0];
          v63 = v35;
          *&v64 = v36;
          BYTE8(v64) = v37;
          *&v65 = v38;
          *(&v65 + 1) = v39;
          v66 = v40;
          v67 = v41;
          LOBYTE(v68) = v44;
          v69 = v42;
          v70 = v43;

          sub_10027C1E4(v38, v39, v40, v41, v44);
          sub_100279DB4(v76, &v61);
          sub_100279DEC(&v62);
          v53(v76);
          sub_100279DEC(v76);
          if (!v33)
          {
            break;
          }

          --v33;
        }
      }
    }
  }

  else
  {
    sub_100286984(a1, v20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v46;
      v27 = v47;
      v28 = v48;
      v29 = (*(v47 + 32))(v46, v20, v48);
      __chkstk_darwin(v29);
      *(&v46 - 4) = v26;
      *(&v46 - 3) = sub_1002953C0;
      *(&v46 - 2) = v54;
      sub_1004A5314();
      (*(v27 + 8))(v26, v28);
    }

    else
    {
      v30 = *v20;
      v31 = v20[1];

      sub_100293848(v30, v31, v49, v53, v87, v21, v22, v23);
      sub_100014D40(v30, v31);
    }
  }
}

uint64_t sub_10028D97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1004A5384();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin(v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Message.Data(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = a2;
  v26 = a3;
  v22 = sub_100295370;
  v23 = &v24;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    sub_1002808F8(0, 0, 0, 0, a2, a3, a4);
  }

  else
  {
    sub_100286984(a1, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = v27;
      v17 = (*(v27 + 32))(v11, v15, v8);
      __chkstk_darwin(v17);
      *&v21[-32] = v11;
      *&v21[-24] = sub_10028EE34;
      *&v21[-16] = v21;
      sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
      sub_1004A5314();
      (*(v16 + 8))(v11, v8);
    }

    else
    {
      v18 = *v15;
      v19 = v15[1];

      sub_100294170(v18, v19, a2, a3, a4);
      sub_100014D40(v18, v19);
    }
  }
}

uint64_t sub_10028DC2C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1004A5384();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Message.Data(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_10028EE18;
  v22 = a2;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    sub_1002ACE34(0, 0, 0, 0, a2, a3);
LABEL_3:
  }

  sub_100286984(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = (*(v8 + 32))(v11, v15, v7);
    __chkstk_darwin(v17);
    *&v20[-32] = v11;
    *&v20[-24] = sub_10028EE34;
    *&v20[-16] = v20;
    sub_10000C9C0(&qword_1005D69D0, &qword_1004EDA30);
    sub_1004A5314();
    if (!v3)
    {
      (*(v8 + 8))(v11, v7);
      goto LABEL_3;
    }

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v18 = *v15;
    v19 = v15[1];

    sub_100294424(v18, v19, a2, a3);
    sub_100014D40(v18, v19);
    if (!v3)
    {
      goto LABEL_3;
    }
  }
}

uint64_t Message.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for Message.Data(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10028DF64(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2)
{
  v6 = sub_1004A5384();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Message.Data(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (Message.isEmpty.getter())
  {
    a1(&v22, 0, 0);
    if (!v3)
    {
      v15 = v22;
    }
  }

  else
  {
    sub_100286984(v2, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = (*(v7 + 32))(v10, v14, v6);
      __chkstk_darwin(v16);
      *(&v21 - 4) = v10;
      *(&v21 - 3) = a1;
      *(&v21 - 2) = a2;
      sub_1004A5314();
      (*(v7 + 8))(v10, v6);
      if (!v3)
      {
        v15 = v22;
      }
    }

    else
    {
      v17 = *v14;
      v18 = v14[1];
      v19 = sub_10028ECC4(a1, a2, *v14, v18);
      sub_100014D40(v17, v18);
      if (!v3)
      {
        LOBYTE(v22) = v19 & 1;
        v15 = v19 & 1;
      }
    }
  }

  return v15 & 1;
}

uint64_t Message.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004A5384();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for Message.Data(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10028E2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v41 = a4;
  v8 = sub_1004A5384();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Message.Data(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = a1;
  v45 = a2;
  result = Message.isEmpty.getter();
  if (result)
  {
    v18 = a1 == 0;
LABEL_56:
    *v41 = v18;
    return result;
  }

  sub_100286984(a3, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v18 = 0;
    v21 = *v16;
    v20 = v16[1];
    v22 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v29 = *(v21 + 16);
        v40 = *(v21 + 24);
        v30 = sub_1004A40D4();
        if (v30)
        {
          v31 = v30;
          v32 = sub_1004A4104();
          if (__OFSUB__(v29, v32))
          {
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v23 = v29 - v32 + v31;
        }

        else
        {
          v23 = 0;
        }

        v33 = v40 - v29;
        if (!__OFSUB__(v40, v29))
        {
          v34 = sub_1004A40F4();
          v35 = a2 - a1;
          if (!a1)
          {
            v35 = 0;
          }

          if (!v23)
          {
            goto LABEL_46;
          }

          v18 = 0;
          if (v34 >= v33)
          {
            v36 = v33;
          }

          else
          {
            v36 = v34;
          }

          if (a1 && v35 == v36)
          {
            goto LABEL_48;
          }

          goto LABEL_54;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else if (v22)
    {
      v23 = (v21 >> 32) - v21;
      if (v21 >> 32 >= v21)
      {
        v24 = sub_1004A40D4();
        if (!v24)
        {
          goto LABEL_12;
        }

        v25 = sub_1004A4104();
        if (!__OFSUB__(v21, v25))
        {
          v24 += v21 - v25;
LABEL_12:
          v26 = sub_1004A40F4();
          v27 = a2 - a1;
          if (!a1)
          {
            v27 = 0;
          }

          if (v24)
          {
            v18 = 0;
            if (v26 >= v23)
            {
              v28 = (v21 >> 32) - v21;
            }

            else
            {
              v28 = v26;
            }

            if (!a1 || v27 != v28)
            {
LABEL_44:
              while (v4)
              {

                sub_100014D40(v21, v20);
                __break(1u);
LABEL_46:
                v18 = v35 == 0;
                if (a1 && !v35)
                {
LABEL_48:
                  if (v23)
                  {
                    v38 = v23 == a1;
                  }

                  else
                  {
                    v38 = 0;
                  }

                  v18 = v38;
                }

LABEL_54:
                ;
              }

              goto LABEL_55;
            }
          }

          else
          {
            v18 = v27 == 0;
            if (!a1 || v27)
            {
              goto LABEL_44;
            }
          }

          if (v24)
          {
            v37 = v24 == a1;
          }

          else
          {
            v37 = 0;
          }

          v18 = v37;
          goto LABEL_44;
        }

LABEL_60:
        __break(1u);
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_55:
    result = sub_100014D40(v21, v20);
    goto LABEL_56;
  }

  v19 = (*(v9 + 32))(v12, v16, v8);
  __chkstk_darwin(v19);
  *(&v39 - 4) = v12;
  *(&v39 - 3) = sub_1002952A4;
  *(&v39 - 2) = &v43;
  sub_1004A5314();
  if (!v4)
  {
    result = (*(v9 + 8))(v12, v8);
    v18 = v42;
    goto LABEL_56;
  }

  result = (*(v9 + 8))(v12, v8);
  __break(1u);
  return result;
}

BOOL Message.isEmpty.getter()
{
  v1 = v0;
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Message.Data(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100286984(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1001B60F8();
    sub_1004A5E64();
    sub_1004A5EA4();
    (*(v3 + 8))(v6, v2);
    return v20[1] == v20[0];
  }

  else
  {
    v13 = *v10;
    v14 = v10[1];
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 == 2)
      {
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        sub_100014D40(v13, v14);
        return v18 == v17;
      }

      else
      {
        sub_100014D40(v13, v14);
        return 1;
      }
    }

    else if (v15)
    {
      v19 = *v10;
      sub_100014D40(v13, v14);
      return v19 == v19 >> 32;
    }

    else
    {
      v16 = v10[1];
      sub_100014D40(v13, v14);
      return BYTE6(v16) == 0;
    }
  }
}