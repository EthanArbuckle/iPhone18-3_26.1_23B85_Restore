void *sub_1B0B8C5CC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_24;
      }

      v11 += 2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B0B8C724(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_1B03B2000(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_1B03B2000(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B0B8C9A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B0E46138();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1B0E46308();
}

void sub_1B0B8CA40(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  v55 = a1[3];
  v56 = a1[1];
  v5 = (*a1 + 64);
  v4 = *v5;
  v68[0] = *a1;
  v57 = v68[0];
  v6 = -1 << *(v68[0] + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = a1[4];
  v52 = a1[5];
  v10 = a1[6];
  sub_1B03B5C80(v68, v65, &qword_1EB6E4860, &qword_1B0EC5FE8);
  v11 = (63 - v6) >> 6;

  v68[4] = v9;

  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (!v8)
    {
LABEL_7:
      v14 = v13;
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v12 >= v11)
        {
          sub_1B03D91F8();

          sub_1B0398EFC(v68, &qword_1EB6E4860, &qword_1B0EC5FE8);

          return;
        }

        v8 = v5[v12];
        ++v14;
        if (v8)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      sub_1B0E46BA8();
      __break(1u);
      goto LABEL_31;
    }

    while (1)
    {
      v12 = v13;
LABEL_11:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = v15 | (v12 << 6);
      v17 = *(v57 + 48) + 16 * v16;
      v18 = *v17;
      LODWORD(v17) = *(v17 + 8);
      v19 = *(v57 + 56) + 72 * v16;
      v62[0] = *v19;
      v21 = *(v19 + 32);
      v20 = *(v19 + 48);
      v22 = *(v19 + 16);
      v63 = *(v19 + 64);
      v62[2] = v21;
      v62[3] = v20;
      v62[1] = v22;
      v23 = *(v19 + 16);
      *&v64[4] = *v19;
      v24 = *(v19 + 32);
      v25 = *(v19 + 48);
      *&v64[68] = *(v19 + 64);
      *&v64[52] = v25;
      *&v64[36] = v24;
      *&v64[20] = v23;
      *v61 = v18;
      *&v61[8] = v17;
      *&v61[28] = *&v64[16];
      *&v61[44] = *&v64[32];
      *&v61[60] = *&v64[48];
      *&v61[74] = *&v64[62];
      *&v61[12] = *v64;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03BB0B4(v62, &v58);
      v26 = v3;
      v56(&v58, v61);
      v65[2] = *&v61[32];
      v65[3] = *&v61[48];
      v65[4] = *&v61[64];
      v66 = *&v61[80];
      v65[0] = *v61;
      v65[1] = *&v61[16];
      sub_1B0398EFC(v65, &qword_1EB6E4CD8, &qword_1B0EC9BC0);
      v27 = v58;
      v28 = v59;
      v29 = v60;
      v67[0] = v58;
      v67[1] = v59;
      v67[2] = v60;
      if (v55(v67))
      {
        break;
      }

      v13 = v12;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    *v61 = v27;
    *&v61[8] = v28;
    *&v61[16] = v29;
    v52(&v58, v61);

    v30 = v58;
    v51 = v60;
    v31 = *a3;
    v32 = v59;
    v34 = sub_1B03AB888(v58, v59);
    v35 = v31[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_28;
    }

    v38 = v31[3];
    v3 = v26;
    if (v38 < v37)
    {
      break;
    }

    if (a2)
    {
      if (v33)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v47 = v33;
      sub_1B0B8F684();
      if (v47)
      {
        goto LABEL_24;
      }
    }

LABEL_21:
    v42 = *a3;
    *(*a3 + 8 * (v34 >> 6) + 64) |= 1 << v34;
    v43 = v42[6] + 16 * v34;
    *v43 = v30;
    *(v43 + 8) = v32;
    *(v42[7] + 8 * v34) = v51;
    v44 = v42[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_29;
    }

    v42[2] = v46;
    a2 = 1;
  }

  v50 = v33;
  sub_1B0B34570(v37, a2 & 1);
  v39 = *a3;
  v40 = sub_1B03AB888(v30, v32);
  if ((v50 & 1) != (v41 & 1))
  {
    goto LABEL_30;
  }

  v34 = v40;
  v3 = v26;
  if ((v50 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  v48 = swift_allocError();
  swift_willThrow();
  sub_1B0398EFC(v68, &qword_1EB6E4860, &qword_1B0EC5FE8);

  v49 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B03D91F8();

    return;
  }

LABEL_31:
  *v61 = 0;
  *&v61[8] = 0xE000000000000000;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0xD00000000000001BLL, 0x80000001B0F2B570);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](39, 0xE100000000000000);
  sub_1B0E465B8();
  __break(1u);
}

void *sub_1B0B8D048()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4770, &qword_1B0EC5E50);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v19 = *v18;
        v20 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LODWORD(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v19;
        v23[1] = v20;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8D1C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47F8, &qword_1B0EC5F90);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8D330()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4730, qword_1B0EC5B90);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = 16 * v17;
        v19 = *(v2 + 48) + 16 * v17;
        v20 = *v19;
        LODWORD(v19) = *(v19 + 8);
        v17 *= 72;
        v21 = *(v2 + 56) + v17;
        v23 = *(v21 + 16);
        v22 = *(v21 + 32);
        v24 = *(v21 + 48);
        v35 = *(v21 + 64);
        v34 = v24;
        v31 = *v21;
        v32 = v23;
        v33 = v22;
        v25 = *(v4 + 48) + v18;
        *v25 = v20;
        *(v25 + 8) = v19;
        v26 = *(v4 + 56) + v17;
        *v26 = v31;
        v27 = v32;
        v28 = v33;
        v29 = v34;
        *(v26 + 64) = v35;
        *(v26 + 32) = v28;
        *(v26 + 48) = v29;
        *(v26 + 16) = v27;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = sub_1B03BB0B4(&v31, v30);
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

void *sub_1B0B8D4FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4760, &qword_1B0EC5E40);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 4);
        v25 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 16);
        v26 = (*(v4 + 48) + v18);
        *v26 = v20;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 4) = v24;
        *(v27 + 8) = v25;
        *(v27 + 16) = v22;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8D6A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47F0, &qword_1B0EC5F88);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8D810()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45C0, &unk_1B0EC5930);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1B075DC38(&v39, v38))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 4 * v16);
      v18 = *(v2 + 56) + 184 * v16;
      v19 = *(v18 + 112);
      v21 = *(v18 + 64);
      v20 = *(v18 + 80);
      v45 = *(v18 + 96);
      v46 = v19;
      v43 = v21;
      v44 = v20;
      v23 = *(v18 + 144);
      v22 = *(v18 + 160);
      v24 = *(v18 + 128);
      v50 = *(v18 + 176);
      v48 = v23;
      v49 = v22;
      v47 = v24;
      v26 = *v18;
      v25 = *(v18 + 16);
      v27 = *(v18 + 48);
      v41 = *(v18 + 32);
      v42 = v27;
      v39 = v26;
      v40 = v25;
      *(*(v4 + 48) + 4 * v16) = v17;
      v28 = *(v4 + 56) + 184 * v16;
      v29 = v39;
      v30 = v40;
      v31 = v42;
      *(v28 + 32) = v41;
      *(v28 + 48) = v31;
      *v28 = v29;
      *(v28 + 16) = v30;
      v32 = v43;
      v33 = v44;
      v34 = v46;
      *(v28 + 96) = v45;
      *(v28 + 112) = v34;
      *(v28 + 64) = v32;
      *(v28 + 80) = v33;
      v35 = v47;
      v36 = v48;
      v37 = v49;
      *(v28 + 176) = v50;
      *(v28 + 144) = v36;
      *(v28 + 160) = v37;
      *(v28 + 128) = v35;
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

void *sub_1B0B8DA00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4818, &qword_1B0EC5FB0);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 12 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v19 = *(v4 + 56) + 12 * v14;
      *v19 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B0B8DB64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4118, &qword_1B0EC3318);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 9) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 16 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      LOBYTE(v17) = *(v17 + 9);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
      v20 = *(v4 + 56) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B0B8DCCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4638, &qword_1B0EC59D0);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
    for (i = (v9 + 63) >> 6; v11; *(v21 + 17) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      LOBYTE(v17) = *(v17 + 17);
      result = *(v4 + 48);
      *(result + v14) = *(*(v2 + 48) + 4 * v14);
      v21 = *(v4 + 56) + 24 * v14;
      *v21 = v18;
      *(v21 + 8) = v19;
      *(v21 + 16) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B0B8DE40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4820, &qword_1B0EC5FB8);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = 16 * v17;
        v17 *= 24;
        v19 = *(v2 + 56) + v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        LOBYTE(v19) = *(v19 + 17);
        v23 = *(*(v2 + 48) + v18);
        *(*(v4 + 48) + v18) = v23;
        v24 = *(v4 + 56) + v17;
        *v24 = v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        *(v24 + 17) = v19;
        result = sub_1B03B2000(v23, *(&v23 + 1));
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

void *sub_1B0B8DFD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47D0, &qword_1B0EC5EB0);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 2 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 2 * v17) = v21;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8E14C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B0E46688();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(v4 + 48) + 16 * v19;
        v21 = *v20;
        LODWORD(v20) = *(v20 + 8);
        v22 = *(*(v4 + 56) + v19);
        v23 = *(v6 + 48) + 16 * v19;
        *v23 = v21;
        *(v23 + 8) = v20;
        *(*(v6 + 56) + v19) = v22;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1B0B8E2AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4768, &qword_1B0EC5E48);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        LODWORD(v22) = *(v22 + 24);
        v26 = (*(v4 + 48) + v18);
        *v26 = v20;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v25;
        *(v27 + 24) = v22;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8E450()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4790, &qword_1B0EC5E70);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1B0B11A84(&v32, &v31))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = *(v2 + 48) + 16 * v16;
      v19 = *v18;
      LODWORD(v18) = *(v18 + 8);
      v16 *= 96;
      v20 = (*(v2 + 56) + v16);
      v21 = v20[2];
      v22 = v20[3];
      v23 = v20[4];
      *(v36 + 9) = *(v20 + 73);
      v35 = v22;
      v36[0] = v23;
      v24 = v20[1];
      v32 = *v20;
      v33 = v24;
      v34 = v21;
      v25 = *(v4 + 48) + v17;
      *v25 = v19;
      *(v25 + 8) = v18;
      v26 = (*(v4 + 56) + v16);
      v27 = v33;
      *v26 = v32;
      v26[1] = v27;
      v28 = v34;
      v29 = v35;
      v30 = v36[0];
      *(v26 + 73) = *(v36 + 9);
      v26[3] = v29;
      v26[4] = v30;
      v26[2] = v28;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8E628()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4710, &unk_1B0EC5A90);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = v18;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8E7A4()
{
  v1 = v0;
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4838, &unk_1B0EC5FD0);
  v6 = *v0;
  v7 = sub_1B0E46688();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_1B03906B8(*(v6 + 48) + v22, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
        v23 = *(*(v6 + 56) + v21);
        result = sub_1B0B950AC(v5, *(v8 + 48) + v22, type metadata accessor for MoveAndCopyMessages.CommandID);
        *(*(v8 + 56) + v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_1B0B8E9DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4828, &qword_1B0EC5FC0);
  v2 = *v0;
  v3 = sub_1B0E46688();
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

        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8EB40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4800, &qword_1B0EC5F98);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8EC9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4840, &qword_1B0EC6FD0);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *v19;
        v21 = *(v19 + 4);
        v22 = *(v19 + 8);
        v23 = *(v19 + 16);
        v24 = *(v19 + 24);
        v25 = *(v19 + 32);
        v17 *= 12;
        v26 = *(v2 + 56) + v17;
        v27 = *v26;
        LOBYTE(v26) = *(v26 + 8);
        v28 = *(v4 + 48) + v18;
        *v28 = v20;
        *(v28 + 4) = v21;
        *(v28 + 8) = v22;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        v29 = *(v4 + 56) + v17;
        *v29 = v27;
        *(v29 + 8) = v26;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = sub_1B03B2000(v24, v25);
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

