uint64_t sub_1ADE5E8D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v32 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F294(0, v1, 0);
  v2 = v32;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1AE23D8EC();
  v7 = result;
  v8 = 0;
  v31 = *(v3 + 36);
  v27 = v3 + 72;
  v28 = v1;
  v29 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v31 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v11 = *(v3 + 56);
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = v3;
    v14 = *v12;
    v15 = v12[1];
    v16 = (v11 + 16 * v7);
    v17 = *v16;
    v30 = v16[1];
    sub_1ADDD86D8(*v12, v15);

    sub_1ADDCC35C(v14, v15);

    v19 = *(v32 + 16);
    v18 = *(v32 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_1ADE6F294((v18 > 1), v19 + 1, 1);
    }

    *(v32 + 16) = v19 + 1;
    v4 = v29;
    *(v32 + 8 * v19 + 32) = v30;
    v9 = 1 << *(v13 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v20 = *(v29 + 8 * v10);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v13;
    if (v31 != *(v13 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (v27 + 8 * v10);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_1ADDFFBC8(v7, v31, 0);
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_1ADDFFBC8(v7, v31, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v28)
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

uint64_t CREncoder.__allocating_init(_:version:fileSignature:)(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  CREncoder.init(_:version:fileSignature:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1ADE5EBF8(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *__return_ptr, uint64_t, uint64_t))
{
  LOBYTE(v12) = a2;
  type metadata accessor for CREncoder();
  swift_allocObject();
  CREncoder.init(_:version:fileSignature:)(a1, &v12, 0, 0xF000000000000000);
  a5(v20, a3, a4);
  if (v5)
  {
  }

  else
  {
    v16 = v20[4];
    v17 = v20[5];
    v18 = v20[6];
    v19 = v20[7];
    v12 = v20[0];
    v13 = v20[1];
    v14 = v20[2];
    v15 = v20[3];
    sub_1ADE67778(&v12);
    v21[4] = v16;
    v21[5] = v17;
    v21[6] = v18;
    v21[7] = v19;
    v21[0] = v12;
    v21[1] = v13;
    v21[2] = v14;
    v21[3] = v15;
    a4 = sub_1ADE6B034(v21, 0);

    v11[4] = v16;
    v11[5] = v17;
    v11[6] = v18;
    v11[7] = v19;
    v11[0] = v12;
    v11[1] = v13;
    v11[2] = v14;
    v11[3] = v15;
    sub_1ADE6AF00(v11);
  }

  return a4;
}

uint64_t sub_1ADE5ED74(void *a1, char a2, uint64_t a3)
{
  LOBYTE(v10) = a2;
  type metadata accessor for CREncoder();
  swift_allocObject();
  CREncoder.init(_:version:fileSignature:)(a1, &v10, 0, 0xF000000000000000);
  sub_1ADE6AB58(a3, sub_1ADE73E50, v18);
  if (v3)
  {
  }

  else
  {
    v14 = v18[4];
    v15 = v18[5];
    v16 = v18[6];
    v17 = v18[7];
    v10 = v18[0];
    v11 = v18[1];
    v12 = v18[2];
    v13 = v18[3];
    v6 = sub_1ADE67778(&v10);
    v19[4] = v14;
    v19[5] = v15;
    v19[6] = v16;
    v19[7] = v17;
    v19[0] = v10;
    v19[1] = v11;
    v19[2] = v12;
    v19[3] = v13;
    v7 = (*(*a3 + 208))(v6);
    a3 = sub_1ADE6B034(v19, v7);

    v9[4] = v14;
    v9[5] = v15;
    v9[6] = v16;
    v9[7] = v17;
    v9[0] = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
    sub_1ADE6AF00(v9);
  }

  return a3;
}

uint64_t CRDT.serializedData(_:version:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  LOBYTE(v13) = *a2;
  type metadata accessor for CREncoder();
  swift_allocObject();
  CREncoder.init(_:version:fileSignature:)(a1, &v13, 0, 0xF000000000000000);
  sub_1ADE6AD28(v6, a3, a4, v21);
  if (v5)
  {
  }

  else
  {
    v17 = v21[4];
    v18 = v21[5];
    v19 = v21[6];
    v20 = v21[7];
    v13 = v21[0];
    v14 = v21[1];
    v15 = v21[2];
    v16 = v21[3];
    sub_1ADE67778(&v13);
    v22[4] = v17;
    v22[5] = v18;
    v22[6] = v19;
    v22[7] = v20;
    v22[0] = v13;
    v22[1] = v14;
    v22[2] = v15;
    v22[3] = v16;
    v10 = (*(*(*(a4 + 16) + 8) + 32))(a3);
    v6 = sub_1ADE6B034(v22, v10);

    v12[4] = v17;
    v12[5] = v18;
    v12[6] = v19;
    v12[7] = v20;
    v12[0] = v13;
    v12[1] = v14;
    v12[2] = v15;
    v12[3] = v16;
    sub_1ADE6AF00(v12);
  }

  return v6;
}

uint64_t sub_1ADE5F10C(uint64_t a1, unint64_t a2)
{
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v28, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v19);
  if (v2)
  {
    sub_1ADDCC35C(a1, a2);
  }

  else
  {
    v29[4] = v24;
    v29[5] = v25;
    v29[6] = v26;
    v29[7] = v27;
    v29[0] = v20;
    v29[1] = v21;
    v29[2] = v22;
    v29[3] = v23;
    v6 = v28;
    sub_1ADDCEE40(&v19, v18, &qword_1EB5BA278, &unk_1AE241D30);
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED96F2A8;
    v3 = type metadata accessor for CRDecoder();
    inited = swift_initStackObject();
    v9 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v9;
    v10 = MEMORY[0x1E69E7CC8];
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 57) = v6;
    *(inited + 16) = 0;
    *(inited + 24) = v9;
    type metadata accessor for CRProtoDecodeContext();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v10;
    v11[4] = v7;
    v11[5] = v10;
    v12 = *(&v21 + 1);

    sub_1ADDCEE40(&v19, v18, &qword_1EB5BA278, &unk_1AE241D30);

    sub_1AE1B5950(v12);

    sub_1ADDCEDE0(&v19, &qword_1EB5BA278, &unk_1AE241D30);
    v13 = *(inited + 16);
    *(inited + 16) = v11;

    sub_1ADDD5D3C(v29);
    sub_1ADDCEDE0(&v19, &qword_1EB5BA278, &unk_1AE241D30);
    v14 = v20;
    if (v20 >> 62 || (v20 & 0xF000000000000007) == 0xF000000000000007)
    {
      sub_1ADE42E40();
      swift_allocError();
      *v16 = 0xD000000000000014;
      *(v16 + 8) = 0x80000001AE260180;
      *(v16 + 16) = 0;
      swift_willThrow();
      sub_1ADDCC35C(a1, a2);
      sub_1ADDCEDE0(&v19, &qword_1EB5BA278, &unk_1AE241D30);
      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
    }

    else
    {
      swift_initStackObject();
      sub_1ADE73AB0(v14);

      sub_1ADE73AB0(v14);
      v15 = sub_1ADDE77B4(v14, inited);

      v3 = sub_1ADFBA168(v15);
      sub_1ADDCC35C(a1, a2);
      sub_1ADDCEDE0(&v19, &qword_1EB5BA278, &unk_1AE241D30);
      sub_1ADE73AC8(v14);
      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
    }
  }

  return v3;
}

uint64_t sub_1ADE5F5C0(uint64_t a1, unint64_t a2)
{
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v28, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v19);
  if (v2)
  {
    sub_1ADDCC35C(a1, a2);
  }

  else
  {
    v29[4] = v24;
    v29[5] = v25;
    v29[6] = v26;
    v29[7] = v27;
    v29[0] = v20;
    v29[1] = v21;
    v29[2] = v22;
    v29[3] = v23;
    v6 = v28;
    sub_1ADDCEE40(&v19, v18, &qword_1EB5BA278, &unk_1AE241D30);
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED96F2A8;
    v3 = type metadata accessor for CRDecoder();
    inited = swift_initStackObject();
    v9 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v9;
    v10 = MEMORY[0x1E69E7CC8];
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 57) = v6;
    *(inited + 16) = 0;
    *(inited + 24) = v9;
    type metadata accessor for CRProtoDecodeContext();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v10;
    v11[4] = v7;
    v11[5] = v10;
    v12 = *(&v21 + 1);

    sub_1ADDCEE40(&v19, v18, &qword_1EB5BA278, &unk_1AE241D30);

    sub_1AE1B5950(v12);

    sub_1ADDCEDE0(&v19, &qword_1EB5BA278, &unk_1AE241D30);
    v13 = *(inited + 16);
    *(inited + 16) = v11;

    sub_1ADDD5D3C(v29);
    sub_1ADDCEDE0(&v19, &qword_1EB5BA278, &unk_1AE241D30);
    v15 = v20;
    if (v20 >> 62 || (v20 & 0xF000000000000007) == 0xF000000000000007)
    {
      sub_1ADE42E40();
      swift_allocError();
      *v17 = 0xD000000000000014;
      *(v17 + 8) = 0x80000001AE260180;
      *(v17 + 16) = 0;
      swift_willThrow();
      sub_1ADDCEDE0(&v19, &qword_1EB5BA278, &unk_1AE241D30);
      sub_1ADDCC35C(a1, a2);
      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
    }

    else
    {
      swift_initStackObject();
      sub_1ADE73AB0(v15);

      sub_1ADE73AB0(v15);
      v16 = sub_1ADDE77B4(v15, inited);

      v3 = sub_1AE1570D4(v16);
      sub_1ADE73AC8(v15);
      sub_1ADDCC35C(a1, a2);
      sub_1ADDCEDE0(&v19, &qword_1EB5BA278, &unk_1AE241D30);
      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
    }
  }

  return v3;
}

uint64_t sub_1ADE5FA60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t)@<X2>, void *a4@<X8>)
{
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v31, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v22);
  if (v4)
  {
    return sub_1ADDCC35C(a1, a2);
  }

  v33 = a4;
  v32[4] = v27;
  v32[5] = v28;
  v32[6] = v29;
  v32[7] = v30;
  v32[0] = v23;
  v32[1] = v24;
  v32[2] = v25;
  v32[3] = v26;
  v10 = v31;
  sub_1ADDCEE40(&v22, v21, &qword_1EB5BA278, &unk_1AE241D30);
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED96F2A8;
  type metadata accessor for CRDecoder();
  inited = swift_initStackObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  *(inited + 40) = v13;
  v14 = MEMORY[0x1E69E7CC8];
  *(inited + 48) = MEMORY[0x1E69E7CC8];
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 57) = v10;
  *(inited + 16) = 0;
  *(inited + 24) = v13;
  type metadata accessor for CRProtoDecodeContext();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v14;
  v15[4] = v11;
  v15[5] = v14;
  v16 = *(&v24 + 1);

  sub_1ADDCEE40(&v22, v21, &qword_1EB5BA278, &unk_1AE241D30);

  sub_1AE1B5950(v16);

  sub_1ADDCEDE0(&v22, &qword_1EB5BA278, &unk_1AE241D30);
  v17 = *(inited + 16);
  *(inited + 16) = v15;

  sub_1ADDD5D3C(v32);
  sub_1ADDCEDE0(&v22, &qword_1EB5BA278, &unk_1AE241D30);
  v18 = v23;
  if (v23 >> 62 || (v23 & 0xF000000000000007) == 0xF000000000000007)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v20 = 0xD000000000000014;
    *(v20 + 8) = 0x80000001AE260180;
    *(v20 + 16) = 0;
    swift_willThrow();
    sub_1ADDCC35C(a1, a2);
    sub_1ADDCEDE0(&v22, &qword_1EB5BA278, &unk_1AE241D30);
  }

  else
  {
    swift_allocObject();
    sub_1ADE73AB0(v18);

    sub_1ADE73AB0(v18);
    v19 = sub_1ADDE77B4(v18, inited);

    a3(v21, v19);
    sub_1ADE73AC8(v18);
    sub_1ADDCC35C(a1, a2);
    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
    result = sub_1ADDCEDE0(&v22, &qword_1EB5BA278, &unk_1AE241D30);
    *v33 = v21[0];
  }

  return result;
}

uint64_t sub_1ADE60030()
{
  v0 = sub_1AE1FB7B8(1952739939, 0xE400000000000000);
  v1 = sub_1ADDCC6B4(v0);
  v3 = v2;

  qword_1ED96F240 = v1;
  *algn_1ED96F248 = v3;
  return result;
}

uint64_t sub_1ADE60090(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_32;
    }

    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 < 8)
      {
        goto LABEL_32;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_43;
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 >= 8)
      {
        goto LABEL_11;
      }

LABEL_32:
      sub_1ADE42E40();
      swift_allocError();
      *v27 = 0;
      *(v27 + 8) = 0;
LABEL_33:
      *(v27 + 16) = 4;
      result = swift_willThrow();
LABEL_34:
      v29 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (BYTE6(a3) < 8uLL)
  {
    goto LABEL_32;
  }

LABEL_11:
  v12 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_22;
    }

    v14 = *(a4 + 16);
    v13 = *(a4 + 24);
    v15 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v12)
  {
    goto LABEL_22;
  }

  if (__OFSUB__(HIDWORD(a4), a4))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v15 = HIDWORD(a4) - a4;
LABEL_20:
  if (v15 < 0)
  {
    __break(1u);
  }

LABEL_22:
  v16 = a4;
  v18 = sub_1AE23BE7C();
  v20 = v19;
  LOBYTE(v16) = sub_1ADDD6F8C(v18, v19, v16, a5);
  sub_1ADDCC35C(v18, v20);
  if ((v16 & 1) == 0)
  {
    goto LABEL_32;
  }

  v21 = sub_1AE23BE8C();
  if (v21 > 7u || ((0xF1u >> v21) & 1) == 0)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v27 = xmmword_1AE241280;
    goto LABEL_33;
  }

  v22 = 0x302010000000000uLL >> (8 * (v21 & 0x1Fu));
  if (v7 == 2)
  {
    v30 = *(a2 + 16);
    v31 = sub_1AE23BB7C();
    if (v31)
    {
      v32 = v31;
      v33 = sub_1AE23BBAC();
      if (__OFSUB__(v30, v33))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v26 = v30 - v33 + v32;
      sub_1AE23BB9C();
      if (v26)
      {
LABEL_39:
        result = *(v26 + 6);
LABEL_41:
        *a1 = v22;
        goto LABEL_34;
      }
    }

    else
    {
      sub_1AE23BB9C();
    }

    __break(1u);
    goto LABEL_50;
  }

  if (v7 != 1)
  {
    result = HIWORD(a2);
    goto LABEL_41;
  }

  if (a2 > a2 >> 32)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v23 = sub_1AE23BB7C();
  if (v23)
  {
    v24 = v23;
    v25 = sub_1AE23BBAC();
    if (!__OFSUB__(a2, v25))
    {
      v26 = a2 - v25 + v24;
      sub_1AE23BB9C();
      if (!v26)
      {
        __break(1u);
        goto LABEL_32;
      }

      goto LABEL_39;
    }

LABEL_47:
    __break(1u);
  }

LABEL_50:
  result = sub_1AE23BB9C();
  __break(1u);
  return result;
}

