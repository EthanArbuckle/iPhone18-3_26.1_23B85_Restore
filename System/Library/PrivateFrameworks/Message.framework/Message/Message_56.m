uint64_t sub_1B0B36A5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 56) + 24 * v13);
    v15 = *(v14 + 1);
    v16 = v14[16];
    v17 = *a4;
    v18 = a4[1];
    v19 = *v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v19) = SyncRequest.includes(_:)(v17, v18, v19, v15);

    if (v19)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_1B0B22418(v22, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1B0B22418(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B36BCC(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    sub_1B0B11A84(a2, v14);
    sub_1B0B11A84(a2, v14);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v10 = swift_slowAlloc();
      sub_1B0B11A84(a2, v14);
      v9 = sub_1B0B353C8(v10, v6, a1, a2);
      MEMORY[0x1B272C230](v10, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    sub_1B0B11A84(a2, v14);
    v8 = sub_1B0B11A84(a2, v14);
  }

  MEMORY[0x1EEE9AC00](v8);
  bzero(&v14[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v7);
  sub_1B0B11A84(a2, v14);
  v9 = sub_1B0B36A5C(&v14[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v6, a1, a2);
  sub_1B0B11AE0(a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_8:
  sub_1B0B11AE0(a2);
  sub_1B0B11AE0(a2);
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1B0B36DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a2;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC0];
  sub_1B0B09D24(0, v5, 0);
  v7 = v70;
  v37 = v5;
  if (v5)
  {
    v8 = 0;
    v36 = a1 + 32;
    do
    {
      v9 = (v36 + 96 * v8);
      v10 = v9[3];
      v73 = v9[2];
      v74 = v10;
      v75[0] = v9[4];
      *(v75 + 9) = *(v9 + 73);
      v11 = v9[1];
      v71 = *v9;
      v72 = v11;
      sub_1B0B11A84(&v71, v50);
      sub_1B0B11A84(&v71, v50);
      v12 = sub_1B0B36BCC(v76, &v71);
      sub_1B0B11AE0(&v71);
      v13 = sub_1B0B24714(v12);

      v14 = *(v13 + 16);
      v15 = sub_1B03ABAA0();
      v16 = MEMORY[0x1B2727570](v14, &type metadata for SyncRequest.ID, v15);
      *&v50[0] = v16;
      if (v14)
      {
        v17 = 32;
        do
        {
          sub_1B03FF318(&v39, *(v13 + v17));
          v17 += 4;
          --v14;
        }

        while (v14);

        v18 = *&v50[0];
      }

      else
      {
        v18 = v16;
      }

      sub_1B0B11A84(&v71, v50);
      v19 = Set<>.makeNonEmpty()(v18);

      v20 = *(a3 + 72);
      *(a3 + 72) = (v20 + 1) & 0xFFFFFF;
      v67 = v73;
      v68 = v74;
      *v69 = v75[0];
      *&v69[9] = *(v75 + 9);
      v65 = v71;
      v66 = v72;
      if (BYTE4(v73) & 1) != 0 || (v75[0])
      {
        v21 = 0;
        v22 = 0;
        v23 = 1;
      }

      else
      {
        v23 = 0;
        v21 = v73;
        v22 = *(&v74 + 1);
      }

      v41 = v67;
      v42 = v68;
      v43 = *v69;
      v44 = *&v69[16];
      v39 = v65;
      v40 = v66;
      v50[2] = v67;
      v50[3] = v68;
      v50[4] = *v69;
      v50[5] = *&v69[16];
      v64 = 1;
      v63 = v23;
      *&v45 = 0;
      DWORD2(v45) = 0;
      BYTE12(v45) = 1;
      *&v46 = v21;
      *(&v46 + 1) = v22;
      LOBYTE(v47) = v23;
      *(&v47 + 1) = v19;
      *&v48 = v6;
      *(&v48 + 1) = v6;
      *&v49 = 0;
      BYTE8(v49) = 2;
      HIDWORD(v49) = v20;
      v50[0] = v65;
      v50[1] = v66;
      v51 = 0;
      v52 = 0;
      v53 = 1;
      v54 = v21;
      v55 = v22;
      v56 = v23;
      v57 = v19;
      v58 = v6;
      v59 = v6;
      v60 = 0;
      v61 = 2;
      v62 = v20;
      sub_1B03A35B8(&v39, v38);
      sub_1B03A3614(v50);
      sub_1B0B11AE0(&v71);
      v70 = v7;
      v25 = *(v7 + 16);
      v24 = *(v7 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B0B09D24((v24 > 1), v25 + 1, 1);
        v7 = v70;
      }

      ++v8;
      *(v7 + 16) = v25 + 1;
      v26 = (v7 + 176 * v25);
      v27 = v39;
      v28 = v41;
      v26[3] = v40;
      v26[4] = v28;
      v26[2] = v27;
      v29 = v42;
      v30 = v43;
      v31 = v45;
      v26[7] = v44;
      v26[8] = v31;
      v26[5] = v29;
      v26[6] = v30;
      v32 = v46;
      v33 = v47;
      v34 = v49;
      v26[11] = v48;
      v26[12] = v34;
      v26[9] = v32;
      v26[10] = v33;
    }

    while (v8 != v37);
  }

  return v7;
}

unint64_t sub_1B0B370D4(unint64_t result, char a2, uint64_t *a3)
{
  v51 = a3;
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    while (1)
    {
      *&v50[25] = *(v5 + 89);
      v13 = v5[5];
      *v50 = v5[4];
      *&v50[16] = v13;
      v14 = v5[3];
      v48 = v5[2];
      v49 = v14;
      v15 = v5[1];
      v46 = *v5;
      v47 = v15;
      v16 = v50[40];
      v44 = *&v50[32];
      v43 = *&v50[16];
      v42 = *v50;
      v40 = *(&v48 + 1);
      v41 = v49;
      v17 = *(&v15 + 1);
      v18 = v48;
      v19 = v15;
      v20 = DWORD2(v46);
      v21 = v46;
      result = sub_1B03B5C80(&v46, v45, &qword_1EB6E47B8, &qword_1B0EC5E98);
      if (!v21)
      {
        return result;
      }

      v39 = v16;
      v38 = v3;
      v22 = *v51;
      result = sub_1B03AB888(v21, v20);
      v24 = v22[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }

      v28 = v23;
      if (v22[3] < v27)
      {
        break;
      }

      if (a2)
      {
        goto LABEL_11;
      }

      v37 = result;
      sub_1B0B8E450();
      result = v37;
      if (v28)
      {
LABEL_3:
        v6 = *v51;
        v7 = result;

        v8 = v6[7] + 96 * v7;
        v9 = *(v8 + 16);
        v46 = *v8;
        v47 = v9;
        v11 = *(v8 + 48);
        v10 = *(v8 + 64);
        v12 = *(v8 + 32);
        *&v50[9] = *(v8 + 73);
        v49 = v11;
        *v50 = v10;
        v48 = v12;
        *v8 = v19;
        *(v8 + 8) = v17;
        *(v8 + 16) = v18;
        *(v8 + 24) = v40;
        *(v8 + 32) = v41;
        *(v8 + 48) = v42;
        *(v8 + 64) = v43;
        *(v8 + 80) = v44;
        *(v8 + 88) = v39;
        result = sub_1B0B11AE0(&v46);
        goto LABEL_4;
      }

LABEL_12:
      v32 = *v51;
      v32[(result >> 6) + 8] |= 1 << result;
      v33 = v32[6] + 16 * result;
      *v33 = v21;
      *(v33 + 8) = v20;
      v34 = v32[7] + 96 * result;
      *v34 = v19;
      *(v34 + 8) = v17;
      *(v34 + 16) = v18;
      *(v34 + 24) = v40;
      *(v34 + 32) = v41;
      *(v34 + 48) = v42;
      *(v34 + 64) = v43;
      *(v34 + 80) = v44;
      *(v34 + 88) = v39;
      v35 = v32[2];
      v26 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v32[2] = v36;
LABEL_4:
      v5 += 7;
      a2 = 1;
      v3 = v38 - 1;
      if (v38 == 1)
      {
        return result;
      }
    }

    v29 = v51;
    sub_1B0B31658(v27, a2 & 1);
    v30 = *v29;
    result = sub_1B03AB888(v21, v20);
    if ((v28 & 1) != (v31 & 1))
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v28)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  return result;
}

unint64_t sub_1B0B37370(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, void *a4)
{
  v4 = a4;
  v6 = a4[2];
  v98 = a4 + 2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B946F0(v6);
    v6 = result;
  }

  v8 = 0;
  v9 = *(a1 + 16);
  v68 = a1 + 32;
  v69 = v9;
  v66 = v4;
  while (1)
  {
    while (1)
    {
      *v98 = v6;
      if (v8 == v9)
      {
        v8 = v9;
        sub_1B0B379A4(v96);
        v10 = *v96;
        v11 = *&v96[8];
        *&v97[128] = *&v96[140];
        *&v97[144] = *&v96[156];
        *&v97[160] = *&v96[172];
        *&v97[176] = *&v96[188];
        *&v97[64] = *&v96[76];
        *&v97[80] = *&v96[92];
        *&v97[96] = *&v96[108];
        *&v97[112] = *&v96[124];
        *v97 = *&v96[12];
        *&v97[16] = *&v96[28];
        v12 = *&v96[44];
        v13 = *&v96[60];
      }

      else
      {
        if (v8 >= v9)
        {
          goto LABEL_36;
        }

        v14 = (v68 + 192 * v8);
        v15 = v14[9];
        v82[8] = v14[8];
        v82[9] = v15;
        v16 = v14[11];
        v82[10] = v14[10];
        v82[11] = v16;
        v17 = v14[5];
        v82[4] = v14[4];
        v82[5] = v17;
        v18 = v14[7];
        v82[6] = v14[6];
        v82[7] = v18;
        v19 = v14[1];
        v82[0] = *v14;
        v82[1] = v19;
        v20 = v14[3];
        v82[2] = v14[2];
        v82[3] = v20;
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_37;
        }

        v22 = v14[9];
        v78 = v14[8];
        v79 = v22;
        v23 = v14[11];
        v80 = v14[10];
        v81 = v23;
        v24 = v14[5];
        v74 = v14[4];
        v75 = v24;
        v25 = v14[7];
        v76 = v14[6];
        v77 = v25;
        v26 = v14[1];
        v70 = *v14;
        v71 = v26;
        v27 = v14[3];
        v72 = v14[2];
        v73 = v27;
        sub_1B03B5C80(v82, v96, &qword_1EB6E47B0, &qword_1B0EC5E90);
        a2(&v83, &v70);
        *&v95[128] = v91;
        *&v95[144] = v92;
        *&v95[160] = v93;
        *&v95[176] = v94;
        *&v95[64] = v87;
        *&v95[80] = v88;
        *&v95[96] = v89;
        *&v95[112] = v90;
        *v95 = v83;
        *&v95[16] = v84;
        *&v95[32] = v85;
        *&v95[48] = v86;
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v95);
        *&v96[128] = v78;
        *&v96[144] = v79;
        *&v96[160] = v80;
        *&v96[176] = v81;
        *&v96[64] = v74;
        *&v96[80] = v75;
        *&v96[96] = v76;
        *&v96[112] = v77;
        *v96 = v70;
        *&v96[16] = v71;
        *&v96[32] = v72;
        *&v96[48] = v73;
        sub_1B0398EFC(v96, &qword_1EB6E47B0, &qword_1B0EC5E90);
        v10 = *v95;
        v11 = *&v95[8];
        *&v97[128] = *&v95[140];
        *&v97[144] = *&v95[156];
        *&v97[160] = *&v95[172];
        *&v97[176] = *&v95[188];
        *&v97[64] = *&v95[76];
        *&v97[80] = *&v95[92];
        *&v97[96] = *&v95[108];
        *&v97[112] = *&v95[124];
        *v97 = *&v95[12];
        *&v97[16] = *&v95[28];
        v12 = *&v95[44];
        v13 = *&v95[60];
      }

      *&v97[32] = v12;
      *&v97[48] = v13;
      *&v96[140] = *&v97[128];
      *&v96[156] = *&v97[144];
      *&v96[172] = *&v97[160];
      *&v96[76] = *&v97[64];
      *&v96[92] = *&v97[80];
      *&v96[108] = *&v97[96];
      *&v96[124] = *&v97[112];
      *&v96[12] = *v97;
      *&v96[28] = *&v97[16];
      *&v96[44] = v12;
      *&v96[188] = *&v97[176];
      *&v96[60] = v13;
      *v96 = v10;
      *&v96[8] = v11;
      result = sub_1B03BCF14(v96);
      if (result == 1)
      {
        return result;
      }

      *&v95[64] = *&v97[68];
      *&v95[80] = *&v97[84];
      *&v95[32] = *&v97[36];
      *&v95[48] = *&v97[52];
      *&v95[144] = *&v97[148];
      *&v95[160] = *&v97[164];
      *&v95[96] = *&v97[100];
      *&v95[112] = *&v97[116];
      *&v95[128] = *&v97[132];
      *v95 = *&v97[4];
      *&v95[16] = *&v97[20];
      v28 = v4[1];
      v29 = v28 + 32;
      v30 = *(v28 + 16);
      if (!*v4)
      {
        break;
      }

      result = sub_1B0BA7CA4(v10, v11, v29, v30, (*v4 + 16));
      if (v31)
      {
        goto LABEL_29;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

LABEL_27:
      if (result >= *(v6 + 16))
      {
        goto LABEL_35;
      }

      v38 = (v6 + 32 + 176 * result);
      sub_1B03A35B8(v95, v82);

      v39 = *v38;
      v40 = v38[2];
      v84 = v38[1];
      v85 = v40;
      v83 = v39;
      v41 = v38[3];
      v42 = v38[4];
      v43 = v38[6];
      v88 = v38[5];
      v89 = v43;
      v86 = v41;
      v87 = v42;
      v44 = v38[7];
      v45 = v38[8];
      v46 = v38[10];
      v92 = v38[9];
      v93 = v46;
      v90 = v44;
      v91 = v45;
      sub_1B03A3614(&v83);
      result = sub_1B03A3614(v95);
      v48 = *&v95[16];
      v47 = *&v95[32];
      *v38 = *v95;
      v38[1] = v48;
      v38[2] = v47;
      v49 = *&v95[96];
      v51 = *&v95[48];
      v50 = *&v95[64];
      v38[5] = *&v95[80];
      v38[6] = v49;
      v38[3] = v51;
      v38[4] = v50;
      v52 = *&v95[160];
      v54 = *&v95[112];
      v53 = *&v95[128];
      v38[9] = *&v95[144];
      v38[10] = v52;
      v38[7] = v54;
      v38[8] = v53;
      v9 = v69;
    }

    if (v30)
    {
      break;
    }

LABEL_29:
    sub_1B03A5284(v10, v11);
    v4[2] = v6;
    v56 = *(v6 + 16);
    v55 = *(v6 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_1B0B09D24((v55 > 1), v56 + 1, 1);
    }

    v6 = *v98;
    *(v6 + 16) = v56 + 1;
    v57 = (v6 + 176 * v56);
    v58 = *v95;
    v59 = *&v95[32];
    v57[3] = *&v95[16];
    v57[4] = v59;
    v57[2] = v58;
    v60 = *&v95[48];
    v61 = *&v95[64];
    v62 = *&v95[96];
    v57[7] = *&v95[80];
    v57[8] = v62;
    v57[5] = v60;
    v57[6] = v61;
    v63 = *&v95[112];
    v64 = *&v95[128];
    v65 = *&v95[160];
    v57[11] = *&v95[144];
    v57[12] = v65;
    v57[9] = v63;
    v57[10] = v64;
    v4 = v66;
    v9 = v69;
  }

  result = 0;
  while (1)
  {
    v32 = (v29 + 16 * result);
    if ((v32[2] | (v32[2] << 32)) == (v11 | (v11 << 32)))
    {
      v33 = *v32;
      v34 = *(*v32 + 16);
      if (v34 == *(v10 + 16))
      {
        break;
      }
    }

LABEL_16:
    if (++result == v30)
    {
      goto LABEL_29;
    }
  }

  if (v34)
  {
    v35 = v33 == v10;
  }

  else
  {
    v35 = 1;
  }

  if (v35)
  {
    goto LABEL_27;
  }

  v36 = (v33 + 32);
  v37 = (v10 + 32);
  while (v34)
  {
    if (*v36 != *v37)
    {
      goto LABEL_16;
    }

    ++v36;
    ++v37;
    if (!--v34)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

double sub_1B0B378E0(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

double sub_1B0B379A4(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1B0B37AF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0B37B3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0B37BA0(uint64_t a1, uint64_t a2)
{
  v4 = _s19UserInitiatedSearchVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B37C0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B03B2000(a1, a2);
  }

  return a1;
}

uint64_t sub_1B0B37C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B0B37CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = a3;
  v8 = sub_1B03CD5D8();
  v11 = MEMORY[0x1B2727570](v4, &type metadata for ConnectionID, v8);
  if (v6 == a4)
  {

    return;
  }

  if (a4 < 0)
  {
    goto LABEL_15;
  }

  if (v6 >= a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    while (*(a2 + 16) >= a4)
    {
      if (a4 == v6)
      {
        goto LABEL_13;
      }

      v9 = *(a2 + 4 * v6++ + 32);
      sub_1B0B01B6C(&v10, v9);
      if (a4 == v6)
      {

        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1B0B37DDC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1B2727570](v7, a3, v8);
  v10 = 0;
  v18 = result;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  for (i = (v11 + 63) >> 6; v13; result = a4(v17, *(*(a1 + 48) + ((v15 << 8) | (4 * v16)))))
  {
    v15 = v10;
LABEL_9:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= i)
    {

      return v18;
    }

    v13 = *(a1 + 64 + 8 * v15);
    ++v10;
    if (v13)
    {
      v10 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B37EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = MessageIdentifierSet.count.getter();
  v8 = sub_1B043CF70();
  v9 = MEMORY[0x1B2727570](v7, &type metadata for UID, v8);
  v21 = v9;
  sub_1B03B5C80(a1, v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = MessageIdentifierSet.startIndex.getter(v6);
  v12 = v11;
  sub_1B0398EFC(a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v10 != MessageIdentifierSet.endIndex.getter(v6) || v12 != v13)
  {
    do
    {
      do
      {
        MessageIdentifierSet.subscript.getter(v12, v6, &v20 + 4);
        v15 = HIDWORD(v20);
        v10 = MessageIdentifierSet.index(_:offsetBy:)(v10, v12, 1);
        v12 = v16;
        sub_1B0B02EC8(&v20 + 1, v15);
      }

      while (v10 != MessageIdentifierSet.endIndex.getter(v6));
    }

    while (v12 != v17);
    v9 = v21;
  }

  v18 = &v5[*(v2 + 36)];
  *v18 = v10;
  v18[1] = v12;
  sub_1B0398EFC(v5, &qword_1EB6E1BF8, &qword_1B0E9AFF0);
  return v9;
}

uint64_t sub_1B0B380AC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_1B0B38150(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12 = *(v7 - 1);
      v13 = v8;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v7 += 4;
      v10 = v6-- == 0;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B0B38204()
{
  if ((*(v0 + 192) & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  for (i = (v1 + 32); ; i += 11)
  {
    v4 = *i;
    v5 = i[2];
    v43 = i[1];
    v44 = v5;
    v42 = v4;
    v6 = i[3];
    v7 = i[4];
    v8 = i[6];
    v47 = i[5];
    v48 = v8;
    v45 = v6;
    v46 = v7;
    v9 = i[7];
    v10 = i[8];
    v11 = i[10];
    v51 = i[9];
    v52 = v11;
    v49 = v9;
    v50 = v10;
    v12 = *(&v46 + 1);
    v13 = v46;
    v14 = *(&v45 + 1);
    v15 = DWORD2(v43);
    v16 = v43;
    v17 = v47;
    v18 = WORD6(v11);
    sub_1B03A35B8(&v42, v41);
    v19 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = MailboxName.isInbox.getter(v19, v15);

    if (v20)
    {
      break;
    }

    sub_1B03A3614(&v42);
    if (!--v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v22 = v18;
  v23 = *(v39 + 120);
  if (v23 && (v24 = MailboxName.inbox.unsafeMutableAddressor(), *(v23 + 16)) && (v25 = sub_1B03AB888(*v24, *(v24 + 2)), (v26 & 1) != 0))
  {
    v27 = *(v23 + 56) + 72 * v25;
    v28 = *(v27 + 24);
    v38 = *(v27 + 32);
    v40 = *(v27 + 56);
    v29 = *(v27 + 64);
    v30 = *(v27 + 65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4878, &unk_1B0EC6068);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1B0EC1E70;
    if (v30)
    {
      v32 = 0;
      v33 = 0;
      v28 = 0;
      v29 = 1;
      v34 = v12;
    }

    else
    {
      v34 = v12;
      v33 = v38;
      v32 = v40;
    }

    v41[0] = v13;
    *(v31 + 32) = v16;
    *(v31 + 40) = v15;
    *(v31 + 44) = v22;
    *(v31 + 48) = v14;
    *(v31 + 56) = v13;
    *(v31 + 64) = v34;
    *(v31 + 72) = v17;
    *(v31 + 80) = v28;
    *(v31 + 88) = v30;
    *(v31 + 92) = v33;
    *(v31 + 96) = v30;
    *(v31 + 104) = v32;
    *(v31 + 112) = v29 & 1;
    v36 = v31;
    v37 = v34;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07C9330(v37);
    sub_1B03A3614(&v42);
    return v36;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4878, &unk_1B0EC6068);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1B0EC1E70;
    v41[0] = v13;
    *(v35 + 32) = v16;
    *(v35 + 40) = v15;
    *(v35 + 44) = v22;
    *(v35 + 48) = v14;
    *(v35 + 56) = v13;
    *(v35 + 64) = v12;
    *(v35 + 72) = v17;
    *(v35 + 80) = 0;
    *(v35 + 88) = 1;
    *(v35 + 92) = 0;
    *(v35 + 96) = 1;
    *(v35 + 104) = 0;
    *(v35 + 112) = 1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07C9330(v12);
    sub_1B03A3614(&v42);
    return v35;
  }
}

uint64_t sub_1B0B384B4(uint64_t a1)
{
  v2 = sub_1B03A7A88();
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0397D14();
  v8 = v7;
  if (v5 == 3 || v5 == 2)
  {

    v9 = 1;
    goto LABEL_4;
  }

  v12 = sub_1B0BAE1A4(v7);
  if (v4)
  {
    goto LABEL_13;
  }

  if (v5 != 1)
  {
    if (!v5 && (v3 - 1) < 2)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (!v3)
  {
LABEL_13:
    v9 = v12 ^ 1;
    goto LABEL_14;
  }

  if (v3 != 1)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = 1;
LABEL_14:
  sub_1B0397E04(&unk_1F2710548, v6);
  sub_1B0BAE1A4(v8);
  v13 = sub_1B039109C(v6);

  if (v13 & 1) == 0 && (v4)
  {
    sub_1B0BAE1A4(v8);
  }

LABEL_4:

  v10 = sub_1B03A8380(*(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192) & 1, *(a1 + 120), v2, v9 & 1, *(a1 + 208));

  return v10;
}

uint64_t sub_1B0B38604(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B0451F2C();
  result = MEMORY[0x1B2727570](v2, &type metadata for MailboxName, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *v5;
      v7 = *(v5 - 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03AB2E0(&v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1B0B386A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B0B38964();
  result = MEMORY[0x1B2727570](v2, &type metadata for PermanentFlag, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B01D70(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1B0B3876C(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1B0B38A20();
  result = MEMORY[0x1B2727570](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1B041C914(v13, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B02C9C(v9, v6);
      sub_1B03BD59C(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1B0B388CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B03B8BD8();
  result = MEMORY[0x1B2727570](v2, &type metadata for OpaqueMailboxID, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B019E4(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_1B0B38964()
{
  result = qword_1EB6DE8C8;
  if (!qword_1EB6DE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE8C8);
  }

  return result;
}

uint64_t sub_1B0B389C0(uint64_t result, int a2, int a3)
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

unint64_t sub_1B0B38A20()
{
  result = qword_1EB6DD960;
  if (!qword_1EB6DD960)
  {
    type metadata accessor for MoveAndCopyMessages.CommandID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD960);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B0B38A9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1B0B38AE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B38BA0(unsigned int a1)
{
  v2 = sub_1B0E46CE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4740, &qword_1B0EC5C58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v17 - v9;
  v17[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4748, &qword_1B0EC5C60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B0EC60E0;
  *(v11 + 32) = 0x786F626E497369;
  *(v11 + 40) = 0xE700000000000000;
  v12 = MEMORY[0x1E69E6370];
  *(v11 + 48) = (a1 & 0x80000000) == 0;
  *(v11 + 72) = v12;
  *(v11 + 80) = 0x696C696269736976;
  *(v11 + 88) = 0xEA00000000007974;
  *(v11 + 96) = (a1 & 0x40000000) != 0;
  *(v11 + 120) = &_s11UserVisibleON;
  *(v11 + 128) = 0xD000000000000010;
  *(v11 + 136) = 0x80000001B0F2B3D0;
  *(v11 + 144) = (a1 & 0x20000000) == 0;
  *(v11 + 168) = v12;
  strcpy((v11 + 176), "userPriority");
  *(v11 + 189) = 0;
  *(v11 + 190) = -5120;
  *(v11 + 192) = (a1 >> 14) & 0x3FFF;
  *(v11 + 216) = &_s12PriorityInfoV5OrderVN;
  *(v11 + 224) = 0xD000000000000012;
  *(v11 + 232) = 0x80000001B0F2B3F0;
  *(v11 + 264) = &_s12PriorityInfoV5OrderVN;
  *(v11 + 240) = a1 & 0x3FFF;
  v13 = *MEMORY[0x1E69E75B8];
  v14 = sub_1B0E46CD8();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v10, v13, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  return sub_1B0E46CF8();
}

unint64_t sub_1B0B38E94()
{
  result = qword_1EB6E4880;
  if (!qword_1EB6E4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4880);
  }

  return result;
}

uint64_t sub_1B0B38EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4478, &qword_1B0EC51F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B0B38F8C()
{
  sub_1B0AD434C(319, &qword_1EB6DE198);
  if (v0 <= 0x3F)
  {
    sub_1B0AD434C(319, &qword_1EB6DE908);
    if (v1 <= 0x3F)
    {
      sub_1B0B39190();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PendingServerResponses();
        if (v3 <= 0x3F)
        {
          type metadata accessor for PendingPersistenceUpdates();
          if (v4 <= 0x3F)
          {
            sub_1B0B391EC();
            if (v5 <= 0x3F)
            {
              sub_1B0B39250(319, &qword_1EB6DDEB8, type metadata accessor for MessageBatches);
              if (v6 <= 0x3F)
              {
                sub_1B0B39250(319, &qword_1EB6DDEA0, type metadata accessor for NewestMessages);
                if (v7 <= 0x3F)
                {
                  _s15MissingMessagesOMa(319);
                  if (v8 <= 0x3F)
                  {
                    sub_1B0AD434C(319, &qword_1EB6DD4A0);
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_1B0B39190()
{
  if (!qword_1EB6DAD30)
  {
    sub_1B03D00F4();
    v0 = sub_1B0E45588();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DAD30);
    }
  }
}

void sub_1B0B391EC()
{
  if (!qword_1EB6DB760)
  {
    sub_1B03D00F4();
    v0 = sub_1B0E44708();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB760);
    }
  }
}

void sub_1B0B39250(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B0E45D88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MailboxSyncState.HighestModificationSequence(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for MailboxSyncState.HighestModificationSequence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0B39340(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1B0B39358(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1B0B39380(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 2;
  }

  v4 = a1;
  result = sub_1B0B3B52C(&v4, a2, &v5);
  if (!v2)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B393C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1B0B0A2A4(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v13 >= v14 >> 1)
    {
      result = sub_1B0B0A2A4((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
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
          result = sub_1B0425168(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
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

double sub_1B0B395EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MailboxSyncState();
  v7 = v6[15];
  v8 = type metadata accessor for MessageBatches(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = v6[16];
  v10 = type metadata accessor for NewestMessages();
  (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
  v11 = a3 + v6[18];
  *v11 = 0;
  *(v11 + 8) = 256;
  v12 = (a3 + v6[19]);
  *v12 = *MonotonicTime.bootTime.unsafeMutableAddressor();
  v12[1] = 0;
  *a3 = *(a1 + 24);
  *(a3 + 12) = *(a1 + 52);
  *(a3 + 8) = *(a1 + 48);
  *(a3 + 20) = *(a1 + 60);
  *(a3 + 16) = *(a1 + 56);
  if (*(a1 + 73) & 1) != 0 || (*(a1 + 72))
  {
    goto LABEL_6;
  }

  v13 = *(a1 + 64);
  if (*(a2 + 2))
  {
    if (*(a2 + 2) == 1)
    {
      *(a3 + 24) = v13;
      v14 = 1;
LABEL_7:
      *(a3 + 32) = v14;
      sub_1B0B6557C(a3 + v6[12]);
      goto LABEL_8;
    }

LABEL_6:
    *(a3 + 24) = 0;
    v14 = 2;
    goto LABEL_7;
  }

  *(a3 + 24) = v13;
  *(a3 + 32) = 0;
  sub_1B0B65458(a3 + v6[12]);
LABEL_8:
  v15 = MEMORY[0x1E69E7CD0];
  *(a3 + 152) = MEMORY[0x1E69E7CD0];
  *(a3 + 160) = v15;
  *(a3 + 168) = v15;
  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = *(a1 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v18 = sub_1B0B393C4(*(a1 + 16));
    v16 = sub_1B0B386A0(v18);
  }

  sub_1B0B37A7C(a1);
  v19 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B0B26C(v19, v36);
  v20 = v36[2];
  *(a3 + 88) = v36[3];
  v21 = v36[5];
  *(a3 + 104) = v36[4];
  *(a3 + 120) = v21;
  *(a3 + 136) = v37;
  v22 = v36[1];
  *(a3 + 40) = v36[0];
  *(a3 + 56) = v22;
  *(a3 + 72) = v20;
  v23 = sub_1B0B0CE64(v16);

  v24 = vdupq_n_s64(v23);
  *(a3 + 144) = v23 & 1;
  *v24.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v24, xmmword_1B0EC6200), vshlq_u64(v24, xmmword_1B0EC61F0))), 0x1000100010001);
  *(a3 + 145) = vuzp1_s8(*v24.i8, *v24.i8).u32[0];
  *(a3 + 176) = v15;
  v25 = a3 + v6[13];
  *v25 = 0;
  *(v25 + 2) = 0;
  v26 = type metadata accessor for PendingPersistenceUpdates();
  v27 = (v25 + *(v26 + 28));
  v28 = MEMORY[0x1E69E7CC0];
  *v27 = sub_1B03D985C(MEMORY[0x1E69E7CC0]);
  v29 = type metadata accessor for MessagesPendingDownload();
  v30 = *(v29 + 20);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v31 = (v27 + *(type metadata accessor for MessagesPendingDownloadPerPass() + 20));
  *v31 = sub_1B03D985C(v28);
  v32 = v31 + *(v29 + 20);
  sub_1B0E46EE8();
  v33 = v25 + *(v26 + 32);
  sub_1B0E46EE8();
  *(a3 + v6[14]) = sub_1B03D016C(v28);
  *(a3 + v6[17]) = 0;
  _s15MissingMessagesOMa(0);
  swift_storeEnumTagMultiPayload();
  v34 = a3 + v6[20];
  *v34 = v28;
  result = -1.90237734e-283;
  *(v34 + 8) = xmmword_1B0EC6210;
  return result;
}

void sub_1B0B39958(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t *a8)
{
  v226 = a8;
  v212 = a5;
  v213 = a7;
  v224 = a6;
  v208 = a3;
  v209 = a4;
  v207 = a2;
  v228 = a1;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v221 = *(v223 - 1);
  v8 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v222 = &v201 - v9;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = *(*(v220 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v220);
  v218 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v215 = &v201 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v216 = &v201 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v217 = &v201 - v17;
  v225 = type metadata accessor for MailboxSyncState();
  v18 = *(*(v225 - 1) + 64);
  MEMORY[0x1EEE9AC00](v225);
  v206 = &v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = _s12LocalMailboxV6LoggerVMa();
  v20 = *(*(v219 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v219);
  v211 = &v201 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v210 = &v201 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v214 = &v201 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v204 = &v201 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v203 = &v201 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v205 = &v201 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v202 = &v201 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v201 = &v201 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = (&v201 - v38);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v201 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v201 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = (&v201 - v47);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v201 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v201 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v201 - v55;
  v57 = type metadata accessor for UntaggedResponse(0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v60 = (&v201 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B03BD4C8(v228, v60, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 17)
  {
    if (EnumCaseMultiPayload != 18)
    {
      if (EnumCaseMultiPayload != 19)
      {
        if (EnumCaseMultiPayload == 20)
        {
          memcpy(v230, v60, 0x268uLL);
          sub_1B0B3B7B8(v230, v207, v208, v209, v226);
          sub_1B0AA4C0C(v230);
          return;
        }

        goto LABEL_25;
      }

      v115 = v215;
      sub_1B074BA2C(v60, v215);
      v116 = v227 + *(v225 + 12);
      v117 = *(type metadata accessor for PendingServerResponses() + 24);
      (*(v221 + 16))(v222, v115, v223);
      sub_1B0E46ED8();
      v118 = v226;
      v119 = v214;
      sub_1B03BD4C8(v226, v214, _s12LocalMailboxV6LoggerVMa);
      v120 = v210;
      sub_1B03BD4C8(v118, v210, _s12LocalMailboxV6LoggerVMa);
      v121 = v211;
      sub_1B03BD4C8(v118, v211, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v122 = v218;
      sub_1B03B5C80(v115, v218, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v123 = sub_1B0E43988();
      v124 = sub_1B0E45908();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v228 = swift_slowAlloc();
        v229 = v228;
        *v125 = 68159235;
        v126 = v119;
        *(v125 + 4) = 2;
        *(v125 + 8) = 256;
        v127 = v120;
        v128 = v219;
        v129 = *(v127 + *(v219 + 20));
        LODWORD(v227) = v124;
        sub_1B03BD5FC(v127, _s12LocalMailboxV6LoggerVMa);
        *(v125 + 10) = v129;
        *(v125 + 11) = 1040;
        *(v125 + 13) = 2;
        *(v125 + 17) = 512;
        v130 = *(v121 + *(v128 + 20) + 2);
        sub_1B03BD5FC(v121, _s12LocalMailboxV6LoggerVMa);
        *(v125 + 19) = v130;
        *(v125 + 21) = 2160;
        *(v125 + 23) = 0x786F626C69616DLL;
        *(v125 + 31) = 2085;
        v131 = v126 + *(v128 + 20);
        v132 = *(v131 + 8);
        v133 = *(v131 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BD5FC(v126, _s12LocalMailboxV6LoggerVMa);
        v230[0] = v132;
        LODWORD(v230[1]) = v133;
        v134 = sub_1B0E44BA8();
        v136 = sub_1B0399D64(v134, v135, &v229);

        *(v125 + 33) = v136;
        *(v125 + 41) = 2048;
        v137 = v218;
        v138 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v137, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        *(v125 + 43) = v138;
        _os_log_impl(&dword_1B0389000, v123, v227, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received vanished (earlier) for %ld UID(s).", v125, 0x33u);
        v139 = v228;
        __swift_destroy_boxed_opaque_existential_0(v228);
        MEMORY[0x1B272C230](v139, -1, -1);
        MEMORY[0x1B272C230](v125, -1, -1);
      }

      else
      {
        sub_1B0398EFC(v122, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03BD5FC(v121, _s12LocalMailboxV6LoggerVMa);
        sub_1B03BD5FC(v120, _s12LocalMailboxV6LoggerVMa);

        sub_1B03BD5FC(v119, _s12LocalMailboxV6LoggerVMa);
      }

      v140 = v115;
LABEL_29:
      sub_1B0398EFC(v140, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return;
    }

    v101 = v60;
    v102 = v217;
    sub_1B074BA2C(v101, v217);
    v103 = v227;
    v104 = v227 + *(v225 + 12);
    v105 = *(type metadata accessor for PendingServerResponses() + 24);
    (*(v221 + 16))(v222, v102, v223);
    sub_1B0E46ED8();
    v106 = *v103;
    v107 = MessageIdentifierSet.count.getter();
    if (!__OFSUB__(v106, v107))
    {
      v108 = ((v106 - v107) & ~((v106 - v107) >> 63));
      *v103 = v108;
      v109 = sub_1B0B4AAF0();
      v110 = sub_1B0B39380(v109 | ((HIDWORD(v109) & 1) << 32), v103);
      v112 = v204;
      v111 = v205;
      v113 = v203;
      v228 = v108;
      if (v110 == 2 || (v110 & 1) == 0)
      {
        v114 = 0;
      }

      else
      {
        sub_1B03BDE74(0xEu);
        sub_1B03BDD7C(v230, 14);
        v114 = 1;
      }

      v163 = v226;
      sub_1B03BD4C8(v226, v111, _s12LocalMailboxV6LoggerVMa);
      sub_1B03BD4C8(v163, v113, _s12LocalMailboxV6LoggerVMa);
      sub_1B03BD4C8(v163, v112, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v164 = v216;
      sub_1B03B5C80(v102, v216, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v165 = sub_1B0E43988();
      v166 = sub_1B0E45908();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        LODWORD(v226) = v114;
        v168 = v167;
        v227 = swift_slowAlloc();
        v229 = v227;
        *v168 = 68159747;
        *(v168 + 4) = 2;
        *(v168 + 8) = 256;
        v169 = v113;
        v170 = v219;
        v171 = *(v169 + *(v219 + 20));
        sub_1B03BD5FC(v169, _s12LocalMailboxV6LoggerVMa);
        *(v168 + 10) = v171;
        *(v168 + 11) = 1040;
        *(v168 + 13) = 2;
        *(v168 + 17) = 512;
        v172 = *(v112 + *(v170 + 20) + 2);
        sub_1B03BD5FC(v112, _s12LocalMailboxV6LoggerVMa);
        *(v168 + 19) = v172;
        *(v168 + 21) = 2160;
        *(v168 + 23) = 0x786F626C69616DLL;
        *(v168 + 31) = 2085;
        v173 = v111 + *(v170 + 20);
        v174 = *(v173 + 8);
        v175 = *(v173 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BD5FC(v111, _s12LocalMailboxV6LoggerVMa);
        v230[0] = v174;
        LODWORD(v230[1]) = v175;
        v176 = sub_1B0E44BA8();
        v178 = sub_1B0399D64(v176, v177, &v229);

        *(v168 + 33) = v178;
        *(v168 + 41) = 2048;
        v179 = v216;
        v180 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v179, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        *(v168 + 43) = v180;
        *(v168 + 51) = 2048;
        *(v168 + 53) = v228;
        *(v168 + 61) = 1024;
        *(v168 + 63) = v226;
        _os_log_impl(&dword_1B0389000, v165, v166, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received vanished for %ld UID(s). Message count is now %ld. Re-running CountUnreadMessages: %{BOOL}d.", v168, 0x43u);
        v181 = v227;
        __swift_destroy_boxed_opaque_existential_0(v227);
        MEMORY[0x1B272C230](v181, -1, -1);
        MEMORY[0x1B272C230](v168, -1, -1);

        v140 = v217;
      }

      else
      {
        sub_1B0398EFC(v164, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03BD5FC(v112, _s12LocalMailboxV6LoggerVMa);
        sub_1B03BD5FC(v113, _s12LocalMailboxV6LoggerVMa);

        sub_1B03BD5FC(v111, _s12LocalMailboxV6LoggerVMa);
        v140 = v102;
      }

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_41;
  }

  v222 = v45;
  v223 = v42;
  v228 = v48;
  v62 = v224;
  if (EnumCaseMultiPayload != 15)
  {
    if (EnumCaseMultiPayload != 17)
    {
LABEL_25:
      v161 = type metadata accessor for UntaggedResponse;
      v162 = v60;
LABEL_39:
      sub_1B03BD5FC(v162, v161);
      return;
    }

    v63 = *v60;
    v64 = v225;
    v65 = v227;
    v66 = v227 + *(v225 + 12) + 40;
    sub_1B0B656A0(*v60);
    v67 = v65 + *(v64 + 16);
    v68 = type metadata accessor for NewestMessages();
    v69 = (*(*(v68 - 8) + 48))(v67, 1, v68);
    v70 = v62;
    v72 = v212;
    v71 = v213;
    v73 = v206;
    if (!v69)
    {
      v74 = *(v68 + 24);
      v75 = *&v67[v74];
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
LABEL_41:
        __break(1u);
        return;
      }

      *&v67[v74] = v77;
    }

    sub_1B03BD4C8(v65, v73, type metadata accessor for MailboxSyncState);
    v78 = sub_1B0B3B314(v63, v72 & 1, v70, v71 & 1);
    sub_1B03BD5FC(v73, type metadata accessor for MailboxSyncState);
    if (v78)
    {
      sub_1B03BDE74(0xEu);
      sub_1B03BDD7C(v230, 14);
    }

    v79 = *v65 - 1;
    if (*v65 < 1)
    {
      v182 = v226;
      v81 = v39;
      sub_1B03BD4C8(v226, v39, _s12LocalMailboxV6LoggerVMa);
      v183 = v201;
      sub_1B03BD4C8(v182, v201, _s12LocalMailboxV6LoggerVMa);
      v184 = v202;
      sub_1B03BD4C8(v182, v202, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v84 = sub_1B0E43988();
      v185 = sub_1B0E458E8();
      if (os_log_type_enabled(v84, v185))
      {
        v186 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        LODWORD(v227) = v78;
        v228 = v187;
        v229 = v187;
        *v186 = 68159491;
        v188 = v183;
        *(v186 + 4) = 2;
        *(v186 + 8) = 256;
        LODWORD(v226) = v63;
        v189 = v184;
        v190 = v219;
        v191 = *(v183 + *(v219 + 20));
        sub_1B03BD5FC(v188, _s12LocalMailboxV6LoggerVMa);
        *(v186 + 10) = v191;
        *(v186 + 11) = 1040;
        *(v186 + 13) = 2;
        *(v186 + 17) = 512;
        v192 = *(v189 + *(v190 + 20) + 2);
        sub_1B03BD5FC(v189, _s12LocalMailboxV6LoggerVMa);
        *(v186 + 19) = v192;
        *(v186 + 21) = 2160;
        *(v186 + 23) = 0x786F626C69616DLL;
        *(v186 + 31) = 2085;
        v193 = v81 + *(v190 + 20);
        v194 = *(v193 + 1);
        v195 = *(v193 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BD5FC(v81, _s12LocalMailboxV6LoggerVMa);
        v230[0] = v194;
        LODWORD(v230[1]) = v195;
        v196 = sub_1B0E44BA8();
        v198 = sub_1B0399D64(v196, v197, &v229);

        *(v186 + 33) = v198;
        *(v186 + 41) = 1024;
        *(v186 + 43) = v226;
        *(v186 + 47) = 1024;
        *(v186 + 49) = v227 & 1;
        _os_log_impl(&dword_1B0389000, v84, v185, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received expunge %u, but message count is already zero. Re-running CountUnreadMessages: %{BOOL}d.", v186, 0x35u);
        v199 = v228;
        __swift_destroy_boxed_opaque_existential_0(v228);
        MEMORY[0x1B272C230](v199, -1, -1);
        v100 = v186;
        goto LABEL_35;
      }

      sub_1B03BD5FC(v184, _s12LocalMailboxV6LoggerVMa);
      v200 = v183;
    }

    else
    {
      *v65 = v79;
      v80 = v226;
      v81 = v228;
      sub_1B03BD4C8(v226, v228, _s12LocalMailboxV6LoggerVMa);
      v82 = v222;
      sub_1B03BD4C8(v80, v222, _s12LocalMailboxV6LoggerVMa);
      v83 = v223;
      sub_1B03BD4C8(v80, v223, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v84 = sub_1B0E43988();
      v85 = sub_1B0E45908();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v224 = v79;
        v87 = v86;
        v88 = swift_slowAlloc();
        LODWORD(v227) = v78;
        v225 = v88;
        v229 = v88;
        *v87 = 68159747;
        *(v87 + 4) = 2;
        *(v87 + 8) = 256;
        LODWORD(v226) = v63;
        v89 = v82;
        v90 = v219;
        v91 = *(v89 + *(v219 + 20));
        sub_1B03BD5FC(v89, _s12LocalMailboxV6LoggerVMa);
        *(v87 + 10) = v91;
        *(v87 + 11) = 1040;
        *(v87 + 13) = 2;
        *(v87 + 17) = 512;
        v92 = *(v83 + *(v90 + 20) + 2);
        sub_1B03BD5FC(v83, _s12LocalMailboxV6LoggerVMa);
        *(v87 + 19) = v92;
        *(v87 + 21) = 2160;
        *(v87 + 23) = 0x786F626C69616DLL;
        *(v87 + 31) = 2085;
        v93 = v81 + *(v90 + 20);
        v94 = *(v93 + 1);
        v95 = *(v93 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BD5FC(v81, _s12LocalMailboxV6LoggerVMa);
        v230[0] = v94;
        LODWORD(v230[1]) = v95;
        v96 = sub_1B0E44BA8();
        v98 = sub_1B0399D64(v96, v97, &v229);

        *(v87 + 33) = v98;
        *(v87 + 41) = 1024;
        *(v87 + 43) = v226;
        *(v87 + 47) = 2048;
        *(v87 + 49) = v224;
        *(v87 + 57) = 1024;
        *(v87 + 59) = v227 & 1;
        _os_log_impl(&dword_1B0389000, v84, v85, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received expunge %u. Message count is now %ld. Re-running CountUnreadMessages: %{BOOL}d.", v87, 0x3Fu);
        v99 = v225;
        __swift_destroy_boxed_opaque_existential_0(v225);
        MEMORY[0x1B272C230](v99, -1, -1);
        v100 = v87;
LABEL_35:
        MEMORY[0x1B272C230](v100, -1, -1);

        return;
      }

      sub_1B03BD5FC(v83, _s12LocalMailboxV6LoggerVMa);
      v200 = v82;
    }

    sub_1B03BD5FC(v200, _s12LocalMailboxV6LoggerVMa);

    v162 = v81;
    v161 = _s12LocalMailboxV6LoggerVMa;
    goto LABEL_39;
  }

  v141 = *v60;
  v142 = v227;
  sub_1B03BDE74(0xCu);
  sub_1B03BDD7C(v230, 12);
  v143 = v226;
  v144 = v56;
  sub_1B03BD4C8(v226, v56, _s12LocalMailboxV6LoggerVMa);
  sub_1B03BD4C8(v143, v54, _s12LocalMailboxV6LoggerVMa);
  v145 = v51;
  sub_1B03BD4C8(v143, v51, _s12LocalMailboxV6LoggerVMa);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v146 = sub_1B0E43988();
  v147 = sub_1B0E45908();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    v226 = swift_slowAlloc();
    v229 = v226;
    *v148 = 68159235;
    *(v148 + 4) = 2;
    *(v148 + 8) = 256;
    v228 = v141;
    v149 = v219;
    v150 = v54[*(v219 + 20)];
    sub_1B03BD5FC(v54, _s12LocalMailboxV6LoggerVMa);
    *(v148 + 10) = v150;
    *(v148 + 11) = 1040;
    *(v148 + 13) = 2;
    *(v148 + 17) = 512;
    v151 = v145;
    v152 = *&v145[*(v149 + 20) + 2];
    sub_1B03BD5FC(v151, _s12LocalMailboxV6LoggerVMa);
    *(v148 + 19) = v152;
    *(v148 + 21) = 2160;
    *(v148 + 23) = 0x786F626C69616DLL;
    *(v148 + 31) = 2085;
    v153 = v144 + *(v149 + 20);
    v154 = *(v153 + 8);
    v155 = *(v153 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03BD5FC(v144, _s12LocalMailboxV6LoggerVMa);
    v230[0] = v154;
    LODWORD(v230[1]) = v155;
    v156 = sub_1B0E44BA8();
    v158 = sub_1B0399D64(v156, v157, &v229);

    *(v148 + 33) = v158;
    *(v148 + 41) = 1024;
    v159 = v228;
    *(v148 + 43) = v228;
    _os_log_impl(&dword_1B0389000, v146, v147, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Updating message count to %u", v148, 0x2Fu);
    v160 = v226;
    __swift_destroy_boxed_opaque_existential_0(v226);
    MEMORY[0x1B272C230](v160, -1, -1);
    MEMORY[0x1B272C230](v148, -1, -1);

    *v227 = v159;
  }

  else
  {
    sub_1B03BD5FC(v51, _s12LocalMailboxV6LoggerVMa);
    sub_1B03BD5FC(v54, _s12LocalMailboxV6LoggerVMa);

    sub_1B03BD5FC(v144, _s12LocalMailboxV6LoggerVMa);
    *v142 = v141;
  }
}

uint64_t sub_1B0B3AE00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MessagesPendingDownloadPerPass();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a2 ^ a1;
  if (((a2 ^ a1) & 0xFF00) != 0)
  {
    v12 = *(type metadata accessor for MailboxSyncState() + 68);
    sub_1B03BD5FC(v3 + v12, _s15MissingMessagesOMa);
    *(v3 + v12) = 0;
    _s15MissingMessagesOMa(0);
    swift_storeEnumTagMultiPayload();
    v13 = byte_1F27113F0;
    sub_1B03BDE74(byte_1F27113F0);
    sub_1B03BDD7C(&v26, v13);
    v14 = byte_1F27113F1;
    sub_1B03BDE74(byte_1F27113F1);
    sub_1B03BDD7C(&v26, v14);
    v15 = byte_1F27113F2;
    sub_1B03BDE74(byte_1F27113F2);
    result = sub_1B03BDD7C(&v26, v15);
  }

  if (v11)
  {
    v16 = MEMORY[0x1E69E7CC0];
    *v10 = sub_1B03D985C(MEMORY[0x1E69E7CC0]);
    v17 = type metadata accessor for MessagesPendingDownload();
    v18 = *(v17 + 20);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v19 = (v10 + *(v6 + 20));
    *v19 = sub_1B03D985C(v16);
    v20 = v19 + *(v17 + 20);
    sub_1B0E46EE8();
    v21 = v3 + *(type metadata accessor for MailboxSyncState() + 52);
    v22 = type metadata accessor for PendingPersistenceUpdates();
    sub_1B0B3BFD0(v10, v21 + *(v22 + 28));
    sub_1B03BDE74(9u);
    sub_1B03BDD7C(&v25, 9);
    sub_1B03BDE74(0xAu);
    return sub_1B03BDD7C(&v24, 10);
  }

  return result;
}

uint64_t sub_1B0B3B038()
{
  if (!*(v0 + 12))
  {
    v1 = *(v0 + 8);
  }

  if (*(v0 + 20))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 16);
  }

  *&v31[0] = 0;
  *(&v31[0] + 1) = 0xE000000000000000;
  sub_1B0E46298();
  v29 = 0;
  v30 = 0xE000000000000000;
  MEMORY[0x1B2726E80](0xD00000000000001FLL, 0x80000001B0F2B410);
  *&v31[0] = *v0;
  v3 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v3);

  MEMORY[0x1B2726E80](0x49557478656E202CLL, 0xEB00000000203A44);
  v4 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v4);

  MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F2B430);
  LODWORD(v31[0]) = v2;
  sub_1B07467B8();
  v5 = sub_1B0E44E98();
  MEMORY[0x1B2726E80](v5);

  MEMORY[0x1B2726E80](0x6E4567616C66202CLL, 0xEF203A7265646F63);
  v6 = *(v0 + 88);
  v7 = *(v0 + 120);
  v31[4] = *(v0 + 104);
  v31[5] = v7;
  v32 = *(v0 + 136);
  v8 = *(v0 + 56);
  v31[0] = *(v0 + 40);
  v31[1] = v8;
  v31[2] = *(v0 + 72);
  v31[3] = v6;
  v9 = *(v0 + 88);
  v10 = *(v0 + 120);
  v26 = *(v0 + 104);
  v27 = v10;
  v28 = *(v0 + 136);
  v11 = *(v0 + 56);
  v22 = *(v0 + 40);
  v23 = v11;
  v24 = *(v0 + 72);
  v25 = v9;
  sub_1B0B0D4C8(v31, v21);
  v12 = sub_1B0E44BA8();
  MEMORY[0x1B2726E80](v12);

  MEMORY[0x1B2726E80](0x654467616C66202CLL, 0xEF203A7265646F63);
  v13 = *(v0 + 145);
  v14 = *(v0 + 146);
  v15 = *(v0 + 147);
  v16 = *(v0 + 148);
  LOBYTE(v22) = *(v0 + 144);
  BYTE1(v22) = v13;
  BYTE2(v22) = v14;
  BYTE3(v22) = v15;
  BYTE4(v22) = v16;
  v17 = sub_1B0E44BA8();
  MEMORY[0x1B2726E80](v17);

  MEMORY[0x1B2726E80](0xD00000000000004ELL, 0x80000001B0F2B450);
  v18 = *(v0 + 176);
  sub_1B03D00F4();
  v19 = sub_1B0E45408();
  MEMORY[0x1B2726E80](v19);

  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return v29;
}

uint64_t sub_1B0B3B314(unsigned int a1, char a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4010, &unk_1B0EC6220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for MessageBatches(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    return 0;
  }

  if (a2)
  {
    v19 = result;
    v20 = type metadata accessor for MailboxSyncState();
    sub_1B03B5C80(v4 + *(v20 + 60), v12, &qword_1EB6E4010, &unk_1B0EC6220);
    if ((*(v14 + 48))(v12, 1, v19) == 1)
    {
      sub_1B0398EFC(v12, &qword_1EB6E4010, &unk_1B0EC6220);
      return 0;
    }

    else
    {
      sub_1B03D008C(v12, v18, type metadata accessor for MessageBatches);
      v24 = *(v18 + 1);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = *(v24 + 8 * v25 + 24);
      }

      else
      {
        v26 = 1;
      }

      v27 = v26 > a1;
      sub_1B03BD5FC(v18, type metadata accessor for MessageBatches);
      return v27;
    }
  }

  else
  {
    v21 = *v4 + 500;
    if (__OFADD__(*v4, 500))
    {
      __break(1u);
    }

    else
    {
      v22 = __OFSUB__(v21, a3);
      v23 = v21 - a3;
      if (!v22)
      {
        return v23 > a1;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B3B52C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4010, &unk_1B0EC6220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for MessageBatches(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MailboxSyncState();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  sub_1B03BD4C8(a2, v18, type metadata accessor for MailboxSyncState);
  sub_1B03B5C80(&v18[*(v15 + 68)], v8, &qword_1EB6E4010, &unk_1B0EC6220);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B03BD5FC(v18, type metadata accessor for MailboxSyncState);
    result = sub_1B0398EFC(v8, &qword_1EB6E4010, &unk_1B0EC6220);
    v21 = 0;
  }

  else
  {
    sub_1B03D008C(v8, v13, type metadata accessor for MessageBatches);
    v22 = *(v13 + 1);
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(v22 + 8 * v23 + 24);
    }

    else
    {
      v24 = 1;
    }

    sub_1B03BD5FC(v18, type metadata accessor for MailboxSyncState);
    v21 = v19 < v24;
    result = sub_1B03BD5FC(v13, type metadata accessor for MessageBatches);
  }

  *v26 = v21;
  return result;
}

uint64_t sub_1B0B3B7B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*(_s12LocalMailboxV6LoggerVMa() - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v38[-v16];
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v38[-v20];
  if ((*(result + 560) & 1) != 0 || *(v5 + 32))
  {
    return sub_1B0B3BB5C(result, a2, a3, a4, a5);
  }

  v22 = *(result + 552);
  v23 = *(v5 + 24);
  if (v23 <= v22)
  {
    v24 = *(result + 552);
  }

  else
  {
    v24 = *(v5 + 24);
  }

  if (((v24 | v23) & 0x8000000000000000) == 0)
  {
    if (v23 < v22)
    {
      v44 = v19;
      v45 = v5;
      v46 = result;
      *(v5 + 24) = v24;
      *(v5 + 32) = 0;
      sub_1B03BD4C8(a5, &v38[-v20], _s12LocalMailboxV6LoggerVMa);
      sub_1B03BD4C8(a5, v17, _s12LocalMailboxV6LoggerVMa);
      sub_1B03BD4C8(a5, v14, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v25 = sub_1B0E43988();
      v26 = sub_1B0E45908();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v43 = v25;
        v28 = v27;
        v42 = swift_slowAlloc();
        v49 = v42;
        *v28 = 68159235;
        *(v28 + 4) = 2;
        *(v28 + 8) = 256;
        v40 = v24;
        v29 = v44;
        v39 = v17[*(v44 + 20)];
        v41 = v26;
        sub_1B03BD5FC(v17, _s12LocalMailboxV6LoggerVMa);
        *(v28 + 10) = v39;
        *(v28 + 11) = 1040;
        *(v28 + 13) = 2;
        *(v28 + 17) = 512;
        v30 = *&v14[*(v29 + 20) + 2];
        sub_1B03BD5FC(v14, _s12LocalMailboxV6LoggerVMa);
        *(v28 + 19) = v30;
        *(v28 + 21) = 2160;
        *(v28 + 23) = 0x786F626C69616DLL;
        *(v28 + 31) = 2085;
        v31 = &v21[*(v29 + 20)];
        v32 = *(v31 + 1);
        LODWORD(v29) = *(v31 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BD5FC(v21, _s12LocalMailboxV6LoggerVMa);
        v47 = v32;
        v48 = v29;
        v33 = sub_1B0E44BA8();
        v35 = sub_1B0399D64(v33, v34, &v49);

        *(v28 + 33) = v35;
        *(v28 + 41) = 2048;
        *(v28 + 43) = v40;
        v36 = v43;
        _os_log_impl(&dword_1B0389000, v43, v41, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Updating highest mod-seq to %llu", v28, 0x33u);
        v37 = v42;
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x1B272C230](v37, -1, -1);
        MEMORY[0x1B272C230](v28, -1, -1);
      }

      else
      {
        sub_1B03BD5FC(v14, _s12LocalMailboxV6LoggerVMa);
        sub_1B03BD5FC(v17, _s12LocalMailboxV6LoggerVMa);

        sub_1B03BD5FC(v21, _s12LocalMailboxV6LoggerVMa);
      }

      result = v46;
    }

    return sub_1B0B3BB5C(result, a2, a3, a4, a5);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B3BB5C(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a1 + 10);
  v48[8] = *(a1 + 9);
  v48[9] = v11;
  v48[10] = *(a1 + 11);
  v49 = *(a1 + 192);
  v12 = *(a1 + 6);
  v48[4] = *(a1 + 5);
  v48[5] = v12;
  v13 = *(a1 + 8);
  v48[6] = *(a1 + 7);
  v48[7] = v13;
  v14 = *(a1 + 2);
  v48[0] = *(a1 + 1);
  v48[1] = v14;
  v15 = *(a1 + 4);
  v48[2] = *(a1 + 3);
  v48[3] = v15;
  result = sub_1B07AB810(v48);
  if (result == 1 && !*(*(a1 + 25) + 16))
  {
    v17 = *(a1 + 22);
    v50[8] = *(a1 + 21);
    v50[9] = v17;
    v50[10] = *(a1 + 23);
    v51 = *(a1 + 384);
    v18 = *(a1 + 18);
    v50[4] = *(a1 + 17);
    v50[5] = v18;
    v19 = *(a1 + 20);
    v50[6] = *(a1 + 19);
    v50[7] = v19;
    v20 = *(a1 + 14);
    v50[0] = *(a1 + 13);
    v50[1] = v20;
    v21 = *(a1 + 16);
    v50[2] = *(a1 + 15);
    v50[3] = v21;
    result = sub_1B07AB810(v50);
    if (result == 1 && !*(a1 + 54) && (a1[134] & 1) != 0)
    {
      v22 = *(a1 + 64);
      v23 = a1[2];
      LOBYTE(v47[0]) = *(a1 + 12);
      v39 = v47[0];
      v40 = v23;
      sub_1B0B3BE00(v22, v23 | (LOBYTE(v47[0]) << 32));
      if (v22)
      {
        v24 = 0x100000000;
        if (!v5[148])
        {
          v24 = 0;
        }

        v25 = 0x1000000;
        if (!v5[147])
        {
          v25 = 0;
        }

        v26 = 0x10000;
        if (!v5[146])
        {
          v26 = 0;
        }

        v27 = 256;
        if (!v5[145])
        {
          v27 = 0;
        }

        v28 = FlagDecoder.decode(_:)(v22, v27 | v5[144] | v26 | v25 | v24);
        LOBYTE(v22) = v29;
      }

      else
      {
        v28 = 2;
      }

      v30 = *(a1 + 65);
      v46 = v30;
      if (v28 != 2 || v30)
      {
        sub_1B03B5C80(&v46, v47, &qword_1EB6E4898, &qword_1B0EC6340);
        v31 = *a1;
        v32 = *(a1 + 4);
        v33 = *(a1 + 69);
        v34 = *(a1 + 560);
        *&v41 = v28;
        BYTE8(v41) = v22;
        *&v42 = v30;
        DWORD2(v42) = v31;
        BYTE12(v42) = v32;
        LODWORD(v43) = v40;
        BYTE4(v43) = v39;
        *(&v43 + 1) = v33;
        LOBYTE(v44) = v34;
        DWORD2(v44) = a2;
        *&v45 = a3;
        *(&v45 + 1) = a4;
        v47[3] = v44;
        v47[4] = v45;
        v47[1] = v42;
        v47[2] = v43;
        v47[0] = v41;
        v35 = &v5[*(type metadata accessor for MailboxSyncState() + 48)];
        v36 = *(v35 + 24);
        v37 = *(v35 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
        v38 = *(v37 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v38(v47, a5, v36, v37);
        return sub_1B0B3C034(&v41);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1B0B3BE00(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MessageBatches(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if ((a2 & 0x100000000) == 0)
    {
      v11 = *(type metadata accessor for MailboxSyncState() + 60);
      result = (*(v6 + 48))(v2 + v11, 1, v5);
      if (!result)
      {
        sub_1B03BD4C8(v2 + v11, v10, type metadata accessor for MessageBatches);
        v12 = *(v10 + 1);
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = *(v12 + 8 * v13 + 24);
        }

        else
        {
          v14 = 1;
        }

        result = sub_1B03BD5FC(v10, type metadata accessor for MessageBatches);
        if (v14 > a2)
        {
          sub_1B03BDE74(0xEu);
          return sub_1B03BDD7C(&v16, 14);
        }
      }
    }
  }

  return result;
}

BOOL sub_1B0B3BF68(_BOOL8 result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return a4 == 2 && !a3;
    }

    if (a4 != 1)
    {
      return 0;
    }

    if (((a3 | result) & 0x8000000000000000) == 0)
    {
      return a3 == result;
    }

    __break(1u);
  }

  if (a4)
  {
    return 0;
  }

  if (((a3 | result) & 0x8000000000000000) == 0)
  {
    return a3 == result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B3BFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownloadPerPass();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B3C088(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    result = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0B3C1EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_1B0B3C234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B3C2AC(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v4 = sub_1B0E44B88();
  v5 = (*(a2 + 96))(a1, a2);
  if (v6)
  {
    MEMORY[0x1B2726E80](v5);

    MEMORY[0x1B2726E80](45, 0xE100000000000000);
  }

  return v4;
}

uint64_t sub_1B0B3C384()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E46C78();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B3C3F4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  MEMORY[0x1B2728D70](*(v0 + 8));
  sub_1B0E46C78();
  return MEMORY[0x1B2728D70](v1 | (v1 << 32));
}

uint64_t sub_1B0B3C440()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E46C78();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  return sub_1B0E46CB8();
}

unint64_t sub_1B0B3C4AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1B0B3DB2C(v5, v7) & 1;
}

unint64_t sub_1B0B3C4FC()
{
  result = qword_1EB6E48A0[0];
  if (!qword_1EB6E48A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB6E48A0);
  }

  return result;
}

uint64_t sub_1B0B3C598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Task.Logger(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for MailboxTaskLogger(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0B3DA68(a1, v8);
  v16 = a2 + 16;
  v15 = *(a2 + 16);
  v14 = *(v16 + 8);
  (*(v14 + 64))(&v28, v15, v14);
  v27 = v29;
  v17 = v30;
  v18 = v31;
  v19 = sub_1B0E439A8();
  (*(*(v19 - 8) + 16))(v13, v8, v19);
  v20 = &v8[*(v5 + 28)];
  v22 = *v20;
  v21 = v20[1];
  v23 = v20[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v32 = v28;
  sub_1B039E440(&v32);
  sub_1B0B3DACC(v8, type metadata accessor for Task.Logger);
  v24 = &v13[*(v10 + 28)];
  *v24 = v22;
  *(v24 + 1) = v21;
  *(v24 + 2) = v23;
  *(v24 + 12) = v27;
  *(v24 + 4) = v17;
  *(v24 + 10) = v18;
  (*(v14 + 104))(v13, v15, v14);
  return sub_1B0B3DACC(v13, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1B0B3C7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + *(a3 + 36));
  v7 = *v5;
  v6 = v5[1];
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(a1);
  v11 = v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v11;
}

uint64_t sub_1B0B3C8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Task.Logger(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B3DA68(a1, v10);
  (*(*(a2 + 24) + 64))(&v21, *(a2 + 16));
  LOWORD(a2) = v22;
  v11 = v23;
  v12 = v24;
  v13 = sub_1B0E439A8();
  (*(*(v13 - 8) + 16))(a3, v10, v13);
  v14 = &v10[*(v7 + 28)];
  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = *(v14 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = v21;
  sub_1B039E440(&v25);
  sub_1B0B3DACC(v10, type metadata accessor for Task.Logger);
  result = type metadata accessor for MailboxTaskLogger(0);
  v19 = a3 + *(result + 20);
  *v19 = v15;
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  *(v19 + 24) = a2;
  *(v19 + 32) = v11;
  *(v19 + 40) = v12;
  return result;
}

uint64_t sub_1B0B3CA48@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a5;
  v57 = a4;
  v54 = a1;
  v59 = a7;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a6 + 16);
  v55 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = type metadata accessor for ClientCommand(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_1B0E45D88();
  v49 = *(v17 - 8);
  v50 = v17;
  v18 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v48 - v19;
  v53 = AssociatedTypeWitness;
  v52 = *(AssociatedTypeWitness - 8);
  v21 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v51 = &v48 - v23;
  v24 = sub_1B0B3C7A4(a2, a3, a6);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v56;
  v56 = a6;
  v32 = a6;
  v33 = v55;
  sub_1B0B3C8E0(v31, v32, v13);
  v34 = *(v33 + 112);
  v35 = v57;
  v57 = v14;
  v34(v24, v26, v28, v30, v35, v13, v14, v33);

  sub_1B0B3DACC(v13, type metadata accessor for MailboxTaskLogger);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v20, 1, TupleTypeMetadata2) == 1)
  {
    (*(v49 + 8))(v20, v50);
    v36 = 1;
    v37 = v59;
  }

  else
  {
    v38 = *(TupleTypeMetadata2 + 48);
    v39 = v51;
    v40 = v52;
    v41 = v53;
    (*(v52 + 32))(v51, v20, v53);
    v42 = v59;
    sub_1B0A90A00(&v20[v38], v59);
    v56 = *(v56 + 36);
    v43 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v45 = swift_getAssociatedConformanceWitness();
    v60 = v41;
    v61 = v43;
    v62 = AssociatedConformanceWitness;
    v63 = v45;
    v46 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap();
    sub_1B0BB2B34(v54, v39, v46);
    (*(v40 + 8))(v39, v41);
    v36 = 0;
    v37 = v42;
  }

  return (*(*(v58 - 8) + 56))(v37, v36, 1);
}

unint64_t sub_1B0B3CE50(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a5;
  v53 = a4;
  v50 = a1;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a6 + 16);
  v15 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_1B0E45D88();
  v44 = *(v17 - 8);
  v45 = v17;
  v18 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - v19;
  v49 = AssociatedTypeWitness;
  v47 = *(AssociatedTypeWitness - 8);
  v21 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v46 = &v44 - v23;
  v24 = sub_1B0B3C7A4(a2, a3, a6);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v48 = a6;
  sub_1B0B3C8E0(v52, a6, v13);
  v31 = *(v15 + 120);
  v32 = v53;
  v52 = v14;
  v53 = v6;
  v31(v24, v26, v28, v30, v32, v13, v14, v15);

  v33 = TupleTypeMetadata2;

  sub_1B0B3DACC(v13, type metadata accessor for MailboxTaskLogger);
  if ((*(*(v33 - 8) + 48))(v20, 1, v33) == 1)
  {
    (*(v44 + 8))(v20, v45);
    return 0xF000000000000007;
  }

  else
  {
    v34 = *&v20[*(v33 + 48)];
    v35 = v46;
    v36 = v47;
    v37 = v49;
    (*(v47 + 32))(v46, v20, v49);
    v38 = *(v48 + 36);
    v39 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v41 = swift_getAssociatedConformanceWitness();
    v54 = v39;
    v55 = v37;
    v56 = AssociatedConformanceWitness;
    v57 = v41;
    v42 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap();
    sub_1B0BB2CD4(v50, v35, v42);
    (*(v36 + 8))(v35, v37);
  }

  return v34;
}

uint64_t sub_1B0B3D20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for MailboxTaskLogger(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B0B3C7A4(a2, a3, a6);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1B0B3C8E0(a5, a6, v15);
  (*(*(a6 + 24) + 128))(a1, v16, v18, v20, v22, a4, v15, *(a6 + 16), *(a6 + 24));

  return sub_1B0B3DACC(v15, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1B0B3D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B0B3C7A4(a2, a3, a5);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1B0B3C8E0(a4, a5, v13);
  (*(*(a5 + 24) + 136))(a1, v14, v16, v18, v20, v13, *(a5 + 16));

  return sub_1B0B3DACC(v13, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1B0B3D484(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a8;
  v42 = a3;
  v46 = a7;
  v49 = a6;
  v50 = a1;
  v43 = a4;
  v44 = a5;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a9 + 16);
  v14 = *(a9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1B0E45D88();
  v37 = *(v16 - 8);
  v38 = v16;
  v17 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v48 = *(AssociatedTypeWitness - 8);
  v20 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v39 = &v36 - v22;
  v40 = a9;
  v23 = *(a9 + 36);
  v47 = v9;
  v24 = (v9 + v23);
  v26 = *v24;
  v25 = v24[1];
  v27 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedConformanceWitness();
  v30 = AssociatedConformanceWitness;
  v31 = v48;
  sub_1B0BB2E6C(v50, v26, AssociatedTypeWitness, v27, v30, v29, v19);
  if ((*(v31 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v37 + 8))(v19, v38);
    type metadata accessor for MailboxTaskWithCustomHistory.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v32 = v50;
    *(v32 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v34 = v39;
    (*(v31 + 32))(v39, v19, AssociatedTypeWitness);
    v35 = v45;
    sub_1B0B3C8E0(v41, v40, v45);
    (*(v14 + 144))(v34, v42, v43, v44, v49, v46, v35, v13, v14);
    sub_1B0B3DACC(v35, type metadata accessor for MailboxTaskLogger);
    return (*(v31 + 8))(v34, AssociatedTypeWitness);
  }
}

uint64_t sub_1B0B3D818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B3C8E0(a2, a3, v9);
  (*(*(a3 + 24) + 160))(a1, v9, *(a3 + 16));
  return sub_1B0B3DACC(v9, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1B0B3D8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B3C8E0(a2, a3, v9);
  (*(*(a3 + 24) + 168))(a1, v9, *(a3 + 16));
  return sub_1B0B3DACC(v9, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1B0B3DA2C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B0B3DA68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Task.Logger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B3DACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_1B0B3DB2C(uint64_t *result, uint64_t *a2)
{
  if (result[1] != a2[1])
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return (*(result + 8) == *(a2 + 8) && (*(result + 8) | (*(result + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)) && (sub_1B04520BC(result[3], a2[3]) & 1) != 0);
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return (*(result + 8) == *(a2 + 8) && (*(result + 8) | (*(result + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)) && (sub_1B04520BC(result[3], a2[3]) & 1) != 0);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B3DBEC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v37 = a2;
  v41 = a1;
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 16);
  v9 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1B0E45D88();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v40 = *(AssociatedTypeWitness - 8);
  v16 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v34 = &v32 - v18;
  v36 = a4;
  v19 = *(a4 + 36);
  v39 = v4;
  v20 = (v4 + v19);
  v22 = *v20;
  v21 = v20[1];
  v23 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v26 = AssociatedConformanceWitness;
  v27 = v40;
  sub_1B0BB3114(v41, v21, v23, AssociatedTypeWitness, v26, v25, v15);
  if ((*(v27 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v32 + 8))(v15, v33);
    type metadata accessor for MailboxTaskWithCustomHistory.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v28 = v41;
    *(v28 + 4) = 1;
    return swift_willThrow();
  }

  else
  {
    v30 = v34;
    (*(v27 + 32))(v34, v15, AssociatedTypeWitness);
    v31 = v38;
    sub_1B0B3C8E0(v35, v36, v38);
    (*(v9 + 152))(v30, v37, v31, v10, v9);
    sub_1B0B3DACC(v31, type metadata accessor for MailboxTaskLogger);
    return (*(v27 + 8))(v30, AssociatedTypeWitness);
  }
}

void sub_1B0B3DF88()
{
  sub_1B0B3E074(319, &qword_1EB6DB578, &unk_1EB6E2640, &qword_1B0E9B010, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B0B3E074(319, &qword_1EB6DE248, &unk_1EB6E26C0, &unk_1B0E9DE10, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B3E074(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

char *sub_1B0B3E0D8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = *v6;
    a1(&v12, &v14);
    if (v3)
    {
      break;
    }

    if ((v13 & 1) == 0)
    {
      v8 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B0AFF55C(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_1B0AFF55C((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[8 * v10 + 32] = v8;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_1B0B3E208(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  for (i = (a3 + 32); ; ++i)
  {
    v56[0] = *i;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a1(&v42, v56);
    if (v3)
    {
      break;
    }

    v40[12] = v54;
    v41[0] = v55[0];
    *(v41 + 9) = *(v55 + 9);
    v40[8] = v50;
    v40[9] = v51;
    v40[10] = v52;
    v40[11] = v53;
    v40[4] = v46;
    v40[5] = v47;
    v40[6] = v48;
    v40[7] = v49;
    v40[0] = v42;
    v40[1] = v43;
    v40[2] = v44;
    v40[3] = v45;
    if (get_enum_tag_for_layout_string_12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionVSg_0(v40) == 1)
    {
      v38 = v54;
      v39[0] = v55[0];
      *(v39 + 9) = *(v55 + 9);
      v34 = v50;
      v35 = v51;
      v36 = v52;
      v37 = v53;
      v30 = v46;
      v31 = v47;
      v32 = v48;
      v33 = v49;
      v26 = v42;
      v27 = v43;
      v28 = v44;
      v29 = v45;
      sub_1B0398EFC(&v26, &qword_1EB6E4940, &unk_1B0EC6680);
    }

    else
    {
      v38 = v54;
      v39[0] = v55[0];
      *(v39 + 9) = *(v55 + 9);
      v34 = v50;
      v35 = v51;
      v36 = v52;
      v37 = v53;
      v30 = v46;
      v31 = v47;
      v32 = v48;
      v33 = v49;
      v26 = v42;
      v27 = v43;
      v28 = v44;
      v29 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B0AFFC58(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_1B0AFFC58((v8 > 1), v9 + 1, 1, v6);
      }

      v16 = v30;
      v17 = v31;
      v14 = v28;
      v15 = v29;
      v20 = v34;
      v21 = v35;
      v18 = v32;
      v19 = v33;
      *&v25[9] = *(v39 + 9);
      v24 = v38;
      *v25 = v39[0];
      v22 = v36;
      v23 = v37;
      v12 = v26;
      v13 = v27;
      *(v6 + 2) = v9 + 1;
      v10 = &v6[240 * v9];
      *(v10 + 3) = v13;
      *(v10 + 4) = v14;
      *(v10 + 2) = v12;
      *(v10 + 7) = v17;
      *(v10 + 8) = v18;
      *(v10 + 5) = v15;
      *(v10 + 6) = v16;
      *(v10 + 11) = v21;
      *(v10 + 12) = v22;
      *(v10 + 9) = v19;
      *(v10 + 10) = v20;
      *(v10 + 249) = *&v25[9];
      *(v10 + 14) = v24;
      *(v10 + 15) = *v25;
      *(v10 + 13) = v23;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

char *sub_1B0B3E4C8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a1;
  v6 = (a3 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  v19 = a1;
  while (1)
  {
    v9 = *v6;
    v17 = *(v6 - 1);
    v18 = v9;
    v5(&v15, &v17);
    if (v3)
    {
      break;
    }

    v10 = v16;
    if (v16 != 2)
    {
      v11 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B0AFFFFC(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_1B0AFFFFC((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v8 = &v7[12 * v13];
      *(v8 + 4) = v11;
      v8[40] = v10 & 1;
      v5 = v19;
    }

    v6 += 12;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_1B0B3E618(void (*a1)(uint64_t *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 80);
  v42 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = *v6;
    v8 = *(v6 - 2);
    v9 = *(v6 - 1);
    v10 = *(v6 - 3);
    v11 = *(v6 - 8);
    v12 = *(v6 - 5);
    v35 = *(v6 - 12);
    v36 = v12;
    v37 = v11;
    v38 = v10;
    v39 = v8;
    v40 = v9;
    v41 = v7;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B2000(v10, v8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a1(&v30, &v35);
    if (v4)
    {
      break;
    }

    v13 = v38;
    v14 = v39;

    sub_1B0391D50(v13, v14);

    v15 = v30;
    v16 = v31;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    if (v33 == 1)
    {
      sub_1B0B4152C(v30, v31, v32, 1);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1B0B00060(0, *(v42 + 2) + 1, 1, v42);
      }

      v21 = *(v42 + 2);
      v20 = *(v42 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v25 = sub_1B0B00060((v20 > 1), v21 + 1, 1, v42);
        v22 = v21 + 1;
        v42 = v25;
      }

      v23 = v42;
      *(v42 + 2) = v22;
      v24 = &v23[40 * v21];
      *(v24 + 8) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = v18;
      v24[64] = v19;
    }

    v6 += 56;
    if (!--v5)
    {
      return v42;
    }
  }

  v26 = v38;
  v27 = v39;

  sub_1B0391D50(v26, v27);

  return v42;
}

uint64_t sub_1B0B3E814(void (*a1)(void *__return_ptr, void), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v31 = a1;
  if (v9)
  {
LABEL_10:
    while (1)
    {
      v15 = __clz(__rbit64(v9)) | (v12 << 6);
      v16 = *(a3 + 56) + 24 * v15;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      LOBYTE(v16) = *(v16 + 17);
      v26 = *(*(a3 + 48) + 16 * v15);
      v27 = v17;
      v28 = v18;
      v29 = v19;
      v30 = v16;
      sub_1B03B2000(v26, *(&v26 + 1));
      a1(&v25, &v26);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      sub_1B0391D50(v26, *(&v26 + 1));
      if (*(&v25 + 1) >> 60 == 15)
      {
        result = sub_1B050755C(v25, *(&v25 + 1));
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v24 = v25;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0B006F4(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        v22 = v13;
        v23 = v24;
        if (v21 >= v20 >> 1)
        {
          result = sub_1B0B006F4((v20 > 1), v21 + 1, 1, v13);
          v23 = v24;
          v22 = result;
        }

        *(v22 + 16) = v21 + 1;
        v13 = v22;
        *(v22 + 16 * v21 + 32) = v23;
        a1 = v31;
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }

    sub_1B0391D50(v26, *(&v26 + 1));

LABEL_19:

    return v13;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v10)
      {
        goto LABEL_19;
      }

      v9 = *(v6 + 8 * v14);
      ++v12;
      if (v9)
      {
        v12 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B3EA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v30 = a3;
  v29 = a1;
  v32 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  v31 = a2;
  v21 = sub_1B0B417E8(a2);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B03B5C80(v20, v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v22 = 1;
  }

  else
  {
    sub_1B03C60A4(v17, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v9, v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v22 = 0;
  }

  (*(v6 + 56))(v13, v22, 1, v5);
  v23 = v32;
  sub_1B0B3EF98(v29, v21, v13, v32);
  sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if ((v30 & 1) == 0)
  {
    return sub_1B0398EFC(v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v24 = v23[1];
  v25 = *(v24 + 2);
  if (!v25)
  {
    return sub_1B0398EFC(v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v34 = 1;
  v33 = *&v24[8 * v25 + 28];
  v26 = sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(&v34, &v33, &type metadata for UID, v26, &v35);
  v27 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1B0B8C8B0(v24);
  }

  result = sub_1B0398EFC(v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v25 > *(v24 + 2))
  {
    __break(1u);
  }

  else
  {
    *&v24[8 * v25 + 24] = v27;
    v23[1] = v24;
  }

  return result;
}

uint64_t sub_1B0B3ED74()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 8 * v2 + 24);
  v6 = *(v1 + 36);
  v7 = v3;
  v4 = sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(&v7, &v6, &type metadata for UID, v4, &v8);
  return v8;
}

uint64_t sub_1B0B3EDEC(uint64_t result)
{
  if ((result & 0x100000000) == 0)
  {
    v2 = v1;
    v3 = *(v1 + 8);
    if (*(v3 + 16))
    {
      v4 = *(v3 + 32);
      if (*(v3 + 36) <= result)
      {
        v5 = result;
      }

      else
      {
        v5 = *(v3 + 36);
      }

      v11 = v5;
      v12 = v4;
      v6 = sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v12, &v11, &type metadata for UID, v6, &v13);
      v7 = v13;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (*(v3 + 16))
        {
LABEL_8:
          *(v3 + 32) = v7;
          *(v1 + 8) = v3;
          return result;
        }
      }

      else
      {
        result = sub_1B0B8C8B0(v3);
        v3 = result;
        if (*(result + 16))
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
      v8 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1B0EC1E70;
      v12 = v8;
      LODWORD(v13) = 1;
      v10 = sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v13, &v12, &type metadata for UID, v10, v9 + 32);

      *(v2 + 8) = v9;
    }
  }

  return result;
}

unint64_t sub_1B0B3EF14()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 8 * v2 + 24);
    v7 = *(v1 + 36);
    v8 = v3;
    v4 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v8, &v7, &type metadata for UID, v4, &v9);
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v2 == 0) << 32);
}

uint64_t sub_1B0B3EF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v33 = a3;
  v31 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v30 - v8;
  v10 = *(type metadata accessor for MessageBatches(0) + 24);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v12 = *(*(v11 - 8) + 56);
  v32 = a4;
  v30 = v10;
  v12(a4 + v10, 1, 1, v11);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = 0;
    v4 = &qword_1B0E9CC60;
    while (v14 < *(a2 + 16))
    {
      v36[0] = *(a2 + 32 + 8 * v14);
      v15 = sub_1B041C1E8();
      v37 = Range<>.init<A>(_:)(v36, &type metadata for UID, v15);
      if (HIDWORD(v37) != v37)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        v16 = sub_1B0E46E88();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
        sub_1B0E46E38();
        v16(v36, 0);
      }

      if (v13 == ++v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_7:
  v17 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  swift_getKeyPath();
  v18 = *(a2 + 16);
  if (v18)
  {
    v36[0] = MEMORY[0x1E69E7CC0];
    sub_1B0452620(0, v18, 0);
    v19 = v36[0];
    v4 = (a2 + 32);
    do
    {
      v35 = *v4;
      swift_getAtKeyPath();
      v20 = v37;
      v36[0] = v19;
      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_1B0452620((v21 > 1), v22 + 1, 1);
        v19 = v36[0];
      }

      *(v19 + 2) = v22 + 1;
      *&v19[8 * v22 + 32] = v20;
      ++v4;
      --v18;
    }

    while (v18);

    v23 = *(v19 + 2);
    if (v23)
    {
LABEL_13:
      v24 = 0;
      v25 = (v19 + 32);
      while (1)
      {
        v26 = *v25++;
        v27 = __OFADD__(v24, v26);
        v24 += v26;
        if (v27)
        {
          break;
        }

        if (!--v23)
        {
          goto LABEL_19;
        }
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
    v23 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v23)
    {
      goto LABEL_13;
    }
  }

  v24 = 0;
LABEL_19:

  if (v17 == v24)
  {
    v28 = v32;
    *v32 = v31;
    v36[0] = a2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B40B94(v36);

    v28[1] = v36[0];
    return sub_1B0B41460(v33, v28 + v30);
  }

LABEL_23:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B0B3F320(uint64_t result)
{
  v1 = 4507;
  if (result < 4507)
  {
    v1 = result;
  }

  if (v1 <= 1000)
  {
    v2 = 1000;
  }

  else
  {
    v2 = v1;
  }

LABEL_8:
  v3 = v2;
  v4 = v2 / 2;
  if ((v2 / 2))
  {
    v6 = 1;
    v8 = 1;
    if ((v2 + 1) < 3)
    {
      goto LABEL_17;
    }

LABEL_39:
    v8 = 1;
    v15 = 31;
    while (1)
    {
      if (v4)
      {
        v17 = v8 * v15;
        if ((v8 * v15) >> 64 != (v8 * v15) >> 63)
        {
          goto LABEL_57;
        }

        if (v2 == -1 && v17 == 0x8000000000000000)
        {
          goto LABEL_58;
        }

        v8 = v17 % v2;
      }

      v18 = v15 * v15;
      if ((v15 * v15) >> 64 != (v15 * v15) >> 63)
      {
        goto LABEL_54;
      }

      if (v2 == -1 && v18 == 0x8000000000000000)
      {
        break;
      }

      v15 = v18 % v2;
      v16 = v4 >= 2;
      v4 >>= 1;
      if (!v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v5 = 1;
  do
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v7 = v4;
    v4 /= 2;
    ++v5;
  }

  while ((v4 & 1) == 0);
  if ((v7 + 1) >= 3)
  {
    if (!v2)
    {
      goto LABEL_62;
    }

    goto LABEL_39;
  }

  v8 = 1;
LABEL_14:
  if (v6 < 1)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_17:
  if (v2)
  {
    --v2;
    v9 = __OFSUB__(v3, 1);
    v10 = 1;
    while (1)
    {
      v11 = v8 * v8;
      if ((v8 * v8) >> 64 != (v8 * v8) >> 63)
      {
        break;
      }

      if (v3 == -1 && v11 == 0x8000000000000000)
      {
        goto LABEL_55;
      }

      v12 = v11 % v3;
      if (v12 == 1 && v8 != 1)
      {
        if (v9)
        {
          goto LABEL_56;
        }

        if (v8 != v2)
        {
          goto LABEL_7;
        }
      }

      if (v6 == v10)
      {
        if (v12 == 1)
        {
          result = sub_1B0B3F590(73, v3);
          if ((result & 1) == 0)
          {
            return v3;
          }
        }

LABEL_7:
        if (v3 == 0x8000000000000000)
        {
          goto LABEL_61;
        }

        goto LABEL_8;
      }

      v8 = v12;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_53;
      }
    }

LABEL_51:
    __break(1u);
    return v3;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1B0B3F500(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a3)
  {
    v3 = result;
    result = 1;
    while (1)
    {
      if (a2)
      {
        v4 = result * v3;
        if ((result * v3) >> 64 != (result * v3) >> 63)
        {
          goto LABEL_20;
        }

        if (v4 == 0x8000000000000000 && a3 == -1)
        {
          goto LABEL_22;
        }

        result = v4 % a3;
      }

      v6 = v3 * v3;
      if ((v3 * v3) >> 64 != (v3 * v3) >> 63)
      {
        break;
      }

      if (v6 == 0x8000000000000000 && a3 == -1)
      {
        goto LABEL_21;
      }

      v3 = v6 % a3;
      v8 = a2 > 1;
      a2 >>= 1;
      if (!v8)
      {
        return result;
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
  return result;
}

uint64_t sub_1B0B3F590(uint64_t result, uint64_t a2)
{
  v3 = a2 / 2;
  if ((v3 & 1) == 0)
  {
    v4 = 1;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_29;
      }

      v3 /= 2;
      ++v4;
      if (v3)
      {
        result = sub_1B0B3F500(result, v3, a2);
        if (v5 >= 1)
        {
          goto LABEL_8;
        }

        __break(1u);
        break;
      }
    }
  }

  result = sub_1B0B3F500(result, v3, a2);
  v5 = 1;
LABEL_8:
  if (a2)
  {
    v6 = __OFSUB__(a2, 1);
    v7 = 1;
    while (1)
    {
      v8 = result * result;
      if ((result * result) >> 64 != (result * result) >> 63)
      {
        break;
      }

      if (a2 == -1 && v8 == 0x8000000000000000)
      {
        goto LABEL_30;
      }

      v9 = v8 % a2;
      v11 = v8 % a2 == 1;
      v10 = v8 % a2 != 1;
      v11 = !v11 || result == 1;
      if (!v11)
      {
        if (v6)
        {
          goto LABEL_31;
        }

        if (result != a2 - 1)
        {
          return 1;
        }
      }

      if (v5 == v7)
      {
        return v10;
      }

      result = v9;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        return 1;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B3F688()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 8);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v19 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v0;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B0B09F04(0, v11, 0);
    v12 = v23;
    v13 = (v10 + 32);
    v14 = sub_1B041C1E8();
    do
    {
      v22 = *v13;
      v21 = Range<>.init<A>(_:)(&v22, &type metadata for UID, v14);
      sub_1B03D06F8();
      sub_1B0E46F08();
      v23 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1B0B09F04(v15 > 1, v16 + 1, 1);
        v12 = v23;
      }

      *(v12 + 16) = v16 + 1;
      sub_1B03C60A4(v5, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, &unk_1EB6E26C0, &unk_1B0E9DE10);
      ++v13;
      --v11;
    }

    while (v11);
    v9 = v19;
  }

  v23 = v12;
  sub_1B0B3F8AC(v9);
  sub_1B0AFC16C(v9);
  return v23;
}

uint64_t sub_1B0B3F8AC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v16 = type metadata accessor for MessageBatches(0);
  sub_1B03B5C80(v1 + *(v16 + 24), v6, &unk_1EB6E3670, &unk_1B0E9B260);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  if ((*(*(v17 - 8) + 48))(v6, 1, v17) == 1)
  {
    sub_1B0398EFC(v6, &unk_1EB6E3670, &unk_1B0E9B260);
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_1B0398EFC(v10, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03B5C80(v6, v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_1B03C60A4(v10, v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v18 = *v1;
  sub_1B03C60A4(v15, a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  *(a1 + *(result + 20)) = v18;
  return result;
}

uint64_t sub_1B0B3FBB4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v57 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v61 = v1;
  v62 = v7;
  if (sub_1B0E46E98())
  {
    v24 = *(v58 + 56);

    return v24(a1, 1, 1, v3);
  }

  else
  {
    v54 = v6;
    v55 = v3;
    v56 = a1;
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v59 = (v8 + 16);
    v26 = v61;
    while (1)
    {
      MessageIdentifierSet.ranges.getter(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      v27 = sub_1B0E46E18();
      v28 = sub_1B0E46E28();
      v29 = sub_1B0E46E18();
      result = sub_1B0E46E28();
      if (v27 < v29 || result < v27)
      {
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
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }

      v31 = sub_1B0E46E18();
      v32 = sub_1B0E46E28();
      result = sub_1B0398EFC(v14, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v28 < v31 || v32 < v28)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v28, v27))
      {
        goto LABEL_33;
      }

      if (v28 - v27 > 486)
      {
        break;
      }

      v33 = MessageIdentifierSet.count.getter();
      v34 = *(v26 + *(type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0) + 20));
      if (v33 >= v34 || (sub_1B0E46E98() & 1) != 0)
      {
        break;
      }

      result = MessageIdentifierSet.count.getter();
      v35 = v34 - result;
      if (__OFSUB__(v34, result))
      {
        goto LABEL_34;
      }

      MessageIdentifierSet.ranges.getter(v14);
      v36 = sub_1B0E46E18();
      v37 = sub_1B0E46E28();
      v38 = sub_1B0E46E18();
      result = sub_1B0E46E28();
      if (v36 < v38 || result < v36)
      {
        goto LABEL_35;
      }

      v39 = sub_1B0E46E18();
      v40 = sub_1B0E46E28();
      result = sub_1B0398EFC(v14, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v37 < v39 || v40 < v37)
      {
        goto LABEL_36;
      }

      v41 = v37 - v36;
      if (__OFSUB__(v37, v36))
      {
        goto LABEL_37;
      }

      v42 = __OFSUB__(487, v41);
      v43 = 487 - v41;
      if (v42)
      {
        goto LABEL_38;
      }

      if (v43 >= v35)
      {
        v44 = v35;
      }

      else
      {
        v44 = v43;
      }

      v26 = v61;
      MessageIdentifierSet.suffix(_:)(v44, v15, v21);
      v45 = v62;
      sub_1B0E46EC8();
      (*v59)(v60, v21, v45);
      sub_1B0E46ED8();
      sub_1B0398EFC(v21, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    v46 = v57;
    sub_1B03B5C80(v23, v57, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v47 = MessageIdentifierSet.count.getter();
    v48 = v54;
    v49 = v55;
    if (v47 < 1)
    {
      sub_1B0398EFC(v46, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v52 = 1;
      v51 = v56;
    }

    else
    {
      sub_1B03C60A4(v46, v54, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v50 = v48;
      v51 = v56;
      sub_1B03C60A4(v50, v56, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v52 = 0;
    }

    (*(v58 + 56))(v51, v52, 1, v49);
    return sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }
}

uint64_t sub_1B0B4018C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 20));
  sub_1B03C60A4(v2, a2, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  *(a2 + *(result + 20)) = v4;
  return result;
}

size_t sub_1B0B401E8()
{
  v1 = sub_1B0AE1190(v0);
  sub_1B0B4178C(v0);
  return v1;
}

uint64_t sub_1B0B40220@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v61 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v64 = v56 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v56 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v63 = v56 - v31;
  MEMORY[0x1EEE9AC00](v30);
  if ((a1 & 0x100000000) != 0)
  {
    v48 = *v3;
    v49 = type metadata accessor for MessageBatches(0);
    sub_1B03B5C80(v3 + *(v49 + 24), v15, &unk_1EB6E3670, &unk_1B0E9B260);
    return sub_1B0B3EF98(v48, MEMORY[0x1E69E7CC0], v15, a2);
  }

  else
  {
    v58 = a2;
    LODWORD(v66) = a1;
    LODWORD(v65) = -1;
    v33 = v56 - v32;
    v34 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v66, &v65, &type metadata for UID, v34, &v67);
    v66 = v67;
    v65 = Range<>.init<A>(_:)(&v66, &type metadata for UID, v34);
    v56[1] = sub_1B03D06F8();
    v35 = sub_1B0E46F08();
    v36 = v3[1];
    v57 = *v3;
    MEMORY[0x1EEE9AC00](v35);
    v59 = v33;
    v56[-2] = v33;
    v38 = sub_1B0B3E0D8(sub_1B0B41510, &v56[-4], v37);
    v39 = type metadata accessor for MessageBatches(0);
    sub_1B03B5C80(v3 + *(v39 + 24), v19, &unk_1EB6E3670, &unk_1B0E9B260);
    v40 = v62;
    v41 = 1;
    if ((*(v62 + 48))(v19, 1, v6) != 1)
    {
      v42 = v60;
      sub_1B03C60A4(v19, v60, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03C60A4(v42, v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v41 = 0;
    }

    (*(v25 + 56))(v23, v41, 1, v24);
    v43 = *(v25 + 48);
    v44 = v6;
    if (v43(v23, 1, v24) == 1)
    {
      v45 = v63;
      sub_1B0E46EE8();
      v46 = v43(v23, 1, v24);
      v47 = v58;
      if (v46 != 1)
      {
        sub_1B0398EFC(v23, &qword_1EB6E3920, &qword_1B0E9B070);
      }
    }

    else
    {
      v45 = v63;
      sub_1B03C60A4(v23, v63, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v47 = v58;
    }

    sub_1B03B5C80(v45, v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v54 = 1;
      v55 = v44;
      v53 = v64;
    }

    else
    {
      v51 = v61;
      sub_1B03C60A4(v29, v61, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v52 = v51;
      v53 = v64;
      sub_1B03C60A4(v52, v64, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v54 = 0;
      v55 = v44;
    }

    (*(v40 + 56))(v53, v54, 1, v55);
    sub_1B0B3EF98(v57, v38, v53, v47);
    sub_1B0398EFC(v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return sub_1B0398EFC(v59, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }
}

uint64_t sub_1B0B4083C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v26 - v15;
  v27 = *a1;
  v17 = sub_1B041C1E8();
  v26[1] = Range<>.init<A>(_:)(&v27, &type metadata for UID, v17);
  sub_1B03D06F8();
  sub_1B0E46F08();
  MessageIdentifierSet.intersection(_:)(a2, v16);
  sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v18 = sub_1B0B4AAF0();
  if ((v18 & 0x100000000) != 0)
  {
    result = sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_6;
  }

  v19 = v18;
  MessageIdentifierSet.ranges.getter(v9);
  v20 = sub_1B0B4A3E8();
  v22 = v21;
  sub_1B0398EFC(v9, &unk_1EB6E2780, &unk_1B0E9C5E0);
  result = sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v22)
  {
LABEL_6:
    v25 = 0;
    v24 = 1;
    goto LABEL_7;
  }

  if (HIDWORD(v20) >= v19)
  {
    v24 = 0;
    v25 = v20 & 0xFFFFFFFF00000000 | v19;
LABEL_7:
    *a3 = v25;
    *(a3 + 8) = v24;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B40A68@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = *(a1 + 20);
  *a7 = v15;
  *(a7 + 4) = v16;
  if ((v16 & 1) != 0 || v15 - a3 < a2)
  {
    LODWORD(v17) = 0;
    v18 = 1;
LABEL_14:
    result = swift_beginAccess();
    *(a1 + 16) = v17;
    *(a1 + 20) = v18;
    return result;
  }

  if (v15 != a4)
  {
    goto LABEL_9;
  }

  if (!a6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a5 == 0x8000000000000000 && a6 == -1)
  {
    goto LABEL_21;
  }

  v19 = __OFSUB__(a2, a5 % a6);
  a2 -= a5 % a6;
  if (!v19)
  {
LABEL_9:
    v20 = -a2;
    if (__OFSUB__(0, a2))
    {
      __break(1u);
    }

    else if (v20 <= 0xFFFFFFFFLL)
    {
      v17 = v15 - a2;
      if (v20 + v15 >= 1)
      {
        if (!HIDWORD(v17))
        {
          v18 = 0;
          goto LABEL_14;
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B0B40B94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0B945A0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B0E469A8();
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
          if (*v13 >= v11)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1B0B40CE8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B0B40CE8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
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

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_1B0B4125C((*a3 + 8 * *v81), (*a3 + 8 * *v83), (*a3 + 8 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = 8 * v9;
      v12 = (*a3 + 8 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v13 < v10) ^ (v17 >= v18);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
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
        v20 = 8 * v7 - 8;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 8;
          v11 += 8;
        }

        while (v22 < v21);
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
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_1B0AFF300((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
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

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_1B0B4125C((*a3 + 8 * *v74), (*a3 + 8 * *v76), (*a3 + 8 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v7 - 8;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 8 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (*v30 >= v28)
    {
LABEL_29:
      ++v7;
      v26 += 8;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 12);
    *(v30 + 8) = *v30;
    *v30 = v28;
    *(v30 + 4) = v31;
    v30 -= 8;
    if (__CFADD__(v29++, 1))
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

uint64_t sub_1B0B4125C(char *__dst, char *__src, char *a3, char *a4)
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

      if (*v4 < *v6)
      {
        break;
      }

      v15 = v4;
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

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
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
      v20 = *(v18 - 2);
      v18 -= 8;
      if (*v17 < v20)
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
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v21 >> 3));
  }

  return 1;
}

uint64_t sub_1B0B41460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B4152C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_1B0391D50(a2, a3);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_10Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B0B416BC()
{
  result = sub_1B043B29C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B0B41734()
{
  result = qword_1EB6E4928;
  if (!qword_1EB6E4928)
  {
    type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4928);
  }

  return result;
}

uint64_t sub_1B0B4178C(uint64_t a1)
{
  v2 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B417E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4930, &qword_1B0EC6670);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v41 - v4;
  v41[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4938, &qword_1B0EC6678);
  v6 = *(*(v41[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v41[0]);
  v8 = v41 - v7;
  v41[1] = a1;
  sub_1B03B5C80(a1, v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v5, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = MessageIdentifierSet.endIndex.getter(v9);
  v12 = v11;
  sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v10 == MessageIdentifierSet.startIndex.getter(v9) && v12 == v13)
  {
    goto LABEL_25;
  }

  v15 = 0;
  v16 = 1;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = MessageIdentifierSet.index(_:offsetBy:)(v10, v12, -1);
    v12 = v18;
    MessageIdentifierSet.subscript.getter(v18, v9, &v44);
    v19 = v44;
    if (v16)
    {
      if (v10 == MessageIdentifierSet.startIndex.getter(v9) && v12 == v20)
      {
        goto LABEL_26;
      }

      v10 = MessageIdentifierSet.index(_:offsetBy:)(v10, v12, -1);
      v12 = v21;
      MessageIdentifierSet.subscript.getter(v21, v9, &v44);
      v22 = v44;
    }

    else
    {
      v22 = v44;
      v19 = v15;
    }

    v23 = MessageIdentifierSet.startIndex.getter(v9);
    v25 = v24;
    if (v23 == MessageIdentifierSet.endIndex.getter(v9) && v25 == v26)
    {
      break;
    }

    MessageIdentifierSet.subscript.getter(v25, v9, &v44);
    if (v44 != v22)
    {
      break;
    }

    v43 = v22;
LABEL_17:
    v42 = v19;
    v27 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v43, &v42, &type metadata for UID, v27, &v44);
    v28 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1B0AFF55C(0, *(v17 + 2) + 1, 1, v17);
    }

    v30 = *(v17 + 2);
    v29 = *(v17 + 3);
    if (v30 >= v29 >> 1)
    {
      v17 = sub_1B0AFF55C((v29 > 1), v30 + 1, 1, v17);
    }

    *(v17 + 2) = v30 + 1;
    *&v17[8 * v30 + 32] = v28;
    v16 = 0;
    v15 = v22;
    if (v10 == MessageIdentifierSet.startIndex.getter(v9))
    {
      v15 = v22;
      if (v12 == v31)
      {
        goto LABEL_26;
      }
    }
  }

  if (v22 != -1)
  {
    v43 = v22 + 1;
    goto LABEL_17;
  }

  __break(1u);
LABEL_25:
  v17 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v32 = &v8[*(v41[0] + 36)];
  *v32 = v10;
  v32[1] = v12;
  sub_1B0398EFC(v8, &qword_1EB6E4938, &qword_1B0EC6678);
  if (*(v17 + 2))
  {
    return sub_1B0B20838(v17);
  }

  v33 = MessageIdentifierSet.startIndex.getter(v9);
  v35 = v34;
  if (v33 == MessageIdentifierSet.endIndex.getter(v9) && v35 == v36)
  {
    return sub_1B0B20838(v17);
  }

  MessageIdentifierSet.subscript.getter(v35, v9, &v44);

  v38 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B0EC1E70;
  v43 = v38;
  LODWORD(v44) = v38;
  v40 = sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(&v44, &v43, &type metadata for UID, v40, v39 + 32);
  return v39;
}

void sub_1B0B41C3C()
{
  sub_1B0B41CC0();
  if (v0 <= 0x3F)
  {
    sub_1B043B29C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B41CC0()
{
  if (!qword_1EB6DB798)
  {
    sub_1B043CF70();
    v0 = sub_1B0E44708();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB798);
    }
  }
}

unint64_t sub_1B0B41D24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27[-v11];
  v13 = *v0;
  v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B24198(v14);
  MessageIdentifierSet.ranges.getter(v8);
  v15 = sub_1B0B4A3E8();
  v17 = v16;
  sub_1B0398EFC(v8, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = HIDWORD(v15);
  }

  v19 = v1 + *(type metadata accessor for MessagesPendingDownload() + 20);
  MessageIdentifierSet.ranges.getter(v6);
  v20 = sub_1B0B4A3E8();
  v22 = v21;
  v23 = HIDWORD(v20);
  if (v21)
  {
    LODWORD(v23) = 0;
  }

  if (v23 <= v18)
  {
    v24 = v18;
  }

  else
  {
    v24 = v23;
  }

  if (v21)
  {
    v24 = v18;
  }

  if (v17)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  sub_1B0398EFC(v6, &unk_1EB6E2780, &unk_1B0E9C5E0);
  sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return v25 | ((v17 & v22 & 1) << 32);
}

uint64_t sub_1B0B41F0C(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  for (i = (result + 49); ; i += 24)
  {
    v8 = *(i - 17);
    v9 = *(i - 9);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v3;
    v14 = v29;
    v15 = sub_1B03FE284(v8);
    v17 = v14[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v14[3] < v20)
    {
      sub_1B0B30B44(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_1B03FE284(v8);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v23 = v29;
      if (v21)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v27 = v15;
    sub_1B0B8DCCC();
    v15 = v27;
    v23 = v29;
    if (v21)
    {
LABEL_3:
      v5 = v23[7] + 24 * v15;
      *v5 = v8;
      *(v5 + 8) = v9;
      *(v5 + 16) = v10;
      *(v5 + 17) = v11;
      goto LABEL_4;
    }

LABEL_11:
    v23[(v15 >> 6) + 8] |= 1 << v15;
    *(v23[6] + 4 * v15) = v8;
    v24 = v23[7] + 24 * v15;
    *v24 = v8;
    *(v24 + 8) = v9;
    *(v24 + 16) = v10;
    *(v24 + 17) = v11;
    v25 = v23[2];
    v19 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v19)
    {
      goto LABEL_17;
    }

    v23[2] = v26;
LABEL_4:
    *v3 = v23;
    v28 = v8;
    v6 = *(type metadata accessor for MessagesPendingDownload() + 20);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    result = MessageIdentifierSet.remove(_:)(&v28, v7, &v29);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

void sub_1B0B420DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - v3;
  if (!*(*v0 + 16))
  {
    v5 = sub_1B03D985C(MEMORY[0x1E69E7CC0]);

    *v0 = v5;
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v6 = type metadata accessor for MessagesPendingDownload();
    sub_1B074F0FC(v4, v0 + *(v6 + 20));
  }
}

uint64_t sub_1B0B421A8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B03D3188(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1B03D06F8();

  return sub_1B0E46E08();
}

uint64_t sub_1B0B42228(int a1)
{
  v3 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.contains(_:)(&v3, v1) & 1;
}

uint64_t sub_1B0B42284(int *a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = *(a1 + 18);
  v7 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return (v4 == a3) & ~MessageIdentifierSet.contains(_:)(&v7, v5);
}

uint64_t sub_1B0B422FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = *(result + 32), result = sub_1B0AE002C(*(result + 8), *(result + 16)), (v6 & 1) != 0))
  {
    v7 = (*(a2 + 56) + 24 * result);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = *(v7 + 16);
    if (*(v7 + 17))
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 | v10;
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 18) = v5;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 18) = 0;
    v12 = 512;
  }

  *(a3 + 16) = v12;
  return result;
}

uint64_t sub_1B0B42388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v25 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A044(0, v13, 0);
    v14 = v29;
    v15 = (a2 + 32);
    v16 = *(v29 + 16);
    do
    {
      v18 = *v15;
      v15 += 6;
      v17 = v18;
      v29 = v14;
      v19 = *(v14 + 24);
      if (v16 >= v19 >> 1)
      {
        sub_1B0B0A044((v19 > 1), v16 + 1, 1);
        v14 = v29;
      }

      *(v14 + 16) = v16 + 1;
      *(v14 + 4 * v16++ + 32) = v17;
      --v13;
    }

    while (v13);
    a1 = v25;
  }

  sub_1B03D06F8();
  sub_1B0E46EE8();
  v20 = *(v14 + 16);
  if (v20)
  {
    v21 = (v14 + 32);
    do
    {
      v22 = *v21++;
      v28 = v22;
      MessageIdentifierSet.insert(_:)(&v29, &v28, v6);
      --v20;
    }

    while (v20);
  }

  sub_1B074BA2C(v10, v12);
  if ((v27 & 0x100000000) != 0)
  {
    sub_1B0B425DC(a1, v26);
  }

  else
  {
    sub_1B0B42884(a1, v27, v26);
  }

  return sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0B42580(int *a1)
{
  v3 = *a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.contains(_:)(&v3, v1) & 1;
}

uint64_t sub_1B0B425DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - v6;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  if (sub_1B0E46E98())
  {
    sub_1B0E46EE8();
    return sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  else
  {
    v9 = MessageIdentifierSet.endIndex.getter(v4);
    v11 = MessageIdentifierSet.index(_:offsetBy:)(v9, v10, -1);
    v13 = v12;
    v14 = MessageIdentifierSet.startIndex.getter(v4);
    v16 = v13 < v15;
    if (v11 != v14)
    {
      v16 = v11 < v14;
    }

    if (!v16)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v13, v4, &v34);
        HIDWORD(v33) = v34;
        MessageIdentifierSet.insert(_:)(v35, &v33 + 4, v4);
        v11 = MessageIdentifierSet.index(_:offsetBy:)(v11, v13, -2);
        v13 = v17;
        v18 = MessageIdentifierSet.startIndex.getter(v4);
        v20 = v13 < v19;
        if (v11 != v18)
        {
          v20 = v11 < v18;
        }
      }

      while (!v20);
    }

    v21 = MessageIdentifierSet.endIndex.getter(v4);
    v23 = MessageIdentifierSet.index(_:offsetBy:)(v21, v22, -2);
    v25 = v24;
    v26 = MessageIdentifierSet.startIndex.getter(v4);
    v28 = v25 < v27;
    if (v23 != v26)
    {
      v28 = v23 < v26;
    }

    if (!v28)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v25, v4, &v34);
        HIDWORD(v33) = v34;
        MessageIdentifierSet.insert(_:)(v35, &v33 + 4, v4);
        v23 = MessageIdentifierSet.index(_:offsetBy:)(v23, v25, -2);
        v25 = v29;
        v30 = MessageIdentifierSet.startIndex.getter(v4);
        v32 = v25 < v31;
        if (v23 != v30)
        {
          v32 = v23 < v30;
        }
      }

      while (!v32);
    }

    return sub_1B074BA2C(v7, a2);
  }
}

uint64_t sub_1B0B42884@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - v8;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  if (sub_1B0E46E98())
  {
    sub_1B0E46EE8();
    return sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  else
  {
    v11 = MessageIdentifierSet.endIndex.getter(v6);
    v13 = MessageIdentifierSet.index(_:offsetBy:)(v11, v12, -1);
    v15 = v14;
    v16 = MessageIdentifierSet.startIndex.getter(v6);
    v18 = v17 < v15;
    if (v16 != v13)
    {
      v18 = v16 < v13;
    }

    if (v18)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v15, v6, &v44);
        if (v44 <= a2)
        {
          break;
        }

        v43 = v44;
        MessageIdentifierSet.insert(_:)(&v44, &v43, v6);
        v13 = MessageIdentifierSet.index(_:offsetBy:)(v13, v15, -1);
        v15 = v19;
        v20 = MessageIdentifierSet.startIndex.getter(v6);
        v22 = v21 < v15;
        if (v20 != v13)
        {
          v22 = v20 < v13;
        }
      }

      while (v22);
    }

    v23 = MessageIdentifierSet.startIndex.getter(v6);
    v25 = v15 < v24;
    if (v13 != v23)
    {
      v25 = v13 < v23;
    }

    if (!v25)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v15, v6, &v43);
        HIDWORD(v42) = v43;
        MessageIdentifierSet.insert(_:)(&v44, &v42 + 4, v6);
        v13 = MessageIdentifierSet.index(_:offsetBy:)(v13, v15, -2);
        v15 = v26;
        v27 = MessageIdentifierSet.startIndex.getter(v6);
        v29 = v15 < v28;
        if (v13 != v27)
        {
          v29 = v13 < v27;
        }
      }

      while (!v29);
    }

    v30 = MessageIdentifierSet.endIndex.getter(v6);
    v32 = MessageIdentifierSet.index(_:offsetBy:)(v30, v31, -2);
    v34 = v33;
    v35 = MessageIdentifierSet.startIndex.getter(v6);
    v37 = v34 < v36;
    if (v32 != v35)
    {
      v37 = v32 < v35;
    }

    if (!v37)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v34, v6, &v43);
        HIDWORD(v42) = v43;
        MessageIdentifierSet.insert(_:)(&v44, &v42 + 4, v6);
        v32 = MessageIdentifierSet.index(_:offsetBy:)(v32, v34, -2);
        v34 = v38;
        v39 = MessageIdentifierSet.startIndex.getter(v6);
        v41 = v34 < v40;
        if (v32 != v39)
        {
          v41 = v32 < v39;
        }
      }

      while (!v41);
    }

    return sub_1B074BA2C(v9, a3);
  }
}

uint64_t sub_1B0B42C18()
{
  result = type metadata accessor for MessagesPendingDownload();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1B0B42C84(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = 0;
  if (sub_1B03D3188(*a1, *a2))
  {
    v6 = type metadata accessor for MessagesPendingDownload();
    v7 = *(v6 + 20);
    sub_1B03D06F8();
    if (sub_1B0E46E08() & 1) != 0 && (sub_1B03D3188(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))))
    {
      v8 = *(v6 + 20);
      if (sub_1B0E46E08())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1B0B42D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownload();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B42DAC(int *a1)
{
  v2 = *(v1 + 16);
  v5 = *a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.contains(_:)(&v5, v3) & 1;
}

uint64_t sub_1B0B42E08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4068, &unk_1B0EC2D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B42E70(uint64_t a1, uint64_t (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for MessagesToRemoveHelper.Range() - 8);
    result = a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
      return result;
    }
  }

  return v11;
}

uint64_t sub_1B0B42F4C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, int *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      v17 = __clz(__rbit64(v12)) | (v16 << 6);
      v18 = *(*(a3 + 48) + 4 * v17);
      v19 = *(a3 + 56) + 16 * v17;
      v20 = *v19;
      v21 = *(v19 + 8);
      LOBYTE(v19) = *(v19 + 9);
      v22 = v18;
      v23 = v20;
      v24 = v21;
      v25 = v19;
      result = a2(a1, &v22);
      if (v4)
      {
        break;
      }

      v12 &= v12 - 1;
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    sub_1B0398EFC(a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        return sub_1B03C60A4(a1, a4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B430BC(uint64_t a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v2 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - v5;
  v50 = type metadata accessor for MessagesToRemoveHelper.Range();
  v7 = *(v50 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v50);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 32123;
  }

  if (v13 >= 0xA)
  {
    v23 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v24 = -1;
    v25 = *(v7 + 72);
    v47 = v10;
    v48 = v25;
    v26 = v23;
    v27 = v13;
    do
    {
      sub_1B0B48F08(v26, v12, type metadata accessor for MessagesToRemoveHelper.Range);
      v28 = *(v50 + 20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      MessageIdentifierSet.ranges.getter(v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      v29 = v6;
      v30 = sub_1B0E46E18();
      if (v30 == sub_1B0E46E28())
      {
LABEL_26:
        sub_1B0398EFC(v6, &unk_1EB6E2780, &unk_1B0E9C5E0);
        __break(1u);
        goto LABEL_27;
      }

      MessageIdentifierSet.RangeView.subscript.getter(v49, &v52);
      sub_1B0398EFC(v6, &unk_1EB6E2780, &unk_1B0E9C5E0);
      v31 = v52;
      sub_1B0B48F70(v12, type metadata accessor for MessagesToRemoveHelper.Range);
      if (v31 < v24)
      {
        v24 = v31;
      }

      v26 += v48;
      --v27;
    }

    while (v27);
    v32 = 1;
    v34 = v46;
    v33 = v47;
    while (1)
    {
      sub_1B0B48F08(v23, v33, type metadata accessor for MessagesToRemoveHelper.Range);
      v35 = *(v50 + 20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      MessageIdentifierSet.ranges.getter(v34);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      v29 = v34;
      v36 = sub_1B0E46E18();
      if (v36 == sub_1B0E46E28())
      {
        break;
      }

      v37 = sub_1B0E46E28();
      v38 = v37 - 1;
      if (__OFSUB__(v37, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v39 = sub_1B0E46E18();
      v40 = sub_1B0E46E28();
      if (v38 < v39 || v38 >= v40)
      {
        goto LABEL_25;
      }

      MessageIdentifierSet.RangeView.subscript.getter(v49, &v52);
      sub_1B0398EFC(v29, &unk_1EB6E2780, &unk_1B0E9C5E0);
      v34 = v29;
      v41 = HIDWORD(v52);
      v33 = v47;
      sub_1B0B48F70(v47, type metadata accessor for MessagesToRemoveHelper.Range);
      if (v41 < v32)
      {
        v32 = v41;
      }

      v23 += v48;
      if (!--v13)
      {
        v52 = 0;
        v53 = 0xE000000000000000;
        LODWORD(v51) = v24;
        sub_1B0E46508();
        MEMORY[0x1B2726E80](58, 0xE100000000000000);
        LODWORD(v51) = v32;
        sub_1B0E46508();
        return v52;
      }
    }

LABEL_27:
    result = sub_1B0398EFC(v29, &unk_1EB6E2780, &unk_1B0E9C5E0);
    __break(1u);
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v13, 0);
    v14 = v51;
    v15 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v16 = *(v7 + 72);
    do
    {
      sub_1B0B46ABC(v15, &v52);
      v17 = v52;
      v18 = v53;
      v51 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B041D32C((v19 > 1), v20 + 1, 1);
        v14 = v51;
      }

      *(v14 + 16) = v20 + 1;
      v21 = v14 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v15 += v16;
      --v13;
    }

    while (v13);
    v52 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v42 = sub_1B0E448E8();
    v44 = v43;

    v52 = 123;
    v53 = 0xE100000000000000;
    MEMORY[0x1B2726E80](v42, v44);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](125, 0xE100000000000000);

    return v52;
  }

  return result;
}

uint64_t sub_1B0B43634(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v138 = a7;
  v135 = a5;
  v133 = a3;
  v134 = a4;
  v132 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v121 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v137 = &v121 - v17;
  v127 = type metadata accessor for MailboxTaskLogger(0);
  v18 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v124 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v126 = &v121 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v136 = &v121 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v125 = &v121 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v121 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v121 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA0, &unk_1B0EC2670);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v121 - v34;
  v36 = type metadata accessor for MessagesToRemoveHelper.Range();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v129 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v131 = (&v121 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v130 = &v121 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v121 - v45;
  v128 = a1;
  v47 = a1;
  v49 = v48;
  sub_1B0B46EB8(v47, a8, v35);
  if ((*(v37 + 48))(v35, 1, v49) == 1)
  {
    return sub_1B0398EFC(v35, &qword_1EB6E3FA0, &unk_1B0EC2670);
  }

  sub_1B0B48EA0(v35, v46, type metadata accessor for MessagesToRemoveHelper.Range);
  v51 = v46;
  v52 = v136;
  if ((a6 & 1) != 0 && (*(v51 + v49[8]) & 1) == 0)
  {
    v53 = v138;
    sub_1B0B48F08(v138, v31, type metadata accessor for MailboxTaskLogger);
    sub_1B0B48F08(v53, v28, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v54 = sub_1B0E43988();
    v55 = sub_1B0E458E8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v141 = v123;
      *v56 = 68159491;
      v122 = v55;
      *(v56 + 4) = 2;
      *(v56 + 8) = 256;
      v57 = v127;
      v58 = v51;
      v59 = &v28[*(v127 + 20)];
      *(v56 + 10) = *v59;
      *(v56 + 11) = 2082;
      v60 = *(v57 + 20);
      v121 = v54;
      v61 = &v31[v60];
      *(v56 + 13) = sub_1B0399D64(*&v31[v60 + 8], *&v31[v60 + 16], &v141);
      *(v56 + 21) = 1040;
      *(v56 + 23) = 2;
      *(v56 + 27) = 512;
      LOWORD(v59) = *(v59 + 12);
      sub_1B0B48F70(v28, type metadata accessor for MailboxTaskLogger);
      *(v56 + 29) = v59;
      v51 = v58;
      v52 = v136;
      *(v56 + 31) = 2160;
      *(v56 + 33) = 0x786F626C69616DLL;
      *(v56 + 41) = 2085;
      v62 = *(v61 + 4);
      LODWORD(v61) = *(v61 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B48F70(v31, type metadata accessor for MailboxTaskLogger);
      v139 = v62;
      v140 = v61;
      v63 = sub_1B0E44BA8();
      v65 = sub_1B0399D64(v63, v64, &v141);

      *(v56 + 43) = v65;
      *(v56 + 51) = 2048;
      *(v56 + 53) = v128;
      v66 = v121;
      _os_log_impl(&dword_1B0389000, v121, v122, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search completed for range #%ld, but server never sent a response. rdar://127003347", v56, 0x3Du);
      v67 = v123;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v67, -1, -1);
      MEMORY[0x1B272C230](v56, -1, -1);
    }

    else
    {
      sub_1B0B48F70(v28, type metadata accessor for MailboxTaskLogger);

      sub_1B0B48F70(v31, type metadata accessor for MailboxTaskLogger);
    }
  }

  v68 = v137;
  sub_1B03B5C80(v51 + v49[5], v137, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v14);
  sub_1B0398EFC(v68, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v69 = sub_1B0E46E18();
  v70 = sub_1B0E46E28();
  v71 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v69 < v71 || result < v69)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v72 = sub_1B0E46E18();
  v73 = sub_1B0E46E28();
  result = sub_1B0398EFC(v14, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v70 < v72 || v73 < v70)
  {
    goto LABEL_25;
  }

  if (__OFSUB__(v70, v69))
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (v70 - v69 > 9)
  {
    v74 = v138;
    v102 = v126;
    sub_1B0B48F08(v138, v126, type metadata accessor for MailboxTaskLogger);
    v103 = v124;
    sub_1B0B48F08(v74, v124, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v104 = v129;
    sub_1B0B48F08(v51, v129, type metadata accessor for MessagesToRemoveHelper.Range);
    v79 = sub_1B0E43988();
    v105 = sub_1B0E45908();
    if (os_log_type_enabled(v79, v105))
    {
      v106 = swift_slowAlloc();
      v131 = v49;
      v107 = v106;
      v137 = swift_slowAlloc();
      v141 = v137;
      *v107 = 68159747;
      *(v107 + 4) = 2;
      *(v107 + 8) = 256;
      v108 = v127;
      v109 = v103 + *(v127 + 20);
      *(v107 + 10) = *v109;
      *(v107 + 11) = 2082;
      v110 = *(v108 + 20);
      v123 = v51;
      v111 = v102 + v110;
      *(v107 + 13) = sub_1B0399D64(*(v102 + v110 + 8), *(v102 + v110 + 16), &v141);
      *(v107 + 21) = 1040;
      *(v107 + 23) = 2;
      *(v107 + 27) = 512;
      LOWORD(v109) = *(v109 + 24);
      sub_1B0B48F70(v103, type metadata accessor for MailboxTaskLogger);
      *(v107 + 29) = v109;
      *(v107 + 31) = 2160;
      *(v107 + 33) = 0x786F626C69616DLL;
      *(v107 + 41) = 2085;
      v112 = *(v111 + 32);
      LODWORD(v111) = *(v111 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B48F70(v102, type metadata accessor for MailboxTaskLogger);
      v139 = v112;
      v140 = v111;
      v51 = v123;
      v113 = sub_1B0E44BA8();
      v115 = sub_1B0399D64(v113, v114, &v141);

      *(v107 + 43) = v115;
      *(v107 + 51) = 2048;
      v116 = v129;
      *(v107 + 53) = v128;
      *(v107 + 61) = 2048;
      v117 = v116 + v131[6];
      v118 = MessageIdentifierSet.count.getter();
      sub_1B0B48F70(v116, type metadata accessor for MessagesToRemoveHelper.Range);
      *(v107 + 63) = v118;
      _os_log_impl(&dword_1B0389000, v79, v105, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search completed for range #%ld. Got %ld UIDs.", v107, 0x47u);
      v119 = v137;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v119, -1, -1);
      v101 = v107;
      goto LABEL_18;
    }

    sub_1B0B48F70(v104, type metadata accessor for MessagesToRemoveHelper.Range);
    sub_1B0B48F70(v103, type metadata accessor for MailboxTaskLogger);

    v120 = v102;
LABEL_21:
    sub_1B0B48F70(v120, type metadata accessor for MailboxTaskLogger);
    goto LABEL_22;
  }

  v74 = v138;
  v75 = v125;
  sub_1B0B48F08(v138, v125, type metadata accessor for MailboxTaskLogger);
  sub_1B0B48F08(v74, v52, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v76 = v130;
  sub_1B0B48F08(v51, v130, type metadata accessor for MessagesToRemoveHelper.Range);
  v77 = v52;
  v78 = v131;
  sub_1B0B48F08(v51, v131, type metadata accessor for MessagesToRemoveHelper.Range);
  v79 = sub_1B0E43988();
  v80 = sub_1B0E45908();
  if (!os_log_type_enabled(v79, v80))
  {
    sub_1B0B48F70(v78, type metadata accessor for MessagesToRemoveHelper.Range);
    sub_1B0B48F70(v77, type metadata accessor for MailboxTaskLogger);

    sub_1B0B48F70(v76, type metadata accessor for MessagesToRemoveHelper.Range);
    v120 = v75;
    goto LABEL_21;
  }

  v81 = swift_slowAlloc();
  v129 = swift_slowAlloc();
  v141 = v129;
  *v81 = 68160003;
  LODWORD(v126) = v80;
  *(v81 + 4) = 2;
  *(v81 + 8) = 256;
  v82 = v127;
  v83 = *(v127 + 20);
  v123 = v51;
  v84 = v77 + v83;
  *(v81 + 10) = *(v77 + v83);
  *(v81 + 11) = 2082;
  v85 = v75;
  v86 = v75 + *(v82 + 20);
  *(v81 + 13) = sub_1B0399D64(*(v86 + 8), *(v86 + 16), &v141);
  *(v81 + 21) = 1040;
  *(v81 + 23) = 2;
  *(v81 + 27) = 512;
  LOWORD(v84) = *(v84 + 24);
  sub_1B0B48F70(v77, type metadata accessor for MailboxTaskLogger);
  *(v81 + 29) = v84;
  *(v81 + 31) = 2160;
  *(v81 + 33) = 0x786F626C69616DLL;
  *(v81 + 41) = 2085;
  v87 = *(v86 + 32);
  LODWORD(v86) = *(v86 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B48F70(v85, type metadata accessor for MailboxTaskLogger);
  v139 = v87;
  v140 = v86;
  v88 = sub_1B0E44BA8();
  v90 = sub_1B0399D64(v88, v89, &v141);

  *(v81 + 43) = v90;
  *(v81 + 51) = 2048;
  *(v81 + 53) = v128;
  *(v81 + 61) = 2082;
  v91 = v130;
  v92 = v137;
  sub_1B03B5C80(v130 + v49[5], v137, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v93 = MessageIdentifierSet.debugDescription.getter(v136);
  v95 = v94;
  sub_1B0B48F70(v91, type metadata accessor for MessagesToRemoveHelper.Range);
  sub_1B0398EFC(v92, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v96 = sub_1B0399D64(v93, v95, &v141);
  v74 = v138;

  *(v81 + 63) = v96;
  *(v81 + 71) = 2048;
  v51 = v123;
  v97 = v131;
  v98 = v131 + v49[6];
  v99 = MessageIdentifierSet.count.getter();
  sub_1B0B48F70(v97, type metadata accessor for MessagesToRemoveHelper.Range);
  *(v81 + 73) = v99;
  _os_log_impl(&dword_1B0389000, v79, v126, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search completed for range #%ld %{public}s. Got %ld UIDs.", v81, 0x51u);
  v100 = v129;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v100, -1, -1);
  v101 = v81;
LABEL_18:
  MEMORY[0x1B272C230](v101, -1, -1);

LABEL_22:
  sub_1B0A92068(v74, v132, v133, v134, v135);
  return sub_1B0B48F70(v51, type metadata accessor for MessagesToRemoveHelper.Range);
}

void sub_1B0B443EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v250 = a6;
  v256 = a4;
  v251 = a3;
  v248 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FF8, &unk_1B0EC6940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v246 = &v226 - v10;
  v11 = _s15MissingMessagesO10NewMissingVMa(0);
  v244 = *(v11 - 8);
  v245 = v11;
  v12 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v236 = &v226 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v235 = &v226 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v234 = &v226 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v241 = &v226 - v19;
  v255 = type metadata accessor for MailboxTaskLogger(0);
  v20 = *(*(v255 - 8) + 64);
  MEMORY[0x1EEE9AC00](v255);
  v22 = &v226 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v226 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v252 = &v226 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v253 = &v226 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v242 = &v226 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v226 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v233 = &v226 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v240 = &v226 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v231 = &v226 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v232 = &v226 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v237 = &v226 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v239 = &v226 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v226 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v238 = &v226 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v55 = &v226 - v54;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v56 = *(*(v249 - 8) + 64);
  MEMORY[0x1EEE9AC00](v249);
  v254 = &v226 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v226 - v60;
  MEMORY[0x1EEE9AC00](v62);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v226 - v64;
  MEMORY[0x1EEE9AC00](v66);
  v70 = &v226 - v67;
  if (*(a5 + 16))
  {
    v228 = v69;
    v229 = v68;
    v243 = a1;
    v230 = v34;
    sub_1B0B45FF0(a5, &v226 - v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v71 = sub_1B0E46E98();
    v72 = v70;
    v73 = a5;
    v247 = v70;
    if (v71)
    {
      goto LABEL_22;
    }

    v227 = a5;
    MessageIdentifierSet.ranges.getter(v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v74 = sub_1B0E46E18();
    v75 = sub_1B0E46E28();
    v76 = sub_1B0E46E18();
    v77 = sub_1B0E46E28();
    if (v74 < v76 || v77 < v74)
    {
      __break(1u);
    }

    else
    {
      v78 = sub_1B0E46E18();
      v79 = sub_1B0E46E28();
      sub_1B0398EFC(v55, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v75 >= v78 && v79 >= v75)
      {
        if (!__OFSUB__(v75, v74))
        {
          if (v75 - v74 > 19)
          {
            v115 = v256;
            v116 = v239;
            sub_1B0B48F08(v256, v239, type metadata accessor for MailboxTaskLogger);
            v117 = v237;
            sub_1B0B48F08(v115, v237, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v72 = v247;
            sub_1B03B5C80(v247, v61, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v118 = v229;
            sub_1B03B5C80(v72, v229, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v119 = sub_1B0E43988();
            v120 = sub_1B0E45908();
            if (os_log_type_enabled(v119, v120))
            {
              v121 = v117;
              v122 = swift_slowAlloc();
              v238 = swift_slowAlloc();
              v259 = v238;
              *v122 = 68159747;
              *(v122 + 4) = 2;
              *(v122 + 8) = 256;
              v123 = v255;
              v124 = v121 + *(v255 + 20);
              *(v122 + 10) = *v124;
              *(v122 + 11) = 2082;
              v125 = v116 + *(v123 + 20);
              *(v122 + 13) = sub_1B0399D64(*(v125 + 8), *(v125 + 16), &v259);
              *(v122 + 21) = 1040;
              *(v122 + 23) = 2;
              *(v122 + 27) = 512;
              LOWORD(v124) = *(v124 + 24);
              sub_1B0B48F70(v121, type metadata accessor for MailboxTaskLogger);
              *(v122 + 29) = v124;
              *(v122 + 31) = 2160;
              *(v122 + 33) = 0x786F626C69616DLL;
              *(v122 + 41) = 2085;
              v126 = *(v125 + 32);
              LODWORD(v125) = *(v125 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0B48F70(v116, type metadata accessor for MailboxTaskLogger);
              v257 = v126;
              v258 = v125;
              v127 = sub_1B0E44BA8();
              v129 = sub_1B0399D64(v127, v128, &v259);

              *(v122 + 43) = v129;
              *(v122 + 51) = 2048;
              v130 = v249;
              v131 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v61, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v122 + 53) = v131;
              *(v122 + 61) = 2082;
              v132 = v254;
              MessageIdentifierSet.suffix(_:)(20, v130, v254);
              v133 = MessageIdentifierSet.debugDescription.getter(v130);
              v135 = v134;
              sub_1B0398EFC(v132, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v72 = v247;
              sub_1B0398EFC(v118, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v136 = sub_1B0399D64(v133, v135, &v259);

              *(v122 + 63) = v136;
              _os_log_impl(&dword_1B0389000, v119, v120, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: ... %{public}s", v122, 0x47u);
              v137 = v238;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v137, -1, -1);
              MEMORY[0x1B272C230](v122, -1, -1);

              goto LABEL_21;
            }

            sub_1B0398EFC(v61, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0B48F70(v117, type metadata accessor for MailboxTaskLogger);

            sub_1B0398EFC(v118, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v138 = v116;
          }

          else
          {
            v80 = v256;
            v81 = v238;
            sub_1B0B48F08(v256, v238, type metadata accessor for MailboxTaskLogger);
            sub_1B0B48F08(v80, v49, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v72 = v247;
            sub_1B03B5C80(v247, v65, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v82 = v228;
            sub_1B03B5C80(v72, v228, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v83 = sub_1B0E43988();
            v84 = sub_1B0E45908();
            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              v239 = swift_slowAlloc();
              v259 = v239;
              *v85 = 68159747;
              *(v85 + 4) = 2;
              *(v85 + 8) = 256;
              v86 = v255;
              v87 = &v49[*(v255 + 20)];
              *(v85 + 10) = *v87;
              *(v85 + 11) = 2082;
              v88 = v81 + *(v86 + 20);
              *(v85 + 13) = sub_1B0399D64(*(v88 + 8), *(v88 + 16), &v259);
              *(v85 + 21) = 1040;
              *(v85 + 23) = 2;
              *(v85 + 27) = 512;
              LOWORD(v87) = *(v87 + 12);
              sub_1B0B48F70(v49, type metadata accessor for MailboxTaskLogger);
              *(v85 + 29) = v87;
              *(v85 + 31) = 2160;
              *(v85 + 33) = 0x786F626C69616DLL;
              *(v85 + 41) = 2085;
              v89 = *(v88 + 32);
              LODWORD(v87) = *(v88 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0B48F70(v81, type metadata accessor for MailboxTaskLogger);
              v257 = v89;
              v258 = v87;
              v90 = sub_1B0E44BA8();
              v92 = sub_1B0399D64(v90, v91, &v259);

              *(v85 + 43) = v92;
              *(v85 + 51) = 2048;
              v93 = v249;
              v94 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v65, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v85 + 53) = v94;
              *(v85 + 61) = 2082;
              v95 = MessageIdentifierSet.debugDescription.getter(v93);
              v97 = v96;
              v72 = v247;
              sub_1B0398EFC(v82, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v98 = sub_1B0399D64(v95, v97, &v259);

              *(v85 + 63) = v98;
              _os_log_impl(&dword_1B0389000, v83, v84, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: %{public}s", v85, 0x47u);
              v99 = v239;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v99, -1, -1);
              MEMORY[0x1B272C230](v85, -1, -1);

LABEL_21:
              v73 = v227;
LABEL_22:
              v139 = v250;
              v140 = HIDWORD(v250) & 1;
              v141 = v254;
              v142 = sub_1B0B476B8(v73, v250 | (v140 << 32));
              MEMORY[0x1EEE9AC00](v142);
              *(&v226 - 2) = v141;
              v143 = sub_1B0B42E70(0, sub_1B0AA9244, (&v226 - 4), v73);
              sub_1B0398EFC(v141, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v145 = v252;
              v144 = v253;
              v146 = v243;
              if (v143 < 1)
              {
                goto LABEL_25;
              }

              v147 = v139 | (v140 << 32);
              v148 = v246;
              sub_1B0B46268(0x455, v73, v147, v246);
              if ((*(v244 + 48))(v148, 1, v245) == 1)
              {
                sub_1B0398EFC(v148, &qword_1EB6E3FF8, &unk_1B0EC6940);
LABEL_25:
                if (v251)
                {
LABEL_26:
                  v149 = v256;
                  sub_1B0B48F08(v256, v144, type metadata accessor for MailboxTaskLogger);
                  sub_1B0B48F08(v149, v145, type metadata accessor for MailboxTaskLogger);
                  sub_1B0394868();
                  sub_1B0394868();
                  sub_1B0394868();
                  sub_1B0394868();
                  sub_1B0394868();
                  sub_1B0394868();
                  v150 = sub_1B0E43988();
                  v151 = sub_1B0E45908();
                  if (os_log_type_enabled(v150, v151))
                  {
                    v152 = swift_slowAlloc();
                    v153 = swift_slowAlloc();
                    v259 = v153;
                    *v152 = 68159235;
                    *(v152 + 4) = 2;
                    *(v152 + 8) = 256;
                    v154 = v255;
                    v155 = v145 + *(v255 + 20);
                    *(v152 + 10) = *v155;
                    *(v152 + 11) = 2082;
                    v156 = v144 + *(v154 + 20);
                    *(v152 + 13) = sub_1B0399D64(*(v156 + 8), *(v156 + 16), &v259);
                    *(v152 + 21) = 1040;
                    *(v152 + 23) = 2;
                    *(v152 + 27) = 512;
                    LOWORD(v155) = *(v155 + 24);
                    sub_1B0B48F70(v145, type metadata accessor for MailboxTaskLogger);
                    *(v152 + 29) = v155;
                    *(v152 + 31) = 2160;
                    *(v152 + 33) = 0x786F626C69616DLL;
                    *(v152 + 41) = 2085;
                    v157 = *(v156 + 32);
                    LODWORD(v156) = *(v156 + 40);
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0B48F70(v144, type metadata accessor for MailboxTaskLogger);
                    v257 = v157;
                    v258 = v156;
                    v158 = sub_1B0E44BA8();
                    v160 = sub_1B0399D64(v158, v159, &v259);

                    *(v152 + 43) = v160;
                    _os_log_impl(&dword_1B0389000, v150, v151, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did not remove any pending expunge.", v152, 0x33u);
                    swift_arrayDestroy();
                    MEMORY[0x1B272C230](v153, -1, -1);
                    MEMORY[0x1B272C230](v152, -1, -1);

LABEL_45:
                    v225 = v72;
                    goto LABEL_46;
                  }

                  sub_1B0B48F70(v145, type metadata accessor for MailboxTaskLogger);

                  v183 = v144;
LABEL_44:
                  sub_1B0B48F70(v183, type metadata accessor for MailboxTaskLogger);
                  goto LABEL_45;
                }

LABEL_39:
                v209 = v146 + *(type metadata accessor for MailboxSyncState() + 48);
                sub_1B0B638C4(v248);
                v210 = *(v209 + 40);
                if ((*(v209 + 48) & 1) == 0)
                {
                  v210 = *(v210 + 16);
                }

                v211 = v242;
                v212 = v256;
                v213 = v230;
                sub_1B0B48F08(v256, v230, type metadata accessor for MailboxTaskLogger);
                sub_1B0B48F08(v212, v211, type metadata accessor for MailboxTaskLogger);
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                v214 = sub_1B0E43988();
                v215 = sub_1B0E45908();
                if (os_log_type_enabled(v214, v215))
                {
                  v216 = swift_slowAlloc();
                  v217 = swift_slowAlloc();
                  v259 = v217;
                  *v216 = 68159747;
                  *(v216 + 4) = 2;
                  *(v216 + 8) = 256;
                  v218 = v255;
                  v219 = v211 + *(v255 + 20);
                  *(v216 + 10) = *v219;
                  *(v216 + 11) = 2082;
                  v220 = v213 + *(v218 + 20);
                  *(v216 + 13) = sub_1B0399D64(*(v220 + 8), *(v220 + 16), &v259);
                  *(v216 + 21) = 1040;
                  *(v216 + 23) = 2;
                  *(v216 + 27) = 512;
                  LOWORD(v219) = *(v219 + 24);
                  sub_1B0B48F70(v211, type metadata accessor for MailboxTaskLogger);
                  *(v216 + 29) = v219;
                  *(v216 + 31) = 2160;
                  *(v216 + 33) = 0x786F626C69616DLL;
                  *(v216 + 41) = 2085;
                  v221 = *(v220 + 32);
                  LODWORD(v220) = *(v220 + 40);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B0B48F70(v213, type metadata accessor for MailboxTaskLogger);
                  v257 = v221;
                  v258 = v220;
                  v222 = sub_1B0E44BA8();
                  v224 = sub_1B0399D64(v222, v223, &v259);

                  *(v216 + 43) = v224;
                  *(v216 + 51) = 2048;
                  *(v216 + 53) = v248;
                  *(v216 + 61) = 2048;
                  *(v216 + 63) = v210;
                  _os_log_impl(&dword_1B0389000, v214, v215, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld pending expunge, %ld remaining.", v216, 0x47u);
                  swift_arrayDestroy();
                  MEMORY[0x1B272C230](v217, -1, -1);
                  MEMORY[0x1B272C230](v216, -1, -1);

                  v225 = v247;
LABEL_46:
                  sub_1B0398EFC(v225, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  return;
                }

                sub_1B0B48F70(v211, type metadata accessor for MailboxTaskLogger);

                v183 = v213;
                goto LABEL_44;
              }

              v161 = v241;
              sub_1B0B48EA0(v148, v241, _s15MissingMessagesO10NewMissingVMa);
              if (v143 > 0x13)
              {
                v184 = v256;
                sub_1B0B48F08(v256, v240, type metadata accessor for MailboxTaskLogger);
                v185 = v233;
                sub_1B0B48F08(v184, v233, type metadata accessor for MailboxTaskLogger);
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                v186 = v235;
                sub_1B0B48F08(v161, v235, _s15MissingMessagesO10NewMissingVMa);
                v187 = v236;
                sub_1B0B48F08(v161, v236, _s15MissingMessagesO10NewMissingVMa);
                v166 = sub_1B0E43988();
                v188 = sub_1B0E458E8();
                if (os_log_type_enabled(v166, v188))
                {
                  v168 = swift_slowAlloc();
                  v250 = swift_slowAlloc();
                  v259 = v250;
                  *v168 = 68160003;
                  LODWORD(v246) = v188;
                  *(v168 + 4) = 2;
                  *(v168 + 8) = 256;
                  v189 = v255;
                  v190 = v186;
                  v191 = v185 + *(v255 + 20);
                  *(v168 + 10) = *v191;
                  *(v168 + 11) = 2082;
                  v192 = v240;
                  v193 = v240 + *(v189 + 20);
                  *(v168 + 13) = sub_1B0399D64(*(v193 + 8), *(v193 + 16), &v259);
                  *(v168 + 21) = 1040;
                  *(v168 + 23) = 2;
                  *(v168 + 27) = 512;
                  LOWORD(v191) = *(v191 + 24);
                  sub_1B0B48F70(v185, type metadata accessor for MailboxTaskLogger);
                  *(v168 + 29) = v191;
                  *(v168 + 31) = 2160;
                  *(v168 + 33) = 0x786F626C69616DLL;
                  *(v168 + 41) = 2085;
                  v194 = *(v193 + 32);
                  LODWORD(v193) = *(v193 + 40);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B0B48F70(v192, type metadata accessor for MailboxTaskLogger);
                  v257 = v194;
                  v258 = v193;
                  v144 = v253;
                  v195 = sub_1B0E44BA8();
                  v197 = sub_1B0399D64(v195, v196, &v259);

                  *(v168 + 43) = v197;
                  *(v168 + 51) = 2048;
                  *(v168 + 53) = v143;
                  *(v168 + 61) = 2048;
                  v198 = v249;
                  v199 = MessageIdentifierSet.count.getter();
                  sub_1B0B48F70(v190, _s15MissingMessagesO10NewMissingVMa);
                  *(v168 + 63) = v199;
                  *(v168 + 71) = 2082;
                  v145 = v252;
                  v200 = v254;
                  MessageIdentifierSet.suffix(_:)(20, v198, v254);
                  v201 = MessageIdentifierSet.debugDescription.getter(v198);
                  v203 = v202;
                  sub_1B0398EFC(v200, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  sub_1B0B48F70(v187, _s15MissingMessagesO10NewMissingVMa);
                  v204 = sub_1B0399D64(v201, v203, &v259);

                  *(v168 + 73) = v204;
                  _os_log_impl(&dword_1B0389000, v166, v246, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs, adding %ld UIDs as missing: ... %{public}s", v168, 0x51u);
                  v205 = v250;
                  swift_arrayDestroy();
                  v182 = v205;
                  goto LABEL_34;
                }

                sub_1B0B48F70(v186, _s15MissingMessagesO10NewMissingVMa);
                sub_1B0B48F70(v185, type metadata accessor for MailboxTaskLogger);

                sub_1B0B48F70(v187, _s15MissingMessagesO10NewMissingVMa);
                v207 = v240;
              }

              else
              {
                v162 = v256;
                v163 = v232;
                sub_1B0B48F08(v256, v232, type metadata accessor for MailboxTaskLogger);
                v164 = v231;
                sub_1B0B48F08(v162, v231, type metadata accessor for MailboxTaskLogger);
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                v165 = v234;
                sub_1B0B48F08(v161, v234, _s15MissingMessagesO10NewMissingVMa);
                v166 = sub_1B0E43988();
                v167 = sub_1B0E458E8();
                if (os_log_type_enabled(v166, v167))
                {
                  v168 = swift_slowAlloc();
                  v169 = swift_slowAlloc();
                  v259 = v169;
                  *v168 = 68159747;
                  LODWORD(v254) = v167;
                  *(v168 + 4) = 2;
                  *(v168 + 8) = 256;
                  v170 = v255;
                  v171 = v163;
                  v172 = v164 + *(v255 + 20);
                  *(v168 + 10) = *v172;
                  *(v168 + 11) = 2082;
                  v173 = v171 + *(v170 + 20);
                  *(v168 + 13) = sub_1B0399D64(*(v173 + 8), *(v173 + 16), &v259);
                  *(v168 + 21) = 1040;
                  *(v168 + 23) = 2;
                  *(v168 + 27) = 512;
                  LOWORD(v172) = *(v172 + 24);
                  sub_1B0B48F70(v164, type metadata accessor for MailboxTaskLogger);
                  *(v168 + 29) = v172;
                  *(v168 + 31) = 2160;
                  *(v168 + 33) = 0x786F626C69616DLL;
                  *(v168 + 41) = 2085;
                  v174 = *(v173 + 32);
                  LODWORD(v173) = *(v173 + 40);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B0B48F70(v171, type metadata accessor for MailboxTaskLogger);
                  v257 = v174;
                  v258 = v173;
                  v144 = v253;
                  v175 = sub_1B0E44BA8();
                  v177 = sub_1B0399D64(v175, v176, &v259);

                  *(v168 + 43) = v177;
                  *(v168 + 51) = 2048;
                  *(v168 + 53) = v143;
                  *(v168 + 61) = 2082;
                  v145 = v252;
                  v178 = MessageIdentifierSet.debugDescription.getter(v249);
                  v180 = v179;
                  sub_1B0B48F70(v165, _s15MissingMessagesO10NewMissingVMa);
                  v181 = sub_1B0399D64(v178, v180, &v259);

                  *(v168 + 63) = v181;
                  _os_log_impl(&dword_1B0389000, v166, v254, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs: %{public}s", v168, 0x47u);
                  swift_arrayDestroy();
                  v182 = v169;
LABEL_34:
                  v161 = v241;
                  MEMORY[0x1B272C230](v182, -1, -1);
                  v206 = v168;
                  v146 = v243;
                  MEMORY[0x1B272C230](v206, -1, -1);

                  goto LABEL_38;
                }

                sub_1B0B48F70(v164, type metadata accessor for MailboxTaskLogger);

                sub_1B0B48F70(v165, _s15MissingMessagesO10NewMissingVMa);
                v207 = v163;
              }

              sub_1B0B48F70(v207, type metadata accessor for MailboxTaskLogger);
LABEL_38:
              v208 = v146 + *(type metadata accessor for MailboxSyncState() + 68);
              sub_1B0B494D4(v161);
              sub_1B0B48F70(v161, _s15MissingMessagesO10NewMissingVMa);
              v72 = v247;
              if (v251)
              {
                goto LABEL_26;
              }

              goto LABEL_39;
            }

            sub_1B0398EFC(v65, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0B48F70(v49, type metadata accessor for MailboxTaskLogger);

            sub_1B0398EFC(v82, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v138 = v81;
          }

          sub_1B0B48F70(v138, type metadata accessor for MailboxTaskLogger);
          goto LABEL_21;
        }

LABEL_50:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v100 = a1 + *(type metadata accessor for MailboxSyncState() + 48);
  v101 = *(v100 + 40);
  v102 = v101;
  if ((*(v100 + 48) & 1) == 0)
  {
    v102 = *(v101 + 16);
  }

  sub_1B0AA93E0(v101, *(v100 + 48));
  *(v100 + 40) = MEMORY[0x1E69E7CC0];
  *(v100 + 48) = 0;
  v103 = v256;
  sub_1B0B48F08(v256, v25, type metadata accessor for MailboxTaskLogger);
  sub_1B0B48F08(v103, v22, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v104 = sub_1B0E43988();
  v105 = sub_1B0E45908();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v259 = v107;
    *v106 = 68159491;
    *(v106 + 4) = 2;
    *(v106 + 8) = 256;
    v108 = v255;
    v109 = &v22[*(v255 + 20)];
    *(v106 + 10) = *v109;
    *(v106 + 11) = 2082;
    v110 = &v25[*(v108 + 20)];
    *(v106 + 13) = sub_1B0399D64(*(v110 + 1), *(v110 + 2), &v259);
    *(v106 + 21) = 1040;
    *(v106 + 23) = 2;
    *(v106 + 27) = 512;
    LOWORD(v109) = *(v109 + 12);
    sub_1B0B48F70(v22, type metadata accessor for MailboxTaskLogger);
    *(v106 + 29) = v109;
    *(v106 + 31) = 2160;
    *(v106 + 33) = 0x786F626C69616DLL;
    *(v106 + 41) = 2085;
    v111 = *(v110 + 4);
    LODWORD(v109) = *(v110 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B48F70(v25, type metadata accessor for MailboxTaskLogger);
    v257 = v111;
    v258 = v109;
    v112 = sub_1B0E44BA8();
    v114 = sub_1B0399D64(v112, v113, &v259);

    *(v106 + 43) = v114;
    *(v106 + 51) = 2048;
    *(v106 + 53) = v102;
    _os_log_impl(&dword_1B0389000, v104, v105, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Local mailbox is empty. Removed %ld pending expunge.", v106, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v107, -1, -1);
    MEMORY[0x1B272C230](v106, -1, -1);
  }

  else
  {
    sub_1B0B48F70(v22, type metadata accessor for MailboxTaskLogger);

    sub_1B0B48F70(v25, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_1B0B45FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v11 = v24 - v10;
  v12 = type metadata accessor for MessagesToRemoveHelper.Range();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D06F8();
  v26 = a2;
  result = sub_1B0E46EE8();
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v12 + 28);
    v24[0] = *(v12 + 24);
    v24[1] = v19;
    v20 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v21 = v5;
    v22 = *(v13 + 72);
    v23 = (v21 + 16);
    do
    {
      sub_1B0B48F08(v20, v16, type metadata accessor for MessagesToRemoveHelper.Range);
      MessageIdentifierSet.subtracting(_:)(&v16[v24[0]], v11);
      (*v23)(v8, v11, v4);
      sub_1B0E46ED8();
      sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = sub_1B0B48F70(v16, type metadata accessor for MessagesToRemoveHelper.Range);
      v20 += v22;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_1B0B46268@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s15MissingMessagesO10NewMissingVMa(0);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v31 - v23;
  sub_1B0B476B8(a2, a3 | ((HIDWORD(a3) & 1) << 32));
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0E46EE8();
  sub_1B03C60A4(v18, v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03C60A4(v21, v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v25 = &v14[*(v11 + 20)];
  *v25 = 0;
  v25[4] = 1;
  *(v25 + 2) = 0;
  v25[12] = 1;
  *(v25 + 4) = 0;
  v25[20] = 1;
  sub_1B0B48EA0(v10, &v14[*(v11 + 24)], _s15MissingMessagesO11QueriedUIDsVMa);
  v26 = 0;
  v27 = *(a2 + 16);
  while (v27 != v26)
  {
    v28 = *(type metadata accessor for MessagesToRemoveHelper.Range() - 8);
    sub_1B0B479B4(v14, a2 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26++, a1, v24);
  }

  v29 = v32;
  sub_1B0B48EA0(v14, v32, _s15MissingMessagesO10NewMissingVMa);
  (*(v31 + 56))(v29, 0, 1, v11);
  return sub_1B0398EFC(v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0B465E0(int *a1)
{
  v3 = v1;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*v1);
  v4 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0B0D328();
  sub_1B0E447C8();
  v5 = v3 + a1[6];
  sub_1B0E447C8();
  v6 = v3 + a1[7];
  sub_1B0E447C8();
  v7 = *(v3 + a1[8]);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B466B4(uint64_t a1, int *a2)
{
  v4 = v2;
  MEMORY[0x1B2728D70](*v2);
  v5 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0B0D328();
  sub_1B0E447C8();
  v6 = v4 + a2[6];
  sub_1B0E447C8();
  v7 = v4 + a2[7];
  sub_1B0E447C8();
  v8 = *(v4 + a2[8]);
  return sub_1B0E46C68();
}

uint64_t sub_1B0B46770(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*v2);
  v5 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0B0D328();
  sub_1B0E447C8();
  v6 = v4 + a2[6];
  sub_1B0E447C8();
  v7 = v4 + a2[7];
  sub_1B0E447C8();
  v8 = *(v4 + a2[8]);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B46844()
{
  v1 = *v0;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B468B8()
{
  v1 = *v0;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B468FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v19 - v15;
  sub_1B03B5C80(a2, &v19 - v15, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0E46EE8();
  *a3 = a1;
  v17 = type metadata accessor for MessagesToRemoveHelper.Range();
  sub_1B03C60A4(v16, a3 + v17[5], &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B03C60A4(v12, a3 + v17[6], &unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = sub_1B03C60A4(v10, a3 + v17[7], &unk_1EB6E1AF0, &unk_1B0E9AF40);
  *(a3 + v17[8]) = 0;
  return result;
}

int64_t sub_1B0B46ABC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v36 = *(type metadata accessor for MessagesToRemoveHelper.Range() + 20);
  v37 = a1;
  sub_1B03B5C80(a1 + v36, v12, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B03C60A4(v12, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v17 = sub_1B0E46E18();
  v18 = sub_1B0E46E28();
  v19 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v17 < v19 || result < v17)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = sub_1B0E46E18();
  v23 = sub_1B0E46E28();
  result = sub_1B0398EFC(v8, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v18 < v22 || v23 < v18)
  {
    goto LABEL_17;
  }

  if (__OFSUB__(v18, v17))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v18 - v17 <= 1)
  {
    v39 = 0;
    v40 = 0xE000000000000000;
LABEL_15:
    sub_1B0E46508();
    v31 = v39;
    v32 = v40;
    v33 = v38;
    result = sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *v33 = v31;
    v33[1] = v32;
    return result;
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1B03B5C80(v37 + v36, v12, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v25 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v41 = v25;
  v26 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v26);

  MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
  result = sub_1B0B4AAF0();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_19;
  }

  LODWORD(v41) = result;
  sub_1B0E46508();
  MEMORY[0x1B2726E80](58, 0xE100000000000000);
  v27 = v35;
  MessageIdentifierSet.ranges.getter(v35);
  v28 = sub_1B0B4A3E8();
  v30 = v29;
  result = sub_1B0398EFC(v27, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if ((v30 & 1) == 0)
  {
    LODWORD(v41) = HIDWORD(v28);
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B0B46EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MessagesToRemoveHelper.Range();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    while (1)
    {
      sub_1B0B48F08(v13, v11, type metadata accessor for MessagesToRemoveHelper.Range);
      v15 = *v11;
      sub_1B0B48F70(v11, type metadata accessor for MessagesToRemoveHelper.Range);
      if (v15 == a1)
      {
        break;
      }

      v13 += v14;
      if (!--v12)
      {
        goto LABEL_5;
      }
    }

    sub_1B0B48F08(v13, a3, type metadata accessor for MessagesToRemoveHelper.Range);
    v16 = 0;
  }

  else
  {
LABEL_5:
    v16 = 1;
  }

  return (*(v7 + 56))(a3, v16, 1, v6, v9);
}

uint64_t sub_1B0B47028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = type metadata accessor for MessagesToRemoveHelper.Range();
  *(a1 + *(v9 + 32)) = 1;
  v10 = *(v9 + 24);
  (*(v5 + 16))(v8, a2, v4);
  return sub_1B0E46ED8();
}

uint64_t sub_1B0B47124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for MessagesToRemoveHelper.Range();
  sub_1B03B5C80(a1 + *(v6 + 20), v5, &unk_1EB6E26C0, &unk_1B0E9DE10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v7 = sub_1B0E46EB8();
  sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return v7 & 1;
}

uint64_t sub_1B0B47218@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  v20 = type metadata accessor for MessagesToRemoveHelper.Range();
  v21 = a1 + *(v20 + 28);
  MessageIdentifierSet.subtracting(_:)(a1 + *(v20 + 24), v7);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v22 = 1;
  }

  else
  {
    sub_1B03C60A4(v7, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v16, v11, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v22 = 0;
  }

  (*(v13 + 56))(v11, v22, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B0398EFC(v11, &unk_1EB6E3670, &unk_1B0E9B260);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC0, &unk_1B0EC2690);
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }

  else
  {
    sub_1B03C60A4(v11, v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC0, &unk_1B0EC2690);
    v26 = *(v25 + 48);
    *a2 = *a1;
    sub_1B03C60A4(v19, a2 + v26, &unk_1EB6E26C0, &unk_1B0E9DE10);
    return (*(*(v25 - 8) + 56))(a2, 0, 1, v25);
  }
}

uint64_t sub_1B0B47568()
{
  v0 = *(type metadata accessor for MessagesToRemoveHelper.Range() + 20);
  sub_1B03D06F8();
  return sub_1B0E46E08() & 1;
}

uint64_t sub_1B0B475C8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = *(type metadata accessor for MessagesToRemoveHelper.Range() + 28);
  (*(v4 + 16))(v7, a2, v3);
  return sub_1B0E46ED8();
}

unint64_t sub_1B0B476B8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(v7[0]) = 1;
    LODWORD(v8) = -1;
    v3 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(v7, &v8, &type metadata for UID, v3, &v9);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v4 = v9;
  }

  else
  {
    if (a2 == -1)
    {
      sub_1B03D06F8();

      return sub_1B0E46EE8();
    }

    LODWORD(v7[0]) = a2 + 1;
    LODWORD(v8) = -1;
    v3 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(v7, &v8, &type metadata for UID, v3, &v6);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v4 = v6;
  }

  v7[0] = v4;
  result = Range<>.init<A>(_:)(v7, &type metadata for UID, v3);
  v8 = result;
  if (HIDWORD(result) != result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v5 = sub_1B0E46E88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    sub_1B0E46E38();
    return v5(v7, 0);
  }

  return result;
}

uint64_t sub_1B0B47868(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  v13 = type metadata accessor for MessagesToRemoveHelper.Range();
  v14 = *(v13 + 24);
  MessageIdentifierSet.subtracting(_:)(a2 + *(v13 + 28), v9);
  MessageIdentifierSet.subtracting(_:)(a3, v12);
  sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v15 = MessageIdentifierSet.count.getter();
  result = sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (__OFADD__(*a1, v15))
  {
    __break(1u);
  }

  else
  {
    *a1 += v15;
  }

  return result;
}

uint64_t sub_1B0B479B4(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  v63 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v50 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - v26;
  result = MessageIdentifierSet.count.getter();
  v62 = a3;
  if (result < a3)
  {
    v54 = v14;
    v58 = a1;
    v29 = type metadata accessor for MessagesToRemoveHelper.Range();
    v30 = v29[6];
    v31 = a2 + v29[7];
    v53 = a2;
    MessageIdentifierSet.subtracting(_:)(v31, v24);
    MessageIdentifierSet.subtracting(_:)(v63, v27);
    sub_1B0398EFC(v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v55 = v11;
    if (sub_1B0E46E98())
    {
      return sub_1B0398EFC(v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    v32 = v24;
    v52 = v4;
    v33 = MessageIdentifierSet.count.getter();
    result = MessageIdentifierSet.count.getter();
    if (__OFADD__(v33, result))
    {
      __break(1u);
    }

    else
    {
      v34 = v62;
      if (v33 + result <= v62)
      {
        v62 = *(v61 + 16);
        v47 = v54;
        v46 = v55;
        v62(v54, v27, v55);
        sub_1B0E46ED8();
        v48 = v60;
        sub_1B03B5C80(v53 + v29[5], v60, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MessageIdentifierSet.subtracting(_:)(v63, v32);
        sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v49 = *(_s15MissingMessagesO10NewMissingVMa(0) + 24);
        v62(v47, v32, v46);
        sub_1B0E46ED8();
        v37 = v32;
LABEL_10:
        sub_1B0398EFC(v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        return sub_1B0398EFC(v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      v35 = MessageIdentifierSet.count.getter();
      result = MessageIdentifierSet.count.getter();
      v36 = v35 + result;
      if (!__OFADD__(v35, result))
      {
        v51 = v32;
        result = v36 - v34;
        v37 = v59;
        if (!__OFSUB__(v36, v34))
        {
          MessageIdentifierSet.suffix(_:)(result, v15, v59);
          v38 = sub_1B0B4AAF0();
          if ((v38 & 0x100000000) == 0)
          {
            v39 = v38;
            v62 = *(v61 + 16);
            v40 = v54;
            v62(v54, v37, v55);
            sub_1B0E46ED8();
            v41 = v60;
            sub_1B03B5C80(v53 + v29[5], v60, &unk_1EB6E26C0, &unk_1B0E9DE10);
            v42 = v56;
            MessageIdentifierSet.subtracting(_:)(v63, v56);
            sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            LODWORD(v65) = v39;
            LODWORD(v64) = -1;
            v43 = sub_1B041C1E8();
            static MessageIdentifier.... infix(_:_:)(&v65, &v64, &type metadata for UID, v43, &v66);
            v65 = v66;
            v64 = Range<>.init<A>(_:)(&v65, &type metadata for UID, v43);
            sub_1B03D06F8();
            v44 = v57;
            sub_1B0E46F08();
            v45 = v51;
            MessageIdentifierSet.intersection(_:)(v44, v51);
            sub_1B0398EFC(v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0398EFC(v42, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            LODWORD(v44) = *(_s15MissingMessagesO10NewMissingVMa(0) + 24);
            v62(v40, v45, v55);
            sub_1B0E46ED8();
            sub_1B0398EFC(v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          }

          goto LABEL_10;
        }

LABEL_15:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1B0B47F80(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for MessagesToRemoveHelper.Range();
  v5 = v4[5];
  sub_1B03D06F8();
  if (sub_1B0E46E08() & 1) != 0 && (v6 = v4[6], (sub_1B0E46E08()) && (v7 = v4[7], (sub_1B0E46E08()))
  {
    v8 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1B0B48064(uint64_t a1, unint64_t a2, char a3)
{
  v6 = type metadata accessor for MessageBatches(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v27[-v19];
  if (!*(*(a1 + 8) + 16))
  {
    sub_1B03B5C80(a1 + *(v6 + 24), v20, &unk_1EB6E3670, &unk_1B0E9B260);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
    if ((*(*(v24 - 8) + 48))(v20, 1, v24) == 1)
    {
      sub_1B0398EFC(v20, &unk_1EB6E3670, &unk_1B0E9B260);
    }

    else
    {
      sub_1B03B5C80(v20, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v20, &unk_1EB6E26C0, &unk_1B0E9DE10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      v25 = sub_1B0E46E98();
      sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if ((v25 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_2:
  sub_1B0B48F08(a1, v10, type metadata accessor for MessageBatches);
  v21 = a3 & 1;
  v27[12] = v21;
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = HIDWORD(a2);
  }

  if (v21)
  {
    a2 = 0;
  }

  else
  {
    a2 = a2;
  }

  sub_1B0B3EDEC(v22 | (v21 << 32));
  v27[8] = v21;
  sub_1B0B40220(a2 | (v21 << 32), v12);
  sub_1B0B48F70(v10, type metadata accessor for MessageBatches);
  v23 = sub_1B0B3F688();
  sub_1B0B48F70(v12, type metadata accessor for MessageBatches);
  return v23;
}

uint64_t sub_1B0B48350(uint64_t a1, unint64_t a2, int a3)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4948, &qword_1B0EC6768);
  v6 = *(*(v39 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v28 - v9;
  v10 = type metadata accessor for MessagesToRemoveHelper.Range();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1B0B48064(a1, a2, a3 & 1);
  v15 = *(v14 + 16);
  if (v15)
  {
    v29 = a1;
    v30 = a2;
    v31 = a3;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1B0B09F24(0, v15, 0);
    v16 = v41;
    v35 = *(v14 + 16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
    v18 = 0;
    v20 = *(v17 - 8);
    result = v17 - 8;
    v32 = v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v33 = v20;
    v34 = v14;
    while (v35 != v18)
    {
      if (v18 >= *(v14 + 16))
      {
        goto LABEL_12;
      }

      v21 = v38;
      v22 = v39;
      v23 = *(v39 + 48);
      sub_1B03B5C80(v32 + *(v33 + 72) * v18, &v38[v23], &unk_1EB6E26C0, &unk_1B0E9DE10);
      v24 = v36;
      *v36 = v18;
      v25 = *(v22 + 48);
      sub_1B03C60A4(&v21[v23], v24 + v25, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0B468FC(v18, v24 + v25, v13);
      sub_1B0398EFC(v24, &qword_1EB6E4948, &qword_1B0EC6768);
      v41 = v16;
      v27 = *(v16 + 16);
      v26 = *(v16 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1B0B09F24(v26 > 1, v27 + 1, 1);
        v16 = v41;
      }

      ++v18;
      *(v16 + 16) = v27 + 1;
      result = sub_1B0B48EA0(v13, v16 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v27, type metadata accessor for MessagesToRemoveHelper.Range);
      v14 = v34;
      if (v15 == v18)
      {

        sub_1B0B48F70(v29, type metadata accessor for MessageBatches);
        LOBYTE(a3) = v31;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    sub_1B0B48F70(a1, type metadata accessor for MessageBatches);
    v16 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v40 = a3 & 1;
    return v16;
  }

  return result;
}

uint64_t type metadata accessor for MessagesToRemoveHelper.Range()
{
  result = qword_1EB6DD8A0;
  if (!qword_1EB6DD8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0B48718(uint64_t a1, unint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v46 - v10;
  v11 = type metadata accessor for MessageBatches(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v46 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v47 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v48 = &v46 - v27;
  sub_1B0B48F08(a1, v15, type metadata accessor for MessageBatches);
  v51 = a3;
  v29 = a3 & 1;
  v28 = (a3 & 1) == 0;
  LOBYTE(v53) = a3 & 1;
  v30 = a3 & 1;
  if (a3)
  {
    v31 = 0;
  }

  else
  {
    v31 = HIDWORD(a2);
  }

  if (v28)
  {
    a2 = a2;
  }

  else
  {
    a2 = 0;
  }

  sub_1B0B3EDEC(v31 | (v30 << 32));
  LOBYTE(v53) = v29;
  sub_1B0B40220(a2 | (v29 << 32), v17);
  sub_1B0B48F70(v15, type metadata accessor for MessageBatches);
  v32 = v17[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B48F70(v17, type metadata accessor for MessageBatches);
  if (*(v32 + 16))
  {
    v33 = *(v32 + 32);

    v53 = v33;
    v34 = sub_1B041C1E8();
    v52 = Range<>.init<A>(_:)(&v53, &type metadata for UID, v34);
    sub_1B03D06F8();
    sub_1B0E46F08();
    v35 = 0;
  }

  else
  {

    v35 = 1;
  }

  (*(v23 + 56))(v21, v35, 1, v22);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1B0398EFC(v21, &unk_1EB6E3670, &unk_1B0E9B260);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v37 = v48;
    sub_1B03C60A4(v21, v48, &unk_1EB6E26C0, &unk_1B0E9DE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E44D8, &qword_1B0EC5258);
    v38 = (type metadata accessor for MessagesToRemoveHelper.Range() - 8);
    v39 = *(*v38 + 72);
    v40 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1B0EC1E70;
    v42 = (v41 + v40);
    v43 = v47;
    sub_1B03B5C80(v37, v47, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B03D06F8();
    v44 = v49;
    sub_1B0E46EE8();
    v45 = v50;
    sub_1B0E46EE8();
    *v42 = 0;
    sub_1B03C60A4(v43, v42 + v38[7], &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B03C60A4(v44, v42 + v38[8], &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v45, v42 + v38[9], &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *(v42 + v38[10]) = 0;
    sub_1B0398EFC(v37, &unk_1EB6E26C0, &unk_1B0E9DE10);
    return v41;
  }
}

void sub_1B0B48C6C()
{
  sub_1B0B48D48(319, qword_1EB6DE250, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v0 <= 0x3F)
  {
    sub_1B0B48D48(319, &qword_1EB6DE3E0, type metadata accessor for MessageIdentifierSet);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B48D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B041C1E8();
    v7 = a3(a1, &type metadata for UID, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B0B48DF0()
{
  result = qword_1EB6E4950;
  if (!qword_1EB6E4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4950);
  }

  return result;
}

unint64_t sub_1B0B48E48()
{
  result = qword_1EB6E4958;
  if (!qword_1EB6E4958)
  {
    type metadata accessor for MessagesToRemoveHelper.Range();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4958);
  }

  return result;
}

uint64_t sub_1B0B48EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B48F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B48F70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0B48FD4()
{
  result = _s15MissingMessagesO10IncompleteVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s15MissingMessagesO8CompleteVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B0B4909C()
{
  sub_1B0AA967C();
  if (v0 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B49150()
{
  sub_1B0B493C0(319, &qword_1EB6DE3E0, type metadata accessor for MessageIdentifierSet);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B0B49220()
{
  _s15MissingMessagesO8ProgressVMa(319);
  if (v0 <= 0x3F)
  {
    sub_1B0AA967C();
    if (v1 <= 0x3F)
    {
      _s15MissingMessagesO11QueriedUIDsVMa(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0B492EC()
{
  sub_1B0B493C0(319, qword_1EB6DE250, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v0 <= 0x3F)
  {
    sub_1B0B493C0(319, &qword_1EB6DE3E0, type metadata accessor for MessageIdentifierSet);
    if (v1 <= 0x3F)
    {
      sub_1B0AA967C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0B493C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B041C1E8();
    v7 = a3(a1, &type metadata for UID, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t _s15MissingMessagesO7UnknownVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B0B494D4(uint64_t a1)
{
  v200 = a1;
  v198 = _s15MissingMessagesO10IncompleteVMa(0);
  v1 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v191 = &v177 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v192 = &v177 - v4;
  v195 = _s15MissingMessagesO8CompleteVMa(0);
  v5 = *(*(v195 - 8) + 64);
  MEMORY[0x1EEE9AC00](v195);
  v183 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v190 = &v177 - v8;
  v197 = _s15MissingMessagesO8ProgressVMa(0);
  v9 = *(*(v197 - 8) + 64);
  MEMORY[0x1EEE9AC00](v197);
  v188 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v185 = &v177 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v189 = &v177 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v186 = &v177 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v187 = &v177 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v184 = &v177 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v182 = &v177 - v22;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4978, &qword_1B0EC6B98);
  v23 = *(*(v199 - 8) + 64);
  MEMORY[0x1EEE9AC00](v199);
  v25 = &v177 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v194 = &v177 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v181 = &v177 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v193 = &v177 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v180 = &v177 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v177 = &v177 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v177 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v179 = &v177 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v178 = &v177 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v177 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v52 = &v177 - v51;
  v53 = _s15MissingMessagesOMa(0);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v177 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3E8C(v201, v56, _s15MissingMessagesOMa);
  sub_1B03B5C80(v200, v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v196 = v41;
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v57 = 1;
  }

  else
  {
    sub_1B03C60A4(v48, v40, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v40, v52, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v57 = 0;
  }

  (*(v27 + 56))(v52, v57, 1, v26);
  v58 = *(v199 + 48);
  sub_1B03D3E8C(v56, v25, _s15MissingMessagesOMa);
  sub_1B03C60A4(v52, &v25[v58], &unk_1EB6E3670, &unk_1B0E9B260);
  v199 = v53;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v86 = *v25;
    if ((*(v27 + 48))(&v25[v58], 1, v26) == 1)
    {
      v87 = _s15MissingMessagesO10NewMissingVMa(0);
      v88 = v201;
      v89 = v200 + *(v87 + 20);
      v90 = *(v89 + 16);
      v91 = *(v89 + 20);
      v92 = v195;
      sub_1B03D3DBC(v200 + *(v87 + 24), v201 + *(v195 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
      *v88 = v90;
      *(v88 + 4) = v91;
      *(v88 + *(v92 + 24)) = v86;
    }

    else
    {
      v132 = v177;
      sub_1B03C60A4(&v25[v58], v177, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v133 = v180;
      sub_1B03B5C80(v132, v180, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D06F8();
      v134 = v178;
      sub_1B0E46EE8();
      sub_1B0398EFC(v132, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v135 = _s15MissingMessagesO10NewMissingVMa(0);
      v136 = v200;
      v137 = (v200 + *(v135 + 20));
      v138 = *v137;
      v139 = v137[2];
      if (*v137 <= v139)
      {
        v140 = v137[2];
      }

      else
      {
        v140 = *v137;
      }

      if (*(v137 + 4))
      {
        v138 = v137[2];
      }

      else
      {
        v139 = v140;
      }

      if (*(v137 + 12))
      {
        v141 = v138;
      }

      else
      {
        v141 = v139;
      }

      v142 = v137[3] & v137[1];
      v143 = v133;
      v144 = v182;
      sub_1B03C60A4(v143, v182, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v145 = v197;
      sub_1B03C60A4(v134, v144 + *(v197 + 20), &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v146 = v144 + *(v145 + 24);
      *v146 = v141;
      *(v146 + 4) = v142;
      LODWORD(v145) = v137[4];
      v147 = *(v137 + 20);
      v148 = v198;
      v149 = v136 + *(v135 + 24);
      v150 = v201;
      sub_1B03D3DBC(v149, v201 + *(v198 + 24), _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1B03D3E8C(v144, v150, _s15MissingMessagesO8ProgressVMa);
      v151 = v150 + *(v148 + 20);
      *v151 = v145;
      *(v151 + 4) = v147;
      *(v150 + *(v148 + 28)) = v86;
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 1)
  {
    if ((*(v27 + 48))(&v25[v58], 1, v26) == 1)
    {
      v60 = v191;
      sub_1B03D3E8C(v25, v191, _s15MissingMessagesO10IncompleteVMa);
      v61 = v185;
      sub_1B03D3DBC(v60, v185, _s15MissingMessagesO8ProgressVMa);
      v62 = v61 + *(v197 + 24);
      v63 = *v62;
      v64 = *(v62 + 4);
      v65 = _s15MissingMessagesO10NewMissingVMa(0);
      v66 = v200;
      v67 = (v200 + *(v65 + 20));
      v68 = *v67;
      v69 = v67[2];
      if (*v67 <= v69)
      {
        v70 = v67[2];
      }

      else
      {
        v70 = *v67;
      }

      if (*(v67 + 4))
      {
        v68 = v67[2];
      }

      else
      {
        v69 = v70;
      }

      if (!*(v67 + 12))
      {
        v68 = v69;
      }

      v71 = v67[3] & v67[1];
      if (v68 >= v63)
      {
        v72 = v63;
      }

      else
      {
        v72 = v68;
      }

      if (v67[3] & v67[1])
      {
        v68 = v63;
        v72 = v63;
      }

      if (!v64)
      {
        v68 = v72;
      }

      *v62 = v68;
      *(v62 + 4) = v64 & v71;
      v73 = v188;
      sub_1B03D3DBC(v61, v188, _s15MissingMessagesO8ProgressVMa);
      v74 = v198;
      v75 = v60 + *(v198 + 20);
      v76 = *v75;
      v77 = v67[4];
      v78 = *(v67 + 20);
      if (v77 <= *v75)
      {
        v79 = *v75;
      }

      else
      {
        v79 = v67[4];
      }

      if (*(v67 + 20))
      {
        v77 = *v75;
      }

      else
      {
        v76 = v79;
      }

      v80 = *(v75 + 4);
      if (v80)
      {
        v81 = v77;
      }

      else
      {
        v81 = v76;
      }

      v82 = v80 & v78;
      v83 = v201;
      MessageIdentifierSet.union(_:)(v66 + *(v65 + 24), v201 + *(v198 + 24));
      sub_1B03D3F5C(v61, _s15MissingMessagesO8ProgressVMa);
      v84 = *(v60 + *(v74 + 28));
      sub_1B03D3F5C(v60, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03D3E8C(v73, v83, _s15MissingMessagesO8ProgressVMa);
      v85 = v83 + *(v74 + 20);
      *v85 = v81;
      *(v85 + 4) = v82;
      *(v83 + *(v74 + 28)) = v84;
      return swift_storeEnumTagMultiPayload();
    }

    v106 = v192;
    sub_1B03D3E8C(v25, v192, _s15MissingMessagesO10IncompleteVMa);
    v107 = v194;
    sub_1B03C60A4(&v25[v58], v194, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v108 = v186;
    sub_1B03D3DBC(v106, v186, _s15MissingMessagesO8ProgressVMa);
    sub_1B0B4C3A4(v107);
    v109 = v108 + *(v197 + 24);
    v110 = *v109;
    v111 = *(v109 + 4);
    v112 = _s15MissingMessagesO10NewMissingVMa(0);
    v113 = v200;
    v114 = (v200 + *(v112 + 20));
    v115 = *v114;
    v116 = v114[2];
    if (*v114 <= v116)
    {
      v117 = v114[2];
    }

    else
    {
      v117 = *v114;
    }

    if (*(v114 + 4))
    {
      v115 = v114[2];
    }

    else
    {
      v116 = v117;
    }

    if (!*(v114 + 12))
    {
      v115 = v116;
    }

    v118 = v114[3] & v114[1];
    if (v115 >= v110)
    {
      v119 = v110;
    }

    else
    {
      v119 = v115;
    }

    if (v114[3] & v114[1])
    {
      v115 = v110;
      v119 = v110;
    }

    if (!v111)
    {
      v115 = v119;
    }

    *v109 = v115;
    *(v109 + 4) = v111 & v118;
    v120 = v189;
    sub_1B03D3DBC(v108, v189, _s15MissingMessagesO8ProgressVMa);
    v121 = v198;
    v122 = v106 + *(v198 + 20);
    v123 = *v122;
    v124 = v114[4];
    if (v124 <= *v122)
    {
      v125 = *v122;
    }

    else
    {
      v125 = v114[4];
    }

    if (*(v114 + 20))
    {
      v124 = *v122;
    }

    else
    {
      v123 = v125;
    }

    v126 = *(v122 + 4);
    if (v126)
    {
      v127 = v124;
    }

    else
    {
      v127 = v123;
    }

    v128 = v126 & v114[5];
    v129 = v201;
    MessageIdentifierSet.union(_:)(v113 + *(v112 + 24), v201 + *(v198 + 24));
    sub_1B03D3F5C(v108, _s15MissingMessagesO8ProgressVMa);
    sub_1B0398EFC(v194, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v130 = *(v106 + *(v121 + 28));
    v131 = _s15MissingMessagesO10IncompleteVMa;
LABEL_98:
    sub_1B03D3F5C(v106, v131);
    sub_1B03D3E8C(v120, v129, _s15MissingMessagesO8ProgressVMa);
    v175 = v129 + *(v121 + 20);
    *v175 = v127;
    *(v175 + 4) = v128;
    *(v129 + *(v121 + 28)) = v130;
    return swift_storeEnumTagMultiPayload();
  }

  if ((*(v27 + 48))(&v25[v58], 1, v26) != 1)
  {
    v106 = v190;
    sub_1B03D3E8C(v25, v190, _s15MissingMessagesO8CompleteVMa);
    v152 = v193;
    sub_1B03C60A4(&v25[v58], v193, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v153 = v152;
    v154 = v181;
    sub_1B03B5C80(v153, v181, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B03D06F8();
    v155 = v179;
    sub_1B0E46EE8();
    v156 = _s15MissingMessagesO10NewMissingVMa(0);
    v157 = v200;
    v158 = (v200 + *(v156 + 20));
    v159 = *v158;
    v160 = v158[2];
    if (*v158 <= v160)
    {
      v161 = v158[2];
    }

    else
    {
      v161 = *v158;
    }

    if (*(v158 + 4))
    {
      v159 = v158[2];
    }

    else
    {
      v160 = v161;
    }

    if (*(v158 + 12))
    {
      v162 = v159;
    }

    else
    {
      v162 = v160;
    }

    v163 = v158[3] & v158[1];
    v164 = v154;
    v165 = v184;
    sub_1B03C60A4(v164, v184, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v166 = v197;
    sub_1B03C60A4(v155, v165 + *(v197 + 20), &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v167 = v165 + *(v166 + 24);
    *v167 = v162;
    *(v167 + 4) = v163;
    v120 = v187;
    sub_1B03D3DBC(v165, v187, _s15MissingMessagesO8ProgressVMa);
    v168 = *v106;
    v169 = v158[4];
    v170 = *(v158 + 20);
    if (v169 <= *v106)
    {
      v171 = *v106;
    }

    else
    {
      v171 = v158[4];
    }

    if (*(v158 + 20))
    {
      v169 = *v106;
    }

    else
    {
      v168 = v171;
    }

    if (*(v106 + 4))
    {
      v127 = v169;
    }

    else
    {
      v127 = v168;
    }

    v128 = *(v106 + 4) & v170;
    v172 = v195;
    v121 = v198;
    v129 = v201;
    v173 = v157 + *(v156 + 24);
    v174 = v106 + *(v195 + 20);
    MessageIdentifierSet.union(_:)(v173, v201 + *(v198 + 24));
    sub_1B03D3F5C(v165, _s15MissingMessagesO8ProgressVMa);
    sub_1B0398EFC(v193, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v130 = *(v106 + *(v172 + 24));
    v131 = _s15MissingMessagesO8CompleteVMa;
    goto LABEL_98;
  }

  v93 = v183;
  sub_1B03D3E8C(v25, v183, _s15MissingMessagesO8CompleteVMa);
  v94 = *v93;
  v95 = *(v93 + 4);
  v96 = _s15MissingMessagesO10NewMissingVMa(0);
  v97 = v201;
  v98 = v200 + *(v96 + 20);
  v99 = *(v98 + 16);
  v100 = *(v98 + 20);
  if (v99 <= v94)
  {
    v101 = v94;
  }

  else
  {
    v101 = v99;
  }

  if (v100)
  {
    v99 = v94;
    v101 = v94;
  }

  if (v95)
  {
    v102 = v99;
  }

  else
  {
    v102 = v101;
  }

  v103 = v95 & v100;
  v104 = v195;
  MessageIdentifierSet.union(_:)(v200 + *(v96 + 24), v201 + *(v195 + 20));
  v105 = *(v93 + *(v104 + 24));
  sub_1B03D3F5C(v93, _s15MissingMessagesO8CompleteVMa);
  *v97 = v102;
  *(v97 + 4) = v103;
  *(v97 + *(v104 + 24)) = v105;
  return swift_storeEnumTagMultiPayload();
}