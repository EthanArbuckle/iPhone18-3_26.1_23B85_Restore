uint64_t sub_1ABE18AE8(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 >= 25)
  {
    sub_1ABF24AB4();

    sub_1ABA81C08();
    v72 = v26;
    v73 = v25;
    *&v70 = 25;
    v27 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v27);

    v28 = sub_1ABA84340();
    v29 = 0xE800000000000000;
LABEL_11:
    MEMORY[0x1AC5A9410](v28, v29);
    sub_1ABAF2860();
    v34 = swift_allocError();
    return sub_1ABA7C6A8(v34, v35);
  }

  v9 = v8;
  LOBYTE(v13) = a5;
  v15 = a2;
  v76 = a1;
  sub_1ABE19420(a1, a2, a6);
  v16 = *v15;
  if (!*(*v15 + 48))
  {
    *(v16 + 48) = 20;
  }

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  sub_1ABE1A204(v17, v18, a7, &v70);

  if (!v71)
  {
    sub_1ABE19D0C(&v70);
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1ABF24AB4();

    sub_1ABA810C0();
    v72 = v30;
    v73 = v31;
    v33 = *(v16 + 16);
    v32 = *(v16 + 24);

    MEMORY[0x1AC5A9410](v33, v32);

    v28 = sub_1ABA8F9BC();
    goto LABEL_11;
  }

  v69 = a8;
  sub_1ABA946C0(&v70, &v72);
  v19 = a3[2];
  v20 = a3[3];
  v21 = qword_1ED86D348;

  if (v21 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    sub_1ABB130E0();
    v23 = v22;

    if (v23 & 1) != 0 || ((v37 = a3[5], v16 == v37) ? (v38 = v37 == 0) : (v38 = 1), !v38 || (v13))
    {
      v24 = v76;
      sub_1ABE196D8(v76, v15, a6, a7);
      if (v9)
      {
        return sub_1ABA84B54(&v72);
      }
    }

    else
    {
      v24 = v76;
    }

    v39 = v74;
    v40 = v75;
    sub_1ABA93E20(&v72, v74);
    v41 = (*(v40 + 24))(v24, a6, a7, v69, v15, v39, v40);
    if (v9)
    {
      return sub_1ABA84B54(&v72);
    }

    if (v41)
    {
      break;
    }

LABEL_24:
    v15 = *v15;
    v51 = v76;
    switch(*(v15 + 64))
    {
      case 1:
        sub_1ABA8A488();
        break;
      case 2:

        goto LABEL_36;
      case 3:
        v52 = sub_1ABA8C3E0();
        goto LABEL_32;
      case 4:
        sub_1ABA7EB34();
        sub_1ABA947B0();
        break;
      case 5:
        sub_1ABA7C6F4();
        break;
      case 6:
        v52 = sub_1ABA903A8();
LABEL_32:
        sub_1ABA80704(v52);
        break;
      case 7:
        sub_1ABA8A488();
        sub_1ABA81BF4();
        break;
      case 8:
        sub_1ABA8A488();
        sub_1ABA99674();
        break;
      default:
        break;
    }

    sub_1ABA8BE94();
    sub_1ABAA61B4();
    v53 = sub_1ABF25054();

    if ((v53 & 1) == 0)
    {
      v54 = v74;
      v55 = v75;
      sub_1ABA93E20(&v72, v74);
      (*(v55 + 32))(&v70, v51, v15, v54, v55);
      *(v15 + 64) = v70;
    }

LABEL_36:
    if (v15[2] == 0x68636165726F66 && v15[3] == 0xE700000000000000)
    {
      return sub_1ABA84B54(&v72);
    }

    sub_1ABAA61B4();
    if (sub_1ABF25054())
    {
      return sub_1ABA84B54(&v72);
    }

    sub_1ABA7EF0C();
    swift_beginAccess();
    if (v15[4])
    {
      v57 = v15[4];
    }

    else
    {
      type metadata accessor for KnosisQueryParam();
      v57 = sub_1ABF239C4();
    }

    v67 = v57;
    v59 = v57 + 64;
    v58 = *(v57 + 64);
    v60 = *(v59 - 32);
    sub_1ABA7D32C();
    v16 = v62 & v61;
    v64 = (v63 + 63) >> 6;

    v13 = 0;
    while (v16)
    {
LABEL_50:
      v66 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      a3 = *(*(v67 + 56) + ((v13 << 9) | (8 * v66)));
      sub_1ABA7EF0C();
      swift_beginAccess();
      if (a3[3])
      {
        sub_1ABAA5A3C();
        swift_beginAccess();

        sub_1ABE18AE8(v76, a3 + 3, v15, a4 + 1, 0, a6, a7, v69);
        swift_endAccess();
      }
    }

    while (1)
    {
      v65 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v65 >= v64)
      {

        return sub_1ABA84B54(&v72);
      }

      v16 = *(v59 + 8 * v65);
      ++v13;
      if (v16)
      {
        v13 = v65;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_54:
    swift_once();
  }

  v43 = *(*v15 + 16);
  v42 = *(*v15 + 24);

  sub_1ABA7ECFC();
  sub_1ABA7F8A4();
  sub_1ABE1A204(v44, v45, v46, v47);

  if (v71)
  {
    sub_1ABA84B54(&v72);
    sub_1ABA946C0(&v70, &v72);
    sub_1ABA7F8A4();
    sub_1ABE19420(v48, v49, v50);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE190A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *result;
  v7 = *(*result + 40);
  if (v7)
  {
    v11 = result;
    v12 = *(*result + 40);

    if (sub_1ABE19B58(v6, v7))
    {
      v14 = v7[2];
      v13 = v7[3];

      v15 = sub_1ABA7ECFC();
      sub_1ABE1A204(v15, v16, a3, v17);

      if (v43)
      {
        v41 = v11;
        v39 = a2;
        v40 = a3;
        sub_1ABA946C0(&v42, &v44);
        v18 = v5;
        v19 = v46;
        v20 = v47;
        sub_1ABA93E20(&v44, v46);
        v21 = v7[2];
        v22 = v7[3];
        v23 = *(v20 + 8);
        v24 = *(v23 + 8);

        v24(v48, v21, v22, v19, v23);
        if (v18)
        {

          return sub_1ABA84B54(&v44);
        }

        v33 = sub_1ABE719F4();
        if (v33 && (v34 = v33, sub_1ABA7EF0C(), swift_beginAccess(), v35 = *(v34 + 24), , , v35))
        {
        }

        else
        {
          v36 = *(v6 + 40);
          *(v6 + 40) = 0;

          swift_beginAccess();
          if (!v7[4])
          {
            type metadata accessor for KnosisQueryParam();
            v37 = sub_1ABF239C4();
            v38 = v7[4];
            v7[4] = v37;
          }

          type metadata accessor for KnosisQueryParam();
          swift_allocObject();
          sub_1ABE75D88(v6);
          sub_1ABAA5A3C();
          result = swift_beginAccess();
          if (!v7[4])
          {
            __break(1u);
            return result;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v49 = v7[4];
          sub_1ABAFAC94();
          v7[4] = v49;
          swift_endAccess();

          *v41 = v7;
          if (!v7[5])
          {
            sub_1ABB5137C(v48);
            return sub_1ABA84B54(&v44);
          }

          sub_1ABE190A8(v41, v39, v40, a4);
        }

        sub_1ABB5137C(v48);

        return sub_1ABA84B54(&v44);
      }

      sub_1ABE19D0C(&v42);
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1ABF24AB4();

      sub_1ABA810C0();
      v44 = v25;
      v45 = v26;
      v28 = v7[2];
      v27 = v7[3];

      MEMORY[0x1AC5A9410](v28, v27);

      v29 = sub_1ABA8F9BC();
      MEMORY[0x1AC5A9410](v29);
      v30 = v44;
      v31 = v45;
      sub_1ABAF2860();
      swift_allocError();
      *v32 = v30;
      *(v32 + 8) = v31;
      *(v32 + 16) = 1;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1ABE19420(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (*(v3 + 32))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    type metadata accessor for KnosisQueryParam();
    v4 = sub_1ABF239C4();
  }

  v6 = v4 + 64;
  v5 = *(v4 + 64);
  v7 = *(v4 + 32);
  sub_1ABA7D32C();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;

  v13 = 0;
  v35 = v12;
  v36 = v4 + 64;
  v37 = v4;
  v38 = v3;
  if (v10)
  {
LABEL_9:
    while (1)
    {
      v15 = __clz(__rbit64(v10)) | (v13 << 6);
      v16 = (*(v4 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(v4 + 56) + 8 * v15);
      v41 = v19;
      swift_retain_n();

      sub_1ABE19970(a1, &v41, a3);
      sub_1ABAA5A3C();
      swift_beginAccess();
      if (!*(v3 + 32))
      {
        break;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v3 + 32);
      *(v3 + 32) = 0x8000000000000000;
      v21 = sub_1ABA94FC8(v17, v18);
      if (__OFADD__(v20[2], (v22 & 1) == 0))
      {
        goto LABEL_22;
      }

      v23 = v21;
      v24 = v22;
      sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
      if (sub_1ABF24C64())
      {
        v25 = sub_1ABA94FC8(v17, v18);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_25;
        }

        v23 = v25;
      }

      if (v24)
      {

        v27 = v20;
        v28 = v20[7];
        v29 = *(v28 + 8 * v23);
        *(v28 + 8 * v23) = v19;
      }

      else
      {
        v27 = v20;
        v20[(v23 >> 6) + 8] |= 1 << v23;
        v30 = (v20[6] + 16 * v23);
        *v30 = v17;
        v30[1] = v18;
        *(v20[7] + 8 * v23) = v19;
        v31 = v20[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_23;
        }

        v20[2] = v33;
      }

      v10 &= v10 - 1;
      v3 = v38;
      *(v38 + 32) = v27;
      swift_endAccess();

      v6 = v36;
      v4 = v37;
      v12 = v35;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
      }

      v10 = *(v6 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
LABEL_25:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE196D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *a2;
  result = swift_beginAccess();
  if (v8[4])
  {
    v10 = v8[2];
    v11 = v8[3];

    sub_1ABE1A204(v10, v11, a4, &v28);

    if (!v29)
    {
      sub_1ABE19D0C(&v28);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_1ABF24AB4();

      v30 = 0x726F74617265706FLL;
      v31 = 0xE900000000000020;
      v22 = v8[2];
      v21 = v8[3];

      MEMORY[0x1AC5A9410](v22, v21);

      MEMORY[0x1AC5A9410](0x6F6E2073656F6420, 0xEF74736978652074);
      v23 = v30;
      v24 = v31;
      sub_1ABAF2860();
      swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v24;
      *(v25 + 16) = 1;
      return swift_willThrow();
    }

    sub_1ABA946C0(&v28, &v30);
    v12 = v32;
    v13 = v33;
    sub_1ABA93E20(&v30, v32);
    v14 = v8[2];
    v15 = v8[3];
    v16 = *(v13 + 8);
    v17 = *(v16 + 8);

    v17(v34, v14, v15, v12, v16);

    if (!v5)
    {
      result = swift_beginAccess();
      if (!v8[4])
      {
        __break(1u);
        return result;
      }

      v18 = v35;
      v19 = v36;
      v20 = sub_1ABAE305C(v35, v36);
      swift_endAccess();
      if (v20)
      {
      }

      else
      {
        v26 = *(a1 + 8);
        if (v26)
        {
          sub_1ABE4933C();
          swift_beginAccess();
          v27 = *(v26 + 24);
        }

        else
        {
          v27 = MEMORY[0x1E69E7CC0];
        }

        sub_1ABE71DD8(v18, v19, v27);
      }

      sub_1ABB5137C(v34);
    }

    return sub_1ABA84B54(&v30);
  }

  return result;
}

uint64_t sub_1ABE19970(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v4 + 16);

    swift_beginAccess();
    v8 = (v5 + 40);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      v12 = *(a3 + 16);

      if (v12)
      {
        v13 = sub_1ABA94FC8(v11, v10);
        if (v14)
        {
          v15 = *(a3 + 56) + 16 * v13;
          v16 = *v15;
          v17 = *(v15 + 8);

          v16(v31, a1);

          v19 = v31[0];
          v18 = v31[1];
          v20 = v32;
          if (v32)
          {

            v21 = *(v4 + 24);
            *(v4 + 24) = v20;

            v11 = 0;
            v10 = 0xE000000000000000;
          }

          if (v18)
          {

            v11 = v19;
            v10 = v18;
          }
        }
      }

      v22 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v22 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = *(v9 + 16);
          sub_1ABAAA4F4();
          v9 = v26;
        }

        v23 = *(v9 + 16);
        if (v23 >= *(v9 + 24) >> 1)
        {
          sub_1ABAAA4F4();
          v9 = v27;
        }

        *(v9 + 16) = v23 + 1;
        v24 = v9 + 16 * v23;
        *(v24 + 32) = v11;
        *(v24 + 40) = v10;
      }

      else
      {
      }

      v8 += 2;
      --v6;
    }

    while (v6);

    v28 = *(v4 + 16);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  *(v4 + 16) = v9;
}

uint64_t sub_1ABE19B58(uint64_t a1, uint64_t a2)
{
  switch(*(a2 + 64))
  {
    case 2:

      return 0;
    case 3:
      sub_1ABA8C3E0();
      break;
    case 4:
      sub_1ABA7EB34();
      break;
    case 5:
      sub_1ABA7C6F4();
      break;
    case 6:
      sub_1ABA903A8();
      break;
    case 7:
      sub_1ABA81BF4();
      break;
    case 8:
      sub_1ABA99674();
      break;
    default:
      break;
  }

  sub_1ABA8BE94();
  sub_1ABAA61B4();
  v4 = sub_1ABF25054();

  if (v4)
  {
    return 0;
  }

  if (*(a2 + 16) != 0x7463656C657371 || *(a2 + 24) != 0xE700000000000000)
  {
    sub_1ABAA61B4();
    if ((sub_1ABF25054() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 16) == 7370352 && *(a1 + 24) == 0xE300000000000000)
  {
    return 1;
  }

  return sub_1ABF25054();
}

uint64_t sub_1ABE19D0C(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D3438, &qword_1ABF3C4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1ABE19D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1ED86D3A8 != -1)
  {
    sub_1ABA7DED8();
    swift_once();
  }

  if (*(qword_1ED87C3F8 + 16) && (sub_1ABA94FC8(a1, a2), (v6 & 1) != 0))
  {
    sub_1ABA7F8DC();
    v10 = v8 + v7 * v9;

    sub_1ABA93E64(v10, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_1ABE19E30(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_1ABA93E20(a1, v4);
  (*(v5 + 16))(v45, v4, v5);
  if (v2)
  {
    return;
  }

  v6 = v47;
  v7 = v46;
  v8 = *(v46 + 16);
  if ((v47 & 1) == 0 && v8 >= 6)
  {
    sub_1ABAD219C(&qword_1EB4D94E8, &unk_1ABF60F00);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1ABF34740;
    sub_1ABF24AB4();

    v10 = *(a2 + 16);
    v11 = *(a2 + 24);

    MEMORY[0x1AC5A9410](v10, v11);

    MEMORY[0x1AC5A9410](0xD000000000000025, 0x80000001ABF924C0);
    v48 = 5;
    v12 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v12);

    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 32) = 0x2065646F4E71676BLL;
    *(v9 + 40) = 0xE800000000000000;
    sub_1ABF25204();

LABEL_30:
    sub_1ABB5137C(v45);
    return;
  }

  if (!v8)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v41 = v46 + 32;
  v42 = v8 - 1;
  v14 = MEMORY[0x1E69E7CC0];
  v39 = 16 * v8;
  v15 = 5;
  v38 = v47;
  v36 = *(v46 + 16);
  v37 = v46;
  while (1)
  {
    if (v13 >= *(v7 + 16))
    {
      goto LABEL_33;
    }

    v16 = (v41 + 16 * v13);
    v17 = v16[1];
    v44 = *v16;
    if (v13 != v42 || (v6 & 1) == 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = *(v14 + 16);
        sub_1ABAAA4F4();
        v14 = v34;
      }

      v31 = *(v14 + 16);
      if (v31 >= *(v14 + 24) >> 1)
      {
        sub_1ABA7EB48();
        v14 = v35;
      }

      *(v14 + 16) = v31 + 1;
      v32 = v14 + 16 * v31;
      *(v32 + 32) = v44;
      *(v32 + 40) = v17;
      goto LABEL_29;
    }

    if (v8 <= 5)
    {
      break;
    }

LABEL_29:
    ++v13;
    --v15;
    if (v13 == v8)
    {
      goto LABEL_30;
    }
  }

  v40 = v13;

  v18 = 0;
  v19 = v39;
  v20 = v42;
  v43 = v15;
  while (1)
  {
    v48 = v18;

    v21 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v21);

    v22 = *(v14 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v20 >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABAAA4F4();
        v14 = v29;
      }

      v26 = *(v14 + 16);
      if (v26 >= *(v14 + 24) >> 1)
      {
        sub_1ABA7EB48();
        v14 = v30;
      }

      *(v14 + 16) = v26 + 1;
      v27 = v14 + 16 * v26;
      *(v27 + 32) = v44;
      *(v27 + 40) = v17;
      v15 = v43;
      goto LABEL_22;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ABD8EE6C(v14);
      v14 = v28;
    }

    if (v20 >= *(v14 + 16))
    {
      break;
    }

    v24 = v14 + v19;
    v25 = *(v14 + v19 + 24);
    *(v24 + 16) = v44;
    *(v24 + 24) = v17;

LABEL_22:
    ++v18;
    ++v20;
    v19 += 16;
    if (v15 == v18)
    {

      v6 = v38;
      v8 = v36;
      v7 = v37;
      v13 = v40;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

double sub_1ABE1A204@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_1ABA94FC8(a1, a2), (v5 & 1) != 0))
  {
    sub_1ABA7F8DC();
    v9 = v7 + v6 * v8;

    sub_1ABA93E64(v9, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1ABE1A26C(uint64_t a1)
{
  v97 = a1;
  sub_1ABF21CF4();
  sub_1ABA7BD7C();
  v94 = v4;
  v95 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v93 = v8 - v7;
  v96 = sub_1ABD64274();
  v119 = MEMORY[0x1E69E7CD0];
  sub_1ABAD219C(&qword_1EB4DA8F8, &qword_1ABF68178);
  v117 = sub_1ABF239C4();
  if (qword_1ED86D3A8 != -1)
  {
LABEL_39:
    sub_1ABA7DED8();
    swift_once();
  }

  v9 = sub_1ABA7F8B4(qword_1ED87C3F8);
  v12 = v11 & v10;
  v98 = (v13 + 63) >> 6;
  v99 = v9;

  v14 = 0;
  if (!v12)
  {
    goto LABEL_4;
  }

  do
  {
    v15 = v14;
LABEL_8:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (v99[6] + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_1ABA93E64(v99[7] + 40 * v17, &v106);
    *&v109 = v20;
    *(&v109 + 1) = v19;
    sub_1ABA946C0(&v106, &v110);

LABEL_9:
    v113 = v109;
    v114 = v110;
    v115 = v111;
    v116 = v112;
    if (!*(&v109 + 1))
    {

      v34 = type metadata accessor for Virtual();
      v35 = v93;
      v36 = v97;
      (*(v94 + 16))(v93, v97, v95);
      v37 = v101;
      v38 = sub_1ABEBFA34(v35, v119);
      if (v37)
      {
        sub_1ABE1B2C0(v36);
      }

      v40 = v38;
      v101 = 0;
      swift_beginAccess();
      v41 = sub_1ABA7F8B4(*(v40 + 128));
      v44 = v43 & v42;
      v1 = v117;
      v46 = (v45 + 63) >> 6;
      v98 = v41;

      v47 = 0;
      v93 = v46;
      v94 = v40;
      v48 = v34;
      v92 = v34;
      v95 = v2;
      if (!v44)
      {
        goto LABEL_19;
      }

      while (1)
      {
LABEL_23:
        v50 = (*(v98 + 48) + ((v47 << 10) | (16 * __clz(__rbit64(v44)))));
        v51 = *v50;
        v52 = v50[1];
        v53 = v1[2];

        if (v53)
        {
          sub_1ABA94FC8(v51, v52);
          if (v54)
          {
            goto LABEL_37;
          }
        }

        *&v115 = 0;
        v113 = 0u;
        v114 = 0u;
        sub_1ABE19D0C(&v113);
        *(&v114 + 1) = v48;
        *&v115 = &off_1F20885C8;
        v100 = v51;
        *&v113 = v40;
        sub_1ABA946C0(&v113, &v109);
        sub_1ABA94E50(&v109, *(&v110 + 1));
        v99 = &v90;
        sub_1ABA7BD7C();
        v56 = *(v55 + 64);
        MEMORY[0x1EEE9AC00](v57);
        sub_1ABA7BC58();
        v59 = sub_1ABA8EC9C(v58);
        v60(v59);
        v61 = *v2;

        swift_isUniquelyReferenced_nonNull_native();
        v105 = v1;
        v107 = v48;
        v108 = &off_1F20885C8;
        *&v106 = v61;
        v62 = sub_1ABA94FC8(v100, v52);
        if (__OFADD__(v1[2], (v63 & 1) == 0))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          result = sub_1ABF25104();
          __break(1u);
          return result;
        }

        v64 = v62;
        v65 = v63;
        sub_1ABAD219C(qword_1EB4DA900, &unk_1ABF68180);
        if (sub_1ABF24C64())
        {
          v66 = sub_1ABA94FC8(v100, v52);
          v2 = v95;
          if ((v65 & 1) != (v67 & 1))
          {
            goto LABEL_42;
          }

          v64 = v66;
          if ((v65 & 1) == 0)
          {
LABEL_29:
            v1 = v105;
            sub_1ABA94E50(&v106, v107);
            v91 = v52;
            sub_1ABA7BD7C();
            v69 = *(v68 + 64);
            MEMORY[0x1EEE9AC00](v70);
            sub_1ABA7BC58();
            v73 = (v72 - v71);
            (*(v74 + 16))(v72 - v71);
            v75 = *v73;
            v48 = v92;
            v103 = v92;
            v104 = &off_1F20885C8;
            *&v102 = v75;
            v1[(v64 >> 6) + 8] |= 1 << v64;
            v76 = (v1[6] + 16 * v64);
            v77 = v91;
            *v76 = v100;
            v76[1] = v77;
            sub_1ABA7F8DC();
            sub_1ABA946C0(&v102, v78 + v64 * v79);
            v80 = v1[2];
            v81 = __OFADD__(v80, 1);
            v82 = v80 + 1;
            if (v81)
            {
              goto LABEL_41;
            }

            v1[2] = v82;
            sub_1ABA84B54(&v106);
            goto LABEL_33;
          }
        }

        else
        {
          v2 = v95;
          if ((v65 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v1 = v105;
        sub_1ABA7F8DC();
        v85 = (v83 + v64 * v84);
        sub_1ABA84B54(v85);
        sub_1ABA946C0(&v106, v85);
        v48 = v92;
LABEL_33:
        v44 &= v44 - 1;
        sub_1ABA84B54(&v109);
        v36 = v97;
        v46 = v93;
        v40 = v94;
        if (!v44)
        {
LABEL_19:
          while (1)
          {
            v49 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
              break;
            }

            if (v49 >= v46)
            {
              sub_1ABE1B2C0(v36);

              return v96;
            }

            v44 = v2[v49];
            ++v47;
            if (v44)
            {
              v47 = v49;
              goto LABEL_23;
            }
          }

          __break(1u);
          goto LABEL_39;
        }
      }
    }

    sub_1ABA946C0(&v114, &v109);
    v21 = *(&v110 + 1);
    v22 = v111;
    sub_1ABA93E20(&v109, *(&v110 + 1));
    v23 = v101;
    (*(v22 + 16))(v118, v21, v22);
    if (v23)
    {

      sub_1ABE1B2C0(v97);

      sub_1ABA84B54(&v109);
    }

    v101 = 0;
    v24 = v118[0];
    v25 = v118[1];
    sub_1ABA93E64(&v109, &v106);
    v26 = v107;
    v27 = v108;
    sub_1ABA94E50(&v106, v107);
    v100 = &v90;
    sub_1ABA7BD7C();
    v29 = *(v28 + 64);
    MEMORY[0x1EEE9AC00](v30);
    sub_1ABA7BC58();
    v32 = sub_1ABA8EC9C(v31);
    v33(v32);
    sub_1ABE1B31C(v2, v24, v25, &v117, v26, v27);
    sub_1ABA84B54(&v106);

    v1 = &v119;
    sub_1ABB1840C(&v106, v24, v25);
    sub_1ABB5137C(v118);

    sub_1ABA84B54(&v109);
  }

  while (v12);
LABEL_4:
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v98)
    {
      v12 = 0;
      v112 = 0;
      v110 = 0u;
      v111 = 0u;
      v109 = 0u;
      goto LABEL_9;
    }

    v12 = v2[v15];
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_37:
  v117 = v1;
  sub_1ABA7F8DC();
  sub_1ABA93E64(v87 + v86 * v88, &v113);

  sub_1ABE19D0C(&v113);
  sub_1ABAF2860();
  swift_allocError();
  *v89 = 0xD000000000000020;
  *(v89 + 8) = 0x80000001ABF924F0;
  *(v89 + 16) = 0;
  swift_willThrow();

  sub_1ABE1B2C0(v97);
}

void *sub_1ABE1AAD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(a1 + 16);
  v4 = sub_1ABADCEA8();
  v5 = sub_1ABB6628C(&v7, v4 + 4, v1, a1);

  sub_1ABAB4C48();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1ABE1AB8C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(a2 + 16) && (v5 = *(v4 + 16), v6 = *(v4 + 24), , v7 = sub_1ABA94FC8(v5, v6), v9 = v8, , (v9 & 1) != 0))
  {
    sub_1ABA7F8DC();
    return sub_1ABA93E64(v10 + v7 * v11, a3);
  }

  else
  {
    sub_1ABF24AB4();

    v14 = *(v4 + 16);
    v13 = *(v4 + 24);

    MEMORY[0x1AC5A9410](v14, v13);

    sub_1ABAF2860();
    swift_allocError();
    *v15 = 0xD000000000000023;
    *(v15 + 8) = 0x80000001ABF91DE0;
    *(v15 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1ABE1ACB8()
{
  sub_1ABAD219C(&qword_1EB4DA8F0, &qword_1ABF68170);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1ABF5EB80;
  *(v1 + 32) = 6579297;
  *(v1 + 40) = 0xE300000000000000;
  type metadata accessor for Add();
  sub_1ABA8F9E0();
  v2 = sub_1ABAF1D84();
  *(v1 + 72) = v0;
  *(v1 + 80) = &off_1F20885C8;
  *(v1 + 48) = v2;
  *(v1 + 88) = 7105633;
  *(v1 + 96) = 0xE300000000000000;
  type metadata accessor for All();
  sub_1ABA8F9E0();
  v3 = sub_1ABAE47C0();
  *(v1 + 128) = v0;
  *(v1 + 136) = &off_1F20885C8;
  *(v1 + 104) = v3;
  *(v1 + 144) = 0x796C7069746C756DLL;
  *(v1 + 152) = 0xE800000000000000;
  type metadata accessor for Multiply();
  sub_1ABA8F9E0();
  v4 = sub_1ABAF1D84();
  *(v1 + 184) = v0;
  *(v1 + 192) = &off_1F20885C8;
  *(v1 + 160) = v4;
  *(v1 + 200) = 0x656469766964;
  *(v1 + 208) = 0xE600000000000000;
  type metadata accessor for Divide();
  sub_1ABA8F9E0();
  v5 = sub_1ABAF1D84();
  *(v1 + 240) = v0;
  *(v1 + 248) = &off_1F20885C8;
  *(v1 + 216) = v5;
  *(v1 + 256) = 6581857;
  *(v1 + 264) = 0xE300000000000000;
  type metadata accessor for And();
  sub_1ABA8F9E0();
  v6 = sub_1ABAE4DC8();
  *(v1 + 296) = v0;
  *(v1 + 304) = &off_1F20885C8;
  *(v1 + 272) = v6;
  *(v1 + 312) = 6780513;
  *(v1 + 320) = 0xE300000000000000;
  type metadata accessor for Avg();
  sub_1ABA8F9E0();
  v7 = sub_1ABAF1D84();
  *(v1 + 352) = v0;
  *(v1 + 360) = &off_1F20885C8;
  *(v1 + 328) = v7;
  *(v1 + 368) = 0x746E756F63;
  *(v1 + 376) = 0xE500000000000000;
  type metadata accessor for Count();
  sub_1ABA8F9E0();
  v8 = sub_1ABB50FC4();
  *(v1 + 408) = v0;
  *(v1 + 416) = &off_1F20885C8;
  *(v1 + 384) = v8;
  *(v1 + 424) = 0x797469746E65;
  *(v1 + 432) = 0xE600000000000000;
  type metadata accessor for EntityOperator();
  sub_1ABA8F9E0();
  v9 = sub_1ABB826E4();
  *(v1 + 464) = v0;
  *(v1 + 472) = &off_1F20885C8;
  *(v1 + 440) = v9;
  *(v1 + 480) = 0x68636165726F66;
  *(v1 + 488) = 0xE700000000000000;
  type metadata accessor for ForEach();
  sub_1ABA8F9E0();
  v10 = sub_1ABC459B8();
  *(v1 + 520) = v0;
  *(v1 + 528) = &off_1F20885C8;
  *(v1 + 496) = v10;
  *(v1 + 536) = 7628135;
  *(v1 + 544) = 0xE300000000000000;
  type metadata accessor for Get();
  sub_1ABA8F9E0();
  v11 = sub_1ABC79FD0();
  *(v1 + 576) = v0;
  *(v1 + 584) = &off_1F20885C8;
  *(v1 + 552) = v11;
  *(v1 + 592) = 0x686374616DLL;
  *(v1 + 600) = 0xE500000000000000;
  type metadata accessor for Match();
  sub_1ABA8F9E0();
  v12 = sub_1ABE09294();
  *(v1 + 632) = v0;
  *(v1 + 640) = &off_1F20885C8;
  *(v1 + 608) = v12;
  *(v1 + 648) = 29295;
  *(v1 + 656) = 0xE200000000000000;
  type metadata accessor for Or();
  sub_1ABA8F9E0();
  v13 = sub_1ABE1B794();
  *(v1 + 688) = v0;
  *(v1 + 696) = &off_1F20885C8;
  *(v1 + 664) = v13;
  *(v1 + 704) = 7370352;
  *(v1 + 712) = 0xE300000000000000;
  type metadata accessor for Pvp();
  sub_1ABA8F9E0();
  v14 = sub_1ABE36518();
  *(v1 + 744) = v0;
  *(v1 + 752) = &off_1F20885C8;
  *(v1 + 720) = v14;
  *(v1 + 760) = 1952802673;
  *(v1 + 768) = 0xE400000000000000;
  type metadata accessor for Qget();
  sub_1ABA8F9E0();
  v15 = sub_1ABE3701C();
  *(v1 + 800) = v0;
  *(v1 + 808) = &off_1F20885C8;
  *(v1 + 776) = v15;
  *(v1 + 816) = 0x746567706F727071;
  *(v1 + 824) = 0xE800000000000000;
  type metadata accessor for Qpropget();
  sub_1ABA8F9E0();
  v16 = sub_1ABE37324();
  *(v1 + 856) = v0;
  *(v1 + 864) = &off_1F20885C8;
  *(v1 + 832) = v16;
  *(v1 + 872) = 0x7463656C657371;
  *(v1 + 880) = 0xE700000000000000;
  type metadata accessor for Qselect();
  sub_1ABA8F9E0();
  v17 = sub_1ABE37880();
  *(v1 + 912) = v0;
  *(v1 + 920) = &off_1F20885C8;
  *(v1 + 888) = v17;
  *(v1 + 928) = 6452595;
  *(v1 + 936) = 0xE300000000000000;
  type metadata accessor for Sub();
  sub_1ABA8F9E0();
  v18 = sub_1ABAF1D84();
  *(v1 + 968) = v0;
  *(v1 + 976) = &off_1F20885C8;
  *(v1 + 944) = v18;
  *(v1 + 984) = 1954047348;
  *(v1 + 992) = 0xE400000000000000;
  type metadata accessor for Text();
  sub_1ABA8F9E0();
  v19 = sub_1ABE84428();
  *(v1 + 1024) = v0;
  *(v1 + 1032) = &off_1F20885C8;
  *(v1 + 1000) = v19;
  *(v1 + 1040) = 0x656C70697274;
  *(v1 + 1048) = 0xE600000000000000;
  type metadata accessor for Triple();
  sub_1ABA8F9E0();
  v20 = sub_1ABE905D0();
  *(v1 + 1080) = v0;
  *(v1 + 1088) = &off_1F20885C8;
  *(v1 + 1056) = v20;
  strcpy((v1 + 1096), "renderDateTime");
  *(v1 + 1111) = -18;
  type metadata accessor for RenderDateTime();
  sub_1ABA8F9E0();
  v21 = sub_1ABE422E4();
  *(v1 + 1136) = v0;
  *(v1 + 1144) = &off_1F20885C8;
  *(v1 + 1112) = v21;
  *(v1 + 1152) = 29799;
  *(v1 + 1160) = 0xE200000000000000;
  type metadata accessor for GreaterThan();
  sub_1ABA8F9E0();
  v22 = sub_1ABD1E73C();
  *(v1 + 1192) = v0;
  *(v1 + 1200) = &off_1F20885C8;
  *(v1 + 1168) = v22;
  *(v1 + 1208) = 6648935;
  *(v1 + 1216) = 0xE300000000000000;
  type metadata accessor for GreaterThanEqual();
  sub_1ABA8F9E0();
  v23 = sub_1ABD1E7FC();
  *(v1 + 1248) = v0;
  *(v1 + 1256) = &off_1F20885C8;
  *(v1 + 1224) = v23;
  *(v1 + 1264) = 29804;
  *(v1 + 1272) = 0xE200000000000000;
  type metadata accessor for LessThan();
  sub_1ABA8F9E0();
  v24 = sub_1ABDEBF38();
  *(v1 + 1304) = v0;
  *(v1 + 1312) = &off_1F20885C8;
  *(v1 + 1280) = v24;
  *(v1 + 1320) = 6648940;
  *(v1 + 1328) = 0xE300000000000000;
  type metadata accessor for LessThanEqual();
  sub_1ABA8F9E0();
  v25 = sub_1ABDEBFF8();
  *(v1 + 1360) = v0;
  *(v1 + 1368) = &off_1F20885C8;
  *(v1 + 1336) = v25;
  *(v1 + 1376) = 0x6373615F74726F73;
  *(v1 + 1384) = 0xE800000000000000;
  type metadata accessor for SortAsc();
  sub_1ABA8F9E0();
  v26 = sub_1ABE65CEC();
  *(v1 + 1416) = v0;
  *(v1 + 1424) = &off_1F20885C8;
  *(v1 + 1392) = v26;
  *(v1 + 1432) = 0x7365645F74726F73;
  *(v1 + 1440) = 0xE900000000000063;
  type metadata accessor for SortDesc();
  sub_1ABA8F9E0();
  v27 = sub_1ABE65CEC();
  *(v1 + 1472) = v0;
  *(v1 + 1480) = &off_1F20885C8;
  *(v1 + 1448) = v27;
  sub_1ABAD219C(&qword_1EB4DA8F8, &qword_1ABF68178);
  result = sub_1ABF239C4();
  qword_1ED87C3F8 = result;
  return result;
}

uint64_t sub_1ABE1B2C0(uint64_t a1)
{
  v2 = type metadata accessor for KnosisConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABE1B31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  (*(v11 + 32))(&v21 - v16);
  v18 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *a4;
  (*(v11 + 16))(v15, v17, a5);
  sub_1ABE1B494(v15, a2, a3, isUniquelyReferenced_nonNull_native, &v22, a5, a6);
  result = (*(v11 + 8))(v17, a5);
  *a4 = v22;
  return result;
}

uint64_t sub_1ABE1B494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v13 = sub_1ABA93DC0(&v32);
  (*(*(a6 - 8) + 32))(v13, a1, a6);
  v14 = *a5;
  v15 = sub_1ABA94FC8(a2, a3);
  if (__OFADD__(v14[2], (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  sub_1ABAD219C(qword_1EB4DA900, &unk_1ABF68180);
  if ((sub_1ABF24C64() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *a5;
  v20 = sub_1ABA94FC8(a2, a3);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_10:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  v17 = v20;
LABEL_5:
  v22 = *a5;
  if (v18)
  {
    v23 = (v22[7] + 40 * v17);
    sub_1ABA84B54(v23);
    return sub_1ABA946C0(&v32, v23);
  }

  else
  {
    v25 = v33;
    v26 = sub_1ABA94E50(&v32, v33);
    v27 = *(*(v25 - 8) + 64);
    MEMORY[0x1EEE9AC00](v26);
    v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29);
    sub_1ABE1B6BC(v17, a2, a3, v29, v22, a6, a7);

    return sub_1ABA84B54(&v32);
  }
}

uint64_t sub_1ABE1B6BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  v13 = sub_1ABA93DC0(&v19);
  (*(*(a6 - 8) + 32))(v13, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_1ABA946C0(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_1ABE1B794()
{
  memset(v2, 0, sizeof(v2));
  *(v0 + 16) = 29295;
  *(v0 + 24) = 0xE200000000000000;
  *(v0 + 32) = &unk_1F208E668;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0xD00000000000001ELL;
  *(v0 + 72) = 0x80000001ABF92540;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

uint64_t sub_1ABE1B850()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1ABE1B8B8()
{
  sub_1ABA7E2A8();
  v31 = v0;
  v2 = v1;
  v4 = v3;
  v6 = *(v5 + 24);
  v7 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  sub_1ABA7BD7C();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  v25 = v24 - v23;
  v26 = *(v9 + 16);
  v32 = v4;
  v26(v17, v4, v7);
  if (sub_1ABA7E1E0(v17, 1, v6) == 1)
  {
    v27 = *(v9 + 8);
    v27(v17, v7);
    sub_1ABE1BDBC();
    sub_1ABA810DC();
    (*(v28 + 8))(v2);
    v27(v32, v7);
    v27(v14, v7);
  }

  else
  {
    (*(v19 + 32))(v25, v17, v6);
    sub_1ABE1BB50();
    sub_1ABA810DC();
    (*(v29 + 8))(v2);
    v30 = *(v9 + 8);
    v30(v32, v7);
    v30(v14, v7);
    (*(v19 + 8))(v25, v6);
  }

  sub_1ABA7BC1C();
}

void sub_1ABE1BB50()
{
  sub_1ABA7E2A8();
  v40 = v0;
  v41 = v1;
  v3 = v2;
  v5 = v4;
  v42 = v6;
  v7 = *(v2 + 16);
  sub_1ABA7BD7C();
  v39 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v14 = v13 - v12;
  v16 = *(v15 + 24);
  sub_1ABA7BD7C();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  v25 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v27 = v26;
  v29 = *(v28 + 64);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v39 - v32;
  (*(v18 + 16))(v24, v5, v16, v31);
  v34 = *(v3 + 32);
  sub_1ABA7C2D4();
  sub_1ABF23A44();
  v35 = v41;
  sub_1ABF239A4();
  if (sub_1ABA7E1E0(v33, 1, v16) == 1)
  {
    (*(v27 + 8))(v33, v25);
    (*(v39 + 16))(v14, v35, v7);
    sub_1ABA7C2D4();
    sub_1ABF241F4();
    sub_1ABF241A4();
    v36 = 1;
    v37 = v42;
  }

  else
  {
    v38 = v42;
    (*(v18 + 32))(v42, v33, v16);
    v36 = 0;
    v37 = v38;
  }

  sub_1ABA7B9B4(v37, v36, 1, v16);
  sub_1ABA7BC1C();
}

void sub_1ABE1BDBC()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v42 = v6;
  v7 = *(v2 + 16);
  sub_1ABA7BD7C();
  v39 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v38 = v13 - v12;
  v15 = *(v14 + 24);
  v16 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  sub_1ABA7BD7C();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7BC58();
  v40 = (v30 - v29);
  v31 = *(v3 + 32);
  sub_1ABA7C2D4();
  sub_1ABF23A44();
  v41 = v1;
  sub_1ABF23994();
  if (sub_1ABA7E1E0(v23, 1, v15) == 1)
  {
    (*(v18 + 8))(v23, v16);
    v32 = 1;
    v33 = v42;
LABEL_5:
    sub_1ABA7B9B4(v33, v32, 1, v15);
    sub_1ABA7BC1C();
    return;
  }

  v34 = *(v25 + 32);
  v37 = v25 + 32;
  v35 = v34(v40, v23, v15);
  v43 = *v41;
  MEMORY[0x1EEE9AC00](v35);
  *(&v37 - 4) = v7;
  *(&v37 - 3) = v15;
  *(&v37 - 2) = v31;
  *(&v37 - 1) = v5;
  sub_1ABA7C2D4();
  sub_1ABF241F4();

  sub_1ABA7F390();
  swift_getWitnessTable();
  sub_1ABF244D4();

  if ((v44 & 1) == 0)
  {
    v36 = v38;
    sub_1ABF241B4();
    (*(v39 + 8))(v36, v7);
    v33 = v42;
    v34(v42, v40, v15);
    v32 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1ABE1C0D4(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_1ABE1C0E4()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v20 = v4;
  v6 = v5;
  v7 = sub_1ABF247E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  sub_1ABA7BD7C();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  v18 = v17 - v16;
  sub_1ABF24224();
  (*(v12 + 16))(v6, v18, v3);
  sub_1ABF23A64();
  if (sub_1ABA7E1E0(v10, 1, v1) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 8))(v18, v3);
    (*(*(v1 - 8) + 32))(v20, v10, v1);
    sub_1ABA7BC1C();
  }
}

uint64_t sub_1ABE1C290@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  result = sub_1ABE1C0CC();
  *a2 = result;
  return result;
}

void (*sub_1ABE1C2C4(uint64_t **a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v7 = sub_1ABAFDD10(0x40uLL);
  *a1 = v7;
  v9 = a3[2];
  v8 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[4] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v7[5] = v11;
  v12 = sub_1ABAFDD10(*(v11 + 64));
  v7[6] = v12;
  v13 = *a2;
  v14 = *v3;
  v15 = v3[1];
  v16 = a3[4];
  v17 = sub_1ABE1C4BC(v7);
  v19 = v18;
  v7[7] = v17;
  (*(*(v9 - 8) + 16))(v12);
  (*(*(v8 - 8) + 16))(&v12[*(TupleTypeMetadata2 + 48)], v19, v8);
  return sub_1ABE1C444;
}

void sub_1ABE1C444(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1ABE1C4BC(uint64_t *a1))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v3 = *(TupleTypeMetadata2 - 8);
  a1[1] = v3;
  a1[2] = sub_1ABAFDD10(*(v3 + 64));
  v4 = *(TupleTypeMetadata2 + 48);
  sub_1ABE1C0E4();
  return sub_1ABE1C5D0;
}

void sub_1ABE1C5D0(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1ABE1C644@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABE1C0D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1ABE1C670(uint64_t *a1)
{
  result = sub_1ABE1C0D4(*a1);
  *a1 = result;
  return result;
}

__n128 sub_1ABE1C69C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1ABE1C6AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1ABE1C700(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1ABE1C754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  swift_getTupleTypeMetadata2();
  v6 = sub_1ABF241F4();
  sub_1ABA7F390();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1ABB66290(sub_1ABE1CB1C, v11, v6, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  v12 = a1;
  swift_getWitnessTable();
  sub_1ABF239D4();
  return v9;
}

uint64_t sub_1ABE1C860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v16 - v11;
  (*(v13 + 16))(v16 - v11, a1, TupleTypeMetadata2, v10);
  v14 = *(TupleTypeMetadata2 + 48);
  (*(*(a2 - 8) + 32))(a4, v12, a2);
  return (*(*(a3 - 8) + 8))(&v12[v14], a3);
}

uint64_t sub_1ABE1C9B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1ABE1C754(a1, a2[2], a2[3], a2[4]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1ABE1C9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a7 + 8);
  if ((sub_1ABF24204() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE68930](a2, a4, a5, a6, a7, a8);
}

uint64_t sub_1ABE1CB40()
{
  v1 = v0[5];
  v2 = *(v0[4] + 8);
  v3 = v0[2];
  return sub_1ABF23BB4() & 1;
}

uint64_t sub_1ABE1CB7C(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v61 = a1;
  v60 = sub_1ABF23744();
  v3 = sub_1ABA7BB64(v60);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - v10;
  v12 = sub_1ABF237F4();
  v13 = sub_1ABA7BB64(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v20 = v19 - v18;
  v58 = sub_1ABF23774();
  v21 = sub_1ABA7BB64(v58);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v28 = v27 - v26;
  v52 = type metadata accessor for LogSignpost();
  v29 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1ABA7BC58();
  v32 = v31 - v30;
  v57 = *v2;
  v33 = *(v2 + 3);
  v56 = *(v2 + 2);
  v55 = v33;
  v34 = *(v2 + 5);
  v54 = *(v2 + 4);
  v53 = v34;
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v35 = sub_1ABA7AA24(v12, qword_1ED871EF8);
  (*(v15 + 16))(v20, v35, v12);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v36 = sub_1ABF23764();
  v37 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v36, v37, v39, "Knosis.parseKGQ", "", v38, 2u);
    MEMORY[0x1AC5AB8B0](v38, -1, -1);
  }

  v40 = v60;
  (*(v5 + 16))(v59, v11, v60);
  v41 = sub_1ABF237B4();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = sub_1ABF237A4();
  (*(v5 + 8))(v11, v40);
  *v32 = "Knosis.parseKGQ";
  *(v32 + 8) = 15;
  *(v32 + 16) = 2;
  *(v32 + 24) = v44;
  (*(v23 + 32))(v32 + *(v52 + 24), v28, v58);
  v45 = v56;
  v46 = v55;
  sub_1ABDEC5F8(v61, v62, v56, v55, v68);
  v63 = v57;
  v64 = v45;
  v65 = v46;
  v66 = v54;
  v67 = v53;
  v47 = v68[10];
  sub_1ABE1D8D4(v68);
  if (v47)
  {
    sub_1ABA903B8();
  }

  else
  {
    v49 = v48;
    sub_1ABA903B8();
    v40 = *(v49 + 16);
  }

  sub_1ABE1D62C(v32);
  sub_1ABBA4F10(v32);
  return v40;
}

uint64_t sub_1ABE1D018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1ABF25054() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1ABE1D0A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a4;
  v38 = a3;
  v36 = a2;

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1ABF239C4();
  v40 = *(a1 + 16);
  if (v40)
  {
    v7 = 0;
    v8 = (a1 + 72);
    v39 = a1;
    while (v7 < *(a1 + 16))
    {
      v9 = *(v8 - 5);
      v10 = *(v8 - 4);
      v11 = *(v8 - 3);
      HIDWORD(v43) = *(v8 - 16);
      v12 = *(v8 - 1);
      v44 = *v8;

      swift_bridgeObjectRetain_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = *(v5 + 16);
        sub_1ABAAA4F4();
        v5 = v32;
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1ABA7BBEC(v13);
        sub_1ABAAA4F4();
        v5 = v33;
      }

      *(v5 + 16) = v14 + 1;
      v41 = v5;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;

      swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_1ABA94FC8(v9, v10);
      if (__OFADD__(*(v6 + 16), (v17 & 1) == 0))
      {
        goto LABEL_19;
      }

      v18 = v16;
      v19 = v17;
      sub_1ABAD219C(&qword_1EB4DA9A0, &qword_1ABF68588);
      if (sub_1ABF24C64())
      {
        v20 = sub_1ABA94FC8(v9, v10);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_21;
        }

        v18 = v20;
      }

      if (v19)
      {
        v22 = (*(v6 + 56) + 48 * v18);
        v23 = v22[1];
        v24 = v22[2];
        v25 = v22[5];
        sub_1ABAA4B38(v22, v36, v37, v38, v39, v40, v41, v43, v12, v44);
      }

      else
      {
        sub_1ABA7F258(v6 + 8 * (v18 >> 6));
        v27 = (v26 + 16 * v18);
        *v27 = v9;
        v27[1] = v10;
        sub_1ABAA4B38(*(v6 + 56) + 48 * v18, v36, v37, v38, v39, v40, v41, v43, v12, v44);

        v28 = *(v6 + 16);
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v30;
      }

      ++v7;
      v8 += 6;
      a1 = v39;
      v5 = v42;
      if (v40 == v7)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_1ABF25104();
    __break(1u);
  }

  else
  {
LABEL_17:

    result = sub_1ABDEC2F4(v5, v36);
    *v37 = v6;
    v37[1] = v36;
    v37[2] = result;
    v37[3] = v35;
    v37[4] = 500;
    v37[5] = v38;
  }

  return result;
}

void *sub_1ABE1D390()
{
  result = sub_1ABF239C4();
  off_1EB4DA988 = result;
  return result;
}

uint64_t sub_1ABE1D3CC()
{
  v1 = v0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = 0;
  type metadata accessor for KnosisQueryParam();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  v2 = sub_1ABF239C4();
  type metadata accessor for QueryNode();
  swift_allocObject();
  *(v1 + 16) = sub_1ABE73A74(0, 0xE000000000000000, v2);
  return v1;
}

void *sub_1ABE1D46C()
{
  v1 = v0[2];

  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[8];

  return v0;
}

uint64_t sub_1ABE1D4B8()
{
  sub_1ABE1D46C();

  return swift_deallocClassInstance();
}

uint64_t ParserError.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x457265737261503CLL, 0xED000020726F7272);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](544497952, 0xE400000000000000);
  if (v3)
  {
    v8 = sub_1ABDEC1BC(v1, v2, v3);
    v10 = v9;
  }

  else
  {
    v10 = 0xE100000000000000;
    v8 = 45;
  }

  MEMORY[0x1AC5A9410](v8, v10);

  MEMORY[0x1AC5A9410](8250, 0xE200000000000000);
  MEMORY[0x1AC5A9410](v5, v6);
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1ABE1D62C(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1ABF23744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LogSignpost();
  v12 = *a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = a1 + *(v11 + 24);
  v16 = sub_1ABF23764();
  sub_1ABF23794();
  v23 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v7 + 8))(v10, v6);
  }

  if ((v13 & 1) == 0)
  {
    if (v12)
    {
LABEL_9:

      sub_1ABF237C4();

      v18 = v24;
      if ((*(v24 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v5, v2);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v16, v23, v21, v12, v19, v20, 2u);
      MEMORY[0x1AC5AB8B0](v20, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v12 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v12 & 0xFFFFF800) != 0xD800)
  {
    if (v12 >> 16 <= 0x10)
    {
      v12 = &v25;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1ABE1D8D4(uint64_t a1)
{
  v2 = *v1;
  v571 = v1[2];
  v575 = v1[1];
  v567 = v1[3];
  v579 = v1[5];
  v582 = v1[4];
  v597 = MEMORY[0x1E69E7CC0];
  v585 = type metadata accessor for Node();
  v3 = swift_allocObject();
  v4 = sub_1ABE1D3CC();
  v5 = &v597;
  MEMORY[0x1AC5A9710](v4);
  v6 = *((v597 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v597 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v6 >> 1)
  {
    sub_1ABA7BBEC(v6);
    sub_1ABF24134();
  }

  sub_1ABF24184();
  v7 = 0;
  HIDWORD(v551) = 0;
  v8 = v597;
  v602 = v597;
  v547 = 0x80000001ABF91620;
  v9 = a1;
LABEL_4:
  v559 = v7;
LABEL_5:
  v594 = v8;
  while (2)
  {
    v10 = *(v9 + 56);
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_388:
      sub_1ABA7F8E8();
      sub_1ABAA4698(v527);
      sub_1ABAA54D8();
      sub_1ABE22DF0();
      sub_1ABA7BD00();
      sub_1ABA8C3F0();
      v518 = 1;
LABEL_380:
      sub_1ABAA5048(v517, v518);
      sub_1ABA8ECB0();

      goto LABEL_386;
    }

    *(v9 + 56) = v11;
    v12 = *(v9 + 48);
    if (v11 >= *(v12 + 16))
    {
      v14 = sub_1ABDEC8B8();
      v15 = v25;
      v27 = v26;
      v16 = v28;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA7C708();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v3 = *(v12 + 16);
      v29 = *(v12 + 24);
      v5 = v3 + 1;
      if (v3 >= v29 >> 1)
      {
        sub_1ABA7BBEC(v29);
        sub_1ABA9A6A8();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      *(v12 + 16) = v5;
      v30 = v12 + 32 * v3;
      *(v30 + 32) = v14;
      *(v30 + 40) = v15;
      *(v30 + 48) = v27;
      v607 = v27;
      *(v30 + 56) = v16;
      v9 = a1;
      *(a1 + 48) = v12;
    }

    else
    {
      if (v11 < 0)
      {
        __break(1u);
LABEL_398:
        __break(1u);

LABEL_382:

        return;
      }

      v13 = v12 + 32 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 56);
      v607 = *(v13 + 48);
    }

    *(v9 + 56) = v11;
    v31 = v8 >> 62;
    switch(v14)
    {
      case 1:
        sub_1ABDEC684();
        v3 = v199;

        if (v3 != 11)
        {
          goto LABEL_388;
        }

        sub_1ABA8F9FC(v200, v201, v202, v203, v204, v205, v206, v207, v543, v547, v551, v555, v559, v567, v571, v575);
        v599 = v209;
        v600 = v208;
        sub_1ABE1FAB8(1, v15, v607, v16, BYTE4(v551) & 1);
        if (v8 >> 62)
        {
          if (sub_1ABA94D04())
          {
LABEL_122:
            v5 = &v602;
            MEMORY[0x1AC5A9710]();
            sub_1ABA810F0();
            if (v87)
            {
              sub_1ABA7BBEC(v210);
              sub_1ABAA425C();
            }

            sub_1ABF24184();
            HIDWORD(v551) = 0;
            v8 = v602;
            goto LABEL_365;
          }
        }

        else if (sub_1ABA8E44C())
        {
          goto LABEL_122;
        }

        v602 = MEMORY[0x1E69E7CC0];
        goto LABEL_122;
      case 2:
      case 11:
        v591 = v14;
        v88 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
        }

        else
        {
          *(v9 + 56) = v88;
          if (v88 >= *(v12 + 16))
          {
            v555 = v15;
            v5 = sub_1ABDEC8B8();
            v3 = v211;
            v91 = v212;
            v214 = v213;

            v215 = v16;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7C708();
              v12 = v489;
            }

            v217 = *(v12 + 16);
            v216 = *(v12 + 24);
            if (v217 >= v216 >> 1)
            {
              sub_1ABA7BBEC(v216);
              sub_1ABA9A6A8();
              v12 = v490;
            }

            *(v12 + 16) = v217 + 1;
            v218 = v12 + 32 * v217;
            *(v218 + 32) = v5;
            *(v218 + 40) = v3;
            *(v218 + 48) = v91;
            *(v218 + 56) = v214;
            v89 = v594;
            v9 = a1;
            *(a1 + 48) = v12;
            v16 = v215;
            v15 = v555;
            goto LABEL_131;
          }

          if ((v88 & 0x8000000000000000) == 0)
          {
            v89 = v8;
            v90 = v12 + 32 * v88;
            v5 = *(v90 + 32);
            v3 = *(v90 + 40);
            v91 = *(v90 + 48);

LABEL_131:
            *(v9 + 56) = v88 - 1;
            if (v5 > 0x10u || ((1 << v5) & 0x12910) == 0)
            {

              v8 = v89;
              v93 = v559;
              goto LABEL_367;
            }

            sub_1ABA7F8E8();
            sub_1ABAA4698(v521);
            sub_1ABAA54D8();

            MEMORY[0x1AC5A9410](0x20746F67202CLL, 0xE600000000000000);
            MEMORY[0x1AC5A9410](v3, v91);

            sub_1ABE22DF0();
            sub_1ABA7BD00();
            sub_1ABA8C3F0();
            *v522 = v591;
            v522[1] = v15;
            v522[2] = v9;
            goto LABEL_385;
          }
        }

        __break(1u);
        goto LABEL_410;
      case 3:
      case 6:
        v32 = v14;
        v33 = v15;
        v34 = v16;
        v35 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_391;
        }

        *(v9 + 56) = v35;
        if (v35 >= *(v12 + 16))
        {
          v5 = sub_1ABDEC8B8();
          v588 = v37;
          v590 = v36;
          v11 = v38;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA7C708();
            v12 = v44;
          }

          v40 = *(v12 + 16);
          v39 = *(v12 + 24);
          v41 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            sub_1ABA7BBEC(v39);
            v543 = v45;
            sub_1ABA9A6A8();
            v41 = v543;
            v12 = v46;
          }

          *(v12 + 16) = v41;
          v42 = v12 + 32 * v40;
          *(v42 + 32) = v5;
          *(v42 + 40) = v590;
          *(v42 + 48) = v11;
          *(v42 + 56) = v588;

          v8 = v594;
          v9 = a1;
          *(a1 + 48) = v12;
        }

        else
        {
          if (v35 < 0)
          {
            goto LABEL_398;
          }

          v5 = *(v12 + 32 * v35 + 32);
        }

        *(v9 + 56) = v35 - 1;
        if (v5 != 8 && v5 != 13)
        {
          v16 = v34;
          v15 = v33;
          v14 = v32;
          if ((v551 & 0x100000000) != 0)
          {
            goto LABEL_395;
          }

          if (v5 != 2 && v5 != 12 && v5 != 16)
          {
            if (v5 == 11)
            {
LABEL_395:
              v597 = v15;
              v598 = v607;

              MEMORY[0x1AC5A9410](0xD000000000000013, 0x80000001ABF92780);
              sub_1ABE22DF0();
              sub_1ABA7BD00();
              sub_1ABA8C3F0();
              v535 = v32;
            }

            else
            {
              sub_1ABA7F8E8();
              sub_1ABAA4698(v536);
              sub_1ABAA54D8();

              sub_1ABE22DF0();
              sub_1ABA7BD00();
              sub_1ABA8C3F0();
              v535 = v32;
            }

            sub_1ABAA5048(v534, v535);
            sub_1ABA8ECB0();
            goto LABEL_386;
          }

          sub_1ABA8F9FC(isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v23, v24, v543, v547, v551, v555, v559, v567, v571, v575);
          v599 = v230;
          v600 = v229;
          v3 = v31;
          if (v31)
          {
            v231 = sub_1ABF24CA4();
          }

          else
          {
            v231 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v232 = v8;
          if (!v231)
          {
            sub_1ABA7DEEC(0, v222, v223, v224, v225, v226, v227, v228, v543, v547, v551, v555, v562, v567, v571, v575, v579, v582, v585);
            swift_allocObject();
            sub_1ABAA3DC4();
            goto LABEL_172;
          }

          v94 = __OFSUB__(v231, 1);
          v233 = v231 - 1;
          if (!v94)
          {
            if ((v8 & 0xC000000000000001) == 0)
            {
              if ((v233 & 0x8000000000000000) == 0)
              {
                sub_1ABA83C64(v8 & 0xFFFFFFFFFFFFFF8);
                if (!v87)
                {
                  v11 = *(v8 + 8 * v234 + 32);

                  goto LABEL_172;
                }

LABEL_427:
                __break(1u);
LABEL_428:
                __break(1u);
                goto LABEL_429;
              }

LABEL_426:
              __break(1u);
              goto LABEL_427;
            }

            v11 = MEMORY[0x1AC5AA170](v233, v8);
LABEL_172:
            v5 = &v597;
            sub_1ABE217C4(v11, v14, v15, v607, v16);
            if (!v586)
            {

              if (!v3)
              {
                v265 = v8;
                v266 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v266)
                {
                  goto LABEL_175;
                }

LABEL_180:
                sub_1ABA7DEEC(v266, v265, v259, v260, v261, v262, v263, v264, v543, v547, v551, v555, v562, v567, v571, v575, v579, v582, v585);
                v5 = swift_allocObject();
                sub_1ABE1D3CC();
LABEL_181:
                v270 = *(v5 + 83);

                if (v270)
                {
                  HIDWORD(v551) = 0;
                  v93 = v562;
LABEL_209:
                  v8 = v232;
                  goto LABEL_367;
                }

                v277 = v8;
                if (v3)
                {
                  v278 = sub_1ABF24CA4();
                  v277 = v8;
                  if (!v278)
                  {
                    goto LABEL_206;
                  }

LABEL_185:
                  v94 = __OFSUB__(v278, 1);
                  v279 = v278 - 1;
                  v93 = v562;
                  if (v94)
                  {
                    goto LABEL_438;
                  }

                  if (v279 < 0)
                  {
                    goto LABEL_439;
                  }

                  sub_1ABA83C64(v277 & 0xFFFFFFFFFFFFFF8);
                  if (v87)
                  {
                    goto LABEL_440;
                  }

                  sub_1ABA842C4(v281 + 8 * v280);
                }

                else
                {
                  v278 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v278)
                  {
                    goto LABEL_185;
                  }

LABEL_206:
                  sub_1ABA7DEEC(v278, v277, v271, v272, v273, v274, v275, v276, v543, v547, v551, v555, v562, v567, v571, v575, v579, v582, v585);
                  v5 = swift_allocObject();
                  sub_1ABE1D3CC();
                  v93 = v563;
                }

                v314 = *(v5 + 72);
                v94 = __OFADD__(v314, 1);
                v315 = v314 + 1;
                if (!v94)
                {
                  *(v5 + 72) = v315;

                  HIDWORD(v551) = 0;
                  goto LABEL_209;
                }

LABEL_432:
                __break(1u);
LABEL_433:
                __break(1u);
LABEL_434:
                __break(1u);
                goto LABEL_435;
              }

              v266 = sub_1ABF24CA4();
              v265 = v8;
              if (!v266)
              {
                goto LABEL_180;
              }

LABEL_175:
              v94 = __OFSUB__(v266, 1);
              v267 = v266 - 1;
              if (v94)
              {
                goto LABEL_428;
              }

              if (v267 < 0)
              {
LABEL_429:
                __break(1u);
              }

              else
              {
                sub_1ABA83C64(v265 & 0xFFFFFFFFFFFFFF8);
                if (!v87)
                {
                  sub_1ABA842C4(v269 + 8 * v268);
                  goto LABEL_181;
                }
              }

              __break(1u);
LABEL_431:
              __break(1u);
              goto LABEL_432;
            }

LABEL_391:

            goto LABEL_386;
          }

LABEL_425:
          __break(1u);
          goto LABEL_426;
        }

        v3 = v8;

        continue;
      case 4:
        HIDWORD(v551) = 1;
        goto LABEL_366;
      case 7:
        v14 = v8;
        v506 = *(v9 + 16);
        v603 = *v9;
        v604 = v506;
        v507 = *(v9 + 48);
        v605 = *(v9 + 32);
        v606 = v507;
        v508 = sub_1ABDEC828();
        v511 = v510;
        if (v508 != 12)
        {
          v515 = v509;

          v597 = sub_1ABB28D54(51);
          v598 = v516;
          MEMORY[0x1AC5A9410](0xD000000000000031, 0x80000001ABF92630);
          MEMORY[0x1AC5A9410](v515, v511);

          sub_1ABE22DF0();
          sub_1ABA7BD00();
          sub_1ABA8C3F0();
          v518 = 7;
          goto LABEL_380;
        }

        v512 = sub_1ABAAB7C8(v8);
        v513 = v607;
        if (!v512 || sub_1ABAAB7C8(v8) != 1)
        {
          sub_1ABE22DF0();
          sub_1ABA7BD00();
          sub_1ABAA3A78();
          *v519 = 7;
          v519[1] = v15;
          v519[2] = v513;
          v519[3] = v16;

          sub_1ABAA3284();
          *(v3 + 32) = v520 + 19;
          *(v3 + 40) = 0x80000001ABF92670;
          *(v3 + 48) = 0;
          swift_willThrow();

          goto LABEL_386;
        }

        sub_1ABAAB7C0(0, (v8 & 0xC000000000000001) == 0, v8);
        if ((v8 & 0xC000000000000001) != 0)
        {
          goto LABEL_453;
        }

        v514 = *(v8 + 32);

        goto LABEL_378;
      case 8:
        v589 = v16;
        v103 = v8;
        sub_1ABDEC780();

        sub_1ABA7DEEC(v104, v105, v106, v107, v108, v109, v110, v111, v543, v547, v551, v555, v559, v567, v571, v575, v579, v582, v585);
        v112 = swift_allocObject();
        sub_1ABE1D3CC();
        v601 = v112;
        v113 = v607;

        v114 = *(v9 + 56);
        v592 = v15;
        v556 = v15;
        do
        {
          v115 = v114 + 1;
          if (__OFADD__(v114, 1))
          {
            __break(1u);
LABEL_402:
            __break(1u);
LABEL_403:
            __break(1u);
LABEL_404:
            __break(1u);
LABEL_405:
            __break(1u);
LABEL_406:
            __break(1u);
            goto LABEL_407;
          }

          *(v9 + 56) = v115;
          if (v115 >= *(v12 + 16))
          {
            v116 = sub_1ABDEC8B8();
            v118 = v117;
            v120 = v119;
            v122 = v121;
            v11 = v116;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7C708();
              v12 = v191;
            }

            v124 = *(v12 + 16);
            v123 = *(v12 + 24);
            if (v124 >= v123 >> 1)
            {
              sub_1ABA7BBEC(v123);
              sub_1ABA9A6A8();
              v12 = v192;
            }

            *(v12 + 16) = v124 + 1;
            v125 = v12 + 32 * v124;
            *(v125 + 32) = v116;
            *(v125 + 40) = v118;
            *(v125 + 48) = v120;
            *(v125 + 56) = v122;
            v103 = v594;
            v9 = a1;
            *(a1 + 48) = v12;
            v15 = v556;
          }

          else if (v115 < 0)
          {
            goto LABEL_405;
          }

          *(v9 + 56) = v115;
          v126 = qword_1EB4D03F0;

          if (v126 != -1)
          {
            swift_once();
          }

          v127 = off_1EB4DA988;
          v128 = v607;
          if (!*(off_1EB4DA988 + 2))
          {
            goto LABEL_402;
          }

          v129 = sub_1ABA94FC8(v592, v113);
          if ((v130 & 1) == 0)
          {
            goto LABEL_403;
          }

          v131 = v103;
          v132 = (v127[7] + 16 * v129);
          v133 = *v132;
          v134 = v132[1];

          sub_1ABA7DEEC(v135, v136, v137, v138, v139, v140, v141, v142, v544, v548, v552, v556, v560, v568, v572, v576, v580, v583, v585);
          swift_allocObject();
          sub_1ABAA3DC4();
          type metadata accessor for KnosisQueryParam();
          v143 = sub_1ABF239C4();
          type metadata accessor for QueryNode();
          swift_allocObject();
          v144 = sub_1ABE73A74(v133, v134, v143);
          v145 = *(v11 + 16);
          *(v11 + 16) = v144;

          v146 = *(v144 + 16);
          v147 = *(v144 + 24);

          if (*(v587 + 16) && (v148 = sub_1ABA94FC8(v146, v147), (v149 & 1) != 0))
          {
            v150 = *(v587 + 56) + 48 * v148;
            v152 = *v150;
            v151 = *(v150 + 8);
            v153 = *(v150 + 16);
            v154 = *(v150 + 24);
            v155 = *(v150 + 40);
            v593 = *(v150 + 32);

            v157 = *(v11 + 32);
            v156 = *(v11 + 40);
            v158 = *(v11 + 64);
            *(v11 + 24) = v152;
            *(v11 + 32) = v151;
            v128 = v607;
            *(v11 + 40) = v153;
            *(v11 + 48) = v154;
            v131 = v594;
            *(v11 + 56) = v593;
            *(v11 + 64) = v155;
            v15 = v557;

            *(v11 + 80) = 0;
          }

          else
          {

            sub_1ABA7DEEC(v167, v168, v169, v170, v171, v172, v173, v174, v545, v549, v553, v557, v561, v569, v573, v577, v581, v584, v585);
            v175 = swift_allocObject();
            sub_1ABE1D3CC();

            v11 = v175;
          }

          v596 = v11;
          v597 = v587;
          sub_1ABA90AE8(v159, v160, v161, v162, v163, v164, v165, v166, v545, v549, v553, v557, v561, v569, v573, v577, v581, v584);
          sub_1ABE20494(a1, &v601, &v596);
          if (v586)
          {

            goto LABEL_382;
          }

          v11 = v176;

          v601 = v11;
          v177 = *(a1 + 56);
          v178 = v177 + 1;
          if (__OFADD__(v177, 1))
          {
            goto LABEL_404;
          }

          v103 = v131;
          *(a1 + 56) = v178;
          v12 = *(a1 + 48);
          v179 = *(v12 + 16);
          v607 = v128;
          if (v178 >= v179)
          {
            v183 = v15;
            v181 = sub_1ABDEC8B8();
            v592 = v184;
            v113 = v185;
            v187 = v186;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7C708();
              v12 = v193;
            }

            v189 = *(v12 + 16);
            v188 = *(v12 + 24);
            if (v189 >= v188 >> 1)
            {
              sub_1ABA7BBEC(v188);
              sub_1ABA9A6A8();
              v12 = v194;
            }

            *(v12 + 16) = v189 + 1;
            v190 = v12 + 32 * v189;
            *(v190 + 32) = v181;
            v103 = v594;
            *(v190 + 40) = v592;
            *(v190 + 48) = v113;
            *(v190 + 56) = v187;
            v182 = a1;
            *(a1 + 48) = v12;
            v15 = v183;
          }

          else
          {
            if (v178 < 0)
            {
              goto LABEL_406;
            }

            v180 = v12 + 32 * v178;
            v181 = *(v180 + 32);
            v113 = *(v180 + 48);
            v592 = *(v180 + 40);

            v182 = a1;
          }

          v114 = v178 - 1;
          *(v182 + 56) = v178 - 1;
          v9 = v182;
        }

        while (v181 == 8);

        if (v103 >> 62)
        {
          v235 = sub_1ABF24CA4();
          v16 = v589;
          v14 = v607;
          if (!v235)
          {
            goto LABEL_349;
          }

          if (sub_1ABF24CA4())
          {
            goto LABEL_156;
          }

LABEL_436:
          __break(1u);
          goto LABEL_437;
        }

        v16 = v589;
        v14 = v607;
        if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_156:
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v103 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
          {
            v244 = sub_1ABD8EE9C(v103);
          }

          else
          {
            v244 = v103;
          }

          if (*((v244 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            sub_1ABAA61C0();
            v325 = *(v324 + 32);
            *(v326 + 16) = v327;
            v103 = v316;
            v602 = v316;
            goto LABEL_350;
          }

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
          goto LABEL_443;
        }

LABEL_349:
        sub_1ABA7DEEC(v235, v236, v237, v238, v239, v240, v241, v242, v544, v548, v552, v556, v560, v568, v572, v576, v580, v583, v585);
        v325 = swift_allocObject();
        v316 = sub_1ABE1D3CC();
LABEL_350:
        v596 = v325;
        v597 = v587;
        sub_1ABA90AE8(v316, v317, v318, v319, v320, v321, v322, v323, v544, v548, v552, v556, v560, v568, v572, v576, v580, v583);
        sub_1ABE20178(&v596, v11);
        v14 = v596;
        v491 = *(v596 + 72);
        v94 = __OFADD__(v491, 1);
        v492 = v491 + 1;
        if (v94)
        {
          goto LABEL_431;
        }

        *(v596 + 72) = v492;
        if (v103 >> 62)
        {
          if (!sub_1ABA94D04())
          {
LABEL_353:

            v602 = MEMORY[0x1E69E7CC0];
          }
        }

        else if (!sub_1ABA8E44C())
        {
          goto LABEL_353;
        }

        v5 = &v602;
        MEMORY[0x1AC5A9710](v493);
        sub_1ABA810F0();
        if (v87)
        {
          sub_1ABA7BBEC(v494);
          sub_1ABAA425C();
        }

        sub_1ABF24184();
        v3 = v602;

        v8 = v3;
LABEL_365:
        v9 = a1;
LABEL_366:
        v93 = v559;
LABEL_367:
        v7 = v93 + 1;
        if (v7 < v582)
        {

          goto LABEL_4;
        }

        sub_1ABA7F8E8();
        v597 = v524 + 1;
        v598 = v523;
        v601 = v582;
        v525 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v525);

        MEMORY[0x1AC5A9410](0x6465686361657220, 0xE800000000000000);
        sub_1ABE22DF0();
        sub_1ABA7BD00();
        sub_1ABA8C3F0();
        *v522 = v526;
        v522[1] = v15;
        v522[2] = v607;
LABEL_385:
        v522[3] = v16;

        sub_1ABA8ECB0();
LABEL_386:

        return;
      case 10:
        sub_1ABE22DF0();
        sub_1ABA7BD00();
        sub_1ABAA3A78();
        *v504 = 10;
        v504[1] = v15;
        v505 = v607;
        v504[2] = v607;
        v504[3] = v16;
        swift_bridgeObjectRetain_n();

        *(v3 + 32) = v15;
        *(v3 + 40) = v505;
        *(v3 + 48) = 2;
        goto LABEL_372;
      case 12:
        if (v8 >> 62)
        {
          isUniquelyReferenced_nonNull_native = sub_1ABF24CA4();
          if (!isUniquelyReferenced_nonNull_native)
          {
LABEL_41:
            sub_1ABA7DEEC(isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v23, v24, v543, v547, v551, v555, v559, v567, v571, v575, v579, v582, v585);
            v47 = v8;
            v58 = swift_allocObject();
            v49 = sub_1ABE1D3CC();
            goto LABEL_42;
          }

          if (!sub_1ABF24CA4())
          {
            goto LABEL_413;
          }
        }

        else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v47 = v8;
        v48 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v8 >> 62 || (v48 & 1) == 0)
        {
          v47 = sub_1ABD8EE9C(v8);
        }

        if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_417;
        }

        sub_1ABAA61C0();
        v58 = *(v57 + 32);
        *(v59 + 16) = v60;
        v602 = v47;
