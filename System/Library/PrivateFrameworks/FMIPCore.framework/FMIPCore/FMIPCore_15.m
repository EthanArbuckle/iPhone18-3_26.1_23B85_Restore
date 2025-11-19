uint64_t sub_24A7C3D80()
{
  v1 = *v0;
  v2 = qword_281518D88;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_24A7C3DCC()
{
  v1 = sub_24A82CA34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_24A82CA24();
  v7 = qword_281518F30;
  swift_beginAccess();
  (*(v2 + 40))(v6 + v7, v5, v1);
  return swift_endAccess();
}

double sub_24A7C3F0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24A6A2D48(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A6A62AC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_24A6A50DC((*(v12 + 56) + 32 * v9), a3);
    sub_24A7C4524(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_24A7C3FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_24A6A2D48(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A78629C();
      v12 = v20;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 24 * v9;
    v15 = *(v14 + 1);
    v16 = *(v14 + 2);
    v17 = *(v14 + 3);
    v18 = *(v14 + 8);
    v19 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 1) = v15;
    *(a3 + 2) = v16;
    *(a3 + 3) = v17;
    *(a3 + 8) = v18;
    *(a3 + 16) = v19;
    result = sub_24A7C46D4(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_24A7C4080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24A6A2D48(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A786440();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
    v22 = *(v15 - 8);
    sub_24A67E8FC(v14 + *(v22 + 72) * v9, a3, &unk_27EF5E150, &unk_24A83CCC0);
    sub_24A7C4890(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_24A7C4208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24A6A2D48(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A787468();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for FMIPMonitoredDevice(0);
    v22 = *(v15 - 8);
    sub_24A68D690(v14 + *(v22 + 72) * v9, a3, type metadata accessor for FMIPMonitoredDevice);
    sub_24A7C4F64(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for FMIPMonitoredDevice(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_24A7C4374(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24A82DCC4();

      sub_24A82D094();
      v13 = sub_24A82DD24();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

uint64_t sub_24A7C4524(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_24A82DCC4();

      sub_24A82D094();
      v14 = sub_24A82DD24();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A7C46D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_24A82DCC4();

      sub_24A82D094();
      v14 = sub_24A82DD24();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (v3 != v6 || v20 >= v21 + 24)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24A7C4890(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24A82DCC4();

      sub_24A82D094();
      v13 = sub_24A82DD24();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
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

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A7C4A94(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24A82DCC4();

      sub_24A82D094();
      v13 = sub_24A82DD24();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

unint64_t sub_24A7C4C44(int64_t a1, uint64_t a2)
{
  v43 = sub_24A82CAA4();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_24A82D6D4();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_24A67A06C(&qword_281514670, MEMORY[0x277CC95F0]);
      v26 = sub_24A82CF54();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_24A7C4F64(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24A82DCC4();

      sub_24A82D094();
      v13 = sub_24A82DD24();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for FMIPMonitoredDevice(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
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

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A7C5150(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_24A82DCC4();
      sub_24A82D094();

      result = sub_24A82DD24();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24A7C5384(int64_t a1, uint64_t a2)
{
  v43 = sub_24A82CAA4();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_24A82D6D4();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_24A67A06C(&qword_281514670, MEMORY[0x277CC95F0]);
      v26 = sub_24A82CF54();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + a1);
          v33 = (v31 + v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_24A7C56A4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 24);
  v5 = v4[1];
  result = sub_24A7BF0A0(*(v1 + 16), *v4);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
  }

  return result;
}

unint64_t sub_24A7C56E0()
{
  result = qword_27EF5EE48;
  if (!qword_27EF5EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE48);
  }

  return result;
}

unint64_t sub_24A7C5794()
{
  result = type metadata accessor for FMIPDevice();
  if (v1 <= 0x3F)
  {
    result = sub_24A7C5820();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24A7C5820()
{
  result = qword_27EF5EE68;
  if (!qword_27EF5EE68)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EF5EE68);
  }

  return result;
}

uint64_t sub_24A7C5870(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);

  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_24A68761C(a1, a2, &v15);
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPManager: didReceive new image version: %s", v9, 0xCu);
    sub_24A6876E8(v10);
    MEMORY[0x24C21E1D0](v10, -1, -1);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  v11 = a3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 96))(a3, a1, a2, ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A7C5A30(unsigned __int8 a1, uint64_t a2)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v9 = 0xEF64656C62616E45;
    v10 = 0x626154736D657469;
    if (a1 != 2)
    {
      v10 = 0xD000000000000010;
      v9 = 0x800000024A843F00;
    }

    v11 = 0x800000024A843EB0;
    v12 = 0xD000000000000014;
    if (a1)
    {
      v11 = 0x800000024A843ED0;
    }

    else
    {
      v12 = 0xD000000000000019;
    }

    if (a1 <= 1u)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    if (a1 <= 1u)
    {
      v14 = v11;
    }

    else
    {
      v14 = v9;
    }

    v15 = sub_24A68761C(v13, v14, &v21);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: didChangeServerConfiguration: %s", v7, 0xCu);
    sub_24A6876E8(v8);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v16 = a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    v20 = a1;
    (*(v18 + 104))(a2, &v20, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A7C5C70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_24A82CE54();
  v40 = *(v42 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPDevice();
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);
  sub_24A68FE6C(a1, v15, type metadata accessor for FMIPDevice);
  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v1;
    v20 = v19;
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v20 = 136315394;
    *(v20 + 4) = sub_24A68761C(0x6E756F5379616C70, 0xE900000000000064, aBlock);
    *(v20 + 12) = 2080;
    v21 = FMIPDevice.debugDescription.getter();
    v22 = v9;
    v23 = a1;
    v25 = v24;
    sub_24A69010C(v15, type metadata accessor for FMIPDevice);
    v26 = sub_24A68761C(v21, v25, aBlock);
    a1 = v23;
    v9 = v22;
    v13 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_24A675000, v17, v18, "FMIPServerInteractionController: stopMonitoring: action: %s, device: %s", v20, 0x16u);
    v27 = v37;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v27, -1, -1);
    v28 = v20;
    v2 = v38;
    MEMORY[0x24C21E1D0](v28, -1, -1);
  }

  else
  {

    sub_24A69010C(v15, type metadata accessor for FMIPDevice);
  }

  v29 = *(v2 + qword_281512FE0);
  sub_24A68FE6C(a1, v13, type metadata accessor for FMIPDevice);
  v30 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v2;
  sub_24A68D690(v13, v31 + v30, type metadata accessor for FMIPDevice);
  aBlock[4] = sub_24A7C61FC;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCA550;
  v32 = _Block_copy(aBlock);

  sub_24A82CE24();
  v45 = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v33 = v41;
  v34 = v44;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v33, v32);
  _Block_release(v32);
  (*(v43 + 8))(v33, v34);
  (*(v40 + 8))(v9, v42);
}

uint64_t sub_24A7C61FC()
{
  v1 = *(type metadata accessor for FMIPDevice() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_24A7C1C0C(v2, v3);
}

uint64_t sub_24A7C6268()
{
  v1 = *(type metadata accessor for FMIPMonitoredDevice(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FMIPDevice() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24A7C26F8(v0 + v2, v0 + v5, v6);
}

uint64_t sub_24A7C6360()
{
  v1 = *(type metadata accessor for FMIPDevice() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  return sub_24A7C1A2C((v0 + v2), v6, v7);
}

unint64_t sub_24A7C642C()
{
  result = qword_27EF5EE88;
  if (!qword_27EF5EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE88);
  }

  return result;
}

uint64_t sub_24A7C6480(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A681458(a1, a2);
  }

  return a1;
}

uint64_t sub_24A7C6494(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24A69BD40;

  return sub_24A7C0658(a1, v3, v4, v6, v7, v8, v9, v10);
}

uint64_t sub_24A7C6584()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  return sub_24A7C1408();
}

uint64_t sub_24A7C6598(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5EE78, &unk_24A83CC90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FMIPDeviceLostModeMetadata.ownerNumber.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t FMIPDeviceLostModeMetadata.email.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t FMIPDeviceLostModeMetadata.message.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t FMIPDeviceLostModeMetadata.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPDeviceLostModeMetadata() + 48);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24A7C6774()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A821900();
  return sub_24A82DD24();
}

uint64_t sub_24A7C67C4()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A821900();
  return sub_24A82DD24();
}

uint64_t sub_24A7C6808@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A7C6FB4();
  *a2 = result;
  return result;
}

uint64_t sub_24A7C6838@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A68EBCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A7C6864@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A7C6FB4();
  *a1 = result;
  return result;
}

uint64_t sub_24A7C6898(uint64_t a1)
{
  v2 = sub_24A6882B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7C68D4(uint64_t a1)
{
  v2 = sub_24A6882B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void FMIPDeviceLostModeMetadata.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5EEA0, &unk_24A83CCE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = *(type metadata accessor for FMIPDeviceLostModeMetadata() + 48);
  v25 = v1;
  v10 = sub_24A82C994();
  v11 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6882B0();
  v12 = v10;
  sub_24A82DD84();
  [v10 fm_epoch];
  LOBYTE(v26) = 8;
  sub_24A82DB54();
  if (!v2)
  {
    v13 = v25;
    v26 = qword_24A83CF40[v25[56]];
    sub_24A82DB84();
    LOBYTE(v26) = 4;
    sub_24A82DB04();

    v14 = *(v13 + 5);
    v15 = *(v13 + 6);
    LOBYTE(v26) = 6;
    sub_24A82DB04();
    v16 = *(v13 + 1);
    v17 = *(v13 + 2);
    LOBYTE(v26) = 1;
    sub_24A82DB04();
    v18 = *(v13 + 3);
    v19 = *(v13 + 4);
    LOBYTE(v26) = 2;
    sub_24A82DB04();
    v20 = *v13;
    LOBYTE(v26) = 5;
    sub_24A82DB14();
    v21 = v13[1];
    LOBYTE(v26) = 0;
    sub_24A82DB14();
    v22 = v13[2];
    LOBYTE(v26) = 3;
    sub_24A82DB14();
    v23 = v13[3];
    LOBYTE(v26) = 7;
    sub_24A82DB14();
  }

  (*(v5 + 8))(v8, v4);
}

double FMIPDeviceLostModeMetadata.init(lostModeInfo:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_24A82CA34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = [a1 timestamp];
  if (v16)
  {
    v17 = v16;
    sub_24A82C9F4();

    v18 = *(v9 + 32);
    v18(v7, v13, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v18(v15, v7, v8);
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    sub_24A82C964();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_24A793F90(v7);
    }
  }

  v19 = type metadata accessor for FMIPDeviceLostModeMetadata();
  (*(v9 + 32))(a2 + *(v19 + 48), v15, v8);
  v20 = [a1 message];
  if (v20)
  {
    v21 = v20;
    v22 = sub_24A82CFC4();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  *(a2 + 40) = v22;
  *(a2 + 48) = v24;
  v25 = [a1 email];
  if (v25)
  {
    v26 = v25;
    v27 = sub_24A82CFC4();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  *(a2 + 24) = v27;
  *(a2 + 32) = v29;
  v30 = [a1 phoneNumber];
  if (v30)
  {
    v31 = v30;
    v32 = sub_24A82CFC4();
    v34 = v33;
  }

  else
  {

    v32 = 0;
    v34 = 0xE000000000000000;
  }

  *(a2 + 8) = v32;
  *(a2 + 16) = v34;
  *&result = 0x100000001;
  *a2 = 1;
  *(a2 + 56) = 2;
  return result;
}

unint64_t sub_24A7C6F60()
{
  result = qword_27EF5EEA8;
  if (!qword_27EF5EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EEA8);
  }

  return result;
}

uint64_t sub_24A7C6FB4()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A7C7004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_24A82D6C4();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *&v16 = sub_24A7C76B8(&v17, result, *(a1 + 36), 0, a1);
    *(&v16 + 1) = v6;
    v7 = v17;
    v8 = BYTE1(v17);
    v9 = BYTE2(v17);
    v10 = BYTE3(v17);
    v11 = *(&v17 + 1);
    v12 = v18;
    *&v19 = v16;
    *(&v19 + 1) = v6;
    LODWORD(v20) = v17;
    *(&v20 + 1) = *(&v17 + 1);
    v21 = v18;
    v13 = v19;
    v14 = v20;
    *(a2 + 32) = v18;
    *a2 = v13;
    *(a2 + 16) = v14;
    v22[0] = v16;
    v22[1] = v6;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v26 = v10;
    v27 = v11;
    v28 = v12;

    v15 = v11;
    sub_24A7C7BD4(&v19, v29);
    sub_24A67F378(v22, &qword_27EF5DF40, &qword_24A837160);
    v29[0] = v16;
    v29[1] = v17;
    v30 = v18;
    return sub_24A67F378(v29, &qword_27EF5DF40, &qword_24A837160);
  }

  return result;
}

uint64_t sub_24A7C71D0(uint64_t a1, int a2, void *a3, char *a4, double a5)
{
  LODWORD(v8) = a2;
  v10 = sub_24A82CDF4();
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CE54();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A7C7004(a1, &aBlock);
  if (v43)
  {
    a5 = *&v46;
    v8 = v44;
    v18 = v45;

    v19 = (v8 >> 8) & 1;
    v20 = (v8 >> 16) & 1;
    v21 = v8 >> 24;
  }

  else
  {
    LODWORD(v20) = (v8 >> 16) & 1;
    LODWORD(v19) = (v8 >> 8) & 1;
    LODWORD(v21) = v8 >> 24;
    v18 = a3;
  }

  v22 = 256;
  if (!v19)
  {
    v22 = 0;
  }

  v23 = v22 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v24 = 0x10000;
  if (!v20)
  {
    v24 = 0;
  }

  v25 = (v23 | v24) & 0xFFFFFFFF00FFFFFFLL | (v21 << 24);
  v26 = &a4[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_currentLocation];
  v27 = *&a4[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_currentLocation + 8];
  *v26 = v25;
  *(v26 + 1) = v18;
  *(v26 + 2) = a5;
  v28 = v18;

  v29 = *&a4[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationUpdatingQueue];
  v30 = swift_allocObject();
  *(v30 + 16) = a4;
  *(v30 + 24) = v8 & 1;
  *(v30 + 25) = v19;
  *(v30 + 26) = v20;
  *(v30 + 27) = v21;
  *(v30 + 32) = v28;
  *(v30 + 40) = a5;
  v46 = sub_24A7C7B90;
  v47 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_24A699BA0;
  v45 = &unk_285DCA838;
  v31 = _Block_copy(&aBlock);
  v32 = v28;
  v33 = a4;
  sub_24A82CE24();
  v41 = MEMORY[0x277D84F90];
  sub_24A695668(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v34 = v40;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v17, v13, v31);
  _Block_release(v31);

  (*(v39 + 8))(v13, v34);
  (*(v37 + 8))(v17, v38);
}

void sub_24A7C7560(void *a1, int a2, void *a3, double a4)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = a2 & 0x101;
    v10 = BYTE2(a2) & 1;
    v11 = HIBYTE(a2);
    v12 = a3;
    v13 = a4;
    v8 = a3;
    sub_24A74A7F0(a1, &v9);
    swift_unknownObjectRelease();
  }
}

id FMIPLocationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMIPLocationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A7C76B8(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(a5 + 56) + 24 * a2;
    v9 = *(v8 + 1);
    v10 = *(v8 + 2);
    v11 = *(v8 + 3);
    v12 = *(v8 + 8);
    v13 = *(v8 + 16);
    *result = *v8;
    *(result + 1) = v9;
    *(result + 2) = v10;
    *(result + 3) = v11;
    *(result + 8) = v12;
    *(result + 16) = v13;

    v14 = v12;
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_24A7C7778(void *a1)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = a1;
  oslog = sub_24A82CD94();
  v4 = sub_24A82D4E4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_24A82DC74();
    v9 = sub_24A68761C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A675000, oslog, v4, "FMIPLocationController: location manager failed with error: %s", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  else
  {
  }
}

void *sub_24A7C7910()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D0EBC8]) init];
  if (v0)
  {
    v1 = v0;
    v2 = 36;
    v3 = &unk_285DBF5C8;
    do
    {
      v4 = [objc_allocWithZone(MEMORY[0x277D0EB58]) initWithLatitude:*v3 longitude:*(v3 - 1)];
      [v1 addVertex_];

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);
    v6 = sub_24A82CD94();
    v7 = sub_24A82D4E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24A675000, v6, v7, "Unable to instantiate GEOMapRegion for denylist region.", v8, 2u);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    return 0;
  }

  return v1;
}

