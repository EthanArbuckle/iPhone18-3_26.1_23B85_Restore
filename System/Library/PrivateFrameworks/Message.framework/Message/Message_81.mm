uint64_t sub_1B0CB34B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v20[5] = *MEMORY[0x1E69E9840];
  result = sub_1B0CB36B4(a1, a2);
  if (v3)
  {
    goto LABEL_11;
  }

  if (result >= a2)
  {
    *a3 = 0;
    a3[1] = 0;
LABEL_11:
    v16 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (a2 + 0x4000000000000000 >= 0)
  {
    v9 = 2 * a2;
    if (2 * a2 < 0)
    {
      __break(1u);
    }

    else if (v9 + 0x4000000000000000 >= 0)
    {
      v4 = result;
      result = 4 * a2;
      if (4 * a2 <= 1024)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }

    __break(1u);
  }

  __break(1u);
LABEL_13:
  v20[0] = result;
  v17 = v9;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  result = v20[0];
  if (!isStackAllocationSafe)
  {
    v19 = swift_slowAlloc();
    sub_1B0CB378C(v19, a1, v17, a2, v4, a3);
    result = MEMORY[0x1B272C230](v19, -1, -1);
    goto LABEL_11;
  }

LABEL_7:
  MEMORY[0x1EEE9AC00](result);
  v20[1] = sub_1B0CB3848(a1, a2, v20 - v11, v10, v4);
  v20[2] = v12;
  v20[3] = v13;
  v20[4] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6068, &qword_1B0EE0A78);
  sub_1B0CB39C4();
  sub_1B0CB3A28();
  result = sub_1B0E44BD8();
  if (v15)
  {
    *a3 = result;
    a3[1] = v15;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CB36B4(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  result = unorm2_spanQuickCheckYes();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0CB378C@<X0>(void *__dst@<X0>, void *__src@<X3>, uint64_t a3@<X1>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  result = sub_1B0CB3848(__src, a4, __dst, a3, a5);
  if (!v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6068, &qword_1B0EE0A78);
    sub_1B0CB39C4();
    sub_1B0CB3A28();
    result = sub_1B0E44BD8();
    if (v9)
    {
      *a6 = result;
      a6[1] = v9;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B0CB3848(void *__src, uint64_t a2, void *__dst, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a5 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a5 && a4)
  {
    if (a5 >= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = a5;
    }

    memcpy(__dst, __src, 2 * v8);
  }

  if (a2 < a5)
  {
    goto LABEL_16;
  }

  if (a5 >> 31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a2 - a5 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if ((unorm2_normalizeSecondAndAppend() & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  result = 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B0CB39C4()
{
  result = qword_1EB6E6070;
  if (!qword_1EB6E6070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6068, &qword_1B0EE0A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6070);
  }

  return result;
}

unint64_t sub_1B0CB3A28()
{
  result = qword_1EB6DA2F8;
  if (!qword_1EB6DA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DA2F8);
  }

  return result;
}

uint64_t sub_1B0CB3A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*(a1 + 32) & 0xF0) != 0x50 || (*(a1 + 16))
  {
    goto LABEL_3;
  }

  if (sub_1B0C895C4(*a1, *(a1 + 8)) == 1819112552 && v23 == 0xE400000000000000)
  {

    v11 = 1;
    goto LABEL_4;
  }

  v25 = sub_1B0E46A78();

  if (v25)
  {
    v11 = 1;
  }

  else
  {
LABEL_3:
    v11 = 0;
  }

LABEL_4:
  v12 = sub_1B0C7E938();
  v14 = v13;
  v16 = v15;
  sub_1B0C7DD1C(a1);
  if (!a4 || a3 == a2 || (v18 = sub_1B0CB2450(v12, v14, v16 & 1, (a4 + a2), a4 + a3, v11, a6)) == 0)
  {

    return 0;
  }

  v19 = v18;
  swift_beginAccess();
  v20 = a6[3];
  if (!v20)
  {

    result = sub_1B0CB31A4("utf-8", a6);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    a6[3] = result;
  }

  v21 = swift_endAccess();
  if (v20 == v19)
  {
    v22 = sub_1B0E44C68();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21);
    v22 = sub_1B0C78104(v19, a6, sub_1B0CACFA8);
  }

  return v22;
}

uint64_t sub_1B0CB3CC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  isStackAllocationSafe = sub_1B0E45DC8();
  if (isStackAllocationSafe + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (2 * isStackAllocationSafe < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (2 * isStackAllocationSafe + 0x4000000000000000 < 0)
  {
    goto LABEL_13;
  }

  if (4 * isStackAllocationSafe < 1025)
  {
    goto LABEL_5;
  }

LABEL_9:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_5:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    result = sub_1B0CB47A0((v15 - v10), a1, a2, a3, a4);
    if (v4)
    {
      result = swift_willThrow();
    }

    goto LABEL_7;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1B0CB47A0(v13, a1, a2, a3, a4);
  result = MEMORY[0x1B272C230](v13, -1, -1);
  if (!v4)
  {
    result = v14;
  }

LABEL_7:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0CB3E60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v9 = *a1;
  ucnv_setFallback();
  if (a2)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  result = sub_1B0CB3EE4(a2, v10, 1, v9, a1, 1);
  if (!v4)
  {
    v12 = a1[3];
    *a4 = a1[2];
    a4[1] = v12;
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0CB3EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v29 = a6;
  v30 = a3;
  v28 = a5;
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  v8 = 0;
  v35 = 0;
  v36 = v6;
  v37 = a1;
  v38 = a2;
  while (1)
  {
    v9 = v37;
    if (v37)
    {
      v10 = v38 - v37;
    }

    else
    {
      v10 = 0;
    }

    if ((v8 & 0x8000000000000000) != 0 || v10 < v8)
    {
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
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
    }

    if ((v6 & 0x8000000000000000) != 0 || v10 < v6)
    {
      goto LABEL_45;
    }

    MinCharSize = ucnv_getMinCharSize();
    if (!MinCharSize)
    {
      goto LABEL_46;
    }

    v12 = (v6 - v8) / MinCharSize;
    v13 = __OFADD__(v12, 3);
    v14 = v12 + 3;
    if (v13)
    {
      goto LABEL_47;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_48;
    }

    v15 = 2 * v14;
    if (2 * v14 < 0)
    {
      goto LABEL_54;
    }

    if (v15 >= 1025)
    {
      MinCharSize = swift_stdlib_isStackAllocationSafe();
      if ((MinCharSize & 1) == 0)
      {
        v23 = swift_slowAlloc();
        v24 = v31;
        sub_1B0CB4200(&v35, v23, v23 + v15, v30 & 1, a4, v28, v29 & 1);
        result = MEMORY[0x1B272C230](v23, -1, -1);
        if (v24)
        {
          goto LABEL_43;
        }

        v31 = 0;
        v21 = v35;
        v6 = v36;
        goto LABEL_36;
      }
    }

    MEMORY[0x1EEE9AC00](MinCharSize);
    v17 = &v27 - v16;
    v18 = v9 ? v9 + v8 : 0;
    v33 = v18;
    v34 = &v27 - v16;
    v32 = 0;
    result = ucnv_toUnicode();
    if (v33)
    {
      v20 = v33 - v18;
      if (!v18)
      {
        v20 = 0;
      }

      v21 = v8 + v20;
      if (__OFADD__(v8, v20))
      {
        goto LABEL_49;
      }

      if ((v21 & 0x8000000000000000) != 0 || v10 < v21)
      {
        goto LABEL_50;
      }

      if (v6 < v21)
      {
        goto LABEL_51;
      }

      if (v21 < v8)
      {
        goto LABEL_52;
      }

      v35 = v8 + v20;
      v36 = v6;
    }

    else
    {
      v21 = v8;
    }

    if (v32 != 15 && v32 > 0)
    {
      break;
    }

    if (v34)
    {
      if (v34 - v17 < -1)
      {
        goto LABEL_53;
      }

      v22 = v31;
      result = sub_1B0CB43F8(v17, (v34 - v17) / 2, v28, v29 & 1);
      v31 = v22;
      if (v22)
      {
        goto LABEL_42;
      }
    }

LABEL_36:
    v8 = v21;
    if (v21 == v6)
    {
      goto LABEL_43;
    }
  }

  sub_1B0C826F8();
  swift_allocError();
  *v25 = 1;
  *(v25 + 4) = 1;
  swift_willThrow();
LABEL_42:
  result = swift_willThrow();
LABEL_43:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0CB4200(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  if (v13)
  {
    v15 = v13 + *a1;
  }

  else
  {
    v15 = 0;
  }

  ucnv_toUnicode();
  if (v15)
  {
    v16 = v14 - v13;
    if (!v13)
    {
      v16 = 0;
    }

    if (v12 < 0 || v16 < v12)
    {
      __break(1u);
    }

    else if (v11 >= v12)
    {
      *a1 = v12;
      a1[1] = v11;
      a1[2] = v13;
      a1[3] = v14;
      goto LABEL_11;
    }

    __break(1u);
    __break(1u);
    goto LABEL_21;
  }

LABEL_11:
  if (!a2)
  {
LABEL_17:
    result = 1;
    goto LABEL_18;
  }

  if (a2)
  {
    if (a2 - a2 >= -1)
    {
      v17 = (a2 - a2) / 2;
      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
  }

  v17 = 0;
LABEL_16:
  result = sub_1B0CB43F8(a2, v17, a6, a7 & 1);
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0CB43F8(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = result;
  if ((*(a3 + 13) & 1) == 0 && (a4 & 1) != 0 && a2 >= 201)
  {
    v23 = result;
    v24 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6078, &qword_1B0EE0A80);
    sub_1B0CB473C();
    sub_1B0CB3A28();
    result = sub_1B0E44BD8();
    if (!v6)
    {
      goto LABEL_42;
    }

    MEMORY[0x1B2726E80](result);
  }

  *(a3 + 13) = 1;
  if (result)
  {
    v7 = (result + 2 * a2);
  }

  else
  {
    v7 = 0;
  }

  while (1)
  {
    LODWORD(v11) = *(a3 + 8);
    v12 = *(a3 + 12);
    v25 = v11;
    v26 = v12;
    if (v12)
    {
      break;
    }

    if (!v5 || v5 == v7)
    {
      v14 = v11;
LABEL_40:
      *(a3 + 8) = v14;
      *(a3 + 12) = 0;
      return result;
    }

    result = *v5;
    v13 = v5 + 1;
    if ((*v5 & 0xF800) != 0xD800)
    {
      v8 = 0;
      ++v5;
      goto LABEL_10;
    }

    LODWORD(v11) = v11 & 0xFFFF0000 | result;
    v12 = 16;
    ++v5;
    if (v13 == v7)
    {
LABEL_27:
      v14 = v11;
      goto LABEL_28;
    }

LABEL_16:
    v5 = v13 + 1;
    v14 = (*v13 << v12) | ((-65535 << v12) - 1) & v11;
    v15 = v12 + 16;
    if ((v12 + 16) >= 0x20u)
    {
      goto LABEL_23;
    }

    if (v5 == v7)
    {
      goto LABEL_21;
    }

    v5 = v13 + 2;
    v14 = (v13[1] << v15) | ((-65535 << v15) - 1) & v14;
    v15 = v12 + 32;
    if (v12 < 0xE0)
    {
LABEL_23:
      LOBYTE(v12) = v15;
    }

    else if (v5 == v7 || (v5 = v13 + 3, v14 = (v13[2] << v12) | ((-65535 << v12) - 1) & v14, v15 = v12 + 48, LOBYTE(v12) = v12 + 48, v12 < 0x20u))
    {
LABEL_21:
      LOBYTE(v12) = v15;
      if (!v15)
      {
        goto LABEL_40;
      }
    }

LABEL_28:
    v16 = v14 & 0xFC00FC00;
    if ((v14 & 0xFC00FC00) == 0xDC00D800)
    {
      v17 = 32;
    }

    else
    {
      v17 = 16;
    }

    v8 = v12 - v17;
    v18 = v16 == -603924480;
    if (v16 == -603924480)
    {
      v19 = 32;
    }

    else
    {
      v19 = 16;
    }

    v11 = v14 >> v19;
    if (!v18)
    {
      *(a3 + 8) = v11;
      *(a3 + 12) = v8;
      sub_1B0C826F8();
      swift_allocError();
      *v22 = 0;
      *(v22 + 4) = 1;
      return swift_willThrow();
    }

LABEL_10:
    *(a3 + 8) = v11;
    *(a3 + 12) = v8;
    v9 = *(a3 + 24);
    v23 = *(a3 + 16);
    v24 = v9;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0xE000000000000000;
    result = sub_1B0E44C58();
    v10 = v24;
    *(a3 + 16) = v23;
    *(a3 + 24) = v10;
  }

  if ((v11 & 0xF800) == 0xD800)
  {
    if (!v5)
    {
      goto LABEL_27;
    }

    v13 = v5;
    if (v5 == v7)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  sub_1B0C16CB8();
  result = sub_1B0C14AB0();
  v21 = *(v20 + 4);
  if (v21)
  {
    *v20 = *(v20 + 2);
    *(v20 + 4) = v21 - 16;
    (result)(&v23, 0);
    LODWORD(v11) = v25;
    v8 = v26;
    goto LABEL_10;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_1B0CB473C()
{
  result = qword_1EB6DB6E0;
  if (!qword_1EB6DB6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6078, &qword_1B0EE0A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB6E0);
  }

  return result;
}

unint64_t sub_1B0CB47A0(_WORD *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3 >> 14;
  v31 = a2 >> 14;
  if (a2 >> 14 == a3 >> 14)
  {
    v8 = 0;
    goto LABEL_54;
  }

  v11 = a2;
  v27 = v5;
  v12 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  v28 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v29 = a5 & 0xFFFFFFFFFFFFFFLL;
  v14 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a5) & 0xF;
  }

  v30 = v14;
  v26 = (a1 + 1);
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = 0;
  v35 = v13;
  do
  {
    v16 = v11 & 0xC;
    v17 = (v11 & 1) == 0 || v16 == v13;
    v18 = v17;
    if (v17)
    {
      result = v11;
      if (v16 == v13)
      {
        result = sub_1B0A6D6C4(v11, a4, a5);
      }

      if (result >> 14 < v31 || result >> 14 >= v7)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        return result;
      }

      if ((result & 1) == 0)
      {
        sub_1B0C04F4C(result, a4, a5);
      }
    }

    else
    {
      if (v11 >> 14 < v31)
      {
        goto LABEL_58;
      }

      result = v11;
      if (v11 >> 14 >= v7)
      {
        goto LABEL_58;
      }
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      result = sub_1B0E46288();
      v19 = result;
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v32 = a4;
        v33 = v29;
      }

      else if ((a4 & 0x1000000000000000) == 0)
      {
        sub_1B0E46368();
      }

      result = sub_1B0E46378();
      v19 = result;
      if (!v18)
      {
LABEL_29:
        if (v30 <= v11 >> 16)
        {
          goto LABEL_60;
        }

LABEL_37:
        if ((a5 & 0x1000000000000000) != 0)
        {
          goto LABEL_47;
        }

        goto LABEL_38;
      }
    }

    if (v16 == v35)
    {
      result = sub_1B0A6D6C4(v11, a4, a5);
      v11 = result;
    }

    if (v30 <= v11 >> 16)
    {
      goto LABEL_59;
    }

    if (v11)
    {
      goto LABEL_37;
    }

    result = sub_1B0C04F4C(v11, a4, a5);
    v11 = v11 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a5 & 0x1000000000000000) != 0)
    {
LABEL_47:
      result = sub_1B0E44C18();
      v11 = result;
      goto LABEL_48;
    }

LABEL_38:
    v20 = v11 >> 16;
    if ((a5 & 0x2000000000000000) != 0)
    {
      v32 = a4;
      v33 = v29;
      v21 = *(&v32 + v20);
    }

    else
    {
      result = v28;
      if ((a4 & 0x1000000000000000) == 0)
      {
        result = sub_1B0E46368();
      }

      v21 = *(result + v20);
    }

    v22 = v21;
    v23 = __clz(v21 ^ 0xFF) - 24;
    if (v22 >= 0)
    {
      LOBYTE(v23) = 1;
    }

    v11 = ((v20 + v23) << 16) | 5;
LABEL_48:
    if (v19 >= 0x10000)
    {
      a1[v8] = ((v19 + 983040) >> 10) & 0x3FF | 0xD800;
      v19 = (((v19 + 983040) >> 10) & 0x3FF | ((v19 & 0x3FF) << 16) | 0xDC00D800) >> 16;
      v24 = v26;
      v25 = 2;
    }

    else
    {
      v24 = a1;
      v25 = 1;
    }

    v24[v8] = v19;
    v8 += v25;
    v13 = v35;
  }

  while (v7 != v11 >> 14);

  v5 = v27;
  if (v8 < 0)
  {
    goto LABEL_61;
  }

LABEL_54:
  result = sub_1B0CB34B0(a1, v8, &v34);
  if (!v5)
  {
    return v34;
  }

  return result;
}

uint64_t sub_1B0CB4AF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result == a2)
  {
LABEL_2:
    if (result == a2)
    {
      return result;
    }

    v4 = a4 - a3;
    if (!a3)
    {
      v4 = 0;
    }

    while (1)
    {
      v5 = a2 - 1;
      if (__OFSUB__(a2, 1))
      {
        break;
      }

      if (v5 >= a2 || v5 < result || v5 < 0 || v5 >= v4)
      {
        goto LABEL_28;
      }

      v6 = *(a3 + v5);
      v7 = v6 > 0x20;
      v8 = (1 << v6) & 0x100002600;
      if (!v7 && v8 != 0)
      {
        --a2;
        if (result != v5)
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
    if (a2 <= result)
    {
      v10 = result;
    }

    else
    {
      v10 = a2;
    }

    while (v10 != result)
    {
      v11 = *(a3 + result);
      v7 = v11 > 0x20;
      v12 = (1 << v11) & 0x100002600;
      if (v7 || v12 == 0)
      {
        goto LABEL_2;
      }

      if (a2 == ++result)
      {
        return a2;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B0CB4BC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result == a2)
  {
    v4 = 0;
    return v4 | ((result == a2) << 8);
  }

  v5 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = a4 - a3;
    if (!a3)
    {
      v6 = 0;
    }

    if (v5 < a2 && v5 >= result && (v5 & 0x8000000000000000) == 0 && v5 < v6)
    {
      v4 = *(a3 + v5);
      return v4 | ((result == a2) << 8);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0CB4C28(unint64_t result, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a6)
  {
    v7 = a7 - a6;
  }

  else
  {
    v7 = 0;
  }

  if (a4 < 0 || v7 < a4)
  {
    goto LABEL_18;
  }

  if ((a5 & 0x8000000000000000) != 0 || v7 < a5)
  {
    goto LABEL_19;
  }

  if ((a5 - a4) < a2)
  {
    return 0;
  }

  v8 = a4 + a2;
  if (__OFADD__(a4, a2))
  {
    goto LABEL_20;
  }

  if ((v8 & 0x8000000000000000) != 0 || v7 < v8)
  {
    goto LABEL_21;
  }

  if (v8 < a4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 <= a5)
  {
    return sub_1B0CB4CAC(result, a2, a3, a4, a4 + a2, a6, a7, v8);
  }

LABEL_23:
  __break(1u);
  return result;
}

BOOL sub_1B0CB4CAC@<W0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  if (a3)
  {
    a8 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      a8 = a1 & 0xFFFFF800;
      v15 = 55296;
      if (a8 == 55296)
      {
        __break(1u);
LABEL_55:
        v27 = (v15 | (a1 >> 6) & 0x3F) << 8;
        v28 = (a1 >> 18) + ((v27 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v29 = (a1 >> 12) + v27 + 8487393;
        if (a8)
        {
          v16 = v28;
        }

        else
        {
          v16 = v29;
        }

LABEL_26:
        v17 = 4 - (__clz(v16) >> 3);
        v30 = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * v17));
        v18 = &v30;
        v19 = &v30 | v17;
        a8 = a7 - a6;
        if (a6)
        {
          v20 = a7 - a6;
        }

        else
        {
          v20 = 0;
        }

        v21 = a4;
        while (1)
        {
          if (v21 == a5)
          {
            v22 = 0;
            v23 = a5;
            if (v19 != v18)
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v21 < a4 || v21 >= a5)
            {
              goto LABEL_47;
            }

            if (v21 < 0 || v21 >= v20)
            {
              goto LABEL_48;
            }

            v23 = v21 + 1;
            v22 = *(a6 + v21) | 0x20;
            if (v19 != v18)
            {
LABEL_32:
              v25 = (v18 + 1);
              v24 = *v18;
              if (v21 == a5)
              {
                return v19 == v18;
              }

              goto LABEL_40;
            }
          }

          v24 = 0;
          v25 = v18;
          if (v21 == a5)
          {
            return v19 == v18;
          }

LABEL_40:
          a8 = 0;
          if (v19 != v18)
          {
            v18 = v25;
            v21 = v23;
            if (v22 == v24)
            {
              continue;
            }
          }

          return a8;
        }
      }

      a8 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v16 = a1 + 1;
          goto LABEL_26;
        }

        goto LABEL_52;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      v15 = (a1 & 0x3F) << 8;
      if (a1 < 0x800)
      {
        v16 = (a1 >> 6) + v15 + 33217;
        goto LABEL_26;
      }

      goto LABEL_55;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (!a1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v8 = a1 + a2;
  a8 = a7 - a6;
  if (a6)
  {
    v9 = a7 - a6;
  }

  else
  {
    v9 = 0;
  }

  v10 = a4;
  do
  {
    if (v10 == a5)
    {
      v11 = 0;
      v12 = a5;
      goto LABEL_14;
    }

    if (v10 < a4 || v10 >= a5)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v10 < 0 || v10 >= v9)
    {
      goto LABEL_46;
    }

    v12 = v10 + 1;
    v11 = *(a6 + v10) | 0x20;
LABEL_14:
    a8 = v8 == a1;
    if (v8 == a1)
    {
      v13 = 0;
      v14 = a1;
      if (v10 == a5)
      {
        return a8;
      }
    }

    else
    {
      v14 = a1 + 1;
      v13 = *a1;
      if (v10 == a5)
      {
        return a8;
      }
    }

    a8 = 0;
    if (v8 == a1)
    {
      break;
    }

    a1 = v14;
    v10 = v12;
  }

  while (v11 == v13);
  return a8;
}

uint64_t sub_1B0CB4F08(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result)
  {
    v3 = a2 - result;
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
    v4 = a3(0);
    if (v5)
    {
      return v5 + v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0CB4F5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result == a2)
  {
LABEL_2:
    if (result == a2)
    {
      return result;
    }

    v4 = a4 - a3;
    if (!a3)
    {
      v4 = 0;
    }

    while (1)
    {
      v5 = a2 - 1;
      if (__OFSUB__(a2, 1))
      {
        break;
      }

      if (v5 >= a2 || v5 < result || v5 < 0 || v5 >= v4)
      {
        goto LABEL_30;
      }

      v6 = *(a3 + v5);
      if (v6 == 32 || v6 == 9)
      {
        --a2;
        if (result != v5)
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
    if (a2 <= result)
    {
      v8 = result;
    }

    else
    {
      v8 = a2;
    }

    while (v8 != result)
    {
      v9 = *(a3 + result);
      if (v9 != 32 && v9 != 9)
      {
        goto LABEL_2;
      }

      if (a2 == ++result)
      {
        return a2;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1B0CB5000(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a4 - a3;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < 0)
  {
    goto LABEL_44;
  }

  v8 = 0;
  if (!v7)
  {
LABEL_33:
    if (result)
    {
      v16 = v8 + result;
    }

    else
    {
      v16 = 0;
    }

    if (result)
    {
      v17 = v8;
    }

    else
    {
      v17 = 0;
    }

    return sub_1B0CAE440(0, v17, result, v16, a5, a6, a7);
  }

  v9 = 0;
  while (1)
  {
    if (v7 < v9 + 1)
    {
      goto LABEL_42;
    }

    v10 = *(a3 + v9);
    if (v10 == 37)
    {
      break;
    }

    ++v9;
LABEL_30:
    *(result + v8) = v10;
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_43;
    }

    if (v9 == v7)
    {
      goto LABEL_32;
    }
  }

  if (v9 + 1 == v7)
  {
LABEL_32:
    if (v8 < 0)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  v9 += 3;
  while (v7 >= v9 - 1)
  {
    if (v9 - v7 == 1)
    {
      goto LABEL_32;
    }

    if (v7 < v9)
    {
      goto LABEL_41;
    }

    v11 = *(a3 + v9 - 2);
    v12 = *(a3 + v9 - 1);
    if ((v11 - 58) > 0xF5u)
    {
      v13 = -48;
    }

    else if ((v11 - 71) > 0xF9u)
    {
      v13 = -55;
    }

    else
    {
      if ((v11 - 103) <= 0xF9u)
      {
        goto LABEL_23;
      }

      v13 = -87;
    }

    if ((v12 - 58) > 0xF5u)
    {
      v14 = -48;
LABEL_29:
      LOBYTE(v10) = (v12 + v14) | (16 * (v11 + v13));
      goto LABEL_30;
    }

    if ((v12 - 71) > 0xF9u)
    {
      v14 = -55;
      goto LABEL_29;
    }

    if ((v12 - 103) >= 0xFAu)
    {
      v14 = -87;
      goto LABEL_29;
    }

LABEL_23:
    v9 += 2;
    if (v9 - v7 == 2)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1B0CB518C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, _BYTE *a8@<X8>, void *a9, uint64_t a10)
{
  v12 = sub_1B0CB5490(a1, a2, a3, a4, a5, a6 & 1, a7, a9, a10);

  if (!v10)
  {
    *a8 = v12 & 1;
  }

  return result;
}

uint64_t sub_1B0CB521C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
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
LABEL_90:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v7 = result;
    result = 0;
    while (1)
    {
      if (result != v4)
      {
        if (v4 <= result)
        {
          v8 = result;
        }

        else
        {
          v8 = v4;
        }

        v9 = result;
        while (v8 != v9)
        {
          v10 = *(v7 + v9);
          if (v10 == 13 || v10 == 10)
          {
            v12 = 0;
            if (v9 < result)
            {
              goto LABEL_81;
            }

            goto LABEL_22;
          }

          if (v4 == ++v9)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_78;
      }

LABEL_19:
      v12 = 1;
      v9 = v4;
      if (v4 < result)
      {
        goto LABEL_81;
      }

LABEL_22:
      if (v4 < v9)
      {
        goto LABEL_82;
      }

      if (result == v9)
      {
        v13 = 0;
      }

      else
      {
        v14 = v9 - 1;
        if (__OFSUB__(v9, 1))
        {
          goto LABEL_87;
        }

        if (v14 >= v9 || v14 >= v4 || v14 < result)
        {
          goto LABEL_88;
        }

        v15 = *(v7 + v14);
        v13 = v15 == 32 || v15 == 9;
      }

      v17 = sub_1B0C772B0(result, v9, v7, a2, a4 & 1);
      MEMORY[0x1B2726E80](v17);

      v18 = v9;
      if ((v12 & 1) == 0)
      {
        while (1)
        {
          if (v4 == v18)
          {
            __break(1u);
            goto LABEL_77;
          }

          v19 = *(v7 + v18);
          if (v19 != 13 && v19 != 10)
          {
            break;
          }

          if (v4 == ++v18)
          {
            v18 = v4;
            break;
          }
        }

        v21 = v18 < v9;
        v9 = v18;
        if (v21)
        {
          goto LABEL_80;
        }
      }

      if (v4 < v9)
      {
        goto LABEL_83;
      }

      if (v13)
      {
        break;
      }

      result = v4;
      v24 = v9;
      if (v9 != v4)
      {
        while (1)
        {
          if (v4 == v24)
          {
            goto LABEL_79;
          }

          v25 = *(v7 + v24);
          if (v25 != 32 && v25 != 9)
          {
            break;
          }

          if (v4 == ++v24)
          {
            result = v4;
            if (v4 < v9)
            {
              goto LABEL_86;
            }

            goto LABEL_70;
          }
        }

        result = v24;
        if (v24 < v9)
        {
          goto LABEL_86;
        }

LABEL_70:
        if (v4 < result)
        {
          goto LABEL_89;
        }
      }

      if (v9 < result)
      {
        v21 = result-- < 1;
        if (v21)
        {
          __break(1u);
          return result;
        }
      }

LABEL_7:
      if (result == v4)
      {
        return result;
      }
    }

    result = v9;
    if (v9 == v4)
    {
      return result;
    }

    while (v4 != result)
    {
      v22 = *(v7 + result);
      if (v22 != 32 && v22 != 9)
      {
        goto LABEL_56;
      }

      if (v4 == ++result)
      {
        result = v4;
LABEL_56:
        if (result < v9)
        {
          goto LABEL_84;
        }

        if (v4 >= result)
        {
          goto LABEL_7;
        }

        goto LABEL_85;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  return result;
}

uint64_t sub_1B0CB5490(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void *a8, uint64_t a9)
{
  if (a2)
  {
    v9 = a3 - a2;
  }

  else
  {
    v9 = 0;
  }

  if (v9 < 0)
  {
    goto LABEL_40;
  }

  v14 = 0;
  if (!v9)
  {
LABEL_33:
    v22 = v14 + result;
    if (!result)
    {
      v22 = 0;
      v14 = 0;
    }

    v24[0] = 0;
    v24[1] = v14;
    v24[2] = result;
    v24[3] = v22;
    v25 = 0;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v23 = sub_1B0CAF08C(v24, a4, a5, a6 & 1, a8, a9);

    return v23 & 1;
  }

  v15 = 0;
  while (1)
  {
    if (v9 < v15 + 1)
    {
      goto LABEL_38;
    }

    v16 = *(a2 + v15);
    if (v16 == 37)
    {
      break;
    }

    ++v15;
LABEL_30:
    *(result + v14) = v16;
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_39;
    }

    if (v15 == v9)
    {
      goto LABEL_32;
    }
  }

  if (v15 + 1 == v9)
  {
LABEL_32:
    if (v14 < 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v15 += 3;
  while (v9 >= v15 - 1)
  {
    if (v15 - v9 == 1)
    {
      goto LABEL_32;
    }

    if (v9 < v15)
    {
      goto LABEL_37;
    }

    v17 = *(a2 + v15 - 2);
    v18 = *(a2 + v15 - 1);
    if ((v17 - 58) > 0xF5u)
    {
      v19 = -48;
    }

    else if ((v17 - 71) > 0xF9u)
    {
      v19 = -55;
    }

    else
    {
      if ((v17 - 103) <= 0xF9u)
      {
        goto LABEL_23;
      }

      v19 = -87;
    }

    if ((v18 - 58) > 0xF5u)
    {
      v20 = -48;
LABEL_29:
      LOBYTE(v16) = (v18 + v20) | (16 * (v17 + v19));
      goto LABEL_30;
    }

    if ((v18 - 71) > 0xF9u)
    {
      v20 = -55;
      goto LABEL_29;
    }

    if ((v18 - 103) >= 0xFAu)
    {
      v20 = -87;
      goto LABEL_29;
    }

LABEL_23:
    v15 += 2;
    if (v15 - v9 == 2)
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_1B0CB569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, uint64_t a8)
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = a8;
  if (a1)
  {
    v16 = a2 - a1;
    if (a2 - a1 < 0)
    {
      __break(1u);
    }

    v17 = v8;
    swift_bridgeObjectRetain_n();
    isStackAllocationSafe = swift_retain_n();
    if (v16 >= 1025)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v19 = swift_slowAlloc();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        sub_1B0CB518C(v19, a1, a2, a3, a4, a5 & 1, a6, &v29, a7, v28);
        MEMORY[0x1B272C230](v19, -1, -1);
        if (!v17)
        {

          v20 = v29;
LABEL_12:

          result = v20 & 1;
          goto LABEL_13;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
    swift_bridgeObjectRetain_n();
    isStackAllocationSafe = swift_retain_n();
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v22 = v27 - v21;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v23 = v22;
  v24 = v27[1];
  v20 = sub_1B0CB5490(v23, a1, a2, a3, a4, a5 & 1, a6, a7, v28);

  if (!v24)
  {

    goto LABEL_12;
  }

  swift_willThrow();
LABEL_10:

LABEL_13:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0CB5900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1B0E46D98();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v44 = 0xE000000000000000;
  v12 = sub_1B0433338(a1, a2, a3, a4);
  result = MEMORY[0x1B2726D20](v12);
  v14 = 0;
  LODWORD(v15) = 0;
  v16 = 0;
  v17 = a4 - a3;
  if (!a3)
  {
    v17 = 0;
  }

  v37 = a3;
  v38 = v17;
  v18 = (v8 + 8);
  v32 = 8 * a2;
  v35 = xmmword_1B0EE0600;
  v34 = xmmword_1B0EE0610;
  v33 = xmmword_1B0EE0620;
  v19 = a1;
  v20 = a1;
  while (1)
  {
    while (1)
    {
      v21 = v14;
      v41 = v15;
      v42 = v16;
      if (!v16)
      {
        break;
      }

      if ((v15 & 0x80) == 0)
      {
        sub_1B0CB1F34();
        v30 = sub_1B0C14AB0();
        sub_1B0CB1F88(0);
        (v30)(&v39, 0);
        goto LABEL_53;
      }

LABEL_13:
      if (v20 == a2)
      {
        v20 = a2;
        goto LABEL_49;
      }

      if (v20 < v19 || v20 >= a2)
      {
        goto LABEL_71;
      }

      if (v20 < 0 || v20 >= v38)
      {
        goto LABEL_72;
      }

      v23 = v20 + 1;
      LODWORD(v15) = (*(v37 + v20) << v16) | ((-255 << v16) - 1) & v15;
      v24 = v16 + 8;
      if ((v16 + 8) > 0x1Fu)
      {
LABEL_47:
        v16 = v24;
LABEL_48:
        v20 = v23;
        goto LABEL_49;
      }

      if (v23 != a2)
      {
        if (v20 < v19 || v23 >= a2)
        {
          goto LABEL_71;
        }

        if (v20 < 0 || v23 >= v38)
        {
          goto LABEL_72;
        }

        v25 = *(v37 + v23);
        v23 = v20 + 2;
        LODWORD(v15) = (v25 << v24) | ((-255 << v24) - 1) & v15;
        v24 = v16 + 16;
        if ((v16 + 16) > 0x1Fu)
        {
          goto LABEL_47;
        }

        if (v23 != a2)
        {
          if (v20 < v19 || v23 >= a2)
          {
            goto LABEL_71;
          }

          if (v20 < 0 || v23 >= v38)
          {
            goto LABEL_72;
          }

          v26 = *(v37 + v23);
          v23 = v20 + 3;
          LODWORD(v15) = (v26 << v24) | ((-255 << v24) - 1) & v15;
          v24 = v16 + 24;
          if ((v16 + 24) > 0x1Fu)
          {
            goto LABEL_47;
          }

          if (v23 != a2)
          {
            if (v20 < v19 || v23 >= a2)
            {
              goto LABEL_71;
            }

            if (v20 < 0 || v23 >= v38)
            {
              goto LABEL_72;
            }

            v27 = *(v37 + v23);
            v23 = v20 + 4;
            LODWORD(v15) = (v27 << v24) | ((-255 << v24) - 1) & v15;
            if (v16 < 0xE0u)
            {
              v16 += 32;
              goto LABEL_48;
            }

            if (v23 != a2)
            {
              if (v20 < v19 || v23 >= a2)
              {
                goto LABEL_71;
              }

              if (v20 < 0 || v23 >= v38)
              {
                goto LABEL_72;
              }

              LODWORD(v15) = (*(v37 + v23) << v16) | ((-255 << v16) - 1) & v15;
              if ((v16 + 40) >= 0x20u)
              {
                v20 += 5;
                v16 += 40;
                goto LABEL_49;
              }
            }
          }
        }
      }

      v16 = v32 + v16 - 8 * v20;
      v20 = a2;
      if (!v16)
      {
        return v43;
      }

LABEL_49:
      if ((v15 & 0xC0E0) == 0x80C0)
      {
        if ((v15 & 0x1E) != 0)
        {
          v28 = 16;
LABEL_52:
          v41 = v15 >> v28;
          v42 = v16 - v28;
          goto LABEL_53;
        }
      }

      else if ((v15 & 0xC0C0F0) == 0x8080E0)
      {
        if ((v15 & 0x200F) != 0 && (v15 & 0x200F) != 0x200D)
        {
          v28 = 24;
          goto LABEL_52;
        }
      }

      else if ((v15 & 0xC0C0C0F8) == 0x808080F0 && (v15 & 0x3007) != 0 && __rev16(v15 & 0x3007) <= 0x400)
      {
        v28 = 32;
        goto LABEL_52;
      }

      result = sub_1B0E46D58();
      v14 = 0;
      v15 = v15 >> ((8 * result) & 0x38);
      v16 -= 8 * result;
    }

    if (v20 == a2)
    {
      return v43;
    }

    if (v20 < v19 || v20 >= a2)
    {
      break;
    }

    if (v20 < 0 || v20 >= v38)
    {
      goto LABEL_70;
    }

    v22 = *(v37 + v20++);
    if ((v22 & 0x80) != 0)
    {
      LODWORD(v15) = v15 & 0xFFFFFF00 | v22;
      v16 = 8;
      goto LABEL_13;
    }

LABEL_53:
    LODWORD(v15) = v41;
    v16 = v42;
    sub_1B0E46DA8();
    v29 = sub_1B0E46D88();
    result = (*v18)(v11, v36);
    if (v29)
    {
      v14 = 1;
      if ((v21 & 1) == 0)
      {
        result = MEMORY[0x1B2726E80](32, 0xE100000000000000);
        v14 = 1;
      }
    }

    else
    {
      v39 = v43;
      v40 = v44;
      result = sub_1B0E44C58();
      v14 = 0;
      v43 = v39;
      v44 = v40;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1B0CB5F18()
{
  v1 = v0[1] >> 14;
  if (v1 == *v0 >> 14)
  {
    return 0;
  }

  v4 = v0[2];
  v3 = v0[3];
  v5 = *v0;
  v6 = v0[1];
  v7 = sub_1B0E45E18();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = sub_1B0E45DD8();

  if (v1 < v8 >> 14)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1B0E45E28();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    *v0 = v9;
    v0[1] = v11;
    v0[2] = v13;
    v0[3] = v15;
    return v7;
  }

  return result;
}

uint64_t sub_1B0CB6010()
{
  v18 = v0[1];
  v19 = *v0;
  v17 = v0[2];
  v20 = v0[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0CB5F18();

  v1 = v0[1] >> 14;
  if (v1 == *v0 >> 14)
  {
    goto LABEL_10;
  }

  v3 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  while (sub_1B0E45E18() != 93 || v5 != 0xE100000000000000)
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      goto LABEL_9;
    }

    if (v1 == sub_1B0E45DD8() >> 14)
    {
      goto LABEL_10;
    }
  }

LABEL_9:
  v7 = sub_1B0E45DD8() >> 14;
  if (v1 < v7)
  {
LABEL_10:

    return 0;
  }

  else
  {
    v9 = sub_1B0E45E28();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    *v0 = v9;
    v0[1] = v11;
    result = v19;
    v0[2] = v13;
    v0[3] = v15;
    if (v7 >= v19 >> 14)
    {
      v16 = sub_1B0E45E28();

      return v16;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1B0CB61E0()
{
  v2 = *v0;
  v1 = v0[1];
  if ((v1 ^ *v0) < 0x4000)
  {
    return;
  }

  v4 = v0[2];
  v3 = v0[3];
  v5 = *v0;
  v6 = v0[1];
  if (sub_1B0E45E18() == 91 && v7 == 0xE100000000000000)
  {
  }

  else
  {
    v9 = sub_1B0E46A78();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  v32 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0CB5F18();

  v11 = *v0;
  v10 = v0[1];
  v12 = v0[3];
  if ((v10 ^ *v0) < 0x4000)
  {
LABEL_36:

    *v0 = v2;
    v0[1] = v1;
    v0[2] = v32;
    v0[3] = v3;
    return;
  }

  v30 = v2;
  v31 = v1;
  v13 = 0;
  v14 = v0[2];
  while (v10 >> 14 != v11 >> 14)
  {
    v15 = sub_1B0E45E18();
    v17 = v16;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = sub_1B0E45DD8();

    if (v10 >> 14 < v18 >> 14)
    {
      goto LABEL_44;
    }

    v11 = sub_1B0E45E28();
    v10 = v19;
    v21 = v20;
    v23 = v22;

    v24 = v23;
    if (v15 == 2573 && v17 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      goto LABEL_41;
    }

    if ((v17 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v17) & 0xF;
    }

    else
    {
      v25 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25)
    {
      goto LABEL_45;
    }

    if ((v17 & 0x1000000000000000) != 0)
    {
      v26 = sub_1B0E44C18();
    }

    else
    {
      v26 = sub_1B0E46278() << 16;
    }

    if (v26 >> 14 != 4 * v25)
    {
      goto LABEL_34;
    }

    v27 = sub_1B0C04CF0(v15, v17);
    if ((v27 & 0x100000000) != 0)
    {
      goto LABEL_47;
    }

    if ((v27 & 0xFFFFFF80) != 0)
    {
LABEL_34:

LABEL_35:
      *v0 = v11;
      v0[1] = v10;
      v0[2] = v21;
      v0[3] = v24;
      v1 = v31;
      v2 = v30;
      goto LABEL_36;
    }

    v28 = sub_1B0C04CF0(v15, v17);
    if ((v28 & 0x100000000) != 0)
    {
      goto LABEL_48;
    }

    v29 = v28;

    if ((v29 & 0xFFFFFF00) != 0)
    {
      goto LABEL_46;
    }

    if (v29 == 93)
    {
      *v0 = v11;
      v0[1] = v10;
      v0[2] = v21;
      v0[3] = v24;
      if (v13)
      {

        return;
      }

LABEL_41:

      *v0 = v30;
      v0[1] = v31;
      v0[2] = v32;
      v0[3] = v3;
      return;
    }

    if (v29 <= 0x2Fu || v29 >= 0x40u)
    {
      goto LABEL_41;
    }

    v13 = 1;
    if ((v11 ^ v10) < 0x4000)
    {
      goto LABEL_35;
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
}

uint64_t sub_1B0CB64FC()
{
  v0 = sub_1B0E431A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DB940);
  __swift_project_value_buffer(v0, qword_1EB6DB940);
  return sub_1B0E43168();
}

unint64_t sub_1B0CB6568()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C40, &qword_1B0EA4010);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v133 - v2;
  v4 = sub_1B0E44EE8();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = 0;
  v150 = v4;
  v151 = v6;
  v12 = &unk_1F2722D80;
  v13 = 1;
  v152 = v8;
  v153 = v10;
  v14 = MEMORY[0x1E69E7CC0];
  v140 = v3;
LABEL_2:
  while (2)
  {
    v134 = v14;
    v15 = v11;
    v11 = v13;
    v135 = v15;
LABEL_3:
    while (2)
    {
      v16 = v150;
      v17 = v151;
      v19 = v152;
      v18 = v153;
      while (1)
      {
        v20 = v17 >> 14;
        v142 = v16 >> 14;
        if (v16 >> 14 == v17 >> 14)
        {
          v20 = v16 >> 14;
          goto LABEL_9;
        }

        sub_1B0E45E18();
        v21 = sub_1B0E44808();

        if ((v21 & 1) == 0)
        {
          break;
        }

        sub_1B0E45E18();

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22 = sub_1B0E45DD8();

        if (v20 < v22 >> 14)
        {
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          return result;
        }

        v16 = sub_1B0E45E28();
        v17 = v24;
        v19 = v25;
        v27 = v26;

        v18 = v27;
        v150 = v16;
        v151 = v17;
        v152 = v19;
        v153 = v27;
      }

      if (sub_1B0E45E18() != 91 || v56 != 0xE100000000000000)
      {
        v58 = sub_1B0E46A78();

        if (v58)
        {
          goto LABEL_34;
        }

LABEL_9:
        v138 = v18;
        v139 = v20;
        HIDWORD(v133) = v11;
        v28 = 36;
        v143 = v19;
        v141 = v17;
        do
        {
          v30 = *(v12 - 1);
          v29 = *v12;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0E44CF8();
          result = sub_1B0E45DF8();
          if (v31)
          {
          }

          else
          {
            v32 = result >> 14;
            if (result >> 14 < v142)
            {
              __break(1u);
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }

            v146 = v16;
            v147 = v17;
            v148 = v19;
            v149 = v18;
            v144 = v30;
            v145 = v29;
            v33 = qword_1EB6DB938;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v34 = v18;
            if (v33 != -1)
            {
              swift_once();
            }

            v35 = sub_1B0E431A8();
            v36 = __swift_project_value_buffer(v35, qword_1EB6DB940);
            v37 = *(v35 - 8);
            v38 = v140;
            (*(v37 + 16))(v140, v36, v35);
            (*(v37 + 56))(v38, 0, 1, v35);
            sub_1B0A6F53C();
            sub_1B07C7F5C();
            v39 = sub_1B0E45F48();
            sub_1B0A6F494(v38);

            v18 = v34;
            v19 = v143;
            v17 = v141;
            if (!v39)
            {
              if (v139 < v32)
              {
                goto LABEL_91;
              }

              v146 = sub_1B0E45E28();
              v147 = v40;
              v148 = v41;
              v149 = v42;
              sub_1B0CB61E0();
              v43 = v147 >> 14;
              if (v147 >> 14 != v146 >> 14)
              {
                v136 = sub_1B0E45E18();
                v137 = v44;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v45 = sub_1B0E45DD8();

                if (v43 < v45 >> 14)
                {
                  goto LABEL_95;
                }

                v46 = sub_1B0E45E28();
                v48 = v47;
                v50 = v49;
                v52 = v51;

                v146 = v46;
                v147 = v48;
                v148 = v50;
                v149 = v52;
                v53 = v136;
                v54 = v137;
                if (v136 == 58 && v137 == 0xE100000000000000 || (sub_1B0E46A78() & 1) != 0 || v53 == 10140911 && v54 == 0xA300000000000000)
                {
                  v63 = v50;

LABEL_38:

                  v150 = v46;
                  v151 = v48;
                  v15 = v135;
                  v11 = v135;
                  v152 = v63;
                  v153 = v52;
                  v12 = &unk_1F2722D80;
                  goto LABEL_3;
                }

                v55 = sub_1B0E46A78();

                if (v55)
                {
                  v63 = v50;
                  goto LABEL_38;
                }
              }

              v18 = v138;
              v19 = v143;
            }
          }

          v12 += 2;
          --v28;
        }

        while (v28);
        v78 = &unk_1F2722FE0;
        v79 = 32;
        while (1)
        {
          v81 = *(v78 - 1);
          v80 = *v78;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0E44CF8();
          result = sub_1B0E45DF8();
          if (v82)
          {
          }

          else
          {
            v83 = result >> 14;
            if (result >> 14 < v142)
            {
              goto LABEL_89;
            }

            v146 = v16;
            v147 = v17;
            v148 = v19;
            v149 = v18;
            v144 = v81;
            v145 = v80;
            v84 = qword_1EB6DB938;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v85 = v18;
            if (v84 != -1)
            {
              swift_once();
            }

            v86 = sub_1B0E431A8();
            v87 = __swift_project_value_buffer(v86, qword_1EB6DB940);
            v88 = *(v86 - 8);
            v89 = v140;
            (*(v88 + 16))(v140, v87, v86);
            (*(v88 + 56))(v89, 0, 1, v86);
            sub_1B0A6F53C();
            sub_1B07C7F5C();
            v90 = sub_1B0E45F48();
            sub_1B0A6F494(v89);

            v18 = v85;
            v19 = v143;
            v17 = v141;
            if (!v90)
            {
              if (v139 < v83)
              {
                goto LABEL_94;
              }

              v146 = sub_1B0E45E28();
              v147 = v91;
              v148 = v92;
              v149 = v93;
              sub_1B0CB61E0();
              v94 = v147 >> 14;
              if (v147 >> 14 != v146 >> 14)
              {
                v136 = sub_1B0E45E18();
                v137 = v95;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v96 = sub_1B0E45DD8();

                if (v94 < v96 >> 14)
                {
                  goto LABEL_96;
                }

                v97 = sub_1B0E45E28();
                v99 = v98;
                v101 = v100;
                v103 = v102;

                v146 = v97;
                v147 = v99;
                v148 = v101;
                v149 = v103;
                v105 = v136;
                v104 = v137;
                if (v136 == 58 && v137 == 0xE100000000000000 || (sub_1B0E46A78() & 1) != 0 || v105 == 10140911 && v104 == 0xA300000000000000)
                {

                  goto LABEL_67;
                }

                v106 = v103;
                v107 = sub_1B0E46A78();

                if (v107)
                {

                  v103 = v106;
LABEL_67:
                  v150 = v97;
                  v151 = v99;
                  v11 = HIDWORD(v133);
                  v13 = HIDWORD(v133);
                  v152 = v101;
                  v153 = v103;
                  v14 = v134;
                  v12 = &unk_1F2722D80;
                  goto LABEL_2;
                }
              }

              v18 = v138;
              v19 = v143;
            }
          }

          v78 += 2;
          if (!--v79)
          {
            goto LABEL_69;
          }
        }
      }

LABEL_34:
      v59 = sub_1B0CB6010();
      if (v62 == 1)
      {
        sub_1B0CB7330(v59, v60, v61, 1uLL);
        v11 = v15;
        continue;
      }

      break;
    }

    if (!v62)
    {
      sub_1B0CB7330(v59, v60, v61, 0);
      v13 = v11;
      v14 = v134;
      continue;
    }

    break;
  }

  if (v62 != 2)
  {
    v64 = v12;
    v65 = v59;
    v66 = v60;
    v67 = v61;
    v68 = v62;
    sub_1B0CB7354(v59, v60, v61, v62);
    v69 = v134;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_1B0C81648(0, *(v69 + 2) + 1, 1, v69);
    }

    v71 = *(v69 + 2);
    v70 = *(v69 + 3);
    if (v71 >= v70 >> 1)
    {
      v77 = sub_1B0C81648((v70 > 1), v71 + 1, 1, v69);
      v75 = v68;
      v73 = v66;
      v72 = v67;
      v69 = v77;
      v74 = v65;
    }

    else
    {
      v72 = v67;
      v73 = v66;
      v74 = v65;
      v75 = v68;
    }

    *(v69 + 2) = v71 + 1;
    v134 = v69;
    v76 = &v69[32 * v71];
    *(v76 + 4) = v74;
    *(v76 + 5) = v73;
    *(v76 + 6) = v72;
    *(v76 + 7) = v75;
    sub_1B0CB7330(v74, v73, v72, v75);
    v15 = v135;
    v12 = v64;
    v11 = v135;
    goto LABEL_3;
  }

LABEL_69:
  v108 = v150;
  v109 = v151;
  v110 = v152;
  v111 = v153;
  while (1)
  {
    v112 = v108 >> 14;
    v113 = v109 >> 14;
    if (v108 >> 14 == v109 >> 14)
    {
      break;
    }

    sub_1B0E45E18();
    v114 = sub_1B0E44808();

    if ((v114 & 1) == 0)
    {
      v112 = v108 >> 14;
      v113 = v109 >> 14;
      break;
    }

    sub_1B0E45E18();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v115 = sub_1B0E45DD8();

    if (v113 < v115 >> 14)
    {
      goto LABEL_92;
    }

    v108 = sub_1B0E45E28();
    v109 = v116;
    v110 = v117;
    v119 = v118;

    v111 = v119;
    v150 = v108;
    v151 = v109;
    v152 = v110;
    v153 = v119;
  }

  v120 = v134;
  if (v112 != v113)
  {
    while (1)
    {
      sub_1B0E45DE8();
      sub_1B0E45E18();
      v122 = sub_1B0E44808();

      if ((v122 & 1) == 0)
      {
        break;
      }

      sub_1B0E45DE8();
      sub_1B0E45E18();
      result = sub_1B0E45DE8();
      if (v112 > result >> 14)
      {
        goto LABEL_93;
      }

      v108 = sub_1B0E45E28();
      v109 = v123;
      v110 = v124;
      v121 = v125;

      v112 = v108 >> 14;
      v111 = v121;
      if (v108 >> 14 == v109 >> 14)
      {
        goto LABEL_80;
      }
    }
  }

  v121 = v111;
LABEL_80:
  v126 = MEMORY[0x1B2726D00](v108, v109, v110, v121);
  v128 = v127;

  if (*(v120 + 16))
  {
    v129 = HIBYTE(v128) & 0xF;
    if ((v128 & 0x2000000000000000) == 0)
    {
      v129 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v129)
    {
      v146 = v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C08, &unk_1B0E9FC00);
      sub_1B0CB72CC();
      sub_1B0A6F53C();
      v130 = sub_1B0E450B8();
      v132 = v131;

      v146 = v130;
      v147 = v132;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](32, 0xE100000000000000);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](v126, v128);

      return v146;
    }

    else
    {

      v146 = v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C08, &unk_1B0E9FC00);
      sub_1B0CB72CC();
      sub_1B0A6F53C();
      v126 = sub_1B0E450B8();
    }
  }

  else
  {
  }

  return v126;
}

unint64_t sub_1B0CB72CC()
{
  result = qword_1EB6E6080;
  if (!qword_1EB6E6080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2C08, &unk_1B0E9FC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6080);
  }

  return result;
}

uint64_t sub_1B0CB7330(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 != 2)
  {
    return sub_1B0CB7340(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1B0CB7340(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 2)
  {
  }

  return result;
}

uint64_t sub_1B0CB7354(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 2)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0CB7368@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2 - result;
  if (!result)
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = v4;
    *(a4 + 16) = result;
    *(a4 + 24) = a2;
    *(a4 + 32) = 0;
    *(a4 + 40) = v4;
    *(a4 + 48) = result;
    *(a4 + 56) = a2;
    *(a4 + 64) = a3;
  }

  return result;
}

unint64_t sub_1B0CB7394(char a1)
{
  result = 0x6275732D6F747561;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 6513506;
      break;
    case 3:
      result = 25443;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x2D746E65746E6F63;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0x2D746E65746E6F63;
      break;
    case 10:
      result = 1702125924;
      break;
    case 11:
      result = 1836020326;
      break;
    case 12:
      result = 0x64692D7473696CLL;
      break;
    case 13:
      result = 0x2D6567617373656DLL;
      break;
    case 14:
      result = 0x7265762D656D696DLL;
      break;
    case 15:
      result = 0x69726F6972702D78;
      break;
    case 16:
      result = 0x6465766965636572;
      break;
    case 17:
      result = 0x702D6E7275746572;
      break;
    case 18:
      result = 0x7463656A627573;
      break;
    case 19:
      result = 28532;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_1B0CB75A8()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0CB7394(v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CB760C()
{
  sub_1B0CB7394(*v0);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0CB7660()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0CB7394(v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CB76C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B0CB84CC();
  *a2 = result;
  return result;
}

unint64_t sub_1B0CB76F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B0CB7394(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B0CB771C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1B0CB7394(*a1);
  v5 = v4;
  if (v3 == sub_1B0CB7394(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B0E46A78();
  }

  return v8 & 1;
}

uint64_t sub_1B0CB77A4(char *a1, char *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = (a3 + 32);
    v6 = a2 - a1;
    do
    {
      v11 = *v5++;
      v10 = v11;
      v12 = 0xEE0064657474696DLL;
      v13 = 0x6275732D6F747561;
      switch(v11)
      {
        case 1u:
          break;
        case 2u:
          v12 = 0xE300000000000000;
          v13 = 6513506;
          break;
        case 3u:
          v12 = 0xE200000000000000;
          v13 = 25443;
          break;
        case 4u:
          v13 = 0xD000000000000013;
          v12 = 0x80000001B0F2E4C0;
          break;
        case 5u:
          v13 = 0xD000000000000013;
          v12 = 0x80000001B0F2E4E0;
          break;
        case 6u:
          v13 = 0x2D746E65746E6F63;
          goto LABEL_21;
        case 7u:
          v13 = 0xD000000000000010;
          v12 = 0x80000001B0F2E500;
          break;
        case 8u:
          v13 = 0xD000000000000019;
          v12 = 0x80000001B0F2E520;
          break;
        case 9u:
          v13 = 0x2D746E65746E6F63;
          v12 = 0xEC00000065707974;
          break;
        case 0xAu:
          v12 = 0xE400000000000000;
          v13 = 1702125924;
          break;
        case 0xBu:
          v12 = 0xE400000000000000;
          v13 = 1836020326;
          break;
        case 0xCu:
          v12 = 0xE700000000000000;
          v13 = 0x64692D7473696CLL;
          break;
        case 0xDu:
          v13 = 0x2D6567617373656DLL;
LABEL_21:
          v12 = 0xEA00000000006469;
          break;
        case 0xEu:
          v13 = 0x7265762D656D696DLL;
          v12 = 0xEC0000006E6F6973;
          break;
        case 0xFu:
          v12 = 0xEA00000000007974;
          v13 = 0x69726F6972702D78;
          break;
        case 0x10u:
          v12 = 0xE800000000000000;
          v13 = 0x6465766965636572;
          break;
        case 0x11u:
          v13 = 0x702D6E7275746572;
          v12 = 0xEB00000000687461;
          break;
        case 0x12u:
          v12 = 0xE700000000000000;
          v13 = 0x7463656A627573;
          break;
        case 0x13u:
          v12 = 0xE200000000000000;
          v13 = 28532;
          break;
        default:
          v13 = 0xD000000000000016;
          v12 = 0x80000001B0F2E490;
          break;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v14 = sub_1B0E44DC8();

        if (a1)
        {
          goto LABEL_31;
        }
      }

      else
      {

        if ((v12 & 0x2000000000000000) != 0)
        {
          v14 = HIBYTE(v12) & 0xF;
        }

        else
        {
          v14 = v13 & 0x7F7F7F7F7F7FLL;
        }

        if (a1)
        {
LABEL_31:
          if (v14 == v6)
          {
            goto LABEL_3;
          }

          goto LABEL_4;
        }
      }

      if (!v14)
      {
LABEL_3:
        v7 = sub_1B0CB7394(v10);
        v9 = sub_1B0CADCDC(v7, v8, a1, a2, sub_1B0C95118);

        if (v9)
        {
          return v10;
        }
      }

LABEL_4:
      --v3;
    }

    while (v3);
  }

  return 20;
}

uint64_t sub_1B0CB7AEC(char *a1, char *a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  v8 = v4 == 120 && v5 == 45;
  v9 = v8;
  if (v8 && v6 == 97 && v7 == 112)
  {
    v10 = a1;
    v11 = a2;
    v12 = 0;
LABEL_61:
    result = sub_1B0C7BFF8(v10, v11, v12);
LABEL_62:
    if (result != 20)
    {
      return result;
    }

    return 20;
  }

  if (v4 <= 0x63u)
  {
    switch(v4)
    {
      case 'a':
        if (v5 == 117 && v6 == 116 && v7 == 111)
        {
          v10 = a1;
          v11 = a2;
          v12 = 1;
          goto LABEL_61;
        }

        break;
      case 'b':
        if (v5 == 99 && v6 == 99 && !v7)
        {
          v10 = a1;
          v11 = a2;
          v12 = 2;
          goto LABEL_61;
        }

        break;
      case 'c':
        if (v5 == 111)
        {
          if (v6 == 110 && v7 == 116)
          {
            result = sub_1B0CB77A4(a1, a2, &unk_1F27225D8);
            goto LABEL_62;
          }
        }

        else if (v5 == 99 && !(v6 | v7))
        {
          v10 = a1;
          v11 = a2;
          v12 = 3;
          goto LABEL_61;
        }

        break;
    }
  }

  else if (v4 > 0x6Bu)
  {
    if (v4 == 108)
    {
      if (v5 == 105 && v6 == 115 && v7 == 116)
      {
        v10 = a1;
        v11 = a2;
        v12 = 12;
        goto LABEL_61;
      }
    }

    else if (v4 == 109)
    {
      if (v5 == 105)
      {
        if (v6 == 109 && v7 == 101)
        {
          v10 = a1;
          v11 = a2;
          v12 = 14;
          goto LABEL_61;
        }
      }

      else if (v5 == 101 && v6 == 115 && v7 == 115)
      {
        v10 = a1;
        v11 = a2;
        v12 = 13;
        goto LABEL_61;
      }
    }
  }

  else if (v4 == 100)
  {
    if (v5 == 97 && v6 == 116 && v7 == 101)
    {
      v10 = a1;
      v11 = a2;
      v12 = 10;
      goto LABEL_61;
    }
  }

  else if (v4 == 102 && v5 == 114 && v6 == 111 && v7 == 109)
  {
    v10 = a1;
    v11 = a2;
    v12 = 11;
    goto LABEL_61;
  }

  if (v6 != 112)
  {
    v9 = 0;
  }

  if (v9 == 1 && v7 == 114)
  {
    v10 = a1;
    v11 = a2;
    v12 = 15;
    goto LABEL_61;
  }

  if (v4 == 116)
  {
    if (v5 == 111 && !v6 && !v7)
    {
      v10 = a1;
      v11 = a2;
      v12 = 19;
      goto LABEL_61;
    }
  }

  else if (v4 == 115)
  {
    if (v5 == 117 && v6 == 98 && v7 == 106)
    {
      v10 = a1;
      v11 = a2;
      v12 = 18;
      goto LABEL_61;
    }
  }

  else if (v4 == 114 && v5 == 101)
  {
    if (v6 == 116)
    {
      if (v7 == 117)
      {
        v10 = a1;
        v11 = a2;
        v12 = 17;
        goto LABEL_61;
      }
    }

    else if (v6 == 99 && v7 == 101)
    {
      v10 = a1;
      v11 = a2;
      v12 = 16;
      goto LABEL_61;
    }
  }

  return 20;
}

void sub_1B0CB7ED8(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (!a1)
  {
    if (!a3)
    {
      v7 = 0;
      v17 = 0;
      v16 = 0;
      goto LABEL_13;
    }

    goto LABEL_43;
  }

  v6 = &a1[a3];
  v7 = a1;
  if (!a3)
  {
    goto LABEL_9;
  }

  v8 = a3 - 1;
  if (!__OFSUB__(a3, 1))
  {
    if (v8 < 0 || v8 >= a3)
    {
      goto LABEL_45;
    }

    v9 = &a1[v8];
    v7 = &a1[a3];
    if (a1[v8] != 58)
    {
      goto LABEL_9;
    }

    v10 = a1;
    v11 = a2;
    v12 = a5;
    v13 = a3;
    v14 = sub_1B0CB7AEC(a1, v9);
    a2 = v11;
    a3 = v13;
    a5 = v12;
    v15 = v14;
    a1 = v10;
    v7 = v9;
    if (v15 == 20)
    {
LABEL_9:
      if (a2 - a1 >= a3)
      {
        v16 = a2;
        v17 = v6;
LABEL_13:
        v18 = 0;
        v19 = a4 & 1 | 0xA000000000000000;
        v6 = a1;
LABEL_14:
        *a5 = v6;
        a5[1] = v7;
        a5[2] = v17;
        a5[3] = v16;
        a5[4] = v19;
        a5[5] = v18;
        return;
      }

      goto LABEL_42;
    }

    if (v11 - a1 >= v13)
    {
      v7 = v11;
      v19 = 0x1000000000000000;
      v17 = 0;
      v20 = v15;
      v16 = 0;
      v18 = 0;
      switch(v20)
      {
        case 1:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x800000000000000;
          break;
        case 2:
          goto LABEL_14;
        case 3:
          v17 = 0;
          v16 = 0;
          v18 = 0;
          v19 = 0x1800000000000000;
          break;
        case 4:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x2000000000000000;
          break;
        case 5:
          sub_1B0CB0678(v6, a2, a4 & 1);
          v16 = MEMORY[0x1E69E7CC0];
          if (v23)
          {
            v24 = v23;
            v6 = v21;
            v7 = v22;
            v25 = sub_1B0C7A138(v21, v22);
            v17 = v25 == 3;
            if (v25 != 3)
            {
              v6 = v25;
              v7 = 0;
            }

            v26[0] = v16;
            sub_1B0CAD53C(v24, v26);

            v16 = v26[0];
          }

          else
          {
            v17 = 1;
          }

          v18 = 0;
          v19 = 0x2800000000000000;
          a5 = v12;
          break;
        case 6:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x3000000000000000;
          break;
        case 7:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x3800000000000000;
          break;
        case 8:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x4000000000000000;
          break;
        case 9:
          sub_1B0C7F160(v6, a2, a4 & 1, v26);
          a5 = v12;
          v6 = v26[0];
          v7 = v26[1];
          v17 = v26[2];
          v16 = v26[3];
          v18 = v28;
          v19 = v27 | 0x4800000000000000;
          break;
        case 10:
          v17 = 0;
          v16 = 0;
          v18 = 0;
          v19 = 0x5000000000000000;
          break;
        case 11:
          v17 = 0;
          v16 = 0;
          v18 = 0;
          v19 = 0x5800000000000000;
          break;
        case 12:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x6000000000000000;
          break;
        case 13:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x6800000000000000;
          break;
        case 14:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x7000000000000000;
          break;
        case 15:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x7800000000000000;
          break;
        case 16:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x8000000000000000;
          break;
        case 17:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x8800000000000000;
          break;
        case 18:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x9000000000000000;
          break;
        case 19:
          v17 = 0;
          v16 = 0;
          v18 = 0;
          v19 = 0x9800000000000000;
          break;
        default:
          v16 = 0;
          v19 = 0;
          v18 = 0;
          v17 = a4 & 1;
          break;
      }

      goto LABEL_14;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1B0CB8238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 5) & 0xFFFFFFF8 | (*(a1 + 32) >> 1) & 7;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B0CB828C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (32 * -a2) & 0x1FFFFFFF00 | (2 * (-a2 & 7));
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeHeader.Field.Known(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeHeader.Field.Known(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0CB8478()
{
  result = qword_1EB6E6088;
  if (!qword_1EB6E6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6088);
  }

  return result;
}

uint64_t sub_1B0CB84CC()
{
  v0 = sub_1B0E46B08();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

char *sub_1B0CB8540()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  result = sub_1B0C94424(*(v0 + 64), v1, v2, v3);
  if (v8)
  {
    v9 = v2;
    if (v2 >= v1)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v9 = v7;
  if (v7 < v1)
  {
    goto LABEL_77;
  }

  if (v2 < v7)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_6:
  *(v0 + 32) = v9;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  result = sub_1B0C94618(0x3Au, v1, v9, v3);
  if (v11)
  {
    return 0;
  }

  v12 = v10;
  if (v9 != v2)
  {
    v13 = v3;
    while (1)
    {
      v14 = v2 - v9;
      if (v2 <= v9)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v15 = v3 + v9;
      v16 = *(v3 + v9);
      if (v16 != 32 && v16 != 9)
      {
        goto LABEL_66;
      }

      v18 = v2;
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          if (!v3)
          {
            goto LABEL_62;
          }

          result = memchr((v3 + v9), 10, v2 - v9);
          v18 = v2;
          if (!result)
          {
            goto LABEL_62;
          }

          v18 = v2;
          v21 = &result[-v15];
          if (&result[-v15] < 0)
          {
            goto LABEL_62;
          }

          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_82;
          }

          v18 = v2;
          if (v14 < v22)
          {
            goto LABEL_62;
          }

          if (__OFADD__(v21, v9))
          {
            goto LABEL_87;
          }

          v18 = &v22[v9];
          if (__OFADD__(v22, v9))
          {
            goto LABEL_91;
          }

          if (v22 < v21 || v18 < &v21[v9])
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (!v3)
          {
            goto LABEL_62;
          }

          result = memchr((v3 + v9), 10, v2 - v9);
          v18 = v2;
          if (!result)
          {
            goto LABEL_62;
          }

          v18 = v2;
          v25 = &result[-v15];
          if (&result[-v15] < 0)
          {
            goto LABEL_62;
          }

          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_80;
          }

          v18 = v2;
          if (v14 < v26)
          {
            goto LABEL_62;
          }

          v27 = &v25[v9];
          if (__OFADD__(v25, v9))
          {
            goto LABEL_86;
          }

          v18 = &v26[v9];
          if (__OFADD__(v26, v9))
          {
            goto LABEL_89;
          }

          if (v26 < v25 || v18 < v27)
          {
            goto LABEL_95;
          }

          if (v9 < v27 && v27 > v2)
          {
            goto LABEL_96;
          }
        }
      }

      else if (v5)
      {
        if (!v3)
        {
          goto LABEL_62;
        }

        result = memchr((v3 + v9), 13, v2 - v9);
        v18 = v2;
        if (!result)
        {
          goto LABEL_62;
        }

        v18 = v2;
        v23 = &result[-v15];
        if (&result[-v15] < 0)
        {
          goto LABEL_62;
        }

        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_81;
        }

        v18 = v2;
        if (v14 < v24)
        {
          goto LABEL_62;
        }

        if (__OFADD__(v23, v9))
        {
          goto LABEL_84;
        }

        v18 = &v24[v9];
        if (__OFADD__(v24, v9))
        {
          goto LABEL_90;
        }

        if (v24 < v23 || v18 < &v23[v9])
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_62;
        }

        result = memmem((v3 + v9), v2 - v9, "\r\n", 2uLL);
        v18 = v2;
        if (!result)
        {
          goto LABEL_62;
        }

        v18 = v2;
        v19 = &result[-v15];
        if (&result[-v15] < 0)
        {
          goto LABEL_62;
        }

        v20 = v19 + 2;
        if (__OFADD__(v19, 2))
        {
          goto LABEL_83;
        }

        v18 = v2;
        if (v14 < v20)
        {
          goto LABEL_62;
        }

        if (__OFADD__(v19, v9))
        {
          goto LABEL_85;
        }

        v18 = &v20[v9];
        if (__OFADD__(v20, v9))
        {
          goto LABEL_88;
        }

        if (v20 < v19 || v18 < &v19[v9])
        {
          goto LABEL_93;
        }
      }

      if (v18 < v9)
      {
        goto LABEL_75;
      }

      if (v2 < v18)
      {
        goto LABEL_76;
      }

LABEL_62:
      *(v0 + 32) = v18;
      *(v0 + 40) = v2;
      *(v0 + 48) = v3;
      *(v0 + 56) = v4;
      if (v18 < v1)
      {
        goto LABEL_72;
      }

      if (v1 < *v0)
      {
        goto LABEL_73;
      }

      if (*(v0 + 8) < v18)
      {
        goto LABEL_74;
      }

      v13 = *(v0 + 16);
      v9 = v18;
      if (v18 == v2)
      {
LABEL_66:
        v3 = v13;
        break;
      }
    }
  }

  if (!__OFSUB__(v12, v1))
  {
    if (v3)
    {
      return (v3 + v1);
    }

    else
    {
      return 0;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1B0CB88C4(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0CB8918(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t WatchOSHeaderInfo.from.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t WatchOSHeaderInfo.from.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WatchOSHeaderInfo.to.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t WatchOSHeaderInfo.cc.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t WatchOSHeaderInfo.bcc.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t WatchOSHeaderInfo.subject.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t WatchOSHeaderInfo.subject.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t WatchOSHeaderInfo.messageIDHeader.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t WatchOSHeaderInfo.messageIDHeader.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t WatchOSHeaderInfo.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WatchOSHeaderInfo() + 40);
  v4 = sub_1B0E43108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WatchOSHeaderInfo()
{
  result = qword_1EB6E6090;
  if (!qword_1EB6E6090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WatchOSHeaderInfo.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchOSHeaderInfo() + 40);
  v4 = sub_1B0E43108();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchOSHeaderInfo.init(from:to:cc:bcc:subject:messageIDHeader:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  v12 = *(type metadata accessor for WatchOSHeaderInfo() + 40);
  v13 = sub_1B0E43108();
  v14 = *(*(v13 - 8) + 32);

  return v14(&a9[v12], a11, v13);
}

uint64_t WatchOSHeaderInfo.init(message:cache:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3D58, &qword_1B0EE0DD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22[-v11];
  v13 = type metadata accessor for WatchOSHeaderInfo();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v22[-v19];
  *v20 = 0;
  v20[1] = 0;
  sub_1B0C9A6A4(a1, a2, v12);
  sub_1B0CB90F4(a1, type metadata accessor for Message);
  sub_1B03C60A4(v12, v9, &qword_1EB6E3D58, &qword_1B0EE0DD0);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1B0398EFC(v9, &qword_1EB6E3D58, &qword_1B0EE0DD0);
    return (*(v14 + 56))(a3, 1, 1, v13);
  }

  else
  {
    sub_1B0A81BE0(v9, v17);
    sub_1B0A81BE0(v17, v20);
    sub_1B0CB9090(v20, a3);
    (*(v14 + 56))(a3, 0, 1, v13);
    return sub_1B0CB90F4(v20, type metadata accessor for WatchOSHeaderInfo);
  }
}

uint64_t sub_1B0CB9090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchOSHeaderInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CB90F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B0CB917C()
{
  sub_1B0CB9264(319, &qword_1EB6DB6A8, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B0CB9264(319, &qword_1EB6DB088, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B0E43108();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0CB9264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B0CB9328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v110 = a4;
  v111 = a5;
  v108 = a6;
  v109 = a3;
  v8 = sub_1B0E43108();
  v106 = *(v8 - 8);
  v107 = v8;
  v9 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v90 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v90 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v90 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v90 - v26;
  sub_1B0CA33D0(3, a1, a2, v109, v110);
  v29 = v28;
  v103 = v15;
  v104 = 0;
  v101 = v21;
  v102 = v24;
  v30 = v111;
  v92 = v14;
  v93 = v18;
  v100 = v11;
  v32 = v31;
  v34 = v33;
  v35 = v106;
  v36 = *(v106 + 56);
  v37 = v27;
  result = v36(v27, 1, 1, v107);
  if (v29 < 0)
  {
    __break(1u);
    return result;
  }

  if (v32)
  {
    v39 = v32 + v29;
  }

  else
  {
    v39 = 0;
  }

  sub_1B0CB7368(v32, v39, v34, &v114);
  v40 = sub_1B0CB8540();
  if (v43 == 2)
  {

    v44 = v27;
    goto LABEL_61;
  }

  v90[0] = v36;
  v90[1] = v35 + 56;
  v45 = 0;
  v46 = 0;
  v94 = 0;
  v95 = 0;
  v105 = 0;
  v99 = (v35 + 48);
  v91 = (v35 + 32);
  v47 = MEMORY[0x1E69E7CC0];
  v109 = MEMORY[0x1E69E7CC0];
  v110 = MEMORY[0x1E69E7CC0];
  v106 = v37;
  v48 = v30;
  v49 = 0;
  v50 = v101;
  do
  {
    sub_1B0CB7ED8(v40, v41, v42, v43 & 1, v115);
    v52 = v115[0];
    v51 = v115[1];
    v53 = v116 >> 59;
    if ((v116 >> 59) <= 10)
    {
      if (v53 == 2)
      {

        v47 = sub_1B0CB9D44(v52, v51, v48);
        goto LABEL_9;
      }

      if (v53 == 3)
      {

        v110 = sub_1B0CB9D44(v52, v51, v48);
        goto LABEL_9;
      }

      if (v53 != 10)
      {
        goto LABEL_26;
      }

      sub_1B0C8A0E8(v115, v48, &v121);
      if (v123 != 10)
      {
        if (v123 == 255)
        {
          goto LABEL_9;
        }

        v54 = &v121;
        goto LABEL_38;
      }

      v97 = v46;
      v98 = v47;
      v101 = v49;
      v96 = v45;
      if ((v122 & 0x1000000000000000) == 0)
      {
        if ((v122 & 0x2000000000000000) != 0)
        {
          v66 = v99;
          v67 = v107;
          v112 = v121;
          v113 = v122 & 0xFFFFFFFFFFFFFFLL;
          v68 = &v112;
          goto LABEL_48;
        }

        if ((v121 & 0x1000000000000000) != 0)
        {
          v66 = v99;
          v67 = v107;
          v68 = ((v122 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_48:
          v69 = v104;
          sub_1B0C918AC(v68, v50);
LABEL_49:
          v104 = v69;
          v70 = *v66;
          if (v70(v50, 1, v67) == 1)
          {
            v71 = v102;
            sub_1B0C90B4C(v102);
            sub_1B0398EFC(&v121, &qword_1EB6E5F88, &unk_1B0EE0E00);
            v72 = v106;
            sub_1B0398EFC(v106, &unk_1EB6E2990, &qword_1B0E9B060);
            if (v70(v50, 1, v67) != 1)
            {
              sub_1B0398EFC(v50, &unk_1EB6E2990, &qword_1B0E9B060);
            }
          }

          else
          {
            sub_1B0398EFC(&v121, &qword_1EB6E5F88, &unk_1B0EE0E00);
            v72 = v106;
            sub_1B0398EFC(v106, &unk_1EB6E2990, &qword_1B0E9B060);
            v71 = v102;
            (*v91)(v102, v50, v67);
            (v90[0])(v71, 0, 1, v67);
          }

          sub_1B03C60A4(v71, v72, &unk_1EB6E2990, &qword_1B0E9B060);
          v46 = v97;
          v47 = v98;
          v49 = v101;
          v45 = v96;
          goto LABEL_9;
        }
      }

      v66 = v99;
      v67 = v107;
      v69 = v104;
      sub_1B0E46258();
      goto LABEL_49;
    }

    if (v53 > 17)
    {
      if (v53 != 18)
      {
        if (v53 == 19)
        {

          v109 = sub_1B0CB9D44(v52, v51, v48);
          goto LABEL_9;
        }

LABEL_26:
        sub_1B0CA39F4(v115);
        goto LABEL_9;
      }

      sub_1B0C8A0E8(v115, v48, v117);
      if (v118 != 18)
      {
        if (v118 == 255)
        {
          goto LABEL_9;
        }

        v54 = v117;
        goto LABEL_38;
      }

      v64 = v117[1];
      v94 = v117[0];

      v46 = v64;
    }

    else if (v53 == 11)
    {

      v55 = sub_1B0CB4AE0(v52, v51);
      v57 = v56;

      sub_1B0CACDC4(v55, v57, v48);
      v58 = sub_1B0C80520();

      if (*(v58 + 2))
      {
        v59 = *(v58 + 5);
        v126 = *(v58 + 4);
        v127 = v59;
        v60 = *(v58 + 7);
        v128 = *(v58 + 6);
        v129 = v60;
        v61 = *(v58 + 3);
        v124 = *(v58 + 2);
        v125 = v61;
        sub_1B0C826C0(&v124, &v112);

        if (!*(&v124 + 1))
        {
          goto LABEL_34;
        }

        v62 = HIBYTE(*(&v124 + 1)) & 0xFLL;
        if ((*(&v124 + 1) & 0x2000000000000000) == 0)
        {
          v62 = v124 & 0xFFFFFFFFFFFFLL;
        }

        if (v62 && v124 != v125 && (sub_1B0E46A78() & 1) == 0)
        {
          v112 = sub_1B0C82014();
          v113 = v73;
          MEMORY[0x1B2726E80](15392, 0xE200000000000000);
          v74 = sub_1B0C80214(v48);
          MEMORY[0x1B2726E80](v74);

          MEMORY[0x1B2726E80](62, 0xE100000000000000);
          sub_1B0C8274C(&v124);
          v45 = v112;
          v49 = v113;
        }

        else
        {
LABEL_34:
          v45 = sub_1B0C80214(v48);
          v49 = v63;
          sub_1B0C8274C(&v124);
        }
      }

      else
      {

        v45 = 0;
        v49 = 0;
      }
    }

    else
    {
      if (v53 != 13)
      {
        goto LABEL_26;
      }

      sub_1B0C8A0E8(v115, v48, v119);
      if (v120 != 13)
      {
        if (v120 == 255)
        {
          goto LABEL_9;
        }

        v54 = v119;
LABEL_38:
        sub_1B0398EFC(v54, &qword_1EB6E5F88, &unk_1B0EE0E00);
        goto LABEL_9;
      }

      v65 = v119[1];
      v95 = v119[0];

      v105 = v65;
    }

LABEL_9:
    v40 = sub_1B0CB8540();
  }

  while (v43 != 2);

  v75 = v100;
  if (!v46)
  {
    v44 = v106;
    goto LABEL_61;
  }

  v76 = v45;
  v77 = v105;
  v44 = v106;
  if (!v105)
  {
LABEL_61:
    sub_1B0398EFC(v44, &unk_1EB6E2990, &qword_1B0E9B060);

LABEL_62:
    v80 = type metadata accessor for WatchOSHeaderInfo();
    return (*(*(v80 - 8) + 56))(v108, 1, 1, v80);
  }

  v78 = v93;
  sub_1B03C60A4(v106, v93, &unk_1EB6E2990, &qword_1B0E9B060);
  v79 = v107;
  if ((*v99)(v78, 1, v107) == 1)
  {

    sub_1B0398EFC(v78, &unk_1EB6E2990, &qword_1B0E9B060);
    goto LABEL_62;
  }

  v105 = v77;
  v81 = v92;
  v101 = v49;
  v82 = *v91;
  (*v91)(v92, v78, v79);
  v82(v75, v81, v79);
  v83 = v75;
  v84 = v108;
  v85 = v101;
  *v108 = v76;
  v84[1] = v85;
  v86 = v110;
  v84[2] = v109;
  v84[3] = v86;
  v88 = v94;
  v87 = v95;
  v84[4] = v47;
  v84[5] = v88;
  v84[6] = v46;
  v84[7] = v87;
  v84[8] = v105;
  v89 = type metadata accessor for WatchOSHeaderInfo();
  v82(v84 + *(v89 + 40), v83, v79);
  return (*(*(v89 - 8) + 56))(v84, 0, 1, v89);
}

uint64_t sub_1B0CB9D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = sub_1B0CB4AE0(a1, a2);
  v6 = v5;

  sub_1B0CACDC4(v4, v6, a3);

  v7 = sub_1B0C80520();

  v8 = *(v7 + 2);
  if (!v8)
  {

    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v64 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v8, 0);
  v9 = 0;
  v10 = 32;
  v11 = v64;
  v59 = v7;
  v60 = a3;
  v58 = v8;
  do
  {
    if (v9 >= *(v7 + 2))
    {
      __break(1u);
LABEL_37:
      __break(1u);
    }

    v12 = *&v7[v10 + 16];
    v68 = *&v7[v10];
    v69 = v12;
    v13 = *&v7[v10 + 32];
    v14 = *&v7[v10 + 48];
    v15 = *&v7[v10 + 80];
    v72 = *&v7[v10 + 64];
    v73 = v15;
    v70 = v13;
    v71 = v14;
    v63 = v10;
    if (*(&v68 + 1))
    {
      v16 = HIBYTE(*(&v68 + 1)) & 0xFLL;
      if ((*(&v68 + 1) & 0x2000000000000000) == 0)
      {
        v16 = v68 & 0xFFFFFFFFFFFFLL;
      }

      if (v16 && v68 != v69 && (sub_1B0E46A78() & 1) == 0)
      {
        sub_1B0C826C0(&v68, &v66);
        v66 = sub_1B0C82014();
        v67 = v34;
        MEMORY[0x1B2726E80](15392, 0xE200000000000000);
        v35 = sub_1B0C80214(a3);
        MEMORY[0x1B2726E80](v35);

        MEMORY[0x1B2726E80](62, 0xE100000000000000);
        sub_1B0C8274C(&v68);
        v36 = v66;
        v37 = v67;
        goto LABEL_27;
      }
    }

    if (*(&v72 + 1) >> 14 < v72 >> 14)
    {
      goto LABEL_37;
    }

    v61 = v9;
    v62 = v11;
    sub_1B0C826C0(&v68, &v66);
    v17 = sub_1B0E45E28();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    LODWORD(v66) = 0;
    NFCInstance = unorm2_getNFCInstance();
    v25 = v66;
    if (NFCInstance && v66 <= 0)
    {
      v26 = sub_1B0CB3CC8(v17, v19, v21, v23);
      v32 = v27;
      if (v27)
      {
        v30 = v26;
      }

      else
      {
        v30 = MEMORY[0x1B2726D00](v17, v19, v21, v23);
        v32 = v38;
      }

      if (*(a3 + 96))
      {
LABEL_15:
        LODWORD(v66) = 0;
        v33 = MEMORY[0x1B272C4F0](60, &v66);
        goto LABEL_22;
      }
    }

    else
    {
      sub_1B0C826F8();
      v28 = swift_allocError();
      *v29 = v25;
      *(v29 + 4) = 0;
      swift_willThrow();
      v30 = MEMORY[0x1B2726D00](v17, v19, v21, v23);
      v32 = v31;

      if (*(a3 + 96))
      {
        goto LABEL_15;
      }
    }

    v33 = *(a3 + 88);
LABEL_22:
    v65 = v33;
    sub_1B0C8BD64(&v65, v30, v32, &v66);

    v39 = v70;
    v40 = v71;
    *(a3 + 88) = v33;
    *(a3 + 96) = 0;
    v42 = v66;
    v41 = v67;
    LODWORD(v66) = 0;
    v43 = unorm2_getNFCInstance();
    v44 = v66;
    if (v43 && v66 <= 0)
    {
      v45 = sub_1B0CB3CC8(v39, *(&v39 + 1), v40, *(&v40 + 1));
      v51 = v46;
      if (v46)
      {
        v49 = v45;
      }

      else
      {
        v49 = MEMORY[0x1B2726D00](v39, *(&v39 + 1), v40, *(&v40 + 1));
        v51 = v55;
      }
    }

    else
    {
      sub_1B0C826F8();
      v47 = swift_allocError();
      *v48 = v44;
      *(v48 + 4) = 0;
      swift_willThrow();
      v49 = MEMORY[0x1B2726D00](v39, *(&v39 + 1), v40, *(&v40 + 1));
      v51 = v50;
    }

    v66 = v49;
    v67 = v51;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](64, 0xE100000000000000);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](v42, v41);

    sub_1B0C8274C(&v68);
    v36 = v66;
    v37 = v67;
    v8 = v58;
    v7 = v59;
    v9 = v61;
    v11 = v62;
LABEL_27:
    v53 = *(v11 + 16);
    v52 = *(v11 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_1B041D32C((v52 > 1), v53 + 1, 1);
    }

    ++v9;
    *(v11 + 16) = v53 + 1;
    v54 = v11 + 16 * v53;
    *(v54 + 32) = v36;
    *(v54 + 40) = v37;
    v10 = v63 + 96;
    a3 = v60;
  }

  while (v8 != v9);

LABEL_35:
  v56 = *MEMORY[0x1E69E9840];
  return v11;
}

char *sub_1B0CBA274(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60A0, &qword_1B0EE0E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0CBA380(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60A8, &qword_1B0EE0E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0CBA48C(char *a1, int64_t a2, char a3)
{
  result = sub_1B0CBA274(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0CBA4AC(char *a1, int64_t a2, char a3)
{
  result = sub_1B0CBA380(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t AccountLoggerID.init(accountIdentifier:)(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60B0, &qword_1B0EE0E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __src - v6;
  v8 = sub_1B0E43158();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = __src - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __dst = 0;
  if (a2)
  {
    sub_1B0E43118();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {

      (*(v9 + 32))(v12, v7, v8);
      __dst = sub_1B0E43148();
      (*(v9 + 8))(v12, v8);
LABEL_24:
      result = bswap32(__dst);
      goto LABEL_25;
    }

    sub_1B0CBADB0(v7);
    if ((a2 & 0x1000000000000000) != 0)
    {
      a1 = sub_1B0A6C2B0();
      v19 = v18;

      a2 = v19;
      if ((v19 & 0x2000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
LABEL_5:
      if ((a1 & 0x1000000000000000) != 0)
      {
        v13 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v14 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = sub_1B0E46368();
      }

      v15 = 4;
      if (v14 < 4)
      {
        v15 = v14;
      }

      if (!v13)
      {
        v15 = 0;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      if (v13)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = 0;
      }

      sub_1B0CBAD44(0, v15, v13, v16, &__dst);
      goto LABEL_23;
    }

    __src[0] = a1;
    __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((a2 & 0xC00000000000000) != 0)
    {
      v20 = 4;
    }

    else
    {
      v20 = HIBYTE(a2) & 0xF;
    }

    memcpy(&__dst, __src, v20);
LABEL_23:

    goto LABEL_24;
  }

  result = 0;
LABEL_25:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AccountLoggerID.debugDescription.getter()
{
  sub_1B07467B8();
  v0 = sub_1B0E44E98();
  v2 = v1;
  result = sub_1B0E44CF8();
  if (__OFSUB__(8, result))
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1B0E44E88();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](v0, v2);

    return v4;
  }

  return result;
}

uint64_t sub_1B0CBA840()
{
  v5 = *v0;
  sub_1B07467B8();
  v1 = sub_1B0E44E98();
  v3 = v2;
  result = sub_1B0E44CF8();
  if (__OFSUB__(8, result))
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1B0E44E88();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](v1, v3);

    return v6;
  }

  return result;
}

uint64_t EngineAccountMailboxLoggerID.mailbox.setter(uint64_t a1, int a2)
{
  v5 = *(v2 + 8);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

double variable initialization expression of MessageSectionData.Segment.initial@<D0>(uint64_t a1@<X8>)
{
  sub_1B04FAA88(v8);
  v2 = v16;
  *(a1 + 128) = v15;
  *(a1 + 144) = v2;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

double variable initialization expression of MessageSectionData.Segment.Initial.bodyStructure@<D0>(uint64_t a1@<X8>)
{
  sub_1B075FEBC(v8);
  v2 = v16;
  *(a1 + 128) = v15;
  *(a1 + 144) = v2;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

double variable initialization expression of RemoteMailbox.status@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 41) = 1;
  return result;
}

uint64_t sub_1B0CBACC8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

char *sub_1B0CBAD44(char *result, unint64_t a2, uint64_t a3, uint64_t a4, void *__dst)
{
  if (__dst)
  {
    if (a3)
    {
      v5 = a4 - a3;
      if (a4 - a3 < 0)
      {
        __break(1u);
      }

      else if (v5 >= result)
      {
        if (v5 >= a2)
        {
          if (!__OFADD__(result, a2 - result))
          {
            if (a2 >= result)
            {
              return memmove(__dst, &result[a3], a2 - result);
            }

            goto LABEL_16;
          }

LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_14;
    }

    if (result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (a2)
    {
LABEL_18:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B0CBADB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60B0, &qword_1B0EE0E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0CBAE5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60B8, &qword_1B0EE0F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Action.Kind.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

unint64_t Action.kind.getter(unint64_t a1)
{
  v1 = a1;
  v2 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  result = 1;
  switch(v2)
  {
    case 1uLL:
      result = 5;
      break;
    case 2uLL:
      result = 6;
      break;
    case 3uLL:
      result = 7;
      break;
    case 4uLL:
      result = 8;
      break;
    case 5uLL:
      result = 10;
      break;
    case 6uLL:
      result = 11;
      break;
    case 7uLL:
      result = 12;
      break;
    case 8uLL:
      result = 13;
      break;
    case 9uLL:
      result = 14;
      break;
    case 0xAuLL:
      result = 15;
      break;
    case 0xBuLL:
      result = 16;
      break;
    case 0xCuLL:
      result = 17;
      break;
    case 0xDuLL:
      result = 18;
      break;
    case 0xEuLL:
      result = 19;
      break;
    case 0xFuLL:
      result = 20;
      break;
    case 0x10uLL:
      result = 21;
      break;
    case 0x11uLL:
      result = 22;
      break;
    case 0x12uLL:
      result = 23;
      break;
    case 0x13uLL:
      result = 24;
      break;
    case 0x14uLL:
      result = 25;
      break;
    case 0x15uLL:
      result = 26;
      break;
    case 0x16uLL:
      result = 27;
      break;
    case 0x17uLL:
      result = 28;
      break;
    case 0x18uLL:
      result = 29;
      break;
    case 0x19uLL:
      result = 34;
      break;
    case 0x1AuLL:
      result = 35;
      break;
    case 0x1BuLL:
      result = 37;
      break;
    case 0x1CuLL:
      result = 30;
      break;
    case 0x1DuLL:
      result = 31;
      break;
    case 0x1EuLL:
      result = 32;
      break;
    case 0x1FuLL:
      result = 33;
      break;
    case 0x20uLL:
      result = 36;
      break;
    case 0x21uLL:
      result = 38;
      break;
    case 0x22uLL:
      result = 39;
      break;
    case 0x23uLL:
      result = 40;
      break;
    case 0x24uLL:
      result = 41;
      break;
    case 0x25uLL:
      result = 42;
      break;
    case 0x26uLL:
      result = 43;
      break;
    case 0x27uLL:
      result = 44;
      break;
    case 0x28uLL:
      result = 45;
      break;
    case 0x29uLL:
      result = 46;
      break;
    case 0x2AuLL:
      result = 47;
      break;
    case 0x2BuLL:
      result = 48;
      break;
    case 0x2CuLL:
      result = 0x904030200uLL >> (v1 & 0xF8);
      break;
    default:
      return result;
  }

  return result;
}

unint64_t Action.Kind.description.getter(char a1)
{
  result = 0x6944656E69676E65;
  switch(a1)
  {
    case 1:
      result = 0x64657243646E6573;
      break;
    case 2:
      result = 0x6568747541646964;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 10:
    case 25:
    case 47:
      result = 0xD00000000000001BLL;
      break;
    case 5:
    case 9:
    case 19:
    case 26:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x614E657461647075;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
    case 37:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 12:
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
    case 16:
    case 42:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x617373654D746567;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
    case 34:
      result = 0xD00000000000001CLL;
      break;
    case 20:
      result = 0xD000000000000025;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0xD00000000000002DLL;
      break;
    case 23:
      result = 0xD000000000000021;
      break;
    case 24:
    case 40:
      result = 0xD000000000000012;
      break;
    case 27:
    case 30:
    case 31:
      result = 0xD000000000000018;
      break;
    case 28:
    case 33:
      result = 0xD000000000000016;
      break;
    case 29:
      result = 0x6C46657461647075;
      break;
    case 32:
    case 43:
      result = 0xD000000000000010;
      break;
    case 35:
      result = 0xD00000000000002ALL;
      break;
    case 36:
    case 45:
      result = 0xD000000000000019;
      break;
    case 38:
      result = 0xD000000000000015;
      break;
    case 39:
    case 41:
      result = 0xD00000000000001ELL;
      break;
    case 44:
    case 48:
      result = 0xD00000000000001DLL;
      break;
    case 46:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0CBB66C()
{
  v2 = *v0;
  sub_1B07467B8();
  return sub_1B0E44E98();
}

uint64_t MailboxMetadata.validity.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxMetadata.fetchedWindow.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t MailboxMetadata.fetchedWindow.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t MailboxMetadata.highestModificationSequenceValue.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t MailboxMetadata.highestModificationSequenceValue.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t MailboxMetadata.init(validity:fetchedWindow:highestModificationSequenceValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 4) = BYTE4(result) & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

BOOL sub_1B0CBB7A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s16IMAP2Persistence15MailboxMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

uint64_t MailboxSyncStatus.latestSyncedChange.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxSyncStatus.serverUnreadCount.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t static MailboxSyncStatus.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a1 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }

    return 0;
  }

  v6 = a1;
  result = 0;
  if ((a4 & 0x100000000) == 0 && v6 == a4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1B0CBB8E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      v4 = *(a2 + 16);
    }

    else
    {
      v4 = 1;
    }

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MessageFlagUpdate.flags.setter(uint64_t result, char a2)
{
  *(v2 + 4) = result;
  *(v2 + 12) = a2;
  return result;
}

uint64_t MessageFlagUpdate.gmailLabels.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

unint64_t MessageFlagUpdate.init(message:flags:gmailLabels:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2 && a4 == 0)
  {
    return 0;
  }

  else
  {
    return a1 | (a2 << 32);
  }
}

BOOL static MessageFlagUpdate.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&var10[4] = HIDWORD(a4);
  *&var10[8] = a5;
  v6 = *&var10[4];
  *var10 = a1;
  *&var10[4] = __PAIR64__(a2, HIDWORD(a1));
  var10[12] = BYTE4(a2);
  v7 = *var10;
  v8 = *&var10[8];
  *var10 = a4;
  *&var10[4] = v6;
  var10[12] = BYTE4(a5);
  return sub_1B0CBDF78(v7, v8, a3, *var10, *&var10[8], a6);
}

BOOL sub_1B0CBBA7C(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  *(&v5 + 4) = *(a1 + 1);
  BYTE12(v5) = *(a1 + 12);
  v3 = v5;
  LODWORD(v5) = *a2;
  *(&v5 + 4) = *(a2 + 4);
  BYTE12(v5) = *(a2 + 12);
  return sub_1B0CBDF78(v3, *(&v3 + 1), *(a1 + 2), v5, *(&v5 + 1), *(a2 + 16));
}

uint64_t Action.UnreadCountOutsideWindowOfInterest.Count.serverUnreadCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_1B0CBBC00(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 == 0);
  if (a1)
  {
    v4 = a4 & (a3 != 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a3 == a1) & ~a4;
  }
}

uint64_t sub_1B0CBBC34(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  if ((a4 & 0x100) != 0)
  {
    if (a3 | a2 | a1 || a4)
    {
      if (a7 | a6 | a5)
      {
        v11 = 0;
      }

      else
      {
        v11 = a8 == 0;
      }

      v10 = !v11;
    }

    else
    {
      if (a7 | a6 | a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = a8 == 0;
      }

      v10 = v9;
    }

    if ((a8 & 0x100) != 0)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((a8 & 0x100) == 0 && a1 == a5 && a6 == a2)
    {
      if (a4)
      {
        if (a8)
        {
          return 1;
        }
      }

      else if ((a8 & 1) == 0 && a3 == a7)
      {
        return 1;
      }
    }

    return 0;
  }
}

void _s16IMAP2Persistence6ActionO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2)
{
  v274 = a2;
  v2 = type metadata accessor for Activity(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v272 = (v268 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v269 = (v268 - v6);
  v7 = type metadata accessor for MessageSectionData(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v268 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v268 - v12;
  v14 = type metadata accessor for MessageHeader();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v271 = v268 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v273 = v268 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v268 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v270 = v268 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = v268 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v268 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v268 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v268 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v268 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v44 = v268 - v43;
  switch((v42 >> 58) & 0x3C | (v42 >> 1) & 3)
  {
    case 1uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 1)
      {
        v114 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v115 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_1B03B6298(v114, v115);
      }

      return;
    case 2uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 2)
      {
        v95 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v94 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v96 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v97 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v98 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v99 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        static Namespace.__derived_struct_equals(_:_:)(v96, v95, v94, v97, v98, v99);

        goto LABEL_168;
      }

      return;
    case 3uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 3)
      {
        v112 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v113 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B72F70(v112, v113);
        goto LABEL_168;
      }

      return;
    case 4uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 4)
      {
        v72 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v73 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_1B0AFDD30(v72, v73);
      }

      return;
    case 5uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 5)
      {
        v153 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v152 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v154 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v155 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v156 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v157 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v158 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v159 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x28);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        static PushRegistrationResponse.__derived_struct_equals(_:_:)(v155, v154, v153, v152, v156, v157, v158, v159);

        goto LABEL_168;
      }

      return;
    case 6uLL:
      v181 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v182 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v183 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v316[0] = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v316[1] = v183;
      LOBYTE(v316[2]) = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x40);
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 6)
      {
        v184 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v185 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v186 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v317[0] = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v317[1] = v186;
        LOBYTE(v317[2]) = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x40);
        if (v182 == v185 && (sub_1B04520BC(v181, v184) & 1) != 0)
        {
          _s16IMAP2Persistence15MailboxMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(v316, v317);
        }
      }

      return;
    case 7uLL:
      v53 = v274;
      if (((v53 >> 58) & 0x3C | (v53 >> 1) & 3) == 7)
      {
        goto LABEL_75;
      }

      return;
    case 8uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 8 && *((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v274 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v209 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v210 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v211 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v212 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x28);
        if ((sub_1B04520BC(*((v42 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) != 0 && (v210 & 1) == 0 && (v212 & 1) == 0)
        {
          sub_1B0CC590C(v209, v211);
        }
      }

      return;
    case 9uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 9 && *((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v274 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v84 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v83 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x24);
        v85 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v86 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v87 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v88 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v90 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v89 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x24);
        sub_1B04520BC(*((v42 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10));
      }

      return;
    case 0xAuLL:
      v203 = swift_projectBox();
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0xA)
      {
        v204 = v203;
        v205 = v203[1];
        v273 = *v203;
        v206 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3620, &qword_1B0EC26A0) + 48);
        v207 = swift_projectBox();
        v208 = v207[1];
        v274 = *v207;
        sub_1B03B5C80(v204 + v206, v44, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B03B5C80(v207 + v206, v40, &unk_1EB6E26C0, &unk_1B0E9DE10);
        if (v205 == v208 && (sub_1B04520BC(v273, v274) & 1) != 0)
        {
          sub_1B03D06F8();
          sub_1B0E46E08();
          sub_1B0398EFC(v40, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v82 = v44;
          goto LABEL_128;
        }

        v240 = &unk_1EB6E26C0;
        v241 = &unk_1B0E9DE10;
        sub_1B0398EFC(v40, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v242 = v44;
        goto LABEL_177;
      }

      return;
    case 0xBuLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0xB && *((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v274 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v66 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v67 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v68 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v69 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v70 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v71 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x30);
        if (sub_1B04520BC(*((v42 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {
          sub_1B0CCDF48(v66, v69);
        }
      }

      return;
    case 0xCuLL:
      v76 = swift_projectBox();
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0xC)
      {
        v77 = v76;
        v78 = v76[1];
        v273 = *v76;
        v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390) + 48);
        v80 = swift_projectBox();
        v81 = v80[1];
        v274 = *v80;
        sub_1B03B5C80(v77 + v79, v37, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B03B5C80(v80 + v79, v34, &unk_1EB6E26C0, &unk_1B0E9DE10);
        if (v78 != v81 || (sub_1B04520BC(v273, v274) & 1) == 0)
        {
          v240 = &unk_1EB6E26C0;
          v241 = &unk_1B0E9DE10;
          sub_1B0398EFC(v34, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v242 = v37;
          goto LABEL_177;
        }

        sub_1B03D06F8();
        sub_1B0E46E08();
        sub_1B0398EFC(v34, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v82 = v37;
LABEL_128:
        sub_1B0398EFC(v82, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      return;
    case 0xDuLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0xD && *((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v274 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v174 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v173 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x24);
        v175 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v176 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v177 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v178 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v180 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v179 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x24);
        sub_1B04520BC(*((v42 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10));
      }

      return;
    case 0xEuLL:
      v58 = swift_projectBox();
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0xE)
      {
        v59 = v58;
        v60 = v58[1];
        v273 = *v58;
        v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390) + 48);
        v62 = swift_projectBox();
        v63 = v62[1];
        v274 = *v62;
        sub_1B03B5C80(v59 + v61, v31, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B03B5C80(v62 + v61, v28, &unk_1EB6E26C0, &unk_1B0E9DE10);
        if (v60 != v63 || (sub_1B04520BC(v273, v274) & 1) == 0)
        {
          sub_1B0398EFC(v28, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v242 = v31;
          v243 = &unk_1EB6E26C0;
          v244 = &unk_1B0E9DE10;
          goto LABEL_178;
        }

        sub_1B03D06F8();
        sub_1B0E46E08();
        sub_1B0398EFC(v28, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B0398EFC(v31, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      return;
    case 0xFuLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0xF)
      {
        v100 = v274 & 0xFFFFFFFFFFFFFF9;
        if (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v274 & 0xFFFFFFFFFFFFFF9) + 0x18))
        {
          v101 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
          v102 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x28);
          v274 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
          v103 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x30);
          v104 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x38);
          v105 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x39);
          v106 = *(v100 + 32);
          v107 = *(v100 + 40);
          v108 = *(v100 + 48);
          v109 = *(v100 + 56);
          v110 = *(v100 + 57);
          if (sub_1B04520BC(v101, *(v100 + 16)))
          {
            v111 = v274;

            sub_1B0CBBC34(v111, v102, v103, v104 | (v105 << 8), v106, v107, v108, v109 | (v110 << 8));
          }
        }
      }

      return;
    case 0x10uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x10)
      {
        v56 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v57 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_1B0CE5398(v56, v57);
      }

      return;
    case 0x11uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x11 && (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v274 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v274 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v117 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v118 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v119 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v120 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x28);
        if ((sub_1B04520BC(*((v42 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) != 0 && (v118 & 1) == 0 && (v120 & 1) == 0 && (v119 | v117) < 0)
        {
          __break(1u);
        }
      }

      return;
    case 0x12uLL:
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35F8, &unk_1B0EC4DC0);
      v188 = swift_projectBox();
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x12)
      {
        v189 = v188;
        LODWORD(v272) = *(v188 + 16);
        v190 = v187[20];
        v191 = *(v188 + v190);
        LODWORD(v271) = *(v188 + v190 + 8);
        v192 = v187[24];
        v193 = *(v188 + v192);
        v268[2] = v191;
        v268[3] = v193;
        v194 = *(v188 + 8);
        v273 = *v188;
        v195 = v187[16];
        v196 = swift_projectBox();
        v198 = *v196;
        v197 = *(v196 + 8);
        LODWORD(v274) = *(v196 + 16);
        v199 = *(v196 + v190);
        LODWORD(v269) = *(v196 + v190 + 8);
        v200 = *(v196 + v192);
        v268[0] = v199;
        v268[1] = v200;
        v201 = v189 + v195;
        v202 = v270;
        sub_1B03B5C80(v201, v270, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03B5C80(v196 + v195, v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v194 != v197 || (sub_1B04520BC(v273, v198) & 1) == 0 || (sub_1B0CEC380(v272, v274) & 1) == 0)
        {
          v240 = &unk_1EB6E1AF0;
          v241 = &unk_1B0E9AF40;
          sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v242 = v202;
LABEL_177:
          v243 = v240;
          v244 = v241;
          goto LABEL_178;
        }

        sub_1B03D06F8();
        sub_1B0E46E08();
        sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v202, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      return;
    case 0x13uLL:
      v91 = v274;
      if (((v91 >> 58) & 0x3C | (v91 >> 1) & 3) == 0x13)
      {
        goto LABEL_170;
      }

      return;
    case 0x14uLL:
      v123 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v124 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v125 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x1C);
      v127 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v126 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x24);
      v128 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v129 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x38);
      v130 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x58);
      v334 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x48);
      v335 = v130;
      v131 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x78);
      v132 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x68);
      v133 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x98);
      v338 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x88);
      v339 = v133;
      v134 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0xA8);
      v343 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0xD8);
      v135 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0xC8);
      v136 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0xB8);
      v340 = v134;
      v341 = v136;
      v342 = v135;
      v336 = v132;
      v337 = v131;
      v332 = v128;
      v333 = v129;
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) != 0x14)
      {
        return;
      }

      v137 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v138 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v139 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x1C);
      v141 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v140 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x24);
      v142 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v143 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x38);
      v144 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x58);
      v322 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x48);
      v323 = v144;
      v145 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x78);
      v146 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x68);
      v147 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x98);
      v326 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x88);
      v327 = v147;
      v148 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0xA8);
      v331 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0xD8);
      v149 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0xC8);
      v150 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0xB8);
      v328 = v148;
      v329 = v150;
      v330 = v149;
      v324 = v146;
      v325 = v145;
      v320 = v142;
      v321 = v143;
      if ((v124 | (v124 << 32)) != (v138 | (v138 << 32)) || (sub_1B04520BC(v123, v137) & 1) == 0 || (sub_1B0CEC380(v125, v139) & 1) == 0 || v141 != v127 || v126 != v140)
      {
        return;
      }

      v317[8] = v340;
      v317[9] = v341;
      v317[10] = v342;
      v317[4] = v336;
      v317[5] = v337;
      v317[6] = v338;
      v317[7] = v339;
      v317[0] = v332;
      v317[1] = v333;
      v317[2] = v334;
      v317[3] = v335;
      *(&v317[20] + 8) = v329;
      *(&v317[21] + 8) = v330;
      *(&v317[16] + 8) = v325;
      *(&v317[17] + 8) = v326;
      *(&v317[18] + 8) = v327;
      *(&v317[19] + 8) = v328;
      *(&v317[15] + 8) = v324;
      *(&v317[11] + 8) = v320;
      *(&v317[12] + 8) = v321;
      *(&v317[13] + 8) = v322;
      *(&v317[14] + 8) = v323;
      v318[8] = v340;
      v318[9] = v341;
      v318[10] = v342;
      v318[4] = v336;
      v318[5] = v337;
      v318[6] = v338;
      v318[7] = v339;
      v318[0] = v332;
      v318[1] = v333;
      LOBYTE(v317[11]) = v343;
      BYTE8(v317[22]) = v331;
      v319 = v343;
      v318[2] = v334;
      v318[3] = v335;
      if (sub_1B07AB810(v318) == 1)
      {
        v316[8] = *(&v317[19] + 8);
        v316[9] = *(&v317[20] + 8);
        v316[10] = *(&v317[21] + 8);
        LOBYTE(v316[11]) = BYTE8(v317[22]);
        v316[5] = *(&v317[16] + 8);
        v316[6] = *(&v317[17] + 8);
        v316[7] = *(&v317[18] + 8);
        v316[0] = *(&v317[11] + 8);
        v316[1] = *(&v317[12] + 8);
        v316[2] = *(&v317[13] + 8);
        v316[3] = *(&v317[14] + 8);
        v316[4] = *(&v317[15] + 8);
        if (sub_1B07AB810(v316) == 1)
        {
          v312 = v317[8];
          v313 = v317[9];
          v314 = v317[10];
          v315 = v317[11];
          v308 = v317[4];
          v309 = v317[5];
          v310 = v317[6];
          v311 = v317[7];
          v304 = v317[0];
          v305 = v317[1];
          v306 = v317[2];
          v307 = v317[3];
          sub_1B03B5C80(&v332, v302, &qword_1EB6E4148, &qword_1B0EE17F0);
          sub_1B03B5C80(&v320, v302, &qword_1EB6E4148, &qword_1B0EE17F0);
          v151 = &v304;
LABEL_188:
          sub_1B0398EFC(v151, &qword_1EB6E4148, &qword_1B0EE17F0);
          return;
        }

        goto LABEL_183;
      }

      v316[8] = *(&v317[19] + 8);
      v316[9] = *(&v317[20] + 8);
      v316[10] = *(&v317[21] + 8);
      LOBYTE(v316[11]) = BYTE8(v317[22]);
      v316[5] = *(&v317[16] + 8);
      v316[6] = *(&v317[17] + 8);
      v316[7] = *(&v317[18] + 8);
      v316[0] = *(&v317[11] + 8);
      v316[1] = *(&v317[12] + 8);
      v316[2] = *(&v317[13] + 8);
      v316[3] = *(&v317[14] + 8);
      v316[4] = *(&v317[15] + 8);
      if (sub_1B07AB810(v316) != 1)
      {
        v302[8] = *(&v317[19] + 8);
        v302[9] = *(&v317[20] + 8);
        v302[10] = *(&v317[21] + 8);
        v303 = BYTE8(v317[22]);
        v302[4] = *(&v317[15] + 8);
        v302[5] = *(&v317[16] + 8);
        v302[6] = *(&v317[17] + 8);
        v302[7] = *(&v317[18] + 8);
        v302[0] = *(&v317[11] + 8);
        v302[1] = *(&v317[12] + 8);
        v302[2] = *(&v317[13] + 8);
        v302[3] = *(&v317[14] + 8);
        v312 = v317[8];
        v313 = v317[9];
        v314 = v317[10];
        v315 = v317[11];
        v308 = v317[4];
        v309 = v317[5];
        v310 = v317[6];
        v311 = v317[7];
        v304 = v317[0];
        v305 = v317[1];
        v306 = v317[2];
        v307 = v317[3];
        if (sub_1B075FACC(&v304) == 1)
        {
          v298 = *(&v317[19] + 8);
          v299 = *(&v317[20] + 8);
          v300 = *(&v317[21] + 8);
          v301 = BYTE8(v317[22]);
          v294 = *(&v317[15] + 8);
          v295 = *(&v317[16] + 8);
          v296 = *(&v317[17] + 8);
          v297 = *(&v317[18] + 8);
          v290 = *(&v317[11] + 8);
          v291 = *(&v317[12] + 8);
          v292 = *(&v317[13] + 8);
          v293 = *(&v317[14] + 8);
          if (sub_1B075FACC(&v290) == 1)
          {
            sub_1B03B5C80(&v332, v288, &qword_1EB6E4148, &qword_1B0EE17F0);
            sub_1B03B5C80(&v320, v288, &qword_1EB6E4148, &qword_1B0EE17F0);
            sub_1B0398EFC(v302, &qword_1EB6E4148, &qword_1B0EE17F0);
LABEL_187:
            v298 = v317[8];
            v299 = v317[9];
            v300 = v317[10];
            v301 = v317[11];
            v294 = v317[4];
            v295 = v317[5];
            v296 = v317[6];
            v297 = v317[7];
            v290 = v317[0];
            v291 = v317[1];
            v292 = v317[2];
            v293 = v317[3];
            v151 = &v290;
            goto LABEL_188;
          }

          goto LABEL_190;
        }

        v298 = *(&v317[19] + 8);
        v299 = *(&v317[20] + 8);
        v300 = *(&v317[21] + 8);
        v301 = BYTE8(v317[22]);
        v294 = *(&v317[15] + 8);
        v295 = *(&v317[16] + 8);
        v296 = *(&v317[17] + 8);
        v297 = *(&v317[18] + 8);
        v290 = *(&v317[11] + 8);
        v291 = *(&v317[12] + 8);
        v292 = *(&v317[13] + 8);
        v293 = *(&v317[14] + 8);
        if (sub_1B075FACC(&v290) == 1)
        {
LABEL_190:
          sub_1B03B5C80(&v332, v288, &qword_1EB6E4148, &qword_1B0EE17F0);
          v245 = v288;
LABEL_191:
          sub_1B03B5C80(&v320, v245, &qword_1EB6E4148, &qword_1B0EE17F0);
          sub_1B0398EFC(v302, &qword_1EB6E4148, &qword_1B0EE17F0);
          goto LABEL_192;
        }

        v288[8] = v312;
        v288[9] = v313;
        v288[10] = v314;
        v289 = v315;
        v288[4] = v308;
        v288[5] = v309;
        v288[6] = v310;
        v288[7] = v311;
        v288[0] = v304;
        v288[1] = v305;
        v288[2] = v306;
        v288[3] = v307;
        if (sub_1B0717014(v288) == 1)
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v288);
          v247 = v246[5];
          v348 = v246[4];
          v349 = v247;
          v350 = v246[6];
          *&v351 = *(v246 + 14);
          v248 = v246[1];
          v344 = *v246;
          v345 = v248;
          v249 = v246[3];
          v346 = v246[2];
          v347 = v249;
          v284 = v298;
          v285 = v299;
          v286 = v300;
          v287 = v301;
          v280 = v294;
          v281 = v295;
          v282 = v296;
          v283 = v297;
          v276 = v290;
          v277 = v291;
          v278 = v292;
          v279 = v293;
          if (sub_1B0717014(&v276) == 1)
          {
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v276);
            v251 = v250[5];
            v359 = v250[4];
            v360 = v251;
            v361 = v250[6];
            v252 = v250[1];
            v355 = *v250;
            v356 = v252;
            v253 = v250[3];
            v357 = v250[2];
            *&v362 = *(v250 + 14);
            v358 = v253;
            sub_1B03B5C80(&v332, v275, &qword_1EB6E4148, &qword_1B0EE17F0);
            sub_1B03B5C80(&v320, v275, &qword_1EB6E4148, &qword_1B0EE17F0);
            v254 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v344, &v355);
            goto LABEL_199;
          }
        }

        else
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v288);
          v256 = v255[6];
          v351 = v255[7];
          v257 = v255[9];
          v352 = v255[8];
          v353 = v257;
          v354 = v255[10];
          v258 = v255[5];
          v348 = v255[4];
          v349 = v258;
          v350 = v256;
          v259 = v255[1];
          v344 = *v255;
          v345 = v259;
          v260 = v255[3];
          v346 = v255[2];
          v347 = v260;
          v287 = v301;
          v285 = v299;
          v286 = v300;
          v283 = v297;
          v284 = v298;
          v281 = v295;
          v282 = v296;
          v279 = v293;
          v280 = v294;
          v277 = v291;
          v278 = v292;
          v276 = v290;
          if (sub_1B0717014(&v276) != 1)
          {
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v276);
            v262 = v261[6];
            v362 = v261[7];
            v263 = v261[9];
            v363 = v261[8];
            v364 = v263;
            v365 = v261[10];
            v264 = v261[2];
            v358 = v261[3];
            v265 = v261[5];
            v359 = v261[4];
            v360 = v265;
            v361 = v262;
            v266 = v261[1];
            v355 = *v261;
            v356 = v266;
            v357 = v264;
            sub_1B03B5C80(&v332, v275, &qword_1EB6E4148, &qword_1B0EE17F0);
            sub_1B03B5C80(&v320, v275, &qword_1EB6E4148, &qword_1B0EE17F0);
            v254 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v344, &v355);
