uint64_t sub_100267740(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  sub_10026751C(a1, a2, a6);
  v12 = 47;
  sub_100264D48(&v12, &v13, a6);
  result = sub_10026751C(a3, a4, a6);
  if (*(*(a5 + 24) + 16))
  {
    v11 = 59;
    return sub_100264D48(&v11, &v12, a6);
  }

  return result;
}

uint64_t sub_100267804(char a1)
{
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

    v8 = v1;
    v2 = &v8;
    v3 = v9;
    v10 = &type metadata for UnsafeRawBufferPointer;
    v11 = &protocol witness table for UnsafeRawBufferPointer;
  }

  else
  {
    v10 = &type metadata for UnsafeRawBufferPointer;
    v11 = &protocol witness table for UnsafeRawBufferPointer;
    v2 = "\r\n";
    v3 = "";
  }

  v9[0] = v2;
  v9[1] = v3;
  v4 = sub_10002587C(v9, &type metadata for UnsafeRawBufferPointer);
  v6 = *v4;
  v5 = v4[1];
  sub_1004A43F4();
  return sub_1000197E0(v9);
}

uint64_t sub_1002678D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026796C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002679EC(uint64_t a1)
{
  v2 = type metadata accessor for Message(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100267A58()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100267AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a2;
  v16 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_24:
    sub_1002578F8(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v38 = swift_slowAlloc();

      sub_1002578F8(v13, &v42);
      sub_100264384(v38, v38 + v16, v15 & 1, v11, v9, v12, v10, v14, v13);

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
  v39[1] = a9;

  a2 = &v42;
  a1 = v13;
  if (v16 >= 1025)
  {
    goto LABEL_24;
  }

  isStackAllocationSafe = sub_1002578F8(v13, &v42);
LABEL_5:
  v40 = v14;
  v41 = v12;
  v39[0] = v39;
  __chkstk_darwin(isStackAllocationSafe);
  v19 = v39 - v18;
  v20 = v39 + v16 - v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = v16;
  v21[4] = v19;
  v21[5] = v20;
  if (v15)
  {
    sub_100264D48(" ", "", v21);
  }

  sub_100267740(v9, v41, v10, v40, v13, v21);
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
      v44 = &type metadata for UnsafeRawBufferPointer;
      v45 = &protocol witness table for UnsafeRawBufferPointer;
      v42 = v19;
      v43 = &v19[v22];
      v29 = sub_10002587C(&v42, &type metadata for UnsafeRawBufferPointer);
      v30 = v29[1];
      v31 = *v29;
      sub_1004A43F4();
      sub_1000197E0(&v42);

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

  sub_100267804(*v23);
  v24 = &type metadata for UnsafeRawBufferPointer;
  v16 = &protocol witness table for UnsafeRawBufferPointer;
  v44 = &type metadata for UnsafeRawBufferPointer;
  v45 = &protocol witness table for UnsafeRawBufferPointer;
  v42 = "\t";
  v43 = "";
  v25 = sub_10002587C(&v42, &type metadata for UnsafeRawBufferPointer);
  v27 = *v25;
  v26 = v25[1];
  sub_1004A43F4();
  sub_1000197E0(&v42);
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
  v44 = v24;
  v45 = v16;
  v42 = &v19[v28];
  v43 = &v19[v22];
  v33 = sub_10002587C(&v42, v24);
  v34 = v33[1];
  v35 = *v33;
  sub_1004A43F4();
  sub_1000197E0(&v42);
  v36 = sub_1002881FC(v28, v22, v19, v20);

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

  return sub_100257954(v13);
}

uint64_t sub_100267F24(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  LOBYTE(v23[0]) = 34;
  sub_100264D48(v23, v23 + 1, a3);
  v6 = HIBYTE(a2) & 0xF;
  v23[0] = a1;
  v23[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v23[2] = 0;
  v23[3] = v6;

  v7 = sub_1004A59D4();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
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
          v17 = sub_1004A5884();
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
              v13 = sub_1004A67E4();
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

        v18 = sub_1001E11BC(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_40;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1001E11BC(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_41;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_39;
        }
      }

      v20 = sub_100262EC4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        if (v20 == 92 || v20 == 34)
        {
          v22 = 92;
          sub_100264D48(&v22, v23, a3);
        }

        else if (v20 - 127 < 0xFFFFFFA1)
        {
          goto LABEL_6;
        }

        v22 = v20;
        sub_100264D48(&v22, v23, a3);
      }

LABEL_6:
      v9 = sub_1004A59D4();
      v10 = v11;
    }

    while (v11);
  }

  LOBYTE(v23[0]) = 34;
  return sub_100264D48(v23, v23 + 1, a3);
}

uint64_t sub_1002681A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  if (sub_100262D2C())
  {
    v6 = HIBYTE(a2) & 0xF;
    v23[0] = a1;
    v23[1] = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v23[2] = 0;
    v23[3] = v6;

    v7 = sub_1004A59D4();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      while (1)
      {
        if (v9 == 2573 && v10 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
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
          v17 = sub_1004A5884();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            v13 = ((v9 & 0x1000000000000000) != 0 ? (v10 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1004A67E4());
            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          v17 = v15 < 0 ? v16 : 65541;
        }

        if (v17 >> 14 == 4 * v12)
        {
          v18 = sub_1001E11BC(v9, v10);
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
        v9 = sub_1004A59D4();
        v10 = v11;
        if (!v11)
        {
          goto LABEL_34;
        }
      }

      v19 = sub_1001E11BC(v9, v10);
      if ((v19 & 0x100000000) != 0)
      {
        goto LABEL_39;
      }

      if ((v19 & 0xFFFFFF00) != 0)
      {
        goto LABEL_37;
      }

LABEL_29:
      v20 = sub_100262EC4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        v22 = v20;
        sub_100264D48(&v22, v23, a3);
      }

      goto LABEL_7;
    }

LABEL_34:
  }

  else
  {

    sub_100267F24(a1, a2, a3);
  }
}

