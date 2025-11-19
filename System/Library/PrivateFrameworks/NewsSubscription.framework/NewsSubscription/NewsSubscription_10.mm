uint64_t sub_1D782C04C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PurchaseAdContext();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1D78300CC(0, &unk_1EC9CA770, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6EC8]);
  v40 = a2;
  result = sub_1D78B6554();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1D77F63C8(v28, v41);
      }

      else
      {
        sub_1D7830140(v28, v41, type metadata accessor for PurchaseAdContext);
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      result = sub_1D78B6844();
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
      *v18 = v25;
      v18[1] = v26;
      result = sub_1D77F63C8(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
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

uint64_t sub_1D782C3C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D78300CC(0, &qword_1EC9CAC30, sub_1D779DA54, MEMORY[0x1E69E6EC8]);
  v34 = a2;
  result = sub_1D78B6554();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      result = sub_1D78B6844();
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
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_1D782C68C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PaywallShownEntry();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1D78300CC(0, &unk_1EE08E540, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6EC8]);
  v40 = a2;
  result = sub_1D78B6554();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1D77B6AEC(v28, v41);
      }

      else
      {
        sub_1D7830140(v28, v41, type metadata accessor for PaywallShownEntry);
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      result = sub_1D78B6844();
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
      *v18 = v25;
      v18[1] = v26;
      result = sub_1D77B6AEC(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
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

uint64_t sub_1D782CA00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D78305AC();
  v50 = a2;
  result = sub_1D78B6554();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v49 = v5;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 56);
      v25 = *(v5 + 48) + 24 * v23;
      v26 = *v25;
      v27 = *(v25 + 16);
      if (v50)
      {
        v28 = (v24 + 168 * v23);
        v51 = *v28;
        v52 = v28[1];
        v54 = *(v28 + 4);
        v55 = *(v28 + 40);
        v56 = *(v28 + 48);
        v53 = *(v28 + 56);
        v57 = *(v28 + 9);
        v58 = *(v25 + 8);
        v29 = v28[8];
        v72 = v28[7];
        v73 = v29;
        v74 = v28[9];
        v75 = *(v28 + 20);
        v30 = v28[5];
        v31 = v28[6];
      }

      else
      {
        v58 = *(v25 + 8);
        v32 = (v24 + 168 * v23);
        v34 = v32[1];
        v33 = v32[2];
        v60 = *v32;
        v61 = v34;
        v62 = v33;
        v35 = v32[6];
        v37 = v32[3];
        v36 = v32[4];
        v64 = v32[5];
        v65 = v35;
        *v63 = v37;
        *&v63[16] = v36;
        v39 = v32[8];
        v38 = v32[9];
        v40 = v32[7];
        v69 = *(v32 + 20);
        v67 = v39;
        v68 = v38;
        v66 = v40;
        v57 = *&v63[24];
        v55 = BYTE8(v62);
        v56 = v37;
        v54 = v62;
        v52 = v61;
        v53 = *&v63[8];
        v51 = v60;

        sub_1D778CEAC(&v60, v59);
        v72 = v66;
        v73 = v67;
        v74 = v68;
        v75 = v69;
        v30 = v64;
        v31 = v65;
      }

      v70 = v30;
      v71 = v31;
      sub_1D78B6814();
      sub_1D78B5D14();

      sub_1D78B6834();
      if (v27)
      {
        sub_1D78B5D14();
      }

      result = sub_1D78B6844();
      v41 = -1 << *(v7 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v14 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v14 + 8 * v43);
          if (v47 != -1)
          {
            v15 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v42) & ~*(v14 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v26;
      *(v16 + 8) = v58;
      *(v16 + 16) = v27;
      v17 = *(v7 + 56) + 168 * v15;
      *v17 = v51;
      *(v17 + 16) = v52;
      *(v17 + 32) = v54;
      *(v17 + 40) = v55;
      *(v17 + 48) = v56;
      *(v17 + 56) = v53;
      *(v17 + 72) = v57;
      v18 = v73;
      *(v17 + 112) = v72;
      *(v17 + 128) = v18;
      *(v17 + 144) = v74;
      *(v17 + 160) = v75;
      v19 = v71;
      *(v17 + 80) = v70;
      *(v17 + 96) = v19;
      ++*(v7 + 16);
      v5 = v49;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v48 = 1 << *(v5 + 32);
    v3 = v2;
    if (v48 >= 64)
    {
      bzero(v9, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v48;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1D782D004(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1D78B57A4();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1D78300CC(0, &unk_1EE08FB20, MEMORY[0x1E69B6118], MEMORY[0x1E69E6EC8]);
  v42 = a2;
  result = sub_1D78B6554();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v2;
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

      sub_1D78B6814();
      sub_1D78B5D14();
      result = sub_1D78B6844();
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

uint64_t sub_1D782D3AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7830610();
  v35 = a2;
  result = sub_1D78B6554();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      result = sub_1D78B6844();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D782D644(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D78B6344() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1D78B6814();
      MEMORY[0x1DA703AC0](v9);
      result = sub_1D78B6844();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D782D7D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D78B6344() + 1) & ~v5;
    do
    {
      sub_1D78B6814();

      sub_1D78B5D14();
      v10 = sub_1D78B6844();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D782D988(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D78B6344() + 1) & ~v5;
    do
    {
      sub_1D78B6814();

      sub_1D78B5D14();
      v9 = sub_1D78B6844();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D782DB38(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D78B6344() + 1) & ~v5;
    do
    {
      sub_1D78B6814();

      sub_1D78B5D14();
      v9 = sub_1D78B6844();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D782DD00(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1D78B6344() + 1) & ~v6;
    while (1)
    {
      sub_1D78B6814();

      sub_1D78B5D14();
      v11 = sub_1D78B6844();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D782DEF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D777BC2C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1D782EC94();
    result = v17;
    goto LABEL_8;
  }

  sub_1D782B4D4(v14, a3 & 1);
  result = sub_1D777BC2C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for UIUserInterfaceStyle(0);
  sub_1D78B6784();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

_OWORD *sub_1D782E03C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D777BBB4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D782EDE4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D782B754(v16, a4 & 1);
    v11 = sub_1D777BBB4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D78B6784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1D778D0A0(a1, v22);
  }

  else
  {
    sub_1D782EACC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1D782E18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D777BBB4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D782BA14(v18, a5 & 1);
      v13 = sub_1D777BBB4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1D78B6784();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D782EF90();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_1D782E314(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D777BBB4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for PurchaseContext();
      return sub_1D7830360(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for PurchaseContext);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D782F10C();
    goto LABEL_7;
  }

  sub_1D782BCD8(v15, a4 & 1);
  v22 = sub_1D777BBB4(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D78B6784();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D782EB38(v12, a2, a3, a1, v18, type metadata accessor for PurchaseContext, sub_1D777044C);
}

uint64_t sub_1D782E4A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D777BBB4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for PurchaseAdContext();
      return sub_1D7830360(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for PurchaseAdContext);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D782F374();
    goto LABEL_7;
  }

  sub_1D782C04C(v15, a4 & 1);
  v22 = sub_1D777BBB4(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D78B6784();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D782EB38(v12, a2, a3, a1, v18, type metadata accessor for PurchaseAdContext, sub_1D77F63C8);
}

uint64_t sub_1D782E63C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D777BBB4(a2, a3);
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
      sub_1D782C3C0(v16, a4 & 1);
      v11 = sub_1D777BBB4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D78B6784();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D782F5DC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1D782E7B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D777BBB4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for PaywallShownEntry();
      return sub_1D7830360(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for PaywallShownEntry);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D782F770();
    goto LABEL_7;
  }

  sub_1D782C68C(v15, a4 & 1);
  v22 = sub_1D777BBB4(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D78B6784();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D782EB38(v12, a2, a3, a1, v18, type metadata accessor for PaywallShownEntry, sub_1D77B6AEC);
}

uint64_t sub_1D782E94C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D777BBB4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1D782FBD8();
      goto LABEL_7;
    }

    sub_1D782D004(v15, a4 & 1);
    v26 = sub_1D777BBB4(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D78B6784();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1D78B57A4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1D782EBE4(v12, a2, a3, a1, v18);
}

_OWORD *sub_1D782EACC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D778D0A0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1D782EB38(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, unint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = a7(a4, v12 + *(*(v13 - 8) + 72) * a1);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1D782EBE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1D78B57A4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

id sub_1D782EC94()
{
  v1 = v0;
  sub_1D78303C8();
  v2 = *v0;
  v3 = sub_1D78B6544();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_1D782EDE4()
{
  v1 = v0;
  sub_1D7830484(0, &qword_1EE08FB10);
  v2 = *v0;
  v3 = sub_1D78B6544();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D777BE08(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D778D0A0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1D782EF90()
{
  v1 = v0;
  sub_1D7830484(0, &unk_1EC9CAC10);
  v2 = *v0;
  v3 = sub_1D78B6544();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1D782F10C()
{
  v1 = v0;
  v2 = type metadata accessor for PurchaseContext();
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78300CC(0, &qword_1EE08E550, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1D78B6544();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1D7830140(*(v4 + 56) + v26, v30, type metadata accessor for PurchaseContext);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1D777044C(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1D782F374()
{
  v1 = v0;
  v2 = type metadata accessor for PurchaseAdContext();
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78300CC(0, &unk_1EC9CA770, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1D78B6544();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1D7830140(*(v4 + 56) + v26, v30, type metadata accessor for PurchaseAdContext);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1D77F63C8(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1D782F5DC()
{
  v1 = v0;
  sub_1D78300CC(0, &qword_1EC9CAC30, sub_1D779DA54, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1D78B6544();
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

        result = swift_unknownObjectRetain();
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

void *sub_1D782F770()
{
  v1 = v0;
  v2 = type metadata accessor for PaywallShownEntry();
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78300CC(0, &unk_1EE08E540, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1D78B6544();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1D7830140(*(v4 + 56) + v26, v30, type metadata accessor for PaywallShownEntry);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1D77B6AEC(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1D782F9D8()
{
  v1 = v0;
  sub_1D78305AC();
  v2 = *v0;
  v3 = sub_1D78B6544();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1D778CEAC(&v42, v41))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 24 * v16;
      v18 = *(v2 + 48) + 24 * v16;
      v19 = *v18;
      v21 = *(v18 + 8);
      v20 = *(v18 + 16);
      v16 *= 168;
      v22 = *(v2 + 56) + v16;
      v23 = *(v22 + 96);
      v25 = *(v22 + 48);
      v24 = *(v22 + 64);
      v47 = *(v22 + 80);
      v48 = v23;
      v45 = v25;
      v46 = v24;
      v27 = *(v22 + 128);
      v26 = *(v22 + 144);
      v28 = *(v22 + 112);
      v52 = *(v22 + 160);
      v50 = v27;
      v51 = v26;
      v49 = v28;
      v30 = *(v22 + 16);
      v29 = *(v22 + 32);
      v42 = *v22;
      v43 = v30;
      v44 = v29;
      v31 = *(v4 + 48) + v17;
      *v31 = v19;
      *(v31 + 8) = v21;
      *(v31 + 16) = v20;
      v32 = *(v4 + 56) + v16;
      v33 = v42;
      v34 = v44;
      *(v32 + 16) = v43;
      *(v32 + 32) = v34;
      *v32 = v33;
      v35 = v45;
      v36 = v46;
      v37 = v48;
      *(v32 + 80) = v47;
      *(v32 + 96) = v37;
      *(v32 + 48) = v35;
      *(v32 + 64) = v36;
      v38 = v49;
      v39 = v50;
      v40 = v51;
      *(v32 + 160) = v52;
      *(v32 + 128) = v39;
      *(v32 + 144) = v40;
      *(v32 + 112) = v38;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

char *sub_1D782FBD8()
{
  v1 = v0;
  v35 = sub_1D78B57A4();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78300CC(0, &unk_1EE08FB20, MEMORY[0x1E69B6118], MEMORY[0x1E69E6EC8]);
  v3 = *v0;
  v4 = sub_1D78B6544();
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

id sub_1D782FE7C()
{
  v1 = v0;
  sub_1D7830610();
  v2 = *v0;
  v3 = sub_1D78B6544();
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

uint64_t sub_1D783006C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D78300CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D7830140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D78301A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7830208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7830270(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D78302F0(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1D78302F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D7830360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1D78303C8()
{
  if (!qword_1EE08FB00)
  {
    type metadata accessor for UIUserInterfaceStyle(255);
    sub_1D773F004(255, &qword_1EE08FBE8);
    sub_1D7749114(&unk_1EE08FDA0, type metadata accessor for UIUserInterfaceStyle);
    v0 = sub_1D78B6574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FB00);
    }
  }
}

void sub_1D7830484(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D78B6574();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D78304DC()
{
  v1 = *(type metadata accessor for PaywallShownEntry() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1D782AC98(v2, v3, v4, v5);
}

void sub_1D7830544()
{
  if (!qword_1EE08E618)
  {
    type metadata accessor for PaywallShownEntry();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE08E618);
    }
  }
}

void sub_1D78305AC()
{
  if (!qword_1EE08FB40)
  {
    sub_1D7744504();
    v0 = sub_1D78B6574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FB40);
    }
  }
}

void sub_1D7830610()
{
  if (!qword_1EC9CAC20)
  {
    sub_1D773F004(255, &qword_1EE08FCB0);
    v0 = sub_1D78B6574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CAC20);
    }
  }
}

unint64_t sub_1D7830688()
{
  result = qword_1EE08F0B8[0];
  if (!qword_1EE08F0B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE08F0B8);
  }

  return result;
}

void sub_1D78306DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7830688();
    v7 = a3(a1, &type metadata for PaywallShownEntry.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7830754()
{
  result = qword_1EC9CAC38;
  if (!qword_1EC9CAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAC38);
  }

  return result;
}

unint64_t sub_1D78307AC()
{
  result = qword_1EE08F0A0;
  if (!qword_1EE08F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F0A0);
  }

  return result;
}

unint64_t sub_1D7830804()
{
  result = qword_1EE08F0A8;
  if (!qword_1EE08F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F0A8);
  }

  return result;
}

uint64_t static StartupTaskGroup.subscriptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE095380 != -1)
  {
    swift_once();
  }

  v2 = sub_1D78B3C44();
  v3 = __swift_project_value_buffer(v2, qword_1EE095388);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D7830930()
{
  result = sub_1D78B3C44();
  if (v1 <= 0x3F)
  {
    result = sub_1D78B3F04();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D7830A74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t initializeBufferWithCopyOfBuffer for HideMyEmailSignupLayoutSectionDescriptor(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

CGFloat sub_1D7830B38()
{
  sub_1D77CF8C8(v0, v2);
  sub_1D77CF8C8(v2, &v3);
  return CGRectGetHeight(v3);
}

CGFloat sub_1D7830B88()
{
  sub_1D77CF8C8(v0, v2);
  sub_1D77CF8C8(v2, v3);
  return CGRectGetHeight(v4);
}

uint64_t sub_1D7830BD8(uint64_t a1)
{
  v2 = sub_1D7830C34();

  return MEMORY[0x1EEE47ED0](a1, v2);
}

unint64_t sub_1D7830C34()
{
  result = qword_1EC9CAC48;
  if (!qword_1EC9CAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAC48);
  }

  return result;
}

uint64_t sub_1D7830CA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 256);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7830CF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 256) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D7830DA0(int a1, double *a2, char *a3)
{
  v4 = v3;
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[10];
  v13 = a2[11];
  v31 = a2[13];
  v32 = a2[12];
  v29 = a2[15];
  v30 = a2[14];
  v35 = a2[17];
  v36 = a2[16];
  v33 = a2[19];
  v34 = a2[18];
  [a3 setFrame_];
  v14 = *&a3[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_titleLabel];
  [v14 setFrame_];
  v15 = v3[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v16 = PurchasingSpinner.label.getter();
  v17 = (*(v15 + 8))(v16);

  [v14 setAttributedText_];

  v18 = *&a3[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_spinner];
  [v18 setFrame_];
  [v18 startAnimating];
  v19 = v4[5];
  v20 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v19);
  (*(v20 + 16))(v18, v19, v20);
  v21 = *&a3[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_purchasingSpinnerView];
  [v21 setFrame_];
  v22 = v4[5];
  v23 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v22);
  (*(v23 + 24))(v21, v22, v23);
  v24 = *&a3[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_purchasingScrim];
  [v24 setFrame_];
  if (qword_1EC9C8470 != -1)
  {
    swift_once();
  }

  [v24 setImage_];
  [a3 frame];
  MidX = CGRectGetMidX(v38);
  [a3 frame];
  [v24 setCenter_];
  [a3 frame];
  v26 = CGRectGetMidX(v40);
  [a3 frame];
  MidY = CGRectGetMidY(v41);

  return [v21 setCenter_];
}

id _s16NewsSubscription8AMSUIBagC3bagSo14AMSBagProtocol_pyFZ_0()
{
  result = [objc_opt_self() bagKeySet];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v1 = result;
  v2 = objc_opt_self();
  v3 = sub_1D78B5C44();
  v4 = sub_1D78B5C44();
  [v2 registerBagKeySet:v1 forProfile:v3 profileVersion:v4];

  result = [objc_opt_self() bagKeySet];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = sub_1D78B5C44();
  v7 = sub_1D78B5C44();
  [v2 registerBagKeySet:v5 forProfile:v6 profileVersion:v7];

  sub_1D78312FC();
  result = [swift_getObjCClassFromMetadata() bagKeySet];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = sub_1D78B5C44();
  v10 = sub_1D78B5C44();
  [v2 registerBagKeySet:v8 forProfile:v9 profileVersion:v10];

  v11 = [objc_opt_self() bag];

  return v11;
}

unint64_t sub_1D78312FC()
{
  result = qword_1EE08E560;
  if (!qword_1EE08E560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08E560);
  }

  return result;
}

uint64_t sub_1D7831348(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v43[1] = a4;
  v48 = a3;
  v4 = sub_1D78B4884();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77CF978(0, &qword_1EC9CA2B8, sub_1D77CE1C8, &type metadata for HideMyEmailSignupLayoutModel, MEMORY[0x1E69D7BF0]);
  sub_1D78B4904();
  v91 = v62;
  v92 = v63;
  v93[0] = v64[0];
  *(v93 + 9) = *(v64 + 9);
  v87 = v58;
  v88 = v59;
  v89 = v60;
  v90 = v61;
  v85 = v56;
  v86 = v57;
  sub_1D77CF978(0, &qword_1EC9CA2C0, sub_1D77CE220, &type metadata for HideMyEmailSignupModel, MEMORY[0x1E69D76A0]);
  sub_1D78B4594();
  v94[6] = v91;
  v94[7] = v92;
  v95[0] = v93[0];
  *(v95 + 9) = *(v93 + 9);
  v94[2] = v87;
  v94[3] = v88;
  v94[4] = v89;
  v94[5] = v90;
  v94[0] = v85;
  v94[1] = v86;
  v103[6] = v91;
  v103[7] = v92;
  v104[0] = v93[0];
  *(v104 + 9) = *(v93 + 9);
  v103[2] = v87;
  v103[3] = v88;
  v103[4] = v89;
  v103[5] = v90;
  v7 = v49;
  v6 = v50;
  v8 = v52;
  v10 = v53;
  v9 = v54;
  v11 = v55;
  v96 = v49;
  v97 = v50;
  v43[0] = v51;
  v98 = v51;
  v99 = v52;
  v100 = v53;
  v101 = v54;
  v102 = v55;
  v103[0] = v85;
  v103[1] = v86;
  v12 = sub_1D77CF86C(v103);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = nullsub_1(v103);
      if ((v11 & 0xC0) == 0x40)
      {
        v14 = v13;
        v15 = 0;
LABEL_7:

        sub_1D7831A74(v94);
        v17 = *(v14 + 64);
        v82 = *(v14 + 48);
        v83 = v17;
        v84 = *(v14 + 80);
        v18 = *(v14 + 32);
        v80 = *(v14 + 16);
        v81 = v18;
        v19 = *(v14 + 88);
        v20 = *(v14 + 96);
        v21 = *(v14 + 104);
        v22 = *(v14 + 112);
        v23 = *(v14 + 136);
        v78 = *(v14 + 120);
        v79 = v23;
        v69 = v84;
        v67 = v82;
        v68 = v83;
        v65 = v80;
        v66 = v18;
        v70 = v19;
        v71 = v20;
        v72 = v21;
        v73 = v22;
        v75 = v23;
        v74 = v78;
        v76[0] = v7;
        v76[1] = v6;
        v76[2] = v43[0];
        v76[3] = v8;
        v76[4] = v10;
        v76[5] = v9;
        v77 = v11 & 1;
        sub_1D7831B30();
        v24 = v48;
        v25 = sub_1D78B6024();
        __swift_project_boxed_opaque_existential_1(v44 + 2, v44[5]);
        v26 = sub_1D78B4644();
        sub_1D7803BC4(v26, &v65, v76);

        (*(v46 + 104))(v45, *MEMORY[0x1E69D7AC0], v47);
        sub_1D78B4634();
        if (!v15)
        {
          return v25;
        }

        v25 = v25;
        v105.origin.x = v19;
        v105.origin.y = v20;
        v105.size.width = v21;
        v105.size.height = v22;
        MinX = CGRectGetMinX(v105);
        [v24 layoutMargins];
        [v25 setSeparatorInset_];
LABEL_11:

        return v25;
      }
    }

    else
    {
      v29 = nullsub_1(v103);
      if ((v11 & 0xC0) == 0x80)
      {
        v30 = v29;
        v31 = *(v29 + 64);
        v67 = *(v29 + 48);
        v68 = v31;
        v69 = *(v29 + 80);
        v32 = *(v29 + 32);
        v65 = *(v29 + 16);
        v66 = v32;
        sub_1D78319E0();
        v33 = v48;
        v34 = sub_1D78B6024();
        __swift_project_boxed_opaque_existential_1(v44 + 7, v44[10]);
        v35 = sub_1D78B4644();
        sub_1D78B29D0(v35, &v65, v7, v6, v43[0] & 1);

        (*(v46 + 104))(v45, *MEMORY[0x1E69D7AC0], v47);
        sub_1D78B4634();
        v36 = v30[7];
        v37 = v30[8];
        v38 = v30[9];
        v39 = v30[10];
        v25 = v34;
        v106.origin.x = v36;
        v106.origin.y = v37;
        v106.size.width = v38;
        v106.size.height = v39;
        v40 = CGRectGetMinX(v106);
        [v33 layoutMargins];
        [v25 setSeparatorInset_];
        sub_1D7831A74(v94);
        goto LABEL_11;
      }
    }
  }

  else
  {
    v16 = nullsub_1(v103);
    if (v11 <= 0x3F)
    {
      v14 = v16;
      v15 = 1;
      goto LABEL_7;
    }
  }

  result = sub_1D78B6524();
  __break(1u);
  return result;
}

uint64_t sub_1D78318F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  sub_1D776ABA8(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7831960()
{
  sub_1D7831B30();
  sub_1D78B6044();
  sub_1D78319E0();
  return sub_1D78B6044();
}

uint64_t sub_1D78319B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1D7831348(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

void sub_1D78319E0()
{
  if (!qword_1EC9CAC50)
  {
    type metadata accessor for HideMyEmailSignupAlternateView();
    sub_1D7831BC4(&qword_1EC9CAC58, type metadata accessor for HideMyEmailSignupAlternateView);
    v0 = sub_1D78B4654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CAC50);
    }
  }
}

uint64_t sub_1D7831A74(uint64_t a1)
{
  sub_1D7831AD0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7831AD0()
{
  if (!qword_1EC9CAC60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9CAC60);
    }
  }
}

void sub_1D7831B30()
{
  if (!qword_1EC9CAC68)
  {
    type metadata accessor for HideMyEmailSignupChoiceView();
    sub_1D7831BC4(&qword_1EC9CAC70, type metadata accessor for HideMyEmailSignupChoiceView);
    v0 = sub_1D78B4654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CAC68);
    }
  }
}

uint64_t sub_1D7831BC4(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1D7831C5C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D7832A30();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1D7831CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1D78B5DF4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D7832250();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D78B64A4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D7832250()
{
  v0 = sub_1D78B5E04();
  v4 = sub_1D78322D0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D78322D0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D78B62B4();
    if (!v9 || (v10 = v9, v11 = sub_1D7831C5C(v9, 0), v12 = sub_1D7832428(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1D78B5D04();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D78B5D04();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D78B64A4();
LABEL_4:

  return sub_1D78B5D04();
}

unint64_t sub_1D7832428(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D7832648(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D78B5DB4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D78B64A4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D7832648(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D78B5D94();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D7832648(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D78B5DC4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA703040](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_1D78326C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D78B5C44();
  v5 = sub_1D78B5C44();
  v6 = [v4 fc:v5 numberFollowingString:?];

  if (v6)
  {
    [v6 integerValue];

    return;
  }

  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {

      sub_1D7831CC4(a1, a2, 10);

      return;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v35[0] = a1;
      v35[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v24 = 0;
            v25 = v35 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_71:
        __break(1u);
        return;
      }

      if (a1 != 45)
      {
        if (v7)
        {
          v31 = 0;
          v32 = v35;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v31;
            if ((v31 * 10) >> 64 != (10 * v31) >> 63)
            {
              break;
            }

            v31 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            ++v32;
            if (!--v7)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v7)
      {
        if (--v7)
        {
          v16 = 0;
          v17 = v35 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v7)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_1D78B64A4();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v20 = 0;
            if (v10)
            {
              v21 = v10 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  goto LABEL_63;
                }

                v23 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  goto LABEL_63;
                }

                v20 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_63;
                }

                ++v21;
                if (!--v7)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_70;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v28 = 0;
          if (v10)
          {
            while (1)
            {
              v29 = *v10 - 48;
              if (v29 > 9)
              {
                goto LABEL_63;
              }

              v30 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                goto LABEL_63;
              }

              v28 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_63;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        LOBYTE(v7) = 1;
        goto LABEL_64;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_63;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_63;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                goto LABEL_63;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v7) = 0;
LABEL_64:
          v36 = v7;
          return;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }
}

void sub_1D7832A30()
{
  if (!qword_1EE08FA18)
  {
    v0 = sub_1D78B66F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FA18);
    }
  }
}

uint64_t sub_1D7832A80()
{
  sub_1D776ABA8(v0 + 16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  return swift_deallocClassInstance();
}

id sub_1D7832AFC(uint64_t a1, uint64_t a2)
{
  if (qword_1EC9C8708 != -1)
  {
    swift_once();
  }

  if (sub_1D78B35C4())
  {
    if (qword_1EC9C8700 != -1)
    {
      swift_once();
    }

    sub_1D7832E10();
    sub_1D78B3574();
    if (qword_1EC9C86F8 != -1)
    {
      swift_once();
    }

    sub_1D78B3574();
    v4 = objc_allocWithZone(MEMORY[0x1E69B55B8]);
    v5 = sub_1D78B5C44();

    v6 = sub_1D78B5C44();

    v7 = [v4 initWithClientIdentifier:v5 teamIdentifier:v6];

    return v7;
  }

  else
  {

    return sub_1D7832CE8(a1, a2);
  }
}

id sub_1D7832CE8(uint64_t a1, uint64_t a2)
{
  result = [*(v2 + 16) configuration];
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      v7 = [v6 channelUpsellConfigsByChannelID];
      swift_unknownObjectRelease();
      sub_1D77895D8();
      v8 = sub_1D78B5BC4();

      if (*(v8 + 16))
      {
        v9 = sub_1D777BBB4(a1, a2);
        if (v10)
        {
          v11 = *(*(v8 + 56) + 8 * v9);

          v12 = [v11 siwaPurchaseConfiguration];

          return v12;
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

unint64_t sub_1D7832E10()
{
  result = qword_1EC9CAC78;
  if (!qword_1EC9CAC78)
  {
    type metadata accessor for SIWAPurchaseConfigProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAC78);
  }

  return result;
}

uint64_t sub_1D7832E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D78B6814();
  sub_1D78B5D14();
  v6 = sub_1D78B6844();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D78B6724() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void PaywallTypeProvider.paywallType(for:)(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = [v5 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v7 = [a1 asSection];
    if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_7;
    }
  }

  else
  {
    v8 = [a1 identifier];
  }

  v9 = sub_1D78B5C74();
  v11 = v10;

  v12 = [v6 purchasedTagIDs];
  v13 = sub_1D78B5F64();

  LOBYTE(v12) = sub_1D7832E64(v9, v11, v13);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v12)
  {
LABEL_30:
    v23 = 96;
LABEL_42:
    *a2 = v23;
    return;
  }

LABEL_7:
  v14 = [objc_msgSend(v5 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {
    sub_1D7756B84(&v34);
    goto LABEL_15;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v15 = 0;
    v17 = 0;
    goto LABEL_16;
  }

  v15 = v31;
  v16 = [v31 integerValue];
  if (v16 == -1)
  {

    goto LABEL_27;
  }

  v17 = v16;
LABEL_16:
  if (objc_getAssociatedObject(v14, ~v17))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {
    sub_1D7756B84(&v34);
LABEL_24:

    if ((v17 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v18 = v31;
  v19 = [v18 integerValue];

  if (((v19 ^ v17) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  v20 = [objc_msgSend(v5 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v21 = [a1 identifier];
  if (!v21)
  {
    sub_1D78B5C74();
    v21 = sub_1D78B5C44();
  }

  v22 = [v20 containsTagID_];

  if (v22)
  {
    goto LABEL_30;
  }

LABEL_31:
  v24 = [*(v2 + 24) cachedSubscription];
  v25 = [a1 identifier];
  if (!v25)
  {
    sub_1D78B5C74();
    v25 = sub_1D78B5C44();
  }

  v26 = [v24 containsTagID_];

  if (!v26)
  {
    goto LABEL_39;
  }

  v27 = [*(v2 + 16) configuration];
  if (v27)
  {
    v28 = v27;
    if ([v27 respondsToSelector_])
    {
      v29 = [v28 paidBundleConfig];
      swift_unknownObjectRelease();
      v30 = [v29 areMagazinesEnabled];

      if (v30)
      {
        v23 = 97;
        goto LABEL_42;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_39:
    if ([a1 isPurchaseSetup])
    {
      v23 = 32;
    }

    else
    {
      v23 = 96;
    }

    goto LABEL_42;
  }

  __break(1u);
}

{
  if ([a1 isDraft])
  {
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v5 = sub_1D78B4304();
    __swift_project_value_buffer(v5, qword_1EE09C1F0);
    v6 = sub_1D78B42E4();
    v7 = sub_1D78B60A4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D7739000, v6, v7, "No paywall for draft recipes", v8, 2u);
      MEMORY[0x1DA7043F0](v8, -1, -1);
    }

    v9 = 96;
  }

  else
  {
    v9 = 96;
    if ([a1 isPaid])
    {
      __swift_project_boxed_opaque_existential_1((v2 + 120), *(v2 + 144));
      if (sub_1D78B59E4())
      {
        v9 = 96;
      }

      else
      {
        v9 = 64;
      }
    }
  }

  *a2 = v9;
}

uint64_t PaywallTypeProvider.paywallType(for:articleAccess:evaluateOnly:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v8 = *a2;
  if (qword_1EE095550 != -1)
  {
    swift_once();
  }

  sub_1D7834ED0();
  result = sub_1D78B3574();
  if ((v16[1] & 1) != 0 || !a1)
  {
    goto LABEL_11;
  }

  if ([swift_unknownObjectRetain() isDraft] || (v10 = objc_msgSend(a1, sel_sourceChannel)) == 0)
  {
LABEL_10:
    result = swift_unknownObjectRelease();
LABEL_11:
    *a4 = 96;
    return result;
  }

  v11 = v10;
  v15 = v8;
  sub_1D7833614(a1, v10, &v15, a3 & 1, v16);
  v12 = v16[0];
  if (v16[0] == 96)
  {
    v13 = [objc_msgSend(*(v4 + 112) appConfiguration)];
    swift_unknownObjectRelease();
    if (v13)
    {
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    v14 = v8;
    sub_1D7833D0C(a1, v11, &v14, a3 & 1, a4);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    *a4 = v12;
  }

  return result;
}

void sub_1D7833614(void *a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v10 = *a3;
  v11 = [*(v5 + 16) configuration];
  if (v11)
  {
    v12 = v11;
    if (([v11 respondsToSelector_] & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_66;
    }

    v13 = [v12 paidBundleConfig];
    swift_unknownObjectRelease();
    if ((sub_1D7834A44(v13) & 1) == 0)
    {
LABEL_65:

      goto LABEL_66;
    }

    v49 = v10;
    v50 = a4;
    v14 = *(v5 + 48);
    v15 = [v14 purchaseProvider];
    v51 = a1;
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v16 = [a2 asSection];
      if (!v16 || (v17 = [v16 parentID], swift_unknownObjectRelease(), !v17))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    else
    {
      v17 = [a2 identifier];
    }

    v18 = sub_1D78B5C74();
    v20 = v19;

    v21 = [v15 purchasedTagIDs];
    v22 = sub_1D78B5F64();

    LOBYTE(v18) = sub_1D7832E64(v18, v20, v22);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v18)
    {
      goto LABEL_65;
    }

LABEL_11:
    v23 = [objc_msgSend(v14 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v23, v23 + 1))
    {
      sub_1D78B6304();
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    v55 = v53;
    v56 = v54;
    if (*(&v54 + 1))
    {
      sub_1D77BFFAC();
      if (swift_dynamicCast())
      {
        v24 = v52;
        v25 = [v52 integerValue];
        if (v25 == -1)
        {

          goto LABEL_31;
        }

        v26 = v25;
LABEL_20:
        if (objc_getAssociatedObject(v23, ~v26))
        {
          sub_1D78B6304();
          swift_unknownObjectRelease();
        }

        else
        {
          v53 = 0u;
          v54 = 0u;
        }

        v55 = v53;
        v56 = v54;
        if (*(&v54 + 1))
        {
          sub_1D77BFFAC();
          if (swift_dynamicCast())
          {
            v27 = v52;
            v28 = [v27 integerValue];

            if (((v28 ^ v26) & 1) == 0)
            {
              goto LABEL_34;
            }

            goto LABEL_31;
          }
        }

        else
        {
          sub_1D7756B84(&v55);
        }

        if ((v26 & 1) == 0)
        {
LABEL_34:
          if ([v51 respondsToSelector_] & 1) == 0 || !objc_msgSend(v51, sel_isBundlePaid) || (v32 = objc_msgSend(*(v5 + 24), sel_cachedSubscription), v33 = objc_msgSend(v32, sel_containsHeadline_, v51), v32, (v33))
          {
            v34 = [*(v5 + 24) cachedSubscription];
            v35 = [a2 identifier];
            if (!v35)
            {
              sub_1D78B5C74();
              v35 = sub_1D78B5C44();
            }

            v36 = [v34 containsTagID_];

            if (v36)
            {
              if (([v51 respondsToSelector_] & 1) == 0 || (v37 = objc_msgSend(v51, sel_role), v37 > 7) || ((1 << v37) & 0x98) == 0)
              {
                v38 = [v51 respondsToSelector_];
                if (v38)
                {
                  v39 = [v51 role];
                }

                else
                {
                  v39 = 0;
                }

                if (sub_1D7834B88(v39, (v38 & 1) == 0, a2))
                {

                  v40 = 0;
LABEL_67:
                  *a5 = v40;
                  return;
                }

                if (([v51 respondsToSelector_] & 1) != 0 && objc_msgSend(v51, sel_isBundlePaid))
                {
                  v41 = *(v5 + 40);
                  ObjectType = swift_getObjectType();
                  LOBYTE(v55) = v49;
                  v43 = (*(v41 + 8))(v51, &v55, ObjectType, v41);

                  v40 = v49 != 2;
                  if (v49 == 2)
                  {
                    v44 = 16;
                  }

                  else
                  {
                    v44 = 17;
                  }

                  if (v43)
                  {
                    v40 = v44;
                  }

                  goto LABEL_67;
                }

                v45 = *(v5 + 64);
                v46 = swift_getObjectType();
                if ((*(v45 + 8))(v51, v50 & 1, v46, v45))
                {
                  if (([v51 respondsToSelector_] & 1) != 0 && objc_msgSend(v51, sel_showBundleSoftPaywall))
                  {

                    v47 = v49;
                    goto LABEL_62;
                  }

                  v47 = v49;
                  if ([v51 respondsToSelector_])
                  {
                    v48 = [v51 hasAudioTrack];

                    if (v48)
                    {
LABEL_62:
                      if (v47 == 2)
                      {
                        v40 = 16;
                      }

                      else
                      {
                        v40 = 17;
                      }

                      goto LABEL_67;
                    }

LABEL_66:
                    v40 = 96;
                    goto LABEL_67;
                  }
                }
              }
            }
          }

          goto LABEL_65;
        }

LABEL_31:
        v29 = [objc_msgSend(v14 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v30 = [a2 identifier];
        if (!v30)
        {
          sub_1D78B5C74();
          v30 = sub_1D78B5C44();
        }

        v31 = [v29 containsTagID_];

        if (v31)
        {
          goto LABEL_65;
        }

        goto LABEL_34;
      }
    }

    else
    {
      sub_1D7756B84(&v55);
    }

    v24 = 0;
    v26 = 0;
    goto LABEL_20;
  }

  __break(1u);
}

void sub_1D7833D0C(void *a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned int a4@<W3>, char *a5@<X8>)
{
  v10 = *a3;
  if ((sub_1D7834C6C() & 1) == 0)
  {
    goto LABEL_42;
  }

  v11 = v5[6];
  v12 = [objc_msgSend(v11 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v13 = [a2 identifier];
  if (!v13)
  {
    sub_1D78B5C74();
    v13 = sub_1D78B5C44();
  }

  v14 = [v12 containsTagID_];

  if ((v14 & 1) != 0 || ![a2 isPurchaseSetup])
  {
    goto LABEL_42;
  }

  v15 = [v11 purchaseProvider];
  v39 = __PAIR64__(a4, v10);
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v16 = [a2 asSection];
    if (!v16 || (v17 = [v16 parentID], swift_unknownObjectRelease(), !v17))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_12;
    }
  }

  else
  {
    v17 = [a2 identifier];
  }

  v18 = sub_1D78B5C74();
  v20 = v19;

  v21 = [v15 purchasedTagIDs];
  v22 = sub_1D78B5F64();

  LOBYTE(v21) = sub_1D7832E64(v18, v20, v22);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v21)
  {
    goto LABEL_42;
  }

LABEL_12:
  v23 = [objc_msgSend(v11 bundleSubscriptionProvider];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v23, v23 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  if (!*(&v44 + 1))
  {
    sub_1D7756B84(&v45);
    goto LABEL_20;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v24 = 0;
    v26 = 0;
LABEL_21:
    if (objc_getAssociatedObject(v23, ~v26))
    {
      sub_1D78B6304();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    v45 = v43;
    v46 = v44;
    if (*(&v44 + 1))
    {
      sub_1D77BFFAC();
      if (swift_dynamicCast())
      {
        v27 = v42;
        v28 = [v27 integerValue];

        v29 = v41;
        if (((v28 ^ v26) & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }
    }

    else
    {
      sub_1D7756B84(&v45);
    }

    v29 = v41;
    if ((v26 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v24 = v42;
  v25 = [v42 integerValue];
  if (v25 != -1)
  {
    v26 = v25;
    goto LABEL_21;
  }

  v29 = v41;
LABEL_32:
  v30 = [objc_msgSend(v11 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v31 = [a2 identifier];
  if (!v31)
  {
    sub_1D78B5C74();
    v31 = sub_1D78B5C44();
  }

  v32 = [v30 containsTagID_];

  if (v32)
  {
    goto LABEL_42;
  }

LABEL_35:
  if ([a1 isPaid])
  {
    v33 = v40 != 2;
    v34 = v5[5];
    ObjectType = swift_getObjectType();
    LOBYTE(v45) = v40;
    if ((*(v34 + 8))(a1, &v45, ObjectType, v34))
    {
      v36 = v33 | 0x20;
    }

    else
    {
      v36 = v33 | 0x30;
    }

    goto LABEL_43;
  }

  v37 = v5[12];
  v38 = v5[13];
  __swift_project_boxed_opaque_existential_1(v5 + 9, v37);
  if (((*(v38 + 8))(a1, v29 & 1, v37, v38) & 1) == 0)
  {
LABEL_42:
    v36 = 96;
    goto LABEL_43;
  }

  if (v40 == 2)
  {
    v36 = 32;
  }

  else
  {
    v36 = 33;
  }

LABEL_43:
  *a5 = v36;
}

uint64_t PaywallTypeProvider.needsBundlePaywall(for:)(void *a1)
{
  if (qword_1EE095550 != -1)
  {
    swift_once();
  }

  sub_1D7834ED0();
  sub_1D78B3574();
  result = 0;
  if ((v34 & 1) == 0 && a1)
  {
    v4 = [swift_unknownObjectRetain() sourceChannel];
    if (!v4)
    {
      goto LABEL_23;
    }

    v5 = v4;
    if (([a1 respondsToSelector_] & 1) == 0 || (v6 = objc_msgSend(a1, sel_role), v6 > 7) || ((1 << v6) & 0x98) == 0)
    {
      result = [*(v1 + 16) configuration];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v7 = result;
      if (([result respondsToSelector_] & 1) == 0)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_23:
        swift_unknownObjectRelease();
        return 0;
      }

      v8 = [v7 paidBundleConfig];
      swift_unknownObjectRelease();
      if ([v8 areMagazinesEnabled])
      {
        v9 = [*(v1 + 24) cachedSubscription];
        v10 = [v5 identifier];
        if (!v10)
        {
          sub_1D78B5C74();
          v10 = sub_1D78B5C44();
        }

        v11 = [v9 containsTagID_];

        if (v11)
        {
          v12 = *(v1 + 48);
          v13 = [v12 purchaseProvider];
          if ([swift_unknownObjectRetain() tagType] == 3)
          {
            v14 = [v5 asSection];
            if (!v14 || (v15 = [v14 parentID], swift_unknownObjectRelease(), !v15))
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_29;
            }
          }

          else
          {
            v15 = [v5 identifier];
          }

          v16 = sub_1D78B5C74();
          v18 = v17;

          v19 = [v13 purchasedTagIDs];
          v20 = sub_1D78B5F64();

          LOBYTE(v19) = sub_1D7832E64(v16, v18, v20);

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          if ((v19 & 1) == 0)
          {
LABEL_29:
            v21 = [objc_msgSend(v12 bundleSubscriptionProvider)];
            swift_unknownObjectRelease();
            if (objc_getAssociatedObject(v21, v21 + 1))
            {
              sub_1D78B6304();
              swift_unknownObjectRelease();
            }

            else
            {
              v32 = 0u;
              v33 = 0u;
            }

            v34 = v32;
            v35 = v33;
            if (*(&v33 + 1))
            {
              sub_1D77BFFAC();
              if (swift_dynamicCast())
              {
                v22 = v31;
                v23 = [v31 integerValue];
                if (v23 == -1)
                {

                  v27 = &selRef_isUserSignedIntoiTunes;
                  goto LABEL_49;
                }

                v24 = v23;
LABEL_38:
                if (objc_getAssociatedObject(v21, ~v24))
                {
                  sub_1D78B6304();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v32 = 0u;
                  v33 = 0u;
                }

                v34 = v32;
                v35 = v33;
                if (*(&v33 + 1))
                {
                  sub_1D77BFFAC();
                  if (swift_dynamicCast())
                  {
                    v25 = v31;
                    v26 = [v25 integerValue];

                    v27 = &selRef_isUserSignedIntoiTunes;
                    if ((v26 ^ v24))
                    {
LABEL_49:
                      v28 = [objc_msgSend(v12 bundleSubscriptionProvider)];
                      swift_unknownObjectRelease();
                      v29 = [v5 identifier];
                      if (!v29)
                      {
                        sub_1D78B5C74();
                        v29 = sub_1D78B5C44();
                      }

                      v30 = [v28 v27[128]];

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();

                      return (v30 & 1) == 0;
                    }

LABEL_47:
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();

                    return 1;
                  }
                }

                else
                {
                  sub_1D7756B84(&v34);
                }

                v27 = &selRef_isUserSignedIntoiTunes;
                if (v24)
                {
                  goto LABEL_49;
                }

                goto LABEL_47;
              }
            }

            else
            {
              sub_1D7756B84(&v34);
            }

            v22 = 0;
            v24 = 0;
            goto LABEL_38;
          }
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return 0;
      }
    }

    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  return result;
}

uint64_t PaywallTypeProvider.paywallType(for:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = [a1 isPaid];
  v6 = 96;
  if (result)
  {
    v7 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    result = (*(v7 + 16))(a1, ObjectType, v7);
    if (result)
    {
      v6 = 96;
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1D7834A44(void *a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1D78B5C74();
  v6 = v5;

  v7 = v4 == 0xD000000000000010 && 0x80000001D78CF0A0 == v6;
  if (v7 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  if (v4 == 0x6C7070612E6D6F63 && v6 == 0xEE007377656E2E65)
  {
  }

  else
  {
    v10 = sub_1D78B6724();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return [a1 areMagazinesEnabled];
}

id sub_1D7834B88(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    return 0;
  }

  result = [*(v3 + 16) configuration];
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      v8 = [v7 paidBundleConfig];
      swift_unknownObjectRelease();
      v9 = [v8 requiresHardPaywallForIssuesToC];

      v10 = v9 ^ 1;
    }

    else
    {
      swift_unknownObjectRelease();
      v10 = 0;
    }

    result = 0;
    if (a1 == 2 && (v10 & 1) == 0)
    {
      return ([a3 isSandbox] ^ 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7834C6C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1D78B5C74();
  v4 = v3;

  v5 = v2 == 0xD000000000000010 && 0x80000001D78CF0A0 == v4;
  if (v5 || (sub_1D78B6724() & 1) != 0 || (v2 == 0x6C7070612E6D6F63 ? (v6 = v4 == 0xEE007377656E2E65) : (v6 = 0), v6))
  {

    return 1;
  }

  else
  {
    v7 = sub_1D78B6724();

    return v7 & 1;
  }
}

uint64_t PaywallTypeProvider.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  return v0;
}

uint64_t PaywallTypeProvider.__deallocating_deinit()
{
  PaywallTypeProvider.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D7834ED0()
{
  result = qword_1EE093CE0;
  if (!qword_1EE093CE0)
  {
    type metadata accessor for PaywallTypeProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093CE0);
  }

  return result;
}

uint64_t dispatch thunk of PaywallTypeProviderType.paywallType(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 32))();
}

{
  return (*(a3 + 40))();
}

id PaywallDataManager.hideMyEmailConfig(paywallModel:)(__int128 *a1)
{
  sub_1D7835FFC(v1 + 16, &v17, &qword_1EE090C68, qword_1EE095850, &protocol descriptor for HideMyEmailSignupConfigProviderType);
  if (*(&v18 + 1))
  {
    sub_1D7741E34(&v17, v33);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    v3 = a1[13];
    v29 = a1[12];
    v30 = v3;
    v4 = a1[15];
    v31 = a1[14];
    v32 = v4;
    v5 = a1[9];
    v25 = a1[8];
    v26 = v5;
    v6 = a1[11];
    v27 = a1[10];
    v28 = v6;
    v7 = a1[5];
    v21 = a1[4];
    v22 = v7;
    v8 = a1[7];
    v23 = a1[6];
    v24 = v8;
    v9 = a1[1];
    v17 = *a1;
    v18 = v9;
    v10 = a1[3];
    v19 = a1[2];
    v20 = v10;
    v11 = [PaywallModel.tag.getter() identifier];
    swift_unknownObjectRelease();
    v12 = sub_1D78B5C74();
    v14 = v13;

    v15 = sub_1D7788F60(v12, v14);

    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_1D7836080(&v17, &qword_1EE090C68, qword_1EE095850, &protocol descriptor for HideMyEmailSignupConfigProviderType);
    return 0;
  }

  return v15;
}

double PaywallDataManager.__allocating_init(account:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  return result;
}

uint64_t PaywallDataManager.init(account:)(uint64_t a1)
{
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v1 + 56) = a1;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  return v1;
}

uint64_t PaywallDataManager.hideMyEmailDataModel(for:paywallModel:)(uint64_t a1, __int128 *a2)
{
  v5 = *v2;
  v6 = type metadata accessor for PurchaseContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = a2[13];
  v70 = a2[12];
  v71 = v9;
  v10 = a2[15];
  v72 = a2[14];
  v73 = v10;
  v11 = a2[9];
  v66 = a2[8];
  v67 = v11;
  v12 = a2[11];
  v68 = a2[10];
  v69 = v12;
  v13 = a2[5];
  v62 = a2[4];
  v63 = v13;
  v14 = a2[7];
  v64 = a2[6];
  v65 = v14;
  v15 = a2[1];
  v58 = *a2;
  v59 = v15;
  v16 = a2[3];
  v60 = a2[2];
  v61 = v16;
  v17 = PaywallDataManager.hideMyEmailConfig(paywallModel:)(a2);
  if (v17)
  {
    v18 = v17;
    sub_1D7835FFC((v2 + 8), &v42, qword_1EE093688, &unk_1EE095CD0, &protocol descriptor for HideMyEmailServiceType);
    if (*(&v43 + 1))
    {
      v19 = sub_1D7741E34(&v42, v41);
      v40 = v5;
      MEMORY[0x1EEE9AC00](v19);
      *(&v40 - 2) = v41;
      *(&v40 - 1) = a1;
      sub_1D78B41F4();
      sub_1D7770378(a1, &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
      v20 = (*(v7 + 80) + 272) & ~*(v7 + 80);
      v21 = swift_allocObject();
      v22 = v71;
      v21[13] = v70;
      v21[14] = v22;
      v23 = v73;
      v21[15] = v72;
      v21[16] = v23;
      v24 = v67;
      v21[9] = v66;
      v21[10] = v24;
      v25 = v69;
      v21[11] = v68;
      v21[12] = v25;
      v26 = v63;
      v21[5] = v62;
      v21[6] = v26;
      v27 = v65;
      v21[7] = v64;
      v21[8] = v27;
      v28 = v59;
      v21[1] = v58;
      v21[2] = v28;
      v29 = v61;
      v21[3] = v60;
      v21[4] = v29;
      sub_1D777044C(&v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v21 + v20);
      *(v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
      sub_1D7772AE8(&v58, &v42);
      v30 = v18;
      v31 = sub_1D78B4014();
      type metadata accessor for HideMyEmailSignupDataModel();
      v32 = sub_1D78B40B4();

      __swift_destroy_boxed_opaque_existential_1(v41);
      return v32;
    }

    sub_1D7836080(&v42, qword_1EE093688, &unk_1EE095CD0, &protocol descriptor for HideMyEmailServiceType);
  }

  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  sub_1D783561C(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D78BCAB0;
  v54 = v70;
  v55 = v71;
  v56 = v72;
  v57 = v73;
  v50 = v66;
  v51 = v67;
  v52 = v68;
  v53 = v69;
  v46 = v62;
  v47 = v63;
  v48 = v64;
  v49 = v65;
  v42 = v58;
  v43 = v59;
  v44 = v60;
  v45 = v61;
  v35 = [PaywallModel.tag.getter() identifier];
  swift_unknownObjectRelease();
  v36 = sub_1D78B5C74();
  v38 = v37;

  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = sub_1D775ABD4();
  *(v34 + 32) = v36;
  *(v34 + 40) = v38;
  sub_1D78B60A4();
  sub_1D78B42C4();

  sub_1D7835684();
  swift_allocError();
  *v39 = 1;
  sub_1D773F114(0, &qword_1EC9C95B0, type metadata accessor for HideMyEmailSignupDataModel, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B40F4();
}

void sub_1D783561C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773C9B8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D7835684()
{
  result = qword_1EC9CAC80;
  if (!qword_1EC9CAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAC80);
  }

  return result;
}

uint64_t sub_1D78356D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  return sub_1D7867148(*(v2 + 40), *(v2 + 48));
}

id sub_1D7835718@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v6 = a1[1];
  v28 = *a1;
  v21 = a1[3];
  v7 = a1[5];
  v25 = a1[4];
  v26 = a1[2];
  v8 = a1[7];
  v24 = a1[6];
  v9 = *(a2 + 56);
  v10 = [v9 appStoreEmailAddress];
  if (v10)
  {
    v11 = v10;
    v22 = sub_1D78B5C74();
    v13 = v12;
  }

  else
  {
    v14 = [v9 allEmailAddresses];
    v15 = sub_1D78B5EB4();

    if (v15[2])
    {
      v13 = v15[5];
      v22 = v15[4];
    }

    else
    {

      v22 = v28;
      v13 = v6;
    }
  }

  v16 = [v9 &selRef_paywallDescription + 7];
  v17 = sub_1D78B5EB4();

  v18 = PaywallModel.tag.getter();
  v19 = type metadata accessor for HideMyEmailSignupDataModel();
  sub_1D7770378(a3, a5 + *(v19 + 40));
  *a5 = 2;
  *(a5 + 8) = v22;
  *(a5 + 16) = v13;
  *(a5 + 24) = v17;
  *(a5 + 32) = v28;
  *(a5 + 40) = v6;
  *(a5 + 48) = v26;
  *(a5 + 56) = v21;
  *(a5 + 64) = v25;
  *(a5 + 72) = v7;
  *(a5 + 80) = v24;
  *(a5 + 88) = v8;
  *(a5 + 96) = 0;
  *(a5 + 104) = v18;
  *(a5 + *(v19 + 44)) = a4;
  return a4;
}

id sub_1D7835940@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for PurchaseContext() - 8);
  v8 = (*(v7 + 80) + 272) & ~*(v7 + 80);
  return sub_1D7835718(a1, a2, v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), a3);
}

uint64_t PaywallDataManager.purchaseContext(paywallModel:purchaseID:purchaseSessionID:tracker:postPurchaseDestination:isDirectBuy:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v140 = a7;
  v56 = a5;
  sub_1D773F114(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v45 - v16;
  v18 = a1[13];
  v136 = a1[12];
  v137 = v18;
  v19 = a1[15];
  v138 = a1[14];
  v139 = v19;
  v20 = a1[9];
  v132 = a1[8];
  v133 = v20;
  v21 = a1[11];
  v134 = a1[10];
  v135 = v21;
  v22 = a1[5];
  v128 = a1[4];
  v129 = v22;
  v23 = a1[7];
  v130 = a1[6];
  v131 = v23;
  v24 = a1[1];
  v124 = *a1;
  v125 = v24;
  v25 = a1[3];
  v126 = a1[2];
  v127 = v25;
  result = sub_1D7835EF4(*a2, a2[1]);
  if (!v8)
  {
    v50 = v27;
    v51 = result;
    v52 = v17;
    v53 = a3;
    v28 = a6;
    v54 = a4;
    v55 = 0;
    v120 = v136;
    v121 = v137;
    v122 = v138;
    v123 = v139;
    v117 = v133;
    v118 = v134;
    v119 = v135;
    v112 = v128;
    v113 = v129;
    v114 = v130;
    v115 = v131;
    v116 = v132;
    v108 = v124;
    v109 = v125;
    v110 = v126;
    v111 = v127;
    v49 = PaywallModel.purchaseType.getter();
    v104 = v136;
    v105 = v137;
    v106 = v138;
    v107 = v139;
    v100 = v132;
    v101 = v133;
    v102 = v134;
    v103 = v135;
    v96 = v128;
    v97 = v129;
    v98 = v130;
    v99 = v131;
    v92 = v124;
    v93 = v125;
    v94 = v126;
    v95 = v127;
    v29 = [PaywallModel.tag.getter() identifier];
    swift_unknownObjectRelease();
    v30 = sub_1D78B5C74();
    v47 = v31;
    v48 = v30;

    v88 = v136;
    v89 = v137;
    v90 = v138;
    v91 = v139;
    v84 = v132;
    v85 = v133;
    v86 = v134;
    v87 = v135;
    v80 = v128;
    v81 = v129;
    v82 = v130;
    v83 = v131;
    v76 = v124;
    v77 = v125;
    v78 = v126;
    v79 = v127;
    v46 = [PaywallModel.tag.getter() publisherPaidWebAccessOptIn];
    swift_unknownObjectRelease();
    v72 = v136;
    v73 = v137;
    v74 = v138;
    v75 = v139;
    v68 = v132;
    v69 = v133;
    v70 = v134;
    v71 = v135;
    v64 = v128;
    v65 = v129;
    v66 = v130;
    v67 = v131;
    v60 = v124;
    v61 = v125;
    v62 = v126;
    v63 = v127;
    PaywallModel.conversionLocation.getter(&v141);
    v45 = v141;
    sub_1D7835FFC(v56, v57, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
    v32 = v58;
    if (v58)
    {
      v33 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v34 = (*(v33 + 8))(v32, v33);
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    else
    {
      sub_1D7836080(v57, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
      v34 = MEMORY[0x1E69E7CC0];
    }

    v35 = type metadata accessor for PurchaseContext();
    sub_1D78360F0(v28, a8 + v35[13]);
    v36 = sub_1D78B3294();
    v37 = *(*(v36 - 8) + 56);
    v38 = v52;
    v37(v52, 1, 1, v36);
    v39 = v35[16];
    v37((a8 + v39), 1, 1, v36);
    v40 = v50;
    *a8 = v51;
    *(a8 + 8) = v40;
    v42 = v53;
    v41 = v54;
    *(a8 + 16) = v49;
    *(a8 + 24) = v42;
    v43 = v47;
    v44 = v48;
    *(a8 + 32) = v41;
    *(a8 + 40) = v44;
    *(a8 + 48) = v43;
    LOBYTE(v43) = v45;
    *(a8 + 56) = v46;
    *(a8 + 57) = v43;
    *(a8 + 64) = v34;
    *(a8 + 58) = 0;
    *(a8 + 72) = 0u;
    *(a8 + 88) = 0u;
    *(a8 + 104) = 0u;
    *(a8 + 120) = 2;
    *(a8 + v35[14]) = 0;
    *(a8 + v35[15]) = v140 & 1;

    return sub_1D77B44C4(v38, a8 + v39);
  }

  return result;
}

uint64_t sub_1D7835EF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  v3 = PaywallModel.purchaseIDs.getter();
  if (!v3)
  {
LABEL_7:
    sub_1D7835684();
    a1 = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    return a1;
  }

  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  a1 = *(v3 + 32);

LABEL_2:

  return a1;
}

uint64_t sub_1D7835FFC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D783561C(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D7836080(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D783561C(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D78360F0(uint64_t a1, uint64_t a2)
{
  sub_1D773F114(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PaywallDataManager.deinit()
{
  sub_1D7836080(v0 + 16, &qword_1EE090C68, qword_1EE095850, &protocol descriptor for HideMyEmailSignupConfigProviderType);

  sub_1D7836080(v0 + 64, qword_1EE093688, &unk_1EE095CD0, &protocol descriptor for HideMyEmailServiceType);
  return v0;
}

uint64_t PaywallDataManager.__deallocating_deinit()
{
  sub_1D7836080(v0 + 16, &qword_1EE090C68, qword_1EE095850, &protocol descriptor for HideMyEmailSignupConfigProviderType);

  sub_1D7836080(v0 + 64, qword_1EE093688, &unk_1EE095CD0, &protocol descriptor for HideMyEmailServiceType);

  return swift_deallocClassInstance();
}

unint64_t sub_1D7836340()
{
  result = qword_1EC9CAC88;
  if (!qword_1EC9CAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAC88);
  }

  return result;
}

void sub_1D7836394(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D78B3394();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v91 - v9;
  if (!a1)
  {
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v36 = sub_1D78B4304();
    __swift_project_value_buffer(v36, qword_1EE09C1F0);
    v98 = sub_1D78B42E4();
    v37 = sub_1D78B60A4();
    if (!os_log_type_enabled(v98, v37))
    {
      goto LABEL_25;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Oslo abandonment occurred for à la carte subscription. No upsell will be displayed.";
    goto LABEL_24;
  }

  v11 = [*(v2 + 16) configuration];
  if (!v11)
  {
    __break(1u);
    return;
  }

  v12 = v11;
  if (([v11 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_20:
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v40 = sub_1D78B4304();
    __swift_project_value_buffer(v40, qword_1EE09C1F0);
    v98 = sub_1D78B42E4();
    v37 = sub_1D78B60A4();
    if (!os_log_type_enabled(v98, v37))
    {
      goto LABEL_25;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Failed to retrieve oslo abandonment upsell article ID from config. No upsell will be displayed.";
LABEL_24:
    _os_log_impl(&dword_1D7739000, v98, v37, v39, v38, 2u);
    MEMORY[0x1DA7043F0](v38, -1, -1);
LABEL_25:
    v41 = v98;

    return;
  }

  v13 = [v12 paidBundleConfig];
  swift_unknownObjectRelease();
  v14 = [v13 osloAbandonmentUpsellArticleID];
  if (!v14)
  {

    goto LABEL_20;
  }

  v15 = v14;
  v16 = sub_1D78B5C74();
  v96 = v17;

  sub_1D78371B0();
  sub_1D78B3384();
  sub_1D78B3304();
  v19 = v18;
  v21 = *(v5 + 8);
  v20 = v5 + 8;
  v97 = v21;
  v21(v8, v4);
  if (qword_1EE08E648 != -1)
  {
    swift_once();
  }

  v22 = sub_1D78B4304();
  v23 = __swift_project_value_buffer(v22, qword_1EE09C1F0);
  sub_1D776BA64();
  sub_1D776BA64();
  v98 = v23;
  v24 = sub_1D78B42E4();
  v25 = sub_1D78B60A4();
  v26 = os_log_type_enabled(v24, v25);
  v93 = v16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 68157952;
    *(v27 + 4) = 2;
    *(v27 + 8) = 2048;
    *(v27 + 10) = v19;
    _os_log_impl(&dword_1D7739000, v24, v25, "Time interval elapsed since last displayed oslo abandonment upsell: %.*f.", v27, 0x12u);
    MEMORY[0x1DA7043F0](v27, -1, -1);
  }

  v28 = [v13 osloAbandonmentUpsellQuiescenceInterval];
  sub_1D776BA64();
  sub_1D776BA64();
  v29 = sub_1D78B42E4();
  v30 = sub_1D78B60A4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 68157952;
    *(v31 + 4) = 2;
    *(v31 + 8) = 2048;
    *(v31 + 10) = v28;
    _os_log_impl(&dword_1D7739000, v29, v30, "Minimum time interval between presentations: %.*f.", v31, 0x12u);
    MEMORY[0x1DA7043F0](v31, -1, -1);
  }

  if (v19 < v28)
  {

    v32 = sub_1D78B42E4();
    v33 = sub_1D78B60A4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "The oslo abandonment upsell cannot be presented because the time since its last presentation is too short.";
LABEL_69:
      _os_log_impl(&dword_1D7739000, v32, v33, v35, v34, 2u);
      MEMORY[0x1DA7043F0](v34, -1, -1);
      goto LABEL_70;
    }

    goto LABEL_70;
  }

  if (qword_1EC9C8738 != -1)
  {
    swift_once();
  }

  v95 = sub_1D78374E0(&qword_1EC9CAC90);
  sub_1D78B3574();
  if (v99 == 1)
  {
    v42 = sub_1D78B42E4();
    v43 = sub_1D78B6084();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v13;
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = v45;
      v13 = v44;
      MEMORY[0x1DA7043F0](v46, -1, -1);
    }

    if (qword_1EC9C8730 != -1)
    {
      swift_once();
    }

    v99 = 0;
    v100 = 0xE000000000000000;
    sub_1D78374E0(&unk_1EC9CACA0);
    sub_1D78B3724();
    LOBYTE(v99) = 0;
    sub_1D78B3724();
  }

  if (qword_1EC9C8728 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v99 == 1)
  {
    v47 = sub_1D78B42E4();
    v48 = sub_1D78B6084();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = v13;
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = v50;
      v13 = v49;
      MEMORY[0x1DA7043F0](v51, -1, -1);
    }

    if (qword_1EC9C8718 != -1)
    {
      swift_once();
    }

    v99 = 0;
    sub_1D78374E0(&unk_1EC9CACA0);
    sub_1D78B3724();
    LOBYTE(v99) = 0;
    sub_1D78B3724();
  }

  v94 = v20;
  v52 = *(v2 + 88);
  v53 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 64), v52);
  v92 = v13;
  v54 = [v13 osloAbandonmentUpsellInstanceID];
  v55 = sub_1D78B5C74();
  v57 = v56;

  v58 = (*(v53 + 8))(v55, v57, v52, v53);
  LOBYTE(v55) = v59;

  if (v55)
  {
    v60 = 0;
  }

  else
  {
    v60 = v58;
  }

  v61 = *(v2 + 88);
  v62 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 64), v61);
  if (qword_1EC9C8730 != -1)
  {
    swift_once();
  }

  v91 = qword_1EC9CB7E8;
  sub_1D78B3574();
  v63 = (*(v62 + 8))(v99, v100, v61, v62);
  v65 = v64;

  if (v65)
  {
    v66 = 0;
  }

  else
  {
    v66 = v63;
  }

  v67 = sub_1D78B42E4();
  v68 = sub_1D78B60A4();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 134218240;
    *(v69 + 4) = v66;
    *(v69 + 12) = 2048;
    *(v69 + 14) = v60;
    _os_log_impl(&dword_1D7739000, v67, v68, "Last seen oslo abandonment upsell version: %ld | Config oslo abandonment upsell version: %ld", v69, 0x16u);
    MEMORY[0x1DA7043F0](v69, -1, -1);
  }

  v13 = v92;
  if (v66 < v60)
  {
    v70 = sub_1D78B42E4();
    v71 = sub_1D78B60A4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_1D7739000, v70, v71, "Resetting oslo abandonment presentation count and updating last seen instance ID since config version is higher than last seen version.", v72, 2u);
      MEMORY[0x1DA7043F0](v72, -1, -1);
    }

    if (qword_1EC9C8718 != -1)
    {
      swift_once();
    }

    v99 = 0;
    sub_1D78374E0(&unk_1EC9CACA0);
    sub_1D78B3724();
    v73 = [v13 osloAbandonmentUpsellInstanceID];
    v74 = sub_1D78B5C74();
    v76 = v75;

    v99 = v74;
    v100 = v76;
    sub_1D78B3724();
  }

  if (qword_1EC9C8718 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v77 = v99;
  v78 = sub_1D78B42E4();
  v79 = sub_1D78B60A4();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 134217984;
    *(v80 + 4) = v77;
    _os_log_impl(&dword_1D7739000, v78, v79, "Number of times the user has seen the oslo abandonment upsell: %ld).", v80, 0xCu);
    MEMORY[0x1DA7043F0](v80, -1, -1);
  }

  v81 = [v13 osloAbandonmentUpsellMaxPresentationCount];
  v82 = v96;
  if (v77 >= v81)
  {

    v32 = sub_1D78B42E4();
    v33 = sub_1D78B60A4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "The oslo abandonment upsell cannot be presented because the user has already seen it the maximum number of times.";
      goto LABEL_69;
    }

LABEL_70:

    v97(v10, v4);
    return;
  }

  v83 = sub_1D78B42E4();
  v84 = sub_1D78B60A4();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v99 = v86;
    *v85 = 136315138;
    v87 = v93;
    *(v85 + 4) = sub_1D77AD82C(v93, v82, &v99);
    _os_log_impl(&dword_1D7739000, v83, v84, "The user is eligble for being presented with the oslo abandonment upsell. Presenting upsell with article ID %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x1DA7043F0](v86, -1, -1);
    MEMORY[0x1DA7043F0](v85, -1, -1);
  }

  else
  {

    v87 = v93;
  }

  v88 = *(v2 + 48);
  v89 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v88);
  v90 = sub_1D78374E0(&qword_1EC9CAC98);
  (*(v89 + 16))(v87, v82, 0, 0, 0, 0, v2, v90, v88, v89);

  v97(v10, v4);
}

uint64_t sub_1D78371B0()
{
  if (qword_1EC9C8720 != -1)
  {
    swift_once();
  }

  sub_1D78374E0(&qword_1EC9CAC90);
  sub_1D78B3574();
  if (v5 == 1)
  {
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v0 = sub_1D78B4304();
    __swift_project_value_buffer(v0, qword_1EE09C1F0);
    v1 = sub_1D78B42E4();
    v2 = sub_1D78B6084();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      MEMORY[0x1DA7043F0](v3, -1, -1);
    }

    sub_1D78B32E4();
    if (qword_1EC9C8710 != -1)
    {
      swift_once();
    }

    sub_1D78374E0(&unk_1EC9CACA0);
    sub_1D78B3724();
    return sub_1D78B3724();
  }

  else
  {
    if (qword_1EC9C8710 != -1)
    {
      swift_once();
    }

    return sub_1D78B3574();
  }
}

uint64_t sub_1D7837434()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1D78374E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OsloAbandonmentUpsellManager();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7837520()
{
  v0 = sub_1D78B3394();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC9C8718 != -1)
  {
    swift_once();
  }

  sub_1D78374E0(&qword_1EC9CAC90);
  sub_1D78B3574();
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  ++v6;
  sub_1D78374E0(&unk_1EC9CACA0);
  sub_1D78B3724();
  if (qword_1EC9C8710 != -1)
  {
LABEL_7:
    swift_once();
  }

  sub_1D78B3384();
  sub_1D78B3724();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D78377F0()
{

  sub_1D78B4034();

  return v1;
}

uint64_t sub_1D783783C(void **a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5 = sub_1D78B3394();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v15[1] = v9;
  v10 = v9;

  sub_1D78B4044();

  v11 = [objc_opt_self() standardUserDefaults];
  sub_1D78B3384();
  v12 = sub_1D78B3324();
  (*(v6 + 8))(v8, v5);
  v13 = sub_1D78B5C44();
  [v11 setObject:v12 forKey:v13];

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  return a3(v9);
}

uint64_t sub_1D7837A48(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D774FE1C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D775ABD4();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1D78B42C4();

  return a2(0);
}

uint64_t sub_1D7837B90()
{
  sub_1D7756490();
}

uint64_t sub_1D7837BB8()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE44800](ObjectType);
}

uint64_t PurchasingSpinner.label.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t PurchasingSpinner.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

unint64_t sub_1D7837E90()
{
  result = qword_1EC9CACE0;
  if (!qword_1EC9CACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CACE0);
  }

  return result;
}

uint64_t sub_1D7837FB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 424))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 384);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7837FF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 392) = 0u;
    *(result + 408) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 424) = 1;
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
      *(result + 384) = (a2 - 1);
      return result;
    }

    *(result + 424) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NetworkNotReachableAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t NetworkNotReachableAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t NetworkNotReachableAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t NetworkNotReachableAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D783838C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7838450()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1D78385C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 153))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 152);
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

uint64_t sub_1D7838608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 152) = -a2;
    }
  }

  return result;
}

double sub_1D783868C()
{
  v1 = v0[7];
  v6[6] = v0[6];
  v6[7] = v1;
  v7[0] = v0[8];
  *(v7 + 9) = *(v0 + 137);
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v3 = v0[5];
  v6[4] = v0[4];
  v6[5] = v3;
  v4 = v0[1];
  v6[0] = *v0;
  v6[1] = v4;
  sub_1D77CF86C(v6);
  return *(nullsub_1(v6) + 16);
}

char *sub_1D7838710(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC16NewsSubscription30HideMyEmailSignupAlternateView_email;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR____TtC16NewsSubscription30HideMyEmailSignupAlternateView_checkmark;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC16NewsSubscription30HideMyEmailSignupAlternateView_email];
  v14 = v12;
  [v14 addSubview_];
  [v14 addSubview_];

  return v14;
}

void sub_1D7838990()
{
  sub_1D7838A1C(&qword_1EC9CAC58);

  JUMPOUT(0x1DA702390);
}

uint64_t sub_1D7838A1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HideMyEmailSignupAlternateView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7838A5C(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_lastShownViewController];
  if (v3)
  {
    v9 = v3;
    sub_1D7838DCC(v9, a1);

    return;
  }

  *&v1[OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_lastShownViewController] = a1;
  v4 = a1;
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v4 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v6 addSubview_];

  [v1 addChildViewController_];

  [v4 didMoveToParentViewController_];
}

id sub_1D7838B74()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_lastShownViewController] = 0;
  v2 = &v0[OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_onDismissal];
  *v2 = 0;
  *(v2 + 1) = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  result = [v3 view];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() whiteColor];
    [v5 setBackgroundColor_];

    [v3 setModalPresentationStyle_];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7838C94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_lastShownViewController] = 0;
  v7 = &v3[OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_onDismissal];
  *v7 = a1;
  v7[1] = a2;
  sub_1D776AC18(a1);
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
  result = [v8 view];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() whiteColor];
    [v10 setBackgroundColor_];

    [v8 setModalPresentationStyle_];
    sub_1D7744A7C(a1);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7838DCC(void *a1, void *a2)
{
  [a1 willMoveToParentViewController_];
  [v2 addChildViewController_];
  v5 = [v2 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [a2 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v6 addSubview_];

  v9 = [a2 view];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v2 view];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  [v11 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v10 setFrame_];
  v21 = [a2 view];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v21;
  [v21 setAutoresizingMask_];

  v23 = [a2 view];
  if (!v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = v23;
  v25 = [v2 view];
  if (v25)
  {
    v26 = v25;
    [v25 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v47.origin.x = v28;
    v47.origin.y = v30;
    v47.size.width = v32;
    v47.size.height = v34;
    Width = CGRectGetWidth(v47);
    CGAffineTransformMakeTranslation(&v46, Width, 0.0);
    [v24 setTransform_];

    v36 = objc_opt_self();
    v37 = swift_allocObject();
    *(v37 + 16) = a2;
    *(v37 + 24) = a1;
    *&v46.tx = sub_1D78395F4;
    *&v46.ty = v37;
    *&v46.a = MEMORY[0x1E69E9820];
    *&v46.b = 1107296256;
    *&v46.c = sub_1D775FB6C;
    *&v46.d = &block_descriptor_26;
    v38 = _Block_copy(&v46);
    v39 = a2;
    v40 = a1;

    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = v39;
    v41[4] = v2;
    *&v46.tx = sub_1D78395FC;
    *&v46.ty = v41;
    *&v46.a = MEMORY[0x1E69E9820];
    *&v46.b = 1107296256;
    *&v46.c = sub_1D78392C0;
    *&v46.d = &block_descriptor_6;
    v42 = _Block_copy(&v46);
    v43 = v39;
    v44 = v40;
    v45 = v2;

    [v36 animateWithDuration:v38 animations:v42 completion:0.5];
    _Block_release(v42);
    _Block_release(v38);
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1D783915C(void *a1, void *a2)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    v7[0] = 0x3FF0000000000000;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 0x3FF0000000000000;
    v7[4] = 0;
    v7[5] = 0;
    [v3 setTransform_];

    v5 = [a2 view];
    if (v5)
    {
      v6 = v5;
      [v5 setAlpha_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1D7839204(int a1, id a2, void *a3, uint64_t a4)
{
  result = [a2 view];
  if (result)
  {
    v7 = result;
    [result removeFromSuperview];

    [a2 removeFromParentViewController];
    [a3 didMoveToParentViewController_];
    v8 = *(a4 + OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_lastShownViewController);
    *(a4 + OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_lastShownViewController) = a3;

    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D78392C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1D7839314(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_onDismissal);
    v5 = Strong;
    sub_1D776AC18(v4);

    if (v4)
    {
      v4();
      Strong = sub_1D7744A7C(v4);
    }
  }

  if (a2)
  {
    a2(Strong);
  }
}

void sub_1D7839644(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v66 = a3;
  v7 = sub_1D78B3294();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D776F504(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v59 - v12;
  v13 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_badgeImageView];
  v72 = type metadata accessor for BundlePaywallRenderModel();
  v14 = *(a1 + *(v72 + 24));
  sub_1D78B51F4();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v65 = ObjCClassFromMetadata;
  v64 = objc_opt_self();
  v16 = [v64 bundleForClass_];
  sub_1D78B3134();

  v17 = sub_1D78B5C44();

  v62 = v13;
  [v13 setAccessibilityLabel_];

  [v13 setIsAccessibilityElement_];
  v63 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_titleTextView];
  [v63 setAttributedText_];
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v19 = *MEMORY[0x1E69DB670];
  v61 = type metadata accessor for BundlePaywallViewModel(0);
  v20 = sub_1D78B3214();
  v21 = [v18 mutableString];
  v71 = a1;
  v22 = sub_1D78B5C44();
  v23 = [v21 rangeOfString_];
  v25 = v24;

  [v18 addAttribute:v19 value:v20 range:{v23, v25}];
  v26 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_descriptionTextView];
  v27 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v68 = v18;
  v28 = [v27 initWithAttributedString_];
  [v26 setAttributedText_];

  v29 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_subscribeButton];
  [v29 setAttributedTitle:*(a2 + 400) forState:0];
  v30 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_webAuthButton];
  [v30 setAttributedTitle:*(a2 + 416) forState:0];
  v31 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_offersButton];
  [v31 setAttributedTitle:*(a2 + 408) forState:0];
  [a4 setFrame_];
  [*&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentView] setFrame_];
  [*&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentBackgroundView] setFrame_];
  v32 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_playerView];
  [v32 setFrame_];
  [*&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_gradientView] setFrame_];
  v33 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_scrollView];
  [v33 setFrame_];
  v34 = v33;
  v35 = v61;
  [v34 setContentSize_];
  [v62 setFrame_];
  [v63 setFrame_];
  [v26 setFrame_];
  [v29 setFrame_];
  [v31 setFrame_];
  [v30 setFrame_];
  v36 = v71;
  [v30 setHidden_];
  [a4 setAccessibilityContainerType_];
  v37 = [v64 bundleForClass_];
  sub_1D78B3134();

  v38 = sub_1D78B5C44();

  [a4 setAccessibilityLabel_];

  v39 = [v32 layer];
  objc_opt_self();
  v40 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

  v41 = v66;
  [v40 setImage_];

  if ([v41 horizontalSizeClass] == 1 || objc_msgSend(v41, sel_verticalSizeClass) == 1)
  {
    v42 = 84;
  }

  else
  {
    v42 = 88;
  }

  v43 = v67;
  sub_1D776F538(v36 + *(v35 + v42), v67);
  v45 = v69;
  v44 = v70;
  v46 = *(v69 + 48);
  v47 = v46(v43, 1, v70);
  v48 = v72;
  if (v47 == 1)
  {

    sub_1D77C12C8(v43);
  }

  else
  {
    sub_1D77C12C8(v43);
    v49 = *(v36 + *(v48 + 20));
    v50 = [v32 layer];
    objc_opt_self();
    v51 = [swift_dynamicCastObjCClassUnconditional() &selRef_isSandbox + 4];

    [v51 setImage_];
    v52 = [v32 layer];
    objc_opt_self();
    v53 = [swift_dynamicCastObjCClassUnconditional() player];

    if (v53)
    {
    }

    else
    {
      v54 = v60;
      sub_1D776F538(v71 + *(v72 + 28), v60);
      if (v46(v54, 1, v44) == 1)
      {

        sub_1D77C12C8(v54);
      }

      else
      {
        v55 = v59;
        (*(v45 + 32))(v59, v54, v44);
        v56 = objc_allocWithZone(MEMORY[0x1E6988098]);
        v57 = sub_1D78B3214();
        v58 = [v56 initWithURL_];

        sub_1D77E8D60(v58);
        (*(v45 + 8))(v55, v44);
      }
    }
  }
}

uint64_t PaidBundleViaOfferState.updatingLastBestOfferRefreshDate(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D78B3394();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v2, v5);
  v7 = type metadata accessor for PaidBundleViaOfferState();
  v8 = *(v2 + v7[5]);
  v6(a2 + v7[6], v2 + v7[6], v5);
  v9 = *(v2 + v7[7]);
  v6(a2 + v7[8], v2 + v7[8], v5);
  v10 = *(v2 + v7[9]);
  result = (v6)(a2 + v7[10], a1, v5);
  *(a2 + v7[5]) = v8;
  *(a2 + v7[7]) = v9;
  *(a2 + v7[9]) = v10;
  return result;
}

uint64_t PaidBundleViaOfferState.updatingLastUpsellDate(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D78B3394();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v2, v5);
  v7 = type metadata accessor for PaidBundleViaOfferState();
  v8 = *(v2 + v7[5]);
  v6(a2 + v7[6], v2 + v7[6], v5);
  v9 = *(v2 + v7[7]);
  v6(a2 + v7[8], a1, v5);
  v10 = *(v2 + v7[9]);
  result = (v6)(a2 + v7[10], v2 + v7[10], v5);
  *(a2 + v7[5]) = v8;
  *(a2 + v7[7]) = v9;
  *(a2 + v7[9]) = v10;
  return result;
}

uint64_t PaidBundleViaOfferState.incrementingUpsellPresentedCount()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D78B3394();
  v4 = *(*(v3 - 8) + 16);
  v4(a1, v1, v3);
  v5 = type metadata accessor for PaidBundleViaOfferState();
  v6 = *(v1 + v5[5]);
  v4(a1 + v5[6], v1 + v5[6], v3);
  v7 = *(v1 + v5[7]);
  result = (v4)(a1 + v5[8], v1 + v5[8], v3);
  v9 = *(v1 + v5[9]);
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    result = (v4)(a1 + v5[10], v1 + v5[10], v3);
    *(a1 + v5[5]) = v6;
    *(a1 + v5[7]) = v7;
    *(a1 + v5[9]) = v10;
  }

  return result;
}