void sub_1ADE6035C(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v14 = sub_1AE23C34C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3 >> 62;
  v54 = a1;
  if ((a3 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_25;
    }

    v20 = *(a2 + 16);
    v19 = *(a2 + 24);
    v21 = __OFSUB__(v19, v20);
    v22 = v19 - v20;
    if (!v21)
    {
      if (v22 < 8)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (!v18)
  {
    if (BYTE6(a3) < 8uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (HIDWORD(a2) - a2 < 8)
  {
    goto LABEL_25;
  }

LABEL_11:
  v23 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_22;
    }

    v25 = *(a4 + 16);
    v24 = *(a4 + 24);
    v26 = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v23)
  {
    goto LABEL_22;
  }

  if (__OFSUB__(HIDWORD(a4), a4))
  {
LABEL_31:
    __break(1u);
    return;
  }

  v26 = HIDWORD(a4) - a4;
LABEL_20:
  if (v26 < 0)
  {
    __break(1u);
  }

LABEL_22:
  v27 = sub_1AE23BE7C();
  v45[1] = v17;
  v28 = a6;
  v29 = v27;
  v31 = v30;
  v32 = sub_1ADDD6F8C(v27, v30, a4, a5);
  v33 = v29;
  a6 = v28;
  v34 = v31;
  v7 = v6;
  sub_1ADDCC35C(v33, v34);
  if (v32)
  {
    sub_1ADE60630(v54, a2, a3, a4, a5, 0, 0, v46);
    if (v6)
    {
      return;
    }

    v35 = *v46;
    v36 = *&v46[8];
    v37 = *v47;
    v38 = *&v47[8];
    v39 = *&v47[24];
    v40 = *v48;
    v41 = *&v48[8];
    v42 = *&v48[24];
    v43 = *&v48[40];
    v44 = *&v48[56];
    goto LABEL_27;
  }

LABEL_25:
  *v54 = 1;
  v52 = a2;
  v53 = a3;
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1ADDD86D8(a2, a3);
  sub_1AE23C33C();
  sub_1ADE73BC8();
  sub_1AE23C52C();
  if (v7)
  {
    return;
  }

  v35 = 0;
  v36 = *v46;
  v37 = *&v46[16];
  v38 = *v47;
  v39 = *&v47[16];
  v40 = *&v47[32];
  v41 = *v48;
  v42 = *&v48[16];
  v43 = *&v48[32];
  v44 = *&v48[48];
LABEL_27:
  *a6 = v35;
  *(a6 + 8) = v36;
  *(a6 + 24) = v37;
  *(a6 + 32) = v38;
  *(a6 + 48) = v39;
  *(a6 + 64) = v40;
  *(a6 + 72) = v41;
  *(a6 + 88) = v42;
  *(a6 + 104) = v43;
  *(a6 + 120) = v44;
}

void sub_1ADE60630(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v118 = *MEMORY[0x1E69E9840];
  v14 = sub_1AE23C34C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v20 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_32;
    }

    v22 = *(a2 + 16);
    v21 = *(a2 + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (!v23)
    {
      if (v24 < 8)
      {
        goto LABEL_32;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_63;
  }

  if (v20)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 >= 8)
      {
        goto LABEL_11;
      }

LABEL_32:
      sub_1ADE42E40();
      swift_allocError();
      *v41 = 0;
      *(v41 + 8) = 0;
      *(v41 + 16) = 4;
LABEL_33:
      swift_willThrow();
LABEL_34:
      v42 = *MEMORY[0x1E69E9840];
      return;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (BYTE6(a3) < 8uLL)
  {
    goto LABEL_32;
  }

LABEL_11:
  v25 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v25 != 2)
    {
      goto LABEL_22;
    }

    v27 = *(a4 + 16);
    v26 = *(a4 + 24);
    v28 = v26 - v27;
    if (!__OFSUB__(v26, v27))
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v25)
  {
    goto LABEL_22;
  }

  if (__OFSUB__(HIDWORD(a4), a4))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v28 = HIDWORD(a4) - a4;
LABEL_20:
  if (v28 < 0)
  {
    __break(1u);
  }

LABEL_22:
  v77 = v18;
  v78 = v17;
  v76 = v19;
  v79 = a8;
  v29 = sub_1AE23BE7C();
  v31 = v30;
  v32 = sub_1ADDD6F8C(v29, v30, a4, a5);
  v33 = v29;
  v34 = v8;
  sub_1ADDCC35C(v33, v31);
  if ((v32 & 1) == 0)
  {
    goto LABEL_32;
  }

  v35 = sub_1AE23BE8C();
  if (v35 > 7u || ((0xF1u >> v35) & 1) == 0)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v43 = xmmword_1AE241280;
    *(v43 + 16) = 4;
    goto LABEL_33;
  }

  v36 = 0x1Fu >> v35;
  v75 = 0x302010000000000uLL >> (8 * (v35 & 0x1Fu));
  if (v20 != 2)
  {
    if (v20 != 1)
    {
      v40 = HIWORD(a2);
      if (v36)
      {
        goto LABEL_40;
      }

      goto LABEL_44;
    }

    if (a2 <= a2 >> 32)
    {
      v37 = sub_1AE23BB7C();
      if (v37)
      {
        v38 = v37;
        v39 = sub_1AE23BBAC();
        if (!__OFSUB__(a2, v39))
        {
          v40 = a2 - v39 + v38;
          sub_1AE23BB9C();
          v34 = v8;
          if (!v40)
          {
            goto LABEL_70;
          }

LABEL_39:
          LOWORD(v40) = *(v40 + 6);
          if (v36)
          {
LABEL_40:
            if (v20 == 2)
            {
              v48 = *(a2 + 16);
              v49 = *(a2 + 24);
            }

            else if (v20 == 1)
            {
              v48 = a2;
              v49 = a2 >> 32;
            }

            else
            {
              v48 = 0;
              v49 = BYTE6(a3);
            }

            if (v49 < 8 || v49 < v48)
            {
              goto LABEL_72;
            }

            *&v84 = sub_1AE23BE7C();
            *(&v84 + 1) = v54;
            *&v100[0] = 0;
            v98 = 0u;
            v99 = 0u;
            sub_1AE23C33C();
            sub_1ADE74344();
            sub_1AE23C52C();
            if (v34)
            {
              sub_1ADE42E40();
              swift_allocError();
              *v55 = xmmword_1AE241D10;
              *(v55 + 16) = 0;
              swift_willThrow();

              goto LABEL_34;
            }

            v50 = v40;
            v56 = *(&v90 + 1);
            type metadata accessor for Upgrade4to5();
            v57 = swift_allocObject();
            v58 = MEMORY[0x1E69E7CC0];
            v59 = MEMORY[0x1E69E7CC8];
            v57[2] = MEMORY[0x1E69E7CC0];
            v57[3] = v59;
            v57[4] = v58;
            v57[5] = v59;
            v57[6] = 0;
            v57[7] = 0;
            *a1 = v75;

            sub_1AE1988E8(v60, v56, &v109);

            swift_bridgeObjectRelease_n();
            v62 = v116;
            v61 = v117;
            v64 = v114;
            v63 = v115;
            v65 = v112;
            v66 = v111;
            v67 = v113;
            v68 = v110;
            v69 = v109;
            v51 = v79;
LABEL_61:
            *v51 = v50;
            *(v51 + 8) = v69;
            *(v51 + 24) = v68;
            *(v51 + 32) = v66;
            *(v51 + 48) = v65;
            *(v51 + 64) = v67;
            *(v51 + 72) = v64;
            *(v51 + 88) = v63;
            *(v51 + 104) = v62;
            *(v51 + 120) = v61;
            goto LABEL_34;
          }

LABEL_44:
          v50 = v40;
          *a1 = v75;
          if (v20 == 2)
          {
            v52 = *(a2 + 16);
            v53 = *(a2 + 24);
            v51 = v79;
          }

          else
          {
            v51 = v79;
            if (v20 == 1)
            {
              v52 = a2;
              v53 = a2 >> 32;
            }

            else
            {
              v52 = 0;
              v53 = BYTE6(a3);
            }
          }

          if (v53 < 8 || v53 < v52)
          {
            goto LABEL_73;
          }

          v70 = sub_1AE23BE7C();
          v72 = v71;
          v108 = 0;
          memset(v107, 0, sizeof(v107));
          sub_1AE23C33C();
          v105 = v70;
          v106 = v72;
          *(v100 + 8) = xmmword_1AE241910;
          *(&v99 + 1) = MEMORY[0x1E69E7CC0];
          *&v100[0] = MEMORY[0x1E69E7CC0];
          *(&v100[1] + 1) = MEMORY[0x1E69E7CC0];
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          *&v98 = 0xF000000000000007;
          *(&v98 + 1) = a6;
          *&v99 = a7;
          sub_1ADE74334(a6);
          sub_1ADE73BC8();
          sub_1AE23C55C();
          v73 = (v76 + 8);
          if (v34)
          {
            (*v73)(v77, v78);
            sub_1ADDCEDE0(v107, &qword_1EB5BA358, &qword_1AE242380);
            sub_1ADDCC35C(v105, v106);
            v94 = v101;
            v95 = v102;
            v96 = v103;
            v97 = v104;
            v90 = v98;
            v91 = v99;
            v92 = v100[0];
            v93 = v100[1];
            sub_1ADE6AF00(&v90);
            sub_1ADE42E40();
            swift_allocError();
            *v74 = xmmword_1AE241D10;
            *(v74 + 16) = 0;
            swift_willThrow();

            goto LABEL_34;
          }

          (*v73)(v77, v78);
          sub_1ADDCEDE0(v107, &qword_1EB5BA358, &qword_1AE242380);
          sub_1ADDCC35C(v105, v106);
          v86 = v101;
          v87 = v102;
          v88 = v103;
          v89 = v104;
          v84 = v98;
          v85[0] = v99;
          v85[1] = v100[0];
          v85[2] = v100[1];
          v90 = v98;
          v91 = v99;
          v92 = v100[0];
          v93 = v100[1];
          v94 = v101;
          v95 = v102;
          v96 = v103;
          v97 = v104;
          sub_1ADE73B00(&v84, &v83);
          sub_1ADE6AF00(&v90);
          v62 = v88;
          v61 = v89;
          v64 = v86;
          v63 = v87;
          v65 = *(&v85[1] + 8);
          v66 = *(v85 + 8);
          v67 = *(&v85[2] + 1);
          v68 = *&v85[0];
          v69 = v84;
          goto LABEL_61;
        }

LABEL_67:
        __break(1u);
      }

LABEL_69:
      sub_1AE23BB9C();
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    goto LABEL_65;
  }

  v44 = *(a2 + 16);
  v45 = sub_1AE23BB7C();
  if (!v45)
  {
    sub_1AE23BB9C();
    __break(1u);
    goto LABEL_69;
  }

  v46 = v45;
  v47 = sub_1AE23BBAC();
  if (__OFSUB__(v44, v47))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v40 = v44 - v47 + v46;
  sub_1AE23BB9C();
  v34 = v8;
  if (v40)
  {
    goto LABEL_39;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t CRCodableVersion.hashValue.getter()
{
  v1 = *v0;
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](v1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADE60EC4()
{
  v1 = *v0;
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](v1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADE60F38()
{
  v1 = *v0;
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](v1);
  return sub_1AE23E34C();
}

uint64_t CRDT.serializedData(version:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = sub_1ADDCE2E4(0, v9);
  sub_1ADDCEDE0(v9, &qword_1EB5B9DB0, &qword_1AE240B80);
  LOBYTE(v9[0]) = v5;
  v7 = (*(*(a3 + 8) + 24))(v6, v9, a2);

  return v7;
}

uint64_t CRDT.serializedDataWithAssets(_:version:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 720) = v4;
  *(v5 + 712) = a4;
  *(v5 + 704) = a3;
  *(v5 + 696) = a1;
  *(v5 + 760) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1ADE6118C, 0, 0);
}

uint64_t sub_1ADE6118C()
{
  v26 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v25 = *(v0 + 760);
  type metadata accessor for CREncoder();
  v5 = swift_allocObject();
  *(v0 + 728) = v5;
  CREncoder.init(_:version:fileSignature:)(v4, &v25, 0, 0xF000000000000000);
  sub_1ADE6AD28(v1, v3, v2, (v0 + 144));
  v6 = *(v0 + 176);
  *(v0 + 736) = v6;
  swift_beginAccess();
  if (*(*(v5 + 88) + 16))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA280, &unk_1AE259B60);
    v8 = *(MEMORY[0x1E69E88A0] + 4);
    v9 = swift_task_alloc();
    *(v0 + 744) = v9;
    *v9 = v0;
    v9[1] = sub_1ADE614C8;
    v28 = v7;

    return MEMORY[0x1EEE6DD58](v0 + 688, &type metadata for Proto_Asset, v7, 0, 0, &unk_1AE241D50, v5, &type metadata for Proto_Asset);
  }

  else
  {
    v10 = *(v0 + 720);
    v11 = *(v0 + 712);
    v12 = *(v0 + 704);
    *(*(v0 + 728) + 88) = MEMORY[0x1E69E7CC0];

    v13 = *(v0 + 160);
    *(v0 + 16) = *(v0 + 144);
    *(v0 + 32) = v13;
    *(v0 + 48) = v6;
    *(v0 + 88) = *(v0 + 216);
    *(v0 + 104) = *(v0 + 232);
    *(v0 + 120) = *(v0 + 248);
    *(v0 + 136) = *(v0 + 264);
    *(v0 + 56) = *(v0 + 184);
    *(v0 + 72) = *(v0 + 200);
    v14 = (*(*(*(v11 + 16) + 8) + 32))(v12);
    v15 = sub_1ADE6B034((v0 + 16), v14);
    v16 = *(v0 + 728);
    v17 = v15;
    v19 = v18;

    v20 = *(v0 + 160);
    *(v0 + 528) = *(v0 + 144);
    *(v0 + 544) = v20;
    *(v0 + 560) = v6;
    v21 = *(v0 + 232);
    *(v0 + 600) = *(v0 + 216);
    *(v0 + 616) = v21;
    *(v0 + 632) = *(v0 + 248);
    *(v0 + 648) = *(v0 + 264);
    v22 = *(v0 + 200);
    *(v0 + 568) = *(v0 + 184);
    *(v0 + 584) = v22;
    sub_1ADE6AF00(v0 + 528);
    v23 = *(v0 + 8);

    return v23(v17, v19);
  }
}

uint64_t sub_1ADE614C8()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v6 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v4 = sub_1ADE617F4;
  }

  else
  {
    *(v2 + 680) = *(v2 + 736);
    v4 = sub_1ADE615E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1ADE615E4()
{
  v1 = *(v0 + 728);
  sub_1ADDCEDE0(v0 + 680, &qword_1EB5BA280, &unk_1AE259B60);
  v2 = *(v0 + 688);
  v3 = *(v1 + 88);
  v4 = *(v0 + 752);
  v5 = *(v0 + 720);
  v6 = *(v0 + 712);
  v7 = *(v0 + 704);
  *(*(v0 + 728) + 88) = MEMORY[0x1E69E7CC0];

  v8 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v8;
  *(v0 + 48) = v2;
  *(v0 + 88) = *(v0 + 216);
  *(v0 + 104) = *(v0 + 232);
  *(v0 + 120) = *(v0 + 248);
  *(v0 + 136) = *(v0 + 264);
  *(v0 + 56) = *(v0 + 184);
  *(v0 + 72) = *(v0 + 200);
  v9 = (*(*(*(v6 + 16) + 8) + 32))(v7);
  v10 = sub_1ADE6B034((v0 + 16), v9);
  v12 = *(v0 + 728);
  if (v4)
  {
    v13 = *(v0 + 728);

    v14 = *(v0 + 160);
    *(v0 + 400) = *(v0 + 144);
    *(v0 + 416) = v14;
    *(v0 + 432) = v2;
    v15 = *(v0 + 232);
    *(v0 + 472) = *(v0 + 216);
    *(v0 + 488) = v15;
    *(v0 + 504) = *(v0 + 248);
    *(v0 + 520) = *(v0 + 264);
    v16 = *(v0 + 200);
    *(v0 + 440) = *(v0 + 184);
    *(v0 + 456) = v16;
    sub_1ADE6AF00(v0 + 400);
    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = v10;
    v20 = *(v0 + 728);
    v21 = v11;

    v22 = *(v0 + 160);
    *(v0 + 528) = *(v0 + 144);
    *(v0 + 544) = v22;
    *(v0 + 560) = v2;
    v23 = *(v0 + 232);
    *(v0 + 600) = *(v0 + 216);
    *(v0 + 616) = v23;
    *(v0 + 632) = *(v0 + 248);
    *(v0 + 648) = *(v0 + 264);
    v24 = *(v0 + 200);
    *(v0 + 568) = *(v0 + 184);
    *(v0 + 584) = v24;
    sub_1ADE6AF00(v0 + 528);
    v25 = *(v0 + 8);

    return v25(v19, v21);
  }
}

uint64_t sub_1ADE617F4()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);

  v3 = *(v0 + 160);
  *(v0 + 272) = *(v0 + 144);
  *(v0 + 288) = v3;
  *(v0 + 304) = v1;
  v4 = *(v0 + 232);
  *(v0 + 344) = *(v0 + 216);
  *(v0 + 360) = v4;
  *(v0 + 376) = *(v0 + 248);
  *(v0 + 392) = *(v0 + 264);
  v5 = *(v0 + 200);
  *(v0 + 312) = *(v0 + 184);
  *(v0 + 328) = v5;
  sub_1ADE6AF00(v0 + 272);
  v6 = *(v0 + 752);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t CRValue.serializedData()(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v4 = sub_1ADDCE2E4(0, v7);
  sub_1ADDCEDE0(v7, &qword_1EB5B9DB0, &qword_1AE240B80);
  LOBYTE(v7[0]) = 1;
  v5 = CRValue.serializedData(_:version:)(v4, v7, a1, a2);

  return v5;
}

uint64_t CRValue.serializedData(_:version:)(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = *a2;
  LOBYTE(v13[0]) = *a2;
  type metadata accessor for CREncoder();
  swift_allocObject();
  CREncoder.init(_:version:fileSignature:)(a1, v13, 0, 0xF000000000000000);
  sub_1ADE6A9AC(v22);
  if (v5)
  {
  }

  else
  {
    v18 = v22[4];
    v19 = v22[5];
    v20 = v22[6];
    v21 = v22[7];
    v14 = v22[0];
    v15 = v22[1];
    v16 = v22[2];
    v17 = v22[3];
    sub_1ADE67778(&v14);
    v11 = (*(*(*(a4 + 8) + 8) + 32))(a3);
    v6 = sub_1ADE675B8(&v14, v10 + 4, v11);

    v13[4] = v18;
    v13[5] = v19;
    v13[6] = v20;
    v13[7] = v21;
    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    v13[3] = v17;
    sub_1ADE6AF00(v13);
  }

  return v6;
}

uint64_t CRValue.serializedDataWithAssets(_:version:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 720) = v4;
  *(v5 + 712) = a4;
  *(v5 + 704) = a3;
  *(v5 + 696) = a1;
  *(v5 + 760) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1ADE61B94, 0, 0);
}

uint64_t sub_1ADE61B94()
{
  v27 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v26[0] = *(v0 + 760);
  type metadata accessor for CREncoder();
  v5 = swift_allocObject();
  *(v0 + 728) = v5;
  CREncoder.init(_:version:fileSignature:)(v4, v26, 0, 0xF000000000000000);
  sub_1ADE6A9AC((v0 + 144));
  v6 = *(v0 + 176);
  *(v0 + 736) = v6;
  swift_beginAccess();
  if (*(*(v5 + 88) + 16))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA280, &unk_1AE259B60);
    v8 = *(MEMORY[0x1E69E88A0] + 4);
    v9 = swift_task_alloc();
    *(v0 + 744) = v9;
    *v9 = v0;
    v9[1] = sub_1ADE61EE8;
    v29 = v7;

    return MEMORY[0x1EEE6DD58](v0 + 688, &type metadata for Proto_Asset, v7, 0, 0, &unk_1AE241D68, v5, &type metadata for Proto_Asset);
  }

  else
  {
    v10 = *(v0 + 760);
    v11 = *(v0 + 720);
    v12 = *(v0 + 712);
    v13 = *(v0 + 704);
    *(*(v0 + 728) + 88) = MEMORY[0x1E69E7CC0];

    v14 = *(v0 + 160);
    *(v0 + 16) = *(v0 + 144);
    *(v0 + 32) = v14;
    *(v0 + 48) = v6;
    *(v0 + 88) = *(v0 + 216);
    *(v0 + 104) = *(v0 + 232);
    *(v0 + 120) = *(v0 + 248);
    *(v0 + 136) = *(v0 + 264);
    *(v0 + 56) = *(v0 + 184);
    *(v0 + 72) = *(v0 + 200);
    v15 = (*(*(*(v12 + 8) + 8) + 32))(v13);
    v16 = sub_1ADE675B8((v0 + 16), v10 + 4, v15);
    v17 = *(v0 + 728);
    v18 = v16;
    v20 = v19;

    v21 = *(v0 + 160);
    *(v0 + 528) = *(v0 + 144);
    *(v0 + 544) = v21;
    *(v0 + 560) = v6;
    v22 = *(v0 + 232);
    *(v0 + 600) = *(v0 + 216);
    *(v0 + 616) = v22;
    *(v0 + 632) = *(v0 + 248);
    *(v0 + 648) = *(v0 + 264);
    v23 = *(v0 + 200);
    *(v0 + 568) = *(v0 + 184);
    *(v0 + 584) = v23;
    sub_1ADE6AF00(v0 + 528);
    v24 = *(v0 + 8);

    return v24(v18, v20);
  }
}

uint64_t sub_1ADE61EE8()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v6 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v4 = sub_1ADE7449C;
  }

  else
  {
    *(v2 + 680) = *(v2 + 736);
    v4 = sub_1ADE62004;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1ADE62004()
{
  v1 = *(v0 + 728);
  sub_1ADDCEDE0(v0 + 680, &qword_1EB5BA280, &unk_1AE259B60);
  v2 = *(v0 + 688);
  v3 = *(v1 + 88);
  v4 = *(v0 + 752);
  v5 = *(v0 + 760);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  *(*(v0 + 728) + 88) = MEMORY[0x1E69E7CC0];

  v9 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v9;
  *(v0 + 48) = v2;
  *(v0 + 88) = *(v0 + 216);
  *(v0 + 104) = *(v0 + 232);
  *(v0 + 120) = *(v0 + 248);
  *(v0 + 136) = *(v0 + 264);
  *(v0 + 56) = *(v0 + 184);
  *(v0 + 72) = *(v0 + 200);
  v10 = (*(*(*(v7 + 8) + 8) + 32))(v8);
  v11 = sub_1ADE675B8((v0 + 16), v5 + 4, v10);
  v13 = *(v0 + 728);
  if (v4)
  {
    v14 = *(v0 + 728);

    v15 = *(v0 + 160);
    *(v0 + 400) = *(v0 + 144);
    *(v0 + 416) = v15;
    *(v0 + 432) = v2;
    v16 = *(v0 + 232);
    *(v0 + 472) = *(v0 + 216);
    *(v0 + 488) = v16;
    *(v0 + 504) = *(v0 + 248);
    *(v0 + 520) = *(v0 + 264);
    v17 = *(v0 + 200);
    *(v0 + 440) = *(v0 + 184);
    *(v0 + 456) = v17;
    sub_1ADE6AF00(v0 + 400);
    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = v11;
    v21 = *(v0 + 728);
    v22 = v12;

    v23 = *(v0 + 160);
    *(v0 + 528) = *(v0 + 144);
    *(v0 + 544) = v23;
    *(v0 + 560) = v2;
    v24 = *(v0 + 232);
    *(v0 + 600) = *(v0 + 216);
    *(v0 + 616) = v24;
    *(v0 + 632) = *(v0 + 248);
    *(v0 + 648) = *(v0 + 264);
    v25 = *(v0 + 200);
    *(v0 + 568) = *(v0 + 184);
    *(v0 + 584) = v25;
    sub_1ADE6AF00(v0 + 528);
    v26 = *(v0 + 8);

    return v26(v20, v22);
  }
}

uint64_t sub_1ADE62270@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v29, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v20);
  if (v3)
  {
    return sub_1ADDCC35C(a1, a2);
  }

  v30[4] = v25;
  v30[5] = v26;
  v30[6] = v27;
  v30[7] = v28;
  v30[0] = v21;
  v30[1] = v22;
  v30[2] = v23;
  v30[3] = v24;
  v8 = v29;
  sub_1ADDCEE40(&v20, v19, &qword_1EB5BA278, &unk_1AE241D30);
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED96F2A8;
  type metadata accessor for CRDecoder();
  inited = swift_initStackObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  *(inited + 40) = v11;
  v12 = MEMORY[0x1E69E7CC8];
  *(inited + 48) = MEMORY[0x1E69E7CC8];
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 57) = v8;
  *(inited + 16) = 0;
  *(inited + 24) = v11;
  type metadata accessor for CRProtoDecodeContext();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v12;
  v13[4] = v9;
  v13[5] = v12;
  v14 = *(&v22 + 1);

  sub_1ADDCEE40(&v20, v19, &qword_1EB5BA278, &unk_1AE241D30);

  sub_1AE1B5950(v14);

  sub_1ADDCEDE0(&v20, &qword_1EB5BA278, &unk_1AE241D30);
  v15 = *(inited + 16);
  *(inited + 16) = v13;

  sub_1ADDD5D3C(v30);
  sub_1ADDCEDE0(&v20, &qword_1EB5BA278, &unk_1AE241D30);
  v16 = v21;
  if (v21 >> 62 || (v21 & 0xF000000000000007) == 0xF000000000000007)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v18 = 0xD000000000000014;
    *(v18 + 8) = 0x80000001AE260180;
    *(v18 + 16) = 0;
    swift_willThrow();
    sub_1ADDCC35C(a1, a2);
    sub_1ADDCEDE0(&v20, &qword_1EB5BA278, &unk_1AE241D30);
  }

  else
  {
    swift_initStackObject();
    sub_1ADE73AB0(v16);

    sub_1ADE73AB0(v16);
    v17 = sub_1ADDE77B4(v16, inited);

    CRCounter.init(from:)(v17, v19);
    sub_1ADE73AC8(v16);
    sub_1ADDCC35C(a1, a2);
    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
    result = sub_1ADDCEDE0(&v20, &qword_1EB5BA278, &unk_1AE241D30);
    *a3 = v19[0];
  }

  return result;
}

uint64_t CRDT<>.init(serializedData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v37, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, v29);
  if (v5)
  {
    return sub_1ADDCC35C(a1, a2);
  }

  v26 = a5;
  v27 = a4;
  v25 = v11;
  v39 = a3;
  v38[4] = v33;
  v38[5] = v34;
  v38[6] = v35;
  v38[7] = v36;
  v38[0] = *&v29[8];
  v38[1] = v30;
  v38[2] = v31;
  v38[3] = v32;
  v16 = v37;
  sub_1ADDCEE40(v29, v28, &qword_1EB5BA278, &unk_1AE241D30);
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED96F2A8;
  type metadata accessor for CRDecoder();
  inited = swift_initStackObject();
  v19 = MEMORY[0x1E69E7CC0];
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  *(inited + 40) = v19;
  v20 = MEMORY[0x1E69E7CC8];
  *(inited + 48) = MEMORY[0x1E69E7CC8];
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 57) = v16;
  *(inited + 16) = 0;
  *(inited + 24) = v19;
  type metadata accessor for CRProtoDecodeContext();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v20;
  v21[4] = v17;
  v21[5] = v20;
  v22 = *(&v30 + 1);

  sub_1ADDCEE40(v29, v28, &qword_1EB5BA278, &unk_1AE241D30);

  sub_1AE1B5950(v22);

  sub_1ADDCEDE0(v29, &qword_1EB5BA278, &unk_1AE241D30);
  v23 = *(inited + 16);
  *(inited + 16) = v21;

  sub_1ADDD5D3C(v38);
  sub_1ADDCEDE0(v29, &qword_1EB5BA278, &unk_1AE241D30);
  v24 = v39;
  sub_1ADDEF560(v39, v38, v39, v27);
  sub_1ADDCC35C(a1, a2);
  swift_setDeallocating();
  CRDecoder.deinit();
  swift_deallocClassInstance();
  sub_1ADDCEDE0(v29, &qword_1EB5BA278, &unk_1AE241D30);
  return (*(v25 + 32))(v26, v14, v24);
}