LABEL_42:
        if (*(v58 + 80))
        {
          goto LABEL_51;
        }

        if (v47 >> 62)
        {
          v61 = sub_1ABA94D04();
          v69 = v47;
          if (!v61)
          {
LABEL_48:
            sub_1ABA7DEEC(v61, v62, v63, v64, v65, v66, v67, v68, v543, v547, v551, v555, v559, v567, v571, v575, v579, v582, v585);
            v71 = swift_allocObject();
            sub_1ABE1D3CC();
            goto LABEL_49;
          }
        }

        else
        {
          v61 = sub_1ABA8E44C();
          if (!v61)
          {
            goto LABEL_48;
          }
        }

        v70 = sub_1ABB31024(v69);
        if (!v70)
        {
          goto LABEL_462;
        }

        v71 = v70;
LABEL_49:
        v72 = *(v71 + 16);

        v73 = *(v72 + 16);
        v74 = *(v72 + 24);

        sub_1ABB130E0();
        LOBYTE(v72) = v75;

        if (v72)
        {
          *(v58 + 82) = 1;
        }

LABEL_51:
        sub_1ABA8F9FC(v49, v50, v51, v52, v53, v54, v55, v56, v543, v547, v551, v555, v559, v567, v571, v575);
        v599 = v77;
        v600 = v76;
        sub_1ABE1FCB0(v58);
        if (v586)
        {
          goto LABEL_391;
        }

        sub_1ABDEC684();
        v3 = v78;

        if (v3 != 4)
        {
          if (*(v58 + 80) == 1)
          {
            sub_1ABA8F9FC(v47, v79, v80, v81, v82, v83, v84, v85, v543, v547, v551, v555, v559, v567, v571, v575);
            v599 = v345;
            v600 = v344;
            if (sub_1ABAAB7C8(v346))
            {

              v355 = sub_1ABB31024(v354);
              if (!v355)
              {
                goto LABEL_466;
              }

              v356 = v355;
            }

            else
            {
              sub_1ABA7DEEC(0, v347, v348, v349, v350, v351, v352, v353, v546, v550, v554, v558, v564, v570, v574, v578, v579, v582, v585);
              v356 = swift_allocObject();

              sub_1ABE1D3CC();
            }

            v372 = &v597;
            sub_1ABE20118(v356, v58);
            while (2)
            {

              v14 = v47;
              if (v47 >> 62)
              {
                v380 = sub_1ABF24CA4();
                v14 = v47;
                if (v380)
                {
                  goto LABEL_239;
                }
              }

              else
              {
                v380 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v380)
                {
LABEL_239:
                  v94 = __OFSUB__(v380, 1);
                  v381 = v380 - 1;
                  if (v94)
                  {
                    goto LABEL_441;
                  }

                  if ((v14 & 0xC000000000000001) != 0)
                  {
                    v414 = MEMORY[0x1AC5AA170](v381, v14);
                    v14 = v47;
                    v372 = v414;
                  }

                  else
                  {
                    if (v381 < 0)
                    {
                      goto LABEL_442;
                    }

                    sub_1ABA83C64(v14 & 0xFFFFFFFFFFFFFF8);
                    if (v87)
                    {
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
                      goto LABEL_452;
                    }

                    sub_1ABA842C4(v14 + 8 * v382);
                  }

LABEL_246:

                  v383 = *(v372 + 80);

                  if ((v383 & 1) == 0)
                  {
                    if (sub_1ABAAB7C8(v14))
                    {
                      if (sub_1ABAAB7C8(v14))
                      {
                        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
                        {
                          v14 = sub_1ABD8EE9C(v14);
                        }

                        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          sub_1ABAA61C0();
                          v356 = *(v422 + 32);
                          *(v423 + 16) = v424;
                          v602 = v14;
                          goto LABEL_295;
                        }

LABEL_459:
                        __break(1u);
LABEL_460:
                        __break(1u);
                        goto LABEL_461;
                      }

LABEL_458:
                      __break(1u);
                      goto LABEL_459;
                    }

                    sub_1ABA7DEEC(0, v415, v416, v417, v418, v419, v420, v421, v546, v550, v554, v558, v564, v570, v574, v578, v579, v582, v585);
                    swift_allocObject();
                    sub_1ABAA3DC4();
LABEL_295:
                    if (!sub_1ABAAB7C8(v14))
                    {
                      v441 = v14;
                      sub_1ABA7DEEC(0, v434, v435, v436, v437, v438, v439, v440, v546, v550, v554, v558, v564, v570, v574, v578, v579, v582, v585);
                      swift_allocObject();
                      v442 = sub_1ABE1D3CC();
                      goto LABEL_299;
                    }

                    v441 = v14;
                    v442 = sub_1ABB31024(v14);
                    if (!v442)
                    {
                      goto LABEL_467;
                    }

LABEL_299:
                    sub_1ABA8F9FC(v442, v443, v444, v445, v446, v447, v448, v449, v546, v550, v554, v558, v564, v570, v574, v578);
                    v451 = sub_1ABAA2E00(v450);
                    sub_1ABE20178(v451, v356);
                    if (sub_1ABAAB7C8(v441))
                    {
                      if (!sub_1ABAAB7C8(v441))
                      {
                        goto LABEL_460;
                      }

                      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v441 & 0x8000000000000000) != 0 || (v441 & 0x4000000000000000) != 0)
                      {
                        v441 = sub_1ABD8EE9C(v441);
                      }

                      if (*((v441 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        sub_1ABAA61C0();
                        v453 = *(v452 + 32);
                        *(v454 + 16) = v455;

                        v602 = v441;
                        goto LABEL_308;
                      }

LABEL_461:
                      __break(1u);
LABEL_462:
                      __break(1u);
LABEL_463:
                      __break(1u);
LABEL_464:
                      __break(1u);
LABEL_465:
                      __break(1u);
LABEL_466:
                      __break(1u);
LABEL_467:
                      __break(1u);
LABEL_468:
                      __break(1u);
                      return;
                    }

                    swift_initStackObject();
                    sub_1ABE1D3CC();

LABEL_308:
                    if (!sub_1ABAAB7C8(v441))
                    {

                      v602 = MEMORY[0x1E69E7CC0];
                    }

                    MEMORY[0x1AC5A9710](v456);
                    sub_1ABA810F0();
                    if (v87)
                    {
                      sub_1ABA7BBEC(v457);
                      sub_1ABAA425C();
                    }

                    sub_1ABF24184();
                    v433 = v602;

LABEL_313:

                    v93 = v565;
                    if (sub_1ABAAB7C8(v433))
                    {
                      v232 = v433;
                      v465 = sub_1ABB31024(v433);
                      if (!v465)
                      {
                        goto LABEL_464;
                      }

                      v5 = v465;
                    }

                    else
                    {
                      v232 = v433;
                      sub_1ABA7DEEC(0, v458, v459, v460, v461, v462, v463, v464, v543, v547, v551, v555, v565, v567, v571, v575, v579, v582, v585);
                      v5 = swift_allocObject();
                      sub_1ABE1D3CC();
                    }

                    v3 = *(v5 + 83);

                    if (v3)
                    {

                      v9 = a1;
                      goto LABEL_209;
                    }

                    v3 = v232;
                    if (sub_1ABAAB7C8(v232))
                    {
                      v473 = sub_1ABB31024(v232);
                      if (!v473)
                      {
                        goto LABEL_468;
                      }

                      v5 = v473;
                    }

                    else
                    {
                      sub_1ABA7DEEC(0, v466, v467, v468, v469, v470, v471, v472, v543, v547, v551, v555, v565, v567, v571, v575, v579, v582, v585);
                      v5 = swift_allocObject();
                      sub_1ABE1D3CC();
                    }

                    v9 = a1;
                    v474 = *(v5 + 72);
                    v94 = __OFADD__(v474, 1);
                    v475 = v474 + 1;
                    if (!v94)
                    {
                      *(v5 + 72) = v475;

                      goto LABEL_209;
                    }

LABEL_455:
                    __break(1u);
LABEL_456:
                    __break(1u);
                    goto LABEL_457;
                  }

                  v392 = v14 >> 62;
                  if (v14 >> 62)
                  {
                    v384 = sub_1ABF24CA4();
                    if (!v384)
                    {
                      goto LABEL_258;
                    }

                    v14 = v47;
                    if (!sub_1ABF24CA4())
                    {
                      goto LABEL_444;
                    }

LABEL_249:
                    v393 = swift_isUniquelyReferenced_nonNull_bridgeObject();
                    if (v392 || (v393 & 1) == 0)
                    {
                      v394 = sub_1ABD8EE9C(v47);
                    }

                    else
                    {
                      v394 = v47;
                    }

                    if (!*((v394 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_445;
                    }

                    v395 = v394;
                    sub_1ABAA61C0();
                    v397 = *(v396 + 32);
                    *(v398 + 16) = v399;

                    v602 = v395;
                    v400 = v397;
                    v401 = v395;
                  }

                  else
                  {
                    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_249;
                    }

LABEL_258:
                    sub_1ABA7DEEC(v384, v385, v386, v387, v388, v389, v390, v391, v546, v550, v554, v558, v564, v570, v574, v578, v579, v582, v585);
                    v402 = swift_allocObject();
                    sub_1ABE1D3CC();

                    v401 = v47;
                    v400 = v402;
                  }

                  v47 = v401;
                  if (v401 >> 62)
                  {
                    v403 = sub_1ABA94D04();
                    if (v403)
                    {
                      goto LABEL_261;
                    }
                  }

                  else
                  {
                    v403 = sub_1ABA8E44C();
                    if (v403)
                    {
LABEL_261:
                      v411 = v403 - 1;
                      if (__OFSUB__(v403, 1))
                      {
                        goto LABEL_446;
                      }

                      if ((v47 & 0xC000000000000001) != 0)
                      {

                        v412 = MEMORY[0x1AC5AA170](v411, v47);
                      }

                      else
                      {
                        if ((v411 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_447;
                        }

                        if (v411 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_448;
                        }

                        v412 = *(v47 + 8 * v411 + 32);
                      }

                      goto LABEL_268;
                    }
                  }

                  sub_1ABA7DEEC(v403, v404, v405, v406, v407, v408, v409, v410, v546, v550, v554, v558, v564, v570, v574, v578, v579, v582, v585);
                  v412 = swift_allocObject();

                  sub_1ABE1D3CC();
LABEL_268:
                  v413 = *(v412 + 16);

                  v372 = *(v400 + 16);

                  v356 = *(v413 + 40);
                  *(v413 + 40) = v372;

                  continue;
                }
              }

              break;
            }

            sub_1ABA7DEEC(v380, v373, v374, v375, v376, v377, v378, v379, v546, v550, v554, v558, v564, v570, v574, v578, v579, v582, v585);
            v372 = swift_allocObject();
            sub_1ABE1D3CC();
            v14 = v47;
            goto LABEL_246;
          }

          if (sub_1ABAAB7C8(v47))
          {
            if (sub_1ABAAB7C8(v47))
            {
              v364 = sub_1ABB31024(v47);
              if (!v364)
              {
                goto LABEL_465;
              }
            }

            else
            {
              sub_1ABA7DEEC(0, v357, v358, v359, v360, v361, v362, v363, v543, v547, v551, v555, v559, v567, v571, v575, v579, v582, v585);
              swift_allocObject();
              v364 = sub_1ABE1D3CC();
            }

            sub_1ABA8F9FC(v364, v365, v366, v367, v368, v369, v370, v371, v543, v547, v551, v555, v559, v567, v571, v575);
            v426 = sub_1ABAA2E00(v425);
            sub_1ABE20178(v426, v58);
            if (sub_1ABAAB7C8(v47))
            {
              if (!sub_1ABAAB7C8(v47))
              {
                goto LABEL_456;
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v47 & 0x8000000000000000) != 0 || (v47 & 0x4000000000000000) != 0)
              {
                v47 = sub_1ABD8EE9C(v47);
              }

              if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_457:
                __break(1u);
                goto LABEL_458;
              }

              sub_1ABAA61C0();
              v428 = *(v427 + 32);
              *(v429 + 16) = v430;

              v602 = v47;
            }

            else
            {
              swift_initStackObject();
              sub_1ABE1D3CC();
            }

            if (!sub_1ABAAB7C8(v47))
            {

              v602 = MEMORY[0x1E69E7CC0];
            }

            MEMORY[0x1AC5A9710](v431);
            sub_1ABA810F0();
            if (v87)
            {
              sub_1ABA7BBEC(v432);
              sub_1ABAA425C();
            }

            sub_1ABF24184();
            v433 = v602;
            goto LABEL_313;
          }

