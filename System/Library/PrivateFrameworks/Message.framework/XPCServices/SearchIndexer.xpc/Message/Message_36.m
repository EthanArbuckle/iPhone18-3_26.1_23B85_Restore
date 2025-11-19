char *sub_10025B4CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a1;
  v17 = &type metadata for UnsafeRawBufferPointer;
  v18 = &protocol witness table for UnsafeRawBufferPointer;
  v15 = "Content-Type";
  v16 = "";
  v8 = sub_10002587C(&v15, &type metadata for UnsafeRawBufferPointer);
  v10 = *v8;
  v9 = v8[1];
  sub_1004A43F4();
  sub_1000197E0(&v15);
  v17 = &type metadata for UnsafeRawBufferPointer;
  v18 = &protocol witness table for UnsafeRawBufferPointer;
  v15 = ": ";
  v16 = "";
  v11 = sub_10002587C(&v15, &type metadata for UnsafeRawBufferPointer);
  v13 = *v11;
  v12 = v11[1];
  sub_1004A43F4();
  sub_1000197E0(&v15);
  v20 = 14;
  sub_100260F64(v19, a3, a2, a4, &v15);
  sub_100267804(a1);
  return v15;
}

uint64_t sub_10025B5BC(char a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  v37[8] = *(a2 + 128);
  v37[9] = v4;
  v37[10] = *(a2 + 160);
  v38 = *(a2 + 176);
  v5 = *(a2 + 80);
  v37[4] = *(a2 + 64);
  v37[5] = v5;
  v6 = *(a2 + 112);
  v37[6] = *(a2 + 96);
  v37[7] = v6;
  v7 = *(a2 + 16);
  v37[0] = *a2;
  v37[1] = v7;
  v8 = *(a2 + 48);
  v37[2] = *(a2 + 32);
  v37[3] = v8;
  if (sub_10000FE88(v37) == 1)
  {
    return UInt32.init(_:)(v37);
  }

  result = UInt32.init(_:)(v37);
  v39 = *(result + 64);
  v10 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
    v11 = v39;
    if (v11 == sub_1004A5834() && v10 == v12)
    {
    }

    v13 = sub_1004A6D34();
    sub_1000510B4(a2, &v33);
    sub_10000E268(&v39, &v33, &qword_1005D6338, &unk_1004EA020);

    if (v13)
    {
      sub_100025F40(&v39, &qword_1005D6338, &unk_1004EA020);
      return sub_100051110(a2);
    }

    v35 = &type metadata for UnsafeRawBufferPointer;
    v36 = &protocol witness table for UnsafeRawBufferPointer;
    v33 = "Content-Transfer-Encoding";
    v34 = "";
    v14 = sub_10002587C(&v33, &type metadata for UnsafeRawBufferPointer);
    v16 = *v14;
    v15 = v14[1];
    sub_1004A43F4();
    sub_1000197E0(&v33);
    v35 = &type metadata for UnsafeRawBufferPointer;
    v36 = &protocol witness table for UnsafeRawBufferPointer;
    v33 = ": ";
    v34 = "";
    v17 = sub_10002587C(&v33, &type metadata for UnsafeRawBufferPointer);
    v19 = *v17;
    v18 = v17[1];
    sub_1004A43F4();
    sub_1000197E0(&v33);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1004E9FD0;
    v21 = (v20 + 16);
    *(v20 + 32) = v32;
    *(v20 + 40) = &v33;
    sub_10026751C(v11, v10, v20);
    sub_100025F40(&v39, &qword_1005D6338, &unk_1004EA020);
    swift_beginAccess();
    v22 = *v21;
    if (__OFADD__(*v21, 27))
    {
      __break(1u);
    }

    else
    {
      if ((*v21 + 27) < 79)
      {
        goto LABEL_14;
      }

      sub_100267804(a1);
      v35 = &type metadata for UnsafeRawBufferPointer;
      v36 = &protocol witness table for UnsafeRawBufferPointer;
      v33 = "\t";
      v34 = "";
      v23 = sub_10002587C(&v33, &type metadata for UnsafeRawBufferPointer);
      v25 = *v23;
      v24 = v23[1];
      sub_1004A43F4();
      sub_1000197E0(&v33);
      if ((v22 & 0x8000000000000000) == 0)
      {
        v35 = &type metadata for UnsafeRawBufferPointer;
        v36 = &protocol witness table for UnsafeRawBufferPointer;
        v33 = v32;
        v34 = &v32[v22];
        v26 = sub_10002587C(&v33, &type metadata for UnsafeRawBufferPointer);
        v28 = *v26;
        v27 = v26[1];
        sub_1004A43F4();
        sub_1000197E0(&v33);

        if (v22 <= 0xA0)
        {
LABEL_16:
          sub_100267804(a1);
          return sub_100051110(a2);
        }

        __break(1u);
LABEL_14:
        if ((v22 & 0x8000000000000000) == 0)
        {
          v35 = &type metadata for UnsafeRawBufferPointer;
          v36 = &protocol witness table for UnsafeRawBufferPointer;
          v33 = v32;
          v34 = &v32[v22];
          v29 = sub_10002587C(&v33, &type metadata for UnsafeRawBufferPointer);
          v31 = *v29;
          v30 = v29[1];
          sub_1004A43F4();
          sub_1000197E0(&v33);

          if (v22 <= 0xA0)
          {
            goto LABEL_16;
          }

LABEL_22:
          __break(1u);
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_10025B944(char a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  v48[8] = *(a2 + 128);
  v48[9] = v3;
  v48[10] = *(a2 + 160);
  v49 = *(a2 + 176);
  v4 = *(a2 + 80);
  v48[4] = *(a2 + 64);
  v48[5] = v4;
  v5 = *(a2 + 112);
  v48[6] = *(a2 + 96);
  v48[7] = v5;
  v6 = *(a2 + 16);
  v48[0] = *a2;
  v48[1] = v6;
  v7 = *(a2 + 48);
  v48[2] = *(a2 + 32);
  v48[3] = v7;
  if (sub_10000FE88(v48) == 1)
  {
    result = UInt32.init(_:)(v48);
    if (!*(result + 32))
    {
      return result;
    }

    v9 = (result + 80);
    v10 = (result + 72);
    v11 = (result + 64);
    v12 = (result + 56);
    v13 = (result + 48);
  }

  else
  {
    result = UInt32.init(_:)(v48);
    if (*(result + 96) == 1)
    {
      return result;
    }

    v9 = (result + 136);
    v13 = (result + 104);
    v10 = (result + 128);
    v11 = (result + 120);
    v12 = (result + 112);
  }

  v14 = *v12;
  if (*v12 >= 2)
  {
    v15 = *v11;
    v16 = *v13;
    v17 = *v10;
    v18 = *v9;
    v41[0] = a1;
    v46 = &type metadata for UnsafeRawBufferPointer;
    v47 = &protocol witness table for UnsafeRawBufferPointer;
    v44 = "Content-Disposition";
    v45 = "";
    v19 = sub_10002587C(&v44, &type metadata for UnsafeRawBufferPointer);
    v20 = *v19;
    v21 = v19[1];
    sub_100269A7C(v16, v14);
    sub_1004A43F4();
    sub_1000197E0(&v44);
    v46 = &type metadata for UnsafeRawBufferPointer;
    v47 = &protocol witness table for UnsafeRawBufferPointer;
    v44 = ": ";
    v45 = "";
    v22 = sub_10002587C(&v44, &type metadata for UnsafeRawBufferPointer);
    v24 = *v22;
    v23 = v22[1];
    sub_1004A43F4();
    sub_1000197E0(&v44);
    v42 = 21;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1004E9FD0;
    v26 = (v25 + 16);
    *(v25 + 32) = v43;
    *(v25 + 40) = &v44;
    v44 = v16;
    v45 = v14;

    v27 = sub_1004A5AA4();
    sub_10026751C(v27, v28, v25);

    if (*(v18 + 16))
    {
      LOBYTE(v44) = 59;
      sub_100264D48(&v44, &v44 + 1, v25);
    }

    swift_beginAccess();
    v29 = *v26;
    v30 = __OFADD__(*v26, 21);
    v31 = *v26 + 21;
    if (v30)
    {
      __break(1u);
    }

    else
    {
      if (v31 < 79)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          v46 = &type metadata for UnsafeRawBufferPointer;
          v47 = &protocol witness table for UnsafeRawBufferPointer;
          v44 = v43;
          v45 = &v43[v29];
          v38 = sub_10002587C(&v44, &type metadata for UnsafeRawBufferPointer);
          v40 = *v38;
          v39 = v38[1];
          sub_1004A43F4();
          sub_1000197E0(&v44);

          if (v29 <= 0xA0)
          {
            goto LABEL_16;
          }

LABEL_22:
          __break(1u);
        }

        goto LABEL_20;
      }

      sub_100267804(a1);
      v46 = &type metadata for UnsafeRawBufferPointer;
      v47 = &protocol witness table for UnsafeRawBufferPointer;
      v44 = "\t";
      v45 = "";
      v32 = sub_10002587C(&v44, &type metadata for UnsafeRawBufferPointer);
      v34 = *v32;
      v33 = v32[1];
      sub_1004A43F4();
      sub_1000197E0(&v44);
      if ((v29 & 0x8000000000000000) == 0)
      {
        v46 = &type metadata for UnsafeRawBufferPointer;
        v47 = &protocol witness table for UnsafeRawBufferPointer;
        v44 = v43;
        v45 = &v43[v29];
        v35 = sub_10002587C(&v44, &type metadata for UnsafeRawBufferPointer);
        v37 = *v35;
        v36 = v35[1];
        sub_1004A43F4();
        sub_1000197E0(&v44);

        if (v29 <= 0xA0)
        {
          v31 = v29 + 1;
LABEL_16:
          v42 = v31;
          sub_100260088(v15, v17, v18, v41);
          sub_100267804(a1);
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10025BD28(int a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  v49[8] = *(a2 + 128);
  v49[9] = v4;
  v49[10] = *(a2 + 160);
  v50 = *(a2 + 176);
  v5 = *(a2 + 80);
  v49[4] = *(a2 + 64);
  v49[5] = v5;
  v6 = *(a2 + 112);
  v49[6] = *(a2 + 96);
  v49[7] = v6;
  v7 = *(a2 + 16);
  v49[0] = *a2;
  v49[1] = v7;
  v8 = *(a2 + 48);
  v49[2] = *(a2 + 32);
  v49[3] = v8;
  if (sub_10000FE88(v49) == 1)
  {
    return UInt32.init(_:)(v49);
  }

  result = UInt32.init(_:)(v49);
  v51 = *(result + 32);
  v10 = *(&v51 + 1);
  if (*(&v51 + 1))
  {
    v11 = v51;
    v42[0] = a1;
    v48[3] = &type metadata for UnsafeRawBufferPointer;
    v48[4] = &protocol witness table for UnsafeRawBufferPointer;
    v48[0] = "Content-ID";
    v48[1] = "";
    v12 = sub_10002587C(v48, &type metadata for UnsafeRawBufferPointer);
    v13 = *v12;
    v14 = v12[1];
    sub_1000510B4(a2, &v44);
    sub_10000E268(&v51, &v44, &qword_1005D4660, &qword_1004E05E8);
    sub_1004A43F4();
    sub_1000197E0(v48);
    v46 = &type metadata for UnsafeRawBufferPointer;
    v47 = &protocol witness table for UnsafeRawBufferPointer;
    v44 = ": ";
    v45 = "";
    v15 = sub_10002587C(&v44, &type metadata for UnsafeRawBufferPointer);
    v17 = *v15;
    v16 = v15[1];
    sub_1004A43F4();
    sub_1000197E0(&v44);
    v43 = 12;
    v18 = sub_1004A5924();
    v22 = v18 + 2;
    if (__OFADD__(v18, 2))
    {
      __break(1u);
    }

    else
    {
      if (v22 < 0)
      {
        goto LABEL_21;
      }

      v41 = a1;
      v20 = &qword_1005D4660;
      v21 = &qword_1004E05E8;
      v18 = &v51;
      v19 = &v44;
      if (v22 < 1025)
      {
        isStackAllocationSafe = sub_10000E268(&v51, &v44, &qword_1005D4660, &qword_1004E05E8);
LABEL_8:
        v40[1] = v40;
        __chkstk_darwin(isStackAllocationSafe);
        v25 = v40 - v24;
        v26 = v40 + v22 - v24;
        v27 = swift_allocObject();
        v27[2] = 0;
        v27[3] = v22;
        v27[4] = v25;
        v27[5] = v26;
        LOBYTE(v44) = 60;
        sub_100264D48(&v44, &v44 + 1, v27);
        sub_100266E78(v11, v10, v27);
        LOBYTE(v44) = 62;
        sub_100264D48(&v44, &v44 + 1, v27);
        swift_beginAccess();
        v28 = v27[2];
        if (!__OFADD__(v28, 12))
        {
          if (v27[2] + 12 < 79)
          {
            goto LABEL_13;
          }

          v29 = v41;
          sub_100267804(v41);
          v46 = &type metadata for UnsafeRawBufferPointer;
          v47 = &protocol witness table for UnsafeRawBufferPointer;
          v44 = "\t";
          v45 = "";
          v30 = sub_10002587C(&v44, &type metadata for UnsafeRawBufferPointer);
          v32 = *v30;
          v31 = v30[1];
          sub_1004A43F4();
          sub_1000197E0(&v44);
          if ((v28 & 0x8000000000000000) == 0)
          {
            v46 = &type metadata for UnsafeRawBufferPointer;
            v47 = &protocol witness table for UnsafeRawBufferPointer;
            v44 = v25;
            v45 = &v25[v28];
            v33 = sub_10002587C(&v44, &type metadata for UnsafeRawBufferPointer);
            v35 = *v33;
            v34 = v33[1];
            sub_1004A43F4();
            sub_1000197E0(&v44);

            if (v22 >= v28)
            {
LABEL_15:
              sub_100025F40(&v51, &qword_1005D4660, &qword_1004E05E8);
              sub_100025F40(&v51, &qword_1005D4660, &qword_1004E05E8);
              sub_100267804(v29);
              return sub_100051110(a2);
            }

            __break(1u);
LABEL_13:
            v29 = v41;
            if ((v28 & 0x8000000000000000) == 0)
            {
              v46 = &type metadata for UnsafeRawBufferPointer;
              v47 = &protocol witness table for UnsafeRawBufferPointer;
              v44 = v25;
              v45 = &v25[v28];
              v36 = sub_10002587C(&v44, &type metadata for UnsafeRawBufferPointer);
              v38 = *v36;
              v37 = v36[1];
              sub_1004A43F4();
              sub_1000197E0(&v44);

              if (v22 >= v28)
              {
                goto LABEL_15;
              }

LABEL_24:
              __break(1u);
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    sub_10000E268(v18, v19, v20, v21);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v39 = swift_slowAlloc();

      sub_100264858(v39, v39 + v22, 0, v42, v11, v10);

      v29 = v41;
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10025C1CC(char a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  v4 = *(a2 + 160);
  v26[9] = *(a2 + 144);
  v26[10] = v4;
  v5 = *(a2 + 64);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v26[5] = *(a2 + 80);
  v26[6] = v6;
  v27 = *(a2 + 176);
  v26[7] = v7;
  v26[8] = v3;
  v8 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v8;
  v9 = *(a2 + 48);
  v26[2] = *(a2 + 32);
  v26[3] = v9;
  v26[4] = v5;
  if (sub_10000FE88(v26) == 1)
  {
    result = UInt32.init(_:)(v26);
    if (!*(result + 32))
    {
      return result;
    }

    v11 = (result + 88);
    v12 = (result + 56);
  }

  else
  {
    result = UInt32.init(_:)(v26);
    if (*(result + 96) == 1)
    {
      return result;
    }

    v11 = (result + 144);
    v12 = (result + 112);
  }

  if (*v12 != 1)
  {
    v13 = *v11;
    if (*v11)
    {
      if (*(v13 + 16))
      {
        v24[0] = a1;
        v22 = &type metadata for UnsafeRawBufferPointer;
        v23 = &protocol witness table for UnsafeRawBufferPointer;
        v20 = "Content-Language";
        v21 = "";
        v14 = sub_10002587C(&v20, &type metadata for UnsafeRawBufferPointer);
        v16 = *v14;
        v15 = v14[1];
        sub_1004A43F4();
        sub_1000197E0(&v20);
        v22 = &type metadata for UnsafeRawBufferPointer;
        v23 = &protocol witness table for UnsafeRawBufferPointer;
        v20 = ": ";
        v21 = "";
        v17 = sub_10002587C(&v20, &type metadata for UnsafeRawBufferPointer);
        v19 = *v17;
        v18 = v17[1];
        sub_1004A43F4();
        sub_1000197E0(&v20);
        v25 = 18;
        sub_100260C20(v24, v13);
        return sub_100267804(a1);
      }
    }
  }

  return result;
}

uint64_t sub_10025C348(char a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  v4 = *(a2 + 160);
  v30[9] = *(a2 + 144);
  v30[10] = v4;
  v5 = *(a2 + 64);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v30[5] = *(a2 + 80);
  v30[6] = v6;
  v31 = *(a2 + 176);
  v30[7] = v7;
  v30[8] = v3;
  v8 = *(a2 + 16);
  v30[0] = *a2;
  v30[1] = v8;
  v9 = *(a2 + 48);
  v30[2] = *(a2 + 32);
  v30[3] = v9;
  v30[4] = v5;
  if (sub_10000FE88(v30) == 1)
  {
    result = UInt32.init(_:)(v30);
    if (!*(result + 32))
    {
      return result;
    }

    v11 = (result + 112);
    v12 = (result + 104);
    v13 = (result + 96);
    v14 = (result + 88);
    v15 = (result + 56);
  }

  else
  {
    result = UInt32.init(_:)(v30);
    if (*(result + 96) == 1)
    {
      return result;
    }

    v11 = (result + 168);
    v12 = (result + 160);
    v13 = (result + 152);
    v14 = (result + 144);
    v15 = (result + 112);
  }

  if (*v15 != 1 && *v14 && *v11)
  {
    v16 = *v12;
    if (*v12)
    {
      v17 = *v13;
      v28[0] = a1;
      v26 = &type metadata for UnsafeRawBufferPointer;
      v27 = &protocol witness table for UnsafeRawBufferPointer;
      v24 = "Content-Location";
      v25 = "";
      v18 = sub_10002587C(&v24, &type metadata for UnsafeRawBufferPointer);
      v20 = *v18;
      v19 = v18[1];
      sub_1004A43F4();
      sub_1000197E0(&v24);
      v26 = &type metadata for UnsafeRawBufferPointer;
      v27 = &protocol witness table for UnsafeRawBufferPointer;
      v24 = ": ";
      v25 = "";
      v21 = sub_10002587C(&v24, &type metadata for UnsafeRawBufferPointer);
      v23 = *v21;
      v22 = v21[1];
      sub_1004A43F4();
      sub_1000197E0(&v24);
      v29 = 18;
      sub_10025FD88(v17, v16, v28);
      return sub_100267804(a1);
    }
  }

  return result;
}

void sub_10025C4F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v475 = sub_1004A5384();
  v10 = *(v475 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v475);
  v13 = &v460[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v470 = &v460[-v15];
  v478 = type metadata accessor for Message.Data(0);
  v16 = *(*(v478 - 8) + 64);
  __chkstk_darwin(v478);
  v468 = &v460[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v476 = &v460[-v19];
  v486 = type metadata accessor for Message(0);
  v20 = *(v486 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v486);
  v490 = &v460[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_10000C9C0(&qword_1005D6310, &qword_1004EA000);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v487 = &v460[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v493 = &v460[-v27];
  v506 = a5;
  v485 = *(a2 + 16);
  if (v485)
  {
    v469 = 0;
    v28 = a2 + 32;
    v29 = 0;
    v477 = &v507 + 1;
    v483 = (a3 + 32);
    v484 = v28;
    v491 = &v511 + 1;
    v481 = (v20 + 48);
    v482 = (v20 + 56);
    v473 = (v10 + 32);
    v474 = (v10 + 8);
    v472 = &v514[1];
    v488 = a3;
    v465 = a5;
    v499 = a1;
    v489 = a4;
    v480 = v13;
    while (1)
    {
      v30 = (v484 + 184 * v29);
      v31 = v30[9];
      v32 = v30[7];
      v527 = v30[8];
      v528 = v31;
      v33 = v30[9];
      v529 = v30[10];
      v34 = v30[5];
      v35 = v30[3];
      v523 = v30[4];
      v524 = v34;
      v36 = v30[5];
      v37 = v30[7];
      v525 = v30[6];
      v526 = v37;
      v38 = v30[1];
      v519 = *v30;
      v520 = v38;
      v39 = v30[3];
      v41 = *v30;
      v40 = v30[1];
      v521 = v30[2];
      v522 = v39;
      v566 = v527;
      v567 = v33;
      v568 = v30[10];
      v562 = v523;
      v563 = v36;
      v564 = v525;
      v565 = v32;
      v558 = v41;
      v559 = v40;
      v530 = *(v30 + 176);
      v569 = *(v30 + 176);
      v560 = v521;
      v561 = v35;
      v492 = v29;
      if (v29)
      {
        if (a1)
        {
          if (a1 == 1)
          {
            v42 = 13;
          }

          else
          {
            v42 = 10;
          }

          LOBYTE(v507) = v42;
          *(&v512 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v513[0] = &protocol witness table for UnsafeRawBufferPointer;
          *&v511 = &v507;
          v43 = v477;
        }

        else
        {
          *(&v512 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v513[0] = &protocol witness table for UnsafeRawBufferPointer;
          v43 = "";
          *&v511 = "\r\n";
        }

        *(&v511 + 1) = v43;
        v44 = sub_10002587C(&v511, &type metadata for UnsafeRawBufferPointer);
        v45 = *v44;
        v46 = v44[1];
        sub_1000510B4(&v519, &v515);
        sub_1004A43F4();
        sub_1000197E0(&v511);
      }

      else
      {
        sub_1000510B4(&v519, &v515);
      }

      *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
      *&v517 = &protocol witness table for UnsafeRawBufferPointer;
      *&v515 = "--";
      *(&v515 + 1) = "";
      v47 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
      v49 = *v47;
      v48 = v47[1];
      sub_1004A43F4();
      sub_1000197E0(&v515);
      v50 = *(v488 + 16);
      v51 = v483;
      for (i = v491; v50; --v50)
      {
        v56 = *v51++;
        v55 = v56;
        if ((v56 - 127) > 0xFFFFFFA0)
        {
          LOBYTE(v511) = v55;
          *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v517 = &protocol witness table for UnsafeRawBufferPointer;
          *&v515 = &v511;
          *(&v515 + 1) = i;
          v57 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
          v59 = *v57;
          v58 = v57[1];
          sub_1004A43F4();
          sub_1000197E0(&v515);
        }
      }

      if (a1)
      {
        v53 = v487;
        v54 = a1 == 1 ? 13 : 10;
        LOBYTE(v511) = v54;
        *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v517 = &protocol witness table for UnsafeRawBufferPointer;
        *&v515 = &v511;
        *(&v515 + 1) = i;
        v63 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
        v65 = *v63;
        v64 = v63[1];
        sub_1004A43F4();
        sub_1000197E0(&v515);
      }

      else
      {
        *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v517 = &protocol witness table for UnsafeRawBufferPointer;
        *&v515 = "\r\n";
        *(&v515 + 1) = "";
        v60 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
        v62 = *v60;
        v61 = v60[1];
        sub_1004A43F4();
        sub_1000197E0(&v515);
        v53 = v487;
      }

      v66 = v493;
      v67 = v486;
      (*v482)(v493, 1, 1, v486);
      sub_10000E268(v66, v53, &qword_1005D6310, &qword_1004EA000);
      if ((*v481)(v53, 1, v67) != 1)
      {
        break;
      }

      sub_100025F40(v53, &qword_1005D6310, &qword_1004EA000);
      LOBYTE(v511) = a1;
      v68 = &type metadata for UnsafeRawBufferPointer;
      *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
      *&v517 = &protocol witness table for UnsafeRawBufferPointer;
      *&v515 = "Content-Type";
      *(&v515 + 1) = "";
      v69 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
      v71 = *v69;
      v70 = v69[1];
      sub_1004A43F4();
      sub_1000197E0(&v515);
      *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
      *&v517 = &protocol witness table for UnsafeRawBufferPointer;
      *&v515 = ": ";
      *(&v515 + 1) = "";
      v72 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
      v74 = *v72;
      v73 = v72[1];
      sub_1004A43F4();
      sub_1000197E0(&v515);
      *(&v511 + 1) = 14;
      sub_100260F64(&v511, &v558, a4, a5, &v507);
      if (a1)
      {
        if (a1 == 1)
        {
          v75 = 13;
        }

        else
        {
          v75 = 10;
        }

        v514[0] = v75;
        *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v517 = &protocol witness table for UnsafeRawBufferPointer;
        *&v515 = v514;
        *(&v515 + 1) = v472;
        v95 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
        v97 = *v95;
        v96 = v95[1];
        sub_1004A43F4();
        sub_1000197E0(&v515);
      }

      else
      {
        *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v517 = &protocol witness table for UnsafeRawBufferPointer;
        *&v515 = "\r\n";
        *(&v515 + 1) = "";
        v92 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
        v94 = *v92;
        v93 = v92[1];
        sub_1004A43F4();
        sub_1000197E0(&v515);
      }

      v98 = v507;
      sub_10025B5BC(a1, &v558);
      sub_10025B944(a1, &v558);
      sub_10025BD28(a1, &v558);
      v600[8] = v566;
      v600[9] = v567;
      v600[10] = v568;
      v600[4] = v562;
      v600[5] = v563;
      v600[6] = v564;
      v600[7] = v565;
      v600[0] = v558;
      v600[1] = v559;
      v600[2] = v560;
      v601 = v569;
      v600[3] = v561;
      v99 = sub_10000FE88(v600) == 1;
      v100 = v491;
      if (v99)
      {
        UInt32.init(_:)(v600);
      }

      else
      {
        v101 = UInt32.init(_:)(v600);
        v604 = *(v101 + 48);
        v102 = *(&v604 + 1);
        if (*(&v604 + 1))
        {
          v501 = v604;
          LOBYTE(v507) = a1;
          *(&v512 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v513[0] = &protocol witness table for UnsafeRawBufferPointer;
          *&v511 = "Content-Description";
          *(&v511 + 1) = "";
          v103 = sub_10002587C(&v511, &type metadata for UnsafeRawBufferPointer);
          v104 = *v103;
          v105 = v103[1];
          sub_1000510B4(&v558, &v515);
          sub_10000E268(&v604, &v515, &qword_1005D4660, &qword_1004E05E8);
          a4 = v489;
          sub_1004A43F4();
          sub_1000197E0(&v511);
          *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v517 = &protocol witness table for UnsafeRawBufferPointer;
          *&v515 = ": ";
          *(&v515 + 1) = "";
          v106 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
          v108 = *v106;
          v107 = v106[1];
          sub_1004A43F4();
          sub_1000197E0(&v515);
          v508 = 21;
          v100 = v491;
          sub_10025FD88(v501, v102, &v507);
          sub_100025F40(&v604, &qword_1005D4660, &qword_1004E05E8);
          sub_100267804(a1);
          sub_100051110(&v558);
        }
      }

      sub_10025C1CC(a1, &v558);
      sub_10025C348(a1, &v558);
      v602[8] = v566;
      v602[9] = v567;
      v602[10] = v568;
      v602[4] = v562;
      v602[5] = v563;
      v602[6] = v564;
      v602[7] = v565;
      v602[0] = v558;
      v602[1] = v559;
      v602[2] = v560;
      v603 = v569;
      v602[3] = v561;
      if (sub_10000FE88(v602) == 1)
      {
        UInt32.init(_:)(v602);
      }

      else
      {
        v109 = *(UInt32.init(_:)(v602) + 0x50);
        if (v109 > 0)
        {
          sub_1002628DC(a1, v109);
        }
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v110 = 13;
        }

        else
        {
          v110 = 10;
        }

        LOBYTE(v511) = v110;
        *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v517 = &protocol witness table for UnsafeRawBufferPointer;
        *&v515 = &v511;
        *(&v515 + 1) = v100;
      }

      else
      {
        *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v517 = &protocol witness table for UnsafeRawBufferPointer;
        *&v515 = "\r\n";
        *(&v515 + 1) = "";
      }

      v111 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
      v113 = *v111;
      v112 = v111[1];
      sub_1004A43F4();
      sub_1000197E0(&v515);
      v114 = v492;
LABEL_396:
      v590[8] = v566;
      v590[9] = v567;
      v590[10] = v568;
      v590[4] = v562;
      v590[5] = v563;
      v590[6] = v564;
      v590[7] = v565;
      v590[0] = v558;
      v590[1] = v559;
      v590[2] = v560;
      v591 = v569;
      v590[3] = v561;
      if (sub_10000FE88(v590) == 1)
      {
        v449 = UInt32.init(_:)(v590);
        if (!v98)
        {
          sub_100051110(&v558);
          goto LABEL_5;
        }

        sub_10025C4F4(a1, *v449, v98, a4, a5);
      }

      else
      {
        UInt32.init(_:)(v590);
      }

      sub_100051110(&v558);

LABEL_5:
      v13 = v480;
      v29 = v114 + 1;
      sub_100025F40(v493, &qword_1005D6310, &qword_1004EA000);
      if (v29 == v485)
      {
        goto LABEL_405;
      }
    }

    v76 = v490;
    v77 = sub_1002678D8(v53, v490);
    a1 = v460;
    __chkstk_darwin(v77);
    LOBYTE(v456) = v78;
    v457 = a4;
    __chkstk_darwin(v79);
    v458 = sub_100269B18;
    v459 = v80;
    v81 = v76;
    v82 = v476;
    sub_10026796C(v81, v476, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v83 = v82;
      v84 = v470;
      v85 = v475;
      (*v473)(v470, v83, v475);
      sub_1001B60F8();
      sub_1004A5E64();
      sub_1004A5EA4();
      (*v474)(v84, v85);
      if (v515 == v511)
      {
LABEL_69:
        v588[8] = v566;
        v588[9] = v567;
        v588[10] = v568;
        v588[4] = v562;
        v588[5] = v563;
        v588[6] = v564;
        v588[7] = v565;
        v588[0] = v558;
        v588[1] = v559;
        v588[2] = v560;
        v589 = v569;
        v588[3] = v561;
        LODWORD(v471) = sub_10000FE88(v588);
        v479 = v460;
        UInt32.init(_:)(v588);
        v68 = &type metadata for UnsafeRawBufferPointer;
        memset(v514, 0, 64);
        v514[64] = 3;
        sub_1000510B4(&v558, &v515);
        v511 = 0u;
        v512 = 0u;
        *&v513[0] = 0x1FFFFFFF0ELL;
        *(v513 + 8) = 0u;
        *(&v513[1] + 8) = 0u;
        BYTE8(v513[2]) = 0;
        v129 = sub_1002AC09C();
        if (v132 == 2)
        {
          v498 = 0;
          if ((*&v513[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            v494 = 0;
            v495 = 0;
            v496 = 0;
            v497 = 0;
            v133 = v499;
            v134 = v489;
            goto LABEL_86;
          }

          v160 = *(&v513[1] + 1);
          v159 = *&v513[1];
          v496 = 0;
          v497 = 0;
          v494 = 0;
          v495 = 0;
          v500 = 0;
          v148 = v489;
          if (!(*&v513[0] >> 59))
          {
            goto LABEL_89;
          }
        }

        else
        {
          v135 = v130;
          v136 = v131;
          v137 = v132;
          v500 = 0;
          v497 = 0;
          v498 = 0;
          v495 = 0;
          v496 = 0;
          v494 = 0;
          do
          {
            v501 = v129;
            sub_1002AB9E4(v129, v135, v136, v137 & 1, v531);
            v141 = v531[0];
            v142 = v531[1];
            v143 = v531[2];
            v144 = v531[3];
            v145 = v532;
            v146 = v533;
            if (v532 >> 59 == 9)
            {

              v494 = v141;
              v495 = v142;
              v496 = v143;
              v497 = v144;
              v498 = v145;
              v500 = v146;
            }

            if ((*&v513[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
            {
              if (*&v513[1])
              {
                v147 = (*(&v513[1] + 1) - *&v513[1]);
              }

              else
              {
                v147 = 0;
              }

              if ((v147 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_407;
              }

              sub_1002863C4(3, v499, 1, sub_100269B14, v505, 0, v147, *&v513[1], *(&v513[1] + 1));
              sub_100025F40(&v511, &qword_1005D6328, &qword_1004ECE90);
            }

            *&v511 = v141;
            *(&v511 + 1) = v142;
            *&v512 = v143;
            *(&v512 + 1) = v144;
            *&v513[0] = v145;
            *(&v513[0] + 1) = v146;
            *&v513[1] = v501;
            *(&v513[1] + 1) = v135;
            *&v513[2] = v136;
            BYTE8(v513[2]) = v137 & 1;
            v129 = sub_1002AC09C();
            v135 = v138;
            v136 = v139;
            v137 = v140;
          }

          while (v140 != 2);
          v148 = v489;
          if ((*&v513[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            a5 = v465;
            v133 = v499;
            v68 = &type metadata for UnsafeRawBufferPointer;
            v149 = v500;
            if (!v500)
            {
              v134 = v489;
LABEL_86:
              LOBYTE(v507) = v133;
              *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v517 = &protocol witness table for UnsafeRawBufferPointer;
              *&v515 = "Content-Type";
              *(&v515 + 1) = "";
              v150 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
              v152 = *v150;
              v151 = v150[1];
              sub_1004A43F4();
              sub_1000197E0(&v515);
              *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v517 = &protocol witness table for UnsafeRawBufferPointer;
              *&v515 = ": ";
              *(&v515 + 1) = "";
              v153 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
              v155 = *v153;
              v154 = v153[1];
              sub_1004A43F4();
              sub_1000197E0(&v515);
              v508 = 14;
              sub_1002616C0(&v507, &v558, sub_100269B14, v505, v134, &v515);
              sub_1002652C0(v133, sub_100269B14);
              v156 = v515;
              v149 = 0;
              v157 = v133;
              if (!v133)
              {
LABEL_87:
                *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
                *&v517 = &protocol witness table for UnsafeRawBufferPointer;
                v158 = "";
                *&v515 = "\r\n";
LABEL_104:
                *(&v515 + 1) = v158;
                v163 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
                v165 = *v163;
                v164 = v163[1];
                sub_1004A43F4();
                sub_1000197E0(&v515);
                v114 = v492;
                if (v156)
                {

                  sub_100051110(&v558);
                }

                else if (v149)
                {
                  v166 = v492;
                  v552 = v494;
                  v553 = v495;
                  v554 = v496;
                  v555 = v497;
                  v556 = v498;
                  v557 = v149;
                  v167 = sub_100271A2C();
                  if (v169 == 2)
                  {

                    sub_100051110(&v558);
                    v156 = 0;
                    v114 = v166;
                  }

                  else
                  {
                    v193 = v168;
                    if (v169)
                    {
                      if (v167)
                      {
                        v194 = v168 - v167;
                      }

                      else
                      {
                        v194 = 0;
                      }

                      if (v194 < 0)
                      {
                        goto LABEL_428;
                      }

                      v195 = v469;
                      v156 = sub_1002871D4(0, v194, v167, v193);
                      v469 = v195;
                    }

                    else
                    {
                      v156 = sub_10029E8D4(v167, v168);
                    }

                    sub_100051110(&v558);
                    v114 = v166;
                  }
                }

                else
                {
                  sub_100051110(&v558);
                  v156 = 0;
                }

                *&v515 = v156;
                sub_1002679EC(v490);
                goto LABEL_395;
              }

LABEL_100:
              if (v157 == 1)
              {
                v162 = 13;
              }

              else
              {
                v162 = 10;
              }

              LOBYTE(v507) = v162;
              *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v517 = &protocol witness table for UnsafeRawBufferPointer;
              *&v515 = &v507;
              v158 = v477;
              goto LABEL_104;
            }

            goto LABEL_98;
          }

          v160 = *(&v513[1] + 1);
          v159 = *&v513[1];
          a5 = v465;
          v68 = &type metadata for UnsafeRawBufferPointer;
          if (!(*&v513[0] >> 59))
          {
LABEL_89:
            if (v471 != 1)
            {
              if (v500)
              {
                v517 = v513[0];
                v518[0] = v513[1];
                *(v518 + 9) = *(&v513[1] + 9);
                v515 = v511;
                v516 = v512;
                sub_10000E268(&v515, &v507, &qword_1005D6330, &qword_1004ECEA0);
                v156 = 0;
              }

              else
              {
                v302 = v499;
                v503[0] = v499;
                v509 = &type metadata for UnsafeRawBufferPointer;
                v510 = &protocol witness table for UnsafeRawBufferPointer;
                v507 = "Content-Type";
                v508 = "";
                v303 = sub_10002587C(&v507, &type metadata for UnsafeRawBufferPointer);
                v304 = *v303;
                v305 = v303[1];
                sub_10000E268(&v511, &v515, &qword_1005D6328, &qword_1004ECE90);
                v306 = v489;
                sub_1004A43F4();
                sub_1000197E0(&v507);
                *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
                *&v517 = &protocol witness table for UnsafeRawBufferPointer;
                *&v515 = ": ";
                *(&v515 + 1) = "";
                v307 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
                v309 = *v307;
                v308 = v307[1];
                sub_1004A43F4();
                sub_1000197E0(&v515);
                v504 = 14;
                sub_1002616C0(v503, &v558, sub_100269B14, v505, v306, &v515);
                sub_1002652C0(v302, sub_100269B14);
                v156 = v515;
              }

              if (v159)
              {
                v310 = v160 - v159;
              }

              else
              {
                v310 = 0;
              }

              if (v310 < 0)
              {
                goto LABEL_417;
              }

              v311 = v499;
              sub_1002863C4(3, v499, 1, sub_100269B14, v505, 0, v310, v159, v160);
              v149 = v500;
              v157 = v311;
              if (!v311)
              {
                goto LABEL_87;
              }

              goto LABEL_100;
            }

            v149 = v500;
            if (v500)
            {
              v156 = 0;
              v133 = v499;
            }

            else
            {
              v133 = v499;
              LOBYTE(v507) = v499;
              *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v517 = &protocol witness table for UnsafeRawBufferPointer;
              *&v515 = "Content-Type";
              *(&v515 + 1) = "";
              v296 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
              v298 = *v296;
              v297 = v296[1];
              sub_1004A43F4();
              sub_1000197E0(&v515);
              *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v517 = &protocol witness table for UnsafeRawBufferPointer;
              *&v515 = ": ";
              *(&v515 + 1) = "";
              v299 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
              v301 = *v299;
              v300 = v299[1];
              sub_1004A43F4();
              sub_1000197E0(&v515);
              v508 = 14;
              sub_1002616C0(&v507, &v558, sub_100269B14, v505, v148, &v515);
              sub_1002652C0(v133, sub_100269B14);
              v156 = v515;
            }

            goto LABEL_99;
          }
        }

        sub_100025F40(&v511, &qword_1005D6328, &qword_1004ECE90);
        if (v159)
        {
          v161 = v160 - v159;
        }

        else
        {
          v161 = 0;
        }

        if (v161 < 0)
        {
          goto LABEL_410;
        }

        v133 = v499;
        sub_1002863C4(3, v499, 1, sub_100269B14, v505, 0, v161, v159, v160);
        v149 = v500;
        if (!v500)
        {
          LOBYTE(v507) = v133;
          *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v517 = &protocol witness table for UnsafeRawBufferPointer;
          *&v515 = "Content-Type";
          *(&v515 + 1) = "";
          v217 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
          v219 = *v217;
          v218 = v217[1];
          sub_1004A43F4();
          sub_1000197E0(&v515);
          *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v517 = &protocol witness table for UnsafeRawBufferPointer;
          *&v515 = ": ";
          *(&v515 + 1) = "";
          v220 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
          v222 = *v220;
          v221 = v220[1];
          sub_1004A43F4();
          sub_1000197E0(&v515);
          v508 = 14;
          sub_1002616C0(&v507, &v558, sub_100269B14, v505, v148, &v515);
          sub_1002652C0(v133, sub_100269B14);
          v156 = v515;
LABEL_99:
          v157 = v133;
          if (!v133)
          {
            goto LABEL_87;
          }

          goto LABEL_100;
        }

LABEL_98:
        v156 = 0;
        goto LABEL_99;
      }
    }

    else
    {
      v86 = *v82;
      v87 = v82[1];
      v88 = v87 >> 62;
      if ((v87 >> 62) > 1)
      {
        if (v88 != 2)
        {
          sub_100014D40(v86, v87);
          goto LABEL_69;
        }

        v90 = *(v86 + 16);
        v91 = *(v86 + 24);
        sub_100014D40(v86, v87);
      }

      else if (v88)
      {
        v115 = *v82;
        sub_100014D40(v86, v87);
        v90 = v115;
        v91 = v115 >> 32;
      }

      else
      {
        v89 = v82[1];
        sub_100014D40(v86, v87);
        v90 = 0;
        v91 = BYTE6(v89);
      }

      if (v90 == v91)
      {
        goto LABEL_69;
      }
    }

    v116 = v468;
    sub_10026796C(v490, v468, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v117 = v475;
      v118 = (*v473)(v13, v116, v475);
      v119 = v13;
      v120 = v117;
      __chkstk_darwin(v118);
      v456 = v119;
      v457 = sub_100269AF8;
      v458 = &v456;
      sub_10000C9C0(&qword_1005D6320, &qword_1004EA010);
      v121 = v469;
      sub_1004A5314();
      v469 = v121;
      if (v121)
      {

        (*v474)(v119, v120);
        __break(1u);
        return;
      }

      sub_1002679EC(v490);
      (*v474)(v119, v120);
      v68 = &type metadata for UnsafeRawBufferPointer;
      v114 = v492;
      goto LABEL_395;
    }

    v123 = *v116;
    v122 = v116[1];
    v124 = v122 >> 62;
    v479 = v460;
    v463 = v123;
    v464 = v122;
    if ((v122 >> 62) <= 1)
    {
      if (!v124)
      {
        v502[0] = v123;
        LOWORD(v502[1]) = v122;
        BYTE2(v502[1]) = BYTE2(v122);
        BYTE3(v502[1]) = BYTE3(v122);
        BYTE4(v502[1]) = BYTE4(v122);
        BYTE5(v502[1]) = BYTE5(v122);
        v125 = memchr(v502, 10, BYTE6(v122));
        if (!v125 || (v126 = v125 - v502, v125 - v502 < 0))
        {
          v128 = BYTE6(v122);
          goto LABEL_278;
        }

        v127 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          goto LABEL_411;
        }

        if (BYTE6(v122) < v127)
        {
          v128 = BYTE6(v122);
          a5 = v465;
          goto LABEL_278;
        }

        if (v127 < v126)
        {
          goto LABEL_412;
        }

        if (v125 == v502)
        {
          v321 = 0;
        }

        else if (*(v502 + v126 - 1) == 13)
        {
          v321 = v126 - 1;
        }

        else
        {
          v321 = v125 - v502;
        }

        while (1)
        {
          v329 = v502 + v127;
          v330 = memchr(v502 + v127, 10, BYTE6(v122) - v127);
          if (!v330)
          {
            goto LABEL_277;
          }

          v331 = v330 - v329;
          if (v330 - v329 < 0)
          {
            goto LABEL_277;
          }

          v332 = v331 + 1;
          if (__OFADD__(v331, 1))
          {
            goto LABEL_411;
          }

          if (BYTE6(v122) - v127 < v332)
          {
LABEL_277:
            v128 = BYTE6(v122);
            a5 = v465;
            goto LABEL_278;
          }

          v333 = v331 + v127;
          if (__OFADD__(v331, v127))
          {
            goto LABEL_413;
          }

          v128 = v332 + v127;
          if (__OFADD__(v332, v127))
          {
            goto LABEL_414;
          }

          if (v332 < v331 || v128 < v333)
          {
            goto LABEL_412;
          }

          if (v127 < v333)
          {
            if (v333 > BYTE6(v122))
            {
              goto LABEL_425;
            }

            if (*(v502 + v333 - 1) == 13)
            {
              --v333;
            }
          }

          if (v127 == v333)
          {
            break;
          }

          if (BYTE6(v122) < v128)
          {
            goto LABEL_415;
          }

          v321 = v333;
          v334 = v128 < v127;
          v127 += v332;
          if (v334)
          {
            goto LABEL_416;
          }
        }

        if (v128 < v321 || BYTE6(v122) < v128)
        {
          goto LABEL_438;
        }

        v334 = v128 < v127;
        a5 = v465;
        v68 = 0x1FFFFFFF0ELL;
        if (v334)
        {
          __break(1u);
LABEL_405:
          sub_100267804(a1);
          *(&v520 + 1) = v68;
          *&v521 = &protocol witness table for UnsafeRawBufferPointer;
          *&v519 = "--";
          *(&v519 + 1) = "";
          v450 = sub_10002587C(&v519, v68);
          v452 = *v450;
          v451 = v450[1];
          sub_1004A43F4();
          sub_1000197E0(&v519);
          sub_1002699A0(v488);
          *(&v520 + 1) = v68;
          *&v521 = &protocol witness table for UnsafeRawBufferPointer;
          *&v519 = "--";
          *(&v519 + 1) = "";
          v453 = sub_10002587C(&v519, v68);
          v455 = *v453;
          v454 = v453[1];
          sub_1004A43F4();
          sub_1000197E0(&v519);
          sub_100267804(a1);
          return;
        }

LABEL_278:
        sub_100296A78(3, 0, BYTE6(v122), v502, v502 + BYTE6(v122), v128);
        LODWORD(v496) = v335;
        v500 = v336;
        v462 = v337;
        v339 = v338;
        v594[8] = v566;
        v594[9] = v567;
        v594[10] = v568;
        v594[4] = v562;
        v594[5] = v563;
        v594[6] = v564;
        v594[7] = v565;
        v594[0] = v558;
        v594[1] = v559;
        v594[2] = v560;
        v595 = v569;
        v594[3] = v561;
        v340 = sub_10000FE88(v594);
        UInt32.init(_:)(v594);
        if (v339 < 0)
        {
          goto LABEL_424;
        }

        if (v500)
        {
          v341 = v500 + v339;
        }

        else
        {
          v341 = 0;
        }

        sub_1002AADD4(v500, v341, v496, v514);
        sub_1000510B4(&v558, &v515);
        v511 = 0u;
        v512 = 0u;
        *&v513[0] = 0x1FFFFFFF0ELL;
        *(v513 + 8) = 0u;
        *(&v513[1] + 8) = 0u;
        BYTE8(v513[2]) = 0;
        v501 = sub_1002AC09C();
        if (v344 == 2)
        {
          v495 = 0;
          v345 = 0;
          if ((*&v513[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            v466 = 0;
            v467 = 0;
            v471 = 0;
            v494 = 0;
            v346 = v499;
            v347 = v489;
            v68 = &type metadata for UnsafeRawBufferPointer;
            goto LABEL_319;
          }

          v461 = v340;
          v373 = *(&v513[1] + 1);
          v372 = *&v513[1];
          v494 = 0;
          v471 = 0;
          v466 = 0;
          v467 = 0;
          if (!(*&v513[0] >> 59))
          {
LABEL_304:
            if (v461 == 1)
            {
              if (v345)
              {
                v293 = 0;
                v68 = &type metadata for UnsafeRawBufferPointer;
                goto LABEL_307;
              }

              v376 = v499;
              goto LABEL_368;
            }

            if (v345)
            {
              v517 = v513[0];
              v518[0] = v513[1];
              *(v518 + 9) = *(&v513[1] + 9);
              v515 = v511;
              v516 = v512;
              sub_10000E268(&v515, &v507, &qword_1005D6330, &qword_1004ECEA0);
              v293 = 0;
            }

            else
            {
              v434 = v499;
              v503[0] = v499;
              v509 = &type metadata for UnsafeRawBufferPointer;
              v510 = &protocol witness table for UnsafeRawBufferPointer;
              v507 = "Content-Type";
              v508 = "";
              v435 = sub_10002587C(&v507, &type metadata for UnsafeRawBufferPointer);
              v498 = 0;
              v436 = *v435;
              v437 = v435[1];
              sub_10000E268(&v511, &v515, &qword_1005D6328, &qword_1004ECE90);
              v345 = v498;
              sub_1004A43F4();
              sub_1000197E0(&v507);
              *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v517 = &protocol witness table for UnsafeRawBufferPointer;
              *&v515 = ": ";
              *(&v515 + 1) = "";
              v438 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
              v440 = *v438;
              v439 = v438[1];
              sub_1004A43F4();
              sub_1000197E0(&v515);
              v504 = 14;
              sub_1002616C0(v503, &v558, sub_100269B14, v505, v489, &v515);
              sub_1002652C0(v434, sub_100269B14);
              v293 = v515;
            }

            if (v372)
            {
              v441 = v373 - v372;
            }

            else
            {
              v441 = 0;
            }

            if (v441 < 0)
            {
              goto LABEL_434;
            }

            v376 = v499;
            sub_1002863C4(v496, v499, 1, sub_100269B14, v505, 0, v441, v372, v373);
            goto LABEL_375;
          }
        }

        else
        {
          v348 = v342;
          v349 = v343;
          v350 = v344;
          v461 = v340;
          v498 = 0;
          v494 = 0;
          v495 = 0;
          v471 = 0;
          v466 = 0;
          v467 = 0;
          v351 = 0;
          do
          {
            sub_1002AB9E4(v501, v348, v349, v350 & 1, &v540);
            v357 = v540;
            v358 = v541;
            v353 = v542;
            v359 = v543;
            v360 = v544;
            v361 = v545;
            if (v544 >> 59 == 9)
            {
              v497 = v545;
              v362 = v350;
              v363 = v544;
              v364 = v349;
              v365 = v348;
              v366 = v543;
              v367 = v540;
              v368 = v541;
              v369 = v542;

              v353 = v369;
              v358 = v368;
              v357 = v367;
              v359 = v366;
              v348 = v365;
              v349 = v364;
              v360 = v363;
              v350 = v362;
              v361 = v497;
              v466 = v357;
              v467 = v358;
              v471 = v353;
              v494 = v359;
              v495 = v360;
              v498 = v497;
            }

            if (!(v351 & 1 | (v501 == 0)) && v500 && &v501[-v500] >= 1)
            {
              v370 = v353;
              sub_1002863C4(v496, v499, 1, sub_100269B14, v505, 0, &v501[-v500], v500, v462);
              v353 = v370;
            }

            if ((*&v513[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
            {
              if (*&v513[1])
              {
                v371 = (*(&v513[1] + 1) - *&v513[1]);
              }

              else
              {
                v371 = 0;
              }

              if ((v371 & 0x8000000000000000) != 0)
              {
                goto LABEL_409;
              }

              v352 = v353;
              sub_1002863C4(v496, v499, 1, sub_100269B14, v505, 0, v371, *&v513[1], *(&v513[1] + 1));
              sub_100025F40(&v511, &qword_1005D6328, &qword_1004ECE90);
              v353 = v352;
            }

            *&v511 = v357;
            *(&v511 + 1) = v358;
            *&v512 = v353;
            *(&v512 + 1) = v359;
            *&v513[0] = v360;
            *(&v513[0] + 1) = v361;
            *&v513[1] = v501;
            *(&v513[1] + 1) = v348;
            *&v513[2] = v349;
            BYTE8(v513[2]) = v350 & 1;
            v501 = sub_1002AC09C();
            v348 = v354;
            v349 = v355;
            v350 = v356;
            v351 = 1;
          }

          while (v356 != 2);
          if ((*&v513[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            a5 = v465;
            v68 = &type metadata for UnsafeRawBufferPointer;
            v345 = v498;
            if (!v498)
            {
              v346 = v499;
              v347 = v489;
LABEL_319:
              LOBYTE(v507) = v346;
              *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v517 = &protocol witness table for UnsafeRawBufferPointer;
              *&v515 = "Content-Type";
              *(&v515 + 1) = "";
              v377 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
              v379 = *v377;
              v378 = v377[1];
              sub_1004A43F4();
              sub_1000197E0(&v515);
              *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v517 = &protocol witness table for UnsafeRawBufferPointer;
              *&v515 = ": ";
              *(&v515 + 1) = "";
              v380 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
              v382 = *v380;
              v381 = v380[1];
              sub_1004A43F4();
              sub_1000197E0(&v515);
              v508 = 14;
              sub_1002616C0(&v507, &v558, sub_100269B14, v505, v347, &v515);
              sub_1002652C0(v346, sub_100269B14);
              v293 = v515;
              v345 = 0;
              v374 = v346;
              if (!v346)
              {
LABEL_320:
                *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
                *&v517 = &protocol witness table for UnsafeRawBufferPointer;
                v383 = "";
                *&v515 = "\r\n";
                goto LABEL_381;
              }

LABEL_377:
              if (v374 == 1)
              {
                v442 = 13;
              }

              else
              {
                v442 = 10;
              }

              LOBYTE(v507) = v442;
              *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v517 = &protocol witness table for UnsafeRawBufferPointer;
              *&v515 = &v507;
              v383 = v477;
LABEL_381:
              *(&v515 + 1) = v383;
              v443 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
              v445 = *v443;
              v444 = v443[1];
              sub_1004A43F4();
              sub_1000197E0(&v515);
              v114 = v492;
              if (!v293)
              {
                if (v345)
                {
                  v402 = v492;
                  v576 = v466;
                  v577 = v467;
                  v578 = v471;
                  v579 = v494;
                  v580 = v495;
                  v581 = v345;
                  v403 = sub_100271A2C();
                  if (v447 == 2)
                  {
                    goto LABEL_384;
                  }

                  v406 = v446;
                  if (v447)
                  {
                    if (v403)
                    {
                      v407 = v446 - v403;
                    }

                    else
                    {
                      v407 = 0;
                    }

                    if (v407 < 0)
                    {
                      goto LABEL_437;
                    }

                    goto LABEL_391;
                  }

LABEL_392:
                  v293 = sub_10029E8D4(v403, v406);
                  v114 = v402;
                  goto LABEL_393;
                }

LABEL_385:
                sub_100051110(&v558);
                v293 = 0;
                goto LABEL_394;
              }

LABEL_393:

              sub_100051110(&v558);
              goto LABEL_394;
            }

            v293 = 0;
LABEL_307:
            v374 = v499;
            if (!v499)
            {
              goto LABEL_320;
            }

            goto LABEL_377;
          }

          v373 = *(&v513[1] + 1);
          v372 = *&v513[1];
          a5 = v465;
          v345 = v498;
          if (!(*&v513[0] >> 59))
          {
            goto LABEL_304;
          }
        }

        sub_100025F40(&v511, &qword_1005D6328, &qword_1004ECE90);
        if (v372)
        {
          v375 = v373 - v372;
        }

        else
        {
          v375 = 0;
        }

        if (v375 < 0)
        {
          goto LABEL_431;
        }

        v376 = v499;
        sub_1002863C4(v496, v499, 1, sub_100269B14, v505, 0, v375, v372, v373);
        if (!v345)
        {
LABEL_368:
          LOBYTE(v507) = v376;
          v68 = &type metadata for UnsafeRawBufferPointer;
          *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v517 = &protocol witness table for UnsafeRawBufferPointer;
          *&v515 = "Content-Type";
          *(&v515 + 1) = "";
          v428 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
          v430 = *v428;
          v429 = v428[1];
          sub_1004A43F4();
          sub_1000197E0(&v515);
          *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v517 = &protocol witness table for UnsafeRawBufferPointer;
          *&v515 = ": ";
          *(&v515 + 1) = "";
          v431 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
          v433 = *v431;
          v432 = v431[1];
          sub_1004A43F4();
          sub_1000197E0(&v515);
          v508 = 14;
          sub_1002616C0(&v507, &v558, sub_100269B14, v505, v489, &v515);
          sub_1002652C0(v376, sub_100269B14);
          v293 = v515;
          goto LABEL_376;
        }

        v293 = 0;
LABEL_375:
        v68 = &type metadata for UnsafeRawBufferPointer;
LABEL_376:
        v374 = v376;
        if (!v376)
        {
          goto LABEL_320;
        }

        goto LABEL_377;
      }

      if (v123 >> 32 < v123)
      {
        goto LABEL_419;
      }

      v196 = sub_1004A40D4();
      if (v196)
      {
        v197 = sub_1004A4104();
        if (__OFSUB__(v123, v197))
        {
          goto LABEL_427;
        }

        v196 += v123 - v197;
      }

      v198 = sub_1004A40F4();
      if (v198 >= (v123 >> 32) - v123)
      {
        v199 = (v123 >> 32) - v123;
      }

      else
      {
        v199 = v198;
      }

      if (v196)
      {
        v200 = v199;
      }

      else
      {
        v200 = 0;
      }

      if (v200 < 0)
      {
        goto LABEL_421;
      }

      v201 = v199 + v196;
      if (v196)
      {
        v202 = v201;
      }

      else
      {
        v202 = 0;
      }

      sub_100287BA8(3u, 0, v200, v196);
      if (v204)
      {
        v205 = v200;
      }

      else
      {
        v205 = v203;
      }

      sub_100296A78(3, 0, v200, v196, v202, v205);
      LODWORD(v496) = v206;
      v500 = v207;
      v462 = v208;
      v210 = v209;
      v596[8] = v566;
      v596[9] = v567;
      v596[10] = v568;
      v596[4] = v562;
      v596[5] = v563;
      v596[6] = v564;
      v596[7] = v565;
      v596[0] = v558;
      v596[1] = v559;
      v596[2] = v560;
      v597 = v569;
      v596[3] = v561;
      v211 = sub_10000FE88(v596);
      UInt32.init(_:)(v596);
      if (v210 < 0)
      {
        goto LABEL_423;
      }

      if (v500)
      {
        v254 = v500 + v210;
      }

      else
      {
        v254 = 0;
      }

      sub_1002AADD4(v500, v254, v496, v514);
      sub_1000510B4(&v558, &v515);
      v511 = 0u;
      v512 = 0u;
      *&v513[0] = 0x1FFFFFFF0ELL;
      *(v513 + 8) = 0u;
      *(&v513[1] + 8) = 0u;
      BYTE8(v513[2]) = 0;
      v501 = sub_1002AC09C();
      if (v257 == 2)
      {
        v495 = 0;
        v258 = 0;
        if ((*&v513[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
        {
          v466 = 0;
          v467 = 0;
          v471 = 0;
          v494 = 0;
          v259 = v499;
          v260 = v489;
          v68 = &type metadata for UnsafeRawBufferPointer;
          goto LABEL_257;
        }

        v461 = v211;
        v315 = *(&v513[1] + 1);
        v314 = *&v513[1];
        v494 = 0;
        v471 = 0;
        v466 = 0;
        v467 = 0;
        if (!(*&v513[0] >> 59))
        {
LABEL_228:
          if (v461 == 1)
          {
            if (v258)
            {
              v293 = 0;
              v68 = &type metadata for UnsafeRawBufferPointer;
              goto LABEL_231;
            }

            v320 = v499;
            goto LABEL_345;
          }

          if (v258)
          {
            v517 = v513[0];
            v518[0] = v513[1];
            *(v518 + 9) = *(&v513[1] + 9);
            v515 = v511;
            v516 = v512;
            sub_10000E268(&v515, &v507, &qword_1005D6330, &qword_1004ECEA0);
            v293 = 0;
          }

          else
          {
            v414 = v499;
            v503[0] = v499;
            v509 = &type metadata for UnsafeRawBufferPointer;
            v510 = &protocol witness table for UnsafeRawBufferPointer;
            v507 = "Content-Type";
            v508 = "";
            v415 = sub_10002587C(&v507, &type metadata for UnsafeRawBufferPointer);
            v498 = 0;
            v416 = *v415;
            v417 = v415[1];
            sub_10000E268(&v511, &v515, &qword_1005D6328, &qword_1004ECE90);
            v258 = v498;
            sub_1004A43F4();
            sub_1000197E0(&v507);
            *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
            *&v517 = &protocol witness table for UnsafeRawBufferPointer;
            *&v515 = ": ";
            *(&v515 + 1) = "";
            v418 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
            v420 = *v418;
            v419 = v418[1];
            sub_1004A43F4();
            sub_1000197E0(&v515);
            v504 = 14;
            sub_1002616C0(v503, &v558, sub_100269B14, v505, v489, &v515);
            sub_1002652C0(v414, sub_100269B14);
            v293 = v515;
          }

          if (v314)
          {
            v421 = v315 - v314;
          }

          else
          {
            v421 = 0;
          }

          if (v421 < 0)
          {
            goto LABEL_433;
          }

          v320 = v499;
          sub_1002863C4(v496, v499, 1, sub_100269B14, v505, 0, v421, v314, v315);
          goto LABEL_352;
        }
      }

      else
      {
        v261 = v255;
        v262 = v256;
        v263 = v257;
        v461 = v211;
        v498 = 0;
        v494 = 0;
        v495 = 0;
        v471 = 0;
        v466 = 0;
        v467 = 0;
        v264 = 0;
        do
        {
          sub_1002AB9E4(v501, v261, v262, v263 & 1, &v546);
          v268 = v546;
          v269 = v547;
          v270 = v548;
          v271 = v549;
          v272 = v550;
          v273 = v551;
          if (v550 >> 59 == 9)
          {
            v497 = v551;
            v274 = v263;
            v275 = v550;
            v276 = v262;
            v277 = v261;
            v278 = v547;
            v279 = v546;
            v280 = v549;
            v281 = v548;

            v270 = v281;
            v271 = v280;
            v268 = v279;
            v269 = v278;
            v261 = v277;
            v262 = v276;
            v272 = v275;
            v263 = v274;
            v273 = v497;
            v466 = v268;
            v467 = v269;
            v471 = v270;
            v494 = v271;
            v495 = v272;
            v498 = v497;
          }

          if (!(v264 & 1 | (v501 == 0)) && v500 && &v501[-v500] >= 1)
          {
            v282 = v270;
            sub_1002863C4(v496, v499, 1, sub_100269B14, v505, 0, &v501[-v500], v500, v462);
            v270 = v282;
          }

          if ((*&v513[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
          {
            if (*&v513[1])
            {
              v283 = (*(&v513[1] + 1) - *&v513[1]);
            }

            else
            {
              v283 = 0;
            }

            if ((v283 & 0x8000000000000000) != 0)
            {
              goto LABEL_408;
            }

            v284 = v270;
            sub_1002863C4(v496, v499, 1, sub_100269B14, v505, 0, v283, *&v513[1], *(&v513[1] + 1));
            sub_100025F40(&v511, &qword_1005D6328, &qword_1004ECE90);
            v270 = v284;
          }

          *&v511 = v268;
          *(&v511 + 1) = v269;
          *&v512 = v270;
          *(&v512 + 1) = v271;
          *&v513[0] = v272;
          *(&v513[0] + 1) = v273;
          *&v513[1] = v501;
          *(&v513[1] + 1) = v261;
          *&v513[2] = v262;
          BYTE8(v513[2]) = v263 & 1;
          v501 = sub_1002AC09C();
          v261 = v265;
          v262 = v266;
          v263 = v267;
          v264 = 1;
        }

        while (v267 != 2);
        if ((*&v513[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
        {
          a5 = v465;
          v68 = &type metadata for UnsafeRawBufferPointer;
          v258 = v498;
          if (!v498)
          {
            v259 = v499;
            v260 = v489;
LABEL_257:
            LOBYTE(v507) = v259;
            *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
            *&v517 = &protocol witness table for UnsafeRawBufferPointer;
            *&v515 = "Content-Type";
            *(&v515 + 1) = "";
            v322 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
            v324 = *v322;
            v323 = v322[1];
            sub_1004A43F4();
            sub_1000197E0(&v515);
            *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
            *&v517 = &protocol witness table for UnsafeRawBufferPointer;
            *&v515 = ": ";
            *(&v515 + 1) = "";
            v325 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
            v327 = *v325;
            v326 = v325[1];
            sub_1004A43F4();
            sub_1000197E0(&v515);
            v508 = 14;
            sub_1002616C0(&v507, &v558, sub_100269B14, v505, v260, &v515);
            sub_1002652C0(v259, sub_100269B14);
            v293 = v515;
            v258 = 0;
            v316 = v259;
            if (!v259)
            {
LABEL_258:
              *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v517 = &protocol witness table for UnsafeRawBufferPointer;
              v328 = "";
              *&v515 = "\r\n";
              goto LABEL_358;
            }

LABEL_354:
            if (v316 == 1)
            {
              v422 = 13;
            }

            else
            {
              v422 = 10;
            }

            LOBYTE(v507) = v422;
            *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
            *&v517 = &protocol witness table for UnsafeRawBufferPointer;
            *&v515 = &v507;
            v328 = v477;
LABEL_358:
            *(&v515 + 1) = v328;
            v423 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
            v425 = *v423;
            v424 = v423[1];
            sub_1004A43F4();
            sub_1000197E0(&v515);
            v114 = v492;
            if (v293)
            {
              goto LABEL_393;
            }

            if (!v258)
            {
              goto LABEL_385;
            }

            v402 = v492;
            v582 = v466;
            v583 = v467;
            v584 = v471;
            v585 = v494;
            v586 = v495;
            v587 = v258;
            v403 = sub_100271A2C();
            if (v427 != 2)
            {
              v406 = v426;
              if ((v427 & 1) == 0)
              {
                goto LABEL_392;
              }

              if (v403)
              {
                v407 = v426 - v403;
              }

              else
              {
                v407 = 0;
              }

              if (v407 < 0)
              {
                goto LABEL_436;
              }

              goto LABEL_391;
            }

            goto LABEL_384;
          }

          v293 = 0;
LABEL_231:
          v316 = v499;
          if (!v499)
          {
            goto LABEL_258;
          }

          goto LABEL_354;
        }

        v315 = *(&v513[1] + 1);
        v314 = *&v513[1];
        a5 = v465;
        v258 = v498;
        if (!(*&v513[0] >> 59))
        {
          goto LABEL_228;
        }
      }

      sub_100025F40(&v511, &qword_1005D6328, &qword_1004ECE90);
      if (v314)
      {
        v319 = v315 - v314;
      }

      else
      {
        v319 = 0;
      }

      if (v319 < 0)
      {
        goto LABEL_430;
      }

      v320 = v499;
      sub_1002863C4(v496, v499, 1, sub_100269B14, v505, 0, v319, v314, v315);
      if (!v258)
      {
LABEL_345:
        LOBYTE(v507) = v320;
        v68 = &type metadata for UnsafeRawBufferPointer;
        *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v517 = &protocol witness table for UnsafeRawBufferPointer;
        *&v515 = "Content-Type";
        *(&v515 + 1) = "";
        v408 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
        v410 = *v408;
        v409 = v408[1];
        sub_1004A43F4();
        sub_1000197E0(&v515);
        *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v517 = &protocol witness table for UnsafeRawBufferPointer;
        *&v515 = ": ";
        *(&v515 + 1) = "";
        v411 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
        v413 = *v411;
        v412 = v411[1];
        sub_1004A43F4();
        sub_1000197E0(&v515);
        v508 = 14;
        sub_1002616C0(&v507, &v558, sub_100269B14, v505, v489, &v515);
        sub_1002652C0(v320, sub_100269B14);
        v293 = v515;
        goto LABEL_353;
      }

      v293 = 0;
LABEL_352:
      v68 = &type metadata for UnsafeRawBufferPointer;
LABEL_353:
      v316 = v320;
      if (!v320)
      {
        goto LABEL_258;
      }

      goto LABEL_354;
    }

    if (v124 == 2)
    {
      v170 = *(v123 + 16);
      v171 = *(v123 + 24);
      v172 = sub_1004A40D4();
      if (v172)
      {
        v173 = sub_1004A4104();
        if (__OFSUB__(v170, v173))
        {
          goto LABEL_426;
        }

        v172 += v170 - v173;
      }

      v174 = __OFSUB__(v171, v170);
      v175 = v171 - v170;
      if (v174)
      {
        goto LABEL_420;
      }

      v176 = sub_1004A40F4();
      if (v176 >= v175)
      {
        v177 = v175;
      }

      else
      {
        v177 = v176;
      }

      if (v172)
      {
        v178 = v177;
      }

      else
      {
        v178 = 0;
      }

      if (v178 < 0)
      {
        goto LABEL_422;
      }

      v179 = v177 + v172;
      if (v172)
      {
        v180 = v179;
      }

      else
      {
        v180 = 0;
      }

      sub_100287BA8(3u, 0, v178, v172);
      if (v182)
      {
        v183 = v178;
      }

      else
      {
        v183 = v181;
      }

      sub_100296A78(3, 0, v178, v172, v180, v183);
      v185 = v184;
      v187 = v186;
      v189 = v188;
      v191 = v190;
      v598[8] = v566;
      v598[9] = v567;
      v598[10] = v568;
      v598[4] = v562;
      v598[5] = v563;
      v598[6] = v564;
      v598[7] = v565;
      v598[0] = v558;
      v598[1] = v559;
      v598[2] = v560;
      v599 = v569;
      v598[3] = v561;
      if (sub_10000FE88(v598) == 1)
      {
        UInt32.init(_:)(v598);
        v192 = 0;
      }

      else
      {
        UInt32.init(_:)(v598);
        v192 = 1;
      }

      v68 = &type metadata for UnsafeRawBufferPointer;
      *&v511 = 0;
      v252 = swift_allocObject();
      *(v252 + 16) = &v511;
      sub_1000510B4(&v558, &v515);
      sub_10029E950(v499, v192, 1, sub_100269960, v252, sub_100269B14, v505, v185, v187, v189, v191, &v558, v499, v489, sub_100269B14, v505);
      sub_100051110(&v558);

      sub_100014D40(v463, v464);
      v253 = v511;
      sub_1002679EC(v490);
      *&v515 = v253;
      v114 = v492;
      goto LABEL_395;
    }

    memset(v502, 0, 14);
    sub_100296A78(3, 0, 0, v502, v502, 0);
    LODWORD(v496) = v212;
    v500 = v213;
    v462 = v214;
    v216 = v215;
    v592[8] = v566;
    v592[9] = v567;
    v592[10] = v568;
    v592[4] = v562;
    v592[5] = v563;
    v592[6] = v564;
    v592[7] = v565;
    v592[0] = v558;
    v592[1] = v559;
    v592[2] = v560;
    v593 = v569;
    v592[3] = v561;
    v461 = sub_10000FE88(v592);
    v68 = &type metadata for UnsafeRawBufferPointer;
    UInt32.init(_:)(v592);
    if (v216 < 0)
    {
      goto LABEL_418;
    }

    if (v500)
    {
      v223 = v500 + v216;
    }

    else
    {
      v223 = 0;
    }

    sub_1002AADD4(v500, v223, v496, v514);
    sub_1000510B4(&v558, &v515);
    v511 = 0u;
    v512 = 0u;
    *&v513[0] = 0x1FFFFFFF0ELL;
    *(v513 + 8) = 0u;
    *(&v513[1] + 8) = 0u;
    BYTE8(v513[2]) = 0;
    v501 = sub_1002AC09C();
    if (v226 == 2)
    {
      v495 = 0;
      v227 = 0;
      if ((*&v513[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
      {
        v466 = 0;
        v467 = 0;
        v471 = 0;
        v494 = 0;
        goto LABEL_209;
      }

      v313 = *(&v513[1] + 1);
      v312 = *&v513[1];
      v494 = 0;
      v471 = 0;
      v466 = 0;
      v467 = 0;
      if (!(*&v513[0] >> 59))
      {
LABEL_223:
        if (v461 == 1)
        {
          if (v227)
          {
            goto LABEL_225;
          }

          v318 = v499;
          goto LABEL_322;
        }

        if (v227)
        {
          v517 = v513[0];
          v518[0] = v513[1];
          *(v518 + 9) = *(&v513[1] + 9);
          v515 = v511;
          v516 = v512;
          sub_10000E268(&v515, &v507, &qword_1005D6330, &qword_1004ECEA0);
          v293 = 0;
        }

        else
        {
          v390 = v499;
          v503[0] = v499;
          v509 = &type metadata for UnsafeRawBufferPointer;
          v510 = &protocol witness table for UnsafeRawBufferPointer;
          v507 = "Content-Type";
          v508 = "";
          v391 = sub_10002587C(&v507, &type metadata for UnsafeRawBufferPointer);
          v498 = 0;
          v392 = *v391;
          v393 = v391[1];
          sub_10000E268(&v511, &v515, &qword_1005D6328, &qword_1004ECE90);
          v227 = v498;
          sub_1004A43F4();
          sub_1000197E0(&v507);
          *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v517 = &protocol witness table for UnsafeRawBufferPointer;
          *&v515 = ": ";
          *(&v515 + 1) = "";
          v394 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
          v396 = *v394;
          v395 = v394[1];
          sub_1004A43F4();
          sub_1000197E0(&v515);
          v504 = 14;
          sub_1002616C0(v503, &v558, sub_100269B14, v505, v489, &v515);
          sub_1002652C0(v390, sub_100269B14);
          v293 = v515;
        }

        if (v312)
        {
          v397 = v313 - v312;
        }

        else
        {
          v397 = 0;
        }

        if (v397 < 0)
        {
          goto LABEL_432;
        }

        v318 = v499;
        sub_1002863C4(v496, v499, 1, sub_100269B14, v505, 0, v397, v312, v313);
        goto LABEL_329;
      }
    }

    else
    {
      v228 = v224;
      v229 = v225;
      v230 = v226;
      v498 = 0;
      v494 = 0;
      v495 = 0;
      v471 = 0;
      v466 = 0;
      v467 = 0;
      v231 = 0;
      do
      {
        sub_1002AB9E4(v501, v228, v229, v230 & 1, &v534);
        v235 = v534;
        v236 = v535;
        v237 = v536;
        v238 = v537;
        v239 = v538;
        v240 = v539;
        if (v538 >> 59 == 9)
        {
          v497 = v539;
          v241 = v230;
          v242 = v538;
          v243 = v229;
          v244 = v228;
          v245 = v537;
          v246 = v536;
          v247 = v534;
          v248 = v535;

          v236 = v248;
          v235 = v247;
          v237 = v246;
          v238 = v245;
          v228 = v244;
          v229 = v243;
          v239 = v242;
          v230 = v241;
          v240 = v497;
          v466 = v235;
          v467 = v236;
          v471 = v237;
          v494 = v238;
          v495 = v239;
          v498 = v497;
        }

        if (!(v231 & 1 | (v501 == 0)) && v500 && &v501[-v500] >= 1)
        {
          v249 = v236;
          sub_1002863C4(v496, v499, 1, sub_100269B14, v505, 0, &v501[-v500], v500, v462);
          v236 = v249;
        }

        if ((*&v513[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
        {
          if (*&v513[1])
          {
            v250 = (*(&v513[1] + 1) - *&v513[1]);
          }

          else
          {
            v250 = 0;
          }

          if ((v250 & 0x8000000000000000) != 0)
          {
LABEL_407:
            __break(1u);
LABEL_408:
            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            __break(1u);
LABEL_413:
            __break(1u);
LABEL_414:
            __break(1u);
LABEL_415:
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
          }

          v251 = v236;
          sub_1002863C4(v496, v499, 1, sub_100269B14, v505, 0, v250, *&v513[1], *(&v513[1] + 1));
          sub_100025F40(&v511, &qword_1005D6328, &qword_1004ECE90);
          v236 = v251;
        }

        *&v511 = v235;
        *(&v511 + 1) = v236;
        *&v512 = v237;
        *(&v512 + 1) = v238;
        *&v513[0] = v239;
        *(&v513[0] + 1) = v240;
        *&v513[1] = v501;
        *(&v513[1] + 1) = v228;
        *&v513[2] = v229;
        BYTE8(v513[2]) = v230 & 1;
        v501 = sub_1002AC09C();
        v228 = v232;
        v229 = v233;
        v230 = v234;
        v231 = 1;
      }

      while (v234 != 2);
      if ((*&v513[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
      {
        a5 = v465;
        v227 = v498;
        if (!v498)
        {
          v68 = &type metadata for UnsafeRawBufferPointer;
LABEL_209:
          v285 = v499;
          v286 = v489;
          LOBYTE(v507) = v499;
          *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v517 = &protocol witness table for UnsafeRawBufferPointer;
          *&v515 = "Content-Type";
          *(&v515 + 1) = "";
          v287 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
          v289 = *v287;
          v288 = v287[1];
          sub_1004A43F4();
          sub_1000197E0(&v515);
          *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v517 = &protocol witness table for UnsafeRawBufferPointer;
          *&v515 = ": ";
          *(&v515 + 1) = "";
          v290 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
          v292 = *v290;
          v291 = v290[1];
          sub_1004A43F4();
          sub_1000197E0(&v515);
          v508 = 14;
          sub_1002616C0(&v507, &v558, sub_100269B14, v505, v286, &v515);
          sub_1002652C0(v285, sub_100269B14);
          v293 = v515;
          v227 = 0;
          v294 = v285;
          if (!v285)
          {
LABEL_210:
            *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
            *&v517 = &protocol witness table for UnsafeRawBufferPointer;
            v295 = "";
            *&v515 = "\r\n";
            goto LABEL_335;
          }

LABEL_331:
          if (v294 == 1)
          {
            v398 = 13;
          }

          else
          {
            v398 = 10;
          }

          LOBYTE(v507) = v398;
          *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v517 = &protocol witness table for UnsafeRawBufferPointer;
          *&v515 = &v507;
          v295 = v477;
LABEL_335:
          *(&v515 + 1) = v295;
          v399 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
          v401 = *v399;
          v400 = v399[1];
          sub_1004A43F4();
          sub_1000197E0(&v515);
          v114 = v492;
          if (v293)
          {
            goto LABEL_393;
          }

          if (!v227)
          {
            goto LABEL_385;
          }

          v402 = v492;
          v570 = v466;
          v571 = v467;
          v572 = v471;
          v573 = v494;
          v574 = v495;
          v575 = v227;
          v403 = sub_100271A2C();
          if (v405 != 2)
          {
            v406 = v404;
            if ((v405 & 1) == 0)
            {
              goto LABEL_392;
            }

            if (v403)
            {
              v407 = v404 - v403;
            }

            else
            {
              v407 = 0;
            }

            if (v407 < 0)
            {
              goto LABEL_435;
            }

LABEL_391:
            v448 = v469;
            v293 = sub_1002871D4(0, v407, v403, v406);
            v469 = v448;
            v114 = v402;
            goto LABEL_393;
          }

LABEL_384:

          sub_100051110(&v558);
          v293 = 0;
          v114 = v402;
LABEL_394:
          sub_100014D40(v463, v464);
          sub_1002679EC(v490);
          *&v515 = v293;
LABEL_395:
          v98 = v515;
          a1 = v499;
          a4 = v489;
          goto LABEL_396;
        }

LABEL_225:
        v293 = 0;
        v68 = &type metadata for UnsafeRawBufferPointer;
        v294 = v499;
        if (!v499)
        {
          goto LABEL_210;
        }

        goto LABEL_331;
      }

      v313 = *(&v513[1] + 1);
      v312 = *&v513[1];
      a5 = v465;
      v227 = v498;
      if (!(*&v513[0] >> 59))
      {
        goto LABEL_223;
      }
    }

    sub_100025F40(&v511, &qword_1005D6328, &qword_1004ECE90);
    if (v312)
    {
      v317 = v313 - v312;
    }

    else
    {
      v317 = 0;
    }

    if (v317 < 0)
    {
      goto LABEL_429;
    }

    v318 = v499;
    sub_1002863C4(v496, v499, 1, sub_100269B14, v505, 0, v317, v312, v313);
    if (!v227)
    {
LABEL_322:
      LOBYTE(v507) = v318;
      v68 = &type metadata for UnsafeRawBufferPointer;
      *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
      *&v517 = &protocol witness table for UnsafeRawBufferPointer;
      *&v515 = "Content-Type";
      *(&v515 + 1) = "";
      v384 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
      v386 = *v384;
      v385 = v384[1];
      sub_1004A43F4();
      sub_1000197E0(&v515);
      *(&v516 + 1) = &type metadata for UnsafeRawBufferPointer;
      *&v517 = &protocol witness table for UnsafeRawBufferPointer;
      *&v515 = ": ";
      *(&v515 + 1) = "";
      v387 = sub_10002587C(&v515, &type metadata for UnsafeRawBufferPointer);
      v389 = *v387;
      v388 = v387[1];
      sub_1004A43F4();
      sub_1000197E0(&v515);
      v508 = 14;
      sub_1002616C0(&v507, &v558, sub_100269B14, v505, v489, &v515);
      sub_1002652C0(v318, sub_100269B14);
      v293 = v515;
      goto LABEL_330;
    }

    v293 = 0;
LABEL_329:
    v68 = &type metadata for UnsafeRawBufferPointer;
LABEL_330:
    v294 = v318;
    if (!v318)
    {
      goto LABEL_210;
    }

    goto LABEL_331;
  }
}

uint64_t sub_10025FD88(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v26 = a3;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v25[0] = a1;
  v25[1] = a2;
  v27[0] = a1;
  v27[1] = a2;
  v27[2] = 0;
  v27[3] = v3;
  v28 = 256;

  do
  {
    while (1)
    {
      isStackAllocationSafe = sub_1004A5924();
      if (isStackAllocationSafe < 0)
      {
        goto LABEL_26;
      }

      v5 = isStackAllocationSafe;
      if (isStackAllocationSafe >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          break;
        }
      }

      __chkstk_darwin(isStackAllocationSafe);
      v7 = v25 - v6;
      v8 = v25 + v5 - v6;
      v9 = swift_allocObject();
      v9[2] = 0;
      v10 = v9 + 2;
      v9[3] = v5;
      v9[4] = v7;
      v9[5] = v8;
      sub_100269618(&v28, v27, v9);
      swift_beginAccess();
      v11 = *v10;
      v12 = *(v26 + 8);
      if (v12 < 1)
      {
        goto LABEL_14;
      }

      if (__OFADD__(v12, v11))
      {
        goto LABEL_25;
      }

      if (v12 + v11 < 79)
      {
LABEL_14:
        if (v11 < 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
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
        }

        v31 = &type metadata for UnsafeRawBufferPointer;
        v32 = &protocol witness table for UnsafeRawBufferPointer;
        v29 = v7;
        v30 = &v7[v11];
        v20 = sub_10002587C(&v29, &type metadata for UnsafeRawBufferPointer);
        v22 = *v20;
        v21 = v20[1];
        sub_1004A43F4();
        sub_1000197E0(&v29);

        if (v5 < v11)
        {
          goto LABEL_23;
        }

        v19 = v12 + v11;
        if (__OFADD__(v12, v11))
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_100267804(*v26);
        v31 = &type metadata for UnsafeRawBufferPointer;
        v32 = &protocol witness table for UnsafeRawBufferPointer;
        v29 = "\t";
        v30 = "";
        v13 = sub_10002587C(&v29, &type metadata for UnsafeRawBufferPointer);
        v15 = *v13;
        v14 = v13[1];
        sub_1004A43F4();
        sub_1000197E0(&v29);
        if (v11 < 0)
        {
          goto LABEL_27;
        }

        v31 = &type metadata for UnsafeRawBufferPointer;
        v32 = &protocol witness table for UnsafeRawBufferPointer;
        v29 = v7;
        v30 = &v7[v11];
        v16 = sub_10002587C(&v29, &type metadata for UnsafeRawBufferPointer);
        v18 = *v16;
        v17 = v16[1];
        sub_1004A43F4();
        sub_1000197E0(&v29);

        if (v5 < v11)
        {
          goto LABEL_28;
        }

        v19 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_29;
        }
      }

      *(v26 + 8) = v19;
      if ((v28 & 0x100) != 0)
      {
      }
    }

    v23 = swift_slowAlloc();
    sub_100264B0C(v23, v23 + v5, 0, v26, &v28, v27);
  }

  while ((v28 & 0x100) == 0);
}

uint64_t sub_100260088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);

  v50 = a3;

  if (v6)
  {
    v7 = 0;
    v8 = a2 + 32;
    v9 = a3 + 32;
    v51 = a2 + 32;
    v52 = a2;
    v54 = v6;
    do
    {
      if (v7 >= *(a2 + 16))
      {
        goto LABEL_40;
      }

      v10 = (v8 + 16 * v7);
      v12 = *v10;
      v11 = v10[1];
      v13 = (v9 + 16 * v7);
      v14 = *v13;
      v15 = v13[1];
      v62 = 0;
      LOBYTE(v61) = 0;
      swift_bridgeObjectRetain_n();

      v56 = v12;
      v57 = v11;
      sub_100265368(v12, v11, &v61, &v62);
      LOBYTE(v61) = 61;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_41;
      }

      ++v7;
      ++v62;
      sub_100265848(v14, v15, &v61, &v62);

      v16 = v62;
      if (v7 != v6)
      {
        v16 = (v62 + 1);
        if (__OFADD__(v62, 1))
        {
          goto LABEL_42;
        }
      }

      if (v16 < 79)
      {
        sub_100268404(160, 1, a4, v12, v11, v14, v15, v7 == v6);

        continue;
      }

      v17 = sub_1004A5AB4();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      if ((v17 ^ v19) < 0x4000)
      {

        continue;
      }

      v58 = v21;
      v59 = v19;
      v60 = v17;
      v55 = v7;
      v24 = 0;
      v25 = *(a4 + 8);
      do
      {
        v62 = v56;
        v63 = v57;

        v69._countAndFlagsBits = 42;
        v69._object = 0xE100000000000000;
        sub_1004A5994(v69);
        v61 = v24;
        v70._countAndFlagsBits = sub_1004A6CE4();
        sub_1004A5994(v70);

        v27 = v62;
        v26 = v63;
        v28 = swift_allocObject();
        *(v28 + 16) = 77;
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1004E9FE0;
        *(v29 + 32) = v66;
        *(v29 + 40) = &v68;
        sub_100264D48(" ", "", v29);

        sub_100268824(v27, v26, v28, v29);
        LOBYTE(v62) = 61;
        swift_beginAccess();
        v30 = *(v28 + 16) - 1;
        if (__OFSUB__(*(v28 + 16), 1))
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
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
        }

        *(v28 + 16) = v30;
        sub_100264D48(&v62, &v62 + 1, v29);
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_32;
        }

        v31 = sub_100266644(v60, v59, v58, v23, v30 - 1, v29);
        v33 = v32;
        v58 = v34;
        v36 = v35;
        swift_bridgeObjectRelease_n();
        v59 = v33;
        v60 = v31;
        v37 = (v31 ^ v33) >> 14;
        if (v55 != v54 || v37)
        {
          LOBYTE(v62) = 59;
          sub_100264D48(&v62, &v62 + 1, v29);
        }

        swift_beginAccess();
        v38 = *(v29 + 16);
        if (v25 < 1)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v25, v38))
        {
          goto LABEL_37;
        }

        if (v25 + v38 < 79)
        {
LABEL_24:
          if (v38 < 0)
          {
            goto LABEL_34;
          }

          v64 = &type metadata for UnsafeRawBufferPointer;
          v65 = &protocol witness table for UnsafeRawBufferPointer;
          v62 = v66;
          v63 = &v66[v38];
          v45 = sub_10002587C(&v62, &type metadata for UnsafeRawBufferPointer);
          v47 = *v45;
          v46 = v45[1];
          sub_1004A43F4();
          sub_1000197E0(&v62);

          if (v38 > 0xA1)
          {
            goto LABEL_35;
          }

          v48 = __OFADD__(v25, v38);
          v38 += v25;
          if (v48)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_100267804(*a4);
          v64 = &type metadata for UnsafeRawBufferPointer;
          v65 = &protocol witness table for UnsafeRawBufferPointer;
          v62 = "\t";
          v63 = "";
          v39 = sub_10002587C(&v62, &type metadata for UnsafeRawBufferPointer);
          v41 = *v39;
          v40 = v39[1];
          sub_1004A43F4();
          sub_1000197E0(&v62);
          if (v38 < 1)
          {
            goto LABEL_38;
          }

          v64 = &type metadata for UnsafeRawBufferPointer;
          v65 = &protocol witness table for UnsafeRawBufferPointer;
          v62 = &v67;
          v63 = &v66[v38];
          v42 = sub_10002587C(&v62, &type metadata for UnsafeRawBufferPointer);
          v44 = *v42;
          v43 = v42[1];
          sub_1004A43F4();
          sub_1000197E0(&v62);

          if (v38 > 0xA1)
          {
            goto LABEL_39;
          }
        }

        if (__OFADD__(v24, 1))
        {
          goto LABEL_33;
        }

        ++v24;
        v25 = v38;
        v23 = v36;
      }

      while (v37);

      *(a4 + 8) = v38;
      v8 = v51;
      a2 = v52;
      v7 = v55;
      v6 = v54;
      v9 = v50 + 32;
    }

    while (v7 != v6);
  }
}

uint64_t sub_100260678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v9 = *(a3 + 16);

  v43 = a3;

  if (v9)
  {
    v10 = 0;
    v45 = a2 + 32;
    v11 = a3 + 32;
    v44 = a2;
    v49 = a4;
    v50 = a5;
    v47 = v9;
    do
    {
      if (v10 >= *(a2 + 16))
      {
        goto LABEL_40;
      }

      v12 = (v45 + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      v15 = (v11 + 16 * v10);
      v16 = *v15;
      v17 = v15[1];
      v57 = 0;
      LOBYTE(v56) = 0;
      swift_bridgeObjectRetain_n();

      v51 = v14;
      v52 = v13;
      sub_100265368(v14, v13, &v56, &v57);
      LOBYTE(v56) = 61;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_41;
      }

      ++v10;
      ++v57;
      sub_100265848(v16, v17, &v56, &v57);

      v18 = v57;
      if (v10 != v9)
      {
        v18 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_42;
        }
      }

      if (v18 <= 78)
      {

        sub_100265FD8(a4, a5, 160, 1, v46, v14, v13, v16, v17, v10 == v9);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        continue;
      }

      v19 = sub_1004A5AB4();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      if ((v19 ^ v21) < 0x4000)
      {

        a4 = v49;
        a5 = v50;
        continue;
      }

      v53 = v23;
      v54 = v21;
      v55 = v19;
      v48 = v10;
      v26 = 0;
      v27 = *(v46 + 8);
      do
      {
        v57 = v51;
        v58 = v52;

        v62._countAndFlagsBits = 42;
        v62._object = 0xE100000000000000;
        sub_1004A5994(v62);
        v56 = v26;
        v63._countAndFlagsBits = sub_1004A6CE4();
        sub_1004A5994(v63);

        v28 = v57;
        v29 = v58;
        v30 = swift_allocObject();
        *(v30 + 16) = 77;
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1004E9FE0;
        *(v31 + 32) = v59;
        *(v31 + 40) = &v61;
        sub_100264D48(" ", "", v31);
        sub_1002663AC(v28, v29, v30, sub_100269B30);
        LOBYTE(v57) = 61;
        swift_beginAccess();
        v32 = *(v30 + 16) - 1;
        if (__OFSUB__(*(v30 + 16), 1))
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
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
        }

        *(v30 + 16) = v32;
        sub_100264D48(&v57, &v57 + 1, v31);
        if (__OFSUB__(v32, 1))
        {
          goto LABEL_32;
        }

        v33 = sub_100266644(v55, v54, v53, v25, v32 - 1, v31);
        v35 = v34;
        v53 = v36;
        v38 = v37;
        swift_bridgeObjectRelease_n();
        v54 = v35;
        v55 = v33;
        v39 = v33 ^ v35;
        if (v48 != v47 || v39 >> 14)
        {
          LOBYTE(v57) = 59;
          sub_100264D48(&v57, &v57 + 1, v31);
        }

        swift_beginAccess();
        v40 = *(v31 + 16);
        if (v27 <= 0)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v27, v40))
        {
          goto LABEL_37;
        }

        if (v27 + v40 < 79)
        {
LABEL_24:
          if (v40 < 0)
          {
            goto LABEL_34;
          }

          v49(v59, &v59[v40]);

          if (v40 > 0xA1)
          {
            goto LABEL_35;
          }

          v41 = __OFADD__(v27, v40);
          v40 += v27;
          if (v41)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1002652C0(*v46, v49);
          v49("\t", "");
          if (v40 < 1)
          {
            goto LABEL_38;
          }

          v49(&v60, &v59[v40]);

          if (v40 > 0xA1)
          {
            goto LABEL_39;
          }
        }

        if (__OFADD__(v26, 1))
        {
          goto LABEL_33;
        }

        ++v26;
        v27 = v40;
        v25 = v38;
      }

      while (v39 >= 0x4000);

      *(v46 + 8) = v40;
      v11 = v43 + 32;
      a2 = v44;
      a4 = v49;
      a5 = v50;
      v9 = v47;
      v10 = v48;
    }

    while (v10 != v9);
  }
}

uint64_t sub_100260C20(uint64_t result, uint64_t a2)
{
  v30 = result;
  v31 = *(a2 + 16);
  if (v31)
  {
    v2 = 0;
    v3 = (a2 + 40);
    do
    {
      v9 = *(v3 - 1);
      v10 = *v3;
      if (v2)
      {
        v11 = 161;
      }

      else
      {
        v11 = 160;
      }

      v12 = *v3;
      v13 = swift_bridgeObjectRetain_n();
      v29 = &v29;
      __chkstk_darwin(v13);
      v15 = &v29 - v14;
      v16 = &v29 + v11 - v14;
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = v11;
      v17[4] = v15;
      v17[5] = v16;
      if (v2)
      {
        sub_100264D48(" ", "", v17);
      }

      v32 = v9;
      v33 = v10;

      v18 = sub_1004A5AA4();
      sub_10026751C(v18, v19, v17);

      if (--v31)
      {
        LOBYTE(v32) = 44;
        sub_100264D48(&v32, &v32 + 1, v17);
      }

      swift_beginAccess();
      v20 = v17[2];
      v21 = *(v30 + 8);
      if (v21 < 1)
      {
        goto LABEL_18;
      }

      if (__OFADD__(v21, v20))
      {
        goto LABEL_29;
      }

      if (v21 + v20 < 79)
      {
LABEL_18:
        if (v20 < 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
        }

        v34 = &type metadata for UnsafeRawBufferPointer;
        v35 = &protocol witness table for UnsafeRawBufferPointer;
        v32 = v15;
        v33 = &v15[v20];
        v26 = sub_10002587C(&v32, &type metadata for UnsafeRawBufferPointer);
        v28 = *v26;
        v27 = v26[1];
        sub_1004A43F4();
        sub_1000197E0(&v32);

        if (v11 < v20)
        {
          goto LABEL_27;
        }

        v8 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_100267804(*v30);
        v34 = &type metadata for UnsafeRawBufferPointer;
        v35 = &protocol witness table for UnsafeRawBufferPointer;
        v32 = "\t";
        v33 = "";
        v22 = sub_10002587C(&v32, &type metadata for UnsafeRawBufferPointer);
        v24 = *v22;
        v23 = v22[1];
        sub_1004A43F4();
        sub_1000197E0(&v32);
        if (v2)
        {
          if (v20 < 1)
          {
            goto LABEL_31;
          }

          v25 = 1;
        }

        else
        {
          if (v20 < 0)
          {
            goto LABEL_32;
          }

          v25 = 0;
        }

        v34 = &type metadata for UnsafeRawBufferPointer;
        v35 = &protocol witness table for UnsafeRawBufferPointer;
        v32 = &v15[v25];
        v33 = &v15[v20];
        v4 = sub_10002587C(&v32, &type metadata for UnsafeRawBufferPointer);
        v6 = *v4;
        v5 = v4[1];
        sub_1004A43F4();
        sub_1000197E0(&v32);
        v7 = sub_1002881FC(v25, v20, v15, v16);

        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_30;
        }
      }

      *(v30 + 8) = v8;
      result = swift_bridgeObjectRelease_n();
      --v2;
      v3 += 2;
    }

    while (v31);
  }

  return result;
}

uint64_t sub_100260F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v10 = a2;
  v13 = *(a2 + 144);
  v74[8] = *(a2 + 128);
  v74[9] = v13;
  v74[10] = *(a2 + 160);
  v75 = *(a2 + 176);
  v14 = *(a2 + 80);
  v74[4] = *(a2 + 64);
  v74[5] = v14;
  v15 = *(a2 + 112);
  v74[6] = *(a2 + 96);
  v74[7] = v15;
  v16 = *(a2 + 16);
  v74[0] = *a2;
  v74[1] = v16;
  v17 = *(a2 + 48);
  v74[2] = *(a2 + 32);
  v74[3] = v17;
  if (sub_10000FE88(v74) != 1)
  {
    v26 = UInt32.init(_:)(v74);
    v83 = v26[7];
    v84 = v26[8];
    v85 = v26[9];
    v86 = v26[10];
    v79 = v26[3];
    v80 = v26[4];
    v81 = v26[5];
    v82 = v26[6];
    v76 = *v26;
    v77 = v26[1];
    v78 = v26[2];
    if (!(v76 >> 62))
    {
      v7 = a1;
      a3 = a4;
      a4 = *((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      a1 = *((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v6 = *((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v49 = HIBYTE(v5) & 0xF;
          if ((v6 & 0x1000000000000000) != 0)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v49 = a4 & 0xFFFFFFFFFFFFLL;
          if ((v6 & 0x1000000000000000) != 0)
          {
LABEL_66:
            v63 = sub_1004A59E4();
            v53 = v49 + v63;
            if (!__OFADD__(v49, v63))
            {
LABEL_50:
              v55 = v53 + 2;
              if (!__OFADD__(v53, 2))
              {

                sub_1000510B4(v10, __dst);
                sub_100267AFC(v55, 0, v7, a4, v5, a1, v6, &v76, a3);
                sub_100051110(v10);

                v56 = *(&v76 + 1);
                v58 = *(&v77 + 1);
                v57 = v77;
                v59 = v7;
LABEL_54:
                result = sub_100260088(v56, v57, v58, v59);
                goto LABEL_55;
              }

LABEL_72:
              __break(1u);
            }

            goto LABEL_68;
          }
        }

LABEL_45:
        if ((v6 & 0x2000000000000000) != 0)
        {
          v54 = HIBYTE(v6) & 0xF;
          v53 = v49 + v54;
          if (!__OFADD__(v49, v54))
          {
            goto LABEL_50;
          }
        }

        else
        {
          v53 = v49 + (a1 & 0xFFFFFFFFFFFFLL);
          if (!__OFADD__(v49, a1 & 0xFFFFFFFFFFFFLL))
          {
            goto LABEL_50;
          }
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_65:
      v49 = sub_1004A59E4();
      if ((v6 & 0x1000000000000000) != 0)
      {
        goto LABEL_66;
      }

      goto LABEL_45;
    }

    if (v76 >> 62 != 1)
    {
      v5 = *((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v49 = *((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = *((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      if ((v49 & 0x1000000000000000) == 0)
      {
        if ((v49 & 0x2000000000000000) != 0)
        {
          v60 = HIBYTE(v49) & 0xF;
          v50 = v60 + 6;
          if (__OFADD__(v60, 6))
          {
            goto LABEL_71;
          }
        }

        else
        {
          v50 = (v5 & 0xFFFFFFFFFFFFLL) + 6;
          if (__OFADD__(v5 & 0xFFFFFFFFFFFFLL, 6))
          {
            goto LABEL_71;
          }
        }

LABEL_53:
        sub_1000510B4(v10, __dst);

        sub_100268EC8(v50, 0, a1, v5, v49, v6, &v76);
        sub_100051110(v10);

        v56 = *(&v76 + 1);
        v58 = *(&v77 + 1);
        v57 = v77;
        v59 = a1;
        goto LABEL_54;
      }

LABEL_69:
      v64 = sub_1004A59E4();
      v50 = v64 + 6;
      if (!__OFADD__(v64, 6))
      {
        goto LABEL_53;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    memcpy(__dst, ((v76 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    if ((*&__dst[8] & 0x1000000000000000) != 0)
    {
      goto LABEL_62;
    }

    if ((*&__dst[8] & 0x2000000000000000) != 0)
    {
      v52 = HIBYTE(*&__dst[8]) & 0xFLL;
      v27 = v52 + 9;
      if (!__OFADD__(v52, 9))
      {
LABEL_43:
        sub_1000510B4(v10, &v69);
        sub_100259990(__dst, &v69);
        sub_100268B04(v27, 0, a1, __dst, &v76);
        sub_100051110(v10);
        sub_100260088(*(&v76 + 1), v77, *(&v77 + 1), a1);
        result = sub_1002599EC(__dst);
LABEL_55:
        *a5 = 0;
        return result;
      }
    }

    else
    {
      v27 = (*__dst & 0xFFFFFFFFFFFFLL) + 9;
      if (!__OFADD__(*__dst & 0xFFFFFFFFFFFFLL, 9))
      {
        goto LABEL_43;
      }
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v18 = UInt32.init(_:)(v74);
  v19 = *(v18 + 32);
  v20 = *(v18 + 48);
  v21 = *(v18 + 16);
  *__dst = *v18;
  *&__dst[16] = v21;
  *&__dst[32] = v19;
  *&__dst[48] = v20;
  v23 = *(v18 + 80);
  v22 = *(v18 + 96);
  v24 = *(v18 + 64);
  *&__dst[112] = *(v18 + 112);
  *&__dst[80] = v23;
  *&__dst[96] = v22;
  *&__dst[64] = v24;
  if ((*&__dst[16] & 0x1000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&__dst[16] & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(*&__dst[16]) & 0xFLL;
    v25 = v28 + 10;
    if (!__OFADD__(v28, 10))
    {
      goto LABEL_15;
    }

    goto LABEL_61;
  }

  v25 = (*&__dst[8] & 0xFFFFFFFFFFFFLL) + 10;
  if (__OFADD__(*&__dst[8] & 0xFFFFFFFFFFFFLL, 10))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    v62 = sub_1004A59E4();
    v27 = v62 + 9;
    if (!__OFADD__(v62, 9))
    {
      goto LABEL_43;
    }

    goto LABEL_64;
  }

LABEL_15:
  sub_100259A40(__dst, &v69);
  v66 = a1;
  sub_1002692CC(v25, 0, a1, __dst);
  sub_100051110(v10);
  LOBYTE(v76) = 59;
  v72 = &type metadata for UnsafeRawBufferPointer;
  v73 = &protocol witness table for UnsafeRawBufferPointer;
  v69 = &v76;
  v70 = &v76 + 1;
  v29 = sub_10002587C(&v69, &type metadata for UnsafeRawBufferPointer);
  v31 = *v29;
  v30 = v29[1];
  sub_1004A43F4();
  sub_1000197E0(&v69);
  a1 = *&__dst[32];
  v67 = a5;
  v65 = a3;
  if (*&__dst[32])
  {
    v10 = *&__dst[40];
    v32 = *&__dst[24];
  }

  else
  {
    v32 = sub_100266C9C(_swiftEmptyArrayStorage);
    a1 = v33;
    v10 = v34;
  }

  v5 = 0x797261646E756F62;
  v69 = v32;
  v70 = a1;
  v71 = v10;
  a5 = *(v10 + 16);
  swift_retain_n();

  v68 = a5;
  if (!a5)
  {
LABEL_28:

    v42 = swift_allocObject();
    *(v42 + 16) = _swiftEmptyArrayStorage;
    v43 = v5;
    sub_100259A9C(v65, v42);
    sub_100259A9C(v65, v42);
    swift_beginAccess();
    sub_100259BC0(0xD000000000000016, 0x80000001004AD530);
    swift_endAccess();
    sub_100259A9C(v65, v42);
    v44 = *(v42 + 16);
    swift_bridgeObjectRetain_n();

    v45 = *(v44 + 2);
    v46 = sub_1004A58D4();
    v48 = v47;

    sub_1002626BC(v46, v48, v43, 0xE800000000000000);
    goto LABEL_41;
  }

  a4 = 0;
  v6 = 0;
  while (1)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v61 = sub_1004A59E4();
      v25 = v61 + 10;
      if (__OFADD__(v61, 10))
      {
        goto LABEL_61;
      }

      goto LABEL_15;
    }

    if (v6 >= *(v10 + 16))
    {
      goto LABEL_58;
    }

    v35 = *(a1 + a4 + 32);
    v36 = *(a1 + a4 + 40);
    v37 = *(v10 + a4 + 32);
    v7 = *(v10 + a4 + 40);
    v38 = sub_1004A5814();
    a3 = v39;
    if (v38 == v5 && v39 == 0xE800000000000000)
    {

      goto LABEL_40;
    }

    a5 = v5;
    v41 = sub_1004A6D34();

    if (v41)
    {
      break;
    }

    ++v6;

    a4 += 16;
    v5 = a5;
    if (v68 == v6)
    {
      goto LABEL_28;
    }
  }

LABEL_40:

  v44 = sub_10015BC90(v37, v7);

LABEL_41:
  sub_100260088(v69, v70, v71, v66);

  *v67 = v44;
  return result;
}

uint64_t sub_1002616C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(char *, char *)@<X2>, char *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v102 = a5;
  v8 = a2;
  v11 = *(a2 + 144);
  v112[8] = *(a2 + 128);
  v112[9] = v11;
  v112[10] = *(a2 + 160);
  v113 = *(a2 + 176);
  v12 = *(a2 + 80);
  v112[4] = *(a2 + 64);
  v112[5] = v12;
  v13 = *(a2 + 112);
  v112[6] = *(a2 + 96);
  v112[7] = v13;
  v14 = *(a2 + 16);
  v112[0] = *a2;
  v112[1] = v14;
  v15 = *(a2 + 48);
  v112[2] = *(a2 + 32);
  v112[3] = v15;
  v41 = sub_10000FE88(v112) == 1;
  v104 = a4;
  v105 = a3;
  v103 = a6;
  v106 = a1;
  v16 = v112;
  if (v41)
  {
    v17 = UInt32.init(_:)(v112);
    v18 = *(v17 + 32);
    v19 = *(v17 + 48);
    v20 = *(v17 + 16);
    v125[0] = *v17;
    v125[1] = v20;
    v125[2] = v18;
    v125[3] = v19;
    v22 = *(v17 + 80);
    v21 = *(v17 + 96);
    v23 = *(v17 + 64);
    *&v125[7] = *(v17 + 112);
    v125[5] = v22;
    v125[6] = v21;
    v125[4] = v23;
    v24 = *&v125[1];
    if ((*&v125[1] & 0x1000000000000000) != 0)
    {
      goto LABEL_111;
    }

    if ((*&v125[1] & 0x2000000000000000) != 0)
    {
      goto LABEL_15;
    }

    LODWORD(v16) = DWORD2(v125[0]);
    v25 = (*(&v125[0] + 1) & 0xFFFFFFFFFFFFLL) + 10;
    if (__OFADD__(*(&v125[0] + 1) & 0xFFFFFFFFFFFFLL, 10))
    {
      goto LABEL_7;
    }

    while (1)
    {
LABEL_16:
      sub_100259A40(v125, &v109);
      sub_10026699C(a3, a4, v25, 0, a1, v125);
      sub_100051110(v8);
      LOBYTE(v109) = 59;
      a3(&v109, &v109 + 1);
      v31 = *&v125[2];
      if (*&v125[2])
      {
        v32 = *(&v125[2] + 1);
        v33 = *(&v125[1] + 1);
      }

      else
      {
        v33 = sub_100266C9C(_swiftEmptyArrayStorage);
        v31 = v34;
        v32 = v35;
      }

      v36 = 0x797261646E756F62;
      v109 = v33;
      v110 = v31;
      v111 = v32;
      a1 = *(v32 + 16);
      swift_retain_n();
      v101 = v33;

      v108 = a1;
      if (!a1)
      {
        break;
      }

      a6 = 0;
      v8 = 0;
      while (v8 < *(v31 + 16))
      {
        if (v8 >= *(v32 + 16))
        {
          goto LABEL_110;
        }

        v37 = *(v31 + a6 + 32);
        v38 = *(v31 + a6 + 40);
        a4 = *(v32 + a6 + 32);
        a1 = *(v32 + a6 + 40);
        v39 = sub_1004A5814();
        a3 = v40;
        v41 = v39 == v36 && v40 == 0xE800000000000000;
        if (v41)
        {
          goto LABEL_42;
        }

        v107 = a4;
        a4 = v32;
        v42 = v36;
        v43 = sub_1004A6D34();

        if (v43)
        {

          a4 = v107;
          goto LABEL_44;
        }

        ++v8;

        a6 += 16;
        v36 = v42;
        v32 = a4;
        if (v108 == v8)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      v16 = sub_1004A59E4();
      v25 = v16 + 10;
      if (__OFADD__(v16, 10))
      {
        goto LABEL_7;
      }
    }

LABEL_29:

    v44 = swift_allocObject();
    *(v44 + 16) = _swiftEmptyArrayStorage;
    sub_100259A9C(v102, v44);
    sub_100259A9C(v102, v44);
    swift_beginAccess();
    sub_100259BC0(0xD000000000000016, 0x80000001004AD530);
    swift_endAccess();
    sub_100259A9C(v102, v44);
    v45 = *(v44 + 16);
    swift_bridgeObjectRetain_n();

    v46 = *(v45 + 2);
    v47 = sub_1004A58D4();
    v49 = v48;

    sub_1002626BC(v47, v49, v36, 0xE800000000000000);
    goto LABEL_45;
  }

  while (1)
  {
    v26 = UInt32.init(_:)(v16);
    v121 = v26[7];
    v122 = v26[8];
    v123 = v26[9];
    v124 = v26[10];
    v117 = v26[3];
    v118 = v26[4];
    v119 = v26[5];
    v120 = v26[6];
    v114 = *v26;
    v115 = v26[1];
    v116 = v26[2];
    v28 = (v114 & 0x3FFFFFFFFFFFFFFFLL);
    if (!(v114 >> 62))
    {
      v29 = *((v114 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v50 = *((v114 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v51 = *((v114 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v52 = *((v114 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if ((v50 & 0x1000000000000000) != 0)
      {
        v93 = *((v114 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v94 = *((v114 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v53 = sub_1004A59E4();
        if ((v52 & 0x1000000000000000) != 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if ((v50 & 0x2000000000000000) == 0)
        {
          v53 = v29 & 0xFFFFFFFFFFFFLL;
          if ((v52 & 0x1000000000000000) == 0)
          {
            goto LABEL_33;
          }

LABEL_66:
          v54 = sub_1004A59E4();
          v28 = (v53 + v54);
          if (!__OFADD__(v53, v54))
          {
LABEL_70:
            v30 = v28 + 2;
            if (__OFADD__(v28, 2))
            {
              __break(1u);
              goto LABEL_123;
            }

            if (v30 < 0)
            {
              goto LABEL_143;
            }

            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v108 = v51;
            if (v30 >= 1025)
            {
              sub_1000510B4(v8, v125);

              sub_1000510B4(v8, v125);
              isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
              if ((isStackAllocationSafe & 1) == 0)
              {
                v100 = swift_slowAlloc();

                sub_1000510B4(v8, v125);
                sub_10026461C(v100, v100 + v30, 0, v106, v105, v104, v29, v50, v108, v52, &v114);

                v30 = v103;
                goto LABEL_86;
              }
            }

            else
            {
              sub_1000510B4(v8, v125);

              isStackAllocationSafe = sub_1000510B4(v8, v125);
            }

            v107 = &v101;
            __chkstk_darwin(isStackAllocationSafe);
            v75 = &v101 - v74;
            v76 = &v101 + v30 - v74;
            v77 = swift_allocObject();
            v77[2] = 0;
            v78 = v77 + 2;
            v77[3] = v30;
            v77[4] = v75;
            v77[5] = v76;
            sub_1002625DC(sub_100269B30, v77, v29, v50, v108, v52, &v114);
            swift_beginAccess();
            v79 = *v78;
            v80 = *(v106 + 8);
            if (v80 >= 1)
            {
              if (__OFADD__(v80, v79))
              {
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
                goto LABEL_142;
              }

              if (v80 + v79 >= 79)
              {
                v80 = v105;
                sub_1002652C0(*v106, v105);
                (v80)("\t", "");
                if (v79 < 0)
                {
LABEL_147:
                  __break(1u);
                  goto LABEL_148;
                }

                (v80)(v75, &v75[v79]);

                if (v30 < v79)
                {
                  goto LABEL_149;
                }

                v81 = v79 + 1;
                v30 = v103;
                if (!__OFADD__(v79, 1))
                {
LABEL_85:
                  *(v106 + 8) = v81;
LABEL_86:

                  sub_100051110(v8);
                  sub_100051110(v8);
                  swift_bridgeObjectRelease_n();
                  swift_bridgeObjectRelease_n();
                  result = sub_100260678(*(&v114 + 1), v115, *(&v115 + 1), v105, v104);
                  goto LABEL_107;
                }

                __break(1u);
              }
            }

            if (v79 < 0)
            {
LABEL_132:
              __break(1u);
              goto LABEL_133;
            }

            v105(v75, &v75[v79]);

            if (v30 < v79)
            {
LABEL_135:
              __break(1u);
              goto LABEL_136;
            }

            v81 = v80 + v79;
            v30 = v103;
            if (__OFADD__(v80, v79))
            {
LABEL_137:
              __break(1u);
              goto LABEL_138;
            }

            goto LABEL_85;
          }

          goto LABEL_36;
        }

        v53 = HIBYTE(v50) & 0xF;
        if ((v52 & 0x1000000000000000) != 0)
        {
          goto LABEL_66;
        }
      }

LABEL_33:
      if ((v52 & 0x2000000000000000) != 0)
      {
        v54 = HIBYTE(v52) & 0xF;
        v28 = (v53 + v54);
        if (!__OFADD__(v53, v54))
        {
          goto LABEL_70;
        }
      }

      else
      {
        v54 = v51 & 0xFFFFFFFFFFFFLL;
        v28 = (v53 + (v51 & 0xFFFFFFFFFFFFLL));
        if (!__OFADD__(v53, v51 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_70;
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      v55 = v28[2];
      v56 = v28[3];
      a1 = v28[4];
      if ((v56 & 0x1000000000000000) != 0)
      {
        v95 = v28[2];
        v96 = v28[3];
        v97 = sub_1004A59E4();
        v57 = v97 + 6;
        if (!__OFADD__(v97, 6))
        {
LABEL_88:
          if (v57 < 0)
          {
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

          if (v57 >= 1025)
          {
            sub_1000510B4(v8, v125);

            sub_1000510B4(v8, v125);

            v83 = swift_stdlib_isStackAllocationSafe();
            if ((v83 & 1) == 0)
            {
              v99 = swift_slowAlloc();
              sub_1000510B4(v8, v125);

              sub_100263BE8(v99, v99 + v57, 0, v106, v105, v104, v55, v56, a1, &v114);

              sub_100051110(v8);
              sub_100051110(v8);

              v88 = *(&v115 + 1);
              goto LABEL_105;
            }
          }

          else
          {
            sub_1000510B4(v8, v125);

            sub_1000510B4(v8, v125);
          }

          v108 = &v101;
          __chkstk_darwin(v83);
          v85 = &v101 - v84;
          v86 = &v101 + v57 - v84;
          v87 = swift_allocObject();
          v87[2] = 0;
          v87[3] = v57;
          v87[4] = v85;
          v87[5] = v86;
          sub_100264D48("text/", "", v87);
          sub_10026508C(v55, v56, sub_100267A90);
          v88 = *(&v115 + 1);
          if (*(*(&v115 + 1) + 16))
          {
            LOBYTE(v125[0]) = 59;
            sub_100264D48(v125, v125 + 1, v87);
          }

          swift_beginAccess();
          v89 = v87[2];
          v90 = *(v106 + 8);
          if (v90 >= 1)
          {
            if (__OFADD__(v90, v89))
            {
LABEL_139:
              __break(1u);
              goto LABEL_140;
            }

            if (v90 + v89 >= 79)
            {
              v90 = v105;
              sub_1002652C0(*v106, v105);
              (v90)("\t", "");
              if (v89 < 0)
              {
LABEL_145:
                __break(1u);
                goto LABEL_146;
              }

              (v90)(v85, &v85[v89]);

              if (v57 < v89)
              {
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
              }

              v91 = v89 + 1;
              if (!__OFADD__(v89, 1))
              {
LABEL_104:
                *(v106 + 8) = v91;

                sub_100051110(v8);
                sub_100051110(v8);

LABEL_105:
                result = sub_100260678(*(&v114 + 1), v115, v88, v105, v104);
                goto LABEL_106;
              }

              __break(1u);
            }
          }

          if (v89 < 0)
          {
            goto LABEL_130;
          }

          v105(v85, &v85[v89]);

          if (v57 < v89)
          {
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          v91 = v90 + v89;
          if (__OFADD__(v90, v89))
          {
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          goto LABEL_104;
        }
      }

      else if ((v56 & 0x2000000000000000) != 0)
      {
        v82 = HIBYTE(v56) & 0xF;
        v57 = v82 + 6;
        if (!__OFADD__(v82, 6))
        {
          goto LABEL_88;
        }
      }

      else
      {
        v57 = (v55 & 0xFFFFFFFFFFFFLL) + 6;
        if (!__OFADD__(v55 & 0xFFFFFFFFFFFFLL, 6))
        {
          goto LABEL_88;
        }
      }

      __break(1u);
LABEL_42:

LABEL_44:

      v45 = sub_10015BC90(a4, a1);

LABEL_45:
      sub_100260678(v109, v110, v111, v105, v104);

      *v103 = v45;
      return result;
    }

    if (v114 >> 62 != 1)
    {
      goto LABEL_37;
    }

    memcpy(v125, v28 + 2, 0x148uLL);
    a6 = *(&v125[0] + 1);
    v29 = *&v125[0];
    if ((*(&v125[0] + 1) & 0x1000000000000000) != 0)
    {
      break;
    }

    if ((*(&v125[0] + 1) & 0x2000000000000000) != 0)
    {
      v59 = HIBYTE(*(&v125[0] + 1)) & 0xFLL;
      v30 = v59 + 9;
      if (!__OFADD__(v59, 9))
      {
        goto LABEL_47;
      }
    }

    else
    {
      v30 = (*&v125[0] & 0xFFFFFFFFFFFFLL) + 9;
      if (!__OFADD__(*&v125[0] & 0xFFFFFFFFFFFFLL, 9))
      {
        goto LABEL_47;
      }
    }

LABEL_14:
    __break(1u);
LABEL_15:
    v16 = (HIBYTE(v24) & 0xF);
    v25 = v16 + 10;
    if (!__OFADD__(v16, 10))
    {
      goto LABEL_16;
    }

LABEL_7:
    __break(1u);
  }

  v92 = sub_1004A59E4();
  v30 = v92 + 9;
  if (__OFADD__(v92, 9))
  {
    goto LABEL_14;
  }

LABEL_47:
  if (v30 < 0)
  {
    goto LABEL_141;
  }

  v27 = &v109;
  v54 = v8;
  if (v30 < 1025)
  {
    sub_1000510B4(v8, &v109);
    sub_100259990(v125, &v109);
    sub_1000510B4(v8, &v109);
    v60 = sub_100259990(v125, &v109);
    goto LABEL_50;
  }

LABEL_123:
  sub_1000510B4(v54, v27);
  sub_100259990(v125, &v109);
  sub_1000510B4(v8, &v109);
  sub_100259990(v125, &v109);
  v60 = swift_stdlib_isStackAllocationSafe();
  if (v60)
  {
LABEL_50:
    __chkstk_darwin(v60);
    v62 = &v101 - v61;
    v63 = &v101 + v30 - v61;
    v64 = swift_allocObject();
    v64[2] = 0;
    v64[3] = v30;
    v64[4] = v62;
    v64[5] = v63;
    sub_100264D48("message/", "", v64);
    sub_10026508C(v29, a6, sub_100269B30);
    v65 = *(&v115 + 1);
    if (*(*(&v115 + 1) + 16))
    {
      LOBYTE(v109) = 59;
      sub_100264D48(&v109, &v109 + 1, v64);
    }

    swift_beginAccess();
    v66 = v64[2];
    v67 = *(v106 + 8);
    if (v67 >= 1)
    {
      if (__OFADD__(v67, v66))
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      if (v67 + v66 >= 79)
      {
        v67 = v105;
        v68 = v104;
        sub_1002652C0(*v106, v105);
        (v67)("\t", "");
        if (v66 < 0)
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        (v67)(v62, &v62[v66]);

        if (v30 < v66)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        v62 = v68;
        v69 = v66 + 1;
        v70 = v106;
        if (!__OFADD__(v66, 1))
        {
          goto LABEL_63;
        }

        __break(1u);
      }
    }

    if ((v66 & 0x8000000000000000) == 0)
    {
      v71 = &v62[v66];
      v72 = v62;
      v62 = v104;
      v105(v72, v71);

      if (v30 >= v66)
      {
        v69 = v67 + v66;
        v70 = v106;
        if (!__OFADD__(v67, v66))
        {
LABEL_63:
          *(v70 + 8) = v69;
          sub_1002599EC(v125);
          sub_100051110(v8);
          sub_100051110(v8);
          goto LABEL_64;
        }

        goto LABEL_134;
      }

      goto LABEL_131;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v98 = swift_slowAlloc();
  sub_1000510B4(v8, &v109);
  sub_100259990(v125, &v109);
  sub_100264128(v98, v98 + v30, 0, v106, v105, v104, v125, &v114);

  sub_1002599EC(v125);
  sub_100051110(v8);
  sub_100051110(v8);
  v65 = *(&v115 + 1);
  v62 = v104;
LABEL_64:
  sub_100260678(*(&v114 + 1), v115, v65, v105, v62);
  result = sub_1002599EC(v125);
LABEL_106:
  v30 = v103;
LABEL_107:
  *v30 = 0;
  return result;
}

uint64_t sub_1002625DC(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  sub_10026508C(a3, a4, a1);
  v13 = 47;
  a1(&v13, &v14);
  result = sub_10026508C(a5, a6, a1);
  if (*(*(a7 + 24) + 16))
  {
    v12 = 59;
    return a1(&v12, &v13);
  }

  return result;
}

uint64_t sub_1002626BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (*v4)
  {
    v12 = *v4;

    v13 = sub_1001E74AC(a3, a4, v10 + 32, v11, (v9 + 16));
    v15 = v14;
    v17 = v16;

    if ((v15 & 1) == 0)
    {

      if (!a2)
      {
        goto LABEL_27;
      }

LABEL_21:
      v27 = v4[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1001EDFFC(v27);
        v27 = result;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v13 < *(v27 + 16))
      {
        v28 = v27 + 16 * v13;
        v29 = *(v28 + 40);
        *(v28 + 32) = a1;
        *(v28 + 40) = a2;

        v4[2] = v27;
        return result;
      }

      __break(1u);
      return result;
    }
  }

  else if (v11)
  {
    v13 = 0;
    v18 = (v10 + 40);
    while (1)
    {
      v19 = *(v18 - 1) == a3 && *v18 == a4;
      if (v19 || (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      ++v13;
      v18 += 2;
      if (v11 == v13)
      {
        goto LABEL_13;
      }
    }

    if (!a2)
    {
      v17 = 0;
LABEL_27:
      sub_1001E6930(v13, v17);

      sub_1001E6B20(v13);
LABEL_28:
    }

    goto LABEL_21;
  }

LABEL_13:
  if (!a2)
  {
    goto LABEL_28;
  }

  sub_1001E67B8(a3, a4);

  v22 = v4[2];
  v20 = v4 + 2;
  v21 = v22;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v22;
  if ((result & 1) == 0)
  {
    result = sub_100091A08(0, *(v21 + 16) + 1, 1);
    v21 = *v20;
  }

  v25 = *(v21 + 16);
  v24 = *(v21 + 24);
  if (v25 >= v24 >> 1)
  {
    result = sub_100091A08((v24 > 1), v25 + 1, 1);
    v21 = *v20;
  }

  *(v21 + 16) = v25 + 1;
  v26 = v21 + 16 * v25;
  *(v26 + 32) = a1;
  *(v26 + 40) = a2;
  *v20 = v21;
  return result;
}

uint64_t sub_1002628DC(char a1, uint64_t a2)
{
  v27 = &type metadata for UnsafeRawBufferPointer;
  v28 = &protocol witness table for UnsafeRawBufferPointer;
  v25 = "X-Apple-Content-Length";
  v26 = "";
  v4 = sub_10002587C(&v25, &type metadata for UnsafeRawBufferPointer);
  v6 = *v4;
  v5 = v4[1];
  sub_1004A43F4();
  sub_1000197E0(&v25);
  v27 = &type metadata for UnsafeRawBufferPointer;
  v28 = &protocol witness table for UnsafeRawBufferPointer;
  v25 = ": ";
  v26 = "";
  v7 = sub_10002587C(&v25, &type metadata for UnsafeRawBufferPointer);
  v9 = *v7;
  v8 = v7[1];
  sub_1004A43F4();
  sub_1000197E0(&v25);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1004E9FF0;
  *(v10 + 32) = v24;
  *(v10 + 40) = &v25;
  v25 = a2;
  v11 = sub_1004A6CE4();
  sub_100266E78(v11, v12, v10);

  swift_beginAccess();
  v13 = *(v10 + 16);
  if (__OFADD__(v13, 24))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 16) + 24 < 79)
  {
    goto LABEL_6;
  }

  sub_100267804(a1);
  v27 = &type metadata for UnsafeRawBufferPointer;
  v28 = &protocol witness table for UnsafeRawBufferPointer;
  v25 = "\t";
  v26 = "";
  v14 = sub_10002587C(&v25, &type metadata for UnsafeRawBufferPointer);
  v16 = *v14;
  v15 = v14[1];
  sub_1004A43F4();
  sub_1000197E0(&v25);
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v27 = &type metadata for UnsafeRawBufferPointer;
  v28 = &protocol witness table for UnsafeRawBufferPointer;
  v25 = v24;
  v26 = &v24[v13];
  v17 = sub_10002587C(&v25, &type metadata for UnsafeRawBufferPointer);
  v19 = *v17;
  v18 = v17[1];
  sub_1004A43F4();
  sub_1000197E0(&v25);

  if (v13 > 0x46)
  {
    __break(1u);
LABEL_6:
    if ((v13 & 0x8000000000000000) == 0)
    {
      v27 = &type metadata for UnsafeRawBufferPointer;
      v28 = &protocol witness table for UnsafeRawBufferPointer;
      v25 = v24;
      v26 = &v24[v13];
      v20 = sub_10002587C(&v25, &type metadata for UnsafeRawBufferPointer);
      v22 = *v20;
      v21 = v20[1];
      sub_1004A43F4();
      sub_1000197E0(&v25);

      if (v13 <= 0x46)
      {
        return sub_100267804(a1);
      }

LABEL_12:
      __break(1u);
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return sub_100267804(a1);
}

uint64_t sub_100262B54(char a1, uint64_t a2, uint64_t (*a3)(char *, char *))
{
  a3("X-Apple-Content-Length", "");
  a3(": ", "");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004E9FF0;
  *(v5 + 32) = v10;
  *(v5 + 40) = &v11;
  v6 = sub_1004A6CE4();
  sub_100266E78(v6, v7, v5);

  swift_beginAccess();
  v8 = *(v5 + 16);
  if (__OFADD__(v8, 24))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v5 + 16) + 24 < 79)
  {
    goto LABEL_6;
  }

  sub_1002652C0(a1, a3);
  a3("\t", "");
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a3(v10, &v10[v8]);

  if (v8 > 0x46)
  {
    __break(1u);
LABEL_6:
    if ((v8 & 0x8000000000000000) == 0)
    {
      a3(v10, &v10[v8]);

      if (v8 <= 0x46)
      {
        return sub_1002652C0(a1, a3);
      }

LABEL_12:
      __break(1u);
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return sub_1002652C0(a1, a3);
}

unint64_t sub_100262D2C()
{

  while (1)
  {
    v0 = sub_1004A59D4();
    v2 = v1;
    if (!v1)
    {
      goto LABEL_24;
    }

    v3 = v0;
    if (v0 == 2573 && v1 == 0xE200000000000000)
    {
      goto LABEL_17;
    }

    result = sub_1004A6D34();
    if (result)
    {
      goto LABEL_17;
    }

    v5 = (v2 & 0x2000000000000000) != 0 ? HIBYTE(v2) & 0xF : v3 & 0xFFFFFFFFFFFFLL;
    if (!v5)
    {
      break;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      v6 = sub_1004A5884();
    }

    else
    {
      v6 = sub_1004A6704(0) << 16;
    }

    if (v6 >> 14 != 4 * v5)
    {
      goto LABEL_23;
    }

    result = sub_1001E11BC(v3, v2);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_27;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_23:

LABEL_24:

      return v2 == 0;
    }

    result = sub_1001E11BC(v3, v2);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_28;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_26;
    }

LABEL_17:
    v7 = sub_100262EC4(v3, v2);

    if ((v7 & 0x100) != 0 || v7 - 127 < 0xFFFFFFA2 || v7 - 34 <= 0x3B && ((1 << (v7 - 34)) & 0xE0000007F0024C1) != 0)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100262EC4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = sub_1004A5A24();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = sub_1004A67E4();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t sub_100262F54(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unsigned __int8 a9)
{
  if (a1)
  {
    v15 = a2 - a1;
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v17 = v16;
  v18 = a9;
  v16[2] = 0;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v16);
  }

  sub_10026751C(a5, a6, v17);
  LOBYTE(v43) = 61;
  sub_100264D48(&v43, &v43 + 1, v17);
  sub_1002681A0(a7, a8, v17);
  if ((a9 & 1) == 0)
  {
    LOBYTE(v43) = 59;
    sub_100264D48(&v43, &v43 + 1, v17);
  }

  swift_beginAccess();
  v19 = v17[2];
  v20 = *(a4 + 8);
  if (v20 >= 1)
  {
    v21 = __OFADD__(v20, v19);
    v22 = v20 + v19;
    if (v21)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v22 >= 79)
    {
      sub_100267804(*a4);
      v18 = &type metadata for UnsafeRawBufferPointer;
      v45 = &type metadata for UnsafeRawBufferPointer;
      v46 = &protocol witness table for UnsafeRawBufferPointer;
      v43 = "\t";
      v44 = "";
      v23 = sub_10002587C(&v43, &type metadata for UnsafeRawBufferPointer);
      v25 = *v23;
      v24 = v23[1];
      sub_1004A43F4();
      sub_1000197E0(&v43);
      if (a3)
      {
        if (v19 < 1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v26 = 1;
        goto LABEL_23;
      }

LABEL_21:
      if (v19 < 0)
      {
        goto LABEL_34;
      }

      v26 = 0;
LABEL_23:
      v34 = (a1 + v26);
      v35 = (a1 + v19);
      if (!a1)
      {
        v35 = 0;
      }

      v45 = v18;
      v46 = &protocol witness table for UnsafeRawBufferPointer;
      if (!a1)
      {
        v34 = 0;
      }

      v43 = v34;
      v44 = v35;
      v36 = sub_10002587C(&v43, v18);
      v38 = *v36;
      v37 = v36[1];
      sub_1004A43F4();
      sub_1000197E0(&v43);
      v39 = sub_1002881FC(v26, v19, a1, a2);
      v33 = v39 + 1;
      if (!__OFADD__(v39, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  if (v19 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v27 = (v19 + a1);
  if (!a1)
  {
    v27 = 0;
  }

  v45 = &type metadata for UnsafeRawBufferPointer;
  v46 = &protocol witness table for UnsafeRawBufferPointer;
  v43 = a1;
  v44 = v27;
  v28 = sub_10002587C(&v43, &type metadata for UnsafeRawBufferPointer);
  v30 = *v28;
  v29 = v28[1];
  sub_1004A43F4();
  sub_1000197E0(&v43);
  v31 = sub_1002881FC(0, v19, a1, a2);
  v32 = *(a4 + 8);
  v21 = __OFADD__(v32, v31);
  v33 = v32 + v31;
  if (v21)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *(a4 + 8) = v33;
}

uint64_t sub_10026322C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, char a11)
{
  if (a1)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v19 = v18;
  v20 = a3;
  v21 = a5;
  v22 = a4;
  v18[2] = 0;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a2;
  v36 = v20;
  if (v20)
  {
    sub_100264D48(" ", "", v18);
  }

  sub_10026508C(a7, a8, sub_100269B30);
  v38 = 61;
  sub_100264D48(&v38, v39, v19);
  sub_100265D60(a9, a10, sub_100269B30);
  if ((a11 & 1) == 0)
  {
    v38 = 59;
    sub_100264D48(&v38, v39, v19);
  }

  swift_beginAccess();
  v23 = v19[2];
  v24 = *(a4 + 8);
  if (v24 >= 1)
  {
    v25 = __OFADD__(v24, v23);
    v26 = v24 + v23;
    if (v25)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v26 >= 79)
    {
      sub_1002652C0(*a4, v21);
      v21("\t", "");
      if (v36)
      {
        if (v23 < 1)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v27 = 1;
        goto LABEL_24;
      }

LABEL_22:
      if (v23 < 0)
      {
        goto LABEL_37;
      }

      v27 = 0;
LABEL_24:
      if (a1)
      {
        v32 = (a1 + v23);
      }

      else
      {
        v32 = 0;
      }

      if (a1)
      {
        v33 = (a1 + v27);
      }

      else
      {
        v33 = 0;
      }

      v21(v33, v32);
      v34 = sub_1002881FC(v27, v23, a1, a2);
      v31 = v34 + 1;
      if (!__OFADD__(v34, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  if (v23 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1)
  {
    v28 = (v23 + a1);
  }

  else
  {
    v28 = 0;
  }

  v21(a1, v28);
  v29 = sub_1002881FC(0, v23, a1, a2);
  v30 = *(a4 + 8);
  v25 = __OFADD__(v30, v29);
  v31 = v30 + v29;
  if (v25)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_31:
  *(v22 + 8) = v31;
}

uint64_t *sub_1002634CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v10 = a2 - a1;
  }

  else
  {
    v10 = 0;
  }

  result = swift_allocObject();
  if (v10 < 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = result;
  result[2] = 0;
  result[3] = v10;
  result[4] = a1;
  result[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", result);
  }

  sub_100264D48("multipart/", "", v12);
  sub_10026751C(*(a5 + 8), *(a5 + 16), v12);
  result = swift_beginAccess();
  v13 = v12[2];
  v14 = *(a4 + 8);
  if (v14 < 1)
  {
    goto LABEL_13;
  }

  v15 = __OFADD__(v14, v13);
  v16 = v14 + v13;
  if (v15)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v16 < 79)
  {
LABEL_13:
    if ((v13 & 0x8000000000000000) == 0)
    {
      v21 = (v13 + a1);
      if (!a1)
      {
        v21 = 0;
      }

      v34 = &type metadata for UnsafeRawBufferPointer;
      v35 = &protocol witness table for UnsafeRawBufferPointer;
      v32 = a1;
      v33 = v21;
      v22 = sub_10002587C(&v32, &type metadata for UnsafeRawBufferPointer);
      v24 = *v22;
      v23 = v22[1];
      sub_1004A43F4();
      sub_1000197E0(&v32);
      result = sub_1002881FC(0, v13, a1, a2);
      v25 = *(a4 + 8);
      v15 = __OFADD__(v25, result);
      v26 = result + v25;
      if (!v15)
      {
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  sub_100267804(*a4);
  v10 = &type metadata for UnsafeRawBufferPointer;
  v34 = &type metadata for UnsafeRawBufferPointer;
  v35 = &protocol witness table for UnsafeRawBufferPointer;
  v32 = "\t";
  v33 = "";
  v17 = sub_10002587C(&v32, &type metadata for UnsafeRawBufferPointer);
  v19 = *v17;
  v18 = v17[1];
  sub_1004A43F4();
  result = sub_1000197E0(&v32);
  if (a3)
  {
    if (v13 < 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v20 = 1;
    goto LABEL_21;
  }

LABEL_19:
  if ((v13 & 0x8000000000000000) == 0)
  {
    v20 = 0;
LABEL_21:
    v27 = (a1 + v20);
    v28 = (a1 + v13);
    if (!a1)
    {
      v28 = 0;
    }

    v34 = v10;
    v35 = &protocol witness table for UnsafeRawBufferPointer;
    if (!a1)
    {
      v27 = 0;
    }

    v32 = v27;
    v33 = v28;
    v29 = sub_10002587C(&v32, v10);
    v31 = *v29;
    v30 = v29[1];
    sub_1004A43F4();
    sub_1000197E0(&v32);
    result = sub_1002881FC(v20, v13, a1, a2);
    v26 = result + 1;
    if (!__OFADD__(result, 1))
    {
LABEL_26:
      *(a4 + 8) = v26;

      return sub_100267AA8(a5);
    }

    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t *sub_10026372C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  result = swift_allocObject();
  if (v13 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = result;
  result[2] = 0;
  result[3] = v13;
  result[4] = a1;
  result[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", result);
  }

  sub_100264D48("multipart/", "", v15);
  sub_10026508C(*(a7 + 8), *(a7 + 16), sub_100269B30);
  result = swift_beginAccess();
  v16 = v15[2];
  v17 = *(a4 + 8);
  if (v17 < 1)
  {
    goto LABEL_13;
  }

  v18 = __OFADD__(v17, v16);
  v19 = v17 + v16;
  if (v18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v19 < 79)
  {
LABEL_13:
    if ((v16 & 0x8000000000000000) == 0)
    {
      if (a1)
      {
        v21 = v16 + a1;
      }

      else
      {
        v21 = 0;
      }

      a5(a1, v21);
      result = sub_1002881FC(0, v16, a1, a2);
      v22 = *(a4 + 8);
      v18 = __OFADD__(v22, result);
      v23 = result + v22;
      if (!v18)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  sub_1002652C0(*a4, a5);
  result = a5("\t", "");
  if (a3)
  {
    if (v16 < 1)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v20 = 1;
    goto LABEL_22;
  }

LABEL_20:
  if ((v16 & 0x8000000000000000) == 0)
  {
    v20 = 0;
LABEL_22:
    if (a1)
    {
      v24 = a1 + v16;
    }

    else
    {
      v24 = 0;
    }

    if (a1)
    {
      v25 = a1 + v20;
    }

    else
    {
      v25 = 0;
    }

    a5(v25, v24);
    result = sub_1002881FC(v20, v16, a1, a2);
    v23 = result + 1;
    if (!__OFADD__(result, 1))
    {
LABEL_29:
      *(a4 + 8) = v23;

      return sub_100267AA8(a7);
    }

    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100263920(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v15 = a2 - a1;
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v17 = v16;
  v16[2] = 0;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v16);
  }

  sub_100264D48("text/", "", v17);
  sub_10026751C(a5, a6, v17);
  if (*(*(a8 + 24) + 16))
  {
    LOBYTE(v40) = 59;
    sub_100264D48(&v40, &v40 + 1, v17);
  }

  swift_beginAccess();
  v18 = v17[2];
  v19 = *(a4 + 8);
  if (v19 >= 1)
  {
    v20 = __OFADD__(v19, v18);
    v21 = v19 + v18;
    if (v20)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v21 >= 79)
    {
      sub_100267804(*a4);
      v42 = &type metadata for UnsafeRawBufferPointer;
      v43 = &protocol witness table for UnsafeRawBufferPointer;
      v40 = "\t";
      v41 = "";
      v22 = sub_10002587C(&v40, &type metadata for UnsafeRawBufferPointer);
      v24 = *v22;
      v23 = v22[1];
      sub_1004A43F4();
      sub_1000197E0(&v40);
      if (a3)
      {
        if (v18 < 1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v25 = 1;
        goto LABEL_23;
      }

LABEL_21:
      if (v18 < 0)
      {
        goto LABEL_34;
      }

      v25 = 0;
LABEL_23:
      v33 = (a1 + v25);
      v34 = (a1 + v18);
      if (!a1)
      {
        v34 = 0;
      }

      v42 = &type metadata for UnsafeRawBufferPointer;
      v43 = &protocol witness table for UnsafeRawBufferPointer;
      if (!a1)
      {
        v33 = 0;
      }

      v40 = v33;
      v41 = v34;
      v35 = sub_10002587C(&v40, &type metadata for UnsafeRawBufferPointer);
      v37 = *v35;
      v36 = v35[1];
      sub_1004A43F4();
      sub_1000197E0(&v40);
      v38 = sub_1002881FC(v25, v18, a1, a2);
      v32 = v38 + 1;
      if (!__OFADD__(v38, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  if (v18 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = (v18 + a1);
  if (!a1)
  {
    v26 = 0;
  }

  v42 = &type metadata for UnsafeRawBufferPointer;
  v43 = &protocol witness table for UnsafeRawBufferPointer;
  v40 = a1;
  v41 = v26;
  v27 = sub_10002587C(&v40, &type metadata for UnsafeRawBufferPointer);
  v29 = *v27;
  v28 = v27[1];
  sub_1004A43F4();
  sub_1000197E0(&v40);
  v30 = sub_1002881FC(0, v18, a1, a2);
  v31 = *(a4 + 8);
  v20 = __OFADD__(v31, v30);
  v32 = v31 + v30;
  if (v20)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *(a4 + 8) = v32;

  return sub_100257954(a8);
}

uint64_t sub_100263BE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_allocObject();
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v18 = v17;
  v17[2] = 0;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v17);
  }

  sub_100264D48("text/", "", v18);
  sub_10026508C(a7, a8, sub_100269B30);
  if (*(*(a10 + 24) + 16))
  {
    v33 = 59;
    sub_100264D48(&v33, v34, v18);
  }

  swift_beginAccess();
  v19 = v18[2];
  v20 = *(a4 + 8);
  if (v20 >= 1)
  {
    v21 = __OFADD__(v20, v19);
    v22 = v20 + v19;
    if (v21)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v22 >= 79)
    {
      sub_1002652C0(*a4, a5);
      a5("\t", "");
      if (a3)
      {
        if (v19 < 1)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v23 = 1;
        goto LABEL_24;
      }

LABEL_22:
      if (v19 < 0)
      {
        goto LABEL_37;
      }

      v23 = 0;
LABEL_24:
      if (a1)
      {
        v28 = (a1 + v19);
      }

      else
      {
        v28 = 0;
      }

      if (a1)
      {
        v29 = (a1 + v23);
      }

      else
      {
        v29 = 0;
      }

      a5(v29, v28);
      v30 = sub_1002881FC(v23, v19, a1, a2);
      v27 = v30 + 1;
      if (!__OFADD__(v30, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  if (v19 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1)
  {
    v24 = (v19 + a1);
  }

  else
  {
    v24 = 0;
  }

  a5(a1, v24);
  v25 = sub_1002881FC(0, v19, a1, a2);
  v26 = *(a4 + 8);
  v21 = __OFADD__(v26, v25);
  v27 = v26 + v25;
  if (v21)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_31:
  *(a4 + 8) = v27;

  return sub_100257954(a10);
}

uint64_t sub_100263E68(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v12 = a2 - a1;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v14 = v13;
  v13[2] = 0;
  v13[3] = v12;
  v13[4] = a1;
  v13[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v13);
  }

  sub_100264D48("message/", "", v14);
  sub_10026751C(*a5, *(a5 + 8), v14);
  if (*(*(a6 + 24) + 16))
  {
    LOBYTE(v37) = 59;
    sub_100264D48(&v37, &v37 + 1, v14);
  }

  swift_beginAccess();
  v15 = v14[2];
  v16 = *(a4 + 8);
  if (v16 >= 1)
  {
    v17 = __OFADD__(v16, v15);
    v18 = v16 + v15;
    if (v17)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v18 >= 79)
    {
      sub_100267804(*a4);
      v39 = &type metadata for UnsafeRawBufferPointer;
      v40 = &protocol witness table for UnsafeRawBufferPointer;
      v37 = "\t";
      v38 = "";
      v19 = sub_10002587C(&v37, &type metadata for UnsafeRawBufferPointer);
      v21 = *v19;
      v20 = v19[1];
      sub_1004A43F4();
      sub_1000197E0(&v37);
      if (a3)
      {
        if (v15 < 1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v22 = 1;
        goto LABEL_23;
      }

LABEL_21:
      if (v15 < 0)
      {
        goto LABEL_34;
      }

      v22 = 0;
LABEL_23:
      v30 = (a1 + v22);
      v31 = (a1 + v15);
      if (!a1)
      {
        v31 = 0;
      }

      v39 = &type metadata for UnsafeRawBufferPointer;
      v40 = &protocol witness table for UnsafeRawBufferPointer;
      if (!a1)
      {
        v30 = 0;
      }

      v37 = v30;
      v38 = v31;
      v32 = sub_10002587C(&v37, &type metadata for UnsafeRawBufferPointer);
      v34 = *v32;
      v33 = v32[1];
      sub_1004A43F4();
      sub_1000197E0(&v37);
      v35 = sub_1002881FC(v22, v15, a1, a2);
      v29 = v35 + 1;
      if (!__OFADD__(v35, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  if (v15 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v23 = (v15 + a1);
  if (!a1)
  {
    v23 = 0;
  }

  v39 = &type metadata for UnsafeRawBufferPointer;
  v40 = &protocol witness table for UnsafeRawBufferPointer;
  v37 = a1;
  v38 = v23;
  v24 = sub_10002587C(&v37, &type metadata for UnsafeRawBufferPointer);
  v26 = *v24;
  v25 = v24[1];
  sub_1004A43F4();
  sub_1000197E0(&v37);
  v27 = sub_1002881FC(0, v15, a1, a2);
  v28 = *(a4 + 8);
  v17 = __OFADD__(v28, v27);
  v29 = v28 + v27;
  if (v17)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *(a4 + 8) = v29;

  sub_1002599EC(a5);
  return sub_100257954(a6);
}

uint64_t sub_100264128(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  v15 = swift_allocObject();
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v16 = v15;
  v15[2] = 0;
  v15[3] = v14;
  v15[4] = a1;
  v15[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v15);
  }

  sub_100264D48("message/", "", v16);
  sub_10026508C(*a7, *(a7 + 8), sub_100269B30);
  if (*(*(a8 + 24) + 16))
  {
    v31 = 59;
    sub_100264D48(&v31, v32, v16);
  }

  swift_beginAccess();
  v17 = v16[2];
  v18 = *(a4 + 8);
  if (v18 >= 1)
  {
    v19 = __OFADD__(v18, v17);
    v20 = v18 + v17;
    if (v19)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v20 >= 79)
    {
      sub_1002652C0(*a4, a5);
      a5("\t", "");
      if (a3)
      {
        if (v17 < 1)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v21 = 1;
        goto LABEL_24;
      }

LABEL_22:
      if (v17 < 0)
      {
        goto LABEL_37;
      }

      v21 = 0;
LABEL_24:
      if (a1)
      {
        v26 = (a1 + v17);
      }

      else
      {
        v26 = 0;
      }

      if (a1)
      {
        v27 = (a1 + v21);
      }

      else
      {
        v27 = 0;
      }

      a5(v27, v26);
      v28 = sub_1002881FC(v21, v17, a1, a2);
      v25 = v28 + 1;
      if (!__OFADD__(v28, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  if (v17 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1)
  {
    v22 = (v17 + a1);
  }

  else
  {
    v22 = 0;
  }

  a5(a1, v22);
  v23 = sub_1002881FC(0, v17, a1, a2);
  v24 = *(a4 + 8);
  v19 = __OFADD__(v24, v23);
  v25 = v24 + v23;
  if (v19)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_31:
  *(a4 + 8) = v25;

  sub_1002599EC(a7);
  return sub_100257954(a8);
}

uint64_t *sub_100264384(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v46 = a4;
  if (a1)
  {
    v15 = a2 - a1;
  }

  else
  {
    v15 = 0;
  }

  result = swift_allocObject();
  if (v15 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = result;
  result[2] = 0;
  result[3] = v15;
  result[4] = a1;
  result[5] = a2;
  v18 = a2;
  if (a3)
  {
    sub_100264D48(" ", "", result);
  }

  v19 = a5;
  v20 = a9;
  sub_100267740(v19, a6, a7, a8, a9, v17);
  result = swift_beginAccess();
  v21 = v17[2];
  v22 = v46;
  v23 = *(v46 + 8);
  if (v23 < 1)
  {
    goto LABEL_13;
  }

  v24 = __OFADD__(v23, v21);
  v25 = v23 + v21;
  if (v24)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v25 < 79)
  {
LABEL_13:
    if ((v21 & 0x8000000000000000) == 0)
    {
      v30 = (v21 + a1);
      if (!a1)
      {
        v30 = 0;
      }

      v44 = &type metadata for UnsafeRawBufferPointer;
      v45 = &protocol witness table for UnsafeRawBufferPointer;
      v42 = a1;
      v43 = v30;
      v31 = sub_10002587C(&v42, &type metadata for UnsafeRawBufferPointer);
      v33 = *v31;
      v32 = v31[1];
      sub_1004A43F4();
      sub_1000197E0(&v42);
      result = sub_1002881FC(0, v21, a1, v18);
      v34 = *(v22 + 8);
      v24 = __OFADD__(v34, result);
      v35 = result + v34;
      if (!v24)
      {
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_29;
  }

  sub_100267804(*v46);
  v20 = &protocol witness table for UnsafeRawBufferPointer;
  v44 = &type metadata for UnsafeRawBufferPointer;
  v45 = &protocol witness table for UnsafeRawBufferPointer;
  v42 = "\t";
  v43 = "";
  v26 = sub_10002587C(&v42, &type metadata for UnsafeRawBufferPointer);
  v28 = *v26;
  v27 = v26[1];
  sub_1004A43F4();
  result = sub_1000197E0(&v42);
  if (a3)
  {
    if (v21 < 1)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v29 = 1;
    goto LABEL_21;
  }

LABEL_19:
  if ((v21 & 0x8000000000000000) == 0)
  {
    v29 = 0;
LABEL_21:
    v36 = (a1 + v29);
    v37 = (a1 + v21);
    if (!a1)
    {
      v37 = 0;
    }

    v44 = &type metadata for UnsafeRawBufferPointer;
    v45 = v20;
    if (!a1)
    {
      v36 = 0;
    }

    v42 = v36;
    v43 = v37;
    v38 = sub_10002587C(&v42, &type metadata for UnsafeRawBufferPointer);
    v40 = *v38;
    v39 = v38[1];
    sub_1004A43F4();
    sub_1000197E0(&v42);
    result = sub_1002881FC(v29, v21, a1, v18);
    v35 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v46;
      v20 = a9;
LABEL_27:
      *(v22 + 8) = v35;

      return sub_100257954(v20);
    }

    goto LABEL_31;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t *sub_10026461C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  if (a1)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = 0;
  }

  result = swift_allocObject();
  if (v17 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = result;
  result[2] = 0;
  result[3] = v17;
  result[4] = a1;
  result[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", result);
  }

  sub_1002625DC(sub_100269B30, v19, a7, a8, a9, a10, a11);
  result = swift_beginAccess();
  v20 = *(v19 + 16);
  v21 = *(a4 + 8);
  if (v21 < 1)
  {
    goto LABEL_13;
  }

  v22 = __OFADD__(v21, v20);
  v23 = v21 + v20;
  if (v22)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v23 < 79)
  {
LABEL_13:
    if ((v20 & 0x8000000000000000) == 0)
    {
      if (a1)
      {
        v25 = v20 + a1;
      }

      else
      {
        v25 = 0;
      }

      a5(a1, v25);
      result = sub_1002881FC(0, v20, a1, a2);
      v26 = *(a4 + 8);
      v22 = __OFADD__(v26, result);
      v27 = result + v26;
      if (!v22)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  sub_1002652C0(*a4, a5);
  result = a5("\t", "");
  if (a3)
  {
    if (v20 < 1)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v24 = 1;
    goto LABEL_22;
  }

LABEL_20:
  if ((v20 & 0x8000000000000000) == 0)
  {
    v24 = 0;
LABEL_22:
    if (a1)
    {
      v28 = a1 + v20;
    }

    else
    {
      v28 = 0;
    }

    if (a1)
    {
      v29 = a1 + v24;
    }

    else
    {
      v29 = 0;
    }

    a5(v29, v28);
    result = sub_1002881FC(v24, v20, a1, a2);
    v27 = result + 1;
    if (!__OFADD__(result, 1))
    {
LABEL_29:
      *(a4 + 8) = v27;

      return sub_100257954(a11);
    }

    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100264858(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, unint64_t a6)
{
  if (a1)
  {
    v12 = a2 - a1;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v14 = v13;
  v13[2] = 0;
  v13[3] = v12;
  v13[4] = a1;
  v13[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v13);
  }

  LOBYTE(v37) = 60;
  sub_100264D48(&v37, &v37 + 1, v14);
  sub_100266E78(a5, a6, v14);
  LOBYTE(v37) = 62;
  sub_100264D48(&v37, &v37 + 1, v14);
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(a4 + 8);
  if (v16 >= 1)
  {
    v17 = __OFADD__(v16, v15);
    v18 = v16 + v15;
    if (v17)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v18 >= 79)
    {
      sub_100267804(*a4);
      a5 = &type metadata for UnsafeRawBufferPointer;
      v39 = &type metadata for UnsafeRawBufferPointer;
      v40 = &protocol witness table for UnsafeRawBufferPointer;
      v37 = "\t";
      v38 = "";
      v19 = sub_10002587C(&v37, &type metadata for UnsafeRawBufferPointer);
      v21 = *v19;
      v20 = v19[1];
      sub_1004A43F4();
      sub_1000197E0(&v37);
      if (a3)
      {
        if (v15 < 1)
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
        }

        v22 = 1;
        goto LABEL_21;
      }

LABEL_19:
      if (v15 < 0)
      {
        goto LABEL_32;
      }

      v22 = 0;
LABEL_21:
      v30 = (a1 + v22);
      v31 = (a1 + v15);
      if (!a1)
      {
        v31 = 0;
      }

      v39 = a5;
      v40 = &protocol witness table for UnsafeRawBufferPointer;
      if (!a1)
      {
        v30 = 0;
      }

      v37 = v30;
      v38 = v31;
      v32 = sub_10002587C(&v37, a5);
      v34 = *v32;
      v33 = v32[1];
      sub_1004A43F4();
      sub_1000197E0(&v37);
      v35 = sub_1002881FC(v22, v15, a1, a2);
      v29 = v35 + 1;
      if (!__OFADD__(v35, 1))
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  if (v15 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v23 = (v15 + a1);
  if (!a1)
  {
    v23 = 0;
  }

  v39 = &type metadata for UnsafeRawBufferPointer;
  v40 = &protocol witness table for UnsafeRawBufferPointer;
  v37 = a1;
  v38 = v23;
  v24 = sub_10002587C(&v37, &type metadata for UnsafeRawBufferPointer);
  v26 = *v24;
  v25 = v24[1];
  sub_1004A43F4();
  sub_1000197E0(&v37);
  v27 = sub_1002881FC(0, v15, a1, a2);
  v28 = *(a4 + 8);
  v17 = __OFADD__(v28, v27);
  v29 = v28 + v27;
  if (v17)
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_26:
  *(a4 + 8) = v29;
}

uint64_t *sub_100264B0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char *a5, uint64_t a6)
{
  if (a1)
  {
    v12 = a2 - a1;
  }

  else
  {
    v12 = 0;
  }

  result = swift_allocObject();
  if (v12 < 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v14 = result;
  result[2] = 0;
  result[3] = v12;
  result[4] = a1;
  result[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", result);
  }

  sub_100269618(a5, a6, v14);
  result = swift_beginAccess();
  v15 = v14[2];
  v16 = *(a4 + 8);
  if (v16 < 1)
  {
    goto LABEL_13;
  }

  v17 = __OFADD__(v16, v15);
  v18 = v16 + v15;
  if (v17)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v18 < 79)
  {
LABEL_13:
    if ((v15 & 0x8000000000000000) == 0)
    {
      v23 = (v15 + a1);
      if (!a1)
      {
        v23 = 0;
      }

      v36 = &type metadata for UnsafeRawBufferPointer;
      v37 = &protocol witness table for UnsafeRawBufferPointer;
      v34 = a1;
      v35 = v23;
      v24 = sub_10002587C(&v34, &type metadata for UnsafeRawBufferPointer);
      v26 = *v24;
      v25 = v24[1];
      sub_1004A43F4();
      sub_1000197E0(&v34);
      result = sub_1002881FC(0, v15, a1, a2);
      v27 = *(a4 + 8);
      v17 = __OFADD__(v27, result);
      v28 = result + v27;
      if (!v17)
      {
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  sub_100267804(*a4);
  a5 = &type metadata for UnsafeRawBufferPointer;
  v12 = &protocol witness table for UnsafeRawBufferPointer;
  v36 = &type metadata for UnsafeRawBufferPointer;
  v37 = &protocol witness table for UnsafeRawBufferPointer;
  v34 = "\t";
  v35 = "";
  v19 = sub_10002587C(&v34, &type metadata for UnsafeRawBufferPointer);
  v21 = *v19;
  v20 = v19[1];
  sub_1004A43F4();
  result = sub_1000197E0(&v34);
  if (a3)
  {
    if (v15 < 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v22 = 1;
    goto LABEL_21;
  }

LABEL_19:
  if ((v15 & 0x8000000000000000) == 0)
  {
    v22 = 0;
LABEL_21:
    v29 = (a1 + v22);
    v30 = (a1 + v15);
    if (!a1)
    {
      v30 = 0;
    }

    v36 = a5;
    v37 = v12;
    if (!a1)
    {
      v29 = 0;
    }

    v34 = v29;
    v35 = v30;
    v31 = sub_10002587C(&v34, a5);
    v33 = *v31;
    v32 = v31[1];
    sub_1004A43F4();
    sub_1000197E0(&v34);
    result = sub_1002881FC(v22, v15, a1, a2);
    v28 = result + 1;
    if (!__OFADD__(result, 1))
    {
LABEL_26:
      *(a4 + 8) = v28;
    }

    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100264D48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  if (sub_1002881FC(a3[2], a3[3], a3[4], a3[5]) < v4)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v5 = a3[4];
  v6 = v5 + a3[2];
  if (v5)
  {
    v7 = v5 + a3[3];
    v8 = v5 + a3[2];
  }

  sub_1001F70CC();
  sub_1004A4074();
  swift_beginAccess();
  v9 = a3[2];
  v10 = v9 + v4;
  if (__OFADD__(v9, v4))
  {
    __break(1u);
  }

  else
  {
    v11 = a3[3];
    if (v11 >= v10)
    {
      if (v10 >= v9)
      {
        v13 = a3[4];
        v12 = a3[5];
        result = swift_beginAccess();
        a3[2] = v10;
        a3[3] = v11;
        a3[4] = v13;
        a3[5] = v12;
        return result;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_100264EAC(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_100091A08(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = sub_1004A4784();
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = sub_1004A4784();
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v17 = *(v7 + 16);
  if (v13 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  v19 = *(v7 + 16);
  result = sub_1004A4784();
  if (result <= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = result;
  }

  if (v20 < v11)
  {
    if (v13 <= v20)
    {
      v15 = v20;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v21 = sub_1001E72AC(v7, v15, 0, v13);

    *v3 = v21;
    return result;
  }

  if (!v10 || (v22 = *v3, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v23 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v24 = *v3;
  v23 = sub_1004A4774();

  *v3 = v23;
  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v23 + 24) & 0x3FLL) != v13)
  {
    *(v23 + 24) = *(v23 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t sub_10026508C(uint64_t a1, unint64_t a2, void (*a3)(char *, void *))
{
  v4 = HIBYTE(a2) & 0xF;
  v22[0] = a1;
  v22[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22[2] = 0;
  v22[3] = v4;

  v5 = sub_1004A59D4();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    while (1)
    {
      if (v7 == 2573 && v8 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
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
        v15 = sub_1004A5884();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v12 = v7;
        }

        else
        {
          v11 = ((v7 & 0x1000000000000000) != 0 ? (v8 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1004A67E4());
          v12 = *v11;
        }

        v13 = v12;
        v14 = (__clz(~v12) - 24) << 16;
        v15 = v13 < 0 ? v14 : 65541;
      }

      if (v15 >> 14 == 4 * v10)
      {
        v16 = sub_1001E11BC(v7, v8);
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
      v7 = sub_1004A59D4();
      v8 = v9;
      if (!v9)
      {
      }
    }

    v17 = sub_1001E11BC(v7, v8);
    if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_39;
    }

    if ((v17 & 0xFFFFFF00) != 0)
    {
      goto LABEL_37;
    }

LABEL_28:
    v18 = sub_100262EC4(v7, v8);

    if ((v18 & 0x100) == 0)
    {
      v19 = v18;
      if (v18 - 127 >= 0xFFFFFFA1)
      {
        if (v18 - 91 >= 0xFFFFFFE6)
        {
          v19 = v18 | 0x20;
        }

        v21 = v19;
        a3(&v21, v22);
      }
    }

    goto LABEL_6;
  }
}

uint64_t sub_1002652C0(char a1, uint64_t (*a2)(char *, char *))
{
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 13;
      v3 = &v7;
      v4 = &v7;
    }

    else
    {
      v8 = 10;
      v3 = &v8;
      v4 = &v8;
    }

    v5 = v3 + 1;
  }

  else
  {
    v4 = "\r\n";
    v5 = "";
  }

  return a2(v4, v5);
}

uint64_t sub_100265368(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{

  v6 = sub_1004A59D4();
  if (v7)
  {
    v8 = v6;
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
          goto LABEL_3;
        }

        v17 = sub_1001E11BC(v8, v9);
        if ((v17 & 0x100000000) != 0)
        {
          goto LABEL_43;
        }

        if ((v17 & 0xFFFFFF80) != 0)
        {
LABEL_3:

          goto LABEL_4;
        }

        v18 = sub_1001E11BC(v8, v9);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_44;
        }

        if ((v18 & 0xFFFFFF00) != 0)
        {
          goto LABEL_40;
        }
      }

      v19 = sub_100262EC4(v8, v9);

      if ((v19 & 0x100) == 0 && v19 - 127 >= 0xFFFFFFA1)
      {
        if (v19 - 91 > 0xFFFFFFE5)
        {
          *a3 = v19 | 0x20;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          *a3 = v19;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_41;
          }
        }

        *a4 = v20;
      }

LABEL_4:
      v8 = sub_1004A59D4();
      v9 = v10;
    }

    while (v10);
  }
}

uint64_t sub_1002655B0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  *a3 = 34;
  if (__OFADD__(*a4, 1))
  {
    goto LABEL_46;
  }

  ++*a4;

  v6 = sub_1004A59D4();
  if (v7)
  {
    v8 = v6;
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
LABEL_42:
          __break(1u);
LABEL_43:
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
          goto LABEL_4;
        }

        v17 = sub_1001E11BC(v8, v9);
        if ((v17 & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        if ((v17 & 0xFFFFFF80) != 0)
        {
LABEL_4:

          goto LABEL_5;
        }

        v18 = sub_1001E11BC(v8, v9);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_49;
        }

        if ((v18 & 0xFFFFFF00) != 0)
        {
          goto LABEL_44;
        }
      }

      v19 = sub_100262EC4(v8, v9);

      if ((v19 & 0x100) == 0)
      {
        if (v19 == 92 || v19 == 34)
        {
          *a3 = 92;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_42;
          }

          ++*a4;
          *a3 = v19;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_43;
          }

          goto LABEL_36;
        }

        if (v19 - 127 >= 0xFFFFFFA1)
        {
          *a3 = v19;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_45;
          }

LABEL_36:
          *a4 = v20;
        }
      }

LABEL_5:
      v8 = sub_1004A59D4();
      v9 = v10;
    }

    while (v10);
  }

  *a3 = 34;
  if (__OFADD__(*a4, 1))
  {
    goto LABEL_47;
  }

  ++*a4;
  return result;
}

uint64_t sub_100265848(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  if (sub_100262D2C())
  {

    v8 = sub_1004A59D4();
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      do
      {
        if ((v10 != 2573 || v11 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
        {
          if ((v11 & 0x2000000000000000) != 0)
          {
            v13 = HIBYTE(v11) & 0xF;
          }

          else
          {
            v13 = v10 & 0xFFFFFFFFFFFFLL;
          }

          if (!v13)
          {
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
          }

          if ((v11 & 0x1000000000000000) != 0)
          {
            v18 = sub_1004A5884();
          }

          else
          {
            if ((v11 & 0x2000000000000000) != 0)
            {
              v15 = v10;
            }

            else
            {
              if ((v10 & 0x1000000000000000) != 0)
              {
                v14 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v14 = sub_1004A67E4();
              }

              v15 = *v14;
            }

            v16 = v15;
            v17 = (__clz(~v15) - 24) << 16;
            if (v16 < 0)
            {
              v18 = v17;
            }

            else
            {
              v18 = 65541;
            }
          }

          if (v18 >> 14 != 4 * v13)
          {
            goto LABEL_4;
          }

          v19 = sub_1001E11BC(v10, v11);
          if ((v19 & 0x100000000) != 0)
          {
            goto LABEL_41;
          }

          if ((v19 & 0xFFFFFF80) != 0)
          {
LABEL_4:

            goto LABEL_5;
          }

          v20 = sub_1001E11BC(v10, v11);
          if ((v20 & 0x100000000) != 0)
          {
            goto LABEL_42;
          }

          if ((v20 & 0xFFFFFF00) != 0)
          {
            goto LABEL_40;
          }
        }

        v21 = sub_100262EC4(v10, v11);

        if ((v21 & 0x100) == 0)
        {
          *a3 = v21;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_39;
          }

          ++*a4;
        }

LABEL_5:
        v10 = sub_1004A59D4();
        v11 = v12;
      }

      while (v12);
    }
  }

  else
  {

    return sub_1002655B0(a1, a2, a3, a4);
  }
}

uint64_t sub_100265ABC(uint64_t a1, unint64_t a2, void (*a3)(char *, char *))
{
  LOBYTE(v23[0]) = 34;
  a3(v23, v23 + 1);
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
          a3(&v22, v23);
          v22 = v20;
        }

        else
        {
          if (v20 - 127 < 0xFFFFFFA1)
          {
            goto LABEL_6;
          }

          v22 = v20;
        }

        a3(&v22, v23);
      }

LABEL_6:
      v9 = sub_1004A59D4();
      v10 = v11;
    }

    while (v11);
  }

  LOBYTE(v23[0]) = 34;
  return (a3)(v23, v23 + 1);
}

uint64_t sub_100265D60(uint64_t a1, unint64_t a2, void (*a3)(char *, char *))
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
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
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
            goto LABEL_39;
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
        }
      }

      v19 = sub_1001E11BC(v9, v10);
      if ((v19 & 0x100000000) != 0)
      {
        goto LABEL_40;
      }

      if ((v19 & 0xFFFFFF00) != 0)
      {
        goto LABEL_38;
      }

LABEL_29:
      v20 = sub_100262EC4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        v22 = v20;
        a3(&v22, v23);
      }

      goto LABEL_7;
    }
  }

  else
  {

    return sub_100265ABC(a1, a2, a3);
  }
}

uint64_t sub_100265FD8(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, char a10)
{
  v30 = a5;
  v31 = a2;
  v29 = a1;
  v14 = a3 + (a4 & 1);
  if (__OFADD__(a3, a4 & 1))
  {
    __break(1u);
  }

  else
  {
    if (v14 < 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v10 = a8;
    v12 = a7;
    v11 = a6;

    if (v14 < 1025)
    {
LABEL_4:
      v32 = v12;
      v33 = a9;
      v28[1] = v28;
      __chkstk_darwin(isStackAllocationSafe);
      v17 = v28 - v16;
      v18 = v28 + v14 - v16;
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = v14;
      v19[4] = v17;
      v19[5] = v18;
      if (a4)
      {
        sub_100264D48(" ", "", v19);
      }

      sub_10026508C(v11, v32, sub_100269B30);
      v34 = 61;
      sub_100264D48(&v34, v35, v19);
      sub_100265D60(v10, v33, sub_100269B30);
      if ((a10 & 1) == 0)
      {
        v34 = 59;
        sub_100264D48(&v34, v35, v19);
      }

      swift_beginAccess();
      v20 = v19[2];
      v21 = v30;
      v22 = *(v30 + 8);
      if (v22 >= 1)
      {
        if (__OFADD__(v22, v20))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (v22 + v20 >= 79)
        {
          v14 = v29;
          sub_1002652C0(*v30, v29);
          (v14)("\t", "");
          if (a4)
          {
            if (v20 < 1)
            {
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
            }

            v23 = 1;
            goto LABEL_21;
          }

LABEL_19:
          if (v20 < 0)
          {
            goto LABEL_34;
          }

          v23 = 0;
LABEL_21:
          (v14)(&v17[v23], &v17[v20]);
          v25 = sub_1002881FC(v23, v20, v17, v18);

          v24 = v25 + 1;
          if (!__OFADD__(v25, 1))
          {
LABEL_22:
            *(v21 + 8) = v24;
          }

          goto LABEL_32;
        }
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v29(v17, &v17[v20]);

        if (v14 >= v20)
        {
          v24 = v22 + v20;
          if (!__OFADD__(v22, v20))
          {
            goto LABEL_22;
          }

          __break(1u);
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_4;
  }

  v27 = swift_slowAlloc();

  sub_10026322C(v27, v27 + v14, a4 & 1, v30, v29, v31, v11, v12, v10, a9, a10 & 1);
}

uint64_t sub_1002663AC(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, void *))
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
        a4(&v26, v27);
      }

LABEL_6:
      v9 = sub_1004A59D4();
      v10 = v11;
    }

    while (v11);
  }
}

uint64_t sub_100266644(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a5 < 3)
  {
    goto LABEL_46;
  }

  v40 = 34;
  sub_100264D48(&v40, &v41, a6);
  v10 = a1 >> 14;
  v11 = a2 >> 14;
  if (a1 >> 14 < a2 >> 14)
  {
    v35 = 2;
    do
    {
      v13 = sub_1004A63F4();
      v14 = v12;
      if ((v13 != 2573 || v12 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
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
          v24 = sub_1004A5884();
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
              v20 = sub_1004A67E4();
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

        v26 = sub_1001E11BC(v13, v14);
        if ((v26 & 0x100000000) != 0)
        {
          goto LABEL_49;
        }

        if ((v26 & 0xFFFFFF80) != 0)
        {
LABEL_4:

          goto LABEL_5;
        }

        v27 = sub_1001E11BC(v13, v14);
        if ((v27 & 0x100000000) != 0)
        {
          goto LABEL_50;
        }

        if ((v27 & 0xFFFFFF00) != 0)
        {
          goto LABEL_45;
        }
      }

      v28 = sub_100262EC4(v13, v14);

      if ((v28 & 0x100) == 0)
      {
        if (v28 == 92 || v28 == 34)
        {
          if (__OFADD__(v35, 2))
          {
            goto LABEL_44;
          }

          if (v35 + 2 >= a5)
          {
            break;
          }

          v35 += 2;
          v37 = 92;
          sub_100264D48(&v37, &v38, a6);
          v36 = v28;
          v29 = &v36;
          v30 = &v37;
          v31 = a6;
        }

        else
        {
          if (v28 - 127 < 0xFFFFFFA1)
          {
            goto LABEL_5;
          }

          if (__OFADD__(v35, 1))
          {
            goto LABEL_48;
          }

          if (v35 + 1 >= a5)
          {
            break;
          }

          ++v35;
          v38 = v28;
          v29 = &v38;
          v30 = &v39;
          v31 = a6;
        }

        sub_100264D48(v29, v30, v31);
      }

LABEL_5:
      v10 = sub_1004A63B4() >> 14;
    }

    while (v10 < v11);
  }

  v39 = 34;
  sub_100264D48(&v39, &v40, a6);
  if (v11 < v10)
  {
    goto LABEL_47;
  }

  return sub_1004A6404();
}

uint64_t sub_10026699C(uint64_t a1, _BYTE *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v10 = a3 + (a4 & 1);
  if (__OFADD__(a3, a4 & 1))
  {
    __break(1u);
LABEL_24:
    sub_100259A40(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v22 = swift_slowAlloc();
      sub_100259A40(v6, v25);
      sub_10026372C(v22, v22 + v10, a4 & 1, v24, v8, v7, v6);

      return sub_100267AA8(v6);
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
  a2 = v25;
  a1 = a6;
  if (v10 >= 1025)
  {
    goto LABEL_24;
  }

  isStackAllocationSafe = sub_100259A40(a6, v25);
LABEL_5:
  v23 = &v23;
  __chkstk_darwin(isStackAllocationSafe);
  v13 = &v23 - v12;
  v14 = &v23 + v10 - v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = v10;
  v15[4] = v13;
  v15[5] = v14;
  if (a4)
  {
    sub_100264D48(" ", "", v15);
  }

  sub_100264D48("multipart/", "", v15);
  sub_10026508C(*(v6 + 8), *(v6 + 16), sub_100269B30);
  swift_beginAccess();
  v16 = v15[2];
  v17 = *(v24 + 8);
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

  sub_1002652C0(*v24, v8);
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
  v20 = sub_1002881FC(v18, v16, v13, v14);

  v19 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  *(v24 + 8) = v19;
  return sub_100267AA8(v6);
}

uint64_t sub_100266C9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100264EAC(v2, 0);
  sub_100091A08(0, v2, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v16 = a1 + 32;
  while (1)
  {
    v4 = (v16 + 32 * v3);
    v6 = *v4;
    v5 = v4[1];
    v8 = v4[2];
    v7 = v4[3];
    v9 = _swiftEmptyArrayStorage[2];
    if (v9)
    {
      break;
    }

LABEL_11:

    sub_1001E67B8(v6, v5);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      sub_100091A08((v12 > 1), v13 + 1, 1);
    }

    ++v3;
    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = v8;
    v14[5] = v7;
    if (v3 == v2)
    {
      return 0;
    }
  }

  v10 = &_swiftEmptyArrayStorage[5];
  while (1)
  {
    v11 = *(v10 - 1) == v6 && *v10 == v5;
    if (v11 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    v10 += 2;
    if (!--v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_100266E78(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = HIBYTE(a2) & 0xF;
  v21[0] = a1;
  v21[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v21[2] = 0;
  v21[3] = v4;

  v5 = sub_1004A59D4();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    while (1)
    {
      if (v7 == 2573 && v8 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
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
        v15 = sub_1004A5884();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v12 = v7;
        }

        else
        {
          v11 = ((v7 & 0x1000000000000000) != 0 ? (v8 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1004A67E4());
          v12 = *v11;
        }

        v13 = v12;
        v14 = (__clz(~v12) - 24) << 16;
        v15 = v13 < 0 ? v14 : 65541;
      }

      if (v15 >> 14 == 4 * v10)
      {
        v16 = sub_1001E11BC(v7, v8);
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
      v7 = sub_1004A59D4();
      v8 = v9;
      if (!v9)
      {
      }
    }

    v17 = sub_1001E11BC(v7, v8);
    if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_37;
    }

    if ((v17 & 0xFFFFFF00) != 0)
    {
      goto LABEL_35;
    }

LABEL_28:
    v18 = sub_100262EC4(v7, v8);

    if ((v18 & 0x100) == 0 && v18 - 127 >= 0xFFFFFFA1)
    {
      v20 = v18;
      sub_100264D48(&v20, v21, a3);
    }

    goto LABEL_6;
  }
}

uint64_t sub_100267088(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, void (*a7)(uint64_t, char *), char *a8)
{
  v12 = a5;
  v14 = BYTE6(a2);
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v53, 0, 14);
      v16 = a3;
      sub_1000510B4(a4, v54);
      sub_1000510B4(a4, v54);
      sub_1000510B4(a4, v54);
      sub_1000510B4(a4, v54);
      v46 = a7;
      v47 = a8;
      v17 = v53;
      v18 = 0;
      v19 = v16;
      v20 = a4;
      v21 = v12;
      v22 = a6;
LABEL_38:
      sub_10025ACAC(0, v18, v53, v17, v19, v20, v21, v22, &v52, v46, v47);
      sub_100051110(a4);
      if (!v8)
      {
        v16 = v52;
      }

      goto LABEL_42;
    }

    v50 = a3;
    v51 = v8;
    v48 = &v46;
    v49 = a6;
    v23 = *(a1 + 16);
    v24 = *(a1 + 24);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    v16 = sub_1004A40D4();
    if (v16)
    {
      v25 = sub_1004A4104();
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
      v28 = sub_1004A40F4();
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

        sub_1000510B4(a4, v54);
        v33 = v51;
        sub_10025ACAC(0, v30, v16, v32, v50, a4, v12, v49, v53, a7, a8);
        if (v33)
        {
          sub_100051110(a4);
          sub_100051110(a4);
          sub_100051110(a4);
          goto LABEL_42;
        }

        sub_100051110(a4);
        sub_100051110(a4);
        sub_100051110(a4);
LABEL_41:
        v16 = v53[0];
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
    v53[0] = a1;
    LOWORD(v53[1]) = a2;
    BYTE2(v53[1]) = BYTE2(a2);
    BYTE3(v53[1]) = BYTE3(a2);
    BYTE4(v53[1]) = BYTE4(a2);
    v16 = a3;
    BYTE5(v53[1]) = BYTE5(a2);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    v46 = a7;
    v47 = a8;
    v17 = v53 + v14;
    v18 = v14;
    v19 = v16;
    v20 = a4;
    v21 = v12;
    v22 = a6;
    goto LABEL_38;
  }

  LODWORD(v49) = a5;
  v51 = v8;
  v35 = a1;
  v36 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_44;
  }

  v50 = a3;
  v48 = &v46;
  sub_1000510B4(a4, v54);
  sub_1000510B4(a4, v54);
  sub_1000510B4(a4, v54);
  sub_1000510B4(a4, v54);
  sub_1000510B4(a4, v54);
  v16 = sub_1004A40D4();
  if (v16)
  {
    v37 = sub_1004A4104();
    if (__OFSUB__(v35, v37))
    {
      goto LABEL_48;
    }

    v16 += v35 - v37;
  }

  v38 = sub_1004A40F4();
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

  v41 = v49;
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

  sub_1000510B4(a4, v54);
  v44 = v51;
  sub_10025ACAC(0, v40, v16, v43, v50, a4, v41, a6, v53, a7, a8);
  sub_100051110(a4);
  sub_100051110(a4);
  sub_100051110(a4);
  if (!v44)
  {
    goto LABEL_41;
  }

LABEL_42:
  sub_100051110(a4);
  sub_100051110(a4);
  sub_100051110(a4);
  return v16;
}

uint64_t sub_10026751C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = HIBYTE(a2) & 0xF;
  v22[0] = a1;
  v22[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22[2] = 0;
  v22[3] = v4;

  v5 = sub_1004A59D4();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    while (1)
    {
      if (v7 == 2573 && v8 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
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
        v15 = sub_1004A5884();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v12 = v7;
        }

        else
        {
          v11 = ((v7 & 0x1000000000000000) != 0 ? (v8 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1004A67E4());
          v12 = *v11;
        }

        v13 = v12;
        v14 = (__clz(~v12) - 24) << 16;
        v15 = v13 < 0 ? v14 : 65541;
      }

      if (v15 >> 14 == 4 * v10)
      {
        v16 = sub_1001E11BC(v7, v8);
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
      v7 = sub_1004A59D4();
      v8 = v9;
      if (!v9)
      {
      }
    }

    v17 = sub_1001E11BC(v7, v8);
    if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_39;
    }

    if ((v17 & 0xFFFFFF00) != 0)
    {
      goto LABEL_37;
    }

LABEL_28:
    v18 = sub_100262EC4(v7, v8);

    if ((v18 & 0x100) == 0)
    {
      v19 = v18;
      if (v18 - 127 >= 0xFFFFFFA1)
      {
        if (v18 - 91 > 0xFFFFFFE5)
        {
          v19 = v18 | 0x20;
        }

        v21 = v19;
        sub_100264D48(&v21, v22, a3);
      }
    }

    goto LABEL_6;
  }
}