LABEL_199:
            v267 = v254;
            sub_1B0398EFC(v302, &qword_1EB6E4148, &qword_1B0EE17F0);
            if (v267)
            {
              goto LABEL_187;
            }

LABEL_192:
            v298 = v317[8];
            v299 = v317[9];
            v300 = v317[10];
            v301 = v317[11];
            v294 = v317[4];
            v295 = v317[5];
            v296 = v317[6];
            v297 = v317[7];
            v290 = v317[0];
            v291 = v317[1];
            v292 = v317[2];
            v293 = v317[3];
            v243 = &qword_1EB6E4148;
            v244 = &qword_1B0EE17F0;
            v242 = &v290;
            goto LABEL_178;
          }
        }

        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v276);
        sub_1B03B5C80(&v332, v275, &qword_1EB6E4148, &qword_1B0EE17F0);
        v245 = v275;
        goto LABEL_191;
      }

LABEL_183:
      memcpy(v316, v317, 0x169uLL);
      sub_1B03B5C80(&v332, &v304, &qword_1EB6E4148, &qword_1B0EE17F0);
      sub_1B03B5C80(&v320, &v304, &qword_1EB6E4148, &qword_1B0EE17F0);
      v243 = &unk_1EB6E60D8;
      v244 = &unk_1B0EE17F8;
      v242 = v316;