LABEL_411:
          sub_1ABA7F8E8();
          v597 = v540 + 15;
          v598 = v539;
          v601 = v16;

          v541 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v541);

          sub_1ABE22DF0();
          sub_1ABA7BD00();
          sub_1ABA8C3F0();
          sub_1ABAA5048(v542, 12);
          sub_1ABA8ECB0();
          goto LABEL_391;
        }

        if (!(v47 >> 62))
        {
          if (sub_1ABA8E44C())
          {
            goto LABEL_56;
          }

LABEL_55:

          v602 = MEMORY[0x1E69E7CC0];
          goto LABEL_56;
        }

        if (!sub_1ABA94D04())
        {
          goto LABEL_55;
        }

LABEL_56:
        v5 = &v602;
        MEMORY[0x1AC5A9710]();
        sub_1ABA810F0();
        if (v87)
        {
          sub_1ABA7BBEC(v86);
          sub_1ABAA425C();
        }

        sub_1ABF24184();

        v8 = v602;
        v9 = a1;
        goto LABEL_5;
      case 13:
        v97 = v8 >> 62;
        if (v11)
        {
          if (v11 > *(v12 + 16))
          {
            goto LABEL_416;
          }

          v98 = v8;
          v99 = v12 + 32 * v11;
          v101 = *(v99 + 8);
          v100 = *(v99 + 16);

          v102 = v101 == 0x7079547865646E69 && v100 == 0xE900000000000065;
          v14 = v607;
          if (v102)
          {
            goto LABEL_163;
          }
        }

        else
        {
          v98 = v8;
          sub_1ABAA3284();
          v101 = (v245 + 13);
          v100 = v547;
          v14 = v607;
        }

        if (sub_1ABAA5A48())
        {
LABEL_163:

          if (v97)
          {
            v253 = sub_1ABF24CA4();
          }

          else
          {
            v253 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v607 = v14;
          if (v253)
          {
            v94 = __OFSUB__(v253, 1);
            v254 = v253 - 1;
            if (v94)
            {
              goto LABEL_433;
            }

            if ((v98 & 0xC000000000000001) != 0)
            {
              v495 = v98;
              v257 = v16;
              v258 = MEMORY[0x1AC5AA170](v254, v495);
            }

            else
            {
              if (v254 < 0)
              {
                goto LABEL_434;
              }

              sub_1ABA83C64(v594 & 0xFFFFFFFFFFFFFF8);
              if (v87)
              {
LABEL_435:
                __break(1u);
                goto LABEL_436;
              }

              v257 = v16;
              v258 = *(v256 + 8 * v255 + 32);
            }
          }

          else
          {
            v257 = v16;
            sub_1ABA7DEEC(0, v246, v247, v248, v249, v250, v251, v252, v543, v547, v551, v555, v559, v567, v571, v575, v579, v582, v585);
            v258 = swift_allocObject();
            sub_1ABE1D3CC();
          }

          v5 = a1;
          sub_1ABDEC684();
          v307 = *(a1 + 56);
          v94 = __OFADD__(v307, 1);
          v308 = v307 + 1;
          if (!v94)
          {
            v309 = v303;
            v310 = v304;
            v311 = v305;
            v312 = v306;
            *(a1 + 56) = v308;
            v597 = v304;
            v598 = v305;

            v313._countAndFlagsBits = sub_1ABF23EB4();
            KnosisIndexType.init(rawValue:)(v313);
            v3 = v601;
            if (v601 != 9)
            {

              *(*(v258 + 16) + 64) = v3;

              v16 = v257;
              v8 = v594;
              goto LABEL_365;
            }

            sub_1ABA7F8E8();
            v597 = v529;
            v598 = v528;
            MEMORY[0x1AC5A9410](v310, v311);
            v530 = v597;
            v531 = v598;
            sub_1ABE22DF0();
            sub_1ABA7BD00();
            v533 = v532;
            *v532 = v309;
            v532[1] = v310;
            v532[2] = v311;
            v532[3] = v312;

            v533[4] = v530;
            v533[5] = v531;
            *(v533 + 48) = 1;
            swift_willThrow();

            goto LABEL_393;
          }

          __break(1u);
LABEL_413:
          __break(1u);
          goto LABEL_414;
        }

        v282 = v101 == 0x74696D696CLL && v100 == 0xE500000000000000;
        if (v282 || (sub_1ABAA5A48() & 1) != 0)
        {

          sub_1ABA8F9FC(v283, v284, v285, v286, v287, v288, v289, v290, v543, v547, v551, v555, v559, v567, v571, v575);
          v599 = v299;
          v600 = v298;
          if (v97)
          {
            v300 = sub_1ABF24CA4();
            if (v300)
            {
LABEL_196:
              v94 = __OFSUB__(v300, 1);
              v301 = v300 - 1;
              if (v94)
              {
                goto LABEL_450;
              }

              if ((v98 & 0xC000000000000001) != 0)
              {
                v3 = v98;
                v101 = MEMORY[0x1AC5AA170](v301, v98);
              }

              else
              {
                if (v301 < 0)
                {
                  goto LABEL_451;
                }

                sub_1ABA83C64(v98 & 0xFFFFFFFFFFFFFF8);
                if (v87)
                {
LABEL_452:
                  __break(1u);
LABEL_453:
                  MEMORY[0x1AC5AA170](0, v14);
LABEL_378:

                  return;
                }

                v3 = v98;
                v101 = *(v98 + 8 * v302 + 32);
              }

              goto LABEL_362;
            }
          }

          else
          {
            v300 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v300)
            {
              goto LABEL_196;
            }
          }

          v3 = v98;
          sub_1ABA7DEEC(v300, v291, v292, v293, v294, v295, v296, v297, v543, v547, v551, v555, v559, v567, v571, v575, v579, v582, v585);
          swift_allocObject();
          sub_1ABAA3DC4();
LABEL_362:
          sub_1ABDEC684();
          v500 = *(a1 + 56);
          v94 = __OFADD__(v500, 1);
          v501 = v500 + 1;
          if (v94)
          {
            goto LABEL_449;
          }

          *(a1 + 56) = v501;
          v5 = &v597;
          sub_1ABE20CD8(v101, v496, v497, v498, v499);
          if (!v586)
          {

            v8 = v3;
            goto LABEL_365;
          }

          goto LABEL_407;
        }

        if (v101 == 0x736D61726170 && v100 == 0xE600000000000000)
        {
        }

        else
        {
          v329 = sub_1ABAA5A48();

          if ((v329 & 1) == 0)
          {
            sub_1ABE22DF0();
            sub_1ABA7BD00();
            sub_1ABAA3A78();
            *v537 = 13;
            v537[1] = v15;
            v537[2] = v14;
            v537[3] = v16;

            sub_1ABAA3284();
            *(v329 + 32) = v538 + 5;
            *(v329 + 40) = 0x80000001ABF926F0;
            *(v329 + 48) = 0;
LABEL_372:
            swift_willThrow();
            goto LABEL_393;
          }
        }

        if (sub_1ABAAB7C8(v98))
        {
          v3 = v98;
          v337 = sub_1ABB31024(v98);
          v9 = a1;
          if (!v337)
          {
            goto LABEL_463;
          }

          v101 = v337;
        }

        else
        {
          v3 = v98;
          sub_1ABA7DEEC(0, v330, v331, v332, v333, v334, v335, v336, v543, v547, v551, v555, v559, v567, v571, v575, v579, v582, v585);
          swift_allocObject();
          sub_1ABAA3DC4();
          v9 = a1;
        }

        sub_1ABDEC684();
        v342 = *(v9 + 56);
        v94 = __OFADD__(v342, 1);
        v343 = v342 + 1;
        if (v94)
        {
          __break(1u);
          goto LABEL_455;
        }

        v5 = v340;
        *(v9 + 56) = v343;
        sub_1ABE21098(v101, v338, v339, v340, v341);
        if (v586)
        {
LABEL_407:

LABEL_393:

          goto LABEL_386;
        }

        v93 = v559;
        goto LABEL_337;
      case 15:
        if (v31)
        {
          v92 = sub_1ABF24CA4();
        }

        else
        {
          v92 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v93 = v559;
        if (v92)
        {
          v94 = __OFSUB__(v92, 1);
          v95 = v92 - 1;
          if (v94)
          {
LABEL_415:
            __break(1u);
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
            goto LABEL_418;
          }

          if ((v8 & 0xC000000000000001) != 0)
          {
            v3 = v8;
            v5 = MEMORY[0x1AC5AA170](v95, v8);
          }

          else
          {
            if (v95 < 0)
            {
LABEL_419:
              __break(1u);
              goto LABEL_420;
            }

            sub_1ABA83C64(v8 & 0xFFFFFFFFFFFFFF8);
            if (v87)
            {
LABEL_422:
              __break(1u);
              goto LABEL_423;
            }

            v3 = v8;
            sub_1ABA842C4(v8 + 8 * v96);
          }
        }

        else
        {
          v3 = v8;
          sub_1ABA7DEEC(0, v18, v19, v20, v21, v22, v23, v24, v543, v547, v551, v555, v559, v567, v571, v575, v579, v582, v585);
          v5 = swift_allocObject();
          sub_1ABE1D3CC();
        }

        *(v5 + 83) = 1;

        goto LABEL_337;
      case 16:
        if (v31)
        {
          isUniquelyReferenced_nonNull_native = sub_1ABF24CA4();
          v195 = isUniquelyReferenced_nonNull_native;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v195 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v195)
          {
LABEL_113:
            v196 = v195 - 1;
            if (__OFSUB__(v195, 1))
            {
LABEL_414:
              __break(1u);
              goto LABEL_415;
            }

            if ((v8 & 0xC000000000000001) != 0)
            {
              v198 = v8;
              v5 = MEMORY[0x1AC5AA170](v196, v8);
            }

            else
            {
              if (v196 < 0)
              {
LABEL_420:
                __break(1u);
                goto LABEL_421;
              }

              sub_1ABA83C64(v8 & 0xFFFFFFFFFFFFFF8);
              if (v87)
              {
LABEL_421:
                __break(1u);
                goto LABEL_422;
              }

              v198 = v8;
              sub_1ABA842C4(v8 + 8 * v197);
            }

            goto LABEL_328;
          }
        }

        v198 = v8;
        sub_1ABA7DEEC(isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v23, v24, v543, v547, v551, v555, v559, v567, v571, v575, v579, v582, v585);
        v5 = swift_allocObject();
        sub_1ABE1D3CC();
