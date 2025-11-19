uint64_t sub_1D432DCD8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D4417494();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D417DAA4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D42D4338();
      goto LABEL_7;
    }

    sub_1D42D10CC(v17, a3 & 1);
    v24 = sub_1D417DAA4(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D42D31C4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D441ADE4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0) - 8) + 72) * v14;

  return sub_1D432FFF4(a1, v22);
}

_OWORD *sub_1D432DECC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D418DA8C(a2, a3);
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
      sub_1D42D4B64();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D42D1568(v16, a4 & 1);
    v11 = sub_1D418DA8C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D441ADE4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1D417CF84(a1, v22);
  }

  else
  {
    sub_1D42D32BC(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1D432E01C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D42D0138(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1D42D4E6C();
      result = v17;
      goto LABEL_8;
    }

    sub_1D42D1820(v14, a3 & 1);
    result = sub_1D42D0138(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      type metadata accessor for __ICDocumentMergeControllingReason(0);
      result = sub_1D441ADE4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_1D4186F2C(result, a2, a1, v19);
  }

  return result;
}

uint64_t sub_1D432E128(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D42D01A4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D42D5298();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D42D1FBC(v14, a3 & 1);
    v9 = sub_1D42D01A4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      _s5IndexCMa();
      result = sub_1D441ADE4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {
    sub_1D42D7578(v9, a2, a1, v19);
  }
}

id sub_1D432E2D4(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(unint64_t, void *, uint64_t, uint64_t))
{
  v10 = v6;
  v13 = *v6;
  v14 = sub_1D42D04F8(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = sub_1D42D04F8(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      sub_1D41766C0(0, &qword_1EDE32768);
      result = sub_1D441ADE4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v10;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {
    a6(v14, a2, a1, v24);

    return a2;
  }
}

uint64_t sub_1D432E440(uint64_t a1)
{
  v3 = sub_1D44196C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v35 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v32 - v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v36 = v8;
    v1 = MEMORY[0x1E69E7CD0];
    v41 = MEMORY[0x1E69E7CD0];
    v38 = sub_1D441A874();
    v11 = sub_1D441A8F4();
    if (v11)
    {
      v12 = v11;
      v37 = _s5IndexCMa();
      v13 = v12;
      v14 = (v4 + 48);
      v33 = (v4 + 8);
      v34 = (v4 + 32);
      do
      {
        v39 = v13;
        swift_dynamicCast();
        sub_1D417CF94(v40 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v10, &unk_1EC7CA3B0);
        v15 = *v14;
        v16 = (*v14)(v10, 1, v3);
        sub_1D41769C4(v10, &unk_1EC7CA3B0);
        v17 = v40;
        if (v16 == 1)
        {
          if (*(v1 + 24) <= *(v1 + 16))
          {
            sub_1D43C7C14();
          }

          v1 = v41;
          sub_1D441AEB4();
          sub_1D441A424();
          v18 = v36;
          sub_1D417CF94(v17 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v36, &unk_1EC7CA3B0);
          if (v15(v18, 1, v3) == 1)
          {
            sub_1D441AED4();
          }

          else
          {
            v19 = v35;
            (*v34)(v35, v18, v3);
            sub_1D441AED4();
            sub_1D4183E58(&qword_1EC7CA4C0, MEMORY[0x1E69782D8]);
            sub_1D4419B94();
            (*v33)(v19, v3);
          }

          result = sub_1D441AF04();
          v21 = v1 + 56;
          v22 = -1 << *(v1 + 32);
          v23 = result & ~v22;
          v24 = v23 >> 6;
          if (((-1 << v23) & ~*(v1 + 56 + 8 * (v23 >> 6))) != 0)
          {
            v25 = __clz(__rbit64((-1 << v23) & ~*(v1 + 56 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = 0;
            v27 = (63 - v22) >> 6;
            do
            {
              if (++v24 == v27 && (v26 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v28 = v24 == v27;
              if (v24 == v27)
              {
                v24 = 0;
              }

              v26 |= v28;
              v29 = *(v21 + 8 * v24);
            }

            while (v29 == -1);
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          }

          *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
          *(*(v1 + 48) + 8 * v25) = v17;
          ++*(v1 + 16);
        }

        else
        {
        }

        v13 = sub_1D441A8F4();
      }

      while (v13);
    }
  }

  else
  {
    v30 = v32[1];
    v31 = sub_1D432F058(a1);
    if (!v30)
    {
      return v31;
    }
  }

  return v1;
}

uint64_t sub_1D432E8A4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x1E69E9840];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1D432EA44(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1D432FF9C(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x1DA6D8690](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_1D432EA44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = 0;
  if (v4)
  {
    v6 = 0;
    v7 = a4 + 56;
    v8 = a3 + 32;
    v9 = ~(-1 << *(a4 + 32));
    while (1)
    {
      v11 = *(v8 + 8 * v6);
      v12 = sub_1D441AEA4();
      v13 = v12 & v9;
      v14 = (v12 & v9) >> 6;
      v15 = 1 << (v12 & v9);
      if ((v15 & *(v7 + 8 * v14)) != 0)
      {
        while (*(*(a4 + 48) + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v9;
          v14 = v13 >> 6;
          v15 = 1 << v13;
          if (((1 << v13) & *(v7 + 8 * (v13 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        v10 = a1[v14];
        a1[v14] = v10 | v15;
        if ((v10 & v15) == 0 && __OFADD__(v5++, 1))
        {
          break;
        }
      }

LABEL_4:
      if (++v6 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

LABEL_12:

  return sub_1D43744D8(a1, a2, v5, a4);
}

void *sub_1D432EB74(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1D432EC7C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D432EC04(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D432F368(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1D432EC7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1D441AEB4();

      sub_1D4419CD4();
      v26 = sub_1D441AF04();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1D441AD84() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1D4373E9C(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1D441AEB4();

      sub_1D4419CD4();
      v39 = sub_1D441AF04();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1D441AD84() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D432F058(uint64_t a1)
{
  v2 = v1;
  v31 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v25 - v6;
  LOBYTE(v6) = *(a1 + 32);
  v8 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = v8;
    v27 = v2;
    v25[1] = v25;
    MEMORY[0x1EEE9AC00](v5);
    v28 = v25 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v9);
    v29 = 0;
    v30 = a1;
    v8 = 0;
    v11 = *(a1 + 56);
    a1 += 56;
    v10 = v11;
    v12 = 1 << *(a1 - 24);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v10;
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v2 = v16 | (v8 << 6);
      sub_1D417CF94(*(*(v30 + 48) + 8 * v2) + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v7, &unk_1EC7CA3B0);
      v19 = sub_1D44196C4();
      v20 = (*(*(v19 - 8) + 48))(v7, 1, v19);
      sub_1D41769C4(v7, &unk_1EC7CA3B0);
      if (v20 == 1)
      {
        *&v28[(v2 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v2;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
          return sub_1D43740C0(v28, v26, v29, v30);
        }
      }
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return sub_1D43740C0(v28, v26, v29, v30);
      }

      v18 = *(a1 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = sub_1D432EC04(v23, v8, a1);

  result = MEMORY[0x1DA6D8690](v23, -1, -1);
  if (!v2)
  {
    return v24;
  }

  return result;
}

uint64_t sub_1D432F368(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v26 = 0;
  v8 = 0;
  v27 = a3;
  v11 = *(a3 + 56);
  v10 = a3 + 56;
  v9 = v11;
  v12 = 1 << *(v10 - 24);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v8 << 6);
    sub_1D417CF94(*(*(v27 + 48) + 8 * v19) + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v7, &unk_1EC7CA3B0);
    v20 = sub_1D44196C4();
    v21 = (*(*(v20 - 8) + 48))(v7, 1, v20);
    result = sub_1D41769C4(v7, &unk_1EC7CA3B0);
    if (v21 == 1)
    {
      *(v25 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_15:
        v23 = v27;

        return sub_1D43740C0(v25, v24, v26, v23);
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_15;
    }

    v18 = *(v10 + 8 * v8);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D432F628(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = *(sub_1D4419654() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D432A72C(a1, a2, a3, a4, v4 + v10, v11);
}

uint64_t sub_1D432F6F4(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  v7 = *(a1 + 16);

  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = *(a1 + 32);
  if (a2 >> 62)
  {
    if (!sub_1D441A8C4())
    {
      goto LABEL_22;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1DA6D6410](0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v39 = *(a2 + 32);
  }

  v9 = *a4;
  v11 = sub_1D42D03E0(v8);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if (a3)
    {
      v18 = *a4;
      if ((v10 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1D42D513C();
      v18 = *a4;
      if ((v15 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_14:
    *(v18[7] + 8 * v11) = v39;

    v19 = v7 - 1;
    if (v7 != 1)
    {
      goto LABEL_23;
    }

LABEL_22:
  }

  sub_1D42D1D4C(v14, a3 & 1);
  v16 = sub_1D42D03E0(v8);
  if ((v15 & 1) == (v17 & 1))
  {
    v11 = v16;
    v18 = *a4;
    if ((v15 & 1) == 0)
    {
LABEL_20:
      v18[(v11 >> 6) + 8] |= 1 << v11;
      *(v18[6] + 8 * v11) = v8;
      *(v18[7] + 8 * v11) = v39;
      v20 = v18[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (!v21)
      {
        v18[2] = v22;
        v19 = v7 - 1;
        if (v7 == 1)
        {
          goto LABEL_22;
        }

LABEL_23:
        v24 = 5;
        while (1)
        {
          v25 = *(a1 + 8 * v24);
          v26 = a2 >> 62 ? sub_1D441A8C4() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24 - 4 == v26)
          {
            goto LABEL_22;
          }

          if ((a2 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x1DA6D6410]();
          }

          else
          {
            if ((v24 - 4) >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_41;
            }

            v27 = *(a2 + 8 * v24);
          }

          v28 = *a4;
          v29 = sub_1D42D03E0(v25);
          v31 = v28[2];
          v32 = (v30 & 1) == 0;
          v21 = __OFADD__(v31, v32);
          v33 = v31 + v32;
          if (v21)
          {
            goto LABEL_40;
          }

          v34 = v30;
          if (v28[3] < v33)
          {
            sub_1D42D1D4C(v33, 1);
            v29 = sub_1D42D03E0(v25);
            if ((v34 & 1) != (v35 & 1))
            {
              goto LABEL_43;
            }
          }

          v36 = *a4;
          if (v34)
          {
            *(v36[7] + 8 * v29) = v27;
          }

          else
          {
            v36[(v29 >> 6) + 8] |= 1 << v29;
            *(v36[6] + 8 * v29) = v25;
            *(v36[7] + 8 * v29) = v27;
            v37 = v36[2];
            v21 = __OFADD__(v37, 1);
            v38 = v37 + 1;
            if (v21)
            {
              goto LABEL_42;
            }

            v36[2] = v38;
          }

          ++v24;
          if (!--v19)
          {
            goto LABEL_22;
          }
        }
      }

      goto LABEL_42;
    }

    goto LABEL_14;
  }

LABEL_43:
  result = sub_1D441ADE4();
  __break(1u);
  return result;
}

uint64_t sub_1D432FA18(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = *(a1 + 16);

  v37 = v7;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v36 = a2;
    do
    {
      v12 = *(a2 + 16);
      if (v9 == v12)
      {
        break;
      }

      if (v9 >= v12)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        result = sub_1D441ADE4();
        __break(1u);
        return result;
      }

      v38 = v8;
      v13 = *(a2 + v8 + 32);
      v41 = *(a2 + v8 + 40);
      v42 = *(a2 + v8 + 48);
      v39 = *(a1 + 32 + 8 * v9);
      v40 = *(a2 + v8 + 56);
      v14 = *(a2 + v8 + 64);
      v15 = a4;
      v16 = *a4;
      v17 = sub_1D42D03E0(v39);
      v19 = v16[2];
      v20 = (v18 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_18;
      }

      v22 = v17;
      v23 = v18;
      v24 = v16[3];
      v25 = v13;

      if (v24 >= v21)
      {
        a4 = v15;
        if ((a3 & 1) == 0)
        {
          sub_1D42D4FB8();
        }
      }

      else
      {
        v26 = v21;
        a4 = v15;
        sub_1D42D1AA0(v26, a3 & 1);
        v27 = sub_1D42D03E0(v39);
        if ((v23 & 1) != (v28 & 1))
        {
          goto LABEL_20;
        }

        v22 = v27;
      }

      v29 = *a4;
      if (v23)
      {
        v10 = v29[7] + 40 * v22;
        v11 = *v10;
        *v10 = v25;
        *(v10 + 8) = v41;
        *(v10 + 16) = v42;
        *(v10 + 24) = v40;
        *(v10 + 32) = v14;
      }

      else
      {
        v29[(v22 >> 6) + 8] |= 1 << v22;
        *(v29[6] + 8 * v22) = v39;
        v30 = (v29[7] + 40 * v22);
        *v30 = v25;
        v30[1] = v41;
        v30[2] = v42;
        v30[3] = v40;
        v30[4] = v14;
        v31 = v29[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_19;
        }

        v29[2] = v33;
      }

      ++v9;
      v8 = v38 + 40;
      a3 = 1;
      a2 = v36;
    }

    while (v37 != v9);
  }
}

void sub_1D432FC40(char a1, unsigned __int8 *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = a2[OBJC_IVAR___ICCalculateDocumentController_needsDocumentUpdate];
  _Block_copy(a3);
  if (v7 == 1)
  {
    [a2 cancelUpdate];
    sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = a1 & 1;
    *(v9 + 32) = sub_1D432FE28;
    *(v9 + 40) = v6;

    v10 = sub_1D4307894(0, 0, 1, sub_1D43300BC, v9);

    v11 = *&a2[OBJC_IVAR___ICCalculateDocumentController_currentScanRequest];
    *&a2[OBJC_IVAR___ICCalculateDocumentController_currentScanRequest] = v10;
  }

  else
  {
    a3[2](a3, 0);
  }
}

uint64_t objectdestroy_7Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1D432FEB0()
{
  v0 = sub_1D4419874();
}

uint64_t objectdestroy_27Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D432FF9C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D432EA44(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D432FFF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4330064@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D4183B0C(a1, a2, *(*(v3 + 16) + 8), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void *ActivityStream.Updater.__allocating_init(resolver:selection:pressedItem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *ActivityStream.Updater.init(resolver:selection:pressedItem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_1D4330174()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA710);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA718);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = *(*(v0 + 16) + OBJC_IVAR___ActivityEventResolver_object);
  if (v12 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    swift_getKeyPath();
    v13 = v12;
    sub_1D4417164();

    sub_1D417645C(&unk_1EDE323E8, &qword_1EC7CA718);
    v14 = sub_1D4418394();

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v15 = sub_1D4417434();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    sub_1D4418304();
    sub_1D417645C(&unk_1EC7CA720, &qword_1EC7CA710);
    v14 = sub_1D4418394();
    (*(v5 + 8))(v7, v4);
  }

  return v14;
}

uint64_t sub_1D4330488@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 recentUpdatesGenerationDate];
  if (v3)
  {
    v4 = v3;
    sub_1D44173F4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D4417434();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1D433052C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1D417CF94(a1, &v11 - v5, &qword_1EC7C98F0);
  v7 = *a2;
  v8 = sub_1D4417434();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1D44173A4();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setRecentUpdatesGenerationDate_];
}

uint64_t ActivityStream.Updater.activityDigestSummary.getter()
{
  v0 = sub_1D441A754();
  v18 = *(v0 - 8);
  v19 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA528);
  v23 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v17 = &v16 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA530);
  v5 = *(v4 - 8);
  v21 = v4;
  v22 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v25 = sub_1D4330174();
  sub_1D441A744();
  v8 = [objc_opt_self() mainRunLoop];
  v24 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA538);
  sub_1D41766C0(0, &qword_1EDE323B0);
  sub_1D417645C(&qword_1EDE336E0, &qword_1EC7CA538);
  sub_1D4333044(&qword_1EDE323B8, &qword_1EDE323B0);
  v9 = v17;
  sub_1D4418454();

  (*(v18 + 8))(v2, v19);

  v10 = *(v16 + 16);
  *(swift_allocObject() + 16) = v10;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA540);
  sub_1D417645C(&qword_1EDE336F8, &qword_1EC7CA528);
  v12 = v20;
  sub_1D44183C4();

  (*(v23 + 8))(v9, v12);
  sub_1D417645C(&qword_1EDE33790, &qword_1EC7CA530);
  v13 = v21;
  v14 = sub_1D4418394();
  (*(v22 + 8))(v7, v13);
  return v14;
}

uint64_t sub_1D4330A78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1D441A4E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR___ActivityEventResolver_object);
  if (v8)
  {
    v9 = [v8 managedObjectContext];
    if (v9)
    {

      sub_1D41766C0(0, &qword_1EC7CA708);
      v10 = v8;
      v11 = sub_1D4380CDC(v10);

      v15 = [v11 objc_recentUpdatesFilter];
      if (v15)
      {
        v16 = v15;
        (*(v5 + 104))(v7, *MEMORY[0x1E69B7388], v4);
        sub_1D441A514();

        return (*(v5 + 8))(v7, v4);
      }
    }
  }

  v12 = sub_1D441A504();
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, 1, 1, v12);
}

uint64_t sub_1D4330C9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA698);
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v52 = &v40 - v2;
  v3 = sub_1D441A754();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA6A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA6A8);
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA6B0);
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA6B8);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v40 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA6C0);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v40 - v17;
  v18 = OBJC_IVAR___ActivityEventResolver_object;
  v55 = *(v0 + 16);
  v19 = *&v55[OBJC_IVAR___ActivityEventResolver_object];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1D441A464();
  }

  else
  {
    sub_1D4418314();
    sub_1D417645C(&qword_1EC7CA6C8, &qword_1EC7CA6A0);
    v21 = sub_1D4418394();
    (*(v7 + 8))(v9, v6);
  }

  v57 = v21;
  v22 = *&v55[v18];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1D441A494();
  }

  else
  {
    sub_1D4418314();
    sub_1D417645C(&qword_1EC7CA6C8, &qword_1EC7CA6A0);
    v24 = sub_1D4418394();
    (*(v7 + 8))(v9, v6);
  }

  v56 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA6D0);
  sub_1D417645C(&qword_1EDE336D8, &qword_1EC7CA6D0);
  sub_1D4418264();
  sub_1D441A744();
  v25 = [objc_opt_self() mainRunLoop];
  v57 = v25;
  sub_1D41766C0(0, &qword_1EDE323B0);
  sub_1D417645C(&qword_1EC7CA6D8, &qword_1EC7CA6A8);
  sub_1D4333044(&qword_1EDE323B8, &qword_1EDE323B0);
  v26 = v41;
  sub_1D4418454();

  (*(v44 + 8))(v5, v45);
  (*(v40 + 8))(v12, v26);
  v27 = v52;
  sub_1D4418304();
  sub_1D417645C(&qword_1EC7CA6E0, &qword_1EC7CA6B0);
  sub_1D417645C(&qword_1EC7CA6E8, &qword_1EC7CA698);
  v28 = v46;
  v29 = v43;
  v30 = v54;
  sub_1D44183F4();
  (*(v53 + 8))(v27, v30);
  (*(v42 + 8))(v15, v29);
  v31 = swift_allocObject();
  v32 = v55;
  *(v31 + 16) = v55;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1D433316C;
  *(v33 + 24) = v31;
  v34 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA6F0);
  sub_1D417645C(&qword_1EC7CA6F8, &qword_1EC7CA6B8);
  v35 = v47;
  v36 = v50;
  sub_1D44183C4();

  (*(v48 + 8))(v28, v36);
  sub_1D417645C(&qword_1EC7CA700, &qword_1EC7CA6C0);
  v37 = v51;
  v38 = sub_1D4418394();
  (*(v49 + 8))(v35, v37);
  return v38;
}

uint64_t sub_1D4331570(uint64_t a1)
{
  if (!*(a1 + OBJC_IVAR___ActivityEventResolver_object))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1D441A454();
  v2 = sub_1D441A484();
  sub_1D42EFCC4(v2);
  return v1;
}

uint64_t sub_1D43315D0()
{
  v1 = v0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA648);
  v2 = MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v2);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA650);
  MEMORY[0x1EEE9AC00](v32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA658);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA660);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA668);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v13 = *(*(v1 + 16) + OBJC_IVAR___ActivityEventResolver_object);
  if (!v13)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = objc_opt_self();
    v15 = v13;
    v16 = sub_1D4419C14();
    v17 = [v14 localizedFrameworkStringForKey:v16 value:0 table:0 allowSiri:{1, v32}];

    v18 = sub_1D4419C54();
    v20 = v19;

    v38 = v18;
    v39 = v20;
    v40 = 0;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D4418304();
    sub_1D417645C(&qword_1EC7CA670, &qword_1EC7CA668);
    v21 = sub_1D4418394();

LABEL_7:
    (*(v10 + 8))(v12, v9);
    return v21;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_6:
    v25 = objc_opt_self();
    v26 = sub_1D4419C14();
    v27 = [v25 localizedFrameworkStringForKey:v26 value:0 table:0 allowSiri:{1, v32}];

    v28 = sub_1D4419C54();
    v30 = v29;

    v38 = v28;
    v39 = v30;
    v40 = 0;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D4418304();
    sub_1D417645C(&qword_1EC7CA670, &qword_1EC7CA668);
    v21 = sub_1D4418394();
    goto LABEL_7;
  }

  swift_getKeyPath();
  v22 = v13;
  sub_1D4417164();

  swift_getKeyPath();
  sub_1D4417164();

  swift_getKeyPath();
  sub_1D4417164();

  sub_1D417645C(&qword_1EC7CA678, &qword_1EC7CA650);
  sub_1D417645C(&qword_1EC7CA680, &qword_1EC7CA648);
  sub_1D4418224();
  sub_1D417645C(&qword_1EC7CA688, &qword_1EC7CA658);
  v23 = v34;
  sub_1D44183C4();
  (*(v33 + 8))(v5, v23);
  sub_1D417645C(&qword_1EC7CA690, &qword_1EC7CA660);
  v24 = v36;
  v21 = sub_1D4418394();

  (*(v35 + 8))(v8, v24);
  return v21;
}

uint64_t sub_1D4331C8C(void *a1)
{
  if (a1)
  {
    [a1 isInICloudAccount];
  }

  v1 = objc_opt_self();
  v2 = sub_1D4419C14();
  v3 = [v1 localizedFrameworkStringForKey:v2 value:0 table:0 allowSiri:1];

  v4 = sub_1D4419C54();
  return v4;
}

uint64_t sub_1D4331DDC@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D4331C8C(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1D4331E20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA5A0);
  v2 = *(v1 - 8);
  v58 = v1;
  v59 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v53 = v35 - v3;
  v4 = sub_1D441A2A4();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA5A8);
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA5B0);
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v40 = v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA5B8);
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v44 = v35 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA5C0);
  v57 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v47 = v35 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA5C8);
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v48 = v35 - v14;
  v15 = *(v0 + 32);
  v38 = *(v0 + 24);
  v62 = v15;
  v63 = v38;
  v37 = v15;
  swift_retain_n();
  swift_retain_n();
  v36 = v0;
  v61 = sub_1D43315D0();
  v60 = sub_1D4330174();
  v35[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA5D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA5D8);
  v35[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA5E0);
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA538);
  v35[6] = sub_1D417645C(&qword_1EC7CA5E8, &qword_1EC7CA5D0);
  v35[2] = sub_1D417645C(&qword_1EC7CA5F0, &qword_1EC7CA5D8);
  v35[1] = sub_1D417645C(&qword_1EC7CA5F8, &qword_1EC7CA5E0);
  sub_1D417645C(&qword_1EDE336E0, &qword_1EC7CA538);
  v16 = v39;
  sub_1D4418234();
  v17 = v41;
  sub_1D441A284();
  sub_1D41766C0(0, &qword_1EDE33D70);
  v18 = sub_1D441A2C4();
  v63 = v18;
  sub_1D417645C(&qword_1EC7CA600, &qword_1EC7CA5A8);
  sub_1D4333044(&unk_1EDE32750, &qword_1EDE33D70);
  v19 = v40;
  v20 = v42;
  sub_1D4418454();

  (*(v45 + 8))(v17, v46);
  v21 = *(v43 + 8);
  v21(v16, v20);
  v62 = v37;
  v63 = v38;
  v61 = sub_1D43315D0();
  v60 = sub_1D4330174();
  v22 = v16;
  sub_1D4418234();
  v23 = v53;
  sub_1D44183E4();
  v21(v22, v20);
  sub_1D417645C(&qword_1EC7CA608, &qword_1EC7CA5B0);
  sub_1D417645C(&qword_1EC7CA610, &qword_1EC7CA5A0);
  v24 = v44;
  v25 = v23;
  v26 = v49;
  v27 = v58;
  sub_1D44183F4();
  (*(v59 + 8))(v25, v27);
  (*(v50 + 8))(v19, v26);
  type metadata accessor for ActivityStream.State();
  sub_1D417645C(&qword_1EC7CA618, &qword_1EC7CA5B8);
  v28 = v47;
  v29 = v51;
  sub_1D44183C4();
  (*(v52 + 8))(v24, v29);
  sub_1D417645C(&qword_1EC7CA620, &qword_1EC7CA5C0);
  sub_1D4333088();
  v30 = v48;
  v31 = v55;
  sub_1D4418464();
  (*(v57 + 8))(v28, v31);
  sub_1D417645C(&qword_1EC7CA630, &qword_1EC7CA5C8);
  v32 = v54;
  v33 = sub_1D4418394();
  (*(v56 + 8))(v30, v32);
  return v33;
}