void *sub_1B0B8EE54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4830, &qword_1B0EC5FC8);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = 4 * v17;
        v19 = *(*(v2 + 48) + 4 * v17);
        v17 *= 40;
        v20 = *(v2 + 56) + v17;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 32);
        v24 = *(v20 + 16);
        *(*(v4 + 48) + v18) = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v21;
        *(v25 + 8) = v22;
        *(v25 + 16) = v24;
        *(v25 + 32) = v23;
        result = sub_1B03B2000(v22, v24);
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

void *sub_1B0B8EFE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4850, &qword_1B0EC6FC0);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_1B03B2000(v18, *(&v18 + 1));
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

void *sub_1B0B8F148()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4848, &qword_1B0EC6FB0);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_1B03B2000(v20, v21);
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

void *sub_1B0B8F2BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4780, &qword_1B0EC5E60);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LODWORD(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8F434()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4778, &qword_1B0EC5E58);
  v5 = *v0;
  v6 = sub_1B0E46688();
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
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = *(v5 + 48) + 16 * v21;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1B03B5C80(*(v5 + 56) + v27, v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v28 = v33;
        v29 = *(v33 + 48) + v22;
        *v29 = v24;
        *(v29 + 8) = v25;
        sub_1B074BA2C(v26, *(v28 + 56) + v27);
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v16);
    }

    v19 = v11;
    v7 = v33;
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