uint64_t PaidBundleViaOfferState.updatingLastUserNotificationDate(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D78B3394();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v2, v5);
  v7 = type metadata accessor for PaidBundleViaOfferState();
  v8 = *(v2 + v7[5]);
  v6(a2 + v7[6], a1, v5);
  v9 = *(v2 + v7[7]);
  v6(a2 + v7[8], v2 + v7[8], v5);
  v10 = *(v2 + v7[9]);
  result = (v6)(a2 + v7[10], v2 + v7[10], v5);
  *(a2 + v7[5]) = v8;
  *(a2 + v7[7]) = v9;
  *(a2 + v7[9]) = v10;
  return result;
}

uint64_t PaidBundleViaOfferState.incrementingUserNotificationPresentedCount()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D78B3394();
  v4 = *(*(v3 - 8) + 16);
  v4(a1, v1, v3);
  v5 = type metadata accessor for PaidBundleViaOfferState();
  v6 = *(v1 + v5[5]);
  result = (v4)(a1 + v5[6], v1 + v5[6], v3);
  v8 = *(v1 + v5[7]);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v4(a1 + v5[8], v1 + v5[8], v3);
    v10 = *(v1 + v5[9]);
    result = (v4)(a1 + v5[10], v1 + v5[10], v3);
    *(a1 + v5[5]) = v6;
    *(a1 + v5[7]) = v9;
    *(a1 + v5[9]) = v10;
  }

  return result;
}