uint64_t sub_100268404(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, char a8)
{
  v39 = a3;
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

    if (v14 < 1025)
    {
LABEL_4:
      v40 = v11;
      v41 = v10;
      v38 = &v38;
      __chkstk_darwin(isStackAllocationSafe);
      v17 = &v38 - v16;
      v18 = &v38 + v14 - v16;
      v19 = swift_allocObject();
      v19[2] = 0;
      v20 = v19 + 2;
      v19[3] = v14;
      v19[4] = v17;
      v19[5] = v18;
      if (a2)
      {
        sub_100264D48(" ", "", v19);
      }

      sub_10026751C(v8, v41, v19);
      LOBYTE(v42) = 61;
      sub_100264D48(&v42, &v42 + 1, v19);
      sub_1002681A0(v12, v40, v19);
      if ((v9 & 1) == 0)
      {
        LOBYTE(v42) = 59;
        sub_100264D48(&v42, &v42 + 1, v19);
      }

      swift_beginAccess();
      v21 = *v20;
      v22 = v39;
      v23 = *(v39 + 8);
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
          sub_100267804(*v39);
          v23 = &type metadata for UnsafeRawBufferPointer;
          v20 = &protocol witness table for UnsafeRawBufferPointer;
          v44 = &type metadata for UnsafeRawBufferPointer;
          v45 = &protocol witness table for UnsafeRawBufferPointer;
          v42 = "\t";
          v43 = "";
          v24 = sub_10002587C(&v42, &type metadata for UnsafeRawBufferPointer);
          v26 = *v24;
          v25 = v24[1];
          sub_1004A43F4();
          sub_1000197E0(&v42);
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
          v44 = v23;
          v45 = v20;
          v42 = &v17[v27];
          v43 = &v17[v21];
          v32 = sub_10002587C(&v42, v23);
          v34 = *v32;
          v33 = v32[1];
          sub_1004A43F4();
          sub_1000197E0(&v42);
          v35 = sub_1002881FC(v27, v21, v17, v18);

          v31 = v35 + 1;
          if (!__OFADD__(v35, 1))
          {
            v22 = v39;
LABEL_23:
            *(v22 + 8) = v31;
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
        v44 = &type metadata for UnsafeRawBufferPointer;
        v45 = &protocol witness table for UnsafeRawBufferPointer;
        v42 = v17;
        v43 = &v17[v21];
        v28 = sub_10002587C(&v42, &type metadata for UnsafeRawBufferPointer);
        v30 = *v28;
        v29 = v28[1];
        sub_1004A43F4();
        sub_1000197E0(&v42);

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

  v37 = swift_slowAlloc();

  sub_100262F54(v37, v37 + v14, a2 & 1, v39, v8, v10, v12, v11, v9 & 1);
}

uint64_t sub_100268824(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = HIBYTE(a2) & 0xF;
  v27[0] = a1;
  v27[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v27[2] = 0;
  v27[3] = v6;
  swift_retain_n();

  v7 = sub_1004A59D4();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
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
          v17 = sub_1004A5884();
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
              v13 = sub_1004A67E4();
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

        v18 = sub_1001E11BC(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_43;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1001E11BC(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_44;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_40;
        }
      }

      v20 = sub_100262EC4(v9, v10);

      if ((v20 & 0x100) == 0 && v20 - 127 >= 0xFFFFFFA1)
      {
        if (v20 - 91 > 0xFFFFFFE5)
        {
          v26 = v20 | 0x20;
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
          v26 = v20;
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

        sub_100264D48(&v26, v27, a4);
      }

LABEL_6:
      v9 = sub_1004A59D4();
      v10 = v11;
    }

    while (v11);
  }
}

uint64_t sub_100268B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v7 = a2;
  v8 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_26:
    sub_100259990(a1, a2);
    sub_1002578F8(v5, &v33);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v29 = swift_slowAlloc();
      sub_100259990(v6, &v33);
      sub_1002578F8(v5, &v33);
      sub_100263E68(v29, v29 + v8, v7 & 1, v32, v6, v5);

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
  a2 = &v33;
  a1 = a4;
  if (v8 >= 1025)
  {
    goto LABEL_26;
  }

  sub_100259990(a4, &v33);
  isStackAllocationSafe = sub_1002578F8(v5, &v33);
LABEL_5:
  v30 = &v30;
  __chkstk_darwin(isStackAllocationSafe);
  v11 = &v30 - v10;
  v12 = &v30 + v8 - v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = v8;
  v13[4] = v11;
  v13[5] = v12;
  if (v7)
  {
    sub_100264D48(" ", "", v13);
  }

  sub_100264D48("message/", "", v13);
  sub_10026751C(*v6, *(v6 + 8), v13);
  v31 = v5;
  if (*(*(v5 + 24) + 16))
  {
    LOBYTE(v33) = 59;
    sub_100264D48(&v33, &v33 + 1, v13);
  }

  swift_beginAccess();
  v14 = v13[2];
  v15 = *(v32 + 8);
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
      v35 = &type metadata for UnsafeRawBufferPointer;
      v36 = &protocol witness table for UnsafeRawBufferPointer;
      v33 = v11;
      v34 = &v11[v14];
      v20 = sub_10002587C(&v33, &type metadata for UnsafeRawBufferPointer);
      v22 = *v20;
      v21 = v20[1];
      sub_1004A43F4();
      sub_1000197E0(&v33);

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

  sub_100267804(*v32);
  v8 = &type metadata for UnsafeRawBufferPointer;
  v15 = &protocol witness table for UnsafeRawBufferPointer;
  v35 = &type metadata for UnsafeRawBufferPointer;
  v36 = &protocol witness table for UnsafeRawBufferPointer;
  v33 = "\t";
  v34 = "";
  v16 = sub_10002587C(&v33, &type metadata for UnsafeRawBufferPointer);
  v18 = *v16;
  v17 = v16[1];
  sub_1004A43F4();
  sub_1000197E0(&v33);
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
  v35 = v8;
  v36 = v15;
  v33 = &v11[v19];
  v34 = &v11[v14];
  v24 = sub_10002587C(&v33, v8);
  v26 = *v24;
  v25 = v24[1];
  sub_1004A43F4();
  sub_1000197E0(&v33);
  v27 = sub_1002881FC(v19, v14, v11, v12);

  v23 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_23:
  v5 = v31;
  *(v32 + 8) = v23;
LABEL_24:
  sub_1002599EC(v6);
  return sub_100257954(v5);
}

uint64_t sub_100268EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a3;
  v11 = a2;
  v12 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_26:
    sub_1002578F8(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v33 = swift_slowAlloc();

      sub_1002578F8(v7, &v36);
      sub_100263920(v33, v33 + v12, v11 & 1, v35, v10, v8, v9, v7);

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

  a2 = &v36;
  a1 = v7;
  if (v12 >= 1025)
  {
    goto LABEL_26;
  }

  isStackAllocationSafe = sub_1002578F8(v7, &v36);
LABEL_5:
  v34 = &v34;
  __chkstk_darwin(isStackAllocationSafe);
  v15 = &v34 - v14;
  v16 = &v34 + v12 - v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = v12;
  v17[4] = v15;
  v17[5] = v16;
  if (v11)
  {
    sub_100264D48(" ", "", v17);
  }

  sub_100264D48("text/", "", v17);
  sub_10026751C(v10, v8, v17);
  if (*(*(v7 + 24) + 16))
  {
    LOBYTE(v36) = 59;
    sub_100264D48(&v36, &v36 + 1, v17);
  }

  swift_beginAccess();
  v18 = v17[2];
  v19 = *(v35 + 8);
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
      v38 = &type metadata for UnsafeRawBufferPointer;
      v39 = &protocol witness table for UnsafeRawBufferPointer;
      v36 = v15;
      v37 = &v15[v18];
      v24 = sub_10002587C(&v36, &type metadata for UnsafeRawBufferPointer);
      v26 = *v24;
      v25 = v24[1];
      sub_1004A43F4();
      sub_1000197E0(&v36);

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

  sub_100267804(*v35);
  v12 = &type metadata for UnsafeRawBufferPointer;
  v19 = &protocol witness table for UnsafeRawBufferPointer;
  v38 = &type metadata for UnsafeRawBufferPointer;
  v39 = &protocol witness table for UnsafeRawBufferPointer;
  v36 = "\t";
  v37 = "";
  v20 = sub_10002587C(&v36, &type metadata for UnsafeRawBufferPointer);
  v22 = *v20;
  v21 = v20[1];
  sub_1004A43F4();
  sub_1000197E0(&v36);
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
  v38 = v12;
  v39 = v19;
  v36 = &v15[v23];
  v37 = &v15[v18];
  v28 = sub_10002587C(&v36, v12);
  v30 = *v28;
  v29 = v28[1];
  sub_1004A43F4();
  sub_1000197E0(&v36);
  v31 = sub_1002881FC(v23, v18, v15, v16);

  v27 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_23:
  *(v35 + 8) = v27;
LABEL_24:

  return sub_100257954(v7);
}

uint64_t sub_1002692CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_24:
    sub_100259A40(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v28 = swift_slowAlloc();
      sub_100259A40(v4, &v30);
      sub_1002634CC(v28, v28 + v7, v6 & 1, v5, v4);

      return sub_100267AA8(v4);
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
  a2 = &v30;
  a1 = a4;
  if (v7 >= 1025)
  {
    goto LABEL_24;
  }

  isStackAllocationSafe = sub_100259A40(a4, &v30);
LABEL_5:
  v29[0] = v29;
  __chkstk_darwin(isStackAllocationSafe);
  v10 = v29 - v9;
  v11 = v29 + v7 - v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = v7;
  v12[4] = v10;
  v12[5] = v11;
  if (v6)
  {
    sub_100264D48(" ", "", v12);
  }

  sub_100264D48("multipart/", "", v12);
  sub_10026751C(*(v4 + 8), *(v4 + 16), v12);
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
      v32 = &type metadata for UnsafeRawBufferPointer;
      v33 = &protocol witness table for UnsafeRawBufferPointer;
      v30 = v10;
      v31 = &v10[v13];
      v19 = sub_10002587C(&v30, &type metadata for UnsafeRawBufferPointer);
      v21 = *v19;
      v20 = v19[1];
      sub_1004A43F4();
      sub_1000197E0(&v30);

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

  sub_100267804(*v5);
  v7 = &type metadata for UnsafeRawBufferPointer;
  v14 = &protocol witness table for UnsafeRawBufferPointer;
  v32 = &type metadata for UnsafeRawBufferPointer;
  v33 = &protocol witness table for UnsafeRawBufferPointer;
  v30 = "\t";
  v31 = "";
  v15 = sub_10002587C(&v30, &type metadata for UnsafeRawBufferPointer);
  v17 = *v15;
  v16 = v15[1];
  sub_1004A43F4();
  sub_1000197E0(&v30);
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
  v32 = v7;
  v33 = v14;
  v30 = &v10[v18];
  v31 = &v10[v13];
  v23 = sub_10002587C(&v30, v7);
  v25 = *v23;
  v24 = v23[1];
  sub_1004A43F4();
  sub_1000197E0(&v30);
  v26 = sub_1002881FC(v18, v13, v10, v11);

  v22 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  *(v5 + 8) = v22;
  return sub_100267AA8(v4);
}

uint64_t sub_100269618(char *a1, uint64_t a2, uint64_t *a3)
{
  if ((a1[1] & 1) == 0)
  {
    v5 = *a1;
    *a1 = 256;
    v20 = v5;
    sub_100264D48(&v20, &v21, a3);
  }

  result = sub_1004A59D4();
  if (v7)
  {
    v8 = result;
    v9 = v7;
    do
    {
      if ((v8 != 2573 || v9 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
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
          v16 = sub_1004A5884();
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
              v12 = sub_1004A67E4();
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

        v17 = sub_1001E11BC(v8, v9);
        if ((v17 & 0x100000000) != 0)
        {
          goto LABEL_39;
        }

        if ((v17 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v18 = sub_1001E11BC(v8, v9);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_40;
        }

        if ((v18 & 0xFFFFFF00) != 0)
        {
          goto LABEL_38;
        }
      }

      v19 = sub_100262EC4(v8, v9);

      if ((v19 & 0x100) == 0)
      {
        if (v19 == 32 || v19 == 9)
        {
          *a1 = v19;
          return result;
        }

        if (v19 - 127 >= 0xFFFFFFA2)
        {
          v21 = v19;
          sub_100264D48(&v21, &v22, a3);
        }
      }

LABEL_6:
      result = sub_1004A59D4();
      v8 = result;
      v9 = v10;
    }

    while (v10);
  }

  return result;
}

void *sub_100269884@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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

void *sub_1002698E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_100269960(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1002699A0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v4 = *v2++;
      v3 = v4;
      if ((v4 - 127) > 0xFFFFFFA0)
      {
        v8 = v3;
        v9[3] = &type metadata for UnsafeRawBufferPointer;
        v9[4] = &protocol witness table for UnsafeRawBufferPointer;
        v9[0] = &v8;
        v9[1] = v9;
        v5 = sub_10002587C(v9, &type metadata for UnsafeRawBufferPointer);
        v7 = *v5;
        v6 = v5[1];
        sub_1004A43F4();
        result = sub_1000197E0(v9);
      }

      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_100269A7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

Swift::Int sub_100269B54(uint64_t a1)
{
  sub_1004A6E94();
  v2 = *(a1 + 16);
  sub_1004A6EB4(v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1004A6EC4(v4);
      --v2;
    }

    while (v2);
  }

  return sub_1004A6F14();
}

void sub_100269BCC()
{
  v1 = *v0;
  sub_1004A6EB4(*(*v0 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_1004A6EC4(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int sub_100269C20()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EB4(*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_1004A6EC4(v4);
      --v2;
    }

    while (v2);
  }

  return sub_1004A6F14();
}

unint64_t sub_100269C90()
{
  result = qword_1005D6340;
  if (!qword_1005D6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6340);
  }

  return result;
}

void sub_100269CE4(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v11 = 0;
  v12 = 0xE000000000000000;
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  sub_1004A5874(v6);
  if (v4 && a2 != v4)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    do
    {
      if (*v4 - 1 <= 0x7D)
      {
        v9 = v7;
        v10 = v8;
        sub_1004A58C4();
        v7 = v9;
        v8 = v10;
      }

      ++v4;
    }

    while (v4 != a2);
    v11 = v7;
    v12 = v8;
  }

  *a3 = v11;
  a3[1] = v12;
}

void sub_100269D98()
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
      sub_1002873B8(0, v3, v1, v2);
    }
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);

    sub_100269E14(v4, v5);
  }
}

