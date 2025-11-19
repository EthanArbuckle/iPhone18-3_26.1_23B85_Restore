uint64_t sub_24A6A2BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24A6A2D48(a3, a4);
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
      sub_24A6A36A4(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_24A6A2D48(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_24A82DC44();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_24A6A3F20();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t sub_24A6A2D48(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24A82DCC4();
  sub_24A82D094();
  v6 = sub_24A82DD24();

  return sub_24A6A3964(a1, a2, v6);
}

uint64_t sub_24A6A2DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A82CDF4();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CE54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);

  LOBYTE(a2) = sub_24A6A30A8(a2, 0);

  if ((a2 & 1) != 0 && (*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isUpdatingSingleDevices) & 1) == 0)
  {
    v20[1] = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    aBlock[4] = a3;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = a4;
    v19 = _Block_copy(aBlock);

    sub_24A82CE24();
    v22 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v16, v11, v19);
    _Block_release(v19);
    (*(v21 + 8))(v11, v8);
    (*(v13 + 8))(v16, v12);
  }

  return result;
}

size_t sub_24A6A30A8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMIPItemGroup();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v72[-v12];
  v14 = sub_24A6BBA94(&qword_27EF5E118, &qword_24A837760);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v72[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v72[-v19];
  swift_beginAccess();
  v21 = *(v3 + 80);

  v74 = a1;
  v22 = sub_24A7D96FC(a1, v21);

  v23 = v22 ^ 1 | a2;
  if (v23)
  {
    v73 = v22 ^ 1 | a2;
    v24 = *(v3 + 288);
    v76 = 0;
    v77 = 0;
    v75 = v24;
    swift_bridgeObjectRetain_n();
    swift_beginAccess();
    while (1)
    {
      sub_24A7547C4(v18);
      sub_24A67E8FC(v18, v20, &qword_27EF5E118, &qword_24A837760);
      v25 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
      if ((*(*(v25 - 8) + 48))(v20, 1, v25) == 1)
      {
        break;
      }

      v26 = *v20;
      sub_24A68D628(v20 + *(v25 + 48), v11, type metadata accessor for FMIPItemGroup);
      v27 = *(v3 + 280);

      FMIPItemGroup.init(itemGroup:items:)(v11, v27, v13);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = sub_24A766CC0(v24);
        v24 = result;
        if ((v26 & 0x8000000000000000) != 0)
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      if (v26 >= v24[2])
      {
        __break(1u);
        return result;
      }

      sub_24A76F3A8(v13, v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26, type metadata accessor for FMIPItemGroup);
    }

    v29 = *(v3 + 288);
    *(v3 + 288) = v24;

    v30 = sub_24A758EF8(v74);
    v31 = *(v3 + 80);

    v32 = sub_24A7685B4(v30, v31);

    v33 = *(v3 + 80);
    *(v3 + 80) = v32;

    v34 = *(v3 + 80);
    v35 = *(v3 + 192);

    v36 = sub_24A7690FC(v34, v35);

    v37 = *(v3 + 80);
    *(v3 + 80) = v36;

    v38 = *(v3 + 80);

    v40 = sub_24A7580CC(v39);

    v41 = *(v3 + 80);
    *(v3 + 80) = v40;

    v42 = *(v3 + 80);
    v43 = *(v3 + 200);

    v44 = sub_24A769874(v42, v43);

    v45 = *(v3 + 80);
    *(v3 + 80) = v44;

    v46 = *(v3 + 80);
    v47 = *(v3 + 216);

    v48 = sub_24A76A0B0(v46, v47);

    v49 = *(v3 + 80);
    *(v3 + 80) = v48;

    v50 = *(v3 + 80);
    v51 = *(v3 + 224);

    v52 = sub_24A76A8F4(v50, v51);

    v53 = *(v3 + 80);
    *(v3 + 80) = v52;

    v54 = *(v3 + 80);
    v55 = *(v3 + 232);

    v56 = sub_24A76B138(v54, v55);

    v57 = *(v3 + 80);
    *(v3 + 80) = v56;

    v58 = *(v3 + 80);
    v59 = *(v3 + 208);

    v60 = sub_24A76B96C(v58, v59);

    v61 = *(v3 + 80);
    *(v3 + 80) = v60;

    v62 = *(v3 + 80);

    v64 = sub_24A7597A0(v63);

    v65 = *(v3 + 80);
    *(v3 + 80) = v64;

    v66 = *(v3 + 80);
    v67 = *(v3 + 304);

    v68 = sub_24A76C298(v66, v67);

    v69 = *(v3 + 80);
    *(v3 + 80) = v68;

    v23 = v73;
    if ((*(v3 + 16) & 1) != 0 && *(v3 + 24) == 1)
    {
      if (*(v3 + 328))
      {
        v70 = *(v3 + 80);

        sub_24A761CE4(v71, &unk_285DC7558, sub_24A76F410, &unk_285DC7570);
      }
    }
  }

  return v23 & 1;
}

