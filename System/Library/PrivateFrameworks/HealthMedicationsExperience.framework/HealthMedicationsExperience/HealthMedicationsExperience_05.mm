uint64_t sub_1D164B638(int64_t a1)
{
  v3 = sub_1D166F1A4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_1D16701B4();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8]);
        v27 = sub_1D166F974();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_1D164B940(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1D16701B4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1D16706A4();

        sub_1D166FAE4();
        v15 = sub_1D16706E4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D164BB04(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1D166F1A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D164976C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D164A9B0(MEMORY[0x1E69695A8], sub_1D164CEC4);
      goto LABEL_12;
    }

    sub_1D164ABE4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8]);
  v15 = sub_1D166F974();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1D164C960(&qword_1EC63DAD0, MEMORY[0x1E69695A8]);
      v23 = sub_1D166F9B4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D1670624();
  __break(1u);
  return result;
}

uint64_t sub_1D164BDD0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D1649ABC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D164A70C();
      goto LABEL_16;
    }

    sub_1D164AEF4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1D16706A4();
  sub_1D166FAE4();
  result = sub_1D16706E4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D16705D4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D1670624();
  __break(1u);
  return result;
}

void sub_1D164BF50(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_1D1649D10(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D164A85C(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_1D164B120(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_1D1670094();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_1D15EE5A8(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_1D16700A4();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D1670624();
  __break(1u);
}

uint64_t sub_1D164C0F8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1D166F2C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D1649F2C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D164A9B0(MEMORY[0x1E6969AD0], sub_1D15FA1E4);
      goto LABEL_12;
    }

    sub_1D164B328(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1D164C960(&qword_1EC63DA78, MEMORY[0x1E6969AD0]);
  v15 = sub_1D166F974();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1D164C960(&qword_1EC63DA80, MEMORY[0x1E6969AD0]);
      v23 = sub_1D166F9B4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D1670624();
  __break(1u);
  return result;
}

uint64_t sub_1D164C3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D166F7E4();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D166F814();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a4 + 72);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a1;
  aBlock[4] = sub_1D1615D04;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1618700;
  aBlock[3] = &block_descriptor_88;
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1D166F804();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D164C960(&qword_1EDECA030, MEMORY[0x1E69E7F60]);
  v19 = MEMORY[0x1E69E7F60];
  sub_1D164CD1C(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D164C71C(&qword_1EDEC9FF0, &qword_1EDECA000, v19);
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v15, v11, v18);
  _Block_release(v18);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D164C71C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D164CD1C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D164C860()
{
  if (!qword_1EDECA090)
  {
    sub_1D1609C44();
    sub_1D15EE5A8(255, &qword_1EDEC9E58, 0x1E69E9610);
    sub_1D164C960(&qword_1EDECA078, sub_1D1609C44);
    sub_1D164C9A8(&qword_1EDEC9E60, &qword_1EDEC9E58, 0x1E69E9610);
    v0 = sub_1D166F5A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECA090);
    }
  }
}

uint64_t sub_1D164C960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D164C9A8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D15EE5A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D164C9EC()
{
  if (!qword_1EDECA0A0)
  {
    sub_1D164C860();
    sub_1D164CAC4(255, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
    sub_1D164C960(&qword_1EDECA098, sub_1D164C860);
    v0 = sub_1D166F594();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECA0A0);
    }
  }
}

void sub_1D164CAC4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D164CB2C(uint64_t a1)
{
  sub_1D164CD1C(0, &qword_1EDEC9E68, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1D164CC4C(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = sub_1D166F9C4();
  [a1 medicationDetailDidUpdate:v4 for:v6];
}

void sub_1D164CCB8()
{
  if (!qword_1EDEC9D68)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D1670344();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC9D68);
    }
  }
}

void sub_1D164CD1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D164CD88()
{
  if (!qword_1EDECA080)
  {
    sub_1D164CAC4(255, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
    v0 = sub_1D166F5B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECA080);
    }
  }
}

void sub_1D164CE24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D15EE5A8(255, a3, a4);
    sub_1D164C9A8(a5, a3, a4);
    v9 = sub_1D16702B4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D164CEC4()
{
  if (!qword_1EC63E028)
  {
    sub_1D166F1A4();
    sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8]);
    v0 = sub_1D16702B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E028);
    }
  }
}

uint64_t MedicationDose.__allocating_init(_:medicationDetailProvider:medication:)(char **a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  MedicationDose.init(_:medicationDetailProvider:medication:)(a1, a2, a3);
  return v9;
}

uint64_t MedicationDose.medication.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  return v1;
}

uint64_t sub_1D164D068@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  *a2 = v5;
  return result;
}

uint64_t sub_1D164D0E8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_1D166F744();
}

uint64_t MedicationDose.$medication.getter()
{
  swift_beginAccess();
  sub_1D164E3E8(0, &qword_1EDECA040, MEMORY[0x1E695C070]);
  sub_1D166F714();
  return swift_endAccess();
}

uint64_t sub_1D164D1E4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_1D164E3E8(0, &qword_1EDECA040, MEMORY[0x1E695C070]);
  sub_1D166F714();
  return swift_endAccess();
}

uint64_t sub_1D164D26C(uint64_t a1, uint64_t *a2)
{
  sub_1D164E3E8(0, &qword_1EC63E030, MEMORY[0x1E695C060]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = *(v6 + 16);
  v13(&v16 - v11, a1, v5);
  v14 = *a2;
  v13(v10, v12, v5);
  swift_beginAccess();
  sub_1D164E3E8(0, &qword_1EDECA040, MEMORY[0x1E695C070]);
  sub_1D166F724();
  swift_endAccess();
  return (*(v6 + 8))(v12, v5);
}

uint64_t MedicationDose.init(_:medicationDetailProvider:medication:)(char **a1, uint64_t a2, void *a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  *(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationDose_medicationDetailProvider) = 0;
  *(v3 + 16) = v7;
  *(v3 + 24) = v6;
  *(v3 + 32) = v8;
  *(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationDose_medicationDetailProvider) = a2;
  swift_beginAccess();
  v16 = a3;
  v9 = a3;
  sub_1D164DFDC(v7, v6, v8);
  sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);

  sub_1D166F704();
  swift_endAccess();
  if (a2)
  {
    if (v8)
    {
      v11 = *&v7[OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier];
      v10 = *&v7[OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier + 8];

      sub_1D164E028(v7, v6, 1);
    }

    else
    {

      v12 = [v7 medicationIdentifier];
      v11 = sub_1D166FA04();
      v10 = v13;
      sub_1D164E028(v7, v6, 0);
    }

    sub_1D1615648(v14, v11, v10, a2);
  }

  else
  {
    sub_1D164E028(v7, v6, v8);
  }

  return v3;
}

uint64_t MedicationDose.medicationDetailDidUpdate(_:for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  if (*(v3 + 32))
  {
    v9 = *&v7[OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier];
    v8 = *&v7[OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier + 8];
  }

  else
  {
    v10 = [v7 medicationIdentifier];
    v9 = sub_1D166FA04();
    v8 = v11;
  }

  if (v9 == a2 && v8 == a3)
  {

    goto LABEL_11;
  }

  v13 = sub_1D16705D4();

  if (v13)
  {
LABEL_11:
    swift_getKeyPath();
    swift_getKeyPath();

    v15 = a1;
    return sub_1D166F744();
  }

  return result;
}

unint64_t MedicationDose.description.getter()
{
  sub_1D16702D4();

  v7 = *(v0 + 16);
  sub_1D164DFDC(v7, *(v0 + 24), *(v0 + 32));
  v1 = sub_1D166FA74();
  MEMORY[0x1D388CCF0](v1);

  MEMORY[0x1D388CCF0](0x7461636964656D20, 0xED0000203A6E6F69);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  v2 = [v7 description];
  v3 = sub_1D166FA04();
  v5 = v4;

  MEMORY[0x1D388CCF0](v3, v5);

  return 0xD000000000000014;
}

void *MedicationDose.medicationDoseEvent.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = *(v0 + 16);
  }

  v2 = v1;
  return v1;
}

uint64_t MedicationDose.scheduleItem.getter()
{
  if (*(v0 + 32) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 16);
}

uint64_t MedicationDose.scheduleIdentifier.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v2 = v1[2];
    v3 = v1[3];
  }

  else
  {
    v4 = [v1 scheduleItemIdentifier];
    if (v4)
    {
      v5 = v4;
      v2 = sub_1D166FA04();
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void MedicationDose.date.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v1 + 32))
  {
    v4 = OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date;
    v5 = sub_1D166F174();
    v6 = *(*(v5 - 8) + 16);

    v6(a1, v3 + v4, v5);
  }

  else
  {
    v7 = [*(v1 + 16) startDate];
    sub_1D166F144();
  }
}

uint64_t MedicationDose.status.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    if (!v1)
    {
      return 1;
    }
  }

  else
  {
    v1 = *(v0 + 16);
  }

  return [v1 logStatus];
}

uint64_t MedicationDose.doseAmount.getter()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if ((*(v1 + 32) & 1) == 0)
  {
    return sub_1D1670014();
  }

  v3 = *(v1 + 24);
  if (!v3)
  {
    return *(v2 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount);
  }

  v4 = v3;
  v5 = sub_1D1670014();

  return v5;
}

uint64_t MedicationDose.medicationIdentifier.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v2 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier];
    v3 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier + 8];
  }

  else
  {
    v4 = [v1 medicationIdentifier];
    v2 = sub_1D166FA04();
  }

  return v2;
}

uint64_t MedicationDose.deinit()
{
  sub_1D164E028(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationDose__medication;
  sub_1D164E3E8(0, &qword_1EDECA040, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationDose_medicationDetailProvider);

  return v0;
}

uint64_t MedicationDose.__deallocating_deinit()
{
  sub_1D164E028(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationDose__medication;
  sub_1D164E3E8(0, &qword_1EDECA040, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationDose_medicationDetailProvider);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D164DD58@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1D166F604();
  *a1 = result;
  return result;
}

uint64_t _s27HealthMedicationsExperience18MedicationDoseTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      sub_1D15EE5A8(0, &qword_1EDEC9D80, 0x1E69E58C0);
      sub_1D164DFDC(v5, v6, 0);
      sub_1D164DFDC(v2, v3, 0);
      v15 = sub_1D16700A4();
      sub_1D164E028(v2, v3, 0);
      sub_1D164E028(v5, v6, 0);
      return v15 & 1;
    }

    goto LABEL_9;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
LABEL_9:
    sub_1D164DFDC(*a2, *(a2 + 8), v7);
    sub_1D164DFDC(v2, v3, v4);
    sub_1D164E028(v2, v3, v4);
    v12 = v5;
    v13 = v6;
    v14 = v7;
LABEL_10:
    sub_1D164E028(v12, v13, v14);
    return 0;
  }

  sub_1D164DFDC(*a2, *(a2 + 8), 1);
  sub_1D164DFDC(v2, v3, 1);
  if ((_s27HealthMedicationsExperience12ScheduleItemC2eeoiySbAC_ACtFZ_0(v2, v5) & 1) == 0)
  {
    sub_1D164E028(v2, v3, 1);
    v12 = v5;
    v13 = v6;
    v14 = 1;
    goto LABEL_10;
  }

  if (!v3)
  {
    v16 = v6;
    sub_1D164E028(v2, 0, 1);
    sub_1D164E028(v5, v6, 1);
    if (!v6)
    {
      return 1;
    }

    return 0;
  }

  if (!v6)
  {
    sub_1D164E028(v2, v3, 1);
    v12 = v5;
    v13 = 0;
    v14 = 1;
    goto LABEL_10;
  }

  sub_1D15EE5A8(0, &unk_1EDECACE0, 0x1E696C280);
  v8 = v6;
  v9 = v3;
  v10 = sub_1D16700A4();
  sub_1D164E028(v2, v3, 1);
  sub_1D164E028(v5, v6, 1);

  result = 1;
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  return result;
}

id sub_1D164DFDC(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v4 = a2;
  }

  else
  {

    return a1;
  }
}

void sub_1D164E028(void *a1, void *a2, char a3)
{
  if (a3)
  {

    a1 = a2;
    v3 = vars8;
  }
}

uint64_t _s27HealthMedicationsExperience14MedicationDoseC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v15 = *(a1 + 16);
  v16 = v3;
  v17 = v4;
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v12 = *(a2 + 16);
  v13 = v5;
  v14 = v6;
  sub_1D164DFDC(v15, v3, v4);
  sub_1D164DFDC(v12, v5, v6);
  v7 = _s27HealthMedicationsExperience18MedicationDoseTypeO2eeoiySbAC_ACtFZ_0(&v15, &v12);
  sub_1D164E028(v12, v13, v14);
  sub_1D164E028(v15, v16, v17);
  if (v7)
  {
    sub_1D15EE5A8(0, &qword_1EDEC9D80, 0x1E69E58C0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D166F734();

    v8 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D166F734();

    v9 = v15;
    v10 = sub_1D16700A4();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D164E200(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D164E248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t type metadata accessor for MedicationDose()
{
  result = qword_1EDECA8E0;
  if (!qword_1EDECA8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D164E2FC()
{
  sub_1D164E3E8(319, &qword_1EDECA040, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D164E3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D15EE5A8(255, &qword_1EDECACB0, 0x1E69A3B10);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t MedicationOntologyContentProviderError.hashValue.getter()
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](0);
  return sub_1D16706E4();
}

uint64_t sub_1D164E4CC()
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](0);
  return sub_1D16706E4();
}

uint64_t sub_1D164E538()
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](0);
  return sub_1D16706E4();
}

uint64_t MedicationOntologyContentProvider.__allocating_init(with:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1D164E5C0(void *a1)
{
  v2 = v1;
  sub_1D164E76C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v2;
  sub_1D164E800();
  sub_1D164E97C(&qword_1EC63E050, sub_1D164E800);
  v11 = a1;

  sub_1D166F6E4();
  sub_1D164E97C(&qword_1EC63E058, sub_1D164E76C);
  v12 = sub_1D166F754();
  (*(v6 + 8))(v9, v5);
  return v12;
}

void sub_1D164E76C()
{
  if (!qword_1EC63E038)
  {
    sub_1D164E800();
    sub_1D164E97C(&qword_1EC63E050, sub_1D164E800);
    v0 = sub_1D166F6F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E038);
    }
  }
}

void sub_1D164E800()
{
  if (!qword_1EC63E040)
  {
    sub_1D164E870();
    sub_1D15F9218();
    v0 = sub_1D166F6B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E040);
    }
  }
}

void sub_1D164E870()
{
  if (!qword_1EC63E048)
  {
    sub_1D15EE5A8(255, &qword_1EC63DA98, 0x1E696C010);
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E048);
    }
  }
}

uint64_t sub_1D164E8D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1D164E800();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = a1;

  result = sub_1D166F6C4();
  *a3 = result;
  return result;
}