uint64_t sub_24A7C7B4C(uint64_t a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 16);
  if (*(v1 + 18))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_24A7C71D0(a1, v3 | v4 | (*(v1 + 19) << 24), *(v1 + 24), *(v1 + 40), *(v1 + 32));
}

void sub_24A7C7B90()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 24);
  if (*(v0 + 26))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  sub_24A7C7560(*(v0 + 16), v2 | v3 | (*(v0 + 27) << 24), *(v0 + 32), *(v0 + 40));
}

uint64_t sub_24A7C7BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DF40, &qword_24A837160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPPlaySoundChannels.description.getter()
{
  v1 = 0xE400000000000000;
  v2 = *v0;
  v3 = 1952867692;
  v4 = 0xE400000000000000;
  v5 = 1702060387;
  v6 = 0xEA0000000000656ELL;
  v7 = 0x6F6C61646E617473;
  if (v2 != 3)
  {
    v7 = 1702131053;
    v6 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v0)
  {
    v3 = 0x7468676972;
    v1 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v0 <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C21C9E0](v8, v9);

  return 46;
}

uint64_t FMIPPlaySoundChannels.rawValue.getter()
{
  v1 = *v0;
  v2 = 1952867692;
  v3 = 1702060387;
  v4 = 0x6F6C61646E617473;
  if (v1 != 3)
  {
    v4 = 1702131053;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7468676972;
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

FMIPCore::FMIPPlaySoundChannels_optional __swiftcall FMIPPlaySoundChannels.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A7C7DF8()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7C7EC4()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7C7F7C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7C8050(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952867692;
  v5 = 0xE400000000000000;
  v6 = 1702060387;
  v7 = 0xEA0000000000656ELL;
  v8 = 0x6F6C61646E617473;
  if (v2 != 3)
  {
    v8 = 1702131053;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7468676972;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24A7C80D8()
{
  v1 = 0xE400000000000000;
  v2 = *v0;
  v3 = 1952867692;
  v4 = 0xE400000000000000;
  v5 = 1702060387;
  v6 = 0xEA0000000000656ELL;
  v7 = 0x6F6C61646E617473;
  if (v2 != 3)
  {
    v7 = 1702131053;
    v6 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v0)
  {
    v3 = 0x7468676972;
    v1 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v0 <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C21C9E0](v8, v9);

  return 46;
}

FMIPCore::FMIPPlaySoundReason_optional __swiftcall FMIPPlaySoundReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPPlaySoundReason.rawValue.getter()
{
  v1 = 0x6E756F5379616C50;
  v2 = 0x6F536574756D6E55;
  if (*v0 != 2)
  {
    v2 = 0x6E756F53706F7453;
  }

  if (*v0)
  {
    v1 = 0x6E756F536574754DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A7C8280()
{
  result = qword_27EF5EF78;
  if (!qword_27EF5EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EF78);
  }

  return result;
}

unint64_t sub_24A7C82E4()
{
  result = qword_27EF5EF80;
  if (!qword_27EF5EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EF80);
  }

  return result;
}

uint64_t sub_24A7C8338()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7C8400()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7C84B4()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7C8584(uint64_t *a1@<X8>)
{
  v2 = 0x6E756F5379616C50;
  v3 = 0xEB00000000646E75;
  v4 = 0x6F536574756D6E55;
  if (*v1 != 2)
  {
    v4 = 0x6E756F53706F7453;
    v3 = 0xE900000000000064;
  }

  if (*v1)
  {
    v2 = 0x6E756F536574754DLL;
  }

  if (*v1 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 <= 1u)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = v3;
  }

  *a1 = v5;
  a1[1] = v6;
}

uint64_t type metadata accessor for FMIPPlaySoundRequest()
{
  result = qword_27EF5EF88;
  if (!qword_27EF5EF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A7C8674()
{
  result = type metadata accessor for FMIPDevice();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A7C8724()
{
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_24A82C6F4();

  v4 = [v2 bundleForClass_];
  sub_24A82C6F4();

  v5 = v0 + qword_27EF78F00;
  if ((*(v0 + qword_27EF78F00 + 217) & 2) == 0)
  {
    v6 = *(v5 + 104);
    v7 = *(v5 + 112);
    v8 = v6 == 1684099177 && v7 == 0xE400000000000000;
    if (!v8 && (sub_24A82DC04() & 1) == 0 && (v6 != 1685016681 || v7 != 0xE400000000000000) && (sub_24A82DC04() & 1) == 0 && (v6 != 0x726F737365636341 || v7 != 0xE900000000000079))
    {
      sub_24A82DC04();
    }
  }

  v9 = [v2 bundleForClass_];
  v10 = sub_24A82C6F4();
  v12 = v11;

  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24A8327A0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_24A6B243C();
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  v14 = sub_24A82CFF4();

  return v14;
}

uint64_t sub_24A7C8AB4()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78F08);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v56 = v1;
    *&v59 = MEMORY[0x277D84F90];
    sub_24A6FC900(0, v3, 0);
    v4 = v59;
    v5 = (v2 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 == 3;
      if (v7 == 3)
      {
        v9 = 0x6F6C61646E617473;
      }

      else
      {
        v9 = 1702131053;
      }

      if (v8)
      {
        v10 = 0xEA0000000000656ELL;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      if (v6 == 2)
      {
        v9 = 1702060387;
        v10 = 0xE400000000000000;
      }

      if (v6)
      {
        v11 = 0x7468676972;
      }

      else
      {
        v11 = 1952867692;
      }

      if (v6)
      {
        v12 = 0xE500000000000000;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      if (v6 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v6 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      *&v59 = v4;
      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_24A6FC900((v15 > 1), v16 + 1, 1);
        v4 = v59;
      }

      *(v4 + 16) = v16 + 1;
      v17 = v4 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      --v3;
    }

    while (v3);
    v1 = v56;
  }

  v60 = sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
  *&v59 = v4;
  v18 = qword_27EF5D920;
  v19 = *(v1 + qword_27EF5D920);

  os_unfair_lock_lock((v19 + 24));
  v20 = *(v19 + 16);

  os_unfair_lock_unlock((v19 + 24));

  v58 = v20;
  if (v60)
  {
    sub_24A6A50DC(&v59, v57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = sub_24A6A4F8C(v57, 0x736C656E6E616863, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_24A6F6C40(&v59);
    sub_24A7C3F0C(0x736C656E6E616863, 0xE800000000000000, v57);
    v22 = sub_24A6F6C40(v57);
  }

  v23 = *(v1 + v18);
  MEMORY[0x28223BE20](v22);

  os_unfair_lock_lock((v23 + 24));
  sub_24A6A3D28((v23 + 16));
  os_unfair_lock_unlock((v23 + 24));

  v24 = MEMORY[0x277D837D0];
  v26 = *(v1 + qword_27EF78F00);
  v25 = *(v1 + qword_27EF78F00 + 8);
  v60 = MEMORY[0x277D837D0];
  *&v59 = v26;
  *(&v59 + 1) = v25;
  v27 = *(v1 + v18);

  os_unfair_lock_lock((v27 + 24));
  v28 = *(v27 + 16);

  os_unfair_lock_unlock((v27 + 24));

  sub_24A6A50DC(&v59, v57);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v58 = v28;
  v30 = sub_24A6A4F8C(v57, 0x656369766564, 0xE600000000000000, v29);
  v31 = *(v1 + v18);
  MEMORY[0x28223BE20](v30);

  os_unfair_lock_lock((v31 + 24));
  sub_24A6FF740((v31 + 16));
  os_unfair_lock_unlock((v31 + 24));

  v32 = sub_24A7C8724();
  v60 = v24;
  *&v59 = v32;
  *(&v59 + 1) = v33;
  v34 = *(v1 + v18);

  os_unfair_lock_lock((v34 + 24));
  v35 = *(v34 + 16);

  os_unfair_lock_unlock((v34 + 24));

  sub_24A6A50DC(&v59, v57);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v58 = v35;
  v37 = sub_24A6A4F8C(v57, 0x7463656A627573, 0xE700000000000000, v36);
  v38 = *(v1 + v18);
  MEMORY[0x28223BE20](v37);

  os_unfair_lock_lock((v38 + 24));
  sub_24A6FF740((v38 + 16));
  os_unfair_lock_unlock((v38 + 24));

  v39 = *(v2 + 16);
  v40 = 0x6E756F5379616C50;
  if (v39 == 1)
  {
    v40 = 0x6E756F536574754DLL;
  }

  v8 = v39 == 0;
  v41 = 0x6E756F53706F7453;
  if (!v8)
  {
    v41 = v40;
  }

  v60 = v24;
  *&v59 = v41;
  *(&v59 + 1) = 0xE900000000000064;
  v42 = *(v1 + v18);

  os_unfair_lock_lock((v42 + 24));
  v43 = *(v42 + 16);

  os_unfair_lock_unlock((v42 + 24));

  sub_24A6A50DC(&v59, v57);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v58 = v43;
  v45 = sub_24A6A4F8C(v57, 0x6974634172657375, 0xEA00000000006E6FLL, v44);
  v46 = *(v1 + v18);
  MEMORY[0x28223BE20](v45);

  os_unfair_lock_lock((v46 + 24));
  sub_24A6FF740((v46 + 16));
  os_unfair_lock_unlock((v46 + 24));

  v47 = sub_24A7C9288();
  v48 = *(v1 + qword_27EF78F10);
  v49 = sub_24A82D5B4();
  v60 = v47;
  *&v59 = v49;
  v50 = *(v1 + v18);

  os_unfair_lock_lock((v50 + 24));
  v51 = *(v50 + 16);

  os_unfair_lock_unlock((v50 + 24));

  v58 = v51;
  if (v47)
  {
    sub_24A6A50DC(&v59, v57);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v53 = sub_24A6A4F8C(v57, 0xD00000000000001ALL, 0x800000024A8495C0, v52);
  }

  else
  {
    sub_24A6F6C40(&v59);
    sub_24A7C3F0C(0xD00000000000001ALL, 0x800000024A8495C0, v57);
    v53 = sub_24A6F6C40(v57);
  }

  v54 = *(v1 + v18);
  MEMORY[0x28223BE20](v53);

  os_unfair_lock_lock((v54 + 24));
  sub_24A6FF740((v54 + 16));
  os_unfair_lock_unlock((v54 + 24));
}

uint64_t sub_24A7C91AC()
{
  sub_24A6FE094(v0 + qword_27EF78F00);
  v1 = *(v0 + qword_27EF78F08);
}

uint64_t sub_24A7C91EC()
{
  v0 = sub_24A6F8F90();
  v1 = qword_27EF78F00;

  sub_24A6FE094(v2 + v1);
  v3 = *(v0 + qword_27EF78F08);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_24A7C9288()
{
  result = qword_27EF5EF98;
  if (!qword_27EF5EF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF5EF98);
  }

  return result;
}

uint64_t FMReverseGeocodingCache.__allocating_init(preferredLocale:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  FMReverseGeocodingCache.init(preferredLocale:)(a1);
  return v5;
}

uint64_t *FMReverseGeocodingCache.init(preferredLocale:)(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = *v1;
  v4 = sub_24A82D554();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82D534();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_24A82CE54();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24A82CA04();
  v11 = qword_27EF5EFA8;
  v12 = *(v3 + 80);
  v13 = *(v3 + 88);
  type metadata accessor for FMReverseGeocodingCache.FMReverseGeocodingCacheContext();
  *(v2 + v11) = sub_24A82CEB4();
  v14 = qword_27EF5EFB0;
  *(v2 + v14) = sub_24A82CEB4();
  *(v2 + qword_27EF5EFB8) = MEMORY[0x277D84F98];
  *(v2 + qword_27EF5EFC0) = 0;
  if (qword_27EF5CB88 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_27EF78C00);

  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136315138;
    v20 = *v2;
    v21 = sub_24A82DDB4();
    v23 = sub_24A68761C(v21, v22, &v35);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_24A675000, v16, v17, "%s: initialized", v18, 0xCu);
    sub_24A6876E8(v19);
    MEMORY[0x24C21E1D0](v19, -1, -1);
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  v24 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0xD000000000000022, 0x800000024A849680);
  v25 = *v2;
  v26 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v26);

  MEMORY[0x24C21C9E0](0x6974617265706F2ELL, 0xEF65756575516E6FLL);
  v27 = sub_24A82CF94();

  [v24 setName_];

  [v24 setMaxConcurrentOperationCount_];
  sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_24A82D854();

  v35 = 0xD000000000000022;
  v36 = 0x800000024A849680;
  v28 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v28);

  MEMORY[0x24C21C9E0](0x737365636F72702ELL, 0xED00006575657551);
  sub_24A82CE44();
  v35 = MEMORY[0x277D84F90];
  sub_24A7C98D0();
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A7964DC();
  sub_24A82D6B4();
  (*(v32 + 104))(v31, *MEMORY[0x277D85260], v33);
  v29 = sub_24A82D594();
  *(v2 + qword_27EF5EFC8) = v24;
  sub_24A67FC08(v34, v2 + qword_27EF78F28);
  *(v2 + qword_27EF5EFD0) = v29;
  return v2;
}

unint64_t sub_24A7C98D0()
{
  result = qword_2815146D0;
  if (!qword_2815146D0)
  {
    sub_24A82D534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815146D0);
  }

  return result;
}

uint64_t FMReverseGeocodingCache.deinit()
{
  v1 = qword_27EF5EFA0;
  v2 = sub_24A82CA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_27EF5EFA8);

  v4 = *(v0 + qword_27EF5EFB0);

  v5 = *(v0 + qword_27EF5EFB8);

  sub_24A793A8C(v0 + qword_27EF78F28);
  return v0;
}

uint64_t FMReverseGeocodingCache.__deallocating_deinit()
{
  FMReverseGeocodingCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7C9A40(void (*a1)(void))
{
  a1();

  return sub_24A82DDB4();
}

uint64_t sub_24A7C9AC4(uint64_t a1)
{
  result = sub_24A679170(319, &qword_27EF5D830, 0x277CE41F8);
  if (v3 <= 0x3F)
  {
    result = sub_24A82CA34();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24A7C9B8C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_24A82CA34() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = *(v8 + 64) + ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        if (v7 == v14)
        {
          v24 = *(v6 + 48);

          return v24((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10);
        }

        else
        {
          v25 = *(v8 + 48);

          return v25((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (*(v8 + 64) + ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) == -1)
  {
    v22 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v21 = *(v8 + 64) + ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) + 1;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  return v14 + (v22 | v20) + 1;
}

void sub_24A7C9E28(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_24A82CA34() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v10 + 64) + ((v13 + ((v12 + 40) & ~v12) + v14) & ~v14) + 1;
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (*(v10 + 64) + ((v13 + ((v12 + 40) & ~v12) + v14) & ~v14) != -1)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    if (v9 == v16)
    {
      v24 = *(v8 + 56);

      v24((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, a2);
    }

    else
    {
      v25 = *(v10 + 56);

      v25((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12) + v13 + v14) & ~v14, a2, v11);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

uint64_t sub_24A7CA1E4(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5F0F8, &unk_24A83D568);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7CE178();
  sub_24A82DD84();
  v11 = *v3;
  v18[15] = 0;
  sub_24A82DB34();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v18[14] = 1;
  sub_24A82DB34();
  v13 = v3[2];
  v18[13] = 2;
  sub_24A82DB34();
  v14 = v3[3];
  v18[12] = 3;
  sub_24A82DB34();
  v15 = v3[4];
  v18[11] = 4;
  sub_24A82DB34();
  v17 = v3[5];
  v18[10] = 5;
  sub_24A82DB34();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24A7CA3E4()
{
  v1 = *v0;
  v2 = 0x3156676174726961;
  v3 = 0x3256616E6D66;
  if (v1 != 3)
  {
    v3 = 0x6E6D66656C707061;
  }

  v4 = 0x3256676174726961;
  if (v1 != 1)
  {
    v4 = 0x3156616E6D66;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A7CA4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A7CDD44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7CA4C8(uint64_t a1)
{
  v2 = sub_24A7CE178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7CA504(uint64_t a1)
{
  v2 = sub_24A7CE178();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A7CA540@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24A7CDF3C(a1, v6);
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

void sub_24A7CA59C()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  oslog = sub_24A82CD94();
  v3 = sub_24A82D504();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (*(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isRefreshing))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (*(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isRefreshing))
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = sub_24A68761C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24A675000, oslog, v3, "FMIPRefreshingController: auto refreshing set to: %s", v4, 0xCu);
    sub_24A6876E8(v5);
    MEMORY[0x24C21E1D0](v5, -1, -1);
    MEMORY[0x24C21E1D0](v4, -1, -1);
  }
}

uint64_t sub_24A7CA72C()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);

    v9 = sub_24A695068(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C21C960](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A68761C(v16, v18, &v24);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPRefreshingController<%s>.deinit", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v20 = *(v1 + 24);

  sub_24A6BAF88(v1 + 32);
  sub_24A67F378(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_selectedDevice, &qword_27EF5DF08, &qword_24A837770);
  sub_24A6876E8((v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController));

  v21 = *(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_tapContexts);

  sub_24A67F378(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_lastRefreshTime, &qword_27EF5E0E0, &qword_24A836D90);

  v22 = *(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber + 8);

  return v1;
}

uint64_t sub_24A7CA99C()
{
  sub_24A7CA72C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7CA9FC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v6 = sub_24A82CDC4();
    sub_24A6797D0(v6, qword_281518F88);
    v7 = sub_24A82CD94();
    v8 = sub_24A82D504();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24A675000, v7, v8, "FMIPRefreshingController: initClientRequest completed", v9, 2u);
      MEMORY[0x24C21E1D0](v9, -1, -1);
    }

    if (!a1)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_39:
        *(v5 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isInitializing) = 0;
      }

      sub_24A74F980(a2);
LABEL_37:
      swift_unknownObjectRelease();
      goto LABEL_39;
    }

    v10 = *(a1 + 24);
    if (!v10)
    {
      swift_retain_n();
LABEL_27:
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (*(a1 + 56))
        {
          v51 = *(a1 + 56);
        }

        else
        {
          v51 = MEMORY[0x277D84F90];
        }

        sub_24A750128(v51);

        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_24A74FDAC();
        swift_unknownObjectRelease();
      }

      v52 = *(a1 + 40);

      if (v52 != 1 || !swift_unknownObjectWeakLoadStrong())
      {

        goto LABEL_39;
      }

      sub_24A74F7E0();

      goto LABEL_37;
    }

    v11 = *(v10 + 16);
    v12 = *(v10 + 32);
    v13 = *(v10 + 48);
    v14 = *(v10 + 80);
    v80 = *(v10 + 64);
    v81 = v14;
    v82 = *(v10 + 96);
    v78 = v12;
    v79 = v13;
    v77 = v11;
    v15 = *(a1 + 16);
    v66 = v5;
    v67 = v10;
    v16 = *(v5 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber + 8);
    v56 = *(v5 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber);
    v68 = a1;
    if (v15)
    {
      v17 = *(v15 + 16);
      swift_retain_n();

      if (v17)
      {
        sub_24A6EF948(&v77, &v71);

        v18 = sub_24A6A2D48(0x4153487369, 0xE500000000000000);
        if (v19)
        {
          v57 = v16;
          sub_24A67E168(*(v15 + 56) + 32 * v18, v69);

          if (swift_dynamicCast())
          {
            v63 = v71;
            v20 = *(&v77 + 1);
            v60 = v77;
            v21 = *(&v78 + 1);
            v54 = v78;
            v22 = *(&v79 + 1);
            v23 = v80;
            v24 = BYTE2(v79);
            v25 = BYTE1(v79);
            v26 = *(&v80 + 1);
            v29 = *(&v81 + 1);
            v28 = v81;
            v27 = v82;

            sub_24A6EF9B4(&v77);
            v30 = v20;
            v31 = v21;
            v32 = v25;
            v33 = v54;
            v34 = v24;
            v35 = v63;
            v36 = v26;
            v38 = v57;
            v37 = v60;
            v39 = v79;
            if (!v57)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v29 = *(&v81 + 1);
            v27 = v82;
            v36 = *(&v80 + 1);
            v28 = v81;
            v22 = *(&v79 + 1);
            v23 = v80;
            v35 = BYTE3(v79);
            v34 = BYTE2(v79);
            v32 = BYTE1(v79);
            v31 = *(&v78 + 1);
            v33 = v78;
            v30 = *(&v77 + 1);
            v37 = v77;
            v38 = v57;
            v39 = v79;
            if (!v57)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_22;
        }

        v38 = v16;
      }

      else
      {
        sub_24A6EF948(&v77, &v71);
        v38 = v16;
      }

      v29 = *(&v81 + 1);
      v27 = v82;
      v36 = *(&v80 + 1);
      v28 = v81;
      v22 = *(&v79 + 1);
      v23 = v80;
      v35 = BYTE3(v79);
      v34 = BYTE2(v79);
      v32 = BYTE1(v79);
      v31 = *(&v78 + 1);
      v33 = v78;
      v30 = *(&v77 + 1);
      v37 = v77;
      v39 = v79;
      if (!v38)
      {
LABEL_23:
        *&v71 = v37;
        *(&v71 + 1) = v30;
        *&v72 = v33;
        *(&v72 + 1) = v31;
        LOBYTE(v73) = v39;
        BYTE1(v73) = v32;
        BYTE2(v73) = v34;
        BYTE3(v73) = v35;
        *(&v73 + 1) = v22;
        *&v74 = v23;
        *(&v74 + 1) = v36;
        *&v75 = v28;
        *(&v75 + 1) = v29;
        v76 = v27;
        v5 = v66;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v69[2] = v73;
          v69[3] = v74;
          v69[4] = v75;
          v70 = v76;
          v69[0] = v71;
          v69[1] = v72;
          v50 = *(v67 + 104);

          sub_24A750480(v69, v50);

          swift_unknownObjectRelease();
          sub_24A6EF9B4(&v71);
        }

        else
        {
          sub_24A6EF9B4(&v71);
        }

        a1 = v68;
        goto LABEL_27;
      }
    }

    else
    {
      v64 = *(&v80 + 1);
      v53 = v82;
      v55 = v81;
      v23 = v80;
      v58 = *(&v81 + 1);
      v61 = *(&v79 + 1);
      v40 = BYTE3(v79);
      v41 = BYTE2(v79);
      v42 = BYTE1(v79);
      v43 = *(&v78 + 1);
      v33 = v78;
      v44 = *(&v77 + 1);
      v37 = v77;
      swift_retain_n();
      v38 = v16;

      sub_24A6EF948(&v77, &v71);

      v30 = v44;
      v31 = v43;
      v32 = v42;
      v34 = v41;
      v35 = v40;
      v27 = v53;
      v28 = v55;
      v29 = v58;
      v22 = v61;
      v36 = v64;
      v39 = v79;
      if (!v38)
      {
        goto LABEL_23;
      }
    }

LABEL_22:
    *&v71 = v37;
    *(&v71 + 1) = v30;
    *&v72 = v33;
    *(&v72 + 1) = v31;
    LOBYTE(v73) = v39;
    BYTE1(v73) = v32;
    BYTE2(v73) = v34;
    BYTE3(v73) = v35;
    *(&v73 + 1) = v22;
    *&v74 = v23;
    *(&v74 + 1) = v36;
    *&v75 = v28;
    *(&v75 + 1) = v29;
    v76 = v27;
    v45 = v31;
    v46 = v30;
    v62 = v22;
    v65 = v36;
    v47 = v34;
    v59 = v38;
    v48 = v32;
    v49 = v39;

    sub_24A6EF9B4(&v71);
    v39 = v49;
    v30 = v46;
    v31 = v45;
    v32 = v48;
    v34 = v47;
    v22 = v62;
    v36 = v65;
    v29 = v56;
    v27 = v59;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_24A7CAFA4(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isRefreshing) = 1;
  sub_24A7CA59C();
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 24);
  v3 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 32);
  sub_24A67DF6C((a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController), v2);
  (*(v3 + 64))(v2, v3);
  v4 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_apsConnectionHandler);
  sub_24A69A660();
  return sub_24A7CB348(0.0);
}