uint64_t sub_1D43327BC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA638);
  v6 = v5[12];
  v7 = a1 + v5[16];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = v7[16];
  v11 = *(v7 + 3);
  v12 = v5[20];
  v13 = type metadata accessor for ActivityStream.State();
  sub_1D417CF94(a1 + v6, a2 + v13[5], &qword_1EC7CA640);
  sub_1D417CF94(a1 + v12, a2 + v13[7], &qword_1EC7C98F0);
  *a2 = v4;
  v14 = a2 + v13[6];
  *v14 = v8;
  *(v14 + 1) = v9;
  v14[16] = v10;
  *(v14 + 3) = v11;
  v15 = v4;
  sub_1D430E574(v8, v9, v10);
}

uint64_t ActivityStream.Updater.activityStream.getter()
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA548);
  MEMORY[0x1EEE9AC00](v16);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA550);
  v2 = *(v1 - 8);
  v19 = v1;
  v20 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA558);
  v6 = *(v5 - 8);
  v17 = v5;
  v18 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v21 = sub_1D4330C9C();
  v9 = *(v0 + 16);
  *(swift_allocObject() + 16) = v9;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA560);
  type metadata accessor for ActivityStream(0);
  sub_1D417645C(&qword_1EC7CA568, &qword_1EC7CA560);
  sub_1D44183C4();

  v21 = sub_1D4331E20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA570);
  sub_1D417645C(&qword_1EC7CA578, &qword_1EC7CA548);
  sub_1D417645C(&qword_1EC7CA580, &qword_1EC7CA570);
  sub_1D4418214();
  sub_1D417645C(&qword_1EC7CA588, &qword_1EC7CA550);
  v11 = v19;
  sub_1D44183C4();
  (*(v20 + 8))(v4, v11);
  sub_1D417645C(&qword_1EC7CA590, &qword_1EC7CA558);
  v12 = v17;
  v13 = sub_1D4418394();
  (*(v18 + 8))(v8, v12);
  return v13;
}

uint64_t sub_1D4332C90@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D4417434();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D4332D4C(*a1);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = a2;
  sub_1D4417404();
  return ActivityStream.init(items:resolver:now:)(v10, v11, v8, a3);
}

uint64_t sub_1D4332D4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D43CF254(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_1D42D73C8(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B48);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1D419FAA8(v8, v11);
      sub_1D419FAA8(v11, v10);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D43CF254((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_1D419FAA8(v10, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1D4333104(v8);
    return 0;
  }

  return v3;
}

void sub_1D4332EC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA598) + 48);
  sub_1D4332FE0(a1, a2);
  ActivityStream.apply(state:)((a1 + v4));
}

uint64_t ActivityStream.Updater.deinit()
{

  return v0;
}

uint64_t ActivityStream.Updater.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D4332FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStream(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4333044(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D41766C0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D4333088()
{
  result = qword_1EC7CA628;
  if (!qword_1EC7CA628)
  {
    type metadata accessor for ActivityStream.State();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA628);
  }

  return result;
}

uint64_t sub_1D4333104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4333174@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1D433323C(void *a1)
{
  v3 = *(v1 + qword_1EDE336A0);
  v7[3] = sub_1D43336C8();
  v7[0] = a1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xB8);
  v5 = a1;
  v4(v7);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void sub_1D43332CC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D433323C(v4);
}

void sub_1D4333374(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1D4333668();
}

void sub_1D43333E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1D4333698();
}

id sub_1D433347C(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[qword_1EDE33698] = 1;
  *&v1[qword_1EDE336A0] = a1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v11, sel_initWithRootViewController_, a1);
  v5 = objc_opt_self();
  v6 = v4;
  if ([v5 ic_isVision])
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v6 setModalPresentationStyle_];
  v8 = [v6 presentationController];
  if (v8)
  {
    v9 = v8;
    [v8 setDelegate_];
  }

  [v6 setPreferredContentSize_];

  return v6;
}

void sub_1D43335CC()
{
  *(v0 + qword_1EDE33698) = 1;
  sub_1D441ABC4();
  __break(1u);
}

unint64_t sub_1D43336C8()
{
  result = qword_1EC7CA730;
  if (!qword_1EC7CA730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7CA730);
  }

  return result;
}

id static UIFont.preferredRoundedFont(forTextStyle:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle_];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithDesign_];

  if (!v5)
  {
    return v3;
  }

  v6 = [v2 fontWithDescriptor:v5 size:0.0];

  return v6;
}

UIFont __swiftcall UIFont.withRoundedDesign()()
{
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithDesign_];

  if (v2)
  {
    v3 = [objc_opt_self() fontWithDescriptor:v2 size:0.0];

    return v3;
  }

  else
  {

    return v5;
  }
}

id static UIFont.roundedBodyFont.getter()
{
  v0 = *MEMORY[0x1E69DDCF8];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle_];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithDesign_];

  if (!v4)
  {
    return v2;
  }

  v5 = [v1 fontWithDescriptor:v4 size:0.0];

  return v5;
}

UIFont __swiftcall UIFont.withBoldTrait()()
{
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithSymbolicTraits_];

  if (v2)
  {
    v3 = [objc_opt_self() fontWithDescriptor:v2 size:0.0];

    return v3;
  }

  else
  {

    return v5;
  }
}

UIFont __swiftcall UIFont.withTraits(_:)(UIFontDescriptorSymbolicTraits a1)
{
  v2 = *&a1;
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    return v5;
  }

  else
  {

    return v7;
  }
}

uint64_t sub_1D4333B08()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7CA740);
  __swift_project_value_buffer(v0, qword_1EC7CA740);
  return sub_1D4418144();
}

uint64_t LinkSuggestionsContainer.queryString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LinkSuggestionsContainer.dateStarted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LinkSuggestionsContainer() + 36);
  v4 = sub_1D4417434();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LinkSuggestionsContainer.dateFinished.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LinkSuggestionsContainer() + 40);
  v4 = sub_1D4417434();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LinkSuggestionsContainer.allSuggestions.getter()
{
  v3 = *v0;

  sub_1D42EFCEC(v1);
  return v3;
}

uint64_t sub_1D4333CE0()
{
  v0 = type metadata accessor for LinkSuggestionsContainer();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  v9 = sub_1D4417434();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  __swift_allocate_value_buffer(v0, qword_1EC7CA758);
  v16 = __swift_project_value_buffer(v0, qword_1EC7CA758);
  sub_1D4417424();
  sub_1D4417424();
  (*(v10 + 56))(v8, 0, 1, v9);
  v17 = MEMORY[0x1E69E7CC0];
  *v2 = MEMORY[0x1E69E7CC0];
  *(v2 + 1) = v17;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 16) = 0;
  (*(v10 + 16))(&v2[*(v0 + 36)], v15, v9);
  sub_1D417CF94(v8, v6, &qword_1EC7C98F0);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_1D41769C4(v6, &qword_1EC7C98F0);
    sub_1D4417424();
    sub_1D41769C4(v8, &qword_1EC7C98F0);
    (*(v10 + 8))(v15, v9);
  }

  else
  {
    sub_1D41769C4(v8, &qword_1EC7C98F0);
    (*(v10 + 8))(v15, v9);
    v18 = *(v10 + 32);
    v18(v13, v6, v9);
    v18(&v2[*(v0 + 40)], v13, v9);
  }

  return sub_1D4337C08(v2, v16);
}

uint64_t LinkSuggestionsContainer.init(noteSuggestions:websiteSuggestions:queryString:isMostRecentQuery:wasCancelled:dateStarted:dateFinished:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a8;
  v29 = a7;
  v30 = a6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - v16;
  v18 = sub_1D4417434();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v23 = v28;
  v22 = v29;
  *(a9 + 32) = a5;
  *(a9 + 33) = v30;
  v24 = type metadata accessor for LinkSuggestionsContainer();
  (*(v19 + 16))(a9 + *(v24 + 36), v22, v18);
  sub_1D417CF94(v23, v17, &qword_1EC7C98F0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1D41769C4(v17, &qword_1EC7C98F0);
    sub_1D4417424();
    sub_1D41769C4(v23, &qword_1EC7C98F0);
    return (*(v19 + 8))(v22, v18);
  }

  else
  {
    sub_1D41769C4(v23, &qword_1EC7C98F0);
    (*(v19 + 8))(v22, v18);
    v26 = *(v19 + 32);
    v26(v21, v17, v18);
    return (v26)(a9 + *(v24 + 40), v21, v18);
  }
}

uint64_t sub_1D43342AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkSuggestionsContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4334334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkSuggestionsContainer();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4334398(uint64_t a1)
{
  v2 = type metadata accessor for LinkSuggestionsContainer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static LinkSuggestionsContainer.empty.modify())()
{
  if (qword_1EC7C9198 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LinkSuggestionsContainer();
  __swift_project_value_buffer(v0, qword_1EC7CA758);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D4334488()
{
  v0 = type metadata accessor for LinkSuggestionsContainer();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  v9 = sub_1D4417434();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  __swift_allocate_value_buffer(v0, qword_1EC7CA770);
  v16 = __swift_project_value_buffer(v0, qword_1EC7CA770);
  sub_1D4417424();
  sub_1D4417424();
  (*(v10 + 56))(v8, 0, 1, v9);
  v17 = MEMORY[0x1E69E7CC0];
  *v2 = MEMORY[0x1E69E7CC0];
  *(v2 + 1) = v17;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 16) = 256;
  (*(v10 + 16))(&v2[*(v0 + 36)], v15, v9);
  sub_1D417CF94(v8, v6, &qword_1EC7C98F0);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_1D41769C4(v6, &qword_1EC7C98F0);
    sub_1D4417424();
    sub_1D41769C4(v8, &qword_1EC7C98F0);
    (*(v10 + 8))(v15, v9);
  }

  else
  {
    sub_1D41769C4(v8, &qword_1EC7C98F0);
    (*(v10 + 8))(v15, v9);
    v18 = *(v10 + 32);
    v18(v13, v6, v9);
    v18(&v2[*(v0 + 40)], v13, v9);
  }

  return sub_1D4337C08(v2, v16);
}

uint64_t sub_1D43347E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for LinkSuggestionsContainer();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return sub_1D43342AC(v6, a3);
}

uint64_t sub_1D4334878(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for LinkSuggestionsContainer();
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  sub_1D4334334(a1, v6);
  swift_endAccess();
  return sub_1D4334398(a1);
}

uint64_t (*static LinkSuggestionsContainer.cancelled.modify())()
{
  if (qword_1EC7C91A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LinkSuggestionsContainer();
  __swift_project_value_buffer(v0, qword_1EC7CA770);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D4334994@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for LinkSuggestionsContainer();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return sub_1D43342AC(v6, a3);
}

uint64_t sub_1D4334A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for LinkSuggestionsContainer();
  v9 = __swift_project_value_buffer(v8, a6);
  swift_beginAccess();
  sub_1D4334334(a1, v9);
  return swift_endAccess();
}

uint64_t LinkSuggestionsContainer.autoCompleteSuggestionItems.getter()
{
  v1 = sub_1D4417884();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v0;

  sub_1D42EFCEC(v5);
  v6 = v16;
  v7 = *(v16 + 16);
  if (v7)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D441AAB4();
    v9 = v2 + 16;
    v8 = *(v2 + 16);
    v14[1] = v6;
    v15 = v8;
    v10 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v9 + 56);
    v12 = (v9 - 8);
    do
    {
      v15(v4, v10, v1);
      sub_1D4417834();
      (*v12)(v4, v1);
      sub_1D441AA94();
      sub_1D441AAC4();
      sub_1D441AAD4();
      sub_1D441AAA4();
      v10 += v11;
      --v7;
    }

    while (v7);

    return v16;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t static LinkSuggestionProvider.suggestions(matchingQuery:managedObjectContext:currentNoteIdentifier:excludeCurrentNote:includeNotes:includeWebsites:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 586) = v16;
  *(v8 + 585) = a8;
  *(v8 + 584) = a7;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 232) = a3;
  *(v8 + 240) = a4;
  *(v8 + 216) = a1;
  *(v8 + 224) = a2;
  *(v8 + 264) = type metadata accessor for LinkSuggestionsContainer();
  *(v8 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v9 = sub_1D4418034();
  *(v8 + 296) = v9;
  *(v8 + 304) = *(v9 - 8);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  v10 = sub_1D4417884();
  *(v8 + 336) = v10;
  *(v8 + 344) = *(v10 - 8);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  v11 = sub_1D4417234();
  *(v8 + 384) = v11;
  *(v8 + 392) = *(v11 - 8);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA788);
  *(v8 + 424) = swift_task_alloc();
  v12 = sub_1D4416EF4();
  *(v8 + 432) = v12;
  *(v8 + 440) = *(v12 - 8);
  *(v8 + 448) = swift_task_alloc();
  v13 = sub_1D4417434();
  *(v8 + 456) = v13;
  *(v8 + 464) = *(v13 - 8);
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4334FD0, 0, 0);
}

uint64_t sub_1D4334FD0()
{
  v1 = *(v0 + 232);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 224) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = *(v0 + 240);
    sub_1D4417424();
    if (v3)
    {
      v4 = *(v0 + 240);
      v5 = v4;
LABEL_7:
      *(v0 + 496) = v5;
      v6 = *(v0 + 586);
      v7 = MEMORY[0x1E69E7CC0];
      *(v0 + 184) = MEMORY[0x1E69E7CC0];
      v8 = v4;
      if (v6 == 1 && (ICInternalSettingsIsSpotlightInstantAnswersEnabled() & 1) == 0)
      {
        v9 = *(v0 + 432);
        v10 = *(v0 + 440);
        v11 = *(v0 + 424);
        sub_1D4416ED4();
        if ((*(v10 + 48))(v11, 1, v9) == 1)
        {
          v12 = *(v0 + 424);
          v13 = &unk_1EC7CA788;
        }

        else
        {
          (*(*(v0 + 440) + 32))(*(v0 + 448), *(v0 + 424), *(v0 + 432));
          sub_1D4416EB4();
          if (v23)
          {
          }

          else
          {
            sub_1D4416EC4();
          }

          v24 = *(v0 + 384);
          v25 = *(v0 + 392);
          v26 = *(v0 + 376);
          sub_1D4416EA4();
          if ((*(v25 + 48))(v26, 1, v24) != 1)
          {
            v28 = *(v0 + 408);
            v29 = *(v0 + 416);
            v30 = *(v0 + 384);
            v31 = *(v0 + 392);
            (*(v31 + 32))(v29, *(v0 + 376), v30);
            (*(v31 + 16))(v28, v29, v30);
            sub_1D4417844();
            v7 = sub_1D438D5A0(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v33 = v7[2];
            v32 = v7[3];
            if (v33 >= v32 >> 1)
            {
              v7 = sub_1D438D5A0(v32 > 1, v33 + 1, 1, v7);
            }

            v35 = *(v0 + 440);
            v34 = *(v0 + 448);
            v36 = *(v0 + 432);
            v37 = *(v0 + 360);
            v38 = *(v0 + 336);
            v39 = *(v0 + 344);
            (*(*(v0 + 392) + 8))(*(v0 + 416), *(v0 + 384));
            (*(v35 + 8))(v34, v36);
            v7[2] = v33 + 1;
            (*(v39 + 32))(v7 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33, v37, v38);
            goto LABEL_30;
          }

          v27 = *(v0 + 376);
          (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
          v13 = &qword_1EC7C9908;
          v12 = v27;
        }

        sub_1D41769C4(v12, v13);
        v7 = MEMORY[0x1E69E7CC0];
      }

LABEL_30:
      *(v0 + 504) = v7;
      v40 = *(v0 + 586);
      v41 = *(v0 + 585);
      v42 = objc_allocWithZone(MEMORY[0x1E69B77C0]);
      v43 = sub_1D4419C14();
      v44 = [v42 initWithQueryString:v43 includeNotes:v41 includeWebsites:v40];
      *(v0 + 512) = v44;

      sub_1D41766C0(0, &qword_1EC7CA790);
      v45 = swift_task_alloc();
      *(v0 + 520) = v45;
      *v45 = v0;
      v45[1] = sub_1D4335680;

      return MEMORY[0x1EEE233E8](v44);
    }

    v17 = [objc_opt_self() sharedContext];
    if (v17)
    {
      v18 = v17;
      v5 = [v17 managedObjectContext];

      if (v5)
      {
        v4 = *(v0 + 240);
        goto LABEL_7;
      }
    }

    v19 = *(v0 + 488);
    v20 = *(v0 + 456);
    v21 = *(v0 + 464);
    type metadata accessor for ICError(0);
    *(v0 + 176) = 225;
    sub_1D42EA814(MEMORY[0x1E69E7CC0]);
    sub_1D4337BB0();
    sub_1D44170E4();
    swift_willThrow();
    (*(v21 + 8))(v19, v20);

    v16 = *(v0 + 8);
  }

  else
  {
    if (qword_1EC7C9198 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 216);
    v15 = __swift_project_value_buffer(*(v0 + 264), qword_1EC7CA758);
    swift_beginAccess();
    sub_1D43342AC(v15, v14);

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_1D4335680(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {

    v4 = sub_1D4336B4C;
  }

  else
  {
    v4 = sub_1D43357A0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D43357A0()
{
  v1 = [*(v0 + 512) wasForceStopped];
  v2 = *(v0 + 528);
  if (v1)
  {

    if (qword_1EC7C91A0 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_3;
  }

  v10 = objc_opt_self();
  v11 = [v10 noteSpotlightType];
  sub_1D4417FF4();

  if (!(v2 >> 62))
  {
    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_49:

    v59 = *(v0 + 504);
    v58 = MEMORY[0x1E69E7CC0];
LABEL_50:
    *(v0 + 552) = v58;
    *(v0 + 544) = v59;
    if (!*(v58 + 2))
    {

      v71 = *(v0 + 480);
      v72 = *(v0 + 456);
      v73 = *(v0 + 464);
      v74 = *(v0 + 288);
      v75 = *(v0 + 272);
      v129 = *(v0 + 264);
      v134 = *(v0 + 280);
      v76 = *(v0 + 232);
      v124 = *(v0 + 224);
      v77 = *(v0 + 184);
      v78 = *(v73 + 16);
      v78(v71, *(v0 + 488), v72);
      (*(v73 + 56))(v74, 1, 1, v72);
      v79 = MEMORY[0x1E69E7CC0];
      *v75 = v77;
      *(v75 + 8) = v79;
      *(v75 + 16) = v124;
      *(v75 + 24) = v76;
      *(v75 + 32) = 0;
      v78(v75 + *(v129 + 36), v71, v72);
      sub_1D417CF94(v74, v134, &qword_1EC7C98F0);
      LODWORD(v74) = (*(v73 + 48))(v134, 1, v72);

      v80 = *(v0 + 512);
      v81 = *(v0 + 496);
      v135 = *(v0 + 488);
      v82 = *(v0 + 480);
      if (v74 == 1)
      {
        v83 = *(v0 + 456);
        v84 = *(v0 + 464);
        v85 = *(v0 + 304);
        v125 = *(v0 + 296);
        v130 = *(v0 + 328);
        v86 = *(v0 + 288);
        sub_1D41769C4(*(v0 + 280), &qword_1EC7C98F0);
        sub_1D4417424();

        sub_1D41769C4(v86, &qword_1EC7C98F0);
        v87 = *(v84 + 8);
        v87(v82, v83);
        (*(v85 + 8))(v130, v125);
        v87(v135, v83);
      }

      else
      {
        v100 = *(v0 + 464);
        v99 = *(v0 + 472);
        v101 = *(v0 + 456);
        v120 = *(v0 + 328);
        v103 = *(v0 + 296);
        v102 = *(v0 + 304);
        v104 = *(v0 + 288);
        v132 = *(v0 + 272);
        v122 = *(v0 + 280);
        v127 = *(v0 + 264);

        sub_1D41769C4(v104, &qword_1EC7C98F0);
        v105 = *(v100 + 8);
        v105(v82, v101);
        (*(v102 + 8))(v120, v103);
        v105(v135, v101);
        v106 = *(v100 + 32);
        v106(v99, v122, v101);
        v106(v132 + *(v127 + 40), v99, v101);
      }

      sub_1D4337C08(*(v0 + 272), *(v0 + 216));
      goto LABEL_63;
    }

    v60 = [*(v0 + 496) persistentStoreCoordinator];
    *(v0 + 560) = v60;
    if (v60)
    {
      v61 = v60;
      v62 = *(v0 + 496);
      v63 = *(v0 + 584);
      v65 = *(v0 + 248);
      v64 = *(v0 + 256);
      v66 = swift_allocObject();
      *(v0 + 568) = v66;
      *(v66 + 16) = v58;
      *(v66 + 24) = v61;
      *(v66 + 32) = v62;
      *(v66 + 40) = v63;
      *(v66 + 48) = v65;
      *(v66 + 56) = v64;
      v67 = v62;

      v68 = v61;

      v69 = swift_task_alloc();
      *(v0 + 576) = v69;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA798);
      *v69 = v0;
      v69[1] = sub_1D4336640;

      return MEMORY[0x1EEE233F8](v0 + 208, sub_1D4337C6C, v66, v70);
    }

    if (qword_1EC7C9190 == -1)
    {
LABEL_58:
      v88 = sub_1D44181B4();
      __swift_project_value_buffer(v88, qword_1EC7CA740);
      v89 = sub_1D44181A4();
      v90 = sub_1D441A164();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_1D4171000, v89, v90, "MOC didn't have a PSC.", v91, 2u);
        MEMORY[0x1DA6D8690](v91, -1, -1);
      }

      v92 = *(v0 + 512);
      v93 = *(v0 + 496);
      v94 = *(v0 + 464);
      v126 = *(v0 + 456);
      v131 = *(v0 + 488);
      v95 = *(v0 + 328);
      v96 = *(v0 + 296);
      v97 = *(v0 + 304);

      type metadata accessor for ICError(0);
      *(v0 + 200) = 225;
      sub_1D42EA814(MEMORY[0x1E69E7CC0]);
      sub_1D4337BB0();
      sub_1D44170E4();
      swift_willThrow();

      (*(v97 + 8))(v95, v96);
      (*(v94 + 8))(v131, v126);

      v98 = *(v0 + 8);
      goto LABEL_64;
    }

LABEL_68:
    swift_once();
    goto LABEL_58;
  }

  v12 = sub_1D441A8C4();
  if (!v12)
  {
    goto LABEL_49;
  }

LABEL_6:
  if (v12 < 1)
  {
    __break(1u);
    goto LABEL_68;
  }

  v13 = 0;
  v14 = v2 & 0xC000000000000001;
  v15 = *(v0 + 392);
  v123 = *(v0 + 528) + 32;
  v128 = v2 & 0xFFFFFFFFFFFFFF8;
  v133 = (*(v0 + 304) + 8);
  v115 = (v15 + 48);
  v111 = (v15 + 16);
  v112 = (v15 + 32);
  v113 = *(v0 + 344);
  v110 = (v15 + 8);
  v114 = (v15 + 56);
  v118 = *(v0 + 504);
  v116 = v10;
  v117 = MEMORY[0x1E69E7CC0];
  v121 = v12;
  v119 = v2 & 0xC000000000000001;
  while (v14)
  {
    v17 = MEMORY[0x1DA6D6410](v13, *(v0 + 528));
LABEL_16:
    v18 = v17;
    v19 = [v17 attributeSet];
    v20 = [v19 attributeDictionary];
    v21 = sub_1D4419B64();

    v22 = [v19 contentType];
    if (!v22 || (v23 = v22, v24 = [v10 typeWithIdentifier_], v23, !v24))
    {

LABEL_29:

      goto LABEL_11;
    }

    v25 = *(v0 + 585);
    sub_1D4417FF4();

    if (v25 == 1 && (sub_1D4418024() & 1) != 0)
    {
      *(v0 + 136) = sub_1D4419C54();
      *(v0 + 144) = v26;
      sub_1D441A954();
      if (!*(v21 + 16) || (v27 = sub_1D42D00F4(v0 + 16), (v28 & 1) == 0))
      {
        v45 = *(v0 + 320);
        v46 = *(v0 + 296);

        sub_1D42D7374(v0 + 16);
        (*v133)(v45, v46);
        goto LABEL_11;
      }

      sub_1D42D5D14(*(v21 + 56) + 32 * v27, v0 + 56);
      sub_1D42D7374(v0 + 16);

      if ((swift_dynamicCast() & 1) == 0)
      {
        (*v133)(*(v0 + 320), *(v0 + 296));
        goto LABEL_29;
      }

      v29 = *(v0 + 152);
      v30 = *(v0 + 160);
      v31 = v117;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1D438D2B4(0, *(v117 + 2) + 1, 1, v117);
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      v117 = v31;
      if (v33 >= v32 >> 1)
      {
        v117 = sub_1D438D2B4((v32 > 1), v33 + 1, 1, v31);
      }

      v34 = *(v0 + 320);
      v35 = *(v0 + 296);

      (*v133)(v34, v35);
      *(v117 + 2) = v33 + 1;
      v36 = &v117[16 * v33];
      *(v36 + 4) = v29;
      *(v36 + 5) = v30;
      v10 = v116;
    }

    else
    {
      v37 = *(v0 + 586);

      if (v37 != 1)
      {

        v16 = *v133;
LABEL_9:
        v16(*(v0 + 320), *(v0 + 296));
        goto LABEL_10;
      }

      v38 = *(v0 + 312);
      v39 = *(v0 + 296);
      sub_1D4418004();
      v40 = sub_1D4418024();
      v16 = *v133;
      (*v133)(v38, v39);
      if ((v40 & 1) == 0)
      {

        goto LABEL_9;
      }

      v41 = [v19 ic_urlString];
      v42 = *(v0 + 384);
      v43 = *(v0 + 368);
      if (v41)
      {
        v44 = v41;
        sub_1D4419C54();

        sub_1D4417224();
        swift_bridgeObjectRelease_n();
        if ((*v115)(v43, 1, v42) != 1)
        {
          v48 = *(v0 + 400);
          v49 = *(v0 + 408);
          v50 = *(v0 + 384);
          (*v112)(v48, *(v0 + 368), v50);
          (*v111)(v49, v48, v50);
          sub_1D4417844();
          v51 = v118;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_1D438D5A0(0, v118[2] + 1, 1, v118);
          }

          v53 = v51[2];
          v52 = v51[3];
          v118 = v51;
          if (v53 >= v52 >> 1)
          {
            v118 = sub_1D438D5A0(v52 > 1, v53 + 1, 1, v51);
          }

          v54 = *(v0 + 400);
          v55 = *(v0 + 384);
          v108 = *(v0 + 336);
          v109 = *(v0 + 352);
          v56 = *(v0 + 320);
          v57 = *(v0 + 296);

          (*v110)(v54, v55);
          v16(v56, v57);
          v118[2] = v53 + 1;
          (*(v113 + 32))(v118 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v53, v109, v108);
          v10 = v116;
          goto LABEL_10;
        }

        v10 = v116;
      }

      else
      {

        (*v114)(v43, 1, 1, v42);
      }

      v47 = *(v0 + 368);
      v16(*(v0 + 320), *(v0 + 296));
      sub_1D41769C4(v47, &qword_1EC7C9908);
    }

LABEL_10:
    v12 = v121;
    v14 = v119;
LABEL_11:
    if (v12 == ++v13)
    {

      v58 = v117;
      v59 = v118;
      goto LABEL_50;
    }
  }

  if (v13 < *(v128 + 16))
  {
    v17 = *(v123 + 8 * v13);
    goto LABEL_16;
  }

  __break(1u);
LABEL_47:
  swift_once();
LABEL_3:
  v3 = *(v0 + 512);
  v4 = *(v0 + 488);
  v5 = *(v0 + 496);
  v6 = *(v0 + 456);
  v7 = *(v0 + 464);
  v8 = *(v0 + 216);
  v9 = __swift_project_value_buffer(*(v0 + 264), qword_1EC7CA770);
  swift_beginAccess();
  sub_1D43342AC(v9, v8);

  (*(v7 + 8))(v4, v6);
LABEL_63:

  v98 = *(v0 + 8);
LABEL_64:

  return v98();
}

void sub_1D4336640()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D4336794, 0, 0);
  }
}