uint64_t sub_100269E14(unsigned __int8 *a1, unsigned __int8 *a2)
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

  sub_1004A5874(v4);
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
        sub_1004A58C4();
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

uint64_t sub_100269EB0(unsigned __int8 *a1, unsigned __int8 *a2, char a3)
{
  v5 = a1;
  v15 = 0;
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  sub_1004A5874(v6);
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
          sub_1004A58C4();
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

void sub_100269F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = sub_1002881FC(a1, a2, a3, a4);
  sub_1004A5874(v10);
  if (a1 == a2)
  {
    return;
  }

  if (a1 < a2)
  {
    v11 = 0;
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
        goto LABEL_21;
      }

      v17 = *(a3 + v16);
      if ((v17 - 1) >= 0x7E)
      {
        goto LABEL_16;
      }

      if ((v15 & a5 & 1) == 0 || v17 != 92)
      {
        break;
      }

      if (v14 == v16)
      {
        return;
      }

      v15 = 0;
LABEL_18:
      v18 = v16 + 1;
      if (v16 + 1 >= a1)
      {
        ++v16;
        if (v18 < a2)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    v19 = v11;
    v20 = v12;
    sub_1004A58C4();
    v11 = v19;
    v12 = v20;
LABEL_16:
    if (v14 == v16)
    {
      return;
    }

    v15 = 1;
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

BOOL sub_10026A098(uint64_t a1, uint64_t a2)
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

uint64_t sub_10026A0DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0x28646E652ELL;
  }

  else
  {
    sub_1004A6724(16);

    v3 = 0x28656C6464696D2ELL;
  }

  v5 = v3;
  v6._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v6);

  v7._countAndFlagsBits = 3943982;
  v7._object = 0xE300000000000000;
  sub_1004A5994(v7);
  v8._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  sub_1004A5994(v9);
  return v5;
}

void *sub_10026A1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__little, uint64_t a7)
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

    result = sub_10026A334(a1, a2, a3, a4, a5, v19, v14);
  }

  while (v21 == -1);
  return result;
}

uint64_t sub_10026A334(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
    result = sub_10026A978(v9, a2, a3, a6);
    if (v18)
    {
      result = sub_10026AA1C(v9, v16, v8, a6);
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
  result = sub_10026A978(result, a2, a3, a6);
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
    result = sub_10026AAA4(a7, v9, a2, v8, result);
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
  result = sub_10026AAA4(a7, v9, a2, v8, result);
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
  if ((sub_100287784(a5) & 1) == 0)
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
    if ((sub_100287784(a5) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10026A978(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10026AA1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10026AAA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  return result;
}

double Cache.init()()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 80) = &_swiftEmptyArrayStorage;
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

uint64_t sub_10026ADD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
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
          sub_10026B044(v9);
          sub_10026B0D0(0, 0, v11, v18);
        }

        swift_endAccess();
        ucnv_reset();
        ucnv_setFallback();
        v21 = v18;
        goto LABEL_16;
      }

      ++v9;
      v10 += 2;
    }

    while (v8 != v9);
  }

  swift_endAccess();
  LODWORD(v21) = 0;
  v12 = ucnv_open();
  ucnv_setFallback();
  swift_beginAccess();
  sub_10026B0D0(0, 0, a1, v12);
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

  v13 = sub_10026B274(v13);
  v15 = *(v13 + 2);
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  swift_endAccess();
  v21 = v12;
LABEL_16:
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0xE000000000000000;
  a3(&v20, &v21);

  if (!v3)
  {
    return v20;
  }

  return result;
}

uint64_t sub_10026B044(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10026B274(v3);
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

unint64_t sub_10026B0D0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v6 = sub_100273DF4(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = sub_10026B1AC(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_10026B1AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_10026B2E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t ContentDisposition.kind.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10026B32C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_10026B32C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

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
    return sub_1004A6D34();
  }
}

uint64_t sub_10026B3B0(void *a1, void *a2)
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

  return sub_1004A6D34();
}

uint64_t sub_10026B458(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t ContentDisposition.Attribute.key.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10026B4A4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_10026B4A4(uint64_t a1, unint64_t a2)
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
      v10 = sub_1004A6D34();
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

  return sub_10026B84C(a3, a6);
}

uint64_t sub_10026B608(uint64_t a1, uint64_t a2)
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
          v22 = sub_1004A6D34();
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
        v31 = sub_1004A6D34();
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

      if ((v9 != v16 || v11 != v18 || v7 >> 16 != v14 >> 16 || v10 >> 16 != v17 >> 16) && (sub_1004A6CD4() & 1) == 0 || (v41 != v45 || v46 != v44 || v39 >> 16 != v43 >> 16 || v40 >> 16 != v42 >> 16) && (sub_1004A6CD4() & 1) == 0)
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

uint64_t sub_10026B84C(uint64_t a1, uint64_t a2)
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
        v19 = sub_1004A6D34();
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
      if ((v6 != v9 || v7 != v10) && (sub_1004A6D34() & 1) == 0)
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

uint64_t sub_10026B9CC(uint64_t a1, uint64_t a2)
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
      if (!v9 && (sub_1004A6D34() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1004A6D34() & 1) == 0)
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

uint64_t sub_10026BA9C(uint64_t a1, uint64_t a2)
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
        if (!v12 || (v23 != v13 || v5 != v12) && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        sub_10026E678(v22, v8, v9, v10, v11);

        sub_10026E76C(v22, v8, v9, v10, v11);
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

uint64_t sub_10026BC48(void *a1, void *a2)
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
      v12 = sub_1004A6D34();
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

  return sub_10026B84C(v5, v7);
}

uint64_t ContentDisposition.description.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10026B2E0(a1, a2);

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionVcfC_0(a1, a2, a3);
}

uint64_t sub_10026BD64()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_10026B2E0(v1, v2);

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

  sub_10026B2E0(a1, a2);
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

uint64_t sub_10026BEB4()
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

  sub_10026B2E0(*v0, v1);
  return v5;
}

uint64_t ContentDisposition.Attribute.description.getter(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  sub_10026B458(a1, a2);

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(a1, a2, a3, a4);
}

uint64_t sub_10026BFA8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_10026B458(v1, v2);

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
  sub_10026B458(a1, a2);
  return v2;
}