uint64_t PartialCRDT.init(serializedData:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADDD86D8(a1, a2);
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED96F2A8;
  type metadata accessor for CRDecodeContext();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC8];
  v9[2] = MEMORY[0x1E69E7CC8];
  v9[3] = v10;
  v9[4] = v8;
  type metadata accessor for CRDecoder();
  v11 = swift_allocObject();

  sub_1ADE644B8(a1, a2, v9);
  if (!v4)
  {
    (*(*(a4 + 8) + 8))(v11, a3);
  }

  return sub_1ADDCC35C(a1, a2);
}

void *PartialCRDT.deltaSerializedData(_:version:)(void *result, char *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    v5 = v4;
    v8 = result;
    v11 = *a2;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v9 = v8;
    CREncoder.init(_:version:fileSignature:)(v9, &v11, 0, 0xF000000000000000);
    v10 = sub_1ADE6B2B0(v9, v5, a3, a4);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE62E28(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  if ((~*a2 & 0xF000000000000007) != 0 && (*a2 & 0xC000000000000000) == 0x4000000000000000)
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();
    sub_1ADDCEE40(&v13, v12, &qword_1EB5BA300, &qword_1AE25A270);
    sub_1ADDCEE40(&v13, v12, &qword_1EB5BA300, &qword_1AE25A270);

    v11 = sub_1ADE0262C(v5 & 0x3FFFFFFFFFFFFFFFLL, v4);

    (*(*(*(a4 + 8) + 8) + 8))(v11, a3);
    return sub_1ADDCEDE0(&v13, &qword_1EB5BA300, &qword_1AE25A270);
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v7 = 0xD000000000000017;
    *(v7 + 8) = 0x80000001AE260320;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1ADE62FA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v9 = sub_1AE23C34C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1ADDD86D8(a1, a2);
  sub_1AE23C33C();
  sub_1ADE73BC8();
  result = sub_1AE23C52C();
  if (!v4)
  {
    v25[4] = v21;
    v25[5] = v22;
    v25[6] = v23;
    v25[7] = v24;
    v25[0] = v17;
    v25[1] = v18;
    v25[2] = v19;
    v25[3] = v20;
    sub_1ADDD5D3C(v25);
    if ((~*&v25[0] & 0xF000000000000007) != 0 && (*&v25[0] & 0xC000000000000000) == 0x4000000000000000)
    {
      inited = *&v25[0] & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v13 = *(inited + 16);
    if ((~v13 & 0xF000000000000007) != 0 && ((v13 >> 59) & 0x1E | (v13 >> 2) & 1) == 6)
    {
      v14 = v13 & 0xFFFFFFFFFFFFFFBLL;
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADDD6748(v15, v16, v5, a3);
    return sub_1ADE6AF00(v25);
  }

  return result;
}

double sub_1ADE631A8(_OWORD *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v22 - v12;
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE6035C(&v30, a3, a4, qword_1ED96F240, *algn_1ED96F248, v24);
  if (!v5)
  {
    v15 = *&v28[0];
    v22 = *(v28 + 8);
    v29[4] = v28[0];
    v29[5] = v28[1];
    v29[6] = v28[2];
    v29[7] = v28[3];
    v29[0] = *&v24[8];
    v29[1] = v25;
    v29[2] = v26;
    v29[3] = v27;
    sub_1ADDD5D3C(v29);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    if (v15)
    {
      v17 = v22;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v15);

    sub_1ADDD6748(v16, v17, v4, &v23);
    v22 = v23;
    v18 = *(&v26 + 1);
    v19 = v27;
    sub_1ADDD86D8(*(&v26 + 1), v27);
    sub_1ADDFE348(v18, v19);
    sub_1ADDCEDE0(v24, &qword_1EB5BA278, &unk_1AE241D30);
    v20 = sub_1AE23BFEC();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v13, 0, 1, v20);
    (*(v21 + 32))(a2, v13, v20);
    result = *&v22;
    *a1 = v22;
  }

  return result;
}

void sub_1ADE63600(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v20 = *(a3 + 16);
  v21 = *a3;
  v16 = *(a3 + 32);
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v33, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v24);
  if (!v8)
  {
    v34[4] = v29;
    v34[5] = v30;
    v34[6] = v31;
    v34[7] = v32;
    v34[0] = v25;
    v34[1] = v26;
    v34[2] = v27;
    v34[3] = v28;
    v17 = v33;
    type metadata accessor for CRDecoder();
    inited = swift_initStackObject();
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    v19 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v19;
    *(inited + 16) = 0;
    *(inited + 24) = v19;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 57) = v17;
    *(inited + 56) = a5 & 1;
    v22[1] = v20;
    v22[0] = v21;
    v23 = v16;
    sub_1ADE63800(v34, v22, a4, a6, a7, a8);
    sub_1ADDCEDE0(&v24, &qword_1EB5BA278, &unk_1AE241D30);
    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
  }
}

uint64_t sub_1ADE63800@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = v6;
  v116 = a6;
  v117 = a5;
  v120 = a4;
  v121 = a3;
  v11 = type metadata accessor for PartiallyOrderedReferenceMap();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[1];
  v118 = *a2;
  v119 = v15;
  v16 = *(a2 + 4);
  v17 = MEMORY[0x1E69E7CC8];
  v132 = MEMORY[0x1E69E7CC8];
  v122 = a1;
  result = sub_1ADDD5D3C(a1);
  if (v7)
  {
    return result;
  }

  v114 = v11;
  v115 = v16;
  v113 = v14;
  type metadata accessor for CRProtoDecodeContext();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v17;
  v20 = v122;
  v19[4] = v121;
  v19[5] = v17;
  v21 = v20[3];
  swift_retain_n();
  sub_1ADE73B00(v20, &v126);

  sub_1AE1B5950(v21);

  sub_1ADE6AF00(v20);
  v22 = *(v8 + 16);
  *(v8 + 16) = v19;

  v24 = v20[8];
  v23 = v20[9];
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v26 = v20[8];
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  if (v24)
  {
    v27 = v20[9];
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v24);
  sub_1ADDD6748(v26, v27, v8, &v126);
  v28 = v127;
  v103 = v126;
  v29 = v20[14];
  v30 = v20[15];
  if (v29)
  {
    v31 = v20[14];
  }

  else
  {
    v31 = v25;
  }

  if (v29)
  {
    v32 = v20[15];
  }

  else
  {
    v32 = v25;
  }

  sub_1ADE42C78(v29);
  result = sub_1ADDD6748(v31, v32, v8, &v126);
  v110 = 0;
  v100 = v126;
  v101 = v28;
  v99 = v127;
  v33 = v20[7];
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = (v33 + 32);
    v102 = MEMORY[0x1E69E7CC8];
    v36 = v117;
    v37 = v115;
    v104 = v8;
    while (1)
    {
      v112 = v35;
      v39 = *v35;
      swift_beginAccess();
      v40 = v39[8];
      v41 = v39[9];
      v42 = v39;
      v43 = v39[10];
      if (v40)
      {
        v44 = v39[8];
      }

      else
      {
        v44 = MEMORY[0x1E69E7CC0];
      }

      if (v40)
      {
        v45 = v39[9];
      }

      else
      {
        v45 = 0;
      }

      if (v40)
      {
        v46 = v43;
      }

      else
      {
        v46 = 0xC000000000000000;
      }

      v47 = v46 >> 62;
      v121 = v44;
      v122 = v46;
      if ((v46 >> 62) > 1)
      {
        if (v47 != 2)
        {
          goto LABEL_52;
        }

        v48 = *(v45 + 16);
        v49 = *(v45 + 24);
      }

      else
      {
        if (!v47)
        {
          if ((v46 & 0xFF000000000000) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_35;
        }

        v48 = v45;
        v49 = v45 >> 32;
      }

      if (v48 == v49)
      {
LABEL_52:

        sub_1ADE56F74(v40, v41, v43);

        sub_1ADE42E40();
        swift_allocError();
        *v85 = 0xD000000000000016;
        *(v85 + 8) = 0x80000001AE25FC80;
        *(v85 + 16) = 0;
        swift_willThrow();

        sub_1ADDCC35C(v45, v122);
      }

LABEL_35:
      v111 = v34;

      sub_1ADE56F74(v40, v41, v43);
      v50 = v45;
      v51 = v45;
      v52 = v122;
      sub_1ADDD86D8(v50, v122);

      sub_1ADDCC35C(v51, v52);
      v124[0] = v118;
      v124[1] = v119;
      v125 = v37;
      v53 = v36;
      type metadata accessor for Capsule();
      v54 = v113;
      sub_1ADDFC54C(v113);
      v55 = v54 + *(v114 + 20);
      v56 = *v55;
      v57 = *(v55 + 8);
      v58 = *(v55 + 16);
      sub_1ADDD86D8(v51, v52);
      sub_1ADDDF7A8(v51, v52, v56, &v126);
      sub_1ADDCC35C(v51, v52);
      sub_1ADE73DF4(v54);
      if (v128)
      {
        v108 = v128;
        v59 = v126;
        v105 = v127;
        v106 = v129;
        v107 = v130;
        v109 = v131;
        swift_beginAccess();
        v8 = v104;
        if (v42[7])
        {
          inited = v42[7];
        }

        else
        {
          type metadata accessor for Proto_CRDT._StorageClass();
          inited = swift_initStaticObject();
        }

        v61 = v51;
        type metadata accessor for CRDecoder();
        swift_allocObject();

        v62 = sub_1ADDE77B4(inited, v8);

        if (!v59)
        {
          __break(1u);
          goto LABEL_64;
        }

        v63 = *(*v59 + 240);

        v121 = v62;
        v64 = v110;
        v63(&v126, v62);
        if (v64)
        {

          sub_1ADDDC21C(v59, v105, v108);

          sub_1ADDCC35C(v51, v122);
        }

        v65 = v126;
        swift_beginAccess();
        v66 = v42[5];
        v67 = v42[6];
        if (v66)
        {
          v68 = v42[5];
        }

        else
        {
          v68 = MEMORY[0x1E69E7CC0];
        }

        v69 = v59;
        if (v66)
        {
          v70 = v42[6];
        }

        else
        {
          v70 = MEMORY[0x1E69E7CC0];
        }

        sub_1ADE42C78(v66);
        v71 = v121;

        sub_1ADDD6748(v68, v70, v71, &v126);
        v110 = 0;
        v72 = v126;
        v73 = v127;

        v74 = v132;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = v74;
        v76 = v72;
        v77 = v61;
        v78 = v61;
        v79 = v122;
        sub_1ADEBFCE8(v76, v73, v65, v77, v122, isUniquelyReferenced_nonNull_native);
        sub_1ADDDC21C(v69, v105, v108);

        result = sub_1ADDCC35C(v78, v79);
        v102 = v126;
        v132 = v126;
        v36 = v117;
        v38 = v112;
        v37 = v115;
      }

      else
      {
        sub_1ADDCC35C(v51, v52);

        v37 = v115;
        v38 = v112;
        v36 = v53;
        v8 = v104;
      }

      v35 = v38 + 1;
      v34 = v111 - 1;
      if (v111 == 1)
      {
        goto LABEL_49;
      }
    }
  }

  v102 = MEMORY[0x1E69E7CC8];
LABEL_49:
  v80 = v102;
  v81 = *(v8 + 16);
  if (!v81)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v82 = *(*v81 + 184);
  v83 = *(v8 + 16);

  v84 = v110;
  v82(v8);
  if (!v84)
  {

    v86 = *(v8 + 16);
    if (v86)
    {
      swift_beginAccess();
      v87 = *(v86 + 24);

      v89 = sub_1ADE641AC(v88, &v132);

      v90 = v116;
      if (v89[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F0, &unk_1AE2422A0);
        v91 = sub_1AE23DCDC();
      }

      else
      {
        v91 = MEMORY[0x1E69E7CC8];
      }

      v92 = v101;
      *&v124[0] = v91;
      sub_1ADE710D0(v89, 1, v124);
      v93 = *&v124[0];
      type metadata accessor for CapsuleMergeableDelta.Storage();
      v94 = swift_allocObject();
      v94[2] = v103;
      v94[3] = v92;
      v95 = v99;
      v94[4] = v100;
      v94[5] = v95;
      v94[6] = v80;
      v94[7] = v93;
      v96 = qword_1ED96B308;

      if (v96 != -1)
      {
        swift_once();
      }

      sub_1AE1F9D8C(v124);
      v123 = v124[0];
      sub_1ADDE1CB8(&v123);

      v97 = MEMORY[0x1E69E7CD0];
      *v90 = v94;
      v90[1] = v97;
      return result;
    }

LABEL_65:
    __break(1u);
    return result;
  }
}

uint64_t sub_1ADE641AC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = v6;
  v26 = v2;
LABEL_4:
  v9 = v8;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
    v8 = v9;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + 48 * v11);
    v16 = *v15;
    v17 = v15[3];
    v19 = v15[4];
    v18 = v15[5];
    v29 = v15[2];
    v30 = *(*a2 + 16);
    sub_1ADDD86D8(*v12, v13);

    if (!v30 || (result = sub_1ADDDE7CC(v14, v13), (v20 & 1) == 0))
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1ADE55AE4(0, v24[2] + 1, 1, v24);
        v24 = result;
      }

      v22 = v24[2];
      v21 = v24[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_1ADE55AE4((v21 > 1), v22 + 1, 1, v24);
        v24 = result;
      }

      v24[2] = v22 + 1;
      v23 = &v24[5 * v22];
      v23[4] = v14;
      v23[5] = v13;
      v23[6] = v29;
      v23[7] = v17;
      v23[8] = v16;
      v6 = v25;
      v2 = v26;
      goto LABEL_4;
    }

    sub_1ADDCC35C(v14, v13);

    v9 = v8;
    v6 = v25;
    v2 = v26;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v24;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1ADE64414()
{
  if (*(v0 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    v1 = swift_allocObject();
    *(v1 + 16) = v0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 1;
  }

  else
  {
    sub_1ADE42E40();
    v2 = swift_allocError();
    *v3 = 0xD000000000000014;
    *(v3 + 8) = 0x80000001AE25FB50;
    *(v3 + 16) = 0;
    v1 = v2;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1ADE644B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(v3 + 64) = 0;
  v8 = (v3 + 64);
  v9 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = 0;
  *(v3 + 24) = v9;
  *(v3 + 32) = v9;
  *(v3 + 40) = v9;
  *(v3 + 48) = MEMORY[0x1E69E7CC8];
  *(v3 + 56) = 0;
  *(v3 + 72) = 0;
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v32, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v22);
  if (v4)
  {

    sub_1ADDCC35C(a1, a2);
    v10 = *(v3 + 16);

    v11 = *(v3 + 24);

    v12 = *(v3 + 32);

    v13 = *(v3 + 40);

    v14 = *(v3 + 48);

    v15 = *(v3 + 64);

    v16 = *(v3 + 72);

    type metadata accessor for CRDecoder();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v23;
    v31[4] = v27;
    v31[5] = v28;
    v31[6] = v29;
    v31[7] = v30;
    v31[0] = v23;
    v31[1] = v24;
    v31[2] = v25;
    v31[3] = v26;
    *(v3 + 57) = v32;
    sub_1ADDD5D3C(v31);
    v17 = *(v3 + 16);
    *(v3 + 16) = a3;

    inited = v21;
    if (v21 >> 62 || (v21 & 0xF000000000000007) == 0xF000000000000007)
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }

    else
    {
    }

    sub_1ADDCC35C(a1, a2);

    sub_1ADDCEDE0(&v22, &qword_1EB5BA278, &unk_1AE241D30);
    v19 = *v8;
    *v8 = inited;
  }

  return v3;
}

uint64_t sub_1ADE64748(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(v3 + 64) = 0;
  v8 = (v3 + 64);
  v9 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = 0;
  *(v3 + 24) = v9;
  *(v3 + 32) = v9;
  *(v3 + 40) = v9;
  *(v3 + 48) = MEMORY[0x1E69E7CC8];
  *(v3 + 56) = 0;
  *(v3 + 72) = 0;
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE6035C(&v32, a1, a2, qword_1ED96F240, *algn_1ED96F248, &v22);
  if (v4)
  {

    sub_1ADDCC35C(a1, a2);
    v10 = *(v3 + 16);

    v11 = *(v3 + 24);

    v12 = *(v3 + 32);

    v13 = *(v3 + 40);

    v14 = *(v3 + 48);

    v15 = *(v3 + 64);

    v16 = *(v3 + 72);

    type metadata accessor for CRDecoder();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v23;
    v31[4] = v27;
    v31[5] = v28;
    v31[6] = v29;
    v31[7] = v30;
    v31[0] = v23;
    v31[1] = v24;
    v31[2] = v25;
    v31[3] = v26;
    *(v3 + 57) = v32;
    sub_1ADDD5D3C(v31);
    v17 = *(v3 + 16);
    *(v3 + 16) = a3;

    inited = v21;
    if (v21 >> 62 || (v21 & 0xF000000000000007) == 0xF000000000000007)
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }

    else
    {
    }

    sub_1ADDCC35C(a1, a2);
    sub_1ADDCEDE0(&v22, &qword_1EB5BA278, &unk_1AE241D30);

    v19 = *v8;
    *v8 = inited;
  }

  return v3;
}

uint64_t sub_1ADE649D0(void *a1, char *a2)
{
  v29 = *a2;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = 0;
  *(v2 + 24) = v4;
  *(v2 + 32) = v4;
  *(v2 + 40) = v4;
  *(v2 + 48) = MEMORY[0x1E69E7CC8];
  *(v2 + 56) = 0;
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[10];
  if (v7)
  {
    v9 = a1[7];
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = a1[8];
  }

  else
  {
    v10 = 0xC000000000000000;
  }

  if (v7)
  {
    v11 = a1[9];
    v12 = a1[10];
  }

  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v28 = v7;
  sub_1ADE73C1C(v5, v6, v7);
  sub_1ADDD86D8(v9, v10);
  sub_1ADDCC35C(v9, v10);

  v13 = sub_1ADDE70B0(v9, v10);
  if (v30)
  {
    sub_1ADE73C68(a1);
    type metadata accessor for CRDecoder();
    sub_1ADDCC35C(v9, v10);
    v14 = *(v2 + 16);

    v15 = *(v2 + 24);

    v16 = *(v2 + 32);

    v17 = *(v2 + 40);

    v18 = *(v2 + 48);

    v19 = *(v2 + 64);

    v20 = *(v2 + 72);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v13;
    sub_1ADDCC35C(v9, v10);
    v22 = *(v2 + 24);
    *(v2 + 24) = v21;

    if (v28)
    {
      v23 = v5;
      sub_1ADE73C1C(v5, v6, v28);

      sub_1ADDCC35C(v5, v6);

      v24 = *(v2 + 32);
      *(v2 + 32) = v28;

      sub_1ADDD86D8(v5, v6);
    }

    else
    {
      sub_1ADE73C1C(v5, v6, 0);
      v8 = MEMORY[0x1E69E7CC0];

      v6 = 0xC000000000000000;
      sub_1ADDCC35C(0, 0xC000000000000000);
      swift_bridgeObjectRelease_n();
      v25 = *(v2 + 32);
      *(v2 + 32) = v8;

      v23 = 0;
    }

    sub_1ADE73C68(a1);

    sub_1ADDCC35C(v23, v6);

    v26 = *(v2 + 40);
    *(v2 + 40) = v8;

    *(v2 + 57) = v29;
  }

  return v2;
}

uint64_t sub_1ADE64C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1ADDE78C8();
  v8 = *(v3 + 16);

  return sub_1AE03DCF4(v7, v8, a1, a2, a3);
}

uint64_t sub_1ADE64CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = sub_1ADDE78C8();
  v10 = *(v4 + 16);

  return sub_1AE16B204(v9, v10, a1, a2, a3, a4);
}