uint64_t sub_1D4336794()
{
  v1 = v0[70];
  sub_1D42EFCEC(v0[26]);

  v2 = v0[60];
  v3 = v0[57];
  v4 = v0[58];
  v5 = v0[36];
  v6 = v0[34];
  v34 = v0[33];
  v37 = v0[35];
  v7 = v0[29];
  v31 = v0[28];
  v8 = v0[23];
  v9 = *(v4 + 16);
  v9(v2, v0[61], v3);
  (*(v4 + 56))(v5, 1, 1, v3);
  v10 = MEMORY[0x1E69E7CC0];
  *v6 = v8;
  *(v6 + 8) = v10;
  *(v6 + 16) = v31;
  *(v6 + 24) = v7;
  *(v6 + 32) = 0;
  v9(v6 + *(v34 + 36), v2, v3);
  sub_1D417CF94(v5, v37, &qword_1EC7C98F0);
  LODWORD(v5) = (*(v4 + 48))(v37, 1, v3);

  v11 = v0[64];
  v12 = v0[62];
  v38 = v0[61];
  v13 = v0[60];
  if (v5 == 1)
  {
    v14 = v0[57];
    v15 = v0[58];
    v16 = v0[38];
    v32 = v0[37];
    v35 = v0[41];
    v17 = v0[36];
    sub_1D41769C4(v0[35], &qword_1EC7C98F0);
    sub_1D4417424();

    sub_1D41769C4(v17, &qword_1EC7C98F0);
    v18 = *(v15 + 8);
    v18(v13, v14);
    (*(v16 + 8))(v35, v32);
    v18(v38, v14);
  }

  else
  {
    v20 = v0[58];
    v19 = v0[59];
    v21 = v0[57];
    v23 = v0[37];
    v22 = v0[38];
    v24 = v0[36];
    v29 = v0[41];
    v30 = v0[35];
    v33 = v0[33];
    v36 = v0[34];

    sub_1D41769C4(v24, &qword_1EC7C98F0);
    v25 = *(v20 + 8);
    v25(v13, v21);
    (*(v22 + 8))(v29, v23);
    v25(v38, v21);
    v26 = *(v20 + 32);
    v26(v19, v30, v21);
    v26(v36 + *(v33 + 40), v19, v21);
  }

  sub_1D4337C08(v0[34], v0[27]);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D4336B4C()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  v3 = *(v0 + 456);
  v4 = *(v0 + 464);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D4336CC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v69 = a5;
  v72 = a6;
  v73 = a4;
  v78 = a3;
  v68 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA7A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v67 - v10;
  v12 = sub_1D4417884();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v84 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v77 = &v67 - v18;
  v19 = *(a1 + 16);
  if (v19)
  {
    v81 = (v16 + 48);
    v82 = (v16 + 56);
    v76 = v16;
    v80 = (v16 + 32);
    v20 = (a1 + 40);
    v85 = MEMORY[0x1E69E7CC0];
    *&v17 = 136315138;
    v70 = v17;
    *&v17 = 138412546;
    v71 = v17;
    v75 = a2;
    v79 = v11;
    v83 = v12;
    while (1)
    {
      v86 = v19;
      v21 = *(v20 - 1);
      v22 = *v20;

      v23 = sub_1D4419C14();
      v24 = [a2 ic:v23 managedObjectIDForURIString:?];

      if (!v24)
      {
        break;
      }

      v25 = [v78 ic:v24 existingObjectWithID:?];
      if (!v25)
      {
        goto LABEL_20;
      }

      v26 = v25;
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (!v27)
      {

        v11 = v79;
LABEL_20:
        if (qword_1EC7C9190 != -1)
        {
          swift_once();
        }

        v43 = sub_1D44181B4();
        __swift_project_value_buffer(v43, qword_1EC7CA740);

        v44 = v24;
        v45 = sub_1D44181A4();
        v46 = sub_1D441A164();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v74 = v21;
          v50 = v49;
          v87 = v49;
          *v47 = v71;
          *(v47 + 4) = v44;
          *v48 = v24;
          *(v47 + 12) = 2080;
          v51 = v44;
          *(v47 + 14) = sub_1D42E9410(v74, v22, &v87);
          _os_log_impl(&dword_1D4171000, v45, v46, "Note either didn't exist or was malformed {identifier: %@, URI: %s}", v47, 0x16u);
          sub_1D41769C4(v48, &qword_1EC7C9918);
          MEMORY[0x1DA6D8690](v48, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x1DA6D8690](v50, -1, -1);
          v52 = v47;
          v11 = v79;
          MEMORY[0x1DA6D8690](v52, -1, -1);
        }

        else
        {
        }

        v38 = v83;
        (*v82)(v11, 1, 1, v83);

        a2 = v75;
        goto LABEL_40;
      }

      v28 = v27;
      if (v73)
      {
        v29 = [v27 identifier];
        if (v29)
        {
          v30 = v29;
          v31 = sub_1D4419C54();
          v33 = v32;

          if (v72)
          {
            a2 = v75;
            if (v31 == v69 && v33 == v72)
            {

              goto LABEL_36;
            }

            v53 = sub_1D441AD84();

            if (v53)
            {
              goto LABEL_35;
            }
          }

          else
          {

            a2 = v75;
          }
        }

        else if (!v72)
        {
          goto LABEL_35;
        }
      }

      if (![v28 isHiddenFromSearch])
      {
        v55 = [v28 folder];
        if (v55 && (v56 = v55, v57 = [v55 folderType], v56, v57 == 1) || (objc_msgSend(v28, sel_markedForDeletion) & 1) != 0)
        {
LABEL_35:

LABEL_36:
          v58 = *v82;
          v11 = v79;
          v59 = v79;
          v60 = 1;
        }

        else
        {
          v11 = v79;
          sub_1D4417854();

          v58 = *v82;
          v59 = v11;
          v60 = 0;
        }

        v38 = v83;
        v58(v59, v60, 1, v83);
LABEL_39:

        goto LABEL_40;
      }

      v54 = v83;
      v11 = v79;
      (*v82)(v79, 1, 1, v83);

      v38 = v54;
LABEL_40:
      if ((*v81)(v11, 1, v38) == 1)
      {
        result = sub_1D41769C4(v11, &qword_1EC7CA7A8);
      }

      else
      {
        v61 = *v80;
        v62 = v77;
        (*v80)(v77, v11, v38);
        v61(v84, v62, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_1D438D5A0(0, v85[2] + 1, 1, v85);
        }

        v64 = v85[2];
        v63 = v85[3];
        if (v64 >= v63 >> 1)
        {
          v85 = sub_1D438D5A0(v63 > 1, v64 + 1, 1, v85);
        }

        v65 = v84;
        v66 = v85;
        v85[2] = v64 + 1;
        result = (v61)(v66 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v64, v65, v38);
      }

      v20 += 2;
      v19 = v86 - 1;
      if (v86 == 1)
      {
        goto LABEL_47;
      }
    }

    if (qword_1EC7C9190 != -1)
    {
      swift_once();
    }

    v34 = sub_1D44181B4();
    __swift_project_value_buffer(v34, qword_1EC7CA740);

    v35 = sub_1D44181A4();
    v36 = sub_1D441A164();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v83;
    if (v37)
    {
      v39 = v21;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v87 = v41;
      *v40 = v70;
      *(v40 + 4) = sub_1D42E9410(v39, v22, &v87);
      _os_log_impl(&dword_1D4171000, v35, v36, "Couldn't get managed object id for note URI: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v42 = v41;
      v11 = v79;
      MEMORY[0x1DA6D8690](v42, -1, -1);
      MEMORY[0x1DA6D8690](v40, -1, -1);
    }

    (*v82)(v11, 1, 1, v38);
    goto LABEL_39;
  }

  v85 = MEMORY[0x1E69E7CC0];
LABEL_47:
  *v68 = v85;
  return result;
}

uint64_t static LinkSuggestionProvider.notes(mostRecentlyModified:currentNoteIdentifier:managedObjectContext:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    v29 = a2;
    v30 = a1;
    v6 = a4;
  }

  else
  {
    v25 = [objc_opt_self() sharedContext];
    if (!v25 || (v26 = v25, v27 = [v25 managedObjectContext], v26, !v27))
    {
      type metadata accessor for ICError(0);
      sub_1D42EA814(MEMORY[0x1E69E7CC0]);
      sub_1D4337BB0();
      sub_1D44170E4();
      v22 = v31;
      swift_willThrow();
      return v22;
    }

    v29 = a2;
    v30 = a1;
    v6 = v27;
  }

  sub_1D41766C0(0, &qword_1EDE32440);
  v7 = a4;
  v8 = sub_1D441A604();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D4438490;
  v10 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v11 = sub_1D4419C14();
  v12 = [v10 initWithKey:v11 ascending:0];

  *(v9 + 32) = v12;
  sub_1D41766C0(0, &qword_1EC7CA7A0);
  v13 = sub_1D4419E24();

  [v8 setSortDescriptors_];

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D44384A0;
  *(v14 + 32) = [objc_opt_self() predicateForFetchedFromCloudObjects];
  sub_1D41766C0(0, &qword_1EDE329F0);
  *(v14 + 40) = sub_1D441A114();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D4435D40;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1D4320054();
  v16 = 4999502;
  if (a3)
  {
    v16 = v29;
  }

  v17 = 0xE300000000000000;
  if (a3)
  {
    v17 = a3;
  }

  *(v15 + 32) = v16;
  *(v15 + 40) = v17;

  *(v14 + 48) = sub_1D441A114();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D4435D40;
  v19 = MEMORY[0x1E69E72E8];
  *(v18 + 56) = MEMORY[0x1E69E7290];
  *(v18 + 64) = v19;
  *(v18 + 32) = 1;
  *(v14 + 56) = sub_1D441A114();
  *(v14 + 64) = sub_1D441A114();
  v20 = sub_1D4419E24();

  v21 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v8 setPredicate_];
  [v8 setFetchLimit_];
  v22 = sub_1D441A574();

  return v22;
}

size_t static LinkSuggestionProvider.linkSuggestions(fromNotes:)(unint64_t a1)
{
  v2 = sub_1D4417884();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  if (a1 >> 62)
  {
    v9 = sub_1D441A8C4();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1D43CF2D8(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v9; ++i)
      {
        MEMORY[0x1DA6D6410](i, a1);
        sub_1D4417854();
        v20 = v10;
        v14 = *(v10 + 16);
        v13 = *(v10 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D43CF2D8(v13 > 1, v14 + 1, 1);
          v10 = v20;
        }

        *(v10 + 16) = v14 + 1;
        (*(v3 + 32))(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, v8, v2);
      }
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        sub_1D4417854();
        v20 = v10;
        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1D43CF2D8(v17 > 1, v18 + 1, 1);
          v10 = v20;
        }

        *(v10 + 16) = v18 + 1;
        (*(v3 + 32))(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v6, v2);
        ++v15;
        --v9;
      }

      while (v9);
    }

    return v10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D4337BB0()
{
  result = qword_1EC7C94B8;
  if (!qword_1EC7C94B8)
  {
    type metadata accessor for ICError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C94B8);
  }

  return result;
}

uint64_t sub_1D4337C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkSuggestionsContainer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4337CBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D44188B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E78);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1D417CF94(v2, &v14 - v9, &qword_1EC7C9E78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D4418A14();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1D441A174();
    v13 = sub_1D4418CD4();
    sub_1D4418044();

    sub_1D44188A4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t ActivityStreamItemView.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActivityStreamItemView() + 20);

  return sub_1D4337F4C(v3, a1);
}

uint64_t type metadata accessor for ActivityStreamItemView()
{
  result = qword_1EC7CA7C0;
  if (!qword_1EC7CA7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4337F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStream.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ActivityStreamItemView.item.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ActivityStreamItemView() + 20);

  return sub_1D4337FF4(a1, v3);
}

uint64_t sub_1D4337FF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStream.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43380A0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ActivityStreamItemView() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1D430C0D4;
  a2[1] = v6;
}

uint64_t sub_1D4338120(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for ActivityStreamItemView() + 24));

  *v6 = sub_1D433D574;
  v6[1] = v5;
  return result;
}

uint64_t ActivityStreamItemView.pressAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityStreamItemView() + 24));

  return v1;
}

uint64_t ActivityStreamItemView.pressAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityStreamItemView() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1D4338270@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ActivityStreamItemView() + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1D431FC64;
  a2[1] = v6;
}

uint64_t sub_1D43382F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for ActivityStreamItemView() + 28));

  *v6 = sub_1D431FC5C;
  v6[1] = v5;
  return result;
}

uint64_t ActivityStreamItemView.action.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityStreamItemView() + 28));

  return v1;
}

uint64_t ActivityStreamItemView.action.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityStreamItemView() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ActivityStreamItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1D4418A34();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA7B0);
  return sub_1D4338490(v1, a1 + *(v3 + 44));
}

uint64_t sub_1D4338490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v211 = a2;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA7F0);
  MEMORY[0x1EEE9AC00](v204);
  v169 = &v169 - v3;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA7F8);
  MEMORY[0x1EEE9AC00](v207);
  v205 = &v169 - v4;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA800);
  MEMORY[0x1EEE9AC00](v201);
  v202 = &v169 - v5;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA808);
  MEMORY[0x1EEE9AC00](v209);
  v203 = &v169 - v6;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA810);
  MEMORY[0x1EEE9AC00](v200);
  v172 = (&v169 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA818);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v170 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v171 = &v169 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA820);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v210 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v208 = &v169 - v15;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v16 = MEMORY[0x1EEE9AC00](v197);
  v195 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v194 = &v169 - v18;
  v196 = type metadata accessor for PressGestureButtonStyle();
  MEMORY[0x1EEE9AC00](v196);
  v193 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA828);
  v21 = *(v20 - 8);
  v198 = v20;
  v199 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v192 = &v169 - v22;
  v178 = sub_1D4418BA4();
  v184 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v24 = &v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA830);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v169 - v26;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA838);
  MEMORY[0x1EEE9AC00](v174);
  v29 = &v169 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA840);
  v179 = *(v30 - 8);
  v180 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v173 = &v169 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA848);
  v33 = v32 - 8;
  MEMORY[0x1EEE9AC00](v32);
  v175 = &v169 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA850);
  v36 = v35 - 8;
  MEMORY[0x1EEE9AC00](v35);
  v181 = &v169 - v37;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA858);
  MEMORY[0x1EEE9AC00](v185);
  v182 = &v169 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA860);
  v190 = *(v39 - 8);
  v191 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v187 = &v169 - v40;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA868) - 8;
  v41 = MEMORY[0x1EEE9AC00](v189);
  v206 = &v169 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v188 = &v169 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v212 = &v169 - v45;
  v177 = a1;
  sub_1D4339860(a1, v27);
  v176 = type metadata accessor for ActivityStreamItemView();
  v46 = a1 + v176[5];
  v47 = type metadata accessor for ActivityStream.Item(0);
  v48 = *(v47 + 52);
  v49 = v47;
  v186 = v47;
  LODWORD(v48) = *(v46 + v48);
  v183 = v46;
  if (v48)
  {
    v50 = 0.33;
  }

  else
  {
    v50 = 1.0;
  }

  sub_1D42D742C(v27, v29, &qword_1EC7CA830);
  *&v29[*(v174 + 36)] = v50;
  sub_1D44186B4();
  sub_1D433D5AC();
  sub_1D433E8D0(&qword_1EC7CA960, MEMORY[0x1E697C658]);
  v51 = v173;
  v52 = v178;
  sub_1D4418FF4();
  (*(v184 + 8))(v24, v52);
  sub_1D41769C4(v29, &qword_1EC7CA838);
  v53 = sub_1D4418CF4();
  sub_1D4418494();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v175;
  (*(v179 + 32))(v175, v51, v180);
  v63 = &v62[*(v33 + 44)];
  v64 = v62;
  *v63 = v53;
  *(v63 + 1) = v55;
  *(v63 + 2) = v57;
  *(v63 + 3) = v59;
  *(v63 + 4) = v61;
  v63[40] = 0;
  v184 = *(v49 + 56);
  v65 = *(v46 + v184);
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  v67 = sub_1D4418CF4();
  sub_1D4418494();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v217 = 0;
  v76 = sub_1D4419364();
  v78 = v77;
  v79 = v217;
  *&v219 = sub_1D433DD08;
  *(&v219 + 1) = v66;
  LOBYTE(v220) = v67;
  *(&v220 + 1) = *v218;
  DWORD1(v220) = *&v218[3];
  *(&v220 + 1) = v69;
  *&v221 = v71;
  *(&v221 + 1) = v73;
  *&v222 = v75;
  BYTE8(v222) = v217;
  *&v223 = v76;
  *(&v223 + 1) = v77;
  v80 = v64;
  v81 = v181;
  sub_1D42D742C(v80, v181, &qword_1EC7CA848);
  v82 = (v81 + *(v36 + 44));
  v83 = v222;
  v82[2] = v221;
  v82[3] = v83;
  v82[4] = v223;
  v84 = v220;
  *v82 = v219;
  v82[1] = v84;
  v224[0] = sub_1D433DD08;
  v224[1] = v66;
  v225 = v67;
  *v226 = *v218;
  *&v226[3] = *&v218[3];
  v227 = v69;
  v228 = v71;
  v229 = v73;
  v230 = v75;
  v231 = v79;
  v232 = v76;
  v233 = v78;
  sub_1D417CF94(&v219, v216, &qword_1EC7CA968);
  sub_1D41769C4(v224, &qword_1EC7CA968);
  v85 = v182;
  sub_1D42D742C(v81, v182, &qword_1EC7CA850);
  *(v85 + *(v185 + 36)) = 0;
  v86 = (v177 + v176[6]);
  v88 = *v86;
  v87 = v86[1];
  v89 = (v177 + v176[7]);
  v91 = *v89;
  v90 = v89[1];
  v92 = swift_allocObject();
  *(v92 + 16) = v91;
  *(v92 + 24) = v90;
  v213 = v85;
  sub_1D433DD48();

  v93 = v192;
  sub_1D44192C4();
  v94 = sub_1D4417434();
  v95 = v194;
  (*(*(v94 - 8) + 56))(v194, 1, 1, v94);
  sub_1D417CF94(v95, v195, &qword_1EC7C98F0);
  v96 = v193;
  sub_1D4419284();
  sub_1D41769C4(v95, &qword_1EC7C98F0);
  v97 = v196;
  v98 = v96 + *(v196 + 20);
  v215 = 0;
  sub_1D4419284();
  v99 = *(&v216[0] + 1);
  *v98 = v216[0];
  *(v98 + 8) = v99;
  *(v96 + *(v97 + 24)) = 0x3FC3333333333333;
  v100 = (v96 + *(v97 + 28));
  *v100 = v88;
  v100[1] = v87;
  sub_1D417645C(&qword_1EC7CA9A0, &qword_1EC7CA828);
  sub_1D433E8D0(&qword_1EC7C9CE8, type metadata accessor for PressGestureButtonStyle);

  v101 = v187;
  v102 = v198;
  sub_1D4418FD4();
  sub_1D430BD7C(v96);
  (*(v199 + 8))(v93, v102);
  sub_1D41769C4(v85, &qword_1EC7CA858);
  v103 = v183;
  LOBYTE(v87) = *(v183 + v184) != 4;
  v104 = v188;
  (*(v190 + 32))(v188, v101, v191);
  *(v104 + *(v189 + 44)) = v87;
  sub_1D42D742C(v104, v212, &qword_1EC7CA868);
  v105 = (v103 + *(v186 + 48));
  v106 = *v105;
  if (*(v105 + 8) != 1)
  {
    v129 = v171;
    sub_1D44192F4();
    v130 = v170;
    sub_1D417CF94(v129, v170, &qword_1EC7CA818);
    v131 = v172;
    *v172 = v106;
    *(v131 + 8) = 0;
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA20);
    sub_1D417CF94(v130, v131 + *(v132 + 48), &qword_1EC7CA818);
    sub_1D41769C4(v130, &qword_1EC7CA818);
    sub_1D417CF94(v131, v202, &qword_1EC7CA810);
    swift_storeEnumTagMultiPayload();
    sub_1D417645C(&qword_1EC7CA9B8, &qword_1EC7CA810);
    sub_1D433E088();
    v133 = v203;
    sub_1D4418B84();
    sub_1D417CF94(v133, v205, &qword_1EC7CA808);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA9A8);
    sub_1D433DFD0();
    sub_1D433E25C();
    v128 = v208;
    sub_1D4418B84();
    sub_1D41769C4(v133, &qword_1EC7CA808);
    sub_1D41769C4(v131, &qword_1EC7CA810);
    v134 = v129;
    v135 = &qword_1EC7CA818;
