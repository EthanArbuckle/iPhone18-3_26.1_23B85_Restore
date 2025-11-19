uint64_t sub_1B0C737EC(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, void *))
{
  v28[10] = *MEMORY[0x1E69E9840];
  v6 = HIBYTE(a2) & 0xF;
  v28[0] = a1;
  v28[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v28[2] = 0;
  v28[3] = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E44DB8();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:

          __break(1u);
LABEL_44:

          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1B0E44C18();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1B0E46368();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1B0C04CF0(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_43;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1B0C04CF0(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_44;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_40;
        }
      }

      v20 = sub_1B0C704E4(v9, v10);

      if ((v20 & 0x100) == 0 && v20 - 127 >= 0xFFFFFFA1)
      {
        if (v20 - 91 > 0xFFFFFFE5)
        {
          v27 = v20 | 0x20;
          swift_beginAccess();
          v24 = *(a3 + 16);
          v22 = __OFSUB__(v24, 1);
          v23 = v24 - 1;
          if (v22)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v27 = v20;
          swift_beginAccess();
          v21 = *(a3 + 16);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v22)
          {
            goto LABEL_41;
          }
        }

        *(a3 + 16) = v23;
        a4(&v27, v28);
      }

LABEL_6:
      v9 = sub_1B0E44DB8();
      v10 = v11;
    }

    while (v11);
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C73A84(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a5 < 3)
  {
    goto LABEL_46;
  }

  v41 = 34;
  sub_1B0C72368(&v41, &v42, a6);
  v10 = a1 >> 14;
  v11 = a2 >> 14;
  if (a1 >> 14 < a2 >> 14)
  {
    v36 = 2;
    do
    {
      v13 = sub_1B0E45E18();
      v14 = v12;
      if ((v13 != 2573 || v12 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        v15 = a2;
        v16 = a3;
        v17 = a4;
        v18 = v11;
        if ((v14 & 0x2000000000000000) != 0)
        {
          v19 = HIBYTE(v14) & 0xF;
        }

        else
        {
          v19 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (!v19)
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
        }

        if ((v14 & 0x1000000000000000) != 0)
        {
          v24 = sub_1B0E44C18();
        }

        else
        {
          if ((v14 & 0x2000000000000000) != 0)
          {
            v21 = v13;
          }

          else
          {
            if ((v13 & 0x1000000000000000) != 0)
            {
              v20 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v20 = sub_1B0E46368();
            }

            v21 = *v20;
          }

          v22 = v21;
          v23 = (__clz(~v21) - 24) << 16;
          if (v22 < 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = 65541;
          }
        }

        v25 = v24 >> 14 == 4 * v19;
        v11 = v18;
        a4 = v17;
        a3 = v16;
        a2 = v15;
        if (!v25)
        {
          goto LABEL_4;
        }

        v26 = sub_1B0C04CF0(v13, v14);
        if ((v26 & 0x100000000) != 0)
        {
          goto LABEL_49;
        }

        if ((v26 & 0xFFFFFF80) != 0)
        {
LABEL_4:

          goto LABEL_5;
        }

        v27 = sub_1B0C04CF0(v13, v14);
        if ((v27 & 0x100000000) != 0)
        {
          goto LABEL_50;
        }

        if ((v27 & 0xFFFFFF00) != 0)
        {
          goto LABEL_45;
        }
      }

      v28 = sub_1B0C704E4(v13, v14);

      if ((v28 & 0x100) == 0)
      {
        if (v28 == 92 || v28 == 34)
        {
          if (__OFADD__(v36, 2))
          {
            goto LABEL_44;
          }

          if (v36 + 2 >= a5)
          {
            break;
          }

          v36 += 2;
          v38 = 92;
          sub_1B0C72368(&v38, &v39, a6);
          v37 = v28;
          v29 = &v37;
          v30 = &v38;
          v31 = a6;
        }

        else
        {
          if (v28 - 127 < 0xFFFFFFA1)
          {
            goto LABEL_5;
          }

          if (__OFADD__(v36, 1))
          {
            goto LABEL_48;
          }

          if (v36 + 1 >= a5)
          {
            break;
          }

          ++v36;
          v39 = v28;
          v29 = &v39;
          v30 = &v40;
          v31 = a6;
        }

        sub_1B0C72368(v29, v30, v31);
      }

LABEL_5:
      v10 = sub_1B0E45DD8() >> 14;
    }

    while (v10 < v11);
  }

  v40 = 34;
  sub_1B0C72368(&v40, &v41, a6);
  if (v11 < v10)
  {
    goto LABEL_47;
  }

  result = sub_1B0E45E28();
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B0C73DDC(uint64_t (*a1)(char *, char *), void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6)
{
  v25 = a5;
  v26[15] = *MEMORY[0x1E69E9840];
  v10 = a3 + (a4 & 1);
  if (__OFADD__(a3, a4 & 1))
  {
    __break(1u);
LABEL_24:
    sub_1B07AD120(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v23 = swift_slowAlloc();
      sub_1B07AD120(v6, v26);
      sub_1B0C70D4C(v23, v23 + v10, a4 & 1, v25, v8, v7, v6);
      MEMORY[0x1B272C230](v23, -1, -1);
      goto LABEL_22;
    }

    goto LABEL_5;
  }

  if (v10 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = a6;
  v7 = a2;
  v8 = a1;
  a2 = v26;
  a1 = a6;
  if (v10 >= 1025)
  {
    goto LABEL_24;
  }

  isStackAllocationSafe = sub_1B07AD120(a6, v26);
LABEL_5:
  v24 = &v24;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v13 = &v24 - v12;
  v14 = &v24 + v10 - v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = v10;
  v15[4] = v13;
  v15[5] = v14;
  if (a4)
  {
    sub_1B0C72368(" ", "", v15);
  }

  sub_1B0C72368("multipart/", "", v15);
  sub_1B0C724CC(v6[1], v6[2], sub_1B0C76E5C);
  swift_beginAccess();
  v16 = v15[2];
  v17 = *(v25 + 8);
  if (v17 < 1)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v17, v16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v17 + v16 < 79)
  {
LABEL_13:
    if (v16 < 0)
    {
      __break(1u);
    }

    else
    {
      v8(v13, &v13[v16]);

      if (v10 >= v16)
      {
        v19 = v17 + v16;
        if (!__OFADD__(v17, v16))
        {
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1B0C72700(*v25, v8);
  v8("\t", "");
  if ((a4 & 1) == 0)
  {
LABEL_18:
    if (v16 < 0)
    {
      goto LABEL_32;
    }

    v18 = 0;
    goto LABEL_20;
  }

  if (v16 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v18 = 1;
LABEL_20:
  v8(&v13[v18], &v13[v16]);
  v20 = sub_1B0433338(v18, v16, v13, v14);

  v19 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  *(v25 + 8) = v19;
LABEL_22:
  result = sub_1B0717020(v6);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C740DC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B041C260(v3, 0);
  sub_1B041D32C(0, v3, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v17 = a1 + 32;
  while (1)
  {
    v5 = (v17 + 32 * v4);
    v7 = *v5;
    v6 = v5[1];
    v9 = v5[2];
    v8 = v5[3];
    v10 = *(v18 + 16);
    if (v10)
    {
      break;
    }

LABEL_11:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C07E68(v7, v6);
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1B041D32C((v13 > 1), v14 + 1, 1);
    }

    ++v4;
    *(v2 + 16) = v14 + 1;
    v15 = v2 + 16 * v14;
    *(v15 + 32) = v9;
    *(v15 + 40) = v8;
    if (v4 == v3)
    {
      return 0;
    }
  }

  v11 = (v18 + 40);
  while (1)
  {
    v12 = *(v11 - 1) == v7 && *v11 == v6;
    if (v12 || (sub_1B0E46A78() & 1) != 0)
    {
      break;
    }

    v11 += 2;
    if (!--v10)
    {
      goto LABEL_11;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1B0C742B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = HIBYTE(a2) & 0xF;
  v22[0] = a1;
  v22[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22[2] = 0;
  v22[3] = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0E44DB8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    while (1)
    {
      if (v7 == 2573 && v8 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
      {
        goto LABEL_28;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v15 = sub_1B0E44C18();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v12 = v7;
        }

        else
        {
          v11 = ((v7 & 0x1000000000000000) != 0 ? (v8 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B0E46368());
          v12 = *v11;
        }

        v13 = v12;
        v14 = (__clz(~v12) - 24) << 16;
        v15 = v13 < 0 ? v14 : 65541;
      }

      if (v15 >> 14 == 4 * v10)
      {
        v16 = sub_1B0C04CF0(v7, v8);
        if ((v16 & 0x100000000) != 0)
        {
          goto LABEL_36;
        }

        if ((v16 & 0xFFFFFF80) == 0)
        {
          break;
        }
      }

LABEL_6:
      v7 = sub_1B0E44DB8();
      v8 = v9;
      if (!v9)
      {
        goto LABEL_33;
      }
    }

    v17 = sub_1B0C04CF0(v7, v8);
    if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_37;
    }

    if ((v17 & 0xFFFFFF00) != 0)
    {
      goto LABEL_35;
    }

LABEL_28:
    v18 = sub_1B0C704E4(v7, v8);

    if ((v18 & 0x100) == 0 && v18 - 127 >= 0xFFFFFFA1)
    {
      v21 = v18;
      sub_1B0C72368(&v21, v22, a3);
    }

    goto LABEL_6;
  }

LABEL_33:

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C744C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, void (*a7)(char *, char *), char *a8)
{
  v12 = a5;
  v14 = BYTE6(a2);
  v56 = *MEMORY[0x1E69E9840];
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v54, 0, 14);
      v16 = a3;
      sub_1B07169CC(a4, v55);
      sub_1B07169CC(a4, v55);
      sub_1B07169CC(a4, v55);
      sub_1B07169CC(a4, v55);
      v47 = a7;
      v48 = a8;
      v17 = v54;
      v18 = 0;
      v19 = v16;
      v20 = a4;
      v21 = v12;
      v22 = a6;
LABEL_38:
      sub_1B0C682CC(0, v18, v54, v17, v19, v20, v21, v22, &v53, v47, v48);
      sub_1B075E648(a4);
      if (!v8)
      {
        v16 = v53;
      }

      goto LABEL_42;
    }

    v51 = a3;
    v52 = v8;
    v49 = &v47;
    v50 = a6;
    v23 = *(a1 + 16);
    v24 = *(a1 + 24);
    sub_1B07169CC(a4, v55);
    sub_1B07169CC(a4, v55);
    sub_1B07169CC(a4, v55);
    sub_1B07169CC(a4, v55);
    sub_1B07169CC(a4, v55);
    v16 = sub_1B0E42A98();
    if (v16)
    {
      v25 = sub_1B0E42AC8();
      if (__OFSUB__(v23, v25))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      v16 += v23 - v25;
    }

    v26 = __OFSUB__(v24, v23);
    v27 = v24 - v23;
    if (!v26)
    {
      v28 = sub_1B0E42AB8();
      if (v28 >= v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      if (v16)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if ((v30 & 0x8000000000000000) == 0)
      {
        v31 = v29 + v16;
        if (v16)
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        sub_1B07169CC(a4, v55);
        v33 = v52;
        sub_1B0C682CC(0, v30, v16, v32, v51, a4, v12, v50, v54, a7, a8);
        if (v33)
        {
          sub_1B075E648(a4);
          sub_1B075E648(a4);
          sub_1B075E648(a4);
          goto LABEL_42;
        }

        sub_1B075E648(a4);
        sub_1B075E648(a4);
        sub_1B075E648(a4);
LABEL_41:
        v16 = v54[0];
        goto LABEL_42;
      }

      goto LABEL_45;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!v15)
  {
    v54[0] = a1;
    LOWORD(v54[1]) = a2;
    BYTE2(v54[1]) = BYTE2(a2);
    BYTE3(v54[1]) = BYTE3(a2);
    BYTE4(v54[1]) = BYTE4(a2);
    v16 = a3;
    BYTE5(v54[1]) = BYTE5(a2);
    sub_1B07169CC(a4, v55);
    sub_1B07169CC(a4, v55);
    sub_1B07169CC(a4, v55);
    sub_1B07169CC(a4, v55);
    v47 = a7;
    v48 = a8;
    v17 = (v54 + v14);
    v18 = v14;
    v19 = v16;
    v20 = a4;
    v21 = v12;
    v22 = a6;
    goto LABEL_38;
  }

  LODWORD(v50) = a5;
  v52 = v8;
  v35 = a1;
  v36 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_44;
  }

  v51 = a3;
  v49 = &v47;
  sub_1B07169CC(a4, v55);
  sub_1B07169CC(a4, v55);
  sub_1B07169CC(a4, v55);
  sub_1B07169CC(a4, v55);
  sub_1B07169CC(a4, v55);
  v16 = sub_1B0E42A98();
  if (v16)
  {
    v37 = sub_1B0E42AC8();
    if (__OFSUB__(v35, v37))
    {
      goto LABEL_48;
    }

    v16 += v35 - v37;
  }

  v38 = sub_1B0E42AB8();
  if (v38 >= v36)
  {
    v39 = v36;
  }

  else
  {
    v39 = v38;
  }

  if (v16)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = v50;
  if (v40 < 0)
  {
    goto LABEL_46;
  }

  v42 = v39 + v16;
  if (v16)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  sub_1B07169CC(a4, v55);
  v44 = v52;
  sub_1B0C682CC(0, v40, v16, v43, v51, a4, v41, a6, v54, a7, a8);
  sub_1B075E648(a4);
  sub_1B075E648(a4);
  sub_1B075E648(a4);
  if (!v44)
  {
    goto LABEL_41;
  }

LABEL_42:
  sub_1B075E648(a4);
  sub_1B075E648(a4);
  sub_1B075E648(a4);
  v45 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t sub_1B0C7495C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v4 = HIBYTE(a2) & 0xF;
  v23[0] = a1;
  v23[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v23[2] = 0;
  v23[3] = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0E44DB8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    while (1)
    {
      if (v7 == 2573 && v8 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
      {
        goto LABEL_28;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v15 = sub_1B0E44C18();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v12 = v7;
        }

        else
        {
          v11 = ((v7 & 0x1000000000000000) != 0 ? (v8 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B0E46368());
          v12 = *v11;
        }

        v13 = v12;
        v14 = (__clz(~v12) - 24) << 16;
        v15 = v13 < 0 ? v14 : 65541;
      }

      if (v15 >> 14 == 4 * v10)
      {
        v16 = sub_1B0C04CF0(v7, v8);
        if ((v16 & 0x100000000) != 0)
        {
          goto LABEL_38;
        }

        if ((v16 & 0xFFFFFF80) == 0)
        {
          break;
        }
      }

LABEL_6:
      v7 = sub_1B0E44DB8();
      v8 = v9;
      if (!v9)
      {
        goto LABEL_35;
      }
    }

    v17 = sub_1B0C04CF0(v7, v8);
    if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_39;
    }

    if ((v17 & 0xFFFFFF00) != 0)
    {
      goto LABEL_37;
    }

LABEL_28:
    v18 = sub_1B0C704E4(v7, v8);

    if ((v18 & 0x100) == 0)
    {
      v19 = v18;
      if (v18 - 127 >= 0xFFFFFFA1)
      {
        if (v18 - 91 > 0xFFFFFFE5)
        {
          v19 = v18 | 0x20;
        }

        v22 = v19;
        sub_1B0C72368(&v22, v23, a3);
      }
    }

    goto LABEL_6;
  }

LABEL_35:

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C74B80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v14 = *MEMORY[0x1E69E9840];
  sub_1B0C7495C(a1, a2, a6);
  v13 = 47;
  sub_1B0C72368(&v13, &v14, a6);
  result = sub_1B0C7495C(a3, a4, a6);
  if (*(*(a5 + 24) + 16))
  {
    v12 = 59;
    result = sub_1B0C72368(&v12, &v13, a6);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C74C44(char a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 13;
    }

    else
    {
      v1 = 10;
    }

    v10 = v1;
    v3 = &v10;
    v4 = v11;
    v2 = MEMORY[0x1E69E6290];
    v12 = MEMORY[0x1E69E6290];
    v13 = MEMORY[0x1E6969DF8];
  }

  else
  {
    v2 = MEMORY[0x1E69E6290];
    v12 = MEMORY[0x1E69E6290];
    v13 = MEMORY[0x1E6969DF8];
    v3 = "\r\n";
    v4 = "";
  }

  v11[0] = v3;
  v11[1] = v4;
  v5 = __swift_project_boxed_opaque_existential_0(v11, v2);
  v7 = *v5;
  v6 = v5[1];
  sub_1B0E42EF8();
  result = __swift_destroy_boxed_opaque_existential_0(v11);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C74D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C74DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0C74E2C(uint64_t a1)
{
  v2 = type metadata accessor for Message(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1B0C74E90(void *a1, const char **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9)
{
  v15 = a2;
  v47 = *MEMORY[0x1E69E9840];
  v16 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_24:
    sub_1B07AD43C(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v39 = swift_slowAlloc();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07AD43C(v13, &v43);
      sub_1B0C719A4(v39, v39 + v16, v15 & 1, v11, v9, v12, v10, v14, v13);
      MEMORY[0x1B272C230](v39, -1, -1);
      goto LABEL_22;
    }

    goto LABEL_5;
  }

  if (v16 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = a8;
  v14 = a7;
  v10 = a6;
  v12 = a5;
  v9 = a4;
  v11 = a3;
  v40[1] = a9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2 = &v43;
  a1 = v13;
  if (v16 >= 1025)
  {
    goto LABEL_24;
  }

  isStackAllocationSafe = sub_1B07AD43C(v13, &v43);
LABEL_5:
  v41 = v14;
  v42 = v12;
  v40[0] = v40;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v19 = v40 - v18;
  v20 = v40 + v16 - v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = v16;
  v21[4] = v19;
  v21[5] = v20;
  if (v15)
  {
    sub_1B0C72368(" ", "", v21);
  }

  sub_1B0C74B80(v9, v42, v10, v41, v13, v21);
  swift_beginAccess();
  v22 = v21[2];
  v23 = v11;
  v24 = *(v11 + 8);
  if (v24 < 1)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v24, v22))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v24 + v22 < 79)
  {
LABEL_13:
    if (v22 < 0)
    {
      __break(1u);
    }

    else
    {
      v45 = MEMORY[0x1E69E6290];
      v46 = MEMORY[0x1E6969DF8];
      v43 = v19;
      v44 = &v19[v22];
      v29 = __swift_project_boxed_opaque_existential_0(&v43, MEMORY[0x1E69E6290]);
      v30 = v29[1];
      v31 = *v29;
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v43);

      if (v16 >= v22)
      {
        v32 = v24 + v22;
        if (!__OFADD__(v24, v22))
        {
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1B0C74C44(*v23);
  v24 = MEMORY[0x1E69E6290];
  v16 = MEMORY[0x1E6969DF8];
  v45 = MEMORY[0x1E69E6290];
  v46 = MEMORY[0x1E6969DF8];
  v43 = "\t";
  v44 = "";
  v25 = __swift_project_boxed_opaque_existential_0(&v43, MEMORY[0x1E69E6290]);
  v27 = *v25;
  v26 = v25[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  if ((v15 & 1) == 0)
  {
LABEL_18:
    if (v22 < 0)
    {
      goto LABEL_32;
    }

    v28 = 0;
    goto LABEL_20;
  }

  if (v22 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v28 = 1;
LABEL_20:
  v45 = v24;
  v46 = v16;
  v43 = &v19[v28];
  v44 = &v19[v22];
  v33 = __swift_project_boxed_opaque_existential_0(&v43, v24);
  v34 = v33[1];
  v35 = *v33;
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  v36 = sub_1B0433338(v28, v22, v19, v20);

  v32 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  *(v23 + 8) = v32;
LABEL_22:

  result = sub_1B071728C(v13);
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C752B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v24[4] = *MEMORY[0x1E69E9840];
  LOBYTE(v24[0]) = 34;
  sub_1B0C72368(v24, v24 + 1, a3);
  v6 = HIBYTE(a2) & 0xF;
  v24[0] = a1;
  v24[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v24[2] = 0;
  v24[3] = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E44DB8();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1B0E44C18();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1B0E46368();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1B0C04CF0(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_40;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1B0C04CF0(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_41;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_39;
        }
      }

      v20 = sub_1B0C704E4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        if (v20 == 92 || v20 == 34)
        {
          v23 = 92;
          sub_1B0C72368(&v23, v24, a3);
        }

        else if (v20 - 127 < 0xFFFFFFA1)
        {
          goto LABEL_6;
        }

        v23 = v20;
        sub_1B0C72368(&v23, v24, a3);
      }

LABEL_6:
      v9 = sub_1B0E44DB8();
      v10 = v11;
    }

    while (v11);
  }

  LOBYTE(v24[0]) = 34;
  result = sub_1B0C72368(v24, v24 + 1, a3);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C75534(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v24[4] = *MEMORY[0x1E69E9840];

  if (sub_1B0C7034C())
  {
    v6 = HIBYTE(a2) & 0xF;
    v24[0] = a1;
    v24[1] = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v24[2] = 0;
    v24[3] = v6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = sub_1B0E44DB8();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      while (1)
      {
        if (v9 == 2573 && v10 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
        {
          goto LABEL_29;
        }

        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:

          __break(1u);
LABEL_39:

          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1B0E44C18();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            v13 = ((v9 & 0x1000000000000000) != 0 ? (v10 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B0E46368());
            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          v17 = v15 < 0 ? v16 : 65541;
        }

        if (v17 >> 14 == 4 * v12)
        {
          v18 = sub_1B0C04CF0(v9, v10);
          if ((v18 & 0x100000000) != 0)
          {
            goto LABEL_38;
          }

          if ((v18 & 0xFFFFFF80) == 0)
          {
            break;
          }
        }

LABEL_7:
        v9 = sub_1B0E44DB8();
        v10 = v11;
        if (!v11)
        {
          goto LABEL_34;
        }
      }

      v19 = sub_1B0C04CF0(v9, v10);
      if ((v19 & 0x100000000) != 0)
      {
        goto LABEL_39;
      }

      if ((v19 & 0xFFFFFF00) != 0)
      {
        goto LABEL_37;
      }

LABEL_29:
      v20 = sub_1B0C704E4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        v23 = v20;
        sub_1B0C72368(&v23, v24, a3);
      }

      goto LABEL_7;
    }

LABEL_34:
  }

  else
  {

    sub_1B0C752B8(a1, a2, a3);
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C75798(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, char a8)
{
  v41 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v14 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
  }

  else
  {
    if (v14 < 0)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v9 = a8;
    v11 = a7;
    v12 = a6;
    v10 = a5;
    v8 = a4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isStackAllocationSafe = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v14 < 1025)
    {
LABEL_4:
      v42 = v11;
      v43 = v10;
      v40 = &v40;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v17 = &v40 - v16;
      v18 = &v40 + v14 - v16;
      v19 = swift_allocObject();
      v19[2] = 0;
      v20 = v19 + 2;
      v19[3] = v14;
      v19[4] = v17;
      v19[5] = v18;
      if (a2)
      {
        sub_1B0C72368(" ", "", v19);
      }

      sub_1B0C7495C(v8, v43, v19);
      LOBYTE(v44) = 61;
      sub_1B0C72368(&v44, &v44 + 1, v19);
      sub_1B0C75534(v12, v42, v19);
      if ((v9 & 1) == 0)
      {
        LOBYTE(v44) = 59;
        sub_1B0C72368(&v44, &v44 + 1, v19);
      }

      swift_beginAccess();
      v21 = *v20;
      v22 = v41;
      v23 = *(v41 + 8);
      if (v23 >= 1)
      {
        if (__OFADD__(v23, v21))
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (v23 + v21 >= 79)
        {
          sub_1B0C74C44(*v41);
          v23 = MEMORY[0x1E69E6290];
          v20 = MEMORY[0x1E6969DF8];
          v46 = MEMORY[0x1E69E6290];
          v47 = MEMORY[0x1E6969DF8];
          v44 = "\t";
          v45 = "";
          v24 = __swift_project_boxed_opaque_existential_0(&v44, MEMORY[0x1E69E6290]);
          v26 = *v24;
          v25 = v24[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v44);
          if (a2)
          {
            if (v21 < 1)
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
            }

            v27 = 1;
            goto LABEL_21;
          }

LABEL_19:
          if (v21 < 0)
          {
            goto LABEL_35;
          }

          v27 = 0;
LABEL_21:
          v46 = v23;
          v47 = v20;
          v44 = &v17[v27];
          v45 = &v17[v21];
          v32 = __swift_project_boxed_opaque_existential_0(&v44, v23);
          v34 = *v32;
          v33 = v32[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v44);
          v35 = sub_1B0433338(v27, v21, v17, v18);

          v31 = v35 + 1;
          if (!__OFADD__(v35, 1))
          {
            v22 = v41;
LABEL_23:
            *(v22 + 8) = v31;

            v37 = *MEMORY[0x1E69E9840];
            return result;
          }

          goto LABEL_33;
        }
      }

      if (v21 < 0)
      {
        __break(1u);
      }

      else
      {
        v46 = MEMORY[0x1E69E6290];
        v47 = MEMORY[0x1E6969DF8];
        v44 = v17;
        v45 = &v17[v21];
        v28 = __swift_project_boxed_opaque_existential_0(&v44, MEMORY[0x1E69E6290]);
        v30 = *v28;
        v29 = v28[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v44);

        if (v14 >= v21)
        {
          v31 = v23 + v21;
          if (!__OFADD__(v23, v21))
          {
            goto LABEL_23;
          }

          __break(1u);
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_4;
  }

  v38 = swift_slowAlloc();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C70574(v38, v38 + v14, a2 & 1, v41, v8, v10, v12, v11, v9 & 1);
  MEMORY[0x1B272C230](v38, -1, -1);

  v39 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B0C75BB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v28[10] = *MEMORY[0x1E69E9840];
  v6 = HIBYTE(a2) & 0xF;
  v28[0] = a1;
  v28[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v28[2] = 0;
  v28[3] = v6;
  swift_retain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E44DB8();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:

          __break(1u);
LABEL_44:

          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1B0E44C18();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1B0E46368();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1B0C04CF0(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_43;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1B0C04CF0(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_44;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_40;
        }
      }

      v20 = sub_1B0C704E4(v9, v10);

      if ((v20 & 0x100) == 0 && v20 - 127 >= 0xFFFFFFA1)
      {
        if (v20 - 91 > 0xFFFFFFE5)
        {
          v27 = v20 | 0x20;
          swift_beginAccess();
          v24 = *(a3 + 16);
          v22 = __OFSUB__(v24, 1);
          v23 = v24 - 1;
          if (v22)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v27 = v20;
          swift_beginAccess();
          v21 = *(a3 + 16);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v22)
          {
            goto LABEL_41;
          }
        }

        *(a3 + 16) = v23;

        sub_1B0C72368(&v27, v28, a4);
      }

LABEL_6:
      v9 = sub_1B0E44DB8();
      v10 = v11;
    }

    while (v11);
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B0C75E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v33 = a3;
  v7 = a2;
  v38 = *MEMORY[0x1E69E9840];
  v8 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_26:
    sub_1B0C6700C(a1, a2);
    sub_1B07AD43C(v5, &v34);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v30 = swift_slowAlloc();
      sub_1B0C6700C(v6, &v34);
      sub_1B07AD43C(v5, &v34);
      sub_1B0C71488(v30, v30 + v8, v7 & 1, v33, v6, v5);
      MEMORY[0x1B272C230](v30, -1, -1);
      goto LABEL_24;
    }

    goto LABEL_5;
  }

  if (v8 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v5 = a5;
  v6 = a4;
  a2 = &v34;
  a1 = a4;
  if (v8 >= 1025)
  {
    goto LABEL_26;
  }

  sub_1B0C6700C(a4, &v34);
  isStackAllocationSafe = sub_1B07AD43C(v5, &v34);
LABEL_5:
  v31 = &v31;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v11 = &v31 - v10;
  v12 = &v31 + v8 - v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = v8;
  v13[4] = v11;
  v13[5] = v12;
  if (v7)
  {
    sub_1B0C72368(" ", "", v13);
  }

  sub_1B0C72368("message/", "", v13);
  sub_1B0C7495C(*v6, *(v6 + 8), v13);
  v32 = v5;
  if (*(v5[3] + 16))
  {
    LOBYTE(v34) = 59;
    sub_1B0C72368(&v34, &v34 + 1, v13);
  }

  swift_beginAccess();
  v14 = v13[2];
  v15 = *(v33 + 8);
  if (v15 < 1)
  {
    goto LABEL_15;
  }

  if (__OFADD__(v15, v14))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v15 + v14 < 79)
  {
LABEL_15:
    if (v14 < 0)
    {
      __break(1u);
    }

    else
    {
      v36 = MEMORY[0x1E69E6290];
      v37 = MEMORY[0x1E6969DF8];
      v34 = v11;
      v35 = &v11[v14];
      v20 = __swift_project_boxed_opaque_existential_0(&v34, MEMORY[0x1E69E6290]);
      v22 = *v20;
      v21 = v20[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v34);

      if (v8 >= v14)
      {
        v23 = v15 + v14;
        if (!__OFADD__(v15, v14))
        {
          goto LABEL_23;
        }

        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_1B0C74C44(*v33);
  v8 = MEMORY[0x1E69E6290];
  v15 = MEMORY[0x1E6969DF8];
  v36 = MEMORY[0x1E69E6290];
  v37 = MEMORY[0x1E6969DF8];
  v34 = "\t";
  v35 = "";
  v16 = __swift_project_boxed_opaque_existential_0(&v34, MEMORY[0x1E69E6290]);
  v18 = *v16;
  v17 = v16[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v34);
  if ((v7 & 1) == 0)
  {
LABEL_20:
    if (v14 < 0)
    {
      goto LABEL_34;
    }

    v19 = 0;
    goto LABEL_22;
  }

  if (v14 < 1)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  v19 = 1;
LABEL_22:
  v36 = v8;
  v37 = v15;
  v34 = &v11[v19];
  v35 = &v11[v14];
  v24 = __swift_project_boxed_opaque_existential_0(&v34, v8);
  v26 = *v24;
  v25 = v24[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v34);
  v27 = sub_1B0433338(v19, v14, v11, v12);

  v23 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_23:
  v5 = v32;
  *(v33 + 8) = v23;
LABEL_24:
  sub_1B0C67068(v6);
  result = sub_1B071728C(v5);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B0C7625C(uint64_t *a1, const char **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7)
{
  v36 = a3;
  v11 = a2;
  v41 = *MEMORY[0x1E69E9840];
  v12 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_26:
    sub_1B07AD43C(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v34 = swift_slowAlloc();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07AD43C(v7, &v37);
      sub_1B0C70F40(v34, v34 + v12, v11 & 1, v36, v10, v8, v9, v7);
      MEMORY[0x1B272C230](v34, -1, -1);
      goto LABEL_24;
    }

    goto LABEL_5;
  }

  if (v12 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = a7;
  v9 = a6;
  v8 = a5;
  v10 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2 = &v37;
  a1 = v7;
  if (v12 >= 1025)
  {
    goto LABEL_26;
  }

  isStackAllocationSafe = sub_1B07AD43C(v7, &v37);
LABEL_5:
  v35 = &v35;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v15 = &v35 - v14;
  v16 = &v35 + v12 - v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = v12;
  v17[4] = v15;
  v17[5] = v16;
  if (v11)
  {
    sub_1B0C72368(" ", "", v17);
  }

  sub_1B0C72368("text/", "", v17);
  sub_1B0C7495C(v10, v8, v17);
  if (*(v7[3] + 16))
  {
    LOBYTE(v37) = 59;
    sub_1B0C72368(&v37, &v37 + 1, v17);
  }

  swift_beginAccess();
  v18 = v17[2];
  v19 = *(v36 + 8);
  if (v19 < 1)
  {
    goto LABEL_15;
  }

  if (__OFADD__(v19, v18))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v19 + v18 < 79)
  {
LABEL_15:
    if (v18 < 0)
    {
      __break(1u);
    }

    else
    {
      v39 = MEMORY[0x1E69E6290];
      v40 = MEMORY[0x1E6969DF8];
      v37 = v15;
      v38 = &v15[v18];
      v24 = __swift_project_boxed_opaque_existential_0(&v37, MEMORY[0x1E69E6290]);
      v26 = *v24;
      v25 = v24[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v37);

      if (v12 >= v18)
      {
        v27 = v19 + v18;
        if (!__OFADD__(v19, v18))
        {
          goto LABEL_23;
        }

        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_1B0C74C44(*v36);
  v12 = MEMORY[0x1E69E6290];
  v19 = MEMORY[0x1E6969DF8];
  v39 = MEMORY[0x1E69E6290];
  v40 = MEMORY[0x1E6969DF8];
  v37 = "\t";
  v38 = "";
  v20 = __swift_project_boxed_opaque_existential_0(&v37, MEMORY[0x1E69E6290]);
  v22 = *v20;
  v21 = v20[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v37);
  if ((v11 & 1) == 0)
  {
LABEL_20:
    if (v18 < 0)
    {
      goto LABEL_34;
    }

    v23 = 0;
    goto LABEL_22;
  }

  if (v18 < 1)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  v23 = 1;
LABEL_22:
  v39 = v12;
  v40 = v19;
  v37 = &v15[v23];
  v38 = &v15[v18];
  v28 = __swift_project_boxed_opaque_existential_0(&v37, v12);
  v30 = *v28;
  v29 = v28[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v37);
  v31 = sub_1B0433338(v23, v18, v15, v16);

  v27 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_23:
  *(v36 + 8) = v27;
LABEL_24:

  result = sub_1B071728C(v7);
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B0C76660(uint64_t *a1, const char **a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v35 = *MEMORY[0x1E69E9840];
  v7 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_24:
    sub_1B07AD120(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v29 = swift_slowAlloc();
      sub_1B07AD120(v4, &v31);
      sub_1B0C70AEC(v29, v29 + v7, v6 & 1, v5, v4);
      MEMORY[0x1B272C230](v29, -1, -1);
      goto LABEL_22;
    }

    goto LABEL_5;
  }

  if (v7 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = a4;
  v5 = a3;
  a2 = &v31;
  a1 = a4;
  if (v7 >= 1025)
  {
    goto LABEL_24;
  }

  isStackAllocationSafe = sub_1B07AD120(a4, &v31);
LABEL_5:
  v30[0] = v30;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v10 = v30 - v9;
  v11 = v30 + v7 - v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = v7;
  v12[4] = v10;
  v12[5] = v11;
  if (v6)
  {
    sub_1B0C72368(" ", "", v12);
  }

  sub_1B0C72368("multipart/", "", v12);
  sub_1B0C7495C(v4[1], v4[2], v12);
  swift_beginAccess();
  v13 = v12[2];
  v14 = *(v5 + 8);
  if (v14 < 1)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v14, v13))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v14 + v13 < 79)
  {
LABEL_13:
    if (v13 < 0)
    {
      __break(1u);
    }

    else
    {
      v33 = MEMORY[0x1E69E6290];
      v34 = MEMORY[0x1E6969DF8];
      v31 = v10;
      v32 = &v10[v13];
      v19 = __swift_project_boxed_opaque_existential_0(&v31, MEMORY[0x1E69E6290]);
      v21 = *v19;
      v20 = v19[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v31);

      if (v7 >= v13)
      {
        v22 = v14 + v13;
        if (!__OFADD__(v14, v13))
        {
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1B0C74C44(*v5);
  v7 = MEMORY[0x1E69E6290];
  v14 = MEMORY[0x1E6969DF8];
  v33 = MEMORY[0x1E69E6290];
  v34 = MEMORY[0x1E6969DF8];
  v31 = "\t";
  v32 = "";
  v15 = __swift_project_boxed_opaque_existential_0(&v31, MEMORY[0x1E69E6290]);
  v17 = *v15;
  v16 = v15[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v31);
  if ((v6 & 1) == 0)
  {
LABEL_18:
    if (v13 < 0)
    {
      goto LABEL_32;
    }

    v18 = 0;
    goto LABEL_20;
  }

  if (v13 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v18 = 1;
LABEL_20:
  v33 = v7;
  v34 = v14;
  v31 = &v10[v18];
  v32 = &v10[v13];
  v23 = __swift_project_boxed_opaque_existential_0(&v31, v7);
  v25 = *v23;
  v24 = v23[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v31);
  v26 = sub_1B0433338(v18, v13, v10, v11);

  v22 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  *(v5 + 8) = v22;
LABEL_22:
  result = sub_1B0717020(v4);
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C769AC(char *a1, uint64_t a2, uint64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((a1[1] & 1) == 0)
  {
    v5 = *a1;
    *a1 = 256;
    v21 = v5;
    sub_1B0C72368(&v21, &v22, a3);
  }

  result = sub_1B0E44DB8();
  if (v7)
  {
    v8 = result;
    v9 = v7;
    do
    {
      if ((v8 != 2573 || v9 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v9 & 0x2000000000000000) != 0)
        {
          v11 = HIBYTE(v9) & 0xF;
        }

        else
        {
          v11 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (!v11)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
        }

        if ((v9 & 0x1000000000000000) != 0)
        {
          v16 = sub_1B0E44C18();
        }

        else
        {
          if ((v9 & 0x2000000000000000) != 0)
          {
            v13 = v8;
          }

          else
          {
            if ((v8 & 0x1000000000000000) != 0)
            {
              v12 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v12 = sub_1B0E46368();
            }

            v13 = *v12;
          }

          v14 = v13;
          v15 = (__clz(~v13) - 24) << 16;
          if (v14 < 0)
          {
            v16 = v15;
          }

          else
          {
            v16 = 65541;
          }
        }

        if (v16 >> 14 != 4 * v11)
        {
          goto LABEL_5;
        }

        v17 = sub_1B0C04CF0(v8, v9);
        if ((v17 & 0x100000000) != 0)
        {
          goto LABEL_39;
        }

        if ((v17 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v18 = sub_1B0C04CF0(v8, v9);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_40;
        }

        if ((v18 & 0xFFFFFF00) != 0)
        {
          goto LABEL_38;
        }
      }

      v19 = sub_1B0C704E4(v8, v9);

      if ((v19 & 0x100) == 0)
      {
        if (v19 == 32 || v19 == 9)
        {
          *a1 = v19;
          break;
        }

        if (v19 - 127 >= 0xFFFFFFA2)
        {
          v22 = v19;
          sub_1B0C72368(&v22, &v23, a3);
        }
      }

LABEL_6:
      result = sub_1B0E44DB8();
      v8 = result;
      v9 = v10;
    }

    while (v10);
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B0C76C18@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v3 + 16);
    v8 = *(v3 + 24);
    result = v7(&v9, 0);
    if (!v4)
    {
      *a3 = v9;
    }
  }

  return result;
}

void *sub_1B0C76C7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[2];
  v9 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  result = v6(&v11, a1, a1 + v9);
  if (!v3)
  {
    *a2 = v11;
  }

  return result;
}

uint64_t sub_1B0C76CF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *v2 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0C76D34(uint64_t result)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    v3 = MEMORY[0x1E69E6290];
    v4 = MEMORY[0x1E6969DF8];
    do
    {
      v6 = *v2++;
      v5 = v6;
      if ((v6 - 127) > 0xFFFFFFA0)
      {
        v11 = v5;
        v12[3] = v3;
        v12[4] = v4;
        v12[0] = &v11;
        v12[1] = v12;
        v7 = __swift_project_boxed_opaque_existential_0(v12, v3);
        v9 = *v7;
        v8 = v7[1];
        sub_1B0E42EF8();
        result = __swift_destroy_boxed_opaque_existential_0(v12);
      }

      --v1;
    }

    while (v1);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C76E80(uint64_t a1)
{
  sub_1B0E46C28();
  v2 = *(a1 + 16);
  MEMORY[0x1B2728D70](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1B0E46C68();
      --v2;
    }

    while (v2);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C76EF8()
{
  v1 = *v0;
  result = MEMORY[0x1B2728D70](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = sub_1B0E46C68();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B0C76F4C()
{
  v1 = *v0;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_1B0E46C68();
      --v2;
    }

    while (v2);
  }

  return sub_1B0E46CB8();
}

unint64_t sub_1B0C76FBC()
{
  result = qword_1EB6E5D50;
  if (!qword_1EB6E5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D50);
  }

  return result;
}

uint64_t sub_1B0C77010@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v12 = 0;
  v13 = 0xE000000000000000;
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  result = MEMORY[0x1B2726D20](v6);
  if (v4 && a2 != v4)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
    do
    {
      result = *v4;
      if ((result - 1) <= 0x7D)
      {
        v10 = v8;
        v11 = v9;
        result = sub_1B0E44C58();
        v8 = v10;
        v9 = v11;
      }

      ++v4;
    }

    while (v4 != a2);
    v12 = v8;
    v13 = v9;
  }

  *a3 = v12;
  a3[1] = v13;
  return result;
}

void sub_1B0C770C4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    if (v1)
    {
      v3 = v2 - v1;
    }

    else
    {
      v3 = 0;
    }

    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_1B0C93ECC(0, v3, v1, v2);
    }
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);

    sub_1B0C77140(v4, v5);
  }
}

uint64_t sub_1B0C77140(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = a1;
  v10 = 0;
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1B2726D20](v4);
  if (v3 && a2 != v3)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
    do
    {
      if (*v3 - 1 <= 0x7D)
      {
        v8 = v5;
        v9 = v6;
        sub_1B0E44C58();
        v5 = v8;
        v6 = v9;
      }

      ++v3;
    }

    while (v3 != a2);
    return v5;
  }

  return v10;
}

uint64_t sub_1B0C771DC(unsigned __int8 *a1, unsigned __int8 *a2, char a3)
{
  v5 = a1;
  v15 = 0;
  if (a1)
  {
    v6 = (a2 - a1);
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1B2726D20](v6);
  if (v5 && a2 != v5)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    v9 = v5;
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      if ((v11 - 1) < 0x7E)
      {
        if (v10 != 92 || (a3 & 1) == 0)
        {
          goto LABEL_7;
        }

        if (v9 == a2)
        {
          return v7;
        }

        v9 = v5 + 2;
        if (v5[1] - 1 < 0x7E)
        {
LABEL_7:
          v13 = v7;
          v14 = v8;
          sub_1B0E44C58();
          v7 = v13;
          v8 = v14;
        }
      }

      v5 = v9;
      if (v9 == a2)
      {
        return v7;
      }
    }
  }

  return v15;
}

uint64_t sub_1B0C772B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = sub_1B0433338(a1, a2, a3, a4);
  result = MEMORY[0x1B2726D20](v10);
  if (a1 == a2)
  {
    return 0;
  }

  if (a1 < a2)
  {
    result = 0;
    v12 = 0xE000000000000000;
    if (a3)
    {
      v13 = a4 - a3;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - 1;
    v15 = 1;
    v16 = a1;
    while (1)
    {
      if (a1 < 0 || v16 >= v13)
      {
        goto LABEL_22;
      }

      v17 = *(a3 + v16);
      if ((v17 - 1) >= 0x7E)
      {
        goto LABEL_17;
      }

      if ((v15 & a5 & 1) == 0 || v17 != 92)
      {
        break;
      }

      if (v14 == v16)
      {
        return result;
      }

      v15 = 0;
LABEL_19:
      v18 = v16 + 1;
      if (v16 + 1 >= a1)
      {
        ++v16;
        if (v18 < a2)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    v19 = result;
    v20 = v12;
    sub_1B0E44C58();
    result = v19;
    v12 = v20;
LABEL_17:
    if (v14 == v16)
    {
      return result;
    }

    v15 = 1;
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

BOOL sub_1B0C773C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v5 = *a1 == *a2 && v2 == v3;
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = 0;
  }

  v7 = *a1 == *a2 && v2 == v3;
  if (*(a2 + 16))
  {
    v7 = 0;
  }

  if (*(a1 + 16))
  {
    return v5;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B0C77408(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0x28646E652ELL;
  }

  else
  {
    sub_1B0E46298();

    v3 = 0x28656C6464696D2ELL;
  }

  v7 = v3;
  v4 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v4);

  MEMORY[0x1B2726E80](3943982, 0xE300000000000000);
  v5 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v5);

  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return v7;
}

void *sub_1B0C77524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__little, uint64_t a7)
{
  if (!__little)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v13 = a7 - __little;
  v14 = a1;
  do
  {
    v15 = a3 + v14;
    result = memmem((a3 + v14), a2 - v14, __little, v13);
    if (!result)
    {
      break;
    }

    v17 = result - v15;
    if (result - v15 < 0)
    {
      return 0;
    }

    v18 = v17 + v13;
    if (__OFADD__(v17, v13))
    {
      __break(1u);
LABEL_20:
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

    if (a2 - v14 < v18)
    {
      return 0;
    }

    v19 = v17 + v14;
    if (__OFADD__(v17, v14))
    {
      goto LABEL_20;
    }

    v20 = __OFADD__(v18, v14);
    v14 += v18;
    if (v20)
    {
      goto LABEL_21;
    }

    if (v18 < v17 || v14 < v19)
    {
      goto LABEL_22;
    }

    if (v19 < a1)
    {
      goto LABEL_23;
    }

    if (v14 > a2)
    {
      goto LABEL_24;
    }

    result = sub_1B0C77660(a1, a2, a3, a4, a5, v19, v14);
  }

  while (v21 == -1);
  return result;
}

uint64_t sub_1B0C77660(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_134;
  }

  v8 = a3;
  v9 = result;
  if (result + 2 == a6)
  {
    result = a6 - 2;
    if (a6 - 2 >= v9 && result < a2)
    {
      if (*(a3 + result) != 45)
      {
        return 0;
      }

      if (a6 > a2)
      {
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

LABEL_7:
      if (*(a3 + a6 - 1) != 45)
      {
        return 0;
      }

      goto LABEL_35;
    }

LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      goto LABEL_32;
    }

    if (__OFADD__(result, 3))
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (result + 3 > a6)
    {
      return 0;
    }

    result = a6 - 3;
    if (a6 - 3 < v9 || result >= a2)
    {
      goto LABEL_145;
    }

    if (*(a3 + result) != 10)
    {
      return 0;
    }

    if (a6 - 2 >= a2)
    {
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    if (*(a3 + a6 - 2) != 45)
    {
      return 0;
    }

    if (a6 <= a2)
    {
      goto LABEL_7;
    }

    __break(1u);
LABEL_23:
    if (__OFADD__(v9, 3))
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v9 + 3 > a6)
    {
      return 0;
    }

    result = a6 - 3;
    if (a6 - 3 < v9 || result >= a2)
    {
      goto LABEL_146;
    }

    if (*(a3 + result) != 13)
    {
      return 0;
    }

    if (a6 - 2 >= a2)
    {
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    if (*(a3 + a6 - 2) != 45)
    {
      return 0;
    }

    if (a6 <= a2)
    {
      goto LABEL_7;
    }

    __break(1u);
LABEL_32:
    v14 = a7;
    v15 = a4;
    v16 = a2;
    result = sub_1B0C77CA4(v9, a2, a3, a6);
    if (v18)
    {
      result = sub_1B0C77D48(v9, v16, v8, a6);
      if (v19)
      {
        return 0;
      }
    }

    a2 = v16;
    a4 = v15;
    a7 = v14;
    goto LABEL_35;
  }

  if (a5)
  {
    goto LABEL_23;
  }

  v10 = a7;
  v11 = a4;
  v12 = a2;
  result = sub_1B0C77CA4(result, a2, a3, a6);
  if (v13)
  {
    return 0;
  }

  a2 = v12;
  a4 = v11;
  a7 = v10;
LABEL_35:
  v20 = a7 + 2;
  if (__OFADD__(a7, 2))
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v20 == a2)
  {
    if (a7 < v9 || a7 >= a2)
    {
      goto LABEL_138;
    }

    if (*(v8 + a7) == 45)
    {
      if (a7 + 1 >= a2)
      {
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      if (*(v8 + a7 + 1) == 45)
      {
        if (result <= a2)
        {
          return result;
        }

        goto LABEL_149;
      }
    }
  }

  v21 = result;
  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      goto LABEL_59;
    }

    v26 = a7 + 1;
    if (a7 >= a2)
    {
      goto LABEL_65;
    }

    if (a7 < v9)
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    if (*(v8 + a7) != 10)
    {
LABEL_65:
      v33 = a7 + 3;
      if (__OFADD__(a7, 3))
      {
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      if (v33 > a2)
      {
        goto LABEL_101;
      }

      if (a7 < v9 || a7 >= a2)
      {
        goto LABEL_154;
      }

      if (*(v8 + a7) != 2)
      {
        goto LABEL_101;
      }

      if (v26 >= a2)
      {
LABEL_159:
        __break(1u);
        goto LABEL_160;
      }

      if (*(v8 + v26) != 45)
      {
        goto LABEL_101;
      }

      if (v20 < v9 || v20 >= a2)
      {
        goto LABEL_163;
      }

      v27 = *(v8 + v20);
      if (v27 != 10)
      {
        goto LABEL_101;
      }

      if (v33 >= result)
      {
        return v21;
      }

      __break(1u);
      goto LABEL_77;
    }

    if (v26 >= result)
    {
      return result;
    }

    __break(1u);
  }

  else if (!a5)
  {
    v22 = a2;
    v23 = a4;
    v24 = a7;
    result = sub_1B0C77DD0(a7, v9, a2, v8, result);
    a7 = v24;
    a4 = v23;
    a2 = v22;
    if (v25 != -1)
    {
      return result;
    }

    goto LABEL_101;
  }

  v27 = a7 + 1;
  if (a7 >= a2)
  {
    goto LABEL_77;
  }

  if (a7 < v9)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (*(v8 + a7) != 13)
  {
LABEL_77:
    v34 = a7 + 3;
    if (__OFADD__(a7, 3))
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v34 > a2)
    {
      goto LABEL_101;
    }

    if (a7 < v9 || a7 >= a2)
    {
      goto LABEL_155;
    }

    if (*(v8 + a7) != 45)
    {
      goto LABEL_101;
    }

    if (v27 >= a2)
    {
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
      goto LABEL_165;
    }

    if (*(v8 + v27) != 45)
    {
      goto LABEL_101;
    }

    if (v20 < v9 || v20 >= a2)
    {
      goto LABEL_164;
    }

    v32 = *(v8 + v20);
    if (v32 != 13)
    {
      goto LABEL_101;
    }

    if (v34 >= result)
    {
      return v21;
    }

    __break(1u);
    goto LABEL_89;
  }

  if (v27 >= result)
  {
    return result;
  }

  __break(1u);
LABEL_59:
  v28 = a4;
  v29 = a7;
  v30 = a2;
  result = sub_1B0C77DD0(a7, v9, a2, v8, result);
  if (v31 != -1)
  {
    return result;
  }

  a7 = v29;
  v32 = v29 + 1;
  a2 = v30;
  a4 = v28;
  if (v29 < v30)
  {
    if (v29 < v9)
    {
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    if (*(v8 + v29) == 10)
    {
      result = v21;
      if (v32 >= v21)
      {
        return result;
      }

      goto LABEL_162;
    }
  }

LABEL_89:
  v35 = a7 + 3;
  if (__OFADD__(a7, 3))
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v35 <= a2)
  {
    if (a7 < v9 || a7 >= a2)
    {
      goto LABEL_161;
    }

    if (*(v8 + a7) == 2)
    {
      if (v32 >= a2)
      {
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      if (*(v8 + v32) == 45)
      {
        if (v20 < v9 || v20 >= a2)
        {
          goto LABEL_166;
        }

        if (*(v8 + v20) == 10)
        {
          if (v35 < v21)
          {
LABEL_167:
            __break(1u);
            return result;
          }

          return v21;
        }
      }
    }
  }

LABEL_101:
  if (a2 < a7)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (a7 < v9)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v41 = a7;
  v42 = a2;
  v43 = v8;
  v44 = a4;
  if (a7 == a2)
  {
    goto LABEL_104;
  }

  if (a7 >= a2)
  {
    goto LABEL_144;
  }

  result = v21;
  v36 = *(v8 + a7);
  if (v36 == 45)
  {
    if (a7 + 1 != a2)
    {
      if (a7 + 1 >= a2)
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if (*(v8 + a7 + 1) == 45)
      {
        a7 += 2;
        v41 = a7;
        if (a7 == a2)
        {
          goto LABEL_127;
        }

        goto LABEL_112;
      }
    }

    return 0;
  }

LABEL_112:
  if (a7 <= a2)
  {
    v37 = a2;
  }

  else
  {
    v37 = a7;
  }

  if (a7 >= a2)
  {
    goto LABEL_135;
  }

  v38 = *(v8 + a7);
  if (v38 != 32 && v38 != 9)
  {
    goto LABEL_129;
  }

  if (++a7 != a2)
  {
    while (v37 != a7)
    {
      v39 = *(v8 + a7);
      if (v39 != 32 && v39 != 9)
      {
        goto LABEL_129;
      }

      if (a2 == ++a7)
      {
        goto LABEL_126;
      }
    }

    goto LABEL_135;
  }

LABEL_126:
  v41 = a2;
  v42 = a2;
  v43 = v8;
  v44 = a4;
  if (v36 == 45)
  {
    goto LABEL_127;
  }

LABEL_104:
  v8 = &v41;
  if ((sub_1B0C94298(a5) & 1) == 0)
  {
    return 0;
  }

  while (1)
  {
    result = v21;
LABEL_127:
    a2 = v41;
    if (v41 >= result)
    {
      return result;
    }

    __break(1u);
LABEL_129:
    v41 = a7;
    v42 = a2;
    v43 = v8;
    v44 = a4;
    if (v36 != 45)
    {
      goto LABEL_104;
    }

    v8 = &v41;
    if ((sub_1B0C94298(a5) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1B0C77CA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__OFADD__(result, 4))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result + 4 > a4)
  {
    return 0;
  }

  v4 = result;
  result = a4 - 4;
  if (a4 - 4 < v4 || result >= a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a3 + result) != 13)
  {
    return 0;
  }

  if (a4 - 3 >= a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(a3 + a4 - 3) != 10)
  {
    return 0;
  }

  if (a4 - 2 >= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a3 + a4 - 2) != 45)
  {
    return 0;
  }

  if (a4 <= a2)
  {
    if (*(a3 + a4 - 1) == 45)
    {
      return result;
    }

    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B0C77D48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__OFADD__(result, 3))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result + 3 > a4)
  {
    return 0;
  }

  v4 = result;
  result = a4 - 3;
  if (a4 - 3 < v4 || result >= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a3 + result) != 10)
  {
    return 0;
  }

  if (a4 - 2 >= a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(a3 + a4 - 2) != 45)
  {
    return 0;
  }

  if (a4 <= a2)
  {
    if (*(a3 + a4 - 1) == 45)
    {
      return result;
    }

    return 0;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1B0C77DD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result + 2;
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v6 <= a3)
  {
    if (result < a2 || result >= a3)
    {
      goto LABEL_27;
    }

    if (*(a4 + result) == 13)
    {
      if (result + 1 >= a3)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (*(a4 + result + 1) == 10)
      {
        if (v6 >= a5)
        {
          return a5;
        }

        goto LABEL_31;
      }
    }
  }

  v7 = result + 4;
  if (__OFADD__(result, 4))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v7 > a3)
  {
    return 0;
  }

  if (result < a2 || result >= a3)
  {
    goto LABEL_28;
  }

  if (*(a4 + result) != 45)
  {
    return 0;
  }

  if (result + 1 >= a3)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (*(a4 + result + 1) != 45)
  {
    return 0;
  }

  if (v6 < a2 || v6 >= a3)
  {
    goto LABEL_32;
  }

  if (*(a4 + v6) != 13)
  {
    return 0;
  }

  if (result + 3 < a3)
  {
    if (*(a4 + result + 3) == 10)
    {
      if (v7 >= a5)
      {
        return a5;
      }

      goto LABEL_34;
    }

    return 0;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

double Cache.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = v2;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  return result;
}

double Cache.init()()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 80) = v2;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  return result;
}

uint64_t Cache.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 80);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = 40;
    do
    {
      v5 = *(v1 + v4);
      ucnv_close();
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  if ((*(v0 + 96) & 1) == 0)
  {
    v6 = *(v0 + 88);
    if (v6)
    {
      uidna_close(v6);
    }
  }

  v7 = *(v0 + 16);

  v8 = *(v0 + 80);

  return v0;
}