uint64_t sub_24A6A36A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E6C0, &qword_24A838CE0);
  v40 = a2;
  result = sub_24A82D964();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_24A6A3964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24A82DC04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24A6A3A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_24A68FED4(v21, v18, a4);
        sub_24A68FED4(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_24A692298(v15, a6);
        sub_24A692298(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_24A6A3BD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E55;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E696772616843;
    }

    else
    {
      v4 = 0x6772616843746F4ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEB00000000676E69;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64656772616843;
    }

    else
    {
      v4 = 0x6E776F6E6B6E55;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x676E696772616843;
  if (a2 != 2)
  {
    v7 = 0x6772616843746F4ELL;
    v6 = 0xEB00000000676E69;
  }

  if (a2)
  {
    v2 = 0x64656772616843;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24A82DC04();
  }

  return v10 & 1;
}

void FMIPDevice.bestLocation.getter(char *a1@<X8>)
{
  v10 = *(v1 + 256);
  *v11 = *(v1 + 264);
  v8 = *(v1 + 280);
  v9 = *(v1 + 288);
  v3 = (*(v1 + 216) >> 5) & 1;
  v4 = *(type metadata accessor for FMIPDevice() + 128);
  v5 = v9;
  v6 = v11[0];
  sub_24A7DC368(&v10, &v8, v3, v1 + v4, a1);

  v7 = v11[0];
}

uint64_t sub_24A6A3E20(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

uint64_t sub_24A6A3E7C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 238)
  {
    v4 = *a1;
    if (v4 >= 0x12)
    {
      return v4 - 17;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_24A82CA34();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

void *sub_24A6A3F20()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5E6C0, &qword_24A838CE0);
  v2 = *v0;
  v3 = sub_24A82D954();
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

uint64_t sub_24A6A4098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 50);
    v4 = (a1 + 50);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = *(v4 - 2) ^ *(v3 - 2);
      if (*(v4 - 18) == *(v3 - 18) && *(v4 - 10) == *(v3 - 10))
      {
        if ((v6 ^ v8 | v5 ^ v7 | v9))
        {
          return 0;
        }
      }

      else if ((v6 ^ v8) & 1 | ((sub_24A82DC04() & 1) == 0) | ((v5 ^ v7) | v9) & 1)
      {
        return 0;
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24A6A4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_24A6A2BC0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_24A6A2D48(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_24A6A3F20();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_24A7C4374(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_24A6A428C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(v12, v5, sizeof(v12));
    memcpy(v14, v6, sizeof(v14));
    memcpy(__src, v6, sizeof(__src));
    sub_24A6CC988(__dst, v10);
    sub_24A6CC988(v14, v10);
    v8 = _s8FMIPCore16FMIPSafeLocationV2eeoiySbAC_ACtFZ_0(v12, __src);
    memcpy(v15, __src, sizeof(v15));
    sub_24A6CC294(v15);
    memcpy(v16, v12, sizeof(v16));
    sub_24A6CC294(v16);
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 352;
    v5 += 352;
  }

  return 1;
}

uint64_t sub_24A6A43B8()
{
  v93 = sub_24A82CA34();
  v0 = *(v93 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v93);
  v4 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v90 - v5;
  sub_24A82CA24();
  v7 = [objc_opt_self() sharedInstance];
  v8 = MEMORY[0x277D839B0];
  v97 = MEMORY[0x277D839B0];
  LOBYTE(v96) = 1;
  sub_24A6A50DC(&v96, v95);
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v98 = v9;
  sub_24A6A4F8C(v95, 2037149030, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v11 = v98;
  v97 = v8;
  LOBYTE(v96) = 1;
  sub_24A6A50DC(&v96, v95);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v98 = v11;
  sub_24A6A4F8C(v95, 1752397168, 0xE400000000000000, v12);
  v13 = v98;
  v97 = MEMORY[0x277D83B88];
  *&v96 = 1;
  sub_24A6A50DC(&v96, v95);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v98 = v13;
  sub_24A6A4F8C(v95, 0xD000000000000011, 0x800000024A8459C0, v14);
  v15 = v98;
  sub_24A82C934();
  v97 = MEMORY[0x277D839F8];
  *&v96 = v16 * 1000.0;
  sub_24A6A50DC(&v96, v95);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v98 = v15;
  sub_24A6A4F8C(v95, 0x6954746E65696C63, 0xEF706D617473656DLL, v17);
  v18 = MEMORY[0x277D837D0];
  v19 = v98;
  v97 = MEMORY[0x277D837D0];
  *&v96 = 3157559;
  *(&v96 + 1) = 0xE300000000000000;
  sub_24A6A50DC(&v96, v95);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v19;
  sub_24A6A4F8C(v95, 0x6973726556707061, 0xEA00000000006E6FLL, v20);
  v21 = v94;
  v98 = v94;
  v22 = [v7 productType];
  if (v22)
  {
    v23 = v22;
    v24 = v7;
    v25 = sub_24A82CFC4();
    v27 = v26;

    v97 = v18;
    *&v96 = v25;
    *(&v96 + 1) = v27;
    v7 = v24;
    sub_24A6A50DC(&v96, v95);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v21;
    sub_24A6A4F8C(v95, 0x54746375646F7270, 0xEB00000000657079, v28);
    v98 = v94;
  }

  else
  {
    sub_24A7C3F0C(0x54746375646F7270, 0xEB00000000657079, &v96);
    sub_24A6F6C40(&v96);
  }

  v29 = [v7 osVersion];
  if (v29)
  {
    v30 = v29;
    v31 = sub_24A82CFC4();
    v33 = v32;

    v34 = MEMORY[0x277D837D0];
    v97 = MEMORY[0x277D837D0];
    *&v96 = v31;
    *(&v96 + 1) = v33;
    sub_24A6A50DC(&v96, v95);
    v35 = v98;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v35;
    sub_24A6A4F8C(v95, 0x6F6973726556736FLL, 0xE90000000000006ELL, v36);
    v98 = v94;
  }

  else
  {
    sub_24A7C3F0C(0x6F6973726556736FLL, 0xE90000000000006ELL, &v96);
    sub_24A6F6C40(&v96);
    v34 = MEMORY[0x277D837D0];
  }

  v37 = [v7 osBuildVersion];
  if (v37)
  {
    v38 = v37;
    v39 = sub_24A82CFC4();
    v41 = v40;

    v97 = v34;
    *&v96 = v39;
    *(&v96 + 1) = v41;
    sub_24A6A50DC(&v96, v95);
    v42 = v98;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v42;
    sub_24A6A4F8C(v95, 0x646C697542736FLL, 0xE700000000000000, v43);
    v98 = v94;
  }

  else
  {
    sub_24A7C3F0C(0x646C697542736FLL, 0xE700000000000000, &v96);
    sub_24A6F6C40(&v96);
  }

  v44 = [v7 deviceUDID];
  if (v44)
  {
    v45 = v44;
    v46 = sub_24A82CFC4();
    v48 = v47;

    v97 = v34;
    *&v96 = v46;
    *(&v96 + 1) = v48;
    sub_24A6A50DC(&v96, v95);
    v49 = v98;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v49;
    sub_24A6A4F8C(v95, 0x4455656369766564, 0xEA00000000004449, v50);
    v98 = v94;
  }

  else
  {
    sub_24A7C3F0C(0x4455656369766564, 0xEA00000000004449, &v96);
    sub_24A6F6C40(&v96);
  }

  if (qword_27EF5CC20 != -1)
  {
    swift_once();
  }

  v51 = *algn_27EF78F38;
  ObjectType = swift_getObjectType();
  v53 = (*(v51 + 32))(ObjectType, v51);
  if (v54)
  {
    v97 = MEMORY[0x277D837D0];
    *&v96 = v53;
    *(&v96 + 1) = v54;
    sub_24A6A50DC(&v96, v95);
    v55 = v98;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v55;
    sub_24A6A4F8C(v95, 0x6E656B6F54737061, 0xE800000000000000, v56);
    v98 = v94;
  }

  v57 = objc_opt_self();
  v58 = sub_24A82CF94();
  v59 = sub_24A82CF94();
  v60 = [v57 dateForKey:v58 inDomain:v59];

  if (v60)
  {
    sub_24A82C9F4();

    v61 = sub_24A82CF94();
    v62 = sub_24A82CF94();
    v63 = [v57 integerForKey:v61 inDomain:v62];

    v64 = sub_24A82CF94();
    v65 = sub_24A82CF94();
    v90 = v4;
    v91 = v6;
    v66 = v7;
    v67 = v65;
    v68 = [v57 BOOLForKey:v64 inDomain:v65];

    v69 = sub_24A82CF94();
    v70 = sub_24A82CF94();
    v71 = [v57 BOOLForKey:v69 inDomain:v70];

    v7 = v66;
    v72 = sub_24A82C994();
    v73 = [v72 fm_epoch];

    v97 = MEMORY[0x277D83B88];
    *&v96 = v63;
    sub_24A6A50DC(&v96, v95);
    v74 = v98;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v74;
    sub_24A6A4F8C(v95, 0x436C6C53776F6873, 0xEC000000746E756FLL, v75);
    v76 = v94;
    v98 = v94;
    v97 = MEMORY[0x277D84A28];
    *&v96 = v73;
    sub_24A6A50DC(&v96, v95);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v76;
    v78 = v93;
    v6 = v91;
    sub_24A6A4F8C(v95, 0xD000000000000010, 0x800000024A8459A0, v77);
    v79 = v94;
    v80 = 0x54554F54504FLL;
    if (v68)
    {
      v80 = 0x4E4954504FLL;
    }

    v81 = 0xE600000000000000;
    v97 = MEMORY[0x277D837D0];
    if (v68)
    {
      v81 = 0xE500000000000000;
    }

    *&v96 = v80;
    *(&v96 + 1) = v81;
    sub_24A6A50DC(&v96, v95);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v79;
    sub_24A6A4F8C(v95, 0x73696365446C6C73, 0xEB000000006E6F69, v82);
    v83 = v94;
    v98 = v94;
    v97 = MEMORY[0x277D839B0];
    LOBYTE(v96) = v71;
    sub_24A6A50DC(&v96, v95);
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v83;
    sub_24A6A4F8C(v95, 0xD000000000000010, 0x800000024A845980, v84);
    (*(v0 + 8))(v90, v78);
    v85 = v94;
    v98 = v94;
  }

  else
  {
    v85 = v98;
  }

  v86 = qword_2815143A8;
  v87 = v92;
  swift_beginAccess();
  v88 = *(v87 + v86);
  *(v87 + v86) = v85;

  sub_24A6A5DF4();

  return (*(v0 + 8))(v6, v93);
}

uint64_t _s8FMIPCore21FMIPPlaySoundMetadataV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v4 = type metadata accessor for FMIPPlaySoundMetadata();
  v5 = v4[5];
  if ((sub_24A82C9E4() & 1) == 0 || qword_24A842A18[*a1] != qword_24A842A18[*a2])
  {
    return 0;
  }

  v6 = v4[6];
  v7 = &a1[v6];
  v8 = *&a1[v6 + 8];
  v9 = &a2[v6];
  v10 = *(v9 + 1);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v4[7];
  v13 = &a1[v12];
  v14 = *&a1[v12 + 8];
  v15 = &a2[v12];
  v16 = *(v15 + 1);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *v13 == *v15 && v14 == v16;
    if (!v17 && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = v4[8];
  v19 = &a1[v18];
  v20 = *&a1[v18 + 8];
  v21 = &a2[v18];
  v22 = *(v21 + 1);
  if (!v20)
  {
    if (!v22)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v22)
  {
    return 0;
  }

  v23 = *v19 == *v21 && v20 == v22;
  if (!v23 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v24 = v4[9];
  v25 = &a1[v24];
  v26 = *&a1[v24 + 8];
  v27 = &a2[v24];
  v28 = *(v27 + 1);
  result = (v26 | v28) == 0;
  if (v26 && v28)
  {
    if (*v25 == *v27 && v26 == v28)
    {
      return 1;
    }

    else
    {

      return sub_24A82DC04();
    }
  }

  return result;
}

_OWORD *sub_24A6A4F8C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24A6A2D48(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24A6A62AC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24A6A5200(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_24A6A2D48(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_24A82DC44();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_24A6876E8(v23);

    return sub_24A6A50DC(a1, v23);
  }

  else
  {
    sub_24A6A5CB0(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_24A6A50DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t _s8FMIPCore26FMIPDeviceLostModeMetadataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *(type metadata accessor for FMIPDeviceLostModeMetadata() + 48);
  if (sub_24A82C9E4() & 1) != 0 && qword_24A83CF40[a1[56]] == qword_24A83CF40[a2[56]] && (*(a1 + 5) == *(a2 + 5) ? (v5 = *(a1 + 6) == *(a2 + 6)) : (v5 = 0), (v5 || (sub_24A82DC04()) && (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) || (sub_24A82DC04())) && (*(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4) || (sub_24A82DC04()) && *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v6 = a1[3] ^ a2[3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_24A6A5200(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5D4B0, &qword_24A832860);
  v36 = a2;
  result = sub_24A82D964();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_24A6A50DC(v25, v37);
      }

      else
      {
        sub_24A67E168(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_24A6A50DC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_24A6A54B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CDF4();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CE54();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v15 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);

  v16 = sub_24A755208(a2);

  if (v16)
  {
    v38 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    *&v52 = sub_24A753B78;
    *(&v52 + 1) = v17;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v51 = sub_24A699BA0;
    *(&v51 + 1) = &unk_285DC6CE0;
    v18 = _Block_copy(&aBlock);

    sub_24A82CE24();
    v44 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    v39 = a2;
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v19 = v43;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v13, v9, v18);
    _Block_release(v18);
    v20 = v19;
    a2 = v39;
    (*(v42 + 8))(v9, v20);
    (*(v40 + 8))(v13, v41);
  }

  v21 = *(a1 + v14);
  v22 = *(a3 + 48);
  v52 = *(a3 + 32);
  v53 = v22;
  v54 = *(a3 + 64);
  v55 = *(a3 + 80);
  v23 = *(a3 + 16);
  aBlock = *a3;
  v51 = v23;

  v24 = sub_24A7552C8(&aBlock);

  if (v24)
  {
    v39 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    v25 = swift_allocObject();
    v26 = *(a3 + 48);
    *(v25 + 56) = *(a3 + 32);
    *(v25 + 72) = v26;
    *(v25 + 88) = *(a3 + 64);
    v27 = *(a3 + 16);
    *(v25 + 24) = *a3;
    *(v25 + 16) = a1;
    *(v25 + 104) = *(a3 + 80);
    *(v25 + 40) = v27;
    v48 = sub_24A753B6C;
    v49 = v25;
    v44 = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_24A699BA0;
    v47 = &unk_285DC6C90;
    v28 = _Block_copy(&v44);

    sub_24A6EF948(a3, &aBlock);
    sub_24A82CE24();
    *&aBlock = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v29 = v43;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v13, v9, v28);
    _Block_release(v28);
    (*(v42 + 8))(v9, v29);
    (*(v40 + 8))(v13, v41);
  }

  v30 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  v31 = swift_allocObject();
  v32 = *(a3 + 48);
  *(v31 + 56) = *(a3 + 32);
  *(v31 + 72) = v32;
  *(v31 + 88) = *(a3 + 64);
  v33 = *(a3 + 16);
  *(v31 + 24) = *a3;
  *(v31 + 16) = a1;
  v34 = *(a3 + 80);
  *(v31 + 40) = v33;
  *(v31 + 104) = v34;
  *(v31 + 112) = a2;
  v48 = sub_24A753B5C;
  v49 = v31;
  v44 = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_24A699BA0;
  v47 = &unk_285DC6C40;
  v35 = _Block_copy(&v44);

  sub_24A6EF948(a3, &aBlock);
  sub_24A82CE24();
  *&aBlock = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v36 = v43;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v9, v35);
  _Block_release(v35);
  (*(v42 + 8))(v9, v36);
  (*(v40 + 8))(v13, v41);
}

uint64_t sub_24A6A5BE4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_24A6A5C4C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

_OWORD *sub_24A6A5CB0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24A6A50DC(a4, (a5[7] + 32 * a1));
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

uint64_t sub_24A6A5D20()
{
  v0 = objc_opt_self();
  v1 = sub_24A82CF94();
  v2 = sub_24A82CF94();
  v3 = [v0 stringForKey:v1 inDomain:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A82CFC4();

  return v4;
}

uint64_t sub_24A6A5DF4()
{
  v1 = v0;
  v2 = qword_2815143A8;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v14 = sub_24A6BBA94(&qword_27EF5D930, &qword_24A83B150);
  *&v13 = v3;
  v4 = qword_27EF5D920;
  v5 = *(v1 + qword_27EF5D920);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));

  v12 = v6;
  if (v14)
  {
    sub_24A6A50DC(&v13, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = sub_24A6A4F8C(v11, 0x6F43746E65696C63, 0xED0000747865746ELL, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_24A6F6C40(&v13);
    sub_24A7C3F0C(0x6F43746E65696C63, 0xED0000747865746ELL, v11);
    v8 = sub_24A6F6C40(v11);
  }

  v9 = *(v1 + v4);
  MEMORY[0x28223BE20](v8);

  os_unfair_lock_lock((v9 + 24));
  sub_24A6A3D44((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
}

uint64_t sub_24A6A5F9C()
{
  v1 = (v0 + qword_27EF78DF8);
  if ((*(v0 + qword_27EF78DF8 + 48) & 1) == 0)
  {
    v2 = v1[4];
    v3 = v1[5];
    v5 = v1[2];
    v4 = v1[3];
    v6 = MEMORY[0x277D83B88];
    v7 = *v1;
    v8 = *(v0 + qword_27EF78DF8 + 8);
    v11 = MEMORY[0x277D83B88];
    v10[0] = v7;
    swift_beginAccess();
    sub_24A6A61DC(v10, 0x3156676174726961, 0xE800000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v11 = v6;
    v10[0] = v8;
    swift_beginAccess();
    sub_24A6A61DC(v10, 0x3256676174726961, 0xE800000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v11 = v6;
    v10[0] = v5;
    swift_beginAccess();
    sub_24A6A61DC(v10, 0x3156616E6D66, 0xE600000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v11 = v6;
    v10[0] = v4;
    swift_beginAccess();
    sub_24A6A61DC(v10, 0x3256616E6D66, 0xE600000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v11 = v6;
    v10[0] = v2;
    swift_beginAccess();
    sub_24A6A61DC(v10, 0x6E6D66656C707061, 0xEB00000000315661);
    swift_endAccess();
    sub_24A6A5DF4();
    v11 = v6;
    v10[0] = v3;
    swift_beginAccess();
    sub_24A6A61DC(v10, 0x6E6D66656C707061, 0xEB00000000325661);
    swift_endAccess();
    return sub_24A6A5DF4();
  }

  return result;
}

uint64_t sub_24A6A61DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_24A6A50DC(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_24A6A4F8C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_24A67F378(a1, &qword_27EF5D898, qword_24A8354A0);
    sub_24A7C3F0C(a2, a3, v10);

    return sub_24A67F378(v10, &qword_27EF5D898, qword_24A8354A0);
  }

  return result;
}

void *sub_24A6A62AC()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5D4B0, &qword_24A832860);
  v2 = *v0;
  v3 = sub_24A82D954();
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
        sub_24A67E168(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24A6A50DC(v25, (*(v4 + 56) + v22));
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

uint64_t sub_24A6A6450()
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A82CDC4();
  sub_24A6797D0(v0, qword_281518F88);
  v1 = sub_24A82CD94();
  v2 = sub_24A82D504();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24A675000, v1, v2, "fetching owner phone Number", v3, 2u);
    MEMORY[0x24C21E1D0](v3, -1, -1);
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v5 = [v4 aa_primaryAppleAccount];
  if (!v5)
  {

    v23 = 0u;
    v24 = 0u;
LABEL_23:
    sub_24A67F378(&v23, &qword_27EF5D898, qword_24A8354A0);
    return 0;
  }

  v6 = v5;
  v7 = sub_24A82CF94();
  v8 = [v6 accountPropertyForKey_];

  if (v8)
  {
    sub_24A82D694();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {

    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = sub_24A82CF94();

  v11 = [v9 authKitAccountWithAltDSID_];

  if (!v11)
  {
LABEL_27:

    return 0;
  }

  v12 = [v9 additionalInfoForAccount_];
  if (!v12)
  {

    goto LABEL_27;
  }

  v13 = v12;
  v14 = sub_24A82CEF4();

  if (*(v14 + 16) && (v15 = sub_24A6A2D48(0x6D754E656E6F6870, 0xEC00000073726562), (v16 & 1) != 0))
  {
    sub_24A67E168(*(v14 + 56) + 32 * v15, &v23);

    sub_24A6BBA94(&qword_27EF5F110, &qword_24A83D590);
    if (swift_dynamicCast())
    {
      if (*(v21 + 16))
      {
        v17 = *(v21 + 32);

        if (*(v17 + 16) && (v18 = sub_24A6A2D48(0x6D754E656E6F6870, 0xEB00000000726562), (v19 & 1) != 0))
        {
          sub_24A67E168(*(v17 + 56) + 32 * v18, &v23);

          if (swift_dynamicCast())
          {
            return v21;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

__n128 sub_24A6A68A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24A6A68B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A6A691C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24A82CDF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24A82CE54();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v23);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v5 + qword_2815147D8);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = v5;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_24A6A6C58;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCA690;
  v20 = _Block_copy(aBlock);

  sub_24A82CE24();
  v24 = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v23);
}

uint64_t sub_24A6A6C08()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_24A6A6C68(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24A82CA34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(MEMORY[0x277D07B80]);
  v16 = sub_24A82CF94();
  v17 = [v15 initWithDescription:v16 andTimeout:120.0];

  v18 = *a2;
  if (type metadata accessor for FMIPRefreshClientRequest() != v18)
  {
    sub_24A82CA24();
    v19 = qword_281518F30;
    swift_beginAccess();
    (*(v11 + 40))(a1 + v19, v14, v10);
    swift_endAccess();
  }

  sub_24A6A7774(a2);
  v27 = type metadata accessor for FMIPBaseRequest();
  v28 = MEMORY[0x277D07D08];
  v26[0] = a2;
  v25[3] = v27;
  v25[4] = sub_24A67A06C(&qword_281514390, type metadata accessor for FMIPBaseRequest);
  v25[0] = a2;
  v20 = objc_opt_self();
  swift_retain_n();
  v21 = [v20 processInfo];
  v22 = [v21 processName];

  sub_24A82CFC4();
  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a1;
  v23[4] = a2;
  v23[5] = a3;
  v23[6] = a4;
  v23[7] = v17;

  v24 = v17;
  sub_24A82CC14();

  sub_24A6876E8(v25);
  sub_24A6876E8(v26);
  [v24 wait];
}

uint64_t sub_24A6A6F78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t type metadata accessor for FMIPRefreshClientRequest()
{
  result = qword_281513CA0;
  if (!qword_281513CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6A7024(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A82CE54();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_24A6A7CD4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE538;
  v16 = _Block_copy(aBlock);

  sub_24A6A7314(a1);
  sub_24A82CE24();
  v20 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_24A6A7314(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_24A6A7338()
{
  sub_24A6A73F0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_24A6A73F0()
{
  if (!qword_281515CC8[0])
  {
    type metadata accessor for FMIPDevice();
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, qword_281515CC8);
    }
  }
}

uint64_t sub_24A6A7448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A82CDF4();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A82CE54();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_24A6A9158;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE498;
  v16 = _Block_copy(aBlock);

  sub_24A6A7314(a1);
  sub_24A82CE24();
  v21 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_24A6A7774(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CA34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + qword_2815147D0);
  if (v9)
  {
    v10 = *(a1 + qword_2815143A0);
    *(a1 + qword_2815143A0) = v9;

    sub_24A6F92DC();
  }

  v11 = qword_281518F30;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v11, v4);
  v12 = qword_281518ED0;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v12, v8, v4);
  swift_endAccess();
  sub_24A6A78FC();
  return (*(v5 + 8))(v8, v4);
}

void sub_24A6A78FC()
{
  v1 = v0;
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);

  os_unfair_lock_unlock((v10 + 24));

  if (*(v11 + 16) && (v12 = sub_24A6A2D48(0x6F43746E65696C63, 0xED0000747865746ELL), (v13 & 1) != 0))
  {
    sub_24A67E168(*(v11 + 56) + 32 * v12, &v32);

    sub_24A6BBA94(&qword_27EF5D930, &qword_24A83B150);
    if (swift_dynamicCast())
    {
      v14 = *&v31[0];
      sub_24A82CA24();
      sub_24A82C9D4();
      v16 = v15;
      v17 = *(v3 + 8);
      v17(v9, v2);
      v18 = qword_281518ED0;
      swift_beginAccess();
      (*(v3 + 16))(v7, v1 + v18, v2);
      sub_24A82C9D4();
      v20 = v19;
      v17(v7, v2);
      v21 = v16 - v20;
      if (COERCE__INT64(fabs(v16 - v20)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v21 > -9.22337204e18)
      {
        if (v21 < 9.22337204e18)
        {
          if ((v21 * 1000) >> 64 == (1000 * v21) >> 63)
          {
            v33 = MEMORY[0x277D83B88];
            *&v32 = 1000 * v21;
            sub_24A6A50DC(&v32, v31);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v30 = v14;
            sub_24A6A4F8C(v31, 0x6576697463616E69, 0xEC000000656D6954, isUniquelyReferenced_nonNull_native);
            v23 = v30;
            v24 = qword_2815143A8;
            swift_beginAccess();
            v25 = *(v1 + v24);
            *(v1 + v24) = v23;

            sub_24A6A5DF4();
            return;
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v26 = sub_24A82CDC4();
  sub_24A6797D0(v26, qword_281518F88);
  v27 = sub_24A82CD94();
  v28 = sub_24A82D4E4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_24A675000, v27, v28, "FMIPBaseRequest: inactive time not set because clientContext doesn't exist", v29, 2u);
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }
}

uint64_t sub_24A6A7CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  sub_24A6A7314(a2);
  sub_24A6A7D7C(sub_24A6AC280, v6);
}

void sub_24A6A7D7C(uint64_t a1, uint64_t isEscapingClosureAtFileLocation)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_24A82CAA4();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - v11;
  v65 = sub_24A82CA34();
  v61 = *(v65 - 8);
  v13 = *(v61 + 64);
  v14 = MEMORY[0x28223BE20](v65);
  v64 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v17 = sub_24A82C514();
  v69 = v17;
  v70 = sub_24A697DF4(&unk_281514680, MEMORY[0x277D08A28]);
  v18 = sub_24A697E3C(aBlock);
  (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D08A00], v17);
  LOBYTE(v17) = sub_24A82C4D4();
  sub_24A6876E8(aBlock);
  if ((v17 & 1) == 0 || *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI) != 1)
  {
    v57 = v6;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v59 = a1;
    v60 = isEscapingClosureAtFileLocation;
    v24 = sub_24A82CDC4();
    sub_24A6797D0(v24, qword_281518F88);
    v25 = sub_24A82CD94();
    v26 = sub_24A82D504();
    v27 = os_log_type_enabled(v25, v26);
    v58 = v3;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_24A68761C(0xD00000000000001BLL, 0x800000024A84ACC0, aBlock);
      _os_log_impl(&dword_24A675000, v25, v26, "FMIPBeaconRefreshingController: %s - Legacy SPI", v28, 0xCu);
      sub_24A6876E8(v29);
      MEMORY[0x24C21E1D0](v29, -1, -1);
      MEMORY[0x24C21E1D0](v28, -1, -1);
    }

    sub_24A82CA24();
    sub_24A82CA94();
    v30 = *(v62 + 16);
    v56 = v12;
    v31 = v12;
    v32 = v62;
    v33 = v63;
    v30(v10, v31, v63);
    v34 = v16;
    v35 = v61;
    v36 = *(v61 + 16);
    v55 = v34;
    v36(v64);
    v37 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v38 = (v8 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v35 + 80) + v39 + 16) & ~*(v35 + 80);
    v41 = swift_allocObject();
    (*(v32 + 32))(v41 + v37, v10, v33);
    *(v41 + v38) = v58;
    v42 = (v41 + v39);
    v44 = v59;
    v43 = v60;
    *v42 = v59;
    v42[1] = v43;
    (*(v35 + 32))(v41 + v40, v64, v65);
    *(v41 + ((v13 + v40 + 7) & 0xFFFFFFFFFFFFFFF8)) = v57;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_24A814374;
    *(v45 + 24) = v41;
    v64 = v41;
    v70 = sub_24A680674;
    v71 = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    v69 = &unk_285DCDEA8;
    v46 = _Block_copy(aBlock);
    v47 = _Block_copy(v46);

    sub_24A6A7314(v44);
    v48 = qword_281513E40;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshBeacons", qword_281513E48, OS_ACTIVITY_FLAG_DEFAULT);
    v50 = _Block_copy(v47);
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_24A6A9A80;
    *(v52 + 24) = v51;
    v66[4] = sub_24A680674;
    v67 = v52;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 1107296256;
    v66[2] = sub_24A6805E4;
    v66[3] = &unk_285DCDF20;
    v53 = _Block_copy(v66);
    a1 = v67;

    os_activity_apply(v49, v53);
    _Block_release(v53);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    _Block_release(v47);
    _Block_release(v46);
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      (*(v62 + 8))(v56, v63);
      (*(v61 + 8))(v55, v65);
      swift_unknownObjectRelease();

      v54 = swift_isEscapingClosureAtFileLocation();

      if ((v54 & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_281515DC8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_281518F88);
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_24A68761C(0xD00000000000001BLL, 0x800000024A84ACC0, aBlock);
    _os_log_impl(&dword_24A675000, v20, v21, "FMIPBeaconRefreshingController: %s - Optimized SPI", v22, 0xCu);
    sub_24A6876E8(v23);
    MEMORY[0x24C21E1D0](v23, -1, -1);
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  sub_24A6A8610(a1, isEscapingClosureAtFileLocation);
}

void sub_24A6A8610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = *v2;
  v36 = a2;
  v37 = sub_24A82CAA4();
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v37);
  v8 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_281518F88);
  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24A675000, v12, v13, "FMIPBeaconRefreshingController: Refresh Beacon Groups", v14, 2u);
    MEMORY[0x24C21E1D0](v14, -1, -1);
  }

  sub_24A82CA94();
  v15 = *(v5 + 16);
  v34 = v10;
  v16 = v37;
  v15(v8, v10, v37);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v17, v8, v16);
  *(v20 + v18) = v3;
  v21 = (v20 + v19);
  v22 = v36;
  *v21 = a1;
  v21[1] = v22;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v35;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_24A6AA01C;
  *(v23 + 24) = v20;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DCDC50;
  v24 = _Block_copy(aBlock);
  v25 = _Block_copy(v24);

  sub_24A6A7314(a1);
  v26 = qword_281513E40;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshBeaconGroups", qword_281513E48, OS_ACTIVITY_FLAG_DEFAULT);
  v28 = _Block_copy(v25);
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_24A6A9A80;
  *(v30 + 24) = v29;
  v38[4] = sub_24A680674;
  v38[5] = v30;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 1107296256;
  v38[2] = sub_24A6805E4;
  v38[3] = &unk_285DCDCC8;
  v31 = _Block_copy(v38);

  os_activity_apply(v27, v31);
  _Block_release(v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  _Block_release(v25);
  _Block_release(v24);
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_11;
  }

  (*(v5 + 8))(v34, v37);
  swift_unknownObjectRelease();

  v33 = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
LABEL_11:
    __break(1u);
  }
}

uint64_t sub_24A6A8B14()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  if (*(v0 + v6))
  {
    v8 = *(v0 + v6 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_24A6A8BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v44 = a2;
  v8 = sub_24A82CDF4();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24A82CE54();
  v45 = *(v47 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CAA4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_281518F88);
  (*(v15 + 16))(v18, a1, v14);
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v40 = a3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v42 = v8;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136315138;
    v26 = sub_24A82CA54();
    v41 = v13;
    v27 = a4;
    v29 = v28;
    (*(v15 + 8))(v18, v14);
    v30 = sub_24A68761C(v26, v29, aBlock);
    a4 = v27;
    v13 = v41;

    *(v23 + 4) = v30;
    _os_log_impl(&dword_24A675000, v20, v21, "FMIPBeaconRefreshingController: Refreshing beacon groups %s", v23, 0xCu);
    sub_24A6876E8(v25);
    v31 = v25;
    v8 = v42;
    MEMORY[0x24C21E1D0](v31, -1, -1);
    v32 = v23;
    a3 = v40;
    MEMORY[0x24C21E1D0](v32, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v33 = v44;
  v34 = *(v44 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v35 = swift_allocObject();
  v35[2] = v33;
  v35[3] = a3;
  v36 = v43;
  v35[4] = a4;
  v35[5] = v36;
  aBlock[4] = sub_24A6A9A74;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCDD18;
  v37 = _Block_copy(aBlock);

  sub_24A6A7314(a3);
  sub_24A82CE24();
  v49 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v38 = v46;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v38, v37);
  _Block_release(v37);
  (*(v48 + 8))(v38, v8);
  (*(v45 + 8))(v13, v47);
}

uint64_t sub_24A6A9104(uint64_t a1)
{
  v3 = v1[2];

  if (v1[3])
  {
    v4 = v1[4];
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_24A6A9164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);
  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24A675000, v6, v7, "FMIPBeaconRefreshingController: refreshing UT alert state", v8, 2u);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);

    v11 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a2;
    v12[4] = a3;
    v14[4] = sub_24A6AA13C;
    v14[5] = v12;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_24A6AA0E8;
    v14[3] = &unk_285DCE4E8;
    v13 = _Block_copy(v14);
    sub_24A6A7314(a2);

    [v10 isUTAppAlertDisabled_];
    _Block_release(v13);
  }
}

void sub_24A6A93C4(uint64_t a1)
{
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconRefreshingController: Start Refreshing", v10, 2u);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isRefreshing) = 1;
  sub_24A800E28();
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing) = 0;
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) = 0;
  sub_24A82C964();
  v11 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastRefreshTime;
  swift_beginAccess();
  (*(v3 + 40))(a1 + v11, v6, v2);
  swift_endAccess();
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_callbackInterval) = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_initialCallbackInterval);
  sub_24A810278();
  sub_24A6A7D7C(0, 0);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_24A814C1C;
  *(v13 + 24) = v12;
  v36 = sub_24A680674;
  v37 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_24A6805E4;
  v35 = &unk_285DCE2E0;
  v14 = _Block_copy(&aBlock);
  v15 = _Block_copy(v14);
  v16 = qword_281513E40;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshUnknownBeacons", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
  v18 = _Block_copy(v15);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24A6A9A80;
  *(v20 + 24) = v19;
  v31[4] = sub_24A680674;
  v31[5] = v20;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 1107296256;
  v31[2] = sub_24A6805E4;
  v31[3] = &unk_285DCE358;
  v21 = _Block_copy(v31);

  os_activity_apply(v17, v21);
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v14);
  _Block_release(v15);
  swift_unknownObjectRelease();
  if (v21)
  {
    __break(1u);
  }

  else
  {

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      sub_24A6A7448(0, 0);
      sub_24A80BA48();
      sub_24A80CB10();
      v23 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession;
      v24 = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
      v36 = sub_24A814A08;
      v37 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_24A8101E0;
      v35 = &unk_285DCE380;
      v25 = _Block_copy(&aBlock);

      v26 = v24;

      [v26 clientConfigurationWithCompletion_];
      _Block_release(v25);

      v27 = *(a1 + v23);
      v28 = swift_allocObject();
      swift_weakInit();
      v36 = sub_24A814A10;
      v37 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_24A801384;
      v35 = &unk_285DCE3A8;
      v29 = _Block_copy(&aBlock);
      v30 = v27;

      [v30 startRefreshingSeparationMonitoringState_];
      _Block_release(v29);

      return;
    }
  }

  __break(1u);
}