LABEL_328:
        *(v5 + 83) = 0;

        if (v195)
        {
          v484 = v195 - 1;
          if (__OFSUB__(v195, 1))
          {
LABEL_418:
            __break(1u);
            goto LABEL_419;
          }

          v485 = v198;
          if ((v198 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x1AC5AA170](v484, v198);
            v93 = v559;
          }

          else
          {
            v93 = v559;
            if (v484 < 0)
            {
LABEL_423:
              __break(1u);
              goto LABEL_424;
            }

            sub_1ABA83C64(v198 & 0xFFFFFFFFFFFFFF8);
            if (v87)
            {
LABEL_424:
              __break(1u);
              goto LABEL_425;
            }

            sub_1ABA842C4(v198 + 8 * v486);
          }
        }

        else
        {
          sub_1ABA7DEEC(v476, v477, v478, v479, v480, v481, v482, v483, v543, v547, v551, v555, v559, v567, v571, v575, v579, v582, v585);
          v5 = swift_allocObject();
          sub_1ABE1D3CC();
          v93 = v566;
          v485 = v198;
        }

        v487 = *(v5 + 72);
        v94 = __OFADD__(v487, 1);
        v488 = v487 + 1;
        if (v94)
        {
LABEL_410:
          __break(1u);
          goto LABEL_411;
        }

        v3 = v485;
        *(v5 + 72) = v488;

LABEL_337:
        v8 = v3;
        goto LABEL_367;
      default:
        sub_1ABE22DF0();
        sub_1ABA7BD00();
        sub_1ABAA3A78();
        *v502 = v14;
        v502[1] = v15;
        v502[2] = v607;
        v502[3] = v16;

        sub_1ABAA3284();
        *(v3 + 32) = v503 + 6;
        *(v3 + 40) = 0x80000001ABF92610;
        *(v3 + 48) = 2;
        swift_willThrow();

        goto LABEL_386;
    }
  }
}

uint64_t sub_1ABE1FAB8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *v5;
  if (a1 == 8)
  {
    v10 = qword_1EB4D03F0;

    if (v10 != -1)
    {
      swift_once();
    }

    result = sub_1ABA94FF4(a2, a3, off_1EB4DA988);
    if (!v12)
    {
      __break(1u);
      return result;
    }

    a2 = result;
    v13 = v12;

    a3 = v13;
  }

  else
  {
  }

  type metadata accessor for Node();
  v14 = swift_allocObject();
  sub_1ABE1D3CC();
  type metadata accessor for KnosisQueryParam();
  v15 = sub_1ABF239C4();
  type metadata accessor for QueryNode();
  swift_allocObject();
  v16 = sub_1ABE73A74(a2, a3, v15);
  v17 = *(v14 + 16);
  *(v14 + 16) = v16;

  v18 = *(v16 + 16);
  v19 = *(v16 + 24);

  sub_1ABAD52F8();

  if (v25)
  {
    v21 = *(v14 + 32);
    v20 = *(v14 + 40);
    v22 = *(v14 + 64);
    *(v14 + 24) = v24;
    *(v14 + 32) = v25;
    *(v14 + 40) = v26;
    *(v14 + 56) = v27;

    *(v14 + 80) = a5 & 1;
  }

  else
  {
    v23 = swift_allocObject();
    sub_1ABE1D3CC();

    return v23;
  }

  return v14;
}

uint64_t sub_1ABE1FCB0(uint64_t a1)
{
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v45[4] = *v1;
  v9 = *(a1 + 16);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);

  sub_1ABE222D0(v10, v11, &v32);

  if (v2)
  {
    return result;
  }

  v13 = *(a1 + 16);
  v14 = v13[2] == 26217 && v13[3] == 0xE200000000000000;
  v15 = a1;
  if (v14 || (v16 = sub_1ABF25054(), v15 = a1, (v16 & 1) != 0))
  {
    if (*(v15 + 72) == 2)
    {
      v38 = v32;
      sub_1ABAFEEA0(&v38);
      v37 = v33;
      v17 = &v36;
      v18 = &v37;
LABEL_23:
      sub_1ABA925A4(v18, &unk_1EB4D33D0, &unk_1ABF3A8C0);
      *v17 = v35;
      return sub_1ABA925A4(v17, &qword_1EB4D33A8, &unk_1ABF627B0);
    }
  }

  v45[0] = v33;
  v19 = *(v33 + 16);
  if ((*(v15 + 82) & 1) != 0 || (*(v15 + 81) & 1) == 0 && *(v15 + 80) == 1)
  {
    v20 = v15;
    swift_beginAccess();
    v21 = v13[4];
    if (v21)
    {
      v15 = v20;
      if (v19 - 1 != *(v21 + 16))
      {
        goto LABEL_17;
      }

      sub_1ABE22404(v20);
    }

    v15 = v20;
  }

LABEL_17:
  v22 = *(v15 + 72);
  if (v19 != v22 && (v34 & 1) == 0)
  {
    v23 = v15;
    v44 = v32;
    sub_1ABAFEEA0(&v44);
    sub_1ABA925A4(v45, &unk_1EB4D33D0, &unk_1ABF3A8C0);
    v43 = v35;
    sub_1ABA925A4(&v43, &qword_1EB4D33A8, &unk_1ABF627B0);
LABEL_25:
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000023, 0x80000001ABF927C0);
    v25 = *(v23 + 16);
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);

    MEMORY[0x1AC5A9410](v26, v27);

    MEMORY[0x1AC5A9410](0x746365707865202CLL, 0xEB00000000206465);
    v28 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v28);

    MEMORY[0x1AC5A9410](0x20746F67202CLL, 0xE600000000000000);
    v31 = *(v23 + 72);
    v29 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v29);

    sub_1ABE22DF0();
    swift_allocError();
    *v30 = 0u;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 0;
    *(v30 + 40) = 0xE000000000000000;
    *(v30 + 48) = 1;
    return swift_willThrow();
  }

  if (v22 >= v19)
  {
    v42 = v32;
    sub_1ABAFEEA0(&v42);
    v17 = &v41;
    v18 = v45;
    goto LABEL_23;
  }

  v23 = v15;
  v24 = v34;
  v40 = v32;
  sub_1ABAFEEA0(&v40);
  sub_1ABA925A4(v45, &unk_1EB4D33D0, &unk_1ABF3A8C0);
  v39 = v35;
  result = sub_1ABA925A4(&v39, &qword_1EB4D33A8, &unk_1ABF627B0);
  if (v24)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1ABE20118(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 40);
  *(v2 + 40) = *(a2 + 16);
}

uint64_t sub_1ABE20178(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  v9 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = v9;
  }

  if (!v10)
  {

    *a1 = a2;
    return result;
  }

  v27 = *v2;
  v29 = v2[1];
  v30 = *(v2 + 4);
  v31 = *(v2 + 5);
  result = sub_1ABE21F48(v5);
  if (!v3)
  {
    v13 = result;
    v14 = v12;
    v15 = *(v5 + 16);
    swift_beginAccess();
    if (*(v15 + 32))
    {

      v16 = sub_1ABAE305C(v13, v14);
      swift_endAccess();

      if (v16)
      {
        if (*(v5 + 83) != 1)
        {
          sub_1ABF24AB4();

          *&v28 = 0x206D61726170;
          *(&v28 + 1) = 0xE600000000000000;

          sub_1ABAD219C(&qword_1EB4DA998, &qword_1ABF68580);
          v22 = sub_1ABF23C74();
          MEMORY[0x1AC5A9410](v22);

          MEMORY[0x1AC5A9410](0x67726120726F6620, 0xE900000000000020);
          MEMORY[0x1AC5A9410](v13, v14);

          MEMORY[0x1AC5A9410](0x7265706F206E6920, 0xED000020726F7461);
          v23 = *(v5 + 16);
          v25 = *(v23 + 16);
          v24 = *(v23 + 24);

          MEMORY[0x1AC5A9410](v25, v24);

          MEMORY[0x1AC5A9410](0x79646165726C6120, 0xEF73747369786520);
          sub_1ABE22DF0();
          swift_allocError();
          *v26 = 0u;
          *(v26 + 16) = 0u;
          *(v26 + 32) = v28;
          *(v26 + 48) = 1;
          swift_willThrow();
        }

        v17 = *(a2 + 16);
        swift_beginAccess();
        v18 = *(v16 + 24);
        *(v16 + 24) = v17;

        goto LABEL_13;
      }
    }

    else
    {
      swift_endAccess();
    }

    v20 = *(a2 + 16);
    type metadata accessor for KnosisQueryParam();
    swift_allocObject();
    v16 = sub_1ABE75D88(v20);

LABEL_13:
    v21 = *(v5 + 16);

    sub_1ABE71E8C(v13, v14, v16);
  }

  return result;
}