LABEL_178:
      sub_1B0398EFC(v242, v243, v244);
      return;
    case 0x15uLL:
      v160 = swift_projectBox();
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x15)
      {
        v161 = v160;
        v162 = *v160;
        v163 = *(v160 + 8);
        LODWORD(v272) = *(v160 + 12);
        v164 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35E8, &qword_1B0EA2048) + 64);
        v165 = swift_projectBox();
        v166 = *v165;
        v167 = *(v165 + 8);
        v168 = *(v165 + 12);
        v169 = v161 + v164;
        v170 = v273;
        sub_1B0CBE54C(v169, v273, type metadata accessor for MessageHeader);
        v171 = v165 + v164;
        v172 = v271;
        sub_1B0CBE54C(v171, v271, type metadata accessor for MessageHeader);
        if ((v163 | (v163 << 32)) == (v167 | (v167 << 32)) && (sub_1B04520BC(v162, v166) & 1) != 0 && v168 == v272)
        {
          sub_1B0CCFAD8();
          sub_1B0CBE5B4(v172, type metadata accessor for MessageHeader);
          sub_1B0CBE5B4(v170, type metadata accessor for MessageHeader);
        }

        else
        {
          sub_1B0CBE5B4(v172, type metadata accessor for MessageHeader);
          sub_1B0CBE5B4(v170, type metadata accessor for MessageHeader);
        }
      }

      return;
    case 0x16uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x16)
      {
        v222 = swift_projectBox();
        v223 = swift_projectBox();
        sub_1B0CBE54C(v222, v13, type metadata accessor for MessageSectionData);
        sub_1B0CBE54C(v223, v10, type metadata accessor for MessageSectionData);
        _s16IMAP2Persistence18MessageSectionDataV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v10);
        sub_1B0CBE5B4(v10, type metadata accessor for MessageSectionData);
        sub_1B0CBE5B4(v13, type metadata accessor for MessageSectionData);
      }

      return;
    case 0x17uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x17 && (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v274 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v274 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v226 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x1C);
        v227 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v228 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x1C);
        v229 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1B04520BC(*((v42 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {
          sub_1B0CEC380(v226, v228);
        }
      }

      return;
    case 0x18uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x18 && *((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v274 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v92 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v93 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1B04520BC(*((v42 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {

          sub_1B0CCE54C(v92, v93);
        }
      }

      return;
    case 0x19uLL:
      v91 = v274;
      if (((v91 >> 58) & 0x3C | (v91 >> 1) & 3) == 0x19)
      {
        goto LABEL_170;
      }

      return;
    case 0x1AuLL:
      v91 = v274;
      if (((v91 >> 58) & 0x3C | (v91 >> 1) & 3) == 0x1A)
      {
LABEL_170:
        v230 = v42 & 0xFFFFFFFFFFFFFF9;
        v231 = v91 & 0xFFFFFFFFFFFFFF9;
        if (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v91 & 0xFFFFFFFFFFFFFF9) + 0x18))
        {
          goto LABEL_171;
        }
      }

      return;
    case 0x1BuLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x1B && *((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v274 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v54 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v55 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1B04520BC(*((v42 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {

          sub_1B0CE54A4(v54, v55);
        }
      }

      return;
    case 0x1CuLL:
      v221 = v274;
      if (((v221 >> 58) & 0x3C | (v221 >> 1) & 3) == 0x1C)
      {
        goto LABEL_158;
      }

      return;
    case 0x1DuLL:
      v116 = v274;
      if (((v116 >> 58) & 0x3C | (v116 >> 1) & 3) == 0x1D)
      {
        goto LABEL_161;
      }

      return;
    case 0x1EuLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x1E && (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v274 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v274 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v213 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v214 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v215 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v216 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x38);
        v217 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v218 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v219 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v220 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x38);
        if (sub_1B04520BC(*((v42 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {
          sub_1B0AB8858(v213, v214, v217, v218);
        }
      }

      return;
    case 0x1FuLL:
      v116 = v274;
      if (((v116 >> 58) & 0x3C | (v116 >> 1) & 3) == 0x1F)
      {
LABEL_161:
        if ((*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v116 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v116 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
        {
          v232 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
          v233 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x28);
          v234 = *((v116 & 0xFFFFFFFFFFFFFF9) + 0x20);
          v235 = *((v116 & 0xFFFFFFFFFFFFFF9) + 0x28);
          if (sub_1B04520BC(*((v42 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v116 & 0xFFFFFFFFFFFFFF9) + 0x10)))
          {

            sub_1B0AB8858(v232, v233, v234, v235);
          }
        }
      }

      return;
    case 0x20uLL:
      v221 = v274;
      if (((v221 >> 58) & 0x3C | (v221 >> 1) & 3) == 0x20)
      {
LABEL_158:
        v230 = v42 & 0xFFFFFFFFFFFFFF9;
        v231 = v221 & 0xFFFFFFFFFFFFFF9;
        if ((*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v221 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v221 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
        {
LABEL_171:
          v238 = *(v230 + 32);
          v239 = *(v231 + 32);
          sub_1B04520BC(*(v230 + 16), *(v231 + 16));
        }
      }

      return;
    case 0x21uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x21 && (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v274 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v274 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v64 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v65 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1B04520BC(*((v42 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {

          sub_1B0CE55B0(v64, v65);
        }
      }

      return;
    case 0x22uLL:
      v53 = v274;
      if (((v53 >> 58) & 0x3C | (v53 >> 1) & 3) == 0x22)
      {
        goto LABEL_75;
      }

      return;
    case 0x23uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x23)
      {
        v51 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v52 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_1B0CCDE80(v51, v52);
      }

      return;
    case 0x24uLL:
      v53 = v274;
      if (((v53 >> 58) & 0x3C | (v53 >> 1) & 3) == 0x24)
      {
LABEL_75:
        if (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v53 & 0xFFFFFFFFFFFFFF9) + 0x18))
        {
          sub_1B04520BC(*((v42 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v53 & 0xFFFFFFFFFFFFFF9) + 0x10));
        }
      }

      return;
    case 0x25uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x25)
      {
        v47 = swift_projectBox();
        v48 = swift_projectBox();
        v49 = v269;
        sub_1B0CBE54C(v47, v269, type metadata accessor for Activity);
        v50 = v272;
        sub_1B0CBE54C(v48, v272, type metadata accessor for Activity);
        _s16IMAP2Persistence8ActivityV23__derived_struct_equalsySbAC_ACtFZ_0(v49, v50);
        sub_1B0CBE5B4(v50, type metadata accessor for Activity);
        sub_1B0CBE5B4(v49, type metadata accessor for Activity);
      }

      return;
    case 0x26uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x26)
      {
        v236 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v237 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0CE5798(v236, v237);
LABEL_168:
      }

      return;
    case 0x27uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x27 && *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10) == *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10))
      {
        v224 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v225 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x18);

        sub_1B0CE5920(v224, v225);
      }

      return;
    case 0x28uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x28)
      {
        v74 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v75 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10);

        goto LABEL_48;
      }

      return;
    case 0x29uLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x29 && (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v274 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v274 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v121 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v122 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1B04520BC(*((v42 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {

          sub_1B03D1D9C(v121, v122);
        }
      }

      return;
    case 0x2AuLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x2A)
      {
        v74 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v75 = *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10);

LABEL_48:
        sub_1B0BE9028(v74, v75);
      }

      return;
    case 0x2BuLL:
      if (((v274 >> 58) & 0x3C | (v274 >> 1) & 3) == 0x2B && *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10) == *((v274 & 0xFFFFFFFFFFFFFF9) + 0x10))
      {
        v46 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v274 & 0xFFFFFFFFFFFFFF9) + 0x18);
      }

      return;
    case 0x2CuLL:
      return;
    default:
      if (!((v274 >> 58) & 0x3C | (v274 >> 1) & 3))
      {
        v45 = *(v42 + 16) == *(v274 + 16);
      }

      return;
  }
}

BOOL sub_1B0CBDF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 != a1)
  {
    return 0;
  }

  if (BYTE4(a1) == 2)
  {
    if (BYTE4(a4) != 2)
    {
      return 0;
    }
  }

  else
  {
    if (BYTE4(a4) == 2)
    {
      return 0;
    }

    v6 = a3;
    v7 = a6;
    v8 = sub_1B0CC9810(__PAIR64__(a2, HIDWORD(a1)) & 0xFFFFFFFF01010101, SHIDWORD(a2), __PAIR64__(a5, HIDWORD(a4)) & 0xFFFFFFFF01010101, SHIDWORD(a5));
    a3 = v6;
    a6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    v9 = a6;
    v10 = a3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v10) = sub_1B0AFDF14(v10, v9);

    return (v10 & 1) != 0;
  }

  return !a6;
}