uint64_t sub_24A6A99F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6A9A2C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24A6A9A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CA34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  sub_24A82CA24();
  v14 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastRefreshTime;
  swift_beginAccess();
  v15 = *(v7 + 16);
  v46 = v14;
  v15(v11, a1 + v14, v6);
  sub_24A82C974();
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v11, v6);
  v18(v13, v6);
  v19 = 0;
  if (!a2 && v17 <= 30.0)
  {
    v19 = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing);
  }

  v47 = v19;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v20 = sub_24A82CDC4();
  v21 = sub_24A6797D0(v20, qword_281518F88);

  v48 = v21;
  v22 = sub_24A82CD94();
  v23 = sub_24A82D504();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v45 = v7;
    v25 = v24;
    *v24 = 67109632;
    v26 = v47;
    *(v24 + 4) = v47;
    *(v24 + 8) = 1024;
    *(v24 + 10) = v17 > 30.0;
    *(v24 + 14) = 1024;
    *(v24 + 16) = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing);

    _os_log_impl(&dword_24A675000, v22, v23, "FMIPBeaconRefreshingController: Should rate limit? %{BOOL}d, possibly stuck? %{BOOL}d, currentlyRefreshing? %{BOOL}d", v25, 0x14u);
    v27 = v25;
    v7 = v45;
    MEMORY[0x24C21E1D0](v27, -1, -1);

    if (!v26)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (!v47)
    {
LABEL_14:
      *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing) = 1;
      sub_24A82CA24();
      v34 = v46;
      swift_beginAccess();
      (*(v7 + 40))(a1 + v34, v13, v6);
      swift_endAccess();
      v35 = sub_24A82CD94();
      v36 = sub_24A82D504();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_24A675000, v35, v36, "FMIPBeaconRefreshingController: Will call Refresh Beacon Groups", v37, 2u);
        MEMORY[0x24C21E1D0](v37, -1, -1);
      }

      v38 = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
      sub_24A82CAA4();
      v39 = v38;
      v40 = sub_24A82D224();
      v41 = swift_allocObject();
      v41[2] = a1;
      v41[3] = a2;
      v41[4] = a3;
      aBlock[4] = sub_24A6AB83C;
      aBlock[5] = v41;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A6AB7D0;
      aBlock[3] = &unk_285DCDD68;
      v42 = _Block_copy(aBlock);

      sub_24A6A7314(a2);

      [v39 beaconGroupsForUUIDs:v40 completion:v42];
      _Block_release(v42);

      return;
    }
  }

  v28 = sub_24A82CD94();
  v29 = sub_24A82D504();
  v30 = os_log_type_enabled(v28, v29);
  if (v17 > 30.0)
  {
    if (v30)
    {
      v31 = v7;
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v17;
      _os_log_impl(&dword_24A675000, v28, v29, "FMIPBeaconRefreshingController: Refresh queue seemed stuck (for %f sec), allowing refresh.", v32, 0xCu);
      v33 = v32;
      v7 = v31;
      MEMORY[0x24C21E1D0](v33, -1, -1);
    }

    goto LABEL_14;
  }

  if (v30)
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v17;
    _os_log_impl(&dword_24A675000, v28, v29, "FMIPBeaconRefreshingController: Ignoring refresh, the previous one didn't finish, %fs ago", v43, 0xCu);
    MEMORY[0x24C21E1D0](v43, -1, -1);
  }

  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) = 1;
}

uint64_t sub_24A6AA01C()
{
  v1 = *(sub_24A82CAA4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);

  return sub_24A6A8BE0(v0 + v2, v5, v7, v8, v6);
}

uint64_t sub_24A6AA0E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_24A6AA14C(char a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25 = a3;
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    if (a1)
    {
      v12 = 0x64656C6261736964;
    }

    else
    {
      v12 = 0x64656C62616E65;
    }

    if (a1)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v14 = sub_24A68761C(v12, v13, &v26);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconRefreshingController: refreshUTAlertState: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    v15 = v11;
    a3 = v25;
    MEMORY[0x24C21E1D0](v15, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);

    if (!v25)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (a3)
  {
LABEL_14:
    LOBYTE(v26) = a1 & 1;
    a3(&v26);
  }

LABEL_15:
  v16 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_utAlertState;
  v17 = *(v6 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_utAlertState);
  if (a1)
  {
    v18 = 0x64656C6261736964;
  }

  else
  {
    v18 = 0x64656C62616E65;
  }

  if (a1)
  {
    v19 = 0xE800000000000000;
  }

  else
  {
    v19 = 0xE700000000000000;
  }

  if (*(v6 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_utAlertState))
  {
    v20 = 0x64656C6261736964;
  }

  else
  {
    v20 = 0x64656C62616E65;
  }

  if (*(v6 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_utAlertState))
  {
    v21 = 0xE800000000000000;
  }

  else
  {
    v21 = 0xE700000000000000;
  }

  if (v18 == v20 && v19 == v21)
  {
  }

  else
  {
    v23 = sub_24A82DC04();

    if (v23)
    {
    }

    v24 = a1 & 1;
    *(v6 + v16) = v24;
    if (!swift_unknownObjectWeakLoadStrong())
    {
    }

    else
    {
      LOBYTE(v26) = v24;
      sub_24A6AA40C(&v26);

      return swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_24A6AA40C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CE54();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v17 = 136315138;
    if (v13)
    {
      v18 = 0x64656C6261736964;
    }

    else
    {
      v18 = 0x64656C62616E65;
    }

    v32 = v5;
    if (v13)
    {
      v19 = 0xE800000000000000;
    }

    else
    {
      v19 = 0xE700000000000000;
    }

    v20 = v12;
    v21 = v8;
    v22 = v4;
    v23 = v2;
    v24 = sub_24A68761C(v18, v19, aBlock);
    v5 = v32;

    *(v17 + 4) = v24;
    v2 = v23;
    v4 = v22;
    v8 = v21;
    v12 = v20;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPManager: didReceive UT alert state: %s", v17, 0xCu);
    v25 = v31;
    sub_24A6876E8(v31);
    MEMORY[0x24C21E1D0](v25, -1, -1);
    MEMORY[0x24C21E1D0](v17, -1, -1);
  }

  v26 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  *(v27 + 24) = v13;
  aBlock[4] = sub_24A6AA844;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6FB0;
  v28 = _Block_copy(aBlock);

  sub_24A82CE24();
  v35 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v12, v8, v28);
  _Block_release(v28);
  (*(v5 + 8))(v8, v4);
  (*(v33 + 8))(v12, v34);
}