void *sub_1B0B8F684()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47C8, &qword_1B0EC5EA8);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LODWORD(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8F7F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47E8, &qword_1B0EC5EC8);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8F95C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4810, &qword_1B0EC5FA8);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B8FAD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v26 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4808, &qword_1B0EC5FA0);
  v7 = *v0;
  v8 = sub_1B0E46688();
  v9 = v8;
  if (*(v7 + 16))
  {
    v27 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    v16 = *(v7 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = 16 * v22;
        v24 = *(v7 + 56);
        v25 = *(v3 + 72) * v22;
        v28 = *(*(v7 + 48) + 16 * v22);
        sub_1B03B5C80(v24 + v25, v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        *(*(v9 + 48) + v23) = v28;
        sub_1B074BA2C(v6, *(v9 + 56) + v25);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

double sub_1B0B8FD1C@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1B03AB888(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B0B8D330();
      v12 = v18;
    }

    v13 = *(*(v12 + 48) + 16 * v9);

    v14 = *(v12 + 56) + 72 * v9;
    v15 = *(v14 + 48);
    *(a3 + 32) = *(v14 + 32);
    *(a3 + 48) = v15;
    *(a3 + 64) = *(v14 + 64);
    v16 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v16;
    sub_1B0B900C4(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B0B8FDDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1B03FE284(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B0B8E628();
    v9 = v16;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 24 * v6);
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = v11[16];
  sub_1B0B907A4(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1B0B8FE8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1B0AE00C4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B0B8E9DC();
    v9 = v13;
  }

  v10 = *(*(v9 + 48) + 8 * v6);

  v11 = *(*(v9 + 56) + 8 * v6);
  sub_1B0B90958(v6, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_1B0B8FF20(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v10);
      result = sub_1B0E46CB8();
      v11 = result & v7;
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
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v16 >= v17 + 1))
        {
          *v16 = *v17;
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

unint64_t sub_1B0B900C4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v11 | (v11 << 32));
      result = sub_1B0E46CB8();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + v9);
        if (16 * v3 != v9 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        result = v16 + 72 * v3;
        v17 = (v16 + 72 * v6);
        if (72 * v3 < (72 * v6) || result >= v17 + 72 || v3 != v6)
        {
          result = memmove(result, v17, 0x48uLL);
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

uint64_t sub_1B0B9027C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 4 * v6);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 4 * v3);
        v15 = (v13 + 4 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B0B90414(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1B0E46C28();
      sub_1B03B2000(v12, v13);
      sub_1B0E42F48();
      v14 = sub_1B0E46CB8();
      result = sub_1B0391D50(v12, v13);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (24 * v3 < (24 * v6) || v20 >= v21 + 24 || v3 != v6)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

unint64_t sub_1B0B905EC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v11 | (v11 << 32));
      result = sub_1B0E46CB8();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + v9);
        if (16 * v3 != v9 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        result = v16 + 96 * v3;
        v17 = (v16 + 96 * v6);
        if (96 * v3 < (96 * v6) || result >= v17 + 96 || v3 != v6)
        {
          result = memmove(result, v17, 0x60uLL);
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

uint64_t sub_1B0B907A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 4 * v6);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 4 * v3);
        v15 = (v13 + 4 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (24 * v3 < (24 * v6) || v17 >= v18 + 24 || v3 != v6)
        {
          v9 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B0B90958(int64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v66 - v6;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v66 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = sub_1B0E460C8();
    v72 = a2;
    v77 = v7;
    v71 = a2 + 64;
    v70 = v10;
    v69 = v13;
    v73 = v17;
    v76 = (v18 + 1) & v17;
    do
    {
      v19 = *(a2 + 40);
      v20 = *(*(a2 + 48) + 8 * v16);
      sub_1B0E46C28();
      v21 = *(*v20 + 96);
      swift_beginAccess();
      v79 = v20;
      sub_1B03906B8(v20 + v21, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B03906B8(v13, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v74 = v16;
          v75 = a1;
          v78 = *v10;
          v24 = *(v10 + 2);
          v25 = *(v10 + 2);
          MEMORY[0x1B2728D70](3);
          MEMORY[0x1B2728D70](v24 | (v24 << 32));
          v26 = 1 << *(v25 + 32);
          if (v26 < 64)
          {
            v27 = ~(-1 << v26);
          }

          else
          {
            v27 = -1;
          }

          v28 = v27 & *(v25 + 64);
          v29 = (v26 + 63) >> 6;

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v30 = 0;
          v31 = 0;
          if (v28)
          {
            while (1)
            {
              v32 = v31;
LABEL_17:
              v33 = __clz(__rbit64(v28)) | (v32 << 6);
              v34 = *(*(v25 + 48) + 4 * v33);
              v35 = (*(v25 + 56) + 16 * v33);
              v36 = *v35;
              v37 = v35[1];
              sub_1B03B2000(*v35, v37);
              if (v37 >> 60 == 15)
              {
                break;
              }

              v28 &= v28 - 1;
              v82 = v87;
              v83 = v88;
              v84 = v89;
              v81 = v86;
              v80 = v85;
              sub_1B0E46C88();
              sub_1B0E42F48();
              sub_1B0391D50(v36, v37);
              v30 ^= sub_1B0E46CB8();
              v31 = v32;
              if (!v28)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
            while (1)
            {
LABEL_14:
              v32 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                goto LABEL_49;
              }

              if (v32 >= v29)
              {
                break;
              }

              v28 = *(v25 + 64 + 8 * v32);
              ++v31;
              if (v28)
              {
                goto LABEL_17;
              }
            }
          }

          MEMORY[0x1B2728D70](v30);

          a2 = v72;
          a1 = v75;
          v14 = v71;
          v10 = v70;
          v13 = v69;
          v16 = v74;
          v17 = v73;
        }

        else
        {
          MEMORY[0x1B2728D70](1);
        }
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v74 = v16;
          v75 = a1;
          v68 = *v10;
          v38 = *(v10 + 2);
          v39 = *(v10 + 2);
          MEMORY[0x1B2728D70](2);
          MEMORY[0x1B2728D70](v38 | (v38 << 32));
          v40 = v39 + 64;
          v41 = 1 << *(v39 + 32);
          if (v41 < 64)
          {
            v42 = ~(-1 << v41);
          }

          else
          {
            v42 = -1;
          }

          v43 = v42 & *(v39 + 64);
          v44 = (v41 + 63) >> 6;

          v78 = v39;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v45 = 0;
          for (i = 0; v43; v45 ^= sub_1B0E46CB8())
          {
            v47 = i;
LABEL_29:
            v48 = __clz(__rbit64(v43));
            v43 &= v43 - 1;
            v49 = v48 | (v47 << 6);
            v50 = *(*(v78 + 48) + 4 * v49);
            v51 = (*(v78 + 56) + 24 * v49);
            v52 = *v51;
            v53 = *(v51 + 1);
            v54 = *(v51 + 2);
            sub_1B03B2000(v53, v54);
            v82 = v87;
            v83 = v88;
            v84 = v89;
            v81 = v86;
            v80 = v85;
            sub_1B0E46C88();
            MEMORY[0x1B2728D70](v52);
            sub_1B03B2000(v53, v54);
            sub_1B0E42F48();
            sub_1B0391D50(v53, v54);
            sub_1B0391D50(v53, v54);
          }

          while (1)
          {
            v47 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v47 >= v44)
            {

              MEMORY[0x1B2728D70](v45);

              a2 = v72;
              a1 = v75;
              v14 = v71;
              v10 = v70;
              v13 = v69;
              v16 = v74;
              goto LABEL_34;
            }

            v43 = *(v40 + 8 * v47);
            ++i;
            if (v43)
            {
              i = v47;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          return;
        }

        v23 = v67;
        sub_1B074BA2C(v10, v67);
        MEMORY[0x1B2728D70](0);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_34:
        v17 = v73;
      }

      sub_1B0390514(v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      v55 = sub_1B0E46CB8();

      v56 = v55 & v17;
      if (a1 >= v76)
      {
        if (v56 < v76)
        {
          goto LABEL_4;
        }
      }

      else if (v56 >= v76)
      {
        goto LABEL_40;
      }

      if (a1 >= v56)
      {
LABEL_40:
        v57 = *(a2 + 48);
        v58 = (v57 + 8 * a1);
        v59 = (v57 + 8 * v16);
        if (a1 != v16 || v58 >= v59 + 1)
        {
          *v58 = *v59;
        }

        v60 = *(a2 + 56);
        v61 = (v60 + 8 * a1);
        v62 = (v60 + 8 * v16);
        if (a1 != v16 || v61 >= v62 + 1)
        {
          *v61 = *v62;
          a1 = v16;
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v63 = *(a2 + 16);
  v64 = __OFSUB__(v63, 1);
  v65 = v63 - 1;
  if (v64)
  {
    goto LABEL_50;
  }

  *(a2 + 16) = v65;
  ++*(a2 + 36);
}

uint64_t sub_1B0B910E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v29 = v2;
  v11 = *v2;

  v12 = sub_1B0E46138();
  v13 = swift_unknownObjectRetain();
  v14 = sub_1B0B02EE4(v13, v12);
  v32 = v14;
  v15 = *(v14 + 40);
  sub_1B0E46C28();
  v16 = *(*a2 + 96);
  swift_beginAccess();
  v30 = a2;
  v17 = v16;
  sub_1B03906B8(a2 + v16, v10, type metadata accessor for MoveAndCopyMessages.CommandID);

  sub_1B0B50244(v31);
  sub_1B0390514(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  v18 = sub_1B0E46CB8();
  v19 = -1 << *(v14 + 32);
  v20 = v18 & ~v19;
  if ((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    while (1)
    {
      v22 = *(*(v14 + 48) + 8 * v20);
      v23 = *(*v22 + 96);
      swift_beginAccess();
      sub_1B03906B8(v22 + v23, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B03906B8(v30 + v17, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      v24 = sub_1B0B57E4C(v10, v7);
      sub_1B0390514(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0390514(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v24)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
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

  v25 = *(*(v14 + 48) + 8 * v20);
  sub_1B0B9192C(v20);
  sub_1B03906B8(v30 + v17, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  v26 = *(*v25 + 96);
  swift_beginAccess();
  sub_1B03906B8(v25 + v26, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  v27 = sub_1B0B57E4C(v10, v7);
  sub_1B0390514(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  result = sub_1B0390514(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  if (v27)
  {
    *v29 = v32;
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0B91420(unint64_t result)
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

    v9 = sub_1B0E460C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = 16 * v6;
        v12 = *(v3 + 40);
        v13 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v13 | (v13 << 32));
        v14 = sub_1B0E46CB8() & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + v11);
          if (16 * v2 != v11 || (v2 = v6, v16 >= v17 + 1))
          {
            *v16 = *v17;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B0B915D8(unint64_t result)
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

    v9 = sub_1B0E460C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v12);
        v13 = sub_1B0E46CB8() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 16 * v2);
          v16 = (v14 + 16 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B0B91784(unint64_t result)
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

    v9 = sub_1B0E460C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 4 * v6);
        sub_1B0E46C28();
        sub_1B0E46C88();
        v13 = sub_1B0E46CB8() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 4 * v2);
          v16 = (v14 + 4 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1B0B9192C(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = &v64 - v5;
  v75 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v6 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - v10;
  v12 = *v1;
  v13 = *v1 + 56;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = sub_1B0E460C8();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v70 = v12;
      v69 = v13;
      v68 = v8;
      v67 = v11;
      v74 = v16;
      v73 = (v17 + 1) & v16;
      do
      {
        v18 = *(v12 + 40);
        v19 = *(*(v12 + 48) + 8 * v15);
        sub_1B0E46C28();
        v20 = *(*v19 + 96);
        swift_beginAccess();
        sub_1B03906B8(v19 + v20, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B03906B8(v11, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v77 = v19;
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v71 = v15;
            v72 = a1;
            v76 = *v8;
            v23 = *(v8 + 2);
            v24 = *(v8 + 2);
            MEMORY[0x1B2728D70](3);
            MEMORY[0x1B2728D70](v23 | (v23 << 32));
            v25 = 1 << *(v24 + 32);
            if (v25 < 64)
            {
              v26 = ~(-1 << v25);
            }

            else
            {
              v26 = -1;
            }

            v27 = v26 & *(v24 + 64);
            v28 = (v25 + 63) >> 6;

            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v29 = 0;
            v30 = 0;
            if (v27)
            {
              while (1)
              {
                v31 = v30;
LABEL_18:
                v32 = __clz(__rbit64(v27)) | (v31 << 6);
                v33 = *(*(v24 + 48) + 4 * v32);
                v34 = (*(v24 + 56) + 16 * v32);
                v35 = *v34;
                v36 = v34[1];
                sub_1B03B2000(*v34, v36);
                if (v36 >> 60 == 15)
                {
                  break;
                }

                v27 &= v27 - 1;
                v80 = v85;
                v81 = v86;
                v82 = v87;
                v79 = v84;
                v78 = v83;
                sub_1B0E46C88();
                sub_1B0E42F48();
                sub_1B0391D50(v35, v36);
                v29 ^= sub_1B0E46CB8();
                v30 = v31;
                if (!v27)
                {
                  goto LABEL_15;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_15:
                v31 = v30 + 1;
                if (__OFADD__(v30, 1))
                {
                  goto LABEL_48;
                }

                if (v31 >= v28)
                {
                  break;
                }

                v27 = *(v24 + 64 + 8 * v31);
                ++v30;
                if (v27)
                {
                  goto LABEL_18;
                }
              }
            }

            MEMORY[0x1B2728D70](v29);

            a1 = v72;
            v12 = v70;
            v13 = v69;
            v8 = v68;
            v11 = v67;
            v15 = v71;
          }

          else
          {
            MEMORY[0x1B2728D70](1);
          }
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            v71 = v15;
            v72 = a1;
            v66 = *v8;
            v37 = *(v8 + 2);
            v38 = *(v8 + 2);
            MEMORY[0x1B2728D70](2);
            MEMORY[0x1B2728D70](v37 | (v37 << 32));
            v39 = v38 + 64;
            v40 = 1 << *(v38 + 32);
            if (v40 < 64)
            {
              v41 = ~(-1 << v40);
            }

            else
            {
              v41 = -1;
            }

            v42 = v41 & *(v38 + 64);
            v43 = (v40 + 63) >> 6;

            v76 = v38;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v44 = 0;
            for (i = 0; v42; v44 = sub_1B0E46CB8() ^ v46)
            {
              v46 = v44;
              v47 = i;
LABEL_30:
              v48 = __clz(__rbit64(v42));
              v42 &= v42 - 1;
              v49 = v48 | (v47 << 6);
              v50 = *(*(v76 + 48) + 4 * v49);
              v51 = (*(v76 + 56) + 24 * v49);
              v52 = *v51;
              v54 = *(v51 + 1);
              v53 = *(v51 + 2);
              sub_1B03B2000(v54, v53);
              v80 = v85;
              v81 = v86;
              v82 = v87;
              v79 = v84;
              v78 = v83;
              sub_1B0E46C88();
              MEMORY[0x1B2728D70](v52);
              sub_1B03B2000(v54, v53);
              sub_1B0E42F48();
              sub_1B0391D50(v54, v53);
              sub_1B0391D50(v54, v53);
            }

            while (1)
            {
              v47 = i + 1;
              if (__OFADD__(i, 1))
              {
                break;
              }

              if (v47 >= v43)
              {

                MEMORY[0x1B2728D70](v44);

                a1 = v72;
                v12 = v70;
                v13 = v69;
                v8 = v68;
                v11 = v67;
                v15 = v71;
                goto LABEL_35;
              }

              v42 = *(v39 + 8 * v47);
              ++i;
              if (v42)
              {
                v46 = v44;
                i = v47;
                goto LABEL_30;
              }
            }

            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            return;
          }

          v22 = v65;
          sub_1B074BA2C(v8, v65);
          MEMORY[0x1B2728D70](0);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          sub_1B0E447C8();
          sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        }

LABEL_35:
        sub_1B0390514(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        v55 = sub_1B0E46CB8();

        v56 = v74;
        v57 = v55 & v74;
        if (a1 >= v73)
        {
          if (v57 < v73)
          {
            goto LABEL_5;
          }
        }

        else if (v57 >= v73)
        {
          goto LABEL_40;
        }

        if (a1 >= v57)
        {
LABEL_40:
          v58 = *(v12 + 48);
          v59 = (v58 + 8 * a1);
          v60 = (v58 + 8 * v15);
          if (a1 != v15 || v59 >= v60 + 1)
          {
            *v59 = *v60;
            a1 = v15;
          }
        }

LABEL_5:
        v15 = (v15 + 1) & v56;
      }

      while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
    }

    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v61 = *(v12 + 16);
  v62 = __OFSUB__(v61, 1);
  v63 = v61 - 1;
  if (v62)
  {
    goto LABEL_49;
  }

  *(v12 + 16) = v63;
  ++*(v12 + 36);
}

void sub_1B0B920BC(int64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v70[0] = v70 - v5;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = v70 - v12;
  v13 = *v1;
  v14 = *v1 + 56;
  v15 = -1 << *(*v1 + 32);
  v16 = (a1 + 1) & ~v15;
  v17 = v16 >> 6;
  v18 = 1 << v16;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v19 = (a1 + 1) & ~v15;
    v20 = ~v15;

    v21 = sub_1B0E460C8();
    if ((*(v14 + 8 * v17) & v18) != 0)
    {
      v22 = *(v7 + 72);
      v74 = v13;
      v73 = v14;
      v72 = v6;
      v71 = v10;
      v23 = v75;
      v24 = v19;
      v78 = v20;
      v77 = (v21 + 1) & v20;
      v79 = v22;
      do
      {
        v25 = *(v13 + 48);
        v81 = v22 * v24;
        sub_1B03906B8(v25 + v22 * v24, v23, type metadata accessor for MoveAndCopyMessages.CommandID);
        v26 = *(v13 + 40);
        sub_1B0E46C28();
        sub_1B03906B8(v23, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v82 = v24;
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 2)
          {
            MEMORY[0x1B2728D70](1);
            goto LABEL_38;
          }

          v76 = a1;
          v80 = *v10;
          v29 = *(v10 + 2);
          v30 = *(v10 + 2);
          MEMORY[0x1B2728D70](3);
          MEMORY[0x1B2728D70](v29 | (v29 << 32));
          v31 = 1 << *(v30 + 32);
          if (v31 < 64)
          {
            v32 = ~(-1 << v31);
          }

          else
          {
            v32 = -1;
          }

          v33 = v32 & *(v30 + 64);
          v34 = (v31 + 63) >> 6;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v35 = 0;
          v36 = 0;
          if (v33)
          {
            while (1)
            {
              v37 = v36;
LABEL_19:
              v38 = __clz(__rbit64(v33)) | (v37 << 6);
              v39 = *(*(v30 + 48) + 4 * v38);
              v40 = (*(v30 + 56) + 16 * v38);
              v42 = *v40;
              v41 = v40[1];
              sub_1B03B2000(*v40, v41);
              if (v41 >> 60 == 15)
              {
                break;
              }

              v33 &= v33 - 1;
              v85 = v90;
              v86 = v91;
              v87 = v92;
              v83 = v88;
              v84 = v89;
              sub_1B0E46C88();
              sub_1B0E42F48();
              sub_1B0391D50(v42, v41);
              v35 ^= sub_1B0E46CB8();
              v36 = v37;
              if (!v33)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
            while (1)
            {
LABEL_16:
              v37 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                goto LABEL_52;
              }

              if (v37 >= v34)
              {
                break;
              }

              v33 = *(v30 + 64 + 8 * v37);
              ++v36;
              if (v33)
              {
                goto LABEL_19;
              }
            }
          }

          MEMORY[0x1B2728D70](v35);

          v60 = &v94;
LABEL_36:
          v61 = *(v60 - 32);

          v13 = v74;
          a1 = v76;
          v14 = v73;
          v10 = v71;
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            v76 = a1;
            v70[1] = *v10;
            v43 = *(v10 + 2);
            v44 = *(v10 + 2);
            MEMORY[0x1B2728D70](2);
            MEMORY[0x1B2728D70](v43 | (v43 << 32));
            v45 = v44 + 64;
            v46 = 1 << *(v44 + 32);
            if (v46 < 64)
            {
              v47 = ~(-1 << v46);
            }

            else
            {
              v47 = -1;
            }

            v48 = v47 & *(v44 + 64);
            v49 = (v46 + 63) >> 6;
            v80 = v44;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v50 = 0;
            for (i = 0; v48; v50 ^= sub_1B0E46CB8())
            {
              v52 = i;
LABEL_31:
              v53 = __clz(__rbit64(v48));
              v48 &= v48 - 1;
              v54 = v53 | (v52 << 6);
              v55 = *(*(v80 + 48) + 4 * v54);
              v56 = (*(v80 + 56) + 24 * v54);
              v57 = *v56;
              v59 = *(v56 + 1);
              v58 = *(v56 + 2);
              sub_1B03B2000(v59, v58);
              v85 = v90;
              v86 = v91;
              v87 = v92;
              v83 = v88;
              v84 = v89;
              sub_1B0E46C88();
              MEMORY[0x1B2728D70](v57);
              sub_1B03B2000(v59, v58);
              sub_1B0E42F48();
              sub_1B0391D50(v59, v58);
              sub_1B0391D50(v59, v58);
            }

            while (1)
            {
              v52 = i + 1;
              if (__OFADD__(i, 1))
              {
                break;
              }

              if (v52 >= v49)
              {

                MEMORY[0x1B2728D70](v50);

                v60 = &v93;
                goto LABEL_36;
              }

              v48 = *(v45 + 8 * v52);
              ++i;
              if (v48)
              {
                i = v52;
                goto LABEL_31;
              }
            }

            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            return;
          }

          v28 = v70[0];
          sub_1B074BA2C(v10, v70[0]);
          MEMORY[0x1B2728D70](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          sub_1B0E447C8();
          sub_1B0398EFC(v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        }

        v23 = v75;
LABEL_38:
        v62 = sub_1B0E46CB8();
        sub_1B0390514(v23, type metadata accessor for MoveAndCopyMessages.CommandID);
        v63 = v78;
        v64 = v62 & v78;
        if (a1 >= v77)
        {
          v65 = v82;
          v22 = v79;
          if (v64 < v77)
          {
            goto LABEL_6;
          }

LABEL_42:
          if (a1 < v64)
          {
            goto LABEL_6;
          }

          goto LABEL_43;
        }

        v65 = v82;
        v22 = v79;
        if (v64 < v77)
        {
          goto LABEL_42;
        }

LABEL_43:
        v66 = v22 * a1;
        if (v22 * a1 < v81 || *(v13 + 48) + v22 * a1 >= (*(v13 + 48) + v81 + v22))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v65;
          if (v66 == v81)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v22 = v79;
        a1 = v65;
LABEL_6:
        v24 = (v65 + 1) & v63;
      }

      while (((*(v14 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
    }

    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v67 = *(v13 + 16);
  v68 = __OFSUB__(v67, 1);
  v69 = v67 - 1;
  if (v68)
  {
    goto LABEL_53;
  }

  *(v13 + 16) = v69;
  ++*(v13 + 36);
}

unint64_t sub_1B0B927FC(unint64_t result)
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

    v9 = sub_1B0E460C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1B0E46C28();
        sub_1B03B2000(v13, v14);
        sub_1B0E42F48();
        v15 = sub_1B0E46CB8();
        sub_1B0391D50(v13, v14);
        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B0B92A00(int a1, void (*a2)(void))
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B0E46C28();
  sub_1B0E46C88();
  v7 = sub_1B0E46CB8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a1)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v13 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    v17 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a2();
      v15 = v17;
    }

    v11 = *(*(v15 + 48) + 4 * v9);
    sub_1B0B91784(v9);
    v12 = 0;
    *v2 = v17;
  }

  else
  {
LABEL_5:
    v11 = 0;
    v12 = 1;
  }

  return v11 | (v12 << 32);
}

uint64_t sub_1B0B92B34(uint64_t a1)
{
  v3 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v10 < 0)
    {
      v11 = *v1;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *v1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v13 = sub_1B0E46178();

    if (v13)
    {
      v14 = sub_1B0B910E0(v11, a1);

      return v14;
    }

    return 0;
  }

  v31 = v1;
  v16 = *(v10 + 40);
  sub_1B0E46C28();
  v17 = *(*a1 + 96);
  swift_beginAccess();
  v32 = v17;
  sub_1B03906B8(a1 + v17, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B50244(v34);
  sub_1B0390514(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  v18 = sub_1B0E46CB8();
  v19 = -1 << *(v10 + 32);
  v20 = v18 & ~v19;
  if (((*(v10 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v10 + 48) + 8 * v20);
    v23 = *(*v22 + 96);
    swift_beginAccess();
    sub_1B03906B8(v22 + v23, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B03906B8(a1 + v32, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
    v24 = sub_1B0B57E4C(v9, v6);
    sub_1B0390514(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0390514(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v10 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  v25 = v31;
  v26 = *v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v25;
  v33 = *v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B0B077AC();
    v28 = v33;
  }

  v29 = *(*(v28 + 48) + 8 * v20);
  sub_1B0B9192C(v20);
  result = v29;
  *v31 = v33;
  return result;
}

uint64_t sub_1B0B92E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1B0E46C28();
  sub_1B0B50244(v27);
  v12 = sub_1B0E46CB8();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v24 = v2;
    v25 = v5;
    v26 = a2;
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1B03906B8(*(v10 + 48) + v16 * v14, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      v17 = sub_1B0B57E4C(v9, a1);
      sub_1B0390514(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v18 = 1;
        a2 = v26;
        goto LABEL_10;
      }
    }

    v19 = v24;
    v20 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    *&v27[0] = *v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B0B07910();
      v22 = *&v27[0];
    }

    a2 = v26;
    sub_1B0B950AC(*(v22 + 48) + v16 * v14, v26, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B920BC(v14);
    v18 = 0;
    *v19 = *&v27[0];
LABEL_10:
    v5 = v25;
  }

  else
  {
    v18 = 1;
  }

  return (*(v6 + 56))(a2, v18, 1, v5);
}

int64_t sub_1B0B93050@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v93 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_1B0E46C28();
  sub_1B0E42F48();
  result = sub_1B0E46CB8();
  v9 = (v6 + 56);
  v10 = -1 << *(v6 + 32);
  v11 = result & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = a2 >> 62;
    if (a1)
    {
      v14 = 0;
    }

    else
    {
      v14 = a2 == 0xC000000000000000;
    }

    v15 = !v14;
    v85 = v15;
    v16 = __OFSUB__(HIDWORD(a1), a1);
    v82 = v16;
    v81 = v6;
    v78 = (a1 >> 32) - a1;
    v79 = a1 >> 32;
    v83 = (v6 + 56);
    v84 = v12;
    while (1)
    {
      v17 = (*(v6 + 48) + 16 * v11);
      v19 = *v17;
      v18 = v17[1];
      v20 = v18 >> 62;
      if (v18 >> 62 == 3)
      {
        break;
      }

      if (v20 > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_36;
        }

        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        v27 = __OFSUB__(v25, v26);
        v24 = v25 - v26;
        if (v27)
        {
          goto LABEL_147;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v20)
      {
        LODWORD(v24) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_146;
        }

        v24 = v24;
        if (v13 <= 1)
        {
LABEL_33:
          v28 = BYTE6(a2);
          if (v13)
          {
            v28 = HIDWORD(a1) - a1;
            if (v82)
            {
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
              goto LABEL_151;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v24 = BYTE6(v18);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v24)
        {
          goto LABEL_142;
        }

        goto LABEL_13;
      }

      v30 = *(a1 + 16);
      v29 = *(a1 + 24);
      v27 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (v27)
      {
        goto LABEL_145;
      }

LABEL_39:
      if (v24 != v28)
      {
        goto LABEL_13;
      }

      if (v24 < 1)
      {
        goto LABEL_142;
      }

      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v9 = *(v19 + 16);
          sub_1B03B2000(v19, v18);
          v36 = sub_1B0E42A98();
          if (v36)
          {
            v37 = v36;
            v38 = sub_1B0E42AC8();
            if (__OFSUB__(v9, v38))
            {
              goto LABEL_149;
            }

            v39 = v9 + v37 - v38;
          }

          else
          {
            v39 = 0;
          }

          result = sub_1B0E42AB8();
          v9 = v83;
          if (v13 != 2)
          {
            if (v13 == 1)
            {
              if (v79 < a1)
              {
                goto LABEL_154;
              }

              v49 = sub_1B0E42A98();
              if (v49)
              {
                v50 = sub_1B0E42AC8();
                if (__OFSUB__(a1, v50))
                {
                  goto LABEL_165;
                }

                v49 += a1 - v50;
              }

              result = sub_1B0E42AB8();
              v51 = (a1 >> 32) - a1;
              if (result < v78)
              {
                v51 = result;
              }

              if (!v39)
              {
                goto LABEL_177;
              }

              if (!v49)
              {
                goto LABEL_176;
              }

              goto LABEL_133;
            }

            *__s1 = a1;
            *&__s1[8] = a2;
            __s1[10] = BYTE2(a2);
            __s1[11] = BYTE3(a2);
            __s1[12] = BYTE4(a2);
            __s1[13] = BYTE5(a2);
            if (!v39)
            {
              goto LABEL_175;
            }

LABEL_136:
            v70 = __s1;
            v69 = v39;
            v68 = BYTE6(a2);
LABEL_137:
            v57 = memcmp(v69, v70, v68);
            result = sub_1B0391D50(v19, v18);
            v6 = v81;
            goto LABEL_138;
          }

          v62 = *(a1 + 16);
          v75 = *(a1 + 24);
          v49 = sub_1B0E42A98();
          if (v49)
          {
            v63 = sub_1B0E42AC8();
            if (__OFSUB__(v62, v63))
            {
              goto LABEL_164;
            }

            v49 += v62 - v63;
          }

          v27 = __OFSUB__(v75, v62);
          v64 = v75 - v62;
          if (v27)
          {
            goto LABEL_159;
          }

          result = sub_1B0E42AB8();
          if (result >= v64)
          {
            v51 = v64;
          }

          else
          {
            v51 = result;
          }

          if (!v39)
          {
            goto LABEL_179;
          }

          v9 = v83;
          if (!v49)
          {
            goto LABEL_178;
          }

LABEL_133:
          if (v39 == v49)
          {
            sub_1B0391D50(v19, v18);
LABEL_142:
            v9 = v77;
            v71 = *v77;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v73 = *v77;
            *__s1 = *v77;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
LABEL_151:
              sub_1B0B07650();
              v73 = *__s1;
            }

            *a3 = *(*(v73 + 48) + 16 * v11);
            result = sub_1B0B927FC(v11);
            *v9 = *__s1;
            goto LABEL_144;
          }

          v68 = v51;
          v69 = v39;
          v70 = v49;
          goto LABEL_137;
        }

        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v13)
        {
LABEL_69:
          __s2 = a1;
          v87 = a2;
          v88 = BYTE2(a2);
          v89 = BYTE3(a2);
          v90 = BYTE4(a2);
          v91 = BYTE5(a2);
          result = memcmp(__s1, &__s2, BYTE6(a2));
          v12 = v84;
          if (!result)
          {
            goto LABEL_142;
          }

          goto LABEL_13;
        }

        if (v13 != 2)
        {
          if (v79 < a1)
          {
            goto LABEL_153;
          }

          sub_1B03B2000(v19, v18);
          v58 = sub_1B0E42A98();
          if (!v58)
          {
            sub_1B0E42AB8();
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            result = sub_1B0E42AB8();
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
            return result;
          }

          v59 = v58;
          v60 = sub_1B0E42AC8();
          if (__OFSUB__(a1, v60))
          {
            goto LABEL_158;
          }

          v34 = (a1 - v60 + v59);
          v35 = sub_1B0E42AB8();
          if (!v34)
          {
            goto LABEL_169;
          }

          goto LABEL_108;
        }

        v44 = *(a1 + 16);
        v43 = *(a1 + 24);
        sub_1B03B2000(v19, v18);
        v45 = sub_1B0E42A98();
        if (v45)
        {
          v46 = sub_1B0E42AC8();
          if (__OFSUB__(v44, v46))
          {
            goto LABEL_162;
          }

          v45 += v44 - v46;
        }

        v27 = __OFSUB__(v43, v44);
        v47 = v43 - v44;
        if (v27)
        {
          goto LABEL_156;
        }

        v48 = sub_1B0E42AB8();
        v6 = v81;
        if (!v45)
        {
          goto LABEL_171;
        }
      }

      else
      {
        if (v20)
        {
          v9 = v19;
          if (v19 > v19 >> 32)
          {
            goto LABEL_148;
          }

          sub_1B03B2000(v19, v18);
          v40 = sub_1B0E42A98();
          if (v40)
          {
            v41 = v40;
            v42 = sub_1B0E42AC8();
            if (__OFSUB__(v19, v42))
            {
              goto LABEL_150;
            }

            v39 = (v19 - v42 + v41);
          }

          else
          {
            v39 = 0;
          }

          sub_1B0E42AB8();
          v9 = v83;
          if (v13 == 2)
          {
            v65 = *(a1 + 16);
            v76 = *(a1 + 24);
            v49 = sub_1B0E42A98();
            if (v49)
            {
              v66 = sub_1B0E42AC8();
              if (__OFSUB__(v65, v66))
              {
                goto LABEL_166;
              }

              v49 += v65 - v66;
            }

            v27 = __OFSUB__(v76, v65);
            v67 = v76 - v65;
            if (v27)
            {
              goto LABEL_161;
            }

            result = sub_1B0E42AB8();
            if (result >= v67)
            {
              v51 = v67;
            }

            else
            {
              v51 = result;
            }

            if (!v39)
            {
              goto LABEL_181;
            }

            v9 = v83;
            if (!v49)
            {
              goto LABEL_180;
            }
          }

          else
          {
            if (v13 != 1)
            {
              *__s1 = a1;
              *&__s1[8] = a2;
              __s1[10] = BYTE2(a2);
              __s1[11] = BYTE3(a2);
              __s1[12] = BYTE4(a2);
              __s1[13] = BYTE5(a2);
              if (!v39)
              {
                goto LABEL_173;
              }

              goto LABEL_136;
            }

            if (v79 < a1)
            {
              goto LABEL_160;
            }

            v49 = sub_1B0E42A98();
            if (v49)
            {
              v52 = sub_1B0E42AC8();
              if (__OFSUB__(a1, v52))
              {
                goto LABEL_167;
              }

              v49 += a1 - v52;
            }

            result = sub_1B0E42AB8();
            v51 = (a1 >> 32) - a1;
            if (result < v78)
            {
              v51 = result;
            }

            if (!v39)
            {
              goto LABEL_183;
            }

            if (!v49)
            {
              goto LABEL_182;
            }
          }

          goto LABEL_133;
        }

        *__s1 = v19;
        *&__s1[8] = v18;
        __s1[10] = BYTE2(v18);
        __s1[11] = BYTE3(v18);
        __s1[12] = BYTE4(v18);
        __s1[13] = BYTE5(v18);
        if (!v13)
        {
          goto LABEL_69;
        }

        if (v13 == 1)
        {
          if (v79 < a1)
          {
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
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
          }

          sub_1B03B2000(v19, v18);
          v31 = sub_1B0E42A98();
          if (!v31)
          {
            goto LABEL_174;
          }

          v32 = v31;
          v33 = sub_1B0E42AC8();
          if (__OFSUB__(a1, v33))
          {
            goto LABEL_157;
          }

          v34 = (a1 - v33 + v32);
          v35 = sub_1B0E42AB8();
          if (!v34)
          {
            goto LABEL_172;
          }

LABEL_108:
          if (v35 >= v78)
          {
            v61 = (a1 >> 32) - a1;
          }

          else
          {
            v61 = v35;
          }

          v57 = memcmp(__s1, v34, v61);
          result = sub_1B0391D50(v19, v18);
          goto LABEL_138;
        }

        v54 = *(a1 + 16);
        v53 = *(a1 + 24);
        sub_1B03B2000(v19, v18);
        v45 = sub_1B0E42A98();
        if (v45)
        {
          v55 = sub_1B0E42AC8();
          if (__OFSUB__(v54, v55))
          {
            goto LABEL_163;
          }

          v45 += v54 - v55;
        }

        v27 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        if (v27)
        {
          goto LABEL_155;
        }

        v48 = sub_1B0E42AB8();
        v6 = v81;
        if (!v45)
        {
          goto LABEL_170;
        }
      }

      if (v48 >= v47)
      {
        v56 = v47;
      }

      else
      {
        v56 = v48;
      }

      v57 = memcmp(__s1, v45, v56);
      result = sub_1B0391D50(v19, v18);
      v9 = v83;
LABEL_138:
      v12 = v84;
      if (!v57)
      {
        goto LABEL_142;
      }

LABEL_13:
      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_140;
      }
    }

    if (v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v18 == 0xC000000000000000;
    }

    v23 = !v21 || a2 >> 62 != 3;
    if (((v23 | v85) & 1) == 0)
    {
      goto LABEL_142;
    }

LABEL_36:
    v24 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_140:
  *a3 = xmmword_1B0EC58F0;
LABEL_144:
  v74 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0B9397C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2);
  v7 = sub_1B0E46CB8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    if (v11[1] == a2)
    {
      v12 = *v11;
      v13 = *(*v11 + 16);
      if (v13 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_3:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if (v13)
  {
    v14 = v12 == a1;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = (v12 + 32);
    v16 = (a1 + 32);
    while (v13)
    {
      if (*v15 != *v16)
      {
        goto LABEL_3;
      }

      ++v15;
      ++v16;
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  v17 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v2;
  v24 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_19:
    sub_1B0B0722C();
    v19 = v24;
  }

  v20 = (*(v19 + 48) + 16 * v9);
  v21 = *v20;
  v22 = v20[1];
  sub_1B0B915D8(v9);
  *v2 = v24;
  return v21;
}

uint64_t sub_1B0B93AEC(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2 | (a2 << 32));
  v8 = sub_1B0E46CB8();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = (*(v6 + 48) + 16 * v10);
    if ((v12[2] | (v12[2] << 32)) == (a2 | (a2 << 32)))
    {
      v13 = *v12;
      v14 = *(*v12 + 16);
      if (v14 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_3:
    v10 = (v10 + 1) & v11;
    if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  if (v14)
  {
    v15 = v13 == a1;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = (v13 + 32);
    v17 = (a1 + 32);
    while (v14)
    {
      if (*v16 != *v17)
      {
        goto LABEL_3;
      }

      ++v16;
      ++v17;
      if (!--v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  v18 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  v25 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_19:
    sub_1B0B070C8();
    v20 = v25;
  }

  v21 = *(v20 + 48) + 16 * v10;
  v22 = *v21;
  v23 = *(v21 + 8);
  sub_1B0B91420(v10);
  *v3 = v25;
  return v22;
}

uint64_t sub_1B0B93C70(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
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
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1B0B941BC((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
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
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
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

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
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
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1B0AFF300((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
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
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
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

        v59 = (v8 + 16 * v30);
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

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1B0B941BC((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
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
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
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
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
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

uint64_t sub_1B0B941BC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
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
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
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

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_1B0B943B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B9443C(v3);
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

char *sub_1B0B94450(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4300, &unk_1B0ED5CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_1B0B94778(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      if (sub_1B0E46118() != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      v30 = sub_1B0E46128();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      swift_dynamicCast();
      v17 = *&v31[0];
      v18 = *(a4 + 40);
      sub_1B0E46C28();
      a2 = *(*v17 + 96);
      swift_beginAccess();
      v29 = v17;
      v19 = a2;
      sub_1B03906B8(v17 + a2, v15, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B50244(v31);
      sub_1B0390514(v15, type metadata accessor for MoveAndCopyMessages.CommandID);
      v20 = sub_1B0E46CB8();
      v21 = a4 + 56;
      v22 = -1 << *(a4 + 32);
      a1 = v20 & ~v22;
      if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
      {
        v23 = ~v22;
        do
        {
          a2 = a4;
          v24 = *(*(a4 + 48) + 8 * a1);
          v25 = *(*v24 + 96);
          swift_beginAccess();
          sub_1B03906B8(v24 + v25, v15, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1B03906B8(v29 + v19, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
          v26 = sub_1B0B57E4C(v15, v11);
          sub_1B0390514(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1B0390514(v15, type metadata accessor for MoveAndCopyMessages.CommandID);
          if (v26)
          {
            goto LABEL_19;
          }

          a1 = (a1 + 1) & v23;
          a4 = a2;
        }

        while (((*(v21 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
      }

      __break(1u);
    }

    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 56) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
LABEL_20:
          v27 = *(*(a4 + 48) + 8 * a1);

          return;
        }

        __break(1u);
LABEL_19:

        a4 = a2;
        goto LABEL_20;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return;
  }

  if (a4 < 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  v30 = MEMORY[0x1B2728270](a1, a2, v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
  swift_dynamicCast();
}

uint64_t sub_1B0B94AEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  if (result)
  {
    v6 = a1 + 1;
    v4 = a1[1];
    v5 = v6[1];
    *a2 = result;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B94B10(uint64_t a1, uint64_t a2)
{
  if ((static WindowOfInterestSizes.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0 || *(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18))
  {
    return 0;
  }

  v4 = *(a1 + 25) ? 256 : 0;
  v5 = v4 | *(a1 + 24);
  v6 = *(a1 + 26) ? 0x10000 : 0;
  v7 = *(a2 + 25) ? 256 : 0;
  v8 = v7 | *(a2 + 24);
  v9 = *(a2 + 26) ? 0x10000 : 0;
  if (!static Environment.__derived_struct_equals(_:_:)(v5 | v6, *(a1 + 32), *(a1 + 40), *(a1 + 48), v8 | v9, *(a2 + 32), *(a2 + 40), *(a2 + 48)))
  {
    return 0;
  }

  if ((sub_1B0429CE0(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  if ((_s13IMAP2Behavior19RunningSyncRequestsV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 120);
  v28[2] = *(a1 + 104);
  v28[3] = v10;
  v11 = *(a1 + 152);
  v28[4] = *(a1 + 136);
  v28[5] = v11;
  v12 = *(a1 + 88);
  v28[0] = *(a1 + 72);
  v28[1] = v12;
  v13 = *(a2 + 120);
  v27[2] = *(a2 + 104);
  v27[3] = v13;
  v14 = *(a2 + 152);
  v27[4] = *(a2 + 136);
  v27[5] = v14;
  v15 = *(a2 + 88);
  v27[0] = *(a2 + 72);
  v27[1] = v15;
  if ((sub_1B0B6DAF4(v28, v27) & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 184);
  v17 = *(a1 + 216);
  v25[2] = *(a1 + 200);
  v26[0] = v17;
  *(v26 + 12) = *(a1 + 228);
  v25[0] = *(a1 + 168);
  v25[1] = v16;
  v18 = *(a2 + 184);
  v19 = *(a2 + 216);
  v23[2] = *(a2 + 200);
  v24[0] = v19;
  *(v24 + 12) = *(a2 + 228);
  v23[0] = *(a2 + 168);
  v23[1] = v18;
  if ((sub_1B0B35FC8(v25, v23) & 1) == 0 || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(*(a1 + 248), *(a2 + 248)) & 1) == 0)
  {
    return 0;
  }

  v20 = *(a1 + 256);
  v21 = *(a2 + 256);

  return sub_1B0AFDD30(v20, v21);
}

uint64_t sub_1B0B94D00(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(a4 + 48) + 16 * result;
    result = *v4;
    v5 = *(v4 + 8);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B0B94D68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1B0B186FC(v1[4], v1[5], a1);
}

uint64_t sub_1B0B94EE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0B94F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0B94FA8()
{
  result = qword_1EB6E4DF0;
  if (!qword_1EB6E4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4DF0);
  }

  return result;
}

uint64_t sub_1B0B950AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B95114(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v31 = MEMORY[0x1E69E7CC0];
  v28 = *(a1 + 16);
  sub_1B0B0A624(0, v1, 0);
  v2 = v31;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v7 = v28;
  v6 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v30 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v6 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_29;
    }

    if (v9 != *(v6 + 36))
    {
      goto LABEL_30;
    }

    v13 = *(*(v6 + 56) + 32 * result);
    switch(v13)
    {
      case 2:
        v14 = 0xE800000000000000;
        v15 = 0x6369646F69726570;
        break;
      case 4:
        v15 = 0x74696E4972657375;
        v14 = 0xED00006465746169;
        break;
      case 3:
        v14 = 0xE400000000000000;
        v15 = 1752397168;
        break;
      default:
        v14 = 0xE800000000000000;
        v15 = 0x6C6C69466B636162;
        break;
    }

    v16 = *(*(v6 + 48) + 4 * result);
    v18 = *(v31 + 16);
    v17 = *(v31 + 24);
    if (v18 >= v17 >> 1)
    {
      v27 = result;
      sub_1B0B0A624((v17 > 1), v18 + 1, 1);
      v6 = a1;
      v9 = v30;
      v7 = v28;
      result = v27;
    }

    *(v31 + 16) = v18 + 1;
    v19 = v31 + 24 * v18;
    *(v19 + 32) = v16;
    *(v19 + 40) = v15;
    *(v19 + 48) = v14;
    v10 = 1 << *(v6 + 32);
    if (result >= v10)
    {
      goto LABEL_31;
    }

    v3 = a1 + 64;
    v20 = *(a1 + 64 + 8 * v11);
    if ((v20 & v12) == 0)
    {
      goto LABEL_32;
    }

    if (v9 != *(v6 + 36))
    {
      goto LABEL_33;
    }

    v21 = v20 & (-2 << (result & 0x3F));
    if (v21)
    {
      v10 = __clz(__rbit64(v21)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v11 << 6;
      v23 = v11 + 1;
      v24 = (a1 + 72 + 8 * v11);
      while (v23 < (v10 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          sub_1B0425168(result, v30, 0);
          v6 = a1;
          v9 = v30;
          v7 = v28;
          v10 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v30, 0);
      v6 = a1;
      v9 = v30;
      v7 = v28;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1B0B95400(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v33 = MEMORY[0x1E69E7CC0];
  sub_1B0B0A604(0, v1, 0);
  v2 = v33;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v7 = result;
  v8 = 0;
  v9 = *(a1 + 36);
  v29 = v1;
  v30 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v31 = v8;
    v12 = (*(a1 + 48) + 16 * v7);
    v14 = *v12;
    v13 = v12[1];
    v32 = *(*(a1 + 56) + 2 * v7);
    v15 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = OpaqueMailboxID.description.getter(v15);
    v18 = v17;

    v20 = *(v33 + 16);
    v19 = *(v33 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_1B0B0A604((v19 > 1), v20 + 1, 1);
    }

    *(v33 + 16) = v20 + 1;
    v21 = (v33 + 24 * v20);
    v21[4] = v16;
    v21[5] = v18;
    v21[6] = v32;
    v10 = 1 << *(a1 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v22 = *(a1 + 64 + 8 * v11);
    if ((v22 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v30;
    if (v30 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v7 & 0x3F));
    if (v23)
    {
      v10 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v11 << 6;
      v25 = v11 + 1;
      v26 = (a1 + 72 + 8 * v11);
      while (v25 < (v10 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1B0425168(v7, v30, 0);
          v10 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v7, v30, 0);
    }

LABEL_4:
    v8 = v31 + 1;
    v7 = v10;
    if (v31 + 1 == v29)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B0B95668(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1B0B0A644(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + 4 * result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1B0B0A644((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 4 * v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1B0425168(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B0B95884(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1B0B0A644(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + 4 * result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1B0B0A644((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 4 * v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1B0425168(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B0B95AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v30 = MEMORY[0x1E69E7CC0];
  sub_1B0B0A6E4(0, v1, 0);
  v2 = v30;
  v4 = v3 + 56;
  v5 = -1 << *(v3 + 32);
  result = sub_1B0E460B8();
  v7 = result;
  v8 = 0;
  v25 = v3 + 64;
  v26 = v1;
  v27 = v3 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v28 = v8;
    v29 = *(v3 + 36);
    v11 = (*(v3 + 48) + 16 * v7);
    v12 = v3;
    v13 = *v11;
    v14 = v11[1];
    result = sub_1B03B2000(*v11, v14);
    v16 = *(v30 + 16);
    v15 = *(v30 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_1B0B0A6E4((v15 > 1), v16 + 1, 1);
    }

    *(v30 + 16) = v16 + 1;
    v17 = v30 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14;
    v9 = 1 << *(v12 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v3 = v12;
    v4 = v27;
    v18 = *(v27 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1B0425168(v7, v29, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v7, v29, 0);
    }

LABEL_4:
    v8 = v28 + 1;
    v7 = v9;
    if (v28 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B0B95CC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v36 = MEMORY[0x1E69E7CC0];
  sub_1B0B0A6C4(0, v1, 0);
  v2 = v36;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1B0E460B8();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v29 = v3 + 72;
  v30 = v1;
  v31 = v9;
  v32 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v33 = v8;
    v12 = *(v3 + 56);
    v13 = (*(v3 + 48) + 16 * v7);
    v14 = v3;
    v15 = *v13;
    v16 = v13[1];
    v17 = (v12 + 24 * v7);
    v35 = *v17;
    if (*(v17 + 16))
    {
      v18 = -1;
    }

    else
    {
      v18 = *(v17 + 1);
    }

    v34 = v18;
    result = sub_1B03B2000(v15, v16);
    v20 = *(v36 + 16);
    v19 = *(v36 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_1B0B0A6C4((v19 > 1), v20 + 1, 1);
    }

    *(v36 + 16) = v20 + 1;
    v21 = v36 + 32 * v20;
    *(v21 + 32) = v15;
    *(v21 + 40) = v16;
    *(v21 + 48) = v35;
    *(v21 + 56) = v34;
    v10 = 1 << *(v14 + 32);
    if (v7 >= v10)
    {
      goto LABEL_27;
    }

    v3 = v14;
    v4 = v32;
    v22 = *(v32 + 8 * v11);
    if ((v22 & (1 << v7)) == 0)
    {
      goto LABEL_28;
    }

    v9 = v31;
    if (v31 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v23 = v22 & (-2 << (v7 & 0x3F));
    if (v23)
    {
      v10 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v11 << 6;
      v25 = v11 + 1;
      v26 = (v29 + 8 * v11);
      while (v25 < (v10 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1B0425168(v7, v31, 0);
          v10 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v7, v31, 0);
    }

LABEL_4:
    v8 = v33 + 1;
    v7 = v10;
    if (v33 + 1 == v30)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B0B95F44(uint64_t *a1, uint64_t a2)
{
  v18[2] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50A0, &qword_1B0ECAF98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v18 - v6);
  result = sub_1B03B5C80(a1, v18 - v6, &qword_1EB6E5098, &qword_1B0ECAF90);
  v9 = *a1;
  v10 = v7[1];
  if (v9 == v10)
  {
LABEL_14:
    *(v7 + *(v4 + 36)) = v9;
    return sub_1B0398EFC(v7, &qword_1EB6E50A0, &qword_1B0ECAF98);
  }

  else
  {
    v18[0] = v4;
    v18[1] = v2;
    while (v9 < v10 && v9 >= *v7)
    {
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5098, &qword_1B0ECAF90) + 40);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42A8, &qword_1B0EC49E0);
      MessageIdentifierSet.RangeView.subscript.getter(v12, v19);
      v13 = v19[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      v14 = sub_1B0E46E18();
      result = sub_1B0E46E28();
      if (v9 < v14 || v9 >= result)
      {
        goto LABEL_16;
      }

      v19[0] = v13;
      v16 = sub_1B041B7F0();
      result = Range<>.init<A>(_:)(v19, &type metadata for SequenceNumber, v16);
      v19[4] = result;
      if (HIDWORD(result) != result)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        v17 = sub_1B0E46E88();
        sub_1B0E46E38();
        result = v17(v19, 0);
      }

      if (v10 == ++v9)
      {
        v9 = v10;
        v4 = v18[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B96180(uint64_t *a1, uint64_t a2)
{
  v18[2] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FF8, &unk_1B0ECA310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v18 - v6);
  result = sub_1B03B5C80(a1, v18 - v6, &qword_1EB6E4FF0, &unk_1B0ECA300);
  v9 = *a1;
  v10 = v7[1];
  if (v9 == v10)
  {
LABEL_14:
    *(v7 + *(v4 + 36)) = v9;
    return sub_1B0398EFC(v7, &qword_1EB6E4FF8, &unk_1B0ECA310);
  }

  else
  {
    v18[0] = v4;
    v18[1] = v2;
    while (v9 < v10 && v9 >= *v7)
    {
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FF0, &unk_1B0ECA300) + 40);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
      MessageIdentifierSet.RangeView.subscript.getter(v12, v19);
      v13 = v19[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      v14 = sub_1B0E46E18();
      result = sub_1B0E46E28();
      if (v9 < v14 || v9 >= result)
      {
        goto LABEL_16;
      }

      v19[0] = v13;
      v16 = sub_1B041C1E8();
      result = Range<>.init<A>(_:)(v19, &type metadata for UID, v16);
      v19[4] = result;
      if (HIDWORD(result) != result)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        v17 = sub_1B0E46E88();
        sub_1B0E46E38();
        result = v17(v19, 0);
      }

      if (v10 == ++v9)
      {
        v9 = v10;
        v4 = v18[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B963BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FF0, &unk_1B0ECA300);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v51 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v24 = sub_1B0E46E98();
  result = 0;
  if ((v24 & 1) == 0)
  {
    v54 = v13;
    v55 = v0;
    v52 = v3;
    v53 = v10;
    v56 = v7;
    MessageIdentifierSet.ranges.getter(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v26 = sub_1B0E46E18();
    v27 = sub_1B0E46E28();
    v28 = sub_1B0E46E18();
    result = sub_1B0E46E28();
    if (v26 < v28 || result < v26)
    {
      __break(1u);
    }

    else
    {
      v30 = sub_1B0E46E18();
      v31 = sub_1B0E46E28();
      result = sub_1B0398EFC(v23, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v27 >= v30 && v31 >= v27)
      {
        if (!__OFSUB__(v27, v26))
        {
          if (v27 - v26 < 100)
          {
            return MessageIdentifierSet.debugDescription.getter(v56);
          }

          MessageIdentifierSet.ranges.getter(v20);
          v32 = sub_1B0E46E18();
          v33 = sub_1B0E46E28();
          v34 = sub_1B0B9C898(v32, 45, v33);
          if (v35)
          {
            v34 = sub_1B0E46E28();
          }

          v36 = v34;
          v37 = v54;
          result = sub_1B0E46E18();
          if (v36 >= result)
          {
            v38 = result;
            v39 = sub_1B0E46E18();
            result = sub_1B0E46E28();
            if (result >= v39)
            {
              if (v38 >= v39)
              {
                if (result >= v36)
                {
                  sub_1B03C60A4(v20, v6 + *(v55 + 40), &unk_1EB6E2780, &unk_1B0E9C5E0);
                  *v6 = v38;
                  v6[1] = v36;
                  sub_1B03D06F8();
                  sub_1B0E46EE8();
                  sub_1B0B96180(v6, v37);
                  sub_1B0398EFC(v6, &qword_1EB6E4FF0, &unk_1B0ECA300);
                  MessageIdentifierSet.ranges.getter(v17);
                  v40 = sub_1B0E46E28();
                  v41 = sub_1B0E46E18();
                  v42 = sub_1B0B9C898(v40, -45, v41);
                  if (v43)
                  {
                    v44 = sub_1B0E46E18();
                  }

                  else
                  {
                    v44 = v42;
                  }

                  result = sub_1B0E46E28();
                  if (result >= v44)
                  {
                    v45 = result;
                    v46 = sub_1B0E46E18();
                    result = sub_1B0E46E28();
                    if (result >= v46)
                    {
                      if (v44 >= v46)
                      {
                        if (result >= v45)
                        {
                          v47 = v52;
                          sub_1B03C60A4(v17, v52 + *(v55 + 40), &unk_1EB6E2780, &unk_1B0E9C5E0);
                          *v47 = v44;
                          v47[1] = v45;
                          v48 = v53;
                          sub_1B0E46EE8();
                          sub_1B0B96180(v47, v48);
                          sub_1B0398EFC(v47, &qword_1EB6E4FF0, &unk_1B0ECA300);
                          v58 = 0;
                          v59 = 0xE000000000000000;
                          sub_1B0E46508();
                          MEMORY[0x1B2726E80](3026478, 0xE300000000000000);
                          sub_1B0E46508();
                          MEMORY[0x1B2726E80](10272, 0xE200000000000000);
                          v57 = MessageIdentifierSet.count.getter();
                          v49 = sub_1B0E469C8();
                          MEMORY[0x1B2726E80](v49);

                          MEMORY[0x1B2726E80](41, 0xE100000000000000);
                          v50 = v58;
                          sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                          sub_1B0398EFC(v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                          return v50;
                        }

LABEL_36:
                        __break(1u);
                        return result;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1B0B969A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5098, &qword_1B0ECAF90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v51 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42A8, &qword_1B0EC49E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v24 = sub_1B0E46E98();
  result = 0;
  if ((v24 & 1) == 0)
  {
    v54 = v13;
    v55 = v0;
    v52 = v3;
    v53 = v10;
    v56 = v7;
    MessageIdentifierSet.ranges.getter(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v26 = sub_1B0E46E18();
    v27 = sub_1B0E46E28();
    v28 = sub_1B0E46E18();
    result = sub_1B0E46E28();
    if (v26 < v28 || result < v26)
    {
      __break(1u);
    }

    else
    {
      v30 = sub_1B0E46E18();
      v31 = sub_1B0E46E28();
      result = sub_1B0398EFC(v23, &qword_1EB6E42A8, &qword_1B0EC49E0);
      if (v27 >= v30 && v31 >= v27)
      {
        if (!__OFSUB__(v27, v26))
        {
          if (v27 - v26 < 100)
          {
            return MessageIdentifierSet.debugDescription.getter(v56);
          }

          MessageIdentifierSet.ranges.getter(v20);
          v32 = sub_1B0E46E18();
          v33 = sub_1B0E46E28();
          v34 = sub_1B0B9C898(v32, 45, v33);
          if (v35)
          {
            v34 = sub_1B0E46E28();
          }

          v36 = v34;
          v37 = v54;
          result = sub_1B0E46E18();
          if (v36 >= result)
          {
            v38 = result;
            v39 = sub_1B0E46E18();
            result = sub_1B0E46E28();
            if (result >= v39)
            {
              if (v38 >= v39)
              {
                if (result >= v36)
                {
                  sub_1B03C60A4(v20, v6 + *(v55 + 40), &qword_1EB6E42A8, &qword_1B0EC49E0);
                  *v6 = v38;
                  v6[1] = v36;
                  sub_1B03D06F8();
                  sub_1B0E46EE8();
                  sub_1B0B95F44(v6, v37);
                  sub_1B0398EFC(v6, &qword_1EB6E5098, &qword_1B0ECAF90);
                  MessageIdentifierSet.ranges.getter(v17);
                  v40 = sub_1B0E46E28();
                  v41 = sub_1B0E46E18();
                  v42 = sub_1B0B9C898(v40, -45, v41);
                  if (v43)
                  {
                    v44 = sub_1B0E46E18();
                  }

                  else
                  {
                    v44 = v42;
                  }

                  result = sub_1B0E46E28();
                  if (result >= v44)
                  {
                    v45 = result;
                    v46 = sub_1B0E46E18();
                    result = sub_1B0E46E28();
                    if (result >= v46)
                    {
                      if (v44 >= v46)
                      {
                        if (result >= v45)
                        {
                          v47 = v52;
                          sub_1B03C60A4(v17, v52 + *(v55 + 40), &qword_1EB6E42A8, &qword_1B0EC49E0);
                          *v47 = v44;
                          v47[1] = v45;
                          v48 = v53;
                          sub_1B0E46EE8();
                          sub_1B0B95F44(v47, v48);
                          sub_1B0398EFC(v47, &qword_1EB6E5098, &qword_1B0ECAF90);
                          v58 = 0;
                          v59 = 0xE000000000000000;
                          sub_1B0E46508();
                          MEMORY[0x1B2726E80](3026478, 0xE300000000000000);
                          sub_1B0E46508();
                          MEMORY[0x1B2726E80](10272, 0xE200000000000000);
                          v57 = MessageIdentifierSet.count.getter();
                          v49 = sub_1B0E469C8();
                          MEMORY[0x1B2726E80](v49);

                          MEMORY[0x1B2726E80](41, 0xE100000000000000);
                          v50 = v58;
                          sub_1B0398EFC(v48, &qword_1EB6E4030, &qword_1B0EC2B00);
                          sub_1B0398EFC(v37, &qword_1EB6E4030, &qword_1B0EC2B00);
                          return v50;
                        }

LABEL_36:
                        __break(1u);
                        return result;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  return result;
}

double StateWithTasks.stateCaptureValue(logName:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for StateWithTasks();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BA1F50(v3, v10, type metadata accessor for StateWithTasks);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B9E56C(v10, a1, a2, v17);
  v11 = v17[7];
  *(a3 + 96) = v17[6];
  *(a3 + 112) = v11;
  *(a3 + 128) = v17[8];
  *(a3 + 144) = v18;
  v12 = v17[3];
  *(a3 + 32) = v17[2];
  *(a3 + 48) = v12;
  v13 = v17[5];
  *(a3 + 64) = v17[4];
  *(a3 + 80) = v13;
  result = *v17;
  v15 = v17[1];
  *a3 = v17[0];
  *(a3 + 16) = v15;
  return result;
}

unint64_t StateWithTasks.localDeselectedMailboxesCaptureValue()@<X0>(char **a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 216);
  v5[2] = *(v1 + 200);
  v6[0] = v3;
  *(v6 + 12) = *(v1 + 228);
  v5[0] = *(v1 + 168);
  v5[1] = v2;
  return sub_1B0B970D8(v5, a1);
}

unint64_t sub_1B0B970D8@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v6 = *(v3 + 16);
    v7 = *a1;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = 0;
    v10 = v3 + 32;
    v11 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v12 = (v10 + 176 * v9);
    while (1)
    {
      if (v6 == v9)
      {
        sub_1B03BB638(v3, v4, v5, 1);
        a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FA0, &qword_1B0EC9FE0);
        result = sub_1B0BA49C8(&qword_1EB6DB4B0, &qword_1EB6E4FA0, &qword_1B0EC9FE0, sub_1B0BA11B8);
        a2[4] = result;
        *a2 = v11;
        return result;
      }

      if (v9 >= v6)
      {
        break;
      }

      v13 = *v12;
      v14 = v12[2];
      v32[1] = v12[1];
      v32[2] = v14;
      v32[0] = v13;
      v15 = v12[3];
      v16 = v12[4];
      v17 = v12[6];
      v32[5] = v12[5];
      v33 = v17;
      v32[3] = v15;
      v32[4] = v16;
      v18 = v12[7];
      v19 = v12[8];
      v20 = v12[10];
      v36 = v12[9];
      v37 = v20;
      v34 = v18;
      v35 = v19;
      v21 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_16;
      }

      ++v9;
      v12 += 11;
      if (!v33)
      {
        v29 = v10;
        sub_1B03A35B8(v32, v30);
        sub_1B0BA0798(v32, __src);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1B0B0169C(0, *(v11 + 2) + 1, 1, v11);
        }

        v23 = *(v11 + 2);
        v22 = *(v11 + 3);
        if (v23 >= v22 >> 1)
        {
          v11 = sub_1B0B0169C((v22 > 1), v23 + 1, 1, v11);
        }

        *(v11 + 2) = v23 + 1;
        result = memcpy(&v11[392 * v23 + 32], __src, 0x188uLL);
        v9 = v21;
        v10 = v29;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    sub_1B03B9A2C(*a1, v4, v5, 0);
    v24 = sub_1B0B9F200(v3, v4, v5);
    v26 = v25;
    v28 = v27;
    a2[3] = &_s13CapturedStateV16UnknownMailboxesVN;
    result = sub_1B0BA1E40();
    a2[4] = result;
    *a2 = v24;
    a2[1] = v26;
    a2[2] = v28;
  }

  return result;
}

char *StateWithTasks.localSelectedMailboxesCaptureValue()@<X0>(char **a1@<X8>)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 216);
  v6[2] = *(v1 + 200);
  v7[0] = v4;
  *(v7 + 12) = *(v1 + 228);
  v6[0] = *(v1 + 168);
  v6[1] = v3;
  result = sub_1B0BA0E0C(v6);
  *a1 = result;
  return result;
}

double StateWithTasks.remoteMailboxesCaptureValue()@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 120);
  v11[2] = *(v1 + 104);
  v11[3] = v3;
  v4 = *(v1 + 152);
  v11[4] = *(v1 + 136);
  v11[5] = v4;
  v5 = *(v1 + 88);
  v11[0] = *(v1 + 72);
  v11[1] = v5;
  sub_1B0BA1108(v11, v8);
  sub_1B0BA0F7C(v11, v8);
  v6 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v6;
  result = *&v9;
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  return result;
}

uint64_t sub_1B0B973DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FA8, &qword_1B0ECA2B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA155C();
  sub_1B0E46D48();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v23) = 0;
  sub_1B0E46928();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v23) = 1;
    sub_1B0E46928();
    v15 = *(v3 + 3);
    v16 = *(v3 + 5);
    v29 = *(v3 + 4);
    v30 = v16;
    v17 = *(v3 + 3);
    v28[0] = *(v3 + 2);
    v28[1] = v17;
    v18 = *(v3 + 5);
    v25 = v29;
    v26 = v18;
    v31 = v3[12];
    v27 = v3[12];
    v23 = v28[0];
    v24 = v15;
    v33 = 2;
    sub_1B0BA15B0(v28, v21);
    sub_1B0BA160C();
    sub_1B0E46958();
    v21[2] = v25;
    v21[3] = v26;
    v22 = v27;
    v21[0] = v23;
    v21[1] = v24;
    sub_1B0BA1660(v21);
    LOBYTE(v20) = *(v3 + 104);
    v32 = 3;
    sub_1B0BA16B4();
    sub_1B0E46958();
    *&v20 = v3[14];
    v32 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FB0, &qword_1B0ECA2C0);
    sub_1B0BA49C8(&qword_1EB6DB4D8, &qword_1EB6E4FB0, &qword_1B0ECA2C0, sub_1B0BA1708);
    sub_1B0E46958();
    v20 = *(v3 + 15);
    v32 = 5;
    sub_1B0BA175C();
    sub_1B0E46958();
    *&v20 = v3[17];
    v32 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FB8, &qword_1B0ECA2C8);
    sub_1B0BA17B0();
    sub_1B0E46958();
    *&v20 = v3[18];
    v32 = 7;
    sub_1B0BA1834();
    sub_1B0E46958();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0B9779C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0x736B736174;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656D614E676F6CLL;
    v3 = 0x6D6E6F7269766E65;
    if (v1 != 2)
    {
      v3 = 0xD000000000000018;
    }

    if (*v0)
    {
      v2 = 0x4449656E69676E65;
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
}

uint64_t sub_1B0B978AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA2E78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B978E0()
{
  sub_1B0BA155C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9791C()
{
  sub_1B0BA155C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B97958(void *a1)
{
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = *(v1 + 18);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_1B0B973DC(a1);
}

uint64_t sub_1B0B979B4(uint64_t a1, unsigned int a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0E44B88();
  v5 = MailboxName.inbox.unsafeMutableAddressor();
  if ((a2 | (a2 << 32)) == (*(v5 + 2) | (*(v5 + 2) << 32)))
  {
    v6 = sub_1B04520BC(a1, *v5);

    if (v6)
    {
      return v4;
    }
  }

  else
  {
  }

  if (sub_1B0E44CF8() >= 3)
  {
    sub_1B0E44D38();
    sub_1B0E46298();
    v7 = sub_1B0E44EE8();
    v8 = MEMORY[0x1B2726D00](v7);

    MEMORY[0x1B2726E80](0x6E656C202CA680E2, 0xAC0000003D687467);
    sub_1B0E44CF8();
    v9 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v9);

    return v8;
  }

  return v4;
}

uint64_t sub_1B0B97B48(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50C0, &qword_1B0ECAFB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4DF4();
  sub_1B0E46D48();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_1B0E46928();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_1B0E46928();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_1B0E46928();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0B97CE8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5038, &unk_1B0ECAF28);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA31BC();
  sub_1B0E46D48();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0BA3210(&qword_1EB6DB080, &qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0E46958();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5040, &qword_1B0ECAF38);
    sub_1B0BA49C8(&qword_1EB6DB4C8, &qword_1EB6E5040, &qword_1B0ECAF38, sub_1B0BA3278);
    sub_1B0E46958();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B0B97EF4()
{
  v1 = 0x786F626C69616DLL;
  if (*v0 != 1)
  {
    v1 = 0x6567617375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x697463656E6E6F63;
  }
}

uint64_t sub_1B0B97F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA3374(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B97F78()
{
  sub_1B0BA4DF4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B97FB4()
{
  sub_1B0BA4DF4();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B97FF0(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_1B0B97B48(a1);
}

uint64_t sub_1B0B9802C()
{
  if (*v0)
  {
    result = 0x6567617375;
  }

  else
  {
    result = 0x65786F626C69616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B0B98068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0B98148()
{
  sub_1B0BA31BC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B98184()
{
  sub_1B0BA31BC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B981FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69617274736E6F63 && a2 == 0xEB0000000064656ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0B98288()
{
  sub_1B0BA3114();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B982C4()
{
  sub_1B0BA3114();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B98300(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5028, &qword_1B0ECAF18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA3114();
  sub_1B0E46D48();
  sub_1B0E468D8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1B0B98438(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5030, &qword_1B0ECAF20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA3168();
  sub_1B0E46D48();
  v15 = 0;
  sub_1B0E46988();
  if (!v4)
  {
    v14 = 1;
    sub_1B0E46928();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1B0B985CC()
{
  if (*v0)
  {
    result = 1684957547;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1B0B985F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0B986C8()
{
  sub_1B0BA3168();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B98704()
{
  sub_1B0BA3168();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B98760(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5080, &qword_1B0ECAF78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4B40();
  sub_1B0E46D48();
  v10[15] = 0;
  sub_1B0E468D8();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v10[14] = 1;
  sub_1B0E468D8();
  v10[13] = 2;
  sub_1B0E468D8();
  v10[12] = 3;
  sub_1B0E468D8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B0B98920()
{
  v1 = 0x7374726F70707573;
  v2 = 0xD00000000000001BLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1B0B989AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA3490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B989D4()
{
  sub_1B0BA4B40();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B98A10()
{
  sub_1B0BA4B40();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B98A68(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5088, &qword_1B0ECAF80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4B94();
  sub_1B0E46D48();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_1B0E46928();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_1B0E468C8();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_1B0E468C8();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_1B0E468C8();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0B98C28()
{
  v1 = 1701667182;
  v2 = 0x7475626972747461;
  if (*v0 != 2)
  {
    v2 = 0x556C616963657073;
  }

  if (*v0)
  {
    v1 = 0x6170655368746170;
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

uint64_t sub_1B0B98CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA3604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B98CDC()
{
  sub_1B0BA4B94();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B98D18()
{
  sub_1B0BA4B94();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B98D54(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1B0B98A68(a1);
}

uint64_t sub_1B0B98D90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5090, &qword_1B0ECAF88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4BE8();
  sub_1B0E46D48();
  v16 = 0;
  sub_1B0E46928();
  if (!v5)
  {
    v15 = 1;
    sub_1B0E46928();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B0B98F24(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FE0, &qword_1B0ECA2F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA19D8();
  sub_1B0E46D48();
  LODWORD(v14[0]) = *v3;
  v15 = 0;
  sub_1B0BA1A2C();
  sub_1B0E468F8();
  if (!v2)
  {
    *&v14[0] = *(v3 + 8);
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FE8, &qword_1B0ECA2F8);
    sub_1B0BA49C8(&qword_1EB6DB4D0, &qword_1EB6E4FE8, &qword_1B0ECA2F8, sub_1B0BA1A80);
    sub_1B0E468F8();
    v11 = *(v3 + 16);
    LOBYTE(v14[0]) = 2;
    sub_1B0E46938();
    v12 = *(v3 + 40);
    v14[0] = *(v3 + 24);
    v14[1] = v12;
    v15 = 3;
    sub_1B0BA1AD4();
    sub_1B0E468F8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0B99164()
{
  if (*v0)
  {
    result = 0x6F74617261706573;
  }

  else
  {
    result = 0x786966657270;
  }

  *v0;
  return result;
}

uint64_t sub_1B0B991A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F74617261706573 && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0B99280()
{
  sub_1B0BA4BE8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B992BC()
{
  sub_1B0BA4BE8();

  return sub_1B0E46F38();
}

unint64_t sub_1B0B99318()
{
  v1 = 0x726576726573;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 0x63617073656D616ELL;
  }

  if (*v0)
  {
    v1 = 0x65786F626C69616DLL;
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

uint64_t sub_1B0B99398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA377C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B993C0()
{
  sub_1B0BA19D8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B993FC()
{
  sub_1B0BA19D8();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B99438(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_1B0B98F24(a1);
}

uint64_t sub_1B0B9947C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50A8, &qword_1B0ECAFA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4C3C();
  sub_1B0E46D48();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FD0, &qword_1B0ECA2E0);
  sub_1B0BA3210(&qword_1EB6DADE0, &qword_1EB6E4FD0, &qword_1B0ECA2E0);
  sub_1B0E468F8();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50B0, &qword_1B0ECAFA8);
    sub_1B0BA4C90();
    sub_1B0E468F8();
    v17 = a4;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50B8, &qword_1B0ECAFB0);
    sub_1B0BA4D3C();
    sub_1B0E468F8();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1B0B996B4()
{
  v1 = 0x6552686372616573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53676E69646E6570;
  }
}

uint64_t sub_1B0B99728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA38F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B99750()
{
  sub_1B0BA4C3C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9978C()
{
  sub_1B0BA4C3C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B997E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5058, &qword_1B0ECAF50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4824();
  sub_1B0E46D48();
  v11 = *v3;
  v12 = *(v3 + 4);
  v18[15] = 0;
  v18[12] = v12;
  sub_1B0E46908();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + 1);
  v14 = *(v3 + 2);
  v18[11] = 1;
  sub_1B0E468C8();
  v16 = *(v3 + 3);
  v17 = *(v3 + 32);
  v18[10] = 2;
  sub_1B0E46918();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0B9999C()
{
  v1 = 0x5764656863746566;
  if (*v0 != 1)
  {
    v1 = 0x4D74736568676968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64696C6156646975;
  }
}

uint64_t sub_1B0B99A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA3A1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B99A40()
{
  sub_1B0BA4824();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B99A7C()
{
  sub_1B0BA4824();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B99AB8(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_1B0B997E8(a1);
}

uint64_t sub_1B0B99AF4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5078, &qword_1B0ECAF70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4AEC();
  sub_1B0E46D48();
  v11 = *v3;
  LOBYTE(v19) = 0;
  sub_1B0E46988();
  if (!v2)
  {
    v19 = *(v3 + 2);
    v20 = v19;
    v18 = 1;
    sub_1B09916E0(&v20, &v17);
    sub_1B0BA48CC();
    sub_1B0E46958();
    sub_1B0391D50(v19, *(&v19 + 1));
    v12 = *(v3 + 3);
    v13 = *(v3 + 4);
    LOBYTE(v19) = 2;
    sub_1B0E46928();
    v14 = v3[10];
    LOBYTE(v19) = 3;
    sub_1B0E46988();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0B99CD8()
{
  v1 = 25705;
  v2 = 1684957547;
  if (*v0 != 2)
  {
    v2 = 7565169;
  }

  if (*v0)
  {
    v1 = 0x6567617373656DLL;
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

uint64_t sub_1B0B99D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA3B48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B99D60()
{
  sub_1B0BA4AEC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B99D9C()
{
  sub_1B0BA4AEC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B99DD8(void *a1)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[12] = *(v1 + 28);
  return sub_1B0B99AF4(a1);
}

uint64_t sub_1B0B99E14(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v16[1] = a5;
  v19 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50D8, &qword_1B0ECAFD0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4FEC();
  sub_1B0E46D48();
  v17 = a2;
  v18 = a3;
  v20 = 0;
  sub_1B03B2000(a2, a3);
  sub_1B0BA48CC();
  sub_1B0E46958();
  sub_1B0391D50(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_1B0E46988();
    LOBYTE(v17) = 2;
    sub_1B0E46948();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1B0B99FE0()
{
  v1 = 6580597;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B0B9A020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA3CA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B9A048()
{
  sub_1B0BA4FEC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9A084()
{
  sub_1B0BA4FEC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9A0E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50E0, &qword_1B0ECAFD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA5040();
  sub_1B0E46D48();
  v11 = *v3;
  v24[15] = 0;
  sub_1B0E468D8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 1);
  v13 = *(v3 + 2);
  v24[14] = 1;
  sub_1B0E468C8();
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v24[13] = 2;
  sub_1B0E468C8();
  v16 = *(v3 + 10);
  v17 = v3[44];
  v24[12] = 3;
  v24[8] = v17;
  sub_1B0E46908();
  v18 = *(v3 + 6);
  v19 = *(v3 + 7);
  v24[7] = 4;
  sub_1B0E468C8();
  v20 = *(v3 + 16);
  v21 = v3[68];
  v24[6] = 5;
  v24[4] = v21;
  sub_1B0E46908();
  v23 = v3[69];
  v24[3] = 6;
  sub_1B0E468D8();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B0B9A324(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x436567617373656DLL;
    v6 = 0x64696C6156646975;
    v7 = 0x4D74736568676968;
    if (a1 != 3)
    {
      v7 = 0x7473656867694879;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x4449557478656ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000019;
    v2 = 0x4D676E697373696DLL;
    if (a1 == 9)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1 == 6)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 == 5)
    {
      v3 = 0x70657453636E7973;
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