uint64_t sub_24A7CB038()
{
  v1 = sub_24A82CDF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A82CE54();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshQueue);
  aBlock[4] = sub_24A7CE304;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCADC8;
  v10 = _Block_copy(aBlock);

  sub_24A82CE24();
  v14 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

id sub_24A7CB2E0(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isRefreshing) = 0;
  sub_24A7CA59C();
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_apsConnectionHandler);
  sub_24A790F48();
  v3 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshTimer);

  return [v3 invalidate];
}

uint64_t sub_24A7CB348(double a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CE54();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_maxCallbackInterval) < a1)
  {
    a1 = *(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_maxCallbackInterval);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_281518F88);

  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    swift_beginAccess();
    v17 = *(v12 + 16);

    *(v16 + 4) = v17;
    *(v16 + 12) = 2048;
    *(v16 + 14) = *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_callbackInterval);
    _os_log_impl(&dword_24A675000, v14, v15, "FMIPRefreshingController: scheduleNextRefresh scheduling next target interval: %f callback: %f", v16, 0x16u);
    MEMORY[0x24C21E1D0](v16, -1, -1);
  }

  else
  {
  }

  v22 = *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshQueue);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v12;
  aBlock[4] = sub_24A7CE1D4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCAD78;
  v20 = _Block_copy(aBlock);

  sub_24A82CE24();
  v26 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v7, v20);
  _Block_release(v20);
  (*(v25 + 8))(v7, v4);
  (*(v23 + 8))(v11, v24);
}

void sub_24A7CB7A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - v5;
  v7 = sub_24A82CA34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isRefreshing) == 1)
    {
      v17 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_lastRefreshTime;
      swift_beginAccess();
      sub_24A67E964(v16 + v17, v6, &qword_27EF5E0E0, &qword_24A836D90);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_24A67F378(v6, &qword_27EF5E0E0, &qword_24A836D90);
      }

      else
      {
        (*(v8 + 32))(v14, v6, v7);
        swift_beginAccess();
        v22 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_minCallbackInterval;
        if (*(a2 + 16) >= *(v16 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_minCallbackInterval))
        {
          (*(v8 + 8))(v14, v7);
        }

        else
        {
          sub_24A82CA24();
          sub_24A82C9D4();
          v24 = v23;
          v25 = *(v8 + 8);
          v25(v12, v7);
          sub_24A82C9D4();
          if (qword_281515DC8 != -1)
          {
            v42 = v26;
            swift_once();
            v26 = v42;
          }

          v27 = v24 - v26;
          v28 = sub_24A82CDC4();
          sub_24A6797D0(v28, qword_281518F88);
          v29 = sub_24A82CD94();
          v30 = sub_24A82D504();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 134217984;
            *(v31 + 4) = v27;
            _os_log_impl(&dword_24A675000, v29, v30, "FMIPRefreshingController: last refresh interval %f ms", v31, 0xCu);
            MEMORY[0x24C21E1D0](v31, -1, -1);
          }

          v25(v14, v7);
          v32 = *(v16 + v22);
          if (v27 < v32)
          {
            v33 = v32 + v27 * -1000.0;
            swift_beginAccess();
            v34 = 0.0;
            if (v33 > 0.0)
            {
              v34 = v33;
            }

            *(a2 + 16) = v34;
          }
        }
      }

      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v35 = sub_24A82CDC4();
      sub_24A6797D0(v35, qword_281518F88);

      v36 = sub_24A82CD94();
      v37 = sub_24A82D504();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        swift_beginAccess();
        *(v38 + 4) = *(a2 + 16);
        _os_log_impl(&dword_24A675000, v36, v37, "FMIPRefreshingController: scheduling next refresh in %f ms", v38, 0xCu);
        MEMORY[0x24C21E1D0](v38, -1, -1);
      }

      v39 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshTimer;
      [*(v16 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshTimer) invalidate];
      swift_beginAccess();
      v40 = [objc_opt_self() timerWithTimeInterval:v16 target:sel_refreshTimerFired selector:0 userInfo:0 repeats:*(a2 + 16) / 1000.0];
      v41 = [objc_opt_self() mainRunLoop];
      [v41 addTimer:v40 forMode:*MEMORY[0x277CBE640]];

      v19 = *(v16 + v39);
      *(v16 + v39) = v40;
    }

    else
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v18 = sub_24A82CDC4();
      sub_24A6797D0(v18, qword_281518F88);
      v19 = sub_24A82CD94();
      v20 = sub_24A82D504();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_24A675000, v19, v20, "FMIPRefreshingController: Not scheduling another refresh because refreshing is disabled", v21, 2u);
        MEMORY[0x24C21E1D0](v21, -1, -1);
      }
    }
  }
}

uint64_t sub_24A7CBDC4()
{
  v1 = sub_24A82CDF4();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A82CE54();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshQueue);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24A7CE1CC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCAC10;
  v10 = _Block_copy(aBlock);

  sub_24A82CE24();
  v15 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v8, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