uint64_t sub_24A6AA850(uint64_t a1, char a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = a2 & 1;
    (*(v6 + 144))(a1, &v8, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FMIPUTAlertState.rawValue.getter()
{
  if (*v0)
  {
    result = 0x64656C6261736964;
  }

  else
  {
    result = 0x64656C62616E65;
  }

  *v0;
  return result;
}

BOOL FMIPManager.isInitialized.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
  v2 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  if (v1 == 1)
  {
    swift_beginAccess();
    v3 = *(v0 + v2);
    if (v3)
    {
      return (v3 >> 1) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    swift_beginAccess();
    return (v1 & ~*(v0 + v2)) == 0;
  }
}

Swift::Void __swiftcall FMIPManager.startRefreshing(subsystems:)(FMIPCore::FMIPManagerSubsystem subsystems)
{
  v2 = v1;
  v4 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v61 - v6;
  v66 = sub_24A82CE54();
  v7 = *(v66 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v66);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CDF4();
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v11);
  v68 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CA34();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *subsystems.rawValue;
  v19 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_stopRefreshTimestamp;
  swift_beginAccess();
  if ((*(v15 + 48))(v2 + v19, 1, v14))
  {
    v20 = 0;
  }

  else
  {
    (*(v15 + 16))(v18, v2 + v19, v14);
    sub_24A82C9C4();
    v22 = v21;
    (*(v15 + 8))(v18, v14);
    v20 = v22 > -60.0;
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v65 = v2;
  v23 = sub_24A82CDC4();
  sub_24A6797D0(v23, qword_281518F88);
  v24 = sub_24A82CD94();
  v25 = sub_24A82D504();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = v11;
    v28 = v10;
    v29 = v7;
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v26 = 136315138;
    if (v20)
    {
      v31 = 0xD000000000000014;
    }

    else
    {
      v31 = 0;
    }

    if (v20)
    {
      v32 = 0x800000024A846B90;
    }

    else
    {
      v32 = 0xE000000000000000;
    }

    v33 = sub_24A68761C(v31, v32, &aBlock);

    *(v26 + 4) = v33;
    _os_log_impl(&dword_24A675000, v24, v25, "FMIPManager: start refreshing %s", v26, 0xCu);
    sub_24A6876E8(v30);
    v7 = v29;
    v10 = v28;
    v11 = v27;
    MEMORY[0x24C21E1D0](v30, -1, -1);
    MEMORY[0x24C21E1D0](v26, -1, -1);
  }

  v34 = v65;
  v35 = *(v65 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  v36 = *(v35 + 72);

  v37 = v36;
  v38 = v68;
  sub_24A82CDE4();
  v39 = swift_allocObject();
  *(v39 + 16) = v35;
  *(v39 + 24) = v20;
  v40 = v34;
  v75 = sub_24A74EF20;
  v76 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_24A699BA0;
  v74 = &unk_285DC5788;
  v41 = _Block_copy(&aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v10, v38, v41);
  _Block_release(v41);

  v42 = v66;
  v63 = *(v7 + 8);
  v64 = v7 + 8;
  v63(v10, v66);
  v43 = *(v69 + 8);
  v69 += 8;
  v43(v38, v11);

  v44 = v67;
  if ((v67 & 1) != 0 && (*(v40 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isItemsSnapshotMode) & 1) == 0)
  {
    v45 = *(v40 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
    if (v45)
    {
      v46 = *(v45 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshQueue);
      v47 = swift_allocObject();
      *(v47 + 16) = sub_24A74F040;
      *(v47 + 24) = v45;
      v75 = sub_24A680674;
      v76 = v47;
      aBlock = MEMORY[0x277D85DD0];
      v72 = 1107296256;
      v73 = sub_24A6805E4;
      v74 = &unk_285DC5878;
      v48 = _Block_copy(&aBlock);
      swift_retain_n();

      dispatch_sync(v46, v48);
      _Block_release(v48);
      LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

      v44 = v67;
      if (v46)
      {
        __break(1u);
        goto LABEL_26;
      }
    }

    *(v40 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingDevices) = 1;
  }

  if (v44 & 3) == 0 || (*(v40 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isDevicesSnapshotMode) & 1) != 0 || (*(v40 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isItemsSnapshotMode))
  {
    goto LABEL_24;
  }

  v49 = *(v40 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);
  v50 = *(v49 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_24A74EF84;
  *(v51 + 24) = v49;
  v75 = sub_24A680674;
  v76 = v51;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_24A6805E4;
  v74 = &unk_285DC5800;
  v52 = _Block_copy(&aBlock);
  swift_retain_n();

  dispatch_sync(v50, v52);
  _Block_release(v52);
  LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

  if ((v50 & 1) == 0)
  {
    v53 = *(v40 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);
    v54 = sub_24A82D354();
    v55 = v62;
    (*(*(v54 - 8) + 56))(v62, 1, 1, v54);
    v56 = swift_allocObject();
    v56[2] = 0;
    v56[3] = 0;
    v56[4] = v53;

    sub_24A7382F4(0, 0, v55, &unk_24A836DA0, v56);

    *(v40 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingItems) = 1;
    v57 = *(v40 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_safeLocationRefreshingController);

    sub_24A6F13CC();

    [*(*(v40 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager) startUpdatingLocation];
    v42 = v66;
LABEL_24:
    v58 = *(v40 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    v75 = sub_24A74EF2C;
    v76 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v72 = 1107296256;
    v73 = sub_24A699BA0;
    v74 = &unk_285DC57B0;
    v59 = _Block_copy(&aBlock);

    sub_24A82CE24();
    v70 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v60 = v68;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v10, v60, v59);
    _Block_release(v59);
    v43(v60, v11);
    v63(v10, v42);

    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_24A6AB3F8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A6AB480()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = qword_27EF5D920;
  v3 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));

  v5 = sub_24A82CED4();

  LODWORD(v4) = [v1 isValidJSONObject_];

  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *(v0 + v2);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));

  v8 = sub_24A82CED4();

  v16[0] = 0;
  v9 = [v1 dataWithJSONObject:v8 options:0 error:v16];

  v10 = v16[0];
  if (!v9)
  {
    v13 = v10;
    v14 = sub_24A82C7F4();

    swift_willThrow();
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  v11 = sub_24A82C904();

  result = v11;
LABEL_6:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24A6AB654()
{
  v1 = *(*v0 + qword_27EF5D928);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

uint64_t sub_24A6AB71C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_24A679170(0, a3, a4);
  sub_24A6AB7EC(a5, a3, a4);
  v10 = sub_24A82D3A4();

  v9(v10);
}

uint64_t sub_24A6AB7EC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A679170(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A6AB848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v38 = a4;
  v7 = sub_24A82CDF4();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_24A82CE54();
  v40 = *(v42 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPItemGroup();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_24A6ABDFC(a1, sub_24A753FA0, sub_24A74E8A4);
  v18 = v17;
  if ((v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
  {
    v19 = sub_24A82D744();
  }

  else
  {
    v19 = *(v17 + 16);
  }

  if (v19)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    result = sub_24A6FCB74(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return result;
    }

    v36 = a2;
    v37 = a3;
    v21 = 0;
    v22 = aBlock[0];
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x24C21D180](v21, v18);
      }

      else
      {
        v23 = *(v18 + 8 * v21 + 32);
      }

      sub_24A707330(v23, v16);
      aBlock[0] = v22;
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_24A6FCB74(v24 > 1, v25 + 1, 1);
        v22 = aBlock[0];
      }

      ++v21;
      *(v22 + 16) = v25 + 1;
      sub_24A8127B4(v16, v22 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v25, type metadata accessor for FMIPItemGroup);
    }

    while (v19 != v21);

    a2 = v36;
    a3 = v37;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v26 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_itemGroups);
  *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_itemGroups) = v22;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A6ABEBC(v22);
    swift_unknownObjectRelease();
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v27 = sub_24A82CDC4();
  sub_24A6797D0(v27, qword_281518F88);
  v28 = sub_24A82CD94();
  v29 = sub_24A82D504();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_24A675000, v28, v29, "FMIPBeaconRefreshingController: beacon groups updated", v30, 2u);
    MEMORY[0x24C21E1D0](v30, -1, -1);
  }

  v31 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  aBlock[4] = sub_24A6AC6F0;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCDD90;
  v32 = _Block_copy(aBlock);

  v33 = v39;
  sub_24A82CE24();
  v45 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v34 = v41;
  v35 = v44;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v33, v34, v32);
  _Block_release(v32);
  (*(v43 + 8))(v34, v35);
  (*(v40 + 8))(v33, v42);

  if (a3)
  {
    return a3(result);
  }

  return result;
}

char *sub_24A6ABDFC(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_24A82D744();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_24A6BAFBC();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_24A6ABEBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24A82CDF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);

  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = v13;
    v18 = v17;
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v18 = 136315138;
    v19 = type metadata accessor for FMIPItemGroup();
    v20 = MEMORY[0x24C21CB60](a1, v19);
    v40 = v15;
    v22 = sub_24A68761C(v20, v21, aBlock);
    v39 = v16;
    v23 = v10;
    v24 = a1;
    v25 = v8;
    v26 = v9;
    v27 = v2;
    v28 = v5;
    v29 = v4;
    v30 = v22;

    *(v18 + 4) = v30;
    v4 = v29;
    v5 = v28;
    v2 = v27;
    v9 = v26;
    v8 = v25;
    a1 = v24;
    v10 = v23;
    v31 = v40;
    _os_log_impl(&dword_24A675000, v40, v39, "FMIPManager: didReceive itemsGroup: %s", v18, 0xCu);
    v32 = v41;
    sub_24A6876E8(v41);
    MEMORY[0x24C21E1D0](v32, -1, -1);
    v33 = v18;
    v13 = v42;
    MEMORY[0x24C21E1D0](v33, -1, -1);
  }

  else
  {
  }

  v34 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = v2;
  aBlock[4] = sub_24A6ACD40;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC63D0;
  v36 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v8, v13, v36);
  _Block_release(v36);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_24A6AC28C()
{
  v1 = v0;
  v2 = sub_24A82CE54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CDF4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPManager: refreshingControllerDidInitialize didInitialize", v15, 2u);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v16 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  aBlock[4] = sub_24A6ADC60;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6FD8;
  v17 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v6, v11, v17);
  _Block_release(v17);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_24A6AC554(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_24A6AC28C();
    result = swift_unknownObjectRelease();
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_24A6AC5C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
      sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
      sub_24A82D574();
      (*(v3 + 24))(v1, v6, ObjectType, v3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24A6AC6FC(uint64_t result)
{
  *(result + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing) = 0;
  if (*(result + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) == 1)
  {
    *(result + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) = 0;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v1 = sub_24A82CDC4();
    sub_24A6797D0(v1, qword_281518F88);
    v2 = sub_24A82CD94();
    v3 = sub_24A82D504();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24A675000, v2, v3, "FMIPBeaconRefreshingController: Another refresh was queued, running.", v4, 2u);
      MEMORY[0x24C21E1D0](v4, -1, -1);
    }

    return sub_24A6A8610(0, 0);
  }

  return result;
}

uint64_t sub_24A6AC810(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_24A82CDF4();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_24A82CE54();
  v41 = *(v43 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPItemGroup();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v40 - v14);
  MEMORY[0x28223BE20](v13);
  v18 = (&v40 - v17);
  v19 = *(a1 + 16);
  if (v19)
  {
    v46 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = a1 + v20;
    v22 = *(v16 + 72);
    v23 = MEMORY[0x277D84F90];
    do
    {
      sub_24A69F134(v21, v15, type metadata accessor for FMIPItemGroup);
      v24 = *(v47 + v46);
      swift_beginAccess();
      v25 = *(v24 + 280);

      FMIPItemGroup.init(itemGroup:items:)(v15, v25, v18);
      sub_24A69F134(v18, v12, type metadata accessor for FMIPItemGroup);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_24A780544(0, v23[2] + 1, 1, v23);
      }

      v27 = v23[2];
      v26 = v23[3];
      if (v27 >= v26 >> 1)
      {
        v23 = sub_24A780544(v26 > 1, v27 + 1, 1, v23);
      }

      sub_24A69F2C4(v18, type metadata accessor for FMIPItemGroup);
      v23[2] = v27 + 1;
      sub_24A6A2390(v12, v23 + v20 + v27 * v22, type metadata accessor for FMIPItemGroup);
      v21 += v22;
      --v19;
    }

    while (v19);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v28 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v29 = v47;
  v30 = *(v47 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);

  v31 = sub_24A6ACD48(v23);

  if (v31)
  {
    v33 = *(*(v29 + v28) + 288);
    v34 = *(v29 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    v35 = swift_allocObject();
    *(v35 + 16) = v29;
    *(v35 + 24) = v33;
    aBlock[4] = sub_24A752D88;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC6420;
    v36 = _Block_copy(aBlock);

    v37 = v40;
    sub_24A82CE24();
    v48 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v38 = v42;
    v39 = v45;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v37, v38, v36);
    _Block_release(v36);
    (*(v44 + 8))(v38, v39);
    (*(v41 + 8))(v37, v43);
  }

  return result;
}

size_t sub_24A6ACD48(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPItemGroup();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v37[-v10];
  v12 = sub_24A6BBA94(&qword_27EF5E118, &qword_24A837760);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v37[-v17];
  v19 = *(v2 + 288);

  v20 = sub_24A6AD12C(a1, v19);

  if ((v20 & 1) == 0)
  {
    v38 = v20;
    v21 = *(v2 + 288);
    *(v2 + 288) = a1;

    v22 = *(v2 + 288);
    v40 = 0;
    v41 = 0;
    v39 = v22;
    swift_bridgeObjectRetain_n();
    swift_beginAccess();
    while (1)
    {
      sub_24A7547C4(v16);
      sub_24A67E8FC(v16, v18, &qword_27EF5E118, &qword_24A837760);
      v23 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
      if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
      {
        break;
      }

      v24 = *v18;
      sub_24A68D628(v18 + *(v23 + 48), v9, type metadata accessor for FMIPItemGroup);
      v25 = *(v2 + 280);

      FMIPItemGroup.init(itemGroup:items:)(v9, v25, v11);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = sub_24A766CC0(v22);
        v22 = result;
        if ((v24 & 0x8000000000000000) != 0)
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      if (v24 >= v22[2])
      {
        __break(1u);
        return result;
      }

      sub_24A76F3A8(v11, v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, type metadata accessor for FMIPItemGroup);
    }

    v27 = *(v2 + 288);
    *(v2 + 288) = v22;

    if (*(v2 + 24) == 1 && *(v2 + 320))
    {
      v28 = *(v2 + 288);
      v29 = *(v2 + 320);

      sub_24A761CE4(v30, &unk_285DC7468, sub_24A76F27C, &unk_285DC7480);
    }

    swift_beginAccess();
    v31 = *(v2 + 80);

    v33 = sub_24A758EF8(v32);

    v34 = *(v2 + 80);
    *(v2 + 80) = v33;

    Strong = swift_unknownObjectWeakLoadStrong();
    LOBYTE(v20) = v38;
    if (Strong)
    {
      v36 = *(v2 + 80);

      sub_24A69C358(v2, v36);

      swift_unknownObjectRelease();
    }
  }

  return (v20 & 1) == 0;
}