LABEL_9:
    sub_1D41769C4(v134, v135);
    goto LABEL_10;
  }

  v108 = v202;
  v107 = v203;
  v109 = v204;
  v110 = v205;
  if (!v106)
  {
    v136 = v169;
    sub_1D44192F4();
    v137 = sub_1D4418D34();
    sub_1D4418494();
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v145 = v144;
    v146 = v136 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA270) + 36);
    *v146 = v137;
    *(v146 + 8) = v139;
    *(v146 + 16) = v141;
    *(v146 + 24) = v143;
    *(v146 + 32) = v145;
    *(v146 + 40) = 0;
    v147 = sub_1D4418D54();
    sub_1D4418494();
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v156 = v136 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA278) + 36);
    *v156 = v147;
    *(v156 + 8) = v149;
    *(v156 + 16) = v151;
    *(v156 + 24) = v153;
    *(v156 + 32) = v155;
    *(v156 + 40) = 0;
    v157 = sub_1D4418D34();
    sub_1D4418494();
    v158 = v136 + *(v109 + 36);
    *v158 = v157;
    *(v158 + 8) = v159;
    *(v158 + 16) = v160;
    *(v158 + 24) = v161;
    *(v158 + 32) = v162;
    *(v158 + 40) = 0;
    sub_1D417CF94(v136, v108, &qword_1EC7CA7F0);
    swift_storeEnumTagMultiPayload();
    sub_1D417645C(&qword_1EC7CA9B8, &qword_1EC7CA810);
    sub_1D433E088();
    sub_1D4418B84();
    sub_1D417CF94(v107, v110, &qword_1EC7CA808);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA9A8);
    sub_1D433DFD0();
    sub_1D433E25C();
    v128 = v208;
    sub_1D4418B84();
    sub_1D41769C4(v107, &qword_1EC7CA808);
    v134 = v136;
    v135 = &qword_1EC7CA7F0;
    goto LABEL_9;
  }

  v111 = [objc_opt_self() quaternaryLabelColor];
  v112 = _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();
  v113 = sub_1D4418CF4();
  sub_1D4418494();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v215 = 0;
  sub_1D4419364();
  sub_1D4418554();
  *&v214[7] = v216[0];
  *&v214[23] = v216[1];
  *&v214[39] = v216[2];
  v122 = sub_1D4418D64();
  sub_1D4418494();
  v215 = 0;
  *v110 = v112;
  *(v110 + 8) = 256;
  *(v110 + 16) = v113;
  *(v110 + 24) = v115;
  *(v110 + 32) = v117;
  *(v110 + 40) = v119;
  *(v110 + 48) = v121;
  *(v110 + 56) = 0;
  v123 = *&v214[16];
  *(v110 + 57) = *v214;
  *(v110 + 73) = v123;
  *(v110 + 89) = *&v214[32];
  *(v110 + 104) = *&v214[47];
  *(v110 + 112) = v122;
  *(v110 + 120) = v124;
  *(v110 + 128) = v125;
  *(v110 + 136) = v126;
  *(v110 + 144) = v127;
  *(v110 + 152) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA9A8);
  sub_1D433DFD0();
  sub_1D433E25C();
  v128 = v208;
  sub_1D4418B84();
LABEL_10:
  v163 = v212;
  v164 = v206;
  sub_1D417CF94(v212, v206, &qword_1EC7CA868);
  v165 = v210;
  sub_1D417CF94(v128, v210, &qword_1EC7CA820);
  v166 = v211;
  sub_1D417CF94(v164, v211, &qword_1EC7CA868);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA18);
  sub_1D417CF94(v165, v166 + *(v167 + 48), &qword_1EC7CA820);
  sub_1D41769C4(v128, &qword_1EC7CA820);
  sub_1D41769C4(v163, &qword_1EC7CA868);
  sub_1D41769C4(v165, &qword_1EC7CA820);
  return sub_1D41769C4(v164, &qword_1EC7CA868);
}

uint64_t sub_1D4339860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA948);
  MEMORY[0x1EEE9AC00](v87);
  v80 = (&v75 - v3);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA28);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v75 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA918);
  MEMORY[0x1EEE9AC00](v94);
  v88 = &v75 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA928);
  MEMORY[0x1EEE9AC00](v82);
  v78 = (&v75 - v6);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA30);
  v7 = MEMORY[0x1EEE9AC00](v76);
  v77 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v75 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA8E8);
  MEMORY[0x1EEE9AC00](v90);
  v79 = (&v75 - v11);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA38);
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v75 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA40);
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v75 - v13;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA898);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v75 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA8A8);
  MEMORY[0x1EEE9AC00](v81);
  v16 = &v75 - v15;
  v17 = sub_1D4418A14();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v75 - v22;
  v24 = a1 + *(type metadata accessor for ActivityStreamItemView() + 20);
  v25 = *(v24 + *(type metadata accessor for ActivityStream.Item(0) + 24));
  sub_1D4337CBC(v23);
  (*(v18 + 104))(v21, *MEMORY[0x1E697F670], v17);
  v26 = sub_1D43DDD34(v23, v21);
  v27 = *(v18 + 8);
  v27(v21, v17);
  v27(v23, v17);
  if (v25)
  {
    if (v26)
    {
      v28 = sub_1D4418914();
      v29 = v78;
      *v78 = v28;
      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA50);
      sub_1D433ABDC(a1, v29 + *(v30 + 44));
      v31 = sub_1D4418D64();
      sub_1D4418494();
      v32 = v29 + *(v82 + 36);
      *v32 = v31;
      *(v32 + 8) = v33;
      *(v32 + 16) = v34;
      *(v32 + 24) = v35;
      *(v32 + 32) = v36;
      *(v32 + 40) = 0;
      v37 = &qword_1EC7CA928;
      sub_1D417CF94(v29, v86, &qword_1EC7CA928);
      swift_storeEnumTagMultiPayload();
      sub_1D433DB98();
      sub_1D433DC50();
      v38 = v88;
      sub_1D4418B84();
      sub_1D417CF94(v38, v93, &qword_1EC7CA918);
      swift_storeEnumTagMultiPayload();
      sub_1D433D748();
      sub_1D433DB0C();
      sub_1D4418B84();
      sub_1D41769C4(v38, &qword_1EC7CA918);
      v39 = v29;
    }

    else
    {
      v46 = sub_1D4418924();
      v47 = v80;
      *v80 = v46;
      *(v47 + 8) = 0;
      *(v47 + 16) = 0;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA48);
      sub_1D433BEE4(a1, v47 + *(v48 + 44));
      v49 = sub_1D4418D64();
      sub_1D4418494();
      v50 = v86;
      v51 = v47 + *(v87 + 36);
      *v51 = v49;
      *(v51 + 8) = v52;
      *(v51 + 16) = v53;
      *(v51 + 24) = v54;
      *(v51 + 32) = v55;
      *(v51 + 40) = 0;
      v37 = &qword_1EC7CA948;
      sub_1D417CF94(v47, v50, &qword_1EC7CA948);
      swift_storeEnumTagMultiPayload();
      sub_1D433DB98();
      sub_1D433DC50();
      v56 = v88;
      sub_1D4418B84();
      sub_1D417CF94(v56, v93, &qword_1EC7CA918);
      swift_storeEnumTagMultiPayload();
      sub_1D433D748();
      sub_1D433DB0C();
      sub_1D4418B84();
      sub_1D41769C4(v56, &qword_1EC7CA918);
      v39 = v47;
    }

    v57 = v37;
  }

  else
  {
    if (v26)
    {
      *v16 = sub_1D4418904();
      *(v16 + 1) = 0;
      v16[16] = 1;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA70);
      sub_1D433A3D0(a1, &v16[*(v40 + 44)]);
      if (qword_1EC7C92A8 != -1)
      {
        swift_once();
      }

      v41 = qword_1EC7CC858;
      KeyPath = swift_getKeyPath();
      v43 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA8B8) + 36)];
      *v43 = KeyPath;
      v43[1] = v41;

      *&v16[*(v81 + 36)] = sub_1D4418C34();
      v44 = &qword_1EC7CA8A8;
      sub_1D417CF94(v16, v85, &qword_1EC7CA8A8);
      swift_storeEnumTagMultiPayload();
      sub_1D433D7D4();
      sub_1D433D970();
      v45 = v89;
      sub_1D4418B84();
      sub_1D417CF94(v45, v93, &qword_1EC7CA898);
      swift_storeEnumTagMultiPayload();
      sub_1D433D748();
      sub_1D433DB0C();
      sub_1D4418B84();
      sub_1D41769C4(v45, &qword_1EC7CA898);
      v39 = v16;
    }

    else
    {
      v58 = sub_1D4418924();
      v59 = v79;
      *v79 = v58;
      *(v59 + 8) = 0;
      *(v59 + 16) = 1;
      v60 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA58) + 44);
      *v10 = sub_1D4418A44();
      *(v10 + 1) = 0;
      v10[16] = 1;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA60);
      sub_1D433A850(a1, &v10[*(v61 + 44)]);
      v62 = sub_1D4418D34();
      sub_1D4418494();
      v63 = v77;
      v64 = &v10[*(v76 + 36)];
      *v64 = v62;
      *(v64 + 1) = v65;
      *(v64 + 2) = v66;
      *(v64 + 3) = v67;
      *(v64 + 4) = v68;
      v64[40] = 0;
      sub_1D417CF94(v10, v63, &qword_1EC7CAA30);
      sub_1D417CF94(v63, v60, &qword_1EC7CAA30);
      v69 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA68) + 48);
      *v69 = 0;
      *(v69 + 8) = 1;
      sub_1D41769C4(v10, &qword_1EC7CAA30);
      sub_1D41769C4(v63, &qword_1EC7CAA30);
      if (qword_1EC7C92A8 != -1)
      {
        swift_once();
      }

      v70 = qword_1EC7CC858;
      v71 = swift_getKeyPath();
      v72 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA8F8) + 36));
      *v72 = v71;
      v72[1] = v70;

      *(v59 + *(v90 + 36)) = sub_1D4418C34();
      v44 = &qword_1EC7CA8E8;
      sub_1D417CF94(v59, v85, &qword_1EC7CA8E8);
      swift_storeEnumTagMultiPayload();
      sub_1D433D7D4();
      sub_1D433D970();
      v73 = v89;
      sub_1D4418B84();
      sub_1D417CF94(v73, v93, &qword_1EC7CA898);
      swift_storeEnumTagMultiPayload();
      sub_1D433D748();
      sub_1D433DB0C();
      sub_1D4418B84();
      sub_1D41769C4(v73, &qword_1EC7CA898);
      v39 = v59;
    }

    v57 = v44;
  }

  return sub_1D41769C4(v39, v57);
}

uint64_t sub_1D433A3D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v43 = sub_1D4417434();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA78);
  v45 = *(v46 - 8);
  v6 = MEMORY[0x1EEE9AC00](v46);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - v8;
  v10 = a1 + *(type metadata accessor for ActivityStreamItemView() + 20);
  v11 = type metadata accessor for ActivityStream.Item(0);
  v12 = v10 + *(v11 + 28);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = *(v12 + 24);
  v17 = sub_1D4418D34();
  sub_1D4418494();
  v54 = v15;
  v53 = 0;
  *&v49 = v13;
  *(&v49 + 1) = v14;
  LOBYTE(v50) = v15;
  *(&v50 + 1) = v16;
  LOBYTE(v51) = v17;
  *(&v51 + 1) = v18;
  *v52 = v19;
  *&v52[8] = v20;
  *&v52[16] = v21;
  v52[24] = 0;
  sub_1D430E574(v13, v14, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA80);
  sub_1D433E438();
  v22 = v9;
  sub_1D4419084();
  v55[2] = v51;
  v56[0] = *v52;
  *(v56 + 9) = *&v52[9];
  v55[0] = v49;
  v55[1] = v50;
  sub_1D41769C4(v55, &qword_1EC7CAA80);
  v23 = *(v11 + 20);
  if (sub_1D4417314() & 1) != 0 || (sub_1D44172E4())
  {
    (*(v3 + 16))(v5, v10 + v23, v43);
    if (qword_1EC7C9280 != -1)
    {
      swift_once();
    }

    v24 = qword_1EC7CC328;
    sub_1D433E8D0(&qword_1EC7CAA98, MEMORY[0x1E6969530]);
    v25 = v24;
    v26 = sub_1D4418F54();
    v28 = v27;
    v30 = v29;
    v32 = v31 & 1;
    sub_1D430E574(v26, v27, v31 & 1);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v32 = 0;
    v30 = 0;
  }

  v33 = v45;
  v34 = *(v45 + 16);
  v35 = v47;
  v44 = v22;
  v36 = v46;
  v34(v47, v22, v46);
  v37 = v48;
  v34(v48, v35, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAA90);
  v39 = &v37[*(v38 + 48)];
  *v39 = 0;
  v39[8] = 1;
  v40 = &v37[*(v38 + 64)];
  sub_1D433E4BC(v26, v28, v32, v30);
  sub_1D433E500(v26, v28, v32, v30);
  *v40 = v26;
  v40[1] = v28;
  v40[2] = v32;
  v40[3] = v30;
  v41 = *(v33 + 8);
  v41(v44, v36);
  sub_1D433E500(v26, v28, v32, v30);
  return (v41)(v35, v36);
}

uint64_t sub_1D433A850@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = sub_1D4417434();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAAA0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = a1 + *(type metadata accessor for ActivityStreamItemView() + 20);
  v15 = type metadata accessor for ActivityStream.Item(0);
  v16 = (v14 + *(v15 + 28));
  v17 = *(v16 + 16);
  v18 = *(v16 + 3);
  v37 = *v16;
  v38 = v17;
  v39 = v18;
  sub_1D4419084();
  v19 = *(v15 + 20);
  if (sub_1D4417314() & 1) != 0 || (sub_1D44172E4())
  {
    (*(v4 + 16))(v6, v14 + v19, v3);
    if (qword_1EC7C9280 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC7CC328;
    sub_1D433E8D0(&qword_1EC7CAA98, MEMORY[0x1E6969530]);
    v21 = v20;
    v22 = sub_1D4418F54();
    v24 = v23;
    v26 = v25;
    v28 = v27 & 1;
    sub_1D430E574(v22, v23, v27 & 1);
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v28 = 0;
    v26 = 0;
  }

  v29 = *(v8 + 16);
  v29(v11, v13, v7);
  v35 = v13;
  v30 = v11;
  v31 = v36;
  v29(v36, v30, v7);
  v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAAA8) + 48)];
  sub_1D433E4BC(v22, v24, v28, v26);
  sub_1D433E500(v22, v24, v28, v26);
  *v32 = v22;
  v32[1] = v24;
  v32[2] = v28;
  v32[3] = v26;
  v33 = *(v8 + 8);
  v33(v35, v7);
  sub_1D433E500(v22, v24, v28, v26);
  return (v33)(v30, v7);
}

uint64_t sub_1D433ABDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a1;
  v121 = a2;
  v107 = sub_1D4417434();
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAAB0);
  MEMORY[0x1EEE9AC00](v109);
  v4 = &v104 - v3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAAB8);
  v5 = MEMORY[0x1EEE9AC00](v110);
  v122 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v111 = &v104 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v126 = &v104 - v9;
  v10 = sub_1D4418684();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D60);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v104 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAAC0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v124 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v104 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v125 = &v104 - v23;
  v24 = *(v11 + 28);
  v25 = *MEMORY[0x1E697F468];
  v26 = sub_1D44189C4();
  (*(*(v26 - 8) + 104))(&v13[v24], v25, v26);
  __asm { FMOV            V0.2D, #2.0 }

  *v13 = _Q0;
  v32 = v123 + *(type metadata accessor for ActivityStreamItemView() + 20);
  v108 = type metadata accessor for ActivityStream.Item(0);
  v33 = *(v108 + 40);
  if (*(v32 + v33))
  {
    v34 = *(v32 + v33);
  }

  else
  {
    v35 = [objc_opt_self() quaternaryLabelColor];
    v34 = _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();
  }

  sub_1D430CF58(v13, v16);
  *&v16[*(v14 + 52)] = v34;
  *&v16[*(v14 + 56)] = 256;

  sub_1D4419364();
  sub_1D4418554();
  sub_1D42D742C(v16, v22, &qword_1EC7C9D60);
  v36 = &v22[*(v17 + 36)];
  v37 = v169;
  *v36 = v168;
  *(v36 + 1) = v37;
  *(v36 + 2) = v170;
  sub_1D42D742C(v22, v125, &qword_1EC7CAAC0);
  sub_1D4419364();
  sub_1D4418554();
  v118 = v173;
  v119 = v171;
  v116 = v176;
  v117 = v175;
  v161 = 1;
  v160 = v172;
  v159 = v174;
  v38 = v108;
  v39 = *(v32 + *(v108 + 36));
  v40 = objc_opt_self();
  *(&v120 + 1) = v39;

  *&v120 = [v40 sharedThumbnailService];
  sub_1D4419364();
  sub_1D4418554();
  sub_1D4419364();
  sub_1D4418554();
  v114 = v179;
  v115 = v177;
  v112 = v182;
  v113 = v181;
  v167 = 1;
  v166 = v178;
  v165 = v180;
  *v4 = sub_1D4418A44();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAAC8);
  sub_1D433B954(v123, &v4[*(v41 + 44)]);
  LOBYTE(v40) = sub_1D4418D64();
  sub_1D4418494();
  v42 = &v4[*(v109 + 36)];
  *v42 = v40;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  sub_1D4419364();
  sub_1D4418694();
  v47 = v4;
  v48 = v111;
  sub_1D42D742C(v47, v111, &qword_1EC7CAAB0);
  v49 = (v48 + *(v110 + 36));
  v50 = v188;
  v49[4] = v187;
  v49[5] = v50;
  v49[6] = v189;
  v51 = v184;
  *v49 = v183;
  v49[1] = v51;
  v52 = v186;
  v49[2] = v185;
  v49[3] = v52;
  sub_1D42D742C(v48, v126, &qword_1EC7CAAB8);
  v53 = *(v38 + 20);
  if (sub_1D4417314() & 1) != 0 || (sub_1D44172E4())
  {
    (*(v105 + 16))(v106, v32 + v53, v107);
    if (qword_1EC7C9280 != -1)
    {
      swift_once();
    }

    v54 = qword_1EC7CC328;
    sub_1D433E8D0(&qword_1EC7CAA98, MEMORY[0x1E6969530]);
    v55 = v54;
    v56 = sub_1D4418F54();
    v58 = v57;
    v60 = v59;
    if (qword_1EC7C92A8 != -1)
    {
      swift_once();
    }

    v61 = sub_1D4418F44();
    v63 = v62;
    v65 = v64;
    sub_1D430E564(v56, v58, v60 & 1);

    LODWORD(v157[0]) = sub_1D4418C34();
    v66 = sub_1D4418F04();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    sub_1D430E564(v61, v63, v65 & 1);

    KeyPath = swift_getKeyPath();
    sub_1D4419364();
    sub_1D4418554();
    *(v157 + 7) = v190;
    *(&v157[1] + 7) = v191;
    *(&v157[2] + 7) = v192;
    *&v129 = v66;
    *(&v129 + 1) = v68;
    LOBYTE(v130) = v70 & 1;
    *(&v130 + 1) = v149;
    DWORD1(v130) = *(&v149 + 3);
    *(&v130 + 1) = v72;
    *&v131[0] = KeyPath;
    BYTE8(v131[0]) = 1;
    *(&v131[3] + 1) = *(&v192 + 1);
    *(&v131[2] + 9) = v157[2];
    *(&v131[1] + 9) = v157[1];
    *(v131 + 9) = v157[0];
    v141 = v129;
    v142 = v130;
    v145 = v131[2];
    v146 = v131[3];
    v143 = v131[0];
    v144 = v131[1];
    v132 = v129;
    v133 = v130;
    v136 = v131[2];
    v137 = v131[3];
    v134 = v131[0];
    v135 = v131[1];
    *&v127[23] = v130;
    *&v127[7] = v129;
    v128 = 0;
    *&v127[87] = v131[3];
    *&v127[71] = v131[2];
    *&v127[55] = v131[1];
    *&v127[39] = v131[0];
    sub_1D417CF94(&v129, v157, &qword_1EC7CAAF8);
    sub_1D417CF94(&v132, v157, &qword_1EC7CAAF8);
    sub_1D41769C4(&v141, &qword_1EC7CAAF8);
    *(&v157[3] + 9) = *&v127[48];
    *(&v157[4] + 9) = *&v127[64];
    *(&v157[5] + 9) = *&v127[80];
    *(v157 + 9) = *v127;
    *(&v157[1] + 9) = *&v127[16];
    LOBYTE(v140[0]) = 0;
    *&v157[0] = 0x4020000000000000;
    BYTE8(v157[0]) = 0;
    *(&v157[6] + 1) = *&v127[95];
    *(&v157[2] + 9) = *&v127[32];
    v158 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAAD0);
    sub_1D417645C(&qword_1EC7CAAD8, &qword_1EC7CAAD0);
    sub_1D4418B84();
    sub_1D41769C4(&v129, &qword_1EC7CAAF8);
    v157[4] = v153;
    v157[5] = v154;
    v157[6] = v155;
    v158 = v156;
    v157[0] = v149;
    v157[1] = v150;
    v157[2] = v151;
    v157[3] = v152;
  }

  else
  {
    LOBYTE(v141) = 1;
    LOBYTE(v132) = 1;
    *&v149 = 0;
    BYTE8(v149) = 1;
    v156 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAAD0);
    sub_1D417645C(&qword_1EC7CAAD8, &qword_1EC7CAAD0);
    sub_1D4418B84();
  }

  v74 = v124;
  sub_1D417CF94(v125, v124, &qword_1EC7CAAC0);
  v75 = v161;
  v76 = v160;
  v77 = v159;
  v78 = v167;
  v79 = v166;
  LODWORD(v123) = v165;
  v80 = v122;
  sub_1D417CF94(v126, v122, &qword_1EC7CAAB8);
  v136 = v157[4];
  v137 = v157[5];
  v138 = v157[6];
  v139 = v158;
  v132 = v157[0];
  v133 = v157[1];
  v134 = v157[2];
  v135 = v157[3];
  v81 = v74;
  v82 = v121;
  sub_1D417CF94(v81, v121, &qword_1EC7CAAC0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAAE0);
  v84 = v82 + v83[12];
  *v84 = 0;
  *(v84 + 8) = v75;
  v85 = v118;
  *(v84 + 16) = v119;
  *(v84 + 24) = v76;
  *(v84 + 32) = v85;
  *(v84 + 40) = v77;
  v86 = v116;
  *(v84 + 48) = v117;
  *(v84 + 56) = v86;
  v87 = (v82 + v83[16]);
  v88 = v120;
  v140[0] = v120;
  v89 = v163;
  v140[2] = v163;
  v140[3] = v164;
  v90 = v162;
  v140[1] = v162;
  v91 = v164;
  *v87 = v120;
  v87[1] = v90;
  v87[2] = v89;
  v87[3] = v91;
  v92 = v82 + v83[20];
  *v92 = 0;
  *(v92 + 8) = v78;
  v93 = v114;
  *(v92 + 16) = v115;
  *(v92 + 24) = v79;
  *(v92 + 32) = v93;
  *(v92 + 40) = v123;
  v94 = v112;
  *(v92 + 48) = v113;
  *(v92 + 56) = v94;
  sub_1D417CF94(v80, v82 + v83[24], &qword_1EC7CAAB8);
  v95 = v82 + v83[28];
  v96 = v139;
  v148 = v139;
  v97 = v136;
  v98 = v137;
  v145 = v136;
  v146 = v137;
  v99 = v138;
  v147 = v138;
  v100 = v132;
  v101 = v133;
  v141 = v132;
  v142 = v133;
  v102 = v135;
  v143 = v134;
  v144 = v135;
  *(v95 + 32) = v134;
  *(v95 + 48) = v102;
  *v95 = v100;
  *(v95 + 16) = v101;
  *(v95 + 112) = v96;
  *(v95 + 80) = v98;
  *(v95 + 96) = v99;
  *(v95 + 64) = v97;
  sub_1D417CF94(v140, &v149, &qword_1EC7CAAE8);
  sub_1D417CF94(&v141, &v149, &qword_1EC7CAAF0);
  sub_1D41769C4(v126, &qword_1EC7CAAB8);
  sub_1D41769C4(v125, &qword_1EC7CAAC0);
  v153 = v136;
  v154 = v137;
  v155 = v138;
  v156 = v139;
  v149 = v132;
  v150 = v133;
  v151 = v134;
  v152 = v135;
  sub_1D41769C4(&v149, &qword_1EC7CAAF0);
  sub_1D41769C4(v80, &qword_1EC7CAAB8);
  v129 = v88;
  v130 = v162;
  v131[0] = v163;
  v131[1] = v164;
  sub_1D41769C4(&v129, &qword_1EC7CAAE8);
  return sub_1D41769C4(v124, &qword_1EC7CAAC0);
}

