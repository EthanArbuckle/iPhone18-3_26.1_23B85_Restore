uint64_t sub_1ABB64180(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 72;
  v9 = (a3 - a2) / 72;
  if (v8 < v9)
  {
    sub_1ABADD498(a1, (a2 - a1) / 72, a4);
    v10 = &v4[72 * v8];
    v46 = v10;
    v48 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_47;
      }

      v50 = v7;
      v58 = v6;
      memcpy(__dst, v6, 0x41uLL);
      memcpy(v57, v4, 0x41uLL);
      v12 = __dst[0];
      v13 = __dst[1];
      v14 = v57[0];
      v15 = v57[1];
      v17 = v57[2];
      v16 = v57[3];
      v54 = __dst[2];
      v55 = __dst[3];
      sub_1ABB24348(__dst, &v52);
      sub_1ABB24348(v57, &v52);

      MEMORY[0x1AC5A9410](14906, 0xE200000000000000);
      v52 = v54;
      v53 = v55;

      MEMORY[0x1AC5A9410](v12, v13);

      v19 = v52;
      v18 = v53;
      v52 = v17;
      v53 = v16;

      MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

      MEMORY[0x1AC5A9410](v14, v15);

      if (v19 == v52 && v18 == v53)
      {

        sub_1ABB243A4(v57);
        sub_1ABB243A4(__dst);
        v22 = v50;
      }

      else
      {
        v21 = sub_1ABF25054();

        sub_1ABB243A4(v57);
        sub_1ABB243A4(__dst);
        v22 = v50;
        if (v21)
        {
          v23 = v58;
          v6 = v58 + 72;
          v24 = v50 == v58;
          goto LABEL_15;
        }
      }

      v23 = v4;
      v24 = v22 == v4;
      v4 += 72;
      v6 = v58;
LABEL_15:
      v10 = v46;
      v5 = v48;
      if (!v24)
      {
        memmove(v22, v23, 0x48uLL);
      }

      v7 = v22 + 72;
    }
  }

  sub_1ABADD498(a2, (a3 - a2) / 72, a4);
  v10 = &v4[72 * v9];
  v44 = v4;
  v51 = v7;
LABEL_19:
  __src = v6 - 72;
  v25 = v5 - 72;
  v58 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v47 = v10;
    v49 = v25;
    v27 = v10 - 72;
    memcpy(__dst, v10 - 72, 0x41uLL);
    memcpy(v57, __src, 0x41uLL);
    v28 = __dst[0];
    v29 = __dst[1];
    v31 = v57[0];
    v30 = v57[1];
    v32 = v57[2];
    v33 = v57[3];
    v54 = __dst[2];
    v55 = __dst[3];
    sub_1ABB24348(__dst, &v52);
    sub_1ABB24348(v57, &v52);

    MEMORY[0x1AC5A9410](14906, 0xE200000000000000);
    v52 = v54;
    v53 = v55;

    MEMORY[0x1AC5A9410](v28, v29);

    v34 = v52;
    v35 = v53;
    v52 = v32;
    v53 = v33;

    MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

    MEMORY[0x1AC5A9410](v31, v30);

    if (v34 == v52 && v35 == v53)
    {
      v37 = 0;
    }

    else
    {
      v37 = sub_1ABF25054();
    }

    v5 = v49;

    sub_1ABB243A4(v57);
    sub_1ABB243A4(__dst);
    v4 = v44;
    v6 = v58;
    v7 = v51;
    v10 = v47;
    v38 = v49 + 72;
    if (v37)
    {
      v40 = v38 < v58 || v49 >= v58;
      if (!v40 && v38 == v58)
      {
        v6 = __src;
      }

      else
      {
        v6 = __src;
        memmove(v49, __src, 0x48uLL);
      }

      goto LABEL_19;
    }

    v39 = v38 < v47 || v49 >= v47;
    if (v39 || v47 != v38)
    {
      memmove(v49, v27, 0x48uLL);
    }

    v25 = v49 - 72;
    v10 = v27;
  }

LABEL_47:
  v41 = 72 * ((v10 - v4) / 72);
  if (v6 != v4 || v6 >= &v4[v41])
  {
    memmove(v6, v4, v41);
  }

  return 1;
}

uint64_t sub_1ABB645D8(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
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
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v21 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9)) | (v16 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1ABB64758(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v3 = 0;
LABEL_16:
    v4 = 1;
LABEL_18:
    *result = v4;
    return v3;
  }

  v3 = a3;
  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 279;
    v5 = a2;
    v15 = result;
    v6 = 0;
    v7 = 0;
    v14 = a3 + 1;
    while (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v7 == 278)
      {
        v3 = 278;
        result = v15;
        goto LABEL_18;
      }

      if ((v7 + 1) >= 0x117)
      {
        goto LABEL_20;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_24;
      }

      v8 = &_Records_GDEntityPredicate_records[v6];
      if (*&_Records_GDEntityPredicate_records[v6 + 16] >= 3481)
      {
        goto LABEL_21;
      }

      if (*(v8 + 5) >= 4281)
      {
        goto LABEL_22;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_25;
      }

      v9 = v8[12];
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_26;
      }

      v11 = result;
      v12 = v10;
      result = sub_1ABF23DD4();
      *v5 = v11;
      *(v5 + 8) = v12;
      *(v5 + 16) = result;
      *(v5 + 24) = v13;
      *(v5 + 32) = v9;
      v5 += 40;
      ++v7;
      v6 += 12;
      if (v3 == v7)
      {
        v4 = v14;
        result = v15;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1ABB648F0()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v59 = sub_1ABF23334();
  v7 = sub_1ABA7BB64(v59);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v58 = v13 - v12;
  v65 = sub_1ABF23314();
  v14 = sub_1ABA7BB64(v65);
  v60 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v57 = v19 - v18;
  v56 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  v20 = sub_1ABA7BB64(v56);
  v54 = v21;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v20);
  v26 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v55 = v46 - v27;
  v28 = sub_1ABF233D4();
  v30 = v29;
  sub_1ABB661E0(v0, type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1);
  if (v4 && v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v47 = v6;
      v31 = *(v28 + 16);
      v51 = v60 + 16;
      v50 = (v9 + 8);
      v49 = v60 + 8;
      v53 = v31;
      v46[2] = v31 - v30;
      v46[1] = v2;
      v32 = v2 - 1;
      v33 = v30;
      v52 = v28;
      v48 = v30;
      v34 = v60;
      while (1)
      {
        if (v53 == v33)
        {
          v30 = v53;
          v6 = v47;
          goto LABEL_13;
        }

        if (v30 < 0)
        {
          break;
        }

        if (v33 >= *(v28 + 16))
        {
          goto LABEL_15;
        }

        v35 = *(v34 + 80);
        v64 = v32;
        v36 = v57;
        (*(v34 + 16))(v57, v28 + ((v35 + 32) & ~v35) + *(v34 + 72) * v33, v65);
        v63 = sub_1ABF232F4();
        sub_1ABF232F4();
        v37 = v58;
        sub_1ABF24454();
        sub_1ABEC9148();
        (*v50)(v37, v59);
        v62 = v66;
        v38 = v68;
        v61 = v67;
        v39 = v69;
        v40 = sub_1ABF232E4();
        type metadata accessor for VisualUnderstandingService.ObservationSequence();
        v41 = swift_allocObject();
        v41[5] = &type metadata for VisualUnderstandingServiceBackendV1.ObservationSequenceV1.Iterator;
        v41[6] = sub_1ABB66238();
        v41[2] = v40;
        v41[3] = 0;
        v42 = *(v56 + 64);
        v43 = v4;
        v44 = *(v56 + 80);
        *v26 = v63;
        *(v26 + 8) = v62;
        *(v26 + 3) = v61;
        *(v26 + 4) = v38;
        v26[40] = v39;
        sub_1ABF23304();
        (*(v34 + 8))(v36, v65);
        *&v26[v44] = v41;
        v45 = v55;
        sub_1ABB65814(v26, v55);
        sub_1ABB65814(v45, v43);
        if (!v64)
        {
          v30 = v33 + 1;
          v6 = v47;
          v28 = v52;
          goto LABEL_13;
        }

        v4 = v43 + *(v54 + 72);
        v32 = v64 - 1;
        ++v33;
        v28 = v52;
        v30 = v48;
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    *v6 = v28;
    v6[1] = v30;
    sub_1ABA7BC1C();
  }
}

uint64_t sub_1ABB64D18(uint64_t result, void *a2, uint64_t a3)
{
  v4 = result;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v6 = a2;
      result = swift_beginAccess();
      v7 = 0;
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v9 = *(v3 + 48);
        sub_1ABA94E50(v3 + 16, *(v3 + 40));
        result = sub_1ABF24864();
        if (v12)
        {
          swift_endAccess();
          goto LABEL_11;
        }

        *v6 = v10;
        v6[1] = v11;
        v6 += 2;
        ++v7;
        if (v8 == a3)
        {
          swift_endAccess();
          v7 = a3;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v7 = 0;
LABEL_11:
    *v4 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1ABB64E14(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        result = sub_1ABEC4C94();
        if (v9)
        {
          goto LABEL_9;
        }

        *(a2 + 8 * v5++) = result;
        if (v8 == a3)
        {
          v5 = a3;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    *v4 = v3;
    return v5;
  }

  return result;
}

void sub_1ABB64E94()
{
  sub_1ABA7E2A8();
  sub_1ABAA3C08();
  v4 = sub_1ABAD219C(&qword_1EB4D3870, &qword_1ABF3DF00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v16 - v6;
  v8 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  v9 = sub_1ABA7BB64(v8);
  v16[1] = v10;
  v17 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v16 - v13;
  v16[0] = v1;
  if (!v3 || !v2)
  {
LABEL_11:
    sub_1ABAA3444();
    sub_1ABA7BC1C();
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    sub_1ABAA2528();
    while (1)
    {
      v15 = *(v0 + 64);
      sub_1ABA94E50(v0 + 32, *(v0 + 56));
      sub_1ABAA2840();
      if (sub_1ABA7E1E0(v7, 1, v17) == 1)
      {
        swift_endAccess();
        sub_1ABAB480C(v7, &qword_1EB4D3870, &qword_1ABF3DF00);
        goto LABEL_11;
      }

      sub_1ABB65814(v7, v14);
      sub_1ABB65814(v14, v3);
      if (v2 == 1)
      {
        break;
      }

      sub_1ABAA2FE8();
    }

    swift_endAccess();
    goto LABEL_11;
  }

  __break(1u);
}

void sub_1ABB65048()
{
  sub_1ABA7E2A8();
  sub_1ABAA3C08();
  v4 = sub_1ABAD219C(&qword_1EB4D3868, &qword_1ABF3DEF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
  v9 = sub_1ABA7BB64(v8);
  v17[1] = v10;
  v18 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  v17[0] = v1;
  if (!v3 || !v2)
  {
LABEL_11:
    sub_1ABAA3444();
    sub_1ABA7BC1C();
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    sub_1ABAA2528();
    while (1)
    {
      v16 = *(v0 + 64);
      sub_1ABA94E50(v0 + 32, *(v0 + 56));
      sub_1ABAA2840();
      if (sub_1ABA7E1E0(v7, 1, v18) == 1)
      {
        swift_endAccess();
        sub_1ABAB480C(v7, &qword_1EB4D3868, &qword_1ABF3DEF8);
        goto LABEL_11;
      }

      sub_1ABB66180(v7, v15, type metadata accessor for VisualUnderstandingService.MappingChange);
      sub_1ABB66180(v15, v3, type metadata accessor for VisualUnderstandingService.MappingChange);
      if (v2 == 1)
      {
        break;
      }

      sub_1ABAA2FE8();
    }

    swift_endAccess();
    goto LABEL_11;
  }

  __break(1u);
}

void sub_1ABB65208(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 || !a3)
  {
LABEL_24:
    sub_1ABB66180(v3, a1, type metadata accessor for AnswerRenderIterator);
    return;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  v6 = a2;
  v7 = type metadata accessor for AnswerRenderIterator(0);
  v8 = 0;
  v9 = v7[6];
  while (v8 < a3)
  {
    if (__OFADD__(v8, 1))
    {
      goto LABEL_26;
    }

    v10 = *(*(v3 + v9) + 16);
    if (!v10)
    {
      goto LABEL_24;
    }

    v11 = v3 + v7[8];
    if (*(v11 + 8))
    {
      v12 = 0;
      *v11 = 0;
      *(v11 + 8) = 0;
LABEL_16:
      sub_1ABE44B9C();
      goto LABEL_17;
    }

    v13 = *v11;
    if (*v11 >= v10 - 1)
    {
      goto LABEL_24;
    }

    *(v11 + 8) = 0;
    v12 = v13 + 1;
    *v11 = v13 + 1;
    if (v13 == -1)
    {
      v12 = 0;
      goto LABEL_16;
    }

    v14 = *(v3 + v7[7]);
    if (v14 == -1 || v14 && !(v12 % v14))
    {
      goto LABEL_16;
    }

LABEL_17:
    if (v12 < 0)
    {
      goto LABEL_27;
    }

    v15 = *(v3 + v9);
    if (v12 >= *(v15 + 16))
    {
      goto LABEL_28;
    }

    v16 = v15 + 112 * v12;
    memcpy(__dst, (v16 + 32), 0x70uLL);
    memmove(v6, (v16 + 32), 0x70uLL);
    if (v8 + 1 == a3)
    {
      sub_1ABAE441C(__dst, v17);
      goto LABEL_24;
    }

    v6 += 112;
    sub_1ABAE441C(__dst, v17);
    ++v8;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1ABB653B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 64);
  v9 = -(-1 << *(a4 + 32));
  sub_1ABA93304();
  v13 = v12 & v11;
  if (!v14)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA7EF58(v23);
    return;
  }

  v15 = v10;
  if (!v10)
  {
    v23 = 0;
    goto LABEL_17;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    sub_1ABA8FEB8();
    while (v17 < v15)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_21;
      }

      if (!v13)
      {
        while (!__OFADD__(v16, 1))
        {
          if (v16 + 1 >= v6)
          {
            sub_1ABA83FC4();
            goto LABEL_17;
          }

          sub_1ABAA5F78();
        }

        __break(1u);
        break;
      }

      v19 = v16;
      sub_1ABA80858();
      v21 = *(a4 + 56);
      sub_1ABAA4D04(v20 | (v19 << 6), v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
      v22 = memmove(v4, v5, 0x58uLL);
      if (v18 == v15)
      {
        sub_1ABA9576C(v22);
        v23 = v19;
        goto LABEL_17;
      }

      v4 += 88;
      sub_1ABA9576C(v22);
      sub_1ABAA5764();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1ABB654D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABA8F158(a1, a2, a3, a4);
  if (!v9)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA7EF58(v17);
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v17 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    sub_1ABA8FEB8();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v6)
      {
        while (!__OFADD__(v11, 1))
        {
          if (v11 + 1 >= v7)
          {
            sub_1ABA83FC4();
            goto LABEL_17;
          }

          sub_1ABAA5F78();
        }

        __break(1u);
        break;
      }

      v14 = v11;
      sub_1ABA80858();
      v16 = (*(v4 + 48) + 144 * (v15 | (v14 << 6)));
      memcpy(__dst, v16, 0x90uLL);
      memmove(v5, v16, 0x90uLL);
      if (v13 == v10)
      {
        sub_1ABAE42A8(__dst, v18);
        v17 = v14;
        goto LABEL_17;
      }

      v5 += 144;
      sub_1ABAE42A8(__dst, v18);
      sub_1ABAA5764();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1ABB65600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABAA3F9C(a1, a2, a3, a4);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if (!v6)
  {
LABEL_15:
    sub_1ABA81610(v4, v6, v7, v8);
    return;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (!v10)
      {
        while (1)
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v14 >= ((63 - v9) >> 6))
          {
            v6 = v11;
            goto LABEL_15;
          }

          v10 = *(v8 + 8 * v14);
          ++v12;
          if (v10)
          {
            v12 = v14;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      *v5++ = *(*(v7 + 48) + ((v12 << 9) | (8 * v15)));
      v11 = v13;
      if (v13 == v6)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1ABB656C0()
{
  sub_1ABA8BA68();
  if (!v1)
  {
    v3 = 0;
    goto LABEL_17;
  }

  v3 = v2;
  if (!v2)
  {
LABEL_17:
    *v0 = v3;
    sub_1ABA8D208();
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = v1;
    v15 = v0;
    v5 = 0;
    v6 = 0;
    while (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v6 == 181)
      {
        v3 = 181;
LABEL_16:
        v0 = v15;
        goto LABEL_17;
      }

      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_22;
      }

      v7 = (_Records_GDEntityClass_records + v5);
      if (*(_Records_GDEntityClass_records + v5 + 8) >= 1844)
      {
        goto LABEL_19;
      }

      if (v7[2] >= 3396)
      {
        goto LABEL_20;
      }

      if (!_Records_GDEntityClass_classIds[0])
      {
        goto LABEL_24;
      }

      v8 = *v7;
      v9 = sub_1ABF23DD4();
      if (!_Records_GDEntityClass_labels)
      {
        goto LABEL_23;
      }

      v11 = v9;
      v12 = v10;
      ++v6;
      v13 = sub_1ABF23DD4();
      *v4 = v11;
      *(v4 + 8) = v12;
      *(v4 + 16) = v13;
      *(v4 + 24) = v14;
      *(v4 + 32) = v8;
      v4 += 40;
      v5 += 24;
      if (v3 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_1ABB65814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABB65884()
{
  result = qword_1EB4D3880;
  if (!qword_1EB4D3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3880);
  }

  return result;
}

unint64_t sub_1ABB658D8()
{
  result = qword_1EB4D3888;
  if (!qword_1EB4D3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3888);
  }

  return result;
}

unint64_t sub_1ABB6592C()
{
  result = qword_1EB4CF6A0;
  if (!qword_1EB4CF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF6A0);
  }

  return result;
}

void sub_1ABB65980()
{
  sub_1ABA7E2A8();
  v3 = v1 + 56;
  v2 = *(v1 + 56);
  v4 = -1 << *(v1 + 32);
  sub_1ABA93304();
  v8 = v7 & v6;
  if (!v9)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA97A38(v11);
    sub_1ABA7BC1C();
    return;
  }

  v10 = v5;
  if (!v5)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    v14 = (v13 - v4) >> 6;
    while (v12 < v10)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        while (1)
        {
          v16 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_17;
          }

          v8 = *(v3 + 8 * v16);
          ++v11;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v11;
LABEL_12:
      sub_1ABA7E43C();
      if (v17)
      {

        v11 = v16;
        goto LABEL_17;
      }

      v0 += 16;

      v12 = v15;
      v11 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1ABB65A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABA8F158(a1, a2, a3, a4);
  if (!v10)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA7EF58(v19);
    return;
  }

  v11 = v9;
  if (!v9)
  {
    v19 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    sub_1ABA8FEB8();
    while (v13 < v11)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v7)
      {
        while (!__OFADD__(v12, 1))
        {
          if (v12 + 1 >= v8)
          {
            sub_1ABA83FC4();
            goto LABEL_17;
          }

          sub_1ABAA5F78();
        }

        __break(1u);
        break;
      }

      v15 = v12;
      sub_1ABA80858();
      v17 = *(v4 + 48);
      sub_1ABAA4D04(v16 | (v15 << 6), v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
      v18 = memmove(v5, v6, 0x58uLL);
      if (v14 == v11)
      {
        sub_1ABA9576C(v18);
        v19 = v15;
        goto LABEL_17;
      }

      v5 += 88;
      sub_1ABA9576C(v18);
      sub_1ABAA5764();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABB65B80(uint64_t result, char *a2, unint64_t a3, uint64_t a4)
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
LABEL_21:
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
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v19 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 72 * (v17 | (v16 << 6)));
      memcpy(__dst, v18, 0x41uLL);
      memmove(v11, v18, 0x41uLL);
      if (v15 == v10)
      {
        break;
      }

      v11 += 72;
      result = sub_1ABB24348(__dst, v20);
      v12 = v15;
      v13 = v16;
    }

    sub_1ABB24348(__dst, v20);
    v13 = v16;
LABEL_19:
    v7 = v19;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1ABB65D14()
{
  sub_1ABA8BA68();
  sub_1ABA8F158(v3, v4, v5, v6);
  if (!v8)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA7EF58(v23);
    sub_1ABA8D208();
    return;
  }

  v9 = v7;
  if (!v7)
  {
    v23 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    v14 = (v12 - v13) >> 6;
    while (v11 < v9)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v10, 1))
        {
          if (v10 + 1 >= v14)
          {
            sub_1ABA83FC4();
            goto LABEL_17;
          }

          sub_1ABAA5F78();
        }

        __break(1u);
        break;
      }

      v16 = v10;
      sub_1ABA80858();
      v18 = *(v0 + 48) + 40 * (v17 | (v16 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      LOBYTE(v18) = *(v18 + 32);
      *v1 = v20;
      *(v1 + 8) = v19;
      *(v1 + 16) = v21;
      *(v1 + 24) = v22;
      *(v1 + 32) = v18;
      if (v15 == v9)
      {

        v23 = v16;
        goto LABEL_17;
      }

      v1 += 40;

      sub_1ABAA5764();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1ABB65E24()
{
  sub_1ABA7E2A8();
  v3 = v1 + 64;
  v2 = *(v1 + 64);
  v4 = -1 << *(v1 + 32);
  sub_1ABA93304();
  v8 = v7 & v6;
  if (!v9)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA97A38(v11);
    sub_1ABA7BC1C();
    return;
  }

  v10 = v5;
  if (!v5)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    v14 = (v13 - v4) >> 6;
    while (v12 < v10)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        while (1)
        {
          v16 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_17;
          }

          v8 = *(v3 + 8 * v16);
          ++v11;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v11;
LABEL_12:
      sub_1ABA7E43C();
      if (v17)
      {

        v11 = v16;
        goto LABEL_17;
      }

      v0 += 16;

      v12 = v15;
      v11 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1ABB65F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABAA3F9C(a1, a2, a3, a4);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if (!v6)
  {
LABEL_15:
    sub_1ABA81610(v4, v6, v7, v8);
    return;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (!v10)
      {
        while (1)
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v14 >= ((63 - v9) >> 6))
          {
            v6 = v11;
            goto LABEL_15;
          }

          v10 = *(v8 + 8 * v14);
          ++v12;
          if (v10)
          {
            v12 = v14;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v15 = *(v7 + 48) + 24 * (__clz(__rbit64(v10)) | (v12 << 6));
      v16 = *(v15 + 8);
      v10 &= v10 - 1;
      *v5 = *v15;
      *(v5 + 8) = v16;
      v5 += 24;
      v11 = v13;
      if (v13 == v6)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1ABB65FF0()
{
  sub_1ABA8BA68();
  sub_1ABA8F158(v3, v4, v5, v6);
  if (!v8)
  {
    sub_1ABA94848();
LABEL_17:
    sub_1ABA7EF58(v22);
    sub_1ABA8D208();
    return;
  }

  v9 = v7;
  if (!v7)
  {
    v22 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    sub_1ABA7D358();
    v14 = (v12 - v13) >> 6;
    while (v11 < v9)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v10, 1))
        {
          if (v10 + 1 >= v14)
          {
            sub_1ABA83FC4();
            goto LABEL_17;
          }

          sub_1ABAA5F78();
        }

        __break(1u);
        break;
      }

      v16 = v10;
      sub_1ABA80858();
      v18 = (*(v0 + 48) + ((v16 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v1 = *v18;
      v1[1] = v19;
      v1[2] = v20;
      v1[3] = v21;
      if (v15 == v9)
      {

        v22 = v16;
        goto LABEL_17;
      }

      v1 += 4;

      sub_1ABAA5764();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABB660F8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[4];
  return sub_1ABB614E0(a1, v3[3], a2, a3);
}

uint64_t sub_1ABB6611C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB66180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1ABA7BBB0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1ABB661E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1ABB66238()
{
  result = qword_1EB4CF978;
  if (!qword_1EB4CF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF978);
  }

  return result;
}

uint64_t sub_1ABB66290(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a8;
  v56 = a1;
  v57 = a2;
  sub_1ABA7BD7C();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  v58 = v17 - v16;
  v19 = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v60 = v20;
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v45 - v25;
  v27 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7BC58();
  v54 = v29 - v28;
  swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v48 = v31;
  v49 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v45 - v34;
  v36 = sub_1ABF24494();
  if (!v36)
  {
    return sub_1ABF24154();
  }

  v59 = v36;
  v63 = sub_1ABF24C04();
  v50 = sub_1ABF24C14();
  sub_1ABF24BB4();
  result = sub_1ABF24474();
  if ((v59 & 0x8000000000000000) == 0)
  {
    v45 = v12;
    v46 = a5;
    v38 = 0;
    v51 = (v60 + 16);
    v52 = v60 + 8;
    v53 = v8;
    while (!__OFADD__(v38, 1))
    {
      v60 = v38 + 1;
      v39 = sub_1ABF245D4();
      (*v51)(v26);
      v39(v62, 0);
      v40 = v61;
      v56(v26, v58);
      if (v40)
      {
        v43 = sub_1ABA7E46C();
        v44(v43);
        (*(v48 + 8))(v35, v49);

        return (*(v45 + 32))(v47, v58, v46);
      }

      v61 = 0;
      v41 = sub_1ABA7E46C();
      v42(v41);
      sub_1ABF24BF4();
      result = sub_1ABF244B4();
      ++v38;
      if (v60 == v59)
      {
        (*(v48 + 8))(v35, v49);
        return v63;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Dictionary<>.triples(for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  sub_1ABA7BD7C();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  v20 = v19 - v18;
  v24 = *a1;
  sub_1ABB668FC();
  sub_1ABF23A64();
  if (sub_1ABA7E1E0(v12, 1, a3) == 1)
  {
    (*(v7 + 8))(v12, v5);
    sub_1ABA8E6F4();
    swift_getAssociatedTypeWitness();
    v24 = sub_1ABF24154();
    sub_1ABF241F4();
    sub_1ABA8F18C();
    swift_getWitnessTable();
    return sub_1ABF24A14();
  }

  else
  {
    (*(v14 + 32))(v20, v12, a3);
    v24 = sub_1ABC3D718();
    sub_1ABA8E6F4();
    swift_getAssociatedTypeWitness();
    sub_1ABF241F4();
    sub_1ABA8F18C();
    swift_getWitnessTable();
    v21 = sub_1ABF24A14();
    (*(v14 + 8))(v20, a3);
  }

  return v21;
}

unint64_t sub_1ABB668FC()
{
  result = qword_1ED86DAD0;
  if (!qword_1ED86DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DAD0);
  }

  return result;
}

uint64_t Dictionary<>.enumerateTriples(for:block:)(uint64_t *a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v11 = *a1;
  sub_1ABA7BF40();
  Dictionary<>.triples(for:)(v5, v6, v7);
  swift_getAssociatedTypeWitness();
  v8 = sub_1ABF24A04();
  sub_1ABA7D36C();
  WitnessTable = swift_getWitnessTable();
  sub_1ABE5161C(a2, a3, v8, WitnessTable);
}

uint64_t Dictionary<>.triples<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a7;
  v12[7] = a2;
  swift_getAssociatedTypeWitness();
  sub_1ABA83730();
  sub_1ABF24A04();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_1ABB444E4(sub_1ABB671DC, v12, a4, TupleTypeMetadata2, MEMORY[0x1E69E73E0], a6, MEMORY[0x1E69E7410], v10);
}

uint64_t Dictionary<>.enumerateTriples<A>(for:block:)(uint64_t a1, uint64_t (*a2)(uint64_t *, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1ABA7BF40();
  Dictionary<>.triples<A>(for:)(v11, v12, v13, v14, v15, v16, a9);
  swift_getAssociatedTypeWitness();
  sub_1ABA83730();
  sub_1ABF24A04();
  swift_getTupleTypeMetadata2();
  sub_1ABF241F4();
  sub_1ABA8F18C();
  swift_getWitnessTable();
  sub_1ABA7D36C();
  WitnessTable = swift_getWitnessTable();
  sub_1ABA93314(a2, a3, v18, v19, v20, WitnessTable);
}

uint64_t Dictionary<>.triples()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = sub_1ABB6722C;
  v9[6] = &v10;
  sub_1ABB668FC();
  sub_1ABA8E6F4();
  v4 = sub_1ABF23A44();
  swift_getAssociatedTypeWitness();
  sub_1ABA83730();
  sub_1ABF241F4();
  sub_1ABA8E6F4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  return sub_1ABB66290(sub_1ABB6726C, v9, v4, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
}

uint64_t sub_1ABB66D20@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a3, a1, a1 + *(TupleTypeMetadata2 + 48));
  *(a3 + 8) = result;
  return result;
}

uint64_t Dictionary<>.enumerateTriples(block:)(uint64_t (*a1)(uint64_t *, void), uint64_t a2)
{
  sub_1ABA7BF40();
  Dictionary<>.triples()(v4, v5, v6, v7);
  swift_getAssociatedTypeWitness();
  sub_1ABA83730();
  sub_1ABF241F4();
  swift_getTupleTypeMetadata2();
  sub_1ABF241F4();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_1ABA93314(a1, a2, v9, v10, v11, WitnessTable);
}

uint64_t sub_1ABB66F64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t, uint64_t, uint64_t))
{
  v13[2] = a2;
  v13[0] = *a1;
  sub_1ABB668FC();
  v9 = sub_1ABF23A44();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  return a8(v13, v9, WitnessTable, v11);
}

uint64_t sub_1ABB67030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 - 16);
  v6 = *(a3 - 8);
  result = Dictionary<>.triples(for:)(a1, *v4, *(a2 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_1ABB67070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = Dictionary<>.triples<A>(for:)(a1, *v6, *(a4 + 24), a2, *(a5 - 8), a3, *(a5 - 16));
  *a6 = result;
  return result;
}

uint64_t sub_1ABB670BC(uint64_t *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 16);
  v6 = *(a5 - 8);
  v8 = *v5;
  v9 = *(a4 + 24);
  return Dictionary<>.enumerateTriples(for:block:)(a1, a2, a3);
}

uint64_t sub_1ABB67124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Dictionary<>.triples()(*v3, *(a1 + 24), *(a2 - 8), *(a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1ABB67164(uint64_t (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 16);
  v5 = *(a4 - 8);
  v7 = *v4;
  v8 = *(a3 + 24);
  return Dictionary<>.enumerateTriples(block:)(a1, a2);
}

uint64_t sub_1ABB671DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[4];
  v7 = v2[6];
  v6 = v2[7];
  v10 = *a1;
  v8 = v10;
  result = Dictionary<>.triples(for:)(&v10, v6, v4);
  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1ABB6722C(void *a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  *a1 = *a2;
  return sub_1ABC3D718();
}

uint64_t sub_1ABB6726C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  return sub_1ABB66D20(a1, *(v2 + 40), a2);
}

uint64_t sub_1ABB6729C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABB67328(uint64_t a1)
{

  result = sub_1ABB800DC(1, a1);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
    if (v4 == v5 >> 1)
    {
      return swift_unknownObjectRelease();
    }

    while (v4 < (v5 >> 1))
    {
      v7 = *(v3 + 8 * v4);
      if (v7 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v6 / v7;
      }

      if ((v5 >> 1) - 1 == v4)
      {
        return swift_unknownObjectRelease();
      }

      ++v4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB673E0(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[5];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ABB67490(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v9 = a3 + 32;
  v8 = *(a3 + 32);
  v7 = *(v9 + 8);
  v10 = *(*(v6 - 8) + 84);
  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = *(*(v6 - 8) + 84);
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v8 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(v11 + 80);
  v18 = *(*(v7 - 8) + 64);
  v19 = *(v14 + 80);
  v20 = *(*(v8 - 8) + 64);
  if (v16 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(*(v6 - 8) + 64) + v17;
  v23 = a2 - v21;
  if (a2 > v21)
  {
    v24 = v20 + ((v18 + v19 + (v22 & ~v17)) & ~v19) + 1;
    v25 = 8 * v24;
    if (v24 > 3)
    {
      goto LABEL_13;
    }

    v27 = ((v23 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v27 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v27 >= 2)
    {
LABEL_13:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_30;
      }

LABEL_20:
      v28 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v28 = 0;
      }

      if (v20 + ((v18 + v19 + (v22 & ~v17)) & ~v19) == -1)
      {
        v30 = 0;
      }

      else
      {
        if (v24 <= 3)
        {
          v29 = v20 + ((v18 + v19 + (v22 & ~v17)) & ~v19) + 1;
        }

        else
        {
          v29 = 4;
        }

        switch(v29)
        {
          case 2:
            v30 = *a1;
            break;
          case 3:
            v30 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v30 = *a1;
            break;
          default:
            v30 = *a1;
            break;
        }
      }

      v33 = v21 + (v30 | v28);
      return (v33 + 1);
    }
  }

LABEL_30:
  if (v10 != v21)
  {
    a1 = ((a1 + v22) & ~v17);
    if (v12 == v21)
    {
      v6 = v7;
      goto LABEL_36;
    }

    a1 = ((a1 + v18 + v19) & ~v19);
    if (v15 == v21)
    {
      v12 = v15;
      v6 = v8;
      goto LABEL_36;
    }

    v32 = *(a1 + v20);
    if (v32 < 2)
    {
      return 0;
    }

    v33 = (v32 + 2147483646) & 0x7FFFFFFF;
    return (v33 + 1);
  }

  v12 = *(*(v6 - 8) + 84);
LABEL_36:

  return sub_1ABA7E1E0(a1, v12, v6);
}

void sub_1ABB67734(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v11 = a4 + 32;
  v10 = *(a4 + 32);
  v9 = *(v11 + 8);
  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v8)
  {
    v14 = *(*(v7 - 8) + 84);
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v10 - 8);
  v16 = *(v15 + 84);
  if (v16 <= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = *(v15 + 84);
  }

  if (v17 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v12 + 80);
  v20 = *(*(v7 - 8) + 64) + v19;
  v21 = *(*(v9 - 8) + 64);
  v22 = *(v15 + 80);
  v23 = (v21 + v22 + (v20 & ~v19)) & ~v22;
  v24 = *(*(v10 - 8) + 64);
  v25 = v24 + v23 + 1;
  v26 = 8 * v25;
  v27 = a3 >= v18;
  v28 = a3 - v18;
  if (v28 != 0 && v27)
  {
    if (v25 <= 3)
    {
      v32 = ((v28 + ~(-1 << v26)) >> v26) + 1;
      if (HIWORD(v32))
      {
        v29 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    v29 = 0;
  }

  if (v18 >= a2)
  {
    switch(v29)
    {
      case 1:
        a1[v25] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *&a1[v25] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_52:
        __break(1u);
        return;
      case 4:
        *&a1[v25] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v8 == v18)
        {
          goto LABEL_41;
        }

        a1 = (&a1[v20] & ~v19);
        if (v13 == v18)
        {
          v8 = v13;
          v7 = v9;
        }

        else
        {
          a1 = (&a1[v21 + v22] & ~v22);
          if (v16 != v18)
          {
            a1[v24] = a2 + 1;
            return;
          }

          v8 = v16;
          v7 = v10;
        }

LABEL_41:

        sub_1ABA7B9B4(a1, a2, v8, v7);
        break;
    }
  }

  else
  {
    v30 = ~v18 + a2;
    if (v25 < 4)
    {
      v31 = (v30 >> v26) + 1;
      if (v24 + v23 != -1)
      {
        v34 = v30 & ~(-1 << v26);
        bzero(a1, v24 + v23 + 1);
        if (v25 == 3)
        {
          *v6 = v34;
          v6[2] = BYTE2(v34);
        }

        else if (v25 == 2)
        {
          *v6 = v34;
        }

        else
        {
          *v6 = v30;
        }
      }
    }

    else
    {
      bzero(a1, v24 + v23 + 1);
      *v6 = v30;
      v31 = 1;
    }

    switch(v29)
    {
      case 1:
        v6[v25] = v31;
        break;
      case 2:
        *&v6[v25] = v31;
        break;
      case 3:
        goto LABEL_52;
      case 4:
        *&v6[v25] = v31;
        break;
      default:
        return;
    }
  }
}

double sub_1ABB67AA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v5 = *(a1 + 24);
  sub_1ABA7BD7C();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v62 = v12 - v11;
  v63 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v51 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  sub_1ABA7BD7C();
  v22 = v21;
  v24 = *(v23 + 64);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v60 = (&v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v59 = &v51 - v28;
  v66 = *(a1 + 92);
  v29 = *(a1 + 48);
  v30 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v22 + 32;
  v57 = v22 + 16;
  v56 = (v7 + 32);
  v55 = v7 + 8;
  v54 = v22 + 8;
  v61 = TupleTypeMetadata2;
  v31 = v63;
  while (1)
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v20, 1, TupleTypeMetadata2) == 1)
    {
      (*(v51 + 8))(v20, v52);
      result = 0.0;
      v47 = v53;
      *(v53 + 16) = 0u;
      *(v47 + 32) = 0u;
      *v47 = 0u;
      *(v47 + 48) = -2;
      return result;
    }

    sub_1ABA8086C(&v75);
    v32 = v59;
    v33 = v20;
    v34(v59, v20, TupleTypeMetadata2);
    sub_1ABA8086C(&v74);
    v35 = v60;
    v36(v60, v32, TupleTypeMetadata2);
    v37 = *v35;
    v38 = v35 + *(TupleTypeMetadata2 + 48);
    v39 = v62;
    (*v56)(v62, v38, v31);
    v68 = v37;
    v40 = *(a1 + 96);
    v41 = *(a1 + 100);
    v67 = *(v3 + *(a1 + 104));
    v42 = *(a1 + 56);
    swift_getAssociatedTypeWitness();
    v50 = *(a1 + 64);
    sub_1ABC80E28(&v68, v67, *(a1 + 40), &v69, *(a1 + 32), v42, *(a1 + 80), *(a1 + 72));
    sub_1ABA8086C(&v73);
    v43 = v39;
    TupleTypeMetadata2 = v61;
    v44(v43, v31);
    sub_1ABA8086C(&v72);
    v45(v32, TupleTypeMetadata2);
    if (v70[24] != 255)
    {
      break;
    }

    sub_1ABB684E0(&v69);
    v20 = v33;
  }

  *&v71[9] = *&v70[9];
  v48 = v69;
  *v71 = *v70;
  v49 = v53;
  *v53 = v37;
  *(v49 + 8) = v48;
  *(v49 + 24) = *v71;
  result = *&v71[9];
  *(v49 + 33) = *&v71[9];
  return result;
}

uint64_t sub_1ABB67F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X7>, char *a7@<X8>, uint64_t a8)
{
  *a7 = a1;
  v13 = type metadata accessor for DynamicGraphObjectSequence.Iterator();
  v14 = v13[23];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a7[v14], a2, AssociatedTypeWitness);
  v16 = v13[24];
  sub_1ABA7EF70();
  (*(v17 + 32))(&a7[v18], a3, a8);
  v19 = v13[25];
  sub_1ABA7EF70();
  result = (*(v20 + 32))(&a7[v21], a4, a6);
  a7[v13[26]] = a5;
  return result;
}

uint64_t sub_1ABB68080@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v46 = *(a1 + 32);
  v47 = a2;
  sub_1ABA7BD7C();
  v45 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  v44 = v10 - v9;
  v12 = *(v11 + 40);
  sub_1ABA7BD7C();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  v20 = v19 - v18;
  v22 = *(v21 + 16);
  sub_1ABA7BD7C();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7BC58();
  v30 = v29 - v28;
  v32 = *(v31 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v36 = &v44 - v35;
  (*(v24 + 16))(v30, v3, v22);
  sub_1ABF23F04();
  (*(v14 + 16))(v20, v3 + *(a1 + 92), v12);
  v37 = v44;
  v38 = v46;
  (*(v45 + 16))(v44, v3 + *(a1 + 96), v46);
  v39 = *(a1 + 24);
  v42 = *(a1 + 72);
  v43 = *(a1 + 80);
  v41 = *(a1 + 56);
  return sub_1ABB67F1C(MEMORY[0x1E69E7CD0], v36, v20, v37, *(v3 + *(a1 + 100)), v38, v47, v12);
}

uint64_t sub_1ABB6830C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v14 = type metadata accessor for DynamicGraphObjectSequence();
  v15 = v14[23];
  sub_1ABA7EF70();
  (*(v16 + 32))(a8 + v17, a2, a7);
  v18 = v14[24];
  sub_1ABA7EF70();
  result = (*(v19 + 32))(a8 + v20, a3, a6);
  *(a8 + v14[25]) = a4;
  return result;
}

uint64_t sub_1ABB68450@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1ABB68080(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1ABB684E0(uint64_t a1)
{
  v2 = sub_1ABAD219C(qword_1EB4D3948, &qword_1ABF508F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1ABB68568(void *a1)
{
  sub_1ABB68CCC();
  if (v2 <= 0x3F)
  {
    v3 = a1[6];
    v4 = a1[2];
    swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      v6 = a1[5];
      swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        v8 = a1[4];
        swift_checkMetadataState();
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1ABB68644(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[6];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v12 = a3[4];
  v11 = a3[5];
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  if (v10 <= v14)
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = *(v9 + 84);
  }

  v16 = *(v12 - 8);
  if (v15 <= *(v16 + 84))
  {
    v17 = *(v16 + 84);
  }

  else
  {
    v17 = v15;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v9 + 80);
  v20 = *(*(AssociatedTypeWitness - 8) + 64);
  v21 = *(v13 + 80);
  v22 = *(v16 + 80);
  if (!a2)
  {
    return 0;
  }

  v23 = *(*(a3[5] - 8) + 64) + v22;
  if (a2 <= v18)
  {
    goto LABEL_31;
  }

  v24 = *(*(v12 - 8) + 64) + ((v23 + ((v20 + v21 + ((v19 + 8) & ~v19)) & ~v21)) & ~v22) + 1;
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v28 = ((a2 - v18 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v28))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v28 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v28 < 2)
    {
LABEL_31:
      if ((v17 & 0x80000000) != 0)
      {
        v33 = (a1 + v19 + 8) & ~v19;
        if (v10 == v18)
        {
          v11 = AssociatedTypeWitness;
        }

        else
        {
          v33 = (v33 + v20 + v21) & ~v21;
          if (v14 == v18)
          {
            v10 = v14;
          }

          else
          {
            v33 = (v23 + v33) & ~v22;
            v10 = *(v16 + 84);
            v11 = a3[4];
          }
        }

        return sub_1ABA7E1E0(v33, v10, v11);
      }

      else
      {
        v32 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v32) = -1;
        }

        return (v32 + 1);
      }
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_31;
  }

LABEL_21:
  v29 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v29 = 0;
  }

  if (*(*(v12 - 8) + 64) + ((v23 + ((v20 + v21 + ((v19 + 8) & ~v19)) & ~v21)) & ~v22) == -1)
  {
    v31 = 0;
  }

  else
  {
    if (v24 <= 3)
    {
      v30 = *(*(v12 - 8) + 64) + ((v23 + ((v20 + v21 + ((v19 + 8) & ~v19)) & ~v21)) & ~v22) + 1;
    }

    else
    {
      v30 = 4;
    }

    switch(v30)
    {
      case 2:
        v31 = *a1;
        break;
      case 3:
        v31 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v31 = *a1;
        break;
      default:
        v31 = *a1;
        break;
    }
  }

  return v18 + (v31 | v29) + 1;
}

void sub_1ABB68940(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[6];
  v9 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v14 = a4[4];
  v13 = a4[5];
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  if (v12 <= v16)
  {
    v17 = *(v15 + 84);
  }

  else
  {
    v17 = *(v11 + 84);
  }

  v18 = *(v14 - 8);
  v19 = *(v18 + 84);
  if (v17 <= v19)
  {
    v20 = *(v18 + 84);
  }

  else
  {
    v20 = v17;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v11 + 80);
  v23 = *(*(AssociatedTypeWitness - 8) + 64);
  v24 = *(v15 + 80);
  v25 = *(v18 + 80);
  v26 = *(*(a4[5] - 8) + 64) + v25;
  v27 = *(*(v14 - 8) + 64) + ((v26 + ((v23 + v24 + ((v22 + 8) & ~v22)) & ~v24)) & ~v25) + 1;
  v28 = 8 * v27;
  if (a3 <= v21)
  {
    v29 = 0;
  }

  else if (v27 <= 3)
  {
    v33 = ((a3 - v21 + ~(-1 << v28)) >> v28) + 1;
    if (HIWORD(v33))
    {
      v29 = 4;
    }

    else
    {
      if (v33 < 0x100)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      if (v33 >= 2)
      {
        v29 = v34;
      }

      else
      {
        v29 = 0;
      }
    }
  }

  else
  {
    v29 = 1;
  }

  if (v21 >= a2)
  {
    v32 = ~v25;
    switch(v29)
    {
      case 1:
        a1[v27] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v27] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_56:
        __break(1u);
        break;
      case 4:
        *&a1[v27] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if ((v20 & 0x80000000) != 0)
          {
            v37 = &a1[v22 + 8] & ~v22;
            if (v12 == v21)
            {
              v38 = a2;
              v13 = AssociatedTypeWitness;
            }

            else
            {
              v37 = (v37 + v23 + v24) & ~v24;
              if (v16 == v21)
              {
                v38 = a2;
                v12 = v16;
              }

              else
              {
                v37 = (v26 + v37) & v32;
                v38 = a2;
                v12 = v19;
                v13 = v14;
              }
            }

            sub_1ABA7B9B4(v37, v38, v12, v13);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v36 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v36 = (a2 - 1);
            }

            *a1 = v36;
          }
        }

        break;
    }
  }

  else
  {
    v30 = ~v21 + a2;
    if (v27 < 4)
    {
      v31 = (v30 >> v28) + 1;
      if (*(*(v14 - 8) + 64) + ((v26 + ((v23 + v24 + ((v22 + 8) & ~v22)) & ~v24)) & ~v25) != -1)
      {
        v35 = v30 & ~(-1 << v28);
        bzero(a1, v27);
        if (v27 == 3)
        {
          *a1 = v35;
          a1[2] = BYTE2(v35);
        }

        else if (v27 == 2)
        {
          *a1 = v35;
        }

        else
        {
          *a1 = v30;
        }
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v30;
      v31 = 1;
    }

    switch(v29)
    {
      case 1:
        a1[v27] = v31;
        break;
      case 2:
        *&a1[v27] = v31;
        break;
      case 3:
        goto LABEL_56;
      case 4:
        *&a1[v27] = v31;
        break;
      default:
        return;
    }
  }
}