uint64_t sub_1D164E97C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D164E9C4(void (*a1)(uint64_t *), uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = [a3 firstOntologyCoding];
  if (!v9)
  {
    goto LABEL_66;
  }

  v10 = v9;
  v11 = [v9 code];

  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = sub_1D166FA04();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  v16 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v17 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    goto LABEL_66;
  }

  if ((v14 & 0x1000000000000000) != 0)
  {
    v57 = 0;
    v20 = sub_1D164F920(v12, v14, 10);
    v38 = v50;
    goto LABEL_65;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    aBlock = v12;
    v52 = v14 & 0xFFFFFFFFFFFFFFLL;
    if (v12 == 43)
    {
      if (v15)
      {
        if (--v15)
        {
          v20 = 0;
          v30 = &aBlock + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_74:
      __break(1u);
      return;
    }

    if (v12 != 45)
    {
      if (v15)
      {
        v20 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v36 = *p_aBlock - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v15)
    {
      if (--v15)
      {
        v20 = 0;
        v24 = &aBlock + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_72;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    v18 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v18 = sub_1D1670354();
  }

  v19 = *v18;
  if (v19 == 43)
  {
    if (v16 < 1)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v15 = v16 - 1;
    if (v16 != 1)
    {
      v20 = 0;
      if (v18)
      {
        v27 = v18 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            goto LABEL_63;
          }

          v29 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            goto LABEL_63;
          }

          v20 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            goto LABEL_63;
          }

          ++v27;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_55;
    }

LABEL_63:
    v20 = 0;
    LOBYTE(v15) = 1;
    goto LABEL_64;
  }

  if (v19 != 45)
  {
    if (v16)
    {
      v20 = 0;
      if (v18)
      {
        while (1)
        {
          v33 = *v18 - 48;
          if (v33 > 9)
          {
            goto LABEL_63;
          }

          v34 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            goto LABEL_63;
          }

          v20 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            goto LABEL_63;
          }

          ++v18;
          if (!--v16)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_55;
    }

    goto LABEL_63;
  }

  if (v16 < 1)
  {
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v15 = v16 - 1;
  if (v16 == 1)
  {
    goto LABEL_63;
  }

  v20 = 0;
  if (v18)
  {
    v21 = v18 + 1;
    while (1)
    {
      v22 = *v21 - 48;
      if (v22 > 9)
      {
        goto LABEL_63;
      }

      v23 = 10 * v20;
      if ((v20 * 10) >> 64 != (10 * v20) >> 63)
      {
        goto LABEL_63;
      }

      v20 = v23 - v22;
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_63;
      }

      ++v21;
      if (!--v15)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_55:
  LOBYTE(v15) = 0;
LABEL_64:
  v57 = v15;
  v38 = v15;
LABEL_65:

  if (v38)
  {
LABEL_66:

    aBlock = 0;
    LOBYTE(v52) = 0;
    a1(&aBlock);
    return;
  }

  v39 = objc_opt_self();
  sub_1D164FED0(0, &qword_1EDECB330);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D16721C0;
  v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v42 = [objc_opt_self() identifierWithNumber_];

  v43 = [v39 selectionForNodeWithIdentifier_];
  *(v40 + 32) = v43;
  sub_1D15EE5A8(0, &qword_1EC63E068, 0x1E696C030);
  v44 = sub_1D166FC44();

  v45 = [v39 andSelectionWithSubselections_];

  v46 = swift_allocObject();
  v46[2] = sub_1D162EF90;
  v46[3] = v8;
  v46[4] = a4;
  v47 = objc_allocWithZone(MEMORY[0x1E69A30C0]);
  v55 = sub_1D164FEAC;
  v56 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1D164F384;
  v54 = &block_descriptor_11;
  v48 = _Block_copy(&aBlock);

  v49 = [v47 initWithConceptSelection:v45 resultsHandler:v48];
  _Block_release(v48);

  [*(a4 + 16) executeQuery_];
}

void sub_1D164EF74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v12 = sub_1D166F4E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v17 = a4;
    sub_1D166F4C4();
    v18 = a4;
    v19 = sub_1D166F4D4();
    v20 = sub_1D166FF44();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = a4;
      v34 = v32;
      *v21 = 136446210;
      v22 = a4;
      sub_1D15F9218();
      v23 = sub_1D166FA74();
      v25 = sub_1D15F7A30(v23, v24, &v34);
      v31 = v12;
      v26 = a5;
      v27 = v25;

      *(v21 + 4) = v27;
      a5 = v26;
      _os_log_impl(&dword_1D15E6000, v19, v20, "Failed to query for hk concept using user domain concept: %{public}s", v21, 0xCu);
      v28 = v32;
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1D388E250](v28, -1, -1);
      MEMORY[0x1D388E250](v21, -1, -1);

      (*(v13 + 8))(v16, v31);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    v30 = a4;
    a5(a4, 1);
  }

  else
  {
    a5(a2, 0);
    v29 = *(a7 + 16);

    [v29 stopQuery_];
  }
}

uint64_t MedicationOntologyContentProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D164F264()
{
  result = qword_1EC63E060;
  if (!qword_1EC63E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E060);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1D164F384(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v13 = a2;
  v11 = a3;
  v12 = a5;
  v10(v13, a3, a4, a5);
}

void *sub_1D164F434(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D164FED0(0, &qword_1EC63DA68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1D164F4AC()
{
  v0 = sub_1D166FBC4();
  v4 = sub_1D164F52C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D164F52C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D166FAD4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1D16700F4();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1D164F434(v9, 0);
  v12 = sub_1D164F684(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1D166FAD4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1D1670354();
LABEL_4:

  return sub_1D166FAD4();
}

unint64_t sub_1D164F684(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D164F8A4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D166FB64();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D1670354();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D164F8A4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D166FB34();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D164F8A4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D166FB74();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1D388CD20](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_1D164F920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1D166FBB4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D164F4AC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D1670354();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D164FED0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D16705A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t LocalizationSource.stringsTable(forLanguageCode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v7 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = [*v3 localizations];
  if (!v10)
  {
    sub_1D166FC54();
    v10 = sub_1D166FC44();
  }

  v11 = objc_opt_self();
  sub_1D165034C();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D16721D0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v13 = sub_1D166FC44();

  v14 = [v11 preferredLocalizationsFromArray:v10 forPreferences:v13];

  v15 = sub_1D166FC54();
  if (v15[2])
  {
    v17 = v15[4];
    v16 = v15[5];
  }

  else
  {
    v16 = 0;
  }

  v18 = sub_1D166F9C4();
  v19 = sub_1D166F9C4();
  if (v16)
  {
    v20 = sub_1D166F9C4();
  }

  else
  {
    v20 = 0;
  }

  v21 = [v8 URLForResource:v18 withExtension:v19 subdirectory:0 localization:v20];

  if (v21)
  {
    sub_1D166F0B4();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_1D166F0C4();
  v24 = *(*(v23 - 8) + 56);

  return v24(a3, v22, 1, v23);
}

uint64_t LocalizationSource.table.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

HealthMedicationsExperience::LocalizationSource __swiftcall LocalizationSource.init(bundle:table:)(NSBundle bundle, Swift::String table)
{
  *v2 = bundle;
  *(v2 + 8) = table;
  result.table = table;
  result.bundle = bundle;
  return result;
}

id sub_1D16501B4()
{
  if (qword_1EDECAC90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDECAC98;
  qword_1EDECB058 = qword_1EDECAC98;
  unk_1EDECB060 = 0xD000000000000027;
  qword_1EDECB068 = 0x80000001D1678BC0;

  return v1;
}

uint64_t static LocalizationSource.healthMedicationsExperience.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDECB050 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EDECB058;
  v2 = qword_1EDECB068;
  *a1 = xmmword_1EDECB058;
  *(a1 + 16) = v2;
  v3 = v1;
}

uint64_t sub_1D16502C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a4;
  v9 = a4[1];
  v11 = a4[2];
  result = sub_1D166F004();
  if (*(a9 + 16))
  {
    v13 = sub_1D166FA34();

    return v13;
  }

  return result;
}

void sub_1D165034C()
{
  if (!qword_1EDECABA0)
  {
    v0 = sub_1D16705A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECABA0);
    }
  }
}

uint64_t LocalizationSource.localized(_:locale:value:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *v8;
  v10 = v8[1];
  v12 = v8[2];
  result = sub_1D166F004();
  if (*(a8 + 16))
  {
    v14 = sub_1D166FA34();

    return v14;
  }

  return result;
}

uint64_t MedmojiColor.accessibilityLabel.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (qword_1EDECB050 != -1)
  {
    v4 = *(v0 + 8);
    v5 = *(v0 + 16);
    swift_once();
  }

  return sub_1D166F004();
}

uint64_t MedmojiColor.localizationKey.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

id sub_1D1650508()
{
  sub_1D164FED0(0, &qword_1EDEC9D50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D1674A50;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.133333333 green:0.443137255 blue:0.611764706 alpha:1.0];
  *(v0 + 40) = 0xD000000000000022;
  *(v0 + 48) = 0x80000001D1678D90;
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.368627451 green:0.364705882 blue:0.376470588 alpha:1.0];
  *(v0 + 64) = 0xD00000000000001DLL;
  *(v0 + 72) = 0x80000001D1678DC0;
  *(v0 + 80) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.8 blue:0.0 alpha:1.0];
  *(v0 + 88) = 0xD00000000000001FLL;
  *(v0 + 96) = 0x80000001D1678DE0;
  *(v0 + 104) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.509803922 blue:0.384313725 alpha:1.0];
  *(v0 + 112) = 0xD00000000000001ELL;
  *(v0 + 120) = 0x80000001D1678E00;
  *(v0 + 128) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.670588235 green:0.749019608 blue:0.345098039 alpha:1.0];
  *(v0 + 136) = 0xD000000000000023;
  *(v0 + 144) = 0x80000001D1678E20;
  *(v0 + 152) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.847058824 blue:0.556862745 alpha:1.0];
  *(v0 + 160) = 0xD000000000000023;
  *(v0 + 168) = 0x80000001D1678E50;
  *(v0 + 176) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.670588235 blue:0.905882353 alpha:1.0];
  *(v0 + 184) = 0xD000000000000023;
  *(v0 + 192) = 0x80000001D1678E80;
  *(v0 + 200) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.639215686 green:0.419607843 blue:0.905882353 alpha:1.0];
  *(v0 + 208) = 0xD000000000000025;
  *(v0 + 216) = 0x80000001D1678EB0;
  *(v0 + 224) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:0.533333333 blue:0.705882353 alpha:1.0];
  *(v0 + 232) = 0xD000000000000024;
  *(v0 + 240) = 0x80000001D1678EE0;
  *(v0 + 248) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.474509804 blue:0.670588235 alpha:1.0];
  *(v0 + 256) = 0xD00000000000001DLL;
  *(v0 + 264) = 0x80000001D1678F10;
  *(v0 + 272) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.839215686 green:0.235294118 blue:0.2 alpha:1.0];
  *(v0 + 280) = 0xD00000000000001CLL;
  *(v0 + 288) = 0x80000001D1678F30;
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.792156863 green:0.580392157 blue:0.317647059 alpha:1.0];
  *(v0 + 296) = result;
  *(v0 + 304) = 0xD00000000000001FLL;
  *(v0 + 312) = 0x80000001D1678F50;
  qword_1EDECA9A0 = v0;
  return result;
}

id sub_1D16508EC()
{
  sub_1D164FED0(0, &qword_1EDEC9D50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D1674A50;
  if (qword_1EDEC9D90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEC9D98;
  *(v0 + 32) = qword_1EDEC9D98;
  *(v0 + 40) = 0xD00000000000001CLL;
  *(v0 + 48) = 0x80000001D1678BF0;
  v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v3 = v1;
  *(v0 + 56) = [v2 initWithRed:0.819607843 green:0.819607843 blue:0.839215686 alpha:1.0];
  *(v0 + 64) = 0xD00000000000001BLL;
  *(v0 + 72) = 0x80000001D1678C10;
  *(v0 + 80) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.976470588 green:0.91372549 blue:0.717647059 alpha:1.0];
  *(v0 + 88) = 0xD00000000000001CLL;
  *(v0 + 96) = 0x80000001D1678C30;
  *(v0 + 104) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.964705882 green:0.768627451 blue:0.705882353 alpha:1.0];
  *(v0 + 112) = 0xD00000000000001CLL;
  *(v0 + 120) = 0x80000001D1678C50;
  *(v0 + 128) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.88627451 green:0.941176471 blue:0.494117647 alpha:1.0];
  *(v0 + 136) = 0xD00000000000001BLL;
  *(v0 + 144) = 0x80000001D1678C70;
  *(v0 + 152) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.643137255 green:0.890196078 blue:0.721568627 alpha:1.0];
  *(v0 + 160) = 0xD000000000000021;
  *(v0 + 168) = 0x80000001D1678C90;
  *(v0 + 176) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.588235294 green:0.862745098 blue:1.0 alpha:1.0];
  *(v0 + 184) = 0xD00000000000001FLL;
  *(v0 + 192) = 0x80000001D1678CC0;
  *(v0 + 200) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.529411765 green:0.588235294 blue:1.0 alpha:1.0];
  *(v0 + 208) = 0xD000000000000020;
  *(v0 + 216) = 0x80000001D1678CE0;
  *(v0 + 224) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.784313725 green:0.662745098 blue:0.988235294 alpha:1.0];
  *(v0 + 232) = 0xD00000000000001DLL;
  *(v0 + 240) = 0x80000001D1678D10;
  *(v0 + 248) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.960784314 green:0.701960784 blue:0.854901961 alpha:1.0];
  *(v0 + 256) = 0xD00000000000001BLL;
  *(v0 + 264) = 0x80000001D1678D30;
  *(v0 + 272) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.345098039 blue:0.309803922 alpha:1.0];
  *(v0 + 280) = 0xD00000000000001ALL;
  *(v0 + 288) = 0x80000001D1678D50;
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.584313725 blue:0.0 alpha:1.0];
  *(v0 + 296) = result;
  *(v0 + 304) = 0xD00000000000001DLL;
  *(v0 + 312) = 0x80000001D1678D70;
  qword_1EDECA9B8 = v0;
  return result;
}

uint64_t sub_1D1650CE4(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t static MedmojiColor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  sub_1D15FAE98();
  if ((sub_1D16700A4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1D16705D4();
}

uint64_t MedmojiColor.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_1D16700B4();

  return sub_1D166FAE4();
}

uint64_t MedmojiColor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D16706A4();
  sub_1D16700B4();
  sub_1D166FAE4();
  return sub_1D16706E4();
}

uint64_t sub_1D1650EA8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D16706A4();
  sub_1D16700B4();
  sub_1D166FAE4();
  return sub_1D16706E4();
}

uint64_t sub_1D1650F0C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_1D16700B4();

  return sub_1D166FAE4();
}

uint64_t sub_1D1650F60()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D16706A4();
  sub_1D16700B4();
  sub_1D166FAE4();
  return sub_1D16706E4();
}

uint64_t sub_1D1650FC0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  sub_1D15FAE98();
  if ((sub_1D16700A4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1D16705D4();
}

id sub_1D165106C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.670588235 blue:0.905882353 alpha:1.0];
  qword_1EC63E070 = result;
  return result;
}

id sub_1D16510DC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  qword_1EDEC9D98 = result;
  return result;
}