void sub_1ABE20494(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = v106;
  v8 = *v3;
  v107 = v3[1];
  v9 = v3[2];
  v10 = v3[5];
  v97 = v3[3];
  v98 = v3[4];
  v94 = *a3;
  v11 = sub_1ABE1D018(*(*(*a3 + 16) + 16), *(*(*a3 + 16) + 24), &unk_1F208F188);
  if (v12)
  {
    goto LABEL_11;
  }

  v13 = v11;
  v14 = *a2;
  v15 = sub_1ABE1D018(*(*(*a2 + 16) + 16), *(*(*a2 + 16) + 24), &unk_1F208F188);
  if ((v16 & 1) != 0 || *(v14 + 72) < 1)
  {
    goto LABEL_11;
  }

  v93 = v14;
  if (v15 < v13)
  {
    v100 = v8;
    v101 = v107;
    v17 = v9;
    v102 = v9;
    v103 = v97;
    v9 = v98;
    v104 = v98;
    v105 = v10;
    sub_1ABE20178(a3, v93);
    if (v96)
    {
      return;
    }

    v7 = *a3;
    v18 = *(*a3 + 72);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v21 = v8;
    v8 = 0;
    *(v7 + 9) = v20;
    v100 = v21;
    v101 = v107;
    v102 = v17;
    v103 = v97;
    v104 = v98;
    v105 = v10;
    sub_1ABDEC684();
    v26 = *(a1 + 56);
    v19 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v19)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    *(a1 + 56) = v27;
    sub_1ABE217C4(v7, v22, v23, v24, v25);

    v28 = *(v7 + 9);
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_11:
    v100 = v8;
    v101 = v107;
    v30 = v9;
    v31 = v97;
    v102 = v9;
    v103 = v97;
    v9 = v98;
    v104 = v98;
    v105 = v10;
    v32 = *(a1 + 16);
    v7[4] = *a1;
    v7[5] = v32;
    v33 = *(a1 + 48);
    v7[6] = *(a1 + 32);
    v7[7] = v33;
    v34 = sub_1ABDEC828();
    v35 = a1;
    v36 = v8;
    v37 = v94;
    sub_1ABE217C4(v94, v34, v38, v39, v40);
    if (!v96)
    {

      v41 = *(v94 + 72);
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        *(v94 + 72) = v42;
        v100 = v36;
        v101 = v107;
        v102 = v30;
        v103 = v97;
        v104 = v98;
        v105 = v10;
        sub_1ABDEC684();
        v47 = *(v35 + 56);
        v19 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (!v19)
        {
          *(v35 + 56) = v48;
          sub_1ABE217C4(v94, v43, v44, v45, v46);

          v49 = *(v94 + 72);
          v19 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (!v19)
          {
            *(v94 + 72) = v50;
LABEL_19:

            return;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

LABEL_15:

    return;
  }

  if (v13 == v15)
  {
    v100 = v8;
    v101 = v107;
    v102 = v9;
    v103 = v97;
    v104 = v98;
    v105 = v10;
    sub_1ABDEC684();
    v55 = *(a1 + 56);
    v19 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v19)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    *(a1 + 56) = v56;
    v7 = v14;
    sub_1ABE217C4(v14, v51, v52, v53, v54);
    if (!v96)
    {

      v62 = *(v14 + 72);
      v19 = __OFADD__(v62, 1);
      v29 = v62 + 1;
      if (!v19)
      {
LABEL_30:
        *(v7 + 9) = v29;
        goto LABEL_19;
      }

      goto LABEL_57;
    }

    goto LABEL_15;
  }

  v100 = v8;
  v101 = v107;
  v102 = v9;
  v103 = v97;
  v104 = v98;
  v105 = v10;
  v57 = sub_1ABE21B40(v14);
  if (v96)
  {
    return;
  }

  v90 = v10;
  v91 = v57;
  v89 = a2;
  v92 = v58;
  v35 = v8;
  v59 = *(v14 + 16);
  swift_beginAccess();
  if (!*(v59 + 32) || (, v60 = sub_1ABAE305C(v91, v92), , !v60))
  {
LABEL_34:

    sub_1ABE22DF0();
    swift_allocError();
    *v70 = 0u;
    *(v70 + 16) = 0u;
    *(v70 + 32) = 0xD00000000000001FLL;
    *(v70 + 40) = 0x80000001ABF92810;
    *(v70 + 48) = 0;
    swift_willThrow();
    return;
  }

  swift_beginAccess();
  if (*(v60 + 24))
  {
    v61 = v107;
    v100 = v35;
    v101 = v107;
    v102 = v9;
    v103 = v97;
    v104 = v98;
    v105 = v90;

    v99[0] = sub_1ABE21D78(v95);
    v100 = v35;
    v101 = v61;
    v102 = v9;
    v103 = v97;
    v104 = v98;
    v105 = v90;
    v79 = sub_1ABE20494(a1, v99, a3);
    v80 = *(v14 + 16);
    swift_beginAccess();
    if (*(v80 + 32))
    {
      v81 = *(v79 + 16);
      type metadata accessor for KnosisQueryParam();
      swift_allocObject();
      v82 = sub_1ABE75D88(v81);

      sub_1ABE22E44(v82, v91, v92);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    goto LABEL_19;
  }

  swift_beginAccess();
  v10 = v107;
  if (!*(*(v60 + 16) + 16))
  {

    goto LABEL_34;
  }

  v100 = v35;
  v101 = v107;
  v102 = v9;
  v103 = v97;
  v104 = v98;
  v105 = v90;
  v63 = *(a1 + 16);
  v106[0] = *a1;
  v64 = *(a1 + 32);
  v65 = *(a1 + 48);
  v106[1] = v63;
  v106[2] = v64;
  v106[3] = v65;
  v66 = sub_1ABDEC828();
  sub_1ABE217C4(v94, v66, v67, v68, v69);

  v71 = *(v94 + 72);
  v19 = __OFADD__(v71, 1);
  v72 = v71 + 1;
  if (v19)
  {
    goto LABEL_58;
  }

  *(v94 + 72) = v72;
  v100 = v35;
  v101 = v10;
  v102 = v9;
  v103 = v97;
  v104 = v98;
  v105 = v90;
  sub_1ABDEC684();
  v77 = *(a1 + 56);
  v19 = __OFADD__(v77, 1);
  v78 = v77 + 1;
  if (v19)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  *(a1 + 56) = v78;
  sub_1ABE217C4(v94, v73, v74, v75, v76);

  v83 = *(v94 + 72);
  v19 = __OFADD__(v83, 1);
  v84 = v83 + 1;
  if (v19)
  {
    goto LABEL_60;
  }

  v37 = 0;
  *(v94 + 72) = v84;
  v31 = v14;
  v85 = *(v14 + 16);
  swift_beginAccess();
  if (*(v85 + 32))
  {

    sub_1ABC25B28(v91, v92);
    swift_endAccess();

    goto LABEL_48;
  }

LABEL_47:
  swift_endAccess();

LABEL_48:
  v86 = *(v31 + 72);
  v19 = __OFSUB__(v86, 1);
  v87 = v86 - 1;
  if (v19)
  {
LABEL_61:
    __break(1u);
    return;
  }

  *(v31 + 72) = v87;
  v100 = v35;
  v101 = v10;
  v102 = v9;
  v103 = v97;
  v104 = v98;
  v105 = v90;
  sub_1ABE20178(v89, v94);

  if (!v37)
  {
    v7 = *v89;
    v88 = *(*v89 + 72);
    v19 = __OFADD__(v88, 1);
    v29 = v88 + 1;
    if (!v19)
    {
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_53;
  }
}

unsigned __int8 *sub_1ABE20CD8(unsigned __int8 *result, unsigned __int8 a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = HIBYTE(a4) & 0xF;
  v10 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_63;
  }

  v12 = result;
  if ((a4 & 0x1000000000000000) != 0)
  {

    v14 = sub_1ABB81A68(a3, a4, 10);
    v37 = v36;

    if (v37)
    {
      goto LABEL_63;
    }

LABEL_65:
    *(*(v12 + 2) + 48) = v14;
    return result;
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      result = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1ABF24B74();
    }

    v13 = *result;
    if (v13 == 43)
    {
      if (v10 >= 1)
      {
        v9 = v10 - 1;
        if (v10 != 1)
        {
          v14 = 0;
          if (result)
          {
            v21 = result + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                goto LABEL_61;
              }

              v23 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                goto LABEL_61;
              }

              v14 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_61;
              }

              ++v21;
              if (!--v9)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v13 != 45)
    {
      if (v10)
      {
        v14 = 0;
        if (result)
        {
          while (1)
          {
            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_61;
            }

            v28 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_61;
            }

            v14 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v10)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v14 = 0;
      LOBYTE(v9) = 1;
LABEL_62:
      v40 = v9;
      if (v9)
      {
LABEL_63:
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_1ABF24AB4();

        v38 = 0xD000000000000013;
        v39 = 0x80000001ABF92710;
        MEMORY[0x1AC5A9410](a3, a4);
        v32 = v38;
        v33 = v39;
        sub_1ABE22DF0();
        swift_allocError();
        v35 = v34;
        *v34 = a2;
        v34[1] = a3;
        v34[2] = a4;
        v34[3] = a5;

        v35[4] = v32;
        v35[5] = v33;
        *(v35 + 48) = 1;
        return swift_willThrow();
      }

      goto LABEL_65;
    }

    if (v10 >= 1)
    {
      v9 = v10 - 1;
      if (v10 != 1)
      {
        v14 = 0;
        if (result)
        {
          v15 = result + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              goto LABEL_61;
            }

            v17 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_61;
            }

            v14 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              goto LABEL_61;
            }

            ++v15;
            if (!--v9)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v9) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v38 = a3;
  v39 = a4 & 0xFFFFFFFFFFFFFFLL;
  if (a3 != 43)
  {
    if (a3 != 45)
    {
      if (v9)
      {
        v14 = 0;
        v29 = &v38;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          v29 = (v29 + 1);
          if (!--v9)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v9)
    {
      if (--v9)
      {
        v14 = 0;
        v18 = &v38 + 1;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v20 - v19;
          if (__OFSUB__(v20, v19))
          {
            break;
          }

          ++v18;
          if (!--v9)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_68;
  }

  if (v9)
  {
    if (--v9)
    {
      v14 = 0;
      v24 = &v38 + 1;
      while (1)
      {
        v25 = *v24 - 48;
        if (v25 > 9)
        {
          break;
        }

        v26 = 10 * v14;
        if ((v14 * 10) >> 64 != (10 * v14) >> 63)
        {
          break;
        }

        v14 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        ++v24;
        if (!--v9)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_1ABE21098(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = sub_1ABF21944();
  v7 = sub_1ABA7BB64(v84);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v14 = v13 - v12;
  v74 = a3;
  *&v88 = a3;
  *(&v88 + 1) = a4;
  sub_1ABAE28EC();

  v15 = sub_1ABF248E4();
  v76 = a4;

  v16 = *(v15 + 16);
  if (!v16)
  {

    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v91 = MEMORY[0x1E69E7CC0];
  sub_1ABADDEEC();
  v17 = 0;
  v18 = v91;
  v78 = v15;
  v79 = v15 + 32;
  v82 = (v9 + 8);
  v77 = v16;
  while (v17 < *(v15 + 16))
  {
    v80 = v17;
    v19 = v79 + 32 * v17;
    v88 = *v19;
    v89 = *(v19 + 16);
    v90 = *(v19 + 24);
    sub_1ABBA2890();

    v20 = sub_1ABF248E4();
    v21 = *(v20 + 16);
    if (v21)
    {
      v87 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4();
      v22 = v87;
      v23 = (v20 + 56);
      do
      {
        v88 = *(v23 - 3);
        v89 = *(v23 - 1);
        v90 = *v23;

        sub_1ABF21914();
        v24 = sub_1ABF248A4();
        v26 = v25;
        (*v82)(v14, v84);

        v28 = *(v87 + 16);
        v27 = *(v87 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1ABA7BBEC(v27);
          sub_1ABADDBD4();
        }

        *(v87 + 16) = v28 + 1;
        v29 = v87 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v23 += 4;
        --v21;
      }

      while (v21);

      v16 = v77;
      v15 = v78;
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    v91 = v18;
    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1ABA7BBEC(v30);
      sub_1ABADDEEC();
      v18 = v91;
    }

    v17 = v80 + 1;
    *(v18 + 16) = v31 + 1;
    *(v18 + 8 * v31 + 32) = v22;
    if (v80 + 1 == v16)
    {

LABEL_16:
      v32 = 0;
      v33 = *(v18 + 16);
      v34 = MEMORY[0x1E69E7CC0];
      while (v33 != v32)
      {
        if (v32 >= *(v18 + 16))
        {
          goto LABEL_44;
        }

        v35 = *(v18 + 8 * v32 + 32);
        v36 = *(v35 + 16);

        if (v36 != 2)
        {

          sub_1ABF24AB4();

          strcpy(&v88, "params pair ");
          BYTE13(v88) = 0;
          HIWORD(v88) = -5120;
          v65 = MEMORY[0x1AC5A9750](v35, MEMORY[0x1E69E6158]);
          MEMORY[0x1AC5A9410](v65);

          MEMORY[0x1AC5A9410](0xD000000000000017, 0x80000001ABF92890);
          v66 = v88;
          sub_1ABE22DF0();
          sub_1ABA7BD00();
          v68 = v67;
          *v67 = a2;
          v67[1] = v74;
          v67[2] = v76;
          v67[3] = a5;

          *(v68 + 2) = v66;
          *(v68 + 48) = 0;
          swift_willThrow();
        }

        v91 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = *(v34 + 16);
          sub_1ABADDEEC();
          v34 = v91;
        }

        v39 = *(v34 + 16);
        v38 = *(v34 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1ABA7BBEC(v38);
          sub_1ABADDEEC();
          v34 = v91;
        }

        *(v34 + 16) = v39 + 1;
        *(v34 + 8 * v39 + 32) = v35;
        ++v32;
      }

      v40 = 0;
      v41 = MEMORY[0x1E69E7CC8];
      v81 = v34;
      v83 = *(v34 + 16);
      while (2)
      {
        if (v83 == v40)
        {

          if (*(v41 + 16))
          {
            v70 = *(a1 + 16);
            swift_beginAccess();
            v71 = *(v70 + 72);
            *(v70 + 72) = v41;
          }
        }

        if (v40 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        v42 = *(v34 + 8 * v40 + 32);
        v43 = *(v42 + 16);
        if (!v43)
        {
          goto LABEL_46;
        }

        if (v43 == 1)
        {
          goto LABEL_47;
        }

        v85 = v40;
        v45 = *(v42 + 48);
        v44 = *(v42 + 56);
        v88 = *(v42 + 32);

        v46 = sub_1ABF23EB4();
        v48 = v47;
        *(&v88 + 1) = v44;
        v49 = sub_1ABF23EB4();
        v86 = v50;
        swift_isUniquelyReferenced_nonNull_native();
        *&v88 = v41;
        v51 = sub_1ABA94FC8(v46, v48);
        if (__OFADD__(*(v41 + 16), (v52 & 1) == 0))
        {
          goto LABEL_48;
        }

        v53 = v51;
        v54 = v52;
        sub_1ABAD219C(&unk_1EB4D33F0, &qword_1ABF35190);
        if (sub_1ABF24C64())
        {
          v55 = sub_1ABA94FC8(v46, v48);
          v34 = v81;
          if ((v54 & 1) != (v56 & 1))
          {
            goto LABEL_50;
          }

          v53 = v55;
          if ((v54 & 1) == 0)
          {
LABEL_34:
            v41 = v88;
            sub_1ABA7F258(v88 + 8 * (v53 >> 6));
            v58 = (v57 + 16 * v53);
            *v58 = v46;
            v58[1] = v48;
            v59 = (*(v41 + 56) + 16 * v53);
            *v59 = v49;
            v59[1] = v86;

            v60 = *(v41 + 16);
            v61 = __OFADD__(v60, 1);
            v62 = v60 + 1;
            if (v61)
            {
              goto LABEL_49;
            }

            *(v41 + 16) = v62;
            goto LABEL_38;
          }
        }

        else
        {
          v34 = v81;
          if ((v54 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        v41 = v88;
        v63 = (*(v88 + 56) + 16 * v53);
        v64 = v63[1];
        *v63 = v49;
        v63[1] = v86;

LABEL_38:
        v40 = v85 + 1;
        continue;
      }
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
  __break(1u);
LABEL_50:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE217C4(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 5);
  v31 = *v5;
  v33 = v5[1];
  v34 = *(v5 + 4);
  result = sub_1ABE21F48(a1);
  if (!v6)
  {
    v15 = result;
    v16 = v14;
    v17 = *(a1 + 16);
    swift_beginAccess();
    if (*(v17 + 32))
    {
      v30 = a5;

      v18 = sub_1ABAE305C(v15, v16);
      swift_endAccess();

      if (v18)
      {
        if (*(a1 + 83) != 1)
        {
          sub_1ABF24AB4();

          *&v32 = 0x206D61726170;
          *(&v32 + 1) = 0xE600000000000000;

          sub_1ABAD219C(&qword_1EB4DA998, &qword_1ABF68580);
          v24 = sub_1ABF23C74();
          MEMORY[0x1AC5A9410](v24);

          MEMORY[0x1AC5A9410](0x67726120726F6620, 0xE900000000000020);
          MEMORY[0x1AC5A9410](v15, v16);

          MEMORY[0x1AC5A9410](0x7265706F206E6920, 0xED000020726F7461);
          v25 = *(a1 + 16);
          v26 = *(v25 + 16);
          v27 = *(v25 + 24);

          MEMORY[0x1AC5A9410](v26, v27);

          MEMORY[0x1AC5A9410](0x79646165726C6120, 0xEF73747369786520);
          sub_1ABE22DF0();
          swift_allocError();
          v29 = v28;
          *v28 = a2;
          v28[1] = a3;
          v28[2] = a4;
          v28[3] = v30;

          *(v29 + 2) = v32;
          *(v29 + 48) = 1;
          swift_willThrow();
        }

        swift_beginAccess();

        sub_1ABB4DC20();
        v19 = *(*(v18 + 16) + 16);
        sub_1ABB4E024(v19);
        v20 = *(v18 + 16);
        *(v20 + 16) = v19 + 1;
        v21 = v20 + 16 * v19;
        *(v21 + 32) = a3;
        *(v21 + 40) = a4;
        *(v18 + 16) = v20;
        swift_endAccess();
        goto LABEL_9;
      }
    }

    else
    {
      swift_endAccess();
    }

    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1ABF34740;
    *(v22 + 32) = a3;
    *(v22 + 40) = a4;
    type metadata accessor for KnosisQueryParam();
    swift_allocObject();
    v18 = sub_1ABE75D28(v22);

    if (a2 == 3)
    {
      *(v18 + 32) = 3;
    }

LABEL_9:
    v23 = *(a1 + 16);

    sub_1ABE71E8C(v15, v16, v18);
  }

  return result;
}

uint64_t sub_1ABE21B40(uint64_t a1)
{
  v22 = *v1;
  v23 = v1[1];
  v24 = *(v1 + 4);
  v25 = *(v1 + 5);
  v4 = *(a1 + 16);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);

  sub_1ABE222D0(v5, v6, &v26);

  if (!v2)
  {
    v7 = v28;
    v31 = v26;
    sub_1ABAFEEA0(&v31);
    v32 = v27;
    sub_1ABA925A4(&v32, &unk_1EB4D33D0, &unk_1ABF3A8C0);
    v30 = v29;
    sub_1ABA925A4(&v30, &qword_1EB4D33A8, &unk_1ABF627B0);
    if ((v7 & 1) == 0)
    {
      sub_1ABF24AB4();

      v17 = *(a1 + 16);
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);

      MEMORY[0x1AC5A9410](v19, v18);

      v5 = 0x80000001ABF92830;
      v16 = 0xD00000000000002ALL;
      goto LABEL_8;
    }

    if (*(a1 + 72) < 1)
    {
      goto LABEL_6;
    }

    v8 = *(a1 + 16);
    swift_beginAccess();
    if (!*(v8 + 32) || (v9 = *(v8 + 32), , sub_1ABD23704(), v5 = v10, v12 = v11, , !v12))
    {
LABEL_6:
      sub_1ABF24AB4();

      v13 = *(a1 + 16);
      v15 = *(v13 + 16);
      v14 = *(v13 + 24);

      MEMORY[0x1AC5A9410](v15, v14);

      v16 = 0xD000000000000024;
      v5 = 0x80000001ABF92860;
LABEL_8:
      sub_1ABE22DF0();
      swift_allocError();
      *v20 = 0u;
      *(v20 + 16) = 0u;
      *(v20 + 32) = v16;
      *(v20 + 40) = v5;
      *(v20 + 48) = 1;
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t sub_1ABE21D78(void *a1)
{
  v3 = *v1;
  v4 = a1[2];
  v5 = a1[3];

  sub_1ABAD52F8();

  if (v17)
  {
    type metadata accessor for Node();
    v6 = swift_allocObject();
    sub_1ABE1D3CC();
    v7 = *(v6 + 16);
    *(v6 + 16) = a1;

    swift_beginAccess();
    v8 = a1[4];
    if (v8)
    {
      v8 = *(v8 + 16);
    }

    *(v6 + 72) = v8;
    v10 = *(v6 + 32);
    v9 = *(v6 + 40);
    v11 = *(v6 + 64);
    *(v6 + 24) = v16;
    *(v6 + 32) = v17;
    *(v6 + 40) = v18;
    *(v6 + 56) = v19;
  }

  else
  {
    sub_1ABF24AB4();

    v13 = a1[2];
    v12 = a1[3];

    MEMORY[0x1AC5A9410](v13, v12);

    MEMORY[0x1AC5A9410](0x20746E73656F6420, 0xED00007473697865);
    v6 = 0x726F74617265706FLL;
    sub_1ABE22DF0();
    swift_allocError();
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0x726F74617265706FLL;
    *(v14 + 40) = 0xE900000000000020;
    *(v14 + 48) = 1;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1ABE21F48(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v32[0] = *v1;
  v32[1] = v6;
  v33 = v4;
  v34 = v5;
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  v10 = v32;
  sub_1ABE222D0(v8, v9, &v35);

  if (v2)
  {
    return v10;
  }

  v12 = v36;
  v45 = v36;
  v13 = *(v36 + 16);
  v14 = *(a1 + 72);
  if (v14 >= v13)
  {
    if ((v37 & 1) == 0)
    {
      *&v32[0] = 0;
      *(&v32[0] + 1) = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000023, 0x80000001ABF927C0);
      v18 = *(a1 + 16);
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);

      MEMORY[0x1AC5A9410](v20, v19);

      MEMORY[0x1AC5A9410](0x746365707865202CLL, 0xEB00000000206465);
      v31 = *(v12 + 16);
      v21 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v21);
      v44 = v35;
      sub_1ABAFEEA0(&v44);
      sub_1ABA925A4(&v45, &unk_1EB4D33D0, &unk_1ABF3A8C0);
      v43 = v38;
      sub_1ABA925A4(&v43, &qword_1EB4D33A8, &unk_1ABF627B0);

      result = MEMORY[0x1AC5A9410](0x20746F67202CLL, 0xE600000000000000);
      if (!__OFADD__(*(a1 + 72), 1))
      {
        v22 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v22);

        v23 = *(&v32[0] + 1);
        v10 = *&v32[0];
        sub_1ABE22DF0();
        swift_allocError();
        *v24 = 0u;
        *(v24 + 16) = 0u;
        *(v24 + 32) = v10;
        *(v24 + 40) = v23;
        *(v24 + 48) = 1;
        swift_willThrow();
        return v10;
      }

      goto LABEL_15;
    }
  }

  else if ((v37 & 1) == 0)
  {
    goto LABEL_7;
  }

  v15 = v14 - (v13 - 1);
  if (v14 < (v13 - 1))
  {
LABEL_7:
    if (v14 < v13)
    {
      v16 = v36 + 16 * v14;
      v10 = *(v16 + 32);
      v17 = *(v16 + 40);
      v40 = v35;

      sub_1ABAFEEA0(&v40);
      sub_1ABA925A4(&v45, &unk_1EB4D33D0, &unk_1ABF3A8C0);
      v39 = v38;
      sub_1ABA925A4(&v39, &qword_1EB4D33A8, &unk_1ABF627B0);
      return v10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13)
  {
    v25 = v36 + 16 * (v13 - 1);
    v26 = *(v25 + 32);
    v27 = *(v25 + 40);
    *&v32[0] = v15;

    v28 = sub_1ABF24FF4();
    v30 = v29;
    *&v32[0] = v26;
    *(&v32[0] + 1) = v27;

    MEMORY[0x1AC5A9410](v28, v30);
    v10 = *&v32[0];
    v42 = v35;
    sub_1ABAFEEA0(&v42);
    sub_1ABA925A4(&v45, &unk_1EB4D33D0, &unk_1ABF3A8C0);
    v41 = v38;
    sub_1ABA925A4(&v41, &qword_1EB4D33A8, &unk_1ABF627B0);

    return v10;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABE222D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  if (*(v7 + 16) && (v8 = sub_1ABA94FC8(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(v7 + 56) + 48 * v8;
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    v15 = *(v10 + 40);
    *a3 = *v10;
    *(a3 + 8) = v11;
    *(a3 + 16) = v12;
    *(a3 + 24) = v13;
    *(a3 + 32) = v14;
    *(a3 + 40) = v15;
  }

  else
  {
    sub_1ABF24AB4();

    MEMORY[0x1AC5A9410](a1, a2);
    sub_1ABE22DF0();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0xD000000000000011;
    *(v17 + 40) = 0x80000001ABF927F0;
    *(v17 + 48) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1ABE22404(uint64_t a1)
{
  v2 = sub_1ABF239C4();
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  v5 = v2;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = v4 - 1;
  v81 = a1;
  while (1)
  {
    if (v8 >= v4)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v11 = *(v3 + v6 + 32);
    v10 = *(v3 + v6 + 40);
    if ((v7 & 1) == 0)
    {
      v12 = *(a1 + 64);
      if (!v12)
      {
        break;
      }

      if (v11 != *(a1 + 56) || v12 != v10)
      {
        v14 = *(v3 + v6 + 32);
        v15 = *(v3 + v6 + 40);
        if ((sub_1ABF25054() & 1) == 0)
        {
          break;
        }
      }
    }

    if (v8 >= v4 - 1)
    {
      if (v9 == v8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v3 + v6 + 56);
      v77 = v6;
      v78 = *(v3 + v6 + 48);

      swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_1ABA94FC8(v11, v10);
      if (__OFADD__(v5[2], (v18 & 1) == 0))
      {
        goto LABEL_62;
      }

      v19 = v17;
      v20 = v18;
      sub_1ABAD219C(&unk_1EB4D33F0, &qword_1ABF35190);
      if (sub_1ABF24C64())
      {
        v21 = sub_1ABA94FC8(v11, v10);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_69;
        }

        v19 = v21;
      }

      if (v20)
      {

        v23 = (v5[7] + 16 * v19);
        v24 = v23[1];
        *v23 = v78;
        v23[1] = v16;
      }

      else
      {
        v5[(v19 >> 6) + 8] |= 1 << v19;
        v25 = (v5[6] + 16 * v19);
        *v25 = v11;
        v25[1] = v10;
        v26 = (v5[7] + 16 * v19);
        *v26 = v78;
        v26[1] = v16;
        v27 = v5[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_64;
        }

        v5[2] = v29;
      }

      a1 = v81;
      v6 = v77;
      if (v9 == v8)
      {
        goto LABEL_28;
      }
    }

    v7 = 1;
LABEL_26:
    ++v8;
    v3 = *(a1 + 40);
    v4 = *(v3 + 16);
    v6 += 16;
  }

  if (v9 != v8)
  {
    v7 = 0;
    goto LABEL_26;
  }

  if (!v5[2])
  {
LABEL_59:
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000023, 0x80000001ABF927C0);
    v71 = *(a1 + 16);
    v72 = *(v71 + 16);
    v73 = *(v71 + 24);

    MEMORY[0x1AC5A9410](v72, v73);

    MEMORY[0x1AC5A9410](0x746365707865202CLL, 0xEB00000000206465);
    v83 = *(*(a1 + 40) + 16);
    v74 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v74);

    MEMORY[0x1AC5A9410](0x20746F6720, 0xE500000000000000);
    v84 = *(a1 + 72);
    v75 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v75);

    sub_1ABE22DF0();
    swift_allocError();
    *v76 = 0u;
    *(v76 + 16) = 0u;
    *(v76 + 32) = 0;
    *(v76 + 40) = 0xE000000000000000;
    *(v76 + 48) = 1;
    swift_willThrow();
  }

LABEL_28:
  v30 = *(*(a1 + 40) + 16);
  v31 = v30 - 2;
  v32 = 16 * v30;
  if (((v30 - 2) & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v33 = *(a1 + 40);
      if (v31 >= *(v33 + 16))
      {
        break;
      }

      v34 = (v33 + v32);
      v36 = *v34;
      v35 = v34[1];
      v37 = *(a1 + 16);
      swift_beginAccess();
      v38 = *(v37 + 32);
      if (!v38 || !*(v38 + 16))
      {

LABEL_58:
        swift_endAccess();

        goto LABEL_59;
      }

      v39 = sub_1ABA94FC8(v36, v35);
      if ((v40 & 1) == 0)
      {
        goto LABEL_58;
      }

      v41 = *(*(v38 + 56) + 8 * v39);
      swift_endAccess();

      if (v5[2] && (v42 = sub_1ABA94FC8(v36, v35), (v43 & 1) != 0))
      {
        v44 = (v5[7] + 16 * v42);
        v45 = v44[1];
        v79 = *v44;
        v46 = *(v81 + 16);
        swift_beginAccess();
        v80 = v45;
        if (*(v46 + 32))
        {

          v47 = sub_1ABA94FC8(v36, v35);
          if (v48)
          {
            v49 = v47;
            v50 = *(v46 + 32);
            swift_isUniquelyReferenced_nonNull_native();
            v82 = *(v46 + 32);
            *(v46 + 32) = 0x8000000000000000;
            v51 = v82[3];
            sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
            sub_1ABF24C64();
            v52 = *(v82[6] + 16 * v49 + 8);

            v53 = *(v82[7] + 8 * v49);

            type metadata accessor for KnosisQueryParam();
            sub_1ABF24C84();
            *(v46 + 32) = v82;
          }

          swift_endAccess();
        }

        else
        {
          swift_endAccess();
        }

        v54 = *(v81 + 16);
        swift_beginAccess();
        if (*(v54 + 32))
        {

          swift_isUniquelyReferenced_nonNull_native();
          v55 = *(v54 + 32);
          *(v54 + 32) = 0x8000000000000000;
          v56 = sub_1ABA94FC8(v79, v80);
          if (__OFADD__(v55[2], (v57 & 1) == 0))
          {
            goto LABEL_65;
          }

          v58 = v56;
          v59 = v57;
          sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
          if (sub_1ABF24C64())
          {
            v60 = v80;
            v61 = sub_1ABA94FC8(v79, v80);
            if ((v59 & 1) != (v62 & 1))
            {
              goto LABEL_69;
            }

            v58 = v61;
          }

          else
          {
            v60 = v80;
          }

          if (v59)
          {
            v63 = v55[7];
            v64 = *(v63 + 8 * v58);
            *(v63 + 8 * v58) = v41;
          }

          else
          {
            v55[(v58 >> 6) + 8] |= 1 << v58;
            v65 = (v55[6] + 16 * v58);
            *v65 = v79;
            v65[1] = v60;
            *(v55[7] + 8 * v58) = v41;
            v66 = v55[2];
            v28 = __OFADD__(v66, 1);
            v67 = v66 + 1;
            if (v28)
            {
              goto LABEL_67;
            }

            v55[2] = v67;
          }

          *(v54 + 32) = v55;
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
        }
      }

      else
      {
      }

      --v31;
      v32 -= 16;
      a1 = v81;
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_55:
  *(a1 + 81) = 1;
  v68 = *(a1 + 72);
  v28 = __OFADD__(v68, 1);
  v69 = v68 + 1;
  if (v28)
  {
    goto LABEL_68;
  }

  *(a1 + 72) = v69;
}

uint64_t sub_1ABE22BC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABE22C04(uint64_t result, int a2, int a3)
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
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1ABE22C6C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE22D48()
{
  result = qword_1EB4DA990;
  if (!qword_1EB4DA990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA990);
  }

  return result;
}

unint64_t sub_1ABE22DF0()
{
  result = qword_1EB4CF6D8;
  if (!qword_1EB4CF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF6D8);
  }

  return result;
}

uint64_t sub_1ABE22E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  v8 = sub_1ABA94FC8(a2, a3);
  if (__OFADD__(*(v16 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
  if (sub_1ABF24C64())
  {
    v12 = sub_1ABA94FC8(a2, a3);
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v11)
  {
    v14 = *(v16 + 56);
    result = *(v14 + 8 * v10);
    *(v14 + 8 * v10) = a1;
  }

  else
  {
    sub_1ABAFF5B0(v10, a2, a3, a1, v16);

    result = 0;
  }

  *v3 = v16;
  return result;
}

uint64_t static ParserV2.parse(kgq:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v4 = sub_1ABE272C0(0xD000000000000014, 0x80000001ABF928B0, 0);
  if (v1)
  {
  }

  else
  {
    v5 = v4;
    if (v4)
    {
      sub_1ABA805B4();
      v6 = sub_1ABF23BD4();
      sub_1ABA805B4();
      v7 = sub_1ABF23D44();
      v8 = sub_1ABF23BD4();
      v9 = [v5 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{v7, v8}];

      sub_1ABF23C04();
      goto LABEL_6;
    }
  }

LABEL_6:
  v14[0] = 0x5941444F54;
  v14[1] = 0xE500000000000000;
  __dst[15] = 5721934;
  __dst[16] = 0xE300000000000000;
  sub_1ABAE28EC();
  v10 = sub_1ABF248B4();
  v12 = v11;

  sub_1ABDED8E4(v10, v12, __src);
  memcpy(__dst, __src, 0x41uLL);
  __dst[9] = MEMORY[0x1E69E7CC0];
  memset(&__dst[10], 0, 24);
  LOBYTE(__dst[13]) = -4;
  __dst[14] = 0;
  sub_1ABE2739C(__src, v14);
  sub_1ABE2319C(a1);
  memcpy(v14, __dst, sizeof(v14));
  sub_1ABE273F8(v14);
  return sub_1ABE27428(__src);
}

uint64_t sub_1ABE2319C@<X0>(uint64_t *a1@<X8>)
{
  v76 = a1;
  v86 = MEMORY[0x1E69E7CD0];
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1ABDEE424(&v81);
    if (v84 > 0xFBu)
    {
      break;
    }

    sub_1ABDEFF58(v81, v82, v83, v84);
    sub_1ABE234C0(&v81);
    if (v1)
    {
    }

    v4 = v81;
    v3 = v82;
    v5 = v83;
    v6 = v84;
    if (sub_1ABB139C4(v81, v86))
    {

      sub_1ABD75F08(v3, v5, v6);

      sub_1ABE27554();
      sub_1ABA7BD00();
      *v73 = xmmword_1ABF47830;
      *(v73 + 16) = 2;
      return swift_willThrow();
    }

    sub_1ABB19A34(&v81, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = *(v2 + 16);
      sub_1ABA7BEF0();
      sub_1ABADC7E8();
      v2 = v69;
    }

    v8 = *(v2 + 16);
    v7 = *(v2 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1ABA7BBEC(v7);
      sub_1ABADC7E8();
      v2 = v70;
    }

    *(v2 + 16) = v8 + 1;
    v9 = v2 + 32 * v8;
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
    *(v9 + 48) = v5;
    *(v9 + 56) = v6;
    sub_1ABDEE424(v85);
    sub_1ABE276A8();
    if (!v11 & v10)
    {
      sub_1ABA7AE34();
      sub_1ABA98080();
      sub_1ABA925A4(v12, &qword_1EB4DA9A8, &unk_1ABF68720);
LABEL_13:
      sub_1ABDEE424(v85);
      sub_1ABE276A8();
      if (!v11 & v10)
      {
        sub_1ABA7AE34();
        sub_1ABA98080();
        sub_1ABA925A4(v34, &qword_1EB4DA9A8, &unk_1ABF68720);
      }

      else
      {
        sub_1ABA7AE34();
        v77 = 7;
        v78 = 0;
        v79 = 0;
        LOBYTE(v80) = -32;
        v35 = sub_1ABAA4B5C();
        sub_1ABDEFF6C(v35, v36, v37, v38);
        v39 = sub_1ABDEF364(&v81, &v77);
        v40 = sub_1ABB344F0(v77, v78, v79, v80);
        v48 = sub_1ABAA1614(v40, v41, v42, v43, v44, v45, v46, v47, v75, v76, v77, v78, v79, v80, v81);
        sub_1ABB344F0(v48, v49, v50, v51);
        v52 = sub_1ABAA4B5C();
        sub_1ABDEFF58(v52, v53, v54, v55);
        if (v39)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_1ABA7AE34();
      v77 = 8;
      v78 = 0;
      v79 = 0;
      LOBYTE(v80) = -32;
      v13 = sub_1ABAA4B5C();
      sub_1ABDEFF6C(v13, v14, v15, v16);
      v17 = sub_1ABDEF364(&v81, &v77);
      v18 = sub_1ABB344F0(v77, v78, v79, v80);
      v26 = sub_1ABAA1614(v18, v19, v20, v21, v22, v23, v24, v25, v75, v76, v77, v78, v79, v80, v81);
      sub_1ABB344F0(v26, v27, v28, v29);
      v30 = sub_1ABAA4B5C();
      sub_1ABDEFF58(v30, v31, v32, v33);
      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      v56 = sub_1ABDEE144(&v81);
      v64 = sub_1ABAA1614(v56, v57, v58, v59, v60, v61, v62, v63, v75, v76, v77, v78, v79, v80, v81);
      sub_1ABDEFF58(v64, v65, v66, v67);
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABD8F17C(v2);
    v2 = v74;
  }

  v71 = *(v2 + 16);
  v81 = v2 + 32;
  v82 = v71;
  result = sub_1ABD75FD0(&v81);
  *v76 = v2;
  return result;
}

unint64_t sub_1ABE234C0@<X0>(uint64_t a1@<X8>)
{
  sub_1ABDEE144(&v27);
  if (v30 > 0xFBu)
  {
    goto LABEL_9;
  }

  v3 = v27;
  if ((v30 & 0xE0) != 0xC0)
  {
    sub_1ABDEFF58(v27, v28, v29, v30);
LABEL_9:
    sub_1ABE27554();
    sub_1ABA7BD00();
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 2;
    return swift_willThrow();
  }

  sub_1ABDEE144(&v27);
  v4 = v30;
  if (v30 > 0xFBu)
  {
    goto LABEL_6;
  }

  v6 = v27;
  v5 = v28;
  v7 = v29;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = -32;
  if ((sub_1ABDEF364(&v27, &v23) & 1) == 0)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1ABF24AB4();
    v23 = v27;
    v24 = v28;
    MEMORY[0x1AC5A9410](0xD000000000000012, 0x80000001ABF928F0);
    v27 = v6;
    v28 = v5;
    v29 = v7;
    v30 = v4;
    sub_1ABF24C54();
    v16 = sub_1ABAA61CC();
    sub_1ABDEFF58(v16, v17, v18, v19);
    v20 = v23;
    v21 = v24;
    sub_1ABE27554();
    sub_1ABA7BD00();
    *v22 = v20;
    *(v22 + 8) = v21;
    *(v22 + 16) = 0;
    return swift_willThrow();
  }

  v8 = sub_1ABAA61CC();
  sub_1ABDEFF58(v8, v9, v10, v11);
LABEL_6:
  result = sub_1ABE23670();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = result;
    *(a1 + 16) = v13;
    *(a1 + 24) = v14;
  }

  return result;
}

unint64_t sub_1ABE23670()
{
  sub_1ABDEE424(&v32);
  if (v34 > 0xFBu)
  {
    goto LABEL_40;
  }

  if (v34 < 0xE0u)
  {
LABEL_39:
    sub_1ABDEFF58(v32, v33, *(&v33 + 1), v34);
LABEL_40:
    v0 = 0x80000001ABF92910;
    sub_1ABE27554();
    v16 = sub_1ABA7BD00();
    *v17 = 0xD000000000000027;
    v17[1] = 0x80000001ABF92910;
    sub_1ABAB591C(v16, v17);
    return v0;
  }

  if (v34 == 224 && v32 == 15 && v33 == 0)
  {
    sub_1ABE23820();
    if (v1)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v34 == 224 && v32 == 16 && v33 == 0)
  {
    sub_1ABE244A0();
    if (v1)
    {
      goto LABEL_43;
    }

LABEL_42:
    sub_1ABAB57B0();
LABEL_43:
    sub_1ABA9A6C0();
    sub_1ABDEFF58(v19, v20, v21, v22);
    return v0;
  }

  v6 = v34 == 224 && v32 == 17;
  if (v6 && v33 == 0)
  {
    sub_1ABE245F8(v32, v33, *(&v33 + 1));
    if (v1)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v7 = v34 == 224 && v32 == 18;
  if (!v7 || v33 != 0)
  {
    goto LABEL_39;
  }

  sub_1ABE247C4();
  if (v1)
  {
    goto LABEL_43;
  }

  sub_1ABA97958(v8, v9, v10, v11, v12, v13, v14, v15, v28, v29, v30, v31);
  sub_1ABE26428();
  v0 = v23;
  sub_1ABA9A6C0();
  sub_1ABDEFF58(v24, v25, v26, v27);
  return v0;
}

void sub_1ABE23820()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for KGQ.Value();
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v166 - v14;
  sub_1ABE247C4();
  if (v1)
  {
    goto LABEL_113;
  }

  v180 = v4;
  v181 = v7;
  v173 = 0;
  sub_1ABB344F0(v182, v183, v184, v185);
  v16 = 0;
  v169 = 0x80000001ABF85AA0;
  *&v17 = 136315138;
  v175 = v17;
  v170 = MEMORY[0x1E69E7CC0];
  v174 = MEMORY[0x1E69E7CC0];
  v179 = v15;
  v177 = v12;
LABEL_3:
  v167 = v16;
LABEL_4:
  v168 = v16;
  while (1)
  {
    while (1)
    {
LABEL_5:
      v18 = *(v3 + 72);
      if (*(v18 + 16))
      {
        v20 = *(v18 + 32);
        v19 = *(v18 + 40);
        v21 = *(v18 + 48);
        v186 = *(v3 + 72);
        v22 = *(v18 + 56);
        v23 = *(v3 + 80);
        v2 = *(v3 + 88);
        v24 = *(v3 + 96);
        v25 = *(v3 + 104);
        v26 = sub_1ABA8E458();
        sub_1ABB344B0(v26, v27, v28, v29);
        v30 = v25;
        v15 = v179;
        sub_1ABDEFF58(v23, v2, v24, v30);
        *(v3 + 80) = v20;
        *(v3 + 88) = v19;
        *(v3 + 96) = v21;
        *(v3 + 104) = v22;
        v31 = sub_1ABA8E458();
        sub_1ABB344B0(v31, v32, v33, v34);
      }

      else
      {
        sub_1ABE276BC();
        if (v36)
        {
          goto LABEL_118;
        }

        sub_1ABA82F90(v35);
        v22 = v185;
        v20 = v182;
        v19 = v183;
        v21 = v184;
        if (v185 > 0xFBu)
        {
          v161 = sub_1ABA8E458();
          sub_1ABDEFF58(v161, v162, v163, v164);
          goto LABEL_113;
        }

        sub_1ABDEFF58(*(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104));
        *(v3 + 80) = v20;
        *(v3 + 88) = v19;
        *(v3 + 96) = v21;
        *(v3 + 104) = v22;
        v37 = sub_1ABA8E458();
        sub_1ABB344B0(v37, v38, v39, v40);
        v41 = sub_1ABA8E458();
        sub_1ABB344B0(v41, v42, v43, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = *(v18 + 16);
          sub_1ABA7BEF0();
          sub_1ABADC53C();
          v18 = v116;
        }

        v2 = *(v18 + 16);
        v45 = *(v18 + 24);
        if (v2 >= v45 >> 1)
        {
          sub_1ABA7BBEC(v45);
          sub_1ABADC53C();
          v18 = v117;
        }

        *(v18 + 16) = v2 + 1;
        v46 = v18 + 32 * v2;
        *(v46 + 32) = v20;
        *(v46 + 40) = v19;
        *(v46 + 48) = v21;
        *(v46 + 56) = v22;
        v186 = v18;
        *(v3 + 72) = v18;
      }

      if (v22 < 0xE0)
      {
        goto LABEL_52;
      }

      v47 = v21 | v19;
      v48 = v22 == 224 && v20 == 3;
      if (!v48 || v47 != 0)
      {
        break;
      }

      if (*(v186 + 16))
      {
        sub_1ABA82930();
        if (v48)
        {
          v50 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
          v50 = sub_1ABAA2E14();
          sub_1ABA83C70(v50);
          sub_1ABA96B10(v51);
          swift_arrayInitWithCopy();
        }

        v57 = sub_1ABA81C24();
        sub_1ABB344B0(v57, v58, v59, v60);

        *(v3 + 72) = v50;
        v61 = sub_1ABA8ECD0();
        sub_1ABB344B0(v61, v62, v63, v64);
      }

      else
      {
        sub_1ABE276BC();
        if (v36)
        {
          goto LABEL_119;
        }

        sub_1ABA82F90(v52);
        v2 = v182;
        v53 = sub_1ABA8ECD0();
        sub_1ABDEFF6C(v53, v54, v55, v56);
      }

      v65 = sub_1ABA81C24();
      sub_1ABDEFF58(v65, v66, v67, v68);
    }

    if (v22 == 224 && v20 == 6 && v47 == 0)
    {
      if (*(v186 + 16))
      {
        sub_1ABA82930();
        if (v48)
        {
          v139 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
          v139 = sub_1ABAA2E14();
          sub_1ABA83C70(v139);
          sub_1ABA96B10(v140);
          swift_arrayInitWithCopy();
        }

        v146 = sub_1ABA81C24();
        sub_1ABB344B0(v146, v147, v148, v149);

        *(v3 + 72) = v139;
        v150 = sub_1ABA8ECD0();
        sub_1ABB344B0(v150, v151, v152, v153);
      }

      else
      {
        sub_1ABE276BC();
        if (v36)
        {
          __break(1u);
LABEL_125:
          __break(1u);
          return;
        }

        sub_1ABA82F90(v141);
        v2 = v182;
        v142 = sub_1ABA8ECD0();
        sub_1ABDEFF6C(v142, v143, v144, v145);
      }

      v154 = sub_1ABA81C24();
      sub_1ABDEFF58(v154, v155, v156, v157);
      v16 = 1;
      if (v167)
      {

        sub_1ABA955B4();
        sub_1ABA7BD00();
        *v158 = 0xD000000000000017;
        *(v158 + 8) = v2;
        *(v158 + 16) = 0;
        goto LABEL_123;
      }

      goto LABEL_3;
    }

    if (v22 == 224 && v20 == 7 && v47 == 0)
    {
      if (*(v186 + 16))
      {
        sub_1ABA82930();
        if (v48)
        {
          v120 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
          v120 = sub_1ABAA2E14();
          sub_1ABA83C70(v120);
          sub_1ABA96B10(v121);
          swift_arrayInitWithCopy();
        }

        v127 = sub_1ABA81C24();
        sub_1ABB344B0(v127, v128, v129, v130);

        *(v3 + 72) = v120;
        v131 = sub_1ABA8ECD0();
        sub_1ABB344B0(v131, v132, v133, v134);
      }

      else
      {
        sub_1ABE276BC();
        if (v36)
        {
          goto LABEL_125;
        }

        sub_1ABA82F90(v122);
        v2 = v182;
        v123 = sub_1ABA8ECD0();
        sub_1ABDEFF6C(v123, v124, v125, v126);
      }

      v135 = sub_1ABA81C24();
      sub_1ABDEFF58(v135, v136, v137, v138);
      v16 = 0;
      if (v168)
      {
        goto LABEL_120;
      }

      goto LABEL_4;
    }

    if (v22 == 224 && v20 == 8 && v47 == 0)
    {
      goto LABEL_113;
    }

LABEL_52:
    v172 = v20;
    v178 = v19;
    v75 = v173;
    v76 = sub_1ABE249AC();
    v173 = v75;
    if (v75)
    {
      sub_1ABA96500();

      goto LABEL_113;
    }

    v79 = v76;
    v2 = v77;
    v80 = v78;
    v82 = sub_1ABD7738C(v76) == 1701869940 && v81 == 0xE400000000000000;
    v176 = v2;
    if (v82)
    {
      break;
    }

    v83 = sub_1ABF25054();

    if (v83)
    {
      goto LABEL_64;
    }

    v84 = v170;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA80F18();
      sub_1ABADC630();
      v84 = v118;
    }

    v2 = *(v84 + 16);
    v85 = *(v84 + 24);
    v170 = v84;
    if (v2 >= v85 >> 1)
    {
      sub_1ABA7BBEC(v85);
      sub_1ABADC630();
      v170 = v119;
    }

    sub_1ABA96500();
    v86 = v170;
    *(v170 + 16) = v2 + 1;
    v87 = v86 + 24 * v2;
    *(v87 + 32) = v79;
    *(v87 + 40) = v176;
    *(v87 + 48) = v80;
  }

LABEL_64:
  v171 = v21;
  v88 = 0;
  v187 = *(v2 + 16);
  v90 = v177;
  v89 = v178;
  while (1)
  {
    if (v187 == v88)
    {
      sub_1ABDEFF58(v172, v89, v171, v22);

      goto LABEL_5;
    }

    if (v88 >= *(v2 + 16))
    {
      break;
    }

    sub_1ABA7AD90();
    sub_1ABB2D38C(v2 + v91 + *(v92 + 72) * v88, v15);
    sub_1ABB2D38C(v15, v90);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      *v90;
      v105 = sub_1ABF24D84();

      if (v105 < 4)
      {
        v106 = v105;
      }

      else if (v105 == 4)
      {
        v106 = 4;
      }

      else
      {
        if (v105 != 5)
        {
          sub_1ABD6DC28(v15);
LABEL_81:
          ++v88;
          continue;
        }

        v106 = 5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = *(v174 + 16);
        sub_1ABA7BEF0();
        sub_1ABADC708();
        v174 = v112;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {

        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1ABF24AB4();
        MEMORY[0x1AC5A9410](0xD000000000000024, 0x80000001ABF92940);
        sub_1ABF24C54();
        sub_1ABA90DFC();
        sub_1ABE27554();
        v159 = sub_1ABA7BD00();
        sub_1ABA90B04(v159, v160);
        sub_1ABDEFF58(v172, v89, v171, v22);
        sub_1ABD6DC28(v15);
        sub_1ABD6DC28(v90);
        goto LABEL_113;
      }

      v94 = *v90;
      v95 = *(v90 + 8);
      v96 = sub_1ABF24D84();
      if (v96 > 5)
      {
        if (qword_1ED86E458 != -1)
        {
          swift_once();
        }

        v97 = sub_1ABF237F4();
        sub_1ABA7AA24(v97, qword_1ED86E460);

        v98 = sub_1ABF237D4();
        v99 = sub_1ABF24664();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v182 = v101;
          *v100 = v175;
          v102 = sub_1ABADD6D8(v94, v95, &v182);

          *(v100 + 4) = v102;
          _os_log_impl(&dword_1ABA78000, v98, v99, "type %s not found", v100, 0xCu);
          sub_1ABA84B54(v101);
          v103 = v101;
          v2 = v176;
          MEMORY[0x1AC5AB8B0](v103, -1, -1);
          v104 = v100;
          v15 = v179;
          MEMORY[0x1AC5AB8B0](v104, -1, -1);
        }

        else
        {
        }

        sub_1ABD6DC28(v15);
        v90 = v177;
        v89 = v178;
        goto LABEL_81;
      }

      v106 = v96;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = *(v174 + 16);
        sub_1ABA7BEF0();
        sub_1ABADC708();
        v174 = v114;
      }

      v89 = v178;
    }

    v108 = *(v174 + 16);
    v107 = *(v174 + 24);
    if (v108 >= v107 >> 1)
    {
      sub_1ABA7BBEC(v107);
      sub_1ABADC708();
      v174 = v110;
    }

    sub_1ABD6DC28(v15);
    v109 = v174;
    *(v174 + 16) = v108 + 1;
    *(v109 + v108 + 32) = v106;
    ++v88;
    v2 = v176;
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  if (!*(v174 + 16) || (v2 = v170, !*(v170 + 16)))
  {

    sub_1ABA955B4();
    sub_1ABA7BD00();
    *v165 = 0xD00000000000002ELL;
    *(v165 + 8) = v2;
    *(v165 + 16) = 1;
LABEL_123:
    swift_willThrow();
  }

LABEL_113:
  sub_1ABA7BC90();
}

unint64_t sub_1ABE244A0()
{
  sub_1ABE247C4();
  if (!v1)
  {
    sub_1ABA97958(v2, v3, v4, v5, v6, v7, v8, v9, v18, v19, v20, v21);
    sub_1ABE26428();
    v0 = v10;
    if (*(v11 + 16))
    {
      v12 = *(v11 + 40);
      if (sub_1ABD7738C(*(v11 + 32)) == 0x65756C6176 && v13 == 0xE500000000000000)
      {

LABEL_11:

        return v0;
      }

      v15 = sub_1ABF25054();

      if (v15)
      {
        goto LABEL_11;
      }
    }

    v0 = 0x80000001ABF92A60;
    sub_1ABE27554();
    sub_1ABA7BD00();
    *v16 = 0xD000000000000033;
    *(v16 + 8) = 0x80000001ABF92A60;
    *(v16 + 16) = 1;
    swift_willThrow();
  }

  return v0;
}

void sub_1ABE247C4()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  sub_1ABDEE424(&v19);
  v6 = v19;
  v5 = v20;
  v7 = v21;
  v8 = v22;
  if (v22 <= 0xFBu && (MEMORY[0x1EEE9AC00](v4), v18[2] = &v19, v9 = sub_1ABA805B4(), sub_1ABB344B0(v9, v10, v7, v8), v11 = sub_1ABB2FAF4(sub_1ABE27648, v18, v1), v12 = sub_1ABA805B4(), sub_1ABDEFF58(v12, v13, v7, v8), v11))
  {
    sub_1ABDEE144(&v19);
    sub_1ABDEFF58(v19, v20, v21, v22);
    *v3 = v6;
    *(v3 + 8) = v5;
    *(v3 + 16) = v7;
    *(v3 + 24) = v8;
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1ABF24AB4();

    v18[4] = 0x6465746365707865;
    v18[5] = 0xE900000000000020;
    v14 = MEMORY[0x1AC5A9750](v1, &unk_1F209CFE0);
    MEMORY[0x1AC5A9410](v14);

    MEMORY[0x1AC5A9410](0x20746F67202CLL, 0xE600000000000000);
    v19 = v6;
    v20 = v5;
    v21 = v7;
    v22 = v8;
    sub_1ABAD219C(&qword_1EB4DA9B8, &unk_1ABF68730);
    v15 = sub_1ABF23C74();
    MEMORY[0x1AC5A9410](v15);

    sub_1ABE27554();
    v16 = sub_1ABA7BD00();
    sub_1ABA90B04(v16, v17);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABE249AC()
{
  sub_1ABDEE144(&v50);
  if (v52 > 0xFBu)
  {
    goto LABEL_6;
  }

  v4 = v50;
  v3 = v51;
  if ((v52 & 0xE0) != 0x80)
  {
    v16 = sub_1ABAA61CC();
    sub_1ABDEFF58(v16, v17, v18, v19);
LABEL_6:
    sub_1ABA8B290();
    sub_1ABF24AB4();

    sub_1ABAB1224();
    v20 = *(v0 + 88);
    v21 = *(v0 + 96);
    v22 = *(v0 + 104);
    v50 = *(v0 + 80);
    *&v51 = v20;
    *(&v51 + 1) = v21;
    LOBYTE(v52) = v22;
    sub_1ABDEFF6C(v50, v20, v21, v22);
    sub_1ABAD219C(&qword_1EB4DA9B8, &unk_1ABF68730);
    v23 = sub_1ABF23C74();
    MEMORY[0x1AC5A9410](v23);

    goto LABEL_7;
  }

  v5 = sub_1ABAA61CC();
  sub_1ABB344B0(v5, v6, v7, v8);
  v9 = sub_1ABD779A4();
  if (v9 == 26)
  {
    sub_1ABA8B290();
    sub_1ABF24AB4();

    sub_1ABAB1224();
    v50 = v11 + 16;
    *&v51 = v10;
    MEMORY[0x1AC5A9410](v4, v3);
    v12 = sub_1ABAA61CC();
    sub_1ABDEFF58(v12, v13, v14, v15);
    MEMORY[0x1AC5A9410](0x2071676B206F7420, 0xEC00000062726576);
LABEL_7:
    sub_1ABE27554();
    v24 = sub_1ABA7BD00();
    sub_1ABA90B04(v24, v25);
    return v2;
  }

  v2 = v9;
  v27 = sub_1ABAA61CC();
  sub_1ABDEFF58(v27, v28, v29, v30);
  sub_1ABE247C4();
  if (!v1)
  {
    v38 = v50;
    v39 = v51;
    v40 = v52;
    if (v52 >= 0xE0u && (!(*(&v51 + 1) | v51 | v50) && v52 == 224 || (v52 == 224 ? (v41 = v50 == 2) : (v41 = 0), v41 && v51 == 0 || (v52 == 224 ? (v42 = v50 == 10) : (v42 = 0), v42 && v51 == 0))))
    {
      sub_1ABE24C74(0, v31, v32, v33, v34, v35, v36, v37, v48, v49, HIDWORD(v49), v50, v51, *(&v51 + 1), v52, v53, v54, v55, v56, v57, v58);
    }

    else
    {
      sub_1ABA8B290();
      sub_1ABF24AB4();

      sub_1ABAB1224();
      v50 = v44;
      *&v51 = v43;
      v45 = MEMORY[0x1AC5A9750](&unk_1F2093B98, &type metadata for KGQ.Argument.Operation);
      MEMORY[0x1AC5A9410](v45);

      sub_1ABE27554();
      v46 = sub_1ABA7BD00();
      sub_1ABA90B04(v46, v47);
      sub_1ABB344F0(v38, v39, *(&v39 + 1), v40);
    }
  }

  return v2;
}

void sub_1ABE24C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1ABA7BCA8();
  a20 = v24;
  a21 = v25;
  v459 = v22;
  v26 = v21;
  v460 = v27;
  v28 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v471 = &v458 - v30;
  v477 = sub_1ABF21EB4();
  v31 = sub_1ABA7BB64(v477);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7BC58();
  v475 = v37 - v36;
  v38 = type metadata accessor for KGQ.Value();
  v39 = sub_1ABA7BB64(v38);
  v479 = v40;
  v480 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA7AC18();
  v474 = (v43 - v44);
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA88E50();
  v473 = v46;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA88E50();
  v478 = v48;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v49);
  sub_1ABA88E50();
  v462 = v50;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v51);
  sub_1ABA88E50();
  v461 = v52;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v53);
  sub_1ABA88E50();
  v463 = v54;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v55);
  sub_1ABA88E50();
  v468 = v56;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v57);
  sub_1ABA88E50();
  v472 = v58;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v59);
  sub_1ABA88E50();
  v470 = v60;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v61);
  v469 = (&v458 - v62);
  v63 = 0;
  v64 = 0;
  v464 = 0;
  v467 = (v33 + 32);
  v466 = (v33 + 16);
  v465 = (v33 + 8);
  v489 = 0;
  v490 = 0xE000000000000000;
  v481 = MEMORY[0x1E69E7CC0];
  v482 = v21;
  while (2)
  {
    v65 = v63;
    v66 = *(v26 + 72);
    v67 = *(v66 + 16);
    a10 = v65;
    a11 = v64;
    if (v67)
    {
      v69 = *(v66 + 32);
      v68 = *(v66 + 40);
      v70 = *(v66 + 48);
      v71 = *(v66 + 56);
      v33 = *(v26 + 80);
      v21 = *(v26 + 88);
      v23 = *(v26 + 96);
      v72 = *(v482 + 104);
      v73 = sub_1ABA93980();
      sub_1ABB344B0(v73, v74, v75, v76);
      v77 = sub_1ABA7D000();
      v78 = v72;
      v26 = v482;
      sub_1ABDEFF58(v77, v79, v23, v78);
      *(v26 + 80) = v69;
      *(v26 + 88) = v68;
      *(v26 + 96) = v70;
      *(v26 + 104) = v71;
      v80 = sub_1ABA93980();
      sub_1ABB344B0(v80, v81, v82, v83);
    }

    else
    {
      sub_1ABAA2A5C();
      if (v85)
      {
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
        return;
      }

      sub_1ABAA3DDC(v84);
      v71 = v486;
      v69 = v483;
      v68 = v484;
      v70 = v485;
      if (v486 > 0xFBu)
      {
        v430 = sub_1ABA93980();
        sub_1ABDEFF58(v430, v431, v432, v433);

        if (a10)
        {
LABEL_270:
          sub_1ABAD219C(&qword_1EB4D1350, qword_1ABF68740);
          sub_1ABE27694();
          v436 = v435 & ~v434;
          v437 = swift_allocObject();
          *(v437 + 16) = xmmword_1ABF34740;
          v438 = (v437 + v436);
          v439 = v490;
          *v438 = v489;
          v438[1] = v439;
          goto LABEL_271;
        }

        sub_1ABE27554();
        sub_1ABA7BD00();
        *v440 = 0;
        *(v440 + 8) = 0;
        *(v440 + 16) = 2;
LABEL_273:
        swift_willThrow();
        goto LABEL_276;
      }

      sub_1ABAA5A64();
      *(v26 + 80) = v69;
      *(v26 + 88) = v68;
      *(v26 + 96) = v70;
      *(v26 + 104) = v71;
      v86 = sub_1ABA93980();
      sub_1ABB344B0(v86, v87, v88, v89);
      v90 = sub_1ABA93980();
      sub_1ABB344B0(v90, v91, v92, v93);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA80F18();
        sub_1ABADC53C();
        v66 = v419;
      }

      sub_1ABA99684();
      if (v95)
      {
        sub_1ABA7EB6C(v94);
        sub_1ABADC53C();
        v66 = v420;
      }

      *(v66 + 16) = v33;
      v96 = v66 + 32 * v21;
      *(v96 + 32) = v69;
      *(v96 + 40) = v68;
      *(v96 + 48) = v70;
      *(v96 + 56) = v71;
      *(v26 + 72) = v66;
    }

    switch(v71 >> 5)
    {
      case 1u:
        v26 = *(v66 + 16);
        if (v26)
        {
          v21 = *(v66 + 32);
          v23 = *(v66 + 40);
          v33 = *(v66 + 48);
          v97 = *(v66 + 56);
          sub_1ABA97680();
          swift_bridgeObjectRetain_n();
          swift_unknownObjectRetain();
          v98 = sub_1ABA903EC();
          sub_1ABB344B0(v98, v99, v100, v101);
          v102 = *(v66 + 16);

          v103 = v26 - 1;
          v104 = v66;
          v187 = v102 == v103;
          v105 = a11;
          if (!v187)
          {
            if (v103)
            {
              v424 = sub_1ABADD23C();
              sub_1ABAB2BCC(v424);
              swift_arrayInitWithCopy();
            }

            else
            {
              v104 = MEMORY[0x1E69E7CC0];
            }
          }

          v106 = v482;
          *(v482 + 72) = v104;
          v26 = v106;
          sub_1ABDEFF58(*(v106 + 80), *(v106 + 88), *(v106 + 96), *(v106 + 104));
          *(v26 + 80) = v21;
          *(v26 + 88) = v23;
          *(v26 + 96) = v33;
          *(v26 + 104) = v97;
          v107 = sub_1ABA903EC();
          sub_1ABB344B0(v107, v108, v109, v110);
        }

        else
        {
          sub_1ABAA54F4();
          if (v85)
          {
            goto LABEL_288;
          }

          sub_1ABAA3DDC(v253);
          v21 = v483;
          v23 = v484;
          v33 = v485;
          v254 = v486;
          sub_1ABAA5A64();
          MEMORY[0x50] = v21;
          MEMORY[0x58] = v23;
          MEMORY[0x60] = v33;
          MEMORY[0x68] = v254;
          v255 = sub_1ABA903EC();
          sub_1ABDEFF6C(v255, v256, v257, v258);
          v105 = a11;
        }

        v259 = sub_1ABA903EC();
        sub_1ABDEFF58(v259, v260, v261, v262);
        if (a10)
        {
          v483 = v69;
          v248 = sub_1ABF24FF4();
LABEL_119:
          v33 = v249;
          v21 = &v489;
          MEMORY[0x1AC5A9410](v248);

          v63 = 1;
          v64 = v105;
        }

        else
        {
          *v469 = v69;
          swift_storeEnumTagMultiPayload();
          if ((sub_1ABA8879C() & 1) == 0)
          {
            sub_1ABA80F18();
            sub_1ABADC558();
          }

          sub_1ABA99684();
          if (v95)
          {
            sub_1ABA7EB6C(v263);
            sub_1ABADC558();
          }

          sub_1ABA7DEFC();
          v252 = v469;
LABEL_125:
          sub_1ABD71960(v252, v251);
          v63 = 0;
          v64 = v105;
        }

        continue;
      case 2u:
        v26 = *(v66 + 16);
        if (v26)
        {
          v21 = *(v66 + 32);
          v23 = *(v66 + 40);
          v33 = *(v66 + 48);
          v167 = *(v66 + 56);
          sub_1ABA97680();
          swift_bridgeObjectRetain_n();
          swift_unknownObjectRetain();
          v168 = sub_1ABA903EC();
          sub_1ABB344B0(v168, v169, v170, v171);
          v172 = *(v66 + 16);

          v173 = v26 - 1;
          v174 = v66;
          v187 = v172 == v173;
          v105 = a11;
          if (!v187)
          {
            if (v173)
            {
              v423 = sub_1ABADD23C();
              sub_1ABAB2BCC(v423);
              swift_arrayInitWithCopy();
            }

            else
            {
              v174 = MEMORY[0x1E69E7CC0];
            }
          }

          v175 = v482;
          *(v482 + 72) = v174;
          v26 = v175;
          sub_1ABDEFF58(*(v175 + 80), *(v175 + 88), *(v175 + 96), *(v175 + 104));
          *(v26 + 80) = v21;
          *(v26 + 88) = v23;
          *(v26 + 96) = v33;
          *(v26 + 104) = v167;
          v176 = sub_1ABA903EC();
          sub_1ABB344B0(v176, v177, v178, v179);
        }

        else
        {
          sub_1ABAA54F4();
          if (v85)
          {
            goto LABEL_287;
          }

          sub_1ABAA3DDC(v238);
          v21 = v483;
          v23 = v484;
          v33 = v485;
          v239 = v486;
          sub_1ABAA5A64();
          MEMORY[0x50] = v21;
          MEMORY[0x58] = v23;
          MEMORY[0x60] = v33;
          MEMORY[0x68] = v239;
          v240 = sub_1ABA903EC();
          sub_1ABDEFF6C(v240, v241, v242, v243);
          v105 = a11;
        }

        v244 = sub_1ABA903EC();
        sub_1ABDEFF58(v244, v245, v246, v247);
        if (a10)
        {
          v248 = sub_1ABF24314();
          goto LABEL_119;
        }

        *v470 = v69;
        swift_storeEnumTagMultiPayload();
        if ((sub_1ABA8879C() & 1) == 0)
        {
          sub_1ABA80F18();
          sub_1ABADC558();
        }

        sub_1ABA99684();
        if (v95)
        {
          sub_1ABA7EB6C(v250);
          sub_1ABADC558();
        }

        sub_1ABA7DEFC();
        v252 = v470;
        goto LABEL_125;
      case 3u:
        v122 = sub_1ABA93980();
        sub_1ABDEFF6C(v122, v123, v124, v125);
        sub_1ABAA3670();
        sub_1ABDEE144(v126);
        sub_1ABA96158();
        v33 = v471;
        sub_1ABA7C5D0();
        sub_1ABE26C20(v127);
        v21 = v477;
        if (sub_1ABA7E1E0(v33, 1, v477) == 1)
        {
          sub_1ABA925A4(v33, &qword_1EB4D9BF0, &qword_1ABF34240);
          sub_1ABA7C5D0();
          v128 = sub_1ABE26FD8();
          if (v129)
          {
            v130 = sub_1ABA93980();
            sub_1ABDEFF6C(v130, v131, v132, v133);
            v134 = sub_1ABA7C5D0();
            EntityIdentifier.init(_:)(v134, v135, v136);
            if (v484)
            {
              v137 = sub_1ABA93980();
              sub_1ABDEFF6C(v137, v138, v139, v140);
              sub_1ABA7C5D0();
              v141 = sub_1ABD779A4();
              if (v141 == 26)
              {
                v142 = v462;
                *v462 = v69;
                v142[1] = v68;
                swift_storeEnumTagMultiPayload();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1ABA80F18();
                  sub_1ABADC558();
                }

                sub_1ABA99684();
                if (v95)
                {
                  sub_1ABA7EB6C(v143);
                  sub_1ABADC558();
                }

                v144 = sub_1ABA93980();
                sub_1ABDEFF58(v144, v145, v146, v147);
                sub_1ABA7DEFC();
                v149 = &a12;
              }

              else
              {
                v33 = v141;
                v316 = sub_1ABA93980();
                sub_1ABDEFF58(v316, v317, v318, v319);
                *v461 = v33;
                swift_storeEnumTagMultiPayload();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1ABA80F18();
                  sub_1ABADC558();
                }

                sub_1ABA99684();
                if (v95)
                {
                  sub_1ABA7EB6C(v320);
                  sub_1ABADC558();
                }

                v321 = sub_1ABA93980();
                sub_1ABDEFF58(v321, v322, v323, v324);
                sub_1ABA7DEFC();
                v149 = &a10;
              }
            }

            else
            {
              v33 = v483;
              v290 = sub_1ABA93980();
              sub_1ABDEFF58(v290, v291, v292, v293);
              *v463 = v33;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1ABA80F18();
                sub_1ABADC558();
              }

              sub_1ABA99684();
              if (v95)
              {
                sub_1ABA7EB6C(v294);
                sub_1ABADC558();
              }

              v295 = sub_1ABA93980();
              sub_1ABDEFF58(v295, v296, v297, v298);
              sub_1ABA7DEFC();
              v149 = &a13;
            }
          }

          else
          {
            v33 = v128;
            v264 = sub_1ABA93980();
            sub_1ABDEFF58(v264, v265, v266, v267);
            *v468 = v33;
            swift_storeEnumTagMultiPayload();
            if ((sub_1ABA8879C() & 1) == 0)
            {
              sub_1ABA80F18();
              sub_1ABADC558();
            }

            sub_1ABA99684();
            if (v95)
            {
              sub_1ABA7EB6C(v268);
              sub_1ABADC558();
            }

            v269 = sub_1ABA93980();
            sub_1ABDEFF58(v269, v270, v271, v272);
            sub_1ABA7DEFC();
            v149 = &a18;
          }

          v166 = *(v149 - 32);
        }

        else
        {
          v203 = sub_1ABA93980();
          sub_1ABDEFF58(v203, v204, v205, v206);
          v207 = v475;
          (*v467)(v475, v33, v21);
          v33 = v472;
          (*v466)(v472, v207, v21);
          swift_storeEnumTagMultiPayload();
          if ((sub_1ABA8879C() & 1) == 0)
          {
            sub_1ABA80F18();
            sub_1ABADC558();
          }

          sub_1ABA99684();
          if (v95)
          {
            sub_1ABA7EB6C(v208);
            sub_1ABADC558();
          }

          v209 = sub_1ABA93980();
          sub_1ABDEFF58(v209, v210, v211, v212);
          (*v465)(v475, v477);
          sub_1ABA7DEFC();
          v166 = v472;
        }

        goto LABEL_157;
      case 4u:
        v150 = sub_1ABA93980();
        sub_1ABDEFF6C(v150, v151, v152, v153);
        sub_1ABAA3670();
        sub_1ABDEE144(v154);
        sub_1ABA96158();
        v155 = sub_1ABA93980();
        sub_1ABDEFF6C(v155, v156, v157, v158);
        sub_1ABA7C5D0();
        v159 = sub_1ABD779A4();
        if (v159 == 26)
        {
          v160 = v474;
          *v474 = v69;
          v160[1] = v68;
          swift_storeEnumTagMultiPayload();
          if ((sub_1ABA8879C() & 1) == 0)
          {
            sub_1ABA80F18();
            sub_1ABADC558();
          }

          sub_1ABA99684();
          if (v95)
          {
            sub_1ABA7EB6C(v161);
            sub_1ABADC558();
          }

          v162 = sub_1ABA93980();
          sub_1ABDEFF58(v162, v163, v164, v165);
          sub_1ABA7DEFC();
          v166 = v474;
        }

        else
        {
          v33 = v159;
          v213 = sub_1ABA93980();
          sub_1ABDEFF58(v213, v214, v215, v216);
          *v473 = v33;
          swift_storeEnumTagMultiPayload();
          if ((sub_1ABA8879C() & 1) == 0)
          {
            sub_1ABA80F18();
            sub_1ABADC558();
          }

          sub_1ABA99684();
          if (v95)
          {
            sub_1ABA7EB6C(v217);
            sub_1ABADC558();
          }

          v218 = sub_1ABA93980();
          sub_1ABDEFF58(v218, v219, v220, v221);
          sub_1ABA7DEFC();
          v166 = v473;
        }

LABEL_157:
        sub_1ABD71960(v166, v148);
        v63 = a10;
        v64 = a11;
        continue;
      case 5u:
        v26 = *(v66 + 16);
        if (v26)
        {
          v476 = v69;
          v112 = *(v66 + 32);
          v111 = *(v66 + 40);
          v113 = *(v66 + 48);
          v114 = *(v66 + 56);
          sub_1ABA97680();
          swift_bridgeObjectRetain_n();
          swift_unknownObjectRetain();
          a10 = v114;
          sub_1ABB344B0(v112, v111, v113, v114);
          v115 = *(v66 + 16);

          v116 = v26 - 1;
          v187 = v115 == v26 - 1;
          v117 = v112;
          v69 = v113;
          v118 = v66;
          v26 = v482;
          if (!v187)
          {
            v458 = v69;
            if (v116)
            {
              v118 = sub_1ABADD23C();
              swift_arrayInitWithCopy();
            }

            else
            {
              v118 = MEMORY[0x1E69E7CC0];
            }

            v69 = v458;
          }

          *(v26 + 72) = v118;
          sub_1ABAA5A64();
          *(v26 + 80) = v117;
          *(v26 + 88) = v111;
          *(v26 + 96) = v69;
          v23 = a10;
          *(v26 + 104) = a10;
          v119 = sub_1ABA7D000();
          sub_1ABB344B0(v119, v120, v69, v23);
          v121 = v69;
          LOBYTE(v69) = v476;
        }

        else
        {
          sub_1ABAA54F4();
          if (v85)
          {
            goto LABEL_289;
          }

          sub_1ABAA3DDC(v230);
          v231 = v483;
          v232 = v484;
          v121 = v485;
          v23 = v486;
          sub_1ABAA5A64();
          MEMORY[0x50] = v231;
          MEMORY[0x58] = v232;
          MEMORY[0x60] = v121;
          MEMORY[0x68] = v23;
          v233 = sub_1ABA7D000();
          sub_1ABDEFF6C(v233, v234, v121, v23);
        }

        v235 = sub_1ABA7D000();
        sub_1ABDEFF58(v235, v236, v121, v23);
        v33 = 0xE200000000000000;
        v237 = 17741;
        switch(v69)
        {
          case 1:
            v33 = 0xE300000000000000;
            v237 = 4999502;
            break;
          case 2:
            v33 = 0xE300000000000000;
            v237 = 5721934;
            break;
          case 3:
            v33 = 0xE900000000000054;
            v237 = 0x524154535F594144;
            break;
          case 4:
            v33 = 0xE700000000000000;
            v237 = 0x444E455F594144;
            break;
          case 5:
            v33 = 0xEA00000000005452;
            v326 = 1262830935;
            goto LABEL_170;
          case 6:
            v33 = 0xE800000000000000;
            v327 = 1262830935;
            goto LABEL_174;
          case 7:
            v237 = 0x54535F48544E4F4DLL;
            v325 = 5526081;
            goto LABEL_168;
          case 8:
            v33 = 0xE900000000000044;
            v237 = 0x4E455F48544E4F4DLL;
            break;
          case 9:
            v33 = 0xEA00000000005452;
            v326 = 1380009305;
LABEL_170:
            v237 = v326 | 0x4154535F00000000;
            break;
          case 10:
            v33 = 0xE800000000000000;
            v327 = 1380009305;
LABEL_174:
            v237 = v327 | 0x444E455F00000000;
            break;
          case 11:
            v33 = 0xE500000000000000;
            v237 = 0x5941445F31;
            break;
          case 12:
            v33 = 0xE600000000000000;
            v237 = 0x4B4545575F31;
            break;
          case 13:
            v33 = 0xE700000000000000;
            v237 = 0x48544E4F4D5F31;
            break;
          case 14:
            v33 = 0xE600000000000000;
            v237 = 0x524145595F31;
            break;
          case 15:
            v237 = 0x464F5F5452415453;
            v33 = 0xED0000454D49545FLL;
            break;
          case 16:
            v237 = 0x545F464F5F444E45;
            v325 = 4541769;
LABEL_168:
            v33 = (v325 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
            break;
          default:
            break;
        }

        v21 = &v489;
        MEMORY[0x1AC5A9410](v237, v33);
        v328 = sub_1ABA93980();
        sub_1ABDEFF58(v328, v329, v330, v331);

        v63 = 1;
        v64 = a11;
        continue;
      case 6u:
        sub_1ABAA3670();
        sub_1ABDEE144(v180);
        sub_1ABA96158();
        *v478 = v69;
        swift_storeEnumTagMultiPayload();
        if ((sub_1ABA8879C() & 1) == 0)
        {
          sub_1ABA80F18();
          sub_1ABADC558();
          v66 = v421;
        }

        v181 = a10;
        v23 = a11;
        sub_1ABA99684();
        if (v95)
        {
          sub_1ABA7EB6C(v182);
          sub_1ABADC558();
          v66 = v422;
        }

        *(v66 + 16) = v33;
        sub_1ABA7AD90();
        v481 = v66;
        sub_1ABD71960(v185, v66 + v183 + *(v184 + 72) * v21);
        v63 = v181;
        v64 = v23;
        continue;
      case 7u:
        v186 = v70 | v68;
        v187 = v71 == 224 && v69 == 3;
        if (!v187 || v186 != 0)
        {
          if (v71 == 224 && v69 == 4 && v186 == 0)
          {
            v33 = *(v66 + 16);
            if (v33)
            {
              sub_1ABA84354();
              v273 = sub_1ABA7C72C();
              sub_1ABB344B0(v273, v274, v275, v276);
              sub_1ABAA0FC4();

              sub_1ABAA3290();
              v26 = v482;
              if (!v187)
              {
                if (v23)
                {
                  sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
                  v33 = sub_1ABAA2E14();
                  v426 = j__malloc_size(v33);
                  sub_1ABA7F8FC(v426);
                  swift_arrayInitWithCopy();
                }

                else
                {
                  v33 = MEMORY[0x1E69E7CC0];
                }
              }

              *(v26 + 72) = v33;
              v277 = sub_1ABA8FA14();
              sub_1ABB344B0(v277, v278, v279, v280);
            }

            else
            {
              sub_1ABAA2A5C();
              if (v85)
              {
                goto LABEL_291;
              }

              sub_1ABAA3DDC(v307);
              v21 = v483;
              v308 = sub_1ABA8FA14();
              sub_1ABDEFF6C(v308, v309, v310, v311);
            }

            v312 = sub_1ABA7C72C();
            sub_1ABDEFF58(v312, v313, v314, v315);
            sub_1ABAB559C();
          }

          else
          {
            if (v71 == 224 && v69 == 5 && v186 == 0)
            {
              sub_1ABAA3670();
              sub_1ABDEE144(v449);
              sub_1ABA96158();
              if ((v464 & 1) == 0)
              {
                v450 = v490;

                sub_1ABA955B4();
                sub_1ABA7BD00();
                *v451 = 0xD000000000000017;
                *(v451 + 8) = v450;
                *(v451 + 16) = 0;
                goto LABEL_273;
              }

              if (a10)
              {
LABEL_284:

                goto LABEL_270;
              }

LABEL_285:

              goto LABEL_276;
            }

            if (v71 == 224 && v69 == 6 && v186 == 0)
            {
              v33 = *(v66 + 16);
              if (v33)
              {
                sub_1ABA84354();
                swift_unknownObjectRetain();
                v299 = sub_1ABA7C72C();
                sub_1ABB344B0(v299, v300, v301, v302);
                sub_1ABAA0FC4();

                sub_1ABAA3290();
                v26 = v482;
                if (!v187)
                {
                  if (v23)
                  {
                    sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
                    v33 = sub_1ABAA2E14();
                    v427 = j__malloc_size(v33);
                    sub_1ABA7F8FC(v427);
                    swift_arrayInitWithCopy();
                  }

                  else
                  {
                    v33 = MEMORY[0x1E69E7CC0];
                  }
                }

                *(v26 + 72) = v33;
                v303 = sub_1ABA8FA14();
                sub_1ABB344B0(v303, v304, v305, v306);
              }

              else
              {
                sub_1ABAA2A5C();
                if (v85)
                {
                  goto LABEL_292;
                }

                sub_1ABAA3DDC(v338);
                v21 = v483;
                v339 = sub_1ABA8FA14();
                sub_1ABDEFF6C(v339, v340, v341, v342);
              }

              v343 = sub_1ABA7C72C();
              sub_1ABDEFF58(v343, v344, v345, v346);
              sub_1ABAB559C();
              if ((v460 & 1) == 0)
              {

                sub_1ABE27554();
                v452 = sub_1ABA7BD00();
                *v453 = xmmword_1ABF68590;
                sub_1ABAB591C(v452, v453);
                sub_1ABA9A6C0();
                goto LABEL_275;
              }
            }

            else
            {
              if (v71 == 224 && v69 == 7 && v186 == 0)
              {
                if (a10)
                {
                  goto LABEL_284;
                }

                goto LABEL_285;
              }

              v197 = v71 == 224 && v69 == 11;
              if (!v197 || v186)
              {
                v332 = v71 == 224 && v69 == 12;
                if (!v332 || v186)
                {
                  v347 = v71 == 224 && v69 == 13;
                  if (!v347 || v186)
                  {
                    v361 = v71 == 224 && v69 == 14;
                    v26 = v482;
                    if (!v361 || v186)
                    {
LABEL_274:

                      v487 = sub_1ABB28D54(2);
                      v488 = v441;
                      v483 = v69;
                      v484 = v68;
                      v485 = v70;
                      v486 = v71;
                      sub_1ABF24C54();
                      v442 = v487;
                      v443 = v488;
                      sub_1ABE27554();
                      v444 = sub_1ABA7BD00();
                      *v445 = v442;
                      v445[1] = v443;
                      sub_1ABAB591C(v444, v445);
                      v454 = sub_1ABA93980();
LABEL_275:
                      sub_1ABDEFF58(v454, v455, v456, v457);
                      goto LABEL_276;
                    }

                    v33 = *(v66 + 16);
                    if (v33)
                    {
                      sub_1ABA84354();
                      swift_unknownObjectRetain();
                      v362 = sub_1ABA7C72C();
                      sub_1ABB344B0(v362, v363, v364, v365);
                      sub_1ABAA0FC4();

                      sub_1ABAA3290();
                      if (!v187)
                      {
                        if (v23)
                        {
                          sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
                          v33 = sub_1ABAA2E14();
                          v429 = j__malloc_size(v33);
                          sub_1ABA7F8FC(v429);
                          swift_arrayInitWithCopy();
                        }

                        else
                        {
                          v33 = MEMORY[0x1E69E7CC0];
                        }
                      }

                      v26 = v482;
                      *(v482 + 72) = v33;
                      v366 = sub_1ABA8FA14();
                      sub_1ABB344B0(v366, v367, v368, v369);
                    }

                    else
                    {
                      sub_1ABAA2A5C();
                      if (v85)
                      {
                        goto LABEL_296;
                      }

                      sub_1ABAA3DDC(v405);
                      v21 = v483;
                      v406 = sub_1ABA8FA14();
                      sub_1ABDEFF6C(v406, v407, v408, v409);
                    }

                    v410 = sub_1ABA7C72C();
                    sub_1ABDEFF58(v410, v411, v412, v413);
                    sub_1ABAA205C();
                    if (v414)
                    {
                      v21 = &v489;
                      MEMORY[0x1AC5A9410](47, 0xE100000000000000);
LABEL_234:
                      sub_1ABA9A6C0();
                      sub_1ABDEFF58(v415, v416, v417, v418);
                      v63 = 1;
                      v64 = v33;
                    }
                  }

                  else
                  {
                    v33 = *(v66 + 16);
                    if (v33)
                    {
                      sub_1ABA84354();
                      swift_unknownObjectRetain();
                      v348 = sub_1ABA7C72C();
                      sub_1ABB344B0(v348, v349, v350, v351);
                      sub_1ABAA0FC4();

                      sub_1ABAA3290();
                      if (!v187)
                      {
                        if (v23)
                        {
                          sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
                          v33 = sub_1ABAA2E14();
                          v428 = j__malloc_size(v33);
                          sub_1ABA7F8FC(v428);
                          swift_arrayInitWithCopy();
                        }

                        else
                        {
                          v33 = MEMORY[0x1E69E7CC0];
                        }
                      }

                      v26 = v482;
                      *(v482 + 72) = v33;
                      v352 = sub_1ABA8FA14();
                      sub_1ABB344B0(v352, v353, v354, v355);
                    }

                    else
                    {
                      sub_1ABAA54F4();
                      if (v85)
                      {
                        goto LABEL_295;
                      }

                      sub_1ABAA3DDC(v395);
                      v21 = v483;
                      v396 = sub_1ABA8FA14();
                      sub_1ABDEFF6C(v396, v397, v398, v399);
                    }

                    v400 = sub_1ABA7C72C();
                    sub_1ABDEFF58(v400, v401, v402, v403);
                    sub_1ABAA205C();
                    if (v404)
                    {
                      v21 = &v489;
                      MEMORY[0x1AC5A9410](42, 0xE100000000000000);
                      goto LABEL_234;
                    }
                  }
                }

                else
                {
                  v26 = *(v66 + 16);
                  if (!v26)
                  {
                    sub_1ABAA54F4();
                    if (v85)
                    {
                      goto LABEL_294;
                    }

                    sub_1ABAA3DDC(v380);
                    v21 = v483;
                    v381 = sub_1ABA8FA14();
                    sub_1ABDEFF6C(v381, v382, v383, v384);
                    goto LABEL_224;
                  }

                  sub_1ABAA1AB4();
                  v333 = sub_1ABA7C72C();
                  sub_1ABB344B0(v333, v334, v335, v336);
                  v337 = sub_1ABA973C8();
                  if (v337)
                  {
                    v33 = v337;
                  }

                  else
                  {
                    v23 = v26 - 1;
                    if (v26 == 1)
                    {
                      sub_1ABA97680();
                      swift_bridgeObjectRelease_n();
                      v33 = MEMORY[0x1E69E7CC0];
                      goto LABEL_223;
                    }

                    sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
                    v33 = sub_1ABAA2E14();
                    v385 = j__malloc_size(v33);
                    sub_1ABA7F8FC(v385);
                    swift_arrayInitWithCopy();
                  }

                  sub_1ABA97680();
                  swift_bridgeObjectRelease_n();
LABEL_223:
                  v26 = v482;
                  *(v482 + 72) = v33;
                  v386 = sub_1ABA8FA14();
                  sub_1ABB344B0(v386, v387, v388, v389);
LABEL_224:
                  v390 = sub_1ABA7C72C();
                  sub_1ABDEFF58(v390, v391, v392, v393);
                  sub_1ABAA205C();
                  if (v394)
                  {
                    v21 = &v489;
                    MEMORY[0x1AC5A9410](43, 0xE100000000000000);
                    goto LABEL_234;
                  }
                }
              }

              else
              {
                v26 = *(v66 + 16);
                if (!v26)
                {
                  sub_1ABAA54F4();
                  if (v85)
                  {
                    goto LABEL_293;
                  }

                  sub_1ABAA3DDC(v356);
                  v21 = v483;
                  v357 = sub_1ABA8FA14();
                  sub_1ABDEFF6C(v357, v358, v359, v360);
                  goto LABEL_216;
                }

                sub_1ABAA1AB4();
                v198 = sub_1ABA7C72C();
                sub_1ABB344B0(v198, v199, v200, v201);
                v202 = sub_1ABA973C8();
                if (v202)
                {
                  v33 = v202;
                }

                else
                {
                  v23 = v26 - 1;
                  if (v26 == 1)
                  {
                    sub_1ABA97680();
                    swift_bridgeObjectRelease_n();
                    v33 = MEMORY[0x1E69E7CC0];
                    goto LABEL_215;
                  }

                  sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
                  v33 = sub_1ABAA2E14();
                  v370 = j__malloc_size(v33);
                  sub_1ABA7F8FC(v370);
                  swift_arrayInitWithCopy();
                }

                sub_1ABA97680();
                swift_bridgeObjectRelease_n();
LABEL_215:
                v26 = v482;
                *(v482 + 72) = v33;
                v371 = sub_1ABA8FA14();
                sub_1ABB344B0(v371, v372, v373, v374);
LABEL_216:
                v375 = sub_1ABA7C72C();
                sub_1ABDEFF58(v375, v376, v377, v378);
                sub_1ABAA205C();
                if (v379)
                {
                  v21 = &v489;
                  MEMORY[0x1AC5A9410](45, 0xE100000000000000);
                  goto LABEL_234;
                }
              }
            }
          }

          continue;
        }

        v33 = *(v66 + 16);
        if (v33)
        {
          sub_1ABA84354();
          swift_unknownObjectRetain();
          v222 = sub_1ABA7C72C();
          sub_1ABB344B0(v222, v223, v224, v225);
          sub_1ABAA0FC4();

          sub_1ABAA3290();
          v26 = v482;
          if (!v187)
          {
            if (v23)
            {
              sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
              v33 = sub_1ABAA2E14();
              v425 = j__malloc_size(v33);
              sub_1ABA7F8FC(v425);
              swift_arrayInitWithCopy();
            }

            else
            {
              v33 = MEMORY[0x1E69E7CC0];
            }
          }

          *(v26 + 72) = v33;
          v226 = sub_1ABA8FA14();
          sub_1ABB344B0(v226, v227, v228, v229);
        }

        else
        {
          sub_1ABAA2A5C();
          if (v85)
          {
            goto LABEL_290;
          }

          sub_1ABAA3DDC(v281);
          v21 = v483;
          v282 = sub_1ABA8FA14();
          sub_1ABDEFF6C(v282, v283, v284, v285);
        }

        v286 = sub_1ABA7C72C();
        sub_1ABDEFF58(v286, v287, v288, v289);
        v64 = 1;
        v63 = a10;
        if (a11)
        {
          continue;
        }

        if ((a10 & 1) == 0)
        {
          goto LABEL_285;
        }

        sub_1ABAD219C(&qword_1EB4D1350, qword_1ABF68740);
        sub_1ABE27694();
        v446 = swift_allocObject();
        sub_1ABB7D790(v446, 1);
        v447 = v490;
        *v448 = v489;
        v448[1] = v447;
LABEL_271:
        swift_storeEnumTagMultiPayload();
LABEL_276:
        sub_1ABA7BC90();
        return;
      default:
        goto LABEL_274;
    }
  }
}

void sub_1ABE26428()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = type metadata accessor for KGQ.Value();
  v5 = sub_1ABA7BB64(v4);
  v133 = v6;
  v134 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v139 = (v9 - v10);
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v125 - v12;
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v128 = v1;
  v129 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v126 = v14;
LABEL_3:
    v127 = v14;
    while (1)
    {
      v131 = v3;
LABEL_5:
      v16 = *(v1 + 72);
      if (*(v16 + 16))
      {
        v18 = *(v16 + 32);
        v17 = *(v16 + 40);
        v19 = *(v16 + 48);
        v20 = *(v16 + 56);
        v21 = *(v1 + 80);
        *&v132 = *(v1 + 88);
        *(&v132 + 1) = v21;
        v130 = *(v1 + 96);
        v22 = *(v1 + 104);
        sub_1ABAA2654();
        sub_1ABB344B0(v23, v24, v25, v20);
        v26 = v22;
        v0 = v20;
        v27 = v18;
        sub_1ABDEFF58(*(&v132 + 1), v132, v130, v26);
        *(v1 + 80) = v18;
        *(v1 + 88) = v17;
        *(v1 + 96) = v19;
        *(v1 + 104) = v0;
        *&v132 = v17;
        *(&v132 + 1) = v19;
        sub_1ABAA2654();
        sub_1ABB344B0(v28, v29, v30, v0);
        v3 = v131;
      }

      else
      {
        v31 = *(v1 + 112);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          goto LABEL_79;
        }

        *(v1 + 112) = v33;
        sub_1ABDED914(&v135);
        v34 = v138;
        v27 = v135;
        v35 = v136;
        v36 = v137;
        if (v138 > 0xFBu)
        {
          sub_1ABAA2654();
          sub_1ABDEFF58(v121, v122, v123, v34);
          goto LABEL_71;
        }

        sub_1ABAA5064();
        *(v1 + 96) = v36;
        *(v1 + 104) = v34;
        sub_1ABAA2654();
        sub_1ABB344B0(v37, v38, v39, v34);
        *&v132 = v35;
        *(&v132 + 1) = v36;
        sub_1ABAA2654();
        sub_1ABB344B0(v40, v41, v42, v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3 = v131;
        v44 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ABA80F18();
          sub_1ABADC53C();
          v16 = v71;
        }

        v46 = *(v16 + 16);
        v45 = *(v16 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1ABA7BBEC(v45);
          sub_1ABADC53C();
          v16 = v72;
        }

        *(v16 + 16) = v46 + 1;
        v47 = v16 + 32 * v46;
        v48 = v132;
        *(v47 + 32) = v27;
        *(v47 + 40) = v48;
        v0 = v44;
        *(v47 + 56) = v44;
        *(v1 + 72) = v16;
      }

      if (v0 < 0xE0)
      {
        goto LABEL_29;
      }

      v49 = v0 == 224 && v27 == 6;
      if (v49 && v132 == 0)
      {
        break;
      }

      if (v0 == 224 && v27 == 7 && v132 == 0)
      {
        v81 = *(v16 + 16);
        if (v81)
        {
          v83 = *(v16 + 32);
          v82 = *(v16 + 40);
          v131 = *(v16 + 48);
          *&v132 = v82;
          v84 = *(v16 + 56);
          v85 = v81 - 1;
          if (v81 == 1)
          {
            *(&v132 + 1) = MEMORY[0x1E69E7CC0];
          }

          else
          {
            sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
            v86 = swift_allocObject();
            sub_1ABA83C70(v86);
            v86[2] = v85;
            v86[3] = v87;
            *(&v132 + 1) = v86;
            swift_arrayInitWithCopy();
          }

          v0 = v131;
          sub_1ABB344B0(v83, v132, v131, v84);

          *(v1 + 72) = *(&v132 + 1);
          sub_1ABAA5064();
          sub_1ABAA11C4();
        }

        else
        {
          v88 = *(v1 + 112);
          v32 = __OFADD__(v88, 1);
          v89 = v88 + 1;
          if (v32)
          {
            goto LABEL_82;
          }

          *(v1 + 112) = v89;
          sub_1ABDED914(&v135);
          v1 = v128;
          v90 = v137;
          v91 = v138;
          sub_1ABAA5064();
          *(v1 + 96) = v90;
          *(v1 + 104) = v91;
          v92 = sub_1ABAA46B4();
          sub_1ABDEFF6C(v92, v93, v94, v95);
        }

        v96 = sub_1ABAA46B4();
        sub_1ABDEFF58(v96, v97, v98, v99);
        v14 = 0;
        if ((v127 & 1) == 0)
        {
          goto LABEL_3;
        }

LABEL_75:
        if (*(v15 + 16))
        {
          v0 = v129;
          if (*(v129 + 16))
          {
            goto LABEL_71;
          }
        }

LABEL_79:

        sub_1ABA955B4();
        sub_1ABA7BD00();
        *v124 = 0xD000000000000031;
        *(v124 + 8) = v0;
        *(v124 + 16) = 1;
        goto LABEL_80;
      }

LABEL_29:
      LODWORD(v130) = v0;
      v53 = sub_1ABE249AC();
      if (v3)
      {
        sub_1ABAA18B4();

        goto LABEL_71;
      }

      v56 = v53;
      v0 = v54;
      v57 = v55;
      v131 = 0;
      if (sub_1ABD7738C(v53) == 0x656372756F73 && v58 == 0xE600000000000000)
      {

LABEL_37:
        v61 = 0;
        v62 = *(v0 + 16);
        while (1)
        {
          if (v62 == v61)
          {
            sub_1ABAA18B4();

            v1 = v128;
            goto LABEL_5;
          }

          if (v61 >= *(v0 + 16))
          {
            break;
          }

          sub_1ABA7AD90();
          sub_1ABB2D38C(v0 + v63 + *(v64 + 72) * v61, v13);
          sub_1ABB2D38C(v13, v139);
          if (swift_getEnumCaseMultiPayload() != 5)
          {

            v135 = 0;
            v136 = 0xE000000000000000;
            sub_1ABF24AB4();
            MEMORY[0x1AC5A9410](0xD000000000000024, 0x80000001ABF92940);
            sub_1ABF24C54();
            sub_1ABA90DFC();
            sub_1ABE27554();
            v119 = sub_1ABA7BD00();
            sub_1ABA90B04(v119, v120);
            sub_1ABAA18B4();
            sub_1ABD6DC28(v13);
            sub_1ABD6DC28(v139);
            goto LABEL_71;
          }

          v65 = *v139;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = *(v15 + 16);
            sub_1ABA7BEF0();
            sub_1ABADC7D4();
            v15 = v69;
          }

          v67 = *(v15 + 16);
          v66 = *(v15 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_1ABA7BBEC(v66);
            sub_1ABADC7D4();
            v15 = v70;
          }

          sub_1ABD6DC28(v13);
          *(v15 + 16) = v67 + 1;
          *(v15 + 8 * v67 + 32) = v65;
          ++v61;
        }

        __break(1u);
        goto LABEL_75;
      }

      v60 = sub_1ABF25054();

      if (v60)
      {
        goto LABEL_37;
      }

      v73 = swift_isUniquelyReferenced_nonNull_native();
      if ((v73 & 1) == 0)
      {
        v78 = *(v129 + 16);
        sub_1ABA7BEF0();
        sub_1ABADC630();
        v129 = v79;
      }

      v75 = *(v129 + 16);
      v74 = *(v129 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_1ABA7BBEC(v74);
        sub_1ABADC630();
        v129 = v80;
      }

      sub_1ABAA18B4();
      v76 = v129;
      *(v129 + 16) = v75 + 1;
      v77 = v76 + 24 * v75;
      *(v77 + 32) = v56;
      *(v77 + 40) = v0;
      *(v77 + 48) = v57;
      v3 = v131;
      v1 = v128;
    }

    v100 = *(v16 + 16);
    if (v100)
    {
      v101 = *(v16 + 32);
      *(&v132 + 1) = *(v16 + 40);
      v131 = *(v16 + 48);
      v102 = *(v16 + 56);
      v103 = v100 - 1;
      if (v100 == 1)
      {
        *&v132 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
        v104 = swift_allocObject();
        sub_1ABA83C70(v104);
        v104[2] = v103;
        v104[3] = v105;
        *&v132 = v104;
        swift_arrayInitWithCopy();
      }

      v0 = v131;
      sub_1ABB344B0(v101, *(&v132 + 1), v131, v102);

      *(v1 + 72) = v132;
      sub_1ABAA5064();
      sub_1ABAA11C4();
LABEL_68:
      v114 = sub_1ABAA46B4();
      sub_1ABDEFF58(v114, v115, v116, v117);
      v14 = 1;
      if ((v126 & 1) == 0)
      {
        continue;
      }

      sub_1ABA955B4();
      sub_1ABA7BD00();
      *v118 = 0xD00000000000001ALL;
      *(v118 + 8) = v0;
      *(v118 + 16) = 0;
LABEL_80:
      swift_willThrow();
LABEL_71:
      sub_1ABA7BC90();
      return;
    }

    break;
  }

  v106 = *(v1 + 112);
  v32 = __OFADD__(v106, 1);
  v107 = v106 + 1;
  if (!v32)
  {
    *(v1 + 112) = v107;
    sub_1ABDED914(&v135);
    v1 = v128;
    v108 = v137;
    v109 = v138;
    sub_1ABAA5064();
    *(v1 + 96) = v108;
    *(v1 + 104) = v109;
    v110 = sub_1ABAA46B4();
    sub_1ABDEFF6C(v110, v111, v112, v113);
    goto LABEL_68;
  }

  __break(1u);
LABEL_82:
  __break(1u);
}