uint64_t sub_1D433B954@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAB00);
  v55 = *(v56 - 8);
  v3 = MEMORY[0x1EEE9AC00](v56);
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v48 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAAA0);
  v51 = *(v52 - 8);
  v6 = MEMORY[0x1EEE9AC00](v52);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - v8;
  v10 = (a1 + *(type metadata accessor for ActivityStreamItemView() + 20));
  v11 = type metadata accessor for ActivityStream.Item(0);
  v49 = v10;
  if (qword_1EC7C92A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1D4418F44();
  v14 = v13;
  v16 = v15;
  LODWORD(v62) = sub_1D4418C24();
  v17 = sub_1D4418F04();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1D430E564(v12, v14, v16 & 1);

  *&v62 = v17;
  *(&v62 + 1) = v19;
  LOBYTE(v63) = v21 & 1;
  *(&v63 + 1) = v23;
  sub_1D4419084();
  sub_1D430E564(v17, v19, v21 & 1);

  v24 = &v49[*(v11 + 32)];
  v25 = *v24;
  v26 = v24[1];
  v28 = v24[2];
  v27 = v24[3];
  KeyPath = swift_getKeyPath();
  sub_1D433E4BC(v25, v26, v28, v27);
  v30 = v9;
  if (qword_1EC7C92A8 != -1)
  {
    swift_once();
  }

  v31 = qword_1EC7CC858;
  v32 = swift_getKeyPath();
  LOBYTE(v62) = 0;

  v33 = sub_1D4418C34();
  *&v58 = v25;
  *(&v58 + 1) = v26;
  *&v59 = v28;
  *(&v59 + 1) = v27;
  *&v60 = KeyPath;
  *(&v60 + 1) = 2;
  v61[0] = 0;
  *&v61[8] = v32;
  *&v61[16] = v31;
  *&v61[24] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAB08);
  sub_1D433E544();
  v34 = v57;
  sub_1D4419084();
  v64 = v60;
  v65[0] = *v61;
  *(v65 + 12) = *&v61[12];
  v62 = v58;
  v63 = v59;
  sub_1D41769C4(&v62, &qword_1EC7CAB08);
  v35 = v51;
  v36 = *(v51 + 16);
  v37 = v50;
  v38 = v52;
  v36(v50, v30, v52);
  v39 = v55;
  v48 = *(v55 + 16);
  v49 = v30;
  v40 = v53;
  v41 = v34;
  v42 = v56;
  v48(v53, v41, v56);
  v43 = v54;
  v36(v54, v37, v38);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAB58);
  v48(&v43[*(v44 + 48)], v40, v42);
  v45 = *(v39 + 8);
  v45(v57, v42);
  v46 = *(v35 + 8);
  v46(v49, v38);
  v45(v40, v42);
  return (v46)(v37, v38);
}

uint64_t sub_1D433BEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAB60);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = (&v53 - v7);
  v8 = sub_1D4418684();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D60);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAAC0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v59 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v53 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  v23 = *(v9 + 28);
  v24 = *MEMORY[0x1E697F468];
  v25 = sub_1D44189C4();
  (*(*(v25 - 8) + 104))(&v11[v23], v24, v25);
  __asm { FMOV            V0.2D, #2.0 }

  *v11 = _Q0;
  v31 = a1 + *(type metadata accessor for ActivityStreamItemView() + 20);
  v32 = *(v31 + *(type metadata accessor for ActivityStream.Item(0) + 40));
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v34 = [objc_opt_self() quaternaryLabelColor];
    v33 = _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();
  }

  sub_1D430CF58(v11, v14);
  *&v14[*(v12 + 52)] = v33;
  *&v14[*(v12 + 56)] = 256;

  sub_1D4419364();
  sub_1D4418554();
  sub_1D42D742C(v14, v20, &qword_1EC7C9D60);
  v35 = &v20[*(v15 + 36)];
  v36 = v65;
  *v35 = v64;
  *(v35 + 1) = v36;
  *(v35 + 2) = v66;
  v37 = v22;
  v53 = v22;
  sub_1D42D742C(v20, v22, &qword_1EC7CAAC0);
  sub_1D4419364();
  sub_1D4418554();
  v56 = v69;
  v57 = v67;
  v55 = v71;
  v54 = v72;
  v63 = 1;
  v62 = v68;
  v61 = v70;
  v38 = sub_1D4418A44();
  v39 = v58;
  *v58 = v38;
  *(v39 + 8) = 0;
  *(v39 + 16) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAB68);
  sub_1D433C400(a1, (v39 + *(v40 + 44)));
  v41 = v59;
  sub_1D417CF94(v37, v59, &qword_1EC7CAAC0);
  v42 = v63;
  v43 = v62;
  v44 = v61;
  sub_1D417CF94(v39, v6, &qword_1EC7CAB60);
  v45 = v6;
  v46 = v60;
  sub_1D417CF94(v41, v60, &qword_1EC7CAAC0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAB70);
  v48 = v46 + v47[12];
  *v48 = 0;
  *(v48 + 8) = v42;
  v49 = v56;
  *(v48 + 16) = v57;
  *(v48 + 24) = v43;
  *(v48 + 32) = v49;
  *(v48 + 40) = v44;
  v50 = v54;
  *(v48 + 48) = v55;
  *(v48 + 56) = v50;
  sub_1D417CF94(v45, v46 + v47[16], &qword_1EC7CAB60);
  v51 = v46 + v47[20];
  *v51 = 0;
  *(v51 + 8) = 1;
  sub_1D41769C4(v39, &qword_1EC7CAB60);
  sub_1D41769C4(v53, &qword_1EC7CAAC0);
  sub_1D41769C4(v45, &qword_1EC7CAB60);
  return sub_1D41769C4(v41, &qword_1EC7CAAC0);
}

uint64_t sub_1D433C400@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAB78);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1 + *(type metadata accessor for ActivityStreamItemView() + 20);
  v11 = *(v10 + *(type metadata accessor for ActivityStream.Item(0) + 36));
  v12 = objc_opt_self();

  v13 = [v12 sharedThumbnailService];
  sub_1D4419364();
  sub_1D4418554();
  *v9 = sub_1D4418A44();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAB80);
  sub_1D433C638(a1, &v9[*(v14 + 44)]);
  sub_1D417CF94(v9, v7, &qword_1EC7CAB78);
  *&v22[0] = v13;
  *(&v22[0] + 1) = v11;
  v15 = v19;
  v22[1] = v19;
  v22[2] = v20;
  v16 = v21;
  v22[3] = v21;
  a2[2] = v20;
  a2[3] = v16;
  *a2 = v22[0];
  a2[1] = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAB88);
  sub_1D417CF94(v7, a2 + *(v17 + 48), &qword_1EC7CAB78);
  sub_1D417CF94(v22, v23, &qword_1EC7CAAE8);
  sub_1D41769C4(v9, &qword_1EC7CAB78);
  sub_1D41769C4(v7, &qword_1EC7CAB78);
  v23[0] = v13;
  v23[1] = v11;
  v24 = v19;
  v25 = v20;
  v26 = v21;
  return sub_1D41769C4(v23, &qword_1EC7CAAE8);
}

uint64_t sub_1D433C638@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAB00);
  v77 = *(v78 - 8);
  v3 = MEMORY[0x1EEE9AC00](v78);
  v84 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v83 = &v71 - v5;
  v75 = sub_1D4417434();
  v6 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAAA0);
  v81 = *(v82 - 8);
  v9 = MEMORY[0x1EEE9AC00](v82);
  v80 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - v11;
  v13 = a1 + *(type metadata accessor for ActivityStreamItemView() + 20);
  v14 = type metadata accessor for ActivityStream.Item(0);
  if (qword_1EC7C92A0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D4418F44();
  v17 = v16;
  *&v89 = v15;
  *(&v89 + 1) = v16;
  v19 = v18 & 1;
  LOBYTE(v90) = v18 & 1;
  *(&v90 + 1) = v20;
  v79 = v12;
  sub_1D4419084();
  sub_1D430E564(v15, v17, v19);

  v21 = *(v14 + 20);
  v22 = v14;
  if (sub_1D4417314() & 1) != 0 || (sub_1D44172E4())
  {
    (*(v6 + 16))(v8, v13 + v21, v75);
    if (qword_1EC7C9280 != -1)
    {
      swift_once();
    }

    v23 = qword_1EC7CC328;
    sub_1D433E8D0(&qword_1EC7CAA98, MEMORY[0x1E6969530]);
    v24 = v23;
    v25 = sub_1D4418F54();
    v27 = v26;
    v29 = v28;
    if (qword_1EC7C92A8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D4418F44();
    v32 = v31;
    v34 = v33;
    sub_1D430E564(v25, v27, v29 & 1);

    LODWORD(v89) = sub_1D4418C34();
    v35 = sub_1D4418F04();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_1D430E564(v30, v32, v34 & 1);

    v75 = v35;
    v73 = v37;
    v42 = v37;
    v43 = v39 & 1;
    sub_1D430E574(v35, v42, v39 & 1);
    v74 = v41;
  }

  else
  {
    v75 = 0;
    v73 = 0;
    v43 = 0;
    v74 = 0;
  }

  v44 = (v13 + *(v22 + 32));
  v45 = *v44;
  v46 = v44[1];
  v47 = v44[2];
  v48 = v44[3];
  KeyPath = swift_getKeyPath();
  sub_1D433E4BC(v45, v46, v47, v48);
  v50 = v79;
  if (qword_1EC7C92A8 != -1)
  {
    swift_once();
  }

  v51 = qword_1EC7CC858;
  v52 = swift_getKeyPath();
  LOBYTE(v89) = 0;

  v53 = sub_1D4418C34();
  *&v85 = v45;
  *(&v85 + 1) = v46;
  *&v86 = v47;
  *(&v86 + 1) = v48;
  *&v87 = KeyPath;
  *(&v87 + 1) = 2;
  v88[0] = 0;
  *&v88[8] = v52;
  *&v88[16] = v51;
  *&v88[24] = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAB08);
  sub_1D433E544();
  v54 = v83;
  sub_1D4419084();
  v91 = v87;
  *v92 = *v88;
  *&v92[12] = *&v88[12];
  v89 = v85;
  v90 = v86;
  sub_1D41769C4(&v89, &qword_1EC7CAB08);
  v55 = *(v81 + 16);
  v56 = v80;
  v57 = v82;
  v55(v80, v50, v82);
  v58 = v77;
  v72 = *(v77 + 16);
  v59 = v54;
  v60 = v78;
  v72(v84, v59, v78);
  v61 = v76;
  v55(v76, v56, v57);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAB90);
  v63 = &v61[*(v62 + 48)];
  v64 = v75;
  v65 = v73;
  *v63 = v75;
  v63[1] = v65;
  v66 = v74;
  v63[2] = v43;
  v63[3] = v66;
  v72(&v61[*(v62 + 64)], v84, v60);
  sub_1D433E4BC(v64, v65, v43, v66);
  sub_1D433E500(v64, v65, v43, v66);
  v67 = *(v58 + 8);
  v67(v83, v60);
  v68 = *(v81 + 8);
  v69 = v82;
  v68(v79, v82);
  v67(v84, v60);
  sub_1D433E500(v64, v65, v43, v66);
  return (v68)(v80, v69);
}

double sub_1D433CE40@<D0>(uint64_t a1@<X8>)
{
  sub_1D4418EC4();
  v2 = [objc_opt_self() quaternaryLabelColor];
  v3 = _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v3;
  *(a1 + 48) = 256;
  return result;
}

uint64_t sub_1D433CED0(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_1D44189C4();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      sub_1D4418574();
      v8 = 0x3FF0000000000000;
      v9 = 0;
      v10 = 0;
      v11 = 0x3FF0000000000000;
      v12 = 0;
      v13 = 0;
      return sub_1D4418EB4();
    }

    if (a2 != 3)
    {
      return result;
    }

    sub_1D4418574();
    v8 = 0x3FF0000000000000;
    v9 = 0;
    v10 = 0;
    v11 = 0x3FF0000000000000;
    v12 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  if (a2)
  {
    sub_1D4418574();
    sub_1D4418574();
    v8 = 0x3FF0000000000000;
    v9 = 0;
    v10 = 0;
    v11 = 0x3FF0000000000000;
    v12 = 0;
    v13 = 0;
LABEL_9:
    sub_1D4418EB4();
    sub_1D4418574();
    (*(v4 + 104))(v7, *MEMORY[0x1E697F468], v3);
    goto LABEL_10;
  }

  sub_1D4418574();
  (*(v4 + 104))(v7, *MEMORY[0x1E697F468], v3);
  v8 = 0x3FF0000000000000;
  v9 = 0;
  v10 = 0;
  v11 = 0x3FF0000000000000;
  v12 = 0;
  v13 = 0;
LABEL_10:
  sub_1D4418EA4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D433D114@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1D4418A34();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA7B0);
  return sub_1D4338490(v1, a1 + *(v3 + 44));
}

void sub_1D433D18C()
{
  sub_1D433D228();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActivityStream.Item(319);
    if (v1 <= 0x3F)
    {
      sub_1D4309684();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D433D228()
{
  if (!qword_1EDE33A58[0])
  {
    sub_1D4418A14();
    v0 = sub_1D44184F4();
    if (!v1)
    {
      atomic_store(v0, qword_1EDE33A58);
    }
  }
}

uint64_t getEnumTagSinglePayload for ICAccessibilityConditionallySelected(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityStream.Item.Styles(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D433D420()
{
  v1 = sub_1D44189E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D44189D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA7E0);
  sub_1D417645C(&qword_1EC7CA7E8, &qword_1EC7CA7E0);
  if (v5 == 1)
  {
    sub_1D44190C4();
  }

  else
  {
    sub_1D44190D4();
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D433D574(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1D433D5AC()
{
  result = qword_1EC7CA870;
  if (!qword_1EC7CA870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA838);
    sub_1D433D638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA870);
  }

  return result;
}

unint64_t sub_1D433D638()
{
  result = qword_1EC7CA878;
  if (!qword_1EC7CA878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA830);
    sub_1D433D6BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA878);
  }

  return result;
}

unint64_t sub_1D433D6BC()
{
  result = qword_1EC7CA880;
  if (!qword_1EC7CA880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA888);
    sub_1D433D748();
    sub_1D433DB0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA880);
  }

  return result;
}

unint64_t sub_1D433D748()
{
  result = qword_1EC7CA890;
  if (!qword_1EC7CA890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA898);
    sub_1D433D7D4();
    sub_1D433D970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA890);
  }

  return result;
}

unint64_t sub_1D433D7D4()
{
  result = qword_1EC7CA8A0;
  if (!qword_1EC7CA8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA8A8);
    sub_1D433D88C();
    sub_1D417645C(&qword_1EC7CA8D0, &qword_1EC7CA8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA8A0);
  }

  return result;
}

unint64_t sub_1D433D88C()
{
  result = qword_1EC7CA8B0;
  if (!qword_1EC7CA8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA8B8);
    sub_1D417645C(&qword_1EC7CA8C0, &qword_1EC7CA8C8);
    sub_1D417645C(&qword_1EDE32B20, &qword_1EC7CA380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA8B0);
  }

  return result;
}

unint64_t sub_1D433D970()
{
  result = qword_1EC7CA8E0;
  if (!qword_1EC7CA8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA8E8);
    sub_1D433DA28();
    sub_1D417645C(&qword_1EC7CA8D0, &qword_1EC7CA8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA8E0);
  }

  return result;
}

unint64_t sub_1D433DA28()
{
  result = qword_1EC7CA8F0;
  if (!qword_1EC7CA8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA8F8);
    sub_1D417645C(&qword_1EC7CA900, &qword_1EC7CA908);
    sub_1D417645C(&qword_1EDE32B20, &qword_1EC7CA380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA8F0);
  }

  return result;
}

unint64_t sub_1D433DB0C()
{
  result = qword_1EC7CA910;
  if (!qword_1EC7CA910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA918);
    sub_1D433DB98();
    sub_1D433DC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA910);
  }

  return result;
}

unint64_t sub_1D433DB98()
{
  result = qword_1EC7CA920;
  if (!qword_1EC7CA920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA928);
    sub_1D417645C(&qword_1EC7CA930, &qword_1EC7CA938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA920);
  }

  return result;
}

unint64_t sub_1D433DC50()
{
  result = qword_1EC7CA940;
  if (!qword_1EC7CA940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA948);
    sub_1D417645C(&qword_1EC7CA950, &qword_1EC7CA958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA940);
  }

  return result;
}

unint64_t sub_1D433DD48()
{
  result = qword_1EC7CA970;
  if (!qword_1EC7CA970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA858);
    sub_1D433DE00();
    sub_1D417645C(&qword_1EC7CA990, &qword_1EC7CA998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA970);
  }

  return result;
}

unint64_t sub_1D433DE00()
{
  result = qword_1EC7CA978;
  if (!qword_1EC7CA978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA850);
    sub_1D433DEB8();
    sub_1D417645C(&qword_1EC7CA988, &qword_1EC7CA968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA978);
  }

  return result;
}

unint64_t sub_1D433DEB8()
{
  result = qword_1EC7CA980;
  if (!qword_1EC7CA980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA838);
    sub_1D4418BA4();
    sub_1D433D5AC();
    sub_1D433E8D0(&qword_1EC7CA960, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA980);
  }

  return result;
}

unint64_t sub_1D433DFD0()
{
  result = qword_1EC7CA9B0;
  if (!qword_1EC7CA9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA808);
    sub_1D417645C(&qword_1EC7CA9B8, &qword_1EC7CA810);
    sub_1D433E088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA9B0);
  }

  return result;
}

unint64_t sub_1D433E088()
{
  result = qword_1EC7CA9C0;
  if (!qword_1EC7CA9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA7F0);
    sub_1D433E114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA9C0);
  }

  return result;
}

unint64_t sub_1D433E114()
{
  result = qword_1EC7CA9C8;
  if (!qword_1EC7CA9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA278);
    sub_1D433E1A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA9C8);
  }

  return result;
}

unint64_t sub_1D433E1A0()
{
  result = qword_1EC7CA9D0;
  if (!qword_1EC7CA9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA270);
    sub_1D433E8D0(&qword_1EC7CA9D8, MEMORY[0x1E697D6D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA9D0);
  }

  return result;
}

unint64_t sub_1D433E25C()
{
  result = qword_1EC7CA9E0;
  if (!qword_1EC7CA9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA9A8);
    sub_1D433E2E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA9E0);
  }

  return result;
}

unint64_t sub_1D433E2E8()
{
  result = qword_1EC7CA9E8;
  if (!qword_1EC7CA9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA9F0);
    sub_1D433E374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA9E8);
  }

  return result;
}

unint64_t sub_1D433E374()
{
  result = qword_1EC7CA9F8;
  if (!qword_1EC7CA9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CAA00);
    sub_1D417645C(&qword_1EC7CAA08, &qword_1EC7CAA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA9F8);
  }

  return result;
}

unint64_t sub_1D433E438()
{
  result = qword_1EC7CAA88;
  if (!qword_1EC7CAA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CAA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAA88);
  }

  return result;
}

uint64_t sub_1D433E4BC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D430E574(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1D433E500(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D430E564(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1D433E544()
{
  result = qword_1EC7CAB10;
  if (!qword_1EC7CAB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CAB08);
    sub_1D433E5FC();
    sub_1D417645C(&qword_1EC7CA8D0, &qword_1EC7CA8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAB10);
  }

  return result;
}

unint64_t sub_1D433E5FC()
{
  result = qword_1EC7CAB18;
  if (!qword_1EC7CAB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CAB20);
    sub_1D433E6B4();
    sub_1D417645C(&qword_1EDE32B20, &qword_1EC7CA380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAB18);
  }

  return result;
}

unint64_t sub_1D433E6B4()
{
  result = qword_1EC7CAB28;
  if (!qword_1EC7CAB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CAB30);
    sub_1D433E76C();
    sub_1D417645C(&qword_1EC7CAB48, &qword_1EC7CAB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAB28);
  }

  return result;
}