uint64_t sub_24A6AD12C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemLostModeMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = (&v62 - v11);
  v74 = sub_24A6BBA94(&qword_27EF5DDC0, &unk_24A83A9D0);
  v12 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v75 = &v62 - v13;
  v14 = type metadata accessor for FMIPItem();
  v72 = *(v14 - 8);
  v15 = *(v72 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  v21 = type metadata accessor for FMIPItemGroup();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v23);
  v29 = (&v62 - v28);
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    return 0;
  }

  if (!v30 || a1 == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v33 = a1 + v32;
  v68 = v4;
  v69 = a2 + v32;
  v66 = (v5 + 48);
  v67 = v26;
  v34 = *(v27 + 72);
  v62 = v8;
  v63 = v34;
  v71 = v30;
  v64 = v33;
  v65 = v25;
  while (1)
  {
    v35 = v34 * v31;
    result = sub_24A68FED4(v33 + v34 * v31, v29, type metadata accessor for FMIPItemGroup);
    if (v31 == v71)
    {
      break;
    }

    v70 = v31;
    sub_24A68FED4(v69 + v35, v25, type metadata accessor for FMIPItemGroup);
    if (*v29 != *v25 || (v29[1] != v25[1] || v29[2] != v25[2]) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_44;
    }

    if ((v29[3] != v25[3] || v29[4] != v25[4]) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_44;
    }

    v37 = v29[5];
    v38 = v25[5];
    v39 = *(v37 + 16);
    if (v39 != *(v38 + 16))
    {
      goto LABEL_44;
    }

    if (v39 && v37 != v38)
    {
      v40 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v41 = v37 + v40;
      v42 = v38 + v40;
      v43 = *(v72 + 72);
      do
      {
        sub_24A68FED4(v41, v20, type metadata accessor for FMIPItem);
        sub_24A68FED4(v42, v18, type metadata accessor for FMIPItem);
        v44 = _s8FMIPCore8FMIPItemV2eeoiySbAC_ACtFZ_0(v20, v18);
        sub_24A692298(v18, type metadata accessor for FMIPItem);
        sub_24A692298(v20, type metadata accessor for FMIPItem);
        if (!v44)
        {
          goto LABEL_44;
        }

        v42 += v43;
        v41 += v43;
      }

      while (--v39);
    }

    if (v29[8] != v25[8] || (sub_24A7B3D74(v29[7], v25[7]) & 1) == 0)
    {
      goto LABEL_44;
    }

    v45 = *(v67 + 48);
    v46 = v75;
    v47 = *(v74 + 48);
    sub_24A67E964(v29 + v45, v75, &unk_27EF5E100, &unk_24A839DB0);
    sub_24A67E964(v25 + v45, v46 + v47, &unk_27EF5E100, &unk_24A839DB0);
    v48 = *v66;
    v49 = v68;
    if ((*v66)(v46, 1, v68) == 1)
    {
      v50 = v48(v46 + v47, 1, v49);
      v25 = v65;
      if (v50 != 1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v51 = v73;
      sub_24A67E964(v46, v73, &unk_27EF5E100, &unk_24A839DB0);
      v52 = v48(v46 + v47, 1, v49);
      v53 = v62;
      if (v52 == 1)
      {
        sub_24A692298(v51, type metadata accessor for FMIPItemLostModeMetadata);
        v25 = v65;
LABEL_42:
        v60 = &qword_27EF5DDC0;
        v61 = &unk_24A83A9D0;
        goto LABEL_43;
      }

      sub_24A7E11A4(v46 + v47, v62, type metadata accessor for FMIPItemLostModeMetadata);
      v25 = v65;
      if ((*v51 != *v53 || v51[1] != v53[1]) && (sub_24A82DC04() & 1) == 0 || (v51[2] != v53[2] || v51[3] != v53[3]) && (sub_24A82DC04() & 1) == 0 || (v54 = *(v49 + 24), (sub_24A82C9E4() & 1) == 0))
      {
        sub_24A692298(v53, type metadata accessor for FMIPItemLostModeMetadata);
        sub_24A692298(v51, type metadata accessor for FMIPItemLostModeMetadata);
        v60 = &unk_27EF5E100;
        v61 = &unk_24A839DB0;
LABEL_43:
        sub_24A67F378(v46, v60, v61);
LABEL_44:
        sub_24A692298(v25, type metadata accessor for FMIPItemGroup);
        sub_24A692298(v29, type metadata accessor for FMIPItemGroup);
        return 0;
      }

      v55 = *(v49 + 28);
      v56 = *(v51 + v55);
      v57 = *(v51 + v55 + 8);
      v58 = (v53 + v55);
      if (v56 != *v58 || v57 != v58[1])
      {
        v59 = sub_24A82DC04();
        sub_24A692298(v53, type metadata accessor for FMIPItemLostModeMetadata);
        sub_24A692298(v73, type metadata accessor for FMIPItemLostModeMetadata);
        sub_24A67F378(v46, &unk_27EF5E100, &unk_24A839DB0);
        sub_24A692298(v25, type metadata accessor for FMIPItemGroup);
        sub_24A692298(v29, type metadata accessor for FMIPItemGroup);
        if ((v59 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_37;
      }

      sub_24A692298(v53, type metadata accessor for FMIPItemLostModeMetadata);
      sub_24A692298(v73, type metadata accessor for FMIPItemLostModeMetadata);
    }

    sub_24A67F378(v46, &unk_27EF5E100, &unk_24A839DB0);
    sub_24A692298(v25, type metadata accessor for FMIPItemGroup);
    sub_24A692298(v29, type metadata accessor for FMIPItemGroup);
LABEL_37:
    v31 = v70 + 1;
    result = 1;
    v34 = v63;
    v33 = v64;
    if (v70 + 1 == v71)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A6AD900(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CDF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems))
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A82CDC4();
    sub_24A6797D0(v15, qword_281518F88);
    v16 = sub_24A82CD94();
    v17 = sub_24A82D504();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = v10;
      v19 = v9;
      v20 = v5;
      v21 = v4;
      v22 = a1;
      v23 = v18;
      *v18 = 0;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPManager: didReceive offline finding device states.", v18, 2u);
      v24 = v23;
      a1 = v22;
      v4 = v21;
      v5 = v20;
      v9 = v19;
      v10 = v29;
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    v25 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
    sub_24A82CDE4();
    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    *(v26 + 24) = v2;
    aBlock[4] = sub_24A752D80;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC6358;
    v27 = _Block_copy(aBlock);

    sub_24A82CE24();
    MEMORY[0x24C21CE90](0, v8, v14, v27);
    _Block_release(v27);
    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v14, v9);
  }

  return result;
}

uint64_t sub_24A6ADC68(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = v3 | 2;
  v5 = v3;
  return sub_24A6ADCC4(&v5);
}

uint64_t sub_24A6ADCC4(uint64_t *a1)
{
  v3 = sub_24A82CDF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CE54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  result = swift_beginAccess();
  v16 = *(v1 + v14);
  if (v13 != v16)
  {
    v17 = *(*(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
    if (v17 == 1)
    {
      if ((~v16 & 3) != 0)
      {
        return result;
      }
    }

    else if ((v17 & ~v16) != 0)
    {
      return result;
    }

    v19[1] = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    aBlock[4] = sub_24A752D98;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC65B0;
    v19[0] = _Block_copy(aBlock);

    sub_24A82CE24();
    v19[2] = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    v18 = v19[0];
    MEMORY[0x24C21CE90](0, v12, v7, v19[0]);
    _Block_release(v18);
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
  }

  return result;
}

void sub_24A6AE004()
{
  sub_24A82CAA4();
  if (v0 <= 0x3F)
  {
    sub_24A82CA34();
    if (v1 <= 0x3F)
    {
      sub_24A6790B0();
      if (v2 <= 0x3F)
      {
        sub_24A6A22D8(319, &qword_27EF5CD10, MEMORY[0x277D83E88], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24A6AE108(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A6BBA94(a1, a2);
  sub_24A82D574();
  return v5;
}

uint64_t sub_24A6AE190@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  swift_beginAccess();
  *a1 = *(v3 + 280);
}

uint64_t type metadata accessor for FMIPDiscoveredAccessory()
{
  result = qword_27EF5DDD8;
  if (!qword_27EF5DDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A6AE250()
{
  sub_24A679170(319, &qword_27EF5DDE8, 0x277D49668);
  if (v0 <= 0x3F)
  {
    sub_24A6AE2FC();
    if (v1 <= 0x3F)
    {
      sub_24A678728();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24A6AE2FC()
{
  if (!qword_27EF5DDF0)
  {
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5DDF0);
    }
  }
}

uint64_t FMIPNotificationAuthLaunchEvent.init(findMyNotificationAuthStatus:utAlertAuthStatus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void _s8FMIPCore13FMIPAnalyticsV31sendNotificationAuthLaunchEvent5eventyAA016FMIPNotificationefG0V_tFZ_0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v4, 0xD00000000000001CLL, 0x800000024A844E80, isUniquelyReferenced_nonNull_native);
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v6, 0xD000000000000011, 0x800000024A844EA0, v7);
  v8 = sub_24A82CF94();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v11[4] = sub_24A6AEBB4;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A6AEADC;
  v11[3] = &unk_285DC24D8;
  v10 = _Block_copy(v11);

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

uint64_t sub_24A6AE528()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_24A6AE58C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5E738, &qword_24A838D50);
    v3 = sub_24A82D974();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24A6A2D48(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24A6AE6A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_24A6A2D48(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_24A6AE840(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_24A6A2D48(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_24A82DC44();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_24A78669C(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

uint64_t sub_24A6AE840(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_24A6BBA94(a3, a4);
  v41 = a2;
  result = sub_24A82D964();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

id sub_24A6AEADC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_24A6AEB68();
    v5 = sub_24A82CED4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

unint64_t sub_24A6AEB68()
{
  result = qword_281512B68;
  if (!qword_281512B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281512B68);
  }

  return result;
}

uint64_t sub_24A6AEBBC(uint64_t (*a1)(void, void, void, void, __n128), __n128 a2)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v2 + 32);
  if (*(v2 + 34))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  a2.n128_u64[0] = *(v2 + 48);
  return a1(*(v2 + 16), *(v2 + 24), v4 | v5 | (*(v2 + 35) << 24), *(v2 + 40), a2);
}

void sub_24A6AEC8C(int a1)
{
  v2 = v1;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          if (qword_281515DC8 != -1)
          {
            swift_once();
          }

          v3 = sub_24A82CDC4();
          sub_24A6797D0(v3, qword_281518F88);
          v4 = sub_24A82CD94();
          v5 = sub_24A82D504();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_29;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "FMIPLocationController: location manager didChangeAuthorization: DENIED";
          goto LABEL_23;
        }

LABEL_24:
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v14 = sub_24A82CDC4();
        sub_24A6797D0(v14, qword_281518F88);
        v15 = sub_24A82D4E4();
        v4 = sub_24A82CD94();
        if (!os_log_type_enabled(v4, v15))
        {
          goto LABEL_29;
        }

        v6 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v24 = v16;
        *v6 = 136315138;
        type metadata accessor for CLAuthorizationStatus(0);
        v17 = sub_24A82D024();
        v19 = sub_24A68761C(v17, v18, &v24);

        *(v6 + 4) = v19;
        _os_log_impl(&dword_24A675000, v4, v15, "FMIPLocationController: location manager didChangeAuthorization: UNKNOWN - %s", v6, 0xCu);
        sub_24A6876E8(v16);
        MEMORY[0x24C21E1D0](v16, -1, -1);
        goto LABEL_28;
      }

      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v13 = sub_24A82CDC4();
      sub_24A6797D0(v13, qword_281518F88);
      v4 = sub_24A82CD94();
      v5 = sub_24A82D504();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_29;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "FMIPLocationController: location manager didChangeAuthorization: RESTRICTED";
    }

    else
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v12 = sub_24A82CDC4();
      sub_24A6797D0(v12, qword_281518F88);
      v4 = sub_24A82CD94();
      v5 = sub_24A82D504();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_29;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "FMIPLocationController: location manager didChangeAuthorization: NOT DETERMINED";
    }

LABEL_23:
    _os_log_impl(&dword_24A675000, v4, v5, v7, v6, 2u);
LABEL_28:
    MEMORY[0x24C21E1D0](v6, -1, -1);
LABEL_29:

    goto LABEL_30;
  }

  if ((a1 - 3) > 1)
  {
    goto LABEL_24;
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPLocationController: location manager didChangeAuthorization: AUTHORIZED", v11, 2u);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  [*(v2 + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager) startUpdatingLocation];
LABEL_30:
  v20 = [*(v2 + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager) accuracyAuthorization] != 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_limitedPrecision) = v20;
  v21 = objc_opt_self();
  v22 = sub_24A82CF94();
  v23 = sub_24A82CF94();
  [v21 setBool:v20 forKey:v22 inDomain:v23];
}

uint64_t sub_24A6AF144(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, double a5)
{
  if ((*(result + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_limitedPrecision) & 1) == 0 && *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_useRealtimeForItems) == 1)
  {
    v6 = HIBYTE(a3);
    v7 = a3 & 1;
    v17 = a3 & 0x101;
    v8 = (a3 >> 8) & 1;
    v9 = HIWORD(a3) & 1;
    v18 = BYTE2(a3) & 1;
    v19 = HIBYTE(a3);
    v20 = a4;
    v21 = a5;
    v10 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
    v11 = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
    swift_beginAccess();
    v14 = *(v11 + 280);

    sub_24A74ACCC(&v17, v14, "FMIPManager: appending realtime location %{private}s", &unk_285DC6188, sub_24A7525C8, &unk_285DC61A0);

    LOBYTE(v17) = v7;
    HIBYTE(v17) = v8;
    v18 = v9;
    v19 = v6;
    v20 = a4;
    v21 = a5;
    v15 = *(a2 + v10);
    swift_beginAccess();
    v16 = *(v15 + 80);

    sub_24A74ACCC(&v17, v16, "FMIPManager: appending realtime location to devices %{private}s", &unk_285DC6728, sub_24A752DF8, &unk_285DC6740);
  }

  return result;
}

void sub_24A6AF364(unint64_t a1)
{
  v3 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);

  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();

  v8 = a1 >> 62;
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_14;
  }

  v45 = v1;
  v3 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  v47 = v2;
  *v3 = 136315138;
  if (!v8)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_12:
    v12 = 0;
    v14 = 0;
    goto LABEL_13;
  }

  if (!sub_24A82D744())
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(a1 + 32); ; i = MEMORY[0x24C21D180](0, a1))
    {
      v10 = i;
      v11 = [i debugDescription];

      v12 = sub_24A82CFC4();
      v14 = v13;

LABEL_13:
      v48 = v12;
      v49 = v14;
      sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
      v15 = sub_24A82D024();
      v17 = sub_24A68761C(v15, v16, &v47);

      *(v3 + 4) = v17;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPLocationController: location manager didUpdateLocations: %s", v3, 0xCu);
      sub_24A6876E8(v2);
      MEMORY[0x24C21E1D0](v2, -1, -1);
      MEMORY[0x24C21E1D0](v3, -1, -1);

      v3 = v45;
LABEL_14:
      if (v8)
      {
        if (!sub_24A82D744())
        {
          return;
        }
      }

      else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v18 = *(a1 + 32);
        goto LABEL_19;
      }

      __break(1u);
LABEL_31:
      ;
    }

    v18 = MEMORY[0x24C21D180](0, a1);
LABEL_19:
    v19 = v18;
    v51 = &type metadata for KoreaFeatureFlag;
    v52 = sub_24A6AF8B0();
    v20 = sub_24A82C4D4();
    sub_24A6876E8(&v48);
    if (v20)
    {
      goto LABEL_25;
    }

    [v19 coordinate];
    v22 = v21;
    [v19 coordinate];
    v24 = v23;
    v25 = sub_24A7C7910();
    if (!v25)
    {
      goto LABEL_25;
    }

    v26 = v25;
    v27 = [v25 containsCoordinate_];

    if (v27)
    {
      v28 = sub_24A82CD94();
      v29 = sub_24A82D504();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_24A675000, v28, v29, "FMIPLocationController: not updating location because it's in a denylist region", v30, 2u);
        MEMORY[0x24C21E1D0](v30, -1, -1);
      }
    }

    else
    {
LABEL_25:
      LOBYTE(v47) = 6;
      v46 = v19;
      FMIPLocation.init(location:type:)(v46, &v47, &v48);
      v31 = v48;
      v32 = BYTE1(v48);
      v33 = BYTE2(v48);
      v34 = BYTE3(v48);
      v35 = v49;
      v36 = v50;
      v37 = *(v3 + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationShifter);
      sub_24A6BBA94(&qword_27EF5DA08, &unk_24A83D030);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24A8327A0;
      v39 = v3;
      strcpy((inited + 32), "localLocation");
      *(inited + 46) = -4864;
      *(inited + 48) = v31;
      *(inited + 49) = v32;
      *(inited + 50) = v33;
      *(inited + 51) = v34;
      *(inited + 56) = v35;
      *(inited + 64) = v36;
      v40 = v35;
      v41 = sub_24A6B0C84(inited);
      swift_setDeallocating();
      sub_24A67F378(inited + 32, &qword_27EF5EF70, &unk_24A835290);
      v42 = swift_allocObject();
      *(v42 + 16) = v31;
      *(v42 + 17) = v32;
      *(v42 + 18) = v33;
      *(v42 + 19) = v34;
      *(v42 + 24) = v40;
      *(v42 + 32) = v36;
      *(v42 + 40) = v3;
      v43 = v40;
      v44 = v39;
      sub_24A6B0DD8(v41, sub_24A7C7B4C, v42);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A6AF840()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6AF880()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

unint64_t sub_24A6AF8B0()
{
  result = qword_27EF5EF60;
  if (!qword_27EF5EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EF60);
  }

  return result;
}

uint64_t sub_24A6AF918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A82CDF4();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_281518F88);

  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    swift_beginAccess();
    *(v18 + 4) = *(*(a1 + 16) + 16);

    _os_log_impl(&dword_24A675000, v16, v17, "FMIPManager: unknownItems updating model with unknownItems %ld", v18, 0xCu);
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  else
  {
  }

  v19 = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  swift_beginAccess();
  v20 = *(a1 + 16);
  v21 = *(v19 + 296);

  v22 = sub_24A7D98C0(v20, v21);

  if (v22)
  {

    sub_24A6A7314(a3);
    v23 = sub_24A82CD94();
    v24 = sub_24A82D504();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = a3 == 0;
      sub_24A6AFFE8(a3);
      _os_log_impl(&dword_24A675000, v23, v24, "FMIPManager: no refresh required, calling completion if needed isCompletionBlockNil %{BOOL}d", v25, 8u);
      MEMORY[0x24C21E1D0](v25, -1, -1);
    }

    else
    {
      sub_24A6AFFE8(a3);
    }

    sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
    v33 = sub_24A82D564();
    v34 = swift_allocObject();
    *(v34 + 16) = a3;
    *(v34 + 24) = a4;
    v48 = sub_24A6AF880;
    v49 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_24A699BA0;
    v47 = &unk_285DC6BA0;
    v35 = _Block_copy(&aBlock);
    sub_24A6A7314(a3);

    sub_24A82CE24();
    aBlock = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v36 = v38;
    v37 = v42;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v14, v36, v35);
    _Block_release(v35);

    (*(v41 + 8))(v36, v37);
    return (*(v39 + 8))(v14, v40);
  }

  else
  {
    v26 = *(v19 + 296);
    *(v19 + 296) = v20;

    v27 = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    v28 = swift_allocObject();
    v28[2] = a2;
    v28[3] = a1;
    v28[4] = a3;
    v28[5] = a4;
    v48 = sub_24A753B44;
    v49 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_24A699BA0;
    v47 = &unk_285DC6B50;
    v29 = _Block_copy(&aBlock);

    sub_24A6A7314(a3);
    sub_24A82CE24();
    v43 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v30 = v38;
    v31 = v42;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v14, v30, v29);
    _Block_release(v29);
    (*(v41 + 8))(v30, v31);
    (*(v39 + 8))(v14, v40);
  }
}