uint64_t sub_1B0CBE04C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  result = 0;
  if (a1 == a5 && a6 == a2)
  {
    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && a3 == a7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1B0CBE094()
{
  result = qword_1EB6E60D0;
  if (!qword_1EB6E60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E60D0);
  }

  return result;
}

unint64_t sub_1B0CBE0EC()
{
  result = qword_1EB6DC9F8;
  if (!qword_1EB6DC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC9F8);
  }

  return result;
}

uint64_t sub_1B0CBE140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x54 && *(a1 + 8))
  {
    return (*a1 + 84);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 1) & 0xFFFFFFBF | ((*a1 & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x53)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0CBE19C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x53)
  {
    *result = a2 - 84;
    if (a3 >= 0x54)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x54)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 6) & 1 | (2 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1B0CBE200(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x2C)
  {
    *result = ((a2 << 58) | (2 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 44)) | 0xB000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Action.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD0)
  {
    goto LABEL_17;
  }

  if (a2 + 48 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 48) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 48;
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

      return (*a1 | (v4 << 8)) - 48;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v8 = v6 - 49;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Action.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD0)
  {
    v4 = 0;
  }

  if (a2 > 0xCF)
  {
    v5 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
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
    *result = a2 + 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B0CBE3AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0CBE3CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for MailboxSyncStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Action.UnreadCountOutsideWindowOfInterest(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 26))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Action.UnreadCountOutsideWindowOfInterest(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
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

  *(result + 26) = v3;
  return result;
}