void sub_1ABB68CCC()
{
  if (!qword_1EB4CF818)
  {
    sub_1ABB668FC();
    v0 = sub_1ABF243D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4CF818);
    }
  }
}

void sub_1ABB68E60()
{
  sub_1ABA81628();
  v21 = *MEMORY[0x1E69E9840];
  sub_1ABA8FEE4(OBJC_IVAR___GDSwiftViewService_accessRequester);
  v4 = sub_1ABF23BD4();
  v17[0] = 0;
  v5 = [v2 requestAssertionForViewName:v4 error:v17];

  if (v5)
  {
    sub_1ABA7D384(OBJC_IVAR___GDSwiftViewService_databaseCache);
    v6 = sub_1ABA7D3C4();
    v3(v6);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = sub_1ABA7EF7C();
      sub_1ABBF7F98(v8, v9, v10, v11);
      v12 = v17[2];
      v13 = v20;
      v15 = v18;
      v14 = v19;
      *v0 = v17[1];
      v0[1] = v12;
      *(v0 + 1) = v15;
      *(v0 + 2) = v14;
      v0[6] = v13;
    }
  }

  else
  {
    v7 = v17[0];
    sub_1ABA8E700();

    swift_willThrow();
  }

  v16 = *MEMORY[0x1E69E9840];
}

void ViewService.entitySubgraphView.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BF50();
  a21 = v27;
  a22 = v28;
  v30 = v29;
  a10 = *MEMORY[0x1E69E9840];
  v31 = *(v22 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABA80878(0x797469746E65);
  sub_1ABF23BD4();
  sub_1ABA7E480();
  v32 = [v31 requestAssertionForViewName:v24 error:&a9];

  if (v32)
  {
    sub_1ABA7D384(OBJC_IVAR___GDSwiftViewService_databaseCache);
    v33 = sub_1ABA80890();
    v34 = v26(v33);
    if (v23)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = v34;
      v38 = v35;
      v39 = [swift_unknownObjectRetain() viewArtifactTableName];
      if (v39)
      {
        v40 = v39;
        v41 = sub_1ABF23C04();
        v25 = v42;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1ABA94854();
        v41 = 0x735F797469746E65;
      }

      *v30 = v32;
      *(v30 + 1) = v41;
      *(v30 + 2) = v25;
      *(v30 + 3) = v37;
      *(v30 + 4) = v38;
      *(v30 + 40) = xmmword_1ABF3E1C0;
    }
  }

  else
  {
    v36 = a9;
    sub_1ABA8E700();

    swift_willThrow();
  }

  v43 = *MEMORY[0x1E69E9840];
  sub_1ABA8FEC8();
}

void ViewService.peopleSubgraphView.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BF50();
  a21 = v27;
  a22 = v28;
  v30 = v29;
  a10 = *MEMORY[0x1E69E9840];
  v31 = *(v22 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABA80878(0x656C706F6570);
  sub_1ABF23BD4();
  sub_1ABA7E480();
  v32 = [v31 requestAssertionForViewName:v24 error:&a9];

  if (v32)
  {
    sub_1ABA7D384(OBJC_IVAR___GDSwiftViewService_databaseCache);
    v33 = sub_1ABA80890();
    v34 = v26(v33);
    if (v23)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = v34;
      v38 = v35;
      v39 = [swift_unknownObjectRetain() viewArtifactTableName];
      if (v39)
      {
        v40 = v39;
        v41 = sub_1ABF23C04();
        v25 = v42;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1ABA94854();
        v41 = 0x735F656C706F6570;
      }

      *v30 = v32;
      *(v30 + 1) = v41;
      *(v30 + 2) = v25;
      *(v30 + 3) = v37;
      *(v30 + 4) = v38;
      *(v30 + 40) = xmmword_1ABF3E1C0;
    }
  }

  else
  {
    v36 = a9;
    sub_1ABA8E700();

    swift_willThrow();
  }

  v43 = *MEMORY[0x1E69E9840];
  sub_1ABA8FEC8();
}

uint64_t Encodable.asJSONString.getter(uint64_t a1, uint64_t a2)
{
  v24[2] = a2;
  v2 = sub_1ABF23C54();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1ABF21814();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - v10;
  v12 = sub_1ABF21854();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1ABF21844();
  sub_1ABF21804();
  v15 = sub_1ABF21824();
  sub_1ABB4D7BC();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  v15(v25, 0);
  v17 = sub_1ABF21834();
  v19 = v18;
  sub_1ABF23C44();
  v20 = sub_1ABF23C24();
  if (v21)
  {
    v22 = v20;
    sub_1ABA96210(v17, v19);
  }

  else
  {
    sub_1ABA96210(v17, v19);

    return 0;
  }

  return v22;
}

IntelligencePlatform::EntitySimilarityViewName_optional __swiftcall EntitySimilarityViewName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

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

unint64_t EntitySimilarityViewName.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000023;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

unint64_t sub_1ABB697F8()
{
  result = qword_1EB4D39D0;
  if (!qword_1EB4D39D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D39D0);
  }

  return result;
}

unint64_t sub_1ABB69870@<X0>(unint64_t *a1@<X8>)
{
  result = EntitySimilarityViewName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1ABB6989C()
{
  result = qword_1EB4D39D8;
  if (!qword_1EB4D39D8)
  {
    sub_1ABAE2850(&qword_1EB4D39E0, &qword_1ABF3E280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D39D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntitySimilarityViewName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1ABB699EC(void *a1@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v5 = sub_1ABF23BD4();
  v24[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v24];

  v7 = v24[0];
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v8[5];
    v10 = v8[6];
    sub_1ABA93E20(v8 + 2, v9);
    v11 = *(v10 + 8);
    v12 = v7;
    v13 = v11(v6, v9, v10);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v13;
      v17 = v14;
      v18 = [swift_unknownObjectRetain() viewArtifactTableName];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1ABF23C04();
        v22 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v22 = 0x80000001ABF88AF0;
        v20 = 0xD000000000000019;
      }

      *a1 = v6;
      a1[1] = v20;
      a1[2] = v22;
      a1[3] = v16;
      a1[4] = v17;
      a1[5] = 0x44495F444DLL;
      a1[6] = 0xE500000000000000;
      a1[7] = 0x495F7463656A626FLL;
      a1[8] = 0xE900000000000044;
    }
  }

  else
  {
    v15 = v24[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1ABB69BF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001ABF88B10 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x80000001ABF88B30 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x80000001ABF88B50 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1ABB69D10(char a1)
{
  result = 0xD000000000000013;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  return result;
}

uint64_t sub_1ABB69D68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABB69DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB69BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB69E20(uint64_t a1)
{
  v2 = sub_1ABB6A388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB69E5C(uint64_t a1)
{
  v2 = sub_1ABB6A388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB69E98(uint64_t a1)
{
  v2 = sub_1ABB6A3DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB69ED4(uint64_t a1)
{
  v2 = sub_1ABB6A3DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB69F10(uint64_t a1)
{
  v2 = sub_1ABB6A484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB69F4C(uint64_t a1)
{
  v2 = sub_1ABB6A484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB69F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB69D68(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB69FB8(uint64_t a1)
{
  v2 = sub_1ABB6A430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB69FF4(uint64_t a1)
{
  v2 = sub_1ABB6A430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntitlementCheckError.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D39E8, &qword_1ABF3E300);
  v4 = sub_1ABA7BB64(v3);
  v45 = v5;
  v46 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8E718(v9, v39);
  v44 = sub_1ABAD219C(&qword_1EB4D39F0, &qword_1ABF3E308);
  sub_1ABA7BB64(v44);
  v43 = v10;
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v39 - v14;
  v15 = sub_1ABAD219C(&qword_1EB4D39F8, &qword_1ABF3E310);
  v16 = sub_1ABA7BB64(v15);
  v40 = v17;
  v41 = v16;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  v23 = sub_1ABAD219C(&qword_1EB4D3A00, &qword_1ABF3E318);
  sub_1ABA7BB64(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v39 - v29;
  v31 = v1[1];
  v39 = *v1;
  v32 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB6A388();
  sub_1ABF252E4();
  if (!v31)
  {
    v47 = 0;
    sub_1ABB6A484();
    sub_1ABA7BF6C();
    v34 = v41;
    v35 = *(v40 + 8);
    v33 = v22;
    goto LABEL_5;
  }

  if (v31 == 1)
  {
    v49 = 2;
    sub_1ABB6A3DC();
    sub_1ABA7BF6C();
    v33 = sub_1ABA7E48C();
LABEL_5:
    v35(v33, v34);
    return (*(v25 + 8))(v30, v23);
  }

  v48 = 1;
  sub_1ABB6A430();
  v37 = v42;
  sub_1ABA7BF6C();
  v38 = v44;
  sub_1ABF24F34();
  (*(v43 + 8))(v37, v38);
  return (*(v25 + 8))(v30, v23);
}

unint64_t sub_1ABB6A388()
{
  result = qword_1EB4D3A08;
  if (!qword_1EB4D3A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A08);
  }

  return result;
}

unint64_t sub_1ABB6A3DC()
{
  result = qword_1EB4D3A10;
  if (!qword_1EB4D3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A10);
  }

  return result;
}

unint64_t sub_1ABB6A430()
{
  result = qword_1EB4D3A18;
  if (!qword_1EB4D3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A18);
  }

  return result;
}

unint64_t sub_1ABB6A484()
{
  result = qword_1EB4D3A20;
  if (!qword_1EB4D3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A20);
  }

  return result;
}

uint64_t EntitlementCheckError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v72 = a2;
  v74 = sub_1ABAD219C(&qword_1EB4D3A28, &qword_1ABF3E320);
  sub_1ABA7BB64(v74);
  v69 = v3;
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA8E718(v7, v65);
  v8 = sub_1ABAD219C(&qword_1EB4D3A30, &qword_1ABF3E328);
  v9 = sub_1ABA7BB64(v8);
  v70 = v10;
  v71 = v9;
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  v16 = sub_1ABAD219C(&qword_1EB4D3A38, &qword_1ABF3E330);
  sub_1ABA7BB64(v16);
  v68 = v17;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  v23 = sub_1ABAD219C(&qword_1EB4D3A40, &unk_1ABF3E338);
  sub_1ABA7BB64(v23);
  v73 = v24;
  v26 = *(v25 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB6A388();
  v31 = v75;
  sub_1ABF252C4();
  if (v31)
  {
    return sub_1ABA84B54(a1);
  }

  v65 = v16;
  v66 = v22;
  v67 = v15;
  v32 = v74;
  v75 = a1;
  v33 = sub_1ABF24EA4();
  result = sub_1ABAD4EA4(v33, 0);
  v38 = v23;
  if (v36 == v37 >> 1)
  {
LABEL_9:
    v47 = sub_1ABF24B44();
    sub_1ABA7BD00();
    v49 = v48;
    v50 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v49 = &type metadata for EntitlementCheckError;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v73 + 8))(v29, v38);
    a1 = v75;
    return sub_1ABA84B54(a1);
  }

  if (v36 >= (v37 >> 1))
  {
    __break(1u);
    return result;
  }

  v39 = v23;
  v40 = *(v35 + v36);
  v41 = sub_1ABAD4E90(v36 + 1);
  v43 = v42;
  v45 = v44;
  swift_unknownObjectRelease();
  if (v43 != v45 >> 1)
  {
    v38 = v39;
    goto LABEL_9;
  }

  if (v40)
  {
    if (v40 == 1)
    {
      v77 = 1;
      sub_1ABB6A430();
      sub_1ABA93338();
      v46 = v72;
      v74 = v41;
      v53 = v71;
      v58 = sub_1ABF24E14();
      v60 = v59;
      swift_unknownObjectRelease();
      v61 = sub_1ABA7E48C();
      v62(v61, v53);
      v63 = sub_1ABA7D3D8();
      v64(v63);
    }

    else
    {
      v78 = 2;
      sub_1ABB6A3DC();
      sub_1ABA93338();
      v46 = v72;
      swift_unknownObjectRelease();
      v54 = sub_1ABA7E48C();
      v55(v54, v32);
      v56 = sub_1ABA7D3D8();
      v57(v56);
      v58 = 0;
      v60 = 1;
    }
  }

  else
  {
    v76 = 0;
    sub_1ABB6A484();
    v51 = v66;
    sub_1ABF24D94();
    v52 = v73;
    swift_unknownObjectRelease();
    (*(v68 + 8))(v51, v65);
    (*(v52 + 8))(v29, v39);
    v58 = 0;
    v60 = 0;
    v46 = v72;
  }

  *v46 = v58;
  v46[1] = v60;
  return sub_1ABA84B54(v75);
}

void static EntitlementCheck.CurrentProcessEntitlement.item<A>(of:for:)(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  error[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1ABF247E4();
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = SecTaskCreateFromSelf(0);
  if (v12)
  {
    v13 = v12;
    error[0] = 0;
    v14 = sub_1ABF23BD4();
    v15 = SecTaskCopyValueForEntitlement(v13, v14, error);

    if (v15)
    {
      v24 = v15;
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        sub_1ABA83758(v11, 0);
        (*(*(a1 - 8) + 32))(a2, v11, a1);
        sub_1ABA83758(a2, 0);
      }

      else
      {
        sub_1ABA83758(v11, 1);
        (*(v6 + 8))(v11, v4);
        sub_1ABB6ADDC();
        sub_1ABA7BD00();
        *v21 = xmmword_1ABF34750;
        swift_willThrow();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (!error[0])
      {
        sub_1ABA83758(a2, 1);
LABEL_12:

        goto LABEL_13;
      }

      v24 = error[0];
      sub_1ABAD219C(&qword_1EB4D3A50, &qword_1ABF3E348);
      v17 = sub_1ABF23C74();
      v19 = v18;
      sub_1ABB6ADDC();
      sub_1ABA7BD00();
      *v20 = v17;
      v20[1] = v19;
      swift_willThrow();
    }

    if (error[0])
    {
    }

    goto LABEL_12;
  }

  sub_1ABB6ADDC();
  sub_1ABA7BD00();
  *v16 = 0;
  v16[1] = 0;
  swift_willThrow();
LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1ABB6ADDC()
{
  result = qword_1EB4D3A48;
  if (!qword_1EB4D3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A48);
  }

  return result;
}

uint64_t sub_1ABB6AE30(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABB6AE48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1ABB6AE9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntitlementCheckError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABB6B008(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABB6B0C8()
{
  result = qword_1EB4D3A58;
  if (!qword_1EB4D3A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A58);
  }

  return result;
}

unint64_t sub_1ABB6B120()
{
  result = qword_1EB4D3A60;
  if (!qword_1EB4D3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A60);
  }

  return result;
}

unint64_t sub_1ABB6B178()
{
  result = qword_1EB4D3A68;
  if (!qword_1EB4D3A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A68);
  }

  return result;
}

unint64_t sub_1ABB6B1D0()
{
  result = qword_1EB4D3A70;
  if (!qword_1EB4D3A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A70);
  }

  return result;
}

unint64_t sub_1ABB6B228()
{
  result = qword_1EB4D3A78;
  if (!qword_1EB4D3A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A78);
  }

  return result;
}

unint64_t sub_1ABB6B280()
{
  result = qword_1EB4D3A80;
  if (!qword_1EB4D3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A80);
  }

  return result;
}

unint64_t sub_1ABB6B2D8()
{
  result = qword_1EB4D3A88;
  if (!qword_1EB4D3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A88);
  }

  return result;
}

unint64_t sub_1ABB6B330()
{
  result = qword_1EB4D3A90;
  if (!qword_1EB4D3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A90);
  }

  return result;
}

unint64_t sub_1ABB6B388()
{
  result = qword_1EB4D3A98;
  if (!qword_1EB4D3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3A98);
  }

  return result;
}

unint64_t sub_1ABB6B3E0()
{
  result = qword_1EB4D3AA0;
  if (!qword_1EB4D3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AA0);
  }

  return result;
}

uint64_t Entity.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

void Entity.init<A, B>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABB6B644(nullsub_1, 0, sub_1ABB6DD90, v11, a3, a5, &v27);
  if (v5)
  {
    v12 = *(*(a2 - 8) + 8);

    v12(a1, a2);
  }

  else
  {
    v31 = v27;
    swift_beginAccess();
    v13 = *(v11 + 16);

    sub_1ABB6B738(&v31, v13, &v27);
    (*(*(a2 - 8) + 8))(a1, a2);

    sub_1ABA808A4(v14, v15, v16, v17, v18, v19, v20, v21, a4, v23, v24, v25, v26, v22, v27, v28, v29, v30);
  }
}

uint64_t sub_1ABB6B644@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;

  sub_1ABB6BCD4(sub_1ABB6DD38, a1, a2, sub_1ABB6DD78, v14, a5, a6, a7);
}

void sub_1ABB6B738(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (!*a1)
  {

    sub_1ABB6DA08();
    v11 = sub_1ABA7BD00();
    sub_1ABA7BF88(v11, v12);
LABEL_7:
    swift_willThrow();
    return;
  }

  if (!*(a2 + 16))
  {

    sub_1ABB6DA08();
    sub_1ABA7BD00();
    sub_1ABA8F1A4(v13, 1);
    *(v14 + 49) = 2;
    goto LABEL_7;
  }

  EntityClass.init(intValue:)(SHIBYTE(v4), &v18);
  v6 = v19;
  if (v19)
  {
    v7 = v22;
    v9 = v20;
    v8 = v21;
    v10 = v18;
    *a3 = v4;
    *(a3 + 8) = a2;
    *(a3 + 16) = v10;
    *(a3 + 24) = v6;
    *(a3 + 32) = v9;
    *(a3 + 40) = v8;
    *(a3 + 48) = v7;
  }

  else
  {
    sub_1ABB6DA08();
    sub_1ABA7BD00();
    sub_1ABA8F1A4(v15, 2);
    *(v16 + 49) = v17;
    swift_willThrow();
  }
}

void Entity.init<A>(enumerator:)(void (*a1)(uint64_t (*)(uint64_t a1), char *, double), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABB6BCD4(a1, nullsub_1, 0, sub_1ABB6BA38, v8, a3, a4, &v24);
  if (v4)
  {
  }

  else
  {
    v23 = v24;
    swift_beginAccess();
    v9 = *(v8 + 16);

    sub_1ABB6B738(&v23, v9, &v24);

    sub_1ABA808A4(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, v23, v18, v24, v25, v26, v27);
  }
}

uint64_t sub_1ABB6B97C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x62uLL);
  swift_beginAccess();
  sub_1ABB6DCC8(__dst, v6);
  sub_1ABB4DDA0();
  v3 = *(*(a2 + 16) + 16);
  sub_1ABB4E1A4(v3);
  v4 = *(a2 + 16);
  *(v4 + 16) = v3 + 1;
  memcpy((v4 + 104 * v3 + 32), __dst, 0x62uLL);
  *(a2 + 16) = v4;
  return swift_endAccess();
}

uint64_t sub_1ABB6BAF4@<X0>(void (*a1)(uint64_t, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(_BYTE *)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  sub_1ABA7E498(MEMORY[0x1E69E7CD0]);
  v14 = swift_allocObject();
  sub_1ABA94868(v14);
  v28 = &v37;
  v29 = a2;
  v30 = a3;
  v31 = v15;
  v32 = a6;
  v33 = v13;
  v34 = &v39;
  v35 = &v41;

  a1(a8, v27);
  if (v26)
  {
    goto LABEL_4;
  }

  if (v38)
  {
    sub_1ABB6DA08();
    sub_1ABA7BD00();
    sub_1ABA8F1A4(v16, 1);
    sub_1ABA81634(v17, v18);
LABEL_4:

    goto LABEL_5;
  }

  if (v40)
  {
    v20 = v37;
    v36 = v37;

    sub_1ABB6C1CC(&v36, v14, a4);

    *a7 = v20;

    goto LABEL_6;
  }

  sub_1ABB6DA08();
  sub_1ABA7BD00();
  sub_1ABA8F1A4(v21, 3);
  sub_1ABA81634(v22, v23);

LABEL_5:

LABEL_6:
}

uint64_t sub_1ABB6BCD4@<X0>(void (*a1)(uint64_t (*)(uint64_t a1), char *, double)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(_BYTE *)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  sub_1ABA7E498(MEMORY[0x1E69E7CD0]);
  v15 = swift_allocObject();
  v16 = sub_1ABA94868(v15);
  v27 = a6;
  v28 = a7;
  v29 = &v38;
  v30 = a2;
  v31 = a3;
  v32 = v17;
  v33 = a4;
  v34 = a5;
  v35 = &v40;
  v36 = &v42;
  a1(sub_1ABB6DC88, v26, v16);
  if (v25)
  {
    goto LABEL_9;
  }

  if (v39)
  {
    sub_1ABB6DA08();
    sub_1ABA7BD00();
    v19 = 1;
LABEL_8:
    sub_1ABA8F1A4(v18, v19);
    sub_1ABA81634(v21, v22);
LABEL_9:
  }

  if (!v41)
  {
    sub_1ABB6DA08();
    sub_1ABA7BD00();
    v19 = 3;
    goto LABEL_8;
  }

  v20 = v38;
  v37 = v38;
  sub_1ABB6C488(&v37, v15, a4, a5);

  *a8 = v20;
}

uint64_t sub_1ABB6BE9C(uint64_t (*a1)(char *), uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a3;
  v36 = a1;
  v37 = a2;
  v10 = *(a4 - 8);
  v33[1] = a7;
  v34 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1ABF247E4();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = v33 - v17;
  v19 = *(a5 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v24 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = v33 - v25;
  (*(v19 + 16))(v22, v38, a5);
  v38 = v26;
  sub_1ABF23F04();
  v27 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v28 = (v34 + 32);
  v29 = (v34 + 8);
  do
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v18, 1, a4) == 1)
    {
      break;
    }

    (*v28)(v13, v18, a4);
    v30 = v36(v13);
    if (v7)
    {
      (*v29)(v13, a4);
      return (*(v35 + 8))(v38, v27);
    }

    v31 = v30;
    (*v29)(v13, a4);
  }

  while ((v31 & 1) != 0);
  return (*(v35 + 8))(v38, v27);
}