uint64_t sub_24A6AFFE8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A6B0010()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A6B0074(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = objc_opt_self();
  v11 = a1;
  v12 = a3;
  v13 = a5;
  v14 = [v10 defaultCenter];
  [v14 postNotificationName:*a6 object:0];
}

void FMIPLocation.init(location:type:)(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24A82CA34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v34[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [a1 timestamp];
  sub_24A82C9F4();

  sub_24A82C9C4();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  v15 = [a1 floor];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 level];

    v18 = v17;
  }

  else
  {
    v18 = -1.0;
  }

  v37 = v14 < -3600.0;
  v36 = 0;
  v35 = 1;
  if (qword_27EF5CBF8 != -1)
  {
    swift_once();
  }

  v19 = qword_27EF5E7B8;
  if (qword_27EF5E7B8)
  {
    v20 = qword_27EF5E7B8;
  }

  else
  {
    v20 = a1;
    v19 = 0;
  }

  LOBYTE(v34[0]) = v14 < -3600.0;
  *(v34 + 1) = 256;
  BYTE3(v34[0]) = v11;
  v34[1] = v20;
  *&v34[2] = v18;
  v21 = v19;
  v22 = FMIPLocation.debugDescription.getter();
  v24 = v23;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v25 = sub_24A82CDC4();
  sub_24A6797D0(v25, qword_281518F88);

  v26 = sub_24A82CD94();
  v27 = sub_24A82D4C4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34[0] = v29;
    *v28 = 136380675;
    v30 = sub_24A68761C(v22, v24, v34);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_24A675000, v26, v27, "FMIPLocation: initialized %{private}s", v28, 0xCu);
    sub_24A6876E8(v29);
    MEMORY[0x24C21E1D0](v29, -1, -1);
    MEMORY[0x24C21E1D0](v28, -1, -1);
  }

  else
  {
  }

  v31 = v36;
  v32 = v35;
  *a3 = v37;
  *(a3 + 1) = v31;
  *(a3 + 2) = v32;
  *(a3 + 3) = v11;
  *(a3 + 8) = v20;
  *(a3 + 16) = v18;
}

unint64_t sub_24A6B047C()
{
  result = sub_24A6B04F8();
  qword_27EF5E7B8 = result;
  return result;
}

uint64_t sub_24A6B04B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

unint64_t sub_24A6B04F8()
{
  v0 = objc_opt_self();
  v1 = sub_24A82CF94();
  v2 = sub_24A82CF94();
  v3 = [v0 stringForKey:v1 inDomain:v2];

  if (v3)
  {
    v4 = sub_24A82CFC4();
    v6 = v5;

    v28[0] = 44;
    v28[1] = 0xE100000000000000;
    MEMORY[0x28223BE20]();
    v26[2] = v28;
    result = sub_24A78DC78(0x7FFFFFFFFFFFFFFFLL, 1, sub_24A76EDBC, v26, v4, v6, &v27);
    v8 = result;
    v27 = 0;
    v9 = 0;
    v10 = *(result + 16);
    v11 = result + 56;
    v12 = MEMORY[0x277D84F90];
LABEL_3:
    v13 = (v11 + 32 * v9);
    while (v10 != v9)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        return result;
      }

      ++v9;
      v14 = v13 + 4;
      v16 = *(v13 - 1);
      v15 = *v13;
      v18 = *(v13 - 3);
      v17 = *(v13 - 2);

      result = sub_24A82D384();
      v13 = v14;
      if ((v19 & 1) == 0)
      {
        v20 = result;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_24A77FF68(0, *(v12 + 16) + 1, 1, v12);
          v12 = result;
        }

        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          result = sub_24A77FF68((v21 > 1), v22 + 1, 1, v12);
          v12 = result;
        }

        *(v12 + 16) = v22 + 1;
        *(v12 + 8 * v22 + 32) = v20;
        goto LABEL_3;
      }
    }

    if (*(v12 + 16) == 2)
    {
      v23 = *(v12 + 32);
      v24 = *(v12 + 40);

      v25 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      return [v25 initWithLatitude:v23 longitude:{v24, v27}];
    }
  }

  return 0;
}

void sub_24A6B0770()
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A82CDC4();
  sub_24A6797D0(v0, qword_281518F88);
  v1 = sub_24A82CD94();
  v2 = sub_24A82D504();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24A675000, v1, v2, "FMIPBeaconRefreshingController: Beacons changed notification received", v3, 2u);
    MEMORY[0x24C21E1D0](v3, -1, -1);
  }

  sub_24A6A7D7C(0, 0);
}

uint64_t FMIPLocation.debugDescription.getter()
{
  v1 = sub_24A82CA34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v4) = v0[1];
  v22 = *v0;
  v23 = v4;
  v24 = v0[3];
  v6 = *(v0 + 1);
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0x61636F4C50494D46, 0xEC0000006E6F6974);
  MEMORY[0x24C21C9E0](0x203A74616C203ALL, 0xE700000000000000);
  [v6 coordinate];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](8236, 0xE200000000000000);
  v8 = v26;
  v7 = v27;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](980316012, 0xE400000000000000);
  [v6 coordinate];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0x727563634168202CLL, 0xEC0000003A796361);
  [v6 horizontalAccuracy];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0x3A65746164202CLL, 0xE700000000000000);
  v9 = [v6 timestamp];
  sub_24A82C9F4();

  sub_24A6B0C2C();
  v10 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v10);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x24C21C9E0](8236, 0xE200000000000000);
  v11 = v26;
  v12 = v27;
  v26 = v8;
  v27 = v7;

  MEMORY[0x24C21C9E0](v11, v12);

  v14 = v26;
  v13 = v27;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0x3A646C4F7369, 0xE600000000000000);
  if (v22)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v22)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v15, v16);

  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A847A10);
  if (v23)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v23)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v17, v18);

  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A847A30);
  v25 = v24;
  sub_24A82D914();
  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  v19 = v26;
  v20 = v27;
  v26 = v14;
  v27 = v13;

  MEMORY[0x24C21C9E0](v19, v20);

  return v26;
}

unint64_t sub_24A6B0C2C()
{
  result = qword_27EF5E7C0;
  if (!qword_27EF5E7C0)
  {
    sub_24A82CA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E7C0);
  }

  return result;
}

unint64_t sub_24A6B0C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5DF38, &qword_24A837158);
    v3 = sub_24A82D974();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 16);
      v8 = *(i - 15);
      v9 = *(i - 14);
      v10 = *(i - 13);
      v11 = *(i - 1);
      v12 = *i;

      v13 = v11;
      result = sub_24A6A2D48(v5, v6);
      if (v15)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      v17 = v3[7] + 24 * result;
      *v17 = v7;
      *(v17 + 1) = v8;
      *(v17 + 2) = v9;
      *(v17 + 3) = v10;
      *(v17 + 8) = v13;
      *(v17 + 16) = v12;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v3[2] = v20;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24A6B0DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_8:
        v13 = __clz(__rbit64(v8)) | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 24 * v13 + 8);
        type metadata accessor for FMLocationShiftingRequest();
        v18 = swift_allocObject();
        v18[2] = v17;
        v18[3] = v16;
        v18[4] = v15;

        MEMORY[0x24C21CB10](v17);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24A82D274();
        }

        v8 &= v8 - 1;
        result = sub_24A82D2C4();
        v4 = v23;
      }

      while (v8);
    }
  }

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;

  sub_24A6B0FEC(v4, sub_24A71CCC4, v19);
}

uint64_t sub_24A6B0FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A82CDF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A82CE54();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 24);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v4;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_24A71B38C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC41E8;
  v18 = _Block_copy(aBlock);

  sub_24A82CE24();
  v22 = MEMORY[0x277D84F90];
  sub_24A695668(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_24A6B12C8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B1310()
{
  v1 = v0[2];
  sub_24A6B1D48(v0[3]);
  v2 = v0[1];

  return v2();
}

id sub_24A6B1370()
{
  v1 = *v0;
  v2 = sub_24A82C8B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(v1 + 160);
  v1 += 160;
  v11(v8);
  v12 = *(v1 - 56);
  v15 = v1 - 80;
  v14 = *(v1 - 80);
  v13 = *(v15 + 8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v14, AssociatedConformanceWitness);
  sub_24A82C864();

  v17 = *(v3 + 8);
  v17(v7, v2);
  v18 = [objc_opt_self() defaultManager];
  sub_24A82C894();
  v19 = sub_24A82CF94();

  v20 = [v18 fileExistsAtPath_];

  v17(v10, v2);
  return v20;
}

uint64_t sub_24A6B1558(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v5)
    {
      v8 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v8 = a2;
      }

      sub_24A6B231C(v8, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v9 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        v7 = sub_24A679170(0, a3, a4);
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v30 = v15;
        v17 = a1;
        if (!v13)
        {
LABEL_24:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              goto LABEL_36;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v31 = (v20 - 1) & v20;
              goto LABEL_29;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v7, v6);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v31 = (v13 - 1) & v13;
LABEL_29:
          v21 = *(a2 + 40);
          v22 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v23 = sub_24A82D5D4();
          v24 = -1 << *(a2 + 32);
          v25 = v23 & ~v24;
          if (((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            break;
          }

          v26 = ~v24;
          while (1)
          {
            v27 = *(*(a2 + 48) + 8 * v25);
            v28 = sub_24A82D5E4();

            if (v28)
            {
              break;
            }

            v25 = (v25 + 1) & v26;
            if (((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v15 = v30;
          v13 = v31;
          v17 = a1;
          if (!v31)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v9 = 0;
    }

    return v9 & 1;
  }

  if (a1 < 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v5)
  {
    sub_24A6B231C(v6, a2);
    return v9 & 1;
  }

  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x2821FCF40](v7, v6);
}

uint64_t FMIPDeviceImageCacheRequest.fileName.getter()
{
  v1 = sub_24A82C604();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v9 = v0[2];
  v8 = v0[3];
  v10 = v0[4];
  v11 = v0[5];
  v12 = *(v0 + 48);
  v51 = *(v0 + 49);
  v52 = v12;
  v13 = v0[7];
  v57 = 0;
  v58 = 0xE000000000000000;
  v55 = v6;
  v56 = v7;

  sub_24A82C5A4();
  v54 = sub_24A6B2490();
  v14 = sub_24A82D684();
  v16 = v15;
  v18 = *(v2 + 8);
  v17 = v2 + 8;
  v53 = v18;
  v18(v5, v1);

  if (v16)
  {
    sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
    v19 = swift_allocObject();
    v50 = v17;
    v20 = v19;
    *(v19 + 16) = xmmword_24A8327A0;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_24A6B243C();
    *(v20 + 32) = v14;
    *(v20 + 40) = v16;
    v21 = sub_24A82CFF4();
    MEMORY[0x24C21C9E0](v21);
  }

  v55 = v9;
  v56 = v8;

  sub_24A82C5A4();
  v22 = MEMORY[0x277D837D0];
  v23 = sub_24A82D684();
  v25 = v24;
  v53(v5, v1);

  if (v25)
  {
    sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_24A8327A0;
    *(v26 + 56) = v22;
    *(v26 + 64) = sub_24A6B243C();
    *(v26 + 32) = v23;
    *(v26 + 40) = v25;
    v27 = sub_24A82CFF4();
    MEMORY[0x24C21C9E0](v27);
  }

  if (v11)
  {
    v55 = v10;
    v56 = v11;

    sub_24A82C5A4();
    v28 = MEMORY[0x277D837D0];
    v29 = sub_24A82D684();
    v31 = v30;
    v53(v5, v1);

    if (v31)
    {
      sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_24A8327A0;
      *(v32 + 56) = v28;
      *(v32 + 64) = sub_24A6B243C();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      v33 = sub_24A82CFF4();
      MEMORY[0x24C21C9E0](v33);
    }
  }

  MEMORY[0x24C21C9E0](45, 0xE100000000000000);
  if (v51 <= 3)
  {
    v41 = 0x656E696C6E6FLL;
    v42 = 0xE600000000000000;
    v43 = 0x64656B636F6CLL;
    v44 = 0xE700000000000000;
    if (v51 != 2)
    {
      v43 = 0x6475427466656CLL;
      v42 = 0xE700000000000000;
    }

    if (v51)
    {
      v41 = 0x656E696C66666FLL;
    }

    else
    {
      v44 = 0xE600000000000000;
    }

    if (v51 <= 1)
    {
      v39 = v41;
    }

    else
    {
      v39 = v43;
    }

    if (v51 <= 1)
    {
      v40 = v44;
    }

    else
    {
      v40 = v42;
    }
  }

  else
  {
    v34 = 0x4364694C65736163;
    v35 = 0x800000024A8444A0;
    if (v51 == 7)
    {
      v36 = 0xD000000000000015;
    }

    else
    {
      v36 = 0xD000000000000016;
    }

    if (v51 != 7)
    {
      v35 = 0x800000024A8444C0;
    }

    if (v51 == 6)
    {
      v35 = 0xED00006465736F6CLL;
    }

    else
    {
      v34 = v36;
    }

    v37 = 0xD00000000000001ALL;
    if (v51 == 4)
    {
      v37 = 0x6475427468676972;
      v38 = 0xE800000000000000;
    }

    else
    {
      v38 = 0x800000024A844470;
    }

    if (v51 <= 5)
    {
      v39 = v37;
    }

    else
    {
      v39 = v34;
    }

    if (v51 <= 5)
    {
      v40 = v38;
    }

    else
    {
      v40 = v35;
    }
  }

  v55 = v39;
  v56 = v40;

  MEMORY[0x24C21C9E0](45, 0xE100000000000000);

  MEMORY[0x24C21C9E0](v55, v56);

  if (v52)
  {
    v45 = 0x786F626F666E69;
  }

  else
  {
    v45 = 0x696C656372756F73;
  }

  if (v52)
  {
    v46 = 0xE700000000000000;
  }

  else
  {
    v46 = 0xEA00000000007473;
  }

  MEMORY[0x24C21C9E0](v45, v46);

  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_24A8327A0;
  *(v47 + 56) = MEMORY[0x277D85048];
  *(v47 + 64) = sub_24A6B22C8();
  *(v47 + 32) = v13;
  v48 = sub_24A82CFF4();
  MEMORY[0x24C21C9E0](v48);

  MEMORY[0x24C21C9E0](1735290926, 0xE400000000000000);
  return v57;
}

uint64_t sub_24A6B1D48(uint64_t a1)
{
  v3 = *(v1 + 128);

  v5 = sub_24A6B17A8(v4, a1);

  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 128);
    *(v1 + 128) = a1;

    if (qword_281512DE0 != -1)
    {
      swift_once();
    }

    v8 = sub_24A82CDC4();
    sub_24A6797D0(v8, qword_281518D70);

    v9 = sub_24A82CD94();
    v10 = sub_24A82D504();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      sub_24A679170(0, &qword_27EF5CF10, 0x277D49640);
      sub_24A6AB7EC(&unk_27EF5CF18, &qword_27EF5CF10, 0x277D49640);
      v13 = sub_24A82D3B4();
      v15 = sub_24A68761C(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24A675000, v9, v10, "FMIPBeaconSharingController: Did receive shares update: %s", v11, 0xCu);
      sub_24A6876E8(v12);
      MEMORY[0x24C21E1D0](v12, -1, -1);
      MEMORY[0x24C21E1D0](v11, -1, -1);
    }

    return sub_24A6BE3F8();
  }

  return result;
}

uint64_t sub_24A6B1F60()
{
  v0 = sub_24A82C8B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6B24E4();
  sub_24A82C854();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_24A6B2050(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A69BD40;

  return sub_24A6B241C(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6B2110(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_24A82D354();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v10 = sub_24A6C84B4(&qword_27EF5CF48, v9, type metadata accessor for FMIPBeaconSharingController);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = v10;
  v11[4] = a2;
  v11[5] = a1;
  swift_retain_n();

  sub_24A7382F4(0, 0, v7, &unk_24A830E08, v11);
}

unint64_t sub_24A6B22C8()
{
  result = qword_27EF5F9B8;
  if (!qword_27EF5F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9B8);
  }

  return result;
}

void sub_24A6B231C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_24A82D744())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_24A82D794();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24A6B241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24A6B1310, a4, 0);
}