uint64_t Cache.__deallocating_deinit()
{
  Cache.deinit();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for Cache.CachedConverter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Cache.CachedConverter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B0C78104(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v27 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v7 = *(a2 + 80);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v7 + 40);
    do
    {
      v11 = *(v10 - 1);
      if (v11 == a1)
      {
        v18 = *v10;
        if (v9)
        {
          sub_1B0C78370(v9);
          sub_1B0C783FC(0, 0, v11, v18);
        }

        swift_endAccess();
        ucnv_reset();
        ucnv_setFallback();
        v22 = v18;
        goto LABEL_16;
      }

      ++v9;
      v10 += 2;
    }

    while (v8 != v9);
  }

  swift_endAccess();
  LODWORD(v22) = 0;
  v12 = ucnv_open();
  ucnv_setFallback();
  swift_beginAccess();
  sub_1B0C783FC(0, 0, a1, v12);
  v13 = *(a2 + 80);
  if (*(v13 + 2) < 3uLL)
  {
    goto LABEL_12;
  }

  while (1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 80) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    v15 = *(v13 + 2);
    if (!v15)
    {
      goto LABEL_11;
    }

LABEL_8:
    v16 = v15 - 1;
    v17 = *&v13[16 * v16 + 40];
    *(v13 + 2) = v16;
    *(a2 + 80) = v13;
    ucnv_close();
    if (*(v13 + 2) <= 2uLL)
    {
      goto LABEL_12;
    }
  }

  v13 = sub_1B0C785A0(v13);
  v15 = *(v13 + 2);
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  swift_endAccess();
  v22 = v12;