uint64_t sub_10026C1D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  result = _s9IMAP2MIME18ContentDispositionV4KindOyAESScfC_0(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10026C208@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  result = _s9IMAP2MIME18ContentDispositionV9AttributeV3KeyOyAGSScfC_0(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10026C240(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

    v7 = sub_1004A6D34();

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

LABEL_14:

  return sub_1002A350C(v8, v9, v10, v11, a1);
}

Swift::Int sub_10026C3E0()
{
  v1 = *v0;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

Swift::Int sub_10026C488()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10026C594()
{
  *v0;
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10026C628()
{
  v1 = *v0;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

Swift::Int sub_10026C6CC()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10026C7D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026EA48(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10026C804(uint64_t *a1@<X8>)
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

uint64_t sub_10026C868(_BYTE *a1, _BYTE *a2)
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
    v11 = sub_1004A6D34();
  }

  return v11 & 1;
}

uint64_t sub_10026C988@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026EA94(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10026C9F4()
{
  *v0;
  *v0;
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_10026CB04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026EAE0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10026CB38(uint64_t *a1@<X8>)
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
    v8 = 0x80000001004AD150;
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

uint64_t sub_10026CC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027031C(0, a1, a2);
  v5 = sub_10027031C(1, a1, a2);
  v6 = sub_10027031C(2, a1, a2);
  v7 = sub_10027031C(3, a1, a2);
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
    result = sub_10026EFC0(v8, v9, v10);
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

uint64_t sub_10026CE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027031C(0, a1, a2);
  v5 = sub_10027031C(1, a1, a2);
  v6 = sub_10027031C(2, a1, a2);
  v7 = sub_10027031C(3, a1, a2);
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
    result = sub_10026EDCC(v8, v9, v10);
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

uint64_t sub_10026CF58(unsigned __int8 *a1, unsigned __int8 *a2, char a3, uint64_t a4, void *a5)
{
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

    return v8;
  }

  v8 = sub_10027C548(a1, a2);
  v9 = *(a4 + 16);
  if (!v9)
  {
    goto LABEL_53;
  }

LABEL_3:
  v53[1] = v7;
  v54 = v8;
  v63 = _swiftEmptyArrayStorage;
  v58 = a5;
  sub_1002ADF98(0, v9, 0);
  v10 = 0;
  v55 = 0;
  v56 = v9;
  v11 = _swiftEmptyArrayStorage;
  v53[0] = a4;
  v57 = a4 + 32;
  while (1)
  {
    v59 = v11;
    v12 = (v57 + 56 * v10);
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

    v24 = 0;
    v25 = v13;
    if (v16)
    {
      goto LABEL_20;
    }

LABEL_42:
    v41 = v24;
    v64 = 0;
    v65 = 0xE000000000000000;

    v42 = v58;

    sub_1002A2B60(v15, v14, v16, v17, v15, v14, v16, v17, v42, &v64);
    swift_bridgeObjectRelease_n();

    v43 = v64;
    v44 = v65;
    v45 = v56;
    v11 = v59;
LABEL_43:
    v63 = v11;
    v47 = v11[2];
    v46 = v11[3];
    if (v47 >= v46 >> 1)
    {
      sub_1002ADF98((v46 > 1), v47 + 1, 1);
      v11 = v63;
    }

    ++v10;
    v11[2] = v47 + 1;
    v48 = &v11[4 * v47];
    v48[4] = v41;
    v48[5] = v25;
    v48[6] = v43;
    v48[7] = v44;
    if (v10 == v45)
    {

      return v54;
    }
  }

  v18 = v12[1];
  v64 = 0;
  v65 = 0xE000000000000000;
  if (v13)
  {
    v19 = v18 - v13;
  }

  else
  {
    v19 = 0;
  }

  sub_1004A5874(v19);
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
    v21 = v64;
    v22 = v65;
    do
    {
      if (*v13 - 1 <= 0x7D)
      {
        v61 = v21;
        v62 = v22;
        sub_1004A58C4();
        v21 = v61;
        v22 = v62;
      }

      ++v13;
    }

    while (v13 != v18);
    v64 = v21;
    v65 = v22;
  }

  v24 = v64;
  v25 = v65;
  if (!v16)
  {
    goto LABEL_42;
  }

LABEL_20:
  if (*(v17 + 16) != 1)
  {
    goto LABEL_42;
  }

  if ((*(v17 + 48) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  v26 = *(v17 + 32);
  v27 = *(v17 + 40);
  if ((sub_1002A1DA8(v26, v27) & 1) == 0)
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

  v29 = sub_1002A890C(0, v28, v26, v27);
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

  v61 = 0;
  v62 = 0xE000000000000000;
  v34 = v32 - v33;
  if (v33)
  {
    v35 = v32 - v33;
  }

  else
  {
    v35 = 0;
  }

  sub_1004A5874(v35);
  v60 = 0;
  if (!v33)
  {
    v34 = 0;
    v11 = v59;
LABEL_48:

    goto LABEL_49;
  }

  v36 = v58;
  v11 = v59;
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
    __chkstk_darwin(isStackAllocationSafe);
    v64 = v53 - v49;
    v65 = v34;
    v66 = 0;
    v50 = v55;
    sub_10029F954(&v64, &v61, v33, v32, v51, &v60);
    if (v50)
    {
      goto LABEL_58;
    }

    v55 = 0;
    goto LABEL_51;
  }

  v38 = swift_slowAlloc();

  v39 = v36;
  v40 = v55;
  sub_1002A5760(v38, v32 - v33, &v61, v33, v32, v39, &v60);
  if (!v40)
  {
    v55 = 0;

LABEL_51:
    v45 = v56;
    v41 = v24;

    v43 = v61;
    v44 = v62;
    goto LABEL_43;
  }

  __break(1u);
LABEL_58:

  result = swift_willThrow();
  __break(1u);
  return result;
}

uint64_t sub_10026D408(uint64_t a1)
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
    return sub_1004A6D34();
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
      v13 = sub_1004A6D34();
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

  return sub_1004A6D34();
}

uint64_t _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(uint64_t a1, int64_t a2, uint64_t a3, void *a4)
{
  v8 = qword_1005D6248;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = 0x656D616E656C6966;
  v10 = sub_1004A4064();
  sub_1001C203C(v10, qword_1005D64A0);
  sub_1001C2190();
  sub_1004A6434();
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
          v14 = 0x80000001004AD150;
LABEL_33:
          sub_10026B458(a1, a2);
          sub_10026B458(a1, a2);
          v19._countAndFlagsBits = v9;
          v19._object = v14;
          sub_1004A5994(v19);

          sub_10026B4A4(a1, a2);
          v20._countAndFlagsBits = 8765;
          v20._object = 0xE200000000000000;
          sub_1004A5994(v20);

          v21._countAndFlagsBits = a3;
          v21._object = a4;
          sub_1004A5994(v21);
          sub_10026B4A4(a1, a2);
          swift_bridgeObjectRelease_n();
          v22._countAndFlagsBits = 34;
          v22._object = 0xE100000000000000;
          sub_1004A5994(v22);
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
  v13 = 0x80000001004AD150;
LABEL_31:
  sub_10026B458(a1, a2);
  sub_10026B458(a1, a2);
  v16._countAndFlagsBits = v9;
  v16._object = v13;
  sub_1004A5994(v16);

  sub_10026B4A4(a1, a2);
  v17._countAndFlagsBits = 61;
  v17._object = 0xE100000000000000;
  sub_1004A5994(v17);

  v18._countAndFlagsBits = a3;
  v18._object = a4;
  sub_1004A5994(v18);
  sub_10026B4A4(a1, a2);
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

  v13 = v5;
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
      sub_10026B458(v8, v9);

      v14._countAndFlagsBits = _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(v8, v9, v10, v11);
      sub_1004A5994(v14);

      v15._countAndFlagsBits = 8251;
      v15._object = 0xE200000000000000;
      sub_1004A5994(v15);

      v7 += 4;
      --v6;
    }

    while (v6);

    return v13;
  }

  else
  {
  }

  return v5;
}

uint64_t _s9IMAP2MIME18ContentDispositionV4KindOyAESScfC_0(uint64_t a1)
{
  v3 = sub_1004A5814();
  v4 = v2;
  if (v3 == 0x656E696C6E69 && v2 == 0xE600000000000000)
  {
    goto LABEL_3;
  }

  v5 = sub_1004A6D34();

  if (v5)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (v3 == 0x656D686361747461 && v4 == 0xEA0000000000746ELL)
  {
    goto LABEL_3;
  }

  v7 = sub_1004A6D34();

  if (v7)
  {
    goto LABEL_5;
  }

  if (v3 == 0x7461642D6D726F66 && v4 == 0xE900000000000061)
  {
LABEL_3:

LABEL_6:

    return 0;
  }

  v8 = sub_1004A6D34();

  if (v8)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t _s9IMAP2MIME18ContentDispositionV9AttributeV3KeyOyAGSScfC_0(uint64_t a1)
{
  v3 = sub_1004A5814();
  v4 = v2;
  if (v3 == 0x656D616E656C6966 && v2 == 0xE800000000000000)
  {
    goto LABEL_3;
  }

  v5 = sub_1004A6D34();

  if (v5)
  {
    goto LABEL_5;
  }

  if (v3 == 0x6E6F697461657263 && v4 == 0xED0000657461642DLL)
  {
    goto LABEL_3;
  }

  v7 = sub_1004A6D34();

  if (v7)
  {
    goto LABEL_5;
  }

  if (v3 == 0xD000000000000011 && 0x80000001004AD150 == v4)
  {
    goto LABEL_3;
  }

  v8 = sub_1004A6D34();

  if (v8)
  {
    goto LABEL_5;
  }

  if (v3 == 0x7461642D64616572 && v4 == 0xE900000000000065)
  {
    goto LABEL_3;
  }

  v9 = sub_1004A6D34();

  if (v9)
  {
    goto LABEL_5;
  }

  if (v3 == 1702521203 && v4 == 0xE400000000000000)
  {
    goto LABEL_3;
  }

  v10 = sub_1004A6D34();

  if (v10)
  {
    goto LABEL_5;
  }

  if (v3 == 1701667182 && v4 == 0xE400000000000000)
  {
LABEL_3:

LABEL_5:

    return 0;
  }

  v11 = sub_1004A6D34();

  if (v11)
  {
    goto LABEL_5;
  }

  return a1;
}

unint64_t sub_10026E33C()
{
  result = qword_1005D6430;
  if (!qword_1005D6430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6430);
  }

  return result;
}

unint64_t sub_10026E3A0()
{
  result = qword_1005D6438;
  if (!qword_1005D6438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6438);
  }

  return result;
}

unint64_t sub_10026E410()
{
  result = qword_1005D6440;
  if (!qword_1005D6440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6440);
  }

  return result;
}