uint64_t sub_1ABE26C20@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_1ABF21EB4();
  v2 = sub_1ABA7BB64(v1);
  v39 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  v9 = sub_1ABAD219C(&qword_1EB4D9138, &qword_1ABF5EB68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - v11;
  v13 = sub_1ABF21F54();
  v14 = sub_1ABA7BB64(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v22 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1ABF21F14();
  v23 = sub_1ABF21F34();
  (*(v16 + 8))(v21, v13);
  [v22 setLocale_];

  sub_1ABF21FF4();
  v24 = sub_1ABF22014();
  v25 = 0;
  if (sub_1ABA7E1E0(v12, 1, v24) != 1)
  {
    v25 = sub_1ABF22004();
    (*(*(v24 - 8) + 8))(v12, v24);
  }

  [v22 setTimeZone_];

  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  inited = swift_initStackObject();
  v27 = 0;
  *(inited + 16) = xmmword_1ABF3BFB0;
  *(inited + 32) = 0x2D4D4D2D79797979;
  *(inited + 40) = 0xEA00000000006464;
  *(inited + 48) = 0x79792D64642D4D4DLL;
  *(inited + 56) = 0xEA00000000007979;
  *(inited + 64) = 0x797979792D4D4DLL;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = 2038004089;
  *(inited + 88) = 0xE400000000000000;
  while (1)
  {
    v28 = v27 + 16;
    if (v27 == 64)
    {
      break;
    }

    v29 = inited + v27;
    v31 = *(v29 + 32);
    v30 = *(v29 + 40);

    v32 = sub_1ABA7C5D0();
    sub_1ABE275A8(v32, v33, v22);
    sub_1ABA805B4();
    v34 = sub_1ABF23BD4();
    v35 = [v22 dateFromString_];

    v27 = v28;
    if (v35)
    {
      swift_setDeallocating();
      sub_1ABB4DB5C();
      sub_1ABF21E64();

      v36 = v40;
      (*(v39 + 32))(v40, v8, v1);
      v37 = 0;
      return sub_1ABA7B9B4(v36, v37, 1, v1);
    }
  }

  swift_setDeallocating();
  sub_1ABB4DB5C();
  v37 = 1;
  v36 = v40;
  return sub_1ABA7B9B4(v36, v37, 1, v1);
}