LABEL_16:
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0xE000000000000000;
  a3(&v21, &v22);

  if (!v3)
  {
    result = v21;
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C78370(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C785A0(v3);
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

unint64_t sub_1B0C783FC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_1B0C80F4C(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = sub_1B0C784D8(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_1B0C784D8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t ContentDisposition.kind.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B08C512C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ContentDisposition.attributes.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t static ContentDisposition.Kind.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
  }

  if (a4 < 3)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t sub_1B0C7872C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return sub_1B0E46A78();
}

uint64_t sub_1B0C787D4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t ContentDisposition.Attribute.key.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B0C78820(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_1B0C78820(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t ContentDisposition.Attribute.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static ContentDisposition.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    if (!a5)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a5 == 1)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (a2 != 2)
  {
    if (a5 >= 3)
    {
      if (a1 == a4 && a2 == a5)
      {
        goto LABEL_15;
      }

      v8 = a3;
      v9 = a6;
      v10 = sub_1B0E46A78();
      a3 = v8;
      a6 = v9;
      if (v10)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

  if (a5 != 2)
  {
    return 0;
  }

LABEL_15:

  return sub_1B0C78C0C(a3, a6);
}

uint64_t sub_1B0C789C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 12)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v8 = *(v3 - 1);
      v7 = *v3;
      v10 = v3[1];
      v9 = v3[2];
      v11 = v3[3];
      v46 = v3[7];
      v12 = *(i - 3);
      v13 = *(i - 2);
      v15 = *(i - 1);
      v14 = *i;
      v17 = i[1];
      v16 = i[2];
      v18 = i[3];
      v45 = i[6];
      v43 = i[4];
      v44 = i[7];
      v41 = v3[6];
      v42 = i[5];
      v39 = v3[4];
      v40 = v3[5];
      if (v5)
      {
        if (!v12)
        {
          return 0;
        }

        if (*(v3 - 4) != *(i - 4) || v5 != v12)
        {
          v36 = v3[2];
          v37 = i[2];
          v19 = v3[3];
          v34 = i[3];
          v35 = v3[1];
          v20 = *v3;
          v21 = *i;
          v33 = i[1];
          v22 = sub_1B0E46A78();
          v17 = v33;
          v18 = v34;
          v14 = v21;
          v10 = v35;
          v9 = v36;
          v7 = v20;
          v16 = v37;
          v11 = v19;
          if ((v22 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (v6 != v13 || v8 != v15)
      {
        v38 = v16;
        v23 = v9;
        v24 = v11;
        v25 = v18;
        v26 = v7;
        v27 = v10;
        v28 = v14;
        v29 = v2;
        v30 = v17;
        v31 = sub_1B0E46A78();
        v17 = v30;
        v2 = v29;
        v14 = v28;
        v10 = v27;
        v7 = v26;
        v18 = v25;
        v16 = v38;
        v11 = v24;
        v9 = v23;
        if ((v31 & 1) == 0)
        {
          break;
        }
      }

      if ((v9 != v16 || v11 != v18 || v7 >> 16 != v14 >> 16 || v10 >> 16 != v17 >> 16) && (sub_1B0E469B8() & 1) == 0 || (v41 != v45 || v46 != v44 || v39 >> 16 != v43 >> 16 || v40 >> 16 != v42 >> 16) && (sub_1B0E469B8() & 1) == 0)
      {
        break;
      }

      v3 += 12;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0C78C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5 > 2)
      {
        switch(v5)
        {
          case 3:
            if (v8 != 3)
            {
              return 0;
            }

            goto LABEL_30;
          case 4:
            if (v8 != 4)
            {
              return 0;
            }

            goto LABEL_30;
          case 5:
            if (v8 != 5)
            {
              return 0;
            }

            goto LABEL_30;
        }
      }

      else
      {
        switch(v5)
        {
          case 0:
            if (v8)
            {
              return 0;
            }

            goto LABEL_30;
          case 1:
            if (v8 != 1)
            {
              return 0;
            }

            goto LABEL_30;
          case 2:
            if (v8 != 2)
            {
              return 0;
            }

            goto LABEL_30;
        }
      }

      if (v8 < 6)
      {
        return 0;
      }

      if (*(v3 - 3) != *(v4 - 3) || v5 != v8)
      {
        v11 = *(v3 - 1);
        v12 = *(v3 - 3);
        v13 = *v3;
        v14 = *(v3 - 2);
        v15 = *(v4 - 1);
        v16 = *(v4 - 3);
        v17 = *v4;
        v18 = *(v4 - 2);
        v19 = sub_1B0E46A78();
        v10 = v17;
        v9 = v15;
        v7 = v13;
        v20 = v19;
        v6 = v11;
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

LABEL_30:
      if ((v6 != v9 || v7 != v10) && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0C78D8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1B0E46A78() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1B0E46A78() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0C78E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v28[0] = *(a1 + 32);
    v28[1] = v3;
    v29 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v7 = *(a2 + 48);
    v30[0] = *(a2 + 32);
    v30[1] = v7;
    v31 = *(a2 + 64);
    v8 = *(a2 + 40);
    v22 = *(a2 + 32);
    v23 = v4;
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    v11 = *(a2 + 64);
    v13 = *(a2 + 72);
    v12 = *(a2 + 80);
    if ((_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v28, v30) & 1) == 0)
    {
      return 0;
    }

    v15 = (a1 + 136);
    for (i = a2 + 88; ; i += 56)
    {
      if (v5)
      {
        if (!v12 || (v23 != v13 || v5 != v12) && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        sub_1B07ACBF8(v22, v8, v9, v10, v11);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B07ACE18(v22, v8, v9, v10, v11);
        if (v12)
        {

          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }

      v17 = *(v15 - 2);
      v24[0] = *(v15 - 3);
      v24[1] = v17;
      v25 = *(v15 - 16);
      v18 = *(v15 - 1);
      v5 = *v15;
      v19 = *(i + 16);
      v26[0] = *i;
      v26[1] = v19;
      v11 = *(i + 32);
      v27 = v11;
      v8 = *(i + 8);
      v22 = *i;
      v23 = v18;
      v9 = *(i + 16);
      v10 = *(i + 24);
      v13 = *(i + 40);
      v12 = *(i + 48);
      v20 = _s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v24, v26);
      result = 0;
      v15 += 7;
      if ((v20 & 1) == 0)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_1B0C79008(void *a1, void *a2)
{
  v6 = a1[1];
  v5 = a1[2];
  v8 = a2[1];
  v7 = a2[2];
  if (!v6)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v8 == 1)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v6 != 2)
  {
    if (v8 >= 3)
    {
      if (*a1 == *a2 && v6 == v8)
      {
        goto LABEL_15;
      }

      v10 = v5;
      v11 = v7;
      v12 = sub_1B0E46A78();
      v7 = v11;
      v13 = v12;
      v5 = v10;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

  if (v8 != 2)
  {
    return 0;
  }

LABEL_15:

  return sub_1B0C78C0C(v5, v7);
}

uint64_t ContentDisposition.description.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B08C50F0(a1, a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionVcfC_0(a1, a2, a3);
}

uint64_t sub_1B0C79124()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B08C50F0(v1, v2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionVcfC_0(v1, v2, v3);
}

uint64_t ContentDisposition.Kind.description.getter(uint64_t a1, unint64_t a2)
{
  v2 = 0x656D686361747461;
  v3 = 0x7461642D6D726F66;
  if (a2 != 2)
  {
    v3 = a1;
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x656E696C6E69;
  }

  sub_1B08C50F0(a1, a2);
  return v4;
}

uint64_t String.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0x656D686361747461;
  v3 = 0x7461642D6D726F66;
  if (a2 != 2)
  {
    v3 = a1;
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0x656E696C6E69;
  }
}

{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return 0x7461642D64616572;
      case 4:
        return 1702521203;
      case 5:
        return 1701667182;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return 0x6E6F697461657263;
    }

    else if (a2 == 2)
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    return 0x656D616E656C6966;
  }

  return result;
}

uint64_t sub_1B0C79274()
{
  v1 = v0[1];
  v2 = 0x656D686361747461;
  v3 = 0x7461642D6D726F66;
  if (v1 != 2)
  {
    v3 = *v0;
    v4 = v0[1];
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  sub_1B08C50F0(*v0, v1);
  return v5;
}

uint64_t ContentDisposition.Attribute.description.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0C787D4(a1, a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(a1, a2, a3, a4);
}

uint64_t sub_1B0C79368()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B0C787D4(v1, v2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(v1, v2, v4, v3);
}

unint64_t ContentDisposition.Attribute.Key.description.getter(uint64_t a1, int64_t a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v2 = 0x7461642D64616572;
        goto LABEL_15;
      case 4:
        v2 = 1702521203;
        goto LABEL_15;
      case 5:
        v2 = 1701667182;
        goto LABEL_15;
    }

LABEL_12:
    v2 = a1;
    goto LABEL_15;
  }

  if (!a2)
  {
    v2 = 0x656D616E656C6966;
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    v2 = 0x6E6F697461657263;
    goto LABEL_15;
  }

  if (a2 != 2)
  {
    goto LABEL_12;
  }

  v2 = 0xD000000000000011;
LABEL_15:
  sub_1B0C787D4(a1, a2);
  return v2;
}

uint64_t sub_1B0C795A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  for (i = (a5 + 80); ; i += 7)
  {
    if (*(i - 4))
    {
      goto LABEL_5;
    }

    v8 = *(i - 3);
    v9 = *(i - 2);
    v10 = *(i - 8);
    v11 = *i;
    v12 = *(i - 48);
    if (v12 <= 2 && v12 != 1 && v12 != 2)
    {
      break;
    }

    v7 = sub_1B0E46A78();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_5:
    if (!--v5)
    {
      return 0;
    }
  }

  v14 = *i;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

LABEL_14:

  return sub_1B0CAFCA4(v8, v9, v10, v11, a1);
}

uint64_t sub_1B0C79748()
{
  v1 = *v0;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C797F0()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C798FC()
{
  *v0;
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0C79990()
{
  v1 = *v0;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C79A34()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C79B3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B0C7BB60();
  *a2 = result;
  return result;
}

void sub_1B0C79B6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEA0000000000746ELL;
  v5 = 0x656D686361747461;
  if (v2 != 1)
  {
    v5 = 0x7461642D6D726F66;
    v4 = 0xE900000000000061;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696C6E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B0C79BD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656D686361747461;
  v4 = 0xEA0000000000746ELL;
  if (v2 != 1)
  {
    v3 = 0x7461642D6D726F66;
    v4 = 0xE900000000000061;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x656D686361747461;
  v8 = 0xEA0000000000746ELL;
  if (*a2 != 1)
  {
    v7 = 0x7461642D6D726F66;
    v8 = 0xE900000000000061;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B0E46A78();
  }

  return v11 & 1;
}

uint64_t sub_1B0C79CF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B0C7BBAC();
  *a2 = result;
  return result;
}

uint64_t sub_1B0C79D3C()
{
  *v0;
  *v0;
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0C79E30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B0C7BBF8();
  *a2 = result;
  return result;
}

void sub_1B0C79E60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656D616E656C6966;
  v5 = 0xE900000000000065;
  v6 = 0x7461642D64616572;
  v7 = 1702521203;
  if (v2 != 4)
  {
    v7 = 1701667182;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xED0000657461642DLL;
  v9 = 0x6E6F697461657263;
  if (v2 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x80000001B0F2E2D0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1B0C79F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  if (v4 > 0x6Du)
  {
    if (v4 == 110)
    {
      if (v5 != 97 || v6 != 109 || v7 != 101)
      {
        return 6;
      }

      v8 = a1;
      v9 = a2;
      v10 = 5;
    }

    else if (v4 == 114)
    {
      if (v5 != 101 || v6 != 97 || v7 != 100)
      {
        return 6;
      }

      v8 = a1;
      v9 = a2;
      v10 = 3;
    }

    else
    {
      if (v4 != 115 || v5 != 105 || v6 != 122 || v7 != 101)
      {
        return 6;
      }

      v8 = a1;
      v9 = a2;
      v10 = 4;
    }

    goto LABEL_32;
  }

  if (v4 == 99)
  {
    if (v5 != 114 || v6 != 101 || v7 != 97)
    {
      return 6;
    }

    v8 = a1;
    v9 = a2;
    v10 = 1;
    goto LABEL_32;
  }

  if (v4 == 102)
  {
    if (v5 != 105 || v6 != 108 || v7 != 101)
    {
      return 6;
    }

    v8 = a1;
    v9 = a2;
    v10 = 0;
LABEL_32:
    result = sub_1B0C7C0D8(v8, v9, v10);
    if (result != 6)
    {
      return result;
    }

    return 6;
  }

  if (v4 == 109 && v5 == 111 && v6 == 100 && v7 == 105)
  {
    v8 = a1;
    v9 = a2;
    v10 = 2;
    goto LABEL_32;
  }

  return 6;
}

uint64_t sub_1B0C7A138(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  if (v4 == 97)
  {
    if (v5 != 116 || v6 != 116 || v7 != 97)
    {
      return 3;
    }

    v8 = a1;
    v9 = a2;
    v10 = 1;
    goto LABEL_16;
  }

  if (v4 == 102)
  {
    if (v5 != 111 || v6 != 114 || v7 != 109)
    {
      return 3;
    }

    v8 = a1;
    v9 = a2;
    v10 = 2;
LABEL_16:
    result = sub_1B0C7BEE4(v8, v9, v10);
    if (result != 3)
    {
      return result;
    }

    return 3;
  }

  if (v4 == 105 && v5 == 110 && v6 == 108 && v7 == 105)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_16;
  }

  return 3;
}

uint64_t sub_1B0C7A280(unsigned __int8 *a1, unsigned __int8 *a2, char a3, uint64_t a4, void *a5)
{
  v68 = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
    v8 = 0;
    v7 = a1;
    v9 = *(a4 + 16);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_53:

LABEL_54:
    v52 = *MEMORY[0x1E69E9840];
    return v8;
  }

  v8 = sub_1B0C895C4(a1, a2);
  v9 = *(a4 + 16);
  if (!v9)
  {
    goto LABEL_53;
  }

LABEL_3:
  v54[1] = v7;
  v55 = v8;
  v64 = MEMORY[0x1E69E7CC0];
  v59 = a5;
  sub_1B0CBA48C(0, v9, 0);
  v10 = 0;
  v56 = 0;
  v57 = v9;
  v11 = v64;
  v54[0] = a4;
  v58 = a4 + 32;
  while (1)
  {
    v60 = v11;
    v12 = (v58 + 56 * v10);
    v13 = *v12;
    v15 = v12[3];
    v14 = v12[4];
    v16 = *(v12 + 40);
    v17 = v12[6];
    if (v12[2])
    {
      break;
    }

    v23 = v12[6];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v24 = 0;
    v25 = v13;
    if (v16)
    {
      goto LABEL_20;
    }

LABEL_42:
    v41 = v24;
    v65 = 0;
    v66 = 0xE000000000000000;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v42 = v59;

    sub_1B0CAF2F8(v15, v14, v16, v17, v15, v14, v16, v17, v42, &v65);
    swift_bridgeObjectRelease_n();

    v43 = v65;
    v44 = v66;
    v45 = v57;
    v11 = v60;
LABEL_43:
    v64 = v11;
    v47 = *(v11 + 16);
    v46 = *(v11 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_1B0CBA48C((v46 > 1), v47 + 1, 1);
      v11 = v64;
    }

    ++v10;
    *(v11 + 16) = v47 + 1;
    v48 = (v11 + 32 * v47);
    v48[4] = v41;
    v48[5] = v25;
    v48[6] = v43;
    v48[7] = v44;
    if (v10 == v45)
    {

      v8 = v55;
      goto LABEL_54;
    }
  }

  v18 = v12[1];
  v65 = 0;
  v66 = 0xE000000000000000;
  if (v13)
  {
    v19 = v18 - v13;
  }

  else
  {
    v19 = 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  MEMORY[0x1B2726D20](v19);
  if (v13)
  {
    v20 = v18 == v13;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v21 = v65;
    v22 = v66;
    do
    {
      if (*v13 - 1 <= 0x7D)
      {
        v62 = v21;
        v63 = v22;
        sub_1B0E44C58();
        v21 = v62;
        v22 = v63;
      }

      ++v13;
    }

    while (v13 != v18);
    v65 = v21;
    v66 = v22;
  }

  v24 = v65;
  v25 = v66;
  if (!v16)
  {
    goto LABEL_42;
  }

LABEL_20:
  if (*(v17 + 2) != 1)
  {
    goto LABEL_42;
  }

  if ((*(v17 + 24) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  v26 = *(v17 + 4);
  v27 = *(v17 + 5);
  if ((sub_1B0CAE540(v26, v27) & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v26)
  {
    v28 = v27 - v26;
  }

  else
  {
    v28 = 0;
  }

  if (v28 < 0)
  {
    __break(1u);
LABEL_56:
    __break(1u);
  }

  v29 = sub_1B0CB4F5C(0, v28, v26, v27);
  if (v31)
  {
    v32 = v31 + v30;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v33 = v31 + v29;
  }

  else
  {
    v33 = 0;
  }

  v62 = 0;
  v63 = 0xE000000000000000;
  v34 = v32 - v33;
  if (v33)
  {
    v35 = v32 - v33;
  }

  else
  {
    v35 = 0;
  }

  MEMORY[0x1B2726D20](v35);
  v61 = 0;
  if (!v33)
  {
    v34 = 0;
    v11 = v60;
LABEL_48:

    goto LABEL_49;
  }

  v36 = v59;
  v11 = v60;
  if (v34 < 0)
  {
    goto LABEL_56;
  }

  if (v34 < 1025)
  {
    goto LABEL_48;
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_49:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v65 = v54 - v49;
    v66 = v34;
    v67 = 0;
    v50 = v56;
    sub_1B0CAC0EC(&v65, &v62, v33, v32, v51, &v61);
    if (v50)
    {
      goto LABEL_58;
    }

    v56 = 0;
    goto LABEL_51;
  }

  v38 = swift_slowAlloc();

  v39 = v36;
  v40 = v56;
  sub_1B0CB1ED8(v38, v32 - v33, &v62, v33, v32, v39, &v61);
  if (!v40)
  {
    v56 = 0;
    MEMORY[0x1B272C230](v38, -1, -1);
LABEL_51:
    v45 = v57;
    v41 = v24;

    v43 = v62;
    v44 = v63;
    goto LABEL_43;
  }

  MEMORY[0x1B272C230](v38, -1, -1);
  __break(1u);
LABEL_58:

  result = swift_willThrow();
  __break(1u);
  return result;
}

uint64_t sub_1B0C7A730(uint64_t a1)
{
  v1 = a1 + 24;
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = (v1 + 32);
    v4 = *(v1 + 16);
    v1 += 32;
    if (!v4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return v5;
    }
  }

  return 0;
}

uint64_t _s9IMAP2MIME18ContentDispositionV9AttributeV3KeyO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return a4 == 3;
      case 4:
        return a4 == 4;
      case 5:
        return a4 == 5;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  if (a4 < 6)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t _s9IMAP2MIME18ContentDispositionV9AttributeV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (a6 == 3)
        {
          goto LABEL_24;
        }

        break;
      case 4:
        if (a6 == 4)
        {
          goto LABEL_24;
        }

        break;
      case 5:
        if (a6 == 5)
        {
          goto LABEL_24;
        }

        break;
      default:
        goto LABEL_16;
    }

    return 0;
  }

  if (!a2)
  {
    if (!a6)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a6 == 1)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (a2 != 2)
  {
LABEL_16:
    if (a6 < 6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v9 = a3;
      v10 = a4;
      v11 = a8;
      v12 = a7;
      v13 = sub_1B0E46A78();
      a3 = v9;
      a4 = v10;
      a7 = v12;
      a8 = v11;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_24;
  }

  if (a6 != 2)
  {
    return 0;
  }

LABEL_24:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return sub_1B0E46A78();
}

uint64_t _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = qword_1EB6E5CC8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = 0x656D616E656C6966;
  v10 = sub_1B0E429A8();
  __swift_project_value_buffer(v10, qword_1EB6E5DC8);
  sub_1B07C7F5C();
  sub_1B0E45EF8();
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    if (a2 > 2)
    {
      switch(a2)
      {
        case 3:
          v9 = 0x7461642D64616572;
          v14 = 0xE900000000000065;
          goto LABEL_33;
        case 4:
          v14 = 0xE400000000000000;
          v9 = 1702521203;
          goto LABEL_33;
        case 5:
          v14 = 0xE400000000000000;
          v9 = 1701667182;
          goto LABEL_33;
      }
    }

    else
    {
      switch(a2)
      {
        case 0:
          v14 = 0xE800000000000000;
          goto LABEL_33;
        case 1:
          v9 = 0x6E6F697461657263;
          v14 = 0xED0000657461642DLL;
          goto LABEL_33;
        case 2:
          v9 = 0xD000000000000011;
          v14 = 0x80000001B0F2E2D0;
LABEL_33:
          sub_1B0C787D4(a1, a2);
          sub_1B0C787D4(a1, a2);
          MEMORY[0x1B2726E80](v9, v14);

          sub_1B0C78820(a1, a2);
          MEMORY[0x1B2726E80](8765, 0xE200000000000000);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](a3, a4);
          sub_1B0C78820(a1, a2);
          swift_bridgeObjectRelease_n();
          MEMORY[0x1B2726E80](34, 0xE100000000000000);
          return 0;
      }
    }

    v9 = a1;
    v14 = a2;
    goto LABEL_33;
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v9 = 0x7461642D64616572;
        v13 = 0xE900000000000065;
        goto LABEL_31;
      case 4:
        v13 = 0xE400000000000000;
        v9 = 1702521203;
        goto LABEL_31;
      case 5:
        v13 = 0xE400000000000000;
        v9 = 1701667182;
        goto LABEL_31;
    }

LABEL_26:
    v9 = a1;
    v13 = a2;
    goto LABEL_31;
  }

  if (!a2)
  {
    v13 = 0xE800000000000000;
    goto LABEL_31;
  }

  if (a2 == 1)
  {
    v9 = 0x6E6F697461657263;
    v13 = 0xED0000657461642DLL;
    goto LABEL_31;
  }

  if (a2 != 2)
  {
    goto LABEL_26;
  }

  v9 = 0xD000000000000011;
  v13 = 0x80000001B0F2E2D0;
LABEL_31:
  sub_1B0C787D4(a1, a2);
  sub_1B0C787D4(a1, a2);
  MEMORY[0x1B2726E80](v9, v13);

  sub_1B0C78820(a1, a2);
  MEMORY[0x1B2726E80](61, 0xE100000000000000);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](a3, a4);
  sub_1B0C78820(a1, a2);
  swift_bridgeObjectRelease_n();
  return 0;
}

uint64_t _sSS9IMAP2MIMEEySSAA18ContentDispositionVcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x656D686361747461;
  v4 = 0x7461642D6D726F66;
  if (a2 != 2)
  {
    v4 = a1;
  }

  if (a2 != 1)
  {
    v3 = v4;
  }

  if (a2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  v14 = v5;
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      sub_1B0C787D4(v8, v9);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(v8, v9, v10, v11);
      MEMORY[0x1B2726E80](v12);

      MEMORY[0x1B2726E80](8251, 0xE200000000000000);

      v7 += 4;
      --v6;
    }

    while (v6);

    return v14;
  }

  else
  {
  }

  return v5;
}