unint64_t sub_1D433E76C()
{
  result = qword_1EC7CAB38;
  if (!qword_1EC7CAB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CAB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAB38);
  }

  return result;
}

unint64_t sub_1D433E7E8()
{
  result = qword_1EC7CAB98;
  if (!qword_1EC7CAB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CABA0);
    sub_1D417645C(&qword_1EC7CA7E8, &qword_1EC7CA7E0);
    sub_1D433E8D0(&qword_1EC7CABA8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAB98);
  }

  return result;
}

uint64_t sub_1D433E8D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FallbackActivityEvent.activityItemIdParts.getter()
{
  v0 = sub_1D4417C84();
  v23 = *(v0 - 8);
  v24 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D4417964();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4417434();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D4435D20;
  sub_1D44179D4();
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  MEMORY[0x1DA6D5730](0x2865746144, 0xE500000000000000);
  sub_1D44173D4();
  sub_1D441A044();
  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v11 = v25[0];
  v12 = v25[1];
  (*(v7 + 8))(v9, v6);
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_1D44179C4();
  strcpy(v25, "Object(");
  v25[1] = 0xE700000000000000;
  v13 = sub_1D4417914();
  MEMORY[0x1DA6D5730](v13);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v14 = v25[0];
  v15 = v25[1];
  (*(v3 + 8))(v5, v22);
  *(v10 + 48) = v14;
  *(v10 + 56) = v15;
  sub_1D44179B4();
  strcpy(v25, "Participant(");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  v16 = sub_1D4417C04();
  MEMORY[0x1DA6D5730](v16);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v17 = v25[0];
  v18 = v25[1];
  (*(v23 + 8))(v2, v24);
  *(v10 + 64) = v17;
  *(v10 + 72) = v18;
  *(v10 + 80) = sub_1D44179A4();
  *(v10 + 88) = v19;
  return v10;
}

uint64_t static Date.dateHeadersLocale.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE33878 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB0);
  v3 = __swift_project_value_buffer(v2, qword_1EDE33880);
  swift_beginAccess();
  return sub_1D417CF94(v3, a1, &qword_1EC7CABB0);
}

uint64_t static Date.dateHeadersLocale.setter(uint64_t a1)
{
  if (qword_1EDE33878 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB0);
  v3 = __swift_project_value_buffer(v2, qword_1EDE33880);
  swift_beginAccess();
  sub_1D433F118(a1, v3, &qword_1EC7CABB0);
  swift_endAccess();
  return sub_1D41769C4(a1, &qword_1EC7CABB0);
}

uint64_t (*static Date.dateHeadersLocale.modify())()
{
  if (qword_1EDE33878 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB0);
  __swift_project_value_buffer(v0, qword_1EDE33880);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static Date.dateHeadersTimeZone.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE33850 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB8);
  v3 = __swift_project_value_buffer(v2, qword_1EDE33858);
  swift_beginAccess();
  return sub_1D417CF94(v3, a1, &qword_1EC7CABB8);
}

uint64_t static Date.dateHeadersTimeZone.setter(uint64_t a1)
{
  if (qword_1EDE33850 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB8);
  v3 = __swift_project_value_buffer(v2, qword_1EDE33858);
  swift_beginAccess();
  sub_1D433F118(a1, v3, &qword_1EC7CABB8);
  swift_endAccess();
  return sub_1D41769C4(a1, &qword_1EC7CABB8);
}

uint64_t sub_1D433F118(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t (*static Date.dateHeadersTimeZone.modify())()
{
  if (qword_1EDE33850 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB8);
  __swift_project_value_buffer(v0, qword_1EDE33858);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D433F280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStream(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D433F304@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ActivityStreamView() + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1D4341838;
  a2[1] = v6;
}

uint64_t sub_1D433F384(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for ActivityStreamView() + 20));

  *v6 = sub_1D4341800;
  v6[1] = v5;
  return result;
}

uint64_t ActivityStreamView.isItemEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityStreamView() + 20));

  return v1;
}

uint64_t type metadata accessor for ActivityStreamView()
{
  result = qword_1EC7CAC18;
  if (!qword_1EC7CAC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityStreamView.isItemEnabled.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityStreamView() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1D433F520@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1, unsigned __int8 *a2)@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ActivityStreamView() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1D43417D4;
  a2[1] = v6;
}

uint64_t sub_1D433F5A0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for ActivityStreamView() + 24));

  *v6 = sub_1D434179C;
  v6[1] = v5;
  return result;
}

uint64_t ActivityStreamView.pressItemAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityStreamView() + 24));

  return v1;
}

uint64_t ActivityStreamView.pressItemAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityStreamView() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1D433F6F0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ActivityStreamView() + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1D4341774;
  a2[1] = v6;
}

uint64_t sub_1D433F770(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for ActivityStreamView() + 28));

  *v6 = sub_1D434174C;
  v6[1] = v5;
  return result;
}

uint64_t ActivityStreamView.itemAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityStreamView() + 28));

  return v1;
}

uint64_t ActivityStreamView.itemAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityStreamView() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ActivityStreamView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABC0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABD0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - v11;
  sub_1D433FBF0(v1, v4);
  v13 = objc_opt_self();
  v14 = sub_1D4419C14();
  v15 = [v13 localizedFrameworkStringForKey:v14 value:0 table:0 allowSiri:1];

  sub_1D4419C54();
  sub_1D434002C();
  sub_1D4419054();

  sub_1D41769C4(v4, &qword_1EC7CABC0);
  v16 = sub_1D4418D14();
  _UISolariumEnabled();
  sub_1D4418494();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  (*(v6 + 32))(v12, v8, v5);
  v25 = &v12[*(v10 + 44)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = sub_1D4418624();
  if ((_UISolariumEnabled() & 1) != 0 || (v27 = sub_1D4418D14(), v28 = sub_1D4418D44(), sub_1D4418D44(), sub_1D4418D44() != v27))
  {
    v28 = sub_1D4418D44();
  }

  v29 = v32[0];
  sub_1D4199F18(v12, v32[0]);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC10);
  v31 = v29 + *(result + 36);
  *v31 = v26;
  *(v31 + 8) = v28;
  return result;
}

uint64_t sub_1D433FBF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABF8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC38);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC08);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for ActivityStream(0);
  v13 = a1 + *(v12 + 24);
  v14 = *(v13 + 3);
  if (v14)
  {
    v15 = *(v13 + 4);
    v17 = *v13;
    v16 = *(v13 + 1);
    sub_1D430E574(*v13, v16, v15 & 1);

    *v4 = sub_1D4418A34();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC50);
    sub_1D43401B0(a1, v17, v16, v15 & 1, v14, &v4[*(v18 + 44)]);
    sub_1D417CF94(v4, v7, &qword_1EC7CABF8);
    swift_storeEnumTagMultiPayload();
    sub_1D417645C(&qword_1EC7CABF0, &qword_1EC7CABF8);
    sub_1D417645C(&qword_1EC7CAC00, &qword_1EC7CAC08);
    sub_1D4418B84();
    sub_1D430E564(v17, v16, v15 & 1);

    return sub_1D41769C4(v4, &qword_1EC7CABF8);
  }

  else
  {
    v20 = &v20;
    MEMORY[0x1EEE9AC00](v12);
    *(&v20 - 2) = a1;
    sub_1D4418CE4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC40);
    sub_1D417645C(&qword_1EC7CAC48, &qword_1EC7CAC40);
    sub_1D44184B4();
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_1D417645C(&qword_1EC7CABF0, &qword_1EC7CABF8);
    sub_1D417645C(&qword_1EC7CAC00, &qword_1EC7CAC08);
    sub_1D4418B84();
    return (*(v9 + 8))(v11, v8);
  }
}

unint64_t sub_1D434002C()
{
  result = qword_1EC7CABD8;
  if (!qword_1EC7CABD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CABC0);
    sub_1D43400B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CABD8);
  }

  return result;
}

unint64_t sub_1D43400B0()
{
  result = qword_1EC7CABE0;
  if (!qword_1EC7CABE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CABE8);
    sub_1D417645C(&qword_1EC7CABF0, &qword_1EC7CABF8);
    sub_1D417645C(&qword_1EC7CAC00, &qword_1EC7CAC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CABE0);
  }

  return result;
}

uint64_t sub_1D43401B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a3;
  v42 = a5;
  v43 = a6;
  v9 = type metadata accessor for ActivityStreamView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC58);
  v13 = v12 - 8;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v44 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - v16;
  v63[0] = *a1;
  sub_1D4341CD0(a1, &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityStreamView);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_1D4341D38(&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ActivityStreamView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC68);
  sub_1D417645C(&qword_1EC7CAC70, &qword_1EC7CAC60);
  sub_1D434188C();
  sub_1D4341C88(&qword_1EC7CACC8, type metadata accessor for ActivityStream.Section);
  sub_1D4419324();
  *&v17[*(v13 + 44)] = 256;
  v20 = v17;
  v40 = v17;
  KeyPath = swift_getKeyPath();
  LOBYTE(v11) = a4 & 1;
  v21 = a2;
  v22 = a2;
  v23 = v41;
  sub_1D430E574(v22, v41, v11);
  v24 = v42;

  v25 = sub_1D4418C34();
  sub_1D4419364();
  sub_1D4418694();
  v80 = v11;
  LOBYTE(v17) = sub_1D4418D04();
  v81 = 1;
  v26 = v44;
  sub_1D417CF94(v20, v44, &qword_1EC7CAC58);
  v27 = v26;
  v28 = v43;
  sub_1D417CF94(v27, v43, &qword_1EC7CAC58);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CACD0) + 48));
  *&v52 = v21;
  *(&v52 + 1) = v23;
  LOBYTE(v53) = v11;
  v30 = KeyPath;
  *(&v53 + 1) = v24;
  *&v54 = KeyPath;
  BYTE8(v54) = 1;
  HIDWORD(v54) = v25;
  v59 = v49;
  v60 = v50;
  v61 = v51;
  v55 = v45;
  v56 = v46;
  v58 = v48;
  v57 = v47;
  LOBYTE(v62[0]) = v17;
  *(v62 + 8) = 0u;
  *(&v62[1] + 8) = 0u;
  BYTE8(v62[2]) = 1;
  v31 = v49;
  v29[6] = v48;
  v29[7] = v31;
  v32 = v61;
  v29[8] = v60;
  v29[9] = v32;
  v33 = v55;
  v29[2] = v54;
  v29[3] = v33;
  v34 = v57;
  v29[4] = v56;
  v29[5] = v34;
  v35 = v53;
  *v29 = v52;
  v29[1] = v35;
  v36 = v62[1];
  v29[10] = v62[0];
  v29[11] = v36;
  *(v29 + 185) = *(&v62[1] + 9);
  sub_1D4341B34(&v52, v63);
  sub_1D41769C4(v40, &qword_1EC7CAC58);
  v63[0] = v21;
  v63[1] = v23;
  v64 = v11;
  v65 = v24;
  v66 = v30;
  v67 = 1;
  v68 = v25;
  v73 = v49;
  v74 = v50;
  v75 = v51;
  v69 = v45;
  v70 = v46;
  v72 = v48;
  v71 = v47;
  v76 = v17;
  v77 = 0u;
  v78 = 0u;
  v79 = 1;
  sub_1D4341BA4(v63);
  return sub_1D41769C4(v44, &qword_1EC7CAC58);
}

uint64_t sub_1D4340704()
{
  v0 = sub_1D4418C04();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D4418BF4();
  sub_1D4418A34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAD00);
  sub_1D417645C(&qword_1EC7CAD08, &qword_1EC7CAD00);
  return sub_1D44184A4();
}

uint64_t sub_1D4340818@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActivityStreamView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAD10);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  sub_1D4419364();
  sub_1D4418554();
  v25 = v30;
  v26 = v28;
  v23 = v33;
  v24 = v32;
  v36 = 1;
  v35 = v29;
  v34 = v31;
  v27 = *a1;
  sub_1D4341CD0(a1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityStreamView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1D4341D38(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ActivityStreamView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC68);
  sub_1D417645C(&qword_1EC7CAC70, &qword_1EC7CAC60);
  sub_1D434188C();
  sub_1D4341C88(&qword_1EC7CACC8, type metadata accessor for ActivityStream.Section);
  sub_1D4419324();
  v16 = v36;
  LOBYTE(a1) = v35;
  LOBYTE(v6) = v34;
  v17 = *(v8 + 16);
  v17(v11, v13, v7);
  *a2 = 0;
  *(a2 + 8) = v16;
  v18 = v25;
  *(a2 + 16) = v26;
  *(a2 + 24) = a1;
  *(a2 + 32) = v18;
  *(a2 + 40) = v6;
  v19 = v23;
  *(a2 + 48) = v24;
  *(a2 + 56) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAD18);
  v17((a2 + *(v20 + 48)), v11, v7);
  v21 = *(v8 + 8);
  v21(v13, v7);
  return (v21)(v11, v7);
}

uint64_t sub_1D4340BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v19 = sub_1D4418A04();
  v5 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActivityStreamSectionHeaderView();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC80);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CACE0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = a1;
  v23 = a2;
  sub_1D4341CD0(a1, v10 + *(v8 + 20), type metadata accessor for ActivityStream.Section);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E78);
  swift_storeEnumTagMultiPayload();
  sub_1D44189F4();
  v15 = sub_1D4341C88(&qword_1EC7CAC88, type metadata accessor for ActivityStreamSectionHeaderView);
  sub_1D44190A4();
  (*(v5 + 8))(v7, v19);
  sub_1D4341C14(v10);
  v24 = v8;
  v25 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1D4419024();
  (*(v12 + 8))(v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC98);
  v24 = v11;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1D43419C8();
  return sub_1D4419334();
}

uint64_t sub_1D4340F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStreamView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v10[1] = *(a1 + *(type metadata accessor for ActivityStream.Section(0) + 36));
  sub_1D4341CD0(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityStreamView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1D4341D38(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ActivityStreamView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CACE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CACA8);
  sub_1D417645C(&qword_1EC7CACF0, &qword_1EC7CACE8);
  sub_1D4341A4C();
  sub_1D4341C88(&qword_1EC7CACF8, type metadata accessor for ActivityStream.Item);
  return sub_1D4419324();
}

uint64_t sub_1D4341164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a2;
  v38 = a3;
  v6 = type metadata accessor for ActivityStream.Item(0);
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v34 = &v33 - v9;
  v11 = type metadata accessor for ActivityStreamView();
  v12 = *(v11 - 8);
  v41 = v11 - 8;
  v35 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v40 = type metadata accessor for ActivityStreamItemView();
  sub_1D4341CD0(a1, a3 + *(v40 + 20), type metadata accessor for ActivityStream.Item);
  sub_1D4341CD0(a2, v16, type metadata accessor for ActivityStreamView);
  sub_1D4341CD0(a1, v10, type metadata accessor for ActivityStream.Item);
  v17 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v18 = (v13 + *(v37 + 80) + v17) & ~*(v37 + 80);
  v19 = swift_allocObject();
  v37 = v19;
  sub_1D4341D38(v16, v19 + v17, type metadata accessor for ActivityStreamView);
  sub_1D4341D38(v34, v19 + v18, type metadata accessor for ActivityStream.Item);
  v20 = v36;
  sub_1D4341CD0(v42, v36, type metadata accessor for ActivityStreamView);
  v21 = v39;
  sub_1D4341CD0(a1, v39, type metadata accessor for ActivityStream.Item);
  v22 = swift_allocObject();
  sub_1D4341D38(v20, v22 + v17, type metadata accessor for ActivityStreamView);
  sub_1D4341D38(v21, v22 + v18, type metadata accessor for ActivityStream.Item);
  KeyPath = swift_getKeyPath();
  v24 = v38;
  *v38 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E78);
  swift_storeEnumTagMultiPayload();
  v25 = v40;
  v26 = (v24 + *(v40 + 24));
  v27 = v37;
  *v26 = sub_1D4341DA0;
  v26[1] = v27;
  v28 = (v24 + *(v25 + 28));
  *v28 = sub_1D4342230;
  v28[1] = v22;
  LOBYTE(v16) = (*(v42 + *(v41 + 28)))(a1);
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = (v16 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CACA8);
  v32 = (v24 + *(result + 36));
  *v32 = v29;
  v32[1] = sub_1D4342308;
  v32[2] = v30;
  return result;
}

unint64_t sub_1D434156C()
{
  result = type metadata accessor for ActivityStream(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D4309684();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D43415F8()
{
  result = qword_1EC7CAC28;
  if (!qword_1EC7CAC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CAC10);
    sub_1D4341684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAC28);
  }

  return result;
}

unint64_t sub_1D4341684()
{
  result = qword_1EC7CAC30;
  if (!qword_1EC7CAC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CABD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CABC0);
    sub_1D434002C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAC30);
  }

  return result;
}

uint64_t sub_1D434179C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_1D4341838@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1D434188C()
{
  result = qword_1EC7CAC78;
  if (!qword_1EC7CAC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CAC68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CAC80);
    type metadata accessor for ActivityStreamSectionHeaderView();
    sub_1D4341C88(&qword_1EC7CAC88, type metadata accessor for ActivityStreamSectionHeaderView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D43419C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAC78);
  }

  return result;
}

unint64_t sub_1D43419C8()
{
  result = qword_1EC7CAC90;
  if (!qword_1EC7CAC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CAC98);
    sub_1D4341A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAC90);
  }

  return result;
}

unint64_t sub_1D4341A4C()
{
  result = qword_1EC7CACA0;
  if (!qword_1EC7CACA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CACA8);
    sub_1D4341C88(&qword_1EC7CACB0, type metadata accessor for ActivityStreamItemView);
    sub_1D417645C(&qword_1EC7CACB8, &qword_1EC7CACC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CACA0);
  }

  return result;
}

uint64_t sub_1D4341B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CACD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4341BA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CACD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4341C14(uint64_t a1)
{
  v2 = type metadata accessor for ActivityStreamSectionHeaderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4341C88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4341CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D4341D38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D4341DA0(uint64_t a1)
{
  v3 = (type metadata accessor for ActivityStreamView() - 8);
  v4 = (*(*v3 + 80) + 16) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(type metadata accessor for ActivityStream.Item(0) - 8);
  return (*(v1 + v3[8] + v4))(v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t objectdestroy_38Tm()
{
  v1 = *(type metadata accessor for ActivityStreamView() - 8);
  v24 = *(v1 + 80);
  v2 = (v24 + 16) & ~v24;
  v3 = *(v1 + 64);
  v4 = type metadata accessor for ActivityStream.Item(0);
  v5 = *(*(v4 - 1) + 80);
  v6 = v2 + v3 + v5;
  v23 = *(*(v4 - 1) + 64);
  v7 = v0;
  v8 = v0 + v2;

  v9 = type metadata accessor for ActivityStream(0);
  v10 = *(v9 + 20);
  v11 = sub_1D4417434();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v8 + v10, v11);
  }

  v13 = v6 & ~v5;
  v14 = v8 + *(v9 + 24);
  if (*(v14 + 24))
  {
    sub_1D430E564(*v14, *(v14 + 8), *(v14 + 16));
  }

  v15 = v7 + v13;

  (*(v12 + 8))(v7 + v13 + v4[5], v11);
  sub_1D430E564(*(v15 + v4[7]), *(v15 + v4[7] + 8), *(v15 + v4[7] + 16));

  v16 = v7 + v13 + v4[8];
  if (*(v16 + 24))
  {
    sub_1D430E564(*v16, *(v16 + 8), *(v16 + 16));
  }

  v17 = v15 + v4[11];
  v18 = type metadata accessor for ActivityStream.Destinations();
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload >= 2)
      {
        goto LABEL_15;
      }

LABEL_14:
      v21 = sub_1D4417964();
      (*(*(v21 - 8) + 8))(v17, v21);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v20 = sub_1D4417964();
      (*(*(v20 - 8) + 8))(v17, v20);
    }
  }

LABEL_15:

  return MEMORY[0x1EEE6BDD0](v7, v13 + v23, v24 | v5 | 7);
}