uint64_t PaidBundleViaOfferState.updatingLastIconBadgeDate(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D78B3394();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1, v5);
  v7 = type metadata accessor for PaidBundleViaOfferState();
  v8 = *(v2 + v7[5]);
  v6(a2 + v7[6], v2 + v7[6], v5);
  v9 = *(v2 + v7[7]);
  v6(a2 + v7[8], v2 + v7[8], v5);
  v10 = *(v2 + v7[9]);
  result = (v6)(a2 + v7[10], v2 + v7[10], v5);
  *(a2 + v7[5]) = v8;
  *(a2 + v7[7]) = v9;
  *(a2 + v7[9]) = v10;
  return result;
}

uint64_t PaidBundleViaOfferState.incrementingIconBadgePresentedCount()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D78B3394();
  v4 = *(*(v3 - 8) + 16);
  v4(a1, v1, v3);
  result = type metadata accessor for PaidBundleViaOfferState();
  v6 = *(v1 + *(result + 20));
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v4(a1 + *(result + 24), v1 + *(result + 24), v3);
    v9 = *(v1 + v8[7]);
    v4(a1 + v8[8], v1 + v8[8], v3);
    v10 = *(v1 + v8[9]);
    result = (v4)(a1 + v8[10], v1 + v8[10], v3);
    *(a1 + v8[5]) = v7;
    *(a1 + v8[7]) = v9;
    *(a1 + v8[9]) = v10;
  }

  return result;
}