uint64_t _s9IMAP2MIME18ContentDispositionV4KindO13stringLiteralAESS_tcfC_0(uint64_t a1)
{
  v1 = 0x656E696C6E69;
  v4 = sub_1B0E44B98();
  v5 = 0x656D686361747461;
  v6 = 0xEA0000000000746ELL;
  if (byte_1F27228F8 != 1)
  {
    v5 = 0x7461642D6D726F66;
    v6 = 0xE900000000000061;
  }

  if (byte_1F27228F8)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696C6E69;
  }

  if (byte_1F27228F8)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = v3;
  if (v7 == v4 && v8 == v3)
  {
    goto LABEL_11;
  }

  v10 = sub_1B0E46A78();

  if (v10)
  {
LABEL_13:

    goto LABEL_14;
  }

  if (byte_1F27228F9)
  {
    if (byte_1F27228F9 == 1)
    {
      v12 = 0xEA0000000000746ELL;
      if (v4 != 0x656D686361747461)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = 0xE900000000000061;
      if (v4 != 0x7461642D6D726F66)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v4 != 0x656E696C6E69)
    {
      goto LABEL_23;
    }
  }

  if (v12 == v9)
  {
    goto LABEL_11;
  }

LABEL_23:
  v13 = sub_1B0E46A78();

  if (v13)
  {
    goto LABEL_13;
  }

  if (byte_1F27228FA)
  {
    if (byte_1F27228FA == 1)
    {
      v1 = 0x656D686361747461;
      v14 = 0xEA0000000000746ELL;
    }

    else
    {
      v1 = 0x7461642D6D726F66;
      v14 = 0xE900000000000061;
    }
  }

  else
  {
    v14 = 0xE600000000000000;
  }

  if (v1 == v4 && v14 == v9)
  {
LABEL_11:

LABEL_14:

    return 0;
  }

  v15 = sub_1B0E46A78();

  if (v15)
  {
    goto LABEL_13;
  }

  return a1;
}