uint64_t sub_1B0CBE4AC(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0CBE4C8(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 25) = 1;
  }

  else
  {
    *(result + 25) = 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Action.FetchedWindowUpdate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B0CBE54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CBE5B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Activity.MailboxStatus.Info.fetch.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return result;
}

uint64_t Activity.MailboxStatus.Info.FetchProgress.total.getter(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t static Activity.MailboxStatus.Info.__derived_struct_equals(_:_:)(int a1, uint64_t a2, uint64_t a3, __int16 a4, int a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  if ((a1 ^ a5))
  {
    return 0;
  }

  if (a4)
  {
    if ((a8 & 1) == 0)
    {
      return 0;
    }

    return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
  }

  result = 0;
  if ((a8 & 1) == 0 && a2 == a6 && a3 == a7)
  {
    return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
  }

  return result;
}

uint64_t sub_1B0CBE7A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[25];
  if (a1[24])
  {
    if (!a2[24])
    {
      return 0;
    }

    return v3 ^ a2[25] ^ 1u;
  }

  result = 0;
  if ((a2[24] & 1) == 0)
  {
    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
    if (v5 == *(a2 + 1) && v6 == *(a2 + 2))
    {
      return v3 ^ a2[25] ^ 1u;
    }
  }

  return result;
}

uint64_t Activity.MailboxStatus.isSelectedAndInSync.getter()
{
  v1 = type metadata accessor for Activity.MailboxStatus(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B04166B0(v0, v4, type metadata accessor for Activity.MailboxStatus);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B0416AA0(v4, type metadata accessor for Activity.MailboxStatus);
  }

  else if ((*v4 & 1) == 0)
  {
    v5 = (v4[24] | (*(v4 + 1) == 0)) & (v4[25] ^ 1);
    return v5 & 1;
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t Activity.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for ConnectionStatus.Error(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Activity.MailboxStatus(0);
  v14 = *(v33 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v33);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - v19;
  v21 = v3;
  v22 = *v3;
  if (*(v22 + 16))
  {
    v23 = sub_1B03B8A9C(a1, v35);
    if (v24)
    {
      sub_1B04166B0(*(v22 + 56) + *(v14 + 72) * v23, v18, type metadata accessor for Activity.MailboxStatus);
      sub_1B0CC0084(v18, v20, type metadata accessor for Activity.MailboxStatus);
      v25 = v34;
      sub_1B0CC0084(v20, v34, type metadata accessor for Activity.MailboxStatus);
      v26 = 0;
LABEL_10:
      v30 = v33;
      return (*(v14 + 56))(v25, v26, 1, v30);
    }
  }

  v27 = v35;
  v28 = type metadata accessor for Activity(0);
  sub_1B03B5C80(v21 + *(v28 + 24), v8, &qword_1EB6E35A0, &qword_1B0E99850);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B0398EFC(v8, &qword_1EB6E35A0, &qword_1B0E99850);
    v29 = sub_1B0A93330(a1, v27, v21[1]);
    v25 = v34;
    if ((v29 & 1) == 0)
    {
      v26 = 1;
      goto LABEL_10;
    }

    v30 = v33;
  }

  else
  {
    sub_1B0CC0084(v8, v13, type metadata accessor for ConnectionStatus.Error);
    v25 = v34;
    sub_1B0CC0084(v13, v34, type metadata accessor for ConnectionStatus.Error);
    v30 = v33;
  }

  swift_storeEnumTagMultiPayload();
  v26 = 0;
  return (*(v14 + 56))(v25, v26, 1, v30);
}

uint64_t Activity.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for Activity.MailboxStatus(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03B5C80(a1, v11, &qword_1EB6E1668, &qword_1B0E99858);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B0398EFC(v11, &qword_1EB6E1668, &qword_1B0E99858);
    (*(v13 + 56))(v8, 1, 1, v12);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = v20;
    sub_1B0CBEEE8(v8, a2, v20);
    sub_1B0B9397C(a2, v17);

    return sub_1B0398EFC(a1, &qword_1EB6E1668, &qword_1B0E99858);
  }

  else
  {
    sub_1B0CC0084(v11, v16, type metadata accessor for Activity.MailboxStatus);
    sub_1B04166B0(v16, v8, type metadata accessor for Activity.MailboxStatus);
    (*(v13 + 56))(v8, 0, 1, v12);
    sub_1B0CBEEE8(v8, a2, v20);
    sub_1B0398EFC(a1, &qword_1EB6E1668, &qword_1B0E99858);
    return sub_1B0416AA0(v16, type metadata accessor for Activity.MailboxStatus);
  }
}