unint64_t sub_10026E468()
{
  result = qword_1005D6448;
  if (!qword_1005D6448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6448);
  }

  return result;
}

uint64_t sub_10026E4CC(uint64_t a1, unsigned int a2)
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

uint64_t sub_10026E528(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_10026E578(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10026E5C0(uint64_t a1, unsigned int a2)
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

uint64_t sub_10026E618(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10026E678(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 4u)
  {
    if (a5 > 7u)
    {
      if (a5 != 8 && a5 != 9)
      {
        if (a5 != 10)
        {
          return result;
        }
      }
    }

    else if (a5 != 5 && a5 != 6 && a5 != 7)
    {
      return result;
    }

LABEL_19:
  }

  if (a5 <= 1u)
  {
    if (a5)
    {
      goto LABEL_19;
    }

    return sub_10026E754(result, a2);
  }

  else if (a5 == 2 || a5 == 3 || a5 == 4)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10026E754(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 0xB)
  {
  }

  return result;
}

uint64_t sub_10026E76C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 4u)
  {
    if (a5 > 7u)
    {
      if (a5 != 8 && a5 != 9)
      {
        if (a5 != 10)
        {
          return result;
        }
      }
    }

    else if (a5 != 5 && a5 != 6 && a5 != 7)
    {
      return result;
    }

LABEL_19:
  }

  if (a5 <= 1u)
  {
    if (a5)
    {
      goto LABEL_19;
    }

    return sub_10026E848(result, a2);
  }

  else if (a5 == 2 || a5 == 3 || a5 == 4)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10026E848(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 0xB)
  {
  }

  return result;
}

unint64_t sub_10026E8E4()
{
  result = qword_1005D6460;
  if (!qword_1005D6460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6460);
  }

  return result;
}

unint64_t sub_10026E96C()
{
  result = qword_1005D6478;
  if (!qword_1005D6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6478);
  }

  return result;
}

unint64_t sub_10026E9F4()
{
  result = qword_1005D6490;
  if (!qword_1005D6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6490);
  }

  return result;
}

uint64_t sub_10026EA48(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AAAF0;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10026EA94(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AAB58;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10026EAE0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AAC30;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10026EB84(char *a1, char *a2, uint64_t a3)
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

  v12 = sub_100288E48(v8);
  v14 = sub_1002A1544(v12, v13, a1, a2, sub_100288638);

  if ((v14 & 1) == 0)
  {
    return 11;
  }

  return v8;
}

uint64_t sub_10026ECB8(char *a1, char *a2, uint64_t a3)
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

  v14 = sub_1002890D0(v10);
  v16 = sub_1002A1544(v14, v15, a1, a2, sub_100288638);

  if ((v16 & 1) == 0)
  {
    return 10;
  }

  return v10;
}

uint64_t sub_10026EDCC(char *a1, char *a2, uint64_t a3)
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

  v10 = sub_1002A1544(v8, v9, a1, a2, sub_100288638);

  if ((v10 & 1) == 0)
  {
    return 3;
  }

  return v3;
}

uint64_t sub_10026EEE0(char *a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_1002AAE00(a3);
  v8 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v9 = sub_1004A59E4();

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
  v10 = sub_1002AAE00(v3);
  v12 = sub_1002A1544(v10, v11, a1, a2, sub_100288638);

  if ((v12 & 1) == 0)
  {
    return 20;
  }

  return v3;
}

uint64_t sub_10026EFC0(char *a1, char *a2, uint64_t a3)
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
    v9 = 0x80000001004AD150;
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
    v15 = sub_1004A59E4();

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
      v16 = 0x80000001004AD150;
    }
  }

  else
  {
    v16 = 0xE800000000000000;
  }

  v17 = sub_1002A1544(v3, v16, a1, a2, sub_100288638);

  if ((v17 & 1) == 0)
  {
    return 6;
  }

  return v12;
}

uint64_t sub_10026F1F4(char *a1, char *a2, uint64_t a3)
{
  v3 = 0xE600000000000000;
  v4 = 0x7972616E6962;
  v5 = 0xD000000000000010;
  v6 = 0x80000001004AD190;
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
    v13 = sub_1004A59E4();

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
  v17 = 0x80000001004AD190;
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

  v21 = sub_1002A1544(v19, v20, a1, a2, sub_100288638);

  if ((v21 & 1) == 0)
  {
    return 5;
  }

  return v10;
}

uint64_t sub_10026F3B4(char *a1, char *a2, uint64_t a3)
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

  v8 = sub_100271450(v4);
  v10 = sub_1002A1544(v8, v9, a1, a2, sub_100288638);

  if ((v10 & 1) == 0)
  {
    return 13;
  }

  return v4;
}

uint64_t sub_10026F4F4(unsigned __int8 a1, unsigned __int8 a2)
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
    v3 = 0x80000001004AD190;
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
    v4 = 0x80000001004AD190;
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
      v6 = sub_1004A6D34();
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

uint64_t sub_10026F664(unsigned __int8 a1, unsigned __int8 a2)
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
    v7 = 0x80000001004AD150;
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
        v11 = sub_1004A6D34();
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
      v10 = 0x80000001004AD150;
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

Swift::Int sub_10026F8EC()
{
  v1 = *v0;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10026F9B4()
{
  *v0;
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10026FA68()
{
  v1 = *v0;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10026FB2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9IMAP2MIME23ContentTransferEncodingO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10026FB5C(uint64_t *a1@<X8>)
{
  v2 = 1953063479;
  v3 = *v1;
  v4 = 0xE600000000000000;
  v5 = 0x7972616E6962;
  v6 = 0x80000001004AD190;
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
  if (sub_1004A5834() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = sub_1004A6D34();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_1004A5834() == a1 && v8 == a2)
  {

LABEL_13:

    return 1;
  }

  v9 = sub_1004A6D34();

  if (v9)
  {
    goto LABEL_13;
  }

  if (sub_1004A5834() == a1 && v10 == a2)
  {

LABEL_18:

    return 2;
  }

  v11 = sub_1004A6D34();

  if (v11)
  {
    goto LABEL_18;
  }

  if (sub_1004A5834() == a1 && v12 == a2)
  {

LABEL_23:

    return 4;
  }

  v13 = sub_1004A6D34();

  if (v13)
  {
    goto LABEL_23;
  }

  if (sub_1004A5834() == a1 && v14 == a2)
  {

    return 3;
  }

  v15 = sub_1004A6D34();

  if (v15)
  {
    return 3;
  }

  return 5;
}

uint64_t sub_10026FEC0(uint64_t result, unsigned __int8 a2)
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

uint64_t sub_10026FF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_100257E20(a3, a4, a1, v10, 1);
  if (v6)
  {
    sub_100270C3C(a5);
  }

  else
  {
    result = sub_1002701E0(v11, v12, v13 & 1);
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
      return sub_1002A742C(a5, 0, v16, result, v15, a6);
    }
  }

  return result;
}

unint64_t sub_10026FFE0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, int64_t, uint64_t, uint64_t))
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