uint64_t _s9IMAP2MIME18ContentDispositionV9AttributeV3KeyO13stringLiteralAGSS_tcfC_0(uint64_t a1)
{
  v1 = 0x656D616E656C6966;
  v4 = sub_1B0E44B98();
  v5 = 0xE800000000000000;
  v6 = 0x7461642D64616572;
  v7 = 0xE900000000000065;
  v8 = 1702521203;
  if (byte_1F2722920 != 4)
  {
    v8 = 1701667182;
  }

  if (byte_1F2722920 != 3)
  {
    v6 = v8;
    v7 = 0xE400000000000000;
  }

  v9 = 0x6E6F697461657263;
  v10 = 0xED0000657461642DLL;
  if (byte_1F2722920 != 1)
  {
    v9 = 0xD000000000000011;
    v10 = 0x80000001B0F2E2D0;
  }

  if (byte_1F2722920)
  {
    v5 = v10;
  }

  else
  {
    v9 = 0x656D616E656C6966;
  }

  if (byte_1F2722920 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (byte_1F2722920 <= 2u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  v13 = v3;
  if (v11 == v4 && v12 == v3)
  {
    goto LABEL_18;
  }

  v14 = sub_1B0E46A78();

  if (v14)
  {
    goto LABEL_20;
  }

  if (byte_1F2722921 > 2u)
  {
    if (byte_1F2722921 == 3)
    {
      v16 = 0xE900000000000065;
      if (v4 != 0x7461642D64616572)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v16 = 0xE400000000000000;
      if (byte_1F2722921 == 4)
      {
        if (v4 != 1702521203)
        {
          goto LABEL_38;
        }
      }

      else if (v4 != 1701667182)
      {
        goto LABEL_38;
      }
    }
  }

  else if (byte_1F2722921)
  {
    if (byte_1F2722921 == 1)
    {
      v16 = 0xED0000657461642DLL;
      if (v4 != 0x6E6F697461657263)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v16 = 0x80000001B0F2E2D0;
      if (v4 != 0xD000000000000011)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    v16 = 0xE800000000000000;
    if (v4 != 0x656D616E656C6966)
    {
      goto LABEL_38;
    }
  }

  if (v16 == v13)
  {
LABEL_18:

LABEL_20:

    return 0;
  }

LABEL_38:
  v17 = sub_1B0E46A78();

  if (v17)
  {
    goto LABEL_20;
  }

  if (byte_1F2722922 > 2u)
  {
    if (byte_1F2722922 == 3)
    {
      v18 = 0x7461642D64616572;
      v19 = 0xE900000000000065;
    }

    else
    {
      v19 = 0xE400000000000000;
      if (byte_1F2722922 == 4)
      {
        v18 = 1702521203;
      }

      else
      {
        v18 = 1701667182;
      }
    }
  }

  else if (byte_1F2722922)
  {
    if (byte_1F2722922 == 1)
    {
      v18 = 0x6E6F697461657263;
      v19 = 0xED0000657461642DLL;
    }

    else
    {
      v18 = 0xD000000000000011;
      v19 = 0x80000001B0F2E2D0;
    }
  }

  else
  {
    v19 = 0xE800000000000000;
    v18 = 0x656D616E656C6966;
  }

  if (v18 == v4 && v19 == v13)
  {
    goto LABEL_18;
  }

  v20 = sub_1B0E46A78();

  if (v20)
  {
    goto LABEL_20;
  }

  if (byte_1F2722923 > 2u)
  {
    if (byte_1F2722923 == 3)
    {
      v21 = 0x7461642D64616572;
      v22 = 0xE900000000000065;
    }

    else
    {
      v22 = 0xE400000000000000;
      v21 = byte_1F2722923 == 4 ? 1702521203 : 1701667182;
    }
  }

  else if (byte_1F2722923)
  {
    if (byte_1F2722923 == 1)
    {
      v21 = 0x6E6F697461657263;
      v22 = 0xED0000657461642DLL;
    }

    else
    {
      v21 = 0xD000000000000011;
      v22 = 0x80000001B0F2E2D0;
    }
  }

  else
  {
    v22 = 0xE800000000000000;
    v21 = 0x656D616E656C6966;
  }

  if (v21 == v4 && v22 == v13)
  {
    goto LABEL_18;
  }

  v23 = sub_1B0E46A78();

  if (v23)
  {
    goto LABEL_20;
  }

  if (byte_1F2722924 > 2u)
  {
    if (byte_1F2722924 == 3)
    {
      v24 = 0x7461642D64616572;
      v25 = 0xE900000000000065;
    }

    else
    {
      v25 = 0xE400000000000000;
      v24 = byte_1F2722924 == 4 ? 1702521203 : 1701667182;
    }
  }

  else if (byte_1F2722924)
  {
    if (byte_1F2722924 == 1)
    {
      v24 = 0x6E6F697461657263;
      v25 = 0xED0000657461642DLL;
    }

    else
    {
      v24 = 0xD000000000000011;
      v25 = 0x80000001B0F2E2D0;
    }
  }

  else
  {
    v25 = 0xE800000000000000;
    v24 = 0x656D616E656C6966;
  }

  if (v24 == v4 && v25 == v13)
  {
    goto LABEL_18;
  }

  v26 = sub_1B0E46A78();

  if (v26)
  {
    goto LABEL_20;
  }

  if (byte_1F2722925 > 2u)
  {
    if (byte_1F2722925 == 3)
    {
      v1 = 0x7461642D64616572;
      v27 = 0xE900000000000065;
    }

    else
    {
      v27 = 0xE400000000000000;
      v1 = byte_1F2722925 == 4 ? 1702521203 : 1701667182;
    }
  }

  else if (byte_1F2722925)
  {
    if (byte_1F2722925 == 1)
    {
      v1 = 0x6E6F697461657263;
      v27 = 0xED0000657461642DLL;
    }

    else
    {
      v1 = 0xD000000000000011;
      v27 = 0x80000001B0F2E2D0;
    }
  }

  else
  {
    v27 = 0xE800000000000000;
  }

  if (v1 == v4 && v27 == v13)
  {
    goto LABEL_18;
  }

  v28 = sub_1B0E46A78();

  if (v28)
  {
    goto LABEL_20;
  }

  return a1;
}

unint64_t sub_1B0C7B664()
{
  result = qword_1EB6E5D58;
  if (!qword_1EB6E5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D58);
  }

  return result;
}

unint64_t sub_1B0C7B6C8()
{
  result = qword_1EB6E5D60;
  if (!qword_1EB6E5D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D60);
  }

  return result;
}

unint64_t sub_1B0C7B738()
{
  result = qword_1EB6E5D68;
  if (!qword_1EB6E5D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D68);
  }

  return result;
}