id sub_1D1651144(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

double UIColor.luminance.getter()
{
  v1 = [v0 CGColor];
  sub_1D16511F4();
  v3 = v2;

  return v3;
}

void sub_1D16511F4()
{
  v1 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  if (v1)
  {
    v2 = v1;
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v1, kCGRenderingIntentDefault, v0, 0);

    if (CopyByMatchingToColorSpace)
    {
      v4 = sub_1D166FF04();
      if (v4)
      {
        if (v4[2] == 4)
        {
          v5 = v4[4];
          v6 = v4[5];
          v7 = v4[6];
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id UIColor.onWhite.getter()
{
  v1 = [v0 CGColor];
  v2 = sub_1D165133C();

  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  return v3;
}

CGColorSpace *sub_1D165133C()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = result;
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(result, kCGRenderingIntentDefault, v0, 0);
  v4 = 0uLL;
  v5 = 0.0;
  if (CopyByMatchingToColorSpace)
  {
    v6 = CopyByMatchingToColorSpace;
    v7 = sub_1D166FF04();
    if (v7)
    {
      if (*(v7 + 16) == 4)
      {
        v5 = *(v7 + 48);
        v10 = *(v7 + 56);
        v11 = *(v7 + 32);

        v8 = v10;
        v4 = v11;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v8 = 0.0;
    v4 = 0uLL;
  }

  else
  {
    v8 = 0.0;
  }

LABEL_10:
  v12 = vaddq_f64(vmulq_n_f64(v4, v8), vdupq_lane_s64(COERCE__INT64(1.0 - v8), 0));
  v13 = v5 * v8 + 1.0 - v8;
  v14 = 0x3FF0000000000000;
  result = CGColorCreate(v2, v12.f64);
  if (result)
  {
    v9 = result;

    return v9;
  }

LABEL_13:
  __break(1u);
  return result;
}

id UIColor.lightVariant.getter()
{
  v1 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v2 = [v0 resolvedColorWithTraitCollection_];

  return v2;
}

double UIColor.rgbaComponents.getter()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v7 = 0.0;
  v8 = 0;
  v6 = 0;
  [v0 getRed:v9 green:&v8 blue:&v7 alpha:&v6];
  sub_1D164FED0(0, &qword_1EC63E078);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D1674A60;
  v2 = v8;
  *(v1 + 32) = v9[0];
  *(v1 + 40) = v2;
  v4 = v6;
  result = v7;
  *(v1 + 48) = v7;
  *(v1 + 56) = v4;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void UIColor.redComponent.getter()
{
  UIColor.rgbaComponents.getter();
  if (v0)
  {
    if (*(v0 + 16))
    {
      v1 = *(v0 + 32);
    }

    else
    {
      __break(1u);
    }
  }
}

void UIColor.greenComponent.getter()
{
  UIColor.rgbaComponents.getter();
  if (v0)
  {
    if (*(v0 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v1 = *(v0 + 40);
    }
  }
}

void UIColor.blueComponent.getter()
{
  UIColor.rgbaComponents.getter();
  if (v0)
  {
    if (*(v0 + 16) < 3uLL)
    {
      __break(1u);
    }

    else
    {
      v1 = *(v0 + 48);
    }
  }
}

void UIColor.alphaComponent.getter()
{
  UIColor.rgbaComponents.getter();
  if (v0)
  {
    if (*(v0 + 16) < 4uLL)
    {
      __break(1u);
    }

    else
    {
      v1 = *(v0 + 56);
    }
  }
}

id static UIColor.medicationScheduleGroupedCellBackground.getter()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];

  return v0;
}

unint64_t sub_1D1651718()
{
  result = qword_1EC63E080;
  if (!qword_1EC63E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E080);
  }

  return result;
}

uint64_t sub_1D165177C(uint64_t a1, uint64_t *a2)
{
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-v9];
  sub_1D165370C(a1, &v14[-v9], &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v11 = *a2;
  v12 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  sub_1D165370C(v11 + v12, v8, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  swift_beginAccess();
  sub_1D15EF390(v10, v11 + v12);
  swift_endAccess();
  sub_1D16518D8(v8);
  sub_1D16537E4(v8, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  return sub_1D16537E4(v10, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D16518D8(uint64_t a1)
{
  v3 = type metadata accessor for MedicationVisualizationConfig(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - v9;
  sub_1D1653840();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  v17 = *(v12 + 56);
  sub_1D165370C(a1, v15, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  sub_1D165370C(v1 + v16, &v15[v17], &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3) == 1)
  {
    if (v18(&v15[v17], 1, v3) == 1)
    {
      return sub_1D16537E4(v15, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    }

    goto LABEL_6;
  }

  sub_1D165370C(v15, v10, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  if (v18(&v15[v17], 1, v3) == 1)
  {
    sub_1D16538C0(v10, type metadata accessor for MedicationVisualizationConfig);
LABEL_6:
    sub_1D16538C0(v15, sub_1D1653840);
    return sub_1D1652A50();
  }

  v20 = &v15[v17];
  v21 = v31;
  sub_1D15F2F38(v20, v31);
  v22 = *v21;
  v33 = *v10;
  v32 = v22;
  v23 = MedicationShape.rawValue.getter();
  v25 = v24;
  if (v23 == MedicationShape.rawValue.getter() && v25 == v26)
  {
  }

  else
  {
    v27 = sub_1D16705D4();

    if ((v27 & 1) == 0)
    {
LABEL_14:
      sub_1D16538C0(v21, type metadata accessor for MedicationVisualizationConfig);
      sub_1D16538C0(v10, type metadata accessor for MedicationVisualizationConfig);
      sub_1D16537E4(v15, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
      return sub_1D1652A50();
    }
  }

  if ((sub_1D1662750(*(v10 + 1), *(v21 + 8)) & 1) == 0)
  {
    goto LABEL_14;
  }

  v28 = *(v3 + 24);
  sub_1D15EE5A8(0, &qword_1EDECACA8, 0x1E69DC888);
  sub_1D1653920();
  v29 = sub_1D166F8A4();
  sub_1D16538C0(v21, type metadata accessor for MedicationVisualizationConfig);
  sub_1D16538C0(v10, type metadata accessor for MedicationVisualizationConfig);
  result = sub_1D16537E4(v15, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  if ((v29 & 1) == 0)
  {
    return sub_1D1652A50();
  }

  return result;
}

uint64_t sub_1D1651D14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  return sub_1D165370C(v1 + v3, a1, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D1651D88(uint64_t a1)
{
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  sub_1D165370C(v1 + v7, v6, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  swift_beginAccess();
  sub_1D15EF390(a1, v1 + v7);
  swift_endAccess();
  sub_1D16518D8(v6);
  sub_1D16537E4(a1, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  return sub_1D16537E4(v6, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

void (*sub_1D1651EA4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v7);
    v5[11] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  v5[12] = v8;
  v5[13] = v10;
  swift_beginAccess();
  sub_1D165370C(v1 + v10, v9, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  return sub_1D1651FF0;
}

void sub_1D1651FF0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1D165370C(*(*a1 + 96), v6, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    sub_1D165370C(v7 + v4, v5, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    swift_beginAccess();
    sub_1D15EF390(v6, v7 + v4);
    swift_endAccess();
    sub_1D16518D8(v5);
    sub_1D16537E4(v5, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  }

  else
  {
    sub_1D165370C(v7 + v4, v6, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    swift_beginAccess();
    sub_1D15EF390(v3, v7 + v4);
    swift_endAccess();
    sub_1D16518D8(v6);
  }

  sub_1D16537E4(v6, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  sub_1D16537E4(v3, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

id MedicationShapeView.__allocating_init(config:)(uint64_t a1)
{
  v2 = v1;
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = objc_allocWithZone(v2);
  *&v8[OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_shadowLayer] = 0;
  v9 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  v10 = type metadata accessor for MedicationVisualizationConfig(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v8[v9], 1, 1, v10);
  v17.receiver = v8;
  v17.super_class = v2;
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1D15F2F38(a1, v7);
  v11(v7, 0, 1, v10);
  v13 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  v14 = v12;
  sub_1D1652568(v7, v12 + v13);
  swift_endAccess();

  return v14;
}

id MedicationShapeView.init(config:)(uint64_t a1)
{
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_shadowLayer] = 0;
  v7 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  v8 = type metadata accessor for MedicationVisualizationConfig(0);
  v9 = *(*(v8 - 8) + 56);
  v9(&v1[v7], 1, 1, v8);
  v10 = type metadata accessor for MedicationShapeView();
  v16.receiver = v1;
  v16.super_class = v10;
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1D15F2F38(a1, v6);
  v9(v6, 0, 1, v8);
  v12 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  v13 = v11;
  sub_1D1652568(v6, v11 + v12);
  swift_endAccess();

  return v13;
}

uint64_t sub_1D1652568(uint64_t a1, uint64_t a2)
{
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MedicationShapeView()
{
  result = qword_1EC63E090;
  if (!qword_1EC63E090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D16526EC()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for MedicationShapeView();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_shadowLayer];
  if (v1)
  {
    v2 = v1;
    [v2 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v0 bounds];
    Width = CGRectGetWidth(v26);
    [v0 bounds];
    Height = CGRectGetHeight(v27);
    if (Height < Width)
    {
      Width = Height;
    }

    [v0 bounds];
    v13 = round((CGRectGetWidth(v28) - Width) * 0.5);
    [v0 bounds];
    v37.origin.y = round((CGRectGetHeight(v29) - Width) * 0.5);
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    v37.origin.x = v13;
    v37.size.width = Width;
    v37.size.height = Width;
    if (CGRectEqualToRect(v30, v37))
    {
      goto LABEL_18;
    }

    [v0 bounds];
    v14 = CGRectGetWidth(v31);
    [v0 bounds];
    v15 = CGRectGetHeight(v32);
    if (v15 < v14)
    {
      v14 = v15;
    }

    [v0 bounds];
    v16 = round((CGRectGetWidth(v33) - v14) * 0.5);
    [v0 bounds];
    [v2 setFrame_];
    [v2 bounds];
    [v2 setShadowRadius_];
    [v2 bounds];
    [v2 setShadowOffset_];
    v17 = [v2 sublayers];
    if (!v17)
    {
LABEL_18:
    }

    else
    {
      v18 = v17;
      sub_1D15EE5A8(0, &qword_1EDEC9DA0, 0x1E6979398);
      v19 = sub_1D166FC54();

      if (v19 >> 62)
      {
        goto LABEL_21;
      }

      for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
      {
        v21 = 0;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1D388D4D0](v21, v19);
          }

          else
          {
            if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          [v2 bounds];
          [v23 setFrame_];

          ++v21;
          if (v24 == i)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        ;
      }

LABEL_22:
    }
  }
}

uint64_t sub_1D1652A50()
{
  sub_1D16536B8(0, &qword_1EDECAE48, sub_1D15F2ED0);
  v105 = *(v1 - 8);
  v2 = *(v105 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v110 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v116 = &v98 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v98 - v7;
  sub_1D16536B8(0, &qword_1EDECA288, sub_1D15F2E34);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = (&v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v111 = (&v98 - v13);
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v98 - v16;
  v18 = type metadata accessor for MedicationVisualizationConfig(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_shadowLayer;
  [*&v0[OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_shadowLayer] removeFromSuperlayer];
  v24 = *&v0[v23];
  v101 = v23;
  *&v0[v23] = 0;

  v25 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  sub_1D165370C(&v0[v25], v17, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_1D16537E4(v17, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  }

  sub_1D15F2F38(v17, v22);
  v27 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  LODWORD(v28) = 1045220557;
  [v27 setShadowOpacity_];
  [v27 setShouldRasterize_];
  v29 = objc_opt_self();
  v30 = [v29 mainScreen];
  [v30 scale];
  v32 = v31;

  [v27 setRasterizationScale_];
  v107 = v29;
  v33 = [v29 mainScreen];
  [v33 scale];
  v35 = v34;

  [v27 setContentsScale_];
  v100 = v0;
  v36 = [v0 layer];
  v109 = v27;
  [v36 addSublayer_];

  v99 = v22;
  v37 = *(v22 + 1);
  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 64);
  v102 = (v39 + 63) >> 6;
  v103 = v37;

  v42 = 0;
  v106 = v38;
  v108 = v12;
  while (v41)
  {
    v43 = v42;
LABEL_18:
    v46 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v47 = v46 | (v43 << 6);
    v48 = (*(v103 + 48) + 32 * v47);
    v49 = *v48;
    v50 = v48[1];
    v52 = v48[2];
    v51 = v48[3];
    v53 = v104;
    sub_1D165370C(*(v103 + 56) + *(v105 + 72) * v47, v104, &qword_1EDECAE48, sub_1D15F2ED0);
    sub_1D15F2E34();
    v55 = v54;
    v56 = *(v54 + 48);
    *v12 = v49;
    v12[1] = v50;
    v12[2] = v52;
    v12[3] = v51;
    sub_1D1653778(v53, v12 + v56, &qword_1EDECAE48, sub_1D15F2ED0);
    (*(*(v55 - 8) + 56))(v12, 0, 1, v55);

    sub_1D15F301C(v52, v51);
LABEL_19:
    v57 = v111;
    sub_1D1653778(v12, v111, &qword_1EDECA288, sub_1D15F2E34);
    sub_1D15F2E34();
    if ((*(*(v55 - 8) + 48))(v57, 1, v55) == 1)
    {

      v94 = v100;
      v95 = *&v100[v101];
      v96 = v109;
      *&v100[v101] = v109;
      v97 = v96;

      [v94 setNeedsLayout];
      return sub_1D16538C0(v99, type metadata accessor for MedicationVisualizationConfig);
    }

    v58 = *v57;
    v114 = v57[1];
    v115 = v58;
    v59 = v57[2];
    v112 = v57[3];
    v113 = v59;
    v60 = v116;
    sub_1D1653778(v57 + *(v55 + 48), v116, &qword_1EDECAE48, sub_1D15F2ED0);
    v61 = type metadata accessor for MedicationFragmentLayer();
    v62 = objc_allocWithZone(v61);
    v63 = &v62[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
    *v63 = 0u;
    *(v63 + 1) = 0u;
    *&v62[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color] = 0;
    v117.receiver = v62;
    v117.super_class = v61;
    v64 = objc_msgSendSuper2(&v117, sel_init);
    v65 = v107;
    v66 = [v107 mainScreen];
    [v66 scale];
    v68 = v67;

    [v64 setContentsScale_];
    v69 = [v65 mainScreen];
    [v69 scale];
    v71 = v70;

    [v64 setRasterizationScale_];
    [v64 setNeedsDisplayOnBoundsChange_];

    v72 = &v64[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
    v73 = *&v64[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
    v74 = *&v64[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8];
    v75 = *&v64[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16];
    v76 = *&v64[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24];
    v77 = v114;
    *v72 = v115;
    v72[1] = v77;
    v78 = v112;
    v72[2] = v113;
    v72[3] = v78;
    sub_1D1615FFC(v73, v74, v75, v76);

    v79 = v60;
    v80 = v110;
    sub_1D165370C(v79, v110, &qword_1EDECAE48, sub_1D15F2ED0);
    sub_1D15F2ED0();
    v82 = v81;
    v83 = *(v81 - 8);
    if ((*(v83 + 48))(v80, 1, v81) == 1)
    {
      sub_1D16537E4(v80, &qword_1EDECAE48, sub_1D15F2ED0);
      v84 = 0;
    }

    else
    {
      v84 = sub_1D166F894();
      (*(v83 + 8))(v80, v82);
    }

    v85 = OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color;
    swift_beginAccess();
    v86 = *&v64[v85];
    *&v64[v85] = v84;
    v87 = v84;

    v89 = *v72;
    v88 = v72[1];
    v90 = v72[2];
    v91 = v72[3];
    v92 = *v72;
    if (v88)
    {
      sub_1D1615FB0(v92, v72[1], v72[2], v72[3]);
      sub_1D15F301C(v90, v91);
      sub_1D1615FFC(v89, v88, v90, v91);
      v38 = v106;
      if (v91 == 1)
      {
      }

      else
      {
        [v64 setNeedsDisplay];

        sub_1D15F3228(v90, v91);
      }
    }

    else
    {
      sub_1D1615FB0(v92, 0, v72[2], v72[3]);
      sub_1D1615FFC(v89, 0, v90, v91);

      v38 = v106;
    }

    [v109 addSublayer_];

    result = sub_1D16537E4(v116, &qword_1EDECAE48, sub_1D15F2ED0);
    v12 = v108;
  }

  if (v102 <= v42 + 1)
  {
    v44 = v42 + 1;
  }

  else
  {
    v44 = v102;
  }

  v45 = v44 - 1;
  while (1)
  {
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v43 >= v102)
    {
      sub_1D15F2E34();
      v55 = v93;
      (*(*(v93 - 8) + 56))(v12, 1, 1, v93);
      v41 = 0;
      v42 = v45;
      goto LABEL_19;
    }

    v41 = *(v38 + 8 * v43);
    ++v42;
    if (v41)
    {
      v42 = v43;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

id MedicationShapeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationShapeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1653538()
{
  sub_1D16536B8(319, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D16536B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D16700E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D165370C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D16536B8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D1653778(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D16536B8(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D16537E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D16536B8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D1653840()
{
  if (!qword_1EC63E0A0)
  {
    sub_1D16536B8(255, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E0A0);
    }
  }
}

uint64_t sub_1D16538C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1653920()
{
  result = qword_1EDEC9D88;
  if (!qword_1EDEC9D88)
  {
    sub_1D15EE5A8(255, &qword_1EDECACA8, 0x1E69DC888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC9D88);
  }

  return result;
}

uint64_t TimeZoneChange.lastChangeDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeZoneChange(0) + 20);
  v4 = sub_1D166F174();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TimeZoneChange.init(secondsOffset:lastChangeDate:shouldDisplayTip:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for TimeZoneChange(0);
  v8 = *(v7 + 20);
  v9 = sub_1D166F174();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t TimeZoneChange.getEndOfDayForLastTimeZoneChange.getter()
{
  v1 = sub_1D166F2D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F2B4();
  v6 = v0 + *(type metadata accessor for TimeZoneChange(0) + 20);
  sub_1D166F264();
  return (*(v2 + 8))(v5, v1);
}

uint64_t TimeZoneChange.getSecondsAhead(of:)()
{
  v1 = sub_1D166F174();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1654BAC(0, &qword_1EC63E0A8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_1D166F304();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v0;
  sub_1D166F2F4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D165A3A8(v9, &qword_1EC63E0A8, MEMORY[0x1E6969BC0]);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    sub_1D166F164();
    v17 = sub_1D166F2E4();
    v18 = *(v2 + 8);
    v18(v5, v1);
    sub_1D166F164();
    v19 = sub_1D166F2E4();
    v18(v5, v1);
    (*(v11 + 8))(v14, v10);
    result = v17 - v19;
    if (__OFSUB__(v17, v19))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t TimeZoneChange.debugDescription.getter()
{
  v1 = v0;
  sub_1D16702D4();
  MEMORY[0x1D388CCF0](0xD000000000000011, 0x80000001D1679010);
  v2 = type metadata accessor for TimeZoneChange(0);
  v3 = *(v2 + 20);
  sub_1D166F174();
  sub_1D1654160(&qword_1EC63E0B0, MEMORY[0x1E6969530]);
  v4 = sub_1D1670594();
  MEMORY[0x1D388CCF0](v4);

  MEMORY[0x1D388CCF0](0xD000000000000016, 0x80000001D1679030);
  if (*(v1 + *(v2 + 24)))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v1 + *(v2 + 24)))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1D388CCF0](v5, v6);

  MEMORY[0x1D388CCF0](0xD000000000000013, 0x80000001D1679050);
  v9 = *v1;
  v7 = sub_1D166FAA4();
  MEMORY[0x1D388CCF0](v7);

  MEMORY[0x1D388CCF0](39, 0xE100000000000000);
  return 0;
}

uint64_t static TimeZoneChange.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for TimeZoneChange(0);
  v5 = *(v4 + 20);
  if (sub_1D166F134())
  {
    v6 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t TimeZoneChange.hash(into:)()
{
  v1 = v0;
  MEMORY[0x1D388D890](*v0);
  v2 = type metadata accessor for TimeZoneChange(0);
  v3 = *(v2 + 20);
  sub_1D166F174();
  sub_1D1654160(&qword_1EC63E0B8, MEMORY[0x1E6969530]);
  sub_1D166F984();
  v4 = *(v1 + *(v2 + 24));
  return sub_1D16706C4();
}

uint64_t sub_1D1654160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TimeZoneChange.hashValue.getter()
{
  v1 = v0;
  sub_1D16706A4();
  MEMORY[0x1D388D890](*v0);
  v2 = type metadata accessor for TimeZoneChange(0);
  v3 = *(v2 + 20);
  sub_1D166F174();
  sub_1D1654160(&qword_1EC63E0B8, MEMORY[0x1E6969530]);
  sub_1D166F984();
  v4 = *(v1 + *(v2 + 24));
  sub_1D16706C4();
  return sub_1D16706E4();
}

uint64_t sub_1D165426C()
{
  v1 = type metadata accessor for TimeZoneChange(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = type metadata accessor for HealthStoreTimeZoneProvider.State(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D165A514(v0, v18, type metadata accessor for HealthStoreTimeZoneProvider.State);
  if ((*(v8 + 48))(v18, 1, v7) == 1)
  {
    return MEMORY[0x1D388D890](0);
  }

  sub_1D165915C(v18, v14);
  MEMORY[0x1D388D890](1);
  sub_1D165984C(v14, v12, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
  if ((*(v2 + 48))(v12, 1, v1) == 1)
  {
    sub_1D16706C4();
  }

  else
  {
    sub_1D1659934(v12, v5, type metadata accessor for TimeZoneChange);
    sub_1D16706C4();
    MEMORY[0x1D388D890](*v5);
    v20 = *(v1 + 20);
    sub_1D166F174();
    sub_1D1654160(&qword_1EC63E0B8, MEMORY[0x1E6969530]);
    sub_1D166F984();
    v21 = *(v5 + *(v1 + 24));
    sub_1D16706C4();
    sub_1D16596FC(v5, type metadata accessor for TimeZoneChange);
  }

  return sub_1D165A3A8(v14, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
}

uint64_t sub_1D16545D8(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  if (sub_1D166F134())
  {
    v7 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D1654658(uint64_t a1)
{
  v3 = v1;
  sub_1D16706A4();
  MEMORY[0x1D388D890](*v1);
  v4 = *(a1 + 20);
  sub_1D166F174();
  sub_1D1654160(&qword_1EC63E0B8, MEMORY[0x1E6969530]);
  sub_1D166F984();
  v5 = *(v3 + *(a1 + 24));
  sub_1D16706C4();
  return sub_1D16706E4();
}

uint64_t sub_1D1654714(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  MEMORY[0x1D388D890](*v2);
  v5 = *(a2 + 20);
  sub_1D166F174();
  sub_1D1654160(&qword_1EC63E0B8, MEMORY[0x1E6969530]);
  sub_1D166F984();
  v6 = *(v4 + *(a2 + 24));
  return sub_1D16706C4();
}

uint64_t sub_1D16547C0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D16706A4();
  MEMORY[0x1D388D890](*v2);
  v5 = *(a2 + 20);
  sub_1D166F174();
  sub_1D1654160(&qword_1EC63E0B8, MEMORY[0x1E6969530]);
  sub_1D166F984();
  v6 = *(v4 + *(a2 + 24));
  sub_1D16706C4();
  return sub_1D16706E4();
}

uint64_t sub_1D165487C()
{
  sub_1D16706A4();
  sub_1D165426C();
  return sub_1D16706E4();
}

uint64_t sub_1D16548C0()
{
  sub_1D16706A4();
  sub_1D165426C();
  return sub_1D16706E4();
}

uint64_t sub_1D1654900()
{
  v0 = *MEMORY[0x1E69A3A50];
  result = sub_1D166FA04();
  qword_1EC6405F0 = result;
  *algn_1EC6405F8 = v2;
  return result;
}

uint64_t sub_1D1654930()
{
  v0 = *MEMORY[0x1E69A3A78];
  result = sub_1D166FA04();
  qword_1EC640600 = result;
  *algn_1EC640608 = v2;
  return result;
}

uint64_t sub_1D1654960()
{
  v0 = *MEMORY[0x1E69A3A70];
  result = sub_1D166FA04();
  qword_1EC640610 = result;
  *algn_1EC640618 = v2;
  return result;
}

uint64_t HealthStoreTimeZoneProvider.changePublisher.getter()
{
  sub_1D1654B10();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 40);
  sub_1D1659B38(0, &qword_1EC63E0C8, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E695BF98]);
  sub_1D1654C10();
  sub_1D1654CA0();
  sub_1D166F7A4();
  sub_1D1654160(&qword_1EC63E0E8, sub_1D1654B10);
  v7 = sub_1D166F754();
  (*(v3 + 8))(v6, v2);
  return v7;
}

void sub_1D1654B10()
{
  if (!qword_1EC63E0C0)
  {
    sub_1D1659B38(255, &qword_1EC63E0C8, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E695BF98]);
    sub_1D1654C10();
    v0 = sub_1D166F574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E0C0);
    }
  }
}

void sub_1D1654BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D1654C10()
{
  result = qword_1EC63E0D0;
  if (!qword_1EC63E0D0)
  {
    sub_1D1659B38(255, &qword_1EC63E0C8, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E695BF98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E0D0);
  }

  return result;
}

unint64_t sub_1D1654CA0()
{
  result = qword_1EC63E0D8;
  if (!qword_1EC63E0D8)
  {
    sub_1D1654BAC(255, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
    sub_1D1654160(&qword_1EC63E0E0, type metadata accessor for TimeZoneChange);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E0D8);
  }

  return result;
}

void *HealthStoreTimeZoneProvider.__allocating_init(healthStore:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D1658B7C(a1);

  return v2;
}

void *HealthStoreTimeZoneProvider.init(healthStore:)(void *a1)
{
  v2 = sub_1D1658B7C(a1);

  return v2;
}

uint64_t sub_1D1654DF0()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1D1654BAC(0, &qword_1EDEC9E68, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v67 = &v55 - v4;
  sub_1D1659A24();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1659E00();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1659EDC();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D165A010();
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D165A188();
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1654BAC(0, &qword_1EDECB378, MEMORY[0x1E6969530], v1);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v55 - v23;
  sub_1D165A274();
  v26 = v25;
  v27 = *(v25 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC63D678 != -1)
  {
    swift_once();
  }

  v71 = v0;
  v31 = *(v0 + 16);
  v32 = sub_1D166F174();
  sub_1D1654160(&qword_1EC63DC78, MEMORY[0x1E6969530]);
  v73 = sub_1D166FF74();
  (*(*(v32 - 8) + 56))(v24, 1, 1, v32);
  sub_1D165A308();
  sub_1D1654160(&qword_1EC63E1F8, sub_1D165A308);
  sub_1D166F774();
  sub_1D165A3A8(v24, &qword_1EDECB378, MEMORY[0x1E6969530]);

  sub_1D1654160(&qword_1EC63E200, sub_1D165A274);
  v33 = sub_1D166F754();
  (*(v27 + 8))(v30, v26);
  if (qword_1EC63D670 != -1)
  {
    swift_once();
  }

  v34 = MEMORY[0x1E69E6530];
  v75 = sub_1D166FF74();
  v73 = 0;
  v74 = 1;
  sub_1D165A08C(0, &qword_1EC63E1D8, &qword_1EC63E168, v34);
  sub_1D165A204();
  sub_1D166F774();

  sub_1D1654160(&qword_1EC63E208, sub_1D165A188);
  v35 = v57;
  v36 = sub_1D166F754();
  (*(v56 + 8))(v20, v35);
  if (qword_1EC63D668 != -1)
  {
    swift_once();
  }

  v37 = MEMORY[0x1E69E6370];
  v73 = sub_1D166FF74();
  LOBYTE(v75) = 2;
  sub_1D165A08C(0, &qword_1EC63E1C0, &qword_1EC63E178, v37);
  sub_1D165A118();
  v38 = v58;
  sub_1D166F774();

  sub_1D1654160(&qword_1EC63E210, sub_1D165A010);
  v39 = v60;
  v40 = sub_1D166F754();
  (*(v59 + 8))(v38, v39);
  v72 = v40;
  v73 = v33;
  v75 = v36;
  sub_1D1659B38(0, &qword_1EC63E158, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E695BED0]);
  sub_1D1659BC4(0, &qword_1EC63E160, &qword_1EC63E168, MEMORY[0x1E69E6530]);
  sub_1D1659BC4(0, &qword_1EC63E170, &qword_1EC63E178, v37);
  sub_1D1659C90();
  sub_1D1659D20();
  v55 = v33;
  sub_1D1659D90();

  v41 = v61;
  sub_1D166F544();
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  sub_1D1654160(&qword_1EC63E1A0, sub_1D1659A24);
  v60 = v36;
  v42 = v63;
  v43 = v64;
  sub_1D166F784();
  (*(v62 + 8))(v41, v42);
  v44 = v71;
  v73 = *(v71 + 48);
  v45 = v73;
  v46 = sub_1D166FFA4();
  v47 = v67;
  (*(*(v46 - 8) + 56))(v67, 1, 1, v46);
  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  sub_1D1654160(&qword_1EC63E1B0, sub_1D1659E00);
  sub_1D1659FA8();
  v48 = v45;
  v49 = v68;
  v50 = v66;
  sub_1D166F794();
  sub_1D165A3A8(v47, &qword_1EDEC9E68, MEMORY[0x1E69E8050]);

  (*(v65 + 8))(v43, v50);
  swift_allocObject();
  swift_weakInit();
  sub_1D1654160(&qword_1EC63E218, sub_1D1659EDC);
  v51 = v70;
  v52 = sub_1D166F7B4();

  (*(v69 + 8))(v49, v51);
  v53 = *(v44 + 32);
  *(v44 + 32) = v52;
}

uint64_t HealthStoreTimeZoneProvider.getTimeZoneChange()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = MEMORY[0x1E69E6720];
  sub_1D1654BAC(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = *(*(type metadata accessor for HealthStoreTimeZoneProvider.State(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, v3);
  v2[7] = v7;
  v8 = *(v7 - 8);
  v2[8] = v8;
  v9 = *(v8 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1655B18, 0, 0);
}

uint64_t sub_1D1655B18()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = *(v0[3] + 24);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v4 + v6));
  sub_1D165A514(v4 + v5, v3, type metadata accessor for HealthStoreTimeZoneProvider.State);
  v7 = (*(v2 + 48))(v3, 1, v1);
  v8 = v0[9];
  if (v7 == 1)
  {
    v9 = type metadata accessor for TimeZoneChange(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    sub_1D165915C(v0[6], v0[9]);
  }

  v10 = v0[9];
  os_unfair_lock_unlock((v4 + v6));

  v11 = type metadata accessor for TimeZoneChange(0);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  v14 = v0[9];
  if (v13 == 1)
  {
    v16 = v0[4];
    v15 = v0[5];
    v17 = v0[3];
    sub_1D165A3A8(v14, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
    v18 = sub_1D166FD84();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v19[5] = v16;

    v20 = sub_1D1632F7C(0, 0, v15, &unk_1D1674D00, v19);
    v0[10] = v20;
    v21 = *(MEMORY[0x1E69E86C0] + 4);
    v22 = swift_task_alloc();
    v0[11] = v22;
    *v22 = v0;
    v22[1] = sub_1D1655E90;
    v23 = v0[7];
    v24 = v0[2];

    return MEMORY[0x1EEE6DA40](v24, v20, v23);
  }

  else
  {
    v25 = v0[2];
    sub_1D1659934(v14, v25, type metadata accessor for TimeZoneChange);
    (*(v12 + 56))(v25, 0, 1, v11);
    v26 = v0[9];
    v27 = v0[5];
    v28 = v0[6];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1D1655E90()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1655FA8, 0, 0);
}

uint64_t sub_1D1655FA8()
{
  v1 = v0[3];
  sub_1D1656CF8(v0[2]);
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1656024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[34] = a4;
  v5[35] = a5;
  v5[33] = a1;
  v6 = sub_1D166F4E4();
  v5[36] = v6;
  v7 = *(v6 - 8);
  v5[37] = v7;
  v8 = *(v7 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v9 = sub_1D166F174();
  v5[40] = v9;
  v10 = *(v9 - 8);
  v5[41] = v10;
  v11 = *(v10 + 64) + 15;
  v5[42] = swift_task_alloc();
  sub_1D1654BAC(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D16561B8, 0, 0);
}

uint64_t sub_1D16561B8()
{
  v1 = *(v0[34] + 16);
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_1D16562CC;
  v2 = swift_continuation_init();
  sub_1D1659778();
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D1656C14;
  v0[13] = &block_descriptor_27;
  v0[14] = v2;
  [v1 allValuesWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D16562CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  if (v2)
  {
    v3 = sub_1D165698C;
  }

  else
  {
    v3 = sub_1D16563DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D16563DC()
{
  v52 = v0;
  v1 = *(v0 + 240);
  if (qword_1EC63D670 == -1)
  {
    if (!*(v1 + 16))
    {
LABEL_9:
      v5 = 0;
      v6 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      goto LABEL_9;
    }
  }

  v2 = sub_1D16061DC(qword_1EC640600, *algn_1EC640608);
  if ((v3 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1D15F928C(*(v1 + 56) + 32 * v2, v0 + 144);
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = *(v0 + 256);
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ 1;
LABEL_10:
  if (qword_1EC63D678 == -1)
  {
    if (!*(v1 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      goto LABEL_16;
    }
  }

  v7 = sub_1D16061DC(qword_1EC640610, *algn_1EC640618);
  if (v8)
  {
    sub_1D15F928C(*(v1 + 56) + 32 * v7, v0 + 176);
    if (swift_dynamicCast())
    {
      v9 = *(v0 + 352);
      v10 = *(v0 + 248);
      sub_1D166F0F4();
      v11 = 0;
      goto LABEL_17;
    }
  }

LABEL_16:
  v11 = 1;
LABEL_17:
  (*(*(v0 + 328) + 56))(*(v0 + 352), v11, 1, *(v0 + 320));
  if (qword_1EC63D668 == -1)
  {
    if (!*(v1 + 16))
    {
      goto LABEL_26;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      goto LABEL_26;
    }
  }

  v12 = sub_1D16061DC(qword_1EC6405F0, *algn_1EC6405F8);
  if (v13)
  {
    sub_1D15F928C(*(v1 + 56) + 32 * v12, v0 + 208);

    if (swift_dynamicCast())
    {
      v14 = *(v0 + 368);
    }

    else
    {
      v14 = 2;
    }

    if (v6)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_26:

  v14 = 2;
  if (v6)
  {
LABEL_31:
    v22 = *(v0 + 312);
    sub_1D166F4C4();
    v23 = sub_1D166F4D4();
    v24 = sub_1D166FF34();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 352);
    v27 = *(v0 + 312);
    v29 = *(v0 + 288);
    v28 = *(v0 + 296);
    if (v25)
    {
      v30 = *(v0 + 280);
      v50 = *(v0 + 352);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = v32;
      *v31 = 136315138;
      v33 = sub_1D1670754();
      v35 = sub_1D15F7A30(v33, v34, &v51);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1D15E6000, v23, v24, "[%s)]: One of the Key-Value domain values required for initializing TimeZoneChange was nil", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1D388E250](v32, -1, -1);
      MEMORY[0x1D388E250](v31, -1, -1);

      (*(v28 + 8))(v27, v29);
      v36 = MEMORY[0x1E6969530];
      v37 = v50;
    }

    else
    {

      (*(v28 + 8))(v27, v29);
      v36 = MEMORY[0x1E6969530];
      v37 = v26;
    }

    sub_1D165A3A8(v37, &qword_1EDECB378, v36);
    v38 = *(v0 + 264);
    v39 = type metadata accessor for TimeZoneChange(0);
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
    goto LABEL_35;
  }

LABEL_27:
  v15 = *(v0 + 344);
  v16 = *(v0 + 320);
  v17 = *(v0 + 328);
  sub_1D165984C(*(v0 + 352), v15, &qword_1EDECB378, MEMORY[0x1E6969530]);
  v18 = (*(v17 + 48))(v15, 1, v16);
  v19 = *(v0 + 344);
  if (v18 == 1)
  {
    sub_1D165A3A8(*(v0 + 344), &qword_1EDECB378, MEMORY[0x1E6969530]);
    goto LABEL_31;
  }

  v20 = *(*(v0 + 328) + 32);
  v20(*(v0 + 336), *(v0 + 344), *(v0 + 320));
  v21 = *(v0 + 320);
  if (v14 == 2)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    goto LABEL_31;
  }

  v47 = *(v0 + 336);
  v48 = *(v0 + 264);
  sub_1D165A3A8(*(v0 + 352), &qword_1EDECB378, MEMORY[0x1E6969530]);
  v49 = type metadata accessor for TimeZoneChange(0);
  v20(&v48[*(v49 + 20)], v47, v21);
  *v48 = v5;
  v48[*(v49 + 24)] = v14;
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
LABEL_35:
  v41 = *(v0 + 344);
  v40 = *(v0 + 352);
  v42 = *(v0 + 336);
  v44 = *(v0 + 304);
  v43 = *(v0 + 312);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1D165698C()
{
  v32 = v0;
  v1 = v0[45];
  v2 = v0[38];
  swift_willThrow();
  sub_1D166F4C4();
  v3 = v1;
  v4 = sub_1D166F4D4();
  v5 = sub_1D166FF44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[45];
  v9 = v0[37];
  v8 = v0[38];
  v10 = v0[36];
  if (v6)
  {
    v11 = v0[35];
    v30 = v0[36];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v12 = 136315394;
    v15 = sub_1D1670754();
    v29 = v8;
    v17 = sub_1D15F7A30(v15, v16, &v31);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v7;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_1D15E6000, v4, v5, "[%s)]: Failed to query Key-Value domain with error: %@", v12, 0x16u);
    sub_1D16596FC(v13, sub_1D15FAE40);
    MEMORY[0x1D388E250](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1D388E250](v14, -1, -1);
    MEMORY[0x1D388E250](v12, -1, -1);

    (*(v9 + 8))(v29, v30);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v20 = v0[33];
  v21 = type metadata accessor for TimeZoneChange(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v23 = v0[43];
  v22 = v0[44];
  v24 = v0[42];
  v26 = v0[38];
  v25 = v0[39];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D1656C14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_1D166F944();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1D1656CF8(uint64_t a1)
{
  v38 = *v1;
  v39 = v1;
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  v10 = sub_1D166F4E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F4C4();
  sub_1D165984C(a1, v9, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
  v15 = sub_1D166F4D4();
  v16 = sub_1D166FF64();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = a1;
    v18 = v17;
    v36 = swift_slowAlloc();
    v40[0] = v36;
    *v18 = 136315394;
    v19 = sub_1D1670754();
    v21 = sub_1D15F7A30(v19, v20, v40);
    v38 = v10;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_1D165984C(v9, v7, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
    v23 = sub_1D166FA74();
    v25 = v24;
    sub_1D165A3A8(v9, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
    v26 = sub_1D15F7A30(v23, v25, v40);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_1D15E6000, v15, v16, "[%s)]: Updating and publishing internal state with value: %s", v18, 0x16u);
    v27 = v36;
    swift_arrayDestroy();
    MEMORY[0x1D388E250](v27, -1, -1);
    v28 = v18;
    a1 = v37;
    MEMORY[0x1D388E250](v28, -1, -1);

    v29 = (*(v11 + 8))(v14, v38);
  }

  else
  {

    sub_1D165A3A8(v9, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
    v29 = (*(v11 + 8))(v14, v10);
  }

  v30 = v39;
  v31 = v39[3];
  MEMORY[0x1EEE9AC00](v29);
  *(&v36 - 2) = a1;
  v32 = *(*v31 + *MEMORY[0x1E69E6B68] + 16);
  v33 = (*(*v31 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v31 + v33));
  sub_1D165975C(v31 + v32);
  os_unfair_lock_unlock((v31 + v33));

  v34 = v30[5];

  sub_1D166F654();
}

uint64_t sub_1D1657114(uint64_t a1, uint64_t a2)
{
  sub_1D16596FC(a1, type metadata accessor for HealthStoreTimeZoneProvider.State);
  sub_1D165984C(a2, a1, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
}

uint64_t sub_1D16571F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D165A420();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = sub_1D166F174();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D165A514(a1, v14, sub_1D165A420);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v29 = a2;
    v20 = *(v16 + 32);
    v20(v19, v14, v15);
    sub_1D165A514(a1, v12, sub_1D165A420);
    v21 = &v12[*(v5 + 48)];
    if ((v21[8] & 1) == 0)
    {
      v22 = *v21;
      sub_1D165A3A8(v12, &qword_1EDECB378, MEMORY[0x1E6969530]);
      sub_1D165A514(a1, v9, sub_1D165A420);
      v23 = v9[*(v5 + 64)];
      if (v23 != 2)
      {
        sub_1D165A3A8(v9, &qword_1EDECB378, MEMORY[0x1E6969530]);
        v26 = type metadata accessor for TimeZoneChange(0);
        v27 = v29;
        v20(v29 + *(v26 + 20), v19, v15);
        *v27 = v22;
        *(v27 + *(v26 + 24)) = v23 & 1;
        return (*(*(v26 - 8) + 56))(v27, 0, 1, v26);
      }

      v12 = v9;
    }

    (*(v16 + 8))(v19, v15);
    v14 = v12;
    a2 = v29;
  }

  sub_1D165A3A8(v14, &qword_1EDECB378, MEMORY[0x1E6969530]);
  v24 = type metadata accessor for TimeZoneChange(0);
  return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
}

uint64_t sub_1D1657550(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D1656CF8(a1);
  }

  return result;
}

uint64_t HealthStoreTimeZoneProvider.deinit()
{
  if (*(v0 + 32))
  {

    sub_1D166F5C4();
  }

  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t HealthStoreTimeZoneProvider.__deallocating_deinit()
{
  if (*(v0 + 32))
  {

    sub_1D166F5C4();
  }

  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t HealthStoreTimeZoneProvider.set(change:)(uint64_t a1)
{
  v2[40] = a1;
  v2[41] = v1;
  v2[42] = *v1;
  v3 = sub_1D166F4E4();
  v2[43] = v3;
  v4 = *(v3 - 8);
  v2[44] = v4;
  v5 = *(v4 + 64) + 15;
  v2[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1657780, 0, 0);
}

uint64_t sub_1D1657780()
{
  sub_1D1654BAC(0, &qword_1EC63E0F0, sub_1D162D054, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D16721A0;
  if (qword_1EC63D670 != -1)
  {
    swift_once();
  }

  v2 = v0[40];
  v3 = *algn_1EC640608;
  *(inited + 32) = qword_1EC640600;
  *(inited + 40) = v3;
  v4 = *v2;
  v5 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v6 = [v5 initWithInteger_];
  v7 = sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
  *(inited + 72) = v7;
  *(inited + 48) = v6;
  if (qword_1EC63D668 != -1)
  {
    swift_once();
  }

  v8 = v0[40];
  v9 = *algn_1EC6405F8;
  *(inited + 80) = qword_1EC6405F0;
  *(inited + 88) = v9;
  v10 = type metadata accessor for TimeZoneChange(0);
  v11 = *(v8 + *(v10 + 24));
  v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v13 = [v12 initWithBool_];
  *(inited + 120) = v7;
  *(inited + 96) = v13;
  if (qword_1EC63D678 != -1)
  {
    swift_once();
  }

  v14 = v0[40];
  v15 = v0[41];
  v16 = *algn_1EC640618;
  *(inited + 128) = qword_1EC640610;
  *(inited + 136) = v16;
  v17 = *(v10 + 20);

  v18 = sub_1D166F124();
  *(inited + 168) = sub_1D15EE5A8(0, &qword_1EC63E0F8, 0x1E695DF00);
  *(inited + 144) = v18;
  sub_1D162B684(inited);
  swift_setDeallocating();
  sub_1D162D054();
  swift_arrayDestroy();
  v19 = *(v15 + 16);
  v20 = sub_1D166F934();
  v0[46] = v20;

  v0[2] = v0;
  v0[3] = sub_1D1657AE0;
  v21 = swift_continuation_init();
  sub_1D16591F0();
  v0[39] = v22;
  v0[32] = MEMORY[0x1E69E9820];
  v0[33] = 1107296256;
  v0[34] = sub_1D15F7284;
  v0[35] = &block_descriptor_12;
  v0[36] = v21;
  [v19 setValuesWithDictionary:v20 completion:v0 + 32];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1657AE0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_1D1657C5C;
  }

  else
  {
    v3 = sub_1D1657BF0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1657BF0()
{
  v1 = *(v0 + 360);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1657C5C()
{
  v27 = v0;
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  swift_willThrow();

  sub_1D166F4C4();
  v4 = v1;
  v5 = sub_1D166F4D4();
  v6 = sub_1D166FF44();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[47];
  v10 = v0[44];
  v9 = v0[45];
  v11 = v0[43];
  if (v7)
  {
    v12 = v0[42];
    v25 = v0[43];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 136315394;
    v16 = sub_1D1670754();
    v24 = v9;
    v18 = sub_1D15F7A30(v16, v17, &v26);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v8;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_1D15E6000, v5, v6, "[%s)]: Failed to save value in key-value domain with error: '%@'", v13, 0x16u);
    sub_1D16596FC(v14, sub_1D15FAE40);
    MEMORY[0x1D388E250](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1D388E250](v15, -1, -1);
    MEMORY[0x1D388E250](v13, -1, -1);

    (*(v10 + 8))(v24, v25);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = v0[45];

  v22 = v0[1];

  return v22();
}

uint64_t HealthStoreTimeZoneProvider.fetchFreshState()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  sub_1D1654BAC(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1657F68, 0, 0);
}

uint64_t sub_1D1657F68()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1D166FD84();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v2;

  v6 = sub_1D1632F7C(0, 0, v1, &unk_1D1674D18, v5);
  v0[6] = v6;
  v7 = *(MEMORY[0x1E69E86C0] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v10 = v9;
  *v8 = v0;
  v8[1] = sub_1D16580E8;
  v11 = v0[2];

  return MEMORY[0x1EEE6DA40](v11, v6, v10);
}

uint64_t sub_1D16580E8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t HealthStoreTimeZoneProvider.removeValue(for:)(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1658238, 0, 0);
}

uint64_t sub_1D1658238()
{
  v1 = v0[25];
  v2 = v0[24];
  v3 = *(v0[26] + 16);
  sub_1D1659C40(0, &qword_1EDECABA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D16721D0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  sub_1D15F9F8C(inited);
  swift_setDeallocating();
  sub_1D1659374(inited + 32);
  v5 = sub_1D166FDF4();
  v0[27] = v5;

  v0[2] = v0;
  v0[3] = sub_1D16583F8;
  v6 = swift_continuation_init();
  sub_1D16591F0();
  v0[17] = v7;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D15F7284;
  v0[13] = &block_descriptor_11_0;
  v0[14] = v6;
  [v3 removeValuesForKeys:v5 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D16583F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_1D165856C;
  }

  else
  {
    v3 = sub_1D1658508;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1658508()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D165856C()
{
  v1 = v0[27];
  v2 = v0[28];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[28];

  return v3();
}

uint64_t sub_1D16585DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeZoneChange(0);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v42 = (&v41 - v11);
  sub_1D1659604();
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HealthStoreTimeZoneProvider.State(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1659698();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v23 + 56);
  sub_1D165A514(a1, v25, type metadata accessor for HealthStoreTimeZoneProvider.State);
  sub_1D165A514(a2, &v25[v26], type metadata accessor for HealthStoreTimeZoneProvider.State);
  v27 = *(v9 + 48);
  if (v27(v25, 1, v8) == 1)
  {
    v28 = 1;
    v29 = v27(&v25[v26], 1, v8);
    v30 = type metadata accessor for HealthStoreTimeZoneProvider.State;
    if (v29 == 1)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

  sub_1D165A514(v25, v20, type metadata accessor for HealthStoreTimeZoneProvider.State);
  if (v27(&v25[v26], 1, v8) != 1)
  {
    v31 = *(v13 + 48);
    sub_1D165915C(v20, v16);
    sub_1D165915C(&v25[v26], &v16[v31]);
    v32 = v44;
    v33 = *(v43 + 48);
    if (v33(v16, 1, v44) == 1)
    {
      if (v33(&v16[v31], 1, v32) == 1)
      {
        sub_1D165A3A8(v16, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
        v28 = 1;
LABEL_19:
        v30 = type metadata accessor for HealthStoreTimeZoneProvider.State;
        goto LABEL_20;
      }
    }

    else
    {
      v34 = v42;
      sub_1D165984C(v16, v42, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
      if (v33(&v16[v31], 1, v32) != 1)
      {
        v35 = v41;
        sub_1D1659934(&v16[v31], v41, type metadata accessor for TimeZoneChange);
        if (*v34 == *v35 && (v36 = *(v32 + 20), (sub_1D166F134() & 1) != 0))
        {
          v37 = *(v32 + 24);
          v38 = *(v34 + v37);
          v39 = *(v35 + v37);
          sub_1D16596FC(v35, type metadata accessor for TimeZoneChange);
          sub_1D16596FC(v34, type metadata accessor for TimeZoneChange);
          sub_1D165A3A8(v16, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
          v30 = type metadata accessor for HealthStoreTimeZoneProvider.State;
          if (v38 == v39)
          {
            v28 = 1;
            goto LABEL_20;
          }
        }

        else
        {
          sub_1D16596FC(v35, type metadata accessor for TimeZoneChange);
          sub_1D16596FC(v34, type metadata accessor for TimeZoneChange);
          sub_1D165A3A8(v16, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
        }

        goto LABEL_18;
      }

      sub_1D16596FC(v34, type metadata accessor for TimeZoneChange);
    }

    sub_1D16596FC(v16, sub_1D1659604);
LABEL_18:
    v28 = 0;
    goto LABEL_19;
  }

  sub_1D165A3A8(v20, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
LABEL_6:
  v28 = 0;
  v30 = sub_1D1659698;
LABEL_20:
  sub_1D16596FC(v25, v30);
  return v28;
}

void *sub_1D1658B7C(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_1D166FFB4();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D166FF94();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1D166F814();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v32 - v15;
  v17 = type metadata accessor for HealthStoreTimeZoneProvider.State(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 56))(v20, 1, 1, v12);
  sub_1D16598CC();
  v22 = *(v21 + 52);
  v23 = (*(v21 + 48) + 3) & 0x1FFFFFFFCLL;
  v24 = swift_allocObject();
  *(v24 + ((*(*v24 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1D1659934(v20, v24 + *(*v24 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for HealthStoreTimeZoneProvider.State);
  v2[3] = v24;
  v2[4] = 0;
  v25 = type metadata accessor for TimeZoneChange(0);
  (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  sub_1D1659B38(0, &qword_1EC63E0C8, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E695BF98]);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v2[5] = sub_1D166F674();
  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  sub_1D166F804();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D1654160(&unk_1EDEC9E70, MEMORY[0x1E69E8030]);
  sub_1D1654BAC(0, &qword_1EDEC9FE8, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D165999C();
  sub_1D1670194();
  (*(v32 + 104))(v6, *MEMORY[0x1E69E8090], v33);
  v2[6] = sub_1D166FFE4();
  v29 = *MEMORY[0x1E69A3A68];
  v30 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v2[2] = [v30 initWithCategory:1 domainName:v29 healthStore:v34];
  sub_1D1654DF0();
  return v2;
}

uint64_t sub_1D165909C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D1600968;

  return sub_1D1656024(a1, v4, v5, v7, v6);
}

uint64_t sub_1D165915C(uint64_t a1, uint64_t a2)
{
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D16591F0()
{
  if (!qword_1EC63D9F8)
  {
    sub_1D15F9218();
    v0 = sub_1D166FDD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63D9F8);
    }
  }
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16592B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D15FFFCC;

  return sub_1D1656024(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1659438()
{
  result = sub_1D166F174();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1659534()
{
  sub_1D1654BAC(319, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1D1659604()
{
  if (!qword_1EC63E128)
  {
    sub_1D1654BAC(255, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E128);
    }
  }
}

void sub_1D1659698()
{
  if (!qword_1EC63E130)
  {
    type metadata accessor for HealthStoreTimeZoneProvider.State(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E130);
    }
  }
}

uint64_t sub_1D16596FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1659778()
{
  if (!qword_1EC63E138)
  {
    sub_1D16597E8();
    sub_1D15F9218();
    v0 = sub_1D166FDD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E138);
    }
  }
}

void sub_1D16597E8()
{
  if (!qword_1EC63E140)
  {
    v0 = sub_1D166F964();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E140);
    }
  }
}

uint64_t sub_1D165984C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D1654BAC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D16598CC()
{
  if (!qword_1EC63E148)
  {
    type metadata accessor for HealthStoreTimeZoneProvider.State(255);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D1670344();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E148);
    }
  }
}

uint64_t sub_1D1659934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D165999C()
{
  result = qword_1EDEC9FE0;
  if (!qword_1EDEC9FE0)
  {
    sub_1D1654BAC(255, &qword_1EDEC9FE8, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC9FE0);
  }

  return result;
}

void sub_1D1659A24()
{
  if (!qword_1EC63E150)
  {
    sub_1D1659B38(255, &qword_1EC63E158, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E695BED0]);
    sub_1D1659BC4(255, &qword_1EC63E160, &qword_1EC63E168, MEMORY[0x1E69E6530]);
    sub_1D1659BC4(255, &qword_1EC63E170, &qword_1EC63E178, MEMORY[0x1E69E6370]);
    sub_1D1659C90();
    sub_1D1659D20();
    sub_1D1659D90();
    v0 = sub_1D166F534();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E150);
    }
  }
}

void sub_1D1659B38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1D1654BAC(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D1659BC4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D1659C40(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1D166F5B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D1659C40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D1659C90()
{
  result = qword_1EC63E180;
  if (!qword_1EC63E180)
  {
    sub_1D1659B38(255, &qword_1EC63E158, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E180);
  }

  return result;
}

unint64_t sub_1D1659D20()
{
  result = qword_1EC63E188;
  if (!qword_1EC63E188)
  {
    sub_1D1659BC4(255, &qword_1EC63E160, &qword_1EC63E168, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E188);
  }

  return result;
}

unint64_t sub_1D1659D90()
{
  result = qword_1EC63E190;
  if (!qword_1EC63E190)
  {
    sub_1D1659BC4(255, &qword_1EC63E170, &qword_1EC63E178, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E190);
  }

  return result;
}

void sub_1D1659E00()
{
  if (!qword_1EC63E198)
  {
    sub_1D1659A24();
    sub_1D1654BAC(255, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
    sub_1D1654160(&qword_1EC63E1A0, sub_1D1659A24);
    v0 = sub_1D166F594();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E198);
    }
  }
}

void sub_1D1659EDC()
{
  if (!qword_1EC63E1A8)
  {
    sub_1D1659E00();
    sub_1D15EE5A8(255, &qword_1EDEC9E58, 0x1E69E9610);
    sub_1D1654160(&qword_1EC63E1B0, sub_1D1659E00);
    sub_1D1659FA8();
    v0 = sub_1D166F5A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E1A8);
    }
  }
}

unint64_t sub_1D1659FA8()
{
  result = qword_1EDEC9E60;
  if (!qword_1EDEC9E60)
  {
    sub_1D15EE5A8(255, &qword_1EDEC9E58, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC9E60);
  }

  return result;
}

void sub_1D165A010()
{
  if (!qword_1EC63E1B8)
  {
    sub_1D165A08C(255, &qword_1EC63E1C0, &qword_1EC63E178, MEMORY[0x1E69E6370]);
    sub_1D165A118();
    v0 = sub_1D166F564();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E1B8);
    }
  }
}

void sub_1D165A08C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D1659C40(255, a3, a4, MEMORY[0x1E69E6720]);
    sub_1D15F9218();
    v5 = sub_1D166F5B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D165A118()
{
  result = qword_1EC63E1C8;
  if (!qword_1EC63E1C8)
  {
    sub_1D165A08C(255, &qword_1EC63E1C0, &qword_1EC63E178, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E1C8);
  }

  return result;
}

void sub_1D165A188()
{
  if (!qword_1EC63E1D0)
  {
    sub_1D165A08C(255, &qword_1EC63E1D8, &qword_1EC63E168, MEMORY[0x1E69E6530]);
    sub_1D165A204();
    v0 = sub_1D166F564();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E1D0);
    }
  }
}

unint64_t sub_1D165A204()
{
  result = qword_1EC63E1E0;
  if (!qword_1EC63E1E0)
  {
    sub_1D165A08C(255, &qword_1EC63E1D8, &qword_1EC63E168, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E1E0);
  }

  return result;
}

void sub_1D165A274()
{
  if (!qword_1EC63E1E8)
  {
    sub_1D165A308();
    sub_1D1654160(&qword_1EC63E1F8, sub_1D165A308);
    v0 = sub_1D166F564();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E1E8);
    }
  }
}

void sub_1D165A308()
{
  if (!qword_1EC63E1F0)
  {
    sub_1D1654BAC(255, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    sub_1D15F9218();
    v0 = sub_1D166F5B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E1F0);
    }
  }
}

uint64_t sub_1D165A3A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1654BAC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D165A420()
{
  if (!qword_1EC63E220)
  {
    sub_1D1654BAC(255, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v0 = MEMORY[0x1E69E6720];
    sub_1D1659C40(255, &qword_1EC63E168, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1D1659C40(255, &qword_1EC63E178, MEMORY[0x1E69E6370], v0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC63E220);
    }
  }
}

uint64_t sub_1D165A514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D165A590@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id MedicationScheduleControlObserver.__allocating_init(options:)(uint64_t *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = *a1;
  v6 = OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_scheduleChangedSubject;
  sub_1D165A76C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v4[v6] = sub_1D166F674();
  *&v4[OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_observerOptions] = v5;
  v11.receiver = v4;
  v11.super_class = v2;
  return objc_msgSendSuper2(&v11, sel_init);
}

id MedicationScheduleControlObserver.init(options:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_scheduleChangedSubject;
  sub_1D165A76C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&v1[v3] = sub_1D166F674();
  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_observerOptions] = v2;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MedicationScheduleControlObserver();
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1D165A76C()
{
  if (!qword_1EC63E240)
  {
    v0 = sub_1D166F664();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E240);
    }
  }
}

uint64_t sub_1D165A7F4()
{
  if (*(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_observerOptions))
  {
    v1 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_scheduleChangedSubject);
    sub_1D165A76C();
    sub_1D165A848();
    return sub_1D166F6D4();
  }

  return result;
}

unint64_t sub_1D165A848()
{
  result = qword_1EC63E248;
  if (!qword_1EC63E248)
  {
    sub_1D165A76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E248);
  }

  return result;
}

uint64_t sub_1D165A92C()
{
  if ((*(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_observerOptions) & 2) != 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_scheduleChangedSubject);
    sub_1D165A76C();
    sub_1D165A848();
    return sub_1D166F6D4();
  }

  return result;
}

id MedicationScheduleControlObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicationScheduleControlObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationScheduleControlObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D165AAD8()
{
  result = qword_1EC63E250;
  if (!qword_1EC63E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E250);
  }

  return result;
}

unint64_t sub_1D165AB30()
{
  result = qword_1EC63E258;
  if (!qword_1EC63E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E258);
  }

  return result;
}

unint64_t sub_1D165AB88()
{
  result = qword_1EC63E260;
  if (!qword_1EC63E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E260);
  }

  return result;
}

unint64_t sub_1D165ABE0()
{
  result = qword_1EC63E268;
  if (!qword_1EC63E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E268);
  }

  return result;
}

uint64_t sub_1D165ACE8(uint64_t a1, uint64_t a2)
{
  sub_1D165BA98(0, &qword_1EDECB378, MEMORY[0x1E6969530]);
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &aBlock - v8;
  if (*v2 <= 1u)
  {
    if (*v2)
    {
      if (*(v2 + 4))
      {
        if ((v2[48] & 1) == 0)
        {
          v16 = *(v2 + 3);
          v10 = *(v2 + 5);
          v17 = objc_allocWithZone(MEMORY[0x1E69A3AB8]);
          v12 = sub_1D166F9C4();
          v31 = a1;
          v32 = a2;
          aBlock = MEMORY[0x1E69E9820];
          v28 = 1107296256;
          v29 = sub_1D165BC78;
          v30 = &block_descriptor_14;
          v13 = _Block_copy(&aBlock);

          v14 = sel_initWithMachineReadableCode_codeAttributeType_resultsHandler_;
          v15 = v17;
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }

    if (*(v2 + 2))
    {
      v10 = *(v2 + 1);
      v11 = objc_allocWithZone(MEMORY[0x1E69A3AB8]);
      sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
      v12 = sub_1D166FC44();
      v31 = a1;
      v32 = a2;
      aBlock = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v29 = sub_1D165BC78;
      v30 = &block_descriptor_17;
      v13 = _Block_copy(&aBlock);

      v14 = sel_initWithScanResult_limit_resultsHandler_;
LABEL_8:
      v15 = v11;
LABEL_12:
      v18 = [v15 v14];

      _Block_release(v13);
LABEL_16:

      return v18;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*v2 == 2)
  {
    if (*(v2 + 7))
    {
      v10 = *(v2 + 1);
      v11 = objc_allocWithZone(MEMORY[0x1E69A3AB8]);
      v12 = sub_1D166FC44();
      v31 = a1;
      v32 = a2;
      aBlock = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v29 = sub_1D165BC78;
      v30 = &block_descriptor_11_1;
      v13 = _Block_copy(&aBlock);

      v14 = sel_initWithTextSearchTokens_limit_resultsHandler_;
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  if (!*(v2 + 8))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor();
  sub_1D15F8A24(&v2[*(Descriptor + 44)], v9);
  v20 = sub_1D166F174();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v9, 1, v20);
  if (result != 1)
  {
    v22 = *(v2 + 1);
    v23 = objc_allocWithZone(MEMORY[0x1E69A3AB8]);
    sub_1D15EE5A8(0, &qword_1EC63DB10, 0x1E696C020);
    v24 = sub_1D166FC44();
    v25 = sub_1D166F124();
    v31 = a1;
    v32 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1D165BC78;
    v30 = &block_descriptor_13;
    v26 = _Block_copy(&aBlock);

    v18 = [v23 initForCHRImportWithExistingMedications:v24 sinceDate:v25 limit:v22 resultsHandler:v26];
    _Block_release(v26);

    (*(v21 + 8))(v9, v20);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t HKMedicationClusterQueryDescriptor.init(textSearchTokens:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 1;
  *(a3 + 64) = 0;
  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor();
  v7 = *(Descriptor + 44);
  v8 = sub_1D166F174();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = a3 + *(Descriptor + 48);
  result = sub_1D166F8D4();
  *a3 = 2;
  *(a3 + 56) = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t type metadata accessor for HKMedicationClusterQueryDescriptor()
{
  result = qword_1EC63E270;
  if (!qword_1EC63E270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HKMedicationClusterQueryDescriptor.machineReadableCode.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t HKMedicationClusterQueryDescriptor.codeAttributeType.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t HKMedicationClusterQueryDescriptor.sinceDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HKMedicationClusterQueryDescriptor() + 44);

  return sub_1D15F8A24(v3, a1);
}

uint64_t HKMedicationClusterQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HKMedicationClusterQueryDescriptor() + 48);
  v4 = sub_1D166F8E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HKMedicationClusterQueryDescriptor.queryAttributes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKMedicationClusterQueryDescriptor() + 48);
  v4 = sub_1D166F8E4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HKMedicationClusterQueryDescriptor.init(scanResult:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor();
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v7 = *(Descriptor + 44);
  v8 = sub_1D166F174();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = a3 + *(Descriptor + 48);
  result = sub_1D166F8D4();
  *a3 = 0;
  *(a3 + 8) = a2;
  *(a3 + 16) = a1;
  return result;
}

uint64_t HKMedicationClusterQueryDescriptor.init(machineReadableCode:codeAttributeType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor();
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  v9 = *(Descriptor + 44);
  v10 = sub_1D166F174();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = a4 + *(Descriptor + 48);
  result = sub_1D166F8D4();
  *a4 = 1;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  *(a4 + 48) = 0;
  *(a4 + 8) = 1;
  return result;
}

uint64_t HKMedicationClusterQueryDescriptor.init(existingMedications:sinceDate:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 1;
  *(a4 + 56) = 0;
  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor();
  v9 = *(Descriptor + 44);
  v10 = sub_1D166F174();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(a4 + v9, 1, 1, v10);
  v13 = a4 + *(Descriptor + 48);
  sub_1D166F8D4();
  *a4 = 3;
  *(a4 + 64) = a1;
  sub_1D15F8E38(a4 + v9);
  (*(v11 + 32))(a4 + v9, a2, v10);
  result = (v12)(a4 + v9, 0, 1, v10);
  *(a4 + 8) = a3;
  return result;
}

uint64_t HKMedicationClusterQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D165B70C, 0, 0);
}

uint64_t sub_1D165B70C()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1D162D3D8;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = v2;
  v6 = sub_1D165ACE8(sub_1D1600940, v4);
  v7 = *(type metadata accessor for HKMedicationClusterQueryDescriptor() + 48);
  sub_1D1670084();
  [v5 executeQuery_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D165B830(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D162DE94;

  return HKMedicationClusterQueryDescriptor.result(for:)(a2);
}

void sub_1D165B8F0()
{
  sub_1D165BBB4(319, &qword_1EC63E280, &qword_1EC63E288, &qword_1EC63DA50, 0x1E696AD98);
  if (v0 <= 0x3F)
  {
    sub_1D165BB60(319, &qword_1EDECAE20, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D165BA98(319, &qword_1EC63E290, type metadata accessor for HKConceptAttributeType);
      if (v2 <= 0x3F)
      {
        sub_1D165BAEC();
        if (v3 <= 0x3F)
        {
          sub_1D165BBB4(319, &qword_1EC63E2A0, &qword_1EC63E2A8, &qword_1EC63DB10, 0x1E696C020);
          if (v4 <= 0x3F)
          {
            sub_1D165BA98(319, &qword_1EDECB378, MEMORY[0x1E6969530]);
            if (v5 <= 0x3F)
            {
              sub_1D166F8E4();
              if (v6 <= 0x3F)
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

void sub_1D165BA98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D16700E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D165BAEC()
{
  if (!qword_1EC63E298)
  {
    sub_1D165BB60(255, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E298);
    }
  }
}

void sub_1D165BB60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1D165BBB4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_1D1638F9C(255, a3, a4, a5);
    v6 = sub_1D16700E4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D165BC24()
{
  result = qword_1EC63E2B0;
  if (!qword_1EC63E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E2B0);
  }

  return result;
}

uint64_t sub_1D165BC78(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1D15EE5A8(0, &qword_1EC63D9D0, 0x1E69A3B08);
    v5 = sub_1D166FC54();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

unint64_t sub_1D165BD30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D162CFF0();
    v3 = sub_1D1670484();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D165BE34(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1D16061DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D15FA184(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D165BE34(uint64_t a1, uint64_t a2)
{
  sub_1D162D054();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D165BEFC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t LocalScheduleUnavailableAlertDeterminer.__allocating_init(medications:userDefaults:)(unint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 33) = 2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = a2;
  v6 = sub_1D165E0E4(a1, v5);
  v7 = v6 >> 8;
  *(v4 + 32) = v6 & 1;
  swift_beginAccess();
  *(v4 + 33) = v7;

  return v4;
}

uint64_t LocalScheduleUnavailableAlertDeterminer.init(medications:userDefaults:)(unint64_t a1, void *a2)
{
  *(v2 + 33) = 2;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  v5 = a2;
  v6 = sub_1D165E0E4(a1, v5);
  v7 = v6 >> 8;
  *(v2 + 32) = v6 & 1;
  swift_beginAccess();
  *(v2 + 33) = v7;

  return v2;
}

void sub_1D165C108()
{
  v2 = v0;
  v3 = *v0;
  v4 = v0[2];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v17 = v0[2];
    }

    if (sub_1D1670224())
    {
      v5 = sub_1D1670224();
      if (!v5)
      {
        v50 = v2;
        v1 = MEMORY[0x1E69E7CC0];
        goto LABEL_17;
      }

LABEL_3:
      v52[0] = MEMORY[0x1E69E7CC0];
      sub_1D162304C(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        __break(1u);
        goto LABEL_38;
      }

      v50 = v2;
      v6 = 0;
      v1 = v52[0];
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1D388D4D0](v6, v4);
        }

        else
        {
          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = [v8 semanticIdentifier];
        v10 = [v9 stringValue];
        v11 = sub_1D166FA04();
        v13 = v12;

        v52[0] = v1;
        v15 = *(v1 + 16);
        v14 = *(v1 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D162304C((v14 > 1), v15 + 1, 1);
          v1 = v52[0];
        }

        ++v6;
        *(v1 + 16) = v15 + 1;
        v16 = v1 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
      }

      while (v5 != v6);
LABEL_17:
      if (qword_1EDECB358 == -1)
      {
LABEL_18:
        v18 = sub_1D166F4E4();
        __swift_project_value_buffer(v18, qword_1EDECB360);

        v19 = sub_1D166F4D4();
        v20 = sub_1D166FF64();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v52[0] = v22;
          *v21 = 136315394;
          v23 = sub_1D1670754();
          v25 = sub_1D15F7A30(v23, v24, v52);

          *(v21 + 4) = v25;
          *(v21 + 12) = 2080;
          v26 = MEMORY[0x1D388CE40](v1, MEMORY[0x1E69E6158]);
          v28 = sub_1D15F7A30(v26, v27, v52);

          *(v21 + 14) = v28;
          _os_log_impl(&dword_1D15E6000, v19, v20, "[%s] Saving unavailable schedule medication identifiers: %s to UserDefaults", v21, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D388E250](v22, -1, -1);
          MEMORY[0x1D388E250](v21, -1, -1);
        }

        v29 = v50[3];
        v30 = sub_1D166FC44();

        if (qword_1EC63D648 != -1)
        {
          swift_once();
        }

        v31 = sub_1D166F9C4();
        [v29 setObject:v30 forKey:v31];

        swift_beginAccess();
        *(v50 + 33) = 1;
        v32 = sub_1D166F4D4();
        v33 = sub_1D166FF64();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v51 = v35;
          *v34 = 136315138;
          v36 = sub_1D1670754();
          v38 = sub_1D15F7A30(v36, v37, &v51);

          *(v34 + 4) = v38;
          _os_log_impl(&dword_1D15E6000, v32, v33, "[%s] Saving 'hasShownFirstAppearance': true to UserDefaults", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x1D388E250](v35, -1, -1);
          MEMORY[0x1D388E250](v34, -1, -1);
        }

        if (qword_1EC63D640 != -1)
        {
          swift_once();
        }

        v39 = sub_1D166F9C4();
        [v29 setBool:1 forKey:v39];
        goto LABEL_36;
      }

LABEL_38:
      swift_once();
      goto LABEL_18;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v40 = sub_1D166F4E4();
  __swift_project_value_buffer(v40, qword_1EDECB360);
  v41 = sub_1D166F4D4();
  v42 = sub_1D166FF64();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v52[0] = v44;
    *v43 = 136315138;
    v45 = sub_1D1670754();
    v47 = sub_1D15F7A30(v45, v46, v52);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_1D15E6000, v41, v42, "[%s] Attempting to save identifiers with no medications, removing values from UserDefaults", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1D388E250](v44, -1, -1);
    MEMORY[0x1D388E250](v43, -1, -1);
  }

  swift_beginAccess();
  *(v2 + 33) = 2;
  v48 = v2[3];
  if (qword_1EC63D640 != -1)
  {
    swift_once();
  }

  v49 = sub_1D166F9C4();
  [v48 removeObjectForKey_];

  if (qword_1EC63D648 != -1)
  {
    swift_once();
  }

  v39 = sub_1D166F9C4();
  [v48 removeObjectForKey_];
LABEL_36:
}

uint64_t sub_1D165C7D4()
{
  v1 = *v0;
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v2 = sub_1D166F4E4();
  __swift_project_value_buffer(v2, qword_1EDECB360);
  v3 = sub_1D166F4D4();
  v4 = sub_1D166FF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v88 = v6;
    *v5 = 136315138;
    v7 = sub_1D1670754();
    v9 = sub_1D15F7A30(v7, v8, &v88);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D15E6000, v3, v4, "[%s] Checking for stale unavailable schedule medication identifiers", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1D388E250](v6, -1, -1);
    MEMORY[0x1D388E250](v5, -1, -1);
  }

  v10 = v0[3];
  if (qword_1EC63D648 != -1)
  {
    swift_once();
  }

  v11 = sub_1D166F9C4();
  v12 = [v10 arrayForKey_];

  if (!v12)
  {
    goto LABEL_26;
  }

  v13 = sub_1D166FC54();

  v14 = sub_1D15FD28C(v13);

  if (!v14)
  {
    goto LABEL_26;
  }

  if (!*(v14 + 16))
  {
LABEL_25:

LABEL_26:
    v38 = sub_1D166F4D4();
    v39 = sub_1D166FF64();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v88 = v41;
      *v40 = 136315138;
      v42 = sub_1D1670754();
      v44 = sub_1D15F7A30(v42, v43, &v88);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1D15E6000, v38, v39, "[%s] No stale unavailable schedule medication identifiers to remove", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1D388E250](v41, -1, -1);
      MEMORY[0x1D388E250](v40, -1, -1);
    }

    return 0;
  }

  v15 = sub_1D163AD74(v14);

  v16 = v0[2];
  v86 = v16;
  if (v16 >> 62)
  {
    v17 = sub_1D1670224();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  v87 = v10;
  if (v17)
  {
    v85 = v15;
    v88 = MEMORY[0x1E69E7CC0];
    result = sub_1D162304C(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_48;
    }

    v20 = 0;
    v18 = v88;
    v21 = v86;
    do
    {
      if ((v86 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1D388D4D0](v20, v21);
      }

      else
      {
        v22 = *(v21 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = [v23 semanticIdentifier];
      v25 = [v24 stringValue];
      v26 = sub_1D166FA04();
      v28 = v27;

      v88 = v18;
      v30 = *(v18 + 16);
      v29 = *(v18 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D162304C((v29 > 1), v30 + 1, 1);
        v21 = v86;
        v18 = v88;
      }

      ++v20;
      *(v18 + 16) = v30 + 1;
      v31 = v18 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
    }

    while (v17 != v20);
    v15 = v85;
  }

  v32 = sub_1D163AD74(v18);

  v33 = sub_1D165DB44(v32, v15);

  v34 = sub_1D165E694(v15, v33);

  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = sub_1D1622E24(*(v34 + 16), 0);
    v37 = sub_1D16268B8(&v88, v36 + 4, v35, v34);
    sub_1D160FD3C();
    if (v37 != v35)
    {
      __break(1u);
      goto LABEL_25;
    }
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v45 = sub_1D165E694(v32, v33);

  v46 = *(v45 + 16);
  if (!v46)
  {
    goto LABEL_35;
  }

  v47 = sub_1D1622E24(*(v45 + 16), 0);
  v48 = sub_1D16268B8(&v88, v47 + 4, v46, v45);
  result = sub_1D160FD3C();
  if (v48 == v46)
  {
    v49 = *(v33 + 16);
    if (v49)
    {
      while (1)
      {
        v50 = sub_1D1622E24(v49, 0);
        v51 = sub_1D16268B8(&v88, v50 + 4, v49, v33);
        sub_1D160FD3C();
        if (v51 == v49)
        {
          break;
        }

        __break(1u);
LABEL_35:

        v49 = *(v33 + 16);
        if (!v49)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
LABEL_36:

      v50 = MEMORY[0x1E69E7CC0];
    }

    v52 = sub_1D166F4D4();
    v53 = sub_1D166FF64();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v88 = v55;
      *v54 = 136315394;
      v56 = sub_1D1670754();
      v58 = sub_1D15F7A30(v56, v57, &v88);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2080;
      sub_1D165E9DC();
      sub_1D165EB74(&qword_1EDECAE10, sub_1D165E9DC);
      v59 = sub_1D166F9A4();
      v61 = v60;

      v62 = sub_1D15F7A30(v59, v61, &v88);

      *(v54 + 14) = v62;
      _os_log_impl(&dword_1D15E6000, v52, v53, "[%s] New schedule medication identifiers (not previously seen): %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388E250](v55, -1, -1);
      MEMORY[0x1D388E250](v54, -1, -1);
    }

    else
    {
    }

    v63 = sub_1D166F4D4();
    v64 = sub_1D166FF64();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v88 = v66;
      *v65 = 136315394;
      v67 = sub_1D1670754();
      v69 = sub_1D15F7A30(v67, v68, &v88);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      sub_1D165E9DC();
      sub_1D165EB74(&qword_1EDECAE10, sub_1D165E9DC);
      v70 = sub_1D166F9A4();
      v72 = sub_1D15F7A30(v70, v71, &v88);

      *(v65 + 14) = v72;
      _os_log_impl(&dword_1D15E6000, v63, v64, "[%s] Unavailable schedule medication identifiers to be removed: %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388E250](v66, -1, -1);
      MEMORY[0x1D388E250](v65, -1, -1);
    }

    v73 = sub_1D166F4D4();
    v74 = sub_1D166FF64();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v88 = v76;
      *v75 = 136315394;
      v77 = sub_1D1670754();
      v79 = sub_1D15F7A30(v77, v78, &v88);

      *(v75 + 4) = v79;
      *(v75 + 12) = 2080;
      v80 = MEMORY[0x1D388CE40](v50, MEMORY[0x1E69E6158]);
      v82 = sub_1D15F7A30(v80, v81, &v88);

      *(v75 + 14) = v82;
      _os_log_impl(&dword_1D15E6000, v73, v74, "[%s] Updating schedule unavailable acknowledged medication identifiers: %s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388E250](v76, -1, -1);
      MEMORY[0x1D388E250](v75, -1, -1);
    }

    v83 = sub_1D166FC44();

    v84 = sub_1D166F9C4();
    [v87 setObject:v83 forKey:v84];

    return v36;
  }

LABEL_48:
  __break(1u);
  return result;
}

void static LocalScheduleUnavailableAlertDeterminer.removeAllIdentifiers(userDefaults:)(void *a1)
{
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v2 = sub_1D166F4E4();
  __swift_project_value_buffer(v2, qword_1EDECB360);
  v3 = sub_1D166F4D4();
  v4 = sub_1D166FF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = sub_1D1670754();
    v9 = sub_1D15F7A30(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D15E6000, v3, v4, "[%s] Removing all identifiers from UserDefaults", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1D388E250](v6, -1, -1);
    MEMORY[0x1D388E250](v5, -1, -1);
  }

  if (qword_1EC63D648 != -1)
  {
    swift_once();
  }

  v10 = sub_1D166F9C4();
  [a1 removeObjectForKey_];

  if (qword_1EC63D640 != -1)
  {
    swift_once();
  }

  v11 = sub_1D166F9C4();
  [a1 removeObjectForKey_];
}

uint64_t LocalScheduleUnavailableAlertDeterminer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t LocalScheduleUnavailableAlertDeterminer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D165D4A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocalScheduleUnavailableAlertDeterminer();
  result = sub_1D166F604();
  *a1 = result;
  return result;
}

void *sub_1D165D4E4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1D165DD08(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D165D574(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1D165E484(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1D165D610(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1D166F1A4();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1D164CEC4();
  result = sub_1D16702A4();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1D165EB74(&qword_1EC63DBC8, MEMORY[0x1E69695A8]);
    result = sub_1D166F974();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D165D92C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1D15FA0E8();
  result = sub_1D16702A4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1D16706A4();

    sub_1D166FAE4();
    result = sub_1D16706E4();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D165DB44(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1D165DD08(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_1D165D4E4(v12, v6, a2, a1);

    MEMORY[0x1D388E250](v12, -1, -1);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1D165DD08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
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
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_1D16706A4();

      sub_1D166FAE4();
      v27 = sub_1D16706E4();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_1D16705D4() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1D165D92C(v52, a2, v55, v5);
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
    v55 = 0;
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
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_1D16706A4();

      sub_1D166FAE4();
      v41 = sub_1D16706E4();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_1D16705D4() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D165E0E4(unint64_t a1, void *a2)
{
  if (qword_1EC63D640 != -1)
  {
    swift_once();
  }

  v4 = sub_1D166F9C4();
  v5 = [a2 BOOLForKey_];

  if (a1 >> 62)
  {
    v6 = sub_1D1670224();
    if (v6)
    {
LABEL_5:
      if (qword_1EC63D648 != -1)
      {
        swift_once();
      }

      v7 = sub_1D166F9C4();
      v8 = [a2 arrayForKey_];

      if (!v8 || (v9 = sub_1D166FC54(), v8, v10 = sub_1D15FD28C(v9), , !v10))
      {
        v26 = 0;
LABEL_24:
        v29 = v26 ^ 1;
        return v29 | (v26 << 8);
      }

      v34 = v5;
      v37 = MEMORY[0x1E69E7CC0];
      if (v6 < 1)
      {
        __break(1u);
      }

      else
      {
        v11 = 0;
        v12 = a1;
        v35 = a1 & 0xC000000000000001;
        v13 = MEMORY[0x1E69E7CC0];
        v14 = a1;
        do
        {
          v15 = v6;
          if (v35)
          {
            v16 = MEMORY[0x1D388D4D0](v11, v12);
          }

          else
          {
            v16 = *(v12 + 8 * v11 + 32);
          }

          v17 = v16;
          v18 = [v16 semanticIdentifier];
          v19 = [v18 stringValue];

          v20 = sub_1D166FA04();
          v22 = v21;

          v36[0] = v20;
          v36[1] = v22;
          MEMORY[0x1EEE9AC00](v23);
          v33[2] = v36;
          LOBYTE(v20) = sub_1D15FE8CC(sub_1D165EB54, v33, v10);

          if (v20)
          {
          }

          else
          {
            v24 = v17;
            MEMORY[0x1D388CE10]();
            if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v25 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D166FC84();
            }

            sub_1D166FCC4();

            v13 = v37;
          }

          ++v11;
          v6 = v15;
          v12 = v14;
        }

        while (v15 != v11);

        if (!(v13 >> 62))
        {
          v27 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_23:
          v28 = v34;

          v26 = (v27 == 0) & v28;
          goto LABEL_24;
        }
      }

      v27 = sub_1D1670224();
      goto LABEL_23;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v30 = sub_1D166F9C4();
  v31 = [a2 hk:v30 keyExists:?];

  v29 = 0;
  if (v31)
  {
    v26 = v5;
  }

  else
  {
    v26 = 2;
  }

  return v29 | (v26 << 8);
}

uint64_t sub_1D165E484(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = result;
  v28 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v30 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v27 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 16 * v27);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(a4 + 40);
      sub_1D16706A4();

      sub_1D166FAE4();
      v18 = sub_1D16706E4();
      v19 = -1 << *(a4 + 32);
      v20 = v18 & ~v19;
      if ((*(v30 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(a4 + 48) + 16 * v20);
          v23 = *v22 == v16 && v22[1] == v15;
          if (v23 || (sub_1D16705D4() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v30 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_26:

          return sub_1D165D92C(v26, a2, v28, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D165E694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v43 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v36 = v8;
    v37 = v3;
    v35 = &v35;
    MEMORY[0x1EEE9AC00](v10);
    v38 = &v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v9);
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v3 = (v12 + 63) >> 6;
    v41 = 0;
    v42 = a2 + 56;
    v39 = v5;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v18 = v15 | (v11 << 6);
      if (*(a2 + 16))
      {
        v19 = *(v5 + 48);
        v40 = v18;
        v20 = (v19 + 16 * v18);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(a2 + 40);
        sub_1D16706A4();

        sub_1D166FAE4();
        v24 = sub_1D16706E4();
        v25 = a2;
        v26 = -1 << *(a2 + 32);
        v9 = v24 & ~v26;
        if ((*(v42 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v27 = ~v26;
          while (1)
          {
            v28 = (*(v25 + 48) + 16 * v9);
            v29 = *v28 == v22 && v28[1] == v21;
            if (v29 || (sub_1D16705D4() & 1) != 0)
            {
              break;
            }

            v9 = (v9 + 1) & v27;
            if (((*(v42 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v5 = v39;
          *&v38[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
          v30 = __OFADD__(v41++, 1);
          a2 = v25;
          if (v30)
          {
            __break(1u);
LABEL_27:
            v31 = sub_1D165D92C(v38, v36, v41, v5);

            goto LABEL_28;
          }
        }

        else
        {
LABEL_6:

          a2 = v25;
          v5 = v39;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_27;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v34 = swift_slowAlloc();

  v31 = sub_1D165D574(v34, v8, v5, a2);

  MEMORY[0x1D388E250](v34, -1, -1);

LABEL_28:
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

void sub_1D165E9DC()
{
  if (!qword_1EDECAE18)
  {
    v0 = sub_1D166FCF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECAE18);
    }
  }
}

uint64_t sub_1D165EB74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MedicationListOnboardingMetric.__allocating_init(step:action:hasSuggestionsFromHealthRecords:context:itemRank:timeSinceUserLastScannedAMed:didLastScanFallBackToOCR:itemLevelRankOfMatchInOCRList:algorithmType:dataSource:hasScheduledEndDate:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  v22 = swift_allocObject();
  *(v22 + 104) = 0;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  *(v22 + 112) = 1;
  *(v22 + 120) = 0;
  *(v22 + 128) = 1;
  *(v22 + 144) = 0;
  *(v22 + 152) = 0;
  *(v22 + 160) = 2;
  *(v22 + 168) = 0;
  *(v22 + 176) = 1;
  *(v22 + 184) = 0;
  *(v22 + 192) = 1;
  *(v22 + 200) = 0;
  *(v22 + 208) = 513;
  *(v22 + 224) = 0;
  *(v22 + 232) = 0;
  *(v22 + 216) = 0;
  *(v22 + 240) = 1;
  swift_beginAccess();
  v23 = *(a5 + 16);
  v24 = HKStringFromMedicationListOnboardingProvenanceType();
  v25 = sub_1D166FA04();
  v27 = v26;

  *(v22 + 16) = v25;
  *(v22 + 24) = v27;
  v28 = HKStringFromMedicationListOnboardingStepType();
  v29 = sub_1D166FA04();
  v31 = v30;

  *(v22 + 32) = v29;
  *(v22 + 40) = v31;
  if ((a3 & 1) == 0)
  {
    v32 = HKStringFromMedicationListOnboardingActionType();
    v33 = sub_1D166FA04();
    v35 = v34;

    *(v22 + 48) = v33;
    *(v22 + 56) = v35;
  }

  *(v22 + 168) = a6;
  *(v22 + 176) = a7 & 1;
  swift_beginAccess();
  *(v22 + 64) = *(a5 + 24);
  swift_beginAccess();
  v36 = 0;
  v37 = 0;
  if ((*(a5 + 48) & 1) == 0)
  {
    v38 = *(a5 + 40);
    v39 = HKStringFromMedicationListOnboardingDetailsEntryType();
    v36 = sub_1D166FA04();
    v37 = v40;
  }

  v41 = a15;
  *(v22 + 144) = v36;
  *(v22 + 152) = v37;
  *(v22 + 160) = a4;
  swift_beginAccess();
  v42 = *(a5 + 32);
  v61 = a1;
  if (*(v42 + 16) && (v43 = sub_1D1606560(a1), (v44 & 1) != 0))
  {
    v45 = *(*(v42 + 56) + v43);
  }

  else
  {
    v45 = 1;
  }

  v46 = a16;
  v47 = a13;
  v48 = a11;
  *(v22 + 66) = v45;
  swift_beginAccess();
  v49 = *(a5 + 64);
  *(v22 + 232) = *(a5 + 56);
  *(v22 + 240) = v49;
  if ((a14 & 1) == 0)
  {
    v50 = HKStringFromHKMedicationListOnboardingAlgorithmType();
    v51 = sub_1D166FA04();
    v53 = v52;

    *(v22 + 216) = v51;
    *(v22 + 224) = v53;
    v46 = a16;
    v48 = a11;
    v41 = a15;
    v47 = a13;
  }

  v54 = [objc_allocWithZone(MEMORY[0x1E69A3AB0]) initWithDataSource_];
  *(v22 + 248) = v54;
  v55 = v54;
  v56 = [v55 isOntologySupportedRegion];

  swift_unknownObjectRelease();
  *(v22 + 65) = v56;
  *(v22 + 184) = a8;
  *(v22 + 192) = a9 & 1;
  *(v22 + 209) = a10;
  *(v22 + 200) = v48;
  *(v22 + 208) = a12 & 1;
  *(v22 + 96) = a3 & 1;
  *(v22 + 120) = v47;
  *(v22 + 128) = a14 & 1;
  v57 = *(a5 + 48);
  *(v22 + 104) = *(a5 + 40);
  *(v22 + 112) = v57;
  v58 = *(a5 + 16);
  *(v22 + 80) = v61;
  *(v22 + 88) = a2;
  *(v22 + 72) = v58;
  *(v22 + 136) = a5;
  *(v22 + 241) = v46 & 1;
  return v22;
}

uint64_t MedicationListOnboardingMetric.init(step:action:hasSuggestionsFromHealthRecords:context:itemRank:timeSinceUserLastScannedAMed:didLastScanFallBackToOCR:itemLevelRankOfMatchInOCRList:algorithmType:dataSource:hasScheduledEndDate:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  v17 = v16;
  *(v17 + 104) = 0;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;
  *(v17 + 112) = 1;
  *(v17 + 120) = 0;
  *(v17 + 128) = 1;
  *(v17 + 144) = 0;
  *(v17 + 152) = 0;
  *(v17 + 160) = 2;
  *(v17 + 168) = 0;
  *(v17 + 176) = 1;
  *(v17 + 184) = 0;
  *(v17 + 192) = 1;
  *(v17 + 200) = 0;
  *(v17 + 208) = 513;
  *(v17 + 224) = 0;
  *(v17 + 232) = 0;
  *(v17 + 216) = 0;
  *(v17 + 240) = 1;
  swift_beginAccess();
  v24 = *(a5 + 16);
  v25 = HKStringFromMedicationListOnboardingProvenanceType();
  v26 = sub_1D166FA04();
  v28 = v27;

  *(v17 + 16) = v26;
  *(v17 + 24) = v28;
  v29 = HKStringFromMedicationListOnboardingStepType();
  v30 = sub_1D166FA04();
  v32 = v31;

  *(v17 + 32) = v30;
  *(v17 + 40) = v32;
  v65 = a3;
  if ((a3 & 1) == 0)
  {
    v33 = HKStringFromMedicationListOnboardingActionType();
    v34 = sub_1D166FA04();
    v36 = v35;

    v37 = *(v17 + 56);
    *(v17 + 48) = v34;
    *(v17 + 56) = v36;
  }

  *(v17 + 168) = a6;
  *(v17 + 176) = a7 & 1;
  swift_beginAccess();
  *(v17 + 64) = *(a5 + 24);
  swift_beginAccess();
  v38 = 0;
  v39 = 0;
  if ((*(a5 + 48) & 1) == 0)
  {
    v40 = *(a5 + 40);
    v41 = HKStringFromMedicationListOnboardingDetailsEntryType();
    v38 = sub_1D166FA04();
    v39 = v42;
  }

  v43 = a15;
  v44 = *(v17 + 152);
  *(v17 + 144) = v38;
  *(v17 + 152) = v39;

  *(v17 + 160) = a4;
  swift_beginAccess();
  v45 = *(a5 + 32);
  v66 = a1;
  if (*(v45 + 16) && (v46 = sub_1D1606560(a1), (v47 & 1) != 0))
  {
    v48 = *(*(v45 + 56) + v46);
  }

  else
  {
    v48 = 1;
  }

  v49 = a16;
  v50 = a13;
  v51 = a11;
  *(v17 + 66) = v48;
  swift_beginAccess();
  v52 = *(a5 + 64);
  *(v17 + 232) = *(a5 + 56);
  *(v17 + 240) = v52;
  if ((a14 & 1) == 0)
  {
    v53 = HKStringFromHKMedicationListOnboardingAlgorithmType();
    v54 = sub_1D166FA04();
    v56 = v55;

    v57 = *(v17 + 224);
    *(v17 + 216) = v54;
    *(v17 + 224) = v56;
    v49 = a16;
    v51 = a11;
    v43 = a15;
    v50 = a13;
  }

  v58 = [objc_allocWithZone(MEMORY[0x1E69A3AB0]) initWithDataSource_];
  *(v17 + 248) = v58;
  v59 = v58;
  v60 = [v59 isOntologySupportedRegion];

  swift_unknownObjectRelease();
  *(v17 + 65) = v60;
  *(v17 + 184) = a8;
  *(v17 + 192) = a9 & 1;
  *(v17 + 209) = a10;
  *(v17 + 200) = v51;
  *(v17 + 208) = a12 & 1;
  *(v17 + 96) = v65 & 1;
  *(v17 + 120) = v50;
  *(v17 + 128) = a14 & 1;
  *(v17 + 80) = v66;
  *(v17 + 88) = a2;
  v61 = *(a5 + 48);
  *(v17 + 104) = *(a5 + 40);
  *(v17 + 112) = v61;
  *(v17 + 72) = *(a5 + 16);
  *(v17 + 136) = a5;
  *(v17 + 241) = v49 & 1;
  return v17;
}

id sub_1D165F2D4()
{
  v1 = v0;
  v2 = sub_1D166F174();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + 248) biologicalSex];
  if (v7)
  {
    v8 = v7;
    v61 = sub_1D166FA04();
  }

  else
  {
    v61 = 0xD000000000000011;
  }

  v9 = *(v1 + 248);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 now];
  sub_1D166F144();

  v13 = sub_1D166F124();
  (*(v3 + 8))(v6, v2);
  v14 = [v11 bucketedUserAgeForCurrentDate_];

  v15 = [*(v1 + 248) activePairedWatchProductType];
  if (v15)
  {
    v16 = v15;
    sub_1D166FA04();
    v18 = v17;
  }

  else
  {
    v18 = 0x80000001D1679350;
  }

  sub_1D165FB9C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1675290;
  *(inited + 32) = 0x6E616E65766F7270;
  *(inited + 40) = 0xEA00000000006563;
  v21 = *(v1 + 16);
  v20 = *(v1 + 24);

  v22 = sub_1D166F9C4();

  *(inited + 48) = v22;
  *(inited + 56) = 1885697139;
  *(inited + 64) = 0xE400000000000000;
  v23 = *(v1 + 32);
  v24 = *(v1 + 40);

  v25 = sub_1D166F9C4();

  *(inited + 72) = v25;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001D1677D90;
  v26 = *(v1 + 64);
  *(inited + 96) = sub_1D166FD04();
  *(inited + 104) = 0xD000000000000019;
  *(inited + 112) = 0x80000001D1677EE0;
  v27 = *(v1 + 65);
  *(inited + 120) = sub_1D166FD04();
  strcpy((inited + 128), "biologicalSex");
  *(inited + 142) = -4864;
  *(inited + 144) = sub_1D166F9C4();
  *(inited + 152) = 6645601;
  *(inited + 160) = 0xE300000000000000;
  *(inited + 168) = v14;
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x80000001D1679370;
  v60 = v14;
  v61 = v18;
  *(inited + 192) = sub_1D166F9C4();
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x80000001D1677E60;
  v28 = *(v1 + 66);
  *(inited + 216) = sub_1D166FD04();
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x80000001D1677E90;
  v29 = *(v1 + 241);
  *(inited + 240) = sub_1D166FD04();
  v30 = sub_1D162B58C(inited);
  swift_setDeallocating();
  sub_1D165FBF4();
  swift_arrayDestroy();
  if (*(v1 + 152))
  {
    v31 = *(v1 + 144);
    v32 = *(v1 + 152);

    v33 = sub_1D166F9C4();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v30;
    sub_1D1608D04(v33, 0xD000000000000015, 0x80000001D1677DB0, isUniquelyReferenced_nonNull_native);
    v30 = v62;
  }

  if (*(v1 + 160) != 2)
  {
    v35 = sub_1D166FD04();
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v30;
    sub_1D1608D04(v35, 0xD00000000000001FLL, 0x80000001D1677DD0, v36);
    v30 = v62;
  }

  if (*(v1 + 56))
  {
    v37 = *(v1 + 48);
    v38 = *(v1 + 56);

    v39 = sub_1D166F9C4();

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v30;
    sub_1D1608D04(v39, 0x6E6F69746361, 0xE600000000000000, v40);
    v30 = v62;
  }

  if ((*(v1 + 176) & 1) == 0)
  {
    v41 = *(v1 + 168);
    v42 = sub_1D166FE74();
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v30;
    sub_1D1608D04(v42, 0xD000000000000013, 0x80000001D1677F00, v43);
    v30 = v62;
  }

  if ((*(v1 + 192) & 1) == 0)
  {
    v44 = *(v1 + 184);
    v45 = sub_1D166FE74();
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v30;
    sub_1D1608D04(v45, 0xD00000000000001CLL, 0x80000001D1677E10, v46);
    v30 = v62;
  }

  if (*(v1 + 209) == 2)
  {
    if (*(v1 + 208))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v50 = sub_1D166FD04();
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v30;
    sub_1D1608D04(v50, 0xD000000000000018, 0x80000001D1677E30, v51);
    v30 = v62;
    if (*(v1 + 208))
    {
LABEL_19:
      if (!*(v1 + 224))
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v52 = *(v1 + 200);
  v53 = sub_1D166FE74();
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v30;
  sub_1D1608D04(v53, 0xD00000000000001DLL, 0x80000001D1677F20, v54);
  v30 = v62;
  if (*(v1 + 224))
  {
LABEL_20:
    v47 = *(v1 + 216);

    v48 = sub_1D166F9C4();

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v30;
    sub_1D1608D04(v48, 0x687469726F676C61, 0xED0000657079546DLL, v49);
    v30 = v62;
  }

LABEL_21:
  if (*(v1 + 240) == 1)
  {

    return v30;
  }

  v55 = *(v1 + 232);
  result = HKStringFromMedicationScheduleType();
  if (result)
  {
    v57 = result;

    v58 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v30;
    sub_1D1608D04(v57, 0x656C756465686373, 0xEC00000065707954, v58);

    return v62;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D165F9F4()
{
  sub_1D16702D4();

  v1 = sub_1D165F9F4(v0);
  MEMORY[0x1D388CCF0](v1);

  MEMORY[0x1D388CCF0](0x64616F6C79617020, 0xEA0000000000203ALL);
  sub_1D165F2D4();
  sub_1D15FAE98();
  v2 = sub_1D166F954();
  v4 = v3;

  MEMORY[0x1D388CCF0](v2, v4);

  return 0xD000000000000021;
}

uint64_t MedicationListOnboardingMetric.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 136);

  v5 = *(v0 + 152);

  v6 = *(v0 + 224);

  return v0;
}

uint64_t MedicationListOnboardingMetric.__deallocating_deinit()
{
  MedicationListOnboardingMetric.deinit();

  return swift_deallocClassInstance();
}

void sub_1D165FB9C()
{
  if (!qword_1EC63E2B8)
  {
    sub_1D165FBF4();
    v0 = sub_1D16705A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E2B8);
    }
  }
}

void sub_1D165FBF4()
{
  if (!qword_1EC63E2C0)
  {
    sub_1D15FAE98();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E2C0);
    }
  }
}

uint64_t sub_1D165FD7C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1D166FE94();
  if (!v26)
  {
    return sub_1D166FC94();
  }

  v48 = v26;
  v52 = sub_1D16703E4();
  v39 = sub_1D16703F4();
  sub_1D1670394();
  result = sub_1D166FE84();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1D166FEE4();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1D16703D4();
      result = sub_1D166FEC4();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.filterIncompatible(with:)()
{
  return sub_1D16601CC();
}

{
  return sub_1D16601CC();
}

uint64_t sub_1D16601CC()
{
  sub_1D166FCF4();

  swift_getWitnessTable();
  sub_1D1670364();
  sub_1D15EE5A8(0, &qword_1EC63DBB8, 0x1E69A3B20);
  v0 = sub_1D1670404();

  return v0;
}

uint64_t Array.uniqueSortedValues<A>(using:)(void *a1, uint64_t a2)
{
  v29 = a1;
  v30 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - v6;
  v9 = *v8;
  v10 = *(*v8 - 8);
  v25 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v12 = &v24 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  if (sub_1D166FCD4())
  {
    v14 = 0;
    v27 = (v10 + 8);
    v28 = (v10 + 16);
    v26 = (v3 + 8);
    do
    {
      v15 = sub_1D166FCB4();
      sub_1D166FC74();
      if (v15)
      {
        (*(v10 + 16))(v12, a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, v9);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1D16702E4();
        if (v25 != 8)
        {
          __break(1u);
          return result;
        }

        v31 = result;
        (*v28)(v12, &v31, v9);
        swift_unknownObjectRelease();
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      swift_getAtKeyPath();
      (*v27)(v12, v9);
      v17 = v13;
      v18 = v30;
      v19 = sub_1D16705C4();
      v20 = v18;
      v13 = v17;
      (*v26)(v7, v20);
      [v17 addObject_];
      swift_unknownObjectRelease();
      ++v14;
    }

    while (v16 != sub_1D166FCD4());
  }

  v22 = [v13 array];
  sub_1D166FC54();

  v23 = sub_1D16704B4();

  if (!v23)
  {
    v23 = sub_1D166FC94();
  }

  return v23;
}

uint64_t Array.unique<A>(using:)()
{
  sub_1D166F924();
  sub_1D166FCF4();

  swift_getWitnessTable();
  v0 = sub_1D1670364();

  return v0;
}

uint64_t Array<A>.filtered(with:)(unint64_t a1, uint64_t a2, void *a3)
{
  i = a1;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v37[0] = MEMORY[0x1E69E7CC0];
  sub_1D162306C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v35 = a2;
    v36 = a3;
    v8 = 0;
    v3 = v37[0];
    do
    {
      if ((i & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D388D4D0](v8, i);
      }

      else
      {
        v9 = *(i + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 medicationIdentifier];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1D166FA04();
        v15 = v14;
      }

      else
      {

        v13 = 0;
        v15 = 0;
      }

      v37[0] = v3;
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1D162306C((v17 > 1), v18 + 1, 1);
        v3 = v37[0];
      }

      ++v8;
      *(v3 + 16) = v18 + 1;
      v19 = v3 + 16 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
    }

    while (v7 != v8);
    a2 = v35;
    a3 = v36;
    goto LABEL_15;
  }

  __break(1u);
LABEL_37:
  for (i = sub_1D1670224(); i; i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = 0;
    v35 = a2 & 0xFFFFFFFFFFFFFF8;
    v36 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v36)
      {
        v22 = MEMORY[0x1D388D4D0](v21, a2);
      }

      else
      {
        if (v21 >= *(v35 + 16))
        {
          goto LABEL_28;
        }

        v22 = *(a2 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = [v22 semanticIdentifier];
      v26 = [v25 stringValue];

      v27 = sub_1D166FA04();
      v29 = v28;

      v37[0] = v27;
      v37[1] = v29;
      MEMORY[0x1EEE9AC00](v30);
      v34 = v37;
      LOBYTE(v27) = sub_1D15FE978(sub_1D1643EB4, &v33, v3);

      if (v27)
      {
        sub_1D1670374();
        v31 = *(v38 + 16);
        sub_1D16703B4();
        sub_1D16703C4();
        sub_1D1670384();
      }

      else
      {
      }

      ++v21;
      if (v24 == i)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v3 = i < 0 ? i : i & 0xFFFFFFFFFFFFFF8;
    if (!sub_1D1670224())
    {
      return MEMORY[0x1E69E7CC0];
    }

    v16 = sub_1D1670224();
    v7 = v16;
    if (v16)
    {
      goto LABEL_3;
    }

    v3 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v37[0] = a2;
    MEMORY[0x1EEE9AC00](v16);
    v34 = a3;
    sub_1D166FCF4();
    sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);
    swift_getWitnessTable();
    a3 = 0;
    v20 = sub_1D166FBF4();
    a2 = v20;
    v38 = MEMORY[0x1E69E7CC0];
    if (v20 >> 62)
    {
      goto LABEL_37;
    }
  }

LABEL_38:

  return v38;
}

uint64_t HKMedicationsDeviceInfo.displayString.getter()
{
  v1 = [v0 name];
  v2 = sub_1D166FA04();

  return v2;
}

uint64_t sub_1D1660B08()
{
  v1 = [*v0 name];
  v2 = sub_1D166FA04();

  return v2;
}

uint64_t HKMedicationUserDomainConcept.displayString.getter()
{
  v1 = [v0 userSpecifiedName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D166FA04();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }
  }

  return sub_1D1661A68();
}

uint64_t Array.numericallySorted(by:)(void *a1)
{
  v2 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v3 = sub_1D166FC44();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D1661CA4;
  *(v4 + 24) = a1;
  v9[4] = sub_1D1661CAC;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D166108C;
  v9[3] = &block_descriptor_14;
  v5 = _Block_copy(v9);

  v6 = [v3 sortedArrayUsingComparator_];

  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    sub_1D166FC54();

    v8 = sub_1D1670404();

    return v8;
  }

  return result;
}

uint64_t sub_1D1660DE8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  sub_1D1603138(0, &unk_1EDECAB90, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v24 - v9;
  v11 = *(v5 + *MEMORY[0x1E69E77B0]);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v15 = &v24 - v14;
  sub_1D15F928C(a1, v26);
  swift_dynamicCast();
  swift_getAtKeyPath();
  v17 = v24;
  v16 = v25;
  v18 = *(v12 + 8);
  v18(v15, v11);
  sub_1D15F928C(a2, v26);
  swift_dynamicCast();
  swift_getAtKeyPath();
  v19 = v24;
  v20 = v25;
  v18(v15, v11);
  v26[0] = v17;
  v26[1] = v16;
  v24 = v19;
  v25 = v20;
  v21 = sub_1D166F1F4();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_1D1601D38();
  v22 = sub_1D1670144();
  sub_1D1603200(v10);

  return v22;
}

uint64_t sub_1D166108C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[3] = swift_getObjectType();
  v10[0] = a2;
  v9[3] = swift_getObjectType();
  v9[0] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v6(v10, v9);
  __swift_destroy_boxed_opaque_existential_0(v9);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

uint64_t sub_1D166111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v22 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v22 - v16;
  v18(v15);
  (*(v7 + 16))(v11, v17, a6);
  sub_1D166FE64();
  v19 = sub_1D166FE44();
  v20 = *(v7 + 8);
  v20(v14, a6);
  v20(v17, a6);
  return v19 & 1;
}

uint64_t Array<A>.bulletedNames()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v8[2] = a2;
  v8[3] = a3;
  v3 = sub_1D166FCF4();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1D165FD7C(sub_1D1661CEC, v8, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v5);
  sub_1D165E9DC();
  sub_1D160172C();
  v6 = sub_1D166F9A4();

  return v6;
}

uint64_t sub_1D166138C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v22 = a3;
  sub_1D1603138(0, &unk_1EDECAB90, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_1D166F1F4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  sub_1D1603138(0, &qword_1EDEC9D30, sub_1D160319C, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D16721D0;
  v11 = (*(a2 + 8))(a1, a2);
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1D15F3174();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = sub_1D166F004();
  v16 = v15;
  if (*(v10 + 16))
  {
    v14 = sub_1D166FA34();
    v18 = v17;

    v16 = v18;
  }

  else
  {
  }

  result = sub_1D1603200(v8);
  v20 = v22;
  *v22 = v14;
  v20[1] = v16;
  return result;
}

uint64_t Array<A>.formattedNames()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D16700E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v19 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = a1;
  sub_1D166FCF4();
  swift_getWitnessTable();
  sub_1D166FED4();
  if ((*(v12 + 48))(v11, 1, a2) == 1)
  {
    (*(v7 + 8))(v11, v6);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v15, v11, a2);
    if (sub_1D166FCD4() < 2)
    {
      v17 = (*(a3 + 8))(a2, a3);
    }

    else
    {
      v17 = Array<A>.bulletedNames()(a1, a2, a3);
    }

    v18 = v17;
    (*(v12 + 8))(v15, a2);
    return v18;
  }
}

id sub_1D1661854@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}