uint64_t sub_1D4342230()
{
  v1 = (type metadata accessor for ActivityStreamView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(type metadata accessor for ActivityStream.Item(0) - 8);
  return (*(v0 + v1[9] + v2))(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(type metadata accessor for ActivityStreamView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;

  v6 = type metadata accessor for ActivityStream(0);
  v7 = *(v6 + 20);
  v8 = sub_1D4417434();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v5 + *(v6 + 24);
  if (*(v10 + 24))
  {
    sub_1D430E564(*v10, *(v10 + 8), *(v10 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D43424BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ActivityStreamView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t ICAudioTextAttachment.supportedPresentationSizes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D4438490;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  return v0;
}

id ICAudioTextAttachment.init(attachment:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttachment_];

  return v2;
}

{
  v4.super_class = ICAudioTextAttachment;
  v2 = objc_msgSendSuper2(&v4, sel_initWithAttachment_, a1);

  return v2;
}

id ICAudioTextAttachment.init(data:ofType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    v5 = sub_1D4417254();
    sub_1D4342800(a1, a2);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = 0;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = sub_1D4419C14();

LABEL_6:
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithData:v5 ofType:v6];

  return v9;
}

{
  if (a2 >> 60 != 15)
  {
    v8 = sub_1D4417254();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = 0;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1D4419C14();

LABEL_6:
  v12.receiver = v4;
  v12.super_class = ICAudioTextAttachment;
  v10 = objc_msgSendSuper2(&v12, sel_initWithData_ofType_, v8, v9);
  sub_1D4342800(a1, a2);

  return v10;
}

uint64_t sub_1D4342800(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D4342814(a1, a2);
  }

  return a1;
}

uint64_t sub_1D4342814(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id ICAudioTextAttachment.init(coder:)(void *a1)
{
  v4.super_class = ICAudioTextAttachment;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

uint64_t sub_1D4342B7C()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7CAD28);
  __swift_project_value_buffer(v0, qword_1EC7CAD28);
  return sub_1D4418104();
}

uint64_t sub_1D4342BC8()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 0x656C746974;
  v4 = 0x656C616373;
  if (v1 != 3)
  {
    v4 = 0x6E61726165707061;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461657263;
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

uint64_t sub_1D4342C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4345128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4342CA0(uint64_t a1)
{
  v2 = sub_1D4344D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4342CDC(uint64_t a1)
{
  v2 = sub_1D4344D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4342D18(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAD50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4344D24();
  sub_1D441AF94();
  v12 = *v3;
  HIBYTE(v11) = 0;
  type metadata accessor for ThumbnailKey();
  sub_1D4344E34(&qword_1EDE33540, type metadata accessor for ThumbnailKey);
  sub_1D441AD24();
  if (!v2)
  {
    v9 = type metadata accessor for PersistedThumbnailCache.ThumbnailDescription();
    LOBYTE(v12) = 1;
    sub_1D4417434();
    sub_1D4344E34(&qword_1EDE33828, MEMORY[0x1E6969530]);
    sub_1D441AD24();
    LOBYTE(v12) = 2;
    sub_1D441ACC4();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    sub_1D4344E7C();
    sub_1D441AD24();
    LOBYTE(v12) = 4;
    sub_1D441AD14();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1D4342FC4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1D4417434();
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAD48);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = v21 - v6;
  v8 = type metadata accessor for PersistedThumbnailCache.ThumbnailDescription();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4344D24();
  v26 = v7;
  v11 = v28;
  sub_1D441AF84();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v28 = a1;
    v12 = v25;
    type metadata accessor for ThumbnailKey();
    v29 = 0;
    sub_1D4344E34(&qword_1EDE33538, type metadata accessor for ThumbnailKey);
    v13 = v26;
    sub_1D441ACB4();
    v14 = v30;
    v22 = v10;
    *v10 = v30;
    LOBYTE(v30) = 1;
    sub_1D4344E34(&qword_1EDE33820, MEMORY[0x1E6969530]);
    sub_1D441ACB4();
    v21[1] = v14;
    (*(v24 + 32))(&v22[v8[5]], v5, v3);
    LOBYTE(v30) = 2;
    v15 = sub_1D441AC54();
    v16 = v22;
    v17 = &v22[v8[6]];
    *v17 = v15;
    v17[1] = v18;
    v29 = 3;
    sub_1D4344D78();
    sub_1D441ACB4();
    *(v16 + v8[7]) = v30;
    LOBYTE(v30) = 4;
    v19 = v16;
    v20 = sub_1D441ACA4();
    (*(v12 + 8))(v13, v27);
    *(v19 + v8[8]) = v20;
    sub_1D4344DCC(v19, v23, type metadata accessor for PersistedThumbnailCache.ThumbnailDescription);
    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_1D4344B64(v19, type metadata accessor for PersistedThumbnailCache.ThumbnailDescription);
  }
}

void sub_1D43434F0(void *a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v4 = sub_1D4416D34();
  v5 = *(v4 - 8);
  v65 = v4;
  v66 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PersistedThumbnailCache.ThumbnailDescription();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1D4417234();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - v16;
  v64 = a1;
  sub_1D43A6714(&v56 - v16);
  v18 = sub_1D4417244();
  if (v2)
  {
    (*(v12 + 8))(v17, v11);
    v23 = v2;
    sub_1D4416D24();
    sub_1D4344E34(&qword_1EDE338E8, MEMORY[0x1E6967E70]);
    v24 = v65;
    v25 = sub_1D4417064();

    (*(v66 + 8))(v7, v24);
    if (v25)
    {
      v26 = type metadata accessor for PersistedThumbnail();
      (*(*(v26 - 8) + 56))(v63, 1, 1, v26);
    }

    else
    {
      if (qword_1EC7C91A8 != -1)
      {
        swift_once();
      }

      v27 = sub_1D44181B4();
      __swift_project_value_buffer(v27, qword_1EC7CAD28);
      v28 = v2;
      v29 = v64;
      v30 = sub_1D44181A4();
      v31 = sub_1D441A164();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v67 = v66;
        *v32 = 138412546;
        *(v32 + 4) = v29;
        *v33 = v29;
        *(v32 + 12) = 2080;
        swift_getErrorValue();
        v34 = v29;
        v35 = sub_1D441AE44();
        v37 = sub_1D42E9410(v35, v36, &v67);

        *(v32 + 14) = v37;
        _os_log_impl(&dword_1D4171000, v30, v31, "Cannot retrieve persisted thumbnail {key: %@, error: %s}", v32, 0x16u);
        sub_1D4344AFC(v33);
        MEMORY[0x1DA6D8690](v33, -1, -1);
        v38 = v66;
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x1DA6D8690](v38, -1, -1);
        MEMORY[0x1DA6D8690](v32, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    v60 = v15;
    v61 = v18;
    v62 = v19;
    v59 = *(v12 + 8);
    v59(v17, v11);
    if (qword_1EDE332A8 != -1)
    {
      swift_once();
    }

    sub_1D4344E34(&qword_1EDE330D8, type metadata accessor for PersistedThumbnailCache.ThumbnailDescription);
    v20 = v10;
    v21 = v8;
    sub_1D4416D54();
    v57 = *(v20 + *(v8 + 32));
    v22 = v60;
    sub_1D43A672C(v60);
    v58 = sub_1D4417244();
    v40 = v39;
    v59(v22, v11);
    v41 = *v20;
    v42 = v21[5];
    v43 = type metadata accessor for PersistedThumbnail();
    v44 = v43[5];
    v45 = sub_1D4417434();
    v46 = v63;
    (*(*(v45 - 8) + 16))(v63 + v44, v20 + v42, v45);
    v47 = (v20 + v21[6]);
    v49 = *v47;
    v48 = v47[1];
    v50 = *(v20 + v21[7]);

    v51 = v41;
    sub_1D4344B64(v20, type metadata accessor for PersistedThumbnailCache.ThumbnailDescription);
    *v46 = v51;
    v52 = (v46 + v43[6]);
    *v52 = v49;
    v52[1] = v48;
    *(v46 + v43[7]) = v50;
    *(v46 + v43[8]) = v57;
    v53 = (v46 + v43[9]);
    v54 = v62;
    *v53 = v61;
    v53[1] = v54;
    v55 = (v46 + v43[10]);
    *v55 = v58;
    v55[1] = v40;
    (*(*(v43 - 1) + 56))(v46, 0, 1, v43);
  }
}

void sub_1D4343BD0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = sub_1D4416D34();
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PersistedThumbnailCache.ThumbnailDescription();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D4417234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  sub_1D43A6714(v13);
  v14 = sub_1D4417244();
  if (v2)
  {
    (*(v11 + 8))(v13, v10);
    v19 = v2;
    sub_1D4416D24();
    sub_1D4344E34(&qword_1EDE338E8, MEMORY[0x1E6967E70]);
    v20 = sub_1D4417064();

    (*(v44 + 8))(v6, v4);
    if (v20)
    {
      v21 = sub_1D4417434();
      (*(*(v21 - 8) + 56))(v43, 1, 1, v21);
    }

    else
    {
      if (qword_1EC7C91A8 != -1)
      {
        swift_once();
      }

      v22 = sub_1D44181B4();
      __swift_project_value_buffer(v22, qword_1EC7CAD28);
      v23 = v2;
      v24 = v42;
      v25 = sub_1D44181A4();
      v26 = sub_1D441A164();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = v44;
        *v27 = 138412546;
        *(v27 + 4) = v24;
        *v28 = v24;
        *(v27 + 12) = 2080;
        swift_getErrorValue();
        v29 = v24;
        v30 = sub_1D441AE44();
        v32 = sub_1D42E9410(v30, v31, &v45);

        *(v27 + 14) = v32;
        _os_log_impl(&dword_1D4171000, v25, v26, "Cannot check for persisted thumbnail {key: %@, error: %s}", v27, 0x16u);
        sub_1D4344AFC(v28);
        MEMORY[0x1DA6D8690](v28, -1, -1);
        v33 = v44;
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x1DA6D8690](v33, -1, -1);
        MEMORY[0x1DA6D8690](v27, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    v40 = v14;
    v41 = v15;
    (*(v11 + 8))(v13, v10);
    if (qword_1EDE332A8 != -1)
    {
      swift_once();
    }

    sub_1D4344E34(&qword_1EDE330D8, type metadata accessor for PersistedThumbnailCache.ThumbnailDescription);
    v16 = v9;
    v18 = v40;
    v17 = v41;
    sub_1D4416D54();
    sub_1D4342814(v18, v17);
    v34 = *(v7 + 20);
    v35 = sub_1D4417434();
    v36 = *(v35 - 8);
    v37 = v16 + v34;
    v38 = v43;
    (*(v36 + 16))(v43, v37, v35);
    sub_1D4344B64(v16, type metadata accessor for PersistedThumbnailCache.ThumbnailDescription);
    (*(v36 + 56))(v38, 0, 1, v35);
  }
}

uint64_t sub_1D4344174(uint64_t a1)
{
  v32 = type metadata accessor for PersistedThumbnail();
  MEMORY[0x1EEE9AC00](v32);
  v33 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_1D4417234();
  v4 = *(v34 - 8);
  v5 = MEMORY[0x1EEE9AC00](v34);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  ThumbnailKey.containerUrl.getter(&v29 - v11);
  sub_1D441A134();
  if (v1)
  {
    (*(v4 + 8))(v12, v34);
    v16 = v33;
    if (qword_1EC7C91A8 != -1)
    {
      swift_once();
    }

    v17 = sub_1D44181B4();
    __swift_project_value_buffer(v17, qword_1EC7CAD28);
    sub_1D4344DCC(a1, v16, type metadata accessor for PersistedThumbnail);
    v18 = v1;
    v19 = sub_1D44181A4();
    v20 = sub_1D441A164();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = v23;
      *v21 = 138412546;
      v24 = *v16;
      sub_1D4344B64(v16, type metadata accessor for PersistedThumbnail);
      *(v21 + 4) = v24;
      *v22 = v24;
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v25 = sub_1D441AE44();
      v27 = sub_1D42E9410(v25, v26, &v35);

      *(v21 + 14) = v27;
      _os_log_impl(&dword_1D4171000, v19, v20, "Cannot persist thumbnail {key: %@, error: %s}", v21, 0x16u);
      sub_1D4344AFC(v22);
      MEMORY[0x1DA6D8690](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1DA6D8690](v23, -1, -1);
      MEMORY[0x1DA6D8690](v21, -1, -1);
    }

    else
    {

      sub_1D4344B64(v16, type metadata accessor for PersistedThumbnail);
    }

    return swift_willThrow();
  }

  else
  {
    v13 = *(v4 + 8);
    v30 = v7;
    v31 = v13;
    v13(v12, v34);
    sub_1D43A6714(v10);
    sub_1D4417274();
    v14 = v31;
    v31(v10, v34);
    v15 = v30;
    sub_1D43A672C(v30);
    sub_1D4417274();
    return v14(v15, v34);
  }
}

uint64_t sub_1D43445F4(void *a1)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D4416D34();
  v39 = *(v3 - 1);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4417234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  sub_1D43A6714(v9);
  v11 = sub_1D44171C4();
  v12 = *(v7 + 8);
  v12(v9, v6);
  v41[0] = 0;
  v13 = [v10 removeItemAtURL:v11 error:v41];

  v14 = v41[0];
  if (v13 && (v15 = v41[0], sub_1D43A672C(v9), v16 = sub_1D44171C4(), v12(v9, v6), v41[0] = 0, v17 = [v10 removeItemAtURL:v16 error:v41], v16, v14 = v41[0], v17))
  {
    v18 = v41[0];
    v19 = 1;
  }

  else
  {
    v20 = v14;
    v21 = sub_1D4417104();

    swift_willThrow();
    v22 = v21;
    sub_1D4416D14();
    sub_1D4344E34(&qword_1EDE338E8, MEMORY[0x1E6967E70]);
    v23 = v40;
    v24 = sub_1D4417064();

    (*(v39 + 8))(v5, v23);
    if (v24)
    {

      v19 = 0;
    }

    else
    {
      if (qword_1EC7C91A8 != -1)
      {
        swift_once();
      }

      v25 = sub_1D44181B4();
      __swift_project_value_buffer(v25, qword_1EC7CAD28);
      v26 = v21;
      v27 = a1;
      v28 = sub_1D44181A4();
      v29 = sub_1D441A164();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41[0] = v40;
        *v30 = 138412546;
        *(v30 + 4) = v27;
        *v31 = v27;
        *(v30 + 12) = 2080;
        swift_getErrorValue();
        v32 = v27;
        v33 = sub_1D441AE44();
        v35 = sub_1D42E9410(v33, v34, v41);

        *(v30 + 14) = v35;
        _os_log_impl(&dword_1D4171000, v28, v29, "Cannot remove persisted thumbnail {key: %@, error: %s}", v30, 0x16u);
        sub_1D4344AFC(v31);
        MEMORY[0x1DA6D8690](v31, -1, -1);
        v36 = v40;
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x1DA6D8690](v36, -1, -1);
        MEMORY[0x1DA6D8690](v30, -1, -1);
      }

      swift_willThrow();
    }
  }

  return v19 & 1;
}

uint64_t sub_1D4344A78()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersistedThumbnailCache.ThumbnailDescription()
{
  result = qword_1EDE33090;
  if (!qword_1EDE33090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4344AFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9918);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4344B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D4344BEC()
{
  type metadata accessor for ThumbnailKey();
  if (v0 <= 0x3F)
  {
    sub_1D4417434();
    if (v1 <= 0x3F)
    {
      sub_1D41873A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D4344CA0(uint64_t a1)
{
  *(a1 + 8) = sub_1D4344E34(&qword_1EDE330D8, type metadata accessor for PersistedThumbnailCache.ThumbnailDescription);
  result = sub_1D4344E34(&qword_1EC7CAD40, type metadata accessor for PersistedThumbnailCache.ThumbnailDescription);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D4344D24()
{
  result = qword_1EDE330F0[0];
  if (!qword_1EDE330F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE330F0);
  }

  return result;
}

unint64_t sub_1D4344D78()
{
  result = qword_1EDE337F8;
  if (!qword_1EDE337F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE337F8);
  }

  return result;
}

uint64_t sub_1D4344DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D4344E34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D4344E7C()
{
  result = qword_1EDE33800;
  if (!qword_1EDE33800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE33800);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersistedThumbnailCache.ThumbnailDescription.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistedThumbnailCache.ThumbnailDescription.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D4345024()
{
  result = qword_1EC7CAD58;
  if (!qword_1EC7CAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAD58);
  }

  return result;
}

unint64_t sub_1D434507C()
{
  result = qword_1EDE330E0;
  if (!qword_1EDE330E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE330E0);
  }

  return result;
}

unint64_t sub_1D43450D4()
{
  result = qword_1EDE330E8;
  if (!qword_1EDE330E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE330E8);
  }

  return result;
}

uint64_t sub_1D4345128(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D441AD84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1D441AD84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D441AD84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1D441AD84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D441AD84();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D43452DC()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7CAD60);
  __swift_project_value_buffer(v0, qword_1EC7CAD60);
  return sub_1D4418164();
}

id ICCalculateRecognitionController.init(note:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNote_];

  return v2;
}

Swift::Void __swiftcall ICCalculateRecognitionController.didInsert(_:at:)(Swift::String _, __C::_NSRange at)
{
  location = at.location;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = [v2 textView];
  if (v6)
  {
    v13 = v6;
    if (sub_1D4416D44() != location && (location & 0x8000000000000000) == 0)
    {
      if ([v2 isPreviewingResult])
      {
        v7 = [v13 selectedRange];
        v9 = &v7[v8];
        v10 = MEMORY[0x1DA6D5780](countAndFlagsBits, object);
        v11 = __OFSUB__(v9, v10);
        location = &v9[-v10];
        if (v11)
        {
          __break(1u);
          return;
        }
      }

      v12 = MEMORY[0x1DA6D5780](countAndFlagsBits, object);
      sub_1D43454FC(countAndFlagsBits, object, location, v12, 0);
    }
  }
}

void sub_1D43454FC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v57 = a5;
  v58 = a3;
  v59 = a4;
  v9 = sub_1D4416E44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  v22 = [v6 note];
  if (v22)
  {
    v60 = v22;
    v23 = [v22 textStorage];
    if (v23)
    {
      v56 = v23;
      v24 = [v60 calculateDocumentController];
      if (v24)
      {
        v55 = v24;
        if (([v24 isCalculateMathEnabled] & 1) != 0 && sub_1D4419CE4() >= 1)
        {
          v25 = [v6 previewBehavior];
          v49 = v21;
          if (v25)
          {
            if (v25 != 2)
            {
              if (v25 == 1)
              {
                sub_1D4416E34();
                goto LABEL_24;
              }

LABEL_54:
              v47 = v25;
              type metadata accessor for PreviewBehaviors(0);
              v61 = v47;
              sub_1D441ADB4();
              __break(1u);
              return;
            }

            if ((sub_1D4328644(v59 + v58) & 1) == 0)
            {
              v21 = v49;
              if (qword_1EDE324C8 != -1)
              {
                goto LABEL_52;
              }

              goto LABEL_22;
            }

            v21 = v49;
            if (qword_1EDE324A0 != -1)
            {
              goto LABEL_10;
            }
          }

          else if (qword_1EDE324A0 != -1)
          {
LABEL_10:
            swift_once();
          }

          for (i = qword_1EDE324B0; ; i = qword_1EDE324D8)
          {
            v28 = __swift_project_value_buffer(v9, i);
            (*(v10 + 16))(v19, v28, v9);
LABEL_24:
            v52 = *(v10 + 32);
            v53 = v10 + 32;
            v52(v21, v19, v9);
            v29 = OBJC_IVAR___ICCalculateRecognitionController_didTriggerResultPreviewAfterUnmarkingText;
            if (*(v6 + OBJC_IVAR___ICCalculateRecognitionController_didTriggerResultPreviewAfterUnmarkingText) == 1 && (a1 == 10 && a2 == 0xE100000000000000 || (sub_1D441AD84() & 1) != 0))
            {
              v30 = sub_1D4419C14();
              [v56 replaceCharactersInRange:v58 withString:{v59, v30}];

              (*(v10 + 8))(v49, v9);
              *(v6 + v29) = 0;
              return;
            }

            v48 = v29;
            v54 = v10;
            v51 = objc_opt_self();
            v19 = [v51 ic_equalsSignCharacterString];
            sub_1D4419C54();
            v10 = v31;

            v32 = sub_1D4419D84();

            if ((v32 & 1) == 0)
            {
              v33 = [v51 ic_fullWidthEqualsSignCharacterString];
              v10 = sub_1D4419C54();
              v19 = v34;

              LOBYTE(v33) = sub_1D4419D84();

              if ((v33 & 1) == 0)
              {
                break;
              }
            }

            v21 = (v59 + v58);
            a2 = v59 + v58 - 1;
            if (!__OFSUB__(v59 + v58, 1))
            {
              v35 = [v6 previewBehavior];
              v36 = v54;
              v37 = v48;
              if (v35 && (sub_1D4328644(v21) & 1) == 0)
              {
                if ([v6 insertsResults])
                {
                  [v6 insertResultAtRange_];
                }

                else
                {
                  [v6 discardPreviewedResult];
                }

                (*(v36 + 8))(v49, v9);
              }

              else
              {
                [v6 previewResultAtRange_];

                (*(v36 + 8))(v49, v9);
                *(v6 + v37) = v57 & 1;
              }

              return;
            }

            __break(1u);
LABEL_52:
            swift_once();
LABEL_22:
            ;
          }

          v50 = *(v54 + 16);
          v51 = (v54 + 16);
          v50(v16, v49, v9);
          v38 = HIBYTE(a2) & 0xF;
          v61 = a1;
          v62 = a2;
          if ((a2 & 0x2000000000000000) == 0)
          {
            v38 = a1 & 0xFFFFFFFFFFFFLL;
          }

          v63 = 0;
          v64 = v38;

          while (1)
          {
            v39 = sub_1D4419D34();
            if (!v40)
            {
              break;
            }

            v41 = v39;
            v42 = v40;
            v50(v13, v16, v9);
            v43 = (*(v54 + 80) + 16) & ~*(v54 + 80);
            v44 = swift_allocObject();
            v52((v44 + v43), v13, v9);
            LOBYTE(v41) = sub_1D43DEDF0(v41, v42, sub_1D4349ED0);

            if ((v41 & 1) == 0)
            {
              v45 = *(v54 + 8);
              v45(v16, v9);

              if ([v6 previewBehavior] == 2 && (sub_1D4328994(v59 + v58) & 1) != 0)
              {
                [v6 previewResultAtRange_];

                v45(v49, v9);
                *(v6 + v48) = v57 & 1;
              }

              else
              {
                [v6 discardPreviewedResult];

                v45(v49, v9);
              }

              return;
            }
          }

          v46 = *(v54 + 8);
          v46(v16, v9);

          if (!__OFSUB__(v59 + v58, 1))
          {
            [v6 commitPreviewedResultAtRange:v59 + v58 - 1 asLiteral:{1, 0}];

            v46(v49, v9);
            return;
          }

          __break(1u);
          goto LABEL_54;
        }

        v26 = v55;
      }

      else
      {

        v26 = v56;
      }
    }

    else
    {
      v26 = v60;
    }
  }
}

Swift::Void __swiftcall ICCalculateRecognitionController.didUnmarkString(_:at:)(Swift::String _, __C::_NSRange at)
{
  length = at.length;
  location = at.location;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = sub_1D4416D44();
  if ((location & 0x8000000000000000) == 0 && v6 != location)
  {

    sub_1D43454FC(countAndFlagsBits, object, location, length, 1);
  }
}

void sub_1D4345E94()
{
  v1 = v0;
  v2 = sub_1D4416E84();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_1D441A954();
  if (!*(v3 + 16) || (v4 = sub_1D42D00F4(v13), (v5 & 1) == 0))
  {

LABEL_15:
    sub_1D42D7374(v13);
    return;
  }

  sub_1D42D5D14(*(v3 + 56) + 32 * v4, v14);
  sub_1D42D7374(v13);
  sub_1D41766C0(0, &qword_1EDE33A28);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    return;
  }

  *&v12 = 0xD00000000000003ELL;
  *(&v12 + 1) = 0x80000001D444ED80;
  sub_1D441A954();
  if (!*(v3 + 16) || (v6 = sub_1D42D00F4(v13), (v7 & 1) == 0))
  {

    goto LABEL_15;
  }

  sub_1D42D5D14(*(v3 + 56) + 32 * v6, v14);
  sub_1D42D7374(v13);

  type metadata accessor for _NSRange(0);
  if ((swift_dynamicCast() & 1) == 0 || v12 == 0 || (v1[OBJC_IVAR___ICCalculateRecognitionController_isUpdatingMarkedTextExpressions] & 1) != 0 || (*&v1[OBJC_IVAR___ICCalculateRecognitionController_previewedExpression] = 0, , (v8 = [v1 note]) == 0))
  {
  }

  else
  {
    v9 = v8;
    v10 = [v8 calculateDocumentController];

    if (v10)
    {
      v11 = &v10[OBJC_IVAR___ICCalculateDocumentController_previewedExpressionString];
      *v11 = 0;
      *(v11 + 1) = 0;

      goto LABEL_13;
    }
  }
}

uint64_t ICCalculateRecognitionController.insertsResults.getter()
{
  v1 = OBJC_IVAR___ICCalculateRecognitionController_insertsResults;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ICCalculateRecognitionController.insertsResults.setter(char a1)
{
  v3 = OBJC_IVAR___ICCalculateRecognitionController_insertsResults;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Void __swiftcall ICCalculateRecognitionController.insertResult(at:)(__C::_NSRange at)
{
  v2 = v1;
  length = at.length;
  location = at.location;
  v5 = [v2 note];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 textView];
    if (v7)
    {
      v22 = v7;
      v8 = [v2 attachmentInsertionController];
      if (v8)
      {
        v9 = v8;
        v10 = [v6 textStorage];
        if (v10)
        {
          v11 = v10;
          v12 = [v6 calculateDocumentController];
          if (v12)
          {
            v13 = v12;
            v14 = [v6 documentMergeController];
            [v2 discardPreviewedResult];
            v15 = swift_allocObject();
            v15[2] = v11;
            v15[3] = location;
            v15[4] = length;
            v15[5] = v6;
            v15[6] = v14;
            v15[7] = v22;
            v15[8] = v9;
            v15[9] = v13;
            v16 = v11;
            v17 = v6;
            swift_unknownObjectRetain();
            v18 = v22;
            v19 = v9;
            v20 = v13;
            v23 = sub_1D4328CDC(length + location, sub_1D4349CF0, v15);

            swift_unknownObjectRelease();

            v21 = v23;
          }

          else
          {

            v21 = v11;
          }
        }

        else
        {

          v21 = v9;
        }
      }

      else
      {

        v21 = v22;
      }
    }

    else
    {
      v21 = v6;
    }
  }
}