unint64_t sub_1B0C7B790()
{
  result = qword_1EB6E5D70;
  if (!qword_1EB6E5D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D70);
  }

  return result;
}

uint64_t sub_1B0C7B7F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B0C7B850(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B0C7B8C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C7B918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_1B0C7B9FC()
{
  result = qword_1EB6E5D88;
  if (!qword_1EB6E5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D88);
  }

  return result;
}

unint64_t sub_1B0C7BA84()
{
  result = qword_1EB6E5DA0;
  if (!qword_1EB6E5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5DA0);
  }

  return result;
}

unint64_t sub_1B0C7BB0C()
{
  result = qword_1EB6E5DB8;
  if (!qword_1EB6E5DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5DB8);
  }

  return result;
}

uint64_t sub_1B0C7BB60()
{
  v0 = sub_1B0E467E8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B0C7BBAC()
{
  v0 = sub_1B0E467E8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B0C7BBF8()
{
  v0 = sub_1B0E467E8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B0C7BC9C(char *a1, char *a2, uint64_t a3)
{
  v3 = 0xEB00000000656C62;
  v4 = 0xE700000000000000;
  if (a3 != 8)
  {
    v4 = 0xE600000000000000;
  }

  v5 = 0xE500000000000000;
  if (a3 != 6)
  {
    v5 = 0xEF6563616C706572;
  }

  if (a3 == 5)
  {
    v5 = 0xE900000000000061;
  }

  if (a3 <= 7u)
  {
    v4 = v5;
  }

  v6 = 0xE900000000000064;
  if (a3 == 3)
  {
    v6 = 0xE600000000000000;
  }

  if (a3 == 2)
  {
    v6 = 0xE900000000000065;
  }

  if (!a3)
  {
    v3 = 0xEB00000000657669;
  }

  if (a3 > 1u)
  {
    v3 = v6;
  }

  if (a3 <= 4u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = a3;

  v11 = HIBYTE(v7) & 0xF;
  if (a1)
  {
    if (v11 != a2 - a1)
    {
      return 11;
    }
  }

  else if (v11)
  {
    return 11;
  }

  v12 = sub_1B0C95928(v8);
  v14 = sub_1B0CADCDC(v12, v13, a1, a2, sub_1B0C95118);

  if ((v14 & 1) == 0)
  {
    return 11;
  }

  return v8;
}

uint64_t sub_1B0C7BDD0(char *a1, char *a2, uint64_t a3)
{
  v3 = 0xE900000000000074;
  v4 = 0xE400000000000000;
  v5 = 0xE700000000000000;
  v6 = 0xE500000000000000;
  if (a3 != 8)
  {
    v5 = 0xE500000000000000;
  }

  if (a3 != 7)
  {
    v4 = v5;
  }

  v7 = 0xE400000000000000;
  if (a3 != 5)
  {
    v7 = 0xE500000000000000;
  }

  if (a3 <= 6u)
  {
    v4 = v7;
  }

  v8 = 0xE500000000000000;
  if (a3 != 3)
  {
    v6 = 0xE700000000000000;
  }

  if (a3 != 2)
  {
    v8 = v6;
  }

  if (a3)
  {
    v3 = 0xEB000000006E6F69;
  }

  if (a3 > 1u)
  {
    v3 = v8;
  }

  if (a3 <= 4u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  v10 = a3;

  v13 = HIBYTE(v9) & 0xF;
  if (a1)
  {
    if (v13 != a2 - a1)
    {
      return 10;
    }
  }

  else if (v13)
  {
    return 10;
  }

  v14 = sub_1B0C95BB0(v10);
  v16 = sub_1B0CADCDC(v14, v15, a1, a2, sub_1B0C95118);

  if ((v16 & 1) == 0)
  {
    return 10;
  }

  return v10;
}

uint64_t sub_1B0C7BEE4(char *a1, char *a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = 0xEA0000000000746ELL;
    }

    else
    {
      v6 = 0xE900000000000061;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  if (a1)
  {
    if (v7 != a2 - a1)
    {
      return 3;
    }
  }

  else if (v7)
  {
    return 3;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v8 = 0x656D686361747461;
    }

    else
    {
      v8 = 0x7461642D6D726F66;
    }

    if (v3 == 1)
    {
      v9 = 0xEA0000000000746ELL;
    }

    else
    {
      v9 = 0xE900000000000061;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
    v8 = 0x656E696C6E69;
  }

  v10 = sub_1B0CADCDC(v8, v9, a1, a2, sub_1B0C95118);

  if ((v10 & 1) == 0)
  {
    return 3;
  }

  return v3;
}

uint64_t sub_1B0C7BFF8(char *a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_1B0CB7394(a3);
  v8 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B0E44DC8();

    if (a1)
    {
      goto LABEL_6;
    }
  }

  else
  {

    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (a1)
    {
LABEL_6:
      if (v9 != a2 - a1)
      {
        return 20;
      }

      goto LABEL_10;
    }
  }

  if (v9)
  {
    return 20;
  }

LABEL_10:
  v10 = sub_1B0CB7394(v3);
  v12 = sub_1B0CADCDC(v10, v11, a1, a2, sub_1B0C95118);

  if ((v12 & 1) == 0)
  {
    return 20;
  }

  return v3;
}

uint64_t sub_1B0C7C0D8(char *a1, char *a2, uint64_t a3)
{
  v3 = 0x656D616E656C6966;
  v4 = 0xE800000000000000;
  v5 = 0x7461642D64616572;
  v6 = 0xE900000000000065;
  v7 = 1702521203;
  if (a3 != 4)
  {
    v7 = 1701667182;
  }

  if (a3 != 3)
  {
    v5 = v7;
    v6 = 0xE400000000000000;
  }

  v8 = 0x6E6F697461657263;
  v9 = 0xED0000657461642DLL;
  if (a3 != 1)
  {
    v8 = 0xD000000000000011;
    v9 = 0x80000001B0F2E2D0;
  }

  if (a3)
  {
    v4 = v9;
  }

  else
  {
    v8 = 0x656D616E656C6966;
  }

  if (a3 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (a3 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  v12 = a3;
  if ((v11 & 0x1000000000000000) != 0)
  {
    v15 = sub_1B0E44DC8();

    if (a1)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if ((v11 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v15 = v10 & 0x6D7F657F7F7FLL;
    }

    if (a1)
    {
LABEL_21:
      if (v15 != a2 - a1)
      {
        return 6;
      }

      goto LABEL_25;
    }
  }

  if (v15)
  {
    return 6;
  }

LABEL_25:
  if (v12 > 2u)
  {
    if (v12 == 3)
    {
      v3 = 0x7461642D64616572;
      v16 = 0xE900000000000065;
    }

    else
    {
      v16 = 0xE400000000000000;
      if (v12 == 4)
      {
        v3 = 1702521203;
      }

      else
      {
        v3 = 1701667182;
      }
    }
  }

  else if (v12)
  {
    if (v12 == 1)
    {
      v3 = 0x6E6F697461657263;
      v16 = 0xED0000657461642DLL;
    }

    else
    {
      v3 = 0xD000000000000011;
      v16 = 0x80000001B0F2E2D0;
    }
  }

  else
  {
    v16 = 0xE800000000000000;
  }

  v17 = sub_1B0CADCDC(v3, v16, a1, a2, sub_1B0C95118);

  if ((v17 & 1) == 0)
  {
    return 6;
  }

  return v12;
}

uint64_t sub_1B0C7C30C(char *a1, char *a2, uint64_t a3)
{
  v3 = 0xE600000000000000;
  v4 = 0x7972616E6962;
  v5 = 0xD000000000000010;
  v6 = 0x80000001B0F2E310;
  if (a3 != 3)
  {
    v5 = 0x343665736162;
    v6 = 0xE600000000000000;
  }

  if (a3 != 2)
  {
    v4 = v5;
    v3 = v6;
  }

  if (a3)
  {
    v7 = 1953063480;
  }

  else
  {
    v7 = 1953063479;
  }

  if (a3 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (a3 <= 1u)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v3;
  }

  v10 = a3;
  if ((v9 & 0x1000000000000000) != 0)
  {
    v13 = sub_1B0E44DC8();

    if (a1)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if ((v9 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v13 = v8 & 0x7D76757F6B7FLL;
    }

    if (a1)
    {
LABEL_19:
      if (v13 != a2 - a1)
      {
        return 5;
      }

      goto LABEL_23;
    }
  }

  if (v13)
  {
    return 5;
  }

LABEL_23:
  v14 = 0xE600000000000000;
  v15 = 0x7972616E6962;
  v16 = 0xD000000000000010;
  v17 = 0x80000001B0F2E310;
  if (v10 != 3)
  {
    v16 = 0x343665736162;
    v17 = 0xE600000000000000;
  }

  if (v10 != 2)
  {
    v15 = v16;
    v14 = v17;
  }

  if (v10)
  {
    v18 = 1953063480;
  }

  else
  {
    v18 = 1953063479;
  }

  if (v10 <= 1u)
  {
    v19 = v18;
  }

  else
  {
    v19 = v15;
  }

  if (v10 <= 1u)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = v14;
  }

  v21 = sub_1B0CADCDC(v19, v20, a1, a2, sub_1B0C95118);

  if ((v21 & 1) == 0)
  {
    return 5;
  }

  return v10;
}

uint64_t sub_1B0C7C4CC(char *a1, char *a2, uint64_t a3)
{
  v3 = 0xE400000000000000;
  v4 = a3;
  switch(a3)
  {
    case 1:
      v3 = 0xEB00000000657079;
      break;
    case 2:
    case 9:
      v3 = 0xE800000000000000;
      break;
    case 3:
    case 11:
      v3 = 0xE700000000000000;
      break;
    case 4:
    case 6:
      v3 = 0xE500000000000000;
      break;
    case 5:
    case 10:
    case 12:
      v3 = 0xE600000000000000;
      break;
    case 7:
      v3 = 0xE200000000000000;
      break;
    case 8:
      v3 = 0xEB000000006E6F69;
      break;
    default:
      break;
  }

  v7 = HIBYTE(v3) & 0xF;
  if (a1)
  {
    if (v7 != a2 - a1)
    {
      return 13;
    }
  }

  else if (v7)
  {
    return 13;
  }

  v8 = sub_1B0C7E5F8(v4);
  v10 = sub_1B0CADCDC(v8, v9, a1, a2, sub_1B0C95118);

  if ((v10 & 1) == 0)
  {
    return 13;
  }

  return v4;
}

uint64_t sub_1B0C7C5D8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 1953063480;
    }

    else
    {
      v2 = 1953063479;
    }

    v3 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v2 = 0x7972616E6962;
  }

  else if (a1 == 3)
  {
    v2 = 0xD000000000000010;
    v3 = 0x80000001B0F2E310;
  }

  else
  {
    v3 = 0xE600000000000000;
    v2 = 0x343665736162;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = 1953063480;
    }

    else
    {
      v5 = 1953063479;
    }

    v4 = 0xE400000000000000;
    if (v2 != v5)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 2)
  {
    v4 = 0xE600000000000000;
    if (v2 != 0x7972616E6962)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 3)
  {
    v4 = 0x80000001B0F2E310;
    if (v2 != 0xD000000000000010)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    if (v2 != 0x343665736162)
    {
LABEL_26:
      v6 = sub_1B0E46A78();
      goto LABEL_27;
    }
  }

  if (v3 != v4)
  {
    goto LABEL_26;
  }

  v6 = 1;
LABEL_27:

  return v6 & 1;
}

uint64_t sub_1B0C7C744(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000065;
  v5 = 1702521203;
  if (a1 != 4)
  {
    v5 = 1701667182;
  }

  if (a1 == 3)
  {
    v5 = 0x7461642D64616572;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v6 = 0x6E6F697461657263;
  v7 = 0xED0000657461642DLL;
  if (a1 != 1)
  {
    v6 = 0xD000000000000011;
    v7 = 0x80000001B0F2E2D0;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v6 = 0x656D616E656C6966;
  }

  if (a1 <= 2u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE900000000000065;
      if (v8 != 0x7461642D64616572)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      if (a2 == 4)
      {
        if (v8 != 1702521203)
        {
          goto LABEL_35;
        }
      }

      else if (v8 != 1701667182)
      {
LABEL_35:
        v11 = sub_1B0E46A78();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xED0000657461642DLL;
      if (v8 != 0x6E6F697461657263)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0x80000001B0F2E2D0;
      if (v8 != 0xD000000000000011)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    if (v8 != 0x656D616E656C6966)
    {
      goto LABEL_35;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_35;
  }

  v11 = 1;
LABEL_36:

  return v11 & 1;
}

uint64_t ContentTransferEncoding.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1953063479;
  v2 = 0x7972616E6962;
  v3 = 0xD000000000000010;
  if (a1 != 3)
  {
    v3 = 0x343665736162;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1953063480;
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

uint64_t sub_1B0C7C9CC()
{
  v1 = *v0;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C7CA94()
{
  *v0;
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0C7CB48()
{
  v1 = *v0;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C7CC0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s9IMAP2MIME23ContentTransferEncodingO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1B0C7CC3C(uint64_t *a1@<X8>)
{
  v2 = 1953063479;
  v3 = *v1;
  v4 = 0xE600000000000000;
  v5 = 0x7972616E6962;
  v6 = 0x80000001B0F2E310;
  v7 = 0xD000000000000010;
  if (v3 != 3)
  {
    v7 = 0x343665736162;
    v6 = 0xE600000000000000;
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v2 = 1953063480;
  }

  *v1;
  if (*v1 <= 1u)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v2 = v5;
    v8 = v4;
  }

  *a1 = v2;
  a1[1] = v8;
}

uint64_t ContentTransferEncoding.init(_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1B0E44BB8() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = sub_1B0E46A78();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_1B0E44BB8() == a1 && v8 == a2)
  {

LABEL_13:

    return 1;
  }

  v9 = sub_1B0E46A78();

  if (v9)
  {
    goto LABEL_13;
  }

  if (sub_1B0E44BB8() == a1 && v10 == a2)
  {

LABEL_18:

    return 2;
  }

  v11 = sub_1B0E46A78();

  if (v11)
  {
    goto LABEL_18;
  }

  if (sub_1B0E44BB8() == a1 && v12 == a2)
  {

LABEL_23:

    return 4;
  }

  v13 = sub_1B0E46A78();

  if (v13)
  {
    goto LABEL_23;
  }

  if (sub_1B0E44BB8() == a1 && v14 == a2)
  {

    return 3;
  }

  v15 = sub_1B0E46A78();

  if (v15)
  {
    return 3;
  }

  return 5;
}

uint64_t BodyStructure.Encoding.init(_:)()
{
  return sub_1B0E44BB8();
}

{
  v0 = sub_1B0E44BB8();

  return v0;
}

uint64_t sub_1B0C7CFA0(uint64_t result, unsigned __int8 a2)
{
  if (a2 >= 4u)
  {
    v2 = ceil(result * 3.0 * 0.25);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v2 > -9.22337204e18)
    {
      if (v2 < 9.22337204e18)
      {
        result = v2 + 10;
        if (!__OFADD__(v2, 10))
        {
          return result;
        }

LABEL_10:
        __break(1u);
        return result;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1B0C7D01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1B0C6549C(a3, a4, a1, v10, 1);
  if (v6)
  {
    sub_1B0C7DD1C(a5);
  }

  else
  {
    result = sub_1B0C7D2C0(v11, v12, v13 & 1);
    if (result)
    {
      v16 = v15 - result;
    }

    else
    {
      v16 = 0;
    }

    if (v16 < 0)
    {
      __break(1u);
    }

    else
    {
      return sub_1B0CB3A7C(a5, 0, v16, result, v15, a6);
    }
  }

  return result;
}

unint64_t sub_1B0C7D0C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, int64_t, uint64_t, uint64_t))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      v5 = a3 - a2;
    }

    else
    {
      v5 = 0;
    }

    result = a4(0, v5, a2, a3);
    if (v4 && result < v4)
    {
      v4 = v5;
      if ((v5 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      __break(1u);
    }

    if (v5 >= v4)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C7D154(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result >= 3u)
  {
    if (result == 3)
    {
      if (a2)
      {
        v20 = a3 - a2;
      }

      else
      {
        v20 = 0;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        return sub_1B0CA63D0(0, v20, a2, a3, a4, a5);
      }
    }

    else
    {
      if (a2)
      {
        v21 = a3;
      }

      else
      {
        v21 = 0;
      }

      return sub_1B0C6549C(a4, a5, a2, v21, 1);
    }
  }

  else
  {
    v9 = a3 - a2;
    if (!a2)
    {
      v9 = 0;
    }

    v10 = v9 & (v9 >> 63);
    if (a5 - a4 < v9)
    {
      v9 = a5 - a4;
    }

    if (a4)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = sub_1B0C7D0C0(v11, a4, a5, sub_1B0433338);
    v15 = v14;
    if (v13)
    {
      v16 = (v13 + v12);
    }

    else
    {
      v16 = 0;
    }

    if (a2 && v16)
    {
      v17 = v13 + v15;
      if (!v13)
      {
        v17 = 0;
      }

      memmove(a2, v16, v17 - v16);
    }

    v18 = sub_1B0C7D0C0(v11, a2, a3, sub_1B0433338);
    if (v19)
    {
      return v19 + v18;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0C7D2C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
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
      __break(1u);
    }

    else
    {
      v5 = sub_1B0C7D318(0, v4, result, a2);
      if (v6)
      {
        return v6 + v5;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B0C7D318(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a2 < 0 || v4 < a2)
  {
    goto LABEL_29;
  }

  if (a2 - result < 100)
  {
    return result;
  }

  if (a2 < 0x63)
  {
    goto LABEL_30;
  }

  v5 = 0;
  v6 = a3 + a2;
  while (1)
  {
    v7 = a2 + v5 - 99;
    if (v7 >= a2 || a2 - 99 < result || v7 >= a2 - 2)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v10 = a2 + v5 - 98;
    if (v10 < result || v10 >= a2)
    {
      goto LABEL_27;
    }

    if (*(v6 + v5 - 99) <= 0x7Eu && *(v6 + v5 - 98) < 0x7Fu)
    {
      break;
    }

    if (++v5 == 97)
    {
      return result;
    }
  }

  v11 = a2 + v5 - 97;
  if (__OFADD__(a2 + v5 - 99, 2))
  {
    goto LABEL_31;
  }

  if (v11 >= result)
  {
    if (v11 > a2)
    {
      goto LABEL_33;
    }

    return result;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1B0C7D3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 - a2;
  if (a2)
  {
    v6 = a3 - a2;
  }

  else
  {
    v6 = 0;
  }

  result = sub_1B0433338(0, v6, a2, a3);
  if (a1 < 1)
  {
    if (result <= 0 && result > a1)
    {
      return 0;
    }
  }

  else if ((result & 0x8000000000000000) == 0 && result < a1)
  {
    return 0;
  }

  if (a1 < 0 || v6 < a1)
  {
    __break(1u);
  }

  else
  {
    result = 0;
    if (a2)
    {
      if (v5 > a1)
      {
        return *(a2 + a1) | 0x20u;
      }
    }
  }

  return result;
}

uint64_t sub_1B0C7D498@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  if (result)
  {
    v12 = a2 - result;
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14 = sub_1B0CA63D0(0, v12, result, a2, a3, a4);
    if (v7)
    {
      sub_1B0C7DD1C(a5);
    }

    result = sub_1B0C7D2C0(v14, v15, v16 & 1);
    if (result)
    {
      v18 = v17 - result;
    }

    else
    {
      v18 = 0;
    }

    if ((v18 & 0x8000000000000000) == 0)
    {
      result = sub_1B0CB3A7C(a5, 0, v18, result, v17, a6);
      *a7 = result;
      a7[1] = v19;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C7D54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  if (v4 == 56)
  {
    if (v5 == 98 && v6 == 105 && v7 == 116)
    {
      v8 = a1;
      v9 = a2;
      v10 = 1;
      goto LABEL_26;
    }
  }

  else if (v4 == 55 && v5 == 98 && v6 == 105 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_26;
  }

  if (v4 == 98 && v5 == 105 && v6 == 110 && v7 == 97)
  {
    v8 = a1;
    v9 = a2;
    v10 = 2;
    goto LABEL_26;
  }

  if (v4 == 113 && v5 == 117 && v6 == 111 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 3;
    goto LABEL_26;
  }

  if (v4 == 98 && v5 == 97 && v6 == 115 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 4;
LABEL_26:
    result = sub_1B0C7C30C(v8, v9, v10);
    if (result != 5)
    {
      return result;
    }
  }

  return 5;
}

uint64_t sub_1B0C7D714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a4;
  v12 = a2;
  v49[2] = *MEMORY[0x1E69E9840];
  v13 = a1 == 3;
  if (a1 >= 3u)
  {
LABEL_6:
    if (v13)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {

        v14 = v48;
        v15 = a5;
        if (v12 >= 1025)
        {
          goto LABEL_56;
        }

        sub_1B0C7DCC0(a5, v48);

        isStackAllocationSafe = sub_1B0C7DCC0(a5, v48);
        while (1)
        {
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v18 = sub_1B0CA63D0(0, v12, &v48[-v17 - 8], &v48[v12 - 8 - v17], a3, v10);
          if (v6)
          {
            goto LABEL_46;
          }

          a1 = sub_1B0C7D2C0(v18, v19, v20 & 1);
          if (a1)
          {
            v12 = v21 - a1;
          }

          else
          {
            v12 = 0;
          }

          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_52;
          }

          __break(1u);
LABEL_17:
          if ((v12 & 0x8000000000000000) == 0)
          {
            v7 = 0;
            goto LABEL_19;
          }

LABEL_20:
          v15 = sub_1B0C7D0C0(v12, a3, v10, sub_1B0433338);
          v28 = v26;
          if (v27)
          {
            v14 = v26 - v15;
          }

          else
          {
            v14 = 0;
          }

          if (v14 < 0)
          {
            __break(1u);
          }

          else
          {
            v29 = v27 + v28;
            if (v27)
            {
              v30 = v29;
            }

            else
            {
              v30 = 0;
            }

            if (v27)
            {
              v31 = v27 + v15;
            }

            else
            {
              v31 = 0;
            }

            v15 = sub_1B0C7D318(0, v14, v31, v30);
            if (v32)
            {
              v10 = v14 - v15;
            }

            else
            {
              v10 = 0;
            }

            if ((v10 & 0x8000000000000000) == 0)
            {
              if (v32)
              {
                v33 = v32 + v14;
              }

              else
              {
                v33 = 0;
              }

              if (v32)
              {
                v34 = v32 + v15;
              }

              else
              {
                v34 = 0;
              }

              sub_1B0C7DCC0(a5, v48);
              v22 = a5;
              v23 = v10;
              v24 = v34;
              v25 = v33;
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_56:
          sub_1B0C7DCC0(v15, v14);

          sub_1B0C7DCC0(a5, v48);
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if ((isStackAllocationSafe & 1) == 0)
          {
            v45 = swift_slowAlloc();

            sub_1B0C7DCC0(a5, v48);
            sub_1B0C7D498(v45, v45 + v12, a3, v10, a5, a6, v49);
            MEMORY[0x1B272C230](v45, -1, -1);
            if (v6)
            {
              goto LABEL_47;
            }

            sub_1B0C7DD1C(a5);

            sub_1B0C7DD1C(a5);

            result = v49[0];
            goto LABEL_53;
          }
        }
      }

      __break(1u);
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {

      if (v12 >= 1025)
      {
        sub_1B0C7DCC0(a5, v48);

        sub_1B0C7DCC0(a5, v48);
        v36 = swift_stdlib_isStackAllocationSafe();
        if ((v36 & 1) == 0)
        {
          v7 = swift_slowAlloc();

          sub_1B0C7DCC0(a5, v48);
          a1 = sub_1B0C7D01C(v7, v7 + v12, a3, v10, a5, a6);
          if (v6)
          {
            MEMORY[0x1B272C230](v7, -1, -1);
            goto LABEL_47;
          }

LABEL_65:
          v46 = a1;
          MEMORY[0x1B272C230](v7, -1, -1);
          sub_1B0C7DD1C(a5);

          sub_1B0C7DD1C(a5);

          result = v46;
          goto LABEL_53;
        }
      }

      else
      {
        sub_1B0C7DCC0(a5, v48);

        v36 = sub_1B0C7DCC0(a5, v48);
      }

      v7 = &v47;
      MEMORY[0x1EEE9AC00](v36);
      v38 = sub_1B0C6549C(a3, v10, &v48[-v37 - 8], &v48[v12 - 8 - v37], 1);
      if (v6)
      {
LABEL_46:
        swift_willThrow();
LABEL_47:
        sub_1B0C7DD1C(a5);

        sub_1B0C7DD1C(a5);

        goto LABEL_53;
      }

      a1 = sub_1B0C7D2C0(v38, v39, v40 & 1);
      if (a1)
      {
        v12 = v21 - a1;
      }

      else
      {
        v12 = 0;
      }

      if ((v12 & 0x8000000000000000) == 0)
      {
LABEL_52:
        v41 = a1;
        v42 = v21;

        sub_1B0C7DCC0(a5, v48);
        v43 = sub_1B0CB3A7C(a5, 0, v12, v41, v42, a6);
        sub_1B0C7DD1C(a5);

        sub_1B0C7DD1C(a5);

        result = v43;
        goto LABEL_53;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    __break(1u);
    goto LABEL_64;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v7 = a4 - a3;
  v13 = a4 - a3 == a2;
  if (a4 - a3 > a2)
  {
    goto LABEL_20;
  }

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_19:

  sub_1B0C7DCC0(a5, v48);
  v22 = a5;
  v23 = v7;
  v24 = a3;
  v25 = v10;
LABEL_41:
  result = sub_1B0CB3A7C(v22, 0, v23, v24, v25, a6);
LABEL_53:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s9IMAP2MIME23ContentTransferEncodingO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1B0E467E8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B0C7DC5C()
{
  result = qword_1EB6E5DC0;
  if (!qword_1EB6E5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5DC0);
  }

  return result;
}

uint64_t ContentType.attributes.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

__n128 ContentType.init(mediaType:attributes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = a2;
  return result;
}

uint64_t ContentType.Attribute.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContentType.Attribute.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static ContentType.Attribute.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1B0E46A78(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1B0E46A78();
    }
  }

  return result;
}

uint64_t static ContentType.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = *(a1 + 32);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v10 = *(a2 + 32);
  if ((_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v9) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);

  return sub_1B0C78D8C(v6, v7);
}

uint64_t sub_1B0C7E0C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v4;
  v10 = *(a2 + 32);
  v5 = *(a2 + 40);
  if ((_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v7, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0C78D8C(v3, v5);
}

uint64_t ContentType.description.getter()
{
  v1 = *(v0 + 16);
  v5[0] = *v0;
  v5[1] = v1;
  v6 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1B07B4718(v5, v3);
  sub_1B0C7FC44(&v4, v3);
  return _sSS9IMAP2MIMEEySSAA11ContentTypeVcfC_0(v0);
}

uint64_t sub_1B0C7E1A0()
{
  v1 = v0[2];
  v5 = v0[1];
  v6 = v1;
  v4 = *v0;
  v7[0] = v4;
  v7[1] = v5;
  v8 = *(v0 + 32);
  v9 = *(&v1 + 1);
  sub_1B07B4718(v7, v3);
  sub_1B0C7FC44(&v9, v3);
  return _sSS9IMAP2MIMEEySSAA11ContentTypeVcfC_0(&v4);
}

uint64_t ContentType.Attribute.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = qword_1EB6E5CC8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_1B0E429A8();
  __swift_project_value_buffer(v9, qword_1EB6E5DC8);
  sub_1B07C7F5C();
  sub_1B0E45EF8();
  v11 = v10;

  if (v11)
  {
    v15 = 8251;
    MEMORY[0x1B2726E80](a1, a2);
    MEMORY[0x1B2726E80](61, 0xE100000000000000);
    v12 = a3;
    v13 = a4;
  }

  else
  {
    v15 = a1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](8765, 0xE200000000000000);
    MEMORY[0x1B2726E80](a3, a4);
    v12 = 34;
    v13 = 0xE100000000000000;
  }

  MEMORY[0x1B2726E80](v12, v13);
  return v15;
}

Swift::String __swiftcall String.init(_:)(IMAP2MIME::ContentType::Attribute a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v3 = a1.key._object;
  v4 = a1.key._countAndFlagsBits;
  v5 = qword_1EB6E5CC8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_1B0E429A8();
  __swift_project_value_buffer(v6, qword_1EB6E5DC8);
  sub_1B07C7F5C();
  sub_1B0E45EF8();
  v8 = v7;

  if (v8)
  {
    v12 = 8251;
    v13 = 0xE200000000000000;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](v4, v3);

    MEMORY[0x1B2726E80](61, 0xE100000000000000);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](countAndFlagsBits, object);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v12 = v4;
    v13 = v3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](8765, 0xE200000000000000);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](countAndFlagsBits, object);
    swift_bridgeObjectRelease_n();

    MEMORY[0x1B2726E80](34, 0xE100000000000000);
  }

  v9 = v12;
  v10 = v13;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1B0C7E4F8()
{
  v0 = sub_1B0E429A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v5, qword_1EB6E5DC8);
  __swift_project_value_buffer(v0, qword_1EB6E5DC8);
  sub_1B0E42958();
  sub_1B0E42998();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1B0C7E5F8(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x742D737365636361;
      break;
    case 2:
      result = 0x797261646E756F62;
      break;
    case 3:
      result = 0x74657372616863;
      break;
    case 4:
      result = 0x70736C6564;
      break;
    case 5:
      result = 0x7265626D756ELL;
      break;
    case 6:
      result = 0x6C61746F74;
      break;
    case 7:
      result = 25705;
      break;
    case 8:
      result = 0x7469736F70736964;
      break;
    case 9:
      result = 0x6C6F636F746F7270;
      break;
    case 10:
      result = 0x636C6167696DLL;
      break;
    case 11:
      result = 0x746E656D6D6F63;
      break;
    case 12:
      result = 0x74616D726F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0C7E73C()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0C7E5F8(v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C7E7A0()
{
  sub_1B0C7E5F8(*v0);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0C7E7F4()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0C7E5F8(v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C7E854@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B0C7FFC8();
  *a2 = result;
  return result;
}

uint64_t sub_1B0C7E884@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0C7E5F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B0C7E8B0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1B0C7E5F8(*a1);
  v5 = v4;
  if (v3 == sub_1B0C7E5F8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B0E46A78();
  }

  return v8 & 1;
}

uint64_t sub_1B0C7E938()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 48;
  while (2)
  {
    if (*v3)
    {
      goto LABEL_5;
    }

    v5 = *(v3 + 32);
    switch(*(v3 - 16))
    {
      case 3:
        v6 = *(v3 + 32);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        goto LABEL_9;
      default:
        v4 = sub_1B0E46A78();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        if ((v4 & 1) == 0)
        {

LABEL_5:
          v3 += 56;
          if (!--v2)
          {
            return 0;
          }

          continue;
        }

LABEL_9:
        if (*(v5 + 16) == 1)
        {
          v7 = *(v5 + 32);
          v8 = *(v5 + 40);
          v9 = *(v5 + 48);

          if (v9 < 0)
          {
            return v7;
          }
        }

        else
        {
        }

        return 0;
    }
  }
}

uint64_t sub_1B0C7EB6C()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = v1 + 48; (*i & 1) != 0; i += 56)
  {
LABEL_3:
    if (!--v2)
    {
      return 0;
    }
  }

  v4 = *(i + 32);
  switch(*(i - 16))
  {
    case 2:
      v6 = *(i + 32);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      goto LABEL_9;
    default:
      v5 = sub_1B0E46A78();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      if ((v5 & 1) == 0)
      {

        goto LABEL_3;
      }

LABEL_9:
      if (*(v4 + 16) == 1)
      {
        v7 = *(v4 + 32);
        v8 = *(v4 + 40);
        v9 = *(v4 + 48);

        if (v9 < 0)
        {
          return v7;
        }
      }

      else
      {
      }

      return 0;
  }
}

uint64_t sub_1B0C7EDA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  if (v4 == 110 && v5 == 97 && v6 == 109 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_31;
  }

  if (v4 == 98)
  {
    if (v5 == 111 && v6 == 117 && v7 == 110)
    {
      v8 = a1;
      v9 = a2;
      v10 = 2;
      goto LABEL_31;
    }
  }

  else if (v4 == 97 && v5 == 99 && v6 == 99 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 1;
    goto LABEL_31;
  }

  if (v4 == 99 && v5 == 104 && v6 == 97 && v7 == 114)
  {
    v8 = a1;
    v9 = a2;
    v10 = 3;
    goto LABEL_31;
  }

  if (v4 == 100 && v5 == 101 && v6 == 108 && v7 == 115)
  {
    v8 = a1;
    v9 = a2;
    v10 = 4;
    goto LABEL_31;
  }

  if (v4 == 110 && v5 == 117 && v6 == 109 && v7 == 98)
  {
    v8 = a1;
    v9 = a2;
    v10 = 5;
    goto LABEL_31;
  }

  if (v4 == 105)
  {
    if (v5 == 100 && !v6 && !v7)
    {
      v8 = a1;
      v9 = a2;
      v10 = 7;
      goto LABEL_31;
    }

    goto LABEL_44;
  }

  if (v4 == 116)
  {
    if (v5 == 111 && v6 == 116 && v7 == 97)
    {
      v8 = a1;
      v9 = a2;
      v10 = 6;
      goto LABEL_31;
    }

LABEL_44:
    v12 = v5 == 105;
    goto LABEL_45;
  }

  v12 = v5 == 105;
  if (v4 == 100 && v5 == 105 && v6 == 115 && v7 == 112)
  {
    v8 = a1;
    v9 = a2;
    v10 = 8;
    goto LABEL_31;
  }

LABEL_45:
  if (v4 == 109)
  {
    if (v6 != 103)
    {
      v12 = 0;
    }

    if (!v12 || v7 != 97)
    {
      return 13;
    }

    v8 = a1;
    v9 = a2;
    v10 = 10;
    goto LABEL_31;
  }

  if (v4 != 112)
  {
    if (v4 == 99 && v5 == 111 && v6 == 109 && v7 == 109)
    {
      v8 = a1;
      v9 = a2;
      v10 = 11;
    }

    else
    {
      if (v4 != 102 || v5 != 111 || v6 != 114 || v7 != 109)
      {
        return 13;
      }

      v8 = a1;
      v9 = a2;
      v10 = 12;
    }

LABEL_31:
    result = sub_1B0C7C4CC(v8, v9, v10);
    if (result != 13)
    {
      return result;
    }

    return 13;
  }

  if (v5 == 114 && v6 == 111 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 9;
    goto LABEL_31;
  }

  return 13;
}

uint64_t sub_1B0C7F160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v5 = a1;
  sub_1B0CB0678(a1, a2, a3);
  if (v9)
  {
    v10 = v9;
    sub_1B0C97374(v7, v8, v17);
    v11 = v19;
    if (v19 <= 0xFDu)
    {
      v15 = v18;
      v5 = v17[0];
      v4 = v17[1];
      v16 = MEMORY[0x1E69E7CC0];
      sub_1B0CACFF0(v10, &v16);

      v13 = v15;
      v14 = v16;
      goto LABEL_14;
    }
  }

  result = sub_1B0C96A84(v5, v4);
  if (result <= 4u)
  {
    if (result <= 1u)
    {
      v5 = 0;
      v4 = 0;
      if (result)
      {
        v13 = xmmword_1B0ECE570;
        v14 = MEMORY[0x1E69E7CC0];
        v11 = 16;
      }

      else
      {
        v11 = 0;
        v13 = xmmword_1B0EDDE50;
        v14 = MEMORY[0x1E69E7CC0];
      }
    }

    else if (result == 2)
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1B0ECE570;
      v14 = MEMORY[0x1E69E7CC0];
      v11 = 32;
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1B0ECE570;
      v14 = MEMORY[0x1E69E7CC0];
      if (result == 3)
      {
        v11 = 48;
      }

      else
      {
        v11 = 64;
      }
    }
  }

  else if (result > 7u)
  {
    if (result == 8)
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1B0ECE570;
      v14 = MEMORY[0x1E69E7CC0];
      v11 = 0x80;
    }

    else if (result == 9)
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1B0ECE570;
      v14 = MEMORY[0x1E69E7CC0];
      v11 = -112;
    }

    else
    {
      v13 = 0uLL;
      v14 = MEMORY[0x1E69E7CC0];
      v11 = -95;
    }
  }

  else if (result == 5)
  {
    v5 = 0;
    v4 = 0;
    v13 = xmmword_1B0ECE570;
    v14 = MEMORY[0x1E69E7CC0];
    v11 = 80;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v13 = xmmword_1B0ECE570;
    v14 = MEMORY[0x1E69E7CC0];
    if (result == 6)
    {
      v11 = 96;
    }

    else
    {
      v11 = 112;
    }
  }

LABEL_14:
  *a4 = v5;
  *(a4 + 8) = v4;
  *(a4 + 16) = v13;
  *(a4 + 32) = v11;
  *(a4 + 40) = v14;
  return result;
}

uint64_t sub_1B0C7F3B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v75[0] = *a1;
  v75[1] = v6;
  v76 = *(a1 + 32);
  sub_1B0C97560(v75, v73);
  v7 = a1;
  v59 = v73[0];
  v58 = v73[1];
  v8 = v74;
  v9 = *(a1 + 40);
  v10 = *(v9 + 16);
  if (!v10)
  {
    sub_1B0C7DD1C(v7);

    v12 = MEMORY[0x1E69E7CC0];
LABEL_64:
    v52 = v58;
    *a3 = v59;
    *(a3 + 16) = v52;
    *(a3 + 32) = v8;
    *(a3 + 40) = v12;
    v53 = *MEMORY[0x1E69E9840];
    return result;
  }

  v55 = v7;
  v56 = v74;
  v57 = a3;
  v69 = MEMORY[0x1E69E7CC0];
  sub_1B0CBA4AC(0, v10, 0);
  v11 = 0;
  v60 = 0;
  v12 = v69;
  v62 = v9 + 32;
  v63 = a2;
  v61 = v10;
  while (1)
  {
    v65 = v12;
    v13 = (v62 + 56 * v11);
    v14 = *v13;
    v15 = v13[3];
    v16 = v13[4];
    v17 = *(v13 + 40);
    v18 = v13[6];
    if (v13[2])
    {
      v19 = v13[1];
      v70 = 0;
      v71 = 0xE000000000000000;
      if (v14)
      {
        v20 = v19 - v14;
      }

      else
      {
        v20 = 0;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      MEMORY[0x1B2726D20](v20);
      if (v14)
      {
        v21 = v19 == v14;
      }

      else
      {
        v21 = 1;
      }

      if (!v21)
      {
        v22 = v70;
        v23 = v71;
        do
        {
          if (*v14 - 1 <= 0x7D)
          {
            v67 = v22;
            v68 = v23;
            sub_1B0E44C58();
            v22 = v67;
            v23 = v68;
          }

          ++v14;
        }

        while (v14 != v19);
        v70 = v22;
        v71 = v23;
      }

      v26 = v70;
      v25 = v71;
    }

    else
    {
      v24 = v13[6];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v25 = 0xE400000000000000;
      v26 = 1701667182;
      switch(v14)
      {
        case 1:
          v26 = 0x742D737365636361;
          v25 = 0xEB00000000657079;
          break;
        case 2:
          v25 = 0xE800000000000000;
          v26 = 0x797261646E756F62;
          break;
        case 3:
          v25 = 0xE700000000000000;
          v26 = 0x74657372616863;
          break;
        case 4:
          v25 = 0xE500000000000000;
          v26 = 0x70736C6564;
          break;
        case 5:
          v25 = 0xE600000000000000;
          v26 = 0x7265626D756ELL;
          break;
        case 6:
          v25 = 0xE500000000000000;
          v26 = 0x6C61746F74;
          break;
        case 7:
          v25 = 0xE200000000000000;
          v26 = 25705;
          break;
        case 8:
          v26 = 0x7469736F70736964;
          v25 = 0xEB000000006E6F69;
          break;
        case 9:
          v25 = 0xE800000000000000;
          v26 = 0x6C6F636F746F7270;
          break;
        case 10:
          v25 = 0xE600000000000000;
          v26 = 0x636C6167696DLL;
          break;
        case 11:
          v25 = 0xE700000000000000;
          v26 = 0x746E656D6D6F63;
          break;
        case 12:
          v25 = 0xE600000000000000;
          v26 = 0x74616D726F66;
          break;
        default:
          break;
      }
    }

    v64 = v26;
    if (v17)
    {
      if (*(v18 + 2) == 1 && *(v18 + 24) < 0)
      {
        v28 = *(v18 + 4);
        v27 = *(v18 + 5);
        if (sub_1B0CAE540(v28, v27))
        {
          break;
        }
      }
    }

    v41 = v25;
    v70 = 0;
    v71 = 0xE000000000000000;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v42 = v63;

    sub_1B0CAF2F8(v15, v16, v17, v18, v15, v16, v17, v18, v42, &v70);
    swift_bridgeObjectRelease_n();

    v43 = v70;
    v44 = v71;
    v45 = v61;
    v12 = v65;
LABEL_43:
    v69 = v12;
    v47 = *(v12 + 16);
    v46 = *(v12 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_1B0CBA4AC((v46 > 1), v47 + 1, 1);
      v12 = v69;
    }

    ++v11;
    *(v12 + 16) = v47 + 1;
    v48 = (v12 + 32 * v47);
    v48[4] = v64;
    v48[5] = v41;
    v48[6] = v43;
    v48[7] = v44;
    if (v11 == v45)
    {
      sub_1B0C7DD1C(v55);

      a3 = v57;
      v8 = v56;
      goto LABEL_64;
    }
  }

  if (v28)
  {
    v29 = v27 - v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29 < 0)
  {
    __break(1u);
LABEL_66:
    __break(1u);
  }

  v30 = sub_1B0CB4F5C(0, v29, v28, v27);
  if (v32)
  {
    v33 = v32 + v31;
  }

  else
  {
    v33 = 0;
  }

  if (v32)
  {
    v34 = v32 + v30;
  }

  else
  {
    v34 = 0;
  }

  v67 = 0;
  v68 = 0xE000000000000000;
  v35 = v33 - v34;
  if (v34)
  {
    v36 = v33 - v34;
  }

  else
  {
    v36 = 0;
  }

  MEMORY[0x1B2726D20](v36);
  v66 = 0;
  if (!v34)
  {
    v35 = 0;
    v37 = v63;
LABEL_59:

    goto LABEL_60;
  }

  v37 = v63;
  if (v35 < 0)
  {
    goto LABEL_66;
  }

  if (v35 < 1025)
  {
    goto LABEL_59;
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_60:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v70 = &v54 - v49;
    v71 = v35;
    v72 = 0;
    v50 = v60;
    sub_1B0CAC0EC(&v70, &v67, v34, v33, v37, &v66);
    if (v50)
    {
      goto LABEL_68;
    }

    v60 = 0;
    v41 = v25;
    goto LABEL_62;
  }

  v39 = swift_slowAlloc();

  v40 = v60;
  sub_1B0CB1ED8(v39, v33 - v34, &v67, v34, v33, v37, &v66);
  if (!v40)
  {
    v60 = 0;
    v41 = v25;
    MEMORY[0x1B272C230](v39, -1, -1);
LABEL_62:
    v45 = v61;
    v12 = v65;

    v43 = v67;
    v44 = v68;
    goto LABEL_43;
  }

  MEMORY[0x1B272C230](v39, -1, -1);
  __break(1u);
LABEL_68:

  result = swift_willThrow();
  __break(1u);
  return result;
}