uint64_t sub_100270074(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
        return sub_100299AB8(0, v20, a2, a3, a4, a5);
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

      return sub_100257E20(a4, a5, a2, v21, 1);
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

    v12 = sub_10026FFE0(v11, a4, a5, sub_1002881FC);
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

    v18 = sub_10026FFE0(v11, a2, a3, sub_1002881FC);
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

uint64_t sub_1002701E0(uint64_t result, uint64_t a2, char a3)
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
      v5 = sub_100270238(0, v4, result, a2);
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

uint64_t sub_100270238(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10027031C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  result = sub_1002881FC(0, v6, a2, a3);
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

uint64_t sub_1002703B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
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
    v14 = sub_100299AB8(0, v12, result, a2, a3, a4);
    if (v7)
    {
      sub_100270C3C(a5);
    }

    result = sub_1002701E0(v14, v15, v16 & 1);
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
      result = sub_1002A742C(a5, 0, v18, result, v17, a6);
      *a7 = result;
      a7[1] = v19;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10027046C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027031C(0, a1, a2);
  v5 = sub_10027031C(1, a1, a2);
  v6 = sub_10027031C(2, a1, a2);
  v7 = sub_10027031C(3, a1, a2);
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
    result = sub_10026F1F4(v8, v9, v10);
    if (result != 5)
    {
      return result;
    }
  }

  return 5;
}

uint64_t sub_100270634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a4;
  v11 = a2;
  v12 = a1 == 3;
  if (a1 >= 3u)
  {
LABEL_6:
    if (v12)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {

        v14 = v48;
        v15 = a5;
        if (v11 >= 1025)
        {
          goto LABEL_55;
        }

        sub_100270BE0(a5, v48);

        isStackAllocationSafe = sub_100270BE0(a5, v48);
        while (1)
        {
          __chkstk_darwin(isStackAllocationSafe);
          v18 = sub_100299AB8(0, v11, &v48[-v17 - 8], &v48[v11 - 8 - v17], a3, v9);
          if (v6)
          {
            goto LABEL_46;
          }

          a1 = sub_1002701E0(v18, v19, v20 & 1);
          if (a1)
          {
            v11 = v21 - a1;
          }

          else
          {
            v11 = 0;
          }

          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_52;
          }

          __break(1u);
LABEL_17:
          if ((v11 & 0x8000000000000000) == 0)
          {
            v13 = 0;
            goto LABEL_19;
          }

LABEL_20:
          v15 = sub_10026FFE0(v11, a3, v9, sub_1002881FC);
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

            v15 = sub_100270238(0, v14, v31, v30);
            if (v32)
            {
              v9 = v14 - v15;
            }

            else
            {
              v9 = 0;
            }

            if ((v9 & 0x8000000000000000) == 0)
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

              sub_100270BE0(a5, v48);
              v22 = a5;
              v23 = v9;
              v24 = v34;
              v25 = v33;
              return sub_1002A742C(v22, 0, v23, v24, v25, a6);
            }
          }

          __break(1u);
LABEL_55:
          sub_100270BE0(v15, v14);

          sub_100270BE0(a5, v48);
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if ((isStackAllocationSafe & 1) == 0)
          {
            v44 = swift_slowAlloc();

            sub_100270BE0(a5, v48);
            sub_1002703B8(v44, v44 + v11, a3, v9, a5, a6, &v49);

            if (v6)
            {
              goto LABEL_47;
            }

            sub_100270C3C(a5);

            sub_100270C3C(a5);

            return v49;
          }
        }
      }

      __break(1u);
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {

      if (v11 >= 1025)
      {
        sub_100270BE0(a5, v48);

        sub_100270BE0(a5, v48);
        v36 = swift_stdlib_isStackAllocationSafe();
        if ((v36 & 1) == 0)
        {
          v45 = swift_slowAlloc();

          sub_100270BE0(a5, v48);
          a1 = sub_10026FF3C(v45, v45 + v11, a3, v9, a5, a6);
          if (v6)
          {

            goto LABEL_47;
          }

          goto LABEL_64;
        }
      }

      else
      {
        sub_100270BE0(a5, v48);

        v36 = sub_100270BE0(a5, v48);
      }

      __chkstk_darwin(v36);
      v38 = sub_100257E20(a3, v9, &v48[-v37 - 8], &v48[v11 - 8 - v37], 1);
      if (v6)
      {
LABEL_46:
        swift_willThrow();
LABEL_47:
        sub_100270C3C(a5);

        sub_100270C3C(a5);
      }

      a1 = sub_1002701E0(v38, v39, v40 & 1);
      if (a1)
      {
        v11 = v21 - a1;
      }

      else
      {
        v11 = 0;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
LABEL_52:
        v41 = a1;
        v42 = v21;

        sub_100270BE0(a5, v48);
        v43 = sub_1002A742C(a5, 0, v11, v41, v42, a6);
        sub_100270C3C(a5);

        sub_100270C3C(a5);

        return v43;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      v46 = a1;

      sub_100270C3C(a5);

      sub_100270C3C(a5);

      return v46;
    }

    __break(1u);
    goto LABEL_63;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v13 = a4 - a3;
  v12 = a4 - a3 == a2;
  if (a4 - a3 > a2)
  {
    goto LABEL_20;
  }

  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_19:

  sub_100270BE0(a5, v48);
  v22 = a5;
  v23 = v13;
  v24 = a3;
  v25 = v9;
  return sub_1002A742C(v22, 0, v23, v24, v25, a6);
}

uint64_t _s9IMAP2MIME23ContentTransferEncodingO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AAD08;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100270B7C()
{
  result = qword_1005D6498;
  if (!qword_1005D6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6498);
  }

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

uint64_t WatchOSHeaderInfo.from.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ContentType.Attribute.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1004A6D34(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1004A6D34();
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

  return sub_10026B9CC(v6, v7);
}

uint64_t sub_100270F18(uint64_t a1, uint64_t a2)
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

  return sub_10026B9CC(v3, v5);
}

uint64_t ContentType.description.getter()
{
  v1 = *(v0 + 16);
  v5[0] = *v0;
  v5[1] = v1;
  v6 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_100270CA4(v5, v3);
  sub_100272B6C(&v4, v3);
  v7._countAndFlagsBits = v0;
  return _sSS9IMAP2MIMEEySSAA11ContentTypeVcfC_0(v7);
}

uint64_t sub_100270FF8()
{
  v1 = v0[2];
  v5 = v0[1];
  v6 = v1;
  v4 = *v0;
  v7[0] = v4;
  v7[1] = v5;
  v8 = *(v0 + 32);
  v9 = *(&v1 + 1);
  sub_100270CA4(v7, v3);
  sub_100272B6C(&v9, v3);
  v10._countAndFlagsBits = &v4;
  return _sSS9IMAP2MIMEEySSAA11ContentTypeVcfC_0(v10);
}

uint64_t ContentType.Attribute.description.getter(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = qword_1005D6248;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_1004A4064();
  sub_1001C203C(v9, qword_1005D64A0);
  sub_1001C2190();
  sub_1004A6434();
  v11 = v10;

  if (v11)
  {
    v14 = 8251;
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    sub_1004A5994(v15);
    v16._countAndFlagsBits = 61;
    v16._object = 0xE100000000000000;
    sub_1004A5994(v16);
    v12._countAndFlagsBits = a3;
    v12._object = a4;
  }

  else
  {
    v14 = a1;

    v17._countAndFlagsBits = 8765;
    v17._object = 0xE200000000000000;
    sub_1004A5994(v17);
    v18._countAndFlagsBits = a3;
    v18._object = a4;
    sub_1004A5994(v18);
    v12._countAndFlagsBits = 34;
    v12._object = 0xE100000000000000;
  }

  sub_1004A5994(v12);
  return v14;
}