uint64_t sub_1ADE64D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = sub_1ADDE78C8();
  v14 = *(v6 + 16);

  return sub_1ADFA130C(v13, v14, a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1ADE64DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v13 = sub_1ADDE78C8();
  v14 = *(v6 + 16);

  return sub_1AE22A8B8(v13, v14, a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1ADE64E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *(sub_1ADDE78C8() + 16);
  if ((~v9 & 0xF000000000000007) != 0 && (v9 & 0xF000000000000000) == 0x6000000000000000)
  {
    v11 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v11 = &off_1ED967FA0;
  }

  v12 = *v11;

  v13 = *(v4 + 16);

  return sub_1ADF57030(v12, v13, a1, a2, a3, a4);
}

void sub_1ADE64F48(uint64_t *a1@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(sub_1ADDE78C8() + 16);
  v3 = (~v2 & 0xF000000000000007) != 0 && (v2 & 0xF000000000000000) == 0x4000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v8 = v2 & 0xFFFFFFFFFFFFFFFLL;
    v9 = *(v8 + 80);
    *&v34[16] = *(v8 + 64);
    *&v34[32] = v9;
    *&v34[48] = *(v8 + 96);
    *&v34[64] = *(v8 + 112);
    v10 = *(v8 + 32);
    v32 = *(v8 + 16);
    v33 = v10;
    *v34 = *(v8 + 48);
    sub_1ADE51B64(&v32, v31);

    v26 = *&v34[56];
    v27 = *&v34[40];
    v25 = *&v34[24];
    v7 = *v34;
    v28 = v33;
    v29 = *&v34[8];
    v6 = *(&v32 + 1);
    v5 = v32;
  }

  else
  {

    v5 = 0;
    v28 = vdupq_n_s64(v4);
    v29 = 0u;
    v6 = 0xE000000000000000;
    v7 = v4;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
  }

  v11 = *(v1 + 16);
  type metadata accessor for CRStringRef();
  v12 = swift_allocObject();
  v13 = type metadata accessor for CRStringDecoder();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence];
  LOBYTE(v32) = 1;
  *v15 = 0;
  *(v15 + 1) = v4;
  *(v15 + 2) = v4;
  *(v15 + 3) = v4;
  *(v15 + 4) = 0;
  v15[40] = 1;
  *(v15 + 41) = v31[0];
  *(v15 + 11) = *(v31 + 3);
  *(v15 + 6) = 0;
  *(v15 + 7) = 0;
  v15[64] = 1;
  v16 = &v14[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
  *v16 = v5;
  *(v16 + 1) = v6;
  *(v16 + 1) = v28;
  *(v16 + 4) = v7;
  *(v16 + 56) = v25;
  *(v16 + 40) = v29;
  *(v16 + 88) = v26;
  *(v16 + 72) = v27;
  *&v14[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = v11;
  v30.receiver = v14;
  v30.super_class = v13;

  v17 = objc_msgSendSuper2(&v30, sel_init);
  v18 = objc_allocWithZone(_TtC9Coherence19CRTTMergeableString);
  *&v32 = 0;
  v19 = [v18 initWithDecoder:v17 error:&v32];
  if (v19)
  {
    v20 = v19;
    v21 = v32;

    *(v12 + 16) = v20;
    *a1 = v12;
  }

  else
  {
    v22 = v32;
    sub_1AE23BC9C();

    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1ADE651F0@<X0>(void *a1@<X8>)
{
  v4 = sub_1ADDE78C8();
  v5 = *(v1 + 16);
  v6 = *(v4 + 16);
  if ((~v6 & 0xF000000000000007) != 0 && (v6 & 0xF000000000000000) == 0x7000000000000000)
  {
    v13 = (v6 & 0xFFFFFFFFFFFFFFFLL);
    v8 = v13[2];
    v9 = v13[3];
    v10 = v13[4];
    v11 = v13[5];
    v12 = v13[6];
    sub_1ADE42C78(v9);
    sub_1ADE42C78(v11);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v16[0] = v8;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v16[4] = v12;
  type metadata accessor for CRCounterRef();
  swift_allocObject();

  v14 = sub_1AE1A09F4(v16, v5);

  if (!v2)
  {
    *a1 = v14;
  }

  return result;
}

void sub_1ADE65304(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(sub_1ADDE78C8() + 16);
  if ((~v7 & 0xF000000000000007) != 0 && (v7 & 0xF000000000000000) == 0x5000000000000000)
  {
    v17 = v7 & 0xFFFFFFFFFFFFFFFLL;
    v18 = *(v17 + 80);
    *&v24[16] = *(v17 + 64);
    *&v24[32] = v18;
    *&v24[48] = *(v17 + 96);
    *&v24[64] = *(v17 + 112);
    v19 = *(v17 + 32);
    v22 = *(v17 + 16);
    v23 = v19;
    *v24 = *(v17 + 48);
    sub_1ADE51B64(&v22, v21);

    v16 = *&v24[56];
    v15 = *&v24[40];
    v14 = *&v24[24];
    v12 = *&v24[8];
    v10 = *v24;
    v11 = v23;
    v13 = *(&v22 + 1);
    v9 = v22;
  }

  else
  {

    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v12 = 0uLL;
    v13 = 0xE000000000000000;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  *&v22 = v9;
  *(&v22 + 1) = v13;
  v23 = v11;
  *v24 = v10;
  *&v24[8] = v12;
  *&v24[24] = v14;
  *&v24[40] = v15;
  *&v24[56] = v16;
  v20 = *(v3 + 16);

  sub_1AE163E0C(&v22, v20, a1, a2, a3);
}

uint64_t sub_1ADE65448()
{
  v1 = *(sub_1ADDE78C8() + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = (~v1 & 0xF000000000000007) != 0 && (v1 & 0xF000000000000000) == 0x9000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v23 = v2;
    result = sub_1ADE6F39C(0, v5, 0);
    v7 = 0;
    v8 = (v4 + 56);
    v9 = v5;
    while (v7 < *(v4 + 16))
    {
      v11 = *(v8 - 3);
      v10 = *(v8 - 2);
      v12 = *(v8 - 1);
      if (v12)
      {
        v20 = v2;
        v2 = v4;
        v13 = *v8;
        v14 = *(v19 + 16);
        sub_1ADDD86D8(v11, v10);
        sub_1ADE42C78(v12);
        sub_1ADDD86D8(v11, v10);
        sub_1ADE42C78(v12);

        sub_1ADDD6748(v12, v13, v14, &v22);
        if (v0)
        {

          sub_1ADDCC35C(v11, v10);
          sub_1ADE42CB8(v12);
          sub_1ADDCC35C(v11, v10);

          return v2;
        }

        sub_1ADDCC35C(v11, v10);
        result = sub_1ADE42CB8(v12);
        v15 = v22;
        v4 = v2;
        v2 = v20;
      }

      else
      {
        result = sub_1ADDD86D8(*(v8 - 3), *(v8 - 2));
        v15 = 0uLL;
      }

      v23 = v2;
      v17 = *(v2 + 16);
      v16 = *(v2 + 24);
      if (v17 >= v16 >> 1)
      {
        v21 = v15;
        result = sub_1ADE6F39C((v16 > 1), v17 + 1, 1);
        v15 = v21;
        v2 = v23;
      }

      ++v7;
      *(v2 + 16) = v17 + 1;
      v18 = v2 + 32 * v17;
      *(v18 + 32) = v11;
      *(v18 + 40) = v10;
      *(v18 + 48) = v15;
      v8 += 4;
      if (v9 == v7)
      {

        return v2;
      }
    }

    __break(1u);
  }

  else
  {

    return v2;
  }

  return result;
}

uint64_t CRDecoder.CRDTContainer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CRDecoder.CRDTContainer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE656E4(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = result;
    v30 = MEMORY[0x1E69E7CC0];
    result = sub_1ADE6F00C(0, v3, 0);
    v6 = 0;
    v4 = v30;
    v29 = v1;
    v7 = *(v1 + 16);
    v8 = v5 + 32;
    do
    {
      v9 = *(v7 + 32);
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = (v8 + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        v15 = (v9 + 40);
        while (1)
        {
          result = *(v15 - 1);
          if (result == v13 && *v15 == v14)
          {
            break;
          }

          result = sub_1AE23E00C();
          if (result)
          {
            break;
          }

          ++v11;
          v15 += 2;
          if (v10 == v11)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v18 = *(v30 + 16);
      v17 = *(v30 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1ADE6F00C((v17 > 1), v18 + 1, 1);
      }

      ++v6;
      *(v30 + 16) = v18 + 1;
      *(v30 + 8 * v18 + 32) = v11;
    }

    while (v6 != v3);
    v2 = v29;
  }

  v19 = *(v2 + 16);
  v20 = *(v19 + 64);
  if (v20)
  {
    v21 = *(v20 + 16);
    if ((~v21 & 0xF000000000000007) != 0 && (v21 & 0xF000000000000000) == 0x3000000000000000)
    {
      v25 = (v21 & 0xFFFFFFFFFFFFFFFLL);
      v23 = v25[2];
      v24 = v25[3];
      v26 = v25[4];
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
      v24 = MEMORY[0x1E69E7CC0];
    }

    v27 = sub_1ADE7249C(v4, v23, v24);

    if (!v27)
    {
      return 0;
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v28 = sub_1ADDE77B4(v27, v19);

    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ADE65924()
{
  sub_1ADE05C74();
  if (!v0)
  {
  }
}

void sub_1ADE65960()
{
  v2 = sub_1AE23C34C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1AE23C2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  if (*(v10 + 57) > 1u)
  {
    if (*(v10 + 57) != 2)
    {
      sub_1ADE08CAC();
      if (!v1)
      {
        sub_1AE23BF0C();
      }

      return;
    }
  }

  else if (*(v10 + 57))
  {
    v11 = 0x80000001AE25FD10;
    sub_1ADE42E40();
    swift_allocError();
    v13 = 0xD00000000000001FLL;
LABEL_11:
    *v12 = v13;
    *(v12 + 8) = v11;
    *(v12 + 16) = 0;
    swift_willThrow();
    return;
  }

  v14 = *(v10 + 72);
  if (v14)
  {
    v15 = *(v14 + 16);
    if ((~v15 & 0xF000000000000007) == 0 || ((v15 >> 59) & 0x1E | (v15 >> 2) & 1) != 3)
    {
      v11 = 0x80000001AE25FD30;
      sub_1ADE42E40();
      swift_allocError();
      v13 = 0xD000000000000016;
      goto LABEL_11;
    }

    v17 = v15 & 0xFFFFFFFFFFFFFFBLL;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v23 = v18;
    v24 = v19;
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    v20 = v7;
    sub_1ADDD86D8(v18, v19);
    sub_1ADDD86D8(v18, v19);
    sub_1AE23C33C();
    sub_1ADE725D0();
    sub_1AE23C52C();
    if (v1)
    {
      sub_1ADDCC35C(v18, v19);
    }

    else
    {
      sub_1AE23C2AC();
      sub_1ADDCC35C(v18, v19);
      (*(v5 + 8))(v9, v20);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADE65C1C()
{
  v1 = *(*(v0 + 16) + 72);
  if (v1)
  {
    v2 = *(v1 + 16);
    if ((~v2 & 0xF000000000000007) != 0 && ((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 3)
    {
      sub_1ADDD86D8(*((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18));
    }

    else
    {
      sub_1ADE42E40();
      swift_allocError();
      *v4 = 0xD000000000000016;
      *(v4 + 8) = 0x80000001AE25FD30;
      *(v4 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADE65D18(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = *(v3 + 16);
    if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 6)
    {
      v7 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);

      sub_1ADDD6748(v8, v9, v2, a1);
    }

    else
    {
      sub_1ADE42E40();
      swift_allocError();
      *v6 = 0xD00000000000001BLL;
      *(v6 + 8) = 0x80000001AE25FD90;
      *(v6 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADE65E00(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 72);
  if (!v3)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(v3 + 16);
  if ((~v4 & 0xF000000000000007) == 0 || ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) != 12)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v6 = 0xD000000000000019;
    *(v6 + 8) = 0x80000001AE25FDB0;
    *(v6 + 16) = 0;
    swift_willThrow();
    return;
  }

  v7 = (v4 & 0xFFFFFFFFFFFFFFBLL);
  v8 = v7[3];
  v9 = v7[4];
  v10 = v7[5];
  v11 = v7[6];
  v12 = *(v2 + 16);
  if (*(v2 + 56) == 1)
  {
    if (v12)
    {
      v14 = v12[4];
      sub_1ADDD86D8(v8, v9);
      sub_1ADDD86D8(v10, v11);

      sub_1AE1A3880(v8, v9, a1);

      sub_1ADDCC35C(v8, v9);
      sub_1ADDCC35C(v10, v11);
      return;
    }

    goto LABEL_13;
  }

  if (v12)
  {
    v15 = *(*v12 + 224);
    sub_1ADDD86D8(v8, v9);
    sub_1ADDD86D8(v10, v11);

    v15(v2, v8, v9);

    sub_1ADDCC35C(v8, v9);
    sub_1ADDCC35C(v10, v11);
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1ADE65FE0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 72);
  if (v4)
  {
    v6 = result;
    v7 = *(v3 + 72);

    return sub_1ADF84CD8(v4, v3, v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE66040(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v4 + 72);
  if (v5)
  {
    v8 = result;
    v9 = *(v4 + 72);

    return sub_1ADF8644C(v5, v4, v8, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE660B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v6 + 72);
  if (v7)
  {
    v12 = result;
    v13 = *(v6 + 72);

    return sub_1AE04520C(v7, v6, v12, a2, a3, a4, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *CRDecoder.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[8];

  v7 = v0[9];

  return v0;
}

uint64_t CREncoder.__allocating_init()()
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v0 = sub_1ADDCE2E4(0, v3);
  sub_1ADDCEDE0(v3, &qword_1EB5B9DB0, &qword_1AE240B80);
  type metadata accessor for CREncoder();
  swift_allocObject();
  v1 = sub_1ADE72628(v0);

  return v1;
}

uint64_t CREncoder.__allocating_init(_:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1ADE72628(a1);

  return v2;
}

uint64_t CREncoder.init(_:)(void *a1)
{
  v2 = sub_1ADE72628(a1);

  return v2;
}

uint64_t CREncoder.__allocating_init(_:version:)(void *a1, char *a2)
{
  swift_allocObject();
  v4 = sub_1ADE726C0(a1, a2);

  return v4;
}

uint64_t CREncoder.init(_:version:)(void *a1, char *a2)
{
  v3 = sub_1ADE726C0(a1, a2);

  return v3;
}

uint64_t CREncoder.init(_:version:fileSignature:)(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = *a2;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC8];
  *(v4 + 40) = MEMORY[0x1E69E7CC0];
  *(v4 + 48) = v8;
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;
  *(v4 + 72) = v8;
  *(v4 + 80) = v7;
  *(v4 + 88) = v7;
  *(v4 + 96) = v7;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  if (a4 >> 60 == 15)
  {
    if (qword_1ED9697D8 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED96F240;
    v10 = *algn_1ED96F248;
    sub_1ADDD86D8(qword_1ED96F240, *algn_1ED96F248);
    goto LABEL_17;
  }

  v10 = a4;
  v9 = a3;
  v11 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(a3 + 16);
    v13 = *(a3 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(a4);
    goto LABEL_15;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    __break(1u);
    goto LABEL_19;
  }

  v12 = HIDWORD(a3) - a3;
LABEL_14:
  sub_1ADDD86D8(a3, a4);
LABEL_15:
  if (v12 == 4)
  {
    sub_1ADDE1588(v9, v10);
LABEL_17:
    *(v4 + 24) = v9;
    *(v4 + 32) = v10;
    *(v4 + 16) = a1;
    *(v4 + 104) = v6;
    return v4;
  }

LABEL_19:
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

uint64_t sub_1ADE66494(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 72);
  if (*(v6 + 16))
  {

    v7 = sub_1ADDD7A10(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if ((v9 & 0x8000000000000000) == 0)
      {
        return v9;
      }

      __break(1u);
    }
  }

  swift_beginAccess();
  v9 = *(*(v3 + 80) + 16);
  swift_beginAccess();
  v10 = *(v3 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v3 + 72);
  *(v3 + 72) = 0x8000000000000000;
  sub_1ADEBF270(v9, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + 72) = v18;
  swift_endAccess();
  swift_beginAccess();
  v12 = *(v3 + 80);

  v13 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 80) = v12;
  if ((v13 & 1) == 0)
  {
    v12 = sub_1ADE55240(0, *(v12 + 2) + 1, 1, v12);
    *(v3 + 80) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1ADE55240((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[16 * v15];
  *(v16 + 4) = a1;
  *(v16 + 5) = a2;
  *(v3 + 80) = v12;
  swift_endAccess();
  return v9;
}

uint64_t sub_1ADE66644(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 64);
  if (*(v6 + 16))
  {

    v7 = sub_1ADDDE7CC(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if ((v9 & 0x8000000000000000) == 0)
      {
        return v9;
      }

      __break(1u);
    }
  }

  swift_beginAccess();
  v9 = *(*(v3 + 56) + 16);
  swift_beginAccess();
  v10 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v3 + 64);
  *(v3 + 64) = 0x8000000000000000;
  sub_1ADEBF90C(v9, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + 64) = v18;
  swift_endAccess();
  swift_beginAccess();
  v12 = *(v3 + 56);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 56) = v12;
  if ((v13 & 1) == 0)
  {
    v12 = sub_1ADE55498(0, *(v12 + 2) + 1, 1, v12);
    *(v3 + 56) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1ADE55498((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[16 * v15];
  *(v16 + 4) = a1;
  *(v16 + 5) = a2;
  *(v3 + 56) = v12;
  swift_endAccess();
  sub_1ADDD86D8(a1, a2);
  return v9;
}

uint64_t sub_1ADE667F8(uint64_t *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v8 = a2[2];
  v7 = a2[3];
  type metadata accessor for Proto_Reference._StorageClass();
  inited = swift_initStaticObject();
  sub_1ADDD86D8(v5, v4);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v10 = MEMORY[0x1E69E7CC0];

  sub_1ADDD86D8(v5, v4);

  sub_1ADDCC35C(v5, v4);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE4C34(inited);
  }

  swift_beginAccess();
  v11 = inited[8];
  v12 = inited[9];
  v13 = inited[10];
  inited[8] = v10;
  inited[9] = v5;
  inited[10] = v4;
  sub_1ADE73D6C(v11, v12, v13);

  v14 = sub_1ADDF5C7C(v2);
  v16 = v15;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE4C34(inited);
  }

  swift_beginAccess();
  v17 = inited[5];
  v18 = inited[6];
  inited[5] = v14;
  inited[6] = v16;
  result = sub_1ADE42CB8(v17);
  v21 = *(v2 + 112);
  v20 = *(v2 + 120);
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  if (v6)
  {
    v22 = *(*v6 + 184);

    v22(v2);
    if (v29)
    {

      inited = v6;
    }

    else
    {

      if (*(v2 + 112) || *(v2 + 120))
      {
        v23 = sub_1ADDFCC74();
        v24 = *(v2 + 112);
        *(v2 + 112) = v21;
        v25 = v23;

        v26 = *(v3 + 120);
        *(v3 + 120) = v20;

        swift_beginAccess();
        v27 = *(v25 + 24);
      }

      else
      {
        type metadata accessor for Proto_CRDT._StorageClass();
        v27 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADDE4C34(inited);
      }

      swift_beginAccess();
      v28 = inited[7];
      inited[7] = v27;
    }

    return inited;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1ADE66B08@<D0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t (*a3)(__int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v81 = a4;
  v77 = a7;
  v12 = type metadata accessor for PartiallyOrderedReferenceMap();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v73 - v17;
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  v22 = a1[3];
  v23 = a1[4];
  v79 = v20;
  v80 = v19;
  v75 = v22;
  v76 = v21;
  v78 = v23;
  if ((a2 & 1) == 0)
  {
    v86 = a3;
    v118 = v19;
    v119 = v20;
    v120 = v21;
    v121 = v22;
    v122 = v23;
    v25 = v21;
    v26 = v22;
    *&v87 = type metadata accessor for Capsule();
    sub_1ADDFC54C(v18);
    v27 = *&v18[*(v12 + 20) + 8];
    sub_1ADE73DF4(v18);
    v74 = sub_1AE23DACC();
    v123 = v74;
    *&v104 = v80;
    *(&v104 + 1) = v79;
    *&v105 = v25;
    *(&v105 + 1) = v26;
    *&v106[0] = v78;
    sub_1ADDFC54C(v16);
    v28 = &v16[*(v12 + 20)];
    v29 = *v28;
    v30 = *(v28 + 1);
    sub_1AE23C1FC();
    sub_1ADE73DF4(v16);
    v84 = a5;
    v85 = a6;
    while (1)
    {
      v31 = v112;
      if (v112 >= DWORD1(v112))
      {
        v32 = sub_1AE23C20C();
        if (!v32)
        {
          v109 = v116;
          v110[0] = v117[0];
          *(v110 + 11) = *(v117 + 11);
          v106[0] = v113[0];
          v106[1] = v113[1];
          v107 = v114;
          v108 = v115;
          v104 = v111;
          v105 = v112;
          sub_1ADDFD834(&v104);
          v45 = v82;
          swift_beginAccess();
          v46 = *(v45 + 96);

          sub_1ADDFD888(v47);

          v24 = v123;
          goto LABEL_19;
        }
      }

      else
      {
        v32 = *(&v111 + 1);
        LODWORD(v112) = v112 + 1;
      }

      v33 = v32 + *(v32 + 24) + (~v31 << 6);
      v35 = *(v33 + 32);
      v34 = *(v33 + 40);
      v87 = *(v33 + 48);
      v37 = *(v33 + 64);
      v36 = *(v33 + 72);
      v38 = *(v33 + 80);
      v39 = *(v33 + 88);
      v40 = v86;
      if (v86)
      {
        *&v104 = v35;
        *(&v104 + 1) = v34;
        sub_1ADDD86D8(v35, v34);
        v83 = v87;

        if ((v40(&v104) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_1ADDD86D8(v35, v34);
      }

      v93[0] = v35;
      v93[1] = v34;
      v88 = v87;
      v89 = v37;
      v90 = v36;
      v91 = v38;
      v92 = v39;
      v41 = v124;
      v42 = sub_1ADE667F8(v93, &v88);
      v124 = v41;
      if (v41)
      {
        v109 = v116;
        v110[0] = v117[0];
        *(v110 + 11) = *(v117 + 11);
        v106[0] = v113[0];
        v106[1] = v113[1];
        v107 = v114;
        v108 = v115;
        v104 = v111;
        v105 = v112;
        sub_1ADDFD834(&v104);

        sub_1ADDCC35C(v35, v34);
        v94 = 0xF000000000000007;
        v95 = 0;
        v96 = MEMORY[0x1E69E7CC0];
        v97 = MEMORY[0x1E69E7CC0];
        v98 = xmmword_1AE241910;
        v99 = MEMORY[0x1E69E7CC0];
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        sub_1ADE6AF00(&v94);
        return result;
      }

      if (v42)
      {

        MEMORY[0x1B26FB860](v43);
        if (*(v123 + 16) >= *(v123 + 24) >> 1)
        {
          v83 = *(v123 + 16);
          sub_1AE23D03C();
        }

        sub_1AE23D09C();

        sub_1ADDCC35C(v35, v34);

        v74 = v123;
      }

      else
      {
LABEL_13:

        sub_1ADDCC35C(v35, v34);
      }
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_19:
  *&v87 = v24;
  type metadata accessor for Proto_Reference._StorageClass();
  inited = swift_initStaticObject();
  v50 = v79;
  v49 = v80;
  sub_1ADDD86D8(v80, v79);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v51 = MEMORY[0x1E69E7CC0];

  sub_1ADDD86D8(v49, v50);

  sub_1ADDCC35C(v49, v50);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE4C34(inited);
  }

  swift_beginAccess();
  v52 = *(inited + 64);
  v53 = *(inited + 72);
  v54 = *(inited + 80);
  v56 = v79;
  v55 = v80;
  *(inited + 64) = v51;
  *(inited + 72) = v55;
  *(inited + 80) = v56;
  sub_1ADE73D6C(v52, v53, v54);

  sub_1ADE73AC8(0xF000000000000007);
  *&v111 = v55;
  *(&v111 + 1) = v56;
  *&v112 = v76;
  *(&v112 + 1) = v75;
  *&v113[0] = v78;
  type metadata accessor for Capsule();
  Capsule.version.getter(&v104);
  v94 = v104;
  v57 = sub_1ADDF5C7C(v82);
  v59 = v58;

  sub_1ADE42CB8(0);
  v60 = sub_1ADDF6AF0();
  v64 = v63;
  if (v63)
  {
    v65 = v60;
    v66 = v61;
    v67 = v62;
    sub_1ADE73B5C(0, 0, 0);
  }

  else
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
  }

  *&v104 = inited | 0x8000000000000000;
  *(&v104 + 1) = 0;
  *&v105 = 0;
  *(&v105 + 1) = v87;
  *(v106 + 8) = xmmword_1AE241910;
  *&v106[0] = MEMORY[0x1E69E7CC0];
  *(&v106[1] + 1) = MEMORY[0x1E69E7CC0];
  *&v107 = v57;
  *(&v107 + 1) = v59;
  *&v108 = v65;
  *(&v108 + 1) = v66;
  *&v109 = v64;
  *(&v109 + 1) = v67;
  v110[0] = 0uLL;
  *&v111 = inited | 0x8000000000000000;
  *(&v111 + 1) = 0;
  *&v112 = 0;
  *(&v112 + 1) = v87;
  *(v113 + 8) = xmmword_1AE241910;
  *&v113[0] = MEMORY[0x1E69E7CC0];
  *(&v113[1] + 1) = MEMORY[0x1E69E7CC0];
  *&v114 = v57;
  *(&v114 + 1) = v59;
  *&v115 = v65;
  *(&v115 + 1) = v66;
  *&v116 = v64;
  *(&v116 + 1) = v67;
  v117[0] = 0uLL;
  sub_1ADE73B00(&v104, &v94);
  sub_1ADE6AF00(&v111);
  v68 = v108;
  v69 = v77;
  v77[4] = v107;
  v69[5] = v68;
  v70 = v110[0];
  v69[6] = v109;
  v69[7] = v70;
  v71 = v105;
  *v69 = v104;
  v69[1] = v71;
  result = *v106;
  v72 = v106[1];
  v69[2] = v106[0];
  v69[3] = v72;
  return result;
}

double sub_1ADE67270@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a1;
  v7 = sub_1ADE6B9FC(sub_1ADE73DB4, v23);
  if (v5)
  {
    v32 = 0xF000000000000007;
    v33 = 0;
    v34 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    v37 = xmmword_1AE241910;
    v36 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    sub_1ADE6AF00(&v32);
  }

  else
  {
    v9 = v7;
    sub_1ADE73AC8(0xF000000000000007);
    swift_beginAccess();
    v10 = *(v4 + 96);

    v11 = sub_1ADDF6AF0();
    v15 = v14;
    if (v14)
    {
      v16 = v11;
      v17 = v12;
      v18 = v13;
      sub_1ADE73B5C(0, 0, 0);
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v25 = v9;
    *&v26 = 0;
    *(&v26 + 1) = v10;
    *&v27[8] = xmmword_1AE241910;
    *v27 = MEMORY[0x1E69E7CC0];
    *&v27[24] = MEMORY[0x1E69E7CC0];
    v28 = 0uLL;
    *&v29 = v16;
    *(&v29 + 1) = v17;
    *&v30 = v15;
    *(&v30 + 1) = v18;
    v31 = 0uLL;
    v32 = v9;
    v33 = 0;
    v34 = 0;
    v35 = v10;
    v37 = xmmword_1AE241910;
    v36 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    v39 = 0uLL;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    *&v41 = v15;
    *(&v41 + 1) = v18;
    v42 = 0uLL;
    sub_1ADE73B00(&v25, v24);
    sub_1ADE6AF00(&v32);
    v19 = v29;
    a4[4] = v28;
    a4[5] = v19;
    v20 = v31;
    a4[6] = v30;
    a4[7] = v20;
    v21 = v26;
    *a4 = v25;
    a4[1] = v21;
    result = *v27;
    v22 = *&v27[16];
    a4[2] = *v27;
    a4[3] = v22;
  }

  return result;
}

double sub_1ADE6742C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v19[2] = a1;
  v4 = sub_1ADE6B9FC(sub_1ADE73F24, v19);
  if (v2)
  {
    v28 = 0xF000000000000007;
    v29 = 0;
    v30 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    v33 = xmmword_1AE241910;
    v32 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    sub_1ADE6AF00(&v28);
  }

  else
  {
    v6 = v4;
    sub_1ADE73AC8(0xF000000000000007);
    v7 = sub_1ADDF6AF0();
    v11 = v10;
    if (v10)
    {
      v12 = v7;
      v13 = v8;
      v14 = v9;
      sub_1ADE73B5C(0, 0, 0);
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    v21 = v6;
    *&v22 = 0;
    *(&v22 + 1) = MEMORY[0x1E69E7CC0];
    *&v23[8] = xmmword_1AE241910;
    *v23 = MEMORY[0x1E69E7CC0];
    *&v23[24] = MEMORY[0x1E69E7CC0];
    v24 = 0uLL;
    *&v25 = v12;
    *(&v25 + 1) = v13;
    *&v26 = v11;
    *(&v26 + 1) = v14;
    v27 = 0uLL;
    v28 = v6;
    v29 = 0;
    v30 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    v33 = xmmword_1AE241910;
    v32 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    v35 = 0uLL;
    *&v36 = v12;
    *(&v36 + 1) = v13;
    *&v37 = v11;
    *(&v37 + 1) = v14;
    v38 = 0uLL;
    sub_1ADE73B00(&v21, v20);
    sub_1ADE6AF00(&v28);
    v15 = v25;
    a2[4] = v24;
    a2[5] = v15;
    v16 = v27;
    a2[6] = v26;
    a2[7] = v16;
    v17 = v22;
    *a2 = v21;
    a2[1] = v17;
    result = *v23;
    v18 = *&v23[16];
    a2[2] = *v23;
    a2[3] = v18;
  }

  return result;
}

uint64_t sub_1ADE675B8(__int128 *a1, char a2, __int16 a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v17 = 0;
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    if (!__OFSUB__(*(v8 + 24), *(v8 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
    }

LABEL_9:
    sub_1ADDD86D8(v8, v9);
    goto LABEL_10;
  }

  if (v10)
  {
    goto LABEL_8;
  }

LABEL_10:
  sub_1ADE73ED0();
  sub_1AE23BB1C();
  BYTE4(v17) = a2;
  HIWORD(v17) = a3;
  sub_1ADDCC35C(v8, v9);
  v22 = a1[4];
  v23 = a1[5];
  v24 = a1[6];
  v25 = a1[7];
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  sub_1ADE73BC8();
  v11 = sub_1AE23C51C();
  if (v4)
  {
    result = sub_1ADDCC35C(v17, 0x8000000000000uLL);
  }

  else
  {
    v14 = v11;
    v15 = v12;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v14, v15);
    result = v17;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADE67778(_OWORD *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - v6;
  swift_beginAccess();
  if (*(*(v2 + 88) + 16))
  {
    v8 = dispatch_semaphore_create(0);
    type metadata accessor for CREncoder.UnsafeWrapper();
    v9 = swift_allocObject();
    v10 = a1[5];
    *(v9 + 88) = a1[4];
    *(v9 + 104) = v10;
    v11 = a1[7];
    *(v9 + 120) = a1[6];
    *(v9 + 136) = v11;
    v12 = a1[1];
    *(v9 + 24) = *a1;
    *(v9 + 40) = v12;
    v13 = a1[3];
    *(v9 + 56) = a1[2];
    *(v9 + 16) = v2;
    *(v9 + 72) = v13;
    v14 = sub_1AE23D1BC();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v9;
    v15[5] = v8;

    v16 = v8;
    sub_1AE1EA644(0, 0, v7, &unk_1AE242390, v15);

    sub_1ADDCEDE0(v7, &unk_1EB5BDD00, &qword_1AE242340);
    sub_1AE23D75C();
    swift_beginAccess();
    v18 = *(v9 + 104);
    v35 = *(v9 + 88);
    v17 = v35;
    v36 = v18;
    v20 = *(v9 + 136);
    v37 = *(v9 + 120);
    v19 = v37;
    v38 = v20;
    v21 = *(v9 + 40);
    v32[0] = *(v9 + 24);
    v32[1] = v21;
    v23 = *(v9 + 72);
    v33 = *(v9 + 56);
    v22 = v33;
    v34 = v23;
    *a1 = v32[0];
    a1[1] = v21;
    a1[2] = v22;
    a1[3] = v23;
    a1[4] = v17;
    a1[5] = v18;
    a1[6] = v19;
    a1[7] = v20;
    sub_1ADE73B00(v32, &v31);
    if (qword_1ED966B00 != -1)
    {
      swift_once();
    }

    v24 = sub_1AE23C78C();
    __swift_project_value_buffer(v24, qword_1ED96F1C8);
    v25 = sub_1AE23C76C();
    v26 = sub_1AE23D61C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      MEMORY[0x1B26FDA50](v27, -1, -1);
    }
  }

  v28 = *(v2 + 88);
  *(v2 + 88) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1ADE67A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1ADE67AB0, 0, 0);
}

uint64_t sub_1ADE67AB0()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  swift_beginAccess();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1ADE67B60;

  return sub_1ADE67D44(v1 + 24);
}

uint64_t sub_1ADE67B60()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1ADE67CE0;
  }

  else
  {
    swift_endAccess();
    v3 = sub_1ADE67C7C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1ADE67C7C()
{
  v1 = *(v0 + 48);
  sub_1AE23D76C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1ADE67CE0()
{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_1ADE67D44(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1ADE67D64, 0, 0);
}

uint64_t sub_1ADE67D64()
{
  v1 = v0[7];
  swift_beginAccess();
  if (*(*(v1 + 88) + 16))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA280, &unk_1AE259B60);
    v3 = *(MEMORY[0x1E69E88A0] + 4);
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1ADE67EB8;
    v5 = v0[7];

    return MEMORY[0x1EEE6DD58](v0 + 5, &type metadata for Proto_Asset, v2, 0, 0, &unk_1AE242358, v5, &type metadata for Proto_Asset);
  }

  else
  {
    *(v0[7] + 88) = MEMORY[0x1E69E7CC0];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1ADE67EB8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1ADE6805C;
  }

  else
  {
    v3 = sub_1ADE67FCC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1ADE67FCC()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = *(v1 + 32);

  *(v1 + 32) = v3;
  v5 = *(v2 + 88);
  *(v0[7] + 88) = MEMORY[0x1E69E7CC0];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1ADE68074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA340, &qword_1AE242338);
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ADE68188, 0, 0);
}

uint64_t sub_1ADE68188()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *(v1 + 88);
  v3 = *(v2 + 16);
  if (v3)
  {
    v29 = **(v0 + 152);
    v26 = sub_1AE23D1BC();
    v4 = *(v26 - 8);
    v28 = *(v4 + 56);
    v27 = (v4 + 48);
    v25 = (v4 + 8);

    v5 = 32;
    v30 = v2;
    while (1)
    {
      v31 = v3;
      v8 = *(v0 + 192);
      v9 = *(v0 + 200);
      v10 = *(v2 + v5);
      v28(v9, 1, 1, v26);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v10;
      sub_1ADDCEE40(v9, v8, &unk_1EB5BDD00, &qword_1AE242340);
      LODWORD(v8) = (*v27)(v8, 1, v26);
      swift_retain_n();
      v13 = *(v0 + 192);
      if (v8 == 1)
      {
        sub_1ADDCEDE0(*(v0 + 192), &unk_1EB5BDD00, &qword_1AE242340);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1AE23D1AC();
        (*v25)(v13, v26);
        if (*v12)
        {
LABEL_9:
          v16 = v11[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_1AE23D16C();
          v15 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:

      if (v15 | v14)
      {
        v6 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v14;
        *(v0 + 80) = v15;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 200);
      *(v0 + 112) = 1;
      *(v0 + 120) = v6;
      *(v0 + 128) = v29;
      swift_task_create();

      sub_1ADDCEDE0(v7, &unk_1EB5BDD00, &qword_1AE242340);
      v5 += 8;
      v2 = v30;
      v3 = v31 - 1;
      if (v31 == 1)
      {

        break;
      }
    }
  }

  v18 = *(v0 + 184);
  v19 = **(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  sub_1AE23D28C();
  *(v0 + 208) = MEMORY[0x1E69E7CC0];
  v20 = *(MEMORY[0x1E69E8710] + 4);
  v21 = swift_task_alloc();
  *(v0 + 216) = v21;
  *v21 = v0;
  v21[1] = sub_1ADE68524;
  v22 = *(v0 + 184);
  v23 = *(v0 + 168);

  return MEMORY[0x1EEE6DAD8](v0 + 16, 0, 0, v23, v0 + 136);
}

uint64_t sub_1ADE68524()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 208);

    v5 = sub_1ADE68810;
  }

  else
  {
    v5 = sub_1ADE6863C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1ADE6863C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 208);
  if (*(v0 + 32) >> 60 == 15)
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = *(v0 + 144);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168), *(v0 + 16));
    *v5 = v2;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v21 = *(v0 + 32);
    v22 = *(v0 + 16);
    v8 = *(v0 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v0 + 208);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1ADE55C2C(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v14 = v21;
    v13 = v22;
    if (v12 >= v11 >> 1)
    {
      v20 = sub_1ADE55C2C((v11 > 1), v12 + 1, 1, v10);
      v14 = v21;
      v13 = v22;
      v10 = v20;
    }

    *(v10 + 2) = v12 + 1;
    v15 = &v10[40 * v12];
    *(v15 + 2) = v13;
    *(v15 + 3) = v14;
    *(v15 + 8) = v8;
    *(v0 + 208) = v10;
    v16 = *(MEMORY[0x1E69E8710] + 4);
    v17 = swift_task_alloc();
    *(v0 + 216) = v17;
    *v17 = v0;
    v17[1] = sub_1ADE68524;
    v18 = *(v0 + 184);
    v19 = *(v0 + 168);

    return MEMORY[0x1EEE6DAD8](v0 + 16, 0, 0, v19, v0 + 136);
  }
}

uint64_t sub_1ADE68810()
{
  v1 = v0[24];
  v2 = v0[25];
  (*(v0[22] + 8))(v0[23], v0[21]);
  v3 = v0[17];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1ADE688AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1ADE688CC, 0, 0);
}

uint64_t sub_1ADE688CC()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  v0[6] = v2;
  v3 = *(v1 + 24);
  v0[7] = v3;
  sub_1ADDD86D8(v2, v3);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1ADE689A0;
  v5 = v0[5];

  return sub_1AE239A9C((v0 + 2), 1, v5);
}

uint64_t sub_1ADE689A0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1ADE68BBC;
  }

  else
  {
    v3 = sub_1ADE68AB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1ADE68AB4()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v2 = 0xD000000000000015;
    *(v2 + 8) = 0x80000001AE260340;
    *(v2 + 16) = 0;
    swift_willThrow();
    sub_1ADDCC35C(v0[6], v0[7]);
    sub_1ADDCC35C(0, 0xC000000000000000);
  }

  else
  {
    v4 = v0[2];
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[4];
    sub_1ADDCC35C(0, 0xC000000000000000);
    *v7 = 0;
    v7[1] = v6;
    v7[2] = v5;
    v7[3] = v4;
    v7[4] = v1;
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1ADE68BBC()
{
  v1 = v0[9];
  sub_1ADDCC35C(v0[6], v0[7]);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1ADE68C2C(uint64_t *a1)
{
  v23 = sub_1AE23BFEC();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v21 = v6;
  v22 = v7;
  v16 = v6;
  v17 = v7;
  v18 = v9;
  v19 = v8;
  v20 = v10;
  type metadata accessor for Capsule();
  Capsule.version.getter(&v15);
  v14 = v15;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v9;
  v13[6] = v8;
  v13[7] = v10;
  Capsule.versionUUID.getter(v5);
  sub_1ADDD86D8(v6, v7);
  v11 = sub_1ADE68DC4(&v21, &v14, 0);
  (*(v2 + 8))(v5, v23);

  sub_1ADDCC35C(v21, v22);
  return v11;
}

uint64_t sub_1ADE68DC4(uint64_t *a1, __int128 *a2, __int16 a3)
{
  v4 = v3;
  v5 = *a1;
  v6 = a1[1];
  v59 = *a2;
  type metadata accessor for Proto_Reference._StorageClass();
  inited = swift_initStaticObject();
  sub_1ADDD86D8(v5, v6);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v8 = MEMORY[0x1E69E7CC0];

  sub_1ADDD86D8(v5, v6);

  sub_1ADDCC35C(v5, v6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE4C34(inited);
  }

  swift_beginAccess();
  v9 = *(inited + 64);
  v10 = *(inited + 72);
  v11 = *(inited + 80);
  *(inited + 64) = v8;
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  sub_1ADE73D6C(v9, v10, v11);
  v77 = v59;
  v60 = sub_1ADDF5C7C(v3);
  v13 = v12;
  sub_1ADE42CB8(0);
  v100 = sub_1ADDD8E0C();
  v15 = v14;
  sub_1ADDCC35C(0, 0xC000000000000000);

  sub_1ADE73AC8(0xF000000000000007);
  v16 = inited | 0x8000000000000000;
  v17 = sub_1ADDF6AF0();
  v21 = v20;
  if (v20)
  {
    v22 = v13;
    v23 = v17;
    v24 = v19;
    v25 = v18;
    sub_1ADE73B5C(0, 0, 0);
    v26 = v25;
    v16 = inited | 0x8000000000000000;
    v27 = v24;
    v28 = v23;
    v13 = v22;
  }

  else
  {
    v28 = 0;
    v26 = 0;
    v27 = 0;
  }

  v29 = *(v4 + 104);
  if ((v29 - 2) >= 2)
  {
    if (*(v4 + 104))
    {
      v77 = v16;
      *&v78 = 0;
      *(&v78 + 1) = MEMORY[0x1E69E7CC0];
      *&v79 = MEMORY[0x1E69E7CC0];
      *(&v79 + 1) = v100;
      *&v80 = v15;
      v51 = v15;
      v52 = v13;
      *(&v80 + 1) = MEMORY[0x1E69E7CC0];
      *&v81 = v60;
      *(&v81 + 1) = v13;
      *&v82 = v28;
      *(&v82 + 1) = v26;
      v57 = v26;
      v50 = v21;
      *&v83 = v21;
      *(&v83 + 1) = v27;
      v84 = 0uLL;
      v73 = v81;
      v74 = v82;
      v75 = v83;
      v76 = 0uLL;
      v69 = v16;
      v70 = v78;
      v71 = v79;
      v72 = v80;
      v45 = v27;
      sub_1ADE73B00(&v77, &v61);
      sub_1ADE73BC8();
      v46 = sub_1AE23C51C();
      if (!v58)
      {
        v30 = v46;
        v65 = v73;
        v66 = v74;
        v67 = v75;
        v68 = v76;
        v61 = v69;
        v62 = v70;
        v63 = v71;
        v64 = v72;
        sub_1ADE6AF00(&v61);

        v41 = v57;
        v39 = v45;
        goto LABEL_15;
      }

      v65 = v73;
      v66 = v74;
      v67 = v75;
      v68 = v76;
      v61 = v69;
      v62 = v70;
      v63 = v71;
      v64 = v72;
      sub_1ADE6AF00(&v61);

      v33 = v60;
      v47 = v45;
      v31 = v15;
      v32 = v100;
      v30 = MEMORY[0x1E69E7CC0];
      v37 = v16;
      v38 = v28;
      v39 = v47;
      v36 = v21;
      v40 = v57;
    }

    else
    {
      v42 = v26;
      v43 = v27;
      sub_1ADE42E40();
      swift_allocError();
      *v44 = 0xD000000000000026;
      *(v44 + 8) = 0x80000001AE2601A0;
      *(v44 + 16) = 3;
      swift_willThrow();

      v36 = v21;
      v37 = v16;
      v38 = v28;
      v39 = v43;
      v40 = v42;
      v33 = v60;
      v31 = v15;
      v32 = v100;
      v30 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v85 = v16;
    v86 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    v87 = MEMORY[0x1E69E7CC0];
    v88 = MEMORY[0x1E69E7CC0];
    v31 = v15;
    v32 = v100;
    v89 = v100;
    v90 = v31;
    v33 = v60;
    v91 = MEMORY[0x1E69E7CC0];
    v92 = v60;
    v93 = v13;
    v94 = v28;
    v95 = v26;
    v96 = v21;
    v97 = v27;
    v98 = 0;
    v99 = 0;
    v56 = v26;
    v34 = a3;
    v53 = v28;
    v55 = v16;
    v35 = v27;
    v49 = sub_1ADE675B8(&v85, v29 + 4, v34);

    v36 = v21;
    v38 = v53;
    v37 = v55;
    v39 = v35;
    v40 = v56;
    if (!v58)
    {
      v50 = v21;
      v51 = v31;
      v52 = v13;
      v41 = v56;
      v28 = v53;
      v16 = v55;
      v30 = v49;
LABEL_15:
      v77 = v16;
      *&v78 = 0;
      *(&v78 + 1) = MEMORY[0x1E69E7CC0];
      *&v79 = MEMORY[0x1E69E7CC0];
      *(&v79 + 1) = v100;
      *&v80 = v51;
      *(&v80 + 1) = MEMORY[0x1E69E7CC0];
      *&v81 = v60;
      *(&v81 + 1) = v52;
      *&v82 = v28;
      *(&v82 + 1) = v41;
      *&v83 = v50;
      *(&v83 + 1) = v39;
      v84 = 0uLL;
      sub_1ADE6AF00(&v77);
      return v30;
    }
  }

  v77 = v37;
  *&v78 = 0;
  *(&v78 + 1) = v30;
  *&v79 = v30;
  *(&v79 + 1) = v32;
  *&v80 = v31;
  *(&v80 + 1) = v30;
  *&v81 = v33;
  *(&v81 + 1) = v13;
  *&v82 = v38;
  *(&v82 + 1) = v40;
  *&v83 = v36;
  *(&v83 + 1) = v39;
  v84 = 0uLL;
  sub_1ADE6AF00(&v77);
  return v30;
}

uint64_t sub_1ADE69288@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *a1;
  swift_beginAccess();
  v7 = v4[11];
  v8 = MEMORY[0x1E69E7CC0];
  v4[11] = MEMORY[0x1E69E7CC0];

  v9 = v4[14];
  v10 = v4[15];
  v4[15] = 0;
  v4[14] = 0;
  (*(*v6 + 184))(v4);
  if (v3)
  {

    v24[0] = 0xF000000000000007;
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v8;
    v24[4] = v8;
    v25 = xmmword_1AE241910;
    v26 = v8;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    return sub_1ADE6AF00(v24);
  }

  else
  {
    if (v4[14] || v4[15])
    {
      v11 = sub_1ADDFCC74();
      v13 = v4[14];
      v4[14] = v9;
      v14 = v11;

      v15 = v4[15];
      v4[15] = v10;

      swift_beginAccess();
      inited = *(v14 + 24);
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }

    sub_1ADE73AC8(0xF000000000000007);
    result = sub_1ADDF6AF0();
    v20 = v19;
    if (v19)
    {
      v21 = result;
      v22 = v17;
      v23 = v18;
      result = sub_1ADE73B5C(0, 0, 0);
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    *a2 = inited;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = v8;
    *(a2 + 32) = v8;
    *(a2 + 40) = xmmword_1AE241910;
    *(a2 + 56) = v8;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = v21;
    *(a2 + 88) = v22;
    *(a2 + 96) = v20;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = v23;
  }

  return result;
}

uint64_t sub_1ADE694A4(uint64_t *a1)
{
  v4 = *a1;
  if (*(v2 + 104) - 2 >= 2)
  {
    if (*(v2 + 104))
    {
      *&v8 = *a1;
      sub_1ADE69288(&v8, v16);
      if (!v3)
      {
        v12 = v16[4];
        v13 = v16[5];
        v14 = v16[6];
        v15 = v16[7];
        v8 = v16[0];
        v9 = v16[1];
        v10 = v16[2];
        v11 = v16[3];
        sub_1ADE73BC8();
        v1 = sub_1AE23C51C();
        v7[4] = v12;
        v7[5] = v13;
        v7[6] = v14;
        v7[7] = v15;
        v7[0] = v8;
        v7[1] = v9;
        v7[2] = v10;
        v7[3] = v11;
        sub_1ADE6AF00(v7);
      }
    }

    else
    {
      sub_1ADE42E40();
      v1 = swift_allocError();
      *v5 = 0xD000000000000026;
      *(v5 + 8) = 0x80000001AE2601A0;
      *(v5 + 16) = 3;
      swift_willThrow();
    }
  }

  else
  {
    *&v8 = *a1;
    sub_1ADE69288(&v8, v17);
    if (!v3)
    {
      v1 = sub_1ADE675B8(v17, *(v2 + 104) + 4, 0);
      sub_1ADE6AF00(v17);
    }
  }

  return v1;
}

uint64_t sub_1ADE69650()
{
  v1 = v0[5];
  v2 = MEMORY[0x1E69E7CC0];
  v0[5] = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v3 = v0[6];
  v4 = MEMORY[0x1E69E7CC8];
  v0[6] = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v5 = v0[7];
  v0[7] = v2;

  swift_beginAccess();
  v6 = v0[8];
  v0[8] = v4;

  swift_beginAccess();
  v7 = v0[11];
  v0[11] = v2;
}

uint64_t sub_1ADE69718@<X0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v7 = *a1;
  sub_1ADE69650();
  if (*(v2 + 104))
  {
    v60 = a2;
    swift_beginAccess();
    v8 = v7[3];
    v48 = v7[2];
    v49 = v8;

    v9 = sub_1ADDF5C7C(v2);
    v11 = v10;

    sub_1ADE42CB8(0);
    swift_beginAccess();
    v12 = v7[5];
    v48 = v7[4];
    v49 = v12;

    v13 = sub_1ADDF5C7C(v2);
    v15 = v14;

    sub_1ADE42CB8(0);
    swift_beginAccess();
    v16 = v7[6];

    v18 = sub_1ADE71CD0(v17, v5, sub_1ADE69B1C);
    if (v4)
    {

      v48 = 0xF000000000000007;
      v49 = 0;
      v50 = 0;
      v51 = MEMORY[0x1E69E7CC0];
      v53 = xmmword_1AE241910;
      v52 = MEMORY[0x1E69E7CC0];
      v54 = MEMORY[0x1E69E7CC0];
      *&v55 = v9;
      *(&v55 + 1) = v11;
      v56 = 0u;
      v57 = 0u;
      v58 = v13;
      v59 = v15;
      return sub_1ADE6AF00(&v48);
    }

    else
    {
      v20 = v18;

      swift_beginAccess();
      v21 = v7[7];

      v24 = sub_1ADE71CD0(v22, v5, sub_1ADE69E04);

      v25 = sub_1ADDF6AF0();
      v29 = v28;
      *&v38 = v9;
      *(&v38 + 1) = v11;
      v39 = v15;
      if (v28)
      {
        v30 = v25;
        v31 = v26;
        v32 = v27;
        sub_1ADE73B5C(0, 0, 0);
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
      }

      sub_1ADDF6EEC();
      v41 = 0xF000000000000007;
      *&v42 = 0;
      *(&v42 + 1) = v24;
      *&v43[8] = xmmword_1AE241910;
      *v43 = MEMORY[0x1E69E7CC0];
      *&v43[24] = v20;
      v44 = v38;
      *&v45 = v30;
      *(&v45 + 1) = v31;
      *&v46 = v29;
      *(&v46 + 1) = v32;
      *&v47 = v13;
      *(&v47 + 1) = v39;
      v48 = 0xF000000000000007;
      v49 = 0;
      v50 = 0;
      v51 = v24;
      v53 = xmmword_1AE241910;
      v52 = MEMORY[0x1E69E7CC0];
      v54 = v20;
      v55 = v38;
      *&v56 = v30;
      *(&v56 + 1) = v31;
      *&v57 = v29;
      *(&v57 + 1) = v32;
      v58 = v13;
      v59 = v39;
      sub_1ADE73B00(&v41, v40);
      result = sub_1ADE6AF00(&v48);
      v33 = v45;
      v34 = v60;
      v60[4] = v44;
      v34[5] = v33;
      v35 = v47;
      v34[6] = v46;
      v34[7] = v35;
      v36 = v42;
      *v34 = v41;
      v34[1] = v36;
      v37 = *&v43[16];
      v34[2] = *v43;
      v34[3] = v37;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v19 = 0xD00000000000002CLL;
    *(v19 + 8) = 0x80000001AE260250;
    *(v19 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1ADE69B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  v29 = *(a1 + 16);
  v9 = *(a1 + 32);
  type metadata accessor for Proto_Reference._StorageClass();
  inited = swift_initStaticObject();
  sub_1ADDD86D8(v8, v7);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v11 = MEMORY[0x1E69E7CC0];

  sub_1ADDD86D8(v8, v7);

  sub_1ADDCC35C(v8, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE4C34(inited);
  }

  swift_beginAccess();
  v12 = inited[8];
  v13 = inited[9];
  v14 = inited[10];
  inited[8] = v11;
  inited[9] = v8;
  inited[10] = v7;
  sub_1ADE73D6C(v12, v13, v14);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a2 + 112) = 0;
  (*(*v9 + 104))(a2);
  if (v4)
  {

    *a3 = v4;
  }

  else
  {
    if (*(a2 + 112) || *(a2 + 120))
    {
      v17 = sub_1ADDFCC74();
      v19 = *(a2 + 112);
      *(a2 + 112) = v15;
      v20 = v17;

      v21 = *(a2 + 120);
      *(a2 + 120) = v16;

      swift_beginAccess();
      v22 = *(v20 + 24);
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v22 = swift_initStaticObject();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE4C34(inited);
    }

    swift_beginAccess();
    v23 = inited[7];
    inited[7] = v22;

    v24 = sub_1ADDF5C7C(a2);
    v26 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE4C34(inited);
    }

    swift_beginAccess();
    v27 = inited[5];
    v28 = inited[6];
    inited[5] = v24;
    inited[6] = v26;
    result = sub_1ADE42CB8(v27);
    *a4 = inited;
  }

  return result;
}

uint64_t sub_1ADE69E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  v29 = *(a1 + 16);
  v9 = *(a1 + 32);
  type metadata accessor for Proto_Reference._StorageClass();
  inited = swift_initStaticObject();
  sub_1ADDD86D8(v8, v7);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v11 = MEMORY[0x1E69E7CC0];

  sub_1ADDD86D8(v8, v7);

  sub_1ADDCC35C(v8, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE4C34(inited);
  }

  swift_beginAccess();
  v12 = inited[8];
  v13 = inited[9];
  v14 = inited[10];
  inited[8] = v11;
  inited[9] = v8;
  inited[10] = v7;
  sub_1ADE73D6C(v12, v13, v14);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a2 + 112) = 0;
  (*(*v9 + 184))(a2);
  if (v4)
  {

    *a3 = v4;
  }

  else
  {
    if (*(a2 + 112) || *(a2 + 120))
    {
      v17 = sub_1ADDFCC74();
      v19 = *(a2 + 112);
      *(a2 + 112) = v15;
      v20 = v17;

      v21 = *(a2 + 120);
      *(a2 + 120) = v16;

      swift_beginAccess();
      v22 = *(v20 + 24);
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v22 = swift_initStaticObject();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE4C34(inited);
    }

    swift_beginAccess();
    v23 = inited[7];
    inited[7] = v22;

    v24 = sub_1ADDF5C7C(a2);
    v26 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE4C34(inited);
    }

    swift_beginAccess();
    v27 = inited[5];
    v28 = inited[6];
    inited[5] = v24;
    inited[6] = v26;
    result = sub_1ADE42CB8(v27);
    *a4 = inited;
  }

  return result;
}

double sub_1ADE6A0EC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for Proto_Value._StorageClass();
  v25 = *a1;
  inited = swift_initStaticObject();
  v7 = sub_1ADDF5C7C(v3);
  v9 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = swift_allocObject();
    v11 = *(inited + 16);
    *(v10 + 16) = v11;
    sub_1ADE51B2C(v11);

    inited = v10;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  v13 = v12 | 0x3000000000000000;
  v14 = *(inited + 16);
  *(inited + 16) = v13;
  sub_1ADE51B48(v14);

  sub_1ADE73AC8(0xF000000000000007);
  v15 = sub_1ADDF6AF0();
  v19 = v18;
  if (v18)
  {
    v20 = v15;
    v21 = v16;
    v22 = v17;
    sub_1ADE73B5C(0, 0, 0);
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  *a2 = inited | 0x4000000000000000;
  *(a2 + 8) = 0;
  v23 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = v23;
  *(a2 + 32) = v23;
  result = 0.0;
  *(a2 + 40) = xmmword_1AE241910;
  *(a2 + 56) = v23;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v20;
  *(a2 + 88) = v21;
  *(a2 + 96) = v19;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = v22;
  return result;
}

void sub_1ADE6A25C(uint64_t *a1@<X0>, __int16 a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v8 = v7;
  v71 = a4;
  v72 = a5;
  v69 = a6;
  v147 = *MEMORY[0x1E69E9840];
  v83 = type metadata accessor for PartiallyOrderedReferenceMap();
  v12 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v88 = a1[1];
  v89 = v14;
  v15 = a1[2];
  v86 = a1[3];
  v87 = v15;
  v85 = a1[4];
  v73 = *(v6 + 104);
  v16 = *(v6 + 24);
  v17 = *(v6 + 32);
  v79 = v6;
  memset(v94, 0, sizeof(v94));
  v95 = 8;
  v18 = v17 >> 62;
  v136 = v16;
  v137 = v17;
  if ((v17 >> 62) <= 1)
  {
    if (!v18)
    {
      v19 = v7;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v19 = v7;
  if (v18 != 2)
  {
    goto LABEL_11;
  }

  v21 = *(v16 + 16);
  v20 = *(v16 + 24);
  v8 = v20 - v21;
  if (__OFSUB__(v20, v21))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      goto LABEL_34;
    }

    v19 = v8;
  }

  sub_1ADDD86D8(v16, v17);
LABEL_11:
  v70 = a3;
  v22 = v73;
  v23 = v73 + 4;
  sub_1ADE73ED0();
  sub_1AE23BB1C();
  v94[4] = v23;
  *&v94[6] = a2;
  v24 = *v94;
  v25 = v95;
  v68 = *&v94[12];
  v26 = *&v94[8];
  sub_1ADDCC35C(v16, v17);
  v74 = xmmword_1AE241910;
  v135 = xmmword_1AE241910;
  if (v22 < 3)
  {
    v51 = v19;
  }

  else
  {
    HIDWORD(v64) = v25;
    v65 = v26;
    v66 = v24;
    *&v128 = v89;
    *(&v128 + 1) = v88;
    *&v129 = v87;
    *(&v129 + 1) = v86;
    *&v130[0] = v85;
    v81 = type metadata accessor for Capsule();
    v67 = sub_1AE1EA944();
    v28 = *(v27 + 16);
    v92 = v19;
    if (v28)
    {
      v29 = 0;
      v30 = (v27 + 40);
      v80 = v27;
      while (v29 < v28)
      {
        v90 = v30;
        v91 = v29;
        v31 = *(v30 - 1);
        v32 = *v30;
        *&v120 = v89;
        *(&v120 + 1) = v88;
        *&v121 = v87;
        *(&v121 + 1) = v86;
        *&v122 = v85;
        v33 = v82;
        sub_1ADDFC54C(v82);
        v34 = v33 + *(v83 + 20);
        v35 = *v34;
        v36 = *(v34 + 8);
        v37 = *(v34 + 16);
        sub_1ADDD86D8(v31, v32);
        sub_1ADDD86D8(v31, v32);
        sub_1ADDDF7A8(v31, v32, v35, &v128);
        v93 = v32;
        sub_1ADDCC35C(v31, v32);
        v38 = v128;
        v39 = v129;
        v40 = v130[0];
        sub_1ADDDDE40(v128, *(&v128 + 1), v129);
        sub_1ADDDC21C(v38, *(&v38 + 1), v39);
        sub_1ADE73DF4(v33);
        if (v39)
        {
          *&v120 = v31;
          v41 = v92;
          v42 = v93;
          *(&v120 + 1) = v93;
          v128 = v38;
          v129 = v39;
          v84 = v40;
          v130[0] = v40;
          v43 = sub_1ADE667F8(&v120, &v128);
          v92 = v41;
          if (v41)
          {
            sub_1ADDCC35C(v135, *(&v135 + 1));

            sub_1ADDDC21C(v38, *(&v38 + 1), v39);
            sub_1ADDCC35C(v31, v42);
            goto LABEL_32;
          }

          if (v43)
          {
            v75 = v39;
            v76 = *(&v38 + 1);
            v77 = v31;
            v78 = *(&v39 + 1);
            *&v129 = 0;
            v128 = 0xF000000000000007;
            *(&v129 + 1) = MEMORY[0x1E69E7CC0];
            *(v130 + 8) = v74;
            *&v130[0] = MEMORY[0x1E69E7CC0];
            *(&v130[1] + 1) = MEMORY[0x1E69E7CC0];
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;

            MEMORY[0x1B26FB860](v44);
            if (*(*(&v129 + 1) + 16) >= *(*(&v129 + 1) + 24) >> 1)
            {
              v50 = *(*(&v129 + 1) + 16);
              sub_1AE23D03C();
            }

            sub_1AE23D09C();
            v124 = v131;
            v125 = v132;
            v126 = v133;
            v127 = v134;
            v120 = v128;
            v121 = v129;
            v122 = v130[0];
            v123 = v130[1];
            v116 = v131;
            v117 = v132;
            v118 = v133;
            v119 = v134;
            v112 = v128;
            v113 = v129;
            v114 = v130[0];
            v115 = v130[1];
            sub_1ADE73B00(&v120, &v104);
            sub_1ADE73BC8();
            v45 = v92;
            v46 = sub_1AE23C51C();
            v92 = v45;
            if (v45)
            {

              sub_1ADDDC21C(v38, v76, v75);

              sub_1ADDCC35C(v77, v93);
              v100 = v116;
              v101 = v117;
              v102 = v118;
              v103 = v119;
              v96 = v112;
              v97 = v113;
              v98 = v114;
              v99 = v115;
              sub_1ADE6AF00(&v96);
              sub_1ADDCC35C(v135, *(&v135 + 1));
              v108 = v131;
              v109 = v132;
              v110 = v133;
              v111 = v134;
              v104 = v128;
              v105 = v129;
              v106 = v130[0];
              v107 = v130[1];
              sub_1ADE6AF00(&v104);
              goto LABEL_32;
            }

            v48 = v46;
            v49 = v47;
            v100 = v116;
            v101 = v117;
            v102 = v118;
            v103 = v119;
            v96 = v112;
            v97 = v113;
            v98 = v114;
            v99 = v115;
            sub_1ADE6AF00(&v96);
            sub_1AE23BEEC();
            sub_1ADDDC21C(v38, v76, v75);
            sub_1ADDCC35C(v48, v49);

            sub_1ADDCC35C(v77, v93);
            v108 = v131;
            v109 = v132;
            v110 = v133;
            v111 = v134;
            v104 = v128;
            v105 = v129;
            v106 = v130[0];
            v107 = v130[1];
            sub_1ADE6AF00(&v104);
          }

          else
          {
            sub_1ADDCC35C(v31, v42);
            sub_1ADDDC21C(v38, *(&v38 + 1), v39);
          }
        }

        else
        {
          sub_1ADDCC35C(v31, v93);
        }

        v29 = v91 + 1;
        v28 = *(v80 + 16);
        v30 = v90 + 2;
        if (v91 + 1 == v28)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }

LABEL_26:

    v26 = v65;
    v24 = v66;
    v25 = HIDWORD(v64);
    v51 = v92;
  }

  *&v128 = v89;
  *(&v128 + 1) = v88;
  *&v129 = v87;
  *(&v129 + 1) = v86;
  *&v130[0] = v85;
  sub_1ADE66B08(&v128, v70 & 1 | (v73 > 2u), 0, 0, v71, v72, &v138);
  if (v51)
  {
    sub_1ADDCC35C(v135, *(&v135 + 1));
  }

  else
  {
    v52 = v26 | ((v68 | (v25 << 16)) << 32);
    v53 = v139;
    v54 = v142;
    v55 = v135;
    v56 = v141;
    v57 = v143;
    v58 = v144;
    v59 = v145;
    v60 = v146;
    v61 = v140;
    v62 = v69;
    *v69 = v138;
    *(v62 + 2) = v53;
    *(v62 + 24) = v61;
    *(v62 + 40) = v56;
    *(v62 + 7) = v54;
    v62[4] = v57;
    v62[5] = v58;
    v62[6] = v59;
    v62[7] = v60;
    *(v62 + 16) = v24;
    *(v62 + 17) = v52;
    v62[9] = v55;
  }

LABEL_32:
  v63 = *MEMORY[0x1E69E9840];
}

double sub_1ADE6A9AC@<D0>(_OWORD *a1@<X8>)
{
  sub_1ADE69650();
  v3 = sub_1ADE6B938(sub_1ADE74060);
  if (v1)
  {
    v27 = 0xF000000000000007;
    v28 = 0;
    v29 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    v32 = xmmword_1AE241910;
    v31 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC0];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    sub_1ADE6AF00(&v27);
  }

  else
  {
    v5 = v3;
    sub_1ADE73AC8(0xF000000000000007);
    v6 = v5 | 0x4000000000000000;
    v7 = sub_1ADDF6AF0();
    v11 = v10;
    if (v10)
    {
      v12 = v7;
      v13 = v8;
      v14 = v9;
      sub_1ADE73B5C(0, 0, 0);
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    v20 = v6;
    *&v21 = 0;
    *(&v21 + 1) = MEMORY[0x1E69E7CC0];
    *&v22[8] = xmmword_1AE241910;
    *v22 = MEMORY[0x1E69E7CC0];
    *&v22[24] = MEMORY[0x1E69E7CC0];
    v23 = 0uLL;
    *&v24 = v12;
    *(&v24 + 1) = v13;
    *&v25 = v11;
    *(&v25 + 1) = v14;
    v26 = 0uLL;
    v27 = v6;
    v28 = 0;
    v29 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    v32 = xmmword_1AE241910;
    v31 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC0];
    v34 = 0uLL;
    *&v35 = v12;
    *(&v35 + 1) = v13;
    *&v36 = v11;
    *(&v36 + 1) = v14;
    v37 = 0uLL;
    sub_1ADE73B00(&v20, v19);
    sub_1ADE6AF00(&v27);
    v15 = v24;
    a1[4] = v23;
    a1[5] = v15;
    v16 = v26;
    a1[6] = v25;
    a1[7] = v16;
    v17 = v21;
    *a1 = v20;
    a1[1] = v17;
    result = *v22;
    v18 = *&v22[16];
    a1[2] = *v22;
    a1[3] = v18;
  }

  return result;
}

double sub_1ADE6AB58@<D0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, _OWORD *a3@<X8>)
{
  v44 = a1;
  sub_1ADE69650();
  v23[2] = &v44;
  v24 = v3;
  v7 = sub_1ADE6B9FC(a2, v23);
  if (v4)
  {
    v33 = 0xF000000000000007;
    v34 = 0;
    v35 = 0;
    v36 = MEMORY[0x1E69E7CC0];
    v38 = xmmword_1AE241910;
    v37 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    sub_1ADE6AF00(&v33);
  }

  else
  {
    v9 = v7;
    sub_1ADE73AC8(0xF000000000000007);
    swift_beginAccess();
    v10 = *(v3 + 96);

    v11 = sub_1ADDF6AF0();
    v15 = v14;
    if (v14)
    {
      v16 = v11;
      v17 = v12;
      v18 = v13;
      sub_1ADE73B5C(0, 0, 0);
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v26 = v9;
    *&v27 = 0;
    *(&v27 + 1) = v10;
    *&v28[8] = xmmword_1AE241910;
    *v28 = MEMORY[0x1E69E7CC0];
    *&v28[24] = MEMORY[0x1E69E7CC0];
    v29 = 0uLL;
    *&v30 = v16;
    *(&v30 + 1) = v17;
    *&v31 = v15;
    *(&v31 + 1) = v18;
    v32 = 0uLL;
    v33 = v9;
    v34 = 0;
    v35 = 0;
    v36 = v10;
    v38 = xmmword_1AE241910;
    v37 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
    v40 = 0uLL;
    *&v41 = v16;
    *(&v41 + 1) = v17;
    *&v42 = v15;
    *(&v42 + 1) = v18;
    v43 = 0uLL;
    sub_1ADE73B00(&v26, v25);
    sub_1ADE6AF00(&v33);
    v19 = v30;
    a3[4] = v29;
    a3[5] = v19;
    v20 = v32;
    a3[6] = v31;
    a3[7] = v20;
    v21 = v27;
    *a3 = v26;
    a3[1] = v21;
    result = *v28;
    v22 = *&v28[16];
    a3[2] = *v28;
    a3[3] = v22;
  }

  return result;
}

double sub_1ADE6AD28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_1ADE69650();
  v26[2] = a2;
  v26[3] = a3;
  v26[4] = a1;
  v27 = v4;
  v10 = sub_1ADE6B9FC(sub_1ADE74458, v26);
  if (v5)
  {
    v36 = 0xF000000000000007;
    v37 = 0;
    v38 = 0;
    v39 = MEMORY[0x1E69E7CC0];
    v41 = xmmword_1AE241910;
    v40 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    sub_1ADE6AF00(&v36);
  }

  else
  {
    v12 = v10;
    sub_1ADE73AC8(0xF000000000000007);
    swift_beginAccess();
    v13 = *(v4 + 96);

    v14 = sub_1ADDF6AF0();
    v18 = v17;
    if (v17)
    {
      v19 = v14;
      v20 = v15;
      v21 = v16;
      sub_1ADE73B5C(0, 0, 0);
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
    }

    v29 = v12;
    *&v30 = 0;
    *(&v30 + 1) = v13;
    *&v31[8] = xmmword_1AE241910;
    *v31 = MEMORY[0x1E69E7CC0];
    *&v31[24] = MEMORY[0x1E69E7CC0];
    v32 = 0uLL;
    *&v33 = v19;
    *(&v33 + 1) = v20;
    *&v34 = v18;
    *(&v34 + 1) = v21;
    v35 = 0uLL;
    v36 = v12;
    v37 = 0;
    v38 = 0;
    v39 = v13;
    v41 = xmmword_1AE241910;
    v40 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
    v43 = 0uLL;
    *&v44 = v19;
    *(&v44 + 1) = v20;
    *&v45 = v18;
    *(&v45 + 1) = v21;
    v46 = 0uLL;
    sub_1ADE73B00(&v29, v28);
    sub_1ADE6AF00(&v36);
    v22 = v33;
    a4[4] = v32;
    a4[5] = v22;
    v23 = v35;
    a4[6] = v34;
    a4[7] = v23;
    v24 = v30;
    *a4 = v29;
    a4[1] = v24;
    result = *v31;
    v25 = *&v31[16];
    a4[2] = *v31;
    a4[3] = v25;
  }

  return result;
}

uint64_t sub_1ADE6AF54(uint64_t a1, uint64_t a2)
{
  result = sub_1ADDFCC74();
  if (!v2)
  {
    v6 = result;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v6;
    *(inited + 24) = a2;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    sub_1AE04A4B8(inited, a1);
    swift_setDeallocating();
    v8 = *(inited + 16);

    v9 = *(inited + 24);
  }

  return result;
}

uint64_t sub_1ADE6B034(uint64_t *a1, __int16 a2)
{
  v4 = v2;
  v21 = *MEMORY[0x1E69E9840];
  if (!*(v2 + 104))
  {
    type metadata accessor for Upgrade4to5();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC8];
    v9[2] = MEMORY[0x1E69E7CC0];
    v9[3] = v11;
    v9[4] = v10;
    v9[5] = v11;
    v9[6] = 0;
    v9[7] = 0;
    sub_1AE198E38(a1);
    if (v3)
    {

      goto LABEL_15;
    }

    v12 = *(v2 + 24);
    v13 = *(v2 + 32);
    v20 = 0;
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
LABEL_14:
        sub_1ADE73ED0();
        sub_1AE23BB1C();
        BYTE4(v20) = 4;
        HIWORD(v20) = 0;
        sub_1ADDCC35C(v12, v13);
        sub_1ADE74344();
        v16 = sub_1AE23C51C();
        v18 = v17;
        sub_1AE23BEEC();
        sub_1ADDCC35C(v16, v18);
        v19 = *(v2 + 16);
        sub_1ADDF6EEC();

        result = v20;
        goto LABEL_15;
      }

      if (!__OFSUB__(*(v12 + 24), *(v12 + 16)))
      {
LABEL_13:
        sub_1ADDD86D8(v12, v13);
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v14)
    {
      goto LABEL_14;
    }

    if (__OFSUB__(HIDWORD(v12), v12))
    {
      __break(1u);
    }

    goto LABEL_13;
  }

  v7 = *(v2 + 16);
  sub_1ADDF6EEC();
  result = sub_1ADE675B8(a1, *(v4 + 104) + 4, a2);
LABEL_15:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADE6B2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  sub_1ADE69650();
  sub_1ADE67270(a2, a3, a4, v12);
  if (!v5)
  {
    if (*(v4 + 104))
    {
      v6 = sub_1ADE675B8(v12, *(v4 + 104) + 4, 0);
      sub_1ADDF6EEC();
    }

    else
    {
      sub_1ADE42E40();
      swift_allocError();
      *v10 = 0xD00000000000002CLL;
      *(v10 + 8) = 0x80000001AE260250;
      *(v10 + 16) = 3;
      swift_willThrow();
    }

    sub_1ADE6AF00(v12);
  }

  return v6;
}

uint64_t sub_1ADE6B3B8(uint64_t a1, uint64_t a2)
{

  v5 = sub_1ADE7196C(a1);
  if (v2)
  {

    *&v50 = MEMORY[0x1E69E7CC0];
    *(&v50 + 1) = MEMORY[0x1E69E7CC0];
    *&v51 = 0;
    *(&v51 + 1) = 0xC000000000000000;
    *&v52 = MEMORY[0x1E69E7CC0];
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    v53 = MEMORY[0x1E69E7CC0];
    v54 = 0uLL;
    v55 = 0;
    sub_1ADE73C68(&v50);
    return a2;
  }

  v6 = v5;

  v7 = sub_1ADE5E6B8(a1);

  v9 = *(a2 + 16);
  if (!(v9 >> 58))
  {
    v56 = v7;
    v30 = v6;
    *&v49 = sub_1ADDF6E48(32 * v9);
    *(&v49 + 1) = v10;
    v11 = 1 << *(a2 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a2 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    if (v13)
    {
      while (1)
      {
        v16 = v15;
LABEL_12:
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v18 = (*(a2 + 48) + ((v16 << 10) | (16 * v17)));
        v19 = *v18;
        v20 = v18[1];
        sub_1ADDD86D8(*v18, v20);
        sub_1AE23BEEC();
        result = sub_1ADDCC35C(v19, v20);
        if (!v13)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v16 >= v14)
      {
        break;
      }

      v13 = *(a2 + 64 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_12;
      }
    }

    v21 = v49;
    sub_1ADDD86D8(v49, *(&v49 + 1));
    sub_1ADDCC35C(0, 0xC000000000000000);
    v31 = sub_1ADE5E8D4(a2);

    v22 = sub_1ADDF6AF0();
    v26 = v25;
    if (v25)
    {
      v27 = v22;
      v28 = v23;
      v29 = v24;
      sub_1ADE73B5C(0, 0, 0);
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
    }

    *&v50 = v30;
    *(&v50 + 1) = v56;
    v51 = v49;
    *&v52 = v31;
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    *&v53 = MEMORY[0x1E69E7CC0];
    *(&v53 + 1) = v27;
    *&v54 = v28;
    *(&v54 + 1) = v26;
    v55 = v29;
    v45 = v52;
    v46 = v53;
    v47 = v54;
    v48 = v29;
    v43 = v50;
    v44 = v49;
    sub_1ADE73CBC(&v50, v34);
    sub_1ADE73D18();
    a2 = sub_1AE23C51C();
    v32[2] = v45;
    v32[3] = v46;
    v32[4] = v47;
    v33 = v48;
    v32[0] = v43;
    v32[1] = v44;
    sub_1ADE73C68(v32);
    sub_1ADDCC35C(v21, *(&v21 + 1));
    v34[0] = v30;
    v34[1] = v56;
    v35 = v21;
    v36 = v31;
    v37 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    v39 = v27;
    v40 = v28;
    v41 = v26;
    v42 = v29;
    sub_1ADE73C68(v34);
    return a2;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1ADE6B7B8(uint64_t (*a1)(void))
{
  result = a1();
  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1ADE6B7E4()
{
  v3 = sub_1ADDFCC74();
  if (!v2)
  {
    v4 = v3;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    v0 = swift_allocObject();
    *(v0 + 16) = v4;
    *(v0 + 24) = v1;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();
  }

  return v0;
}

uint64_t sub_1ADE6B890()
{
  v3 = sub_1ADE71C08();
  if (!v2)
  {
    v4 = v3;
    type metadata accessor for CREncoder.CRValueKeyedContainer();
    v0 = swift_allocObject();
    *(v0 + 16) = v4;
    *(v0 + 24) = v1;
    swift_beginAccess();
    swift_retain_n();

    sub_1AE1B6BF8(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();
  }

  return v0;
}

uint64_t sub_1ADE6B938(void (*a1)(void))
{
  v5 = *(v1 + 112);
  v4 = *(v1 + 120);
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  a1();
  if (v2)
  {
  }

  else
  {
    v7 = sub_1ADE71C08();
    swift_beginAccess();
    v3 = *(v7 + 24);
    v8 = *(v1 + 112);
    *(v1 + 112) = v5;

    v9 = *(v1 + 120);
    *(v1 + 120) = v4;
  }

  return v3;
}

uint64_t sub_1ADE6B9FC(void (*a1)(void), uint64_t inited)
{
  v4 = v2;
  v6 = *(v2 + 112);
  v5 = *(v2 + 120);
  v7 = (v2 + 112);
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  a1();
  if (v3)
  {
  }

  else
  {
    if (*v7 || *(v4 + 120))
    {
      v9 = sub_1ADDFCC74();
      v11 = *(v4 + 112);
      *(v4 + 112) = v6;
      v12 = v9;

      v13 = *(v4 + 120);
      *(v4 + 120) = v5;

      swift_beginAccess();
      inited = *(v12 + 24);
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }
  }

  return inited;
}

uint64_t *sub_1ADE6BB44()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = type metadata accessor for CRDTRegister();
  result = sub_1AE03E130(v3, v4);
  if (!v1)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v2 + 24);
    *(v2 + 24) = v6;
  }

  return result;
}

uint64_t sub_1ADE6BC08(uint64_t *a1)
{
  v3 = v1;
  v8 = *a1;
  v4 = *(v1 + 16);
  type metadata accessor for CRSet();
  result = sub_1AE16B36C(v4);
  if (!v2)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 24);
    *(v3 + 24) = v6;
  }

  return result;
}

void *sub_1ADE6BC94(uint64_t *a1)
{
  v7 = *a1;
  v8 = a1[1];
  v3 = *(v1 + 16);
  v4 = type metadata accessor for CROrderedDictionary();
  result = sub_1AE00E9E4(v3, v4);
  if (!v2)
  {
    v6 = result;
    swift_beginAccess();
    sub_1AE1B6E5C(v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADE6BD38(uint64_t *a1)
{
  v3 = v1;
  v9 = *a1;
  v4 = *(v1 + 16);
  v5 = type metadata accessor for CRDictionary();
  result = sub_1ADFA14A4(v4, v5);
  if (!v2)
  {
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 24);
    *(v3 + 24) = v7;
  }

  return result;
}

uint64_t sub_1ADE6BDD4(uint64_t *a1)
{
  v3 = v1;
  v9 = *a1;
  v4 = *(v1 + 16);
  v5 = type metadata accessor for CRDTDictionary();
  result = sub_1AE22AAC0(v4, v5);
  if (!v2)
  {
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 24);
    *(v3 + 24) = v7;
  }

  return result;
}

uint64_t sub_1ADE6BE6C(uint64_t *a1)
{
  v3 = v1;
  v9 = *a1;
  v10 = a1[1];
  v4 = *(v1 + 16);
  v5 = type metadata accessor for CRArray();
  result = sub_1ADF57104(v4, v5);
  if (!v2)
  {
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 24);
    *(v3 + 24) = v7;
  }

  return result;
}

void *sub_1ADE6BEF8(uint64_t *a1)
{
  v3 = v1;
  v7 = *a1;
  result = sub_1ADE50584(*(v1 + 16));
  if (!v2)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v3 + 24);
    *(v3 + 24) = v5;
  }

  return result;
}

uint64_t sub_1ADE6BFAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = v5;
  v14 = *a1;
  v9 = *(v5 + 16);
  v10 = a4(0);
  result = a5(v9, v10);
  if (!v6)
  {
    v12 = result;
    swift_beginAccess();
    v13 = *(v8 + 24);
    *(v8 + 24) = v12;
  }

  return result;
}

uint64_t sub_1ADE6C04C(uint64_t *a1)
{
  v2 = v1;
  v6 = *a1;
  v3 = sub_1AE19E3F0(*(v1 + 16));
  swift_beginAccess();
  v4 = *(v2 + 24);
  *(v2 + 24) = v3;
}

void sub_1ADE6C0BC(uint64_t *a1)
{
  v5 = *a1;
  v3 = *(v1 + 16);
  v4 = type metadata accessor for CRSequence();
  sub_1AE163F34(v3, v4, v6);
  if (!v2)
  {
    swift_beginAccess();
    sub_1AE1B6EA4(v6);
    swift_endAccess();
  }
}

uint64_t sub_1ADE6C190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = v6;
  v10 = *(v6 + 16);
  v11 = a5(0);
  result = a6(v10, v11);
  if (!v7)
  {
    v13 = result;
    swift_beginAccess();
    v14 = *(v9 + 24);
    *(v9 + 24) = v13;
  }

  return result;
}

uint64_t sub_1ADE6C228(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *a3;
  v7 = *(a3 + 8);
  sub_1ADDD86D8(a1, a2);
  sub_1ADDCC35C(0, 0xC000000000000000);
  if (v8)
  {
    v9 = *(v4 + 16);

    v8 = sub_1ADDF5C7C(v9);
    v11 = v10;

    sub_1ADE42CB8(0);
  }

  else
  {
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA288, &qword_1AE241D70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AE2418F0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = v8;
  *(v12 + 56) = v11;
  swift_beginAccess();
  sub_1ADDD86D8(a1, a2);
  sub_1ADE42C78(v8);
  sub_1AE1B6F64(v12);
  swift_endAccess();
  sub_1ADDCC35C(a1, a2);
  return sub_1ADE42CB8(v8);
}

uint64_t sub_1ADE6C370(uint64_t a1, unint64_t a2)
{
  sub_1ADDD86D8(a1, a2);
  sub_1ADDCC35C(0, 0xC000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA288, &qword_1AE241D70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2418F0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  swift_beginAccess();
  sub_1ADDD86D8(a1, a2);
  sub_1ADE42C78(0);
  sub_1AE1B6F64(v4);
  swift_endAccess();
  sub_1ADDCC35C(a1, a2);
  return sub_1ADE42CB8(0);
}

uint64_t sub_1ADE6C448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1ADDF69D0(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1ADDF69D0((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = a2;
  *v3 = v5;

  MEMORY[0x1B26FB860](v8);
  v9 = *(v3 + 8);
  if (*(v9 + 16) >= *(v9 + 24) >> 1)
  {
    v11 = *(v9 + 16);
    sub_1AE23D03C();
  }

  return sub_1AE23D09C();
}

uint64_t sub_1ADE6C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  result = (*(a4 + 48))(a3, a4);
  if ((result & 1) == 0)
  {
    v12 = *(v6 + 24);
    MEMORY[0x1EEE9AC00](result);
    v29[2] = a3;
    v29[3] = a4;
    v29[4] = a1;
    v29[5] = v6;
    result = sub_1ADE6B9FC(sub_1ADE7277C, v29);
    if (!v5)
    {
      v13 = result;
      v14 = *(a2 + 16);
      v15 = MEMORY[0x1E69E7CC0];
      if (v14)
      {
        v30 = v6;
        v35 = result;
        v34 = MEMORY[0x1E69E7CC0];
        sub_1ADE6F00C(0, v14, 0);
        v15 = v34;
        v16 = (a2 + 40);
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;

          v19 = sub_1ADE66494(v17, v18);

          v34 = v15;
          v21 = *(v15 + 16);
          v20 = *(v15 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_1ADE6F00C((v20 > 1), v21 + 1, 1);
            v15 = v34;
          }

          *(v15 + 16) = v21 + 1;
          *(v15 + 8 * v21 + 32) = v19;
          v16 += 2;
          --v14;
        }

        while (v14);
        v13 = v35;
        v6 = v30;
      }

      v22 = *(v6 + 16);
      swift_beginAccess();
      v23 = *(*(v22 + 24) + 16);
      if ((~v23 & 0xF000000000000007) != 0 && (v23 & 0xF000000000000000) == 0x3000000000000000)
      {
        v28 = (v23 & 0xFFFFFFFFFFFFFFFLL);
        v25 = v28[2];
        v26 = v28[3];
        v27 = v28[4];
      }

      else
      {
        v25 = MEMORY[0x1E69E7CC0];
        v26 = MEMORY[0x1E69E7CC0];
        v27 = MEMORY[0x1E69E7CC0];
      }

      v31 = v25;
      v32 = v26;
      v33 = v27;
      sub_1ADE6C790(v13, v15);
      sub_1ADDFCE90(v31, v32, v33);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1ADE6C790(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    v4 = *(a2 + 32);

    return sub_1ADE6C448(result, v4);
  }

  else if (v3)
  {
    v5 = a2 + 32;
    v6 = *(a2 + 32);
    v7 = (2 * v3) | 1;
    v8 = result;
    v12 = sub_1ADE73F88(v6, *v2, v2[1]);
    v13 = v10;
    v14 = v11;
    sub_1ADE6C87C(v8, a2, v5, 1, v7);

    return sub_1ADE6DFF0(v12, v13, v14, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE6C87C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  v7 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 == 1)
  {
    if (v6 != a4)
    {
      if (v6 > a4)
      {
        v8 = *(a3 + 8 * a4);

        return sub_1ADE6C448(result, v8);
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v6 == a4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6 <= a4)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v10 = *(a3 + 8 * a4);
  if (v7)
  {
    v11 = a4 + 1;
  }

  else
  {
    v11 = a5 >> 1;
  }

  v12 = result;
  v17 = sub_1ADE73F88(*(a3 + 8 * a4), *v5, v5[1]);
  v18 = v15;
  v19 = v16;
  swift_unknownObjectRetain();
  sub_1ADE6C87C(v12, a2, a3, v11, a5);
  swift_unknownObjectRelease();

  return sub_1ADE6DFF0(v17, v18, v19, v10);
}

uint64_t sub_1ADE6C9CC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = a4;
  if ((a3 & 1) == 0)
  {
    result = (*(a5 + 48))(a4, a5);
    if (result)
    {
      return result;
    }
  }

  v10 = &v25;
  v11 = *(v5 + 24);
  MEMORY[0x1EEE9AC00](result);
  result = sub_1ADE6B938(sub_1ADE744C8);
  if (v6)
  {
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v7 + 2);
    swift_beginAccess();
    v12 = *(v10[3] + 16);
    if ((~v12 & 0xF000000000000007) != 0 && ((v12 >> 59) & 0x1E | (v12 >> 2) & 1) == 0xD)
    {
      v13 = v12 & 0xFFFFFFFFFFFFFFBLL;
      v7 = *(v13 + 16);
      v8 = *(v13 + 24);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
      v8 = MEMORY[0x1E69E7CC0];
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }
  }

  v7 = sub_1ADDF69D0(0, *(v7 + 2) + 1, 1, v7);
LABEL_10:
  v14 = *(v7 + 2);
  v15 = *(v7 + 3);
  v16 = v14 + 1;
  if (v14 >= v15 >> 1)
  {
    v22 = v7;
    v23 = *(v7 + 2);
    v24 = sub_1ADDF69D0((v15 > 1), v14 + 1, 1, v22);
    v14 = v23;
    v7 = v24;
  }

  *(v7 + 2) = v16;
  *&v7[8 * v14 + 32] = a2;
  sub_1AE1B6BF8(v7, v8);
  v17 = *(v10[3] + 16);
  if ((~v17 & 0xF000000000000007) != 0 && ((v17 >> 59) & 0x1E | (v17 >> 2) & 1) == 0xD)
  {
    v18 = v17 & 0xFFFFFFFFFFFFFFBLL;
    v20 = *(v18 + 16);
    v19 = *(v18 + 24);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
    v19 = MEMORY[0x1E69E7CC0];
  }

  v26 = v19;

  MEMORY[0x1B26FB860](v21);
  if (*(v26 + 16) >= *(v26 + 24) >> 1)
  {
    sub_1AE23D03C();
  }

  sub_1AE23D09C();
  sub_1AE1B6BF8(v20, v26);
  swift_endAccess();
}

uint64_t sub_1ADE6CC8C(uint64_t a1)
{
  if (*(*(v1 + 16) + 104) == 1)
  {
    swift_beginAccess();
    sub_1AE1B6CAC(a1);
  }

  else
  {
    swift_beginAccess();
    sub_1AE1B7008(a1);
  }

  return swift_endAccess();
}

uint64_t sub_1ADE6CD14(uint64_t result)
{
  v2 = result;
  if (*(*(v1 + 16) + 104) == 1 && result < 0)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    sub_1AE1B6CAC(v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADE6CD8C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1ADE66494(a1, a2);
  swift_beginAccess();
  sub_1AE1B70A8(v4);
  return swift_endAccess();
}

uint64_t sub_1ADE6CDF8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1AE23BF4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23C2FC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  if (*(*(v3 + 16) + 104) > 1u)
  {
    if (*(*(v3 + 16) + 104) == 2)
    {
      v41 = v15;
      (*(v6 + 16))(v9, a1, v5, v16);
      sub_1AE23C2BC();
      sub_1ADE725D0();
      v34 = sub_1AE23C51C();
      if (v2)
      {
        return (*(v41 + 8))(v18, v10);
      }

      else
      {
        v39 = v34;
        v40 = v35;
        sub_1ADE6D26C(v34, v35);
        (*(v41 + 8))(v18, v10);
        return sub_1ADDCC35C(v39, v40);
      }
    }

    else
    {
      sub_1AE23BF1C();
      v38 = v37;
      swift_beginAccess();
      sub_1AE1B7148(v38);
      return swift_endAccess();
    }
  }

  else if (*(*(v3 + 16) + 104))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v36 = 0xD00000000000001FLL;
    *(v36 + 8) = 0x80000001AE25FD10;
    *(v36 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v41 = v15;
    (*(v6 + 16))(v9, a1, v5, v16);
    sub_1AE23C2BC();
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
    v20 = sub_1AE23C2EC();
    v21 = inited;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = swift_allocObject();
      v22 = *(inited + 16);
      *(v21 + 16) = v22;
      sub_1ADE51B2C(v22);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    v24 = v23 | 0x2000000000000000;
    v25 = *(v21 + 16);
    *(v21 + 16) = v24;
    sub_1ADE51B48(v25);
    v26 = sub_1AE23C2CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = swift_allocObject();
      v28 = *(inited + 16);
      *(v27 + 16) = v28;
      sub_1ADE51B2C(v28);

      inited = v27;
    }

    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    v30 = v29 | 0x2000000000000000;
    v31 = *(inited + 16);
    *(inited + 16) = v30;
    sub_1ADE51B48(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA290, &qword_1AE241D78);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1AE241900;
    *(v32 + 32) = v21;
    *(v32 + 40) = inited;
    swift_beginAccess();

    sub_1AE1B71F0(v32);
    swift_endAccess();
    (*(v41 + 8))(v13, v10);
  }
}

uint64_t sub_1ADE6D26C(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = *(v2 + 24);
    type metadata accessor for Proto_Value._StorageClass();
    v7 = swift_allocObject();
    v8 = *(v6 + 16);
    *(v7 + 16) = v8;
    *(v2 + 24) = v7;
    sub_1ADE51B2C(v8);
  }

  v9 = *(v2 + 24);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(v9 + 16);
  *(v9 + 16) = v10 | 0x1000000000000004;
  sub_1ADDD86D8(a1, a2);
  swift_endAccess();
  return sub_1ADE51B48(v11);
}

uint64_t sub_1ADE6D350(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = *(v1 + 24);
    type metadata accessor for Proto_Value._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    *(v1 + 24) = v5;
    sub_1ADE51B2C(v6);
  }

  v7 = *(v1 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = *(v7 + 16);
  *(v7 + 16) = v8 | 4;
  swift_endAccess();
  return sub_1ADE51B48(v9);
}

uint64_t sub_1ADE6D41C(float a1)
{
  if (*(*(v1 + 16) + 104) >= 2u)
  {
    swift_beginAccess();
    sub_1AE1B7294(a1);
  }

  else
  {
    v2 = a1;
    swift_beginAccess();
    sub_1AE1B7148(v2);
  }

  return swift_endAccess();
}

uint64_t sub_1ADE6D4B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1ADDF66A8(a1);
  swift_beginAccess();
  sub_1AE1B733C(v3);
  return swift_endAccess();
}

uint64_t sub_1ADE6D520(__int128 *a1)
{
  v6 = *a1;
  v2 = sub_1ADDF5C7C(*(v1 + 16));
  v4 = v3;
  swift_beginAccess();
  sub_1AE1B6DB0(v2, v4);
  return swift_endAccess();
}

uint64_t sub_1ADE6D598(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  swift_beginAccess();
  v6 = *(*(v2 + 24) + 16);
  if ((~v6 & 0xF000000000000007) != 0 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 0xC)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFBLL);
    v9 = v7[2];
    v8 = v7[3];
    v11 = v7[4];
    v10 = v7[5];
    v12 = v7[6];
    sub_1ADDD86D8(v8, v11);
    sub_1ADDD86D8(v10, v12);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0xC000000000000000;
    v12 = 0xC000000000000000;
  }

  sub_1ADDD86D8(v4, v5);
  sub_1ADDCC35C(v8, v11);
  v19[0] = v9;
  v19[1] = v4;
  v19[2] = v5;
  v19[3] = v10;
  v19[4] = v12;
  sub_1AE1B73E4(v19);
  swift_endAccess();
  v13 = *(v2 + 16);
  swift_beginAccess();
  v14 = *(v13 + 88);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 88) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1ADE556B0(0, *(v14 + 2) + 1, 1, v14);
    *(v13 + 88) = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1ADE556B0((v16 > 1), v17 + 1, 1, v14);
  }

  *(v14 + 2) = v17 + 1;
  *&v14[8 * v17 + 32] = v3;
  *(v13 + 88) = v14;
  return swift_endAccess();
}

uint64_t sub_1ADE6D740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23D7CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - v15;
  v18 = *(v3 + 16);
  v19 = *(v18 + 104);
  v20 = *(v10 + 16);
  v40 = v6;
  v21 = (v6 + 48);
  if (v19 >= 3)
  {
    v20(&v37 - v15, a1, v9, v16);
    if ((*v21)(v17, 1, a2) == 1)
    {
      return (*(v10 + 8))(v17, v9);
    }

    else
    {
      (*(*(*(v39 + 8) + 8) + 16))(v18, a2);
      return (*(v40 + 8))(v17, a2);
    }
  }

  else
  {
    v20(v13, a1, v9, v16);
    if ((*v21)(v13, 1, a2) == 1)
    {
      (*(v10 + 8))(v13, v9);
      type metadata accessor for Proto_Optional._StorageClass();
      inited = swift_initStaticObject();
      swift_beginAccess();
      sub_1AE1B7490(inited);
      return swift_endAccess();
    }

    else
    {
      v24 = v40;
      v25 = v38;
      v26 = (*(v40 + 32))(v38, v13, a2);
      MEMORY[0x1EEE9AC00](v26);
      v27 = v39;
      *(&v37 - 4) = a2;
      *(&v37 - 3) = v27;
      *(&v37 - 2) = v25;
      *(&v37 - 1) = v3;
      v28 = v3;
      v29 = v41;
      v30 = sub_1ADE6B938(sub_1ADE727D4);
      if (!v29)
      {
        v31 = v30;
        swift_beginAccess();
        v32 = *(*(v28 + 24) + 16);
        if ((~v32 & 0xF000000000000007) != 0 && ((v32 >> 59) & 0x1E | (v32 >> 2) & 1) == 8)
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_Optional._StorageClass();
          v33 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Optional._StorageClass();
          v34 = swift_allocObject();
          *(v34 + 16) = 0;
          swift_beginAccess();
          v35 = *(v33 + 16);
          swift_beginAccess();
          *(v34 + 16) = v35;
          v25 = v38;

          v33 = v34;
        }

        swift_beginAccess();
        v36 = *(v33 + 16);
        *(v33 + 16) = v31;

        sub_1AE1B7490(v33);
        swift_endAccess();
      }

      return (*(v24 + 8))(v25, a2);
    }
  }
}

uint64_t sub_1ADE6DC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADF84F64(*(v3 + 16), a1, a2, a3);
  if (!v4)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 24);
    *(v3 + 24) = v6;
  }

  return result;
}

uint64_t sub_1ADE6DC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1ADF8676C(*(v4 + 16), a1, a2, a3, a4);
  if (!v5)
  {
    v7 = result;
    swift_beginAccess();
    v8 = *(v4 + 24);
    *(v4 + 24) = v7;
  }

  return result;
}

uint64_t sub_1ADE6DCDC()
{
  v2 = *(v0 + 16);
  result = sub_1AE045A4C();
  if (!v1)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v0 + 24);
    *(v0 + 24) = v4;
  }

  return result;
}