uint64_t sub_1ABB6C1CC(uint64_t *a1, void *a2, void (*a3)(_BYTE *))
{
  v4 = v3;
  v36 = a3;
  v6 = *a1;
  swift_beginAccess();
  v7 = a2[3];
  if (!v7)
  {
  }

  if (!v6)
  {
    sub_1ABB6DA08();
    swift_allocError();
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 512;
LABEL_9:
    swift_willThrow();
  }

  v8 = a2[7];
  if (!v8)
  {
    sub_1ABB6DB64();
    swift_allocError();
    goto LABEL_9;
  }

  v9 = a2[2];
  v11 = a2[4];
  v10 = a2[5];
  v12 = a2[6];
  v13 = a2[8];

  sub_1ABB6DA5C(v9, v7);
  EntityClass.init(intValue:)(SHIBYTE(v8), &v31);
  if (v32)
  {
    v28 = v35;
    v26 = v33;
    v27 = v34;
    v24 = v32;
    v25 = v31;

    sub_1ABB6DAAC(v9, v7);
    __src[0] = v9;
    __src[1] = v7;
    __src[2] = v11;
    __src[3] = v10;
    LOWORD(__src[4]) = v12;
    __src[5] = v6;
    __src[6] = v8;
    __src[7] = v13;
    __src[8] = v25;
    __src[9] = v24;
    __src[10] = v26;
    __src[11] = v27;
    LOBYTE(__src[12]) = v28;
    BYTE1(__src[12]) = 1;
    memcpy(__dst, __src, 0x62uLL);
    v36(__dst);
    sub_1ABB6DAFC(__src);
    if (!v4)
    {
      swift_beginAccess();
      v14 = a2[2];
      v15 = a2[3];
      v16 = a2[4];
      v17 = a2[5];
      v18 = a2[6];
      v19 = a2[7];
      v20 = a2[8];
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
      *(a2 + 3) = 0u;
      a2[8] = 0;
      sub_1ABB6DAAC(v14, v15);
    }
  }

  sub_1ABB6DA08();
  swift_allocError();
  *v23 = 2;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 33) = 0u;
  *(v23 + 49) = 2;
  swift_willThrow();
  sub_1ABB6DAAC(v9, v7);
}

uint64_t sub_1ABB6C488(uint64_t *a1, void *a2, void (*a3)(_BYTE *), uint64_t a4)
{
  v5 = v4;
  v42 = a4;
  v8 = *a1;
  result = swift_beginAccess();
  v10 = a2[3];
  if (v10)
  {
    if (v8)
    {
      v11 = a2[7];
      if (v11)
      {
        v33 = a3;
        v12 = a2[2];
        v14 = a2[4];
        v13 = a2[5];
        v15 = a2[6];
        v16 = a2[8];

        sub_1ABB6DA5C(v12, v10);
        EntityClass.init(intValue:)(SHIBYTE(v11), &v37);
        if (v38)
        {
          v34 = v41;
          v31 = v39;
          v32 = v40;
          v29 = v38;
          v30 = v37;

          sub_1ABB6DAAC(v12, v10);
          __src[0] = v12;
          __src[1] = v10;
          __src[2] = v14;
          __src[3] = v13;
          LOWORD(__src[4]) = v15;
          __src[5] = v8;
          __src[6] = v11;
          __src[7] = v16;
          __src[8] = v30;
          __src[9] = v29;
          __src[10] = v31;
          __src[11] = v32;
          LOBYTE(__src[12]) = v34;
          BYTE1(__src[12]) = 1;
          memcpy(__dst, __src, 0x62uLL);
          v33(__dst);
          result = sub_1ABB6DAFC(__src);
          if (!v5)
          {
            swift_beginAccess();
            v17 = a2[2];
            v18 = a2[3];
            v19 = a2[4];
            v20 = a2[5];
            v21 = a2[6];
            v22 = a2[7];
            v23 = a2[8];
            *(a2 + 1) = 0u;
            *(a2 + 2) = 0u;
            *(a2 + 3) = 0u;
            a2[8] = 0;
            return sub_1ABB6DAAC(v17, v18);
          }
        }

        else
        {
          sub_1ABB6DA08();
          sub_1ABA7BD00();
          sub_1ABA8F1A4(v26, 2);
          *(v27 + 49) = v28;
          swift_willThrow();
          sub_1ABB6DAAC(v12, v10);
        }

        return result;
      }

      sub_1ABB6DB64();
      sub_1ABA7BD00();
    }

    else
    {
      sub_1ABB6DA08();
      v24 = sub_1ABA7BD00();
      sub_1ABA7BF88(v24, v25);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1ABB6C6FC(uint64_t a1, uint64_t *a2, void (*a3)(_BYTE *), uint64_t a4, void *a5, void (*a6)(_BYTE *), uint64_t a7, uint64_t *a8, void **a9)
{
  v16 = *a1;
  if (*(a2 + 8) != 1)
  {
    goto LABEL_4;
  }

  *a2 = v16;
  *(a2 + 8) = 0;
  *__src = v16;
  a3(__src);
  if (v9)
  {
    return 1;
  }

  if ((a2[1] & 1) == 0)
  {
LABEL_4:
    v17 = *a2;
    if (v16 != *a2)
    {
      sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1ABF34060;
      *(v22 + 32) = v17;
      *(v22 + 40) = v16;
      sub_1ABB2C288();
      v24 = v23;
      sub_1ABB6DA08();
      swift_allocError();
      *v25 = v24;
      v26 = *&__src[25];
      v27 = *&__src[16];
      *(v25 + 8) = *__src;
      *(v25 + 24) = v27;
      *(v25 + 33) = v26;
      *(v25 + 49) = 0;
LABEL_11:
      swift_willThrow();
      return 1;
    }

    v70 = a6;
    v18 = *(a1 + 24);
    *v78 = *(a1 + 8);
    *&v78[16] = v18;
    v79 = *(a1 + 40);
    v19 = *(a1 + 48);
    v20 = *(a1 + 96);
    v21 = *(a1 + 104);
    if (v19)
    {
      swift_beginAccess();
      if (a5[3])
      {
        swift_beginAccess();
        if (a5[3])
        {
          if (a5[7] == v19)
          {

            goto LABEL_28;
          }
        }
      }

      v74[0] = v16;
      sub_1ABAFF1DC(v78, __src);

      sub_1ABB6C488(v74, a5, v70, a7);
      if (v9)
      {
        sub_1ABAE4478(v78);

        return 1;
      }

      v80 = v20;
      if ((sub_1ABB130C8(v19, *a9) & 1) == 0)
      {
        sub_1ABB180DC(__src, v19);
        v71 = *&v78[8];
        v33 = *v78;
        v34 = *&v78[24];
        v35 = v79;
        swift_beginAccess();
        v36 = a5[2];
        v37 = a5[3];
        v38 = a5[4];
        v39 = a5[5];
        v40 = a5[6];
        v41 = a5[7];
        v42 = a5[8];
        a5[2] = v33;
        *(a5 + 3) = v71;
        a5[5] = v34;
        a5[6] = v35;
        v43 = MEMORY[0x1E69E7CC0];
        a5[7] = v19;
        a5[8] = v43;
        sub_1ABB6DAAC(v36, v37);
        v20 = v80;
LABEL_28:
        v44 = *(a1 + 72);
        v75 = *(a1 + 56);
        v76 = v44;
        v77 = *(a1 + 88);
        sub_1ABAFF1DC(&v75, __src);
        if ((sub_1ABF23E64() & 1) != 0 && (, EntityIdentifier.init(_:)(v20, v21, __src), (__src[8] & 1) == 0))
        {
          v20 = *__src;

          v21 = 0;
          v45 = 1;
        }

        else
        {
          v45 = 0;
        }

        *__src = v75;
        *&__src[16] = v76;
        *&__src[32] = v77;
        *&__src[40] = v20;
        *&__src[48] = v21;
        __src[56] = v45;
        swift_beginAccess();
        if (a5[3])
        {
          sub_1ABB4DC38();
          v46 = *(a5[8] + 16);
          sub_1ABB4E03C(v46);
          v47 = a5[8];
          *(v47 + 16) = v46 + 1;
          v48 = (v47 + (v46 << 6));
          v49 = *__src;
          v50 = *&__src[16];
          v51 = *&__src[32];
          *(v48 + 73) = *&__src[41];
          v48[3] = v50;
          v48[4] = v51;
          v48[2] = v49;
          a5[8] = v47;
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          sub_1ABB6DBB8(__src);
        }

        return 1;
      }

      sub_1ABAE4478(v78);

      sub_1ABB6DC0C();
      swift_allocError();
      *v29 = v19;
      goto LABEL_11;
    }

    v74[0] = v16;
    sub_1ABAFF1DC(v78, __src);

    v28 = v70;
    sub_1ABB6C488(v74, a5, v70, a7);
    if (v9)
    {

      sub_1ABAE4478(v78);
      return 1;
    }

    if (sub_1ABF23E64())
    {

      EntityIdentifier.init(_:)(v20, v21, __src);
      if ((__src[8] & 1) == 0)
      {
        v54 = *__src;

        v55 = *&v78[16];
        v56 = *&v78[24];
        v57 = 2;
        v30 = *&v78[8];
        v69 = *v78;
LABEL_51:
        *__src = v69;
        *&__src[8] = v30;
        *&__src[16] = v55;
        *&__src[24] = v56;
        *&__src[32] = v79;
        *&__src[40] = v54;
        *&__src[48] = v21;
        __src[97] = v57;
        v28(__src);
        memcpy(__dst, __src, 0x62uLL);
        sub_1ABB6DAFC(__dst);
        return 1;
      }
    }

    if (_Records_GDEntityPredicate_records)
    {
      v80 = v20;
      sub_1ABA91D48(_Records_GDEntityPredicate_records[156], *(_Records_GDEntityPredicate_records + 40), *(_Records_GDEntityPredicate_records + 41), __src);
      v30 = *&v78[8];
      v69 = *v78;
      if (*v78 == *__src && *&v78[8] == *&__src[8])
      {
      }

      else
      {
        v32 = sub_1ABF25054();

        v28 = v70;
        if ((v32 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      if (a8[1])
      {
        sub_1ABAE4478(v78);

        sub_1ABB6DA08();
        swift_allocError();
        *v52 = 4;
        *(v52 + 8) = 0u;
        *(v52 + 24) = 0u;
        *(v52 + 33) = 0u;
        v53 = 2;
LABEL_38:
        *(v52 + 49) = v53;
        goto LABEL_11;
      }

      EntityClass.init(intValue:)(SHIBYTE(v16), __src);
      v58 = *&__src[8];
      if (!*&__src[8])
      {
        sub_1ABAE4478(v78);

        sub_1ABB6DA08();
        swift_allocError();
        *v65 = 2;
        *(v65 + 8) = 0u;
        *(v65 + 24) = 0u;
        *(v65 + 33) = 0u;
        *(v65 + 49) = 2;
        goto LABEL_11;
      }

      v59 = *__src;
      v60 = __src[32];
      v61 = v80;
      if (*__src == v80 && *&__src[8] == v21)
      {
        v63 = v80;
        v64 = v21;
      }

      else
      {
        v68 = *&__src[16];
        if ((sub_1ABF25054() & 1) == 0)
        {
          sub_1ABAE4478(v78);
          sub_1ABB6DA08();
          swift_allocError();
          *v52 = v61;
          *(v52 + 8) = v21;
          *(v52 + 16) = v59;
          *(v52 + 24) = v58;
          *(v52 + 32) = v68;
          *(v52 + 48) = v60;
          v53 = 1;
          goto LABEL_38;
        }

        v63 = v59;
        v64 = v58;
      }

      sub_1ABAA8FA8(v63, v64);
      v66 = a8[1];
      *a8 = v61;
      a8[1] = v21;

      v28 = v70;
LABEL_50:
      v57 = 0;
      v55 = *&v78[16];
      v56 = *&v78[24];
      v54 = v80;
      goto LABEL_51;
    }

    __break(1u);
  }

  result = sub_1ABF24CD4();
  __break(1u);
  return result;
}

uint64_t sub_1ABB6CE44(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, void *a5, void (*a6)(_BYTE *), uint64_t a7, uint64_t *a8, void **a9, uint64_t a10, uint64_t a11)
{
  v77 = a5;
  if (*(a2 + 8))
  {
    v13 = *(a11 + 8);
    (v13)(__src, a10, a11);
    *a2 = *__src;
    *(a2 + 8) = 0;
    (v13)(__src, a10, a11);
    a3(__src);
    if (v11)
    {
      return 1;
    }

    v71 = 0;
    if (*(a2 + 8))
    {
      goto LABEL_57;
    }
  }

  else
  {
    v71 = v11;
    v13 = *(a11 + 8);
  }

  v14 = *a2;
  (v13)(__src, a10, a11);
  if (*__src != v14)
  {
    sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1ABF34060;
    *(v21 + 32) = v14;
    v13(a10, a11);
    sub_1ABB2C288();
    v23 = v22;
    sub_1ABB6DA08();
    swift_allocError();
    *v24 = v23;
    v25 = *&__src[25];
    v26 = *&__src[16];
    *(v24 + 8) = *__src;
    *(v24 + 24) = v26;
    *(v24 + 33) = v25;
    *(v24 + 49) = 0;
LABEL_13:
    swift_willThrow();
    return 1;
  }

  (*(a11 + 16))(__src, a10, a11);
  v15 = *&__src[8];
  v16 = *&__src[16];
  v66 = *&__src[32];
  v67 = *__src;
  (*(a11 + 24))(__src, a10, a11);
  v17 = *__src;
  v68 = (*(a11 + 40))(a10, a11);
  v19 = v18;
  if (v17)
  {
    v20 = v77;
    swift_beginAccess();
    if (v20[3])
    {
      swift_beginAccess();
      if (v20[3])
      {
        if (v20[7] == v17)
        {

          goto LABEL_30;
        }
      }
    }

    *__src = v14;
    sub_1ABB6C488(__src, v20, a6, a7);
    if (v71)
    {
      goto LABEL_17;
    }

    if ((sub_1ABB130C8(v17, *a9) & 1) == 0)
    {
      sub_1ABB180DC(__src, v17);
      v34 = v77;
      swift_beginAccess();
      v35 = v34[2];
      v36 = v34[3];
      v37 = v34[4];
      v38 = v34[5];
      v39 = v34[6];
      v40 = v34[7];
      v41 = v34[8];
      v34[2] = v67;
      v34[3] = v15;
      *(v34 + 2) = v16;
      v34[6] = v66;
      v34[7] = v17;
      v34[8] = MEMORY[0x1E69E7CC0];
      sub_1ABB6DAAC(v35, v36);
LABEL_30:
      (*(a11 + 32))(__src, a10, a11);
      v42 = *__src;
      v43 = *&__src[16];
      v44 = *&__src[32];
      v45 = v68;
      if ((sub_1ABF23E64() & 1) != 0 && (, EntityIdentifier.init(_:)(v68, v19, __src), __src[8] != 1))
      {
        v45 = *__src;

        v19 = 0;
        v46 = 1;
      }

      else
      {
        v46 = 0;
      }

      *__src = v42;
      *&__src[16] = v43;
      *&__src[32] = v44;
      *&__src[40] = v45;
      *&__src[48] = v19;
      __src[56] = v46;
      v47 = v77;
      swift_beginAccess();
      if (v47[3])
      {
        sub_1ABB4DC38();
        v48 = *(v47[8] + 16);
        sub_1ABB4E03C(v48);
        v49 = v47[8];
        *(v49 + 16) = v48 + 1;
        v50 = (v49 + (v48 << 6));
        v51 = *__src;
        v52 = *&__src[16];
        v53 = *&__src[32];
        *(v50 + 73) = *&__src[41];
        v50[3] = v52;
        v50[4] = v53;
        v50[2] = v51;
        v47[8] = v49;
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        sub_1ABB6DBB8(__src);
      }

      return 1;
    }

    sub_1ABB6DC0C();
    swift_allocError();
    *v29 = v17;
    goto LABEL_13;
  }

  v27 = v15;
  v76[0] = v14;
  v28 = a6;
  sub_1ABB6C488(v76, v77, a6, a7);
  if (v71)
  {
LABEL_17:

    return 1;
  }

  if (sub_1ABF23E64())
  {

    EntityIdentifier.init(_:)(v68, v19, __src);
    if (__src[8] != 1)
    {
      v33 = *__src;

      v32 = 2;
      goto LABEL_42;
    }
  }

  if (_Records_GDEntityPredicate_records)
  {
    sub_1ABA91D48(_Records_GDEntityPredicate_records[156], *(_Records_GDEntityPredicate_records + 40), *(_Records_GDEntityPredicate_records + 41), __src);
    if (v67 == *__src && v27 == *&__src[8])
    {
    }

    else
    {
      v31 = sub_1ABF25054();

      if ((v31 & 1) == 0)
      {
        v32 = 0;
        v33 = v68;
LABEL_42:
        v56 = *(&v16 + 1);
LABEL_43:
        *__src = v67;
        *&__src[8] = v27;
        *&__src[16] = v16;
        *&__src[24] = v56;
        *&__src[32] = v66;
        *&__src[40] = v33;
        *&__src[48] = v19;
        __src[97] = v32;
        v28(__src);
        memcpy(__dst, __src, 0x62uLL);
        sub_1ABB6DAFC(__dst);
        return 1;
      }
    }

    if (a8[1])
    {

      sub_1ABB6DA08();
      swift_allocError();
      *v54 = 4;
      *(v54 + 8) = 0u;
      *(v54 + 24) = 0u;
      *(v54 + 33) = 0u;
      v55 = 2;
LABEL_40:
      *(v54 + 49) = v55;
      goto LABEL_13;
    }

    EntityClass.init(intValue:)(SHIBYTE(v14), __src);
    v58 = *&__src[8];
    if (!*&__src[8])
    {

      sub_1ABB6DA08();
      swift_allocError();
      *v64 = 2;
      *(v64 + 8) = 0u;
      *(v64 + 24) = 0u;
      *(v64 + 33) = 0u;
      *(v64 + 49) = 2;
      goto LABEL_13;
    }

    v59 = *__src;
    v60 = *&__src[16];
    LODWORD(v77) = __src[32];
    v33 = v68;
    if (*__src == v68 && *&__src[8] == v19)
    {
      v62 = v68;
      v63 = v19;
    }

    else
    {
      if ((sub_1ABF25054() & 1) == 0)
      {

        sub_1ABB6DA08();
        swift_allocError();
        *v54 = v68;
        *(v54 + 8) = v19;
        *(v54 + 16) = v59;
        *(v54 + 24) = v58;
        *(v54 + 32) = v60;
        *(v54 + 48) = v77;
        v55 = 1;
        goto LABEL_40;
      }

      v62 = v59;
      v63 = v58;
    }

    sub_1ABAA8FA8(v62, v63);
    v56 = *(&v16 + 1);
    v65 = a8[1];
    *a8 = v68;
    a8[1] = v19;

    v32 = 0;
    v28 = a6;
    goto LABEL_43;
  }

  __break(1u);
LABEL_57:
  result = sub_1ABF24CD4();
  __break(1u);
  return result;
}

unint64_t sub_1ABB6D698(uint64_t a1)
{
  result = sub_1ABB6D6C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB6D6C0()
{
  result = qword_1EB4D3AA8;
  if (!qword_1EB4D3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AA8);
  }

  return result;
}

uint64_t sub_1ABB6D748(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D1148, &qword_1ABF332D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABB6D7A0(uint64_t a1)
{
  result = sub_1ABB6D7C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB6D7C8()
{
  result = qword_1EB4D3AB8;
  if (!qword_1EB4D3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AB8);
  }

  return result;
}

uint64_t sub_1ABB6D820(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB6D860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABB6D8BC(void *__src)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  memcpy(__dst, __src, 0x62uLL);
  return v3(__dst);
}

uint64_t sub_1ABB6D910()
{
  sub_1ABA7D3EC();
  memcpy(__dst, v1, sizeof(__dst));
  sub_1ABA7EF90();
  return sub_1ABB6C6FC(v2, v3, v4, v5, v6, v7, v8, v9, v0) & 1;
}

uint64_t sub_1ABB6D978()
{
  sub_1ABA7D3EC();
  memcpy(__dst, v1, sizeof(__dst));
  sub_1ABA7EF90();
  return sub_1ABB6C6FC(v2, v3, v4, v5, v6, v7, v8, v9, v0) & 1;
}

unint64_t sub_1ABB6DA08()
{
  result = qword_1EB4D3AC0;
  if (!qword_1EB4D3AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AC0);
  }

  return result;
}

uint64_t sub_1ABB6DA5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABB6DAAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABB6DAFC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABB6DB64()
{
  result = qword_1EB4D3AC8;
  if (!qword_1EB4D3AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AC8);
  }

  return result;
}

unint64_t sub_1ABB6DC0C()
{
  result = qword_1EB4D3AD0;
  if (!qword_1EB4D3AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AD0);
  }

  return result;
}

uint64_t sub_1ABB6DCC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB6DDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1ABF23C04();
    v11 = v10;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v11 = 0x80000001ABF88BF0;
    v9 = 0xD000000000000010;
  }

  v12 = (a4 + *(type metadata accessor for EntityAliasView() + 20));
  *v12 = a2;
  v12[1] = a3;
  v12[2] = v9;
  v12[3] = v11;
  v13 = type metadata accessor for SearchableViewDatabaseTable();
  v14 = v13[6];
  swift_bridgeObjectRetain_n();
  sub_1ABF22CE4();
  v15 = (v12 + v13[9]);
  *v15 = 0x44495F444DLL;
  v15[1] = 0xE500000000000000;
  *(v12 + v13[8]) = &unk_1F208FAF0;
  result = MEMORY[0x1AC5A9410](1937008223, 0xE400000000000000);
  v17 = (v12 + v13[7]);
  *v17 = v9;
  v17[1] = v11;
  return result;
}

uint64_t sub_1ABB6DEF4()
{
  v0 = sub_1ABF24D84();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1ABB6DF40(char a1)
{
  result = 0x745F6C616E676973;
  switch(a1)
  {
    case 1:
      result = 0x745F797469746E65;
      break;
    case 2:
      result = 0x7361696C61;
      break;
    case 3:
      result = 0x44495F444DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB6DFE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABB6DEF4();
  *a2 = result;
  return result;
}

uint64_t sub_1ABB6E014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABB6DF40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABB6E040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABB6F1B8();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

uint64_t sub_1ABB6E08C(uint64_t a1)
{
  v2 = sub_1ABB6F20C();

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1ABB6E0D8(uint64_t a1)
{
  v2 = sub_1ABB6EE50();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1ABB6E124(uint64_t a1)
{
  v2 = sub_1ABB6EE50();

  return MEMORY[0x1EEE09A88](a1, v2);
}

void EntityAliasView.fetchFirstNamesWithCollision()()
{
  v1 = sub_1ABB6E1C0();
  v3 = v0;
  sub_1ABB45E44(sub_1ABB6E5D0, &v2, v1);
}

uint64_t sub_1ABB6E1C0()
{
  v5 = MEMORY[0x1E69E7CC0];
  v1 = (v0 + *(type metadata accessor for EntityAliasView() + 20));
  v2 = *v1;
  v3 = v1[1];
  swift_getObjectType();
  sub_1ABF22464();
  return v5;
}

uint64_t sub_1ABB6E3B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = objc_autoreleasePoolPush();
  v7 = (a2 + *(type metadata accessor for EntityAliasView() + 20));
  v8 = *v7;
  v9 = v7[1];
  swift_getObjectType();
  sub_1ABF22464();
  if (v2)
  {
    objc_autoreleasePoolPop(v6);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1ED871B40);
    v11 = v2;
    v12 = sub_1ABF237D4();
    v13 = sub_1ABF24664();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_1ABF25154();
      v18 = sub_1ABADD6D8(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1ABA78000, v12, v13, "Unable to access people alias view: %s", v14, 0xCu);
      sub_1ABA84B54(v15);
      MEMORY[0x1AC5AB8B0](v15, -1, -1);
      MEMORY[0x1AC5AB8B0](v14, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    objc_autoreleasePoolPop(v6);
    return v20;
  }
}

uint64_t type metadata accessor for EntityAliasView()
{
  result = qword_1ED871C68;
  if (!qword_1ED871C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1ABB6E664()
{
  result = sub_1ABAAE1D0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SearchableViewDatabaseTable();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABB6E6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v25 = a5;
  v6 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = a2 + *(type metadata accessor for EntityAliasView() + 20);
  v15 = *(type metadata accessor for SearchableViewDatabaseTable() + 24);
  v34 = &type metadata for EntityAliasColumn;
  v16 = sub_1ABB6EE50();
  v35 = v16;
  LOBYTE(v33[0]) = 0;
  v31 = MEMORY[0x1E69E6158];
  v32 = MEMORY[0x1E69A0130];
  v29 = 0xD000000000000014;
  v30 = 0x80000001ABF88BD0;
  v17 = sub_1ABF22424();
  v18 = MEMORY[0x1E699FE60];
  v37 = v17;
  v38 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v36);
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v29);
  sub_1ABA84B54(v33);
  sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABF22CA4();
  sub_1ABA84B54(v36);
  v34 = &type metadata for EntityAliasColumn;
  v35 = v16;
  LOBYTE(v33[0]) = 2;
  v31 = MEMORY[0x1E69E6158];
  v32 = MEMORY[0x1E69A0130];
  v29 = v26;
  v30 = v27;
  v37 = v17;
  v38 = v18;
  sub_1ABA93DC0(v36);

  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v29);
  sub_1ABA84B54(v33);
  sub_1ABB6EF0C(&unk_1EB4D3AE8);
  sub_1ABF225A4();
  v19 = *(v7 + 8);
  v19(v11, v6);
  sub_1ABA84B54(v36);
  sub_1ABB6EF0C(&qword_1ED870CC0);
  v20 = v39;
  v21 = sub_1ABF22294();
  result = (v19)(v13, v6);
  if (!v20)
  {
    v23 = sub_1ABAAB7C8(v21);

    *v25 = v23 > 1;
  }

  return result;
}

uint64_t sub_1ABB6EA20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  v11 = a2 + *(type metadata accessor for EntityAliasView() + 20);
  v12 = *(type metadata accessor for SearchableViewDatabaseTable() + 24);
  v46[3] = &type metadata for EntityAliasColumn;
  v46[4] = sub_1ABB6EE50();
  LOBYTE(v46[0]) = 0;
  v45[3] = MEMORY[0x1E69E6158];
  v45[4] = MEMORY[0x1E69A0130];
  v45[0] = 0xD000000000000014;
  v45[1] = 0x80000001ABF88BD0;
  v47[3] = sub_1ABF22424();
  v47[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v47);
  sub_1ABF22AD4();
  sub_1ABB6EEA4(v45);
  sub_1ABA84B54(v46);
  sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABF22CA4();
  sub_1ABA84B54(v47);
  sub_1ABB6EF0C(&qword_1ED870CC0);
  v13 = sub_1ABF22294();
  result = (*(v7 + 8))(v10, v6);
  if (v3)
  {
    return result;
  }

  v15 = sub_1ABAAB7C8(v13);
  v41 = a3;
  v48 = 0;
  if (v15)
  {
    v16 = v15;
    v47[0] = MEMORY[0x1E69E7CC0];
    sub_1ABADDBD4();
    if (v16 < 0)
    {
      goto LABEL_29;
    }

    v17 = 0;
    v18 = v47[0];
    v43 = v13;
    v44 = v13 & 0xC000000000000001;
    v42 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v44)
      {
        MEMORY[0x1AC5AA170](v17, v13);
      }

      else
      {
        if (v17 >= *(v42 + 16))
        {
          goto LABEL_28;
        }

        v20 = *(v13 + 8 * v17 + 32);
      }

      v21 = v48;
      sub_1ABB32E40();
      v48 = v21;
      if (v21)
      {
        goto LABEL_30;
      }

      v24 = v22;
      v25 = v23;

      v47[0] = v18;
      v26 = *(v18 + 16);
      if (v26 >= *(v18 + 24) >> 1)
      {
        sub_1ABADDBD4();
        v18 = v47[0];
      }

      *(v18 + 16) = v26 + 1;
      v27 = v18 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v25;
      ++v17;
      v13 = v43;
      if (v19 == v16)
      {

        goto LABEL_16;
      }
    }
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v28 = 0;
    v29 = *(v18 + 16);
    v30 = (v18 + 40);
    v31 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v29 == v28)
      {

        v39 = *v41;
        *v41 = v31;
      }

      if (v28 >= *(v18 + 16))
      {
        break;
      }

      v33 = *(v30 - 1);
      v32 = *v30;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = *(v31 + 16);
        sub_1ABAAA4F4();
        v31 = v37;
      }

      v34 = *(v31 + 16);
      if (v34 >= *(v31 + 24) >> 1)
      {
        sub_1ABAAA4F4();
        v31 = v38;
      }

      *(v31 + 16) = v34 + 1;
      v35 = v31 + 16 * v34;
      *(v35 + 32) = v33;
      *(v35 + 40) = v32;
      v30 += 2;
      ++v28;
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1ABB6EE50()
{
  result = qword_1EB4D3AE0;
  if (!qword_1EB4D3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AE0);
  }

  return result;
}

uint64_t sub_1ABB6EEA4(uint64_t a1)
{
  v2 = sub_1ABAD219C(&unk_1EB4D3C40, &unk_1ABF3FCC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABB6EF0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D50F0, &unk_1ABF3A620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityAliasColumn(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB6F05C()
{
  result = qword_1EB4D3AF8;
  if (!qword_1EB4D3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3AF8);
  }

  return result;
}

unint64_t sub_1ABB6F0B4()
{
  result = qword_1EB4D3B00;
  if (!qword_1EB4D3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3B00);
  }

  return result;
}

unint64_t sub_1ABB6F10C()
{
  result = qword_1EB4D3B08;
  if (!qword_1EB4D3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3B08);
  }

  return result;
}

unint64_t sub_1ABB6F164()
{
  result = qword_1EB4D3B10;
  if (!qword_1EB4D3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3B10);
  }

  return result;
}

unint64_t sub_1ABB6F1B8()
{
  result = qword_1EB4D3B18;
  if (!qword_1EB4D3B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3B18);
  }

  return result;
}

unint64_t sub_1ABB6F20C()
{
  result = qword_1EB4D3B20;
  if (!qword_1EB4D3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3B20);
  }

  return result;
}

void static EntityClass.walletTransaction.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB5968(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.orderEmailRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xF60), *(_Records_GDEntityClass_records + 0xF68), *(_Records_GDEntityClass_records + 0xF70), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.orderTransactionRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xF78), *(_Records_GDEntityClass_records + 0xF80), *(_Records_GDEntityClass_records + 0xF88), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.shippinginfo.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABB7E0DC(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.orderShippingInfoRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x1010), *(_Records_GDEntityClass_records + 0x1018), _Records_GDEntityClass_records, v9);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.entityOrganizationRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x1028), *(_Records_GDEntityClass_records + 0x1030), _Records_GDEntityClass_records, v9);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.shipmentFullFillmentEmailRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x1040), *(_Records_GDEntityClass_records + 0x1048), _Records_GDEntityClass_records, v9);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.orderShipmentFullFillmentRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x1058), *(_Records_GDEntityClass_records + 0x1060), _Records_GDEntityClass_records, v9);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.orderPaymentRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x1070), *(_Records_GDEntityClass_records + 0x1078), _Records_GDEntityClass_records, v9);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.fromToEmailRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x1088), *(_Records_GDEntityClass_records + 0x1090), _Records_GDEntityClass_records, v9);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.orderPersonRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x10A0), *(_Records_GDEntityClass_records + 0x10A8), _Records_GDEntityClass_records, v9);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.holidayEvent.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x10B8), *(_Records_GDEntityClass_records + 0x10C0), _Records_GDEntityClass_records, v9);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.shipmentPersonRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x10D0), *(_Records_GDEntityClass_records + 0x10D8), _Records_GDEntityClass_records, v9);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.emailInfoRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAB6024(*(_Records_GDEntityClass_records + 0x10E8), *(_Records_GDEntityClass_records + 0x10F0), _Records_GDEntityClass_records, v9);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t EntityClass.ancestorClasses.getter()
{
  v3 = *v0;
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 32);
  EntityClass.ancestorClassesSet.getter();

  return sub_1ABB455E4(v1);
}