Swift::String __swiftcall String.init(_:)(IMAP2MIME::ContentType::Attribute a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v3 = a1.key._object;
  v4 = a1.key._countAndFlagsBits;
  v5 = qword_1005D6248;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_1004A4064();
  sub_1001C203C(v6, qword_1005D64A0);
  sub_1001C2190();
  sub_1004A6434();
  v8 = v7;

  if (v8)
  {
    v12 = 8251;
    v13 = 0xE200000000000000;

    v14._countAndFlagsBits = v4;
    v14._object = v3;
    sub_1004A5994(v14);

    v15._countAndFlagsBits = 61;
    v15._object = 0xE100000000000000;
    sub_1004A5994(v15);

    v16._countAndFlagsBits = countAndFlagsBits;
    v16._object = object;
    sub_1004A5994(v16);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v12 = v4;
    v13 = v3;

    v17._countAndFlagsBits = 8765;
    v17._object = 0xE200000000000000;
    sub_1004A5994(v17);

    v18._countAndFlagsBits = countAndFlagsBits;
    v18._object = object;
    sub_1004A5994(v18);
    swift_bridgeObjectRelease_n();

    v19._countAndFlagsBits = 34;
    v19._object = 0xE100000000000000;
    sub_1004A5994(v19);
  }

  v9 = v12;
  v10 = v13;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_100271350()
{
  v0 = sub_1004A4064();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C2074(v5, qword_1005D64A0);
  sub_1001C203C(v0, qword_1005D64A0);
  sub_1004A4024();
  sub_1004A4054();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100271450(char a1)
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

Swift::Int sub_1002715C8()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_100271450(v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10027162C()
{
  sub_100271450(*v0);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100271680()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_100271450(v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_1002716E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100272EF8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100271710@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100271450(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10027173C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100271450(*a1);
  v5 = v4;
  if (v3 == sub_100271450(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004A6D34();
  }

  return v8 & 1;
}

uint64_t sub_1002717C4()
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

        goto LABEL_9;
      default:
        v4 = sub_1004A6D34();

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

uint64_t sub_100271A2C()
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

      goto LABEL_9;
    default:
      v5 = sub_1004A6D34();

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

uint64_t sub_100271C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027031C(0, a1, a2);
  v5 = sub_10027031C(1, a1, a2);
  v6 = sub_10027031C(2, a1, a2);
  v7 = sub_10027031C(3, a1, a2);
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
    result = sub_10026F3B4(v8, v9, v10);
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

uint64_t sub_100272054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v5 = a1;
  sub_1002A3EE0(a1, a2, a3);
  if (v9)
  {
    v10 = v9;
    sub_10028A894(v7, v8, v17);
    v11 = v19;
    if (v19 <= 0xFDu)
    {
      v15 = v18;
      v5 = v17[0];
      v4 = v17[1];
      v16 = _swiftEmptyArrayStorage;
      sub_1002A0858(v10, &v16);

      v13 = v15;
      v14 = v16;
      goto LABEL_14;
    }
  }

  result = sub_100289FA4(v5, v4);
  if (result <= 4u)
  {
    if (result <= 1u)
    {
      v5 = 0;
      v4 = 0;
      if (result)
      {
        v13 = xmmword_1004DB2C0;
        v14 = _swiftEmptyArrayStorage;
        v11 = 16;
      }

      else
      {
        v11 = 0;
        v13 = xmmword_1004EAA80;
        v14 = _swiftEmptyArrayStorage;
      }
    }

    else if (result == 2)
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1004DB2C0;
      v14 = _swiftEmptyArrayStorage;
      v11 = 32;
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1004DB2C0;
      v14 = _swiftEmptyArrayStorage;
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
      v13 = xmmword_1004DB2C0;
      v14 = _swiftEmptyArrayStorage;
      v11 = 0x80;
    }

    else if (result == 9)
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1004DB2C0;
      v14 = _swiftEmptyArrayStorage;
      v11 = -112;
    }

    else
    {
      v13 = 0uLL;
      v14 = _swiftEmptyArrayStorage;
      v11 = -95;
    }
  }

  else if (result == 5)
  {
    v5 = 0;
    v4 = 0;
    v13 = xmmword_1004DB2C0;
    v14 = _swiftEmptyArrayStorage;
    v11 = 80;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v13 = xmmword_1004DB2C0;
    v14 = _swiftEmptyArrayStorage;
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

__n128 sub_1002722A8@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v73[0] = *a1;
  v73[1] = v6;
  v74 = *(a1 + 32);
  sub_10028AA80(v73, v71);
  v7 = a1;
  v57 = v71[0];
  v56 = v71[1];
  v8 = v72;
  v9 = *(a1 + 40);
  v10 = *(v9 + 16);
  if (!v10)
  {
    sub_100270C3C(v7);

    v12 = _swiftEmptyArrayStorage;
    goto LABEL_64;
  }

  v53 = v7;
  v54 = v72;
  v55 = a3;
  v67 = _swiftEmptyArrayStorage;
  sub_1002ADFB8(0, v10, 0);
  v11 = 0;
  v58 = 0;
  v12 = _swiftEmptyArrayStorage;
  v60 = v9 + 32;
  v61 = a2;
  v59 = v10;
  do
  {
    v63 = v12;
    v13 = (v60 + 56 * v11);
    v14 = *v13;
    v15 = v13[3];
    v16 = v13[4];
    v17 = *(v13 + 40);
    v18 = v13[6];
    if (v13[2])
    {
      v19 = v13[1];
      v68 = 0;
      v69 = 0xE000000000000000;
      if (v14)
      {
        v20 = v19 - v14;
      }

      else
      {
        v20 = 0;
      }

      sub_1004A5874(v20);
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
        v22 = v68;
        v23 = v69;
        do
        {
          if (*v14 - 1 <= 0x7D)
          {
            v65 = v22;
            v66 = v23;
            sub_1004A58C4();
            v22 = v65;
            v23 = v66;
          }

          ++v14;
        }

        while (v14 != v19);
        v68 = v22;
        v69 = v23;
      }

      v26 = v68;
      v25 = v69;
    }

    else
    {
      v24 = v13[6];

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

    v62 = v26;
    if (!v17 || *(v18 + 16) != 1 || (*(v18 + 48) & 0x80000000) == 0 || (v28 = *(v18 + 32), v27 = *(v18 + 40), (sub_1002A1DA8(v28, v27) & 1) == 0))
    {
      v41 = v25;
      v68 = 0;
      v69 = 0xE000000000000000;

      v42 = v61;

      sub_1002A2B60(v15, v16, v17, v18, v15, v16, v17, v18, v42, &v68);
      swift_bridgeObjectRelease_n();

      v43 = v68;
      v44 = v69;
      v45 = v59;
      v12 = v63;
      goto LABEL_43;
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

    v30 = sub_1002A890C(0, v29, v28, v27);
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

    v65 = 0;
    v66 = 0xE000000000000000;
    v35 = v33 - v34;
    if (v34)
    {
      v36 = v33 - v34;
    }

    else
    {
      v36 = 0;
    }

    sub_1004A5874(v36);
    v64 = 0;
    if (!v34)
    {
      v35 = 0;
      v37 = v61;
LABEL_59:

      goto LABEL_60;
    }

    v37 = v61;
    if (v35 < 0)
    {
      goto LABEL_66;
    }

    if (v35 < 1025)
    {
      goto LABEL_59;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v39 = swift_slowAlloc();

      v40 = v58;
      sub_1002A5760(v39, v33 - v34, &v65, v34, v33, v37, &v64);
      if (v40)
      {

        __break(1u);
LABEL_68:

        swift_willThrow();
        __break(1u);
        JUMPOUT(0x100272938);
      }

      v58 = 0;
      v41 = v25;

      goto LABEL_62;
    }

LABEL_60:
    __chkstk_darwin(isStackAllocationSafe);
    v68 = &v52 - v49;
    v69 = v35;
    v70 = 0;
    v50 = v58;
    sub_10029F954(&v68, &v65, v34, v33, v37, &v64);
    if (v50)
    {
      goto LABEL_68;
    }

    v58 = 0;
    v41 = v25;
LABEL_62:
    v45 = v59;
    v12 = v63;

    v43 = v65;
    v44 = v66;
LABEL_43:
    v67 = v12;
    v47 = v12[2];
    v46 = v12[3];
    if (v47 >= v46 >> 1)
    {
      sub_1002ADFB8((v46 > 1), v47 + 1, 1);
      v12 = v67;
    }

    ++v11;
    v12[2] = v47 + 1;
    v48 = &v12[4 * v47];
    v48[4] = v62;
    v48[5] = v41;
    v48[6] = v43;
    v48[7] = v44;
  }

  while (v11 != v45);
  sub_100270C3C(v53);

  a3 = v55;
  v8 = v54;
LABEL_64:
  result = v56;
  *a3 = v57;
  *(a3 + 16) = result;
  *(a3 + 32) = v8;
  *(a3 + 40) = v12;
  return result;
}

uint64_t _sSS9IMAP2MIMEEySSAA11ContentTypeVcfC_0(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  v2 = *(a1._countAndFlagsBits + 16);
  v20[0] = *a1._countAndFlagsBits;
  v20[1] = v2;
  v21 = *(a1._countAndFlagsBits + 32);
  a1._countAndFlagsBits = v20;
  v3 = _sSS9IMAP2MIMEEySSAA9MediaTypeOcfC_0(a1);
  v18 = v3;
  v4 = *(countAndFlagsBits + 40);
  v19 = v4;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 56);
    do
    {
      v9 = *(v6 - 3);
      v8 = *(v6 - 2);
      v11 = *(v6 - 1);
      v10 = *v6;
      v12 = qword_1005D6248;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = sub_1004A4064();
      sub_1001C203C(v13, qword_1005D64A0);
      sub_1001C2190();
      sub_1004A6434();
      if (v14)
      {
        v17._countAndFlagsBits = 8251;
        v17._object = 0xE200000000000000;
        v22._countAndFlagsBits = v9;
        v22._object = v8;
        sub_1004A5994(v22);
        v23._countAndFlagsBits = 61;
        v23._object = 0xE100000000000000;
        sub_1004A5994(v23);
        v7._countAndFlagsBits = v11;
        v7._object = v10;
      }

      else
      {
        v17._countAndFlagsBits = v9;
        v17._object = v8;

        v25._countAndFlagsBits = 8765;
        v25._object = 0xE200000000000000;
        sub_1004A5994(v25);
        v26._countAndFlagsBits = v11;
        v26._object = v10;
        sub_1004A5994(v26);
        v7._countAndFlagsBits = 34;
        v7._object = 0xE100000000000000;
      }

      sub_1004A5994(v7);
      sub_1004A5994(v17);

      v24._countAndFlagsBits = 8251;
      v24._object = 0xE200000000000000;
      sub_1004A5994(v24);

      v6 += 4;
      --v5;
    }

    while (v5);
    sub_100272C34(&v19);
    return v18;
  }

  else
  {
    v16 = v3;
    sub_100272C34(&v19);
    return v16;
  }
}

uint64_t sub_100272B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D64B8, &qword_1004EAA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100272BDC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100272C34(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D64B8, &qword_1004EAA90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100272CAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100272CF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeContentType.Attribute.Key.Known(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeContentType.Attribute.Key.Known(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100272EA4()
{
  result = qword_1005D64C0;
  if (!qword_1005D64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D64C0);
  }

  return result;
}

uint64_t sub_100272EF8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AADA0;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t EmailAddress.address.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t EmailAddress.localPart.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];

  return v1;
}

uint64_t EmailAddress.domainPart.getter()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[10];
  v3 = v0[11];

  return v1;
}

double EmailAddress.init(name:localPart:domainPart:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  sub_100274CE8(a1, a2, a3, a4, a5, a6, v12);
  v8 = v12[3];
  a7[2] = v12[2];
  a7[3] = v8;
  v9 = v12[5];
  a7[4] = v12[4];
  a7[5] = v9;
  result = *v12;
  v11 = v12[1];
  *a7 = v12[0];
  a7[1] = v11;
  return result;
}

uint64_t sub_100273060(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s9IMAP2MIME12EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v10) & 1;
}

uint64_t sub_1002730BC(uint64_t a1)
{
  if (v1[9] >> 14 < v1[8] >> 14)
  {
    __break(1u);
  }

  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[8];
  v6 = v1[9];
  v7 = sub_1004A6404();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  pErrorCode[0] = U_ZERO_ERROR;
  if (unorm2_getNFCInstance())
  {
    v14 = sub_1002A7678(v7, v9, v11, v13);
    v19 = v15;
    if (v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = sub_1004A5864();
      v19 = v21;
    }

    if ((*(a1 + 96) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1002755A0();
    swift_allocError();
    *v16 = 0;
    *(v16 + 4) = 0;
    swift_willThrow();
    v17 = sub_1004A5864();
    v19 = v18;

    if ((*(a1 + 96) & 1) == 0)
    {
LABEL_10:
      v20 = *(a1 + 88);
      goto LABEL_11;
    }
  }

  pErrorCode[0] = U_ZERO_ERROR;
  v20 = uidna_openUTS46(0x3Cu, pErrorCode);
LABEL_11:
  v40 = v20;
  sub_10027EE28(&v40, v17, v19, pErrorCode);
  *(a1 + 88) = v20;
  *(a1 + 96) = 0;

  v23 = *pErrorCode;
  v22 = v39;
  v24 = v1[4];
  v25 = v1[5];
  v27 = v1[6];
  v26 = v1[7];
  pErrorCode[0] = U_ZERO_ERROR;
  NFCInstance = unorm2_getNFCInstance();
  v29 = pErrorCode[0];
  if (NFCInstance && pErrorCode[0] <= U_ZERO_ERROR)
  {
    v30 = sub_1002A7678(v24, v25, v27, v26);
    v35 = v31;
    if (v31)
    {
      v33 = v30;
    }

    else
    {
      v33 = sub_1004A5864();
      v35 = v37;
    }
  }

  else
  {
    sub_1002755A0();
    swift_allocError();
    *v32 = v29;
    *(v32 + 4) = 0;
    swift_willThrow();
    v33 = sub_1004A5864();
    v35 = v34;
  }

  *pErrorCode = v33;
  v39 = v35;

  v41._countAndFlagsBits = 64;
  v41._object = 0xE100000000000000;
  sub_1004A5994(v41);

  v42._countAndFlagsBits = v23;
  v42._object = v22;
  sub_1004A5994(v42);

  return *pErrorCode;
}

char *sub_1002733C8()
{
  v0 = sub_100274B0C();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_1004A6794();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = sub_100273598(v5, 0);

      v9 = *(v8 + 2);
      v10 = *(v4 + 2);
      v11 = v10 + v9;
      if (__OFADD__(v10, v9))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v11 <= *(v4 + 3) >> 1)
      {
        if (*(v8 + 2))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v10 <= v11)
        {
          v13 = v10 + v9;
        }

        else
        {
          v13 = v10;
        }

        v4 = sub_100274058(isUniquelyReferenced_nonNull_native, v13, 1, v4);
        if (*(v8 + 2))
        {
LABEL_19:
          if ((*(v4 + 3) >> 1) - *(v4 + 2) < v9)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v9)
          {
            v14 = *(v4 + 2);
            v15 = __OFADD__(v14, v9);
            v16 = v14 + v9;
            if (v15)
            {
              goto LABEL_29;
            }

            *(v4 + 2) = v16;
          }

          goto LABEL_5;
        }
      }

      if (v9)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v7 == i)
      {
        goto LABEL_32;
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
LABEL_30:
    ;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_32:

  return v4;
}