unint64_t sub_1D783A6B4()
{
  v1 = *v0;
  v2 = 0x657370557473616CLL;
  v3 = 0xD000000000000014;
  if (v1 != 5)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000011;
  v5 = 0xD000000000000017;
  if (v1 != 1)
  {
    v5 = 0xD000000000000019;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D783A7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D783B418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D783A7D0(uint64_t a1)
{
  v2 = sub_1D783AAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D783A80C(uint64_t a1)
{
  v2 = sub_1D783AAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PaidBundleViaOfferState.encode(to:)(void *a1)
{
  sub_1D783B154(0, &qword_1EC9CAD10, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D783AAFC();
  sub_1D78B6884();
  v16 = 0;
  sub_1D78B3394();
  sub_1D783B1B8(&unk_1EE08F470);
  sub_1D78B66B4();
  if (!v1)
  {
    type metadata accessor for PaidBundleViaOfferState();
    v15 = 1;
    sub_1D78B66A4();
    v14 = 2;
    sub_1D78B66B4();
    v13 = 3;
    sub_1D78B66A4();
    v12 = 4;
    sub_1D78B66B4();
    v11 = 5;
    sub_1D78B66A4();
    v10 = 6;
    sub_1D78B66B4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D783AAFC()
{
  result = qword_1EE092DD8[0];
  if (!qword_1EE092DD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE092DD8);
  }

  return result;
}

uint64_t PaidBundleViaOfferState.init(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v48 = sub_1D78B3394();
  v44 = *(v48 - 8);
  v3 = MEMORY[0x1EEE9AC00](v48);
  v43 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v38 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v38 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v47 = v38 - v11;
  sub_1D783B154(0, &qword_1EE08FAD8, MEMORY[0x1E69E6F48]);
  v49 = v12;
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v38 - v13;
  v15 = type metadata accessor for PaidBundleViaOfferState();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D783AAFC();
  v46 = v14;
  v18 = v50;
  sub_1D78B6874();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v50 = v10;
  v41 = v7;
  v19 = v45;
  v20 = v17;
  v57 = 0;
  v21 = sub_1D783B1B8(&qword_1EE095660);
  sub_1D78B6614();
  v40 = v21;
  v22 = v44 + 32;
  v23 = *(v44 + 32);
  v24 = v48;
  v23(v20, v47, v48);
  v56 = 1;
  v25 = sub_1D78B6604();
  v38[1] = v22;
  v39 = v23;
  v26 = v15;
  *&v20[*(v15 + 20)] = v25;
  v55 = 2;
  v27 = v50;
  v28 = v24;
  sub_1D78B6614();
  v47 = a1;
  v29 = v20;
  v38[0] = v26;
  v30 = v27;
  v31 = v39;
  v39(&v20[*(v26 + 24)], v30, v24);
  v54 = 3;
  v32 = sub_1D78B6604();
  v33 = v19;
  v34 = v38[0];
  *(v29 + *(v38[0] + 28)) = v32;
  v53 = 4;
  v35 = v41;
  sub_1D78B6614();
  v31(v29 + v34[8], v35, v28);
  v52 = 5;
  *(v29 + v34[9]) = sub_1D78B6604();
  v51 = 6;
  v36 = v43;
  sub_1D78B6614();
  (*(v33 + 8))(v46, v49);
  v31(v29 + v34[10], v36, v28);
  sub_1D783B1FC(v29, v42);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_1D783B260(v29);
}

void sub_1D783B154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D783AAFC();
    v7 = a3(a1, &type metadata for PaidBundleViaOfferState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D783B1B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D78B3394();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D783B1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaidBundleViaOfferState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D783B260(uint64_t a1)
{
  v2 = type metadata accessor for PaidBundleViaOfferState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D783B314()
{
  result = qword_1EC9CAD18;
  if (!qword_1EC9CAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAD18);
  }

  return result;
}

unint64_t sub_1D783B36C()
{
  result = qword_1EE092DC8;
  if (!qword_1EE092DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE092DC8);
  }

  return result;
}

unint64_t sub_1D783B3C4()
{
  result = qword_1EE092DD0;
  if (!qword_1EE092DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE092DD0);
  }

  return result;
}

uint64_t sub_1D783B418(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001D78DACB0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D78DACD0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D78DACF0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D78DAD10 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657370557473616CLL && a2 == 0xEE00657461446C6CLL || (sub_1D78B6724() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D78DAD30 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D78DAD50 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1D78B6724();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t MissingConfigurationAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t MissingConfigurationAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t MissingConfigurationAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t MissingConfigurationAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D783B94C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D783BA18()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t SubscriptionOffersRouteModel.init(tagID:purchaseTraits:entitlements:restoredSubscriptionItems:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t SubscriptionOffersRouteModel.identifier.getter()
{
  v1 = *v0;

  return v1;
}

BOOL sub_1D783BBBC(void *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = *(v2 + 24);
  v6 = [a1 articleID];
  if (!v6)
  {
    sub_1D78B5C74();
    v6 = sub_1D78B5C44();
  }

  v7 = [v5 hasArticleBeenRead_];

  if ((v7 & 1) == 0)
  {
    if (qword_1EE095568 != -1)
    {
      swift_once();
    }

    sub_1D783E138();
    sub_1D78B3574();
    if (v54)
    {
      if (v54 == 1)
      {
        if (qword_1EE08FB98 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_66;
      }
    }

    else if (v4 == 2)
    {
      if (qword_1EE08FB98 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_66;
    }

    v14 = [a1 sourceChannel];
    if (v14)
    {
      v15 = v14;
      v16 = *(v2 + 72);
      if ([swift_unknownObjectRetain() tagType] == 3)
      {
        v17 = [v15 asSection];
        if (!v17 || (v18 = [v17 parentID], swift_unknownObjectRelease(), !v18))
        {
          swift_unknownObjectRelease();
          v19 = 0;
          goto LABEL_25;
        }
      }

      else
      {
        v18 = [v15 identifier];
      }

      v25 = sub_1D78B5C74();
      v27 = v26;

      v28 = [v16 purchasedTagIDs];
      v29 = sub_1D78B5F64();

      v19 = sub_1D7832E64(v25, v27, v29);

      swift_unknownObjectRelease();

LABEL_25:
      if ((sub_1D783C584(a1) & 1) == 0)
      {
        v13 = (v19 & 1) != 0 || !sub_1D783CB14();
        if (qword_1EE08FB98 != -1)
        {
          swift_once();
        }

        sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1D78BCB50;
        v32 = sub_1D775ABD4();
        v33 = v32;
        v34 = 7233859;
        if (!v13)
        {
          v34 = 0x746F6E6E6143;
        }

        v35 = 0xE600000000000000;
        v36 = MEMORY[0x1E69E6158];
        if (v13)
        {
          v35 = 0xE300000000000000;
        }

        *(v31 + 56) = MEMORY[0x1E69E6158];
        *(v31 + 64) = v32;
        *(v31 + 32) = v34;
        *(v31 + 40) = v35;
        v37 = [a1 articleID];
        goto LABEL_64;
      }

      v30 = [*(v2 + 80) cachedSubscription];
      if (objc_getAssociatedObject(v30, v30 + 1))
      {
        sub_1D78B6304();
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      v54 = v52;
      v55 = v53;
      if (*(&v53 + 1))
      {
        sub_1D77BFFAC();
        if (swift_dynamicCast())
        {
          v38 = v51;
          v39 = [v51 integerValue];
          if (v39 == -1)
          {

            goto LABEL_56;
          }

          v40 = v39;
LABEL_45:
          if (objc_getAssociatedObject(v30, ~v40))
          {
            sub_1D78B6304();
            swift_unknownObjectRelease();
          }

          else
          {
            v52 = 0u;
            v53 = 0u;
          }

          v54 = v52;
          v55 = v53;
          if (*(&v53 + 1))
          {
            sub_1D77BFFAC();
            if (swift_dynamicCast())
            {
              v41 = v51;
              v42 = [v41 integerValue];

              if ((v42 ^ v40 | v19))
              {
                goto LABEL_56;
              }

LABEL_54:
              v13 = !sub_1D783C694();
LABEL_57:
              if (qword_1EE08FB98 != -1)
              {
                swift_once();
              }

              sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
              v31 = swift_allocObject();
              *(v31 + 16) = xmmword_1D78BCB50;
              v43 = sub_1D775ABD4();
              v33 = v43;
              v44 = 7233859;
              if (!v13)
              {
                v44 = 0x746F6E6E6143;
              }

              v45 = 0xE600000000000000;
              v36 = MEMORY[0x1E69E6158];
              if (v13)
              {
                v45 = 0xE300000000000000;
              }

              *(v31 + 56) = MEMORY[0x1E69E6158];
              *(v31 + 64) = v43;
              *(v31 + 32) = v44;
              *(v31 + 40) = v45;
              v37 = [a1 articleID];
LABEL_64:
              v46 = v37;
              v47 = sub_1D78B5C74();
              v49 = v48;

              *(v31 + 96) = v36;
              *(v31 + 104) = v33;
              *(v31 + 72) = v47;
              *(v31 + 80) = v49;
              sub_1D78B60A4();
              sub_1D78B42C4();
              swift_unknownObjectRelease();

              return v13;
            }
          }

          else
          {
            sub_1D7756B84(&v54);
          }

          if (((v40 | v19) & 1) == 0)
          {
            goto LABEL_54;
          }

LABEL_56:
          v13 = 1;
          goto LABEL_57;
        }
      }

      else
      {
        sub_1D7756B84(&v54);
      }

      v38 = 0;
      v40 = 0;
      goto LABEL_45;
    }

    if (qword_1EE08FB98 == -1)
    {
LABEL_22:
      sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D78BCAB0;
      v21 = [a1 articleID];
      v22 = sub_1D78B5C74();
      v24 = v23;

      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1D775ABD4();
      *(v20 + 32) = v22;
      *(v20 + 40) = v24;
      sub_1D78B60A4();
      sub_1D78B42C4();

      return 0;
    }

LABEL_66:
    swift_once();
    goto LABEL_22;
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D78BCAB0;
  v9 = [a1 articleID];
  v10 = sub_1D78B5C74();
  v12 = v11;

  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D775ABD4();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  sub_1D78B60A4();
  sub_1D78B42C4();

  return 1;
}

uint64_t sub_1D783C584(void *a1)
{
  result = [a1 sourceChannel];
  if (result)
  {
    v4 = result;
    v5 = [*(v1 + 80) cachedSubscription];
    v6 = [v4 identifier];
    if (!v6)
    {
      sub_1D78B5C74();
      v6 = sub_1D78B5C44();
    }

    v7 = [v5 containsTagID_];

    if ([a1 respondsToSelector_])
    {
      v8 = [a1 isBundlePaid];
      swift_unknownObjectRelease();
      if (v8 & v7)
      {
        return 1;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

BOOL sub_1D783C694()
{
  v1 = v0;
  v2 = sub_1D78B3394();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - v7;
  sub_1D775B744(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = *(v1 + 16);
  v13 = [v12 bundleSubscriptionMeteredCountLastResetDate];
  if (v13)
  {
    v14 = v13;
    sub_1D78B3364();

    (*(v3 + 56))(v11, 0, 1, v2);
    sub_1D7756E78(v11);
    v15 = [v12 bundleSubscriptionMeteredCountLastResetDate];
    if (v15)
    {
      v16 = v15;
      sub_1D78B3364();

      (*(v3 + 32))(v8, v6, v2);
      if (sub_1D783DD5C(v8))
      {
        sub_1D783DB50(&selRef_setBundleSubscriptionMeteredCountLastResetDate_, &selRef_setMonthlyBundleSubscriptionMeteredCount_);
      }

      (*(v3 + 8))(v8, v2);
    }
  }

  else
  {
    (*(v3 + 56))(v11, 1, 1, v2);
    sub_1D7756E78(v11);
    sub_1D783DB50(&selRef_setBundleSubscriptionMeteredCountLastResetDate_, &selRef_setMonthlyBundleSubscriptionMeteredCount_);
  }

  v17 = [v12 monthlyBundleSubscriptionMeteredCount];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 integerValue];

    if (!NFInternalBuild())
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if (!NFInternalBuild())
    {
      goto LABEL_13;
    }
  }

  v20 = [objc_opt_self() standardUserDefaults];
  v21 = [v20 integerForKey_];

  if ((v21 & 0x8000000000000000) == 0)
  {
    return v19 >= v21;
  }

LABEL_13:
  v23 = *(v1 + 104);
  v22 = v19 >= v23;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D78BF690;
  v25 = sub_1D775ABD4();
  v26 = v25;
  v27 = 29545;
  if (v19 < v23)
  {
    v27 = 0x746F6E207369;
  }

  v28 = 0xE600000000000000;
  v29 = MEMORY[0x1E69E6158];
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = v25;
  if (v19 >= v23)
  {
    v28 = 0xE200000000000000;
  }

  *(v24 + 32) = v27;
  *(v24 + 40) = v28;
  v36 = v19;
  v30 = sub_1D78B66E4();
  *(v24 + 96) = v29;
  *(v24 + 104) = v26;
  *(v24 + 72) = v30;
  *(v24 + 80) = v31;
  v36 = *(v1 + 104);
  v32 = sub_1D78B66E4();
  *(v24 + 136) = v29;
  *(v24 + 144) = v26;
  *(v24 + 112) = v32;
  *(v24 + 120) = v33;
  sub_1D78B60A4();
  sub_1D78B42C4();

  return v22;
}

BOOL sub_1D783CB14()
{
  v1 = v0;
  v2 = sub_1D78B3394();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - v7;
  sub_1D775B744(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = *(v1 + 16);
  v13 = [v12 aLaCarteSubscriptionMeteredCountLastResetDate];
  if (v13)
  {
    v14 = v13;
    sub_1D78B3364();

    (*(v3 + 56))(v11, 0, 1, v2);
    sub_1D7756E78(v11);
    v15 = [v12 aLaCarteSubscriptionMeteredCountLastResetDate];
    if (v15)
    {
      v16 = v15;
      sub_1D78B3364();

      (*(v3 + 32))(v8, v6, v2);
      if (sub_1D783DD5C(v8))
      {
        sub_1D783DB50(&selRef_setALaCarteSubscriptionMeteredCountLastResetDate_, &selRef_setMonthlyALaCarteSubscriptionMeteredCount_);
      }

      (*(v3 + 8))(v8, v2);
    }
  }

  else
  {
    (*(v3 + 56))(v11, 1, 1, v2);
    sub_1D7756E78(v11);
    sub_1D783DB50(&selRef_setALaCarteSubscriptionMeteredCountLastResetDate_, &selRef_setMonthlyALaCarteSubscriptionMeteredCount_);
  }

  v17 = [v12 monthlyALaCarteSubscriptionMeteredCount];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 integerValue];

    if (!NFInternalBuild())
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if (!NFInternalBuild())
    {
      goto LABEL_13;
    }
  }

  v20 = [objc_opt_self() standardUserDefaults];
  v21 = [v20 integerForKey_];

  if ((v21 & 0x8000000000000000) == 0)
  {
    return v19 >= v21;
  }

LABEL_13:
  v23 = *(v1 + 96);
  v22 = v19 >= v23;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D78BF690;
  v25 = sub_1D775ABD4();
  v26 = v25;
  v27 = 29545;
  if (v19 < v23)
  {
    v27 = 0x746F6E207369;
  }

  v28 = 0xE600000000000000;
  v29 = MEMORY[0x1E69E6158];
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = v25;
  if (v19 >= v23)
  {
    v28 = 0xE200000000000000;
  }

  *(v24 + 32) = v27;
  *(v24 + 40) = v28;
  v36 = v19;
  v30 = sub_1D78B66E4();
  *(v24 + 96) = v29;
  *(v24 + 104) = v26;
  *(v24 + 72) = v30;
  *(v24 + 80) = v31;
  v36 = *(v1 + 96);
  v32 = sub_1D78B66E4();
  *(v24 + 136) = v29;
  *(v24 + 144) = v26;
  *(v24 + 112) = v32;
  *(v24 + 120) = v33;
  sub_1D78B60A4();
  sub_1D78B42C4();

  return v22;
}

BOOL sub_1D783CF94(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));
  v4 = [a1 identifier];
  sub_1D78B5C74();

  v5 = sub_1D78B59D4();

  if (v5)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D78BCAB0;
    v7 = [a1 identifier];
    v8 = sub_1D78B5C74();
    v10 = v9;

    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1D775ABD4();
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    sub_1D78B60A4();
    sub_1D78B42C4();

    return 1;
  }

  v11 = [*(v2 + 80) cachedSubscription];
  if (objc_getAssociatedObject(v11, v11 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    sub_1D7756B84(&v21);
    goto LABEL_13;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v12 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v12 = v18;
  v13 = [v18 integerValue];
  if (v13 == -1)
  {

    return 1;
  }

  v14 = v13;
LABEL_14:
  if (objc_getAssociatedObject(v11, ~v14))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (*(&v20 + 1))
  {
    sub_1D77BFFAC();
    if (swift_dynamicCast())
    {
      v15 = v18;
      v16 = [v15 integerValue];

      return ((v16 ^ v14) & 1) != 0;
    }
  }

  else
  {
    sub_1D7756B84(&v21);
  }

  return (v14 & 1) != 0;
}

BOOL sub_1D783D2D4(void *a1)
{
  if (![a1 isPaid])
  {
    return 1;
  }

  v2 = [*(v1 + 80) cachedSubscription];
  if (objc_getAssociatedObject(v2, v2 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_1D7756B84(&v12);
    goto LABEL_10;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v3 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  v3 = v9;
  v4 = [v9 integerValue];
  if (v4 == -1)
  {

    return 1;
  }

  v5 = v4;
LABEL_11:
  if (objc_getAssociatedObject(v2, ~v5))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (*(&v11 + 1))
  {
    sub_1D77BFFAC();
    if (swift_dynamicCast())
    {
      v6 = v9;
      v7 = [v6 integerValue];

      return ((v7 ^ v5) & 1) != 0;
    }
  }

  else
  {
    sub_1D7756B84(&v12);
  }

  return (v5 & 1) != 0;
}

void sub_1D783D4A4(void *a1)
{
  v3 = *(v1 + 24);
  v4 = [a1 articleID];
  if (!v4)
  {
    sub_1D78B5C74();
    v4 = sub_1D78B5C44();
  }

  v5 = [v3 hasArticleBeenRead_];

  if (v5)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D78BCAB0;
    v7 = [a1 articleID];
    v8 = sub_1D78B5C74();
    v10 = v9;

    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1D775ABD4();
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    sub_1D78B60A4();
    sub_1D78B42C4();

    return;
  }

  if (sub_1D783C584(a1))
  {
    v11 = [*(v1 + 80) cachedSubscription];
    if (objc_getAssociatedObject(v11, v11 + 1))
    {
      sub_1D78B6304();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30 = v28;
    v31 = v29;
    if (*(&v29 + 1))
    {
      sub_1D77BFFAC();
      if (swift_dynamicCast())
      {
        v17 = v27;
        v18 = [v27 integerValue];
        if (v18 == -1)
        {

          return;
        }

        v19 = v18;
LABEL_24:
        if (objc_getAssociatedObject(v11, ~v19))
        {
          sub_1D78B6304();
          swift_unknownObjectRelease();
        }

        else
        {
          v28 = 0u;
          v29 = 0u;
        }

        v30 = v28;
        v31 = v29;
        if (*(&v29 + 1))
        {
          sub_1D77BFFAC();
          if (swift_dynamicCast())
          {
            v20 = v27;
            v21 = [v20 integerValue];

            if ((v21 ^ v19))
            {
              return;
            }

            goto LABEL_33;
          }
        }

        else
        {
          sub_1D7756B84(&v30);
        }

        if (v19)
        {
          return;
        }

LABEL_33:
        if (!sub_1D783C694())
        {
          sub_1D783D988(&selRef_monthlyBundleSubscriptionMeteredCount, &selRef_setMonthlyBundleSubscriptionMeteredCount_);
        }

        return;
      }
    }

    else
    {
      sub_1D7756B84(&v30);
    }

    v17 = 0;
    v19 = 0;
    goto LABEL_24;
  }

  v12 = [a1 sourceChannel];
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = *(v1 + 72);
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v15 = [v13 asSection];
    if (!v15 || (v16 = [v15 parentID], swift_unknownObjectRelease(), !v16))
    {
      swift_unknownObjectRelease();
      goto LABEL_37;
    }
  }

  else
  {
    v16 = [v13 identifier];
  }

  v22 = sub_1D78B5C74();
  v24 = v23;

  v25 = [v14 purchasedTagIDs];
  v26 = sub_1D78B5F64();

  LOBYTE(v25) = sub_1D7832E64(v22, v24, v26);

  swift_unknownObjectRelease();

  if ((v25 & 1) == 0)
  {
LABEL_37:
    if (!sub_1D783CB14())
    {
      sub_1D783D988(&selRef_monthlyALaCarteSubscriptionMeteredCount, &selRef_setMonthlyALaCarteSubscriptionMeteredCount_);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1D783D988(SEL *a1, SEL *a2)
{
  v4 = *(v2 + 16);
  v5 = [v4 *a1];
  if (!v5)
  {
    sub_1D77BFFAC();
    v5 = sub_1D78B6224();
  }

  v6 = [v5 integerValue];
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [v4 *a2];

  if (qword_1EE08FB98 != -1)
  {
LABEL_7:
    swift_once();
  }

  sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D78BCAB0;
  v9 = sub_1D78B66E4();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D775ABD4();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_1D78B60A4();
  sub_1D78B42C4();
}

uint64_t sub_1D783DB50(SEL *a1, SEL *a2)
{
  v5 = sub_1D78B3394();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  sub_1D78B3384();
  v10 = sub_1D78B3324();
  (*(v6 + 8))(v8, v5);
  [v9 *a1];

  sub_1D77BFFAC();
  v11 = sub_1D78B6224();
  [v9 *a2];

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  return sub_1D78B42C4();
}

uint64_t sub_1D783DCEC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

BOOL sub_1D783DD5C(uint64_t a1)
{
  v2 = sub_1D78B3484();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B34A4();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D78B3394();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v27 - v13;
  if (!NFInternalBuild() || (v15 = [objc_opt_self() standardUserDefaults], v16 = objc_msgSend(v15, sel_integerForKey_, *MEMORY[0x1E69B5140]), v15, (v16 & 0x8000000000000000) != 0))
  {
    sub_1D78B3474();
    sub_1D78B3384();
    v20 = *MEMORY[0x1E6969A78];
    v27[1] = a1;
    v21 = *(v3 + 104);
    v21(v5, v20, v2);
    v22 = sub_1D78B3494();
    v29 = v6;
    v30 = v22;
    v23 = *(v3 + 8);
    v23(v5, v2);
    v24 = *MEMORY[0x1E6969A68];
    v21(v5, v24, v2);
    v28 = sub_1D78B3494();
    v23(v5, v2);
    v21(v5, v20, v2);
    v27[0] = sub_1D78B3494();
    v23(v5, v2);
    v21(v5, v24, v2);
    v25 = sub_1D78B3494();
    v23(v5, v2);
    (*(v32 + 8))(v12, v33);
    (*(v31 + 8))(v8, v29);
    return v27[0] < v30 || v25 < v28;
  }

  else
  {
    sub_1D78B3384();
    sub_1D78B3304();
    v18 = v17;
    (*(v32 + 8))(v14, v33);
    return v18 > v16;
  }
}

unint64_t sub_1D783E138()
{
  result = qword_1EE094FB8;
  if (!qword_1EE094FB8)
  {
    type metadata accessor for SubscriptionAccessMeter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094FB8);
  }

  return result;
}

uint64_t PurchaseReceiptVerificationFailureAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t PurchaseReceiptVerificationFailureAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t PurchaseReceiptVerificationFailureAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PurchaseReceiptVerificationFailureAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D783E468()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D783E530()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D783E774()
{
  result = sub_1D78B5C44();
  qword_1EC9CAD20 = result;
  return result;
}

uint64_t sub_1D783E7AC()
{
  result = sub_1D78B5C44();
  qword_1EC9CAD28 = result;
  return result;
}

uint64_t sub_1D783E7E4()
{
  v1 = sub_1D78B5C44();
  v2 = sub_1D78B5C44();
  v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];

  *(v0 + 16) = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E698CA40]) init];
  if (qword_1EC9C8498 != -1)
  {
    swift_once();
  }

  [v4 addBagKey:qword_1EC9CAD20 valueType:4];
  if (qword_1EC9C84A0 != -1)
  {
    swift_once();
  }

  [v4 addBagKey:qword_1EC9CAD28 valueType:0];
  v5 = objc_opt_self();
  v6 = sub_1D78B5C44();
  v7 = sub_1D78B5C44();
  [v5 registerBagKeySet:v4 forProfile:v6 profileVersion:v7];

  return v0;
}

uint64_t FinanceURLHandler.__allocating_init(patterns:router:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1D77476F4(a2, v4 + 24);
  return v4;
}

uint64_t FinanceURLHandler.init(patterns:router:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1D77476F4(a2, v2 + 24);
  return v2;
}

uint64_t FinanceURLHandler.handleURL(for:)()
{
  v29 = *v0;
  v1 = sub_1D78B3BD4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77405E0(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1D78B3294();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v26 - v13;
  sub_1D77405E0(0, &qword_1EE08F248, MEMORY[0x1E69D7690], MEMORY[0x1E69D66D8]);
  sub_1D78B3D24();
  sub_1D78B3B94();
  (*(v2 + 8))(v4, v1);
  sub_1D78B31E4();
  v14 = *(v9 + 8);
  v14(v12, v8);
  sub_1D78B3274();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D7840EF4(v7, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    v31 = 0;
    sub_1D78411D4(0, &qword_1EE095240);
    swift_allocObject();
    return sub_1D78B4104();
  }

  else
  {
    v28 = v14;
    v27 = *(v9 + 32);
    v16 = v30;
    v17 = v27();
    MEMORY[0x1EEE9AC00](v17);
    *(&v26 - 2) = v16;
    sub_1D78B41F4();
    v18 = sub_1D78B4014();
    sub_1D783F728();
    sub_1D78B40A4();

    v19 = v30;
    (*(v9 + 16))(v12, v30, v8);
    v20 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v0;
    (v27)(v21 + v20, v12, v8);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1D783F814;
    *(v22 + 24) = v21;

    v23 = sub_1D78B4014();
    sub_1D78B4084();

    v24 = sub_1D78B4014();
    v25 = sub_1D78B4134();

    v28(v19, v8);
    return v25;
  }
}

uint64_t sub_1D783EF30()
{
  v0 = [objc_opt_self() bag];
  v1 = objc_allocWithZone(MEMORY[0x1E698C820]);
  v2 = sub_1D78B3214();
  v3 = [v1 initWithURL:v2 bag:v0];
  swift_unknownObjectRelease();

  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    sub_1D78B5C74();
  }

  v6 = objc_allocWithZone(MEMORY[0x1E698CAC8]);
  v7 = sub_1D78B5C44();

  v8 = [v6 initWithBundleIdentifier_];

  [v3 setClientInfo_];
  v9 = [objc_opt_self() sharedAccount];
  v10 = [v9 activeiTunesAccount];

  [v3 setAccount_];
  v11 = [v3 perform];
  MEMORY[0x1EEE9AC00](v11);
  sub_1D77405E0(0, &qword_1EC9CAD50, MEMORY[0x1E6968FB0], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v12 = sub_1D78B4174();

  return v12;
}