uint64_t sub_1B0CBEEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Activity.MailboxStatus(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1B0398EFC(a1, &qword_1EB6E1668, &qword_1B0E99858);
    sub_1B0CBF56C(a2, a3, v10);

    return sub_1B0398EFC(v10, &qword_1EB6E1668, &qword_1B0E99858);
  }

  else
  {
    sub_1B0CC0084(a1, v15, type metadata accessor for Activity.MailboxStatus);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1B0CBFC1C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

void (*Activity.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858) - 8) + 64);
  if (v7)
  {
    v9[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v9[3] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[4] = v11;
  Activity.subscript.getter(a2, a3, v11);
  return sub_1B0CBF1BC;
}

void sub_1B0CBF1BC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    sub_1B03B5C80((*a1)[4], v3, &qword_1EB6E1668, &qword_1B0E99858);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    Activity.subscript.setter(v3, v7, v6);
    sub_1B0398EFC(v4, &qword_1EB6E1668, &qword_1B0E99858);
  }

  else
  {
    v8 = **a1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    Activity.subscript.setter(v4, v7, v6);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1B0CBF290(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B019E4(&v14, v12, v13);
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

      return v15;
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

uint64_t sub_1B0CBF394(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v13 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(v2 + 48) + ((v9 << 9) | (8 * v10)));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CC91C4(&v12, v11);
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

      return v13;
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

unint64_t sub_1B0CBF490(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  v4 = sub_1B0E46CB8();

  return sub_1B0CBF4FC(a1, v4);
}

unint64_t sub_1B0CBF4FC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1B0CBF56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1B03B8A9C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B0CBFE2C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Activity.MailboxStatus(0);
    v22 = *(v15 - 8);
    sub_1B0CC0084(v14 + *(v22 + 72) * v9, a3, type metadata accessor for Activity.MailboxStatus);
    sub_1B0CBFA48(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Activity.MailboxStatus(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1B0CBF6D8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Activity.MailboxStatus(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60C0, &qword_1B0EE0F88);
  v44 = a2;
  result = sub_1B0E46698();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1B0CC0084(v31, v45, type metadata accessor for Activity.MailboxStatus);
      }

      else
      {
        sub_1B04166B0(v31, v45, type metadata accessor for Activity.MailboxStatus);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      v32 = *(v12 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v29);
      result = sub_1B0E46CB8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1B0CC0084(v45, *(v12 + 56) + v30 * v20, type metadata accessor for Activity.MailboxStatus);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_1B0CBFA48(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v10);
      result = sub_1B0E46CB8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 16 * v3);
      v14 = (v12 + 16 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for Activity.MailboxStatus(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B0CBFC1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B03B8A9C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1B0CBFE2C();
      goto LABEL_7;
    }

    sub_1B0CBF6D8(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_1B03B8A9C(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1B0E46BA8();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for Activity.MailboxStatus(0) - 8) + 72) * v12;

    return sub_1B0CC0454(a1, v20);
  }

LABEL_13:
  sub_1B0CBFD80(v12, a2, a3, a1, v18);

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0CBFD80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Activity.MailboxStatus(0);
  result = sub_1B0CC0084(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Activity.MailboxStatus);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_1B0CBFE2C()
{
  v1 = v0;
  v2 = type metadata accessor for Activity.MailboxStatus(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60C0, &qword_1B0EE0F88);
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
    v14 = *(v5 + 64);
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
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v25 = *v23;
        v24 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1B04166B0(*(v5 + 56) + v27, v31, type metadata accessor for Activity.MailboxStatus);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v25;
        v29[1] = v24;
        sub_1B0CC0084(v26, *(v28 + 56) + v27, type metadata accessor for Activity.MailboxStatus);
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v16);
    }

    v19 = v11;
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
        v7 = v33;
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

uint64_t sub_1B0CC0084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B0CC00EC()
{
  sub_1B0CC0188();
  if (v0 <= 0x3F)
  {
    sub_1B0CC01F4();
    if (v1 <= 0x3F)
    {
      sub_1B0CC0250();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0CC0188()
{
  if (!qword_1EB6DB768)
  {
    type metadata accessor for Activity.MailboxStatus(255);
    sub_1B03B8BD8();
    v0 = sub_1B0E44708();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB768);
    }
  }
}

void sub_1B0CC01F4()
{
  if (!qword_1EB6DAD48)
  {
    sub_1B03B8BD8();
    v0 = sub_1B0E45588();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DAD48);
    }
  }
}

void sub_1B0CC0250()
{
  if (!qword_1EB6DCAC8)
  {
    type metadata accessor for ConnectionStatus.Error(255);
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DCAC8);
    }
  }
}