char *sub_100273598(void *a1, uint64_t a2)
{
  if (a2 <= 3)
  {
    v3 = [a1 groupList];
    if (v3)
    {
      v4 = v3;
      sub_10027551C();
      v5 = sub_1004A5C14();
    }

    else
    {
      v5 = 0;
    }

    v7 = [a1 displayName];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1004A5764();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = [a1 localPart];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1004A5764();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = [a1 domain];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1004A5764();
      v21 = v20;

      if (v5)
      {
LABEL_14:
        v22 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v5 >> 62)
        {
          goto LABEL_49;
        }

        for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
        {
          v24 = 0;
          v41 = v5 & 0xC000000000000001;
          v6 = _swiftEmptyArrayStorage;
          v25 = v22;
          while (1)
          {
            if (v41)
            {
              v26 = v5;
              v27 = sub_1004A6794();
            }

            else
            {
              if (v24 >= *(v22 + 16))
              {
                goto LABEL_44;
              }

              v26 = v5;
              v27 = *(v5 + 8 * v24 + 32);
            }

            v28 = v27;
            v29 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            v22 = sub_100273598(v27, a2 + 1);

            v30 = *(v22 + 16);
            v31 = *(v6 + 2);
            v5 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_45;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v5 <= *(v6 + 3) >> 1)
            {
              if (*(v22 + 16))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v31 <= v5)
              {
                v33 = v31 + v30;
              }

              else
              {
                v33 = v31;
              }

              v6 = sub_100274058(isUniquelyReferenced_nonNull_native, v33, 1, v6);
              if (*(v22 + 16))
              {
LABEL_32:
                if ((*(v6 + 3) >> 1) - *(v6 + 2) < v30)
                {
                  goto LABEL_47;
                }

                swift_arrayInitWithCopy();

                if (v30)
                {
                  v34 = *(v6 + 2);
                  v35 = __OFADD__(v34, v30);
                  v36 = v34 + v30;
                  if (v35)
                  {
                    goto LABEL_48;
                  }

                  *(v6 + 2) = v36;
                }

                goto LABEL_18;
              }
            }

            if (v30)
            {
              goto LABEL_46;
            }

LABEL_18:
            ++v24;
            v5 = v26;
            v22 = v25;
            if (v29 == i)
            {
              goto LABEL_51;
            }
          }

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
          ;
        }

        v6 = _swiftEmptyArrayStorage;
LABEL_51:

        goto LABEL_52;
      }
    }

    else
    {
      v19 = 0;
      v21 = 0;
      if (v5)
      {
        goto LABEL_14;
      }
    }

    if (v16)
    {
      if (v21)
      {
        sub_10000C9C0(&qword_1005D64D0, &unk_1004EAEA0);
        v6 = swift_allocObject();
        *(v6 + 1) = xmmword_1004CEAA0;

        sub_100274CE8(v9, v11, v14, v16, v19, v21, v43);
        v37 = v43[3];
        *(v6 + 4) = v43[2];
        *(v6 + 5) = v37;
        v38 = v43[5];
        *(v6 + 6) = v43[4];
        *(v6 + 7) = v38;
        v39 = v43[1];
        *(v6 + 2) = v43[0];
        *(v6 + 3) = v39;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v6 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v6 = _swiftEmptyArrayStorage;
    }

LABEL_52:

    return v6;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_100273998(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6558, &qword_1004EAEC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_100273A98(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6570, &qword_1004EAEE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}