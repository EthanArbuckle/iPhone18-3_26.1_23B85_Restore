uint64_t sub_1B0C13558@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  swift_beginAccess();
  if (*(a1 + 17) == 1)
  {
    result = sub_1B0E466E8();
    if (v9)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v5 = v7;
      result = swift_beginAccess();
      v6 = 0;
      *(a1 + 16) = v8;
    }
  }

  else
  {
    v5 = *(a1 + 16);
    result = swift_beginAccess();
    v6 = 0;
    *(a1 + 16) = 256;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B0C13624@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = sub_1B0E44E48();
  result = swift_endAccess();
  *a1 = v2;
  *(a1 + 2) = BYTE2(v2) & 1;
  return result;
}

BOOL sub_1B0C136D0(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1B0C13700@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1B0C1372C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_1B0C137EC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B0C137FC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1B0C16EB4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1B0C1383C(int a1)
{
  if (a1)
  {
    v2 = sub_1B0AFF0E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1B0AFF0E8((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0xD000000000000010;
    *(v5 + 5) = 0x80000001B0F2D290;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if ((a1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1B0AFF0E8((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    strcpy(v8 + 32, "negotiateOEM");
    v8[45] = 0;
    *(v8 + 23) = -5120;
    if ((a1 & 4) == 0)
    {
LABEL_8:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_1B0AFF0E8((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  strcpy(v11 + 32, "requestTarget");
  *(v11 + 23) = -4864;
  if ((a1 & 0x10) == 0)
  {
LABEL_9:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_1B0AFF0E8((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  strcpy(v14 + 32, "negotiateSign");
  *(v14 + 23) = -4864;
  if ((a1 & 0x20) == 0)
  {
LABEL_10:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_43:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_1B0AFF0E8((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  strcpy(v17 + 32, "negotiateSeal");
  *(v17 + 23) = -4864;
  if ((a1 & 0x40) == 0)
  {
LABEL_11:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_48:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_1B0AFF0E8((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0xD000000000000016;
  *(v20 + 5) = 0x80000001B0F2D270;
  if ((a1 & 0x80) == 0)
  {
LABEL_12:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_1B0AFF0E8((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD000000000000016;
  *(v23 + 5) = 0x80000001B0F2D250;
  if ((a1 & 0x200) == 0)
  {
LABEL_13:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1B0AFF0E8((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  strcpy(v26 + 32, "negotiateNTLM");
  *(v26 + 23) = -4864;
  if ((a1 & 0x800) == 0)
  {
LABEL_14:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_1B0AFF0E8((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD000000000000012;
  *(v29 + 5) = 0x80000001B0F2D230;
  if ((a1 & 0x1000) == 0)
  {
LABEL_15:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_73;
  }

LABEL_68:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_1B0AFF0E8((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0xD000000000000017;
  *(v32 + 5) = 0x80000001B0F2D210;
  if ((a1 & 0x2000) == 0)
  {
LABEL_16:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_78;
  }

LABEL_73:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_1B0AFF0E8((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0xD00000000000001CLL;
  *(v35 + 5) = 0x80000001B0F2D1F0;
  if ((a1 & 0x8000) == 0)
  {
LABEL_17:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_83;
  }

LABEL_78:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_1B0AFF0E8((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 0xD000000000000013;
  *(v38 + 5) = 0x80000001B0F2D1D0;
  if ((a1 & 0x10000) == 0)
  {
LABEL_18:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_88;
  }

LABEL_83:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_1B0AFF0E8((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0xD000000000000010;
  *(v41 + 5) = 0x80000001B0F2D1B0;
  if ((a1 & 0x20000) == 0)
  {
LABEL_19:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_93;
  }

LABEL_88:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_1B0AFF0E8((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0xD000000000000010;
  *(v44 + 5) = 0x80000001B0F2D190;
  if ((a1 & 0x80000) == 0)
  {
LABEL_20:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_98;
  }

LABEL_93:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_1B0AFF0E8((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  *(v47 + 4) = 0xD000000000000011;
  *(v47 + 5) = 0x80000001B0F2D170;
  if ((a1 & 0x100000) == 0)
  {
LABEL_21:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_103;
  }

LABEL_98:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v49 = *(v2 + 2);
  v48 = *(v2 + 3);
  if (v49 >= v48 >> 1)
  {
    v2 = sub_1B0AFF0E8((v48 > 1), v49 + 1, 1, v2);
  }

  *(v2 + 2) = v49 + 1;
  v50 = &v2[16 * v49];
  *(v50 + 4) = 0xD000000000000011;
  *(v50 + 5) = 0x80000001B0F2D150;
  if ((a1 & 0x400000) == 0)
  {
LABEL_22:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_108;
  }

LABEL_103:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v52 = *(v2 + 2);
  v51 = *(v2 + 3);
  if (v52 >= v51 >> 1)
  {
    v2 = sub_1B0AFF0E8((v51 > 1), v52 + 1, 1, v2);
  }

  *(v2 + 2) = v52 + 1;
  v53 = &v2[16 * v52];
  *(v53 + 4) = 0xD000000000000016;
  *(v53 + 5) = 0x80000001B0F2D130;
  if ((a1 & 0x800000) == 0)
  {
LABEL_23:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_113;
  }

LABEL_108:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v55 = *(v2 + 2);
  v54 = *(v2 + 3);
  if (v55 >= v54 >> 1)
  {
    v2 = sub_1B0AFF0E8((v54 > 1), v55 + 1, 1, v2);
  }

  *(v2 + 2) = v55 + 1;
  v56 = &v2[16 * v55];
  *(v56 + 4) = 0xD000000000000013;
  *(v56 + 5) = 0x80000001B0F2D110;
  if ((a1 & 0x2000000) == 0)
  {
LABEL_24:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_118;
  }

LABEL_113:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v58 = *(v2 + 2);
  v57 = *(v2 + 3);
  if (v58 >= v57 >> 1)
  {
    v2 = sub_1B0AFF0E8((v57 > 1), v58 + 1, 1, v2);
  }

  *(v2 + 2) = v58 + 1;
  v59 = &v2[16 * v58];
  *(v59 + 4) = 0xD000000000000010;
  *(v59 + 5) = 0x80000001B0F2D0F0;
  if ((a1 & 0x20000000) == 0)
  {
LABEL_25:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_123;
  }

LABEL_118:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v61 = *(v2 + 2);
  v60 = *(v2 + 3);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_1B0AFF0E8((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 2) = v61 + 1;
  v62 = &v2[16 * v61];
  strcpy(v62 + 32, "negotiate128");
  v62[45] = 0;
  *(v62 + 23) = -5120;
  if ((a1 & 0x40000000) == 0)
  {
LABEL_26:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

LABEL_123:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v64 = *(v2 + 2);
  v63 = *(v2 + 3);
  if (v64 >= v63 >> 1)
  {
    v2 = sub_1B0AFF0E8((v63 > 1), v64 + 1, 1, v2);
  }

  *(v2 + 2) = v64 + 1;
  v65 = &v2[16 * v64];
  *(v65 + 4) = 0xD000000000000014;
  *(v65 + 5) = 0x80000001B0F2D0D0;
  if (a1 < 0)
  {
LABEL_128:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v67 = *(v2 + 2);
    v66 = *(v2 + 3);
    if (v67 >= v66 >> 1)
    {
      v2 = sub_1B0AFF0E8((v66 > 1), v67 + 1, 1, v2);
    }

    *(v2 + 2) = v67 + 1;
    v68 = &v2[16 * v67];
    *(v68 + 4) = 0x746169746F67656ELL;
    *(v68 + 5) = 0xEB00000000363565;
  }

LABEL_133:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
  v69 = sub_1B0E448E8();

  return v69;
}

void sub_1B0C14438(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_0(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t _s9OSVersionVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9OSVersionVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1B0C14570()
{
  result = qword_1EB6E5728;
  if (!qword_1EB6E5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5728);
  }

  return result;
}

unint64_t sub_1B0C145C8()
{
  result = qword_1EB6E5730;
  if (!qword_1EB6E5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5730);
  }

  return result;
}

unint64_t sub_1B0C14620()
{
  result = qword_1EB6E5738;
  if (!qword_1EB6E5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5738);
  }

  return result;
}

unint64_t sub_1B0C14678()
{
  result = qword_1EB6E5740;
  if (!qword_1EB6E5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5740);
  }

  return result;
}

uint64_t sub_1B0C146CC(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1B0E44568();
      sub_1B0BF8F04();
      result = sub_1B0E44498();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1B0C1496C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C1484C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v9, 0, 14);
      v4 = v9;
      goto LABEL_9;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      v4 = v9 + BYTE6(a2);
LABEL_9:
      result = sub_1B0C10EFC(v9, v4, a3);
      goto LABEL_10;
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1B0C14A1C(v5, v6, a3);
LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C1496C(uint64_t a1, uint64_t a2)
{
  result = sub_1B0E42A98();
  if (!result || (result = sub_1B0E42AC8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B0E42AB8();
      sub_1B0E44568();
      sub_1B0BF8F04();
      return sub_1B0E44498();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C14A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B0E42A98();
  v7 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1B0E42AB8();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1B0C10EFC(v7, v13, a3);
}

uint64_t sub_1B0C14AD0()
{
  if (*(v0 + 64))
  {
    v1 = 0;
    v2 = 1;
    return v1 | (v2 << 16);
  }

  v3 = *(v0 + 32);
  if (v3 == *(v0 + 8) || ((v4 = *(*(v0 + 16) + v3), *(v0 + 32) = v3 + 1, v5 = *(v0 + 40), v6 = *(v0 + 48), (v6 & 0x2000000000000000) != 0) ? (v7 = HIBYTE(v6) & 0xF) : (v7 = v5 & 0xFFFFFFFFFFFFLL), v8 = *(v0 + 56), v8 >> 14 == 4 * v7))
  {
    v1 = 0;
    v2 = 1;
    *(v0 + 64) = 1;
    return v1 | (v2 << 16);
  }

  v9 = (v5 >> 59) & 1;
  if ((v6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = *(v0 + 56) & 0xCLL;
  v11 = 4 << v9;
  v12 = *(v0 + 56);
  if (v10 == v11)
  {
    v24 = *(v0 + 56);
    v27 = *(v0 + 40);
    v16 = *(v0 + 48);
    v17 = sub_1B0A6D6C4(v8, v5, v6);
    v6 = v16;
    v12 = v17;
    v8 = v24;
    v5 = v27;
  }

  v13 = v12 >> 16;
  if (v12 >> 16 >= v7)
  {
    __break(1u);
LABEL_23:
    v25 = v8;
    v28 = v5;
    v18 = v6;
    v19 = sub_1B0E44E08();
    v6 = v18;
    v13 = v19;
    v8 = v25;
    v5 = v28;
    if (v10 == v11)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v31[0] = v5;
    v31[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    v14 = v31;
  }

  else
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v14 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  while (1)
  {
    LOBYTE(v13) = *(v14 + v13);
    if (v10 == v11)
    {
LABEL_24:
      v29 = v5;
      v22 = v6;
      v8 = sub_1B0A6D6C4(v8, v5, v6);
      v6 = v22;
      v5 = v29;
      if ((v22 & 0x1000000000000000) == 0)
      {
LABEL_21:
        v15 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_27;
      }
    }

    else
    {
LABEL_20:
      if ((v6 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v7 > v8 >> 16)
    {
      break;
    }

    __break(1u);
LABEL_30:
    v26 = v8;
    v30 = v5;
    v23 = v6;
    v21 = sub_1B0E46368();
    v5 = v30;
    v14 = v21;
    v6 = v23;
    v8 = v26;
  }

  v15 = sub_1B0E44DD8();
LABEL_27:
  v2 = 0;
  *(v0 + 56) = v15;
  v1 = v4 & 0xFFFF00FF | (v13 << 8);
  return v1 | (v2 << 16);
}

size_t *sub_1B0C14C80(size_t *result, void *__dst, int64_t a3, size_t a4, size_t a5, size_t a6, size_t a7)
{
  if (!a6)
  {
    goto LABEL_16;
  }

  v7 = a7 - a6;
  if ((a7 - a6) < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v7 < a4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 < a5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(a4, a5 - a4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a5 < a4)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = 0;
  if (a5 != a4 && a3)
  {
    if ((a5 - a4) >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a5 - a4;
    }

    v9 = result;
    v10 = a7;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    memcpy(__dst, (a6 + a4), v8);
    a4 = v13;
    result = v9;
    a5 = v12;
    a6 = v11;
    a7 = v10;
  }

  v14 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
    goto LABEL_25;
  }

  if (v14 <= v7)
  {
LABEL_19:
    result[3] = a7;
    result[4] = v14;
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    return v8;
  }

  __break(1u);
LABEL_16:
  if (a4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
    v14 = 0;
    v8 = 0;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B0C14D88(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1)
        {
          if (a1 == a4 && a2 == a5)
          {
            return 1;
          }

          return sub_1B0E46A78();
        }
      }

      else if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }
    }

    else if (!a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1B0E46A78();
    }
  }

  else if (a3 > 4u)
  {
    if (a3 == 5)
    {
      if (a6 == 5)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }
    }

    else if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (a6 == 6 && a4 == 3 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 6 && a4 == 2 && !a5)
      {
        return 1;
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 6 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 6 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3 == 3)
  {
    if (a6 == 3)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1B0E46A78();
    }
  }

  else if (a6 == 4)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1B0E46A78();
  }

  return 0;
}

BOOL sub_1B0C14F44(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v5 == 255)
  {
    return 0;
  }

  v9 = *a1;
  v10 = *a2;
  v11 = a2[1];
  if (!v4)
  {
    if (*(a2 + 16))
    {
      return 0;
    }

LABEL_16:
    if ((v9 != v10 || a1[1] != v11) && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }

LABEL_3:
    if (sub_1B0BF7BC0(a1[3], a2[3]))
    {
      v6 = a1[4];
      v7 = a2[4];
      if (v6)
      {
        if (!v7 || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v6, v7) & 1) == 0)
        {
          return 0;
        }

LABEL_24:
        if (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(a1[5], a2[5]))
        {
          return *(a1 + 12) == *(a2 + 12);
        }

        return 0;
      }

      if (!v7)
      {
        goto LABEL_24;
      }
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (v5 != 1)
    {
      return 0;
    }

    goto LABEL_16;
  }

  result = 0;
  if (v5 == 2 && !(v11 | v10))
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1B0C1503C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v10 = v9;
  v45 = a7;
  v42 = a1;
  v43 = a2;
  v44 = a9;
  v16 = sub_1B0E44568();
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54C8, &unk_1B0ED0780);
  v20 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v22 = &v40 - v21;
  v23 = *(a5 + 16);
  if (v23)
  {
    v24 = (a5 + 48);
    while (*v24 != 1)
    {
      v24 += 24;
      if (!--v23)
      {
        goto LABEL_5;
      }
    }

    v25 = *(v24 - 1);
    v41 = *(v24 - 2);
    v48 = v25;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
LABEL_5:
    v41 = 0;
    v48 = 0xE000000000000000;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = sub_1B0C12C10(a3, a4);
  v27 = sub_1B0C121D0(v26, sub_1B0BE9024);

  v28 = sub_1B0E45278();
  v28[2] = 16;
  v28[4] = 0;
  v28[5] = 0;
  v50 = a8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C31A28(v28);
  v46 = v50;
  v50 = a6;
  v29 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C31A28(v29);
  v30 = sub_1B0C05480(v50);
  v32 = v31;

  sub_1B0BF8F04();
  sub_1B0E444C8();
  sub_1B03B2000(v30, v32);
  sub_1B0C146CC(v30, v32);
  sub_1B0391D50(v30, v32);
  sub_1B0E444A8();
  sub_1B0391D50(v30, v32);
  (*(v49 + 8))(v19, v16);
  *&v22[*(v47 + 36)] = 8;
  v33 = sub_1B0BE8BE0(v22);
  sub_1B0398EFC(v22, &qword_1EB6E54C8, &unk_1B0ED0780);
  v34 = sub_1B0C124B8(v27, v33);
  if (v10)
  {
  }

  else
  {
    v36 = v34;

    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v37 = v44;
    v38 = v41;
    *v44 = v42;
    v37[1] = result;
    v39 = v48;
    v37[2] = v38;
    v37[3] = v39;
    v37[4] = v46;
    v37[5] = v36;
    *(v37 + 12) = v45;
  }

  return result;
}

uint64_t sub_1B0C15398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v15 = sub_1B0C12C10(a3, a4);
  v16 = sub_1B0C121D0(v15, sub_1B0BE9024);

  v17 = sub_1B0C124B8(v16, a6);

  if (!v8)
  {
    v19 = *(a5 + 16);
    if (v19)
    {
      v20 = (a5 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_6;
        }
      }

      v21 = *(v20 - 2);
      v22 = *(v20 - 1);
      sub_1B0C16E9C(v21, v22, 1u);
    }

    else
    {
LABEL_6:
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *a8 = a1;
    *(a8 + 8) = a2;
    *(a8 + 16) = v21;
    *(a8 + 24) = v22;
    *(a8 + 32) = v17;
    *(a8 + 40) = v17;
    *(a8 + 48) = a7;
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0C154B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(unint64_t, char *, uint64_t)@<X5>, char *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v127 = a7;
  v117 = a6;
  v17 = sub_1B0E44508();
  v18 = *(v17 - 8);
  v123 = v17;
  v124 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v119 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55B0, &qword_1B0ED3120);
  v21 = *(v121 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v115 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v122 = &v95 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v120 = &v95 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v118 = &v95 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v125 = &v95 - v31;
  v32 = sub_1B0E43108();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  if ((a8 & 0x80000) != 0)
  {
    v50 = sub_1B0E45278();
    *(v50 + 16) = 8;
    *(v50 + 32) = 0;
    CCRandomGenerateBytes((v50 + 32), 8uLL);
    v51 = v126;
    sub_1B0C1503C(a1, a2, a3, a4, a5, v127, a8, v50, v130);

    if (v51)
    {
      return result;
    }

    v53 = v131;
    v55 = v130[4];
    v54 = v130[5];
    v56 = v130[2];
    v57 = v130[3];
    v58 = v130[0];
    v59 = v130[1];
    goto LABEL_20;
  }

  v113 = a3;
  v114 = a4;
  v116 = a2;
  v112 = a8;
  if (a10)
  {
    v40 = v39;
    v110 = v37;
    v111 = v21;
    v109 = &v95 - v38;
    sub_1B0E430F8();
    v41 = sub_1B0E45278();
    *(v41 + 16) = 8;
    v42 = v41;
    *(v41 + 32) = 0;
    CCRandomGenerateBytes((v41 + 32), 8uLL);
    v43 = *(a5 + 16);
    if (v43)
    {
      v44 = (a5 + 48);
      v45 = v121;
      v46 = v114;
      v47 = v113;
      while (*v44 != 1)
      {
        v44 += 24;
        if (!--v43)
        {
          v48 = 0;
          v49 = 0xE000000000000000;
          goto LABEL_14;
        }
      }

      v62 = *(v44 - 2);
      v61 = *(v44 - 1);
      v63 = v114;
      v64 = v113;
      v49 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v48 = v62;
      v47 = v64;
      v46 = v63;
    }

    else
    {
      v48 = 0;
      v49 = 0xE000000000000000;
      v45 = v121;
      v46 = v114;
      v47 = v113;
    }

LABEL_14:
    v108 = a1;
    v107 = v48;
    v106 = v49;
    sub_1B0C129E4(a1, v116, v47, v46, v48, v49);
    v65 = v110;
    (*(v40 + 16))(v35, v109, v110);
    sub_1B0E430B8();
    v67 = round((v66 + 1.16444736e10) * 10000000.0);
    v68 = *(v40 + 8);
    v105 = v40 + 8;
    result = v68(v35, v65);
    if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v67 > -1.0)
    {
      if (v67 < 1.84467441e19)
      {
        v96 = v68;
        v97 = a9;
        v104 = v42;
        v69 = sub_1B0C12D38(v67, v42, v117);
        v128 = v127;
        swift_bridgeObjectRetain_n();
        v70 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0C31A28(v70);
        v71 = sub_1B0C05480(v128);
        v73 = v72;

        v128 = v71;
        v129 = v73;
        v74 = v111;
        v75 = *(v111 + 16);
        v76 = v120;
        v121 = v111 + 16;
        v117 = v75;
        v75(v120, v125, v45);
        v77 = sub_1B039E3F8(&qword_1EB6E55C0, &qword_1EB6E55B0, &qword_1B0ED3120);
        v78 = v119;
        v103 = v77;
        sub_1B0E444F8();
        v79 = sub_1B0E44568();
        v80 = sub_1B0BF8F04();
        v81 = sub_1B08DEFE0();
        v82 = v118;
        v102 = v79;
        v101 = v80;
        v100 = v81;
        sub_1B0E44518();
        v83 = v124 + 8;
        v99 = *(v124 + 8);
        v99(v78, v123);
        sub_1B0391D50(v128, v129);
        v84 = *(v69 + 16);
        v98 = sub_1B039E3F8(&qword_1EB6E5798, &qword_1EB6E55B0, &qword_1B0ED3120);
        result = sub_1B0E44F28();
        if (!__OFADD__(v84, result))
        {
          v128 = sub_1B0C0C114(0, (v84 + result) & ~((v84 + result) >> 63), 0, MEMORY[0x1E69E7CC0]);
          v117(v76, v82, v45);
          sub_1B0C31E98(v76);
          sub_1B0C31A28(v69);
          v124 = v83;
          v85 = *(v74 + 8);
          v85(v82, v45);
          v111 = v74 + 8;
          v118 = v85;
          v85(v125, v45);
          v125 = v128;
          v86 = v122;
          v87 = v78;
          v59 = v116;
          sub_1B0C129E4(v108, v116, v113, v114, v107, v106);
          v128 = v127;
          v88 = v104;
          swift_bridgeObjectRetain_n();
          sub_1B0C31A28(v88);
          v89 = sub_1B0C05480(v128);
          v91 = v90;

          v128 = v89;
          v129 = v91;
          v117(v76, v86, v45);
          sub_1B0E444F8();
          v92 = v115;
          sub_1B0E44518();
          v99(v87, v123);
          sub_1B0391D50(v128, v129);
          v93 = *(v88 + 16);
          result = sub_1B0E44F28();
          if (!__OFADD__(v93, result))
          {
            v128 = sub_1B0C0C114(0, (v93 + result) & ~((v93 + result) >> 63), 0, MEMORY[0x1E69E7CC0]);
            v117(v76, v92, v45);
            sub_1B0C31E98(v76);
            sub_1B0C31A28(v88);
            v94 = v118;
            (v118)(v92, v45);
            v94(v122, v45);
            v55 = v128;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v96(v109, v110);

            v54 = v125;
            a9 = v97;
            v53 = v112;
            v58 = v108;
            v56 = v107;
            v57 = v106;
            goto LABEL_20;
          }

LABEL_26:
          __break(1u);
          return result;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  v60 = v126;
  result = sub_1B0C15398(a1, v116, v113, v114, a5, v127, v112, v132);
  if (v60)
  {
    return result;
  }

  v53 = v133;
  v55 = v132[4];
  v54 = v132[5];
  v56 = v132[2];
  v57 = v132[3];
  v58 = v132[0];
  v59 = v132[1];
LABEL_20:
  *a9 = v58;
  *(a9 + 8) = v59;
  *(a9 + 16) = v56;
  *(a9 + 24) = v57;
  *(a9 + 32) = v55;
  *(a9 + 40) = v54;
  *(a9 + 48) = v53;
  return result;
}

uint64_t sub_1B0C15EEC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  MEMORY[0x1B2726D20](a2);
  if (!a1)
  {
    return 0;
  }

  result = 0;
  v5 = 0xE000000000000000;
  if (v2)
  {
    while (*a1 - 127 >= 0xFFFFFFA1)
    {
      ++a1;
      v7 = result;
      v8 = v5;
      sub_1B0E44C58();
      result = v7;
      v5 = v8;
      if (!--v2)
      {
        return result;
      }
    }

    sub_1B0C16BB4();
    swift_allocError();
    *v6 = 5;
    *(v6 + 8) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0C15FC4(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0xE000000000000000;
  MEMORY[0x1B2726D20](a2);
  v12 = 0;
  v13 = 0;
  if (a1)
  {
    v4 = a1 + 2 * a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5760, &qword_1B0ED6C38);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B0C16CB0;
  *(v6 + 24) = v5;
  v11 = v6;

  v7 = v14;
  while (1)
  {
    v8 = sub_1B0C13310(&v11);
    if ((v8 & 0x100000000) != 0)
    {
      break;
    }

    sub_1B0E44C58();
  }

  if (v8)
  {

    sub_1B0C16BB4();
    swift_allocError();
    *v9 = 4;
    *(v9 + 8) = 2;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1B0C16128@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v11 = 0;
      goto LABEL_21;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 >= 32)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 32)
      {
        goto LABEL_14;
      }

LABEL_8:
      if (v6 == 2)
      {
        v19 = *(result + 16);
        v18 = *(result + 24);
        v11 = v18 - v19;
        if (!__OFSUB__(v18, v19))
        {
          goto LABEL_21;
        }

        __break(1u);
      }

      else if (v6 == 1)
      {
        if (!__OFSUB__(HIDWORD(result), result))
        {
          v11 = HIDWORD(result) - result;
LABEL_21:
          sub_1B0C16BB4();
          swift_allocError();
          *v20 = v11;
          *(v20 + 8) = 0;
          swift_willThrow();
          return sub_1B0391D50(v5, a2);
        }

LABEL_25:
        __break(1u);
        return result;
      }

      v11 = BYTE6(a2);
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) < 0x20uLL)
  {
    goto LABEL_8;
  }

LABEL_14:
  sub_1B0C1484C(result, a2, &v21);
  result = sub_1B0391D50(v5, a2);
  if (!v3)
  {
    v13 = v22;
    v14 = v23;
    v15 = v24;
    v16 = v25;
    v17 = v26;
    *a3 = v21;
    *(a3 + 8) = v13;
    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
    *(a3 + 40) = v16;
    *(a3 + 44) = v17;
  }

  return result;
}

uint64_t sub_1B0C16290(uint64_t result)
{
  if (result >= 0xAu)
  {
    return 10;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1B0C162A4(uint64_t result)
{
  v2 = *result;
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = v4 - v3;
  v6 = v3 == 0;
  if (v3)
  {
    v7 = v4 - v3;
  }

  else
  {
    v7 = 0;
  }

  if ((v2 & 0x8000000000000000) == 0 && v7 >= v2)
  {
    v8 = result;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8;
      v11 = v8[1];
      if ((v11 & 0x8000000000000000) != 0 || v7 < v11)
      {
        goto LABEL_120;
      }

      if ((v11 - v2) < 4)
      {

        sub_1B0C16C5C();
        goto LABEL_115;
      }

      v63 = v9;
      v12 = sub_1B0C11504(0, v2, v11, v3, v4);
      if (v1)
      {

        return v9;
      }

      v13 = v12;
      result = sub_1B0C11504(2, v2, v11, v3, v4);
      if (!(v13 | result))
      {
        return v63;
      }

      if (v6)
      {
        if (v2)
        {
          goto LABEL_135;
        }

        v14 = 0;
      }

      else
      {
        v14 = v5;
        if (v5 < v2)
        {
          goto LABEL_134;
        }
      }

      if (v14 < v11)
      {
        goto LABEL_121;
      }

      v15 = v6;
      v16 = v2 + 4;
      if (__OFADD__(v2, 4))
      {
        goto LABEL_122;
      }

      if ((v16 & 0x8000000000000000) != 0 || v7 < v16)
      {
        goto LABEL_123;
      }

      if (v11 < v16)
      {
        goto LABEL_124;
      }

      if (v16 < v2)
      {
        goto LABEL_125;
      }

      *v10 = v16;
      v10[1] = v11;
      v10[2] = v3;
      v10[3] = v4;
      if (v15)
      {
        goto LABEL_136;
      }

      if (v5 < v16)
      {
        goto LABEL_126;
      }

      if (v5 < v11)
      {
        goto LABEL_127;
      }

      if ((v11 - v16) < result)
      {
        v9 = v63;

        sub_1B0C16C08();
LABEL_115:
        swift_allocError();
        swift_willThrow();
        return v9;
      }

      v17 = v16 + result;
      if (__OFADD__(v16, result))
      {
        goto LABEL_128;
      }

      if ((v17 & 0x8000000000000000) != 0 || v5 < v17)
      {
        goto LABEL_129;
      }

      v18 = result;
      if (v17 < v16)
      {
        goto LABEL_130;
      }

      if (v11 < v17)
      {
        goto LABEL_131;
      }

      if (!result)
      {
        v17 = v16;
      }

      if (v5 < v17)
      {
        goto LABEL_132;
      }

      if (v11 < v17)
      {
        goto LABEL_119;
      }

      if (v17 < v16)
      {
        goto LABEL_133;
      }

      v8 = v10;
      *v10 = v17;
      v10[2] = v3;
      v10[3] = v4;
      result = sub_1B0C16290(v13);
      if (result > 4u)
      {
        break;
      }

      v1 = 0;
      v9 = v63;
      if (result <= 1u)
      {
        if (result)
        {
          if (v18)
          {
            goto LABEL_116;
          }

          v34 = sub_1B0C15FC4(v3 + v16, v18 >> 1);
          v36 = v35;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
            v9 = result;
          }

          v38 = *(v9 + 16);
          v37 = *(v9 + 24);
          if (v38 >= v37 >> 1)
          {
            result = sub_1B0C0C8D4((v37 > 1), v38 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 16) = v38 + 1;
          v39 = v9 + 24 * v38;
          *(v39 + 32) = v34;
          *(v39 + 40) = v36;
          *(v39 + 48) = 0;
        }
      }

      else
      {
        if (result == 2)
        {
          if (v18)
          {
            goto LABEL_116;
          }

          v40 = sub_1B0C15FC4(v3 + v16, v18 >> 1);
          v42 = v41;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
            v9 = result;
          }

          v44 = *(v9 + 16);
          v43 = *(v9 + 24);
          if (v44 >= v43 >> 1)
          {
            result = sub_1B0C0C8D4((v43 > 1), v44 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 16) = v44 + 1;
          v21 = v9 + 24 * v44;
          *(v21 + 32) = v40;
          *(v21 + 40) = v42;
          v33 = 1;
          goto LABEL_104;
        }

        if (result != 3)
        {
          if (v18)
          {
LABEL_116:
            sub_1B0C16BB4();
            swift_allocError();
            *v62 = v18;
            *(v62 + 8) = 1;
            swift_willThrow();

            return v9;
          }

          v53 = sub_1B0C15FC4(v3 + v16, v18 >> 1);
          v55 = v54;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
            v9 = result;
          }

          v57 = *(v9 + 16);
          v56 = *(v9 + 24);
          if (v57 >= v56 >> 1)
          {
            result = sub_1B0C0C8D4((v56 > 1), v57 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 16) = v57 + 1;
          v21 = v9 + 24 * v57;
          *(v21 + 32) = v53;
          *(v21 + 40) = v55;
          v33 = 3;
          goto LABEL_104;
        }

        if (v18)
        {
          goto LABEL_116;
        }

        v22 = sub_1B0C15FC4(v3 + v16, v18 >> 1);
        v24 = v23;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
          v9 = result;
        }

        v26 = *(v9 + 16);
        v25 = *(v9 + 24);
        if (v26 >= v25 >> 1)
        {
          result = sub_1B0C0C8D4((v25 > 1), v26 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 16) = v26 + 1;
        v27 = v9 + 24 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        *(v27 + 48) = 2;
      }

LABEL_105:
      v2 = *v8;
      v3 = v8[2];
      v4 = v8[3];
      v5 = v4 - v3;
      v6 = v3 == 0;
      if (v3)
      {
        v7 = v4 - v3;
      }

      else
      {
        v7 = 0;
      }

      if (v2 < 0 || v7 < v2)
      {
        goto LABEL_118;
      }
    }

    v1 = 0;
    v9 = v63;
    if (result > 7u)
    {
      if (result == 8)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
          v9 = result;
        }

        v51 = *(v9 + 16);
        v50 = *(v9 + 24);
        v1 = 0;
        if (v51 >= v50 >> 1)
        {
          result = sub_1B0C0C8D4((v50 > 1), v51 + 1, 1, v9);
          v1 = 0;
          v9 = result;
        }

        *(v9 + 16) = v51 + 1;
        v21 = v9 + 24 * v51;
        v52 = xmmword_1B0ED69B0;
      }

      else
      {
        if (result == 9)
        {
          if (v18)
          {
            goto LABEL_116;
          }

          v28 = sub_1B0C15FC4(v3 + v16, v18 >> 1);
          v30 = v29;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
            v9 = result;
          }

          v32 = *(v9 + 16);
          v31 = *(v9 + 24);
          if (v32 >= v31 >> 1)
          {
            result = sub_1B0C0C8D4((v31 > 1), v32 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 16) = v32 + 1;
          v21 = v9 + 24 * v32;
          *(v21 + 32) = v28;
          *(v21 + 40) = v30;
          v33 = 5;
          goto LABEL_104;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
          v9 = result;
        }

        v61 = *(v9 + 16);
        v60 = *(v9 + 24);
        v1 = 0;
        if (v61 >= v60 >> 1)
        {
          result = sub_1B0C0C8D4((v60 > 1), v61 + 1, 1, v9);
          v1 = 0;
          v9 = result;
        }

        *(v9 + 16) = v61 + 1;
        v21 = v9 + 24 * v61;
        v52 = xmmword_1B0ED69C0;
      }
    }

    else
    {
      if (result == 5)
      {
        if (v18)
        {
          goto LABEL_116;
        }

        v45 = sub_1B0C15FC4(v3 + v16, v18 >> 1);
        v47 = v46;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
          v9 = result;
        }

        v49 = *(v9 + 16);
        v48 = *(v9 + 24);
        if (v49 >= v48 >> 1)
        {
          result = sub_1B0C0C8D4((v48 > 1), v49 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 16) = v49 + 1;
        v21 = v9 + 24 * v49;
        *(v21 + 32) = v45;
        *(v21 + 40) = v47;
        v33 = 4;
        goto LABEL_104;
      }

      if (result == 6)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
          v9 = result;
        }

        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        v1 = 0;
        if (v20 >= v19 >> 1)
        {
          result = sub_1B0C0C8D4((v19 > 1), v20 + 1, 1, v9);
          v1 = 0;
          v9 = result;
        }

        *(v9 + 16) = v20 + 1;
        v21 = v9 + 24 * v20;
        *(v21 + 32) = 0;
        *(v21 + 40) = 0;
        goto LABEL_103;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
        v9 = result;
      }

      v59 = *(v9 + 16);
      v58 = *(v9 + 24);
      v1 = 0;
      if (v59 >= v58 >> 1)
      {
        result = sub_1B0C0C8D4((v58 > 1), v59 + 1, 1, v9);
        v1 = 0;
        v9 = result;
      }

      *(v9 + 16) = v59 + 1;
      v21 = v9 + 24 * v59;
      v52 = xmmword_1B0ECE570;
    }

    *(v21 + 32) = v52;
LABEL_103:
    v33 = 6;
LABEL_104:
    *(v21 + 48) = v33;
    goto LABEL_105;
  }

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
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

unint64_t sub_1B0C16BB4()
{
  result = qword_1EB6E5748;
  if (!qword_1EB6E5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5748);
  }

  return result;
}

unint64_t sub_1B0C16C08()
{
  result = qword_1EB6E5750;
  if (!qword_1EB6E5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5750);
  }

  return result;
}

unint64_t sub_1B0C16C5C()
{
  result = qword_1EB6E5758;
  if (!qword_1EB6E5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5758);
  }

  return result;
}

unint64_t sub_1B0C16CB8()
{
  result = qword_1EB6E5768;
  if (!qword_1EB6E5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5768);
  }

  return result;
}

unint64_t sub_1B0C16D0C()
{
  result = qword_1EB6E5778;
  if (!qword_1EB6E5778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5770, &qword_1B0ED6C40);
    sub_1B0C16D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5778);
  }

  return result;
}

unint64_t sub_1B0C16D90()
{
  result = qword_1EB6DB880;
  if (!qword_1EB6DB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB880);
  }

  return result;
}

unint64_t sub_1B0C16DE4()
{
  result = qword_1EB6E5780;
  if (!qword_1EB6E5780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5780);
  }

  return result;
}

unint64_t sub_1B0C16E48()
{
  result = qword_1EB6E57A0;
  if (!qword_1EB6E57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57A0);
  }

  return result;
}

uint64_t sub_1B0C16E9C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0C16EB4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B0C16F18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_1B0C16F60(uint64_t result, int a2, int a3)
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
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy77_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0C16FE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 77))
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

uint64_t sub_1B0C1702C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 77) = 1;
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

    *(result + 77) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO4NTLMV16ChallengeMessageV6TargetO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO4NTLMV16ChallengeMessageV6TargetOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C170D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_1B0C1711C(uint64_t result, int a2, int a3)
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
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO4NTLMV16ChallengeMessageV17TargetInformationO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1B0C17198(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C171E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0C17224(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1B0C1727C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 45))
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

uint64_t sub_1B0C172C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0C17348()
{
  result = qword_1EB6E57A8;
  if (!qword_1EB6E57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57A8);
  }

  return result;
}

uint64_t _s5StateOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t _s5StateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0C17468(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

int *sub_1B0C174B8(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *a2;
  v6 = *a3;
  v8 = *a5;
  v72 = *a4;
  v7 = *a4;
  v73 = *result;
  HIDWORD(v10) = *a5 + *result + (*a3 & *a2 | *a4 & ~*a2);
  LODWORD(v10) = HIDWORD(v10);
  v9 = v10 >> 29;
  *result = v9;
  v11 = a5[1];
  HIDWORD(v10) = v11 + v7 + (v5 & v9 | v6 & ~v9);
  LODWORD(v10) = HIDWORD(v10);
  v12 = v10 >> 25;
  *a4 = v12;
  v13 = a5[2];
  HIDWORD(v10) = v13 + v6 + (v9 & v12 | v5 & ~v12);
  LODWORD(v10) = HIDWORD(v10);
  v14 = v10 >> 21;
  *a3 = v14;
  v15 = a5[3];
  HIDWORD(v10) = v15 + v5 + (v12 & v14 | v9 & ~v14);
  LODWORD(v10) = HIDWORD(v10);
  v16 = v10 >> 13;
  *a2 = v16;
  v17 = a5[4];
  HIDWORD(v10) = v17 + v9 + (v14 & v16 | v12 & ~v16);
  LODWORD(v10) = HIDWORD(v10);
  v18 = v10 >> 29;
  *result = v18;
  v19 = a5[5];
  HIDWORD(v10) = v12 + v19 + (v16 & v18 | v14 & ~v18);
  LODWORD(v10) = HIDWORD(v10);
  v20 = v10 >> 25;
  *a4 = v20;
  v21 = a5[6];
  HIDWORD(v10) = v14 + v21 + (v18 & v20 | v16 & ~v20);
  LODWORD(v10) = HIDWORD(v10);
  v22 = v10 >> 21;
  *a3 = v22;
  v23 = a5[7];
  HIDWORD(v10) = v16 + v23 + (v20 & v22 | v18 & ~v22);
  LODWORD(v10) = HIDWORD(v10);
  v24 = v10 >> 13;
  *a2 = v24;
  v25 = a5[8];
  HIDWORD(v10) = v18 + v25 + (v22 & v24 | v20 & ~v24);
  LODWORD(v10) = HIDWORD(v10);
  v26 = v10 >> 29;
  *result = v26;
  v27 = a5[9];
  HIDWORD(v10) = v20 + v27 + (v24 & v26 | v22 & ~v26);
  LODWORD(v10) = HIDWORD(v10);
  v28 = v10 >> 25;
  *a4 = v28;
  v29 = a5[10];
  HIDWORD(v10) = v22 + v29 + (v26 & v28 | v24 & ~v28);
  LODWORD(v10) = HIDWORD(v10);
  v30 = v10 >> 21;
  *a3 = v30;
  v31 = a5[11];
  HIDWORD(v10) = v24 + v31 + (v28 & v30 | v26 & ~v30);
  LODWORD(v10) = HIDWORD(v10);
  v32 = v10 >> 13;
  *a2 = v32;
  v33 = a5[12];
  HIDWORD(v10) = v26 + v33 + (v30 & v32 | v28 & ~v32);
  LODWORD(v10) = HIDWORD(v10);
  v34 = v10 >> 29;
  *result = v34;
  v35 = a5[13];
  HIDWORD(v10) = v28 + v35 + (v32 & v34 | v30 & ~v34);
  LODWORD(v10) = HIDWORD(v10);
  v36 = v10 >> 25;
  *a4 = v36;
  v37 = a5[14];
  HIDWORD(v10) = v30 + v37 + (v34 & v36 | v32 & ~v36);
  LODWORD(v10) = HIDWORD(v10);
  v38 = v10 >> 21;
  *a3 = v38;
  v39 = a5[15];
  HIDWORD(v10) = v32 + v39 + (v38 & v36 | v34 & ~v38);
  LODWORD(v10) = HIDWORD(v10);
  v40 = v10 >> 13;
  HIDWORD(v10) = v8 + v34 + 1518500249 + (v40 & (v38 | v36) | v38 & v36);
  LODWORD(v10) = HIDWORD(v10);
  v41 = v10 >> 29;
  HIDWORD(v10) = v17 + v36 + 1518500249 + (v41 & (v40 | v38) | v40 & v38);
  LODWORD(v10) = HIDWORD(v10);
  v42 = v10 >> 27;
  HIDWORD(v10) = v25 + v38 + 1518500249 + (v42 & (v41 | v40) | v41 & v40);
  LODWORD(v10) = HIDWORD(v10);
  v43 = v10 >> 23;
  HIDWORD(v10) = v33 + v40 + 1518500249 + (v43 & (v42 | v41) | v42 & v41);
  LODWORD(v10) = HIDWORD(v10);
  v44 = v10 >> 19;
  HIDWORD(v10) = v11 + v41 + 1518500249 + (v44 & (v43 | v42) | v43 & v42);
  LODWORD(v10) = HIDWORD(v10);
  v45 = v10 >> 29;
  HIDWORD(v10) = v19 + v42 + 1518500249 + (v45 & (v44 | v43) | v44 & v43);
  LODWORD(v10) = HIDWORD(v10);
  v46 = v10 >> 27;
  HIDWORD(v10) = v27 + v43 + 1518500249 + (v46 & (v45 | v44) | v45 & v44);
  LODWORD(v10) = HIDWORD(v10);
  v47 = v10 >> 23;
  HIDWORD(v10) = v35 + v44 + 1518500249 + (v47 & (v46 | v45) | v46 & v45);
  LODWORD(v10) = HIDWORD(v10);
  v48 = v10 >> 19;
  HIDWORD(v10) = v13 + v45 + 1518500249 + (v48 & (v47 | v46) | v47 & v46);
  LODWORD(v10) = HIDWORD(v10);
  v49 = v10 >> 29;
  HIDWORD(v10) = v21 + v46 + 1518500249 + (v49 & (v48 | v47) | v48 & v47);
  LODWORD(v10) = HIDWORD(v10);
  v50 = v10 >> 27;
  HIDWORD(v10) = v29 + v47 + 1518500249 + (v50 & (v49 | v48) | v49 & v48);
  LODWORD(v10) = HIDWORD(v10);
  v51 = v10 >> 23;
  HIDWORD(v10) = v37 + v48 + 1518500249 + (v51 & (v50 | v49) | v50 & v49);
  LODWORD(v10) = HIDWORD(v10);
  v52 = v10 >> 19;
  HIDWORD(v10) = v15 + v49 + 1518500249 + (v52 & (v51 | v50) | v51 & v50);
  LODWORD(v10) = HIDWORD(v10);
  v53 = v10 >> 29;
  HIDWORD(v10) = v23 + v50 + 1518500249 + (v53 & (v52 | v51) | v52 & v51);
  LODWORD(v10) = HIDWORD(v10);
  v54 = v10 >> 27;
  HIDWORD(v10) = v31 + v51 + 1518500249 + (v54 & (v53 | v52) | v53 & v52);
  LODWORD(v10) = HIDWORD(v10);
  v55 = v10 >> 23;
  HIDWORD(v10) = v39 + v52 + 1518500249 + (v55 & (v54 | v53) | v54 & v53);
  LODWORD(v10) = HIDWORD(v10);
  v56 = v10 >> 19;
  HIDWORD(v10) = v8 + v53 + 1859775393 + (v56 ^ v55 ^ v54);
  LODWORD(v10) = HIDWORD(v10);
  v57 = v10 >> 29;
  HIDWORD(v10) = v25 + v54 + 1859775393 + (v56 ^ v55 ^ v57);
  LODWORD(v10) = HIDWORD(v10);
  v58 = v10 >> 23;
  HIDWORD(v10) = v17 + v55 + 1859775393 + (v57 ^ v56 ^ v58);
  LODWORD(v10) = HIDWORD(v10);
  v59 = v10 >> 21;
  HIDWORD(v10) = v33 + v56 + 1859775393 + (v58 ^ v57 ^ v59);
  LODWORD(v10) = HIDWORD(v10);
  v60 = v10 >> 17;
  HIDWORD(v10) = v13 + v57 + 1859775393 + (v59 ^ v58 ^ v60);
  LODWORD(v10) = HIDWORD(v10);
  v61 = v10 >> 29;
  HIDWORD(v10) = v29 + v58 + 1859775393 + (v60 ^ v59 ^ v61);
  LODWORD(v10) = HIDWORD(v10);
  v62 = v10 >> 23;
  HIDWORD(v10) = v21 + v59 + 1859775393 + (v61 ^ v60 ^ v62);
  LODWORD(v10) = HIDWORD(v10);
  v63 = v10 >> 21;
  HIDWORD(v10) = v37 + v60 + 1859775393 + (v62 ^ v61 ^ v63);
  LODWORD(v10) = HIDWORD(v10);
  v64 = v10 >> 17;
  HIDWORD(v10) = v11 + v61 + 1859775393 + (v63 ^ v62 ^ v64);
  LODWORD(v10) = HIDWORD(v10);
  v65 = v10 >> 29;
  HIDWORD(v10) = v27 + v62 + 1859775393 + (v64 ^ v63 ^ v65);
  LODWORD(v10) = HIDWORD(v10);
  v66 = v10 >> 23;
  HIDWORD(v10) = v19 + v63 + 1859775393 + (v65 ^ v64 ^ v66);
  LODWORD(v10) = HIDWORD(v10);
  v67 = v10 >> 21;
  HIDWORD(v10) = v35 + v64 + 1859775393 + (v66 ^ v65 ^ v67);
  LODWORD(v10) = HIDWORD(v10);
  v68 = v10 >> 17;
  HIDWORD(v10) = v15 + v65 + 1859775393 + (v67 ^ v66 ^ v68);
  LODWORD(v10) = HIDWORD(v10);
  v69 = v10 >> 29;
  HIDWORD(v10) = v31 + v66 + 1859775393 + (v68 ^ v67 ^ v69);
  LODWORD(v10) = HIDWORD(v10);
  v70 = v10 >> 23;
  HIDWORD(v10) = v23 + v67 + 1859775393 + (v69 ^ v68 ^ v70);
  LODWORD(v10) = HIDWORD(v10);
  v71 = v10 >> 21;
  HIDWORD(v10) = v39 + v68 + 1859775393 + (v70 ^ v69 ^ v71);
  LODWORD(v10) = HIDWORD(v10);
  *result = v69 + v73;
  *a2 = (v10 >> 17) + v5;
  *a3 = v71 + v6;
  *a4 = v70 + v72;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO4NTLMV5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy172_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1B0C17B0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 172))
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

uint64_t sub_1B0C17B54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 172) = 1;
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

    *(result + 172) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C17BD0()
{
  v2 = (v0 + 120);
  v3 = *(v0 + 120);
  v4 = *(v0 + 144);
  if ((v4 - 1) < 2)
  {
    return 0;
  }

  v6 = (v0 + 152);
  v7 = *(v0 + 152);
  if (v4)
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 168);
    v11 = *(v0 + 160);
    v12 = *(v0 + 136);
    *v2 = 0;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0;
    *(v0 + 144) = 2;
    *v6 = 0;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0;
    sub_1B0C154B8(*(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32), v4, v7, v11, v10, &v16, *v0);
    sub_1B0BD1280(v3, v9, v12);

    if (v1)
    {
    }

    else
    {

      v14[0] = v18;
      v14[1] = v17;
      v14[2] = v16;
      *v15 = 0;
      *&v15[8] = 0xE000000000000000;
      *&v15[16] = 0;
      *&v15[24] = v19 & 0x80201;
      v15[28] = 0;
      v27 = v16;
      v28[0] = *v15;
      v25 = v18;
      v26 = v17;
      *(v28 + 13) = *&v15[13];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v13 = sub_1B0C11ACC();
      sub_1B0BD12AC(v14);
      sub_1B0BD1300(&v16);
      return v13;
    }
  }

  else
  {
    *v2 = 0;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0;
    *(v0 + 144) = 1;
    *v6 = 0;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0;
    v8 = *v0;
    v20 = 0;
    v21 = 0xE000000000000000;
    v22 = 0;
    v23 = 0xE000000000000000;
    v24 = (v8 & 1) == 0;
    return sub_1B0C10BEC();
  }
}

uint64_t sub_1B0C17DC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v107 = a3;
  v7 = _s6LoggerVMa_0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v99 - v11;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v99 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v99 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v99 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v29 = &v99 - v28;
  v106 = v3;
  if (*(v3 + 144) == 1)
  {
    v102 = v26;
    v103 = v27;
    v104 = v25;
    v105 = v24;
    sub_1B03B2000(a1, a2);
    result = sub_1B0C16128(a1, a2, &v109);
    if (!v4)
    {
      v31 = v107;
      sub_1B041C97C(v107, v29);
      sub_1B041C97C(v31, v22);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0C18A20(&v109, v108);
      v32 = sub_1B0E43988();
      v33 = sub_1B0E458C8();
      sub_1B0C18A7C(&v109);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v100 = v32;
        v35 = v34;
        v101 = swift_slowAlloc();
        v108[0] = v101;
        *v35 = 68158722;
        *(v35 + 4) = 2;
        *(v35 + 8) = 256;
        v36 = v105;
        v37 = *(v105 + 20);
        v116 = v33;
        v38 = v22[v37];
        sub_1B041C9E0(v22);
        *(v35 + 10) = v38;
        *(v35 + 11) = 2082;
        v39 = *&v29[*(v36 + 20) + 4];
        sub_1B041C9E0(v29);
        v40 = ConnectionID.debugDescription.getter(v39);
        v42 = sub_1B0399D64(v40, v41, v108);

        *(v35 + 13) = v42;
        *(v35 + 21) = 2080;
        v44 = v111;
        v43 = v112;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v45 = sub_1B0399D64(v44, v43, v108);

        *(v35 + 23) = v45;
        *(v35 + 31) = 2082;
        v117 = v109;
        v46 = sub_1B0E44BA8();
        v48 = sub_1B0399D64(v46, v47, v108);

        *(v35 + 33) = v48;
        v49 = v100;
        _os_log_impl(&dword_1B0389000, v100, v116, "[%.*hhx-%{public}s] NTLM: Received challenge with target: '%s', flags: {%{public}s}", v35, 0x29u);
        v50 = v101;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v50, -1, -1);
        MEMORY[0x1B272C230](v35, -1, -1);

        if (v115)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1B041C9E0(v22);

        sub_1B041C9E0(v29);
        if (v115)
        {
          goto LABEL_12;
        }
      }

      v51 = v114;
      v52 = v107;
      sub_1B041C97C(v107, v19);
      sub_1B041C97C(v52, v16);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v53 = sub_1B0E43988();
      v54 = sub_1B0E458C8();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v108[0] = v101;
        *v55 = 68158978;
        *(v55 + 4) = 2;
        *(v55 + 8) = 256;
        v56 = v105;
        v57 = *(v105 + 20);
        LODWORD(v100) = v54;
        v58 = v16[v57];
        sub_1B041C9E0(v16);
        *(v55 + 10) = v58;
        *(v55 + 11) = 2082;
        v59 = *&v19[*(v56 + 20) + 4];
        sub_1B041C9E0(v19);
        v60 = ConnectionID.debugDescription.getter(v59);
        v62 = sub_1B0399D64(v60, v61, v108);

        *(v55 + 13) = v62;
        *(v55 + 21) = 256;
        *(v55 + 23) = v51;
        *(v55 + 24) = 256;
        *(v55 + 26) = BYTE1(v51);
        *(v55 + 27) = 512;
        *(v55 + 29) = HIWORD(v51);
        _os_log_impl(&dword_1B0389000, v53, v100, "[%.*hhx-%{public}s] NTLM: Received challenge with OS version %hhu.%hhu.%hu", v55, 0x1Fu);
        v63 = v101;
        __swift_destroy_boxed_opaque_existential_0(v101);
        MEMORY[0x1B272C230](v63, -1, -1);
        MEMORY[0x1B272C230](v55, -1, -1);
      }

      else
      {
        sub_1B041C9E0(v16);

        sub_1B041C9E0(v19);
      }

LABEL_12:
      v64 = v109;
      v65 = v103;
      if ((v109 & 0x200) == 0)
      {
        v66 = v104;
        if ((v109 & 0x80000) == 0)
        {
          goto LABEL_14;
        }

LABEL_20:
        v82 = v107;
        sub_1B041C97C(v107, v66);
        v83 = v102;
        sub_1B041C97C(v82, v102);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v84 = sub_1B0E43988();
        v85 = sub_1B0E45908();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          LODWORD(v101) = v64;
          v88 = v87;
          v108[0] = v87;
          *v86 = 68158210;
          *(v86 + 4) = 2;
          *(v86 + 8) = 256;
          v89 = v105;
          v90 = *(v83 + *(v105 + 20));
          sub_1B041C9E0(v83);
          *(v86 + 10) = v90;
          *(v86 + 11) = 2082;
          v91 = *(v66 + *(v89 + 20) + 4);
          sub_1B041C9E0(v66);
          v92 = ConnectionID.debugDescription.getter(v91);
          v94 = sub_1B0399D64(v92, v93, v108);

          *(v86 + 13) = v94;
          _os_log_impl(&dword_1B0389000, v84, v85, "[%.*hhx-%{public}s] NTLM: NTLM2 Session Response flag set", v86, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v88);
          v95 = v88;
          v64 = v101;
          MEMORY[0x1B272C230](v95, -1, -1);
          MEMORY[0x1B272C230](v86, -1, -1);

          v67 = v113;
          if (v113)
          {
            goto LABEL_15;
          }
        }

        else
        {
          sub_1B041C9E0(v83);

          sub_1B041C9E0(v66);
          v67 = v113;
          if (v113)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_24;
      }

      v69 = v107;
      sub_1B041C97C(v107, v103);
      sub_1B041C97C(v69, v12);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v70 = sub_1B0E43988();
      v71 = sub_1B0E458C8();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        LODWORD(v101) = v64;
        v74 = v73;
        v108[0] = v73;
        *v72 = 68158210;
        *(v72 + 4) = 2;
        *(v72 + 8) = 256;
        v75 = v105;
        v76 = v12[*(v105 + 20)];
        sub_1B041C9E0(v12);
        *(v72 + 10) = v76;
        *(v72 + 11) = 2082;
        v77 = *(v65 + *(v75 + 20) + 4);
        sub_1B041C9E0(v65);
        v78 = ConnectionID.debugDescription.getter(v77);
        v80 = sub_1B0399D64(v78, v79, v108);

        *(v72 + 13) = v80;
        _os_log_impl(&dword_1B0389000, v70, v71, "[%.*hhx-%{public}s] NTLM: NTLM Authentication flag set", v72, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v74);
        v81 = v74;
        v64 = v101;
        MEMORY[0x1B272C230](v81, -1, -1);
        MEMORY[0x1B272C230](v72, -1, -1);

        v66 = v104;
        if ((v64 & 0x80000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1B041C9E0(v12);

        sub_1B041C9E0(v65);
        v66 = v104;
        if ((v64 & 0x80000) != 0)
        {
          goto LABEL_20;
        }
      }

LABEL_14:
      v67 = v113;
      if (v113)
      {
LABEL_15:
        v68 = *(v67 + 16);
        v108[0] = 0;
        v108[1] = v68;
        v108[2] = v67 + 32;
        v108[3] = v67 + 32 + v68;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v96 = sub_1B0C162A4(v108);

LABEL_25:
        v97 = v110;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = sub_1B0C18A7C(&v109);
        v98 = v106;
        *(v106 + 120) = 0;
        *(v98 + 128) = 0;
        *(v98 + 136) = 255;
        *(v98 + 144) = v96;
        *(v98 + 152) = v67;
        *(v98 + 160) = v97;
        *(v98 + 168) = v64;
        return result;
      }

LABEL_24:
      v96 = MEMORY[0x1E69E7CC0];
      goto LABEL_25;
    }
  }

  else
  {
    sub_1B0C18828();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

BOOL sub_1B0C1869C(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 3);
  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 2)
      {
        v5 = *a2;
        v6 = *(a2 + 2);
        v7 = *(a2 + 4);
        v8 = *(a2 + 5);
        v9 = *(a2 + 12);
        v10 = *(a1 + 12);
        v12 = *(a1 + 4);
        v11 = *(a1 + 5);
        v13 = *(a1 + 2);
        v15 = *a1;
        v16 = v13;
        v17 = v2;
        v18 = v12;
        v19 = v11;
        v20 = v10;
        if (v3 >= 3)
        {
          v21 = v5;
          v22 = v6;
          v23 = v3;
          v24 = v7;
          v25 = v8;
          v26 = v9;
          return sub_1B0C14F44(&v15, &v21);
        }

        return 0;
      }

      if (v3 != 2)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  return 1;
}

BOOL sub_1B0C18760(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v14[0] = v2;
  *(v14 + 12) = *(a1 + 156);
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
  v15[8] = a2[8];
  v16[0] = v7;
  *(v16 + 12) = *(a2 + 156);
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return sub_1B0C1887C(v13, v15);
}

unint64_t sub_1B0C18828()
{
  result = qword_1EB6E57B0;
  if (!qword_1EB6E57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57B0);
  }

  return result;
}

BOOL sub_1B0C1887C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v33 = v2;
  v34 = v3;
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  v11 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v11 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v12 = v7 == v9 && v8 == v10;
  if (!v12 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 88);
  v22[2] = *(a1 + 72);
  v22[3] = v14;
  v22[4] = *(a1 + 104);
  v22[0] = *(a1 + 40);
  v22[1] = v13;
  v15 = *(a2 + 56);
  v16 = *(a2 + 88);
  v21[2] = *(a2 + 72);
  v21[3] = v16;
  v21[4] = *(a2 + 104);
  v21[0] = *(a2 + 40);
  v21[1] = v15;
  if ((sub_1B0C0FEBC(v22, v21) & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 18);
  v18 = *(a2 + 18);
  if (v17 == 2)
  {
    return v18 == 2;
  }

  if (v17 == 1)
  {
    return v18 == 1;
  }

  if (v17)
  {
    v23 = *(a1 + 120);
    v19 = *(a1 + 17);
    v26 = *(a1 + 152);
    v27 = *(a1 + 42);
    v24 = v19;
    v25 = v17;
    if (v18 >= 3)
    {
      v28 = *(a2 + 120);
      v20 = *(a2 + 17);
      v31 = *(a2 + 152);
      v32 = *(a2 + 42);
      v29 = v20;
      v30 = v18;
      if (sub_1B0C14F44(&v23, &v28))
      {
        return 1;
      }
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B0C18AE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 52))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C18B3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_1B0C18B98(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void sub_1B0C18BDC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v80 = _s6LoggerVMa_0();
  v6 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v76 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v76 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v76 - v19;
  v21 = a2 >> 62;
  v82 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v21)
    {
      goto LABEL_8;
    }

    LODWORD(v22) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v22 = v22;
      goto LABEL_7;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v21 != 2)
  {
    goto LABEL_8;
  }

  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  v25 = __OFSUB__(v23, v24);
  v22 = v23 - v24;
  if (v25)
  {
    goto LABEL_47;
  }

LABEL_7:
  if (v22 > 499)
  {
    if (v21 > 1)
    {
      if (v21 != 2)
      {
LABEL_34:
        MEMORY[0x1EEE9AC00](v18);
        *(&v76 - 2) = v61;
        sub_1B0BB5F90(sub_1B0C19D3C, (&v76 - 4), a1, a2);
        return;
      }

      v60 = *(a1 + 16);
      v59 = *(a1 + 24);
      v25 = __OFSUB__(v59, v60);
      v58 = v59 - v60;
      if (!v25)
      {
        goto LABEL_33;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    LODWORD(v58) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v58 = v58;
LABEL_33:
      if (v58 <= 4999)
      {
        goto LABEL_34;
      }

      sub_1B041C97C(a3, v13);
      sub_1B041C97C(a3, v10);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B2000(a1, a2);
      sub_1B03B2000(a1, a2);
      v20 = v10;
      v62 = sub_1B0E43988();
      v63 = sub_1B0E458E8();
      if (!os_log_type_enabled(v62, v63))
      {
        sub_1B0391D50(a1, a2);
        sub_1B041C9E0(v20);
        sub_1B0391D50(a1, a2);

        v75 = v13;
        goto LABEL_42;
      }

      v64 = v13;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = v80;
      v16 = v66;
      v83[0] = v66;
      *v65 = 68158466;
      *(v65 + 4) = 2;
      *(v65 + 8) = 256;
      v68 = v20[*(v67 + 20)];
      sub_1B041C9E0(v20);
      *(v65 + 10) = v68;
      *(v65 + 11) = 2082;
      v69 = *(v64 + *(v67 + 20) + 4);
      sub_1B041C9E0(v64);
      v70 = ConnectionID.debugDescription.getter(v69);
      v72 = sub_1B0399D64(v70, v71, v83);

      *(v65 + 13) = v72;
      *(v65 + 21) = 2048;
      if (v82 == 2)
      {
        v73 = *(a1 + 16);
        v36 = *(a1 + 24);
        sub_1B0391D50(a1, a2);
        v74 = v36 - v73;
        if (__OFSUB__(v36, v73))
        {
          __break(1u);
          goto LABEL_40;
        }

LABEL_45:
        *(v65 + 23) = v74;
        sub_1B0391D50(a1, a2);
        _os_log_impl(&dword_1B0389000, v62, v63, "[%.*hhx-%{public}s] XOAUTH2 error (%{iec-bytes}ld)", v65, 0x1Fu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x1B272C230](v16, -1, -1);
        MEMORY[0x1B272C230](v65, -1, -1);

        return;
      }

      sub_1B0391D50(a1, a2);
      LODWORD(v74) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v74 = v74;
        goto LABEL_45;
      }

LABEL_50:
      __break(1u);
      return;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_8:
  v78 = v10;
  v79 = v13;
  v26 = sub_1B0E428A8();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_1B0E42898();
  sub_1B0C19D58();
  v81 = v29;
  sub_1B0E42878();
  v31 = v83[0];
  v30 = v83[1];
  v33 = v83[2];
  v32 = v83[3];
  v35 = v83[4];
  v34 = v83[5];
  sub_1B041C97C(a3, v20);
  sub_1B041C97C(a3, v16);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = sub_1B0E43988();
  v37 = sub_1B0E458E8();

  if (!os_log_type_enabled(v36, v37))
  {
LABEL_40:
    sub_1B041C9E0(v16);

    v75 = v20;
LABEL_42:
    sub_1B041C9E0(v75);
    return;
  }

  v38 = swift_slowAlloc();
  v77 = v31;
  v39 = v80;
  v79 = v35;
  v40 = v38;
  v82 = swift_slowAlloc();
  v83[0] = v82;
  *v40 = 68158978;
  *(v40 + 4) = 2;
  *(v40 + 8) = 256;
  v41 = *(v39 + 20);
  v78 = v33;
  v42 = *(v16 + v41);
  sub_1B041C9E0(v16);
  *(v40 + 10) = v42;
  *(v40 + 11) = 2082;
  v43 = v34;
  v44 = *&v20[*(v39 + 20) + 4];
  sub_1B041C9E0(v20);
  v45 = ConnectionID.debugDescription.getter(v44);
  v47 = sub_1B0399D64(v45, v46, v83);

  *(v40 + 13) = v47;
  *(v40 + 21) = 2082;
  if (v30)
  {
    v48 = v77;
  }

  else
  {
    v48 = 0;
  }

  if (v30)
  {
    v49 = v30;
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v50 = sub_1B0399D64(v48, v49, v83);

  *(v40 + 23) = v50;
  *(v40 + 31) = 2082;
  if (v32)
  {
    v51 = v78;
  }

  else
  {
    v51 = 0;
  }

  if (v32)
  {
    v52 = v32;
  }

  else
  {
    v52 = 0xE000000000000000;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v53 = sub_1B0399D64(v51, v52, v83);

  *(v40 + 33) = v53;
  *(v40 + 41) = 2082;

  if (v43)
  {
    v54 = v79;
  }

  else
  {
    v54 = 0;
  }

  if (v43)
  {
    v55 = v43;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  v56 = sub_1B0399D64(v54, v55, v83);

  *(v40 + 43) = v56;
  _os_log_impl(&dword_1B0389000, v36, v37, "[%.*hhx-%{public}s] XOAUTH2 error: status '%{public}s',  schemes '%{public}s',  scope '%{public}s'", v40, 0x33u);
  v57 = v82;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v57, -1, -1);
  MEMORY[0x1B272C230](v40, -1, -1);
}

uint64_t sub_1B0C19464(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 11)
  {
    return v4 >> 60 == 11;
  }

  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (((v4 >> 60) | 4) == 0xF)
  {
    return 0;
  }

  return sub_1B0AB8858(*a1, v3, *a2, v4);
}

BOOL sub_1B0C194C8(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v13[4] = a2[4];
  v8 = *a2;
  v13[1] = a2[1];
  v12[4] = v3;
  v13[0] = v8;
  v10 = *(a2 + 10);
  v9 = *(a2 + 11);
  if ((sub_1B0C0FEBC(v12, v13) & 1) == 0)
  {
    return 0;
  }

  if (v6 >> 60 == 11)
  {
    return v9 >> 60 == 11;
  }

  if (v6 >> 60 != 15)
  {
    return ((v9 >> 60) | 4) != 0xF && (sub_1B0AB8858(v5, v6, v10, v9) & 1) != 0;
  }

  return v9 >> 60 == 15;
}

uint64_t sub_1B0C195A4()
{
  v2 = *(v0 + 88);
  if (v2 >> 60 == 11)
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    sub_1B0BCD47C();
    swift_allocError();
    *v3 = xmmword_1B0ECE570;
    *(v3 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 80);
    sub_1B03B2000(v1, *(v0 + 88));
    sub_1B0BD1354(v1, v2);
    *(v0 + 80) = xmmword_1B0EC58F0;
  }

  return v1;
}

uint64_t sub_1B0C19668(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(v3 + 88) >> 60 == 15)
  {
    sub_1B0C18BDC(a1, a2, a3);
    result = sub_1B0BD1354(*(v3 + 80), *(v3 + 88));
    *(v3 + 80) = xmmword_1B0ECD820;
  }

  else
  {
    sub_1B0BCD47C();
    swift_allocError();
    *v5 = xmmword_1B0ECE570;
    *(v5 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_1B0C196F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s6LoggerVMa_0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  sub_1B041C97C(a3, &v25 - v12);
  sub_1B041C97C(a3, v10);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v14 = sub_1B0E43988();
  v15 = sub_1B0E458E8();
  if (!os_log_type_enabled(v14, v15))
  {
    sub_1B041C9E0(v10);

    sub_1B041C9E0(v13);
    return;
  }

  v25 = v3;
  v16 = swift_slowAlloc();
  v26 = a2;
  v17 = v16;
  v18 = swift_slowAlloc();
  v27 = v18;
  *v17 = 68158722;
  *(v17 + 4) = 2;
  *(v17 + 8) = 256;
  v19 = v10[*(v7 + 20)];
  sub_1B041C9E0(v10);
  *(v17 + 10) = v19;
  *(v17 + 11) = 2082;
  v20 = *&v13[*(v7 + 20) + 4];
  sub_1B041C9E0(v13);
  v21 = ConnectionID.debugDescription.getter(v20);
  v23 = sub_1B0399D64(v21, v22, &v27);

  *(v17 + 13) = v23;
  *(v17 + 21) = 1040;
  v24 = v26 - a1;
  if (!a1)
  {
    v24 = 0;
  }

  if (v24 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v24 <= 0x7FFFFFFF)
  {
    *(v17 + 23) = v24;
    *(v17 + 27) = 2098;
    if (a1)
    {
      *(v17 + 29) = a1;
      _os_log_impl(&dword_1B0389000, v14, v15, "[%.*hhx-%{public}s] XOAUTH2 error: %{public}.*P", v17, 0x25u);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1B272C230](v18, -1, -1);
      MEMORY[0x1B272C230](v17, -1, -1);

      return;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1B0C19954()
{
  v1 = 0x73656D65686373;
  if (*v0 != 1)
  {
    v1 = 0x65706F6373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_1B0C199A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0C19E88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0C199D0()
{
  sub_1B0C1A19C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C19A0C()
{
  sub_1B0C1A19C();

  return sub_1B0E46F38();
}

double sub_1B0C19A48@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B0C19F98(a1, v6);
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

uint64_t sub_1B0C19A8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v29 = xmmword_1B0ECF4A0;
  v8 = sub_1B0C01268(0x3D72657375, 0xE500000000000000);
  v10 = v9;
  sub_1B0E42FA8();
  sub_1B0391D50(v8, v10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = sub_1B0C01268(a1, a2);
  v13 = v12;
  sub_1B0E42FA8();
  sub_1B0391D50(v11, v13);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E57B8, &qword_1B0ED7C28);
  v28 = sub_1B0C19CA0();
  LOBYTE(v26[0]) = 1;
  v25 = *__swift_project_boxed_opaque_existential_0(v26, v27);
  sub_1B0E42ED8();
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  v14 = sub_1B0C01268(0x6165423D68747561, 0xEC00000020726572);
  v16 = v15;
  sub_1B0E42FA8();
  sub_1B0391D50(v14, v16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0C01268(a3, a4);
  v19 = v18;
  sub_1B0E42FA8();
  sub_1B0391D50(v17, v19);
  v20 = sub_1B0C05480(&unk_1F271B700);
  v22 = v21;
  sub_1B0E42FA8();
  sub_1B0391D50(v20, v22);
  result = v29;
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B0C19CA0()
{
  result = qword_1EB6E57C0;
  if (!qword_1EB6E57C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E57B8, &qword_1B0ED7C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO10OAuthTokenV5StateO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B0C19D58()
{
  result = qword_1EB6E57C8;
  if (!qword_1EB6E57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57C8);
  }

  return result;
}

uint64_t sub_1B0C19DAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1B0C19E08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0C19E88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656D65686373 && a2 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B0C19F98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E57D0, &qword_1B0ED8390);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C1A19C();
  sub_1B0E46D18();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = 0;
  v11 = sub_1B0E46818();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v14 = sub_1B0E46818();
  v16 = v15;
  v23 = v14;
  v25 = 2;
  v17 = sub_1B0E46818();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v22 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

unint64_t sub_1B0C1A19C()
{
  result = qword_1EB6E57D8;
  if (!qword_1EB6E57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57D8);
  }

  return result;
}

unint64_t sub_1B0C1A204()
{
  result = qword_1EB6E57E0;
  if (!qword_1EB6E57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57E0);
  }

  return result;
}

unint64_t sub_1B0C1A25C()
{
  result = qword_1EB6E57E8;
  if (!qword_1EB6E57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57E8);
  }

  return result;
}

unint64_t sub_1B0C1A2B4()
{
  result = qword_1EB6E57F0;
  if (!qword_1EB6E57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57F0);
  }

  return result;
}

uint64_t PathAttribute.hashValue.getter()
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0C1A3BC()
{
  result = qword_1EB6DCE80;
  if (!qword_1EB6DCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE80);
  }

  return result;
}

unint64_t sub_1B0C1A414()
{
  result = qword_1EB6E57F8;
  if (!qword_1EB6E57F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57F8);
  }

  return result;
}

unint64_t sub_1B0C1A46C()
{
  result = qword_1EB6E5800;
  if (!qword_1EB6E5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5800);
  }

  return result;
}

uint64_t sub_1B0C1A4FC()
{
  v1 = v0;
  v2 = sub_1B0E43C38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6977B98])
  {
    (*(v3 + 96))(v6, v2);
    v2 = sub_1B0E43C08();
    v3 = *(v2 - 8);
    v8 = (*(v3 + 88))(v6, v2);
    if (v8 == *MEMORY[0x1E6977B68])
    {
      return 98;
    }

    if (v8 == *MEMORY[0x1E6977B60])
    {
      return 97;
    }

    if (v8 == *MEMORY[0x1E6977B70])
    {
      return 103;
    }

    if (v8 == *MEMORY[0x1E6977B78])
    {
      return 110;
    }

    if (v8 == *MEMORY[0x1E6977B80])
    {
      return 25441;
    }

    if (v8 == *MEMORY[0x1E6977B88])
    {
      return 30817;
    }

    goto LABEL_33;
  }

  if (v7 != *MEMORY[0x1E6977B90])
  {
LABEL_33:
    v13 = 63;
    goto LABEL_34;
  }

  (*(v3 + 96))(v6, v2);
  v2 = sub_1B0E43C28();
  v3 = *(v2 - 8);
  v10 = (*(v3 + 88))(v6, v2);
  if (v10 == *MEMORY[0x1E6977BB8])
  {
    (*(v3 + 96))(v6, v2);
    v2 = sub_1B0E43C18();
    v3 = *(v2 - 8);
    v11 = (*(v3 + 88))(v6, v2);
    if (v11 == *MEMORY[0x1E6977BB0])
    {
      return 0x732E47356C617564;
    }

    if (v11 == *MEMORY[0x1E6977BA8])
    {
      return 0x6D2E47356C617564;
    }

    v13 = 0x47356C617564;
  }

  else if (v10 == *MEMORY[0x1E6977BA0])
  {
    (*(v3 + 96))(v6, v2);
    v2 = sub_1B0E43C18();
    v3 = *(v2 - 8);
    v12 = (*(v3 + 88))(v6, v2);
    if (v12 == *MEMORY[0x1E6977BB0])
    {
      return 0x47366275732E4735;
    }

    if (v12 == *MEMORY[0x1E6977BA8])
    {
      return 0x7661576D6D2E4735;
    }

    v13 = 18229;
  }

  else
  {
    if (v10 == *MEMORY[0x1E6977BC8])
    {
      return 6648940;
    }

    if (v10 == *MEMORY[0x1E6977BE0])
    {
      return 0x616D646377;
    }

    if (v10 == *MEMORY[0x1E6977BC0])
    {
      return 7172967;
    }

    if (v10 == *MEMORY[0x1E6977BD0])
    {
      return 1634559075;
    }

    if (v10 == *MEMORY[0x1E6977BD8])
    {
      return 1868854885;
    }

    v13 = 1819043171;
  }

LABEL_34:
  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t sub_1B0C1AA74(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1B0C1FA20(&v11, *(*(v2 + 48) + ((v9 << 8) | (4 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C1AB54(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1B0C1FE1C(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C1AC30(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1B0C1FE00(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1B0C1AD1C()
{
  v1 = type metadata accessor for ClientCommand(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0BD6A44(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload <= 10)
    {
      if ((EnumCaseMultiPayload - 6) < 2 || EnumCaseMultiPayload == 3)
      {
        sub_1B0BB439C(v4);
        return sub_1B0BF58D0(&unk_1F271B8F8);
      }

LABEL_25:
      sub_1B0BB439C(v4);
      return MEMORY[0x1E69E7CD0];
    }

    if (EnumCaseMultiPayload != 11)
    {
      v17 = *v4;
      v16 = v4[1];

      v18 = sub_1B0C1AF90(v17);
      sub_1B0B239C8(v17);
      return v18;
    }

    v19 = *v4;
    v24 = sub_1B0C1AF90(v19);
    v20 = 5;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 14)
  {
    if (EnumCaseMultiPayload != 13)
    {
      v9 = *v4;
      v8 = v4[1];

      v24 = sub_1B0C1AF90(v9);
      sub_1B0C1FE00(&v23 + 7, 1);
      v10 = v9;
LABEL_24:
      sub_1B0B239C8(v10);
      return v24;
    }

    v19 = *v4;
    v24 = sub_1B0C1AF90(v19);
    sub_1B0C1FE00(&v23 + 7, 5);
    v20 = 1;
LABEL_23:
    sub_1B0C1FE00(&v23 + 7, v20);
    v10 = v19;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 15)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0);
    v22 = sub_1B0C1B00C(*(v4 + *(v21 + 48)));

    sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return v22;
  }

  if (EnumCaseMultiPayload != 16)
  {
    goto LABEL_25;
  }

  v11 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48);
  v12 = v11[1];
  v13 = *(v11 + 1);

  if (v12)
  {
    v14 = &unk_1F271B920;
  }

  else
  {
    v14 = &unk_1F271B948;
  }

  v15 = sub_1B0BF58D0(v14);
  sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return v15;
}

uint64_t sub_1B0C1AF90(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CD0];
  if (sub_1B0C1B6C4(a1))
  {
    sub_1B0C1FE00(&v4, 1);
    sub_1B0C1FE00(&v3, 2);
  }

  if (sub_1B0C1B80C(a1))
  {
    sub_1B0C1FE00(&v5, 3);
  }

  return v6;
}

uint64_t sub_1B0C1B00C(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CD0];
  v17 = MEMORY[0x1E69E7CD0];
  v2 = *(a1 + 16);
  if (v2)
  {
    for (i = (a1 + 64); ; i += 10)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *(i + 4);
      v10 = *i | (*(i + 4) << 32);
      v16 = v1;
      v11 = v9 >> 5;
      if (v11 <= 2)
      {
        if (v11)
        {
          v12 = v11 == 1;
        }

        else
        {
          v12 = 0;
        }

        v4 = v1;
        if (!v12)
        {
          goto LABEL_4;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE964(v7, v8);
      }

      else if (v11 > 4)
      {
        v4 = v1;
        if (v11 == 5)
        {
          goto LABEL_4;
        }

        if (v7 | v6 | v5 | v8)
        {
          v13 = 0;
        }

        else
        {
          v13 = v10 == 0xC000000000;
        }

        if (!v13 && v10 == 0xC000000000 && v5 == 1 && !(v7 | v6 | v8))
        {
          sub_1B0C1FE00(&v15, 3);
          v4 = v16;
          goto LABEL_4;
        }
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      v4 = v1;
LABEL_4:
      sub_1B0C1AC30(v4);
      sub_1B0C1BB38(v5, v6, v7, v8, v10);
      if (!--v2)
      {
        return v17;
      }
    }
  }

  return v1;
}

uint64_t sub_1B0C1B22C()
{
  v1 = type metadata accessor for ClientCommand(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0BD6A44(v0, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0x14u:
      sub_1B0BB439C(v4);
      goto LABEL_3;
    case 3u:
      sub_1B0BB439C(v4);
      v5 = &unk_1F271B970;
      return sub_1B0BF58E4(v5);
    case 0xAu:
      v14 = *v4;

      v15 = v4[2];

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v17 = *(v16 + 64);
      sub_1B0391D50(*(v4 + *(v16 + 80)), *(v4 + *(v16 + 80) + 8));
      sub_1B0398EFC(v4 + v17, &unk_1EB6E2990, &qword_1B0E9B060);
      goto LABEL_3;
    case 0xBu:
      v34 = *v4;
      v35 = &unk_1F271BA38;
      goto LABEL_40;
    case 0xCu:
      v12 = *v4;
      v18 = v4[1];

      v13 = &unk_1F271BA88;
      goto LABEL_15;
    case 0xDu:
      v34 = *v4;
      v35 = &unk_1F271BA60;
LABEL_40:
      v36 = sub_1B0BF58E4(v35);
      v40 = MEMORY[0x1E69E7CD0];
      if (sub_1B0C1B80C(v34))
      {
        sub_1B0C1FE1C(&v39 + 7, 5);
      }

      if (sub_1B0C1B968(v34))
      {
        sub_1B0C1FE1C(&v39 + 7, 3);
      }

      v37 = sub_1B0C1AB54(v40, v36);
      sub_1B0B239C8(v34);
      return v37;
    case 0xEu:
      v12 = *v4;
      v11 = v4[1];

      v13 = &unk_1F271BAB0;
LABEL_15:
      v19 = sub_1B0BF58E4(v13);
      v40 = MEMORY[0x1E69E7CD0];
      if (sub_1B0C1B80C(v12))
      {
        sub_1B0C1FE1C(&v39 + 7, 5);
      }

      if (sub_1B0C1B968(v12))
      {
        sub_1B0C1FE1C(&v39 + 7, 3);
      }

      v20 = sub_1B0C1AB54(v40, v19);
      sub_1B0B239C8(v12);
      return v20;
    case 0xFu:
      v22 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48));
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = (v22 + 64);
        v25 = &unk_1F271B9C0;
        while (1)
        {
          if (*(v24 + 4) >> 5 >= 6u)
          {
            v26 = *v24 | (*(v24 + 4) << 32);
            v27 = *(v24 - 1);
            v28 = *(v24 - 4);
            v29 = *(v24 - 2) | *(v24 - 3);
            if (v29 | v28 | v27 || v26 != 0xC000000000)
            {
              v31 = v29 | v27;
              v32 = v26 == 0xC000000000 && v28 == 1;
              if (v32 && v31 == 0)
              {
                break;
              }
            }
          }

          v24 += 10;
          if (!--v23)
          {
            v25 = &unk_1F271B9E8;
            break;
          }
        }
      }

      else
      {
        v25 = &unk_1F271B9E8;
      }

      v10 = v25;
LABEL_48:
      v38 = sub_1B0BF58E4(v10);
      sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return v38;
    case 0x10u:
      v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48);
      v8 = v7[1];
      v9 = *(v7 + 1);

      if (v8)
      {
        v10 = &unk_1F271BAD8;
      }

      else
      {
        v10 = &unk_1F271BB00;
      }

      goto LABEL_48;
    case 0x11u:
    case 0x12u:
      v6 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48));

      sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v5 = &unk_1F271BA10;
      return sub_1B0BF58E4(v5);
    case 0x13u:
      v5 = &unk_1F271BB50;
      return sub_1B0BF58E4(v5);
    case 0x16u:
    case 0x17u:
    case 0x19u:
    case 0x1Bu:
LABEL_3:
      v5 = &unk_1F271BB78;
      return sub_1B0BF58E4(v5);
    case 0x18u:
    case 0x1Du:
      goto LABEL_5;
    case 0x1Au:
    case 0x1Cu:
      v5 = &unk_1F271B998;
      return sub_1B0BF58E4(v5);
    default:
      sub_1B0BB439C(v4);
LABEL_5:
      v5 = &unk_1F271BB28;
      return sub_1B0BF58E4(v5);
  }
}

unint64_t sub_1B0C1B6C4(unint64_t a1)
{
  while (1)
  {
    v2 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v2 > 15)
    {
      break;
    }

    if (v2 != 15)
    {
      result = 0;
      if (v2 >= 0xE)
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B0B23938(v6);
        v7 = sub_1B0C1B6C4(v6);
        sub_1B0B239C8(v6);
        return v7 & 1;
      }

      return result;
    }

    v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    if (sub_1B0C1B6C4(v3))
    {
      return 1;
    }
  }

  result = 0;
  v5 = 1 << v2;
  if ((v5 & 0xF67F0000) != 0)
  {
    return result;
  }

  if ((v5 & 0x8800000) != 0)
  {
    return 1;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v9 = *(v8 + 16);
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {

      return 0;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    v11 = v10 + 1;
    v12 = *(v8 + 8 * v10 + 32);
    sub_1B0B23938(v12);
    v13 = sub_1B0C1B6C4(v12);
    result = sub_1B0B239C8(v12);
    v10 = v11;
    if (v13)
    {

      return 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0C1B80C(unint64_t a1)
{
  while (2)
  {
    LOBYTE(v2) = 0;
    switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
    {
      case 5uLL:
      case 0xBuLL:
      case 0x1BuLL:
        goto LABEL_3;
      case 0xEuLL:
        v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B0B23938(v4);
        v5 = sub_1B0C1B80C(v4);
        sub_1B0B239C8(v4);
        return v5 & 1;
      case 0xFuLL:
        v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if ((sub_1B0C1B80C(v3) & 1) == 0)
        {
          continue;
        }

LABEL_3:
        LOBYTE(v2) = 1;
        return v2 & 1;
      case 0x18uLL:
        v7 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v8 = *(v7 + 16);
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v9 = 0;
        break;
      case 0x1CuLL:
        LOBYTE(v2) = *(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20) + 16) != 0;
        return v2 & 1;
      case 0x1FuLL:
        v2 = 0x3F8Eu >> ((a1 + 131068) >> 3);
        return v2 & 1;
      default:
        return v2 & 1;
    }

    break;
  }

  while (1)
  {
    if (v8 == v9)
    {

      LOBYTE(v2) = 0;
      return v2 & 1;
    }

    if (v9 >= *(v7 + 16))
    {
      break;
    }

    v10 = v9 + 1;
    v11 = *(v7 + 8 * v9 + 32);
    sub_1B0B23938(v11);
    v12 = sub_1B0C1B80C(v11);
    result = sub_1B0B239C8(v11);
    v9 = v10;
    if (v12)
    {

      LOBYTE(v2) = 1;
      return v2 & 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0C1B968(unint64_t a1)
{
  while (1)
  {
    v2 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v2 > 15)
    {
      break;
    }

    if (v2 != 15)
    {
      result = 0;
      if (v2 >= 0xE)
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B0B23938(v6);
        v7 = sub_1B0C1B968(v6);
        sub_1B0B239C8(v6);
        return v7 & 1;
      }

      return result;
    }

    v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    if (sub_1B0C1B968(v3))
    {
      return 1;
    }
  }

  result = 0;
  v5 = 1 << v2;
  if ((v5 & 0xF68F0000) != 0)
  {
    return result;
  }

  if ((v5 & 0x8700000) != 0)
  {
    return 1;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v9 = *(v8 + 16);
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {

      return 0;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    v11 = v10 + 1;
    v12 = *(v8 + 8 * v10 + 32);
    sub_1B0B23938(v12);
    v13 = sub_1B0C1B968(v12);
    result = sub_1B0B239C8(v12);
    v10 = v11;
    if (v13)
    {

      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C1BAB0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 56);
    do
    {
      v3 = *v2;
      v5 = *(v2 - 2);
      v4 = *(v2 - 1);
      v6 = *(v2 - 3);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C1FB18(&v7, v6, v5, v4, v3);

      v2 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1B0C1BB38(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5)
{
  v6 = (a5 >> 37) & 7;
  if (v6 == 4 || v6 == 3)
  {
  }

  else if (v6 == 1)
  {

    sub_1B0ACE978(a3, a4);
  }
}

unint64_t sub_1B0C1BBD4()
{
  result = qword_1EB6DD178;
  if (!qword_1EB6DD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD178);
  }

  return result;
}

unint64_t sub_1B0C1BC2C()
{
  result = qword_1EB6E5818;
  if (!qword_1EB6E5818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5820, qword_1B0ED86F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5818);
  }

  return result;
}

unint64_t sub_1B0C1BC94()
{
  result = qword_1EB6DD170;
  if (!qword_1EB6DD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD170);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO5PlainV5StateO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C1BD20()
{
  v2 = *(v0 + 88);
  if (v2 >> 60 == 15)
  {
    sub_1B0BCD47C();
    swift_allocError();
    *v3 = xmmword_1B0ECE570;
    *(v3 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 80);
    sub_1B03B2000(v1, *(v0 + 88));
    sub_1B0BD135C(v1, v2);
    *(v0 + 80) = xmmword_1B0EC58F0;
  }

  return v1;
}

uint64_t sub_1B0C1BDDC(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v3 = *(a1 + 2);
    v4 = *(a2 + 2);
    if (v3)
    {
      if (v4 && (*(a1 + 1) == *(a2 + 1) && v3 == v4 || (sub_1B0E46A78() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B0C1BE5C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        if (a2 == a5 && a3 == a6)
        {
          return 1;
        }

        if (sub_1B0E46A78())
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t CommandConnection.RecentErrors.Error.kind.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CommandConnection.RecentErrors.Error(0) + 20);

  return sub_1B0C1BFD8(a1, v3);
}

uint64_t sub_1B0C1BFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CommandConnection.RecentErrors.Error.init(time:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0446B60(a2, v9, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1B0438FB0(v9, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    goto LABEL_8;
  }

  v15 = sub_1B0E441D8();
  v16 = *(v15 - 8);
  if ((*(v16 + 88))(v9, v15) != *MEMORY[0x1E6977D68])
  {
    (*(v16 + 8))(v9, v15);
    goto LABEL_8;
  }

  (*(v16 + 96))(v9, v15);
  if (*v9 == 94)
  {
    sub_1B0438FB0(a2, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    *v14 = a1;
    v19 = *(v10 + 20);
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  if (*v9 != 89)
  {
LABEL_8:
    *v14 = a1;
    sub_1B0C25A4C(a2, v14 + *(v10 + 20), type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_9:
    sub_1B0C25A4C(v14, a3, type metadata accessor for CommandConnection.RecentErrors.Error);
    v17 = 0;
    return (*(v11 + 56))(a3, v17, 1, v10);
  }

  sub_1B0438FB0(a2, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  v17 = 1;
  return (*(v11 + 56))(a3, v17, 1, v10);
}

uint64_t static CommandConnection.RecentErrors.Error.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) + 20);

  return _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_1B0C1C3D4(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(a1 + *(a3 + 20), a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

unint64_t CommandConnection.RecentErrors.statistics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return CommandConnection.RecentErrors.Statistics.init(_:)(v2, a1);
}

unint64_t CommandConnection.RecentErrors.Statistics.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B0E441D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v8 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CommandConnection.RecentErrors.Statistics(0);
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  v16 = v5;
  v17 = *(v5 + 56);
  v42 = *(v15 + 48);
  v17(a2 + v42, 1, 1, v4);
  v41 = *(v15 + 52);
  v55 = v4;
  v50 = v17;
  v51 = v5 + 56;
  v17(a2 + v41, 1, 1, v4);
  v18 = a1;
  v19 = *(a1 + 16);
  if (!v19)
  {
  }

  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v20 = *(v11 + 20);
  v21 = *(v54 + 80);
  v40 = v18;
  v22 = v18 + ((v21 + 32) & ~v21);
  v23 = *(v54 + 72);
  v24 = (v16 + 32);
  v53 = v23;
  v54 = v20;
  while (1)
  {
    sub_1B0446B60(v22, v14, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1B0446B60(&v14[v20], v10, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    sub_1B0438FB0(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v26 = v24;
          v27 = *v10;
          v28 = v10[1];
          v29 = v10[2];
          result = sub_1B0B6DCF0(v46, v45, v44);
          v31 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_27;
          }

          v46 = v27;
          ++v47;
          *(a2 + 8) = v31;
          *(a2 + 32) = v27;
          *(a2 + 40) = v28;
          v44 = v29;
          v45 = v28;
          *(a2 + 48) = v29;
          v24 = v26;
          v23 = v53;
          v20 = v54;
        }

        else
        {
          sub_1B0438FB0(v10, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
          *(a2 + 2) = 1;
        }
      }

      else
      {
        sub_1B0438FB0(v10, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        *(a2 + 1) = 1;
      }

      goto LABEL_4;
    }

    if (EnumCaseMultiPayload > 4)
    {
      break;
    }

    if (EnumCaseMultiPayload != 3)
    {
      v32 = *v24;
      v33 = v52;
      result = (*v24)(v52, v10, v55);
      v36 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_26;
      }

      ++v48;
      *(a2 + 16) = v36;
      v35 = v42;
      goto LABEL_19;
    }

    sub_1B0438FB0(v10, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    *(a2 + 3) = 1;
LABEL_4:
    v22 += v23;
    if (!--v19)
    {
    }
  }

  if (EnumCaseMultiPayload != 5)
  {
    *a2 = 1;
    goto LABEL_4;
  }

  v32 = *v24;
  v33 = v52;
  result = (*v24)(v52, v10, v55);
  v34 = v49 + 1;
  if (!__OFADD__(v49, 1))
  {
    ++v49;
    *(a2 + 24) = v34;
    v35 = v41;
LABEL_19:
    sub_1B0398EFC(a2 + v35, &unk_1EB6E5A90, &unk_1B0EDC020);
    v37 = v33;
    v38 = v55;
    v32((a2 + v35), v37, v55);
    v39 = a2 + v35;
    v20 = v54;
    v50(v39, 0, 1, v38);
    v23 = v53;
    goto LABEL_4;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t CommandConnection.RecentErrors.Statistics.lastResponseText.getter()
{
  v1 = v0[4];
  sub_1B0B6DCB0(v1, v0[5], v0[6]);
  return v1;
}

unint64_t CommandConnection.RecentErrors.Statistics.lastResponseText.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B6DCF0(*(v3 + 32), *(v3 + 40), *(v3 + 48));
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNetworkError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 48);

  return sub_1B0C25AD4(v3, a1);
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNetworkError.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 48);

  return sub_1B0C25B44(a1, v3);
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNoViableNetworkError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 52);

  return sub_1B0C25AD4(v3, a1);
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNoViableNetworkError.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 52);

  return sub_1B0C25B44(a1, v3);
}

uint64_t CommandConnection.BackOffBehavior.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t CommandConnection.RecentErrors.backOffBehavior.getter(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B0C1CFD8(a1);
  if (*(result + 16))
  {
    v12 = 0;
    v13 = 1 << *(result + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(result + 56);
    if (v15)
    {
      while (1)
      {
        v16 = v12;
LABEL_9:
        v17 = *(*(result + 48) + 24 * (__clz(__rbit64(v15)) | (v16 << 6)) + 16);
        if (v17 > 3 || v17 == 2)
        {
          break;
        }

        v15 &= v15 - 1;
        v12 = v16;
        if (!v15)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }

LABEL_6:
    while (1)
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v16 >= ((v13 + 63) >> 6))
      {

        return 2;
      }

      v15 = *(result + 56 + 8 * v16);
      ++v12;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    if (sub_1B0C1D1E0(a1))
    {
      return 1;
    }

    v19 = 0;
    v20 = *(a1 + 16);
    while (v20 != v19)
    {
      sub_1B0446B60(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19++, v10, type metadata accessor for CommandConnection.RecentErrors.Error);
      v21 = *(v6 + 20);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v21) = _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(&v10[v21], v5);
      sub_1B0438FB0(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      sub_1B0438FB0(v10, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v21)
      {
        return 1;
      }
    }

    if (sub_1B0C1D3E8(a1))
    {
      return 1;
    }

    v22 = sub_1B0C1D59C(a1);
    if (v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = 3;
    }

    if (v22)
    {
      return 1;
    }

    else
    {
      return v23;
    }
  }

  return result;
}

uint64_t sub_1B0C1CFD8(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7CD0];
  v21 = MEMORY[0x1E69E7CD0];
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v8 + 20);
    v15 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    do
    {
      sub_1B0446B60(v15, v11, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0446B60(&v11[v14], v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1B0438FB0(v11, type metadata accessor for CommandConnection.RecentErrors.Error);
        v17 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind;
        v18 = v5;
      }

      else
      {
        sub_1B0C1D95C(v20, *v5, *(v5 + 1), *(v5 + 2));
        sub_1B0BD1488(v20[0], v20[1], v20[2]);
        v17 = type metadata accessor for CommandConnection.RecentErrors.Error;
        v18 = v11;
      }

      sub_1B0438FB0(v18, v17);
      v15 += v16;
      --v13;
    }

    while (v13);
    return v21;
  }

  return v12;
}

uint64_t sub_1B0C1D1E0(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 20);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_1B0446B60(v14, v11, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0C25A4C(&v11[v13], v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = *v5;
        v17 = v5[2];
        v18 = ~*v5 & 0xF000000000000007;

        if (v18)
        {
          v19 = __ROR8__(v16 + 0x7FFFFFFFFFFFFF94, 3);
          v20 = ((v16 >> 59) & 0x1E | (v16 >> 2) & 1) != 0x11 || v19 >= 0xF;
          if (!v20 && ((0x6E27u >> v19) & 1) != 0)
          {
            return 1;
          }

          sub_1B0447F00(v16);
        }
      }

      else
      {
        sub_1B0438FB0(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return 0;
}

BOOL sub_1B0C1D3E8(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);
  v14 = v11 - 1;
  do
  {
    v15 = v14;
    sub_1B0446B60(v12, v10, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1B0C25A4C(&v10[*(v6 + 20)], v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1B0438FB0(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    result = EnumCaseMultiPayload == 2;
    if (EnumCaseMultiPayload == 2)
    {
      break;
    }

    v14 = v15 - 1;
    v12 += v13;
  }

  while (v15);
  return result;
}

BOOL sub_1B0C1D59C(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);
  v14 = v11 - 1;
  do
  {
    v15 = v14;
    sub_1B0446B60(v12, v10, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1B0C25A4C(&v10[*(v6 + 20)], v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1B0438FB0(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    result = EnumCaseMultiPayload == 3;
    if (EnumCaseMultiPayload == 3)
    {
      break;
    }

    v14 = v15 - 1;
    v12 += v13;
  }

  while (v15);
  return result;
}

uint64_t CommandConnection.RecentErrors.containsAuthenticationFailure.getter(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    do
    {
      sub_1B0446B60(v12, v10, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0446B60(&v10[*(v6 + 20)], v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) < 5)
      {
        sub_1B0438FB0(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      else if (EnumCaseMultiPayload != 6)
      {
        sub_1B0438FB0(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        sub_1B0438FB0(v10, type metadata accessor for CommandConnection.RecentErrors.Error);
        return 1;
      }

      sub_1B0438FB0(v10, type metadata accessor for CommandConnection.RecentErrors.Error);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  return 0;
}

uint64_t sub_1B0C1D95C(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_1B0E46C28();
  v24 = a1;
  v23 = v4;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      MEMORY[0x1B2728D70](3);
      goto LABEL_14;
    }

    if (a4 == 3)
    {
      MEMORY[0x1B2728D70](4);
      goto LABEL_14;
    }

LABEL_8:
    MEMORY[0x1B2728D70](0);
    sub_1B0E46C68();
    if ((~a2 & 0xF000000000000007) != 0)
    {
      ResponseTextCode.hash(into:)(v26, a2);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_14;
  }

  if (!a4)
  {
    MEMORY[0x1B2728D70](1);
    goto LABEL_14;
  }

  if (a4 != 1)
  {
    goto LABEL_8;
  }

  MEMORY[0x1B2728D70](2);
LABEL_14:
  v10 = sub_1B0E46CB8();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_32:
    v19 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = *v23;
    sub_1B0BD67B0(a2, a3, a4);
    sub_1B0C21330(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v23 = v26[0];
    *v24 = a2;
    v24[1] = a3;
    v24[2] = a4;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(v8 + 48) + 24 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    if (v17 > 1)
    {
      break;
    }

    if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_27;
      }

      if (a4 == 1)
      {
        goto LABEL_33;
      }
    }

    else if (!a4)
    {
      goto LABEL_33;
    }

LABEL_17:
    v12 = (v12 + 1) & v13;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (v17 == 2)
  {
    if (a4 == 2)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  if (v17 == 3)
  {
    if (a4 == 3)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

LABEL_27:
  if (a4 < 4)
  {
    goto LABEL_17;
  }

  sub_1B04420D8(*v14);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = static ResponseText.__derived_struct_equals(_:_:)(v15, v16);
  sub_1B0BD1488(v15, v16, v17);
  if ((v18 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1B0BD1488(a2, a3, a4);
  v22 = (*(v8 + 48) + 24 * v12);
  v15 = *v22;
  v16 = v22[1];
  v17 = v22[2];
LABEL_33:
  *v24 = v15;
  v24[1] = v16;
  v24[2] = v17;
  sub_1B0BD67B0(v15, v16, v17);
  return 0;
}

void sub_1B0C1DC1C(__int128 *a1, __int128 *a2)
{
  v3 = a2;
  v275 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v272 = a2[2];
  v273 = v4;
  v274 = a2[4];
  v5 = a2[1];
  v270 = *a2;
  v271 = v5;
  v248 = *v2;
  v6 = *(*v2 + 40);
  sub_1B0E46C28();
  v8 = *v3;
  v7 = *(v3 + 1);
  v10 = *(v3 + 2);
  v9 = *(v3 + 3);
  v11 = *(v3 + 7);
  if ((v11 & 0x1000000000000000) != 0)
  {
    v12 = *(v3 + 6);
    v262 = *v3;
    v263 = v7;
    v264 = v10;
    v265 = v9;
    v266 = v3[2];
    v267 = v12;
    v268 = v11 & 0xEFFFFFFFFFFFFFFFLL;
    v269 = v3[4];
    MEMORY[0x1B2728D70](1);
    sub_1B0C0EF30();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v13 = sub_1B0E46CB8();
  v14 = v248;
  v15 = v248 + 56;
  v16 = -1 << *(v248 + 32);
  v17 = v13 & ~v16;
  if ((*(v248 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v249 = ~v16;
    while (1)
    {
      v19 = (*(v14 + 48) + 80 * v17);
      v257 = *v19;
      v21 = v19[3];
      v20 = v19[4];
      v22 = v19[2];
      v258 = v19[1];
      v259 = v22;
      v260 = v21;
      v261 = v20;
      v23 = *(&v257 + 1);
      v24 = *(&v258 + 1);
      v25 = v258;
      v26 = *(&v21 + 1);
      if ((*(&v21 + 1) & 0x1000000000000000) == 0)
      {
        if ((*(v3 + 63) & 0x10) != 0)
        {
          goto LABEL_10;
        }

        v27 = *(v3 + 2);
        v28 = *(v3 + 3);
        if (v257 != *v3 && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_9;
        }

        if (v25 == v27 && v24 == v28)
        {
          goto LABEL_413;
        }

        v29 = sub_1B0E46A78();
        v18 = v249;
        v15 = v248 + 56;
        if (v29)
        {
          goto LABEL_413;
        }

        goto LABEL_10;
      }

      v30 = *(v3 + 7);
      if ((v30 & 0x1000000000000000) == 0)
      {
        goto LABEL_10;
      }

      v31 = *(&v261 + 1);
      v33 = *v3;
      v32 = *(v3 + 1);
      v34 = *(v3 + 2);
      v35 = *(v3 + 3);
      v36 = *(v3 + 9);
      v37 = (*(&v261 + 1) >> 59) & 6 | ((*(&v260 + 1) & 0x2000000000000000) != 0);
      if (v37 > 2)
      {
        break;
      }

      if (!v37)
      {
        if ((v36 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0))
        {
          goto LABEL_10;
        }

        v42 = *(&v257 + 1) >> 62;
        if (*(&v257 + 1) >> 62 == 3)
        {
          v43 = 0;
          if (v257 != __PAIR128__(0xC000000000000000, 0))
          {
            goto LABEL_188;
          }

          if (v32 >> 62 != 3)
          {
            goto LABEL_188;
          }

          v43 = 0;
          if (v33 || v32 != 0xC000000000000000)
          {
            goto LABEL_188;
          }

          goto LABEL_204;
        }

        if (v42 > 1)
        {
          if (v42 == 2)
          {
            v66 = *(v257 + 16);
            v65 = *(v257 + 24);
            v57 = __OFSUB__(v65, v66);
            v43 = v65 - v66;
            if (v57)
            {
              goto LABEL_434;
            }
          }

          else
          {
            v43 = 0;
          }
        }

        else if (v42)
        {
          LODWORD(v43) = DWORD1(v257) - v257;
          if (__OFSUB__(DWORD1(v257), v257))
          {
            goto LABEL_433;
          }

          v43 = v43;
        }

        else
        {
          v43 = BYTE14(v257);
        }

LABEL_188:
        v110 = v32 >> 62;
        if ((v32 >> 62) > 1)
        {
          if (v110 != 2)
          {
            if (v43)
            {
              goto LABEL_10;
            }

            goto LABEL_204;
          }

          v113 = *(v33 + 16);
          v112 = *(v33 + 24);
          v57 = __OFSUB__(v112, v113);
          v111 = v112 - v113;
          if (v57)
          {
            goto LABEL_421;
          }
        }

        else if (v110)
        {
          LODWORD(v111) = HIDWORD(v33) - v33;
          if (__OFSUB__(HIDWORD(v33), v33))
          {
            goto LABEL_422;
          }

          v111 = v111;
        }

        else
        {
          v111 = BYTE6(v32);
        }

        if (v43 != v111)
        {
          goto LABEL_10;
        }

        if (v43 >= 1)
        {
          if (v42 > 1)
          {
            v127 = *v3;
            v232 = *(v3 + 1);
            v236 = *(v3 + 2);
            v239 = *(v3 + 3);
            if (v42 == 2)
            {
              v128 = *(v257 + 16);
              v245 = *(v257 + 24);
              v252 = v257;
              v253 = v258;
              v254 = v259;
              *&v255 = v260;
              v256 = v261;
              *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
              sub_1B0BD1224(&v252, v251);
              v129 = sub_1B0E42A98();
              if (v129)
              {
                v130 = sub_1B0E42AC8();
                if (__OFSUB__(v128, v130))
                {
                  goto LABEL_453;
                }

                v129 += v128 - v130;
              }

              if (__OFSUB__(v245, v128))
              {
                goto LABEL_449;
              }

              sub_1B0E42AB8();
              v131 = v129;
            }

            else
            {
              memset(v250, 0, 14);
              v254 = v259;
              *&v255 = v260;
              v256 = v261;
              v252 = v257;
              v253 = v258;
              *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
              sub_1B0BD1224(&v252, v251);
              v131 = v250;
            }

            v170 = v127;
          }

          else
          {
            v226 = *v3;
            if (!v42)
            {
              v114 = *(v3 + 2);
              v115 = *(v3 + 3);
              v250[0] = v257;
              LOWORD(v250[1]) = WORD4(v257);
              *(&v250[1] + 2) = *(&v257 + 10);
              *&v255 = v260;
              v256 = v261;
              v254 = v259;
              v252 = v257;
              v253 = v258;
              *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
              v116 = v32;
              sub_1B0BD1224(&v252, v251);
              sub_1B0AE2440(v250, v226, v116, v251);
              v117 = v115;
              v118 = v114;
              if ((v251[0] & 1) == 0)
              {
                goto LABEL_7;
              }

              goto LABEL_205;
            }

            v232 = *(v3 + 1);
            v236 = *(v3 + 2);
            v239 = *(v3 + 3);
            v167 = v257;
            if (v257 >> 32 < v257)
            {
              goto LABEL_448;
            }

            v254 = v259;
            *&v255 = v260;
            v256 = v261;
            v252 = v257;
            v253 = v258;
            *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
            sub_1B0BD1224(&v252, v251);
            v168 = sub_1B0E42A98();
            if (v168)
            {
              v169 = sub_1B0E42AC8();
              if (__OFSUB__(v167, v169))
              {
                goto LABEL_454;
              }

              v168 += v167 - v169;
            }

            sub_1B0E42AB8();
            v131 = v168;
            v170 = v226;
          }

          sub_1B0AE2440(v131, v170, v232, v251);
          v118 = v236;
          v117 = v239;
          if ((v251[0] & 1) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_205;
        }

LABEL_204:
        v254 = v259;
        *&v255 = v260;
        v256 = v261;
        v252 = v257;
        v253 = v258;
        *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        v119 = v35;
        v120 = v34;
        sub_1B0BD1224(&v252, v251);
        v118 = v120;
        v117 = v119;
LABEL_205:
        v121 = v24 >> 62;
        if (v24 >> 62 == 3)
        {
          v122 = 0;
          if (!v25 && v24 == 0xC000000000000000 && v117 >> 62 == 3)
          {
            v122 = 0;
            if (!v118 && v117 == 0xC000000000000000)
            {
LABEL_411:
              sub_1B0BD2F90(v3);
              v3 = &v257;
LABEL_412:
              v14 = v248;
LABEL_413:
              sub_1B0BD2F90(v3);
              v213 = (*(v14 + 48) + 80 * v17);
              v252 = *v213;
              v214 = v213[3];
              v215 = v213[4];
              v216 = v213[2];
              v253 = v213[1];
              v255 = v214;
              v256 = v215;
              v254 = v216;
              v217 = v213[3];
              a1[2] = v213[2];
              a1[3] = v217;
              a1[4] = v213[4];
              v218 = v213[1];
              *a1 = *v213;
              a1[1] = v218;
              sub_1B0BD6700(&v252, v251);
              goto LABEL_414;
            }
          }
        }

        else if (v121 > 1)
        {
          if (v121 == 2)
          {
            v126 = *(v25 + 16);
            v125 = *(v25 + 24);
            v57 = __OFSUB__(v125, v126);
            v122 = v125 - v126;
            if (v57)
            {
              goto LABEL_446;
            }
          }

          else
          {
            v122 = 0;
          }
        }

        else if (v121)
        {
          LODWORD(v122) = HIDWORD(v25) - v25;
          if (__OFSUB__(HIDWORD(v25), v25))
          {
            goto LABEL_447;
          }

          v122 = v122;
        }

        else
        {
          v122 = BYTE6(v24);
        }

        v157 = v117 >> 62;
        if ((v117 >> 62) > 1)
        {
          if (v157 != 2)
          {
            if (!v122)
            {
              goto LABEL_411;
            }

            goto LABEL_7;
          }

          v160 = *(v118 + 16);
          v159 = *(v118 + 24);
          v57 = __OFSUB__(v159, v160);
          v158 = v159 - v160;
          if (v57)
          {
            goto LABEL_436;
          }
        }

        else if (v157)
        {
          LODWORD(v158) = HIDWORD(v118) - v118;
          if (__OFSUB__(HIDWORD(v118), v118))
          {
            goto LABEL_437;
          }

          v158 = v158;
        }

        else
        {
          v158 = BYTE6(v117);
        }

        if (v122 != v158)
        {
          goto LABEL_7;
        }

        if (v122 < 1)
        {
          goto LABEL_411;
        }

        if (v121 > 1)
        {
          if (v121 == 2)
          {
            v165 = *(v25 + 16);
            v166 = *(v25 + 24);
            goto LABEL_313;
          }

          *(&v252 + 6) = 0;
          *&v252 = 0;
          v173 = v117;
          v174 = v118;
          sub_1B03B2000(v118, v117);
          sub_1B03B2000(v174, v173);
          sub_1B0AE2440(&v252, v174, v173, v251);
          sub_1B0BD2F90(&v257);
          sub_1B0391D50(v174, v173);
          v163 = v174;
          v164 = v173;
        }

        else
        {
          if (v121)
          {
            v165 = v25;
            v166 = v25 >> 32;
            if (v25 >> 32 < v25)
            {
              goto LABEL_452;
            }

LABEL_313:
            v171 = v117;
            v172 = v118;
            sub_1B03B2000(v118, v117);
            sub_1B03B2000(v172, v171);
            sub_1B03B2000(v172, v171);
            v123 = sub_1B0AB87A0(v165, v166, v24 & 0x3FFFFFFFFFFFFFFFLL, v172, v171);
            sub_1B0391D50(v172, v171);
            sub_1B0BD2F90(&v257);
            sub_1B0391D50(v172, v171);
            sub_1B0391D50(v172, v171);
LABEL_314:
            v14 = v248;
            v18 = v249;
            v15 = v248 + 56;
            if (v123)
            {
              goto LABEL_413;
            }

            goto LABEL_10;
          }

          *&v252 = v25;
          WORD4(v252) = v24;
          BYTE10(v252) = BYTE2(v24);
          BYTE11(v252) = BYTE3(v24);
          BYTE12(v252) = BYTE4(v24);
          BYTE13(v252) = BYTE5(v24);
          v161 = v117;
          v162 = v118;
          sub_1B03B2000(v118, v117);
          sub_1B03B2000(v162, v161);
          sub_1B0AE2440(&v252, v162, v161, v251);
          sub_1B0BD2F90(&v257);
          sub_1B0391D50(v162, v161);
          v163 = v162;
          v164 = v161;
        }

        sub_1B0391D50(v163, v164);
        v124 = v251[0];
        goto LABEL_318;
      }

      if (v37 == 1)
      {
        if (((v36 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 1)
        {
          goto LABEL_10;
        }

        v240 = v260;
        v241 = *(v3 + 4);
        v242 = v259;
        v243 = *(v3 + 5);
        v244 = *(&v259 + 1);
        v38 = *(&v257 + 1) >> 62;
        if (*(&v257 + 1) >> 62 == 3)
        {
          v39 = 0;
          if (v257 == __PAIR128__(0xC000000000000000, 0) && v32 >> 62 == 3)
          {
            v39 = 0;
            if (!v33 && v32 == 0xC000000000000000)
            {
              goto LABEL_119;
            }
          }
        }

        else if (v38 > 1)
        {
          if (v38 == 2)
          {
            v60 = *(v257 + 16);
            v59 = *(v257 + 24);
            v57 = __OFSUB__(v59, v60);
            v39 = v59 - v60;
            if (v57)
            {
              goto LABEL_423;
            }
          }

          else
          {
            v39 = 0;
          }
        }

        else if (v38)
        {
          LODWORD(v39) = DWORD1(v257) - v257;
          if (__OFSUB__(DWORD1(v257), v257))
          {
            goto LABEL_424;
          }

          v39 = v39;
        }

        else
        {
          v39 = BYTE14(v257);
        }

        v67 = v32 >> 62;
        if ((v32 >> 62) > 1)
        {
          if (v67 == 2)
          {
            v70 = *(v33 + 16);
            v69 = *(v33 + 24);
            v57 = __OFSUB__(v69, v70);
            v68 = v69 - v70;
            if (v57)
            {
              goto LABEL_420;
            }

LABEL_109:
            v14 = v248;
            if (v39 != v68)
            {
              goto LABEL_10;
            }

LABEL_113:
            if (v39 >= 1)
            {
              v234 = *(v3 + 2);
              v237 = *(v3 + 3);
              v230 = *(v3 + 6);
              v231 = *(v3 + 1);
              v225 = *v3;
              v227 = v261;
              v228 = *(v3 + 9);
              v229 = *(v3 + 8);
              if (v38 <= 1)
              {
                if (!v38)
                {
                  *v251 = v257;
                  *&v251[8] = WORD4(v257);
                  *&v251[10] = *(&v257 + 10);
                  v71 = v32;
                  v72 = v33;
                  sub_1B03B2000(v33, v32);
                  sub_1B0BD6700(&v257, &v252);
                  sub_1B03B2000(v72, v71);
                  goto LABEL_272;
                }

                v221 = v257;
                v224 = v257 >> 32;
                if (v257 >> 32 < v257)
                {
                  goto LABEL_442;
                }

                v149 = *v3;
                sub_1B03B2000(v33, v32);
                sub_1B03B2000(v149, v231);
                sub_1B0BD6700(&v257, &v252);
                sub_1B03B2000(v149, v231);
                v223 = sub_1B0AB87A0(v221, v224, v23 & 0x3FFFFFFFFFFFFFFFLL, v225, v231);
                sub_1B0391D50(v225, v231);
                sub_1B0391D50(v225, v231);
                v101 = v225;
                v102 = v231;
LABEL_269:
                sub_1B0391D50(v101, v102);
                v75 = v234;
                v76 = v237;
                if (v223)
                {
                  goto LABEL_120;
                }

LABEL_7:
                sub_1B0BD2F90(&v257);
LABEL_8:
                v14 = v248;
LABEL_9:
                v18 = v249;
                v15 = v248 + 56;
                goto LABEL_10;
              }

              if (v38 == 2)
              {
                v220 = *(v257 + 24);
                v222 = *(v257 + 16);
                v100 = *v3;
                sub_1B03B2000(v33, v32);
                sub_1B03B2000(v100, v231);
                sub_1B0BD6700(&v257, &v252);
                sub_1B03B2000(v100, v231);
                v223 = sub_1B0AB87A0(v222, v220, v23 & 0x3FFFFFFFFFFFFFFFLL, v225, v231);
                sub_1B0391D50(v225, v231);
                sub_1B0391D50(v225, v231);
                v101 = v225;
                v102 = v231;
                goto LABEL_269;
              }

              *&v251[6] = 0;
              *v251 = 0;
              v71 = v32;
              v72 = v33;
              sub_1B03B2000(v33, v32);
              sub_1B0BD6700(&v257, &v252);
              sub_1B03B2000(v72, v71);
LABEL_272:
              sub_1B0AE2440(v251, v72, v71, &v252);
              sub_1B0391D50(v72, v231);
              sub_1B0391D50(v225, v231);
              v75 = v234;
              v76 = v237;
              if ((v252 & 1) == 0)
              {
                goto LABEL_7;
              }

LABEL_120:
              v77 = v24 >> 62;
              if (v24 >> 62 == 3)
              {
                v78 = 0;
                if (v25)
                {
                  goto LABEL_251;
                }

                if (v24 != 0xC000000000000000)
                {
                  goto LABEL_251;
                }

                if (v76 >> 62 != 3)
                {
                  goto LABEL_251;
                }

                v78 = 0;
                if (v75 || v76 != 0xC000000000000000)
                {
                  goto LABEL_251;
                }

LABEL_325:
                v178 = v244 >> 62;
                v179 = v243 >> 62;
                if (v244 >> 62 == 3)
                {
                  v180 = 0;
                  v181 = v242;
                  if (v242)
                  {
                    goto LABEL_340;
                  }

                  if (v244 != 0xC000000000000000)
                  {
                    goto LABEL_340;
                  }

                  if (v243 >> 62 != 3)
                  {
                    goto LABEL_340;
                  }

                  v180 = 0;
                  if (v241 || v243 != 0xC000000000000000)
                  {
                    goto LABEL_340;
                  }
                }

                else
                {
                  v181 = v242;
                  if (v178 == 2)
                  {
                    v183 = *(v242 + 16);
                    v182 = *(v242 + 24);
                    v57 = __OFSUB__(v182, v183);
                    v180 = v182 - v183;
                    if (v57)
                    {
                      goto LABEL_451;
                    }
                  }

                  else if (v178 == 1)
                  {
                    LODWORD(v180) = HIDWORD(v242) - v242;
                    if (__OFSUB__(HIDWORD(v242), v242))
                    {
                      goto LABEL_450;
                    }

                    v180 = v180;
                  }

                  else
                  {
                    v180 = BYTE6(v244);
                  }

LABEL_340:
                  if (v179 > 1)
                  {
                    if (v179 != 2)
                    {
                      if (v180)
                      {
                        goto LABEL_7;
                      }

                      goto LABEL_354;
                    }

                    v186 = *(v241 + 16);
                    v185 = *(v241 + 24);
                    v57 = __OFSUB__(v185, v186);
                    v184 = v185 - v186;
                    if (v57)
                    {
                      goto LABEL_444;
                    }
                  }

                  else if (v179)
                  {
                    LODWORD(v184) = HIDWORD(v241) - v241;
                    if (__OFSUB__(HIDWORD(v241), v241))
                    {
                      goto LABEL_445;
                    }

                    v184 = v184;
                  }

                  else
                  {
                    v184 = BYTE6(v243);
                  }

                  if (v180 != v184)
                  {
                    goto LABEL_7;
                  }

                  if (v180 >= 1)
                  {
                    sub_1B03B2000(v241, v243);
                    if ((sub_1B0AB8610(v181, v244, v241, v243) & 1) == 0)
                    {
                      goto LABEL_7;
                    }
                  }
                }

LABEL_354:
                v187 = v26 & 0xCFFFFFFFFFFFFFFFLL;
                v188 = v30 & 0xCFFFFFFFFFFFFFFFLL;
                v189 = v26 >> 62;
                v190 = v30 >> 62;
                if (v26 >> 62 == 3)
                {
                  v191 = 0;
                  v192 = v240;
                  if (v240)
                  {
                    goto LABEL_369;
                  }

                  if (v187 != 0xC000000000000000)
                  {
                    goto LABEL_369;
                  }

                  if (v30 >> 62 != 3)
                  {
                    goto LABEL_369;
                  }

                  v191 = 0;
                  if (v230 || v188 != 0xC000000000000000)
                  {
                    goto LABEL_369;
                  }
                }

                else
                {
                  if (v189 == 2)
                  {
                    v192 = v240;
                    v194 = *(v240 + 16);
                    v193 = *(v240 + 24);
                    v57 = __OFSUB__(v193, v194);
                    v191 = v193 - v194;
                    if (v57)
                    {
                      goto LABEL_459;
                    }
                  }

                  else if (v189 == 1)
                  {
                    v192 = v240;
                    LODWORD(v191) = HIDWORD(v240) - v240;
                    if (__OFSUB__(HIDWORD(v240), v240))
                    {
                      goto LABEL_458;
                    }

                    v191 = v191;
                  }

                  else
                  {
                    v191 = BYTE6(v26);
                    v192 = v240;
                  }

LABEL_369:
                  if (v190 > 1)
                  {
                    if (v190 != 2)
                    {
                      if (v191)
                      {
                        goto LABEL_7;
                      }

                      goto LABEL_383;
                    }

                    v197 = *(v230 + 16);
                    v196 = *(v230 + 24);
                    v57 = __OFSUB__(v196, v197);
                    v195 = v196 - v197;
                    if (v57)
                    {
                      goto LABEL_456;
                    }
                  }

                  else if (v190)
                  {
                    LODWORD(v195) = HIDWORD(v230) - v230;
                    if (__OFSUB__(HIDWORD(v230), v230))
                    {
                      goto LABEL_457;
                    }

                    v195 = v195;
                  }

                  else
                  {
                    v195 = BYTE6(v30);
                  }

                  if (v191 != v195)
                  {
                    goto LABEL_7;
                  }

                  if (v191 >= 1)
                  {
                    sub_1B03B2000(v230, v30 & 0xCFFFFFFFFFFFFFFFLL);
                    if ((sub_1B0AB8610(v192, v187, v230, v188) & 1) == 0)
                    {
                      goto LABEL_7;
                    }
                  }
                }

LABEL_383:
                v198 = v31 & 0xCFFFFFFFFFFFFFFFLL;
                v199 = v31 >> 62;
                v200 = v228 >> 62;
                if (v31 >> 62 == 3)
                {
                  v97 = 0;
                  v201 = v227;
                  if (!v227 && v198 == 0xC000000000000000 && v228 >> 62 == 3)
                  {
                    v97 = 0;
                    if (!v229 && (v228 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
                    {
                      goto LABEL_411;
                    }
                  }
                }

                else if (v199 == 2)
                {
                  v201 = v227;
                  v203 = *(v227 + 16);
                  v202 = *(v227 + 24);
                  v57 = __OFSUB__(v202, v203);
                  v97 = v202 - v203;
                  if (v57)
                  {
                    goto LABEL_463;
                  }
                }

                else if (v199 == 1)
                {
                  LODWORD(v97) = HIDWORD(v227) - v227;
                  if (__OFSUB__(HIDWORD(v227), v227))
                  {
                    __break(1u);
LABEL_463:
                    __break(1u);
                    sub_1B0BD2F90(v3);
                    sub_1B0BD2F90(v3);
                    v254 = v272;
                    *&v255 = v273;
                    v256 = v274;
                    v252 = v270;
                    v253 = v271;
                    *(&v255 + 1) = *(&v273 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                    sub_1B0BE8F74(&v252);

                    __break(1u);
                    return;
                  }

                  v201 = v227;
                  v97 = v97;
                }

                else
                {
                  v201 = v227;
                  v97 = BYTE6(v31);
                }

                if (v200 <= 1)
                {
                  v204 = v229;
                  if (v200)
                  {
                    LODWORD(v205) = HIDWORD(v229) - v229;
                    if (__OFSUB__(HIDWORD(v229), v229))
                    {
                      goto LABEL_461;
                    }

                    v205 = v205;
                  }

                  else
                  {
                    v205 = BYTE6(v228);
                  }

LABEL_407:
                  if (v97 != v205)
                  {
                    goto LABEL_7;
                  }

                  if (v97 < 1)
                  {
                    goto LABEL_411;
                  }

                  v208 = v204;
                  sub_1B03B2000(v204, v228 & 0xCFFFFFFFFFFFFFFFLL);
                  v138 = v201;
                  v139 = v198;
                  v140 = v208;
                  v141 = v228 & 0xCFFFFFFFFFFFFFFFLL;
LABEL_246:
                  v142 = sub_1B0AB8610(v138, v139, v140, v141);
                  sub_1B0BD2F90(&v257);
                  if (v142)
                  {
                    goto LABEL_412;
                  }

                  goto LABEL_8;
                }

                v204 = v229;
                if (v200 == 2)
                {
                  v207 = *(v229 + 16);
                  v206 = *(v229 + 24);
                  v57 = __OFSUB__(v206, v207);
                  v205 = v206 - v207;
                  if (v57)
                  {
                    goto LABEL_460;
                  }

                  goto LABEL_407;
                }

LABEL_6:
                if (!v97)
                {
                  goto LABEL_411;
                }

                goto LABEL_7;
              }

              if (v77 > 1)
              {
                if (v77 == 2)
                {
                  v99 = *(v25 + 16);
                  v98 = *(v25 + 24);
                  v57 = __OFSUB__(v98, v99);
                  v78 = v98 - v99;
                  if (v57)
                  {
                    goto LABEL_440;
                  }
                }

                else
                {
                  v78 = 0;
                }
              }

              else if (v77)
              {
                LODWORD(v78) = HIDWORD(v25) - v25;
                if (__OFSUB__(HIDWORD(v25), v25))
                {
                  goto LABEL_441;
                }

                v78 = v78;
              }

              else
              {
                v78 = BYTE6(v24);
              }

LABEL_251:
              v143 = v76 >> 62;
              if ((v76 >> 62) > 1)
              {
                if (v143 != 2)
                {
                  if (v78)
                  {
                    goto LABEL_7;
                  }

                  goto LABEL_325;
                }

                v146 = *(v75 + 16);
                v145 = *(v75 + 24);
                v57 = __OFSUB__(v145, v146);
                v144 = v145 - v146;
                if (v57)
                {
                  goto LABEL_432;
                }
              }

              else if (v143)
              {
                LODWORD(v144) = HIDWORD(v75) - v75;
                if (__OFSUB__(HIDWORD(v75), v75))
                {
                  goto LABEL_431;
                }

                v144 = v144;
              }

              else
              {
                v144 = BYTE6(v76);
              }

              if (v78 != v144)
              {
                goto LABEL_7;
              }

              if (v78 < 1)
              {
                goto LABEL_325;
              }

              if (v77 > 1)
              {
                if (v77 != 2)
                {
                  *(&v252 + 6) = 0;
                  *&v252 = 0;
                  v147 = v76;
                  v148 = v75;
                  sub_1B03B2000(v75, v76);
                  sub_1B03B2000(v148, v147);
LABEL_324:
                  sub_1B0AE2440(&v252, v148, v147, v251);
                  sub_1B0391D50(v148, v147);
                  sub_1B0391D50(v148, v147);
                  if ((v251[0] & 1) == 0)
                  {
                    goto LABEL_7;
                  }

                  goto LABEL_325;
                }

                v156 = *(v25 + 24);
                v233 = *(v25 + 16);
              }

              else
              {
                if (!v77)
                {
                  *&v252 = v25;
                  WORD4(v252) = v24;
                  BYTE10(v252) = BYTE2(v24);
                  BYTE11(v252) = BYTE3(v24);
                  BYTE12(v252) = BYTE4(v24);
                  BYTE13(v252) = BYTE5(v24);
                  v147 = v76;
                  v148 = v75;
                  sub_1B03B2000(v75, v76);
                  sub_1B03B2000(v148, v147);
                  goto LABEL_324;
                }

                v156 = v25 >> 32;
                v233 = v25;
                if (v25 >> 32 < v25)
                {
                  goto LABEL_455;
                }
              }

              v175 = v76;
              v176 = v75;
              sub_1B03B2000(v75, v76);
              sub_1B03B2000(v176, v175);
              sub_1B03B2000(v176, v175);
              v177 = sub_1B0AB87A0(v233, v156, v24 & 0x3FFFFFFFFFFFFFFFLL, v176, v175);
              sub_1B0391D50(v176, v175);
              sub_1B0391D50(v176, v175);
              sub_1B0391D50(v176, v175);
              if ((v177 & 1) == 0)
              {
                goto LABEL_7;
              }

              goto LABEL_325;
            }
          }

          else if (v39)
          {
LABEL_118:
            v14 = v248;
            goto LABEL_10;
          }

LABEL_119:
          v229 = *(v3 + 8);
          v230 = *(v3 + 6);
          v227 = v261;
          v228 = *(v3 + 9);
          v254 = v259;
          *&v255 = v260;
          v256 = v261;
          v252 = v257;
          v253 = v258;
          *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
          v73 = v35;
          v74 = v34;
          sub_1B0BD1224(&v252, v251);
          v75 = v74;
          v76 = v73;
          goto LABEL_120;
        }

        if (!v67)
        {
          v68 = BYTE6(v32);
          goto LABEL_109;
        }

        v14 = v248;
        if (__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_418;
        }

        if (v39 == HIDWORD(v33) - v33)
        {
          goto LABEL_113;
        }
      }

      else
      {
        if (((v36 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 2)
        {
          goto LABEL_10;
        }

        v44 = *(&v257 + 1) >> 62;
        if (*(&v257 + 1) >> 62 == 3)
        {
          v45 = 0;
          if (v257 == __PAIR128__(0xC000000000000000, 0) && v32 >> 62 == 3)
          {
            v45 = 0;
            if (!v33 && v32 == 0xC000000000000000)
            {
              goto LABEL_413;
            }
          }
        }

        else if (v44 > 1)
        {
          if (v44 == 2)
          {
            v62 = *(v257 + 16);
            v61 = *(v257 + 24);
            v57 = __OFSUB__(v61, v62);
            v45 = v61 - v62;
            if (v57)
            {
              goto LABEL_426;
            }
          }

          else
          {
            v45 = 0;
          }
        }

        else if (v44)
        {
          LODWORD(v45) = DWORD1(v257) - v257;
          if (__OFSUB__(DWORD1(v257), v257))
          {
            goto LABEL_428;
          }

          v45 = v45;
        }

        else
        {
          v45 = BYTE14(v257);
        }

        v79 = v32 >> 62;
        if ((v32 >> 62) <= 1)
        {
          if (v79)
          {
            if (__OFSUB__(HIDWORD(v33), v33))
            {
              goto LABEL_416;
            }

            if (v45 != HIDWORD(v33) - v33)
            {
              goto LABEL_10;
            }
          }

          else if (v45 != BYTE6(v32))
          {
            goto LABEL_10;
          }

LABEL_141:
          if (v45 < 1)
          {
            goto LABEL_413;
          }

          if (v44 > 1)
          {
            v86 = *v3;
            v83 = *(v3 + 1);
            if (v44 == 2)
            {
              v87 = *(v257 + 16);
              v88 = *(v257 + 24);
LABEL_217:
              sub_1B0BD6700(v3, &v252);
              sub_1B0BD6700(v3, &v252);
              sub_1B0BD6700(v3, &v252);
              sub_1B0BD6700(&v257, &v252);
              v123 = sub_1B0AB87A0(v87, v88, v23 & 0x3FFFFFFFFFFFFFFFLL, v86, v83);
              sub_1B0BD2F90(v3);
              sub_1B0BD2F90(&v257);
              sub_1B0BD2F90(v3);
              sub_1B0BD2F90(v3);
              goto LABEL_314;
            }

            *&v251[6] = 0;
            *v251 = 0;
            sub_1B0BD6700(v3, &v252);
            sub_1B0BD6700(v3, &v252);
            sub_1B0BD6700(&v257, &v252);
            v85 = v86;
          }

          else
          {
            if (v44)
            {
              v87 = v257;
              v88 = v257 >> 32;
              if (v257 >> 32 < v257)
              {
                goto LABEL_435;
              }

              v86 = *v3;
              v83 = *(v3 + 1);
              goto LABEL_217;
            }

            *v251 = v257;
            *&v251[8] = DWORD2(v257);
            *&v251[12] = WORD6(v257);
            v83 = v32;
            v84 = v33;
            sub_1B0BD6700(v3, &v252);
            sub_1B0BD6700(v3, &v252);
            sub_1B0BD6700(&v257, &v252);
            v85 = v84;
          }

          sub_1B0AE2440(v251, v85, v83, &v252);
          sub_1B0BD2F90(&v257);
          sub_1B0BD2F90(v3);
          sub_1B0BD2F90(v3);
          v124 = v252;
LABEL_318:
          v14 = v248;
          v18 = v249;
          v15 = v248 + 56;
          if (v124)
          {
            goto LABEL_413;
          }

          goto LABEL_10;
        }

        if (v79 != 2)
        {
          if (!v45)
          {
            goto LABEL_413;
          }

          goto LABEL_10;
        }

        v81 = *(v33 + 16);
        v80 = *(v33 + 24);
        v57 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v57)
        {
          __break(1u);
LABEL_416:
          __break(1u);
LABEL_417:
          __break(1u);
LABEL_418:
          __break(1u);
LABEL_419:
          __break(1u);
LABEL_420:
          __break(1u);
LABEL_421:
          __break(1u);
LABEL_422:
          __break(1u);
LABEL_423:
          __break(1u);
LABEL_424:
          __break(1u);
LABEL_425:
          __break(1u);
LABEL_426:
          __break(1u);
LABEL_427:
          __break(1u);
LABEL_428:
          __break(1u);
LABEL_429:
          __break(1u);
LABEL_430:
          __break(1u);
LABEL_431:
          __break(1u);
LABEL_432:
          __break(1u);
LABEL_433:
          __break(1u);
LABEL_434:
          __break(1u);
LABEL_435:
          __break(1u);
LABEL_436:
          __break(1u);
LABEL_437:
          __break(1u);
LABEL_438:
          __break(1u);
LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          __break(1u);
LABEL_442:
          __break(1u);
LABEL_443:
          __break(1u);
LABEL_444:
          __break(1u);
LABEL_445:
          __break(1u);
LABEL_446:
          __break(1u);
LABEL_447:
          __break(1u);
LABEL_448:
          __break(1u);
LABEL_449:
          __break(1u);
LABEL_450:
          __break(1u);
LABEL_451:
          __break(1u);
LABEL_452:
          __break(1u);
LABEL_453:
          __break(1u);
LABEL_454:
          __break(1u);
LABEL_455:
          __break(1u);
LABEL_456:
          __break(1u);
LABEL_457:
          __break(1u);
LABEL_458:
          __break(1u);
LABEL_459:
          __break(1u);
LABEL_460:
          __break(1u);
LABEL_461:
          __break(1u);
        }

        if (v45 == v82)
        {
          goto LABEL_141;
        }
      }

LABEL_10:
      v17 = (v17 + 1) & v18;
      if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_410;
      }
    }

    if (v37 > 4)
    {
      v40 = (v30 >> 61) & 1;
      v41 = v36 >> 59;
      if (v37 == 5)
      {
        if ((v41 & 6 | v40) != 5)
        {
          goto LABEL_10;
        }
      }

      else if ((v41 & 6 | v40) != 6)
      {
        goto LABEL_10;
      }

LABEL_59:
      if (v257 == __PAIR128__(v32, v33))
      {
        goto LABEL_466;
      }

      v49 = *(v3 + 2);
      v50 = *v3;
      v51 = *(v3 + 3);
      v52 = *(v3 + 1);
      v53 = sub_1B0E46A78();
      v34 = v49;
      v35 = v51;
      v18 = v249;
      v15 = v248 + 56;
      if (v53)
      {
LABEL_466:
        if (v25 == v34 && v24 == v35)
        {
          goto LABEL_413;
        }

        v54 = sub_1B0E46A78();
        v18 = v249;
        v15 = v248 + 56;
        if (v54)
        {
          goto LABEL_413;
        }
      }

      goto LABEL_10;
    }

    if (v37 == 3)
    {
      if (((v36 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 3)
      {
        goto LABEL_10;
      }

      goto LABEL_59;
    }

    if (((v36 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 4)
    {
      goto LABEL_10;
    }

    v46 = *(&v257 + 1) >> 62;
    v47 = v32 >> 62;
    if (*(&v257 + 1) >> 62 == 3)
    {
      v48 = 0;
      if (v257 == __PAIR128__(0xC000000000000000, 0) && v32 >> 62 == 3)
      {
        v48 = 0;
        if (!v33 && v32 == 0xC000000000000000)
        {
          goto LABEL_163;
        }
      }
    }

    else if (v46 > 1)
    {
      if (v46 != 2)
      {
        v48 = 0;
        if (v47 > 1)
        {
LABEL_74:
          if (v47 == 2)
          {
            v56 = *(v33 + 16);
            v55 = *(v33 + 24);
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            if (v57)
            {
              goto LABEL_419;
            }

LABEL_154:
            v14 = v248;
            if (v48 != v58)
            {
              goto LABEL_10;
            }

LABEL_158:
            if (v48 >= 1)
            {
              v238 = *(v3 + 3);
              if (v46 > 1)
              {
                v235 = *(v3 + 2);
                if (v46 == 2)
                {
                  v103 = *(v257 + 16);
                  v104 = *(v257 + 24);
                  v105 = *(v3 + 1);
                  v106 = *v3;
                  sub_1B03B2000(v33, v32);
                  sub_1B03B2000(v106, v105);
                  sub_1B0BD6700(&v257, &v252);
                  sub_1B03B2000(v106, v105);
                  v107 = sub_1B0AB87A0(v103, v104, v23 & 0x3FFFFFFFFFFFFFFFLL, v106, v105);
                  sub_1B0391D50(v106, v105);
                  sub_1B0391D50(v106, v105);
                  v108 = v106;
                  v109 = v105;
                  goto LABEL_276;
                }

                *&v251[6] = 0;
                *v251 = 0;
                v154 = v32;
                v155 = v33;
                sub_1B03B2000(v33, v32);
                sub_1B0BD6700(&v257, &v252);
                sub_1B03B2000(v155, v154);
                sub_1B0AE2440(v251, v155, v154, &v252);
                sub_1B0391D50(v155, v154);
                sub_1B0391D50(v155, v154);
                v93 = v235;
                v92 = v238;
                if ((v252 & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

              else
              {
                if (!v46)
                {
                  v89 = *(v3 + 2);
                  *v251 = v257;
                  *&v251[8] = WORD4(v257);
                  *&v251[10] = *(&v257 + 10);
                  v90 = v32;
                  v91 = v33;
                  sub_1B03B2000(v33, v32);
                  sub_1B0BD6700(&v257, &v252);
                  sub_1B03B2000(v91, v90);
                  sub_1B0AE2440(v251, v91, v90, &v252);
                  sub_1B0391D50(v91, v90);
                  sub_1B0391D50(v91, v90);
                  v92 = v238;
                  v93 = v89;
                  if ((v252 & 1) == 0)
                  {
                    goto LABEL_7;
                  }

                  goto LABEL_164;
                }

                v235 = *(v3 + 2);
                v150 = v257;
                v151 = v257 >> 32;
                if (v257 >> 32 < v257)
                {
                  goto LABEL_443;
                }

                v152 = *(v3 + 1);
                v153 = *v3;
                sub_1B03B2000(v33, v32);
                sub_1B03B2000(v153, v152);
                sub_1B0BD6700(&v257, &v252);
                sub_1B03B2000(v153, v152);
                v107 = sub_1B0AB87A0(v150, v151, v23 & 0x3FFFFFFFFFFFFFFFLL, v153, v152);
                sub_1B0391D50(v153, v152);
                sub_1B0391D50(v153, v152);
                v108 = v153;
                v109 = v152;
LABEL_276:
                sub_1B0391D50(v108, v109);
                v93 = v235;
                v92 = v238;
                if ((v107 & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

LABEL_164:
              v95 = v24 >> 62;
              v96 = v92 >> 62;
              if (v24 >> 62 == 3)
              {
                v97 = 0;
                if (!v25 && v24 == 0xC000000000000000 && v92 >> 62 == 3)
                {
                  v97 = 0;
                  if (!v93 && v92 == 0xC000000000000000)
                  {
                    goto LABEL_411;
                  }
                }
              }

              else if (v95 == 2)
              {
                v133 = *(v25 + 16);
                v132 = *(v25 + 24);
                v57 = __OFSUB__(v132, v133);
                v97 = v132 - v133;
                if (v57)
                {
                  goto LABEL_438;
                }
              }

              else if (v95 == 1)
              {
                LODWORD(v97) = HIDWORD(v25) - v25;
                if (__OFSUB__(HIDWORD(v25), v25))
                {
                  goto LABEL_439;
                }

                v97 = v97;
              }

              else
              {
                v97 = BYTE6(v24);
              }

              if (v96 > 1)
              {
                if (v96 != 2)
                {
                  goto LABEL_6;
                }

                v136 = *(v93 + 16);
                v135 = *(v93 + 24);
                v57 = __OFSUB__(v135, v136);
                v134 = v135 - v136;
                if (v57)
                {
                  goto LABEL_430;
                }
              }

              else if (v96)
              {
                LODWORD(v134) = HIDWORD(v93) - v93;
                if (__OFSUB__(HIDWORD(v93), v93))
                {
                  goto LABEL_429;
                }

                v134 = v134;
              }

              else
              {
                v134 = BYTE6(v92);
              }

              if (v97 != v134)
              {
                goto LABEL_7;
              }

              if (v97 < 1)
              {
                goto LABEL_411;
              }

              v137 = v93;
              sub_1B03B2000(v93, v92);
              v138 = v25;
              v139 = v24;
              v140 = v137;
              v141 = v92;
              goto LABEL_246;
            }
          }

          else if (v48)
          {
            goto LABEL_118;
          }

LABEL_163:
          v254 = v259;
          *&v255 = v260;
          v256 = v261;
          v252 = v257;
          v253 = v258;
          *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
          v92 = v35;
          v94 = v34;
          sub_1B0BD1224(&v252, v251);
          v93 = v94;
          goto LABEL_164;
        }

        goto LABEL_152;
      }

      v64 = *(v257 + 16);
      v63 = *(v257 + 24);
      v57 = __OFSUB__(v63, v64);
      v48 = v63 - v64;
      if (v57)
      {
        goto LABEL_425;
      }
    }

    else
    {
      if (!v46)
      {
        v48 = BYTE14(v257);
        if (v47 > 1)
        {
          goto LABEL_74;
        }

LABEL_152:
        if (!v47)
        {
          v58 = BYTE6(v32);
          goto LABEL_154;
        }

        v14 = v248;
        if (__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_417;
        }

        if (v48 == HIDWORD(v33) - v33)
        {
          goto LABEL_158;
        }

        goto LABEL_10;
      }

      LODWORD(v48) = DWORD1(v257) - v257;
      if (__OFSUB__(DWORD1(v257), v257))
      {
        goto LABEL_427;
      }

      v48 = v48;
    }

    if (v47 > 1)
    {
      goto LABEL_74;
    }

    goto LABEL_152;
  }

LABEL_410:
  v209 = *v246;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v252 = *v246;
  sub_1B0BD6700(v3, &v257);
  sub_1B0C215F0(v3, v17, isUniquelyReferenced_nonNull_native);
  *v246 = v252;
  v211 = v3[3];
  a1[2] = v3[2];
  a1[3] = v211;
  a1[4] = v3[4];
  v212 = v3[1];
  *a1 = *v3;
  a1[1] = v212;
LABEL_414:
  v219 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B0C1FA20(_DWORD *a1, uint64_t a2)
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
    while (*(*(v5 + 48) + 4 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1B0C231B0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B0C1FB18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if ((a5 & 1) == 0)
  {
    MEMORY[0x1B2728DB0](a4 >> 14);
  }

  v12 = sub_1B0E46CB8();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v30 = v10;
    v17 = *(v10 + 48);
    do
    {
      v18 = v17 + 32 * v15;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *v18 == a2 && *(v18 + 8) == a3;
      if (v21 || (sub_1B0E46A78() & 1) != 0)
      {
        if (v20)
        {
          if (a5)
          {
            goto LABEL_15;
          }
        }

        else if ((a5 & 1) == 0 && !((v19 ^ a4) >> 14))
        {
LABEL_15:

          v22 = *(v30 + 48) + 32 * v15;
          v24 = *v22;
          v23 = *(v22 + 8);
          v25 = *(v22 + 16);
          LOBYTE(v22) = *(v22 + 24);
          *a1 = v24;
          *(a1 + 8) = v23;
          *(a1 + 16) = v25;
          *(a1 + 24) = v22;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          return 0;
        }
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  v27 = *v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v31;
  v29 = a5 & 1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C232FC(a2, a3, a4, v29, v15, isUniquelyReferenced_nonNull_native);
  *v31 = v33;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = v29;
  return 1;
}

uint64_t sub_1B0C1FD08(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2);
  v7 = sub_1B0E46CB8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1B0C234F0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B0C1FE38(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2);
  v11 = sub_1B0E46CB8();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_1B0C2363C(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL sub_1B0C1FF58()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  v3 = sub_1B0E46CB8() & ~(-1 << *(v1 + 32));
  v4 = (1 << v3) & *(v1 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v4)
  {
    v5 = *v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v0;
    sub_1B0C237AC(v3, isUniquelyReferenced_nonNull_native);
    *v0 = v8;
  }

  return v4 == 0;
}

unint64_t sub_1B0C2000C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5830, &qword_1B0ED9080);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1B0C211CC(*v16, *(v16 + 8), *(v16 + 16), v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v16 = *(v3 + 48) + 24 * (v13 | (v7 << 6));
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      bzero((v3 + 56), ((v17 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v17;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B0C2017C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5848, &qword_1B0ED9098);
  v5 = sub_1B0E46208();
  if (*(v3 + 16))
  {
    v6 = 0;
    result = v3 + 56;
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
    v40 = v2;
    v41 = (v8 + 63) >> 6;
    v11 = v5 + 56;
    v43 = v3 + 56;
    v44 = v3;
    v45 = v5;
    while (1)
    {
      if (!v10)
      {
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_49;
          }

          if (v6 >= v41)
          {
            break;
          }

          v16 = *(result + 8 * v6);
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v46 = (v16 - 1) & v16;
            goto LABEL_17;
          }
        }

        v39 = 1 << *(v3 + 32);
        if (v39 >= 64)
        {
          bzero(result, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *result = -1 << v39;
        }

        v2 = v40;
        *(v3 + 16) = 0;
        break;
      }

      v14 = __clz(__rbit64(v10));
      v46 = (v10 - 1) & v10;
LABEL_17:
      v17 = (*(v3 + 48) + 80 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      v21 = v17[2];
      v20 = v17[3];
      v22 = v17[4];
      v23 = v17[7];
      v49 = v17[6];
      v24 = v17[9];
      v47 = v17[5];
      v48 = v17[8];
      v25 = *(v5 + 40);
      sub_1B0E46C28();
      v50 = v24;
      if ((v23 & 0x1000000000000000) == 0)
      {
        MEMORY[0x1B2728D70](0);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v26 = v19;
        v27 = v22;
        v28 = v47;
        goto LABEL_34;
      }

      v42 = v18;
      v29 = v19;
      MEMORY[0x1B2728D70](1);
      v30 = (v24 >> 59) & 6 | ((v23 & 0x2000000000000000) != 0);
      if (v30 <= 2)
      {
        v27 = v22;
        if (v30)
        {
          v28 = v47;
          if (v30 == 1)
          {
            MEMORY[0x1B2728D70](1);
            v26 = v29;
            v18 = v42;
            sub_1B0E42F48();
            sub_1B0E42F48();
            sub_1B0E42F48();
            sub_1B0E42F48();
          }

          else
          {
            MEMORY[0x1B2728D70](2);
            v26 = v29;
            v18 = v42;
          }

          sub_1B0E42F48();
        }

        else
        {
          MEMORY[0x1B2728D70](0);
          v26 = v29;
          v18 = v42;
          sub_1B0E42F48();
          sub_1B0E42F48();
          v28 = v47;
        }
      }

      else
      {
        v27 = v22;
        if (v30 > 4)
        {
          v28 = v47;
          if (v30 == 5)
          {
            v31 = 5;
          }

          else
          {
            v31 = 6;
          }
        }

        else
        {
          v28 = v47;
          if (v30 != 3)
          {
            MEMORY[0x1B2728D70](4);
            v26 = v29;
            v18 = v42;
            sub_1B0E42F48();
            sub_1B0E42F48();
            goto LABEL_34;
          }

          v31 = 3;
        }

        MEMORY[0x1B2728D70](v31);
        v26 = v29;
        v18 = v42;
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

LABEL_34:
      result = sub_1B0E46CB8();
      v5 = v45;
      v32 = -1 << *(v45 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v11 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v11 + 8 * v34);
          if (v38 != -1)
          {
            v12 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_49:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v33) & ~*(v11 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v45 + 48) + 80 * v12);
      *v13 = v26;
      v13[1] = v18;
      v13[2] = v21;
      v13[3] = v20;
      v13[4] = v27;
      v13[5] = v28;
      v13[6] = v49;
      v13[7] = v23;
      v13[8] = v48;
      v13[9] = v50;
      ++*(v45 + 16);
      result = v43;
      v3 = v44;
      v10 = v46;
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B0C20610(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54B8, ":&\t");
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B0C20860(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5568, &qword_1B0ED2730);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
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
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v6 + 40);
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v36 = v23;
      if (v23 == 1)
      {
        v25 = v22;
        sub_1B0E46C68();
      }

      else
      {
        sub_1B0E46C68();
        v25 = v22;
        MEMORY[0x1B2728DB0](v22 >> 14);
      }

      result = sub_1B0E46CB8();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 32 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v25;
      *(v15 + 24) = v36;
      ++*(v6 + 16);
      v3 = v35;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B0C20B1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5850, &qword_1B0ED90A0);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v18);
      result = sub_1B0E46CB8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}