void EntityClass.parentClasses.getter()
{
  sub_1ABAA00E4();
  sub_1ABAA6308();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA8A72C();
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    sub_1ABAA0230();
    static EntityClass.employmentRelationshipType.getter();
    sub_1ABA88CE8(v247, v248, v249, v250, v251, v252, v253, v254);
    sub_1ABA7BFC4();
    sub_1ABA88934(v255 + 3568);
    if (v0)
    {
      sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA8E764();
      sub_1ABA888E0(v0, xmmword_1ABF34740);
      static EntityClass.membershipRelationshipType.getter();
      goto LABEL_34;
    }

    goto LABEL_49;
  }

  v5 = sub_1ABA8A714(_Records_GDEntityClass_records);
  v8 = sub_1ABA8882C(v5, v6, v7, v3 - 160);
  sub_1ABAB5FB8(v8, v9, v10, v11, v12, v13, v14, v15);
  sub_1ABB7E38C();
  if (v0)
  {
LABEL_3:
    v16 = sub_1ABAA6734(0);
    v0 = v16;
    goto LABEL_35;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_44;
  }

  v17 = sub_1ABB7E070(_Records_GDEntityClass_records);
  sub_1ABA8882C(v17, v18, v19, v3 - 208);
  *&v20 = sub_1ABAB5FA0().n128_u64[0];
  sub_1ABB7E910(v21, v22, v23, v24, v25, v26, v27, v28, v20);
  sub_1ABB7E464();
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v29 = sub_1ABA8E764();
    sub_1ABA8A780(v29, xmmword_1ABF34740);
    if (v30)
    {
      v31 = sub_1ABA8C944(v30);
      sub_1ABA8882C(v31, v32, v33, v3 - 208);
      v34 = *(v3 - 208);
      v35 = *(v3 - 192);
      v36 = *(v3 - 184);
LABEL_33:
      sub_1ABAA0D10(v35, v34);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_48;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    sub_1ABA89710();
    static EntityClass.locationRelationshipType.getter();
    sub_1ABA9DF58(v256, v257, v258, v259, v260, v261, v262, v263);
    sub_1ABA7BFC4();
    sub_1ABA88934(v264 + 3520);
    if (v0)
    {
      goto LABEL_42;
    }

    sub_1ABA8926C();
    static EntityClass.timeZoneRelationshipType.getter();
    sub_1ABA9E0A0(v265, v266, v267, v268, v269, v270, v271, v272);
    sub_1ABA7BFC4();
    sub_1ABA88934(v273 + 3472);
LABEL_55:
    sub_1ABA88F2C();
    static EntityClass.quantityRelationshipType.getter();
    sub_1ABA9E1C0(v274, v275, v276, v277, v278, v279, v280, v281);
    sub_1ABA7BFC4();
    sub_1ABA88934(v282 + 3424);
    if ((v0 & 1) == 0)
    {
      sub_1ABA89008();
      static EntityClass.religionRelationshipType.getter();
      sub_1ABA9E300(v283, v284, v285, v286, v287, v288, v289, v290);
      sub_1ABA7BFC4();
      sub_1ABA88934(v291 + 3376);
      sub_1ABA8A75C();
      static EntityClass.person.getter();
      sub_1ABA88E90(v292, v293, v294, v295, v296, v297, v298, v299);
      sub_1ABA7BFC4();
      sub_1ABA88934(v300 + 3328);
      goto LABEL_63;
    }

LABEL_42:
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v0 = sub_1ABA8E764();
    sub_1ABA888E0(v0, xmmword_1ABF34740);
    static EntityClass.relationshipType.getter();
    goto LABEL_34;
  }

  v37 = sub_1ABA8CA50(_Records_GDEntityClass_records);
  sub_1ABA8882C(v37, v38, v39, v3 - 256);
  *&v40 = sub_1ABAA63FC().n128_u64[0];
  sub_1ABB7E8F0(v41, v42, v43, v44, v45, v46, v47, v48, v40);
  sub_1ABB7E2FC();
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v49 = sub_1ABA8E764();
    sub_1ABA8A780(v49, xmmword_1ABF34740);
    if (v50)
    {
      v51 = sub_1ABA8C944(v50);
      sub_1ABA8882C(v51, v52, v53, v3 - 256);
      v34 = *(v3 - 256);
      v35 = *(v3 - 240);
      v54 = *(v3 - 232);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_52;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  sub_1ABA8D1D4(_Records_GDEntityClass_records);
  sub_1ABA7EFC8();
  sub_1ABA8882C(v55, v56, v57, v58);
  *&v59 = sub_1ABA88E28().n128_u64[0];
  sub_1ABB7E8D0(v60, v61, v62, v63, v64, v65, v66, v67, v59);
  sub_1ABAA654C();
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v68 = sub_1ABA8E764();
    sub_1ABA8A780(v68, xmmword_1ABF34740);
    if (v69)
    {
      v70 = sub_1ABAABC74(v69);
      sub_1ABA8882C(v70, v72, v73, v71 + 288);
      v34 = sub_1ABB7E6FC();
      goto LABEL_33;
    }

    goto LABEL_53;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_1ABA9E070(_Records_GDEntityClass_records);
  sub_1ABAA0398();
  sub_1ABA8882C(v74, v75, v76, v77);
  sub_1ABAAFAE0();
  v1372 = v1371;
  v78 = sub_1ABAA0C80();
  sub_1ABA856C4(v78, &v1329);
  sub_1ABA808E4();
  sub_1ABA88934(v79 + 288);
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v80 = sub_1ABA8E764();
    sub_1ABA8A780(v80, xmmword_1ABF34740);
    if (v81)
    {
      v82 = sub_1ABAABC74(v81);
      sub_1ABA8882C(v82, v84, v85, v83 + 240);
      v34 = sub_1ABB7E6E8();
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_58;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  sub_1ABA88E44(_Records_GDEntityClass_records);
  sub_1ABA9E4DC();
  sub_1ABA8882C(v86, v87, v88, v89);
  sub_1ABA8A7C0();
  v1371 = v1370;
  v90 = sub_1ABB7DF88();
  sub_1ABA856C4(v90, &v1329);
  sub_1ABA808E4();
  sub_1ABA88934(v91 + 240);
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v92 = sub_1ABA8E764();
    sub_1ABA8A780(v92, xmmword_1ABF34740);
    if (v93)
    {
      v94 = sub_1ABAABC74(v93);
      sub_1ABA8882C(v94, v96, v97, v95 + 192);
      v34 = sub_1ABB7E6D4();
      goto LABEL_33;
    }

    goto LABEL_59;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_1ABB7E6C8();
  sub_1ABA9ECB8(v98);
  sub_1ABB7E088();
  sub_1ABA8882C(v99, v100, v101, v102);
  sub_1ABA8D4A8();
  v1370 = *(v1 + 4064);
  v103 = sub_1ABB7DF7C();
  sub_1ABA856C4(v103, &v1329);
  sub_1ABA808E4();
  sub_1ABA88934(v104 + 192);
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v105 = sub_1ABA8E764();
    sub_1ABA8A780(v105, xmmword_1ABF34740);
    if (v106)
    {
      v107 = sub_1ABAABC74(v106);
      sub_1ABA8882C(v107, v109, v110, v108 + 144);
      v34 = sub_1ABB7E6B4();
      goto LABEL_33;
    }

    goto LABEL_61;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    sub_1ABA8ACD4();
    static EntityClass.role.getter();
    sub_1ABA9E408(v301, v302, v303, v304, v305, v306, v307, v308);
    sub_1ABA7BFC4();
    sub_1ABA88934(v309 + 3280);
    if (v0)
    {
      sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA8E764();
      sub_1ABA888E0(v0, xmmword_1ABF34740);
      static EntityClass.concept.getter();
      goto LABEL_34;
    }

    goto LABEL_66;
  }

  sub_1ABA9F1E0(_Records_GDEntityClass_records);
  sub_1ABB7E07C();
  v115 = sub_1ABA8882C(v111, v112, v113, v114);
  sub_1ABAA0C9C(v115, v116, v117, v118, v119, v120, v121, v122);
  sub_1ABA808E4();
  sub_1ABA88934(v123 + 144);
  if ((v0 & 1) == 0)
  {
    sub_1ABAB51F4();
    static EntityClass.occurrence.getter();
    sub_1ABB7D8B8(v130, v131, v132, v133, v134, v135, v136, v137);
    sub_1ABA808E4();
    sub_1ABA88934(v138 + 96);
    static EntityClass.topic.getter();
    sub_1ABAA0D44(v146, v147, v148, v149, v150, v151, v152, v153);
    sub_1ABA808E4();
    sub_1ABA88934(v154 + 48);
    if (v0)
    {
      sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA8E764();
      sub_1ABA888E0(v0, xmmword_1ABF34740);
      static EntityClass.entity.getter();
      goto LABEL_34;
    }

    sub_1ABA8B7F8();
    static EntityClass.senderRelationshipType.getter();
    sub_1ABA88A28();
    sub_1ABA88ABC();
    sub_1ABA856C4(v155, &v1329);
    sub_1ABA808E4();
    sub_1ABA88934(v156);
    sub_1ABB7E094();
    static EntityClass.membershipRelationshipType.getter();
    sub_1ABB7D884(v157, v158, v159, v160, v161, v162, v163, v164);
    sub_1ABA7BFC4();
    sub_1ABA88934(v165 + 4048);
    sub_1ABA887C4();
    static EntityClass.organizerRelationshipType.getter();
    sub_1ABA8CE60(v166, v167, v168, v169, v170, v171, v172, v173);
    sub_1ABA7BFC4();
    sub_1ABA88934(v174 + 4000);
    sub_1ABA8D33C();
    static EntityClass.topicRelationshipType.getter();
    sub_1ABA8CF94(v175, v176, v177, v178, v179, v180, v181, v182);
    sub_1ABA7BFC4();
    sub_1ABA88934(v183 + 3952);
    sub_1ABA8B57C();
    static EntityClass.calendarRelationshipType.getter();
    sub_1ABA8D0DC(v184, v185, v186, v187, v188, v189, v190, v191);
    sub_1ABA7BFC4();
    sub_1ABA88934(v192 + 3904);
    sub_1ABA9DDEC();
    static EntityClass.eventRelationshipType.getter();
    sub_1ABA8D224(v193, v194, v195, v196, v197, v198, v199, v200);
    sub_1ABA7BFC4();
    sub_1ABA88934(v201 + 3856);
    sub_1ABA8B99C();
    static EntityClass.textRelationshipType.getter();
    sub_1ABA8D374(v202, v203, v204, v205, v206, v207, v208, v209);
    sub_1ABA7BFC4();
    sub_1ABA88934(v210 + 3808);
    sub_1ABA90C10();
    static EntityClass.addressRelationshipType.getter();
    sub_1ABA88B1C(v211, v212, v213, v214, v215, v216, v217, v218);
    sub_1ABA7BFC4();
    sub_1ABA88934(v219 + 3760);
    sub_1ABA9E19C();
    static EntityClass.languageRelationshipType.getter();
    sub_1ABA90F70(v220, v221, v222, v223, v224, v225, v226, v227);
    sub_1ABA7BFC4();
    sub_1ABA88934(v228 + 3712);
    sub_1ABA90F2C();
    static EntityClass.identifierRelationshipType.getter();
    sub_1ABA88C10(v229, v230, v231, v232, v233, v234, v235, v236);
    sub_1ABA7BFC4();
    sub_1ABA88934(v237 + 3664);
    sub_1ABA9E3DC();
    static EntityClass.imageRelationshipType.getter();
    sub_1ABA9DE20(v238, v239, v240, v241, v242, v243, v244, v245);
    sub_1ABA7BFC4();
    sub_1ABA88934(v246 + 3616);
    goto LABEL_45;
  }

  sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
  v124 = sub_1ABA8E764();
  sub_1ABA8A780(v124, xmmword_1ABF34740);
  if (v125)
  {
    v126 = sub_1ABAABC74(v125);
    sub_1ABA8882C(v126, v128, v129, v127 + 96);
    v34 = sub_1ABB7E6A0();
    goto LABEL_33;
  }

  __break(1u);
LABEL_66:
  sub_1ABA9E8AC();
  static EntityClass.typeOfProfession.getter();
  sub_1ABA88F64(v310, v311, v312, v313, v314, v315, v316, v317);
  sub_1ABA7BFC4();
  sub_1ABA88934(v318 + 3232);
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v0 = sub_1ABA8E764();
    sub_1ABA888E0(v0, xmmword_1ABF34740);
    static EntityClass.role.getter();
  }

  else
  {
    sub_1ABA9EA28();
    static EntityClass.religion.getter();
    sub_1ABA9E4FC(v319, v320, v321, v322, v323, v324, v325, v326);
    sub_1ABA7BFC4();
    sub_1ABA88934(v327 + 3184);
    sub_1ABA9F114();
    static EntityClass.language.getter();
    sub_1ABA89040(v328, v329, v330, v331, v332, v333, v334, v335);
    sub_1ABA7BFC4();
    sub_1ABA88934(v336 + 3136);
    sub_1ABB7E0D0();
    static EntityClass.organization.getter();
    sub_1ABA9E64C(v337, v338, v339, v340, v341, v342, v343, v344);
    sub_1ABA7BFC4();
    sub_1ABA88934(v345 + 3088);
    sub_1ABA9EE08();
    static EntityClass.politicalParty.getter();
    sub_1ABA89108(v346, v347, v348, v349, v350, v351, v352, v353);
    sub_1ABA7BFC4();
    sub_1ABA88934(v354 + 3040);
    sub_1ABA9EF58();
    static EntityClass.populatedPlace.getter();
    sub_1ABA9E7E8(v355, v356, v357, v358, v359, v360, v361, v362);
    sub_1ABA7BFC4();
    sub_1ABA88934(v363 + 2992);
    sub_1ABA88A48();
    static EntityClass.state.getter();
    sub_1ABA891C4(v364, v365, v366, v367, v368, v369, v370, v371);
    sub_1ABA7BFC4();
    sub_1ABA88934(v372 + 2944);
    if (v0)
    {
      sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA8E764();
      sub_1ABA888E0(v0, xmmword_1ABF34740);
      static EntityClass.populatedPlace.getter();
    }

    else
    {
      sub_1ABA8A430();
      static EntityClass.country.getter();
      sub_1ABA9E8E4(v373, v374, v375, v376, v377, v378, v379, v380);
      sub_1ABA7BFC4();
      sub_1ABA88934(v381 + 2896);
      sub_1ABAA0650();
      static EntityClass.timeZone.getter();
      sub_1ABA892B4(v382, v383, v384, v385, v386, v387, v388, v389);
      sub_1ABA7BFC4();
      sub_1ABA88934(v390 + 2848);
      if ((v0 & 1) == 0)
      {
        sub_1ABA8AA60();
        static EntityClass.event.getter();
        sub_1ABA9EA74(v391, v392, v393, v394, v395, v396, v397, v398);
        sub_1ABA7BFC4();
        sub_1ABA88934(v399 + 2800);
        sub_1ABA89EA4();
        static EntityClass.interestRelationshipType.getter();
        sub_1ABA8938C(v400, v401, v402, v403, v404, v405, v406, v407);
        sub_1ABA7BFC4();
        sub_1ABA88934(v408 + 2752);
        sub_1ABA88A04();
        static EntityClass.groupOfHumans.getter();
        sub_1ABA9EB90(v409, v410, v411, v412, v413, v414, v415, v416);
        sub_1ABA7BFC4();
        sub_1ABA88934(v417 + 2704);
        sub_1ABA88DB4();
        static EntityClass.siribaseType.getter();
        sub_1ABA894B8(v418, v419, v420, v421, v422, v423, v424, v425);
        sub_1ABA7BFC4();
        sub_1ABA88934(v426 + 2656);
        sub_1ABA8B3A8();
        static EntityClass.participationRelationshipType.getter();
        sub_1ABA9ECE4(v427, v428, v429, v430, v431, v432, v433, v434);
        sub_1ABA7BFC4();
        sub_1ABA88934(v435 + 2608);
        sub_1ABA897E4();
        static EntityClass.devicePrimaryUser.getter();
        sub_1ABA895F4(v436, v437, v438, v439, v440, v441, v442, v443);
        sub_1ABA7BFC4();
        sub_1ABA88934(v444 + 2560);
        sub_1ABA88BCC();
        static EntityClass.calendar.getter();
        sub_1ABA9EE34(v445, v446, v447, v448, v449, v450, v451, v452);
        sub_1ABA7BFC4();
        sub_1ABA88934(v453 + 2512);
        sub_1ABA8A8D8();
        static EntityClass.calendarEvent.getter();
        sub_1ABA8974C(v454, v455, v456, v457, v458, v459, v460, v461);
        sub_1ABA7BFC4();
        sub_1ABA88934(v462 + 2464);
        sub_1ABA89BA0();
        static EntityClass.home.getter();
        sub_1ABA9EF98(v463, v464, v465, v466, v467, v468, v469, v470);
        sub_1ABA7BFC4();
        sub_1ABA88934(v471 + 2416);
        sub_1ABA8CC34();
        static EntityClass.document.getter();
        sub_1ABA8986C(v472, v473, v474, v475, v476, v477, v478, v479);
        sub_1ABA7BFC4();
        sub_1ABA88934(v480 + 2368);
        sub_1ABA8CDC0();
        static EntityClass.software.getter();
        sub_1ABA9F070(v481, v482, v483, v484, v485, v486, v487, v488);
        sub_1ABA7BFC4();
        sub_1ABA88934(v489 + 2320);
        sub_1ABA9DF28();
        static EntityClass.genre.getter();
        sub_1ABA899B0(v490, v491, v492, v493, v494, v495, v496, v497);
        sub_1ABA7BFC4();
        sub_1ABA88934(v498 + 2272);
        sub_1ABA8A798();
        static EntityClass.work.getter();
        sub_1ABA9F154(v499, v500, v501, v502, v503, v504, v505, v506);
        sub_1ABA7BFC4();
        sub_1ABA88934(v507 + 2224);
        sub_1ABA8A154();
        static EntityClass.calendarSourceRelationshipType.getter();
        sub_1ABA89AE8(v508, v509, v510, v511, v512, v513, v514, v515);
        sub_1ABA7BFC4();
        sub_1ABA88934(v516 + 2176);
        sub_1ABA89D68();
        static EntityClass.agentAffiliationRelationshipType.getter();
        sub_1ABA9F210(v517, v518, v519, v520, v521, v522, v523, v524);
        sub_1ABA7BFC4();
        sub_1ABA88934(v525 + 2128);
        sub_1ABA8AA7C();
        static EntityClass.dateRelationshipType.getter();
        sub_1ABA89C30(v526, v527, v528, v529, v530, v531, v532, v533);
        sub_1ABA7BFC4();
        sub_1ABA88934(v534 + 2080);
        sub_1ABA8A848();
        static EntityClass.typeOfActivity.getter();
        sub_1ABA9F314(v535, v536, v537, v538, v539, v540, v541, v542);
        sub_1ABA7BFC4();
        sub_1ABA88934(v543 + 2032);
        sub_1ABA891A4();
        static EntityClass.activityEvent.getter();
        sub_1ABA89D9C(v544, v545, v546, v547, v548, v549, v550, v551);
        sub_1ABA7BFC4();
        sub_1ABA88934(v552 + 1984);
        sub_1ABA9E758();
        static EntityClass.administratorRelationshipType.getter();
        sub_1ABA9F418(v553, v554, v555, v556, v557, v558, v559, v560);
        sub_1ABA7BFC4();
        sub_1ABA88934(v561 + 1936);
        sub_1ABA9F748();
        static EntityClass.county.getter();
        sub_1ABA89EE4(v562, v563, v564, v565, v566, v567, v568, v569);
        sub_1ABA7BFC4();
        sub_1ABA88934(v570 + 1888);
        sub_1ABA89340();
        static EntityClass.visualIdentifierRelationshipType.getter();
        sub_1ABA9F4A8(v571, v572, v573, v574, v575, v576, v577, v578);
        sub_1ABA7BFC4();
        sub_1ABA88934(v579 + 1840);
        sub_1ABA9FCA0();
        static EntityClass.song.getter();
        sub_1ABA8A040(v580, v581, v582, v583, v584, v585, v586, v587);
        sub_1ABA7BFC4();
        sub_1ABA88934(v588 + 1792);
        sub_1ABAA09F4();
        static EntityClass.songRelationshipType.getter();
        sub_1ABA9F560(v589, v590, v591, v592, v593, v594, v595, v596);
        sub_1ABA7BFC4();
        sub_1ABA88934(v597 + 1744);
        sub_1ABA9F8D4();
        static EntityClass.animal.getter();
        sub_1ABA8A90C(v598, v599, v600, v601, v602, v603, v604, v605);
        sub_1ABA7BFC4();
        sub_1ABA88934(v606 + 1696);
        sub_1ABA9E2B8();
        static EntityClass.softwareRelationshipType.getter();
        sub_1ABA9F670(v607, v608, v609, v610, v611, v612, v613, v614);
        sub_1ABA7BFC4();
        sub_1ABA88934(v615 + 1648);
        sub_1ABA8AE6C();
        static EntityClass.vehicle.getter();
        sub_1ABA8A178(v616, v617, v618, v619, v620, v621, v622, v623);
        sub_1ABA7BFC4();
        sub_1ABA88934(v624 + 1600);
        sub_1ABA9F03C();
        static EntityClass.onFoot.getter();
        sub_1ABA9F760(v625, v626, v627, v628, v629, v630, v631, v632);
        sub_1ABA7BFC4();
        sub_1ABA88934(v633 + 1552);
        sub_1ABA88AD8();
        static EntityClass.automobile.getter();
        sub_1ABA8A254(v634, v635, v636, v637, v638, v639, v640, v641);
        sub_1ABA7BFC4();
        sub_1ABA88934(v642 + 1504);
        sub_1ABA9F9AC();
        static EntityClass.plane.getter();
        sub_1ABA9F830(v643, v644, v645, v646, v647, v648, v649, v650);
        sub_1ABA7BFC4();
        sub_1ABA88934(v651 + 1456);
        sub_1ABA9E618();
        static EntityClass.bicycle.getter();
        sub_1ABA8AACC(v652, v653, v654, v655, v656, v657, v658, v659);
        sub_1ABA7BFC4();
        sub_1ABA88934(v660 + 1408);
        sub_1ABB7E0B8();
        static EntityClass.ship.getter();
        sub_1ABA9F908(v661, v662, v663, v664, v665, v666, v667, v668);
        sub_1ABA7BFC4();
        sub_1ABA88934(v669 + 1360);
        sub_1ABA8D034();
        static EntityClass.bus.getter();
        sub_1ABA8A370(v670, v671, v672, v673, v674, v675, v676, v677);
        sub_1ABA7BFC4();
        sub_1ABA88934(v678 + 1312);
        sub_1ABA89A68();
        static EntityClass.locomotiveTrain.getter();
        sub_1ABA9F9F8(v679, v680, v681, v682, v683, v684, v685, v686);
        sub_1ABA7BFC4();
        sub_1ABA88934(v687 + 1264);
        sub_1ABA8A80C();
        static EntityClass.transportationActivity.getter();
        sub_1ABA8A4A4(v688, v689, v690, v691, v692, v693, v694, v695);
        sub_1ABA7BFC4();
        sub_1ABA88934(v696 + 1216);
        sub_1ABA8C8CC();
        static EntityClass.workingActivity.getter();
        sub_1ABA9FAFC(v697, v698, v699, v700, v701, v702, v703, v704);
        sub_1ABA7BFC4();
        sub_1ABA88934(v705 + 1168);
        sub_1ABA9FBA0();
        static EntityClass.meetingActivity.getter();
        sub_1ABA8AD1C(v706, v707, v708, v709, v710, v711, v712, v713);
        sub_1ABA7BFC4();
        sub_1ABA88934(v714 + 1120);
        sub_1ABA8A590();
        static EntityClass.eatingActivity.getter();
        sub_1ABA9FBD0(v715, v716, v717, v718, v719, v720, v721, v722);
        sub_1ABA7BFC4();
        sub_1ABA88934(v723 + 1072);
        sub_1ABAA0844();
        static EntityClass.watchingTVActivity.getter();
        sub_1ABA8A5D4(v724, v725, v726, v727, v728, v729, v730, v731);
        sub_1ABA7BFC4();
        sub_1ABA88934(v732 + 1024);
        sub_1ABA8BBF0();
        static EntityClass.communicatingActivity.getter();
        sub_1ABA9FCF4(v733, v734, v735, v736, v737, v738, v739, v740);
        sub_1ABA7BFC4();
        sub_1ABA88934(v741 + 976);
        sub_1ABA9FE14();
        static EntityClass.shoppingActivity.getter();
        sub_1ABA8AEC8(v742, v743, v744, v745, v746, v747, v748, v749);
        sub_1ABA7BFC4();
        sub_1ABA88934(v750 + 928);
        sub_1ABA9F80C();
        static EntityClass.travelingActivity.getter();
        sub_1ABA9FE54(v751, v752, v753, v754, v755, v756, v757, v758);
        sub_1ABA7BFC4();
        sub_1ABA88934(v759 + 880);
        sub_1ABA9F2D4();
        static EntityClass.readingActivity.getter();
        sub_1ABA8B0E0(v760, v761, v762, v763, v764, v765, v766, v767);
        sub_1ABA7BFC4();
        sub_1ABA88934(v768 + 832);
        sub_1ABA9F490();
        static EntityClass.vacationingActivity.getter();
        sub_1ABA950DC(v769, v770, v771, v772, v773, v774, v775, v776);
        sub_1ABA7BFC4();
        sub_1ABA88934(v777 + 784);
        sub_1ABAA0DF8();
        static EntityClass.gamingActivity.getter();
        sub_1ABA8B25C(v778, v779, v780, v781, v782, v783, v784, v785);
        sub_1ABA7BFC4();
        sub_1ABA88934(v786 + 736);
        sub_1ABA9FF2C();
        static EntityClass.socializingActivity.getter();
        sub_1ABA9FFAC(v787, v788, v789, v790, v791, v792, v793, v794);
        sub_1ABA7BFC4();
        sub_1ABA88934(v795 + 688);
        sub_1ABA8C658();
        static EntityClass.wakingUpActivity.getter();
        sub_1ABA8B490(v796, v797, v798, v799, v800, v801, v802, v803);
        sub_1ABA7BFC4();
        sub_1ABA88934(v804 + 640);
        sub_1ABB7E0AC();
        static EntityClass.goingToBedActivity.getter();
        sub_1ABAA0128(v805, v806, v807, v808, v809, v810, v811, v812);
        sub_1ABA7BFC4();
        sub_1ABA88934(v813 + 592);
        sub_1ABA9EB58();
        static EntityClass.sleepingActivity.getter();
        sub_1ABA8B65C(v814, v815, v816, v817, v818, v819, v820, v821);
        sub_1ABA7BFC4();
        sub_1ABA88934(v822 + 544);
        sub_1ABA8B19C();
        static EntityClass.exercisingActivity.getter();
        sub_1ABAA02C8(v823, v824, v825, v826, v827, v828, v829, v830);
        sub_1ABA7BFC4();
        sub_1ABA88934(v831 + 496);
        sub_1ABB7E0C4();
        static EntityClass.mindfulnessActivity.getter();
        sub_1ABA8B874(v832, v833, v834, v835, v836, v837, v838, v839);
        sub_1ABA7BFC4();
        sub_1ABA88934(v840 + 448);
        sub_1ABA9F524();
        static EntityClass.onThePhoneActivity.getter();
        sub_1ABAA0408(v841, v842, v843, v844, v845, v846, v847, v848);
        sub_1ABA7BFC4();
        sub_1ABA88934(v849 + 400);
        sub_1ABAA00CC();
        static EntityClass.facetimeActivity.getter();
        sub_1ABA8BA84(v850, v851, v852, v853, v854, v855, v856, v857);
        sub_1ABA7BFC4();
        sub_1ABA88934(v858 + 352);
        sub_1ABA9F3DC();
        static EntityClass.walkingActivity.getter();
        sub_1ABAA0520(v859, v860, v861, v862, v863, v864, v865, v866);
        sub_1ABA7BFC4();
        sub_1ABA88934(v867 + 304);
        sub_1ABA8947C();
        static EntityClass.runningActivity.getter();
        sub_1ABAA06D0(v868, v869, v870, v871, v872, v873, v874, v875);
        sub_1ABA7BFC4();
        sub_1ABA88934(v876 + 256);
        sub_1ABA9FF50();
        sub_1ABA8BC54(v877, v878, v879, v880, v881, v882, v883, v884);
        sub_1ABA7BFC4();
        sub_1ABA88934(v885 + 208);
        sub_1ABA8BD88();
        static EntityClass.hikingActivity.getter();
        sub_1ABAA088C(v886, v887, v888, v889, v890, v891, v892, v893);
        sub_1ABA7BFC4();
        sub_1ABA88934(v894 + 160);
        sub_1ABA8CF70();
        static EntityClass.modeOfTransportation.getter();
        sub_1ABA8C55C(v895, v896, v897, v898, v899, v900, v901, v902);
        sub_1ABA7BFC4();
        sub_1ABA88934(v903 + 112);
        sub_1ABB7E0A0();
        static EntityClass.automobileModel.getter();
        sub_1ABAA0A44(v904, v905, v906, v907, v908, v909, v910, v911);
        sub_1ABA7BFC4();
        sub_1ABA88934(v912 + 64);
        static EntityClass.transportationActivityType.getter();
        sub_1ABA8C710(v913, v914, v915, v916, v917, v918, v919, v920);
        sub_1ABA7BFC4();
        sub_1ABA88934(v921 + 16);
        static EntityClass.workingActivityType.getter();
        *&v922 = sub_1ABAB0F68().n128_u64[0];
        sub_1ABB7DF94(v923, v924, v925, v926, v927, v928, v929, v930, v922);
        sub_1ABA8A830();
        static EntityClass.meetingActivityType.getter();
        *&v931 = sub_1ABAB3BD0().n128_u64[0];
        sub_1ABB7DFB4(v932, v933, v934, v935, v936, v937, v938, v939, v931);
        sub_1ABB7E14C();
        static EntityClass.eatingActivityType.getter();
        sub_1ABA8CAAC();
        sub_1ABAB61B4(v940, v1179, v1198, v1217, v1236, v1255, v1274, v1293, v1311);
        sub_1ABAB5E8C();
        static EntityClass.watchingMediaActivityType.getter();
        sub_1ABA95488();
        sub_1ABA856C4(v941, &v1329);
        sub_1ABAA6708();
        static EntityClass.communicatingActivityType.getter();
        sub_1ABA90C94();
        sub_1ABA856C4(v942, &v1329);
        sub_1ABB7E50C();
        static EntityClass.shoppingActivityType.getter();
        sub_1ABA885E0();
        sub_1ABA856C4(v943, &v1329);
        sub_1ABB7E3EC();
        static EntityClass.mindfulActivityType.getter();
        sub_1ABAB5298();
        sub_1ABA856C4(v944, &v1329);
        sub_1ABB7E284();
        static EntityClass.sleepActivityType.getter();
        sub_1ABAA0E90();
        sub_1ABA856C4(v945, &v1329);
        sub_1ABB7E194();
        static EntityClass.travelActivityType.getter();
        sub_1ABAB548C();
        sub_1ABA856C4(v946, &v1329);
        sub_1ABAB5F38();
        static EntityClass.readingActivityType.getter();
        sub_1ABAA10B4();
        sub_1ABA856C4(v947, &v1329);
        sub_1ABAA11F8();
        static EntityClass.vacationActivityType.getter();
        sub_1ABAB5660();
        sub_1ABA856C4(v948, &v1329);
        sub_1ABAA2778();
        static EntityClass.socialActivityType.getter();
        sub_1ABAA128C();
        sub_1ABA856C4(v949, &v1329);
        sub_1ABB7E44C();
        static EntityClass.wakingActivityType.getter();
        sub_1ABAB5828();
        sub_1ABA856C4(v950, &v1329);
        sub_1ABB7E2E4();
        static EntityClass.goingToBedActivityType.getter();
        sub_1ABAA14F4();
        sub_1ABA856C4(v951, &v1329);
        sub_1ABB7E20C();
        static EntityClass.phoneCallActivityType.getter();
        sub_1ABAB5A24();
        sub_1ABA856C4(v952, &v1329);
        sub_1ABAA36E4();
        static EntityClass.facetimeActivityType.getter();
        sub_1ABA95260();
        sub_1ABA856C4(v953, &v1329);
        sub_1ABAA47F8();
        static EntityClass.walkingActivityType.getter();
        sub_1ABA96024();
        sub_1ABA856C4(v954, &v1329);
        sub_1ABAA1E08();
        static EntityClass.runningActivityType.getter();
        sub_1ABAA1764();
        sub_1ABA856C4(v955, &v1329);
        sub_1ABB7E4C4();
        static EntityClass.bikingActivityType.getter();
        sub_1ABA82DEC();
        sub_1ABA856C4(v956, &v1329);
        sub_1ABB7E374();
        static EntityClass.hikingActivityType.getter();
        sub_1ABAA1980();
        sub_1ABA856C4(v957, &v1329);
        sub_1ABA88910();
        static EntityClass.typeOfPhysicalExercise.getter();
        sub_1ABA97F20();
        sub_1ABA856C4(v958, &v1329);
        sub_1ABB7E164();
        static EntityClass.localizedNameRelationshipType.getter();
        sub_1ABAA1BC0();
        sub_1ABA856C4(v959, &v1329);
        sub_1ABAA2B18();
        static EntityClass.mediaWork.getter();
        sub_1ABA97768();
        sub_1ABA856C4(v960, &v1329);
        sub_1ABAA3B30();
        static EntityClass.commuteActivity.getter();
        sub_1ABA96C28();
        sub_1ABA856C4(v961, &v1329);
        sub_1ABAB5214();
        static EntityClass.diningActivity.getter();
        sub_1ABAB5C84();
        sub_1ABA856C4(v962, &v1329);
        sub_1ABB7E404();
        static EntityClass.attendingAPerformanceActivity.getter();
        sub_1ABAA1EB4();
        sub_1ABA856C4(v963, &v1329);
        sub_1ABB7E2B4();
        static EntityClass.stationaryActivity.getter();
        sub_1ABAB1044();
        sub_1ABA856C4(v964, &v1329);
        sub_1ABB7E1C4();
        static EntityClass.knowledgeSource.getter();
        sub_1ABA7AC70();
        sub_1ABA856C4(v965, &v1329);
        sub_1ABA94EA0();
        static EntityClass.confidenceRelationshipType.getter();
        sub_1ABA82774();
        sub_1ABA856C4(v966, &v1329);
        sub_1ABAA6408();
        static EntityClass.commuteActivityType.getter();
        sub_1ABA96964();
        sub_1ABA856C4(v967, &v1329);
        sub_1ABAB5EB0();
        static EntityClass.make.getter();
        sub_1ABAA2228();
        sub_1ABA856C4(v968, &v1329);
        sub_1ABB7E47C();
        static EntityClass.locationVisitActivity.getter();
        sub_1ABA95784();
        sub_1ABA856C4(v969, &v1329);
        sub_1ABB7E344();
        static EntityClass.performanceRelationshipType.getter();
        sub_1ABAA2548();
        sub_1ABA856C4(v970, &v1329);
        sub_1ABB7E23C();
        static EntityClass.partWholeRelationshipType.getter();
        sub_1ABAA2860();
        sub_1ABA856C4(v971, &v1329);
        sub_1ABAA102C();
        static EntityClass.ratingRelationshipType.getter();
        sub_1ABA974C0();
        sub_1ABA856C4(v972, &v1329);
        sub_1ABAA5644();
        static EntityClass.musicalArtist.getter();
        sub_1ABAA2C18();
        sub_1ABA856C4(v973, &v1329);
        sub_1ABAB6000();
        static EntityClass.contentRating.getter();
        sub_1ABAA2FFC();
        sub_1ABA856C4(v974, &v1329);
        sub_1ABB7E4F4();
        static EntityClass.sportsGameEvent.getter();
        sub_1ABAA3458();
        sub_1ABA856C4(v975, &v1329);
        sub_1ABB7E3D4();
        static EntityClass.sportsTeam.getter();
        sub_1ABAA37BC();
        sub_1ABA856C4(v976, &v1329);
        sub_1ABB7E26C();
        static EntityClass.drivingActivity.getter();
        sub_1ABAA3C1C();
        sub_1ABA856C4(v977, &v1329);
        sub_1ABB7E1AC();
        static EntityClass.drivingActivityType.getter();
        sub_1ABAA3FC8();
        sub_1ABA856C4(v978, &v1329);
        sub_1ABAB5BA4();
        static EntityClass.behaviorActivity.getter();
        sub_1ABAA4474();
        sub_1ABA856C4(v979, &v1329);
        sub_1ABAA18F4();
        static EntityClass.behaviorActivityType.getter();
        sub_1ABAA48E8();
        sub_1ABA856C4(v980, &v1329);
        sub_1ABB7E32C();
        static EntityClass.time.getter();
        sub_1ABAA4D28();
        sub_1ABA856C4(v981, &v1329);
        sub_1ABB7E224();
        static EntityClass.album.getter();
        sub_1ABAA5230();
        sub_1ABA856C4(v982, &v1329);
        sub_1ABAA20E4();
        static EntityClass.musicalWork.getter();
        sub_1ABAA5770();
        sub_1ABA856C4(v983, &v1329);
        sub_1ABAA1674();
        static EntityClass.group.getter();
        sub_1ABA97A50();
        sub_1ABA856C4(v984, &v1329);
        sub_1ABAA0E1C();
        static EntityClass.groupRelationshipType.getter();
        sub_1ABA83FD0();
        sub_1ABA856C4(v985, &v1329);
        sub_1ABB7E4DC();
        static EntityClass.livingBeingRelationship.getter();
        sub_1ABA8E138();
        sub_1ABA856C4(v986, &v1329);
        sub_1ABB7E3BC();
        static EntityClass.entityAliasRelationshipType.getter();
        sub_1ABA9A318();
        sub_1ABA856C4(v987, &v1329);
        sub_1ABB7E254();
        static EntityClass.pet.getter();
        sub_1ABAA5F84();
        sub_1ABA856C4(v988, &v1329);
        sub_1ABB7E17C();
        static EntityClass.dog.getter();
        sub_1ABA90688();
        sub_1ABA856C4(v989, &v1329);
        sub_1ABAA0DD4();
        static EntityClass.cat.getter();
        sub_1ABA9930C();
        sub_1ABA856C4(v990, &v1329);
        sub_1ABAA2114();
        static EntityClass.extractionTagRelationshipType.getter();
        sub_1ABA8BF00();
        sub_1ABA856C4(v991, &v1329);
        sub_1ABAA4C3C();
        static EntityClass.movie.getter();
        sub_1ABA8FEF8();
        sub_1ABA856C4(v992, &v1329);
        sub_1ABB7E41C();
        static EntityClass.sportsOrganization.getter();
        sub_1ABA9487C();
        sub_1ABA856C4(v993, &v1329);
        sub_1ABB7E2CC();
        static EntityClass.sportsLeague.getter();
        sub_1ABA81650();
        sub_1ABA856C4(v994, &v1329);
        sub_1ABB7E1F4();
        static EntityClass.athlete.getter();
        sub_1ABA83770();
        sub_1ABA856C4(v995, &v1329);
        sub_1ABAA5D30();
        static EntityClass.personInTheArts.getter();
        sub_1ABA8E744();
        sub_1ABA856C4(v996, &v1329);
        sub_1ABAA63AC();
        static EntityClass.musician.getter();
        sub_1ABA7E4B0();
        sub_1ABA856C4(v997, &v1329);
        sub_1ABAA2F20();
        static EntityClass.televisionProgram.getter();
        sub_1ABA9335C();
        sub_1ABA856C4(v998, &v1329);
        sub_1ABB7E494();
        static EntityClass.sportsActivity.getter();
        sub_1ABA7BFA4();
        sub_1ABA856C4(v999, &v1329);
        sub_1ABB7E35C();
        static EntityClass.screenTimeSegment.getter();
        sub_1ABA808C4();
        sub_1ABA856C4(v1000, &v1329);
        sub_1ABA888EC();
        static EntityClass.myPet.getter();
        sub_1ABA7FC3C();
        sub_1ABA856C4(v1001, &v1329);
        sub_1ABA889A8();
        static EntityClass.myDog.getter();
        sub_1ABA8CC90();
        sub_1ABA856C4(v1002, &v1329);
        sub_1ABB7E314();
        static EntityClass.myCat.getter();
        sub_1ABB7D86C();
        sub_1ABA856C4(v1003, &v1329);
        sub_1ABB7E434();
        static EntityClass.walletOrder.getter();
        sub_1ABA96F80();
        sub_1ABA856C4(v1004, &v1329);
        sub_1ABAA63D0();
        static EntityClass.walletTransaction.getter();
        sub_1ABAB659C();
        sub_1ABA856C4(v1005, &v1329);
        sub_1ABAA5DCC();
        static EntityClass.orderEmailRelationshipType.getter();
        sub_1ABAB6778();
        sub_1ABA856C4(v1006, &v1329);
        sub_1ABAA2478();
        static EntityClass.orderTransactionRelationshipType.getter();
        sub_1ABAB68A4();
        sub_1ABA856C4(v1007, &v1329);
        sub_1ABAA64C8();
        static EntityClass.payment.getter();
        sub_1ABB7D854();
        sub_1ABA856C4(v1008, &v1329);
        sub_1ABB7E1DC();
        static EntityClass.transaction.getter();
        sub_1ABA972E0();
        sub_1ABA856C4(v1009, &v1329);
        sub_1ABB7E29C();
        static EntityClass.email.getter();
        sub_1ABA82A44();
        sub_1ABA856C4(v1010, &v1329);
        sub_1ABB7E3A4();
        static EntityClass.shippinginfo.getter();
        sub_1ABB7D83C();
        sub_1ABA856C4(v1011, &v1329);
        sub_1ABB7E4AC();
        static EntityClass.shipmentFullFillmentInfo.getter();
        sub_1ABA963E0(v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1180, v1199, v1218, v1237, v1256, v1275, v1294, v1312, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v1355, *(&v1355 + 1), v1356, *(&v1356 + 1), v1357, v1358, v1359, *(&v1359 + 1), v1360, *(&v1360 + 1), v1361, v1362, v1363, *(&v1363 + 1), v1364, v1365, v1366, v1367, v1368, *(&v1368 + 1), v1369);
        sub_1ABA856C4(v1020, &v1329);
        sub_1ABAA5BF4();
        static EntityClass.orderShippingInfoRelationshipType.getter();
        sub_1ABAB2AE0(v1021, v1022, v1023, v1024, v1025, v1026, v1027, v1028, v1181, v1200, v1219, v1238, v1257, v1276, v1295, v1313, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v1355, *(&v1355 + 1), v1356, *(&v1356 + 1), v1357, v1358, v1359, *(&v1359 + 1), v1360, *(&v1360 + 1), v1361, v1362, v1363, *(&v1363 + 1), v1364, v1365, v1366, v1367, v1368);
        v1030 = sub_1ABA856C4(v1029, &v1329);
        sub_1ABAB5E68(v1030, v1031, v1032, v1033, v1034, v1035, v1036, v1037, v1182, v1201, v1220, v1239, v1258, v1277, v1296, v1314, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v1355, *(&v1355 + 1), v1356, *(&v1356 + 1), v1357, v1358, v1359, *(&v1359 + 1), v1360, *(&v1360 + 1), v1361, v1362, v1363, *(&v1363 + 1), v1364, v1365, v1366, v1367, v1368, *(&v1368 + 1), v1369);
        static EntityClass.entityOrganizationRelationshipType.getter();
        sub_1ABB7D824(v1038, v1039, v1040, v1041, v1042, v1043, v1044, v1045, v1183, v1202, v1221, v1240, v1259, v1278, v1297, v1315, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v1355, *(&v1355 + 1), v1356, *(&v1356 + 1), v1357, v1358, v1359, *(&v1359 + 1), v1360, *(&v1360 + 1), v1361, v1362, v1363);
        v1047 = sub_1ABA856C4(v1046, &v1329);
        sub_1ABAA1DE4(v1047, v1048, v1049, v1050, v1051, v1052, v1053, v1054, v1184, v1203, v1222, v1241, v1260, v1279, v1298, v1316, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v1355, *(&v1355 + 1), v1356, *(&v1356 + 1), v1357, v1358, v1359, *(&v1359 + 1), v1360, *(&v1360 + 1), v1361, v1362, v1363, *(&v1363 + 1), v1364, v1365, v1366, v1367, v1368);
        static EntityClass.shipmentFullFillmentEmailRelationshipType.getter();
        sub_1ABB7D80C(v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1185, v1204, v1223, v1242, v1261, v1280, v1299, v1317, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v1355, *(&v1355 + 1), v1356, *(&v1356 + 1), v1357, v1358, v1359);
        v1064 = sub_1ABA856C4(v1063, &v1329);
        sub_1ABA887FC(v1064, v1065, v1066, v1067, v1068, v1069, v1070, v1071, v1186, v1205, v1224, v1243, v1262, v1281, v1300, v1318, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v1355, *(&v1355 + 1), v1356, *(&v1356 + 1), v1357, v1358, v1359, *(&v1359 + 1), v1360, *(&v1360 + 1), v1361, v1362, v1363);
        static EntityClass.orderShipmentFullFillmentRelationshipType.getter();
        v1080 = sub_1ABB7DF54(v1072, v1073, v1074, v1075, v1076, v1077, v1078, v1079, v1187, v1206, v1225, v1244, v1263, v1282, v1301, v1319, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v1355, v1356, v1357, v1358, v1359, v1360, v1361);
        sub_1ABA889E0(v1080, v1081, v1082, v1083, v1084, v1085, v1086, v1087, v1188, v1207, v1226, v1245, v1264, v1283, v1302, v1320, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v1355, *(&v1355 + 1), v1356, *(&v1356 + 1), v1357, v1358, v1359);
        static EntityClass.orderPaymentRelationshipType.getter();
        v1096 = sub_1ABB7DF2C(v1088, v1089, v1090, v1091, v1092, v1093, v1094, v1095, v1189, v1208, v1227, v1246, v1265, v1284, v1303, v1321, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v1355, v1356, v1357);
        sub_1ABB7EA70(v1096, v1097, v1098, v1099, v1100, v1101, v1102, v1103, v1190, v1209, v1228, v1247, v1266, v1285, v1304, v1322, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v1355);
        static EntityClass.fromToEmailRelationshipType.getter();
        v1112 = sub_1ABB7E9B0(v1104, v1105, v1106, v1107, v1108, v1109, v1110, v1111, v1191, v1210, v1229, v1248, v1267, v1286, v1305, v1323, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350);
        sub_1ABB7EA40(v1112, v1113, v1114, v1115, v1116, v1117, v1118, v1119, v1192, v1211, v1230, v1249, v1268, v1287, v1306, v1324, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350);
        static EntityClass.orderPersonRelationshipType.getter();
        v1128 = sub_1ABB7E998(v1120, v1121, v1122, v1123, v1124, v1125, v1126, v1127, v1193, v1212, v1231, v1250, v1269, v1288, v1307, v1325, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345);
        sub_1ABB7EA10(v1128, v1129, v1130, v1131, v1132, v1133, v1134, v1135, v1194, v1213, v1232, v1251, v1270, v1289, v1308, v1326, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345);
        static EntityClass.holidayEvent.getter();
        v1144 = sub_1ABB7E980(v1136, v1137, v1138, v1139, v1140, v1141, v1142, v1143, v1195, v1214, v1233, v1252, v1271, v1290, v1309, v1327, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340);
        sub_1ABB7E9F8(v1144, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1196, v1215, v1234, v1253, v1272, v1291, v1310, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340);
        static EntityClass.shipmentPersonRelationshipType.getter();
        v1160 = sub_1ABB7E968(v1152, v1153, v1154, v1155, v1156, v1157, v1158, v1159);
        sub_1ABB7EA58(v1160, v1161, v1162, v1163, v1164, v1165, v1166, v1167, v1197, v1216, v1235, v1254, v1273, v1292);
        static EntityClass.emailInfoRelationshipType.getter();
        v1171 = sub_1ABB7E950(v1168, v1169, v1170);
        sub_1ABB7EA28(v1171, v1172, v1173);
        sub_1ABC6D528();
        v1174 = sub_1ABF237D4();
        sub_1ABF24674();
        sub_1ABAA20BC();
        if (sub_1ABB7E014())
        {
          v1175 = sub_1ABAD8744();
          sub_1ABAA0B68(v1175);
          if (v2)
          {
            while (1)
            {
              sub_1ABA88988();
              v1176();
              sub_1ABA9FAB0();
            }
          }

          sub_1ABA8A7E0(&dword_1ABA78000, v1177, v1178, "EntityClass: parentClasses: unknown entity class.");
          sub_1ABAD874C();
        }

        goto LABEL_3;
      }

      sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA8E764();
      sub_1ABA888E0(v0, xmmword_1ABF34740);
      static EntityClass.place.getter();
    }
  }