uint64_t sub_24A7CC0A0()
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
    _os_log_impl(&dword_24A675000, v1, v2, "FMIPRefreshingController: refreshTimerFired", v3, 2u);
    MEMORY[0x24C21E1D0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_24A74F104;
    *(v7 + 24) = v6;
    aBlock[4] = sub_24A6806A0;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DCAC88;
    v8 = _Block_copy(aBlock);
    v9 = _Block_copy(v8);
    v10 = qword_281513E40;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = _os_activity_create(&dword_24A675000, "FMIPRefreshingController.refresh", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = _Block_copy(v9);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_24A6A0BC0;
    *(v14 + 24) = v13;
    v17[4] = sub_24A680674;
    v17[5] = v14;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24A6805E4;
    v17[3] = &unk_285DCAD00;
    v15 = _Block_copy(v17);

    os_activity_apply(v11, v15);
    _Block_release(v15);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    _Block_release(v8);
    _Block_release(v9);
    result = swift_unknownObjectRelease();
    if (v15)
    {
      __break(1u);
    }

    else
    {

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_24A7CC4A0(uint64_t a1, char a2)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPRefreshingController: Refreshing", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    v23 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts);
    v24 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 16);
    v25 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 32);
    v26 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 48);
    sub_24A6BBA94(&qword_27EF5F100, &qword_24A83D578);
    v12 = sub_24A82D624();
    v14 = sub_24A68761C(v12, v13, &v27);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPRefreshingController: Refreshing request itemCounts: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  v22 = MEMORY[0x24C21D990](v15, v16, v17, v18, v19, v20, v21);
  sub_24A7CC6C4(a1, a2 & 1);
  objc_autoreleasePoolPop(v22);
}

uint64_t sub_24A7CC6C4(uint64_t a1, int a2)
{
  v50 = a2;
  v3 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v43 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - v8;
  v46 = sub_24A82CA34();
  v44 = *(v46 - 8);
  v49 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v46);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v43 - v12;
  sub_24A82CA24();
  v13 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_tapContexts;
  swift_beginAccess();
  v52 = *(a1 + v13);
  v14 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_selectedDevice;
  swift_beginAccess();
  sub_24A67E964(a1 + v14, v9, &qword_27EF5DF08, &qword_24A837770);
  v15 = (a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts);
  v17 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 32);
  v16 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 40);
  v18 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 48);
  v19 = type metadata accessor for FMIPRefreshClientRequest();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = v15[1];
  v45 = *v15;
  v43 = v23;
  sub_24A67E964(v9, v22 + qword_281518E68, &qword_27EF5DF08, &qword_24A837770);
  *(v22 + qword_281518E70) = v52;
  *(v22 + qword_281518E60) = 0;
  v24 = v22 + qword_27EF78FB0;
  v25 = v43;
  *v24 = v45;
  *(v24 + 16) = v25;
  *(v24 + 32) = v17;
  *(v24 + 40) = v16;
  *(v24 + 48) = v18;
  swift_bridgeObjectRetain_n();
  *&v45 = sub_24A6A183C(0x4368736572666572, 0xED0000746E65696CLL, 0, 0, 1);
  sub_24A67F378(v9, &qword_27EF5DF08, &qword_24A837770);
  v26 = v44;
  v27 = *(v44 + 16);
  v29 = v46;
  v28 = v47;
  v30 = v51;
  v27(v47, v51, v46);
  (*(v26 + 56))(v28, 0, 1, v29);
  v31 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_lastRefreshTime;
  swift_beginAccess();
  sub_24A7CE1DC(v28, a1 + v31);
  swift_endAccess();
  v32 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 24);
  *&v43 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 32);
  v47 = sub_24A67DF6C((a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController), v32);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = v48;
  v27(v48, v30, v29);
  v35 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v36 = (v49 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v33;
  (*(v26 + 32))(v37 + v35, v34, v29);
  v38 = v37 + v36;
  *v38 = v52;
  *(v38 + 8) = v50;
  v39 = v43;
  v40 = *(v43 + 56);
  v41 = type metadata accessor for FMIPRefreshClientResponse();
  v40(v45, sub_24A7CE24C, v37, v41, v32, v39);

  return (*(v26 + 8))(v51, v29);
}

uint64_t sub_24A7CCB7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v97 = a4;
  v100 = a1;
  v96 = sub_24A82CA34();
  v9 = *(v96 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v96);
  v98 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v99 = result;
  if (result)
  {
    v95 = v9;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      if (v100)
      {
        v94 = a6;
        v15 = qword_281515DC8;

        if (v15 != -1)
        {
          swift_once();
        }

        v16 = sub_24A82CDC4();
        sub_24A6797D0(v16, qword_281518F88);
        v17 = sub_24A82CD94();
        v18 = sub_24A82D504();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v93 = v14;
          v20 = a5;
          v21 = v19;
          *v19 = 0;
          _os_log_impl(&dword_24A675000, v17, v18, "FMIPRefreshingController: refreshClientRequest completed", v19, 2u);
          v22 = v21;
          a5 = v20;
          v14 = v93;
          MEMORY[0x24C21E1D0](v22, -1, -1);
        }

        v23 = *(v100 + 24);
        if (!v23)
        {

LABEL_37:
          v70 = *(v100 + 16);

          v72 = sub_24A7CD670(v71);

          if ((v72 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
          {
            *&v108 = *(v14 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_rangingParameters);
            sub_24A7507F8(&v108);
            swift_unknownObjectRelease();
          }

          sub_24A7CD4D8(v73);

          v74 = swift_unknownObjectWeakLoadStrong();
          v75 = MEMORY[0x277D84F90];
          if (v74)
          {
            if (*(v100 + 56))
            {
              v76 = *(v100 + 56);
            }

            else
            {
              v76 = MEMORY[0x277D84F90];
            }

            sub_24A750128(v76);

            swift_unknownObjectRelease();
          }

          v77 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_tapContexts;
          swift_beginAccess();
          v78 = *(v14 + v77);
          *(v14 + v77) = v75;

          if (swift_unknownObjectWeakLoadStrong())
          {
            v79 = v98;
            sub_24A82CA04();
            sub_24A750950(v97, v79, a5);
            swift_unknownObjectRelease();
            (*(v95 + 8))(v79, v96);
          }

          if (v94)
          {
            v80 = *(v99 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 24);
            v81 = *(v99 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 32);
            sub_24A67DF6C((v99 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController), v80);
            v82 = *((*(v81 + 32))(v80, v81) + 16);

            v83 = &OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_callbackInterval;
            if (v82)
            {
              v83 = &OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_minCallbackInterval;
            }

            sub_24A7CB348(*(v14 + *v83));
          }

          v84 = *(v100 + 40);

          if (v84 == 1 && swift_unknownObjectWeakLoadStrong())
          {
            sub_24A74F7E0();

            return swift_unknownObjectRelease();
          }
        }

        v24 = *(v23 + 64);
        v110 = *(v23 + 48);
        v111 = v24;
        *v112 = *(v23 + 80);
        *&v112[16] = *(v23 + 96);
        v25 = *(v23 + 32);
        v108 = *(v23 + 16);
        v109 = v25;
        v26 = *(v100 + 16);
        swift_beginAccess();
        v27 = swift_weakLoadStrong();
        if (v27)
        {
          v28 = *(v27 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber + 8);
          v91 = *(v27 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber);

          sub_24A6EF948(&v108, &v103);
          v93 = v28;
        }

        else
        {

          sub_24A6EF948(&v108, &v103);

          v91 = 0;
          v93 = 0;
        }

        v92 = a5;
        if (v26)
        {
          if (*(v26 + 16) && (v43 = sub_24A6A2D48(0x4153487369, 0xE500000000000000), (v44 & 1) != 0))
          {
            sub_24A67E168(*(v26 + 56) + 32 * v43, &v103);

            if (swift_dynamicCast())
            {
              v88 = LOBYTE(v101[0]);
              v45 = *(&v108 + 1);
              v46 = *(&v109 + 1);
              v86 = v109;
              v87 = v108;
              v47 = v111;
              v89 = *(&v110 + 1);
              v90 = v23;
              v48 = BYTE2(v110);
              v49 = BYTE1(v110);
              v51 = *(&v111 + 1);
              v50 = *v112;
              v85 = *&v112[8];

              sub_24A6EF9B4(&v108);
              v52 = v45;
              v53 = v85;
              v54 = v46;
              v55 = v49;
              v57 = v86;
              v56 = v87;
              v58 = v48;
              v59 = v88;
              v60 = v89;
              v23 = v90;
              v61 = v51;
LABEL_30:
              v62 = v110;
              if (v93)
              {
                *&v103 = v56;
                *(&v103 + 1) = v52;
                *&v104 = v57;
                *(&v104 + 1) = v54;
                LOBYTE(v105) = v110;
                BYTE1(v105) = v55;
                BYTE2(v105) = v58;
                BYTE3(v105) = v59;
                *(&v105 + 1) = v60;
                *&v106 = v47;
                *(&v106 + 1) = v61;
                *&v107[0] = v50;
                *(v107 + 8) = v53;
                v63 = v52;
                v87 = v61;
                v89 = v60;
                v90 = v23;
                v88 = v59;
                LODWORD(v86) = v58;
                v64 = v55;
                v65 = v56;
                v66 = v110;

                sub_24A6EF9B4(&v103);
                v62 = v66;
                v52 = v63;
                v56 = v65;
                v55 = v64;
                LOBYTE(v58) = v86;
                LOBYTE(v59) = v88;
                v60 = v89;
                v23 = v90;
                v61 = v87;
                v67 = v93;
                v68 = v91;
              }

              else
              {
                v67 = *(&v53 + 1);
                v68 = v53;
              }

              *&v103 = v56;
              *(&v103 + 1) = v52;
              *&v104 = v57;
              *(&v104 + 1) = v54;
              LOBYTE(v105) = v62;
              BYTE1(v105) = v55;
              BYTE2(v105) = v58;
              BYTE3(v105) = v59;
              *(&v105 + 1) = v60;
              *&v106 = v47;
              *(&v106 + 1) = v61;
              *&v107[0] = v50;
              *(&v107[0] + 1) = v68;
              *&v107[1] = v67;
              if (swift_unknownObjectWeakLoadStrong())
              {
                v101[2] = v105;
                v101[3] = v106;
                v101[4] = v107[0];
                v102 = *&v107[1];
                v101[0] = v103;
                v101[1] = v104;
                v69 = *(v23 + 104);

                sub_24A750480(v101, v69);

                swift_unknownObjectRelease();
                sub_24A6EF9B4(&v103);
              }

              else
              {
                sub_24A6EF9B4(&v103);
              }

              a5 = v92;
              goto LABEL_37;
            }
          }

          else
          {
          }
        }

        v53 = *&v112[8];
        v61 = *(&v111 + 1);
        v50 = *v112;
        v60 = *(&v110 + 1);
        v47 = v111;
        v59 = BYTE3(v110);
        v58 = BYTE2(v110);
        v55 = BYTE1(v110);
        v54 = *(&v109 + 1);
        v57 = v109;
        v52 = *(&v108 + 1);
        v56 = v108;
        goto LABEL_30;
      }

      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v33 = sub_24A82CDC4();
      sub_24A6797D0(v33, qword_281518F88);
      v34 = a2;
      v35 = sub_24A82CD94();
      v36 = sub_24A82D504();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v108 = v38;
        *v37 = 136315138;
        *&v103 = a2;
        v39 = a2;
        sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
        v40 = sub_24A82D024();
        v42 = sub_24A68761C(v40, v41, &v108);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_24A675000, v35, v36, "FMIPRefreshingController: refreshClientRequest completed with error: %s", v37, 0xCu);
        sub_24A6876E8(v38);
        MEMORY[0x24C21E1D0](v38, -1, -1);
        MEMORY[0x24C21E1D0](v37, -1, -1);
      }

      sub_24A7CB348(*(v14 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_callbackInterval));
    }

    else
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v29 = sub_24A82CDC4();
      sub_24A6797D0(v29, qword_281518F88);
      v30 = sub_24A82CD94();
      v31 = sub_24A82D504();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_24A675000, v30, v31, "FMIPRefreshingController: Not handling request controller deallocated", v32, 2u);
        MEMORY[0x24C21E1D0](v32, -1, -1);
      }
    }
  }

  return result;
}

double sub_24A7CD4D8(uint64_t a1)
{
  if (a1)
  {
    v2 = v1;
    if (*(a1 + 16))
    {
      v4 = sub_24A6A2D48(0xD000000000000017, 0x800000024A849960);
      if (v6)
      {
        sub_24A67E168(*(a1 + 56) + 32 * v4, v12);
        if (swift_dynamicCast())
        {
          result = v11;
          *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_minCallbackInterval) = v11;
        }
      }
    }

    if (*(a1 + 16))
    {
      v7 = sub_24A6A2D48(0xD000000000000017, 0x800000024A849980);
      if (v8)
      {
        sub_24A67E168(*(a1 + 56) + 32 * v7, v12);
        if (swift_dynamicCast())
        {
          result = v11;
          *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_maxCallbackInterval) = v11;
        }
      }
    }

    if (*(a1 + 16))
    {
      v9 = sub_24A6A2D48(0xD000000000000014, 0x800000024A8499A0);
      if (v10)
      {
        sub_24A67E168(*(a1 + 56) + 32 * v9, v12);
        if (swift_dynamicCast())
        {
          result = v11;
          *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_callbackInterval) = v11;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24A7CD670(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    if (*(result + 16) && (v4 = sub_24A6A2D48(0xD000000000000019, 0x800000024A8434B0), (v5 & 1) != 0) && (sub_24A67E168(*(v3 + 56) + 32 * v4, v7), (swift_dynamicCast() & 1) != 0) && v6 != *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_rangingParameters))
    {
      *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_rangingParameters) = v6;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A7CD76C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A7CD7EC()
{
  v1 = *(v0 + 16);
  v2 = sub_24A82CF94();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A82CFC4();

  return v4;
}

void sub_24A7CD8B0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = sub_24A82CF94();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_24A82CF94();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

uint64_t sub_24A7CD954()
{
  v1 = *(v0 + 16);
  v2 = sub_24A82CF94();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A82CFC4();

  return v4;
}

void sub_24A7CD9EC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = sub_24A82CF94();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_24A82CF94();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

uint64_t sub_24A7CDA90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_24A7CDB28(uint64_t a1)
{
  v2 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);

  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = sub_24A82CED4();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPRefreshingController: connectionHandler didReceive message: %@", v7, 0xCu);
    sub_24A67F378(v8, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v10 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_tapContexts;
  swift_beginAccess();
  v11 = *(v2 + v10);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v10) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_24A7807B0(0, v11[2] + 1, 1, v11);
    *(v2 + v10) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_24A7807B0((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v11[v14 + 4] = a1;
  *(v2 + v10) = v11;
  swift_endAccess();
  return sub_24A7CB348(0.0);
}

uint64_t sub_24A7CDD44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x3156676174726961 && a2 == 0xE800000000000000;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3256676174726961 && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3156616E6D66 && a2 == 0xE600000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3256616E6D66 && a2 == 0xE600000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6D66656C707061 && a2 == 0xEB00000000315661 || (sub_24A82DC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6D66656C707061 && a2 == 0xEB00000000325661)
  {

    return 5;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24A7CDF3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5F0E8, &qword_24A83D560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7CE178();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v25 = 0;
  v11 = sub_24A82DA74();
  v24 = 1;
  v12 = sub_24A82DA74();
  v23 = 2;
  v19 = sub_24A82DA74();
  v22 = 3;
  v18 = sub_24A82DA74();
  v21 = 4;
  v17 = sub_24A82DA74();
  v20 = 5;
  v16 = sub_24A82DA74();
  (*(v6 + 8))(v9, v5);
  result = sub_24A6876E8(a1);
  *a2 = v11;
  a2[1] = v12;
  v14 = v18;
  a2[2] = v19;
  a2[3] = v14;
  v15 = v16;
  a2[4] = v17;
  a2[5] = v15;
  return result;
}

unint64_t sub_24A7CE178()
{
  result = qword_27EF5F0F0;
  if (!qword_27EF5F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F0F0);
  }

  return result;
}

uint64_t sub_24A7CE1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7CE24C(uint64_t a1, void *a2)
{
  v5 = *(sub_24A82CA34() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_24A7CCB7C(a1, a2, v7, v2 + v6, v9, v10);
}

unint64_t sub_24A7CE328()
{
  result = qword_27EF5F118;
  if (!qword_27EF5F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F118);
  }

  return result;
}

unint64_t sub_24A7CE380()
{
  result = qword_27EF5F120;
  if (!qword_27EF5F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F120);
  }

  return result;
}

unint64_t sub_24A7CE3D8()
{
  result = qword_27EF5F128;
  if (!qword_27EF5F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F128);
  }

  return result;
}