uint64_t sub_1ADE6DD50(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v3 + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 11)
  {
    inited = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_TaggedValue._StorageClass();
    inited = swift_initStaticObject();
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Proto_TaggedValue._StorageClass();
    swift_allocObject();
    inited = sub_1ADDE5178(inited);
  }

  swift_beginAccess();
  v7 = *(inited + 24);
  *(inited + 24) = v3;

  sub_1AE1B7530(inited);
  v8 = *(*(v1 + 24) + 16);
  if ((~v8 & 0xF000000000000007) != 0 && ((v8 >> 59) & 0x1E | (v8 >> 2) & 1) == 11)
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_TaggedValue._StorageClass();
    v10 = swift_initStaticObject();
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Proto_TaggedValue._StorageClass();
    swift_allocObject();
    v10 = sub_1ADDE5178(v10);
  }

  swift_beginAccess();
  *(v10 + 16) = a1;
  sub_1AE1B7530(v10);
  return swift_endAccess();
}

uint64_t _s9Coherence9CREncoderC13CRDTContainerCfd_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t CREncoder.deinit()
{
  sub_1ADDCC35C(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  v8 = *(v0 + 96);

  v9 = *(v0 + 112);

  v10 = *(v0 + 120);

  return v0;
}

uint64_t CREncoder.__deallocating_deinit()
{
  CREncoder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE6DFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = *(*v4 + 2);
  if (v11)
  {
    v12 = 0;
    v13 = -32;
    while (*&v10[8 * v12 + 32] != a4)
    {
      ++v12;
      v13 -= 8;
      if (v11 == v12)
      {
        goto LABEL_5;
      }
    }

    v26 = v5[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1ADF79A18(v26);
      v26 = result;
    }

    if (v12 >= *(v26 + 16))
    {
      __break(1u);
    }

    else
    {
      result = sub_1ADDFCE90(a1, a2, a3);
      v5[1] = v26;
    }
  }

  else
  {
LABEL_5:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1ADDF69D0(0, v11 + 1, 1, v10);
    }

    v15 = *(v10 + 2);
    v14 = *(v10 + 3);
    if (v15 >= v14 >> 1)
    {
      v10 = sub_1ADDF69D0((v14 > 1), v15 + 1, 1, v10);
    }

    *(v10 + 2) = v15 + 1;
    *&v10[8 * v15 + 32] = a4;
    *v5 = v10;
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = swift_allocObject();
      v18 = *(inited + 16);
      *(v17 + 16) = v18;
      sub_1ADE5215C(v18);

      inited = v17;
    }

    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    *(v19 + 32) = a3;
    v20 = v19 | 0x3000000000000000;
    v21 = *(inited + 16);
    *(inited + 16) = v20;
    sub_1ADE52174(v21);

    MEMORY[0x1B26FB860](v22);
    v23 = v5[1];
    if (*(v23 + 2) >= *(v23 + 3) >> 1)
    {
      v27 = *(v23 + 2);
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    v24 = v5[1];

    v5[1] = v24;
  }

  return result;
}