void sub_1D43464D4(void *a1, void *a2, void (*a3)(void, void), char *a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9)
{
  v94 = a8;
  v95 = a5;
  v96 = a6;
  v97 = a7;
  v99 = a3;
  v100 = a4;
  v11 = sub_1D4419444();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D4419484();
  v86 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1D44194A4();
  v93 = *(v92 - 8);
  v16 = MEMORY[0x1EEE9AC00](v92);
  v84 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v78 - v18;
  v90 = sub_1D4417434();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D441A4A4();
  v98 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D4417494();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a1;
  if ((sub_1D43D9574() & 1) == 0)
  {
    return;
  }

  v79 = v14;
  v80 = v12;
  v81 = v11;
  v82 = a9;
  v83 = v20;
  v27 = v99;
  v28 = [a2 isRightToLeftAtIndex_];
  v29 = objc_opt_self();
  sub_1D4417484();
  sub_1D4417444();
  (*(v24 + 8))(v26, v23);
  v30 = sub_1D4419C14();

  v31 = v95;
  v32 = [v29 newCalculateResultAttachmentWithIdentifier:v30 note:v95 parentAttachment:0 rightToLeft:v28];

  v33 = sub_1D4419874();
  [v32 updateCalculateResult:v33 isRightToLeft:v28];

  [v32 setAnimateInsertion_];
  v34 = swift_allocObject();
  v35 = v94;
  v34[2] = a2;
  v34[3] = v35;
  v34[4] = v32;
  v34[5] = v27;
  v36 = v100;
  v34[6] = v100;
  v34[7] = v31;
  v106 = sub_1D4349E4C;
  v107 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v103 = 1107296256;
  v104 = sub_1D417BEE4;
  v105 = &block_descriptor_40;
  v37 = _Block_copy(&aBlock);
  v38 = a2;
  v39 = v35;
  v94 = v32;
  v40 = v31;

  [v96 blockingMergeForReason:3 textView:v97 block:v37];
  _Block_release(v37);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v42 = [objc_opt_self() defaultCenter];
  sub_1D441A4B4();

  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = v27;
  v44[4] = v36;
  v44[5] = v41;
  sub_1D4349E88(&qword_1EDE326E0, MEMORY[0x1E6969F20]);

  v45 = v83;
  v46 = sub_1D4418474();

  (*(v98 + 8))(v22, v45);
  swift_beginAccess();
  *(v41 + 16) = v46;

  v47 = [v40 calculateAccessibilityController];
  if (!v47)
  {

LABEL_13:

    return;
  }

  v48 = v47;
  v49 = sub_1D4419874();
  if (!v49)
  {

    goto LABEL_13;
  }

  v50 = v49;
  v51 = [v49 formattedResult];
  v52 = sub_1D4419C54();
  v54 = v53;

  v55 = sub_1D438C38C(v52, v54, 0, 0, 1);
  v57 = v56;

  v58 = &v48[OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement];
  v59 = *&v48[OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement + 8];
  if (!v59 || ((v60 = v58[2], *v58 != v55) || v59 != v57) && (sub_1D441AD84() & 1) == 0 || (, v61 = v88, sub_1D4417404(), sub_1D44173D4(), v63 = v62, (*(v89 + 8))(v61, v90), , v63 - v60 >= 2.0))
  {
    sub_1D41766C0(0, &qword_1EDE33D70);
    v98 = sub_1D441A2C4();
    v64 = v84;
    sub_1D4419494();
    sub_1D44194F4();
    v101 = v50;
    v65 = *(v93 + 8);
    v93 += 8;
    v99 = v65;
    v65(v64, v92);
    v66 = swift_allocObject();
    *(v66 + 16) = v55;
    *(v66 + 24) = v57;
    v106 = sub_1D4349F74;
    v107 = v66;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_1D417BEE4;
    v105 = &block_descriptor_56;
    v67 = _Block_copy(&aBlock);

    v68 = v85;
    sub_1D4419464();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D4349E88(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
    v100 = v48;
    v69 = v55;
    sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
    v70 = v87;
    v71 = v81;
    sub_1D441A814();
    v72 = v91;
    v73 = v98;
    MEMORY[0x1DA6D5C70](v91, v68, v70, v67);
    _Block_release(v67);

    v74 = v71;
    v55 = v69;
    v48 = v100;
    (*(v80 + 8))(v70, v74);
    (*(v86 + 8))(v68, v79);
    v99(v72, v92);
    v50 = v101;
  }

  v75 = v88;
  sub_1D4417404();
  sub_1D44173D4();
  v77 = v76;

  (*(v89 + 8))(v75, v90);
  *v58 = v55;
  *(v58 + 1) = v57;
  *(v58 + 2) = v77;
}

void sub_1D4346FD8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = [a1 undoManager];
  v12 = objc_opt_self();
  v13 = sub_1D4419C14();
  v14 = [v12 localizedFrameworkStringForKey:v13 value:0 table:0 allowSiri:1];

  if (!v14)
  {
    sub_1D4419C54();
    v14 = sub_1D4419C14();
  }

  [v11 setActionName_];

  [a6 updateModificationDateAndChangeCountAndSaveImmediately];
  if (qword_1EC7C91B0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D44181B4();
  __swift_project_value_buffer(v15, qword_1EC7CAD60);
  v16 = a3;
  oslog = sub_1D44181A4();
  v17 = sub_1D441A154();

  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    v20 = [v16 shortLoggingDescription];
    v21 = sub_1D4419C54();
    v23 = v22;

    v24 = sub_1D42E9410(v21, v23, &v26);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1D4171000, oslog, v17, "Added Calculate result attachment {attachment: %s}", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1DA6D8690](v19, -1, -1);
    MEMORY[0x1DA6D8690](v18, -1, -1);
  }
}

uint64_t sub_1D434726C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong regenerateTitleAndSnippetIfNecessaryForEdit:2 range:a3 changeInLength:{a4, 0}];
  }

  result = swift_beginAccess();
  if (*(a5 + 16))
  {

    sub_1D44182C4();
  }

  return result;
}

Swift::Void __swiftcall ICCalculateRecognitionController.insertLiteralResult(at:)(__C::_NSRange at)
{
  v2 = v1;
  length = at.length;
  location = at.location;
  v5 = [v2 note];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 textView];
    if (v7)
    {
      v18 = v7;
      v8 = [v6 textStorage];
      if (v8)
      {
        v9 = v8;
        v10 = [v6 calculateDocumentController];
        if (v10)
        {
          v11 = v10;
          v12 = [v6 documentMergeController];
          [v2 discardPreviewedResult];
          v13 = swift_allocObject();
          v13[2] = location;
          v13[3] = length;
          v13[4] = v12;
          v13[5] = v18;
          v13[6] = v9;
          v13[7] = v6;
          swift_unknownObjectRetain();
          v14 = v18;
          v15 = v9;
          v16 = v6;
          v19 = sub_1D4328CDC(length + location, sub_1D4349D24, v13);

          swift_unknownObjectRelease();

          v17 = v19;
        }

        else
        {

          v17 = v9;
        }
      }

      else
      {

        v17 = v18;
      }
    }

    else
    {
      v17 = v6;
    }
  }
}

void sub_1D434755C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = sub_1D4419874();
  if (v13)
  {
    v27 = v13;
    if ([v13 isTrivial])
    {
    }

    else
    {
      v14 = a3 + a2;
      v15 = sub_1D4419734();
      v16 = MEMORY[0x1DA6D5780](v15);

      v17 = __OFSUB__(v14, v16);
      v18 = v14 - v16;
      if (v17)
      {
        __break(1u);
      }

      else
      {
        v19 = sub_1D4419734();
        v20 = MEMORY[0x1DA6D5780](v19);

        v21 = swift_allocObject();
        v21[2] = a5;
        v21[3] = a6;
        v21[4] = v18;
        v21[5] = v20;
        v21[6] = v27;
        v21[7] = a7;
        aBlock[4] = sub_1D4349E34;
        aBlock[5] = v21;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D417BEE4;
        aBlock[3] = &block_descriptor_34;
        v22 = _Block_copy(aBlock);
        v23 = a5;
        v24 = a6;
        v25 = v27;
        v26 = a7;

        [a4 blockingMergeForReason:3 textView:v23 block:v22];
        _Block_release(v22);
      }
    }
  }
}

void sub_1D4347718(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v12 = [a1 undoManager];
  if (v12)
  {
    v13 = v12;
    v14 = objc_opt_self();
    v15 = sub_1D4419C14();
    v16 = [v14 localizedFrameworkStringForKey:v15 value:0 table:0 allowSiri:1];

    if (!v16)
    {
      sub_1D4419C54();
      v16 = sub_1D4419C14();
    }

    [v13 setActionName_];
  }

  [a2 beginEditing];
  v17 = [a5 formattedResult];
  if (!v17)
  {
    sub_1D4419C54();
    v17 = sub_1D4419C14();
  }

  [a2 replaceCharactersInRange:a3 withString:{a4, v17}];

  [a2 endEditing];
  v18 = [a5 formattedResult];
  v19 = sub_1D4419C54();
  v21 = v20;

  v22 = MEMORY[0x1DA6D5780](v19, v21);

  if (__OFADD__(a3, v22))
  {
    __break(1u);
  }

  else
  {
    [a1 setSelectedRange_];
    [a6 updateModificationDateAndChangeCountAndSaveImmediately];
    if (qword_1EC7C91B0 == -1)
    {
      goto LABEL_9;
    }
  }

  swift_once();
LABEL_9:
  v23 = sub_1D44181B4();
  __swift_project_value_buffer(v23, qword_1EC7CAD60);
  v24 = a6;
  oslog = sub_1D44181A4();
  v25 = sub_1D441A154();

  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136315138;
    v28 = [v24 shortLoggingDescription];
    v29 = sub_1D4419C54();
    v31 = v30;

    v32 = sub_1D42E9410(v29, v31, &v34);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1D4171000, oslog, v25, "Added literal Calculate result {note: %s}", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1DA6D8690](v27, -1, -1);
    MEMORY[0x1DA6D8690](v26, -1, -1);
  }
}

uint64_t ICCalculateRecognitionController.previewBehavior.getter()
{
  v1 = OBJC_IVAR___ICCalculateRecognitionController_previewBehavior;
  swift_beginAccess();
  return *(v0 + v1);
}

id ICCalculateRecognitionController.previewBehavior.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ICCalculateRecognitionController_previewBehavior;
  swift_beginAccess();
  *&v1[v3] = a1;
  return [v1 discardPreviewedResult];
}

Swift::Void __swiftcall ICCalculateRecognitionController.previewResult(at:)(__C::_NSRange at)
{
  v2 = v1;
  length = at.length;
  location = at.location;
  v5 = [v2 textView];
  if (!v5)
  {
    return;
  }

  v30 = v5;
  v6 = [v2 note];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 textStorage];

    if (v8)
    {
      v9 = [v2 note];
      if (v9 && (v10 = v9, v11 = [v9 calculateDocumentController], v10, v11))
      {
        v12 = v8;
        v13 = [v12 string];
        if (!v13)
        {
          __break(1u);
          return;
        }

        v14 = v13;

        v15 = [v14 ic:length + location checkedSubstringWithRange:1];
        if (v15)
        {
          v16 = v15;
          v17 = sub_1D4419C54();
          v19 = v18;

          sub_1D43892C4(v17, v19);
          v21 = v20;

          if (!v21 || (v22 = sub_1D4419BA4(), , (v22 & 1) == 0))
          {

            v29 = v14;
            goto LABEL_14;
          }
        }

        [v2 discardPreviewedResult];
        v23 = swift_allocObject();
        v23[2] = v2;
        v23[3] = v11;
        v23[4] = location;
        v23[5] = length;
        v23[6] = v30;
        v23[7] = v14;
        v23[8] = v12;
        v24 = v12;
        v25 = v2;
        v26 = v11;
        v27 = v30;
        v28 = v14;
        v30 = sub_1D4328CDC(length + location, sub_1D4349D34, v23);
      }

      else
      {
      }
    }
  }

  v29 = v30;
LABEL_14:
}

void sub_1D4347E38(uint64_t inited, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, id a7, void *a8)
{
  v125 = a8;
  v126 = a6;
  v127 = a4;
  v129 = a2;
  v121 = sub_1D4419444();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v118 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1D4419484();
  v117 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v14 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1D44194A4();
  v124 = *(v123 - 8);
  v15 = MEMORY[0x1EEE9AC00](v123);
  v17 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v109 - v18;
  v20 = sub_1D4417434();
  v122 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D4419874();
  if (v23)
  {
    v128 = v23;
    sub_1D4419784();
    if (v24)
    {

      goto LABEL_6;
    }

    if ([v128 isTrivial])
    {

      goto LABEL_6;
    }

LABEL_21:
    v26 = v129;
    *&v129[OBJC_IVAR___ICCalculateRecognitionController_previewedExpression] = inited;

    if (![v126 isEditable])
    {
      [v26 discardPreviewedResult];
      v31 = v128;

      return;
    }

    if (__OFSUB__(a5 + v127, 1))
    {
      __break(1u);
LABEL_65:
      swift_once();
LABEL_48:
      v58 = qword_1EC7D13A8;
      *(inited + 72) = qword_1EC7D13A8;
      *(inited + 104) = MEMORY[0x1E69E6370];
      *(inited + 80) = 1;
      v59 = v58;
      sub_1D42EABA8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CAE60);
      swift_arrayDestroy();
      v60 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v115 = v14;
      v61 = sub_1D4419C14();
      type metadata accessor for Key(0);
      sub_1D4349E88(&qword_1EDE326C0, type metadata accessor for Key);
      v62 = sub_1D4419B54();

      v63 = [v60 initWithString:v61 attributes:v62];

      v64 = OBJC_IVAR___ICCalculateRecognitionController_isUpdatingMarkedTextExpressions;
      v65 = v129;
      v129[OBJC_IVAR___ICCalculateRecognitionController_isUpdatingMarkedTextExpressions] = 1;
      v66 = v65;
      v67 = v126;
      v126 = v63;
      [v67 setAttributedMarkedText:v63 selectedRange:{0, 0}];
      v66[v64] = 0;
      v66[OBJC_IVAR___ICCalculateRecognitionController_didTriggerResultPreviewAfterUnmarkingText] = 0;
      v68 = [v66 note];
      if (v68)
      {
        v69 = v68;
        v70 = [v68 calculateAccessibilityController];

        if (v70)
        {
          v71 = sub_1D438C38C(v115, v116, 0, 0, 0);
          v73 = v72;

          v74 = &v70[OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement];
          v75 = *&v70[OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement + 8];
          v116 = &v70[OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement];
          if (!v75 || ((v76 = v74[2], *v74 != v71) || v75 != v73) && (sub_1D441AD84() & 1) == 0 || (, sub_1D4417404(), sub_1D44173D4(), v78 = v77, (*(v122 + 8))(v22, v20), , v78 - v76 >= 2.0))
          {
            sub_1D41766C0(0, &qword_1EDE33D70);
            v110 = sub_1D441A2C4();
            sub_1D4419494();
            sub_1D44194F4();
            v79 = *(v124 + 8);
            v124 += 8;
            v111 = v79;
            v79(v17, v123);
            v80 = swift_allocObject();
            *(v80 + 16) = v71;
            *(v80 + 24) = v73;
            v134 = sub_1D4349E2C;
            v135 = v80;
            aBlock = MEMORY[0x1E69E9820];
            v131 = 1107296256;
            v132 = sub_1D417BEE4;
            v133 = &block_descriptor_9;
            v109 = _Block_copy(&aBlock);

            v81 = v113;
            sub_1D4419464();
            aBlock = MEMORY[0x1E69E7CC0];
            sub_1D4349E88(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
            v112 = v73;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
            v115 = v70;
            sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
            v82 = v118;
            v83 = v121;
            v73 = v112;
            sub_1D441A814();
            v84 = v109;
            v85 = v110;
            MEMORY[0x1DA6D5C70](v19, v81, v82, v109);
            _Block_release(v84);

            v86 = v83;
            v70 = v115;
            (*(v120 + 8))(v82, v86);
            (*(v117 + 8))(v81, v119);
            v111(v19, v123);
          }

          sub_1D4417404();
          sub_1D44173D4();
          v88 = v87;
          (*(v122 + 8))(v22, v20);
          v89 = v116;
          *v116 = v71;
          *(v89 + 1) = v73;
          *(v89 + 2) = v88;

          v66 = v129;
        }
      }

      v90 = [v128 expression];
      v91 = sub_1D4419C54();
      v93 = v92;

      v94 = [v114 ic_equalsSignCharacterString];
      v95 = sub_1D4419C54();
      v97 = v96;

      aBlock = v91;
      v131 = v93;

      MEMORY[0x1DA6D5730](v95, v97);

      v98 = aBlock;
      v99 = v131;
      v100 = [v125 isRightToLeftAtIndex_];
      if (v100)
      {
        aBlock = v98;
        v131 = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE80);
        sub_1D417645C(&unk_1EC7CAE88, &qword_1EC7CAE80);
        sub_1D4419DB4();
      }

      v101 = [v66 suggestionsDelegate];
      if (v101)
      {
        v102 = v101;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_1D4438D80;
        v104 = objc_opt_self();
        v105 = sub_1D4419C14();

        v106 = [v104 literalTextSuggestionWithInputText_];

        *(v103 + 32) = v106;
        *(v103 + 40) = [v104 calculateResultTextSuggestionWithResult:v128 isRTL:v100];
        *(v103 + 48) = [v104 calculateResultLiteralTextSuggestionWithResult_];
        sub_1D41766C0(0, &qword_1EC7CAE78);
        v107 = sub_1D4419E24();

        [v102 calculateRecognitionController:v66 didUpdateTextSuggestions:v107];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

    v27 = [a7 ic:a5 + v127 - 1 checkedSubstringWithRange:1];
    v113 = v14;
    if (v27)
    {
      v28 = v27;
      v115 = sub_1D4419C54();
      v116 = v29;
    }

    else
    {
      v115 = 0;
      v116 = 0xE000000000000000;
    }

    v32 = objc_opt_self();
    v33 = [v32 ic_equalsSignCharacterString];
    sub_1D4419C54();

    v34 = sub_1D4419D84();

    v114 = v32;
    if (v34)
    {
      v35 = 1;
    }

    else
    {
      v36 = [v32 ic_fullWidthEqualsSignCharacterString];
      sub_1D4419C54();

      v35 = sub_1D4419D84();
    }

    v37 = [v129 previewBehavior];
    if (v37)
    {
      if (v37 == 2)
      {

        if (v35)
        {
          v38 = [v128 formattedResult];
LABEL_43:
          v39 = v38;
          v40 = sub_1D4419C54();
          v42 = v41;

          goto LABEL_47;
        }

        v43 = [v114 ic_calculateEqualsSignString];
        v44 = sub_1D4419C54();
        v46 = v45;

        v47 = [v128 formattedResult];
        v116 = sub_1D4419C54();
        v49 = v48;

        aBlock = v44;
        v131 = v46;

        MEMORY[0x1DA6D5730](v116, v49);

        v40 = aBlock;
        v42 = v131;
      }

      else
      {
        if (v37 != 1)
        {
          v108 = v37;
          type metadata accessor for PreviewBehaviors(0);
          aBlock = v108;
          sub_1D441ADB4();
          __break(1u);
          return;
        }

        v40 = 0;
        v42 = 0xE000000000000000;
      }

LABEL_47:
      v116 = v42;
      aBlock = sub_1D4419734();
      v131 = v50;

      MEMORY[0x1DA6D5730](v40, v42);

      v51 = v131;
      v52 = (a3 + OBJC_IVAR___ICCalculateDocumentController_previewedExpressionString);
      *v52 = aBlock;
      v52[1] = v51;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CAE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D44364A0;
      v53 = *MEMORY[0x1E69DB650];
      *(inited + 32) = *MEMORY[0x1E69DB650];
      v14 = v40;
      v54 = objc_opt_self();
      v55 = v53;
      v56 = [v54 tintColor];
      v57 = [v56 colorWithAlphaComponent_];

      *(inited + 64) = sub_1D41766C0(0, &qword_1EDE32418);
      *(inited + 40) = v57;
      if (qword_1EC7C91C0 == -1)
      {
        goto LABEL_48;
      }

      goto LABEL_65;
    }

    v38 = [v128 formattedResult];
    goto LABEL_43;
  }

LABEL_6:
  a7 = v129;
  if (![v129 previewBehavior])
  {
    v25 = sub_1D4419854();
    if (v25)
    {

      sub_1D4189834();
      v17 = MEMORY[0x1DA6D53A0]();

      a3 = v17 & 0xFFFFFFFFFFFFFF8;
      if (v17 >> 62)
      {
LABEL_63:
        v22 = sub_1D441A8C4();
      }

      else
      {
        v22 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = 0;
      v14 = (v17 & 0xC000000000000001);
      while (v22 != v19)
      {
        if (v14)
        {
          MEMORY[0x1DA6D6410](v19, v17);
          if (__OFADD__(v19, 1))
          {
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_63;
          }

          if (__OFADD__(v19, 1))
          {
            goto LABEL_20;
          }
        }

        inited = sub_1D4419874();

        ++v19;
        if (inited)
        {

          v30 = v127;

          [a7 insertResultAtRange_];
          return;
        }
      }
    }
  }
}

uint64_t sub_1D4348FC0()
{
  v0 = sub_1D4416E44();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  __swift_allocate_value_buffer(v5, qword_1EDE324D8);
  __swift_project_value_buffer(v0, qword_1EDE324D8);
  sub_1D4416E24();
  sub_1D4416DC4();
  sub_1D4416E04();
  v8 = *(v1 + 8);
  v8(v4, v0);
  return (v8)(v7, v0);
}

uint64_t sub_1D43490F8()
{
  v0 = sub_1D4416E44();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - v9;
  __swift_allocate_value_buffer(v8, qword_1EDE324B0);
  __swift_project_value_buffer(v0, qword_1EDE324B0);
  if (qword_1EDE324C8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_1EDE324D8);
  (*(v1 + 16))(v7, v11, v0);
  sub_1D4416DC4();
  sub_1D4416E04();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v7, v0);
  sub_1D4416DC4();
  sub_1D4416E04();
  v12(v7, v0);
  return (v12)(v10, v0);
}

Swift::Void __swiftcall ICCalculateRecognitionController.commitPreviewedResult(at:asLiteral:)(__C::_NSRange at, Swift::Bool asLiteral)
{
  if (!*&v2[OBJC_IVAR___ICCalculateRecognitionController_previewedExpression])
  {
    return;
  }

  v3 = v2;
  length = at.length;
  location = at.location;
  v7 = [v2 note];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = [v7 textStorage];

  if (!v9)
  {
    return;
  }

  [v3 discardPreviewedResult];
  v10 = [v9 string];
  if (!v10)
  {
    sub_1D4419C54();
    v10 = sub_1D4419C14();
  }

  if (__OFSUB__(length + location, 2))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = [v10 ic:length + location - 2 checkedSubstringWithRange:2];

  if (v11)
  {
    v12 = sub_1D4419C54();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v37 = v12;
  v15 = objc_opt_self();
  v16 = [v15 ic_equalsSignCharacterString];
  v17 = sub_1D4419C54();
  v19 = v18;

  sub_1D42CC920();
  v20 = sub_1D441A7F4();

  v21 = [v3 previewBehavior];
  [v9 beginEditing];
  if (v21 != 2 || (v20 & 1) != 0)
  {
    v24 = sub_1D4419C14();

    [v9 replaceCharactersInRange:location withString:{length, v24}];

    [v9 endEditing];
    v25 = [v15 ic_equalsSignCharacterString];
    v26 = sub_1D4419C54();
    v28 = v27;

    v29 = MEMORY[0x1DA6D5780](v26, v28);

    v30 = __OFSUB__(location, v29);
    location -= v29;
    if (!v30)
    {
      goto LABEL_14;
    }

LABEL_19:
    __break(1u);
    return;
  }

  v22 = [v15 ic_equalsSignCharacterString];
  sub_1D4419C54();

  v23 = sub_1D4419C14();

  [v9 replaceCharactersInRange:location withString:{length, v23}];

  [v9 endEditing];
LABEL_14:
  v31 = [v15 ic_equalsSignCharacterString];
  v32 = sub_1D4419C54();
  v34 = v33;

  v35 = MEMORY[0x1DA6D5780](v32, v34);

  v36 = &selRef_insertLiteralResultAtRange_;
  if (!asLiteral)
  {
    v36 = &selRef_insertResultAtRange_;
  }

  [v3 *v36];
}