unint64_t sub_24A6B243C()
{
  result = qword_27EF5D4C0;
  if (!qword_27EF5D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D4C0);
  }

  return result;
}

unint64_t sub_24A6B2490()
{
  result = qword_27EF5F5D8;
  if (!qword_27EF5F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F5D8);
  }

  return result;
}

uint64_t sub_24A6B24E4()
{
  if (qword_281513588 != -1)
  {
    swift_once();
  }

  v1 = *(qword_281518F48 + 16);
  v2 = *(qword_281518F48 + 24);

  MEMORY[0x24C21C9E0](0x7365686361432FLL, 0xE700000000000000);

  MEMORY[0x24C21C9E0](0xD00000000000001DLL, 0x800000024A847760);

  sub_24A82C824();
}

__n128 sub_24A6B25D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A6B25E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24A6B2634(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24A6B2690@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24A82CFC4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_24A6B2754@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24A6B2764(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_24A82CA34();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24A6B28E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24A82CAA4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_24A82CA34();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24A6B2A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    LODWORD(v10) = ((v10 >> 57) >> 5) | (4 * ((v10 >> 57) & 0x18 | v10 & 7));
    v11 = v10 ^ 0x7F;
    v12 = 128 - v10;
    if (v11 >= 0x7D)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_24A6B2B40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A82CAA4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
    *(a1 + *(a4 + 24)) = (v11 | (v11 << 57)) & 0xF000000000000007;
  }

  return result;
}

uint64_t sub_24A6B2CF4()
{
  sub_24A6BB5A4(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B2D64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B2D9C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B2E78()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B2EE4()
{
  v1 = sub_24A82C8B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24A6B2F80()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B2FC8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6B3040()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A6B30A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B30D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A6B3144()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6B31B8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6B3208()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6B3250()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A6B334C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B3384()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A6B3460()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_24A6B34D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6B3578()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6B35B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B35FC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B363C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B3678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A6B3734(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A6B37E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24A6B38AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A6B39A0()
{

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_24A6B39E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B3A24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_24A6B3A70(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_24A6B3AD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B3B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A6B3BD8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24A6B3C68(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24A6B3D24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A6B3DE4()
{
  v1 = *(v0 + 24);

  sub_24A6876E8((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24A6B3E2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  sub_24A6876E8((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A6B3E7C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B3EB4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B3EEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B3F44()
{
  v1 = sub_24A6BBA94(&qword_27EF5DE18, &unk_24A8365C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A6B3FE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B4018()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6B4078()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6B40F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B412C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6B4180()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);

  v10 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_24A6B4350(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24A82C8B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v16 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[11];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24A6B44EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24A82C8B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
    return result;
  }

  v13 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24A6B467C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B46C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B46FC()
{
  v1 = *(sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for FMIPURLInfo();
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v21 = v4;
    v7 = sub_24A82C8B4();
    v8 = *(v7 - 8);
    v9 = *(v8 + 8);
    v9(v0 + v3, v7);
    v10 = *(v5 + v6[6] + 8);

    v11 = *(v5 + v6[7] + 8);

    v12 = v6[8];
    if (!(*(v8 + 48))(v5 + v12, 1, v7))
    {
      v9(v5 + v12, v7);
    }

    v13 = *(v5 + v6[9] + 8);

    v14 = *(v5 + v6[10] + 8);

    v15 = v6[11];
    v16 = sub_24A82CAA4();
    v17 = *(v16 - 8);
    v4 = v21;
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v18 + 8);

  return MEMORY[0x2821FE8E8](v0, v18 + 16, v2 | 7);
}

uint64_t sub_24A6B49CC()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6B4A14()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6B4A5C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B4AA4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_24A6B4B2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B4B80(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24A6B4BE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_selectedDevice;
  swift_beginAccess();
  return sub_24A67E964(v3 + v4, a2, &qword_27EF5DF08, &qword_24A837770);
}

uint64_t sub_24A6B4C54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24A6B4CB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6B4CF8()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3);

  if (*(v0 + v3 + 176))
  {
    v8 = *(v6 + 16);

    v9 = *(v6 + 24);

    v10 = *(v6 + 40);

    v11 = *(v6 + 56);

    v12 = *(v6 + 72);

    v13 = *(v6 + 88);

    v14 = *(v6 + 104);

    v15 = *(v6 + 120);

    v16 = *(v6 + 136);

    v17 = *(v6 + 152);

    v18 = *(v6 + 168);

    v19 = *(v6 + 176);

    v20 = *(v6 + 192);

    v21 = *(v6 + 208);

    v22 = *(v6 + 224);

    v23 = *(v6 + 240);

    v24 = *(v6 + 256);

    v25 = *(v6 + 272);

    v26 = *(v6 + 288);
  }

  v27 = *(v6 + 344);

  v28 = *(v6 + 360);

  v29 = *(v6 + 376);

  v30 = v6 + v1[13];
  v31 = type metadata accessor for FMIPItemLostModeMetadata();
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    v32 = *(v30 + 8);

    v33 = *(v30 + 24);

    v34 = *(v31 + 24);
    v35 = sub_24A82CA34();
    (*(*(v35 - 8) + 8))(v30 + v34, v35);
    v36 = *(v30 + *(v31 + 28) + 8);
  }

  v37 = *(v6 + v1[14] + 8);

  v38 = *(v6 + v1[15] + 8);

  v39 = v6 + v1[16];
  if (*(v39 + 8))
  {

    v40 = *(v39 + 24);
  }

  v41 = v6 + v1[17];
  v42 = *(v41 + 16);

  v43 = *(v41 + 32);

  v44 = *(v6 + v1[18] + 8);

  v45 = *(v6 + v1[20] + 8);

  v46 = *(v6 + v1[23]);

  v47 = (v6 + v1[24]);
  type metadata accessor for FMIPProductType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v49 = *(v47 + 3);
    }

    else if (EnumCaseMultiPayload || !*(v47 + 3))
    {
      goto LABEL_16;
    }

    v50 = *(v47 + 5);

    v51 = *(v47 + 7);

    goto LABEL_16;
  }

  v52 = type metadata accessor for FMIPHawkeyeProductInformation();
  if (!(*(*(v52 - 1) + 48))(v47, 1, v52))
  {
    v53 = *(v47 + 3);

    v54 = *(v47 + 5);

    v55 = *(v47 + 7);

    v56 = v52[12];
    v57 = sub_24A82C8B4();
    v58 = *(*(v57 - 8) + 8);
    v58(&v47[v56], v57);
    v58(&v47[v52[13]], v57);
    v58(&v47[v52[14]], v57);
    v58(&v47[v52[15]], v57);
    v58(&v47[v52[16]], v57);
    v58(&v47[v52[17]], v57);
  }

LABEL_16:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A6B511C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A6B5198()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B51D0()
{
  v1 = type metadata accessor for FMIPUnknownItem();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_24A82CAA4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[5] + 8);

  v8 = *(v0 + v3 + v1[6] + 8);

  v9 = *(v0 + v3 + v1[8]);

  v10 = (v0 + v3 + v1[9]);
  type metadata accessor for FMIPProductType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(v10 + 3);
    }

    else if (EnumCaseMultiPayload || !*(v10 + 3))
    {
      goto LABEL_10;
    }

    v13 = *(v10 + 5);

    v14 = *(v10 + 7);

    goto LABEL_10;
  }

  v15 = type metadata accessor for FMIPHawkeyeProductInformation();
  if (!(*(*(v15 - 1) + 48))(v10, 1, v15))
  {
    v16 = *(v10 + 3);

    v17 = *(v10 + 5);

    v18 = *(v10 + 7);

    v19 = v15[12];
    v20 = sub_24A82C8B4();
    v52 = v2;
    v21 = *(*(v20 - 8) + 8);
    v21(&v10[v19], v20);
    v21(&v10[v15[13]], v20);
    v21(&v10[v15[14]], v20);
    v21(&v10[v15[15]], v20);
    v21(&v10[v15[16]], v20);
    v21(&v10[v15[17]], v20);
    v2 = v52;
  }

LABEL_10:
  v22 = v5 + v1[11];
  v23 = type metadata accessor for FMIPUnknownItemUTMetadata();
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v54 = v4;
    v24 = *(v22 + 8);

    v25 = *(v22 + 24);

    v26 = v22 + *(v23 + 24);
    v27 = type metadata accessor for FMIPUnknownItemProductMetadata();
    v28 = *(*(v27 - 8) + 48);
    if (!v28(v26, 1, v27))
    {
      v29 = *(v26 + 8);

      v30 = *(v26 + 16);

      v49 = *(v27 + 32);
      v51 = sub_24A82C8B4();
      v47 = *(v51 - 8);
      v48 = *(v47 + 48);
      if (!v48(v26 + v49, 1))
      {
        (*(v47 + 8))(v26 + v49, v51);
      }

      v50 = *(v27 + 36);
      if (!(v48)(v26 + v50, 1, v51))
      {
        (*(v47 + 8))(v26 + v50, v51);
      }
    }

    v31 = v22 + *(v23 + 28);
    v32 = v28(v31, 1, v27);
    v4 = v54;
    if (!v32)
    {
      v53 = v2;
      v33 = *(v31 + 8);

      v34 = *(v31 + 16);

      v35 = *(v27 + 32);
      v36 = sub_24A82C8B4();
      v37 = *(v36 - 8);
      v38 = *(v37 + 48);
      if (!v38(v31 + v35, 1, v36))
      {
        (*(v37 + 8))(v31 + v35, v36);
      }

      v39 = *(v27 + 36);
      v40 = v38(v31 + v39, 1, v36);
      v2 = v53;
      v4 = v54;
      if (!v40)
      {
        (*(v37 + 8))(v31 + v39, v36);
      }
    }
  }

  v41 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;

  v44 = *(v0 + v41);

  v45 = *(v0 + v42);

  return MEMORY[0x2821FE8E8](v0, v43 + 8, v2 | 7);
}

uint64_t sub_24A6B5734()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_24A6B58E0()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v37 = sub_24A82CA34();
  v5 = *(v37 - 8);
  v6 = *(v5 + 80);
  v36 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + v3 + 8);

  v9 = v1[8];
  v10 = sub_24A82CAE4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v0 + v3 + v9, v10);
  }

  v12 = v2 | v6;
  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + v6 + 288) & ~v6;
  v15 = (v0 + v13);
  v16 = *(v0 + v13 + 8);

  v17 = v15[2];

  v18 = v15[4];

  v19 = v15[6];

  v20 = v15[8];

  v21 = v15[10];

  v22 = v15[12];

  v23 = v15[14];

  v24 = v15[16];

  v25 = v15[18];

  v26 = v15[20];

  v27 = v15[21];

  v28 = v15[23];

  v29 = v15[25];

  v30 = v15[27];

  v31 = v15[29];

  v32 = v15[31];

  v33 = v15[33];

  v34 = v15[35];

  (*(v5 + 8))(v0 + v14, v37);

  return MEMORY[0x2821FE8E8](v0, v14 + v36, v12 | 7);
}

uint64_t sub_24A6B5B54()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v6 + 8);

  v8 = v1[8];
  v9 = sub_24A82CAE4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  if (*(v0 + v4))
  {
    v11 = *(v0 + v4 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_24A6B5CAC()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v6 + 8);

  v8 = v1[8];
  v9 = sub_24A82CAE4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  if (*(v0 + v4))
  {
    v11 = *(v0 + v4 + 8);
  }

  v12 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v12);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | 7);
}

uint64_t sub_24A6B5E1C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[13];

  v8 = v0[15];

  v9 = v0[17];

  v10 = v0[19];

  v11 = v0[21];

  v12 = v0[23];

  v13 = v0[24];

  v14 = v0[26];

  v15 = v0[28];

  v16 = v0[30];

  v17 = v0[32];

  v18 = v0[34];

  v19 = v0[36];

  v20 = v0[38];

  if (v0[39])
  {
    v21 = v0[40];
  }

  return MEMORY[0x2821FE8E8](v0, 328, 7);
}

uint64_t sub_24A6B5EFC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6B5F5C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_24A6B5FE8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B6020()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A6B60DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A6B61B0()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6B61E8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v6 = *(v0 + v4);

  sub_24A77A8CC(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16));

  return MEMORY[0x2821FE8E8](v0, v5 + 17, v2 | 7);
}

uint64_t sub_24A6B6294()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A6B6408(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for FMIPProductType();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24A6B658C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24A82CAA4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for FMIPProductType();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24A6B6774@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24A6B67D0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24A6B6834()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B686C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A82CA34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A6B6918(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A82CA34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A6B69CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B6A30@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v10[2] = v3[3];
  v10[3] = v6;
  v10[0] = v4;
  v10[1] = v5;
  v7 = v3[2];
  *a2 = v3[1];
  a2[1] = v7;
  a2[2] = v3[3];
  a2[3] = v6;
  return sub_24A795FDC(v10, v9);
}

uint64_t sub_24A6B6AA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_24A6B6AF0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A6B6B08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B6B40()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B6C30(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FMIPProductType();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 96);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24A6B6D60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FMIPProductType();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 96);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24A6B6EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A82C8B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A6B6F74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A82C8B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A6B7018()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B7050()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B70A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B70D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A6B7194(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_24A6B7300()
{
  v1 = [*v0 type];

  return v1;
}

id sub_24A6B7370()
{
  v1 = [*v0 lostModeInfo];

  return v1;
}

id sub_24A6B73AC()
{
  v1 = [*v0 owner];

  return v1;
}

id sub_24A6B73E4()
{
  v1 = [*v0 role];

  return v1;
}

id sub_24A6B7430()
{
  v1 = [*v0 accessoryProductInfo];

  return v1;
}

uint64_t sub_24A6B7528()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B7560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24A6B761C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FMIPDevice();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24A6B76D4()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v89 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = (v0 + v3);
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 72);

  v11 = *(v0 + v3 + 96);

  v12 = *(v0 + v3 + 112);

  v13 = *(v0 + v3 + 128);

  v14 = *(v0 + v3 + 144);

  v15 = *(v0 + v3 + 160);

  v16 = *(v0 + v3 + 176);

  v17 = *(v0 + v3 + 224);

  v18 = *(v0 + v3 + 232);

  v19 = *(v0 + v3 + 248);

  if (*(v0 + v3 + 472))
  {
    v20 = *(v5 + 39);

    v21 = *(v5 + 40);

    v22 = *(v5 + 42);

    v23 = *(v5 + 44);

    v24 = *(v5 + 46);

    v25 = *(v5 + 48);

    v26 = *(v5 + 50);

    v27 = *(v5 + 52);

    v28 = *(v5 + 54);

    v29 = *(v5 + 56);

    v30 = *(v5 + 58);

    v31 = *(v5 + 59);

    v32 = *(v5 + 61);

    v33 = *(v5 + 63);

    v34 = *(v5 + 65);

    v35 = *(v5 + 67);

    v36 = *(v5 + 69);

    v37 = *(v5 + 71);

    v38 = *(v5 + 73);
  }

  v39 = &v5[v1[28]];
  v40 = type metadata accessor for FMIPPlaySoundMetadata();
  if (!(*(*(v40 - 1) + 48))(v39, 1, v40))
  {
    v41 = v40[5];
    v42 = sub_24A82CA34();
    (*(*(v42 - 8) + 8))(&v39[v41], v42);
    v43 = *&v39[v40[6] + 8];

    v44 = *&v39[v40[7] + 8];

    v45 = *&v39[v40[8] + 8];

    v46 = *&v39[v40[9] + 8];
  }

  v47 = &v5[v1[29]];
  v48 = type metadata accessor for FMIPDeviceLostModeMetadata();
  if (!(*(*(v48 - 8) + 48))(v47, 1, v48))
  {
    v49 = *(v47 + 2);

    v50 = *(v47 + 4);

    v51 = *(v47 + 6);

    v52 = *(v48 + 48);
    v53 = sub_24A82CA34();
    (*(*(v53 - 8) + 8))(&v47[v52], v53);
  }

  v54 = &v5[v1[30]];
  v55 = type metadata accessor for FMIPLockMetadata();
  if (!(*(*(v55 - 8) + 48))(v54, 1, v55))
  {
    v56 = *(v55 + 20);
    v57 = sub_24A82CA34();
    (*(*(v57 - 8) + 8))(&v54[v56], v57);
  }

  v58 = &v5[v1[31]];
  v59 = type metadata accessor for FMIPEraseMetadata();
  if (!(*(*(v59 - 1) + 48))(v58, 1, v59))
  {
    v60 = v59[5];
    v61 = sub_24A82CA34();
    (*(*(v61 - 8) + 8))(&v58[v60], v61);
    v62 = *&v58[v59[6] + 8];

    v63 = *&v58[v59[7] + 8];
  }

  v64 = &v5[v1[32]];
  v65 = type metadata accessor for FMIPItemGroup();
  if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
  {
    v66 = *(v64 + 2);

    v67 = *(v64 + 4);

    v68 = *(v64 + 5);

    v69 = *(v64 + 6);

    v70 = *(v64 + 7);

    v71 = *(v64 + 9);

    v72 = &v64[*(v65 + 48)];
    v73 = type metadata accessor for FMIPItemLostModeMetadata();
    if (!(*(*(v73 - 8) + 48))(v72, 1, v73))
    {
      v74 = *(v72 + 1);

      v75 = *(v72 + 3);

      v76 = *(v73 + 24);
      v77 = sub_24A82CA34();
      (*(*(v77 - 8) + 8))(&v72[v76], v77);
      v78 = *&v72[*(v73 + 28) + 8];
    }

    v79 = *&v64[*(v65 + 52)];
  }

  v80 = *&v5[v1[37] + 8];

  v81 = v1[39];
  v82 = sub_24A82CA34();
  v83 = *(v82 - 8);
  v84 = *(v83 + 48);
  if (!v84(&v5[v81], 1, v82))
  {
    (*(v83 + 8))(&v5[v81], v82);
  }

  v85 = v1[40];
  if (!v84(&v5[v85], 1, v82))
  {
    (*(v83 + 8))(&v5[v85], v82);
  }

  v86 = v1[41];
  if (!v84(&v5[v86], 1, v82))
  {
    (*(v83 + 8))(&v5[v86], v82);
  }

  v87 = v1[42];
  if (!v84(&v5[v87], 1, v82))
  {
    (*(v83 + 8))(&v5[v87], v82);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v89, v2 | 7);
}