char sub_24A7CE44C@<W0>(_BYTE *a1@<X8>)
{
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v13 - v6;
  v8 = *(v1 + 56);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = type metadata accessor for FMIPDevice();
    sub_24A7CE7DC(v8 + *(v10 + 116) + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), v7);
    v11 = type metadata accessor for FMIPDeviceLostModeMetadata();
    if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
    {
      result = sub_24A7CE84C(v7);
LABEL_5:
      LOBYTE(v9) = 0;
      goto LABEL_8;
    }

    v12 = v7[56];
    sub_24A7CE8B4(v7);
    result = FMIPActionStatus.init(rawValue:)(qword_24A83D6D8[v12]).value;
    LOBYTE(v9) = v14;
    if (v14 == 18)
    {
      LOBYTE(v9) = 0;
    }
  }

LABEL_8:
  *a1 = v9;
  return result;
}

uint64_t sub_24A7CE5F4(uint64_t *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
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
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPLostModeResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

uint64_t sub_24A7CE7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7CE84C(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A7CE8B4(uint64_t a1)
{
  v2 = type metadata accessor for FMIPDeviceLostModeMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A7CE95C(uint64_t *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
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
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPNotifyResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

void FMIPAccessoryError.init(underlyingError:discoveryType:)(id a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  if (!a1)
  {
    goto LABEL_14;
  }

  v5 = *a2;
  v13 = a1;
  v6 = a1;
  v7 = v3;
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  type metadata accessor for SPAccessoryDiscoverySessionError(0);
  if (swift_dynamicCast())
  {
    v8 = v16;
    v15 = v16;
    sub_24A7CF5B8(&qword_27EF5CEA0, type metadata accessor for SPAccessoryDiscoverySessionError);
    sub_24A82C7A4();

    if (v12 != 1)
    {
      v9 = 1;
LABEL_11:
      v3 = v8;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v13 = v3;
  v10 = v3;
  type metadata accessor for SPUnknownDiscoverySessionError(0);
  if (swift_dynamicCast())
  {
    v8 = v16;
    v15 = v16;
    sub_24A7CF5B8(&qword_27EF5CED8, type metadata accessor for SPUnknownDiscoverySessionError);
    sub_24A82C7A4();

    if (v12 != 1)
    {
      v9 = 3;
      goto LABEL_11;
    }

LABEL_7:

    v3 = 0;
    v9 = 4;
LABEL_12:

    goto LABEL_15;
  }

  v16 = v3;
  v11 = v3;
  type metadata accessor for SPPairingSessionError(0);
  if (!swift_dynamicCast())
  {

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  LOBYTE(v12) = v5;
  sub_24A7CEDC0(v15, &v12, &v13);

  v3 = v13;
  v9 = v14;

LABEL_15:
  *a3 = v3;
  *(a3 + 8) = v9;
}

void sub_24A7CEDC0(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  type metadata accessor for SPPairingSessionError(0);
  sub_24A7CF5B8(&qword_27EF5CE60, type metadata accessor for SPPairingSessionError);
  sub_24A82C7A4();
  switch(v7)
  {
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 11:
    case 19:

      v6 = 4;
      a1 = 3;
      break;
    case 4:
    case 9:
    case 10:
    case 20:

      v6 = 4;
      a1 = 1;
      break;
    case 12:
      v6 = 0;
      break;
    case 13:

      a1 = 4;
      v6 = 4;
      break;
    case 14:

      v6 = 4;
      a1 = 5;
      break;
    case 15:

      v6 = 4;
      a1 = 9;
      break;
    case 16:

      if (v5 < 2)
      {
        a1 = 6;
      }

      else
      {
        a1 = 7;
      }

      v6 = 4;
      break;
    case 17:

      v6 = 4;
      a1 = 2;
      break;
    case 18:

      v6 = 4;
      a1 = 8;
      break;
    default:
      v6 = 1;
      break;
  }

  *a3 = a1;
  *(a3 + 8) = v6;
}

uint64_t sub_24A7CEF24(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      return 0x5F4E574F4E4B4E55;
    }

    else
    {
      return 0x4E574F4E4B4E55;
    }
  }

  else
  {
    if (a2 == 2)
    {
      return 0xD000000000000011;
    }

    if (a2 == 3)
    {
      return 0xD000000000000014;
    }

    if (a1 > 4)
    {
      if (a1 <= 6)
      {
        v3 = 0xD000000000000017;
        v4 = a1 == 5;
LABEL_27:
        if (v4)
        {
          return 0xD000000000000015;
        }

        else
        {
          return v3;
        }
      }

      v5 = 0x5F59524554544142;
      if (a1 == 8)
      {
        v5 = 0xD000000000000010;
      }

      if (a1 == 7)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      if (a1 > 1)
      {
        v3 = 0xD00000000000001DLL;
        if (a1 != 3)
        {
          v3 = 0xD000000000000011;
        }

        v4 = a1 == 2;
        goto LABEL_27;
      }

      if (a1)
      {
        return 0xD000000000000015;
      }

      else
      {
        return 0xD000000000000012;
      }
    }
  }
}

uint64_t sub_24A7CF11C()
{
  v1 = sub_24A7CEF24(*v0, *(v0 + 8));
  v3 = v2;
  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24A8356C0;
  *(v4 + 32) = 0xD000000000000019;
  *(v4 + 40) = 0x800000024A849A50;
  *(v4 + 48) = v1;
  *(v4 + 56) = v3;
  sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
  sub_24A6FC920();
  v5 = sub_24A82CF74();

  MEMORY[0x24C21C9E0](0x545F5452454C415FLL, 0xEC000000454C5449);
  return v5;
}

uint64_t sub_24A7CF220()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24A82D854();
  v3 = sub_24A7CEF24(v1, v2);
  v5 = v4;
  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A8356C0;
  *(v6 + 32) = 0xD000000000000019;
  *(v6 + 40) = 0x800000024A849A50;
  *(v6 + 48) = v3;
  *(v6 + 56) = v5;
  sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
  sub_24A6FC920();
  v7 = sub_24A82CF74();

  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A849BD0);
  return v7;
}

uint64_t sub_24A7CF36C(void (*a1)(void))
{
  if (*(v1 + 8) != 4 || *v1 != 7)
  {
    v7 = *v1;
  }

  a1();
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_24A82C6F4();

  return v5;
}

uint64_t sub_24A7CF4E4(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_24A7CF500(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24A7CF514(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24A7CF55C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_24A7CF5A0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_24A7CF5B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A7CF600(uint64_t a1)
{
  v3 = type metadata accessor for FMIPDevice();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v48 = v6;
  v45[1] = v1;
  v107 = MEMORY[0x277D84F90];
  sub_24A6FCBB8(0, v7, 0);
  v8 = v107;
  v9 = -1 << *(a1 + 32);
  v53 = a1 + 64;
  result = sub_24A82D6C4();
  if (result < 0 || (v11 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    v110 = *(a1 + 36);
    v46 = a1 + 72;
    v47 = v7;
    v12 = 1;
    v50 = a1;
    while (1)
    {
      v13 = v11 >> 6;
      if ((*(v53 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        break;
      }

      if (v110 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v51 = 1 << v11;
      v14 = *(a1 + 56);
      v15 = (*(a1 + 48) + 16 * v11);
      v17 = *v15;
      v16 = v15[1];
      v18 = (v14 + 208 * v11);
      v67[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v67[3] = v18[3];
      v67[4] = v19;
      v67[1] = v21;
      v67[2] = v20;
      v22 = v18[8];
      v24 = v18[5];
      v23 = v18[6];
      v67[7] = v18[7];
      v67[8] = v22;
      v67[5] = v24;
      v67[6] = v23;
      v26 = v18[10];
      v25 = v18[11];
      v27 = v18[9];
      *(v68 + 9) = *(v18 + 185);
      v67[10] = v26;
      v68[0] = v25;
      v67[9] = v27;
      v28 = v18[11];
      v65 = v18[10];
      v66[0] = v28;
      *(v66 + 9) = *(v18 + 185);
      v29 = v18[7];
      v61 = v18[6];
      v62 = v29;
      v30 = v18[9];
      v63 = v18[8];
      v64 = v30;
      v31 = v18[3];
      v57 = v18[2];
      v58 = v31;
      v32 = v18[5];
      v59 = v18[4];
      v60 = v32;
      v33 = v18[1];
      v55 = *v18;
      v56 = v33;
      memmove(&v69, v18, 0xC9uLL);
      v81[0] = v17;
      v81[1] = v16;
      v92 = v65;
      v93[0] = v66[0];
      *(v93 + 9) = *(v66 + 9);
      v88 = v61;
      v89 = v62;
      v90 = v63;
      v91 = v64;
      v84 = v57;
      v85 = v58;
      v86 = v59;
      v87 = v60;
      v82 = v55;
      v83 = v56;
      swift_bridgeObjectRetain_n();
      sub_24A71FF60(v67, v54);
      sub_24A71FF60(&v69, v54);
      v52 = v8;
      sub_24A67F378(v81, &qword_27EF5F130, &unk_24A83D9A0);
      v105 = v79;
      v106[0] = v80[0];
      *(v106 + 9) = *(v80 + 9);
      v101 = v75;
      v102 = v76;
      v103 = v77;
      v104 = v78;
      v97 = v71;
      v98 = v72;
      v99 = v73;
      v100 = v74;
      v95 = v69;
      v96 = v70;
      v108[10] = v79;
      v109[0] = v80[0];
      *(v109 + 9) = *(v80 + 9);
      v108[6] = v75;
      v108[7] = v76;
      v108[9] = v78;
      v108[8] = v77;
      v108[2] = v71;
      v108[3] = v72;
      v108[5] = v74;
      v108[4] = v73;
      v94[0] = v17;
      v94[1] = v16;
      v108[1] = v70;
      v108[0] = v69;
      v34 = v48;
      sub_24A7D00D0(v17, v16, v108, v48);
      v8 = v52;
      sub_24A67F378(v94, &qword_27EF5F130, &unk_24A83D9A0);
      v107 = v8;
      v36 = *(v8 + 16);
      v35 = *(v8 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_24A6FCBB8(v35 > 1, v36 + 1, 1);
        v8 = v107;
      }

      *(v8 + 16) = v36 + 1;
      result = sub_24A6CAF68(v34, v8 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v36);
      a1 = v50;
      v37 = 1 << *(v50 + 32);
      if (v11 >= v37)
      {
        goto LABEL_28;
      }

      v38 = *(v53 + 8 * v13);
      if ((v38 & v51) == 0)
      {
        goto LABEL_29;
      }

      if (v110 != *(v50 + 36))
      {
        goto LABEL_30;
      }

      v39 = v38 & (-2 << (v11 & 0x3F));
      if (v39)
      {
        v11 = __clz(__rbit64(v39)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v40 = v13 << 6;
        v41 = v13 + 1;
        v42 = (v46 + 8 * v13);
        while (v41 < (v37 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            result = sub_24A6CA498(v11, v110, 0);
            v11 = __clz(__rbit64(v43)) + v40;
            goto LABEL_19;
          }
        }

        result = sub_24A6CA498(v11, v110, 0);
        v11 = v37;
LABEL_19:
        a1 = v50;
      }

      if (v12 == v47)
      {
        return v8;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        ++v12;
        if (v11 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

double sub_24A7CFAE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v63 = sub_24A82CAA4();
  v3 = *(v63 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 24);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  v60 = a1;
  if (v7)
  {
    v89 = MEMORY[0x277D84F90];
    sub_24A6FCC3C(0, v7, 0);
    v9 = v89;
    v10 = (v6 + 32);
    v61 = (v3 + 8);
    do
    {
      v65 = *v10;
      v11 = v10[1];
      v12 = v10[2];
      v13 = v10[4];
      v68 = v10[3];
      v69 = v13;
      v66 = v11;
      v67 = v12;
      v14 = v10[5];
      v15 = v10[6];
      v16 = v10[7];
      v73 = v10[8];
      v71 = v15;
      v72 = v16;
      v70 = v14;
      v17 = v10[9];
      v18 = v10[10];
      v19 = v10[11];
      *(v76 + 9) = *(v10 + 185);
      v75 = v18;
      v76[0] = v19;
      v74 = v17;
      sub_24A71FF60(&v65, &v77);
      v20 = v62;
      sub_24A82CA94();
      v64 = sub_24A82CA54();
      v22 = v21;
      (*v61)(v20, v63);
      v80 = v68;
      v81 = v69;
      v78 = v66;
      v79 = v67;
      v84 = v72;
      v85 = v73;
      v82 = v70;
      v83 = v71;
      *(v88 + 9) = *(v76 + 9);
      v87 = v75;
      v88[0] = v76[0];
      v86 = v74;
      v24 = *(v9 + 16);
      v23 = *(v9 + 24);
      v77 = v65;
      v89 = v9;
      if (v24 >= v23 >> 1)
      {
        sub_24A6FCC3C((v23 > 1), v24 + 1, 1);
        v9 = v89;
      }

      *(v9 + 16) = v24 + 1;
      v25 = v9 + 224 * v24;
      *(v25 + 32) = v64;
      *(v25 + 40) = v22;
      *(v25 + 48) = v77;
      v26 = v78;
      v27 = v79;
      v28 = v81;
      *(v25 + 96) = v80;
      *(v25 + 112) = v28;
      *(v25 + 64) = v26;
      *(v25 + 80) = v27;
      v29 = v82;
      v30 = v83;
      v31 = v85;
      *(v25 + 160) = v84;
      *(v25 + 176) = v31;
      *(v25 + 128) = v29;
      *(v25 + 144) = v30;
      v32 = v86;
      v33 = v87;
      v34 = v88[0];
      *(v25 + 233) = *(v88 + 9);
      *(v25 + 208) = v33;
      *(v25 + 224) = v34;
      *(v25 + 192) = v32;
      v10 += 13;
      --v7;
    }

    while (v7);
    a1 = v60;
    v8 = MEMORY[0x277D84F90];
    if (*(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  else if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_7:
    sub_24A6BBA94(&qword_27EF5E7A0, &qword_24A838DB0);
    v35 = sub_24A82D974();
    goto LABEL_10;
  }

  v35 = MEMORY[0x277D84F98];
LABEL_10:
  *&v77 = v35;

  sub_24A7D0D08(v36, 1, &v77);

  v37 = v77;
  sub_24A7CFF44(*(*(a1 + 16) + 16) != 0, v90);
  v38 = sub_24A7CF600(v37);
  v39 = *(a1 + 16);
  v40 = *(v39 + 16);
  if (v40)
  {
    v58 = v38;
    v61 = v37;
    *&v65 = v8;
    sub_24A6FCC1C(0, v40, 0);
    v41 = v65;
    v42 = (v39 + 72);
    do
    {
      v43 = *(v42 - 5);
      v44 = *(v42 - 4);
      v45 = *(v42 - 2);
      v62 = *(v42 - 3);
      v63 = v43;
      v46 = *v42;
      v64 = *(v42 - 1);
      *&v65 = v41;
      v47 = *(v41 + 16);
      v48 = *(v41 + 24);

      if (v47 >= v48 >> 1)
      {
        sub_24A6FCC1C((v48 > 1), v47 + 1, 1);
        v41 = v65;
      }

      v42 += 6;
      *(v41 + 16) = v47 + 1;
      v49 = v41 + 88 * v47;
      v50 = v62;
      *(v49 + 32) = v63;
      *(v49 + 40) = v44;
      *(v49 + 48) = v50;
      *(v49 + 56) = v45;
      *(v49 + 64) = 256;
      *(v49 + 72) = 0;
      *(v49 + 80) = 0xE000000000000000;
      *(v49 + 88) = v64;
      *(v49 + 96) = v46;
      *(v49 + 104) = 0;
      *(v49 + 112) = 0;
      --v40;
    }

    while (v40);

    v37 = v61;
    v51 = v58;
  }

  else
  {
    v52 = v38;

    v51 = v52;
    v41 = MEMORY[0x277D84F90];
  }

  v53 = v90[3];
  v54 = v59;
  *(v59 + 32) = v90[2];
  *(v54 + 48) = v53;
  *(v54 + 64) = v90[4];
  v55 = v91;
  result = *v90;
  v57 = v90[1];
  *v54 = v90[0];
  *(v54 + 16) = v57;
  *(v54 + 80) = v55;
  *(v54 + 88) = v51;
  *(v54 + 96) = v41;
  *(v54 + 104) = v37;
  return result;
}

void sub_24A7CFF44(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    v6 = [v5 aa_firstName];
    if (v6)
    {
      v7 = v6;
      v8 = sub_24A82CFC4();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    v15 = [v5 aa_lastName];
    if (v15)
    {
      v16 = v15;
      v12 = sub_24A82CFC4();
      v14 = v17;
    }

    else
    {
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v18 = [v5 aa_formattedUsername];
    if (v18)
    {
      v19 = v18;
      v11 = sub_24A82CFC4();
      v13 = v20;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v8 = 0;
    v13 = 0xE000000000000000;
    v14 = 0xE000000000000000;
    v10 = 0xE000000000000000;
  }

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = a1 & 1;
  *(a2 + 33) = 1;
  *(a2 + 35) = 0;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  *(a2 + 56) = 0x72656E776FLL;
  *(a2 + 64) = 0xE500000000000000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
}

uint64_t sub_24A7D00D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a1;
  v7 = *(*(sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90) - 8) + 64);
  v8 = (MEMORY[0x28223BE20])();
  v103 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v108 = &v84 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v107 = &v84 - v13;
  MEMORY[0x28223BE20](v12);
  v106 = &v84 - v14;
  v15 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15 - 8);
  v111 = &v84 - v17;
  v18 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18 - 8);
  v110 = &v84 - v20;
  v21 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21 - 8);
  v105 = &v84 - v23;
  v24 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24 - 8);
  v109 = &v84 - v26;
  v27 = *(a3 + 104);
  v28 = *(a3 + 112);
  v98 = v27;
  if (v28 && (v27 == 0x72656E776FLL && v28 == 0xE500000000000000 || (sub_24A82DC04() & 1) != 0))
  {
    v29 = 288;
  }

  else
  {
    v29 = 416;
  }

  v101 = v29;
  sub_24A72006C();
  v30 = *(a3 + 40);
  v31 = *(a3 + 72);
  v114[2] = *(a3 + 56);
  v114[3] = v31;
  v114[4] = *(a3 + 88);
  v114[0] = *(a3 + 24);
  v114[1] = v30;

  sub_24A71FF60(a3, v112);
  sub_24A7200B8(v114, v112);
  v32 = sub_24A7AE728(v114);
  LOBYTE(v113) = 6;
  FMIPLocation.init(location:type:)(v32, &v113, v112);
  v33 = LOBYTE(v112[0]);
  v34 = BYTE1(v112[0]);
  v35 = BYTE2(v112[0]);
  v99 = a2;
  v36 = BYTE3(v112[0]);
  v104 = *(&v112[0] + 1);
  v100 = *&v112[1];
  v37 = *(a3 + 200);
  v113 = *a3;

  sub_24A720010(&v113, v112);

  v38 = sub_24A771CCC();
  v96 = v39;
  v97 = v38;
  v40 = sub_24A771FF8();
  v94 = v41;
  v95 = v40;
  v42 = sub_24A7720F8();
  v92 = v43;
  v93 = v42;
  v44 = sub_24A771DC8();
  v89 = v45;
  v90 = v44;
  v46 = sub_24A771EE8();
  v87 = v47;
  v88 = v46;
  v91 = qword_24A83D9B8[*(a3 + 16)];
  v48 = (v37 & 1) == 0;
  if (v28)
  {
    v49 = v28;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  v50 = 0x72656E776FLL;
  if (v28)
  {
    v50 = v98;
  }

  v85 = v50;
  v86 = v49;
  v51 = 256;
  if (!v34)
  {
    v51 = 0;
  }

  v52 = v51 | v33;
  v53 = 0x10000;
  if (!v35)
  {
    v53 = 0;
  }

  v54 = v52 | v53 | (v36 << 24);
  sub_24A68808C(v112);
  v55 = type metadata accessor for FMIPPlaySoundMetadata();
  (*(*(v55 - 8) + 56))(v109, 1, 1, v55);
  v56 = type metadata accessor for FMIPDeviceLostModeMetadata();
  v57 = v105;
  (*(*(v56 - 8) + 56))(v105, 1, 1, v56);
  v58 = type metadata accessor for FMIPLockMetadata();
  (*(*(v58 - 8) + 56))(v110, 1, 1, v58);
  v59 = type metadata accessor for FMIPEraseMetadata();
  (*(*(v59 - 8) + 56))(v111, 1, 1, v59);
  v60 = sub_24A82CA34();
  v61 = *(*(v60 - 8) + 56);
  v61(v106, 1, 1, v60);
  v61(v107, 1, 1, v60);
  v61(v108, 1, 1, v60);
  v62 = v103;
  v61(v103, 1, 1, v60);
  v63 = type metadata accessor for FMIPDevice();
  v64 = v63[32];
  v65 = type metadata accessor for FMIPItemGroup();
  (*(*(v65 - 8) + 56))(a4 + v64, 1, 1, v65);
  v98 = v63[35];
  *(a4 + v98) = 1;
  v66 = v113;
  *(a4 + 64) = v113;
  v67 = v99;
  *a4 = v102;
  *(a4 + 8) = v67;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v68 = v86;
  *(a4 + 32) = v85;
  *(a4 + 40) = v68;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 80) = v48;
  v69 = v96;
  *(a4 + 88) = v97;
  *(a4 + 96) = v69;
  v70 = v94;
  *(a4 + 104) = v95;
  *(a4 + 112) = v70;
  v71 = v92;
  *(a4 + 120) = v93;
  *(a4 + 128) = v71;
  v72 = v89;
  *(a4 + 136) = v90;
  *(a4 + 144) = v72;
  v73 = v87;
  *(a4 + 152) = v88;
  *(a4 + 160) = v73;
  *(a4 + 168) = v66;
  *(a4 + 184) = 0x3FF0000000000000;
  *(a4 + 192) = 1;
  *(a4 + 200) = xmmword_24A836760;
  *(a4 + 216) = v101;
  v74 = MEMORY[0x277D84F90];
  v75 = v91;
  *(a4 + 232) = MEMORY[0x277D84F90];
  *(a4 + 240) = v75;
  *(a4 + 248) = v74;
  *(a4 + 256) = v54;
  v76 = v104;
  v77 = v100;
  *(a4 + 264) = v104;
  *(a4 + 272) = v77;
  *(a4 + 280) = v54;
  *(a4 + 288) = v76;
  *(a4 + 296) = v77;
  memcpy((a4 + 304), v112, 0x120uLL);
  sub_24A67E964(v109, a4 + v63[28], &qword_27EF5D5F8, &qword_24A83DE60);
  sub_24A67E964(v57, a4 + v63[29], &unk_27EF5E0A0, &unk_24A8367D0);
  sub_24A67E964(v110, a4 + v63[30], &qword_27EF5DE50, &qword_24A83DE40);
  sub_24A67E964(v111, a4 + v63[31], &qword_27EF5DE48, &unk_24A8367C0);
  v78 = v106;
  sub_24A67E964(v106, a4 + v63[39], &qword_27EF5E0E0, &qword_24A836D90);
  v79 = v107;
  sub_24A67E964(v107, a4 + v63[40], &qword_27EF5E0E0, &qword_24A836D90);
  v80 = v108;
  sub_24A67E964(v108, a4 + v63[41], &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67E964(v62, a4 + v63[42], &qword_27EF5E0E0, &qword_24A836D90);
  v81 = v104;
  sub_24A71FFBC(a3);
  *(a4 + v63[38]) = 0;
  *(a4 + v63[43]) = 0;
  *(a4 + v63[44]) = 0;
  *(a4 + v63[45]) = 0;
  sub_24A67F378(v62, &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67F378(v80, &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67F378(v79, &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67F378(v78, &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67F378(v111, &qword_27EF5DE48, &unk_24A8367C0);
  sub_24A67F378(v110, &qword_27EF5DE50, &qword_24A83DE40);
  sub_24A67F378(v105, &unk_27EF5E0A0, &unk_24A8367D0);
  result = sub_24A67F378(v109, &qword_27EF5D5F8, &qword_24A83DE60);
  *(a4 + 224) = MEMORY[0x277D84F90];
  *(a4 + v63[33]) = 0;
  *(a4 + v63[34]) = 0;
  *(a4 + v63[36]) = 0;
  v83 = (a4 + v63[37]);
  *v83 = 0;
  v83[1] = 0;
  *(a4 + v98) = 1;
  return result;
}

uint64_t sub_24A7D0980(uint64_t a1)
{
  v2 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPDemoDataSource: Recalculating state for demo content.", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = *(v2 + 64);
  v9 = *(v2 + 96);
  v26 = *(v2 + 80);
  v27 = v9;
  v10 = *(v2 + 96);
  v28 = *(v2 + 112);
  v11 = *(v2 + 32);
  v23[0] = *(v2 + 16);
  v23[1] = v11;
  v12 = *(v2 + 64);
  v14 = *(v2 + 16);
  v13 = *(v2 + 32);
  v24 = *(v2 + 48);
  v25 = v12;
  v35 = v26;
  v36 = v10;
  v37 = *(v2 + 112);
  v31 = v14;
  v32 = v13;
  v15 = *(v2 + 136);
  v33 = v24;
  v34 = v8;
  sub_24A7D0CA0(v23, v30);
  sub_24A71E5A0(&v31, a1, v30);
  v29[4] = v35;
  v29[5] = v36;
  v29[6] = v37;
  v29[0] = v31;
  v29[1] = v32;
  v29[2] = v33;
  v29[3] = v34;
  sub_24A7D0CD8(v29);
  v16 = *(v2 + 96);
  v35 = *(v2 + 80);
  v36 = v16;
  v37 = *(v2 + 112);
  v17 = *(v2 + 32);
  v31 = *(v2 + 16);
  v32 = v17;
  v18 = *(v2 + 64);
  v33 = *(v2 + 48);
  v34 = v18;
  v19 = v30[1];
  *(v2 + 16) = v30[0];
  *(v2 + 32) = v19;
  v20 = v30[5];
  *(v2 + 80) = v30[4];
  *(v2 + 96) = v20;
  v21 = v30[3];
  *(v2 + 48) = v30[2];
  *(v2 + 64) = v21;
  *(v2 + 112) = v30[6];
  return sub_24A7D0CD8(&v31);
}

uint64_t sub_24A7D0B40()
{
  v1 = *(v0 + 96);
  v7[4] = *(v0 + 80);
  v7[5] = v1;
  v7[6] = *(v0 + 112);
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v2;
  v3 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v3;
  sub_24A7D0CD8(v7);
  v4 = *(v0 + 128);

  v5 = *(v0 + 136);

  return swift_deallocClassInstance();
}

__n128 sub_24A7D0BC8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24A7D0BEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24A7D0C34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24A7D0D08(uint64_t a1, char a2, uint64_t *a3)
{
  v89 = a3;
  v4 = 0;
  v5 = *(a1 + 16);
  v48 = a1 + 32;
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_2:
  sub_24A7D11D4(&v63);
  v86 = v73;
  v87 = v74;
  v88[0] = v75[0];
  *(v88 + 9) = *(v75 + 9);
  v82 = v69;
  v83 = v70;
  v84 = v71;
  v85 = v72;
  v78 = v65;
  v79 = v66;
  v80 = v67;
  v81 = v68;
  v6 = v5;
  v76 = v63;
  v77 = v64;
  while (1)
  {
    v73 = v86;
    v74 = v87;
    v75[0] = v88[0];
    *(v75 + 9) = *(v88 + 9);
    v69 = v82;
    v70 = v83;
    v71 = v84;
    v72 = v85;
    v65 = v78;
    v66 = v79;
    v67 = v80;
    v68 = v81;
    v63 = v76;
    v64 = v77;
    if (sub_24A7D11BC(&v63) == 1)
    {

      return;
    }

    v50 = v6;
    v20 = v76;
    v61 = v87;
    v62[0] = v88[0];
    *(v62 + 9) = *(v88 + 9);
    v57 = v83;
    v58 = v84;
    v59 = v85;
    v60 = v86;
    v53 = v79;
    v54 = v80;
    v55 = v81;
    v56 = v82;
    v51 = v77;
    v52 = v78;
    v21 = *v89;
    v23 = sub_24A6A2D48(v76, *(&v76 + 1));
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      sub_24A82DC44();
      __break(1u);
      goto LABEL_26;
    }

    v27 = v22;
    if (v21[3] < v26)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_24A787258();
      if (v27)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    v32 = *v89;
    v32[(v23 >> 6) + 8] |= 1 << v23;
    *(v32[6] + 16 * v23) = v20;
    v33 = (v32[7] + 208 * v23);
    *v33 = v51;
    v34 = v52;
    v35 = v53;
    v36 = v55;
    v33[3] = v54;
    v33[4] = v36;
    v33[1] = v34;
    v33[2] = v35;
    v37 = v56;
    v38 = v57;
    v39 = v59;
    v33[7] = v58;
    v33[8] = v39;
    v33[5] = v37;
    v33[6] = v38;
    v40 = v60;
    v41 = v61;
    v42 = v62[0];
    *(v33 + 185) = *(v62 + 9);
    v33[10] = v41;
    v33[11] = v42;
    v33[9] = v40;
    v43 = v32[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_22;
    }

    v32[2] = v45;
    a2 = 1;
    v4 = v50;
    if (v50 == v5)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v4 >= *(a1 + 16))
    {
      goto LABEL_24;
    }

    v7 = (v48 + 224 * v4);
    v8 = v7[11];
    v9 = v7[9];
    v73 = v7[10];
    v74 = v8;
    v10 = v7[11];
    v75[0] = v7[12];
    *(v75 + 9) = *(v7 + 201);
    v11 = v7[7];
    v12 = v7[5];
    v69 = v7[6];
    v70 = v11;
    v13 = v7[7];
    v14 = v7[9];
    v71 = v7[8];
    v72 = v14;
    v15 = v7[3];
    v16 = v7[1];
    v65 = v7[2];
    v66 = v15;
    v17 = v7[3];
    v18 = v7[5];
    v67 = v7[4];
    v68 = v18;
    v19 = v7[1];
    v63 = *v7;
    v64 = v19;
    v86 = v73;
    v87 = v10;
    v88[0] = v7[12];
    *(v88 + 9) = *(v7 + 201);
    v82 = v69;
    v83 = v13;
    v84 = v71;
    v85 = v9;
    v78 = v65;
    v79 = v17;
    v80 = v67;
    v81 = v12;
    v6 = v4 + 1;
    v76 = v63;
    v77 = v16;
    nullsub_1(&v76);
    sub_24A67E964(&v63, &v51, &qword_27EF5DA98, &qword_24A83D9B0);
  }

  v28 = v89;
  sub_24A782F80(v26, a2 & 1);
  v29 = *v28;
  v30 = sub_24A6A2D48(v20, *(&v20 + 1));
  if ((v27 & 1) != (v31 & 1))
  {
    goto LABEL_25;
  }

  v23 = v30;
  if ((v27 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  v46 = swift_allocError();
  swift_willThrow();
  v47 = v46;
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_24A71FFBC(&v51);

    return;
  }

LABEL_26:
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A844730);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](39, 0xE100000000000000);
  sub_24A82D934();
  __break(1u);
}

uint64_t sub_24A7D11BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_24A7D11D4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 201) = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
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

uint64_t FMFSatelliteLocationTapSource.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6163696669746F6ELL;
  }

  else
  {
    result = 0x636E75614C707061;
  }

  *v0;
  return result;
}

uint64_t sub_24A7D1254(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6163696669746F6ELL;
  }

  else
  {
    v4 = 0x636E75614C707061;
  }

  if (v3)
  {
    v5 = 0xE900000000000068;
  }

  else
  {
    v5 = 0xEF7061546E6F6974;
  }

  if (*a2)
  {
    v6 = 0x6163696669746F6ELL;
  }

  else
  {
    v6 = 0x636E75614C707061;
  }

  if (*a2)
  {
    v7 = 0xEF7061546E6F6974;
  }

  else
  {
    v7 = 0xE900000000000068;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A7D130C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7D13A0()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7D1420()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7D14BC(uint64_t *a1@<X8>)
{
  v2 = 0x636E75614C707061;
  if (*v1)
  {
    v2 = 0x6163696669746F6ELL;
  }

  v3 = 0xE900000000000068;
  if (*v1)
  {
    v3 = 0xEF7061546E6F6974;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t FMFSatelliteEducationFlowType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6F4C657461647075;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_24A7D1564(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F4C657461647075;
  }

  else
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v3)
  {
    v5 = 0x800000024A843F80;
  }

  else
  {
    v5 = 0xEE006E6F69746163;
  }

  if (*a2)
  {
    v6 = 0x6F4C657461647075;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v7 = 0xEE006E6F69746163;
  }

  else
  {
    v7 = 0x800000024A843F80;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A7D161C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7D16B0()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7D1730()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7D17CC(unint64_t *a1@<X8>)
{
  v2 = 0x800000024A843F80;
  v3 = 0xD00000000000001ALL;
  if (*v1)
  {
    v3 = 0x6F4C657461647075;
    v2 = 0xEE006E6F69746163;
  }

  *a1 = v3;
  a1[1] = v2;
}

FMIPCore::FMFSatelliteUpdateBlockingCondition_optional __swiftcall FMFSatelliteUpdateBlockingCondition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FMFSatelliteUpdateBlockingCondition.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000017;
    if (v1 == 8)
    {
      v6 = 0x656E616C70726961;
    }

    if (v1 == 7)
    {
      v6 = 0xD000000000000018;
    }

    v7 = 0x636972656E6567;
    if (v1 != 5)
    {
      v7 = 0xD000000000000012;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 1701736302;
    v3 = 0x646E656972466F6ELL;
    v4 = 0x766544654D746F6ELL;
    if (v1 != 3)
    {
      v4 = 0x656E696C6E6FLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x7055746553746F6ELL;
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
}

unint64_t sub_24A7D19CC(unsigned __int8 a1)
{
  v1 = 0xD000000000000012;
  if (a1 > 5u)
  {
    v5 = 0xD000000000000016;
    if (a1 != 10)
    {
      v5 = 0xD000000000000018;
    }

    if (a1 == 9)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD00000000000001BLL;
    if (a1 == 7)
    {
      v6 = 0xD000000000000018;
    }

    if (a1 == 6)
    {
      v6 = 0xD000000000000022;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0xD000000000000018;
    }

    if (!a1)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24A7D1B24()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A821628();
  return sub_24A82DD24();
}

uint64_t sub_24A7D1B74()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A821628();
  return sub_24A82DD24();
}

unint64_t sub_24A7D1BC4@<X0>(unint64_t *a1@<X8>)
{
  result = FMFSatelliteUpdateBlockingCondition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

FMIPCore::FMFSatelliteLocationNotificationEvent __swiftcall FMFSatelliteLocationNotificationEvent.init(notificationPresentedToUser:notificationTapped:)(Swift::Bool_optional notificationPresentedToUser, Swift::Bool_optional notificationTapped)
{
  v2->value = notificationPresentedToUser.value;
  v2[1].value = notificationTapped.value;
  result.notificationPresentedToUser = notificationPresentedToUser;
  return result;
}

uint64_t sub_24A7D1C64@<X0>(char *a1@<X8>)
{
  v2 = sub_24A82D9C4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t SatelliteFeatureViewSource.rawValue.getter()
{
  if (*v0)
  {
    result = 0x626154656DLL;
  }

  else
  {
    result = 0x776569567473696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_24A7D1CFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x626154656DLL;
  }

  else
  {
    v4 = 0x776569567473696CLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x626154656DLL;
  }

  else
  {
    v6 = 0x776569567473696CLL;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A7D1DA0()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7D1E20()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7D1E8C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7D1F14@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24A7D1F70(uint64_t *a1@<X8>)
{
  v2 = 0x776569567473696CLL;
  if (*v1)
  {
    v2 = 0x626154656DLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Void __swiftcall FMIPManager.enqueue(satelliteLocationUpdateEvent:)(FMIPCore::FMFSatelliteLocationUpdateEvent satelliteLocationUpdateEvent)
{
  v1 = **&satelliteLocationUpdateEvent.educationFlowInitiatedType;
  v2 = *(*&satelliteLocationUpdateEvent.educationFlowInitiatedType + 8);
  _s8FMIPCore13FMIPAnalyticsV32sendSatelliteLocationUpdateEvent5eventyAA012FMFSatelliteefG0V_tFZ_0(&v1);
}

uint64_t sub_24A7D2220(unint64_t a1, char a2)
{
  v3 = (a1 >> 16) & 1;
  v4 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v5 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v6 = sub_24A82CF94();

  v7 = [v5 initWithString_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v7, 0xD00000000000001ALL, 0x800000024A849DC0, isUniquelyReferenced_nonNull_native);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v9, 0xD000000000000012, 0x800000024A849DA0, v10);
  v11 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v12 = sub_24A82CF94();

  v13 = [v11 initWithString_];

  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v13, 0xD000000000000018, 0x800000024A849D80, v14);
  v15 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v16 = sub_24A82CF94();

  v17 = [v15 initWithString_];

  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v17, 0xD00000000000001BLL, 0x800000024A849D60, v18);
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v19, 0xD000000000000011, 0x800000024A849D40, v20);
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v21, 0xD000000000000012, 0x800000024A849D20, v22);
  if (a2 != 2)
  {
    v23 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v24 = sub_24A82CF94();

    v25 = [v23 initWithString_];

    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_24A6AE690(v25, 0xD000000000000016, 0x800000024A849CB0, v26);
  }

  if ((a1 & 0xFF000000000000) != 0x2000000000000)
  {
    v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_24A6AE690(v27, 0xD000000000000022, 0x800000024A849CF0, v28);
  }

  if (HIBYTE(a1) != 2)
  {
    v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_24A6AE690(v29, 0xD000000000000018, 0x800000024A849CD0, v30);
  }

  sub_24A7D31E0(v4);
}

uint64_t sub_24A7D2844(unsigned int a1)
{
  v2 = a1;
  v3 = BYTE1(a1);
  v4 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  if (v2 != 2)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24A6AE690(v5, 0xD00000000000001BLL, 0x800000024A849C70, isUniquelyReferenced_nonNull_native);
  }

  if (v3 != 2)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_24A6AE690(v7, 0xD000000000000012, 0x800000024A849C50, v8);
  }

  sub_24A7D3378(v4);
}

uint64_t _s8FMIPCore13FMIPAnalyticsV32sendSatelliteLocationUpdateEvent5eventyAA012FMFSatelliteefG0V_tFZ_0(char *a1)
{
  v2 = sub_24A82CDF4();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v26 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A82CE54();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  v17 = a1[8];
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v23[1] = qword_281514470;
  v18 = swift_allocObject();
  v18[16] = v9 & 1;
  v18[17] = v10 & 1;
  v18[18] = v11 & 1;
  v18[19] = v12;
  v18[20] = v13 & 1;
  v18[21] = v14 & 1;
  v18[22] = v15;
  v18[23] = v16;
  v18[24] = v17;
  aBlock[4] = sub_24A7D3510;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCB3C0;
  v19 = _Block_copy(aBlock);
  sub_24A82CE24();
  v29 = MEMORY[0x277D84F90];
  sub_24A67A0B4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  v20 = v26;
  v21 = v28;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v8, v20, v19);
  _Block_release(v19);
  (*(v27 + 8))(v20, v21);
  (*(v24 + 8))(v8, v25);
}

uint64_t _s8FMIPCore13FMIPAnalyticsV38sendSatelliteLocationNotificationEvent5eventyAA012FMFSatelliteefG0V_tFZ_0(char *a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CE54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 17) = v13;
  aBlock[4] = sub_24A7D31D8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCB320;
  v15 = _Block_copy(aBlock);
  sub_24A82CE24();
  v17[1] = MEMORY[0x277D84F90];
  sub_24A67A0B4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v6, v15);
  _Block_release(v15);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

unint64_t sub_24A7D2F80()
{
  result = qword_27EF5F138;
  if (!qword_27EF5F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F138);
  }

  return result;
}

unint64_t sub_24A7D2FD8()
{
  result = qword_27EF5F140;
  if (!qword_27EF5F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F140);
  }

  return result;
}

unint64_t sub_24A7D3030()
{
  result = qword_27EF5F148;
  if (!qword_27EF5F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F148);
  }

  return result;
}

unint64_t sub_24A7D3088()
{
  result = qword_27EF5F150;
  if (!qword_27EF5F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F150);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FMFSatelliteLocationUpdateEvent(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMFSatelliteLocationUpdateEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFSatelliteLocationUpdateEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_24A7D31E0(uint64_t a1)
{
  v2 = sub_24A82C514();
  v8 = v2;
  v9 = sub_24A67A0B4(&unk_281514680, MEMORY[0x277D08A28]);
  v3 = sub_24A697E3C(v7);
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D089E0], v2);
  LOBYTE(v2) = sub_24A82C4D4();
  sub_24A6876E8(v7);
  if (v2)
  {
    v4 = sub_24A82CF94();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v9 = sub_24A6AEBB4;
    v10 = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_24A6AEADC;
    v8 = &unk_285DCB410;
    v6 = _Block_copy(v7);

    AnalyticsSendEventLazy();
    _Block_release(v6);
  }
}

void sub_24A7D3378(uint64_t a1)
{
  v2 = sub_24A82C514();
  v8 = v2;
  v9 = sub_24A67A0B4(&unk_281514680, MEMORY[0x277D08A28]);
  v3 = sub_24A697E3C(v7);
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D089E0], v2);
  LOBYTE(v2) = sub_24A82C4D4();
  sub_24A6876E8(v7);
  if (v2)
  {
    v4 = sub_24A82CF94();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v9 = sub_24A6D89D4;
    v10 = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_24A6AEADC;
    v8 = &unk_285DCB370;
    v6 = _Block_copy(v7);

    AnalyticsSendEventLazy();
    _Block_release(v6);
  }
}

uint64_t sub_24A7D3510()
{
  v1 = 256;
  if (!v0[17])
  {
    v1 = 0;
  }

  v2 = v1 | v0[16];
  v3 = 0x10000;
  if (!v0[18])
  {
    v3 = 0;
  }

  v4 = v2 | v3 | (v0[19] << 24);
  v5 = 0x100000000;
  if (!v0[20])
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if (!v0[21])
  {
    v6 = 0;
  }

  return sub_24A7D2220(v4 | v5 | v6 | (v0[22] << 48) | (v0[23] << 56), v0[24]);
}

uint64_t sub_24A7D35A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEF4C52556E6F7474;
  v5 = 0x7079547472656C61;
  if (a1 == 5)
  {
    v5 = 0x75426C65636E6163;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  v6 = 0x6E6F747475426B6FLL;
  v7 = 0xEB000000004C5255;
  if (a1 != 3)
  {
    v6 = 0xD000000000000011;
    v7 = 0x800000024A844510;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6567617373656DLL;
  if (a1 != 1)
  {
    v9 = 0x6E6F747475426B6FLL;
    v8 = 0xED0000656C746954;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656C746974;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6567617373656DLL)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xED0000656C746954;
        if (v10 != 0x6E6F747475426B6FLL)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656C746974)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEF4C52556E6F7474;
      if (v10 != 0x75426C65636E6163)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x7079547472656C61)
      {
LABEL_40:
        v13 = sub_24A82DC04();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEB000000004C5255;
    if (v10 != 0x6E6F747475426B6FLL)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0x800000024A844510;
    if (v10 != 0xD000000000000011)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_24A7D3818(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x800000024A843FF0;
    v12 = 0xD000000000000017;
    if (a1 == 8)
    {
      v12 = 0x656E616C70726961;
      v13 = 0xEC00000065646F4DLL;
    }

    else
    {
      v13 = 0x800000024A844020;
    }

    if (a1 == 7)
    {
      v12 = 0xD000000000000018;
    }

    else
    {
      v11 = v13;
    }

    v14 = 0xE700000000000000;
    v15 = 0x636972656E6567;
    if (a1 != 5)
    {
      v15 = 0xD000000000000012;
      v14 = 0x800000024A843FD0;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 6)
    {
      v10 = v14;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x646E656972466F6ELL;
    v5 = 0xE900000000000073;
    v6 = 0x766544654D746F6ELL;
    v7 = 0xEB00000000656369;
    if (a1 != 3)
    {
      v6 = 0x656E696C6E6FLL;
      v7 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x7055746553746F6ELL;
    if (a1)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v8 = 1701736302;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v16 = 0xE700000000000000;
        if (v9 != 0x636972656E6567)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v16 = 0x800000024A843FD0;
        if (v9 != 0xD000000000000012)
        {
LABEL_59:
          v17 = sub_24A82DC04();
          goto LABEL_60;
        }
      }
    }

    else if (a2 == 7)
    {
      v16 = 0x800000024A843FF0;
      if (v9 != 0xD000000000000018)
      {
        goto LABEL_59;
      }
    }

    else if (a2 == 8)
    {
      v16 = 0xEC00000065646F4DLL;
      if (v9 != 0x656E616C70726961)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v16 = 0x800000024A844020;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_59;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v16 = 0xE800000000000000;
      if (v9 != 0x7055746553746F6ELL)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v16 = 0xE400000000000000;
      if (v9 != 1701736302)
      {
        goto LABEL_59;
      }
    }
  }

  else if (a2 == 2)
  {
    v16 = 0xE900000000000073;
    if (v9 != 0x646E656972466F6ELL)
    {
      goto LABEL_59;
    }
  }

  else if (a2 == 3)
  {
    v16 = 0xEB00000000656369;
    if (v9 != 0x766544654D746F6ELL)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v16 = 0xE600000000000000;
    if (v9 != 0x656E696C6E6FLL)
    {
      goto LABEL_59;
    }
  }

  if (v10 != v16)
  {
    goto LABEL_59;
  }

  v17 = 1;
LABEL_60:

  return v17 & 1;
}

uint64_t sub_24A7D3B60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6567616D69;
  if (a1 != 4)
  {
    v5 = 0x55656C6261736964;
    v4 = 0xEA00000000004C52;
  }

  if (a1 == 3)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000024A843DE0;
  }

  v6 = 0x800000024A843DA0;
  v7 = 0xD00000000000001BLL;
  if (a1 != 1)
  {
    v7 = 0xD000000000000010;
    v6 = 0x800000024A843DC0;
  }

  if (a1)
  {
    v3 = v6;
  }

  else
  {
    v7 = 0x656C746974;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
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
      v10 = 0x800000024A843DE0;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0xE500000000000000;
      if (v8 != 0x6567616D69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0xEA00000000004C52;
      if (v8 != 0x55656C6261736964)
      {
LABEL_34:
        v11 = sub_24A82DC04();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0x800000024A843DA0;
      if (v8 != 0xD00000000000001BLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0x800000024A843DC0;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v10 = 0xE500000000000000;
    if (v8 != 0x656C746974)
    {
      goto LABEL_34;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_24A7D3D40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006F72;
  v3 = 0x506B6F6F6263616DLL;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x6863746177;
  v7 = 0x6F725063614D69;
  if (a1 != 4)
  {
    v7 = 0x73646F70726961;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656E6F685069;
  if (a1 != 1)
  {
    v9 = 1684099177;
    v8 = 0xE400000000000000;
  }

  if (!a1)
  {
    v9 = 0x506B6F6F6263616DLL;
    v8 = 0xEA00000000006F72;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE500000000000000;
      if (v10 != 0x6863746177)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x6F725063614D69)
        {
          goto LABEL_31;
        }
      }

      else if (v10 != 0x73646F70726961)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x656E6F685069)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE400000000000000;
      v3 = 1684099177;
    }

    if (v10 != v3)
    {
LABEL_31:
      v12 = sub_24A82DC04();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v11 != v2)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_24A7D3EF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x65646F4D74736F6CLL;
  v6 = 0xE600000000000000;
  v7 = 0x65766F6D6572;
  if (a1 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x72456C65636E6163;
  v9 = 0xEB00000000657361;
  if (a1 != 1)
  {
    v8 = 1801678700;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6573617265;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x65646F4D74736F6CLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x65766F6D6572)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
LABEL_34:
        v13 = sub_24A82DC04();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEB00000000657361;
      if (v10 != 0x72456C65636E6163)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1801678700)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6573617265)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_24A7D40D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0xE600000000000000;
    v13 = 0x64656B636F6CLL;
    if (a1 != 2)
    {
      v13 = 0x6475427466656CLL;
      v12 = 0xE700000000000000;
    }

    v14 = 0x656E696C66666FLL;
    if (a1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v14 = 0x656E696C6E6FLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x4364694C65736163;
    v4 = 0xED00006465736F6CLL;
    v5 = 0x800000024A8444A0;
    if (a1 == 7)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    if (a1 != 7)
    {
      v5 = 0x800000024A8444C0;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE800000000000000;
    v8 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v8 = 0x6475427468676972;
    }

    else
    {
      v7 = 0x800000024A844470;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x64656B636F6CLL)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x6475427466656CLL)
        {
          goto LABEL_56;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x656E696C66666FLL)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x656E696C6E6FLL)
      {
        goto LABEL_56;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x6475427468676972)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v15 = 0x800000024A844470;
      if (v9 != 0xD00000000000001ALL)
      {
LABEL_56:
        v16 = sub_24A82DC04();
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xED00006465736F6CLL;
    if (v9 != 0x4364694C65736163)
    {
      goto LABEL_56;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0x800000024A8444A0;
    if (v9 != 0xD000000000000015)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v15 = 0x800000024A8444C0;
    if (v9 != 0xD000000000000016)
    {
      goto LABEL_56;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_56;
  }

  v16 = 1;
LABEL_57:

  return v16 & 1;
}

uint64_t sub_24A7D43AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000073657461;
  v3 = 0x6470556C69616D65;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x6C69616D65;
    if (a1 != 2)
    {
      v13 = 0x646E756F73;
    }

    v14 = 0xE800000000000000;
    v15 = 0x72624E72656E776FLL;
    if (!a1)
    {
      v15 = 0x6470556C69616D65;
      v14 = 0xEC00000073657461;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1954047348;
    v7 = 0xE800000000000000;
    v8 = 0x7478655472657375;
    if (a1 != 7)
    {
      v8 = 0x6954657461657263;
      v7 = 0xEF706D617473656DLL;
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x6F43737574617473;
    v10 = 0xEA00000000006564;
    if (a1 != 4)
    {
      v9 = 0x74736F4C706F7473;
      v10 = 0xEC00000065646F4DLL;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v2 = 0xE500000000000000;
      if (a2 == 2)
      {
        if (v11 != 0x6C69616D65)
        {
          goto LABEL_49;
        }
      }

      else if (v11 != 0x646E756F73)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x72624E72656E776FLL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xEA00000000006564;
        if (v11 != 0x6F43737574617473)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEC00000065646F4DLL;
        if (v11 != 0x74736F4C706F7473)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1954047348)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x7478655472657375)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v3 = 0x6954657461657263;
    v2 = 0xEF706D617473656DLL;
  }

  if (v11 != v3)
  {
LABEL_49:
    v16 = sub_24A82DC04();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v16 = 1;
LABEL_50:

  return v16 & 1;
}

uint64_t sub_24A7D466C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xED00006F666E4965;
  v4 = 0x49656C6261736964;
  if (a1 == 2)
  {
    v4 = 0x726F4D6E7261656CLL;
  }

  else
  {
    v3 = 0xEB000000006F666ELL;
  }

  v5 = 0xD000000000000010;
  v6 = 0x800000024A843550;
  if (!a1)
  {
    v5 = 0x6D614E6C65646F6DLL;
    v6 = 0xE900000000000065;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x726F4D6E7261656CLL;
    }

    else
    {
      v11 = 0x49656C6261736964;
    }

    if (a2 == 2)
    {
      v10 = 0xED00006F666E4965;
    }

    else
    {
      v10 = 0xEB000000006F666ELL;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x6D614E6C65646F6DLL;
    }

    if (a2)
    {
      v10 = 0x800000024A843550;
    }

    else
    {
      v10 = 0xE900000000000065;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_24A82DC04();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_24A7D47DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x72656E776FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 29813;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x646572616873;
    }

    else
    {
      v4 = 0x72656E776FLL;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE200000000000000;
  v8 = 29813;
  if (a2 != 2)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x646572616873;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A7D48EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000726562;
  v3 = 0x6D754E72656E776FLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6D617473656D6974;
    }

    else
    {
      v5 = 0x6C69616D65;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000070;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6567617373656DLL;
    }

    else
    {
      v5 = 0x6D754E72656E776FLL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEB00000000726562;
    }
  }

  v7 = 0x6D617473656D6974;
  v8 = 0xE900000000000070;
  if (a2 != 2)
  {
    v7 = 0x6C69616D65;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x6567617373656DLL;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A7D4A34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676154726961;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73646F50726961;
    }

    else
    {
      v5 = 0x676154726961;
    }

    if (v3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x726F737365636361;
    v4 = 0xE900000000000079;
  }

  else
  {
    v4 = 0xE600000000000000;
    if (a1 == 3)
    {
      v5 = 0x656369766564;
    }

    else
    {
      v5 = 0x6E6F73726570;
    }
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v7 = 0xE700000000000000;
    v8 = 0x73646F50726961;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x726F737365636361;
    v6 = 0xE900000000000079;
    v7 = 0xE600000000000000;
    v8 = 0x656369766564;
    if (a2 != 3)
    {
      v8 = 0x6E6F73726570;
      v7 = 0xE600000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_24A82DC04();
  }

  return v12 & 1;
}

uint64_t sub_24A7D4BA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6E756F5379616C70;
  v4 = a1;
  v5 = 0x6F69736963657270;
  v6 = 0x6F4C656C62616E65;
  v7 = 0xEE0065646F4D7473;
  if (a1 != 4)
  {
    v6 = 0xD000000000000015;
    v7 = 0x800000024A843D50;
  }

  if (a1 == 3)
  {
    v8 = 0xED0000646E69466ELL;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0x6F69746365726964;
  v10 = 0xEA0000000000736ELL;
  if (a1 != 1)
  {
    v9 = 0x74696D69786F7270;
    v10 = 0xED0000646E694679;
  }

  if (!a1)
  {
    v9 = 0x6E756F5379616C70;
    v10 = 0xE900000000000064;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xED0000646E69466ELL;
      if (v11 != 0x6F69736963657270)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE0065646F4D7473;
      if (v11 != 0x6F4C656C62616E65)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0x800000024A843D50;
      if (v11 != 0xD000000000000015)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA0000000000736ELL;
        if (v11 != 0x6F69746365726964)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x74696D69786F7270;
      v2 = 0xED0000646E694679;
    }

    if (v11 != v3)
    {
LABEL_32:
      v13 = sub_24A82DC04();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v13 = 1;
LABEL_33:

  return v13 & 1;
}

uint64_t sub_24A7D4DAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006C657665;
  v3 = 0x4C79726574746162;
  if (a1 > 3u)
  {
    v4 = 0x6E6F697469736F70;
    v5 = 0xEC00000065707954;
    if (a1 != 6)
    {
      v4 = 0x6D617473656D6974;
      v5 = 0xE900000000000070;
    }

    v6 = 0x6E6F697461636F6CLL;
    v7 = 0xEC00000065707954;
    if (a1 != 4)
    {
      v6 = 0x64757469676E6F6CLL;
      v7 = 0xE900000000000065;
    }

    v8 = a1 <= 5u;
  }

  else
  {
    v4 = 0xD000000000000012;
    v5 = 0x800000024A843B30;
    if (a1 != 2)
    {
      v4 = 0x656475746974616CLL;
      v5 = 0xE800000000000000;
    }

    v6 = 0x5379726574746162;
    v7 = 0xED00007375746174;
    if (!a1)
    {
      v6 = 0x4C79726574746162;
      v7 = 0xEC0000006C657665;
    }

    v8 = a1 <= 1u;
  }

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        v2 = 0xE900000000000070;
        if (v9 != 0x6D617473656D6974)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      v11 = 1769172848;
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xE900000000000065;
        if (v9 != 0x64757469676E6F6CLL)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      v11 = 1633906540;
    }

    v2 = 0xEC00000065707954;
    if (v9 != (v11 | 0x6E6F697400000000))
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x800000024A843B30;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0xE800000000000000;
    v3 = 0x656475746974616CLL;
  }

  else if (a2)
  {
    v2 = 0xED00007375746174;
    if (v9 != 0x5379726574746162)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v9 != v3)
  {
LABEL_40:
    v12 = sub_24A82DC04();
    goto LABEL_41;
  }

LABEL_37:
  if (v10 != v2)
  {
    goto LABEL_40;
  }

  v12 = 1;
LABEL_41:

  return v12 & 1;
}

uint64_t sub_24A7D504C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF706D617473656DLL;
  v3 = 0x6954657461657263;
  v4 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v7 = 0x7865547472656C61;
      v8 = 0xE900000000000074;
    }

    else
    {
      if (a1 == 4)
      {
        v7 = 0xD000000000000013;
      }

      else
      {
        v7 = 0xD000000000000011;
      }

      if (v4 == 4)
      {
        v8 = 0x800000024A8444F0;
      }

      else
      {
        v8 = 0x800000024A844510;
      }
    }
  }

  else
  {
    v5 = 0x6F43737574617473;
    v6 = 0xEA00000000006564;
    if (a1 != 1)
    {
      v5 = 0x7469547472656C61;
      v6 = 0xEA0000000000656CLL;
    }

    if (a1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x6954657461657263;
    }

    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xEF706D617473656DLL;
    }
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v9 = 0xD000000000000013;
      }

      else
      {
        v9 = 0xD000000000000011;
      }

      if (a2 == 4)
      {
        v2 = 0x800000024A8444F0;
      }

      else
      {
        v2 = 0x800000024A844510;
      }

      if (v7 != v9)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x7865547472656C61;
    v2 = 0xE900000000000074;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xEA00000000006564;
      if (v7 != 0x6F43737574617473)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v2 = 0xEA0000000000656CLL;
      if (v7 != 0x7469547472656C61)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_34;
  }

  if (v7 != v3)
  {
LABEL_37:
    v10 = sub_24A82DC04();
    goto LABEL_38;
  }

LABEL_34:
  if (v8 != v2)
  {
    goto LABEL_37;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_24A7D5254(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7468676972;
    }

    else
    {
      v3 = 1952867692;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1702060387;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F6C61646E617473;
    v4 = 0xEA0000000000656ELL;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1702131053;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7468676972;
    }

    else
    {
      v9 = 1952867692;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6F6C61646E617473;
    v6 = 0xEA0000000000656ELL;
    if (a2 != 3)
    {
      v5 = 1702131053;
      v6 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1702060387;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_24A82DC04();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}