uint64_t sub_1B0CC02A8()
{
  result = type metadata accessor for ConnectionStatus.Error(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0CC0314(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[26])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0CC0368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B0CC03D0(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *v3;
      v5 = *(v3 - 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03AB2E0(&v7, v5, v4);

      v3 += 4;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1B0CC0454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity.MailboxStatus(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Configuration.logName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t Configuration.logName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Configuration.connection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Configuration() + 20);

  return sub_1B06D9758(v3, a1);
}

uint64_t type metadata accessor for Configuration()
{
  result = qword_1EB6DCC88;
  if (!qword_1EB6DCC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Configuration.connection.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Configuration() + 20);

  return sub_1B0CC0674(a1, v3);
}

uint64_t sub_1B0CC0674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionConfiguration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Configuration.mailboxFilter.setter(char a1)
{
  result = type metadata accessor for Configuration();
  *(v1 + *(result + 24)) = a1 & 1;
  return result;
}

uint64_t Configuration.fetchedMessageMetadata.setter(char a1)
{
  result = type metadata accessor for Configuration();
  *(v1 + *(result + 28)) = a1 & 1;
  return result;
}

void Configuration.init(logName:connection:mailboxFilter:fetchedMessageMetadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for Configuration();
  sub_1B06D95C4(a3, a6 + v10[5]);
  *(a6 + v10[6]) = a4 & 1;
  *(a6 + v10[7]) = a5 & 1;
}

unint64_t sub_1B0CC0914()
{
  result = qword_1EB6E60F0;
  if (!qword_1EB6E60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E60F0);
  }

  return result;
}

unint64_t sub_1B0CC096C()
{
  result = qword_1EB6E60F8;
  if (!qword_1EB6E60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E60F8);
  }

  return result;
}

uint64_t sub_1B0CC09E8()
{
  result = type metadata accessor for ConnectionConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ConnectionConfiguration.sourceApplicationKind.setter(char a1)
{
  result = type metadata accessor for ConnectionConfiguration();
  *(v1 + *(result + 36)) = a1 & 1;
  return result;
}

uint64_t ConnectionConfiguration.init(transportLayerSecurity:transportLayerSecurityOptions:endpoint:prohibitConstrainedPaths:prohibitedInterfaceTypes:sourceApplicationBundleIdentifier:sourceApplicationKind:networkAccountIdentifier:)@<X0>(char a1@<W0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{

  v15 = type metadata accessor for ConnectionConfiguration();
  v16 = (a8 + v15[8]);
  v17 = (a8 + v15[10]);
  v18 = v15[6];
  *(a8 + v15[7]) = a1;
  v19 = sub_1B0E43BC8();
  result = (*(*(v19 - 8) + 32))(a8, a2, v19);
  *(a8 + v15[5]) = a3;
  *(a8 + v18) = a4;
  *v16 = a5;
  v16[1] = a6;
  *(a8 + v15[9]) = a7 & 1;
  *v17 = a9;
  v17[1] = a10;
  return result;
}

uint64_t CertificateTrust.Policy.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

unint64_t CertificateTrust.Policy.description.getter(unsigned __int8 a1)
{
  result = 0xD000000000000013;
  if (a1 >= 2u)
  {
    return 0xD000000000000011;
  }

  return result;
}

unint64_t sub_1B0CC1288()
{
  result = qword_1EB6E6100;
  if (!qword_1EB6E6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6100);
  }

  return result;
}

unint64_t sub_1B0CC12E0()
{
  result = qword_1EB6E6108;
  if (!qword_1EB6E6108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6108);
  }

  return result;
}

void sub_1B0CC1364()
{
  sub_1B0E43BC8();
  if (v0 <= 0x3F)
  {
    sub_1B0BEBCCC();
    if (v1 <= 0x3F)
    {
      sub_1B07CEB70();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B0CC1470(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s16IMAP2Persistence11CredentialsO21__derived_enum_equalsySbAC_ACtFZ_0(v8, v9) & 1;
}

uint64_t CredentialsRequestID.hashValue.getter()
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t _s16IMAP2Persistence11CredentialsO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[7];
  v8 = a1[9];
  v9 = (v8 >> 59) & 6 | ((v7 & 0x2000000000000000) != 0);
  if (v9 <= 1)
  {
    if (v9)
    {
      v21 = *(a2 + 56);
      v22 = *(a2 + 72);
      if (((v22 >> 59) & 6 | ((v21 & 0x2000000000000000) != 0)) != 1)
      {
        return 0;
      }

      v31 = a1[5];
      v32 = a1[4];
      v23 = *(a2 + 16);
      v24 = *(a2 + 24);
      v25 = *(a2 + 32);
      v26 = *(a2 + 40);
      v29 = *(a2 + 48);
      v30 = a1[6];
      v27 = *(a2 + 64);
      v28 = a1[8];
      if ((sub_1B0AB8858(v3, v4, *a2, *(a2 + 8)) & 1) == 0 || (sub_1B0AB8858(v5, v6, v23, v24) & 1) == 0 || (sub_1B0AB8858(v32, v31, v25, v26) & 1) == 0 || (sub_1B0AB8858(v30, v7 & 0xDFFFFFFFFFFFFFFFLL, v29, v21 & 0xDFFFFFFFFFFFFFFFLL) & 1) == 0)
      {
        return 0;
      }

      v15 = v8 & 0xCFFFFFFFFFFFFFFFLL;
      v17 = v22 & 0xCFFFFFFFFFFFFFFFLL;
      v16 = v27;
      v3 = v28;
    }

    else
    {
      if ((*(a2 + 72) >> 59) & 6 | ((*(a2 + 56) & 0x2000000000000000) != 0))
      {
        return 0;
      }

      v13 = *(a2 + 16);
      v14 = *(a2 + 24);
      if ((sub_1B0AB8858(v3, v4, *a2, *(a2 + 8)) & 1) == 0)
      {
        return 0;
      }

      v3 = v5;
      v15 = v6;
      v16 = v13;
      v17 = v14;
    }
  }

  else
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        if (((*(a2 + 72) >> 59) & 6 | ((*(a2 + 56) & 0x2000000000000000) != 0)) == 3)
        {
          if (v10 = *(a2 + 16), v11 = *(a2 + 24), v3 == *a2) && v4 == *(a2 + 8) || (sub_1B0E46A78())
          {
            if (v5 != v10 || v6 != v11)
            {

              return sub_1B0E46A78();
            }

            return 1;
          }
        }
      }

      else
      {
        v18 = *(a2 + 56);
        v19 = *(a2 + 72);
        if (((v19 >> 59) & 6 | ((v18 & 0x2000000000000000) != 0)) == 4 && v19 == 0x2000000000000000)
        {
          v20 = vorrq_s8(*(a2 + 24), *(a2 + 40));
          if (!(*&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) | *(a2 + 64) | *(a2 + 16) | *(a2 + 8) | *a2 | v18))
          {
            return 1;
          }
        }
      }

      return 0;
    }

    if (((*(a2 + 72) >> 59) & 6 | ((*(a2 + 56) & 0x2000000000000000) != 0)) != 2)
    {
      return 0;
    }

    v16 = *a2;
    v17 = *(a2 + 8);
    v15 = a1[1];
  }

  return sub_1B0AB8858(v3, v15, v16, v17);
}

unint64_t sub_1B0CC1830()
{
  result = qword_1EB6E6110;
  if (!qword_1EB6E6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6110);
  }

  return result;
}

uint64_t sub_1B0CC1884(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 80))
  {
    return (*a1 + 60);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x3B)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1B0CC18F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 60;
    if (a3 >= 0x3C)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      v3 = (-a2 >> 3) & 7 | (8 * (-a2 & 0x3F));
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 3) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_1B0CC1978(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
    v3 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 1) << 60);
    *(result + 40) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 56) = v2;
    *(result + 72) = v3;
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0x2000000000000000;
  }

  return result;
}