uint64_t sub_24A6B7DC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B7E04()
{
  v162 = type metadata accessor for FMIPMonitoredDevice(0);
  v164 = *(*(v162 - 8) + 80);
  v156 = *(*(v162 - 8) + 64);
  v1 = type metadata accessor for FMIPDevice();
  v168 = *(*(v1 - 1) + 80);
  v163 = *(*(v1 - 1) + 64);
  v167 = v0;
  v158 = (v164 + 16) & ~v164;
  v2 = (v0 + v158);
  v3 = *(v0 + v158 + 8);

  v4 = *(v0 + v158 + 24);

  v5 = *(v0 + v158 + 40);

  v6 = *(v0 + v158 + 56);

  v7 = *(v0 + v158 + 72);

  v8 = *(v0 + v158 + 96);

  v9 = *(v0 + v158 + 112);

  v10 = *(v0 + v158 + 128);

  v11 = *(v0 + v158 + 144);

  v12 = *(v0 + v158 + 160);

  v13 = *(v0 + v158 + 176);

  v14 = *(v0 + v158 + 224);

  v15 = *(v0 + v158 + 232);

  v16 = *(v0 + v158 + 248);

  if (*(v0 + v158 + 472))
  {
    v17 = *(v2 + 39);

    v18 = *(v2 + 40);

    v19 = *(v2 + 42);

    v20 = *(v2 + 44);

    v21 = *(v2 + 46);

    v22 = *(v2 + 48);

    v23 = *(v2 + 50);

    v24 = *(v2 + 52);

    v25 = *(v2 + 54);

    v26 = *(v2 + 56);

    v27 = *(v2 + 58);

    v28 = *(v2 + 59);

    v29 = *(v2 + 61);

    v30 = *(v2 + 63);

    v31 = *(v2 + 65);

    v32 = *(v2 + 67);

    v33 = *(v2 + 69);

    v34 = *(v2 + 71);

    v35 = *(v2 + 73);
  }

  v36 = &v2[v1[28]];
  v37 = type metadata accessor for FMIPPlaySoundMetadata();
  v160 = *(*(v37 - 1) + 48);
  if (!v160(v36, 1, v37))
  {
    v38 = v37[5];
    v39 = sub_24A82CA34();
    (*(*(v39 - 8) + 8))(&v36[v38], v39);
    v40 = *&v36[v37[6] + 8];

    v41 = *&v36[v37[7] + 8];

    v42 = *&v36[v37[8] + 8];

    v43 = *&v36[v37[9] + 8];
  }

  v44 = &v2[v1[29]];
  v166 = type metadata accessor for FMIPDeviceLostModeMetadata();
  v159 = *(*(v166 - 8) + 48);
  if (!v159(v44, 1))
  {
    v45 = *(v44 + 2);

    v46 = *(v44 + 4);

    v47 = *(v44 + 6);

    v48 = *(v166 + 48);
    v49 = sub_24A82CA34();
    (*(*(v49 - 8) + 8))(&v44[v48], v49);
  }

  v50 = &v2[v1[30]];
  v165 = type metadata accessor for FMIPLockMetadata();
  v157 = *(*(v165 - 8) + 48);
  if (!v157(v50, 1))
  {
    v51 = *(v165 + 20);
    v52 = sub_24A82CA34();
    (*(*(v52 - 8) + 8))(&v50[v51], v52);
  }

  v53 = &v2[v1[31]];
  v54 = type metadata accessor for FMIPEraseMetadata();
  v155 = *(*(v54 - 1) + 48);
  if (!v155(v53, 1, v54))
  {
    v55 = v54[5];
    v56 = sub_24A82CA34();
    (*(*(v56 - 8) + 8))(&v53[v55], v56);
    v57 = *&v53[v54[6] + 8];

    v58 = *&v53[v54[7] + 8];
  }

  v59 = &v2[v1[32]];
  v60 = type metadata accessor for FMIPItemGroup();
  v154 = *(*(v60 - 8) + 48);
  if (!v154(v59, 1, v60))
  {
    v61 = *(v59 + 2);

    v62 = *(v59 + 4);

    v63 = *(v59 + 5);

    v64 = *(v59 + 6);

    v65 = *(v59 + 7);

    v66 = *(v59 + 9);

    v67 = &v59[*(v60 + 48)];
    v68 = v60;
    v69 = type metadata accessor for FMIPItemLostModeMetadata();
    if (!(*(*(v69 - 8) + 48))(v67, 1, v69))
    {
      v70 = *(v67 + 1);

      v71 = *(v67 + 3);

      v72 = *(v69 + 24);
      v73 = sub_24A82CA34();
      (*(*(v73 - 8) + 8))(&v67[v72], v73);
      v74 = *&v67[*(v69 + 28) + 8];
    }

    v75 = *&v59[*(v68 + 52)];

    v60 = v68;
  }

  v161 = v60;
  v76 = *&v2[v1[37] + 8];

  v77 = v1[39];
  v78 = sub_24A82CA34();
  v79 = *(v78 - 8);
  v80 = *(v79 + 48);
  if (!v80(&v2[v77], 1, v78))
  {
    (*(v79 + 8))(&v2[v77], v78);
  }

  v81 = v1[40];
  if (!v80(&v2[v81], 1, v78))
  {
    (*(v79 + 8))(&v2[v81], v78);
  }

  v82 = v1[41];
  if (!v80(&v2[v82], 1, v78))
  {
    (*(v79 + 8))(&v2[v82], v78);
  }

  v83 = v1[42];
  if (!v80(&v2[v83], 1, v78))
  {
    (*(v79 + 8))(&v2[v83], v78);
  }

  v84 = *&v2[*(v162 + 24) + 8];

  v85 = v167;
  v86 = v167 + ((v158 + v156 + v168) & ~v168);
  v87 = *(v86 + 8);

  v88 = *(v86 + 24);

  v89 = *(v86 + 40);

  v90 = *(v86 + 56);

  v91 = *(v86 + 72);

  v92 = *(v86 + 96);

  v93 = *(v86 + 112);

  v94 = *(v86 + 128);

  v95 = *(v86 + 144);

  v96 = *(v86 + 160);

  v97 = *(v86 + 176);

  v98 = *(v86 + 224);

  v99 = *(v86 + 232);

  v100 = *(v86 + 248);

  if (*(v86 + 472))
  {
    v101 = *(v86 + 312);

    v102 = *(v86 + 320);

    v103 = *(v86 + 336);

    v104 = *(v86 + 352);

    v105 = *(v86 + 368);

    v106 = *(v86 + 384);

    v107 = *(v86 + 400);

    v108 = *(v86 + 416);

    v109 = *(v86 + 432);

    v110 = *(v86 + 448);

    v111 = *(v86 + 464);

    v112 = *(v86 + 472);

    v113 = *(v86 + 488);

    v114 = *(v86 + 504);

    v115 = *(v86 + 520);

    v116 = *(v86 + 536);

    v117 = *(v86 + 552);

    v118 = *(v86 + 568);

    v119 = *(v86 + 584);
  }

  v120 = (v86 + v1[28]);
  if (!v160(v120, 1, v37))
  {
    (*(v79 + 8))(&v120[v37[5]], v78);
    v121 = *&v120[v37[6] + 8];

    v122 = *&v120[v37[7] + 8];

    v123 = *&v120[v37[8] + 8];

    v124 = *&v120[v37[9] + 8];
  }

  v125 = (v86 + v1[29]);
  if (!(v159)(v125, 1, v166))
  {
    v126 = *(v125 + 2);

    v127 = *(v125 + 4);

    v128 = *(v125 + 6);

    (*(v79 + 8))(&v125[*(v166 + 48)], v78);
  }

  v129 = v86 + v1[30];
  if (!(v157)(v129, 1, v165))
  {
    (*(v79 + 8))(v129 + *(v165 + 20), v78);
  }

  v130 = (v86 + v1[31]);
  if (!v155(v130, 1, v54))
  {
    (*(v79 + 8))(&v130[v54[5]], v78);
    v131 = *&v130[v54[6] + 8];

    v132 = *&v130[v54[7] + 8];
  }

  v133 = (v86 + v1[32]);
  if (!v154(v133, 1, v161))
  {
    v134 = *(v133 + 2);

    v135 = *(v133 + 4);

    v136 = *(v133 + 5);

    v137 = *(v133 + 6);

    v138 = *(v133 + 7);

    v139 = *(v133 + 9);

    v140 = &v133[*(v161 + 48)];
    v141 = type metadata accessor for FMIPItemLostModeMetadata();
    if (!(*(*(v141 - 8) + 48))(v140, 1, v141))
    {
      v142 = *(v140 + 1);

      v143 = *(v140 + 3);

      (*(v79 + 8))(&v140[*(v141 + 24)], v78);
      v144 = *&v140[*(v141 + 28) + 8];
    }

    v145 = *&v133[*(v161 + 52)];

    v85 = v167;
  }

  v146 = *(v86 + v1[37] + 8);

  v147 = v1[39];
  if (!v80((v86 + v147), 1, v78))
  {
    (*(v79 + 8))(v86 + v147, v78);
  }

  v148 = v1[40];
  if (!v80((v86 + v148), 1, v78))
  {
    (*(v79 + 8))(v86 + v148, v78);
  }

  v149 = v1[41];
  if (!v80((v86 + v149), 1, v78))
  {
    (*(v79 + 8))(v86 + v149, v78);
  }

  v150 = v1[42];
  if (!v80((v86 + v150), 1, v78))
  {
    (*(v79 + 8))(v86 + v150, v78);
  }

  v151 = (v163 + ((v158 + v156 + v168) & ~v168) + 7) & 0xFFFFFFFFFFFFFFF8;
  v152 = *(v85 + v151);

  return MEMORY[0x2821FE8E8](v85, v151 + 8, v164 | v168 | 7);
}

uint64_t sub_24A6B8A90()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v92 = *(*(v1 - 1) + 64);
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 56);

  v9 = *(v0 + v3 + 72);

  v10 = *(v0 + v3 + 96);

  v11 = *(v0 + v3 + 112);

  v12 = *(v0 + v3 + 128);

  v13 = *(v0 + v3 + 144);

  v14 = *(v0 + v3 + 160);

  v15 = *(v0 + v3 + 176);

  v16 = *(v0 + v3 + 224);

  v17 = *(v0 + v3 + 232);

  v18 = *(v0 + v3 + 248);

  if (*(v0 + v3 + 472))
  {
    v19 = *(v4 + 39);

    v20 = *(v4 + 40);

    v21 = *(v4 + 42);

    v22 = *(v4 + 44);

    v23 = *(v4 + 46);

    v24 = *(v4 + 48);

    v25 = *(v4 + 50);

    v26 = *(v4 + 52);

    v27 = *(v4 + 54);

    v28 = *(v4 + 56);

    v29 = *(v4 + 58);

    v30 = *(v4 + 59);

    v31 = *(v4 + 61);

    v32 = *(v4 + 63);

    v33 = *(v4 + 65);

    v34 = *(v4 + 67);

    v35 = *(v4 + 69);

    v36 = *(v4 + 71);

    v37 = *(v4 + 73);
  }

  v38 = &v4[v1[28]];
  v39 = type metadata accessor for FMIPPlaySoundMetadata();
  if (!(*(*(v39 - 1) + 48))(v38, 1, v39))
  {
    v40 = v39[5];
    v41 = sub_24A82CA34();
    (*(*(v41 - 8) + 8))(&v38[v40], v41);
    v42 = *&v38[v39[6] + 8];

    v43 = *&v38[v39[7] + 8];

    v44 = *&v38[v39[8] + 8];

    v45 = *&v38[v39[9] + 8];
  }

  v46 = &v4[v1[29]];
  v47 = type metadata accessor for FMIPDeviceLostModeMetadata();
  if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
  {
    v48 = *(v46 + 2);

    v49 = *(v46 + 4);

    v50 = *(v46 + 6);

    v51 = *(v47 + 48);
    v52 = sub_24A82CA34();
    (*(*(v52 - 8) + 8))(&v46[v51], v52);
  }

  v53 = &v4[v1[30]];
  v54 = type metadata accessor for FMIPLockMetadata();
  if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
  {
    v55 = *(v54 + 20);
    v56 = sub_24A82CA34();
    (*(*(v56 - 8) + 8))(&v53[v55], v56);
  }

  v57 = &v4[v1[31]];
  v58 = type metadata accessor for FMIPEraseMetadata();
  if (!(*(*(v58 - 1) + 48))(v57, 1, v58))
  {
    v59 = v58[5];
    v60 = sub_24A82CA34();
    (*(*(v60 - 8) + 8))(&v57[v59], v60);
    v61 = *&v57[v58[6] + 8];

    v62 = *&v57[v58[7] + 8];
  }

  v63 = &v4[v1[32]];
  v64 = type metadata accessor for FMIPItemGroup();
  if (!(*(*(v64 - 8) + 48))(v63, 1, v64))
  {
    v65 = *(v63 + 2);

    v66 = *(v63 + 4);

    v67 = *(v63 + 5);

    v68 = *(v63 + 6);

    v69 = *(v63 + 7);

    v70 = *(v63 + 9);

    v71 = &v63[*(v64 + 48)];
    v72 = type metadata accessor for FMIPItemLostModeMetadata();
    if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
    {
      v73 = *(v71 + 1);

      v74 = *(v71 + 3);

      v75 = *(v72 + 24);
      v76 = sub_24A82CA34();
      (*(*(v76 - 8) + 8))(&v71[v75], v76);
      v77 = *&v71[*(v72 + 28) + 8];
    }

    v78 = *&v63[*(v64 + 52)];
  }

  v79 = *&v4[v1[37] + 8];

  v80 = v1[39];
  v81 = sub_24A82CA34();
  v82 = *(v81 - 8);
  v83 = *(v82 + 48);
  if (!v83(&v4[v80], 1, v81))
  {
    (*(v82 + 8))(&v4[v80], v81);
  }

  v84 = v1[40];
  if (!v83(&v4[v84], 1, v81))
  {
    (*(v82 + 8))(&v4[v84], v81);
  }

  v85 = v1[41];
  if (!v83(&v4[v85], 1, v81))
  {
    (*(v82 + 8))(&v4[v85], v81);
  }

  v86 = v1[42];
  if (!v83(&v4[v86], 1, v81))
  {
    (*(v82 + 8))(&v4[v86], v81);
  }

  v87 = (v92 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
  v89 = *(v0 + v87 + 8);

  v90 = *(v0 + v88);

  return MEMORY[0x2821FE8E8](v0, v88 + 8, v2 | 7);
}