LABEL_34:
  v16 = v0;
LABEL_35:
  if (sub_1ABA8DEE8(v16))
  {
    sub_1ABA8DEF4(v0, v139, v140, v141, v142, v143, v144, v145, v1179, v1198, v1217, v1236, SBYTE4(v1236));
  }

  else
  {
  }

  sub_1ABAB5B7C();
  sub_1ABA82A00();
}

void EntityClass.childClasses.getter()
{
  sub_1ABAA00E4();
  sub_1ABAA6308();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA8A72C();
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v4 = sub_1ABA8A714(_Records_GDEntityClass_records);
  v7 = sub_1ABA8882C(v4, v5, v6, v2 - 160);
  sub_1ABAA5C88(v7, v8, v9, v10, v11, v12, v13, v14);
  sub_1ABB7E38C();
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1ABF3EB50;
    if (_Records_GDEntityClass_records)
    {
      v0 = v15;
      v16 = sub_1ABB7E070(_Records_GDEntityClass_records);
      sub_1ABA8882C(v16, v17, v18, v2 - 160);
      v19 = sub_1ABAB50C4();
      sub_1ABAA0D10(v20, v19);
      if (_Records_GDEntityClass_records)
      {
        v21 = sub_1ABA8CA50(_Records_GDEntityClass_records);
        sub_1ABA8882C(v21, v22, v23, v2 - 160);
        v24 = sub_1ABAB50C4();
        sub_1ABAA5624(v25, v24);
        if (_Records_GDEntityClass_records)
        {
          v26 = sub_1ABA8D1D4(_Records_GDEntityClass_records);
          sub_1ABA8882C(v26, v27, v28, v2 - 160);
          v29 = sub_1ABAB50C4();
          sub_1ABB7E0EC(v30, v29);
          if (_Records_GDEntityClass_records)
          {
            v31 = sub_1ABA9E070(_Records_GDEntityClass_records);
            sub_1ABA8882C(v31, v32, v33, v2 - 160);
            v34 = sub_1ABAB50C4();
            sub_1ABB7E618(v35, v34);
            *(v0 + 184) = v36;
            if (_Records_GDEntityClass_records)
            {
              v37 = sub_1ABB7E10C(_Records_GDEntityClass_records);
              sub_1ABA8882C(v37, v38, v39, v2 - 160);
              v40 = sub_1ABAB50C4();
              sub_1ABB7E60C(v41, v40);
              *(v0 + 224) = v42;
              if (_Records_GDEntityClass_records)
              {
                v43 = sub_1ABA88E44(_Records_GDEntityClass_records);
                sub_1ABA8882C(v43, v44, v45, v2 - 160);
                v46 = sub_1ABAB50C4();
                sub_1ABB7E600(v47, v46);
                *(v0 + 264) = v48;
                if (_Records_GDEntityClass_records)
                {
                  v49 = sub_1ABA9ECB8(_Records_GDEntityClass_records);
                  sub_1ABA8882C(v49, v50, v51, v2 - 160);
                  v52 = sub_1ABAB50C4();
                  sub_1ABB7E5F4(v53, v52);
                  *(v0 + 304) = v54;
                  if (_Records_GDEntityClass_records)
                  {
                    v55 = sub_1ABA9F1E0(_Records_GDEntityClass_records);
                    sub_1ABA8882C(v55, v56, v57, v2 - 160);
                    sub_1ABA7EFB4();
                    *(v0 + 328) = v58;
                    *(v0 + 336) = v59;
                    *(v0 + 344) = v60;
                    if (_Records_GDEntityClass_records)
                    {
                      v61 = sub_1ABB7E66C(_Records_GDEntityClass_records);
                      sub_1ABA8882C(v61, v62, v63, v2 - 160);
                      v64 = sub_1ABAB50C4();
                      sub_1ABB7E5E8(v65, v64);
                      *(v0 + 384) = v66;
                      if (_Records_GDEntityClass_records)
                      {
                        v67 = sub_1ABB7E660(_Records_GDEntityClass_records);
                        sub_1ABA8882C(v67, v68, v69, v2 - 160);
                        sub_1ABA7EFB4();
                        *(v0 + 408) = v70;
                        *(v0 + 416) = v71;
                        *(v0 + 424) = v72;
                        if (_Records_GDEntityClass_records)
                        {
                          v73 = sub_1ABB7E030(_Records_GDEntityClass_records);
                          sub_1ABA8882C(v73, v74, v75, v2 - 160);
                          v76 = sub_1ABAB50C4();
                          sub_1ABB7E5DC(v77, v76);
                          *(v0 + 464) = v78;
                          if (_Records_GDEntityClass_records)
                          {
                            v79 = sub_1ABB7E060(_Records_GDEntityClass_records);
                            sub_1ABA8882C(v79, v80, v81, v2 - 160);
                            sub_1ABA7EFB4();
                            *(v0 + 488) = v82;
                            *(v0 + 496) = v83;
                            *(v0 + 504) = v84;
                            if (_Records_GDEntityClass_records)
                            {
                              v85 = sub_1ABB7E050(_Records_GDEntityClass_records);
                              sub_1ABA8882C(v85, v86, v87, v2 - 160);
                              v88 = sub_1ABAB50C4();
                              sub_1ABB7E004(v89, v88);
                              *(v0 + 544) = v90;
                              if (_Records_GDEntityClass_records)
                              {
                                v91 = sub_1ABB7E040(_Records_GDEntityClass_records);
                                sub_1ABA8882C(v91, v92, v93, v2 - 160);
                                sub_1ABA7EFB4();
                                sub_1ABB7E5D0(v94);
                                *(v0 + 584) = v95;
                                if (_Records_GDEntityClass_records)
                                {
                                  v96 = sub_1ABB7E13C(_Records_GDEntityClass_records);
                                  sub_1ABA8882C(v96, v97, v98, v2 - 160);
                                  v99 = sub_1ABAB50C4();
                                  sub_1ABB7DFF4(v100, v99);
                                  *(v0 + 624) = v101;
                                  if (_Records_GDEntityClass_records)
                                  {
                                    v102 = sub_1ABAA6680(_Records_GDEntityClass_records);
                                    sub_1ABA8882C(v102, v103, v104, v2 - 160);
                                    sub_1ABA7EFB4();
                                    sub_1ABB7E5C4(v105);
                                    *(v0 + 664) = v106;
                                    if (_Records_GDEntityClass_records)
                                    {
                                      v107 = sub_1ABB7E12C(_Records_GDEntityClass_records);
                                      sub_1ABA8882C(v107, v108, v109, v2 - 160);
                                      v110 = sub_1ABAB50C4();
                                      sub_1ABB7DFE4(v111, v110);
                                      *(v0 + 704) = v112;
                                      if (_Records_GDEntityClass_records)
                                      {
                                        v113 = sub_1ABB7E11C(_Records_GDEntityClass_records);
                                        sub_1ABA8882C(v113, v114, v115, v2 - 160);
                                        sub_1ABA7EFB4();
                                        sub_1ABB7E5B8(v116);
                                        *(v0 + 744) = v117;
                                        if (_Records_GDEntityClass_records)
                                        {
                                          v118 = sub_1ABAA0C5C(_Records_GDEntityClass_records);
                                          sub_1ABA8882C(v118, v119, v120, v2 - 160);
                                          v121 = sub_1ABAB50C4();
                                          sub_1ABAA9058(v122, v121);
                                          *(v0 + 784) = v123;
                                          if (_Records_GDEntityClass_records)
                                          {
                                            v124 = sub_1ABAA1B1C(_Records_GDEntityClass_records);
                                            sub_1ABA8882C(v124, v125, v126, v2 - 160);
                                            sub_1ABA7EFB4();
                                            sub_1ABB7E5AC(v127);
                                            *(v0 + 824) = v128;
                                            if (_Records_GDEntityClass_records)
                                            {
                                              v129 = sub_1ABB7E0FC(_Records_GDEntityClass_records);
                                              sub_1ABA8882C(v129, v130, v131, v2 - 160);
                                              v132 = sub_1ABAB50C4();
                                              sub_1ABAAA998(v133, v132);
                                              *(v0 + 864) = v134;
                                              if (_Records_GDEntityClass_records)
                                              {
                                                v135 = sub_1ABAA2AF8(_Records_GDEntityClass_records);
                                                sub_1ABA8882C(v135, v136, v137, v2 - 160);
                                                sub_1ABA7EFB4();
                                                sub_1ABB7E5A0(v138);
                                                *(v0 + 904) = v139;
                                                if (_Records_GDEntityClass_records)
                                                {
                                                  v140 = sub_1ABAB5968(_Records_GDEntityClass_records);
                                                  sub_1ABA8882C(v140, v141, v142, v2 - 160);
                                                  v143 = sub_1ABAB50C4();
                                                  sub_1ABAAA624(v144, v143);
                                                  *(v0 + 944) = v145;
                                                  if (_Records_GDEntityClass_records)
                                                  {
                                                    v146 = sub_1ABAB5EDC(_Records_GDEntityClass_records);
                                                    sub_1ABA8882C(v146, v147, v148, v2 - 160);
                                                    sub_1ABA7EFB4();
                                                    sub_1ABB7E594(v149);
                                                    *(v0 + 984) = v150;
                                                    if (_Records_GDEntityClass_records)
                                                    {
                                                      v151 = sub_1ABAB5F68(_Records_GDEntityClass_records);
                                                      sub_1ABA8882C(v151, v152, v153, v2 - 160);
                                                      v154 = sub_1ABAB50C4();
                                                      sub_1ABB7DFD4(v155, v154);
                                                      *(v0 + 1024) = v156;
                                                      if (_Records_GDEntityClass_records)
                                                      {
                                                        v157 = sub_1ABAB5FF0(_Records_GDEntityClass_records);
                                                        sub_1ABA8882C(v157, v158, v159, v2 - 160);
                                                        sub_1ABA7EFB4();
                                                        sub_1ABB7E588(v160);
                                                        *(v0 + 1064) = v161;
                                                        if (_Records_GDEntityClass_records)
                                                        {
                                                          v162 = sub_1ABB7E0DC(_Records_GDEntityClass_records);
                                                          sub_1ABA8882C(v162, v163, v164, v2 - 160);
                                                          v165 = sub_1ABAB50C4();
                                                          sub_1ABAB69C8(v166, v165);
                                                          *(v0 + 1104) = v167;
                                                          if (_Records_GDEntityClass_records)
                                                          {
                                                            v168 = sub_1ABAB1F74(_Records_GDEntityClass_records);
                                                            sub_1ABA8882C(v168, v169, v170, v2 - 160);
                                                            *(v0 + 1112) = sub_1ABAB50C4();
                                                            sub_1ABB7E57C(v171);
                                                            *(v0 + 1144) = v172;
LABEL_39:
                                                            v194 = v0;
                                                            goto LABEL_40;
                                                          }

                                                          goto LABEL_79;
                                                        }

LABEL_78:
                                                        __break(1u);
LABEL_79:
                                                        __break(1u);
                                                        goto LABEL_80;
                                                      }

LABEL_77:
                                                      __break(1u);
                                                      goto LABEL_78;
                                                    }

LABEL_76:
                                                    __break(1u);
                                                    goto LABEL_77;
                                                  }

LABEL_75:
                                                  __break(1u);
                                                  goto LABEL_76;
                                                }

LABEL_74:
                                                __break(1u);
                                                goto LABEL_75;
                                              }

LABEL_73:
                                              __break(1u);
                                              goto LABEL_74;
                                            }

LABEL_72:
                                            __break(1u);
                                            goto LABEL_73;
                                          }

LABEL_71:
                                          __break(1u);
                                          goto LABEL_72;
                                        }

LABEL_70:
                                        __break(1u);
                                        goto LABEL_71;
                                      }

LABEL_69:
                                      __break(1u);
                                      goto LABEL_70;
                                    }

LABEL_68:
                                    __break(1u);
                                    goto LABEL_69;
                                  }

LABEL_67:
                                  __break(1u);
                                  goto LABEL_68;
                                }

LABEL_66:
                                __break(1u);
                                goto LABEL_67;
                              }

LABEL_65:
                              __break(1u);
                              goto LABEL_66;
                            }

LABEL_64:
                            __break(1u);
                            goto LABEL_65;
                          }

LABEL_63:
                          __break(1u);
                          goto LABEL_64;
                        }

LABEL_62:
                        __break(1u);
                        goto LABEL_63;
                      }

LABEL_61:
                      __break(1u);
                      goto LABEL_62;
                    }

LABEL_60:
                    __break(1u);
                    goto LABEL_61;
                  }

LABEL_59:
                  __break(1u);
                  goto LABEL_60;
                }

LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v173 = sub_1ABB7E070(_Records_GDEntityClass_records);
  sub_1ABA8882C(v173, v174, v175, v2 - 208);
  *&v176 = sub_1ABAB5FA0().n128_u64[0];
  sub_1ABB7E710(v177, v178, v179, v180, v181, v182, v183, v184, v176);
  sub_1ABB7E464();
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v185 = swift_allocObject();
    *(v185 + 16) = xmmword_1ABF3EB40;
    if (_Records_GDEntityClass_records)
    {
      v0 = v185;
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xF78), *(_Records_GDEntityClass_records + 0xF80), *(_Records_GDEntityClass_records + 0xF88), v2 - 208);
      v186 = sub_1ABAB5F14();
      sub_1ABAA0D10(v187, v186);
      if (_Records_GDEntityClass_records)
      {
        sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xF60), *(_Records_GDEntityClass_records + 0xF68), *(_Records_GDEntityClass_records + 0xF70), v2 - 208);
        v188 = sub_1ABAB5F14();
        sub_1ABAA5624(v189, v188);
        if (_Records_GDEntityClass_records)
        {
          sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1068), *(_Records_GDEntityClass_records + 0x1070), *(_Records_GDEntityClass_records + 0x1078), v2 - 208);
          v190 = sub_1ABAB5F14();
          sub_1ABB7E0EC(v191, v190);
          static EntityClass.entityOrganizationRelationshipType.getter();
          static EntityClass.senderRelationshipType.getter();
          static EntityClass.topicRelationshipType.getter();
          static EntityClass.calendarRelationshipType.getter();
          static EntityClass.dateRelationshipType.getter();
          static EntityClass.administratorRelationshipType.getter();
          static EntityClass.organizerRelationshipType.getter();
          static EntityClass.localizedNameRelationshipType.getter();
          static EntityClass.songRelationshipType.getter();
          static EntityClass.confidenceRelationshipType.getter();
          static EntityClass.softwareRelationshipType.getter();
          static EntityClass.visualIdentifierRelationshipType.getter();
          static EntityClass.extractionTagRelationshipType.getter();
          static EntityClass.orderShippingInfoRelationshipType.getter();
          static EntityClass.orderShipmentFullFillmentRelationshipType.getter();
          static EntityClass.orderPersonRelationshipType.getter();
          static EntityClass.shipmentFullFillmentEmailRelationshipType.getter();
          static EntityClass.shipmentPersonRelationshipType.getter();
          static EntityClass.fromToEmailRelationshipType.getter();
          static EntityClass.emailInfoRelationshipType.getter();
          static EntityClass.textRelationshipType.getter();
          static EntityClass.addressRelationshipType.getter();
          static EntityClass.languageRelationshipType.getter();
          static EntityClass.identifierRelationshipType.getter();
          static EntityClass.imageRelationshipType.getter();
          static EntityClass.membershipRelationshipType.getter();
          static EntityClass.locationRelationshipType.getter();
          static EntityClass.quantityRelationshipType.getter();
          static EntityClass.religionRelationshipType.getter();
          static EntityClass.participationRelationshipType.getter();
          static EntityClass.agentAffiliationRelationshipType.getter();
          static EntityClass.eventRelationshipType.getter();
          static EntityClass.partWholeRelationshipType.getter();
          static EntityClass.ratingRelationshipType.getter();
          static EntityClass.groupRelationshipType.getter();
          goto LABEL_39;
        }

        goto LABEL_82;
      }

LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      sub_1ABA8926C();
      static EntityClass.timeZoneRelationshipType.getter();
      sub_1ABA9E0A0(v343, v344, v345, v346, v347, v348, v349, v350);
      sub_1ABA7BFC4();
      sub_1ABA88934(v351 + 3472);
      if ((v0 & 1) == 0)
      {
        sub_1ABA88F2C();
        static EntityClass.quantityRelationshipType.getter();
        sub_1ABA9E1C0(v352, v353, v354, v355, v356, v357, v358, v359);
        sub_1ABA7BFC4();
        sub_1ABA88934(v360 + 3424);
        sub_1ABA89008();
        static EntityClass.religionRelationshipType.getter();
        sub_1ABA9E300(v361, v362, v363, v364, v365, v366, v367, v368);
        sub_1ABA7BFC4();
        sub_1ABA88934(v369 + 3376);
        sub_1ABA8A75C();
        static EntityClass.person.getter();
        sub_1ABA88E90(v370, v371, v372, v373, v374, v375, v376, v377);
        sub_1ABA7BFC4();
        sub_1ABA88934(v378 + 3328);
        sub_1ABA8ACD4();
        static EntityClass.role.getter();
        sub_1ABA9E408(v379, v380, v381, v382, v383, v384, v385, v386);
        sub_1ABA7BFC4();
        sub_1ABA88934(v387 + 3280);
        sub_1ABA9E8AC();
        static EntityClass.typeOfProfession.getter();
        sub_1ABA88F64(v388, v389, v390, v391, v392, v393, v394, v395);
        sub_1ABA7BFC4();
        sub_1ABA88934(v396 + 3232);
        sub_1ABA9EA28();
        static EntityClass.religion.getter();
        sub_1ABA9E4FC(v397, v398, v399, v400, v401, v402, v403, v404);
        sub_1ABA7BFC4();
        sub_1ABA88934(v405 + 3184);
        sub_1ABA9F114();
        static EntityClass.language.getter();
        sub_1ABA89040(v406, v407, v408, v409, v410, v411, v412, v413);
        sub_1ABA7BFC4();
        sub_1ABA88934(v414 + 3136);
        sub_1ABB7E0D0();
        static EntityClass.organization.getter();
        sub_1ABA9E64C(v415, v416, v417, v418, v419, v420, v421, v422);
        sub_1ABA7BFC4();
        sub_1ABA88934(v423 + 3088);
        sub_1ABA9EE08();
        static EntityClass.politicalParty.getter();
        sub_1ABA89108(v424, v425, v426, v427, v428, v429, v430, v431);
        sub_1ABA7BFC4();
        sub_1ABA88934(v432 + 3040);
        sub_1ABA9EF58();
        static EntityClass.populatedPlace.getter();
        sub_1ABA9E7E8(v433, v434, v435, v436, v437, v438, v439, v440);
        sub_1ABA7BFC4();
        sub_1ABA88934(v441 + 2992);
        sub_1ABA88A48();
        static EntityClass.state.getter();
        sub_1ABA891C4(v442, v443, v444, v445, v446, v447, v448, v449);
        sub_1ABA7BFC4();
        sub_1ABA88934(v450 + 2944);
        sub_1ABA8A430();
        static EntityClass.country.getter();
        sub_1ABA9E8E4(v451, v452, v453, v454, v455, v456, v457, v458);
        sub_1ABA7BFC4();
        sub_1ABA88934(v459 + 2896);
        sub_1ABAA0650();
        static EntityClass.timeZone.getter();
        sub_1ABA892B4(v460, v461, v462, v463, v464, v465, v466, v467);
        sub_1ABA7BFC4();
        sub_1ABA88934(v468 + 2848);
        sub_1ABA8AA60();
        static EntityClass.event.getter();
        sub_1ABA9EA74(v469, v470, v471, v472, v473, v474, v475, v476);
        sub_1ABA7BFC4();
        sub_1ABA88934(v477 + 2800);
        sub_1ABA89EA4();
        static EntityClass.interestRelationshipType.getter();
        sub_1ABA8938C(v478, v479, v480, v481, v482, v483, v484, v485);
        sub_1ABA7BFC4();
        sub_1ABA88934(v486 + 2752);
        sub_1ABA88A04();
        static EntityClass.groupOfHumans.getter();
        sub_1ABA9EB90(v487, v488, v489, v490, v491, v492, v493, v494);
        sub_1ABA7BFC4();
        sub_1ABA88934(v495 + 2704);
        sub_1ABA88DB4();
        static EntityClass.siribaseType.getter();
        sub_1ABA894B8(v496, v497, v498, v499, v500, v501, v502, v503);
        sub_1ABA7BFC4();
        sub_1ABA88934(v504 + 2656);
        sub_1ABA8B3A8();
        static EntityClass.participationRelationshipType.getter();
        sub_1ABA9ECE4(v505, v506, v507, v508, v509, v510, v511, v512);
        sub_1ABA7BFC4();
        sub_1ABA88934(v513 + 2608);
        sub_1ABA897E4();
        static EntityClass.devicePrimaryUser.getter();
        sub_1ABA895F4(v514, v515, v516, v517, v518, v519, v520, v521);
        sub_1ABA7BFC4();
        sub_1ABA88934(v522 + 2560);
        sub_1ABA88BCC();
        static EntityClass.calendar.getter();
        sub_1ABA9EE34(v523, v524, v525, v526, v527, v528, v529, v530);
        sub_1ABA7BFC4();
        sub_1ABA88934(v531 + 2512);
        sub_1ABA8A8D8();
        static EntityClass.calendarEvent.getter();
        sub_1ABA8974C(v532, v533, v534, v535, v536, v537, v538, v539);
        sub_1ABA7BFC4();
        sub_1ABA88934(v540 + 2464);
        sub_1ABA89BA0();
        static EntityClass.home.getter();
        sub_1ABA9EF98(v541, v542, v543, v544, v545, v546, v547, v548);
        sub_1ABA7BFC4();
        sub_1ABA88934(v549 + 2416);
        sub_1ABA8CC34();
        static EntityClass.document.getter();
        sub_1ABA8986C(v550, v551, v552, v553, v554, v555, v556, v557);
        sub_1ABA7BFC4();
        sub_1ABA88934(v558 + 2368);
        sub_1ABA8CDC0();
        static EntityClass.software.getter();
        sub_1ABA9F070(v559, v560, v561, v562, v563, v564, v565, v566);
        sub_1ABA7BFC4();
        sub_1ABA88934(v567 + 2320);
        sub_1ABA9DF28();
        static EntityClass.genre.getter();
        sub_1ABA899B0(v568, v569, v570, v571, v572, v573, v574, v575);
        sub_1ABA7BFC4();
        sub_1ABA88934(v576 + 2272);
        sub_1ABA8A798();
        static EntityClass.work.getter();
        sub_1ABA9F154(v577, v578, v579, v580, v581, v582, v583, v584);
        sub_1ABA7BFC4();
        sub_1ABA88934(v585 + 2224);
        sub_1ABA8A154();
        static EntityClass.calendarSourceRelationshipType.getter();
        sub_1ABA89AE8(v586, v587, v588, v589, v590, v591, v592, v593);
        sub_1ABA7BFC4();
        sub_1ABA88934(v594 + 2176);
        sub_1ABA89D68();
        static EntityClass.agentAffiliationRelationshipType.getter();
        sub_1ABA9F210(v595, v596, v597, v598, v599, v600, v601, v602);
        sub_1ABA7BFC4();
        sub_1ABA88934(v603 + 2128);
        sub_1ABA8AA7C();
        static EntityClass.dateRelationshipType.getter();
        sub_1ABA89C30(v604, v605, v606, v607, v608, v609, v610, v611);
        sub_1ABA7BFC4();
        sub_1ABA88934(v612 + 2080);
        sub_1ABA8A848();
        static EntityClass.typeOfActivity.getter();
        sub_1ABA9F314(v613, v614, v615, v616, v617, v618, v619, v620);
        sub_1ABA7BFC4();
        sub_1ABA88934(v621 + 2032);
        sub_1ABA891A4();
        static EntityClass.activityEvent.getter();
        sub_1ABA89D9C(v622, v623, v624, v625, v626, v627, v628, v629);
        sub_1ABA7BFC4();
        sub_1ABA88934(v630 + 1984);
        sub_1ABA9E758();
        static EntityClass.administratorRelationshipType.getter();
        sub_1ABA9F418(v631, v632, v633, v634, v635, v636, v637, v638);
        sub_1ABA7BFC4();
        sub_1ABA88934(v639 + 1936);
        sub_1ABA9F748();
        static EntityClass.county.getter();
        sub_1ABA89EE4(v640, v641, v642, v643, v644, v645, v646, v647);
        sub_1ABA7BFC4();
        sub_1ABA88934(v648 + 1888);
        sub_1ABA89340();
        static EntityClass.visualIdentifierRelationshipType.getter();
        sub_1ABA9F4A8(v649, v650, v651, v652, v653, v654, v655, v656);
        sub_1ABA7BFC4();
        sub_1ABA88934(v657 + 1840);
        sub_1ABA9FCA0();
        static EntityClass.song.getter();
        sub_1ABA8A040(v658, v659, v660, v661, v662, v663, v664, v665);
        sub_1ABA7BFC4();
        sub_1ABA88934(v666 + 1792);
        sub_1ABAA09F4();
        static EntityClass.songRelationshipType.getter();
        sub_1ABA9F560(v667, v668, v669, v670, v671, v672, v673, v674);
        sub_1ABA7BFC4();
        sub_1ABA88934(v675 + 1744);
        sub_1ABA9F8D4();
        static EntityClass.animal.getter();
        sub_1ABA8A90C(v676, v677, v678, v679, v680, v681, v682, v683);
        sub_1ABA7BFC4();
        sub_1ABA88934(v684 + 1696);
        sub_1ABA9E2B8();
        static EntityClass.softwareRelationshipType.getter();
        sub_1ABA9F670(v685, v686, v687, v688, v689, v690, v691, v692);
        sub_1ABA7BFC4();
        sub_1ABA88934(v693 + 1648);
        sub_1ABA8AE6C();
        static EntityClass.vehicle.getter();
        sub_1ABA8A178(v694, v695, v696, v697, v698, v699, v700, v701);
        sub_1ABA7BFC4();
        sub_1ABA88934(v702 + 1600);
        sub_1ABA9F03C();
        static EntityClass.onFoot.getter();
        sub_1ABA9F760(v703, v704, v705, v706, v707, v708, v709, v710);
        sub_1ABA7BFC4();
        sub_1ABA88934(v711 + 1552);
        sub_1ABA88AD8();
        static EntityClass.automobile.getter();
        sub_1ABA8A254(v712, v713, v714, v715, v716, v717, v718, v719);
        sub_1ABA7BFC4();
        sub_1ABA88934(v720 + 1504);
        sub_1ABA9F9AC();
        static EntityClass.plane.getter();
        sub_1ABA9F830(v721, v722, v723, v724, v725, v726, v727, v728);
        sub_1ABA7BFC4();
        sub_1ABA88934(v729 + 1456);
        sub_1ABA9E618();
        static EntityClass.bicycle.getter();
        sub_1ABA8AACC(v730, v731, v732, v733, v734, v735, v736, v737);
        sub_1ABA7BFC4();
        sub_1ABA88934(v738 + 1408);
        sub_1ABB7E0B8();
        static EntityClass.ship.getter();
        sub_1ABA9F908(v739, v740, v741, v742, v743, v744, v745, v746);
        sub_1ABA7BFC4();
        sub_1ABA88934(v747 + 1360);
        sub_1ABA8D034();
        static EntityClass.bus.getter();
        sub_1ABA8A370(v748, v749, v750, v751, v752, v753, v754, v755);
        sub_1ABA7BFC4();
        sub_1ABA88934(v756 + 1312);
        sub_1ABA89A68();
        static EntityClass.locomotiveTrain.getter();
        sub_1ABA9F9F8(v757, v758, v759, v760, v761, v762, v763, v764);
        sub_1ABA7BFC4();
        sub_1ABA88934(v765 + 1264);
        sub_1ABA8A80C();
        static EntityClass.transportationActivity.getter();
        sub_1ABA8A4A4(v766, v767, v768, v769, v770, v771, v772, v773);
        sub_1ABA7BFC4();
        sub_1ABA88934(v774 + 1216);
        sub_1ABA8C8CC();
        static EntityClass.workingActivity.getter();
        sub_1ABA9FAFC(v775, v776, v777, v778, v779, v780, v781, v782);
        sub_1ABA7BFC4();
        sub_1ABA88934(v783 + 1168);
        sub_1ABA9FBA0();
        static EntityClass.meetingActivity.getter();
        sub_1ABA8AD1C(v784, v785, v786, v787, v788, v789, v790, v791);
        sub_1ABA7BFC4();
        sub_1ABA88934(v792 + 1120);
        sub_1ABA8A590();
        static EntityClass.eatingActivity.getter();
        sub_1ABA9FBD0(v793, v794, v795, v796, v797, v798, v799, v800);
        sub_1ABA7BFC4();
        sub_1ABA88934(v801 + 1072);
        sub_1ABAA0844();
        static EntityClass.watchingTVActivity.getter();
        sub_1ABA8A5D4(v802, v803, v804, v805, v806, v807, v808, v809);
        sub_1ABA7BFC4();
        sub_1ABA88934(v810 + 1024);
        sub_1ABA8BBF0();
        static EntityClass.communicatingActivity.getter();
        sub_1ABA9FCF4(v811, v812, v813, v814, v815, v816, v817, v818);
        sub_1ABA7BFC4();
        sub_1ABA88934(v819 + 976);
        sub_1ABA9FE14();
        static EntityClass.shoppingActivity.getter();
        sub_1ABA8AEC8(v820, v821, v822, v823, v824, v825, v826, v827);
        sub_1ABA7BFC4();
        sub_1ABA88934(v828 + 928);
        sub_1ABA9F80C();
        static EntityClass.travelingActivity.getter();
        sub_1ABA9FE54(v829, v830, v831, v832, v833, v834, v835, v836);
        sub_1ABA7BFC4();
        sub_1ABA88934(v837 + 880);
        sub_1ABA9F2D4();
        static EntityClass.readingActivity.getter();
        sub_1ABA8B0E0(v838, v839, v840, v841, v842, v843, v844, v845);
        sub_1ABA7BFC4();
        sub_1ABA88934(v846 + 832);
        sub_1ABA9F490();
        static EntityClass.vacationingActivity.getter();
        sub_1ABA950DC(v847, v848, v849, v850, v851, v852, v853, v854);
        sub_1ABA7BFC4();
        sub_1ABA88934(v855 + 784);
        sub_1ABAA0DF8();
        static EntityClass.gamingActivity.getter();
        sub_1ABA8B25C(v856, v857, v858, v859, v860, v861, v862, v863);
        sub_1ABA7BFC4();
        sub_1ABA88934(v864 + 736);
        sub_1ABA9FF2C();
        static EntityClass.socializingActivity.getter();
        sub_1ABA9FFAC(v865, v866, v867, v868, v869, v870, v871, v872);
        sub_1ABA7BFC4();
        sub_1ABA88934(v873 + 688);
        sub_1ABA8C658();
        static EntityClass.wakingUpActivity.getter();
        sub_1ABA8B490(v874, v875, v876, v877, v878, v879, v880, v881);
        sub_1ABA7BFC4();
        sub_1ABA88934(v882 + 640);
        sub_1ABB7E0AC();
        static EntityClass.goingToBedActivity.getter();
        sub_1ABAA0128(v883, v884, v885, v886, v887, v888, v889, v890);
        sub_1ABA7BFC4();
        sub_1ABA88934(v891 + 592);
        sub_1ABA9EB58();
        static EntityClass.sleepingActivity.getter();
        sub_1ABA8B65C(v892, v893, v894, v895, v896, v897, v898, v899);
        sub_1ABA7BFC4();
        sub_1ABA88934(v900 + 544);
        sub_1ABA8B19C();
        static EntityClass.exercisingActivity.getter();
        sub_1ABAA02C8(v901, v902, v903, v904, v905, v906, v907, v908);
        sub_1ABA7BFC4();
        sub_1ABA88934(v909 + 496);
        sub_1ABB7E0C4();
        static EntityClass.mindfulnessActivity.getter();
        sub_1ABA8B874(v910, v911, v912, v913, v914, v915, v916, v917);
        sub_1ABA7BFC4();
        sub_1ABA88934(v918 + 448);
        sub_1ABA9F524();
        static EntityClass.onThePhoneActivity.getter();
        sub_1ABAA0408(v919, v920, v921, v922, v923, v924, v925, v926);
        sub_1ABA7BFC4();
        sub_1ABA88934(v927 + 400);
        sub_1ABAA00CC();
        static EntityClass.facetimeActivity.getter();
        sub_1ABA8BA84(v928, v929, v930, v931, v932, v933, v934, v935);
        sub_1ABA7BFC4();
        sub_1ABA88934(v936 + 352);
        sub_1ABA9F3DC();
        static EntityClass.walkingActivity.getter();
        sub_1ABAA0520(v937, v938, v939, v940, v941, v942, v943, v944);
        sub_1ABA7BFC4();
        sub_1ABA88934(v945 + 304);
        sub_1ABA8947C();
        static EntityClass.runningActivity.getter();
        sub_1ABAA06D0(v946, v947, v948, v949, v950, v951, v952, v953);
        sub_1ABA7BFC4();
        sub_1ABA88934(v954 + 256);
        sub_1ABA9FF50();
        sub_1ABA8BC54(v955, v956, v957, v958, v959, v960, v961, v962);
        sub_1ABA7BFC4();
        sub_1ABA88934(v963 + 208);
        sub_1ABA8BD88();
        static EntityClass.hikingActivity.getter();
        sub_1ABAA088C(v964, v965, v966, v967, v968, v969, v970, v971);
        sub_1ABA7BFC4();
        sub_1ABA88934(v972 + 160);
        sub_1ABA8CF70();
        static EntityClass.modeOfTransportation.getter();
        sub_1ABA8C55C(v973, v974, v975, v976, v977, v978, v979, v980);
        sub_1ABA7BFC4();
        sub_1ABA88934(v981 + 112);
        sub_1ABB7E0A0();
        static EntityClass.automobileModel.getter();
        sub_1ABAA0A44(v982, v983, v984, v985, v986, v987, v988, v989);
        sub_1ABA7BFC4();
        sub_1ABA88934(v990 + 64);
        static EntityClass.transportationActivityType.getter();
        sub_1ABA8C710(v991, v992, v993, v994, v995, v996, v997, v998);
        sub_1ABA7BFC4();
        sub_1ABA88934(v999 + 16);
        static EntityClass.workingActivityType.getter();
        *&v1000 = sub_1ABAB0F68().n128_u64[0];
        sub_1ABB7DF94(v1001, v1002, v1003, v1004, v1005, v1006, v1007, v1008, v1000);
        sub_1ABA8A830();
        static EntityClass.meetingActivityType.getter();
        *&v1009 = sub_1ABAB3BD0().n128_u64[0];
        sub_1ABB7DFB4(v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1009);
        sub_1ABB7E14C();
        static EntityClass.eatingActivityType.getter();
        sub_1ABA8CAAC();
        sub_1ABAB61B4(v1018, v1257, v1276, v1295, v1314, v1333, v1352, v1371, v1389);
        sub_1ABAB5E8C();
        static EntityClass.watchingMediaActivityType.getter();
        sub_1ABA95488();
        sub_1ABA856C4(v1019, &v1407);
        sub_1ABAA6708();
        static EntityClass.communicatingActivityType.getter();
        sub_1ABA90C94();
        sub_1ABA856C4(v1020, &v1407);
        sub_1ABB7E50C();
        static EntityClass.shoppingActivityType.getter();
        sub_1ABA885E0();
        sub_1ABA856C4(v1021, &v1407);
        sub_1ABB7E3EC();
        static EntityClass.mindfulActivityType.getter();
        sub_1ABAB5298();
        sub_1ABA856C4(v1022, &v1407);
        sub_1ABB7E284();
        static EntityClass.sleepActivityType.getter();
        sub_1ABAA0E90();
        sub_1ABA856C4(v1023, &v1407);
        sub_1ABB7E194();
        static EntityClass.travelActivityType.getter();
        sub_1ABAB548C();
        sub_1ABA856C4(v1024, &v1407);
        sub_1ABAB5F38();
        static EntityClass.readingActivityType.getter();
        sub_1ABAA10B4();
        sub_1ABA856C4(v1025, &v1407);
        sub_1ABAA11F8();
        static EntityClass.vacationActivityType.getter();
        sub_1ABAB5660();
        sub_1ABA856C4(v1026, &v1407);
        sub_1ABAA2778();
        static EntityClass.socialActivityType.getter();
        sub_1ABAA128C();
        sub_1ABA856C4(v1027, &v1407);
        sub_1ABB7E44C();
        static EntityClass.wakingActivityType.getter();
        sub_1ABAB5828();
        sub_1ABA856C4(v1028, &v1407);
        sub_1ABB7E2E4();
        static EntityClass.goingToBedActivityType.getter();
        sub_1ABAA14F4();
        sub_1ABA856C4(v1029, &v1407);
        sub_1ABB7E20C();
        static EntityClass.phoneCallActivityType.getter();
        sub_1ABAB5A24();
        sub_1ABA856C4(v1030, &v1407);
        sub_1ABAA36E4();
        static EntityClass.facetimeActivityType.getter();
        sub_1ABA95260();
        sub_1ABA856C4(v1031, &v1407);
        sub_1ABAA47F8();
        static EntityClass.walkingActivityType.getter();
        sub_1ABA96024();
        sub_1ABA856C4(v1032, &v1407);
        sub_1ABAA1E08();
        static EntityClass.runningActivityType.getter();
        sub_1ABAA1764();
        sub_1ABA856C4(v1033, &v1407);
        sub_1ABB7E4C4();
        static EntityClass.bikingActivityType.getter();
        sub_1ABA82DEC();
        sub_1ABA856C4(v1034, &v1407);
        sub_1ABB7E374();
        static EntityClass.hikingActivityType.getter();
        sub_1ABAA1980();
        sub_1ABA856C4(v1035, &v1407);
        sub_1ABA88910();
        static EntityClass.typeOfPhysicalExercise.getter();
        sub_1ABA97F20();
        sub_1ABA856C4(v1036, &v1407);
        sub_1ABB7E164();
        static EntityClass.localizedNameRelationshipType.getter();
        sub_1ABAA1BC0();
        sub_1ABA856C4(v1037, &v1407);
        sub_1ABAA2B18();
        static EntityClass.mediaWork.getter();
        sub_1ABA97768();
        sub_1ABA856C4(v1038, &v1407);
        sub_1ABAA3B30();
        static EntityClass.commuteActivity.getter();
        sub_1ABA96C28();
        sub_1ABA856C4(v1039, &v1407);
        sub_1ABAB5214();
        static EntityClass.diningActivity.getter();
        sub_1ABAB5C84();
        sub_1ABA856C4(v1040, &v1407);
        sub_1ABB7E404();
        static EntityClass.attendingAPerformanceActivity.getter();
        sub_1ABAA1EB4();
        sub_1ABA856C4(v1041, &v1407);
        sub_1ABB7E2B4();
        static EntityClass.stationaryActivity.getter();
        sub_1ABAB1044();
        sub_1ABA856C4(v1042, &v1407);
        sub_1ABB7E1C4();
        static EntityClass.knowledgeSource.getter();
        sub_1ABA7AC70();
        sub_1ABA856C4(v1043, &v1407);
        sub_1ABA94EA0();
        static EntityClass.confidenceRelationshipType.getter();
        sub_1ABA82774();
        sub_1ABA856C4(v1044, &v1407);
        sub_1ABAA6408();
        static EntityClass.commuteActivityType.getter();
        sub_1ABA96964();
        sub_1ABA856C4(v1045, &v1407);
        sub_1ABAB5EB0();
        static EntityClass.make.getter();
        sub_1ABAA2228();
        sub_1ABA856C4(v1046, &v1407);
        sub_1ABB7E47C();
        static EntityClass.locationVisitActivity.getter();
        sub_1ABA95784();
        sub_1ABA856C4(v1047, &v1407);
        sub_1ABB7E344();
        static EntityClass.performanceRelationshipType.getter();
        sub_1ABAA2548();
        sub_1ABA856C4(v1048, &v1407);
        sub_1ABB7E23C();
        static EntityClass.partWholeRelationshipType.getter();
        sub_1ABAA2860();
        sub_1ABA856C4(v1049, &v1407);
        sub_1ABAA102C();
        static EntityClass.ratingRelationshipType.getter();
        sub_1ABA974C0();
        sub_1ABA856C4(v1050, &v1407);
        sub_1ABAA5644();
        static EntityClass.musicalArtist.getter();
        sub_1ABAA2C18();
        sub_1ABA856C4(v1051, &v1407);
        sub_1ABAB6000();
        static EntityClass.contentRating.getter();
        sub_1ABAA2FFC();
        sub_1ABA856C4(v1052, &v1407);
        sub_1ABB7E4F4();
        static EntityClass.sportsGameEvent.getter();
        sub_1ABAA3458();
        sub_1ABA856C4(v1053, &v1407);
        sub_1ABB7E3D4();
        static EntityClass.sportsTeam.getter();
        sub_1ABAA37BC();
        sub_1ABA856C4(v1054, &v1407);
        sub_1ABB7E26C();
        static EntityClass.drivingActivity.getter();
        sub_1ABAA3C1C();
        sub_1ABA856C4(v1055, &v1407);
        sub_1ABB7E1AC();
        static EntityClass.drivingActivityType.getter();
        sub_1ABAA3FC8();
        sub_1ABA856C4(v1056, &v1407);
        sub_1ABAB5BA4();
        static EntityClass.behaviorActivity.getter();
        sub_1ABAA4474();
        sub_1ABA856C4(v1057, &v1407);
        sub_1ABAA18F4();
        static EntityClass.behaviorActivityType.getter();
        sub_1ABAA48E8();
        sub_1ABA856C4(v1058, &v1407);
        sub_1ABB7E32C();
        static EntityClass.time.getter();
        sub_1ABAA4D28();
        sub_1ABA856C4(v1059, &v1407);
        sub_1ABB7E224();
        static EntityClass.album.getter();
        sub_1ABAA5230();
        sub_1ABA856C4(v1060, &v1407);
        sub_1ABAA20E4();
        static EntityClass.musicalWork.getter();
        sub_1ABAA5770();
        sub_1ABA856C4(v1061, &v1407);
        sub_1ABAA1674();
        static EntityClass.group.getter();
        sub_1ABA97A50();
        sub_1ABA856C4(v1062, &v1407);
        sub_1ABAA0E1C();
        static EntityClass.groupRelationshipType.getter();
        sub_1ABA83FD0();
        sub_1ABA856C4(v1063, &v1407);
        sub_1ABB7E4DC();
        static EntityClass.livingBeingRelationship.getter();
        sub_1ABA8E138();
        sub_1ABA856C4(v1064, &v1407);
        sub_1ABB7E3BC();
        static EntityClass.entityAliasRelationshipType.getter();
        sub_1ABA9A318();
        sub_1ABA856C4(v1065, &v1407);
        sub_1ABB7E254();
        static EntityClass.pet.getter();
        sub_1ABAA5F84();
        sub_1ABA856C4(v1066, &v1407);
        sub_1ABB7E17C();
        static EntityClass.dog.getter();
        sub_1ABA90688();
        sub_1ABA856C4(v1067, &v1407);
        sub_1ABAA0DD4();
        static EntityClass.cat.getter();
        sub_1ABA9930C();
        sub_1ABA856C4(v1068, &v1407);
        sub_1ABAA2114();
        static EntityClass.extractionTagRelationshipType.getter();
        sub_1ABA8BF00();
        sub_1ABA856C4(v1069, &v1407);
        sub_1ABAA4C3C();
        static EntityClass.movie.getter();
        sub_1ABA8FEF8();
        sub_1ABA856C4(v1070, &v1407);
        sub_1ABB7E41C();
        static EntityClass.sportsOrganization.getter();
        sub_1ABA9487C();
        sub_1ABA856C4(v1071, &v1407);
        sub_1ABB7E2CC();
        static EntityClass.sportsLeague.getter();
        sub_1ABA81650();
        sub_1ABA856C4(v1072, &v1407);
        sub_1ABB7E1F4();
        static EntityClass.athlete.getter();
        sub_1ABA83770();
        sub_1ABA856C4(v1073, &v1407);
        sub_1ABAA5D30();
        static EntityClass.personInTheArts.getter();
        sub_1ABA8E744();
        sub_1ABA856C4(v1074, &v1407);
        sub_1ABAA63AC();
        static EntityClass.musician.getter();
        sub_1ABA7E4B0();
        sub_1ABA856C4(v1075, &v1407);
        sub_1ABAA2F20();
        static EntityClass.televisionProgram.getter();
        sub_1ABA9335C();
        sub_1ABA856C4(v1076, &v1407);
        sub_1ABB7E494();
        static EntityClass.sportsActivity.getter();
        sub_1ABA7BFA4();
        sub_1ABA856C4(v1077, &v1407);
        sub_1ABB7E35C();
        static EntityClass.screenTimeSegment.getter();
        sub_1ABA808C4();
        sub_1ABA856C4(v1078, &v1407);
        sub_1ABA888EC();
        static EntityClass.myPet.getter();
        sub_1ABA7FC3C();
        sub_1ABA856C4(v1079, &v1407);
        sub_1ABA889A8();
        static EntityClass.myDog.getter();
        sub_1ABA8CC90();
        sub_1ABA856C4(v1080, &v1407);
        sub_1ABB7E314();
        static EntityClass.myCat.getter();
        sub_1ABB7D86C();
        sub_1ABA856C4(v1081, &v1407);
        sub_1ABB7E434();
        static EntityClass.walletOrder.getter();
        sub_1ABA96F80();
        sub_1ABA856C4(v1082, &v1407);
        sub_1ABAA63D0();
        static EntityClass.walletTransaction.getter();
        sub_1ABAB659C();
        sub_1ABA856C4(v1083, &v1407);
        sub_1ABAA5DCC();
        static EntityClass.orderEmailRelationshipType.getter();
        sub_1ABAB6778();
        sub_1ABA856C4(v1084, &v1407);
        sub_1ABAA2478();
        static EntityClass.orderTransactionRelationshipType.getter();
        sub_1ABAB68A4();
        sub_1ABA856C4(v1085, &v1407);
        sub_1ABAA64C8();
        static EntityClass.payment.getter();
        sub_1ABB7D854();
        sub_1ABA856C4(v1086, &v1407);
        sub_1ABB7E1DC();
        static EntityClass.transaction.getter();
        sub_1ABA972E0();
        sub_1ABA856C4(v1087, &v1407);
        sub_1ABB7E29C();
        static EntityClass.email.getter();
        sub_1ABA82A44();
        sub_1ABA856C4(v1088, &v1407);
        sub_1ABB7E3A4();
        static EntityClass.shippinginfo.getter();
        sub_1ABB7D83C();
        sub_1ABA856C4(v1089, &v1407);
        sub_1ABB7E4AC();
        static EntityClass.shipmentFullFillmentInfo.getter();
        sub_1ABA963E0(v1090, v1091, v1092, v1093, v1094, v1095, v1096, v1097, v1258, v1277, v1296, v1315, v1334, v1353, v1372, v1390, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, *(&v1437 + 1), v1438, *(&v1438 + 1), v1439, v1440, v1441, *(&v1441 + 1), v1442, v1443, v1444, v1445, v1446, *(&v1446 + 1), v1447);
        sub_1ABA856C4(v1098, &v1407);
        sub_1ABAA5BF4();
        static EntityClass.orderShippingInfoRelationshipType.getter();
        sub_1ABAB2AE0(v1099, v1100, v1101, v1102, v1103, v1104, v1105, v1106, v1259, v1278, v1297, v1316, v1335, v1354, v1373, v1391, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, *(&v1437 + 1), v1438, *(&v1438 + 1), v1439, v1440, v1441, *(&v1441 + 1), v1442, v1443, v1444, v1445, v1446);
        v1108 = sub_1ABA856C4(v1107, &v1407);
        sub_1ABAB5E68(v1108, v1109, v1110, v1111, v1112, v1113, v1114, v1115, v1260, v1279, v1298, v1317, v1336, v1355, v1374, v1392, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, *(&v1437 + 1), v1438, *(&v1438 + 1), v1439, v1440, v1441, *(&v1441 + 1), v1442, v1443, v1444, v1445, v1446, *(&v1446 + 1), v1447);
        static EntityClass.entityOrganizationRelationshipType.getter();
        sub_1ABB7D824(v1116, v1117, v1118, v1119, v1120, v1121, v1122, v1123, v1261, v1280, v1299, v1318, v1337, v1356, v1375, v1393, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, *(&v1437 + 1), v1438, *(&v1438 + 1), v1439, v1440, v1441);
        v1125 = sub_1ABA856C4(v1124, &v1407);
        sub_1ABAA1DE4(v1125, v1126, v1127, v1128, v1129, v1130, v1131, v1132, v1262, v1281, v1300, v1319, v1338, v1357, v1376, v1394, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, *(&v1437 + 1), v1438, *(&v1438 + 1), v1439, v1440, v1441, *(&v1441 + 1), v1442, v1443, v1444, v1445, v1446);
        static EntityClass.shipmentFullFillmentEmailRelationshipType.getter();
        sub_1ABB7D80C(v1133, v1134, v1135, v1136, v1137, v1138, v1139, v1140, v1263, v1282, v1301, v1320, v1339, v1358, v1377, v1395, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437);
        v1142 = sub_1ABA856C4(v1141, &v1407);
        sub_1ABA887FC(v1142, v1143, v1144, v1145, v1146, v1147, v1148, v1149, v1264, v1283, v1302, v1321, v1340, v1359, v1378, v1396, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, *(&v1437 + 1), v1438, *(&v1438 + 1), v1439, v1440, v1441);
        static EntityClass.orderShipmentFullFillmentRelationshipType.getter();
        v1158 = sub_1ABB7DF54(v1150, v1151, v1152, v1153, v1154, v1155, v1156, v1157, v1265, v1284, v1303, v1322, v1341, v1360, v1379, v1397, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439);
        sub_1ABA889E0(v1158, v1159, v1160, v1161, v1162, v1163, v1164, v1165, v1266, v1285, v1304, v1323, v1342, v1361, v1380, v1398, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437);
        static EntityClass.orderPaymentRelationshipType.getter();
        v1174 = sub_1ABB7DF2C(v1166, v1167, v1168, v1169, v1170, v1171, v1172, v1173, v1267, v1286, v1305, v1324, v1343, v1362, v1381, v1399, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435);
        sub_1ABB7EA70(v1174, v1175, v1176, v1177, v1178, v1179, v1180, v1181, v1268, v1287, v1306, v1325, v1344, v1363, v1382, v1400, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433);
        static EntityClass.fromToEmailRelationshipType.getter();
        v1190 = sub_1ABB7E9B0(v1182, v1183, v1184, v1185, v1186, v1187, v1188, v1189, v1269, v1288, v1307, v1326, v1345, v1364, v1383, v1401, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428);
        sub_1ABB7EA40(v1190, v1191, v1192, v1193, v1194, v1195, v1196, v1197, v1270, v1289, v1308, v1327, v1346, v1365, v1384, v1402, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428);
        static EntityClass.orderPersonRelationshipType.getter();
        v1206 = sub_1ABB7E998(v1198, v1199, v1200, v1201, v1202, v1203, v1204, v1205, v1271, v1290, v1309, v1328, v1347, v1366, v1385, v1403, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423);
        sub_1ABB7EA10(v1206, v1207, v1208, v1209, v1210, v1211, v1212, v1213, v1272, v1291, v1310, v1329, v1348, v1367, v1386, v1404, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423);
        static EntityClass.holidayEvent.getter();
        v1222 = sub_1ABB7E980(v1214, v1215, v1216, v1217, v1218, v1219, v1220, v1221, v1273, v1292, v1311, v1330, v1349, v1368, v1387, v1405, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418);
        sub_1ABB7E9F8(v1222, v1223, v1224, v1225, v1226, v1227, v1228, v1229, v1274, v1293, v1312, v1331, v1350, v1369, v1388, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418);
        static EntityClass.shipmentPersonRelationshipType.getter();
        v1238 = sub_1ABB7E968(v1230, v1231, v1232, v1233, v1234, v1235, v1236, v1237);
        sub_1ABB7EA58(v1238, v1239, v1240, v1241, v1242, v1243, v1244, v1245, v1275, v1294, v1313, v1332, v1351, v1370);
        static EntityClass.emailInfoRelationshipType.getter();
        v1249 = sub_1ABB7E950(v1246, v1247, v1248);
        sub_1ABB7EA28(v1249, v1250, v1251);
        sub_1ABC6D528();
        v1252 = sub_1ABF237D4();
        sub_1ABF24674();
        sub_1ABAA20BC();
        if (sub_1ABB7E014())
        {
          v1253 = sub_1ABAD8744();
          sub_1ABAA0B68(v1253);
          if (v1)
          {
            while (1)
            {
              sub_1ABA88988();
              v1254();
              sub_1ABA9FAB0();
            }
          }

          sub_1ABA8A7E0(&dword_1ABA78000, v1255, v1256, "EntityClass: childClasses: unknown entity class.");
          sub_1ABAD874C();
        }
      }

      goto LABEL_46;
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  static EntityClass.organism.getter();
  sub_1ABAA63FC();
  sub_1ABB7E570();
  sub_1ABA856C4(v2 - 208, &v1407);
  sub_1ABB7E2FC();
  sub_1ABA7EFC8();
  static EntityClass.agent.getter();
  sub_1ABA88E28();
  sub_1ABB7E564();
  sub_1ABA856C4(v2 - 256, &v1407);
  sub_1ABAA654C();
  sub_1ABAA0398();
  static EntityClass.concept.getter();
  sub_1ABAAFAE0();
  sub_1ABB7E558();
  v192 = sub_1ABAA0C80();
  sub_1ABA856C4(v192, &v1407);
  sub_1ABA808E4();
  sub_1ABA88934(v193 + 288);
  sub_1ABA9E4DC();
  static EntityClass.sex.getter();
  sub_1ABA8A7C0();
  sub_1ABB7E54C();
  v202 = sub_1ABB7DF88();
  sub_1ABA856C4(v202, &v1407);
  sub_1ABA808E4();
  sub_1ABA88934(v203 + 240);
  if ((v0 & 1) == 0)
  {
    sub_1ABB7E6C8();
    sub_1ABB7E088();
    static EntityClass.unitOfMeasurement.getter();
    sub_1ABA8D4A8();
    v1448 = byte_1EB4DD988;
    v204 = sub_1ABB7DF7C();
    sub_1ABA856C4(v204, &v1407);
    sub_1ABA808E4();
    sub_1ABA88934(v205 + 192);
    sub_1ABB7E07C();
    static EntityClass.place.getter();
    sub_1ABAA0C9C(v206, v207, v208, v209, v210, v211, v212, v213);
    sub_1ABA808E4();
    sub_1ABA88934(v214 + 144);
    if (v0)
    {
      sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA81670();
      sub_1ABA888E0(v0, xmmword_1ABF3BFC0);
      static EntityClass.populatedPlace.getter();
      static EntityClass.timeZone.getter();
      static EntityClass.home.getter();
      goto LABEL_39;
    }

    sub_1ABAB51F4();
    static EntityClass.occurrence.getter();
    sub_1ABB7D8B8(v215, v216, v217, v218, v219, v220, v221, v222);
    sub_1ABA808E4();
    sub_1ABA88934(v223 + 96);
    static EntityClass.topic.getter();
    sub_1ABAA0D44(v224, v225, v226, v227, v228, v229, v230, v231);
    sub_1ABA808E4();
    sub_1ABA88934(v232 + 48);
    sub_1ABA8B7F8();
    static EntityClass.senderRelationshipType.getter();
    sub_1ABA88A28();
    sub_1ABA88ABC();
    sub_1ABA856C4(v233, &v1407);
    sub_1ABA808E4();
    sub_1ABA88934(v234);
    sub_1ABB7E094();
    static EntityClass.membershipRelationshipType.getter();
    sub_1ABB7D884(v235, v236, v237, v238, v239, v240, v241, v242);
    sub_1ABA7BFC4();
    sub_1ABA88934(v243 + 4048);
    sub_1ABA887C4();
    static EntityClass.organizerRelationshipType.getter();
    sub_1ABA8CE60(v244, v245, v246, v247, v248, v249, v250, v251);
    sub_1ABA7BFC4();
    sub_1ABA88934(v252 + 4000);
    sub_1ABA8D33C();
    static EntityClass.topicRelationshipType.getter();
    sub_1ABA8CF94(v253, v254, v255, v256, v257, v258, v259, v260);
    sub_1ABA7BFC4();
    sub_1ABA88934(v261 + 3952);
    sub_1ABA8B57C();
    static EntityClass.calendarRelationshipType.getter();
    sub_1ABA8D0DC(v262, v263, v264, v265, v266, v267, v268, v269);
    sub_1ABA7BFC4();
    sub_1ABA88934(v270 + 3904);
    sub_1ABA9DDEC();
    static EntityClass.eventRelationshipType.getter();
    sub_1ABA8D224(v271, v272, v273, v274, v275, v276, v277, v278);
    sub_1ABA7BFC4();
    sub_1ABA88934(v279 + 3856);
    sub_1ABA8B99C();
    static EntityClass.textRelationshipType.getter();
    sub_1ABA8D374(v280, v281, v282, v283, v284, v285, v286, v287);
    sub_1ABA7BFC4();
    sub_1ABA88934(v288 + 3808);
    sub_1ABA90C10();
    static EntityClass.addressRelationshipType.getter();
    sub_1ABA88B1C(v289, v290, v291, v292, v293, v294, v295, v296);
    sub_1ABA7BFC4();
    sub_1ABA88934(v297 + 3760);
    sub_1ABA9E19C();
    static EntityClass.languageRelationshipType.getter();
    sub_1ABA90F70(v298, v299, v300, v301, v302, v303, v304, v305);
    sub_1ABA7BFC4();
    sub_1ABA88934(v306 + 3712);
    sub_1ABA90F2C();
    static EntityClass.identifierRelationshipType.getter();
    sub_1ABA88C10(v307, v308, v309, v310, v311, v312, v313, v314);
    sub_1ABA7BFC4();
    sub_1ABA88934(v315 + 3664);
    sub_1ABA9E3DC();
    static EntityClass.imageRelationshipType.getter();
    sub_1ABA9DE20(v316, v317, v318, v319, v320, v321, v322, v323);
    sub_1ABA7BFC4();
    sub_1ABA88934(v324 + 3616);
    sub_1ABAA0230();
    static EntityClass.employmentRelationshipType.getter();
    sub_1ABA88CE8(v325, v326, v327, v328, v329, v330, v331, v332);
    sub_1ABA7BFC4();
    sub_1ABA88934(v333 + 3568);
    sub_1ABA89710();
    static EntityClass.locationRelationshipType.getter();
    sub_1ABA9DF58(v334, v335, v336, v337, v338, v339, v340, v341);
    sub_1ABA7BFC4();
    sub_1ABA88934(v342 + 3520);
    goto LABEL_83;
  }

LABEL_46:
  v194 = sub_1ABAA6734(0);
  v0 = v194;
LABEL_40:
  if (sub_1ABA8DEE8(v194))
  {
    sub_1ABA8DEF4(v0, v195, v196, v197, v198, v199, v200, v201, v1257, v1276, v1295, v1314, SBYTE4(v1314));
  }

  else
  {
  }

  sub_1ABAB5B7C();
  sub_1ABA82A00();
}

void EntityClass.directPredicates.getter()
{
  sub_1ABAA00E4();
  sub_1ABAA6308();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABB7E524();
  v4 = 181;
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
LABEL_60:
    sub_1ABA90F2C();
    static EntityClass.imageRelationshipType.getter();
    sub_1ABB7DE8C();
    *(v4 + 3440) = *(v4 + 3392);
    sub_1ABA856C4(&v754, &v631);
    sub_1ABA7BFC4();
    sub_1ABA88934(v382 + 3664);
    if (v0)
    {
      sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
      v0 = sub_1ABA8E764();
      sub_1ABA888E0(v0, xmmword_1ABF34740);
      static EntityPredicate.imageFile.getter();
      goto LABEL_45;
    }

    goto LABEL_64;
  }

  v5 = sub_1ABA8A714(_Records_GDEntityClass_records);
  sub_1ABA8882C(v5, v6, v7, &v619);
  v8 = v620;
  *(v2 - 112) = v619;
  *(v2 - 96) = v8;
  v771 = v621;
  sub_1ABA856C4(v2 - 112, &v631);
  sub_1ABB7E38C();
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
    *(swift_allocObject() + 16) = xmmword_1ABF3EC20;
    v4 = 279;
    if (_Records_GDEntityPredicate_records)
    {
      v9 = sub_1ABB7E930(_Records_GDEntityPredicate_records, v619);
      v17 = sub_1ABB7D7FC(v9, v10, v11, v12, v13, v14, v15, v16, v619);
      sub_1ABB7E678(v18, v17);
      if (v19)
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      if (_Records_GDEntityPredicate_records)
      {
        v20 = sub_1ABA91D48(_Records_GDEntityPredicate_records[24], *(_Records_GDEntityPredicate_records + 7), *(_Records_GDEntityPredicate_records + 8), &v619);
        v28 = sub_1ABB7D7FC(v20, v21, v22, v23, v24, v25, v26, v27, v619);
        sub_1ABB7E638(v29, v28);
        if (!v30)
        {
          goto LABEL_54;
        }

        if (_Records_GDEntityPredicate_records)
        {
          v31 = sub_1ABA91D48(_Records_GDEntityPredicate_records[36], *(_Records_GDEntityPredicate_records + 10), *(_Records_GDEntityPredicate_records + 11), &v619);
          v39 = sub_1ABB7D7FC(v31, v32, v33, v34, v35, v36, v37, v38, v619);
          sub_1ABB7E624(v40, v39);
          if (v19)
          {
LABEL_55:
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            sub_1ABB7E094();
            static EntityClass.organizerRelationshipType.getter();
            sub_1ABB7DF04();
            *(v4 + 3824) = *(v4 + 3776);
            sub_1ABA856C4(v762, &v631);
            sub_1ABA7BFC4();
            sub_1ABA88934(v374 + 4048);
            if (v0)
            {
              goto LABEL_51;
            }

            sub_1ABA887C4();
            static EntityClass.topicRelationshipType.getter();
            sub_1ABA88A6C();
            *(v4 + 3776) = *(v4 + 3728);
            sub_1ABA856C4(&v761, &v631);
            sub_1ABA7BFC4();
            sub_1ABA88934(v375 + 4000);
            sub_1ABA8D33C();
            static EntityClass.calendarRelationshipType.getter();
            sub_1ABB7DEF0();
            *(v4 + 3728) = *(v4 + 3680);
            sub_1ABA856C4(&v760, &v631);
            sub_1ABA7BFC4();
            sub_1ABA88934(v376 + 3952);
            sub_1ABA8B57C();
            static EntityClass.eventRelationshipType.getter();
            sub_1ABA88A9C();
            *(v4 + 3680) = *(v4 + 3632);
            sub_1ABA856C4(&v759, &v631);
            sub_1ABA7BFC4();
            sub_1ABA88934(v377 + 3904);
            sub_1ABA9DDEC();
            static EntityClass.textRelationshipType.getter();
            sub_1ABB7DEDC();
            *(v4 + 3632) = *(v4 + 3584);
            sub_1ABA856C4(&v758, &v631);
            sub_1ABA7BFC4();
            sub_1ABA88934(v378 + 3856);
            sub_1ABA8B99C();
            static EntityClass.addressRelationshipType.getter();
            sub_1ABB7DEC8();
            *(v4 + 3584) = *(v4 + 3536);
            sub_1ABA856C4(&v757, &v631);
            sub_1ABA7BFC4();
            sub_1ABA88934(v379 + 3808);
            sub_1ABA90C10();
            static EntityClass.languageRelationshipType.getter();
            sub_1ABB7DEB4();
            *(v4 + 3536) = *(v4 + 3488);
            sub_1ABA856C4(&v756, &v631);
            sub_1ABA7BFC4();
            sub_1ABA88934(v380 + 3760);
            sub_1ABA9E19C();
            static EntityClass.identifierRelationshipType.getter();
            sub_1ABB7DEA0();
            *(v4 + 3488) = *(v4 + 3440);
            sub_1ABA856C4(&v755, &v631);
            sub_1ABA7BFC4();
            sub_1ABA88934(v381 + 3712);
            goto LABEL_60;
          }

          if (_Records_GDEntityPredicate_records)
          {
            v41 = sub_1ABA91D48(_Records_GDEntityPredicate_records[48], *(_Records_GDEntityPredicate_records + 13), *(_Records_GDEntityPredicate_records + 14), &v619);
            v49 = sub_1ABB7D7FC(v41, v42, v43, v44, v45, v46, v47, v48, v619);
            sub_1ABB7E618(v50, v49);
            v0[11].n128_u16[4] = v51;
            if (_Records_GDEntityPredicate_records)
            {
              v52 = sub_1ABA91D48(_Records_GDEntityPredicate_records[60], *(_Records_GDEntityPredicate_records + 16), *(_Records_GDEntityPredicate_records + 17), &v619);
              v60 = sub_1ABB7D7FC(v52, v53, v54, v55, v56, v57, v58, v59, v619);
              sub_1ABB7E60C(v61, v60);
              v0[14].n128_u16[0] = v62;
              if (_Records_GDEntityPredicate_records)
              {
                v63 = sub_1ABA91D48(_Records_GDEntityPredicate_records[72], *(_Records_GDEntityPredicate_records + 19), *(_Records_GDEntityPredicate_records + 20), &v619);
                v71 = sub_1ABB7D7FC(v63, v64, v65, v66, v67, v68, v69, v70, v619);
                sub_1ABB7E600(v72, v71);
                v0[16].n128_u16[4] = v73;
                if (_Records_GDEntityPredicate_records)
                {
                  v74 = sub_1ABA91D48(_Records_GDEntityPredicate_records[84], *(_Records_GDEntityPredicate_records + 22), *(_Records_GDEntityPredicate_records + 23), &v619);
                  v82 = sub_1ABB7D7FC(v74, v75, v76, v77, v78, v79, v80, v81, v619);
                  sub_1ABB7E5F4(v83, v82);
                  v0[19].n128_u16[0] = v84;
                  if (_Records_GDEntityPredicate_records)
                  {
                    v85 = sub_1ABB7E8B0(_Records_GDEntityPredicate_records, v619);
                    sub_1ABA7D418(v85, v86, v87, v88, v89, v90, v91, v92, v93);
                    v0[20].n128_u64[1] = v94;
                    v0[21].n128_u64[0] = v95;
                    v0[21].n128_u16[4] = v96;
                    if (_Records_GDEntityPredicate_records)
                    {
                      v97 = sub_1ABA91D48(_Records_GDEntityPredicate_records[108], *(_Records_GDEntityPredicate_records + 28), *(_Records_GDEntityPredicate_records + 29), &v619);
                      v105 = sub_1ABB7D7FC(v97, v98, v99, v100, v101, v102, v103, v104, v619);
                      sub_1ABB7E5E8(v106, v105);
                      v0[24].n128_u16[0] = v107;
                      if (_Records_GDEntityPredicate_records)
                      {
                        v108 = sub_1ABB7E890(_Records_GDEntityPredicate_records, v619);
                        sub_1ABA7D418(v108, v109, v110, v111, v112, v113, v114, v115, v116);
                        v0[25].n128_u64[1] = v117;
                        v0[26].n128_u64[0] = v118;
                        v0[26].n128_u16[4] = v119;
                        if (_Records_GDEntityPredicate_records)
                        {
                          v120 = sub_1ABA91D48(_Records_GDEntityPredicate_records[144], *(_Records_GDEntityPredicate_records + 37), *(_Records_GDEntityPredicate_records + 38), &v619);
                          v128 = sub_1ABB7D7FC(v120, v121, v122, v123, v124, v125, v126, v127, v619);
                          sub_1ABB7E5DC(v129, v128);
                          v0[29].n128_u16[0] = v130;
                          if (_Records_GDEntityPredicate_records)
                          {
                            v131 = sub_1ABB7E870(_Records_GDEntityPredicate_records, v619);
                            sub_1ABA7D418(v131, v132, v133, v134, v135, v136, v137, v138, v139);
                            v0[30].n128_u64[1] = v140;
                            v0[31].n128_u64[0] = v141;
                            v0[31].n128_u16[4] = v142;
                            if (_Records_GDEntityPredicate_records)
                            {
                              v143 = sub_1ABB7E790(_Records_GDEntityPredicate_records, v619);
                              v151 = sub_1ABB7D7FC(v143, v144, v145, v146, v147, v148, v149, v150, v619);
                              sub_1ABB7E004(v152, v151);
                              v0[34].n128_u16[0] = v153;
                              if (_Records_GDEntityPredicate_records)
                              {
                                v154 = sub_1ABAB5E34(_Records_GDEntityPredicate_records, v619);
                                sub_1ABA7D418(v154, v155, v156, v157, v158, v159, v160, v161, v162);
                                sub_1ABB7E5D0(v163);
                                v0[36].n128_u16[4] = v164;
                                if (_Records_GDEntityPredicate_records)
                                {
                                  v165 = sub_1ABB7E770(_Records_GDEntityPredicate_records, v619);
                                  v173 = sub_1ABB7D7FC(v165, v166, v167, v168, v169, v170, v171, v172, v619);
                                  sub_1ABB7DFF4(v174, v173);
                                  v0[39].n128_u16[0] = v175;
                                  if (_Records_GDEntityPredicate_records)
                                  {
                                    v176 = sub_1ABAA143C(_Records_GDEntityPredicate_records, v619);
                                    sub_1ABA7D418(v176, v177, v178, v179, v180, v181, v182, v183, v184);
                                    sub_1ABB7E5C4(v185);
                                    v0[41].n128_u16[4] = v186;
                                    if (_Records_GDEntityPredicate_records)
                                    {
                                      v187 = sub_1ABB7E750(_Records_GDEntityPredicate_records, v619);
                                      v195 = sub_1ABB7D7FC(v187, v188, v189, v190, v191, v192, v193, v194, v619);
                                      sub_1ABB7DFE4(v196, v195);
                                      v0[44].n128_u16[0] = v197;
                                      if (_Records_GDEntityPredicate_records)
                                      {
                                        v198 = sub_1ABAA2144(_Records_GDEntityPredicate_records, v619);
                                        sub_1ABA7D418(v198, v199, v200, v201, v202, v203, v204, v205, v206);
                                        sub_1ABB7E5B8(v207);
                                        v0[46].n128_u16[4] = v208;
                                        if (_Records_GDEntityPredicate_records)
                                        {
                                          v209 = sub_1ABB7E730(_Records_GDEntityPredicate_records, v619);
                                          v217 = sub_1ABB7D7FC(v209, v210, v211, v212, v213, v214, v215, v216, v619);
                                          sub_1ABAA9058(v218, v217);
                                          v0[49].n128_u16[0] = v219;
                                          if (_Records_GDEntityPredicate_records)
                                          {
                                            v220 = sub_1ABAA3EAC(_Records_GDEntityPredicate_records, v619);
                                            sub_1ABA7D418(v220, v221, v222, v223, v224, v225, v226, v227, v228);
                                            sub_1ABB7E5AC(v229);
                                            v0[51].n128_u16[4] = v230;
                                            if (_Records_GDEntityPredicate_records)
                                            {
                                              v231 = sub_1ABB7E850(_Records_GDEntityPredicate_records, v619);
                                              v239 = sub_1ABB7D7FC(v231, v232, v233, v234, v235, v236, v237, v238, v619);
                                              sub_1ABAAA998(v240, v239);
                                              v0[54].n128_u16[0] = v241;
                                              if (_Records_GDEntityPredicate_records)
                                              {
                                                v242 = sub_1ABAA65E8(_Records_GDEntityPredicate_records, v619);
                                                sub_1ABA7D418(v242, v243, v244, v245, v246, v247, v248, v249, v250);
                                                sub_1ABB7E5A0(v251);
                                                v0[56].n128_u16[4] = v252;
                                                if (_Records_GDEntityPredicate_records)
                                                {
                                                  v253 = sub_1ABB7E830(_Records_GDEntityPredicate_records, v619);
                                                  v261 = sub_1ABB7D7FC(v253, v254, v255, v256, v257, v258, v259, v260, v619);
                                                  sub_1ABAAA624(v262, v261);
                                                  v0[59].n128_u16[0] = v263;
                                                  if (_Records_GDEntityPredicate_records)
                                                  {
                                                    v264 = sub_1ABAA5E50(_Records_GDEntityPredicate_records, v619);
                                                    sub_1ABA7D418(v264, v265, v266, v267, v268, v269, v270, v271, v272);
                                                    sub_1ABB7E594(v273);
                                                    v0[61].n128_u16[4] = v274;
                                                    if (_Records_GDEntityPredicate_records)
                                                    {
                                                      v275 = sub_1ABB7E810(_Records_GDEntityPredicate_records, v619);
                                                      v283 = sub_1ABB7D7FC(v275, v276, v277, v278, v279, v280, v281, v282, v619);
                                                      sub_1ABB7DFD4(v284, v283);
                                                      v0[64].n128_u16[0] = v285;
                                                      if (_Records_GDEntityPredicate_records)
                                                      {
                                                        v286 = sub_1ABAB6744(_Records_GDEntityPredicate_records, v619);
                                                        sub_1ABA7D418(v286, v287, v288, v289, v290, v291, v292, v293, v294);
                                                        sub_1ABB7E588(v295);
                                                        v0[66].n128_u16[4] = v296;
                                                        if (_Records_GDEntityPredicate_records)
                                                        {
                                                          v297 = sub_1ABB7E7F0(_Records_GDEntityPredicate_records, v619);
                                                          v305 = sub_1ABB7D7FC(v297, v298, v299, v300, v301, v302, v303, v304, v619);
                                                          sub_1ABAB69C8(v306, v305);
                                                          v0[69].n128_u16[0] = v307;
                                                          if (_Records_GDEntityPredicate_records)
                                                          {
                                                            v308 = sub_1ABAA339C(_Records_GDEntityPredicate_records, v619);
                                                            sub_1ABA7D418(v308, v309, v310, v311, v312, v313, v314, v315, v316);
                                                            sub_1ABB7E57C(v317);
                                                            v0[71].n128_u16[4] = v318;
                                                            if (_Records_GDEntityPredicate_records)
                                                            {
                                                              v319 = sub_1ABB7E7D0(_Records_GDEntityPredicate_records, v619);
                                                              v327 = sub_1ABB7D7FC(v319, v320, v321, v322, v323, v324, v325, v326, v619);
                                                              sub_1ABAB6320(v328, v327);
                                                              v0[74].n128_u16[0] = v329;
                                                              if (_Records_GDEntityPredicate_records)
                                                              {
                                                                v330 = sub_1ABAA642C(_Records_GDEntityPredicate_records, v619);
                                                                sub_1ABA7D418(v330, v331, v332, v333, v334, v335, v336, v337, v338);
                                                                sub_1ABB7E538(v339);
                                                                if (!v30)
                                                                {
                                                                  goto LABEL_56;
                                                                }

                                                                if (_Records_GDEntityPredicate_records)
                                                                {
                                                                  v340 = sub_1ABB7E7B0(_Records_GDEntityPredicate_records, v619);
                                                                  v348 = sub_1ABB7D7FC(v340, v341, v342, v343, v344, v345, v346, v347, v619);
                                                                  sub_1ABAA1658(v349, v348);
                                                                  v0[79].n128_u16[0] = v350;
                                                                  goto LABEL_45;
                                                                }

LABEL_95:
                                                                __break(1u);
                                                                goto LABEL_96;
                                                              }

LABEL_94:
                                                              __break(1u);
                                                              goto LABEL_95;
                                                            }

LABEL_93:
                                                            __break(1u);
                                                            goto LABEL_94;
                                                          }

LABEL_92:
                                                          __break(1u);
                                                          goto LABEL_93;
                                                        }

LABEL_91:
                                                        __break(1u);
                                                        goto LABEL_92;
                                                      }

LABEL_90:
                                                      __break(1u);
                                                      goto LABEL_91;
                                                    }

LABEL_89:
                                                    __break(1u);
                                                    goto LABEL_90;
                                                  }

LABEL_88:
                                                  __break(1u);
                                                  goto LABEL_89;
                                                }

LABEL_87:
                                                __break(1u);
                                                goto LABEL_88;
                                              }

LABEL_86:
                                              __break(1u);
                                              goto LABEL_87;
                                            }

LABEL_85:
                                            __break(1u);
                                            goto LABEL_86;
                                          }

LABEL_84:
                                          __break(1u);
                                          goto LABEL_85;
                                        }

LABEL_83:
                                        __break(1u);
                                        goto LABEL_84;
                                      }

LABEL_82:
                                      __break(1u);
                                      goto LABEL_83;
                                    }

LABEL_81:
                                    __break(1u);
                                    goto LABEL_82;
                                  }

LABEL_80:
                                  __break(1u);
                                  goto LABEL_81;
                                }

LABEL_79:
                                __break(1u);
                                goto LABEL_80;
                              }

LABEL_78:
                              __break(1u);
                              goto LABEL_79;
                            }

LABEL_77:
                            __break(1u);
                            goto LABEL_78;
                          }

LABEL_76:
                          __break(1u);
                          goto LABEL_77;
                        }

LABEL_75:
                        __break(1u);
                        goto LABEL_76;
                      }

LABEL_74:
                      __break(1u);
                      goto LABEL_75;
                    }

LABEL_73:
                    __break(1u);
                    goto LABEL_74;
                  }

LABEL_72:
                  __break(1u);
                  goto LABEL_73;
                }

LABEL_71:
                __break(1u);
                goto LABEL_72;
              }

LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

LABEL_68:
          __break(1u);
          goto LABEL_69;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_68;
    }

    __break(1u);
  }

  else if (_Records_GDEntityClass_records)
  {
    v351 = sub_1ABB7E070(_Records_GDEntityClass_records);
    sub_1ABA8882C(v351, v352, v353, v2 - 160);
    v354 = *(v2 - 144);
    v619 = *(v2 - 160);
    v620 = v354;
    LOBYTE(v621) = v770;
    LOBYTE(v0) = sub_1ABA856C4(&v619, &v631);
    sub_1ABA88934(&v619);
    if ((v0 & 1) == 0)
    {
      static EntityClass.organism.getter();
      sub_1ABAB5FA0();
      sub_1ABB7E570();
      sub_1ABA856C4(v2 - 160, &v631);
      sub_1ABB7E464();
      static EntityClass.agent.getter();
      sub_1ABAA63FC();
      sub_1ABB7E564();
      sub_1ABA856C4(v2 - 208, &v631);
      sub_1ABB7E2FC();
      sub_1ABA7EFC8();
      static EntityClass.concept.getter();
      sub_1ABA88E28();
      sub_1ABB7E558();
      sub_1ABA856C4(v2 - 256, &v631);
      sub_1ABAA654C();
      sub_1ABAA0398();
      static EntityClass.sex.getter();
      sub_1ABAAFAE0();
      sub_1ABB7E54C();
      v363 = sub_1ABAA0C80();
      sub_1ABA856C4(v363, &v631);
      sub_1ABA808E4();
      sub_1ABA88934(v364 + 288);
      v4 = v683;
      sub_1ABA9E4DC();
      static EntityClass.unitOfMeasurement.getter();
      sub_1ABA8A7C0();
      v769 = v768;
      v365 = sub_1ABB7DF88();
      sub_1ABA856C4(v365, &v631);
      sub_1ABA808E4();
      sub_1ABA88934(v366 + 240);
      if (v0)
      {
        goto LABEL_51;
      }

      sub_1ABB7E088();
      static EntityClass.place.getter();
      sub_1ABA8D4A8();
      v768 = v767;
      v367 = sub_1ABB7DF7C();
      sub_1ABA856C4(v367, &v631);
      sub_1ABA808E4();
      sub_1ABA88934(v368 + 192);
      sub_1ABB7E07C();
      static EntityClass.occurrence.getter();
      sub_1ABA88E5C();
      v767 = v765;
      sub_1ABA856C4(&v766, &v631);
      sub_1ABA808E4();
      sub_1ABA88934(v369 + 144);
      sub_1ABAB51F4();
      static EntityClass.topic.getter();
      sub_1ABAAFB14();
      v765 = v763[80];
      sub_1ABA856C4(&v764, &v631);
      sub_1ABA808E4();
      sub_1ABA88934(v370 + 96);
      static EntityClass.senderRelationshipType.getter();
      sub_1ABB7DF18();
      sub_1ABA88ABC();
      sub_1ABA856C4(v371 + 48, &v631);
      sub_1ABA808E4();
      sub_1ABA88934(v372 + 48);
      sub_1ABA8B7F8();
      static EntityClass.membershipRelationshipType.getter();
      sub_1ABA88A28();
      v763[32] = v762[32];
      sub_1ABA856C4(v763, &v631);
      sub_1ABA808E4();
      sub_1ABA88934(v373);
      goto LABEL_57;
    }

    sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
    v0 = sub_1ABA83790();
    sub_1ABA888E0(v0, xmmword_1ABF34060);
    static EntityPredicate.sourceURL.getter();
    static EntityPredicate.endTime.getter();
LABEL_45:
    v355 = v0;
    goto LABEL_46;
  }

  __break(1u);
LABEL_64:
  sub_1ABA9E3DC();
  static EntityClass.employmentRelationshipType.getter();
  sub_1ABAAFB00();
  *(v4 + 3392) = *(v4 + 3344);
  sub_1ABA856C4(&v753, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v383 + 3616);
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
    v0 = sub_1ABA8E764();
    sub_1ABA888E0(v0, xmmword_1ABF34740);
    static EntityPredicate.department.getter();
    goto LABEL_45;
  }

LABEL_96:
  sub_1ABAA0230();
  static EntityClass.locationRelationshipType.getter();
  sub_1ABB7DE78();
  *(v4 + 3344) = *(v4 + 3296);
  sub_1ABA856C4(&v752, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v384 + 3568);
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
    v0 = sub_1ABA8A33C();
    sub_1ABA888E0(v0, xmmword_1ABF3BFB0);
    static EntityPredicate.hasLocation.getter();
    static EntityPredicate.locationLabel.getter();
    static EntityPredicate.latitude.getter();
    static EntityPredicate.longitude.getter();
    goto LABEL_45;
  }

  sub_1ABA89710();
  static EntityClass.timeZoneRelationshipType.getter();
  sub_1ABB7DE64();
  *(v4 + 3296) = *(v4 + 3248);
  sub_1ABA856C4(&v751, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v385 + 3520);
  sub_1ABA8926C();
  static EntityClass.quantityRelationshipType.getter();
  sub_1ABB7DE50();
  *(v4 + 3248) = *(v4 + 3200);
  sub_1ABA856C4(&v750, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v386 + 3472);
  sub_1ABA88F2C();
  static EntityClass.religionRelationshipType.getter();
  sub_1ABA88DE4();
  *(v4 + 3200) = *(v4 + 3152);
  sub_1ABA856C4(&v749, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v387 + 3424);
  sub_1ABA89008();
  static EntityClass.person.getter();
  sub_1ABB7DE3C();
  *(v4 + 3152) = *(v4 + 3104);
  sub_1ABA856C4(&v748, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v388 + 3376);
  sub_1ABA8A75C();
  static EntityClass.role.getter();
  sub_1ABB7DE28();
  *(v4 + 3104) = *(v4 + 3056);
  sub_1ABA856C4(&v747, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v389 + 3328);
  sub_1ABA8ACD4();
  static EntityClass.typeOfProfession.getter();
  sub_1ABB7DE14();
  *(v4 + 3056) = *(v4 + 3008);
  sub_1ABA856C4(&v746, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v390 + 3280);
  sub_1ABA9E8AC();
  static EntityClass.religion.getter();
  sub_1ABB7DE00();
  *(v4 + 3008) = *(v4 + 2960);
  sub_1ABA856C4(&v745, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v391 + 3232);
  sub_1ABA9EA28();
  static EntityClass.language.getter();
  sub_1ABB7DDEC();
  *(v4 + 2960) = *(v4 + 2912);
  sub_1ABA856C4(&v744, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v392 + 3184);
  sub_1ABA9F114();
  static EntityClass.organization.getter();
  sub_1ABB7DDD8();
  *(v4 + 2912) = *(v4 + 2864);
  sub_1ABA856C4(&v743, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v393 + 3136);
  sub_1ABB7E0D0();
  static EntityClass.politicalParty.getter();
  sub_1ABB7DDC4();
  *(v4 + 2864) = *(v4 + 2816);
  sub_1ABA856C4(&v742, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v394 + 3088);
  sub_1ABA9EE08();
  static EntityClass.populatedPlace.getter();
  sub_1ABB7DDB0();
  *(v4 + 2816) = *(v4 + 2768);
  sub_1ABA856C4(&v741, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v395 + 3040);
  sub_1ABA9EF58();
  static EntityClass.state.getter();
  sub_1ABB7DD9C();
  *(v4 + 2768) = *(v4 + 2720);
  sub_1ABA856C4(&v740, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v396 + 2992);
  sub_1ABA88A48();
  static EntityClass.country.getter();
  sub_1ABB7DD88();
  *(v4 + 2720) = *(v4 + 2672);
  sub_1ABA856C4(&v739, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v397 + 2944);
  sub_1ABA8A430();
  static EntityClass.timeZone.getter();
  sub_1ABB7DD74();
  *(v4 + 2672) = *(v4 + 2624);
  sub_1ABA856C4(&v738, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v398 + 2896);
  sub_1ABAA0650();
  static EntityClass.event.getter();
  sub_1ABB7DD60();
  *(v4 + 2624) = *(v4 + 2576);
  sub_1ABA856C4(&v737, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v399 + 2848);
  sub_1ABA8AA60();
  static EntityClass.interestRelationshipType.getter();
  sub_1ABB7DD4C();
  *(v4 + 2576) = *(v4 + 2528);
  sub_1ABA856C4(&v736, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v400 + 2800);
  sub_1ABA89EA4();
  static EntityClass.groupOfHumans.getter();
  sub_1ABB7DD38();
  *(v4 + 2528) = *(v4 + 2480);
  sub_1ABA856C4(&v735, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v401 + 2752);
  sub_1ABA88A04();
  static EntityClass.siribaseType.getter();
  sub_1ABB7DD24();
  *(v4 + 2480) = *(v4 + 2432);
  sub_1ABA856C4(&v734, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v402 + 2704);
  sub_1ABA88DB4();
  static EntityClass.participationRelationshipType.getter();
  sub_1ABB7DD10();
  *(v4 + 2432) = *(v4 + 2384);
  sub_1ABA856C4(&v733, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v403 + 2656);
  sub_1ABA8B3A8();
  static EntityClass.devicePrimaryUser.getter();
  sub_1ABB7DCFC();
  *(v4 + 2384) = *(v4 + 2336);
  sub_1ABA856C4(&v732, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v404 + 2608);
  sub_1ABA897E4();
  static EntityClass.calendar.getter();
  sub_1ABB7DCE8();
  *(v4 + 2336) = *(v4 + 2288);
  sub_1ABA856C4(&v731, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v405 + 2560);
  sub_1ABA88BCC();
  static EntityClass.calendarEvent.getter();
  sub_1ABB7DCD4();
  *(v4 + 2288) = *(v4 + 2240);
  sub_1ABA856C4(&v730, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v406 + 2512);
  sub_1ABA8A8D8();
  static EntityClass.home.getter();
  sub_1ABB7DCC0();
  *(v4 + 2240) = *(v4 + 2192);
  sub_1ABA856C4(&v729, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v407 + 2464);
  sub_1ABA89BA0();
  static EntityClass.document.getter();
  sub_1ABB7DCAC();
  *(v4 + 2192) = *(v4 + 2144);
  sub_1ABA856C4(&v728, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v408 + 2416);
  sub_1ABA8CC34();
  static EntityClass.software.getter();
  sub_1ABB7DC98();
  *(v4 + 2144) = *(v4 + 2096);
  sub_1ABA856C4(&v727, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v409 + 2368);
  sub_1ABA8CDC0();
  static EntityClass.genre.getter();
  sub_1ABB7DC84();
  *(v4 + 2096) = *(v4 + 2048);
  sub_1ABA856C4(&v726, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v410 + 2320);
  sub_1ABA9DF28();
  static EntityClass.work.getter();
  sub_1ABB7DC70();
  *(v4 + 2048) = *(v4 + 2000);
  sub_1ABA856C4(&v725, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v411 + 2272);
  sub_1ABA8A798();
  static EntityClass.calendarSourceRelationshipType.getter();
  sub_1ABB7DC5C();
  *(v4 + 2000) = *(v4 + 1952);
  sub_1ABA856C4(&v724, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v412 + 2224);
  sub_1ABA8A154();
  static EntityClass.agentAffiliationRelationshipType.getter();
  sub_1ABB7DC48();
  *(v4 + 1952) = *(v4 + 1904);
  sub_1ABA856C4(&v723, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v413 + 2176);
  sub_1ABA89D68();
  static EntityClass.dateRelationshipType.getter();
  sub_1ABB7DC34();
  *(v4 + 1904) = *(v4 + 1856);
  sub_1ABA856C4(&v722, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v414 + 2128);
  sub_1ABA8AA7C();
  static EntityClass.typeOfActivity.getter();
  sub_1ABB7DC20();
  *(v4 + 1856) = *(v4 + 1808);
  sub_1ABA856C4(&v721, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v415 + 2080);
  sub_1ABA8A848();
  static EntityClass.activityEvent.getter();
  sub_1ABB7DC0C();
  *(v4 + 1808) = *(v4 + 1760);
  sub_1ABA856C4(&v720, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v416 + 2032);
  sub_1ABA891A4();
  static EntityClass.administratorRelationshipType.getter();
  sub_1ABB7DBF8();
  *(v4 + 1760) = *(v4 + 1712);
  sub_1ABA856C4(&v719, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v417 + 1984);
  sub_1ABA9E758();
  static EntityClass.county.getter();
  sub_1ABB7DBE4();
  *(v4 + 1712) = *(v4 + 1664);
  sub_1ABA856C4(&v718, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v418 + 1936);
  sub_1ABA9F748();
  static EntityClass.visualIdentifierRelationshipType.getter();
  sub_1ABB7DBD0();
  *(v4 + 1664) = *(v4 + 1616);
  sub_1ABA856C4(&v717, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v419 + 1888);
  sub_1ABA89340();
  static EntityClass.song.getter();
  sub_1ABB7DBBC();
  *(v4 + 1616) = *(v4 + 1568);
  sub_1ABA856C4(&v716, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v420 + 1840);
  sub_1ABA9FCA0();
  static EntityClass.songRelationshipType.getter();
  sub_1ABB7DBA8();
  *(v4 + 1568) = *(v4 + 1520);
  sub_1ABA856C4(&v715, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v421 + 1792);
  sub_1ABAA09F4();
  static EntityClass.animal.getter();
  sub_1ABB7DB94();
  *(v4 + 1520) = *(v4 + 1472);
  sub_1ABA856C4(&v714, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v422 + 1744);
  sub_1ABA9F8D4();
  static EntityClass.softwareRelationshipType.getter();
  sub_1ABB7DB80();
  *(v4 + 1472) = *(v4 + 1424);
  sub_1ABA856C4(&v713, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v423 + 1696);
  sub_1ABA9E2B8();
  static EntityClass.vehicle.getter();
  sub_1ABB7DB6C();
  *(v4 + 1424) = *(v4 + 1376);
  sub_1ABA856C4(&v712, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v424 + 1648);
  sub_1ABA8AE6C();
  static EntityClass.onFoot.getter();
  sub_1ABB7DB58();
  *(v4 + 1376) = *(v4 + 1328);
  sub_1ABA856C4(&v711, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v425 + 1600);
  sub_1ABA9F03C();
  static EntityClass.automobile.getter();
  sub_1ABB7DB44();
  *(v4 + 1328) = *(v4 + 1280);
  sub_1ABA856C4(&v710, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v426 + 1552);
  sub_1ABA88AD8();
  static EntityClass.plane.getter();
  sub_1ABB7DB30();
  *(v4 + 1280) = *(v4 + 1232);
  sub_1ABA856C4(&v709, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v427 + 1504);
  sub_1ABA9F9AC();
  static EntityClass.bicycle.getter();
  sub_1ABB7DB1C();
  *(v4 + 1232) = *(v4 + 1184);
  sub_1ABA856C4(&v708, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v428 + 1456);
  sub_1ABA9E618();
  static EntityClass.ship.getter();
  sub_1ABB7DB08();
  *(v4 + 1184) = *(v4 + 1136);
  sub_1ABA856C4(&v707, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v429 + 1408);
  sub_1ABB7E0B8();
  static EntityClass.bus.getter();
  sub_1ABB7DAF4();
  *(v4 + 1136) = *(v4 + 1088);
  sub_1ABA856C4(&v706, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v430 + 1360);
  sub_1ABA8D034();
  static EntityClass.locomotiveTrain.getter();
  sub_1ABB7DAE0();
  *(v4 + 1088) = *(v4 + 1040);
  sub_1ABA856C4(&v705, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v431 + 1312);
  sub_1ABA89A68();
  static EntityClass.transportationActivity.getter();
  sub_1ABB7DACC();
  *(v4 + 1040) = *(v4 + 992);
  sub_1ABA856C4(&v704, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v432 + 1264);
  sub_1ABA8A80C();
  static EntityClass.workingActivity.getter();
  sub_1ABB7DAB8();
  *(v4 + 992) = *(v4 + 944);
  sub_1ABA856C4(&v703, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v433 + 1216);
  sub_1ABA8C8CC();
  static EntityClass.meetingActivity.getter();
  sub_1ABB7DAA4();
  *(v4 + 944) = *(v4 + 896);
  sub_1ABA856C4(&v702, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v434 + 1168);
  sub_1ABA9FBA0();
  static EntityClass.eatingActivity.getter();
  sub_1ABB7DA90();
  *(v4 + 896) = *(v4 + 848);
  sub_1ABA856C4(&v701, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v435 + 1120);
  sub_1ABA8A590();
  static EntityClass.watchingTVActivity.getter();
  sub_1ABB7DA7C();
  *(v4 + 848) = *(v4 + 800);
  sub_1ABA856C4(&v700, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v436 + 1072);
  sub_1ABAA0844();
  static EntityClass.communicatingActivity.getter();
  sub_1ABB7DA68();
  *(v4 + 800) = *(v4 + 752);
  sub_1ABA856C4(&v699, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v437 + 1024);
  sub_1ABA8BBF0();
  static EntityClass.shoppingActivity.getter();
  sub_1ABB7DA54();
  *(v4 + 752) = *(v4 + 704);
  sub_1ABA856C4(&v698, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v438 + 976);
  sub_1ABA9FE14();
  static EntityClass.travelingActivity.getter();
  sub_1ABB7DA40();
  *(v4 + 704) = *(v4 + 656);
  sub_1ABA856C4(&v697, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v439 + 928);
  sub_1ABA9F80C();
  static EntityClass.readingActivity.getter();
  sub_1ABB7DA2C();
  *(v4 + 656) = *(v4 + 608);
  sub_1ABA856C4(&v696, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v440 + 880);
  sub_1ABA9F2D4();
  static EntityClass.vacationingActivity.getter();
  sub_1ABB7DA18();
  *(v4 + 608) = *(v4 + 560);
  sub_1ABA856C4(&v695, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v441 + 832);
  sub_1ABA9F490();
  static EntityClass.gamingActivity.getter();
  sub_1ABB7DA04();
  *(v4 + 560) = *(v4 + 512);
  sub_1ABA856C4(&v694, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v442 + 784);
  sub_1ABAA0DF8();
  static EntityClass.socializingActivity.getter();
  sub_1ABB7D9F0();
  *(v4 + 512) = *(v4 + 464);
  sub_1ABA856C4(&v693, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v443 + 736);
  sub_1ABA9FF2C();
  static EntityClass.wakingUpActivity.getter();
  sub_1ABB7D9DC();
  *(v4 + 464) = *(v4 + 416);
  sub_1ABA856C4(&v692, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v444 + 688);
  sub_1ABA8C658();
  static EntityClass.goingToBedActivity.getter();
  sub_1ABB7D9C8();
  *(v4 + 416) = *(v4 + 368);
  sub_1ABA856C4(&v691, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v445 + 640);
  sub_1ABB7E0AC();
  static EntityClass.sleepingActivity.getter();
  sub_1ABB7D9B4();
  *(v4 + 368) = *(v4 + 320);
  sub_1ABA856C4(&v690, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v446 + 592);
  sub_1ABA9EB58();
  static EntityClass.exercisingActivity.getter();
  sub_1ABB7D9A0();
  *(v4 + 320) = *(v4 + 272);
  sub_1ABA856C4(&v689, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v447 + 544);
  sub_1ABA8B19C();
  static EntityClass.mindfulnessActivity.getter();
  sub_1ABB7D98C();
  *(v4 + 272) = *(v4 + 224);
  sub_1ABA856C4(&v688, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v448 + 496);
  sub_1ABB7E0C4();
  static EntityClass.onThePhoneActivity.getter();
  sub_1ABB7D978();
  *(v4 + 224) = *(v4 + 176);
  sub_1ABA856C4(&v687, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v449 + 448);
  sub_1ABA9F524();
  static EntityClass.facetimeActivity.getter();
  sub_1ABB7D964();
  *(v4 + 176) = *(v4 + 128);
  sub_1ABA856C4(&v686, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v450 + 400);
  sub_1ABAA00CC();
  static EntityClass.walkingActivity.getter();
  sub_1ABB7D950();
  *(v4 + 128) = *(v4 + 80);
  sub_1ABA856C4(&v685, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v451 + 352);
  sub_1ABA9F3DC();
  static EntityClass.runningActivity.getter();
  sub_1ABB7D93C();
  *(v4 + 80) = *(v4 + 32);
  sub_1ABA856C4(&v684, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v452 + 304);
  sub_1ABA8947C();
  static EntityClass.bicyclingActivity.getter();
  sub_1ABB7D928();
  *(v4 + 32) = v682;
  sub_1ABA856C4(v683, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v453 + 256);
  static EntityClass.hikingActivity.getter();
  sub_1ABB7D914();
  v682 = v680;
  sub_1ABA856C4(&v681, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v454 + 208);
  sub_1ABA8BD88();
  static EntityClass.modeOfTransportation.getter();
  sub_1ABB7D900();
  v680 = v678;
  sub_1ABA856C4(&v679, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v455 + 160);
  sub_1ABA8CF70();
  static EntityClass.automobileModel.getter();
  sub_1ABAAD254();
  v678 = v676;
  sub_1ABA856C4(&v677, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v456 + 112);
  sub_1ABB7E0A0();
  static EntityClass.transportationActivityType.getter();
  sub_1ABAA9170();
  v676 = v674;
  sub_1ABA856C4(&v675, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v457 + 64);
  static EntityClass.workingActivityType.getter();
  sub_1ABB7D8EC();
  v674 = v672;
  sub_1ABA856C4(&v673, &v631);
  sub_1ABA7BFC4();
  sub_1ABA88934(v458 + 16);
  static EntityClass.meetingActivityType.getter();
  sub_1ABAB0F68();
  v672 = v670;
  sub_1ABA856C4(v671, &v631);
  sub_1ABA8A830();
  static EntityClass.eatingActivityType.getter();
  sub_1ABAB3BD0();
  v670 = v668;
  sub_1ABA856C4(v669, &v631);
  sub_1ABB7E14C();
  static EntityClass.watchingMediaActivityType.getter();
  sub_1ABA8CAAC();
  v668 = v459;
  sub_1ABA856C4(v667, &v631);
  sub_1ABAB5E8C();
  static EntityClass.communicatingActivityType.getter();
  sub_1ABA95488();
  sub_1ABA856C4(v460, &v631);
  sub_1ABAA6708();
  static EntityClass.shoppingActivityType.getter();
  sub_1ABA90C94();
  sub_1ABA856C4(v461, &v631);
  sub_1ABB7E50C();
  static EntityClass.mindfulActivityType.getter();
  sub_1ABA885E0();
  sub_1ABA856C4(v462, &v631);
  sub_1ABB7E3EC();
  static EntityClass.sleepActivityType.getter();
  sub_1ABAB5298();
  sub_1ABA856C4(v463, &v631);
  sub_1ABB7E284();
  static EntityClass.travelActivityType.getter();
  sub_1ABAA0E90();
  sub_1ABA856C4(v464, &v631);
  sub_1ABB7E194();
  static EntityClass.readingActivityType.getter();
  sub_1ABAB548C();
  sub_1ABA856C4(v465, &v631);
  sub_1ABAB5F38();
  static EntityClass.vacationActivityType.getter();
  sub_1ABAA10B4();
  sub_1ABA856C4(v466, &v631);
  sub_1ABAA11F8();
  static EntityClass.socialActivityType.getter();
  sub_1ABAB5660();
  sub_1ABA856C4(v467, &v631);
  sub_1ABAA2778();
  static EntityClass.wakingActivityType.getter();
  sub_1ABAA128C();
  sub_1ABA856C4(v468, &v631);
  sub_1ABB7E44C();
  static EntityClass.goingToBedActivityType.getter();
  sub_1ABAB5828();
  sub_1ABA856C4(v469, &v631);
  sub_1ABB7E2E4();
  static EntityClass.phoneCallActivityType.getter();
  sub_1ABAA14F4();
  sub_1ABA856C4(v470, &v631);
  sub_1ABB7E20C();
  static EntityClass.facetimeActivityType.getter();
  sub_1ABAB5A24();
  sub_1ABA856C4(v471, &v631);
  sub_1ABAA36E4();
  static EntityClass.walkingActivityType.getter();
  sub_1ABA95260();
  sub_1ABA856C4(v472, &v631);
  sub_1ABAA47F8();
  static EntityClass.runningActivityType.getter();
  sub_1ABA96024();
  sub_1ABA856C4(v473, &v631);
  sub_1ABAA1E08();
  static EntityClass.bikingActivityType.getter();
  sub_1ABAA1764();
  sub_1ABA856C4(v474, &v631);
  sub_1ABB7E4C4();
  static EntityClass.hikingActivityType.getter();
  sub_1ABA82DEC();
  sub_1ABA856C4(v475, &v631);
  sub_1ABB7E374();
  static EntityClass.typeOfPhysicalExercise.getter();
  sub_1ABAA1980();
  sub_1ABA856C4(v476, &v631);
  sub_1ABA88910();
  static EntityClass.localizedNameRelationshipType.getter();
  sub_1ABA97F20();
  sub_1ABA856C4(v477, &v631);
  sub_1ABB7E164();
  static EntityClass.mediaWork.getter();
  sub_1ABAA1BC0();
  sub_1ABA856C4(v478, &v631);
  sub_1ABAA2B18();
  static EntityClass.commuteActivity.getter();
  sub_1ABA97768();
  sub_1ABA856C4(v479, &v631);
  sub_1ABAA3B30();
  static EntityClass.diningActivity.getter();
  sub_1ABA96C28();
  sub_1ABA856C4(v480, &v631);
  sub_1ABAB5214();
  static EntityClass.attendingAPerformanceActivity.getter();
  sub_1ABAB5C84();
  sub_1ABA856C4(v481, &v631);
  sub_1ABB7E404();
  static EntityClass.stationaryActivity.getter();
  sub_1ABAA1EB4();
  sub_1ABA856C4(v482, &v631);
  sub_1ABB7E2B4();
  static EntityClass.knowledgeSource.getter();
  sub_1ABAB1044();
  sub_1ABA856C4(v483, &v631);
  sub_1ABB7E1C4();
  static EntityClass.confidenceRelationshipType.getter();
  sub_1ABA7AC70();
  sub_1ABA856C4(v484, &v631);
  sub_1ABA94EA0();
  static EntityClass.commuteActivityType.getter();
  sub_1ABA82774();
  sub_1ABA856C4(v485, &v631);
  sub_1ABAA6408();
  static EntityClass.make.getter();
  sub_1ABA96964();
  sub_1ABA856C4(v486, &v631);
  sub_1ABAB5EB0();
  static EntityClass.locationVisitActivity.getter();
  sub_1ABAA2228();
  sub_1ABA856C4(v487, &v631);
  sub_1ABB7E47C();
  static EntityClass.performanceRelationshipType.getter();
  sub_1ABA95784();
  sub_1ABA856C4(v488, &v631);
  sub_1ABB7E344();
  static EntityClass.partWholeRelationshipType.getter();
  sub_1ABAA2548();
  sub_1ABA856C4(v489, &v631);
  sub_1ABB7E23C();
  static EntityClass.ratingRelationshipType.getter();
  sub_1ABAA2860();
  sub_1ABA856C4(v490, &v631);
  sub_1ABAA102C();
  static EntityClass.musicalArtist.getter();
  sub_1ABA974C0();
  sub_1ABA856C4(v491, &v631);
  sub_1ABAA5644();
  static EntityClass.contentRating.getter();
  sub_1ABAA2C18();
  sub_1ABA856C4(v492, &v631);
  sub_1ABAB6000();
  static EntityClass.sportsGameEvent.getter();
  sub_1ABAA2FFC();
  sub_1ABA856C4(v493, &v631);
  sub_1ABB7E4F4();
  static EntityClass.sportsTeam.getter();
  sub_1ABAA3458();
  sub_1ABA856C4(v494, &v631);
  sub_1ABB7E3D4();
  static EntityClass.drivingActivity.getter();
  sub_1ABAA37BC();
  sub_1ABA856C4(v495, &v631);
  sub_1ABB7E26C();
  static EntityClass.drivingActivityType.getter();
  sub_1ABAA3C1C();
  sub_1ABA856C4(v496, &v631);
  sub_1ABB7E1AC();
  static EntityClass.behaviorActivity.getter();
  sub_1ABAA3FC8();
  sub_1ABA856C4(v497, &v631);
  sub_1ABAB5BA4();
  static EntityClass.behaviorActivityType.getter();
  sub_1ABAA4474();
  sub_1ABA856C4(v498, &v631);
  sub_1ABAA18F4();
  static EntityClass.time.getter();
  sub_1ABAA48E8();
  sub_1ABA856C4(v499, &v631);
  sub_1ABB7E32C();
  static EntityClass.album.getter();
  sub_1ABAA4D28();
  sub_1ABA856C4(v500, &v631);
  sub_1ABB7E224();
  static EntityClass.musicalWork.getter();
  sub_1ABAA5230();
  sub_1ABA856C4(v501, &v631);
  sub_1ABAA20E4();
  static EntityClass.group.getter();
  sub_1ABAA5770();
  sub_1ABA856C4(v502, &v631);
  sub_1ABAA1674();
  static EntityClass.groupRelationshipType.getter();
  sub_1ABA97A50();
  sub_1ABA856C4(v503, &v631);
  sub_1ABAA0E1C();
  static EntityClass.livingBeingRelationship.getter();
  sub_1ABA83FD0();
  sub_1ABA856C4(v504, &v631);
  sub_1ABB7E4DC();
  static EntityClass.entityAliasRelationshipType.getter();
  sub_1ABA8E138();
  sub_1ABA856C4(v505, &v631);
  sub_1ABB7E3BC();
  static EntityClass.pet.getter();
  sub_1ABA9A318();
  sub_1ABA856C4(v506, &v631);
  sub_1ABB7E254();
  static EntityClass.dog.getter();
  sub_1ABAA5F84();
  sub_1ABA856C4(v507, &v631);
  sub_1ABB7E17C();
  static EntityClass.cat.getter();
  sub_1ABA90688();
  sub_1ABA856C4(v508, &v631);
  sub_1ABAA0DD4();
  static EntityClass.extractionTagRelationshipType.getter();
  sub_1ABA9930C();
  sub_1ABA856C4(v509, &v631);
  sub_1ABAA2114();
  static EntityClass.movie.getter();
  sub_1ABA8BF00();
  sub_1ABA856C4(v510, &v631);
  sub_1ABAA4C3C();
  static EntityClass.sportsOrganization.getter();
  sub_1ABA8FEF8();
  sub_1ABA856C4(v511, &v631);
  sub_1ABB7E41C();
  static EntityClass.sportsLeague.getter();
  sub_1ABA9487C();
  sub_1ABA856C4(v512, &v631);
  sub_1ABB7E2CC();
  static EntityClass.athlete.getter();
  sub_1ABA81650();
  sub_1ABA856C4(v513, &v631);
  sub_1ABB7E1F4();
  static EntityClass.personInTheArts.getter();
  sub_1ABA83770();
  sub_1ABA856C4(v514, &v631);
  sub_1ABAA5D30();
  static EntityClass.musician.getter();
  sub_1ABA8E744();
  sub_1ABA856C4(v515, &v631);
  sub_1ABAA63AC();
  static EntityClass.televisionProgram.getter();
  sub_1ABA7E4B0();
  sub_1ABA856C4(v516, &v631);
  sub_1ABAA2F20();
  static EntityClass.sportsActivity.getter();
  sub_1ABA9335C();
  sub_1ABA856C4(v517, &v631);
  sub_1ABB7E494();
  static EntityClass.screenTimeSegment.getter();
  sub_1ABA7BFA4();
  sub_1ABA856C4(v518, &v631);
  sub_1ABB7E35C();
  static EntityClass.myPet.getter();
  sub_1ABA808C4();
  sub_1ABA856C4(v519, &v631);
  sub_1ABA888EC();
  static EntityClass.myDog.getter();
  sub_1ABA7FC3C();
  sub_1ABA856C4(v520, &v631);
  sub_1ABA889A8();
  static EntityClass.myCat.getter();
  sub_1ABA8CC90();
  sub_1ABA856C4(v521, &v631);
  sub_1ABB7E314();
  static EntityClass.walletOrder.getter();
  sub_1ABB7D86C();
  sub_1ABA856C4(v522, &v631);
  sub_1ABB7E434();
  static EntityClass.walletTransaction.getter();
  sub_1ABA96F80();
  sub_1ABA856C4(v523, &v631);
  sub_1ABAA63D0();
  static EntityClass.orderEmailRelationshipType.getter();
  sub_1ABAB659C();
  sub_1ABA856C4(v524, &v631);
  sub_1ABAA5DCC();
  static EntityClass.orderTransactionRelationshipType.getter();
  sub_1ABAB6778();
  sub_1ABA856C4(v525, &v631);
  sub_1ABAA2478();
  static EntityClass.payment.getter();
  sub_1ABAB68A4();
  sub_1ABA856C4(v526, &v631);
  sub_1ABAA64C8();
  static EntityClass.transaction.getter();
  sub_1ABB7D854();
  sub_1ABA856C4(v527, &v631);
  sub_1ABB7E1DC();
  static EntityClass.email.getter();
  sub_1ABA972E0();
  sub_1ABA856C4(v528, &v631);
  sub_1ABB7E29C();
  static EntityClass.shippinginfo.getter();
  sub_1ABA82A44();
  sub_1ABA856C4(v529, &v631);
  sub_1ABB7E3A4();
  static EntityClass.shipmentFullFillmentInfo.getter();
  sub_1ABB7D83C();
  sub_1ABA856C4(v530, &v631);
  sub_1ABB7E4AC();
  static EntityClass.orderShippingInfoRelationshipType.getter();
  sub_1ABA963E0(v531, v532, v533, v534, v535, v536, v537, v538, v619, *(&v619 + 1), v620, *(&v620 + 1), v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636, v637, v638, v639, v640, v641, v642, v643, v644, v645, v646, v647, v648, v649, v650, v651, v652.n128_i64[0], v652.n128_i64[1], v653.n128_i64[0], v653.n128_i64[1], v654, v655, *(&v655 + 1), v656, v657, v658, v659, v660, *(&v660 + 1), v661, v662, v663, v664, v665, *(&v665 + 1), v666);
  sub_1ABA856C4(v539, &v631);
  sub_1ABAA5BF4();
  static EntityClass.entityOrganizationRelationshipType.getter();
  sub_1ABAB2AE0(v540, v541, v542, v543, v544, v545, v546, v547, v619, *(&v619 + 1), v620, *(&v620 + 1), v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636, v637, v638, v639, v640, v641, v642, v643, v644, v645, v646, v647, v648, v649, v650, v651, v652.n128_i64[0], v652.n128_i64[1], v653.n128_i64[0], v653.n128_i64[1], v654, v655, *(&v655 + 1), v656, v657, v658, v659, v660, *(&v660 + 1), v661, v662, v663, v664, v665);
  v549 = sub_1ABA856C4(v548, &v631);
  sub_1ABAB5E68(v549, v550, v551, v552, v553, v554, v555, v556, v619, *(&v619 + 1), v620, *(&v620 + 1), v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636, v637, v638, v639, v640, v641, v642, v643, v644, v645, v646, v647, v648, v649, v650, v651, v652.n128_i64[0], v652.n128_i64[1], v653.n128_i64[0], v653.n128_i64[1], v654, v655, *(&v655 + 1), v656, v657, v658, v659, v660, *(&v660 + 1), v661, v662, v663, v664, v665, *(&v665 + 1), v666);
  static EntityClass.shipmentFullFillmentEmailRelationshipType.getter();
  sub_1ABB7D824(v557, v558, v559, v560, v561, v562, v563, v564, v619, *(&v619 + 1), v620, *(&v620 + 1), v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636, v637, v638, v639, v640, v641, v642, v643, v644, v645, v646, v647, v648, v649, v650, v651, v652.n128_i64[0], v652.n128_i64[1], v653.n128_i64[0], v653.n128_i64[1], v654, v655, *(&v655 + 1), v656, v657, v658, v659, v660);
  v566 = sub_1ABA856C4(v565, &v631);
  sub_1ABAA1DE4(v566, v567, v568, v569, v570, v571, v572, v573, v619, *(&v619 + 1), v620, *(&v620 + 1), v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636, v637, v638, v639, v640, v641, v642, v643, v644, v645, v646, v647, v648, v649, v650, v651, v652.n128_i64[0], v652.n128_i64[1], v653.n128_i64[0], v653.n128_i64[1], v654, v655, *(&v655 + 1), v656, v657, v658, v659, v660, *(&v660 + 1), v661, v662, v663, v664, v665);
  static EntityClass.orderShipmentFullFillmentRelationshipType.getter();
  sub_1ABB7D80C(v574, v575, v576, v577, v578, v579, v580, v581, v619, *(&v619 + 1), v620, *(&v620 + 1), v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636, v637, v638, v639, v640, v641, v642, v643, v644, v645, v646, v647, v648, v649, v650, v651, v652.n128_i64[0], v652.n128_i64[1], v653.n128_i64[0], v653.n128_i64[1], v654, v655);
  v583 = sub_1ABA856C4(v582, &v631);
  sub_1ABA887FC(v583, v584, v585, v586, v587, v588, v589, v590, v619, *(&v619 + 1), v620, *(&v620 + 1), v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636, v637, v638, v639, v640, v641, v642, v643, v644, v645, v646, v647, v648, v649, v650, v651, v652.n128_i64[0], v652.n128_i64[1], v653.n128_i64[0], v653.n128_i64[1], v654, v655, *(&v655 + 1), v656, v657, v658, v659, v660);
  static EntityClass.orderPaymentRelationshipType.getter();
  v601 = sub_1ABAA0FF8(v652, v653, v591, v592, v593, v594, v595, v596, v597, v598, v619, *(&v619 + 1), v620, *(&v620 + 1), v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636, v637, v638, v639, v640, v641, v642, v643, v644, v645, v646, v647, v648, v649, v650, v651, v652.n128_i64[0], v652.n128_i64[1], v653.n128_i64[0], v653.n128_i64[1], v654, v599, v600, SBYTE1(v654));
  sub_1ABA889E0(v601, v602, v603, v604, v605, v606, v607, v608, v619, *(&v619 + 1), v620, *(&v620 + 1), v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636, v637, v638, v639, v640, v641, v642, v643, v644, v645, v646, v647, v648, v649, v650, v651, v652.n128_i64[0], v652.n128_i64[1], v653.n128_i64[0], v653.n128_i64[1], v654, v655);
  static EntityClass.fromToEmailRelationshipType.getter();
  v609 = sub_1ABA856C4(&v652, &v631);
  sub_1ABA88934(&v652);
  if ((v609 & 1) == 0)
  {
    static EntityClass.orderPersonRelationshipType.getter();
    v610 = sub_1ABA856C4(&v647, &v631);
    sub_1ABA88934(&v647);
    if (v610)
    {
      sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
      v0 = sub_1ABA81670();
      sub_1ABA888E0(v0, xmmword_1ABF3BFC0);
      static EntityPredicate.identifierId.getter();
      static EntityPredicate.personIdentifier.getter();
LABEL_105:
      static EntityPredicate.identifierType.getter();
      goto LABEL_45;
    }

    static EntityClass.holidayEvent.getter();
    v611 = sub_1ABA856C4(&v642, &v631);
    sub_1ABA88934(&v642);
    if (v611)
    {
      sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
      v0 = sub_1ABA8E764();
      sub_1ABA888E0(v0, xmmword_1ABF34740);
      static EntityPredicate.occurrenceDate.getter();
      goto LABEL_45;
    }

    static EntityClass.shipmentPersonRelationshipType.getter();
    v612 = sub_1ABA856C4(&v637, &v631);
    sub_1ABA88934(&v637);
    if (v612)
    {
      sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
      v0 = sub_1ABA83790();
      sub_1ABA888E0(v0, xmmword_1ABF34060);
      static EntityPredicate.personIdentifier.getter();
      goto LABEL_105;
    }

    static EntityClass.emailInfoRelationshipType.getter();
    v613 = sub_1ABA856C4(&v626, &v631);
    sub_1ABA88934(&v626);
    if ((v613 & 1) == 0)
    {
      sub_1ABC6D528();
      v614 = sub_1ABF237D4();
      sub_1ABF24674();
      sub_1ABAA20BC();
      if (sub_1ABB7E014())
      {
        v615 = sub_1ABAD8744();
        sub_1ABA8AFF4(v615);
        if (v1)
        {
          while (1)
          {
            sub_1ABB7E64C();
            v616();
            sub_1ABA9FAB0();
          }
        }

        sub_1ABA8A7E0(&dword_1ABA78000, v617, v618, "EntityClass: directPredicates: unknown entity class.");
        sub_1ABAD874C();
      }
    }
  }

LABEL_51:
  v355 = sub_1ABAE844C(0);
  v0 = v355;
LABEL_46:
  if (sub_1ABA8DEE8(v355))
  {
    sub_1ABB2CFA0(v0, v356, v357, v358, v359, v360, v361, v362, v619, *(&v619 + 1), v620, SDWORD2(v620), SWORD6(v620));
  }

  else
  {
  }

  sub_1ABAB5B7C();
  sub_1ABA82A00();
}