uint64_t sub_1ADE6E208()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 104);
  v7[4] = *(v0 + 88);
  v7[5] = v2;
  v3 = *(v0 + 136);
  v7[6] = *(v0 + 120);
  v7[7] = v3;
  v4 = *(v0 + 40);
  v7[0] = *(v0 + 24);
  v7[1] = v4;
  v5 = *(v0 + 72);
  v7[2] = *(v0 + 56);
  v7[3] = v5;
  sub_1ADE6AF00(v7);
  return swift_deallocClassInstance();
}

uint64_t sub_1ADE6E71C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1ADE5F10C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1ADE6EA30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1ADE5F5C0(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

size_t sub_1ADE6EF68(size_t a1, int64_t a2, char a3)
{
  result = sub_1ADE0BA68(a1, a2, a3, *v3, &qword_1EB5BA128, &qword_1AE241B48, type metadata accessor for Timestamp);
  *v3 = result;
  return result;
}

size_t sub_1ADE6EFAC(size_t a1, int64_t a2, char a3)
{
  result = sub_1ADE70830(a1, a2, a3, *v3, &qword_1EB5BA298, &qword_1AE2421F8, &qword_1EB5BA2A0, &unk_1AE242200);
  *v3 = result;
  return result;
}

char *sub_1ADE6EFEC(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE6F500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F00C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADDEC34C(a1, a2, a3, *v3, &qword_1EB5BA230, &qword_1AE253C30);
  *v3 = result;
  return result;
}

char *sub_1ADE6F03C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE6F60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F05C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE6F72C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F07C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE6F850(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F09C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE6F95C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADE6F0BC(void *a1, int64_t a2, char a3)
{
  result = sub_1ADE6FA68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1ADE6F0DC(size_t a1, int64_t a2, char a3)
{
  result = sub_1ADE70830(a1, a2, a3, *v3, &qword_1EB5BA268, &unk_1AE2423F0, &qword_1EB5BA270, &unk_1AE253920);
  *v3 = result;
  return result;
}

void *sub_1ADE6F11C(void *a1, int64_t a2, char a3)
{
  result = sub_1ADE6FBB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1ADE6F13C(size_t a1, int64_t a2, char a3)
{
  result = sub_1ADE70830(a1, a2, a3, *v3, &qword_1EB5BA378, &qword_1AE2423A8, &qword_1EB5BA380, &qword_1AE2423B0);
  *v3 = result;
  return result;
}

char *sub_1ADE6F17C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE7018C(a1, a2, a3, *v3, &qword_1EB5BA200, &qword_1AE241BD8);
  *v3 = result;
  return result;
}

size_t sub_1ADE6F1B4(size_t a1, int64_t a2, char a3)
{
  result = sub_1ADE70830(a1, a2, a3, *v3, &qword_1EB5BA398, &qword_1AE2423C8, &qword_1EB5BA3A0, &qword_1AE2423D0);
  *v3 = result;
  return result;
}

size_t sub_1ADE6F1F4(size_t a1, int64_t a2, char a3)
{
  result = sub_1ADE70830(a1, a2, a3, *v3, &qword_1EB5BA3A8, &qword_1AE2423D8, &qword_1EB5BA3B0, &unk_1AE2423E0);
  *v3 = result;
  return result;
}

void *sub_1ADE6F234(void *a1, int64_t a2, char a3)
{
  result = sub_1ADE6FCE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADE6F254(void *a1, int64_t a2, char a3)
{
  result = sub_1ADE70C30(a1, a2, a3, *v3, &qword_1EB5BA2E0, &qword_1AE242270, &qword_1EB5BA2E8, &qword_1AE242278);
  *v3 = result;
  return result;
}

char *sub_1ADE6F294(char *a1, int64_t a2, char a3)
{
  result = sub_1ADDEC34C(a1, a2, a3, *v3, &qword_1EB5BA238, &qword_1AE241C00);
  *v3 = result;
  return result;
}

char *sub_1ADE6F2C4(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE6FE2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F2E4(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE6FF4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F304(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE7018C(a1, a2, a3, *v3, &qword_1EB5BA228, &unk_1AE242280);
  *v3 = result;
  return result;
}

char *sub_1ADE6F33C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE70298(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F35C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE703B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F37C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE704D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADE6F39C(void *a1, int64_t a2, char a3)
{
  result = sub_1ADE705F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F3BC(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE7072C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1ADE6F3DC(size_t a1, int64_t a2, char a3)
{
  result = sub_1ADE70830(a1, a2, a3, *v3, &qword_1EB5BA160, &unk_1AE242300, &qword_1EB5BA168, &unk_1AE25B3D0);
  *v3 = result;
  return result;
}

char *sub_1ADE6F41C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE70A18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADE6F43C(void *a1, int64_t a2, char a3)
{
  result = sub_1ADE70C30(a1, a2, a3, *v3, &qword_1EB5BA308, &qword_1AE2422C0, &qword_1EB5BA310, &qword_1AE2422C8);
  *v3 = result;
  return result;
}

char *sub_1ADE6F47C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE70D78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F49C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADE70E84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADE6F4BC(void *a1, int64_t a2, char a3)
{
  result = sub_1ADE70F88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F500(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA240, &qword_1AE241C08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE6F60C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2C8, &qword_1AE242258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE6F72C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1A0, &qword_1AE241B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE6F850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA288, &qword_1AE241D70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE6F95C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA158, &unk_1AE242220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1ADE6FA68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA320, &qword_1AE2422F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA328, &qword_1AE2422F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1ADE6FBB0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA368, &qword_1AE242398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA370, &qword_1AE2423A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1ADE6FCE4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA388, &qword_1AE2423B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA390, &qword_1AE2423C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE6FE2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2D8, &qword_1AE242268);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE6FF4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1ADE70058(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A8, &unk_1AE251E20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2B0, &unk_1AE242210);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE7018C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1ADE70298(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2B8, &unk_1AE242230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE703B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2D0, &qword_1AE242260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE704D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2C0, &qword_1AE242250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1ADE705F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA330, &qword_1AE242328);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA338, &qword_1AE242330);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE7072C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1C8, &qword_1AE241BB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

size_t sub_1ADE70830(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}